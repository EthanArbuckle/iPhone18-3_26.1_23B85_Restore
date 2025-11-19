uint64_t sub_22D79823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v42 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028A8, &qword_22D821C10);
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C60, &qword_22D822540);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v38 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v36 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v36 - v23;
  v25 = *(*a2 + 96);
  swift_beginAccess();
  sub_22D7640C4(a2 + v25, v14, &qword_27DA02C60, &qword_22D822540);
  v26 = *(v16 + 48);
  if (v26(v14, 1, v15) == 1)
  {
    v37 = v7;
    v27 = v42;
    sub_22D764440(v14, &qword_27DA02C60, &qword_22D822540);
    sub_22D7640C4(v39, v12, &qword_27DA02C60, &qword_22D822540);
    if (v26(v12, 1, v15) == 1)
    {
      v28 = &qword_27DA02C60;
      v29 = &qword_22D822540;
      v30 = v12;
    }

    else
    {
      v33 = v38;
      sub_22D79DD0C(v12, v38, &qword_27DA02000, &qword_22D81F160);
      sub_22D7640C4(v33, v22, &qword_27DA02000, &qword_22D81F160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028B0, &unk_22D821C18);
      v34 = v37;
      sub_22D81B528();
      (*(v40 + 8))(v34, v41);
      sub_22D79AF88(v33);
      v30 = v33;
      v28 = &qword_27DA02000;
      v29 = &qword_22D81F160;
    }

    sub_22D764440(v30, v28, v29);
    v32 = v27;
  }

  else
  {
    sub_22D79DD0C(v14, v24, &qword_27DA02000, &qword_22D81F160);
    sub_22D7640C4(v24, v22, &qword_27DA02000, &qword_22D81F160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028B0, &unk_22D821C18);
    v31 = v42;
    sub_22D81B528();
    (*(v40 + 8))(v7, v41);
    sub_22D764440(v24, &qword_27DA02000, &qword_22D81F160);
    v32 = v31;
  }

  return sub_22D79C3A8(v32);
}

uint64_t sub_22D79864C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02960, &qword_22D821D00);
  v51 = *(v53 - 8);
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02968, &qword_22D821D08);
  v55 = *(v12 - 8);
  v56 = v12;
  v13 = *(v55 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - v14;
  swift_beginAccess();
  v16 = *(v5 + 16);
  v17 = *(v5 + 24);
  v18 = *(v5 + 32);
  v19 = *(v5 + 40);
  if (v17 == 1)
  {
    if (a2 == 1)
    {
      v20 = *(v5 + 32);
      v21 = *(v5 + 40);
      sub_22D79DDDC(*(v5 + 16), 1);
      sub_22D81A398();
      v22 = v16;
      v23 = 1;
      return sub_22D7976D0(v22, v23);
    }

    goto LABEL_6;
  }

  if (a2 == 1)
  {
LABEL_6:
    v25 = *(v5 + 32);
    v26 = *(v5 + 40);
    sub_22D79DDDC(*(v5 + 16), *(v5 + 24));
    sub_22D81A398();
    sub_22D7976D0(v16, v17);
    v27 = a1;
    v28 = a2;
    goto LABEL_7;
  }

  if (v17)
  {
    v61 = *(v5 + 16);
    v62 = v17;
    v63 = v18;
    v64 = v19;
    if (a2)
    {
      v57[0] = a1 & 1;
      v58 = a2;
      v59 = a3;
      v60 = a4 & 1;
      sub_22D79DDDC(v16, v17);
      sub_22D81A398();
      sub_22D79DDDC(v16, v17);
      sub_22D81A398();
      LODWORD(v54) = _s18MobileTimerSupport19SolarTerminatorPathV2eeoiySbAC_ACtFZ_0(&v61, v57);

      result = sub_22D7976D0(v16, v17);
      if (v54)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_22D79DDDC(v16, v17);
    sub_22D79DDDC(v16, v17);
    v54 = v17;
  }

  else
  {
    v48 = *(v5 + 32);
    v49 = *(v5 + 40);
    sub_22D79DDDC(*(v5 + 16), 0);
    if (!a2)
    {
      sub_22D79DDDC(v16, 0);

      v22 = v16;
      v23 = 0;
      return sub_22D7976D0(v22, v23);
    }

    sub_22D81A398();
    sub_22D79DDDC(v16, 0);
    v54 = 0;
  }

  v27 = v16;
  v28 = v17;
LABEL_7:
  sub_22D7976D0(v27, v28);
LABEL_8:
  v29 = *(v5 + 16);
  v30 = *(v5 + 24);
  v31 = *(v5 + 32);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  v32 = *(v5 + 40);
  *(v5 + 40) = a4;
  sub_22D81A398();
  sub_22D7976D0(v29, v30);
  swift_beginAccess();
  v33 = *(v5 + 56);
  v34 = 1 << *(v33 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v33 + 64);
  v37 = (v34 + 63) >> 6;
  v54 = v55 + 16;
  v38 = (v51 + 8);
  v39 = (v55 + 8);
  result = swift_bridgeObjectRetain_n();
  v40 = 0;
  v41 = v56;
  while (v36)
  {
LABEL_17:
    (*(v55 + 16))(v15, *(v33 + 56) + *(v55 + 72) * (__clz(__rbit64(v36)) | (v40 << 6)), v41);
    v43 = *(v5 + 24);
    if (v43 != 1)
    {
      v44 = *(v5 + 40);
      v45 = *(v5 + 32);
      v61 = *(v5 + 16);
      v62 = v43;
      v63 = v45;
      v64 = v44;
      sub_22D81A398();
      v46 = v52;
      sub_22D81B528();
      v47 = v46;
      v41 = v56;
      (*v38)(v47, v53);
    }

    v36 &= v36 - 1;
    result = (*v39)(v15, v41);
  }

  while (1)
  {
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v42 >= v37)
    {
    }

    v36 = *(v33 + 64 + 8 * v42);
    ++v40;
    if (v36)
    {
      v40 = v42;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D798B48(uint64_t a1)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028C8, &qword_22D821C40);
  v66 = *(v58 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v55 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028D0, &qword_22D821C48);
  v69 = *(v71 - 8);
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v55 - v6;
  v7 = type metadata accessor for CurrentLocationResult(0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v56 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028D8, &unk_22D821C50);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F90, &unk_22D822BA0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v60 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v63 = &v55 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v55 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v55 - v27;
  v29 = *(*v1 + 96);
  swift_beginAccess();
  v65 = a1;
  sub_22D79DD74(a1, v28, type metadata accessor for CurrentLocationResult);
  v64 = v8[7];
  (v64)(v28, 0, 1, v7);
  v30 = *(v14 + 56);
  v67 = v1;
  v68 = v29;
  sub_22D7640C4(v1 + v29, v17, &qword_27DA02F90, &unk_22D822BA0);
  sub_22D7640C4(v28, &v17[v30], &qword_27DA02F90, &unk_22D822BA0);
  v31 = v8[6];
  v32 = v31(v17, 1, v7);
  v61 = v8 + 6;
  if (v32 == 1)
  {
    sub_22D764440(v28, &qword_27DA02F90, &unk_22D822BA0);
    if (v31(&v17[v30], 1, v7) == 1)
    {
      return sub_22D764440(v17, &qword_27DA02F90, &unk_22D822BA0);
    }
  }

  else
  {
    sub_22D7640C4(v17, v26, &qword_27DA02F90, &unk_22D822BA0);
    if (v31(&v17[v30], 1, v7) != 1)
    {
      v52 = &v17[v30];
      v53 = v59;
      sub_22D79D988(v52, v59, type metadata accessor for CurrentLocationResult);
      v54 = _s18MobileTimerSupport21CurrentLocationResultV2eeoiySbAC_ACtFZ_0(v26, v53);
      sub_22D79D9F0(v53, type metadata accessor for CurrentLocationResult);
      sub_22D764440(v28, &qword_27DA02F90, &unk_22D822BA0);
      sub_22D79D9F0(v26, type metadata accessor for CurrentLocationResult);
      result = sub_22D764440(v17, &qword_27DA02F90, &unk_22D822BA0);
      if (v54)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_22D764440(v28, &qword_27DA02F90, &unk_22D822BA0);
    sub_22D79D9F0(v26, type metadata accessor for CurrentLocationResult);
  }

  sub_22D764440(v17, &qword_27DA028D8, &unk_22D821C50);
LABEL_7:
  v34 = v63;
  sub_22D79DD74(v65, v63, type metadata accessor for CurrentLocationResult);
  v65 = v7;
  (v64)(v34, 0, 1, v7);
  v64 = v31;
  v36 = v67;
  v35 = v68;
  swift_beginAccess();
  sub_22D79DCA4(v34, v36 + v35, &qword_27DA02F90, &unk_22D822BA0);
  swift_endAccess();
  v37 = *(*v36 + 112);
  swift_beginAccess();
  v38 = *(v36 + v37);
  v39 = v38 + 64;
  v40 = 1 << *(v38 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v38 + 64);
  v43 = (v40 + 63) >> 6;
  v63 = v69 + 16;
  v55 = (v66 + 8);
  v62 = (v69 + 8);
  v66 = v38;
  result = swift_bridgeObjectRetain_n();
  v44 = 0;
  v45 = v70;
  v46 = v60;
  while (v42)
  {
LABEL_17:
    (*(v69 + 16))(v45, *(v66 + 56) + *(v69 + 72) * (__clz(__rbit64(v42)) | (v44 << 6)), v71);
    sub_22D7640C4(v67 + v68, v46, &qword_27DA02F90, &unk_22D822BA0);
    if (v64(v46, 1, v65) == 1)
    {
      sub_22D764440(v46, &qword_27DA02F90, &unk_22D822BA0);
    }

    else
    {
      v48 = v46;
      v49 = v56;
      sub_22D79D988(v48, v56, type metadata accessor for CurrentLocationResult);
      sub_22D79DD74(v49, v59, type metadata accessor for CurrentLocationResult);
      v50 = v57;
      sub_22D81B528();
      v45 = v70;
      (*v55)(v50, v58);
      v51 = v49;
      v46 = v60;
      sub_22D79D9F0(v51, type metadata accessor for CurrentLocationResult);
    }

    v42 &= v42 - 1;
    result = (*v62)(v45, v71);
  }

  while (1)
  {
    v47 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v47 >= v43)
    {
    }

    v42 = *(v39 + 8 * v47);
    ++v44;
    if (v42)
    {
      v44 = v47;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D799350(uint64_t a1)
{
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02930, &qword_22D821CD0);
  v93 = *(v85 - 8);
  v3 = *(v93 + 64);
  MEMORY[0x28223BE20](v85);
  v84 = &v75 - v4;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02938, &qword_22D821CD8);
  v94 = *(v88 - 8);
  v5 = *(v94 + 64);
  MEMORY[0x28223BE20](v88);
  v97 = &v75 - v6;
  v91 = type metadata accessor for CurrentLocationSolarPosition(0);
  v78 = *(v91 - 8);
  v7 = *(v78 + 8);
  MEMORY[0x28223BE20](v91);
  v75 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02928, &qword_22D821CC8);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v83 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v82 = &v75 - v15;
  MEMORY[0x28223BE20](v14);
  v76 = &v75 - v16;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02940, &qword_22D821CE0);
  v17 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v79 = &v75 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02948, &qword_22D821CE8);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v75 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02950, &unk_22D821CF0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v87 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v89 = (&v75 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v75 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v75 - v33;
  v35 = *(*v1 + 96);
  swift_beginAccess();
  v90 = a1;
  sub_22D7640C4(a1, v34, &qword_27DA02928, &qword_22D821CC8);
  v36 = v10[7];
  v81 = (v10 + 7);
  v80 = v36;
  v36(v34, 0, 1, v9);
  v37 = *(v20 + 56);
  v95 = v1;
  v86 = v35;
  sub_22D7640C4(v1 + v35, v23, &qword_27DA02950, &unk_22D821CF0);
  sub_22D7640C4(v34, &v23[v37], &qword_27DA02950, &unk_22D821CF0);
  v39 = v10[6];
  v38 = v10 + 6;
  v96 = v39;
  v40 = v39(v23, 1, v9);
  v92 = v9;
  if (v40 == 1)
  {
    sub_22D764440(v34, &qword_27DA02950, &unk_22D821CF0);
    v41 = v96(&v23[v37], 1, v9);
    v42 = v97;
    if (v41 == 1)
    {
      return sub_22D764440(v23, &qword_27DA02950, &unk_22D821CF0);
    }

    goto LABEL_6;
  }

  sub_22D7640C4(v23, v32, &qword_27DA02950, &unk_22D821CF0);
  v44 = v32;
  if (v96(&v23[v37], 1, v9) == 1)
  {
    sub_22D764440(v34, &qword_27DA02950, &unk_22D821CF0);
    sub_22D764440(v32, &qword_27DA02928, &qword_22D821CC8);
    v42 = v97;
LABEL_6:
    v91 = v38;
    sub_22D764440(v23, &qword_27DA02948, &qword_22D821CE8);
    goto LABEL_7;
  }

  v67 = *(v77 + 48);
  v68 = v79;
  sub_22D7640C4(v32, v79, &qword_27DA02928, &qword_22D821CC8);
  sub_22D79DD0C(&v23[v37], v68 + v67, &qword_27DA02928, &qword_22D821CC8);
  v69 = *(v78 + 6);
  v70 = v91;
  if (v69(v68, 1, v91) == 1)
  {
    sub_22D764440(v34, &qword_27DA02950, &unk_22D821CF0);
    v71 = v69(v68 + v67, 1, v70);
    v42 = v97;
    if (v71 == 1)
    {
      sub_22D764440(v68, &qword_27DA02928, &qword_22D821CC8);
      sub_22D764440(v44, &qword_27DA02928, &qword_22D821CC8);
      return sub_22D764440(v23, &qword_27DA02950, &unk_22D821CF0);
    }
  }

  else
  {
    v78 = v32;
    v72 = v76;
    sub_22D7640C4(v68, v76, &qword_27DA02928, &qword_22D821CC8);
    if (v69(v68 + v67, 1, v70) != 1)
    {
      v91 = v38;
      v73 = v75;
      sub_22D79D988(v68 + v67, v75, type metadata accessor for CurrentLocationSolarPosition);
      v74 = sub_22D79D4C8(v72, v73);
      sub_22D79D9F0(v73, type metadata accessor for CurrentLocationSolarPosition);
      sub_22D764440(v34, &qword_27DA02950, &unk_22D821CF0);
      sub_22D79D9F0(v72, type metadata accessor for CurrentLocationSolarPosition);
      sub_22D764440(v68, &qword_27DA02928, &qword_22D821CC8);
      sub_22D764440(v78, &qword_27DA02928, &qword_22D821CC8);
      result = sub_22D764440(v23, &qword_27DA02950, &unk_22D821CF0);
      v42 = v97;
      v9 = v92;
      if (v74)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_22D764440(v34, &qword_27DA02950, &unk_22D821CF0);
    sub_22D79D9F0(v72, type metadata accessor for CurrentLocationSolarPosition);
    v42 = v97;
    v44 = v78;
  }

  v91 = v38;
  sub_22D764440(v68, &qword_27DA02940, &qword_22D821CE0);
  sub_22D764440(v44, &qword_27DA02928, &qword_22D821CC8);
  sub_22D764440(v23, &qword_27DA02950, &unk_22D821CF0);
  v9 = v92;
LABEL_7:
  v45 = v89;
  sub_22D7640C4(v90, v89, &qword_27DA02928, &qword_22D821CC8);
  v80(v45, 0, 1, v9);
  v46 = v95;
  v47 = v86;
  swift_beginAccess();
  sub_22D79DCA4(v45, v46 + v47, &qword_27DA02950, &unk_22D821CF0);
  swift_endAccess();
  v48 = *(*v46 + 112);
  swift_beginAccess();
  v49 = *(v46 + v48);
  v50 = v49 + 64;
  v51 = 1 << *(v49 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(v49 + 64);
  v54 = (v51 + 63) >> 6;
  v90 = v94 + 16;
  v81 = (v93 + 8);
  v89 = (v94 + 8);
  v93 = v49;
  result = swift_bridgeObjectRetain_n();
  v55 = 0;
  v57 = v87;
  v56 = v88;
  while (v53)
  {
LABEL_17:
    (*(v94 + 16))(v42, *(v93 + 56) + *(v94 + 72) * (__clz(__rbit64(v53)) | (v55 << 6)), v56);
    sub_22D7640C4(v95 + v47, v57, &qword_27DA02950, &unk_22D821CF0);
    if (v96(v57, 1, v92) == 1)
    {
      v58 = v57;
      v59 = &qword_27DA02950;
      v60 = &unk_22D821CF0;
    }

    else
    {
      v62 = v57;
      v63 = v82;
      sub_22D79DD0C(v62, v82, &qword_27DA02928, &qword_22D821CC8);
      sub_22D7640C4(v63, v83, &qword_27DA02928, &qword_22D821CC8);
      v64 = v84;
      v47 = v86;
      sub_22D81B528();
      v56 = v88;
      v65 = v64;
      v66 = v97;
      (*v81)(v65, v85);
      v58 = v63;
      v57 = v87;
      v59 = &qword_27DA02928;
      v60 = &qword_22D821CC8;
      v42 = v66;
    }

    sub_22D764440(v58, v59, v60);
    v53 &= v53 - 1;
    result = (*v89)(v42, v56);
  }

  while (1)
  {
    v61 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v61 >= v54)
    {
    }

    v53 = *(v50 + 8 * v61);
    ++v55;
    if (v53)
    {
      v55 = v61;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D799EA0(uint64_t a1)
{
  v2 = v1;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028F8, &qword_22D821C80);
  v79 = *(v72 - 8);
  v4 = *(v79 + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v67 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02900, &qword_22D821C88);
  v84 = *(v78 - 8);
  v6 = *(v84 + 64);
  MEMORY[0x28223BE20](v78);
  v87 = &v67 - v7;
  v8 = sub_22D81A8C8();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v70 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v73 = &v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023A0, &qword_22D820A20);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v67 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v77 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v69 = (&v67 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v81 = &v67 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v67 - v27;
  v29 = *(*v2 + 96);
  swift_beginAccess();
  v30 = v9[2];
  v80 = a1;
  v74 = v30;
  v75 = v9 + 2;
  v30(v28, a1, v8);
  v68 = v9[7];
  (v68)(v28, 0, 1, v8);
  v31 = *(v15 + 56);
  v85 = v2;
  v76 = v29;
  sub_22D7640C4(v2 + v29, v18, &qword_27DA02000, &qword_22D81F160);
  sub_22D7640C4(v28, &v18[v31], &qword_27DA02000, &qword_22D81F160);
  v83 = v9;
  v34 = v9[6];
  v33 = (v9 + 6);
  v32 = v34;
  v86 = v8;
  if (v34(v18, 1, v8) == 1)
  {
    sub_22D764440(v28, &qword_27DA02000, &qword_22D81F160);
    if (v32(&v18[v31], 1, v86) == 1)
    {
      return sub_22D764440(v18, &qword_27DA02000, &qword_22D81F160);
    }
  }

  else
  {
    v36 = v81;
    sub_22D7640C4(v18, v81, &qword_27DA02000, &qword_22D81F160);
    if (v32(&v18[v31], 1, v86) != 1)
    {
      v82 = v32;
      v61 = &v18[v31];
      v62 = v83;
      v63 = v73;
      v64 = v86;
      (v83[4])(v73, v61, v86);
      sub_22D79D8DC(&qword_27DA02340, MEMORY[0x277CC9578]);
      v65 = sub_22D81B1F8();
      v66 = v62[1];
      v66(v63, v64);
      sub_22D764440(v28, &qword_27DA02000, &qword_22D81F160);
      v66(v36, v64);
      result = sub_22D764440(v18, &qword_27DA02000, &qword_22D81F160);
      if (v65)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_22D764440(v28, &qword_27DA02000, &qword_22D81F160);
    (v83[1])(v36, v86);
  }

  v82 = v32;
  sub_22D764440(v18, &qword_27DA023A0, &qword_22D820A20);
LABEL_7:
  v81 = v33;
  v37 = v69;
  v38 = v86;
  v74(v69, v80, v86);
  (v68)(v37, 0, 1, v38);
  v39 = v85;
  v40 = v76;
  swift_beginAccess();
  v41 = &qword_22D81F160;
  v42 = v40;
  sub_22D79DCA4(v37, v39 + v40, &qword_27DA02000, &qword_22D81F160);
  swift_endAccess();
  v43 = *(*v39 + 112);
  swift_beginAccess();
  v44 = *(v39 + v43);
  v45 = v44 + 64;
  v46 = 1 << *(v44 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v44 + 64);
  v49 = (v46 + 63) >> 6;
  v80 = v84 + 16;
  v69 = (v83 + 4);
  v68 = (v79 + 8);
  v67 = (v83 + 1);
  v79 = v84 + 8;
  v83 = v44;
  result = swift_bridgeObjectRetain_n();
  v50 = 0;
  v52 = v77;
  v51 = v78;
  while (v48)
  {
    v53 = v41;
    v54 = v87;
LABEL_19:
    (*(v84 + 16))(v54, v83[7] + *(v84 + 72) * (__clz(__rbit64(v48)) | (v50 << 6)), v51);
    v56 = v51;
    v41 = v53;
    sub_22D7640C4(v85 + v42, v52, &qword_27DA02000, v53);
    if (v82(v52, 1, v86) == 1)
    {
      sub_22D764440(v52, &qword_27DA02000, v53);
    }

    else
    {
      v57 = v86;
      v58 = v70;
      (*v69)(v70, v52, v86);
      v74(v73, v58, v57);
      v59 = v71;
      v52 = v77;
      sub_22D81B528();
      v56 = v78;
      (*v68)(v59, v72);
      v60 = v57;
      v42 = v76;
      (*v67)(v58, v60);
    }

    v48 &= v48 - 1;
    result = (*v79)(v87, v56);
    v51 = v56;
  }

  v54 = v87;
  while (1)
  {
    v55 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v55 >= v49)
    {
    }

    v48 = *(v45 + 8 * v55);
    ++v50;
    if (v48)
    {
      v53 = v41;
      v50 = v55;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D79A780(uint64_t a1)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028E0, &qword_22D821C60);
  v66 = *(v58 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v55 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028E8, &qword_22D821C68);
  v69 = *(v71 - 8);
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v55 - v6;
  v7 = type metadata accessor for TimeString(0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v56 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = (&v55 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028F0, &unk_22D821C70);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C10, &qword_22D8224C0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v60 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v63 = &v55 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = (&v55 - v25);
  MEMORY[0x28223BE20](v24);
  v28 = &v55 - v27;
  v29 = *(*v1 + 96);
  swift_beginAccess();
  v65 = a1;
  sub_22D79DD74(a1, v28, type metadata accessor for TimeString);
  v64 = v8[7];
  (v64)(v28, 0, 1, v7);
  v30 = *(v14 + 56);
  v67 = v1;
  v68 = v29;
  sub_22D7640C4(v1 + v29, v17, &qword_27DA02C10, &qword_22D8224C0);
  sub_22D7640C4(v28, &v17[v30], &qword_27DA02C10, &qword_22D8224C0);
  v31 = v8[6];
  v32 = v31(v17, 1, v7);
  v61 = v8 + 6;
  if (v32 == 1)
  {
    sub_22D764440(v28, &qword_27DA02C10, &qword_22D8224C0);
    if (v31(&v17[v30], 1, v7) == 1)
    {
      return sub_22D764440(v17, &qword_27DA02C10, &qword_22D8224C0);
    }
  }

  else
  {
    sub_22D7640C4(v17, v26, &qword_27DA02C10, &qword_22D8224C0);
    if (v31(&v17[v30], 1, v7) != 1)
    {
      v52 = &v17[v30];
      v53 = v59;
      sub_22D79D988(v52, v59, type metadata accessor for TimeString);
      v54 = _s18MobileTimerSupport10TimeStringV2eeoiySbAC_ACtFZ_0(v26, v53);
      sub_22D79D9F0(v53, type metadata accessor for TimeString);
      sub_22D764440(v28, &qword_27DA02C10, &qword_22D8224C0);
      sub_22D79D9F0(v26, type metadata accessor for TimeString);
      result = sub_22D764440(v17, &qword_27DA02C10, &qword_22D8224C0);
      if (v54)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_22D764440(v28, &qword_27DA02C10, &qword_22D8224C0);
    sub_22D79D9F0(v26, type metadata accessor for TimeString);
  }

  sub_22D764440(v17, &qword_27DA028F0, &unk_22D821C70);
LABEL_7:
  v34 = v63;
  sub_22D79DD74(v65, v63, type metadata accessor for TimeString);
  v65 = v7;
  (v64)(v34, 0, 1, v7);
  v64 = v31;
  v36 = v67;
  v35 = v68;
  swift_beginAccess();
  sub_22D79DCA4(v34, v36 + v35, &qword_27DA02C10, &qword_22D8224C0);
  swift_endAccess();
  v37 = *(*v36 + 112);
  swift_beginAccess();
  v38 = *(v36 + v37);
  v39 = v38 + 64;
  v40 = 1 << *(v38 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v38 + 64);
  v43 = (v40 + 63) >> 6;
  v63 = v69 + 16;
  v55 = (v66 + 8);
  v62 = (v69 + 8);
  v66 = v38;
  result = swift_bridgeObjectRetain_n();
  v44 = 0;
  v45 = v70;
  v46 = v60;
  while (v42)
  {
LABEL_17:
    (*(v69 + 16))(v45, *(v66 + 56) + *(v69 + 72) * (__clz(__rbit64(v42)) | (v44 << 6)), v71);
    sub_22D7640C4(v67 + v68, v46, &qword_27DA02C10, &qword_22D8224C0);
    if (v64(v46, 1, v65) == 1)
    {
      sub_22D764440(v46, &qword_27DA02C10, &qword_22D8224C0);
    }

    else
    {
      v48 = v46;
      v49 = v56;
      sub_22D79D988(v48, v56, type metadata accessor for TimeString);
      sub_22D79DD74(v49, v59, type metadata accessor for TimeString);
      v50 = v57;
      sub_22D81B528();
      v45 = v70;
      (*v55)(v50, v58);
      v51 = v49;
      v46 = v60;
      sub_22D79D9F0(v51, type metadata accessor for TimeString);
    }

    v42 &= v42 - 1;
    result = (*v62)(v45, v71);
  }

  while (1)
  {
    v47 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v47 >= v43)
    {
    }

    v42 = *(v39 + 8 * v47);
    ++v44;
    if (v42)
    {
      v44 = v47;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D79AF88(uint64_t a1)
{
  v91 = a1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028A8, &qword_22D821C10);
  v87 = *(v82 - 8);
  v2 = *(v87 + 64);
  MEMORY[0x28223BE20](v82);
  v81 = &v72 - v3;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028B0, &unk_22D821C18);
  v92 = *(v86 - 8);
  v4 = *(v92 + 64);
  MEMORY[0x28223BE20](v86);
  v94 = &v72 - v5;
  v89 = sub_22D81A8C8();
  v76 = *(v89 - 1);
  v6 = *(v76 + 64);
  MEMORY[0x28223BE20](v89);
  v72 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v80 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v79 = &v72 - v14;
  MEMORY[0x28223BE20](v13);
  v73 = &v72 - v15;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023A0, &qword_22D820A20);
  v16 = *(*(v74 - 1) + 64);
  MEMORY[0x28223BE20](v74);
  v75 = &v72 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028B8, &qword_22D821C28);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v72 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C60, &qword_22D822540);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v84 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v88 = &v72 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v72 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v72 - v32;
  v34 = *(*v1 + 96);
  swift_beginAccess();
  sub_22D7640C4(v91, v33, &qword_27DA02000, &qword_22D81F160);
  v35 = v9[7];
  v78 = (v9 + 7);
  v77 = v35;
  v35(v33, 0, 1, v8);
  v36 = *(v19 + 56);
  v93 = v1;
  v83 = v34;
  sub_22D7640C4(v1 + v34, v22, &qword_27DA02C60, &qword_22D822540);
  sub_22D7640C4(v33, &v22[v36], &qword_27DA02C60, &qword_22D822540);
  v37 = v9[6];
  v38 = v37(v22, 1, v8);
  v85 = v9 + 6;
  v90 = v8;
  if (v38 == 1)
  {
    sub_22D764440(v33, &qword_27DA02C60, &qword_22D822540);
    if (v37(&v22[v36], 1, v8) == 1)
    {
      return sub_22D764440(v22, &qword_27DA02C60, &qword_22D822540);
    }

    goto LABEL_6;
  }

  sub_22D7640C4(v22, v31, &qword_27DA02C60, &qword_22D822540);
  if (v37(&v22[v36], 1, v8) == 1)
  {
    sub_22D764440(v33, &qword_27DA02C60, &qword_22D822540);
    sub_22D764440(v31, &qword_27DA02000, &qword_22D81F160);
LABEL_6:
    sub_22D764440(v22, &qword_27DA028B8, &qword_22D821C28);
    goto LABEL_7;
  }

  v62 = *(v74 + 12);
  v74 = v31;
  v63 = v75;
  sub_22D7640C4(v31, v75, &qword_27DA02000, &qword_22D81F160);
  sub_22D79DD0C(&v22[v36], v63 + v62, &qword_27DA02000, &qword_22D81F160);
  v64 = v76;
  v65 = *(v76 + 48);
  v66 = v89;
  if (v65(v63, 1, v89) == 1)
  {
    sub_22D764440(v33, &qword_27DA02C60, &qword_22D822540);
    if (v65(v63 + v62, 1, v66) == 1)
    {
      sub_22D764440(v63, &qword_27DA02000, &qword_22D81F160);
      sub_22D764440(v74, &qword_27DA02000, &qword_22D81F160);
      return sub_22D764440(v22, &qword_27DA02C60, &qword_22D822540);
    }
  }

  else
  {
    v67 = v73;
    sub_22D7640C4(v63, v73, &qword_27DA02000, &qword_22D81F160);
    if (v65(v63 + v62, 1, v66) != 1)
    {
      v68 = v63 + v62;
      v69 = v72;
      (*(v64 + 32))(v72, v68, v66);
      sub_22D79D8DC(&qword_27DA02340, MEMORY[0x277CC9578]);
      v70 = sub_22D81B1F8();
      v71 = *(v64 + 8);
      v71(v69, v66);
      sub_22D764440(v33, &qword_27DA02C60, &qword_22D822540);
      v71(v67, v66);
      sub_22D764440(v63, &qword_27DA02000, &qword_22D81F160);
      sub_22D764440(v74, &qword_27DA02000, &qword_22D81F160);
      result = sub_22D764440(v22, &qword_27DA02C60, &qword_22D822540);
      v8 = v90;
      if (v70)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_22D764440(v33, &qword_27DA02C60, &qword_22D822540);
    (*(v64 + 8))(v67, v66);
  }

  sub_22D764440(v63, &qword_27DA023A0, &qword_22D820A20);
  sub_22D764440(v74, &qword_27DA02000, &qword_22D81F160);
  sub_22D764440(v22, &qword_27DA02C60, &qword_22D822540);
  v8 = v90;
LABEL_7:
  v89 = v37;
  v40 = v88;
  sub_22D7640C4(v91, v88, &qword_27DA02000, &qword_22D81F160);
  v77(v40, 0, 1, v8);
  v41 = v93;
  v42 = v83;
  swift_beginAccess();
  v43 = &qword_27DA02C60;
  sub_22D79DCA4(v40, v41 + v42, &qword_27DA02C60, &qword_22D822540);
  swift_endAccess();
  v44 = *(*v41 + 112);
  swift_beginAccess();
  v45 = *(v41 + v44);
  v46 = v45 + 64;
  v47 = 1 << *(v45 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(v45 + 64);
  v50 = (v47 + 63) >> 6;
  v88 = v92 + 16;
  v78 = (v87 + 8);
  v87 = v92 + 8;
  v91 = v45;
  result = swift_bridgeObjectRetain_n();
  v51 = 0;
  v52 = v86;
  v53 = v84;
  while (v49)
  {
LABEL_17:
    (*(v92 + 16))(v94, *(v91 + 56) + *(v92 + 72) * (__clz(__rbit64(v49)) | (v51 << 6)), v52);
    sub_22D7640C4(v93 + v42, v53, v43, &qword_22D822540);
    if ((v89)(v53, 1, v90) == 1)
    {
      v54 = v53;
      v55 = v43;
      v56 = &qword_22D822540;
    }

    else
    {
      v58 = v79;
      sub_22D79DD0C(v53, v79, &qword_27DA02000, &qword_22D81F160);
      sub_22D7640C4(v58, v80, &qword_27DA02000, &qword_22D81F160);
      v59 = v43;
      v60 = v81;
      v53 = v84;
      sub_22D81B528();
      v52 = v86;
      v61 = v60;
      v43 = v59;
      (*v78)(v61, v82);
      v54 = v58;
      v42 = v83;
      v55 = &qword_27DA02000;
      v56 = &qword_22D81F160;
    }

    sub_22D764440(v54, v55, v56);
    v49 &= v49 - 1;
    result = (*v87)(v94, v52);
  }

  while (1)
  {
    v57 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v57 >= v50)
    {
    }

    v49 = *(v46 + 8 * v57);
    ++v51;
    if (v49)
    {
      v51 = v57;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D79BAEC(uint64_t a1)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02970, &qword_22D821D10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  v5 = sub_22D81A918();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  sub_22D81A908();
  v19 = *(v6 + 16);
  v19(v9, v11, v5);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02968, &qword_22D821D08);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v4, v20, v12);
  (*(v13 + 56))(v4, 0, 1, v12);
  swift_beginAccess();
  sub_22D803BB8(v4, v9);
  swift_endAccess();
  v14 = swift_allocObject();
  swift_weakInit();
  v19(v9, v11, v5);
  v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  (*(v6 + 32))(v16 + v15, v9, v5);
  sub_22D81A198();
  sub_22D81B518();
  (*(v6 + 8))(v11, v5);
}

uint64_t sub_22D79BDC8(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02910, &unk_22D821C98);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_22D81A918();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  sub_22D81A908();
  v22 = *(v8 + 16);
  v22(v11, v13, v7);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028D0, &qword_22D821C48);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v6, v23, v14);
  (*(v15 + 56))(v6, 0, 1, v14);
  v16 = *(*v2 + 112);
  swift_beginAccess();
  sub_22D803E0C(v6, v11);
  swift_endAccess();
  v17 = swift_allocObject();
  swift_weakInit();
  v22(v11, v13, v7);
  v18 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v8 + 32))(v19 + v18, v11, v7);
  sub_22D81A198();
  sub_22D81B518();
  (*(v8 + 8))(v13, v7);
}

uint64_t sub_22D79C0B8(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02908, &qword_22D821C90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_22D81A918();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  sub_22D81A908();
  v22 = *(v8 + 16);
  v22(v11, v13, v7);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02900, &qword_22D821C88);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v6, v23, v14);
  (*(v15 + 56))(v6, 0, 1, v14);
  v16 = *(*v2 + 112);
  swift_beginAccess();
  sub_22D804060(v6, v11);
  swift_endAccess();
  v17 = swift_allocObject();
  swift_weakInit();
  v22(v11, v13, v7);
  v18 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v8 + 32))(v19 + v18, v11, v7);
  sub_22D81A198();
  sub_22D81B518();
  (*(v8 + 8))(v13, v7);
}

uint64_t sub_22D79C3A8(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028C0, &unk_22D821C30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_22D81A918();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  sub_22D81A908();
  v22 = *(v8 + 16);
  v22(v11, v13, v7);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028B0, &unk_22D821C18);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v6, v23, v14);
  (*(v15 + 56))(v6, 0, 1, v14);
  v16 = *(*v2 + 112);
  swift_beginAccess();
  sub_22D804504(v6, v11);
  swift_endAccess();
  v17 = swift_allocObject();
  swift_weakInit();
  v22(v11, v13, v7);
  v18 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v8 + 32))(v19 + v18, v11, v7);
  sub_22D81A198();
  sub_22D81B518();
  (*(v8 + 8))(v13, v7);
}

uint64_t sub_22D79C698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22D79C72C(a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_22D79C72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v28 = a1;
  v29 = a3;
  v27[1] = a2;
  v32 = sub_22D81B0C8();
  v35 = *(v32 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D81B108();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D81A918();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_22D81B0D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D759CA0(0, &qword_280CD2D60, 0x277D85C78);
  (*(v16 + 104))(v19, *MEMORY[0x277D851A8], v15);
  v27[0] = sub_22D81B6B8();
  (*(v16 + 8))(v19, v15);
  v20 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v12);
  v21 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  (*(v13 + 32))(v22 + v21, v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  aBlock[4] = v30;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D776B08;
  aBlock[3] = v31;
  v23 = _Block_copy(aBlock);
  sub_22D81A198();
  sub_22D81B0E8();
  v36 = MEMORY[0x277D84F90];
  sub_22D79D8DC(&qword_280CD29A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA023A8, &qword_22D820A28);
  sub_22D79D924();
  v24 = v32;
  sub_22D81B788();
  v25 = v27[0];
  MEMORY[0x2318D1DA0](0, v11, v7, v23);
  _Block_release(v23);

  (*(v35 + 8))(v7, v24);
  (*(v33 + 8))(v11, v34);
}

uint64_t sub_22D79CB94(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02970, &qword_22D821D10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11[-v5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 48);
    v9 = result;
    swift_beginAccess();
    os_unfair_lock_lock(v8 + 4);
    swift_endAccess();
    swift_beginAccess();
    sub_22D79D2F4(a2, &qword_27DA02968, &qword_22D821D08, sub_22D80B528, sub_22D80CEDC, v6);
    sub_22D764440(v6, &qword_27DA02970, &qword_22D821D10);
    swift_endAccess();
    v10 = *(v9 + 48);
    swift_beginAccess();
    os_unfair_lock_unlock(v10 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_22D79CD0C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02910, &unk_22D821C98);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-v5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(*result + 104);
    v9 = *(result + v8);
    v10 = result;
    swift_beginAccess();
    os_unfair_lock_lock(v9 + 4);
    swift_endAccess();
    v11 = *(*v10 + 112);
    swift_beginAccess();
    sub_22D79D2F4(a2, &qword_27DA028D0, &qword_22D821C48, sub_22D80B53C, sub_22D80D05C, v6);
    sub_22D764440(v6, &qword_27DA02910, &unk_22D821C98);
    swift_endAccess();
    v12 = *(v10 + v8);
    swift_beginAccess();
    os_unfair_lock_unlock(v12 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_22D79CEB4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02908, &qword_22D821C90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-v5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(*result + 104);
    v9 = *(result + v8);
    v10 = result;
    swift_beginAccess();
    os_unfair_lock_lock(v9 + 4);
    swift_endAccess();
    v11 = *(*v10 + 112);
    swift_beginAccess();
    sub_22D79D2F4(a2, &qword_27DA02900, &qword_22D821C88, sub_22D80B894, sub_22D80D080, v6);
    sub_22D764440(v6, &qword_27DA02908, &qword_22D821C90);
    swift_endAccess();
    v12 = *(v10 + v8);
    swift_beginAccess();
    os_unfair_lock_unlock(v12 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_22D79D05C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028C0, &unk_22D821C30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-v5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(*result + 104);
    v9 = *(result + v8);
    v10 = result;
    swift_beginAccess();
    os_unfair_lock_lock(v9 + 4);
    swift_endAccess();
    v11 = *(*v10 + 112);
    swift_beginAccess();
    sub_22D79D2F4(a2, &qword_27DA028B0, &unk_22D821C18, sub_22D80BA80, sub_22D80D5B4, v6);
    sub_22D764440(v6, &qword_27DA028C0, &unk_22D821C30);
    swift_endAccess();
    v12 = *(v10 + v8);
    swift_beginAccess();
    os_unfair_lock_unlock(v12 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_22D79D2F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = sub_22D8078C4(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v11;
    v32 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v19 = v32;
    }

    v20 = *(v19 + 48);
    v21 = sub_22D81A918();
    v22 = v16;
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    v23 = *(v19 + 56);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v31 = *(v24 - 8);
    (*(v31 + 32))(a6, v23 + *(v31 + 72) * v22, v24);
    a4(v22, v19);
    *v11 = v19;
    v25 = *(v31 + 56);
    v26 = a6;
    v27 = 0;
    v28 = v24;
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v25 = *(*(v29 - 8) + 56);
    v28 = v29;
    v26 = a6;
    v27 = 1;
  }

  return v25(v26, v27, 1, v28);
}

BOOL sub_22D79D4C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02840, &qword_22D821A70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v28 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FA0, &unk_22D821C00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  if (!sub_22D7B08B4(a1, a2))
  {
    return 0;
  }

  v17 = type metadata accessor for SolarPosition(0);
  if (*(a1 + *(v17 + 20)) != *(a2 + *(v17 + 20)) || *(a1 + *(v17 + 24)) != *(a2 + *(v17 + 24)))
  {
    return 0;
  }

  v18 = *(type metadata accessor for CurrentLocationSolarPosition(0) + 20);
  v19 = a1 + v18;
  v20 = *(v13 + 48);
  sub_22D7640C4(v19, v16, &qword_27DA02840, &qword_22D821A70);
  sub_22D7640C4(a2 + v18, &v16[v20], &qword_27DA02840, &qword_22D821A70);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_22D764440(v16, &qword_27DA02840, &qword_22D821A70);
      return 1;
    }

    goto LABEL_9;
  }

  sub_22D7640C4(v16, v12, &qword_27DA02840, &qword_22D821A70);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    sub_22D79D9F0(v12, type metadata accessor for CurrentLocation);
LABEL_9:
    v23 = &qword_27DA02FA0;
    v24 = &unk_22D821C00;
LABEL_10:
    sub_22D764440(v16, v23, v24);
    return 0;
  }

  sub_22D79D988(&v16[v20], v8, type metadata accessor for CurrentLocation);
  sub_22D759CA0(0, &qword_280CD1500, 0x277D82BB8);
  v25 = *v12;
  v26 = *v8;
  if ((sub_22D81B6F8() & 1) == 0)
  {
    sub_22D79D9F0(v8, type metadata accessor for CurrentLocation);
    sub_22D79D9F0(v12, type metadata accessor for CurrentLocation);
    v23 = &qword_27DA02840;
    v24 = &qword_22D821A70;
    goto LABEL_10;
  }

  v27 = sub_22D7AE12C(v12 + *(v4 + 20), v8 + *(v4 + 20));
  sub_22D79D9F0(v8, type metadata accessor for CurrentLocation);
  sub_22D79D9F0(v12, type metadata accessor for CurrentLocation);
  sub_22D764440(v16, &qword_27DA02840, &qword_22D821A70);
  return (v27 & 1) != 0;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

uint64_t sub_22D79D8DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22D79D924()
{
  result = qword_280CD2990;
  if (!qword_280CD2990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DA023A8, &qword_22D820A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2990);
  }

  return result;
}

uint64_t sub_22D79D988(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22D79D9F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22D79DB30(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_22D81A918() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_22D79DBF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B0C;

  return sub_22D7969AC(a1, v4, v5, v6);
}

uint64_t sub_22D79DCA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22D79DD0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22D79DD74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22D79DDDC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_22D81A398();
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  v1 = sub_22D81A918();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D79DF14(char a1)
{
  sub_22D81BBC8();
  MEMORY[0x2318D2310](qword_22D822568[a1]);
  return sub_22D81BC18();
}

uint64_t sub_22D79DF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_22D7640C4(a3, v24 - v10, &unk_27DA01FF0, &qword_22D81FC70);
  v12 = sub_22D81B4F8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_22D81A198();
  if (v14 == 1)
  {
    sub_22D764440(v11, &unk_27DA01FF0, &qword_22D81FC70);
  }

  else
  {
    sub_22D81B4E8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22D81B498();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22D81B308() + 32;
      sub_22D81A198();
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_22D764440(a3, &unk_27DA01FF0, &qword_22D81FC70);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22D764440(a3, &unk_27DA01FF0, &qword_22D81FC70);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22D79E214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_22D7640C4(a3, v24 - v10, &unk_27DA01FF0, &qword_22D81FC70);
  v12 = sub_22D81B4F8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_22D81A198();
  if (v14 == 1)
  {
    sub_22D764440(v11, &unk_27DA01FF0, &qword_22D81FC70);
  }

  else
  {
    sub_22D81B4E8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22D81B498();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22D81B308() + 32;
      sub_22D81A198();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BC0, &unk_22D822460);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_22D764440(a3, &unk_27DA01FF0, &qword_22D81FC70);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22D764440(a3, &unk_27DA01FF0, &qword_22D81FC70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BC0, &unk_22D822460);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

MobileTimerSupport::ClockTimeInterval_optional __swiftcall ClockTimeInterval.init(rawValue:)(Swift::Double rawValue)
{
  if (rawValue == 0.01666)
  {
    *v1 = 0;
  }

  else
  {
    if (rawValue == 60.0)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

    if (rawValue == 1.0)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    *v1 = v3;
  }

  return result;
}

double sub_22D79E5D0@<D0>(double *a1@<X8>)
{
  result = dbl_22D822580[*v1];
  *a1 = result;
  return result;
}

uint64_t OverrideTime.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22D81A8C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t OverrideTime.date.setter(uint64_t a1)
{
  v3 = sub_22D81A8C8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

__n128 OverrideTime.advancingRate.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OverrideTime(0) + 20);
  result = *v3;
  v5 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

__n128 OverrideTime.advancingRate.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for OverrideTime(0) + 20));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

uint64_t OverrideTime.AdvancingRate.offset.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t OverrideTime.AdvancingRate.offset.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t OverrideTime.AdvancingRate.interval.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t OverrideTime.AdvancingRate.interval.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t OverrideTime.AdvancingRate.init(offset:interval:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static OverrideTime.AdvancingRate.paused.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22D81BCA8();
  v4 = v3;
  result = sub_22D81BCA8();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  a1[3] = v6;
  return result;
}

uint64_t static OverrideTime.AdvancingRate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  if ((sub_22D81BC98() & 1) == 0)
  {
    return 0;
  }

  return sub_22D81BC98();
}

uint64_t sub_22D79E990()
{
  if (*v0)
  {
    result = 0x6C61767265746E69;
  }

  else
  {
    result = 0x74657366666FLL;
  }

  *v0;
  return result;
}

uint64_t sub_22D79E9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74657366666FLL && a2 == 0xE600000000000000;
  if (v6 || (sub_22D81BB08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22D81BB08();

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

uint64_t sub_22D79EAA0(uint64_t a1)
{
  v2 = sub_22D79ECD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D79EADC(uint64_t a1)
{
  v2 = sub_22D79ECD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverrideTime.AdvancingRate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02998, &qword_22D821D40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v15 = v1[3];
  v16 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D79ECD4();
  sub_22D81BC38();
  v18 = v9;
  v19 = v8;
  v20 = 0;
  v12 = v17;
  sub_22D81BAB8();
  if (!v12)
  {
    v18 = v16;
    v19 = v15;
    v20 = 1;
    sub_22D81BAB8();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_22D79ECD4()
{
  result = qword_27DA029A0;
  if (!qword_27DA029A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA029A0);
  }

  return result;
}

uint64_t OverrideTime.AdvancingRate.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029A8, &qword_22D821D48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D79ECD4();
  sub_22D81BC28();
  if (!v2)
  {
    v15 = 0;
    sub_22D81BA28();
    v11 = v14;
    v15 = 1;
    sub_22D81BA28();
    (*(v6 + 8))(v9, v5);
    v12 = v14;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22D79EF30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  if ((sub_22D81BC98() & 1) == 0)
  {
    return 0;
  }

  return sub_22D81BC98();
}

__n128 OverrideTime.init(date:advancingRate:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22D81A8C8();
  v9 = a2[1];
  v10 = *a2;
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = (a3 + *(type metadata accessor for OverrideTime(0) + 20));
  result = v10;
  *v7 = v10;
  v7[1] = v9;
  return result;
}

BOOL static OverrideTime.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_22D81A868() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for OverrideTime(0) + 20);
  v5 = a1 + v4;
  v6 = *(a1 + v4);
  v7 = *(a1 + v4 + 8);
  v8 = *(a1 + v4 + 16);
  v9 = *(v5 + 24);
  v10 = (a2 + v4);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  if ((sub_22D81BC98() & 1) == 0)
  {
    return 0;
  }

  return (sub_22D81BC98() & 1) != 0;
}

uint64_t sub_22D79F0C0()
{
  if (*v0)
  {
    result = 0x6E69636E61766461;
  }

  else
  {
    result = 1702125924;
  }

  *v0;
  return result;
}

uint64_t sub_22D79F100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_22D81BB08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E69636E61766461 && a2 == 0xED00006574615267)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22D81BB08();

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

uint64_t sub_22D79F1E4(uint64_t a1)
{
  v2 = sub_22D79F430();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D79F220(uint64_t a1)
{
  v2 = sub_22D79F430();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverrideTime.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029B0, &qword_22D821D50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D79F430();
  sub_22D81BC38();
  LOBYTE(v15) = 0;
  sub_22D81A8C8();
  sub_22D79F858(&unk_280CD2900, MEMORY[0x277CC9578]);
  sub_22D81BAB8();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for OverrideTime(0) + 20));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v14[15] = 1;
    sub_22D79F484();
    sub_22D81BAB8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_22D79F430()
{
  result = qword_27DA029B8;
  if (!qword_27DA029B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA029B8);
  }

  return result;
}

unint64_t sub_22D79F484()
{
  result = qword_27DA029C8;
  if (!qword_27DA029C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA029C8);
  }

  return result;
}

uint64_t OverrideTime.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v33 = sub_22D81A8C8();
  v30 = *(v33 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA029D0, &qword_22D821D58);
  v8 = *(v7 - 8);
  v31 = v7;
  v32 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for OverrideTime(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D79F430();
  sub_22D81BC28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v28 = v12;
  v17 = v15;
  v18 = v30;
  LOBYTE(v34) = 0;
  sub_22D79F858(&unk_280CD2E60, MEMORY[0x277CC9578]);
  v19 = v33;
  v20 = v31;
  sub_22D81BA28();
  v21 = *(v18 + 32);
  v27 = v17;
  v21(v17, v6, v19);
  v36 = 1;
  sub_22D79F8A0();
  sub_22D81BA28();
  (*(v32 + 8))(v11, v20);
  v22 = v27;
  v23 = (v27 + *(v28 + 20));
  v24 = v35;
  *v23 = v34;
  v23[1] = v24;
  sub_22D7A88A0(v22, v29, type metadata accessor for OverrideTime);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_22D7A8AD0(v22, type metadata accessor for OverrideTime);
}

uint64_t sub_22D79F858(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22D79F8A0()
{
  result = qword_27DA029E0;
  if (!qword_27DA029E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA029E0);
  }

  return result;
}

BOOL sub_22D79F924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_22D81A868() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  v10 = *(a1 + v6 + 24);
  v11 = (a2 + v6);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  if ((sub_22D81BC98() & 1) == 0)
  {
    return 0;
  }

  return (sub_22D81BC98() & 1) != 0;
}

uint64_t sub_22D79FA10()
{
  if (MEMORY[0x2318D2420]("Clock:shared"))
  {
    type metadata accessor for SystemSystemStatusBarOverrideProvider();
    v0 = swift_allocObject();
    v0[2] = 0;
    v0[3] = 0;
    v0[4] = [objc_allocWithZone(MEMORY[0x277D6BB20]) init];
    type metadata accessor for SystemOverrideClock();
    v1 = swift_allocObject();
    sub_22D7A90B4(v0, v1);
  }

  v2 = type metadata accessor for Clock(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_22D7A8C9C();

  qword_27DA02990 = v5;
  return result;
}

uint64_t static Clock.shared.getter()
{
  if (qword_27DA019F0 != -1)
  {
    swift_once();
  }

  return sub_22D81A198();
}

uint64_t sub_22D79FB3C()
{
  v0 = sub_22D81A8C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v6 = sub_22D81B2B8();
  [v5 setDateFormat_];

  sub_22D81A8B8();
  v7 = sub_22D81A818();
  (*(v1 + 8))(v4, v0);
  v8 = [v5 stringFromDate_];

  v9 = sub_22D81B2C8();
  return v9;
}

BOOL sub_22D79FCA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13[-v3];
  v5 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_overrideClock);
  v6 = type metadata accessor for OverrideTime(0);
  v7 = *(v6 - 8);
  (*(v7 + 56))(v4, 1, 1, v6);
  v8 = *(v5 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v8 + 4);
  swift_endAccess();
  sub_22D764440(v4, &qword_27DA029E8, &qword_22D821D60);
  v9 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
  swift_beginAccess();
  sub_22D7640C4(v5 + v9, v4, &qword_27DA029E8, &qword_22D821D60);
  v10 = *(v5 + 40);
  swift_beginAccess();
  os_unfair_lock_unlock(v10 + 4);
  swift_endAccess();
  v11 = (*(v7 + 48))(v4, 1, v6) != 1;
  sub_22D764440(v4, &qword_27DA029E8, &qword_22D821D60);
  return v11;
}

uint64_t sub_22D79FE60(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_22D7640C4(a1, &v10 - v6, &qword_27DA029E8, &qword_22D821D60);
  v8 = *a2;
  return sub_22D7A0030(v7);
}

uint64_t sub_22D79FF0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_overrideClock);
  v4 = type metadata accessor for OverrideTime(0);
  (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  v5 = *(v3 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v5 + 4);
  swift_endAccess();
  sub_22D764440(a1, &qword_27DA029E8, &qword_22D821D60);
  v6 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
  swift_beginAccess();
  sub_22D7640C4(v3 + v6, a1, &qword_27DA029E8, &qword_22D821D60);
  v7 = *(v3 + 40);
  swift_beginAccess();
  os_unfair_lock_unlock(v7 + 4);
  return swift_endAccess();
}

uint64_t sub_22D7A0030(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14[-v5];
  v7 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_overrideClock);
  v8 = type metadata accessor for OverrideTime(0);
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = *(v7 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v9 + 4);
  swift_endAccess();
  sub_22D764440(v6, &qword_27DA029E8, &qword_22D821D60);
  v10 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
  swift_beginAccess();
  sub_22D7640C4(v7 + v10, v6, &qword_27DA029E8, &qword_22D821D60);
  v11 = *(v7 + 40);
  swift_beginAccess();
  os_unfair_lock_unlock(v11 + 4);
  swift_endAccess();
  v12 = OBJC_IVAR____TtC18MobileTimerSupport5Clock_lastOverrideTime;
  swift_beginAccess();
  sub_22D79DCA4(v6, v1 + v12, &qword_27DA029E8, &qword_22D821D60);
  swift_endAccess();
  sub_22D7640C4(a1, v6, &qword_27DA029E8, &qword_22D821D60);
  sub_22D7A3C88(v6);
  return sub_22D764440(a1, &qword_27DA029E8, &qword_22D821D60);
}

void (*sub_22D7A0208(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_overrideClock);
  v10 = type metadata accessor for OverrideTime(0);
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = *(v9 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v11 + 4);
  swift_endAccess();
  sub_22D764440(v8, &qword_27DA029E8, &qword_22D821D60);
  v12 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
  swift_beginAccess();
  sub_22D7640C4(v9 + v12, v8, &qword_27DA029E8, &qword_22D821D60);
  v13 = *(v9 + 40);
  swift_beginAccess();
  os_unfair_lock_unlock(v13 + 4);
  swift_endAccess();
  return sub_22D7A03D8;
}

uint64_t sub_22D7A03F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_22D81B4D8();
  *(v4 + 24) = sub_22D81B4C8();
  v6 = sub_22D81B498();

  return MEMORY[0x2822009F8](sub_22D7A0488, v6, v5);
}

uint64_t sub_22D7A0488()
{
  v2 = v0[2];
  v1 = v0[3];

  *(*(v2 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_atomicClock) + 24) = &off_2840D7400;
  swift_unknownObjectWeakAssign();
  *(*(v2 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_textClock) + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock_delegate + 8) = &off_2840D7410;
  swift_unknownObjectWeakAssign();
  v3 = v0[1];

  return v3();
}

uint64_t sub_22D7A0538@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *&v2[OBJC_IVAR____TtC18MobileTimerSupport5Clock_dateStreamObservers];
  v5 = *a1;
  sub_22D81A198();

  return sub_22D7A98B8(v5, v4, v2, v5, a2);
}

uint64_t sub_22D7A059C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  sub_22D81B4D8();
  *(v5 + 24) = sub_22D81B4C8();
  v7 = sub_22D81B498();

  return MEMORY[0x2822009F8](sub_22D7A0638, v7, v6);
}

uint64_t sub_22D7A0638()
{
  v8 = v0;
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  v4 = *(v3 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_atomicClock);
  v7 = v1;
  sub_22D7A1310(&v7);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t Clock.deinit()
{
  sub_22D764440(v0 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_lastOverrideTime, &qword_27DA029E8, &qword_22D821D60);
  v1 = OBJC_IVAR____TtC18MobileTimerSupport5Clock_dateInited;
  v2 = sub_22D81A8C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_atomicClock);

  v4 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_overrideClock);

  v5 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_dateStreamObservers);

  v6 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_textClockStreamObservers);

  v7 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupport5Clock__lastOverridePublishTimeByInterval);

  v8 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_overrideDateStream);

  return v0;
}

uint64_t Clock.__deallocating_deinit()
{
  Clock.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22D7A0804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 16) = a4;
  v6 = sub_22D81A8C8();
  *(v5 + 24) = v6;
  v7 = *(v6 - 8);
  *(v5 + 32) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  sub_22D81B4D8();
  *(v5 + 48) = sub_22D81B4C8();
  v10 = sub_22D81B498();

  return MEMORY[0x2822009F8](sub_22D7A08FC, v10, v9);
}

uint64_t sub_22D7A08FC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  v3 = *(v2 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_dateStreamObservers);
  if (qword_27DA019F0 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = *(v0 + 56);
  sub_22D81A8B8();
  sub_22D7A70AC(v4, v7);
  (*(v5 + 8))(v4, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22D7A0A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22D7A0A24, 0, 0);
}

uint64_t sub_22D7A0A24()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport5Clock_textClockStreamObservers);
  sub_22D7A7258(*(v0 + 24), *(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22D7A0AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18[-v8];
  v10 = *(a1 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_dateStreamObservers);
  v19 = a2;
  v20 = a1;
  v21 = a3;
  sub_22D7A6F34(sub_22D7A8C28);
  v11 = *(a1 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_overrideDateStream);
  v12 = *(*v11 + 104);
  v13 = *(v11 + v12);
  swift_beginAccess();
  os_unfair_lock_lock(v13 + 4);
  swift_endAccess();
  sub_22D79AF88(a2);
  v14 = *(v11 + v12);
  swift_beginAccess();
  os_unfair_lock_unlock(v14 + 4);
  swift_endAccess();
  v15 = *(a1 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_textClock);
  sub_22D7640C4(a2, v9, &qword_27DA02000, &qword_22D81F160);
  v16 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock_overrideDate;
  swift_beginAccess();
  sub_22D7A8C34(v9, v15 + v16, &qword_27DA02000, &qword_22D81F160);
  swift_endAccess();
  sub_22D7A1F70();
  return sub_22D764440(v9, &qword_27DA02000, &qword_22D81F160);
}

uint64_t sub_22D7A0C60(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v56 = a5;
  v57 = a4;
  v58 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v55 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v53 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  v16 = sub_22D81A8C8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v59 = *a1;
  sub_22D7640C4(a3, v15, &qword_27DA02000, &qword_22D81F160);
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) == 1)
  {
    sub_22D764440(v15, &qword_27DA02000, &qword_22D81F160);
    if (qword_27DA019F0 != -1)
    {
      swift_once();
    }

    sub_22D81A8B8();
    v25 = *(v58 + *(*v58 + 104));
    swift_beginAccess();
    os_unfair_lock_lock(v25 + 4);
    swift_endAccess();
    sub_22D799EA0(v21);
    swift_beginAccess();
    os_unfair_lock_unlock(v25 + 4);
    swift_endAccess();
    return (*(v17 + 8))(v21, v16);
  }

  v26 = *(v17 + 32);
  v54 = v23;
  v26(v23, v15, v16);
  v53 = OBJC_IVAR____TtC18MobileTimerSupport5Clock__lastOverridePublishTimeByInterval;
  v27 = *(v57 + OBJC_IVAR____TtC18MobileTimerSupport5Clock__lastOverridePublishTimeByInterval);
  v28 = *(v27 + 16);
  swift_beginAccess();
  sub_22D81A198();
  os_unfair_lock_lock(v28 + 4);
  swift_endAccess();
  swift_beginAccess();
  v30 = *(v27 + 16);
  v29 = *(v27 + 24);
  swift_beginAccess();
  sub_22D81A398();
  os_unfair_lock_unlock(v30 + 4);
  swift_endAccess();

  if (*(v29 + 16) && (v31 = sub_22D807A48(v59), (v32 & 1) != 0))
  {
    (*(v17 + 16))(v13, *(v29 + 56) + *(v17 + 72) * v31, v16);
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = *(v17 + 56);
  v34(v13, v33, 1, v16);
  if (v24(v13, 1, v16))
  {
    sub_22D764440(v13, &qword_27DA02000, &qword_22D81F160);
    v35 = 0.0;
  }

  else
  {
    (*(v17 + 16))(v21, v13, v16);
    sub_22D764440(v13, &qword_27DA02000, &qword_22D81F160);
    sub_22D81A858();
    v35 = v36;
    (*(v17 + 8))(v21, v16);
  }

  v21 = v54;
  sub_22D81A858();
  v38 = vabdd_f64(v37, v35);
  v39 = v24(v56, 1, v16);
  v40 = v59;
  if (v59)
  {
    if (v59 == 1)
    {
      if (v38 > 1.0)
      {
        goto LABEL_25;
      }
    }

    else if (v38 > 60.0)
    {
      goto LABEL_25;
    }

    if (v39 != 1)
    {
      return (*(v17 + 8))(v21, v16);
    }
  }

  else if (v38 <= 0.01666 && v39 != 1)
  {
    return (*(v17 + 8))(v21, v16);
  }

LABEL_25:
  v43 = *(v58 + *(*v58 + 104));
  swift_beginAccess();
  os_unfair_lock_lock(v43 + 4);
  swift_endAccess();
  sub_22D799EA0(v21);
  swift_beginAccess();
  os_unfair_lock_unlock(v43 + 4);
  swift_endAccess();
  v44 = v55;
  (*(v17 + 16))(v55, v21, v16);
  v34(v44, 0, 1, v16);
  v45 = *(v57 + v53);
  v46 = *(v45 + 16);
  swift_beginAccess();
  sub_22D81A198();
  os_unfair_lock_lock(v46 + 4);
  swift_endAccess();
  swift_beginAccess();
  v48 = *(v45 + 16);
  v47 = *(v45 + 24);
  swift_beginAccess();
  sub_22D81A398();
  os_unfair_lock_unlock(v48 + 4);
  swift_endAccess();
  v60 = v47;
  sub_22D8042B4(v44, v40);
  v49 = v60;
  v50 = *(v45 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v50 + 4);
  swift_endAccess();
  v51 = *(v45 + 24);
  *(v45 + 24) = v49;

  v52 = *(v45 + 16);
  swift_beginAccess();
  os_unfair_lock_unlock(v52 + 4);
  swift_endAccess();
  (*(v17 + 8))(v21, v16);
}

void sub_22D7A1310(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = [objc_opt_self() sharedInstance];
  swift_beginAccess();
  if (!*(*(v2 + 32) + 16) || (sub_22D807A48(v3), (v8 & 1) == 0))
  {
    if (v3)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = sub_22D7A8B3C;
      *(v9 + 24) = v5;
      if (v3 == 1)
      {
        v23 = sub_22D7A9678;
        v24 = v9;
        aBlock = MEMORY[0x277D85DD0];
        v20 = 1107296256;
        v21 = sub_22D7A1B80;
        v22 = &block_descriptor_158;
        v10 = _Block_copy(&aBlock);
        sub_22D81A198();

        v23 = sub_22D7A8B48;
        v24 = v6;
        aBlock = MEMORY[0x277D85DD0];
        v20 = 1107296256;
        v21 = sub_22D7A1C74;
        v22 = &block_descriptor_161;
        v11 = _Block_copy(&aBlock);
        sub_22D81A198();

        v12 = [v7 startSecondUpdatesWithHandler:v10 identificationLog:v11];
      }

      else
      {
        v23 = sub_22D7A8B50;
        v24 = v9;
        aBlock = MEMORY[0x277D85DD0];
        v20 = 1107296256;
        v21 = sub_22D7A1B80;
        v22 = &block_descriptor_148;
        v10 = _Block_copy(&aBlock);
        sub_22D81A198();

        v23 = sub_22D7A8B48;
        v24 = v6;
        aBlock = MEMORY[0x277D85DD0];
        v20 = 1107296256;
        v21 = sub_22D7A1C74;
        v22 = &block_descriptor_151;
        v11 = _Block_copy(&aBlock);
        sub_22D81A198();

        v12 = [v7 startMinuteUpdatesWithHandler:v10 identificationLog:v11];
      }
    }

    else
    {
      v13 = swift_allocObject();
      *(v13 + 16) = sub_22D7A8B3C;
      *(v13 + 24) = v5;
      v23 = sub_22D7A9678;
      v24 = v13;
      aBlock = MEMORY[0x277D85DD0];
      v20 = 1107296256;
      v21 = sub_22D7A1B80;
      v22 = &block_descriptor_168;
      v10 = _Block_copy(&aBlock);
      sub_22D81A198();

      v23 = sub_22D7A8B48;
      v24 = v6;
      aBlock = MEMORY[0x277D85DD0];
      v20 = 1107296256;
      v21 = sub_22D7A1C74;
      v22 = &block_descriptor_171;
      v11 = _Block_copy(&aBlock);
      sub_22D81A198();

      v12 = [v7 start60fpsUpdatesWithHandler:v10 identificationLog:v11];
    }

    v14 = v12;
    _Block_release(v11);
    _Block_release(v10);
    swift_beginAccess();
    v15 = v14;
    v16 = *(v2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v2 + 32);
    *(v2 + 32) = 0x8000000000000000;
    sub_22D80C354(v15, v3, isUniquelyReferenced_nonNull_native);
    *(v2 + 32) = v18;
    swift_endAccess();

    v7 = v15;
  }
}

uint64_t sub_22D7A1800(uint64_t a1, uint64_t a2, char a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      if (!sub_22D79FCA4())
      {
        v11 = sub_22D81B4F8();
        (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
        sub_22D81B4D8();
        swift_unknownObjectRetain();
        v12 = sub_22D81B4C8();
        v13 = swift_allocObject();
        v14 = MEMORY[0x277D85700];
        *(v13 + 16) = v12;
        *(v13 + 24) = v14;
        *(v13 + 32) = v10;
        *(v13 + 40) = a3;
        sub_22D79DF68(0, 0, v7, &unk_22D8224E0, v13);
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

unint64_t sub_22D7A1994(char a1)
{
  sub_22D81B838();

  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x646E6F636573;
    }

    else
    {
      v2 = 0x6574756E696DLL;
    }

    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE700000000000000;
    v2 = 0x74736574736166;
  }

  MEMORY[0x2318D1A50](v2, v3);

  return 0xD000000000000013;
}

uint64_t sub_22D7A1A58(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_22D81A8C8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  a2(v7);
  return sub_22D764440(v7, &qword_27DA02000, &qword_22D81F160);
}

uint64_t sub_22D7A1B80(uint64_t a1)
{
  v2 = sub_22D81A8C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_22D81A878();
  sub_22D81A198();
  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

id sub_22D7A1C74(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = sub_22D81A198();
  v1(v3);

  v4 = sub_22D81B2B8();

  return v4;
}

uint64_t sub_22D7A1CE8()
{
  sub_22D749D28(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_22D7A1D28()
{
  sub_22D81BBC8();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x2318D2310](*&v1);
  v2 = *(type metadata accessor for TextClockDescriptor(0) + 20);
  sub_22D81AAB8();
  sub_22D79F858(&unk_27DA02BB0, MEMORY[0x277CC9A70]);
  sub_22D81B1D8();
  return sub_22D81BC18();
}

uint64_t sub_22D7A1DEC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x2318D2310](*&v4);
  v5 = *(a2 + 20);
  sub_22D81AAB8();
  sub_22D79F858(&unk_27DA02BB0, MEMORY[0x277CC9A70]);
  return sub_22D81B1D8();
}

uint64_t sub_22D7A1E90(uint64_t a1, uint64_t a2)
{
  sub_22D81BBC8();
  v4 = *v2;
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x2318D2310](*&v4);
  v5 = *(a2 + 20);
  sub_22D81AAB8();
  sub_22D79F858(&unk_27DA02BB0, MEMORY[0x277CC9A70]);
  sub_22D81B1D8();
  return sub_22D81BC18();
}

uint64_t sub_22D7A1F48(double *a1, double *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    v3 = *(a3 + 20);
    JUMPOUT(0x2318D11A0);
  }

  return 0;
}

uint64_t sub_22D7A1F70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v49 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BD8, &qword_22D822488);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BE0, &qword_22D822490);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v45 - v14;
  v16 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock__timeFormatterByOffset);
  v17 = *(v16 + 16);
  swift_beginAccess();
  sub_22D81A198();
  os_unfair_lock_lock(v17 + 4);
  swift_endAccess();
  swift_beginAccess();
  v19 = *(v16 + 16);
  v18 = *(v16 + 24);
  swift_beginAccess();
  sub_22D81A398();
  os_unfair_lock_unlock(v19 + 4);
  swift_endAccess();

  v20 = -1 << *(v18 + 32);
  v21 = ~v20;
  v22 = *(v18 + 64);
  v23 = -v20;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v51 = v18;
  v52 = v18 + 64;
  v53 = v21;
  v54 = 0;
  v55 = v24 & v22;
  v56 = 0;
  v25 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock_overrideDate;
  v45 = v18;
  sub_22D81A398();
  v47 = v25;
  v48 = v0;
  swift_beginAccess();
  sub_22D7A7510(v15);
  v28 = *(v5 + 48);
  v27 = v5 + 48;
  v26 = v28;
  if (v28(v15, 1, v4) != 1)
  {
    v46 = v4;
    do
    {
      sub_22D79DD0C(v15, v11, &qword_27DA02BD8, &qword_22D822488);
      sub_22D7640C4(v11, v9, &qword_27DA02BD8, &qword_22D822488);
      v30 = &v9[*(v4 + 48)];
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02BF0, &qword_22D8224B0) + 48);
      v50 = v30;
      v32 = *(v30 + v31);
      v33 = v49;
      sub_22D7640C4(v48 + v47, v49, &qword_27DA02000, &qword_22D81F160);
      v34 = sub_22D81A8C8();
      v35 = *(v34 - 8);
      v36 = (*(v35 + 48))(v33, 1, v34);
      v37 = 0;
      if (v36 != 1)
      {
        v38 = v26;
        v39 = v15;
        v40 = v11;
        v41 = v9;
        v42 = v27;
        v43 = v49;
        v37 = sub_22D81A818();
        v44 = v43;
        v27 = v42;
        v9 = v41;
        v11 = v40;
        v15 = v39;
        v26 = v38;
        (*(v35 + 8))(v44, v34);
      }

      [v32 setOverrideDate_];

      sub_22D764440(v11, &qword_27DA02BD8, &qword_22D822488);
      sub_22D7A8AD0(v50, type metadata accessor for TextClockDescriptor);
      sub_22D7A7510(v15);
      v4 = v46;
    }

    while (v26(v15, 1, v46) != 1);
  }

  sub_22D792FD0();
}

id sub_22D7A24F0()
{
  sub_22D7A25E4();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextClock(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22D7A25E4()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock__timeFormatterByOffset;
  v2 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock__timeFormatterByOffset);
  v3 = *(v2 + 16);
  swift_beginAccess();
  sub_22D81A198();
  os_unfair_lock_lock(v3 + 4);
  swift_endAccess();
  swift_beginAccess();
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  swift_beginAccess();
  sub_22D81A398();
  os_unfair_lock_unlock(v5 + 4);
  swift_endAccess();

  v7 = 0;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v4 + 64);
  for (i = (v8 + 63) >> 6; v10; result = [*(*(v4 + 56) + ((v12 << 9) | (8 * v13))) removeObserver_])
  {
    v12 = v7;
LABEL_9:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= i)
    {

      v14 = *(v0 + v1);
      v15 = *(v14 + 16);
      swift_beginAccess();
      sub_22D81A198();
      os_unfair_lock_lock(v15 + 4);
      swift_endAccess();
      v16 = *(v14 + 16);
      swift_beginAccess();
      os_unfair_lock_unlock(v16 + 4);
      swift_endAccess();
      v17 = *(v14 + 16);
      swift_beginAccess();
      os_unfair_lock_lock(v17 + 4);
      swift_endAccess();
      swift_beginAccess();
      v18 = *(v14 + 24);
      *(v14 + 24) = MEMORY[0x277D84F98];

      v19 = *(v14 + 16);
      swift_beginAccess();
      os_unfair_lock_unlock(v19 + 4);
      swift_endAccess();
    }

    v10 = *(v4 + 64 + 8 * v12);
    ++v7;
    if (v10)
    {
      v7 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_22D7A2828@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v56 - v8;
  v10 = sub_22D81A8C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v56 - v16;
  if (qword_27DA019F0 != -1)
  {
    swift_once();
  }

  sub_22D81A8B8();
  v18 = *a1;
  if (*a1 != 0.0)
  {
    v19 = *a1;
    sub_22D81A808();
    (*(v11 + 8))(v17, v10);
    (*(v11 + 32))(v17, v15, v10);
  }

  v20 = *(a2 + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock__timeFormatterByOffset);
  v21 = *(v20 + 16);
  swift_beginAccess();
  sub_22D81A198();
  os_unfair_lock_lock(v21 + 4);
  swift_endAccess();
  swift_beginAccess();
  v23 = *(v20 + 16);
  v22 = *(v20 + 24);
  swift_beginAccess();
  sub_22D81A398();
  os_unfair_lock_unlock(v23 + 4);
  swift_endAccess();

  if (*(v22 + 16) && (v24 = sub_22D807AC0(a1), (v25 & 1) != 0))
  {
    v26 = *(*(v22 + 56) + 8 * v24);

    v27 = v26;
  }

  else
  {

    v28 = [objc_allocWithZone(MEMORY[0x277CBBBA8]) init];
    v29 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock_overrideDate;
    swift_beginAccess();
    sub_22D7640C4(a2 + v29, v9, &qword_27DA02000, &qword_22D81F160);
    LODWORD(v29) = (*(v11 + 48))(v9, 1, v10);
    v27 = v28;
    v30 = 0;
    if (v29 != 1)
    {
      v30 = sub_22D81A818();
      (*(v11 + 8))(v9, v10);
    }

    [v27 setOverrideDate_];

    [v27 setTimeOffset_];
    v31 = a1 + *(type metadata accessor for TextClockDescriptor(0) + 20);
    v32 = sub_22D81AA88();
    [v27 setTimeZone_];
  }

  result = [v27 timeText];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v34 = result;
  v61 = v17;
  v35 = sub_22D81B2C8();
  v62 = v36;
  v63 = v35;

  result = [v27 timeAndDesignatorText];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v37 = result;
  v58 = v11;
  v59 = v10;
  v60 = a1;
  v38 = sub_22D81B2C8();
  v56 = v39;
  v57 = v38;

  v40 = [v27 designatorRangeInTimeAndDesignatorText];
  v42 = v41;
  result = [v27 timeSubstringToSeparatorText];
  if (result)
  {
    v43 = result;
    v44 = sub_22D81B2C8();
    v46 = v45;

    v47 = [v27 separatorRangeInTimeText];
    v49 = v48;

    v50 = *(type metadata accessor for TextClockDescriptor(0) + 20);
    v51 = type metadata accessor for TimeString(0);
    v52 = *(v51 + 36);
    v53 = sub_22D81AAB8();
    (*(*(v53 - 8) + 16))(a3 + v52, v60 + v50, v53);
    v54 = v62;
    *a3 = v63;
    a3[1] = v54;
    v55 = v56;
    a3[2] = v57;
    a3[3] = v55;
    a3[4] = v40;
    a3[5] = v42;
    a3[6] = v44;
    a3[7] = v46;
    a3[8] = v47;
    a3[9] = v49;
    return (*(v58 + 32))(a3 + *(v51 + 40), v61, v59);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_22D7A2D3C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C10, &qword_22D8224C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  v14 = type metadata accessor for TimeString(0);
  v15 = *(v14 - 8);
  (*(v15 + 56))(v12, 1, 1, v14);
  sub_22D759CA0(0, &qword_280CD2D60, 0x277D85C78);
  v16 = sub_22D81B678();
  v17 = swift_allocObject();
  v17[2] = v12;
  v17[3] = a1;
  v17[4] = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_22D7A8B30;
  *(v18 + 24) = v17;
  aBlock[4] = sub_22D7A9650;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D75BA3C;
  aBlock[3] = &block_descriptor_133;
  v19 = _Block_copy(aBlock);
  sub_22D81A198();

  dispatch_sync(v16, v19);

  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_22D7640C4(v12, v10, &qword_27DA02C10, &qword_22D8224C0);
  result = (*(v15 + 48))(v10, 1, v14);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_22D7A8908(v10, a3, type metadata accessor for TimeString);
  sub_22D764440(v12, &qword_27DA02C10, &qword_22D8224C0);
}

uint64_t sub_22D7A3054(void (*a1)(void *__return_ptr), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    a1(aBlock);
    v4 = aBlock[0];
    return v4 & 1;
  }

  v11 = 256;
  sub_22D759CA0(0, &qword_280CD2D60, 0x277D85C78);
  v5 = sub_22D81B678();
  v6 = swift_allocObject();
  v6[2] = &v11;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_22D7A8834;
  *(v7 + 24) = v6;
  aBlock[4] = sub_22D7A8878;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D75BA3C;
  aBlock[3] = &block_descriptor_7;
  v8 = _Block_copy(aBlock);
  sub_22D81A198();

  dispatch_sync(v5, v8);

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else if ((v11 & 0x100) == 0)
  {
    v4 = v11;

    return v4 & 1;
  }

  __break(1u);
  return result;
}

void sub_22D7A3220(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v72 - v5;
  v7 = type metadata accessor for TimeString(0);
  v77 = *(v7 - 8);
  v8 = *(v77 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v78 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v72 - v10;
  v12 = type metadata accessor for TextClockDescriptor(0);
  v13 = *(v12 - 8);
  v87 = v12;
  v88 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v76 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v72 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BD8, &qword_22D822488);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v72 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BE0, &qword_22D822490);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v85 = &v72 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BE8, &qword_22D822498);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v86 = &v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  if (a1)
  {
    v73 = v8;
    v82 = &v72 - v34;
    v83 = v18;
    v84 = v11;
    v74 = v6;
    v81 = v1;
    v35 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock__timeFormatterByOffset);
    v36 = *(v35 + 16);
    swift_beginAccess();
    v89 = a1;
    sub_22D81A198();
    os_unfair_lock_lock(v36 + 4);
    swift_endAccess();
    swift_beginAccess();
    v37 = *(v35 + 16);
    v38 = *(v35 + 24);
    swift_beginAccess();
    sub_22D81A398();
    os_unfair_lock_unlock(v37 + 4);
    swift_endAccess();

    v39 = -1 << *(v38 + 32);
    v40 = *(v38 + 64);
    v41 = ~v39;
    v42 = -v39;
    v90 = v38;
    v91 = v38 + 64;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v92 = v41;
    v93 = 0;
    v94 = v43 & v40;
    v95 = 0;
    v79 = v38;
    sub_22D81A398();
    sub_22D7A7510(v28);
    v80 = v20;
    v44 = *(v20 + 48);
    if (v44(v28, 1, v19) == 1)
    {
LABEL_8:
      sub_22D792FD0();
      v47 = v85;
      (*(v80 + 56))(v85, 1, 1, v19);
    }

    else
    {
      while (1)
      {
        sub_22D79DD0C(v28, v23, &qword_27DA02BD8, &qword_22D822488);
        sub_22D759CA0(0, &qword_280CD1500, 0x277D82BB8);
        v45 = &v23[*(v19 + 48)];
        v46 = *&v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02BF0, &qword_22D8224B0) + 48)];
        if (sub_22D81B6F8())
        {
          break;
        }

        sub_22D764440(v23, &qword_27DA02BD8, &qword_22D822488);
        sub_22D7A7510(v28);
        if (v44(v28, 1, v19) == 1)
        {
          goto LABEL_8;
        }
      }

      sub_22D792FD0();
      v47 = v85;
      sub_22D79DD0C(v23, v85, &qword_27DA02BD8, &qword_22D822488);
      (*(v80 + 56))(v47, 0, 1, v19);
    }

    v50 = v44(v47, 1, v19);
    v51 = v83;
    v52 = v88;
    if (v50 == 1)
    {
      sub_22D764440(v47, &qword_27DA02BE0, &qword_22D822490);
      v53 = 1;
      v54 = v84;
      v55 = v82;
    }

    else
    {
      v56 = v47 + *(v19 + 48);

      v55 = v82;
      sub_22D7A8908(v56, v82, type metadata accessor for TextClockDescriptor);
      v53 = 0;
      v54 = v84;
    }

    v57 = v81;
    v58 = v87;
    (*(v52 + 56))(v55, v53, 1, v87);
    v59 = v86;
    sub_22D7640C4(v55, v86, &qword_27DA02BE8, &qword_22D822498);
    if ((*(v52 + 48))(v59, 1, v58) == 1)
    {
      sub_22D764440(v59, &qword_27DA02BE8, &qword_22D822498);
      v60 = objc_opt_self();
      v61 = sub_22D81B2B8();
      [v60 logError_];

      sub_22D764440(v55, &qword_27DA02BE8, &qword_22D822498);
    }

    else
    {
      v62 = sub_22D7A8908(v59, v51, type metadata accessor for TextClockDescriptor);
      MEMORY[0x28223BE20](v62);
      *(&v72 - 2) = v51;
      *(&v72 - 1) = v57;
      sub_22D7A2D3C(sub_22D7A8898, (&v72 - 4), v54);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v64 = Strong;
        v65 = sub_22D81B4F8();
        v66 = v74;
        (*(*(v65 - 8) + 56))(v74, 1, 1, v65);
        v67 = v78;
        sub_22D7A88A0(v54, v78, type metadata accessor for TimeString);
        v68 = v76;
        sub_22D7A88A0(v51, v76, type metadata accessor for TextClockDescriptor);
        v69 = (*(v77 + 80) + 40) & ~*(v77 + 80);
        v70 = (v73 + *(v52 + 80) + v69) & ~*(v52 + 80);
        v71 = swift_allocObject();
        v71[2] = 0;
        v71[3] = 0;
        v71[4] = v64;
        sub_22D7A8908(v67, v71 + v69, type metadata accessor for TimeString);
        sub_22D7A8908(v68, v71 + v70, type metadata accessor for TextClockDescriptor);
        swift_unknownObjectRetain();
        sub_22D79DF68(0, 0, v66, &unk_22D8224A8, v71);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_22D7A8AD0(v54, type metadata accessor for TimeString);
      sub_22D764440(v55, &qword_27DA02BE8, &qword_22D822498);
      sub_22D7A8AD0(v51, type metadata accessor for TextClockDescriptor);
    }
  }

  else
  {
    v48 = objc_opt_self();
    v89 = sub_22D81B2B8();
    [v48 logError_];
    v49 = v89;
  }
}

uint64_t sub_22D7A3C88(uint64_t a1)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v41 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v40 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  v19 = type metadata accessor for OverrideTime(0);
  v20 = *(v19 - 8);
  (*(v20 + 56))(v18, 1, 1, v19);
  v21 = *(v1 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v21 + 4);
  swift_endAccess();
  v22 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
  swift_beginAccess();
  sub_22D764440(v18, &qword_27DA029E8, &qword_22D821D60);
  sub_22D7640C4(v1 + v22, v18, &qword_27DA029E8, &qword_22D821D60);
  sub_22D7640C4(v44, v16, &qword_27DA029E8, &qword_22D821D60);
  sub_22D7640C4(v1 + v22, v13, &qword_27DA029E8, &qword_22D821D60);
  swift_endAccess();
  swift_beginAccess();
  sub_22D7A8C34(v16, v1 + v22, &qword_27DA029E8, &qword_22D821D60);
  swift_endAccess();
  sub_22D7A4468(v13);
  sub_22D764440(v13, &qword_27DA029E8, &qword_22D821D60);
  sub_22D764440(v16, &qword_27DA029E8, &qword_22D821D60);
  swift_beginAccess();
  os_unfair_lock_unlock(v21 + 4);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v25 = *(v20 + 48);
    v26 = 1;
    v27 = v25(v18, 1, v19);
    v28 = sub_22D81A8C8();
    v29 = *(v28 - 8);
    if (!v27)
    {
      (*(*(v28 - 8) + 16))(v43, v18, v28);
      v26 = 0;
    }

    v30 = *(v29 + 56);
    v30(v43, v26, 1, v28);
    v31 = v41;
    sub_22D7640C4(v44, v41, &qword_27DA029E8, &qword_22D821D60);
    if (v25(v31, 1, v19) == 1)
    {
      sub_22D764440(v31, &qword_27DA029E8, &qword_22D821D60);
      v32 = 1;
      v33 = v42;
    }

    else
    {
      v33 = v42;
      (*(v29 + 16))(v42, v31, v28);
      sub_22D7A8AD0(v31, type metadata accessor for OverrideTime);
      v32 = 0;
    }

    v30(v33, v32, 1, v28);
    v37 = MEMORY[0x2318D2420]("Clock:shared");
    if (v37)
    {
      MEMORY[0x28223BE20](v37);
      *(&v40 - 4) = v24;
      *(&v40 - 3) = v33;
      v38 = v43;
      *(&v40 - 2) = v43;
      sub_22D7D1E60(sub_22D7A8C1C, (&v40 - 6));
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v38 = v43;
    }

    sub_22D764440(v44, &qword_27DA029E8, &qword_22D821D60);
    sub_22D764440(v33, &qword_27DA02000, &qword_22D81F160);
    v36 = v38;
    v34 = &qword_27DA02000;
    v35 = &qword_22D81F160;
  }

  else
  {
    v34 = &qword_27DA029E8;
    v35 = &qword_22D821D60;
    v36 = v44;
  }

  sub_22D764440(v36, v34, v35);
  return sub_22D764440(v18, &qword_27DA029E8, &qword_22D821D60);
}

void (*sub_22D7A41CC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for OverrideTime(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = *(v1 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v10 + 4);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
  swift_beginAccess();
  sub_22D764440(v8, &qword_27DA029E8, &qword_22D821D60);
  sub_22D7640C4(v1 + v11, v8, &qword_27DA029E8, &qword_22D821D60);
  swift_endAccess();
  swift_beginAccess();
  os_unfair_lock_unlock(v10 + 4);
  swift_endAccess();
  return sub_22D7A4394;
}

void sub_22D7A43AC(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_22D7640C4(*(*a1 + 88), v5, &qword_27DA029E8, &qword_22D821D60);
    a3(v5);
    sub_22D764440(v6, &qword_27DA029E8, &qword_22D821D60);
  }

  else
  {
    a3(*(*a1 + 88));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_22D7A4468(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - v8;
  v26 = v1;
  v10 = v1 + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
  swift_beginAccess();
  v11 = type metadata accessor for OverrideTime(0);
  v12 = *(*(v11 - 8) + 48);
  v13 = v12(v10, 1, v11);
  v14 = 0;
  v15 = 0;
  if (!v13)
  {
    v16 = (v10 + *(v11 + 20));
    v18 = *v16;
    v17 = v16[1];
    v14 = v16[2];
    v15 = v16[3];
  }

  v25[0] = v15;
  v25[1] = v14;
  sub_22D7640C4(a1, v9, &qword_27DA029E8, &qword_22D821D60);
  if (v12(v9, 1, v11) == 1)
  {
    result = sub_22D764440(v9, &qword_27DA029E8, &qword_22D821D60);
    if (v13)
    {
      return result;
    }

    goto LABEL_9;
  }

  v20 = &v9[*(v11 + 20)];
  v21 = *v20;
  v22 = *(v20 + 1);
  v23 = *(v20 + 2);
  v24 = *(v20 + 3);
  sub_22D7A8AD0(v9, type metadata accessor for OverrideTime);
  if (v13 || (sub_22D81BC98() & 1) == 0 || (result = sub_22D81BC98(), (result & 1) == 0))
  {
LABEL_9:
    sub_22D7640C4(v10, v7, &qword_27DA029E8, &qword_22D821D60);
    sub_22D7A5B94(v7);
    return sub_22D764440(v7, &qword_27DA029E8, &qword_22D821D60);
  }

  return result;
}

char *sub_22D7A46A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  *(v1 + 3) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for MTSUnfairLock();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v1 + 5) = v7;
  v8 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
  v9 = type metadata accessor for OverrideTime(0);
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  *&v1[OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_advanceTimeTask] = 0;
  v10 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_initializationTime;
  sub_22D81A888();
  v11 = sub_22D81A8C8();
  (*(*(v11 - 8) + 56))(&v1[v10], 0, 1, v11);
  *(v1 + 4) = a1;
  if (a1)
  {
    v12 = sub_22D81B4F8();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a1;
    v14[5] = v13;
    swift_retain_n();
    sub_22D75D890(0, 0, v6, &unk_22D822538, v14);
  }

  return v1;
}

uint64_t sub_22D7A48D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v8 = sub_22D81A8C8();
  v5[23] = v8;
  v9 = *(v8 - 8);
  v5[24] = v9;
  v10 = *(v9 + 64) + 15;
  v5[25] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v5[26] = v11;
  v12 = *(v11 - 8);
  v5[27] = v12;
  v5[28] = *(v12 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C60, &qword_22D822540) - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C68, &qword_22D822548);
  v5[34] = v14;
  v15 = *(v14 - 8);
  v5[35] = v15;
  v16 = *(v15 + 64) + 15;
  v5[36] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DA02C70, &qword_22D822550);
  v5[37] = v17;
  v18 = *(v17 - 8);
  v5[38] = v18;
  v19 = *(v18 + 64) + 15;
  v5[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7A4BA8, 0, 0);
}

uint64_t sub_22D7A4BA8()
{
  v1 = v0[39];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[34];
  v5 = v0[18];
  v6 = v0[19];
  sub_22D7B0FD0(v2);
  sub_22D81B558();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[40] = v8;
  *v8 = v0;
  v8[1] = sub_22D7A4CB4;
  v9 = v0[39];
  v10 = v0[37];
  v11 = v0[33];

  return MEMORY[0x2822003E8](v11, 0, 0, v10);
}

uint64_t sub_22D7A4CB4()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22D7A4DB0, 0, 0);
}

uint64_t sub_22D7A4DB0()
{
  v1 = v0[33];
  if ((*(v0[27] + 48))(v1, 1, v0[26]) != 1)
  {
    v2 = v0[19];
    sub_22D79DD0C(v1, v0[32], &qword_27DA02000, &qword_22D81F160);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = v0[31];
      v5 = v0[23];
      v6 = v0[24];
      v7 = Strong;
      v61 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_initializationTime;
      sub_22D7640C4(Strong + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_initializationTime, v4, &qword_27DA02000, &qword_22D81F160);
      v8 = *(v6 + 48);
      v9 = v8(v4, 1, v5);
      if (v9 == 1)
      {
        __break(1u);
        return MEMORY[0x2822003E8](v9, v10, v11, v12);
      }

      v14 = v0[30];
      v13 = v0[31];
      v16 = v0[24];
      v15 = v0[25];
      v17 = v0[23];
      v60 = v0[22];
      sub_22D81A888();
      sub_22D81A7F8();
      v19 = v18;
      v20 = *(v16 + 8);
      v20(v15, v17);
      v20(v13, v17);
      sub_22D7640C4(v7 + v61, v14, &qword_27DA02000, &qword_22D81F160);
      v21 = v8(v14, 1, v17);
      sub_22D764440(v14, &qword_27DA02000, &qword_22D81F160);
      v22 = type metadata accessor for OverrideTime(0);
      v23 = *(v22 - 8);
      (*(v23 + 56))(v60, 1, 1, v22);
      v24 = *(v7 + 40);
      swift_beginAccess();
      os_unfair_lock_lock(v24 + 4);
      swift_endAccess();
      v25 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
      swift_beginAccess();
      sub_22D764440(v60, &qword_27DA029E8, &qword_22D821D60);
      sub_22D7640C4(v7 + v25, v60, &qword_27DA029E8, &qword_22D821D60);
      swift_endAccess();
      v62 = v7;
      v26 = *(v7 + 40);
      swift_beginAccess();
      os_unfair_lock_unlock(v26 + 4);
      swift_endAccess();
      v27 = (*(v23 + 48))(v60, 1, v22);
      v28 = v0[22];
      if (v27 == 1)
      {
        sub_22D764440(v28, &qword_27DA029E8, &qword_22D821D60);
      }

      else
      {
        sub_22D764440(v28, &qword_27DA029E8, &qword_22D821D60);
        if (v21 != 1 && v19 <= 1.0)
        {
          sub_22D764440(v0[32], &qword_27DA02000, &qword_22D81F160);

LABEL_22:
          v57 = *(MEMORY[0x277D85798] + 4);
          v58 = swift_task_alloc();
          v0[40] = v58;
          *v58 = v0;
          v58[1] = sub_22D7A4CB4;
          v59 = v0[39];
          v12 = v0[37];
          v9 = v0[33];
          v10 = 0;
          v11 = 0;

          return MEMORY[0x2822003E8](v9, v10, v11, v12);
        }
      }

      v29 = v0[32];
      v30 = v0[28];
      v31 = v0[29];
      v32 = v0[27];
      v33 = v0[20];
      v34 = v0[21];
      v35 = sub_22D81B4F8();
      v36 = *(v35 - 8);
      (*(v36 + 56))(v34, 1, 1, v35);
      sub_22D7640C4(v29, v31, &qword_27DA02000, &qword_22D81F160);
      v37 = (*(v32 + 80) + 40) & ~*(v32 + 80);
      v38 = swift_allocObject();
      v38[2] = 0;
      v38[3] = 0;
      v38[4] = v62;
      sub_22D79DD0C(v31, v38 + v37, &qword_27DA02000, &qword_22D81F160);
      sub_22D7640C4(v34, v33, &unk_27DA01FF0, &qword_22D81FC70);
      LODWORD(v34) = (*(v36 + 48))(v33, 1, v35);
      sub_22D81A198();
      sub_22D81A198();
      v39 = v0[20];
      if (v34 == 1)
      {
        sub_22D764440(v0[20], &unk_27DA01FF0, &qword_22D81FC70);
      }

      else
      {
        sub_22D81B4E8();
        (*(v36 + 8))(v39, v35);
      }

      v51 = v38[2];
      v50 = v38[3];
      swift_unknownObjectRetain();

      if (v51)
      {
        swift_getObjectType();
        v52 = sub_22D81B498();
        v54 = v53;
        swift_unknownObjectRelease();
      }

      else
      {
        v52 = 0;
        v54 = 0;
      }

      sub_22D764440(v0[21], &unk_27DA01FF0, &qword_22D81FC70);
      v55 = swift_allocObject();
      *(v55 + 16) = &unk_22D822560;
      *(v55 + 24) = v38;
      if (v54 | v52)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v52;
        v0[5] = v54;
      }

      v56 = v0[32];
      swift_task_create();

      sub_22D764440(v56, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_22;
    }

    sub_22D764440(v0[32], &qword_27DA02000, &qword_22D81F160);
    v40 = v0[33];
  }

  v41 = v0[36];
  v43 = v0[31];
  v42 = v0[32];
  v45 = v0[29];
  v44 = v0[30];
  v46 = v0[25];
  v47 = v0[21];
  v63 = v0[20];
  (*(v0[38] + 8))(v0[39], v0[37]);

  v48 = v0[1];

  return v48();
}

uint64_t sub_22D7A54B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7A5554, 0, 0);
}

uint64_t sub_22D7A5554()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = sub_22D81A8C8();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = *(v3 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v5 + 4);
  swift_endAccess();
  sub_22D7A56EC(v1, v3, v2);
  swift_beginAccess();
  os_unfair_lock_unlock(v5 + 4);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (MEMORY[0x2318D2420]("Clock:shared"))
    {
      v8 = swift_task_alloc();
      v9 = *(v0 + 9);
      *(v8 + 16) = v7;
      *(v8 + 24) = v9;
      sub_22D7D1E60(sub_22D7A967C, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_22D764440(v0[10], &qword_27DA02000, &qword_22D81F160);

  v10 = v0[1];

  return v10();
}

uint64_t sub_22D7A56EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v46 = &v41 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v43 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - v18;
  v20 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
  swift_beginAccess();
  sub_22D7640C4(a2 + v20, v13, &qword_27DA029E8, &qword_22D821D60);
  v21 = type metadata accessor for OverrideTime(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v45 = v21;
  if (v23(v13, 1))
  {
    sub_22D764440(v13, &qword_27DA029E8, &qword_22D821D60);
    v24 = sub_22D81A8C8();
    (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  }

  else
  {
    v24 = sub_22D81A8C8();
    v25 = *(v24 - 8);
    (*(v25 + 16))(v19, v13, v24);
    sub_22D764440(v13, &qword_27DA029E8, &qword_22D821D60);
    (*(v25 + 56))(v19, 0, 1, v24);
  }

  sub_22D79DCA4(v19, a1, &qword_27DA02000, &qword_22D81F160);
  sub_22D81A8C8();
  v26 = *(v24 - 8);
  v27 = *(v26 + 48);
  v28 = 1;
  if (v27(a3, 1, v24) == 1)
  {
    goto LABEL_7;
  }

  v42 = a2;
  v29 = v43;
  sub_22D7640C4(a3, v43, &qword_27DA02000, &qword_22D81F160);
  result = (v27)(v29, 1, v24);
  if (result != 1)
  {
    v31 = sub_22D81BCA8();
    v33 = v32;
    v34 = sub_22D81BCA8();
    v36 = v35;
    v37 = v46;
    (*(v26 + 32))(v46, v29, v24);
    v28 = 0;
    v38 = &v37[*(v45 + 20)];
    *v38 = v31;
    v38[1] = v33;
    v38[2] = v34;
    v38[3] = v36;
    a2 = v42;
LABEL_7:
    v39 = v46;
    (*(v22 + 56))(v46, v28, 1, v45);
    v40 = v44;
    sub_22D7640C4(a2 + v20, v44, &qword_27DA029E8, &qword_22D821D60);
    swift_beginAccess();
    sub_22D7A8C34(v39, a2 + v20, &qword_27DA029E8, &qword_22D821D60);
    swift_endAccess();
    sub_22D7A4468(v40);
    sub_22D764440(v40, &qword_27DA029E8, &qword_22D821D60);
    return sub_22D764440(v39, &qword_27DA029E8, &qword_22D821D60);
  }

  __break(1u);
  return result;
}

uint64_t sub_22D7A5B94(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  v11 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_advanceTimeTask;
  if (*(v1 + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_advanceTimeTask))
  {
    v12 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_advanceTimeTask);
    sub_22D81A198();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BC0, &unk_22D822460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
    sub_22D81B598();

    v13 = *(v1 + v11);
  }

  *(v1 + v11) = 0;

  sub_22D7640C4(a1, v10, &qword_27DA029E8, &qword_22D821D60);
  v14 = type metadata accessor for OverrideTime(0);
  if ((*(*(v14 - 8) + 48))(v10, 1, v14) == 1)
  {
    return sub_22D764440(v10, &qword_27DA029E8, &qword_22D821D60);
  }

  v16 = &v10[*(v14 + 20)];
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = *(v16 + 2);
  v20 = *(v16 + 3);
  sub_22D7A8AD0(v10, type metadata accessor for OverrideTime);
  sub_22D81BCA8();
  result = sub_22D81BC98();
  if ((result & 1) == 0)
  {
    sub_22D81BCA8();
    result = sub_22D81BC98();
    if ((result & 1) == 0)
    {
      v21 = sub_22D81B4F8();
      (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      v23[2] = 0;
      v23[3] = 0;
      v23[4] = v22;
      v23[5] = v17;
      v23[6] = v18;
      v23[7] = v19;
      v23[8] = v20;
      v24 = sub_22D79E214(0, 0, v6, &unk_22D822478, v23);
      v25 = *(v1 + v11);
      *(v1 + v11) = v24;
    }
  }

  return result;
}

uint64_t sub_22D7A5E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[17] = a1;
  v8[18] = a4;
  v9 = sub_22D81B8F8();
  v8[23] = v9;
  v10 = *(v9 - 8);
  v8[24] = v10;
  v11 = *(v10 + 64) + 15;
  v8[25] = swift_task_alloc();
  v12 = sub_22D81B8E8();
  v8[26] = v12;
  v13 = *(v12 - 8);
  v8[27] = v13;
  v14 = *(v13 + 64) + 15;
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60) - 8) + 64) + 15;
  v8[30] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160) - 8) + 64) + 15;
  v8[31] = swift_task_alloc();
  v17 = sub_22D81A8C8();
  v8[32] = v17;
  v18 = *(v17 - 8);
  v8[33] = v18;
  v19 = *(v18 + 64) + 15;
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7A608C, 0, 0);
}

uint64_t sub_22D7A608C()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  if ((sub_22D81B5A8() & 1) != 0 || (v2 = *(v0 + 144), Strong = swift_weakLoadStrong(), (*(v0 + 288) = Strong) == 0))
  {
    v17 = *(v0 + 272);
    v16 = *(v0 + 280);
    v19 = *(v0 + 240);
    v18 = *(v0 + 248);
    v21 = *(v0 + 224);
    v20 = *(v0 + 232);
    v22 = *(v0 + 200);
    **(v0 + 136) = 0;

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v4 = Strong;
    v5 = *(v0 + 240);
    v6 = type metadata accessor for OverrideTime(0);
    v7 = *(v6 - 8);
    (*(v7 + 56))(v5, 1, 1, v6);
    v8 = *(v4 + 40);
    swift_beginAccess();
    os_unfair_lock_lock(v8 + 4);
    swift_endAccess();
    v9 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
    swift_beginAccess();
    sub_22D764440(v5, &qword_27DA029E8, &qword_22D821D60);
    sub_22D7640C4(v4 + v9, v5, &qword_27DA029E8, &qword_22D821D60);
    swift_endAccess();
    v10 = *(v4 + 40);
    swift_beginAccess();
    os_unfair_lock_unlock(v10 + 4);
    swift_endAccess();
    v11 = (*(v7 + 48))(v5, 1, v6);
    v12 = *(v0 + 280);
    if (v11)
    {
      v13 = *(v0 + 256);
      v14 = *(v0 + 264);
      v15 = *(v0 + 248);
      sub_22D764440(*(v0 + 240), &qword_27DA029E8, &qword_22D821D60);
      (*(v14 + 56))(v15, 1, 1, v13);
      sub_22D81A888();
      if ((*(v14 + 48))(v15, 1, v13) != 1)
      {
        sub_22D764440(*(v0 + 248), &qword_27DA02000, &qword_22D81F160);
      }
    }

    else
    {
      v26 = *(v0 + 264);
      v25 = *(v0 + 272);
      v28 = *(v0 + 248);
      v27 = *(v0 + 256);
      v29 = *(v0 + 240);
      v31 = *(v0 + 152);
      v30 = *(v0 + 160);
      (*(v26 + 16))(v25, v29, v27);
      sub_22D764440(v29, &qword_27DA029E8, &qword_22D821D60);
      sub_22D81BC88();
      sub_22D81BC88();
      sub_22D81A808();
      (*(v26 + 8))(v25, v27);
      (*(v26 + 56))(v28, 0, 1, v27);
      (*(v26 + 32))(v12, v28, v27);
    }

    v32 = *(v0 + 280);
    v33 = *(v0 + 224);
    v34 = *(v0 + 232);
    v35 = *(v0 + 208);
    v36 = *(v0 + 216);
    v47 = *(v0 + 200);
    v38 = *(v0 + 168);
    v37 = *(v0 + 176);
    v39 = swift_task_alloc();
    *(v39 + 16) = v4;
    *(v39 + 24) = v32;
    sub_22D7A3054(sub_22D7A882C, v39);

    sub_22D81B8C8();
    sub_22D81BC88();
    sub_22D81BC88();
    sub_22D81BCB8();
    sub_22D81B8D8();
    v40 = *(v36 + 8);
    *(v0 + 296) = v40;
    *(v0 + 304) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40(v33, v35);
    *(v0 + 120) = 0;
    *(v0 + 112) = 0;
    *(v0 + 128) = 1;
    sub_22D81BB68();
    v41 = *(MEMORY[0x277D857F0] + 4);
    v42 = swift_task_alloc();
    *(v0 + 312) = v42;
    v43 = sub_22D79F858(&unk_27DA02BC8, MEMORY[0x277D85928]);
    *v42 = v0;
    v42[1] = sub_22D7A65D0;
    v44 = *(v0 + 232);
    v45 = *(v0 + 200);
    v46 = *(v0 + 184);

    return MEMORY[0x282200488](v44, v0 + 112, v45, v46, v43);
  }
}

uint64_t sub_22D7A65D0()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v12 = *v1;
  *(*v1 + 320) = v0;

  v5 = v2[37];
  v4 = v2[38];
  if (v0)
  {
    v6 = v2[29];
    v7 = v2[26];
    (*(v2[24] + 8))(v2[25], v2[23]);
    v5(v6, v7);
    v8 = sub_22D7A6C9C;
  }

  else
  {
    v9 = v2[29];
    v10 = v2[26];
    (*(v2[24] + 8))(v2[25], v2[23]);
    v5(v9, v10);
    v8 = sub_22D7A674C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22D7A674C()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);

  (*(v4 + 8))(v2, v3);
  if ((sub_22D81B5A8() & 1) != 0 || (v5 = *(v0 + 144), Strong = swift_weakLoadStrong(), (*(v0 + 288) = Strong) == 0))
  {
    v20 = *(v0 + 272);
    v19 = *(v0 + 280);
    v22 = *(v0 + 240);
    v21 = *(v0 + 248);
    v24 = *(v0 + 224);
    v23 = *(v0 + 232);
    v25 = *(v0 + 200);
    **(v0 + 136) = 0;

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v7 = Strong;
    v8 = *(v0 + 240);
    v9 = type metadata accessor for OverrideTime(0);
    v10 = *(v9 - 8);
    (*(v10 + 56))(v8, 1, 1, v9);
    v11 = *(v7 + 40);
    swift_beginAccess();
    os_unfair_lock_lock(v11 + 4);
    swift_endAccess();
    v12 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
    swift_beginAccess();
    sub_22D764440(v8, &qword_27DA029E8, &qword_22D821D60);
    sub_22D7640C4(v7 + v12, v8, &qword_27DA029E8, &qword_22D821D60);
    swift_endAccess();
    v13 = *(v7 + 40);
    swift_beginAccess();
    os_unfair_lock_unlock(v13 + 4);
    swift_endAccess();
    v14 = (*(v10 + 48))(v8, 1, v9);
    v15 = *(v0 + 280);
    if (v14)
    {
      v16 = *(v0 + 256);
      v17 = *(v0 + 264);
      v18 = *(v0 + 248);
      sub_22D764440(*(v0 + 240), &qword_27DA029E8, &qword_22D821D60);
      (*(v17 + 56))(v18, 1, 1, v16);
      sub_22D81A888();
      if ((*(v17 + 48))(v18, 1, v16) != 1)
      {
        sub_22D764440(*(v0 + 248), &qword_27DA02000, &qword_22D81F160);
      }
    }

    else
    {
      v29 = *(v0 + 264);
      v28 = *(v0 + 272);
      v31 = *(v0 + 248);
      v30 = *(v0 + 256);
      v32 = *(v0 + 240);
      v34 = *(v0 + 152);
      v33 = *(v0 + 160);
      (*(v29 + 16))(v28, v32, v30);
      sub_22D764440(v32, &qword_27DA029E8, &qword_22D821D60);
      sub_22D81BC88();
      sub_22D81BC88();
      sub_22D81A808();
      (*(v29 + 8))(v28, v30);
      (*(v29 + 56))(v31, 0, 1, v30);
      (*(v29 + 32))(v15, v31, v30);
    }

    v35 = *(v0 + 280);
    v36 = *(v0 + 224);
    v37 = *(v0 + 232);
    v38 = *(v0 + 208);
    v39 = *(v0 + 216);
    v50 = *(v0 + 200);
    v41 = *(v0 + 168);
    v40 = *(v0 + 176);
    v42 = swift_task_alloc();
    *(v42 + 16) = v7;
    *(v42 + 24) = v35;
    sub_22D7A3054(sub_22D7A882C, v42);

    sub_22D81B8C8();
    sub_22D81BC88();
    sub_22D81BC88();
    sub_22D81BCB8();
    sub_22D81B8D8();
    v43 = *(v39 + 8);
    *(v0 + 296) = v43;
    *(v0 + 304) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v43(v36, v38);
    *(v0 + 120) = 0;
    *(v0 + 112) = 0;
    *(v0 + 128) = 1;
    sub_22D81BB68();
    v44 = *(MEMORY[0x277D857F0] + 4);
    v45 = swift_task_alloc();
    *(v0 + 312) = v45;
    v46 = sub_22D79F858(&unk_27DA02BC8, MEMORY[0x277D85928]);
    *v45 = v0;
    v45[1] = sub_22D7A65D0;
    v47 = *(v0 + 232);
    v48 = *(v0 + 200);
    v49 = *(v0 + 184);

    return MEMORY[0x282200488](v47, v0 + 112, v48, v49, v46);
  }
}

uint64_t sub_22D7A6C9C()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];
  v10 = v0[25];

  (*(v4 + 8))(v2, v5);

  v11 = v0[1];
  v12 = v0[40];

  return v11();
}

uint64_t sub_22D7A6D84@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  v4 = sub_22D7A41CC(v11);
  v6 = v5;
  v7 = type metadata accessor for OverrideTime(0);
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (!v8)
  {
    v9 = sub_22D81A8C8();
    (*(*(v9 - 8) + 24))(v6, a1, v9);
  }

  result = (v4)(v11, 0);
  *a2 = v8 != 0;
  return result;
}

uint64_t sub_22D7A6E78()
{
  sub_22D749D28((v0 + 2));
  v1 = v0[4];

  v2 = v0[5];

  sub_22D764440(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime, &qword_27DA029E8, &qword_22D821D60);
  v3 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_advanceTimeTask);

  sub_22D764440(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_initializationTime, &qword_27DA02000, &qword_22D81F160);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22D7A6F34(void (*a1)(char *, uint64_t))
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v3 + 4);
  swift_endAccess();
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  result = sub_22D81A398();
  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = *(*(v4 + 48) + v12);
      v14 = *(*(v4 + 56) + 8 * v12);
      sub_22D81A198();
      if (!v14)
      {
        break;
      }

      v7 &= v7 - 1;
      v15[0] = v13;
      a1(v15, v14);

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    swift_beginAccess();
    os_unfair_lock_unlock(v3 + 4);
    return swift_endAccess();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 64 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22D7A70AC(uint64_t a1, char a2)
{
  v5 = *(v2 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v5 + 4);
  swift_endAccess();
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (*(v6 + 16) && (v7 = sub_22D807A48(a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = *(*v9 + 104);
    v11 = *(v9 + v10);
    swift_beginAccess();
    sub_22D81A198();
    os_unfair_lock_lock(v11 + 4);
    swift_endAccess();
    sub_22D799EA0(a1);
    v12 = *(v9 + v10);
    swift_beginAccess();
    os_unfair_lock_unlock(v12 + 4);
    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C28, &qword_22D8224E8);
    sub_22D7548B0(&qword_27DA02C30, &qword_27DA02C28, &qword_22D8224E8);
    swift_allocError();
    swift_willThrow();
  }

  swift_beginAccess();
  os_unfair_lock_unlock(v5 + 4);
  return swift_endAccess();
}

uint64_t sub_22D7A7258(uint64_t a1, double *a2)
{
  v5 = *(v2 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v5 + 4);
  swift_endAccess();
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v7 = *(v2 + 24);
  sub_22D81A398();
  v8 = sub_22D807AC0(a2);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C00, &qword_22D8224B8);
    sub_22D7548B0(&qword_27DA02C08, &qword_27DA02C00, &qword_22D8224B8);
    swift_allocError();
    swift_willThrow();
    goto LABEL_6;
  }

  v10 = *(*(v6 + 56) + 8 * v8);
  sub_22D81A198();

  v11 = *(*v10 + 104);
  v12 = *(v10 + v11);
  swift_beginAccess();
  os_unfair_lock_lock(v12 + 4);
  swift_endAccess();
  sub_22D79A780(a1);
  v13 = *(v10 + v11);
  swift_beginAccess();
  os_unfair_lock_unlock(v13 + 4);
  swift_endAccess();

LABEL_6:
  swift_beginAccess();
  os_unfair_lock_unlock(v5 + 4);
  return swift_endAccess();
}

uint64_t sub_22D7A7420(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C10, &qword_22D8224C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v11 - v7;
  a2(v6);
  v9 = type metadata accessor for TimeString(0);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  return sub_22D79DCA4(v8, a1, &qword_27DA02C10, &qword_22D8224C0);
}

uint64_t sub_22D7A7510@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BD8, &qword_22D822488);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = (&v44 - v5);
  v6 = type metadata accessor for TextClockDescriptor(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C18, &qword_22D8224C8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02BF0, &qword_22D8224B0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  result = MEMORY[0x28223BE20](v14);
  v19 = &v44 - v18;
  v20 = *v1;
  v21 = v1[1];
  v23 = v1[2];
  v22 = v1[3];
  v24 = v1[4];
  v50 = a1;
  v51 = v23;
  v45 = v19;
  if (!v24)
  {
    v26 = (v23 + 64) >> 6;
    if (v26 <= v22 + 1)
    {
      v27 = v22 + 1;
    }

    else
    {
      v27 = (v23 + 64) >> 6;
    }

    v28 = v27 - 1;
    while (1)
    {
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v25 >= v26)
      {
        (*(v15 + 56))(v13, 1, 1, v14);
        v29 = 0;
        goto LABEL_11;
      }

      v24 = *(v21 + 8 * v25);
      ++v22;
      if (v24)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v25 = v22;
LABEL_10:
  v29 = (v24 - 1) & v24;
  v30 = __clz(__rbit64(v24)) | (v25 << 6);
  sub_22D7A88A0(*(v20 + 48) + *(v47 + 72) * v30, v9, type metadata accessor for TextClockDescriptor);
  v31 = *(*(v20 + 56) + 8 * v30);
  v32 = v9;
  v33 = *(v14 + 48);
  sub_22D7A8908(v32, v13, type metadata accessor for TextClockDescriptor);
  *&v13[v33] = v31;
  (*(v15 + 56))(v13, 0, 1, v14);
  v34 = v31;
  v28 = v25;
LABEL_11:
  *v1 = v20;
  v1[1] = v21;
  v1[2] = v51;
  v1[3] = v28;
  v1[4] = v29;
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_22D764440(v13, &qword_27DA02C18, &qword_22D8224C8);
    return (*(v48 + 56))(v50, 1, 1, v49);
  }

  v35 = v13;
  v36 = v45;
  sub_22D79DD0C(v35, v45, &unk_27DA02BF0, &qword_22D8224B0);
  v37 = v49;
  v38 = *(v49 + 48);
  v39 = v1[5];
  v40 = v46;
  *v46 = v39;
  result = sub_22D79DD0C(v36, v40 + v38, &unk_27DA02BF0, &qword_22D8224B0);
  v41 = __OFADD__(v39, 1);
  v42 = v39 + 1;
  v43 = v50;
  if (v41)
  {
    goto LABEL_18;
  }

  v1[5] = v42;
  sub_22D79DD0C(v40, v43, &qword_27DA02BD8, &qword_22D822488);
  return (*(v48 + 56))(v43, 0, 1, v37);
}

uint64_t _s18MobileTimerSupport10TimeStringV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22D81BB08() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_22D81BB08() & 1) == 0 || a1[4] != a2[4] || a1[5] != a2[5] || (a1[6] != a2[6] || a1[7] != a2[7]) && (sub_22D81BB08() & 1) == 0)
  {
    return 0;
  }

  if (a1[8] != a2[8])
  {
    return 0;
  }

  if (a1[9] != a2[9])
  {
    return 0;
  }

  v6 = type metadata accessor for TimeString(0);
  if ((MEMORY[0x2318D11A0](a1 + *(v6 + 36), a2 + *(v6 + 36)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(v6 + 40);

  return sub_22D81A868();
}

uint64_t _s18MobileTimerSupport10TimeStringV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D81A8C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TimeString(0);
  v10 = *(v9 + 36);
  sub_22D81A8B8();
  v20[0] = a1;
  v11 = sub_22D81AA68();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v13 = *(v9 + 36);
  sub_22D81A8B8();
  v20[1] = a2;
  v14 = sub_22D81AA68();
  v12(v8, v4);
  if (v11 == v14)
  {
    v15 = *(v9 + 40);
    v16 = sub_22D81A838();
  }

  else
  {
    sub_22D81A8B8();
    v17 = sub_22D81AA68();
    v12(v8, v4);
    sub_22D81A8B8();
    v18 = sub_22D81AA68();
    v12(v8, v4);
    v16 = v17 < v18;
  }

  return v16 & 1;
}

unint64_t sub_22D7A7C28()
{
  result = qword_27DA02A30;
  if (!qword_27DA02A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02A30);
  }

  return result;
}

uint64_t sub_22D7A7D60()
{
  result = sub_22D81A8C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22D7A7DE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22D7A7E00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_22D7A7E64()
{
  type metadata accessor for _NSRange(319);
  if (v0 <= 0x3F)
  {
    sub_22D81AAB8();
    if (v1 <= 0x3F)
    {
      sub_22D81A8C8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22D7A7F40()
{
  sub_22D7A8274(319, &qword_27DA02A90, type metadata accessor for OverrideTime);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_22D81A8C8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_22D7A81B0()
{
  sub_22D7A8274(319, &qword_280CD2E58, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22D7A8274(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22D81B718();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22D7A82F0()
{
  sub_22D7A8274(319, &qword_27DA02A90, type metadata accessor for OverrideTime);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22D7A8274(319, &qword_280CD2E58, MEMORY[0x277CC9578]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_22D7A845C()
{
  result = sub_22D81AAB8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22D7A84FC()
{
  result = qword_27DA02B78;
  if (!qword_27DA02B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02B78);
  }

  return result;
}

unint64_t sub_22D7A8554()
{
  result = qword_27DA02B80;
  if (!qword_27DA02B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02B80);
  }

  return result;
}

unint64_t sub_22D7A85F4()
{
  result = qword_27DA02B90;
  if (!qword_27DA02B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02B90);
  }

  return result;
}

unint64_t sub_22D7A864C()
{
  result = qword_27DA02B98;
  if (!qword_27DA02B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02B98);
  }

  return result;
}

unint64_t sub_22D7A86A4()
{
  result = qword_27DA02BA0;
  if (!qword_27DA02BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02BA0);
  }

  return result;
}

unint64_t sub_22D7A86FC()
{
  result = qword_27DA02BA8;
  if (!qword_27DA02BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02BA8);
  }

  return result;
}

uint64_t sub_22D7A8750(uint64_t a1)
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
  v11[1] = sub_22D744B0C;

  return sub_22D7A5E84(a1, v4, v5, v6, v7, v8, v9, v10);
}

void *sub_22D7A8834()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  result = v1(&v5);
  *v2 = v5;
  v2[1] = 0;
  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

uint64_t sub_22D7A88A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22D7A8908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22D7A8970(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TimeString(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TextClockDescriptor(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22D744B08;

  return sub_22D7A0A00(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_22D7A8AD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22D7A8B58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22D744B08;

  return sub_22D7A0804(a1, v4, v5, v6, v7);
}

uint64_t sub_22D7A8C34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_22D7A8C9C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - v4;
  v6 = OBJC_IVAR____TtC18MobileTimerSupport5Clock_lastOverrideTime;
  v7 = type metadata accessor for OverrideTime(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  sub_22D81A8B8();
  v8 = OBJC_IVAR____TtC18MobileTimerSupport5Clock_atomicClock;
  type metadata accessor for AtomicClock();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  v10 = MEMORY[0x277D84F98];
  *(v9 + 32) = MEMORY[0x277D84F98];
  *(v0 + v8) = v9;
  v11 = OBJC_IVAR____TtC18MobileTimerSupport5Clock_textClock;
  *(v0 + v11) = [objc_allocWithZone(type metadata accessor for TextClock(0)) init];
  v12 = OBJC_IVAR____TtC18MobileTimerSupport5Clock_dateStreamObservers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C48, &qword_22D822508);
  v13 = swift_allocObject();
  type metadata accessor for MTSUnfairLock();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v13 + 16) = v14;
  *(v13 + 24) = v10;
  *(v0 + v12) = v13;
  v15 = OBJC_IVAR____TtC18MobileTimerSupport5Clock_textClockStreamObservers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C50, &qword_22D822510);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v16 + 16) = v17;
  *(v16 + 24) = v10;
  *(v0 + v15) = v16;
  v18 = OBJC_IVAR____TtC18MobileTimerSupport5Clock__lastOverridePublishTimeByInterval;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C58, &qword_22D822518);
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v19 + 16) = v20;
  *(v19 + 24) = v10;
  *(v0 + v18) = v19;
  v21 = OBJC_IVAR____TtC18MobileTimerSupport5Clock_overrideDateStream;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C38, &qword_22D8224F8);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v26 = *(*v25 + 96);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  (*(*(v27 - 8) + 56))(v25 + v26, 1, 1, v27);
  v28 = *(*v25 + 104);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v25 + v28) = v29;
  *(v25 + *(*v25 + 112)) = v10;
  *(v25 + *(*v25 + 120)) = 0;
  *(v0 + v21) = v25;
  v30 = type metadata accessor for OverrideClock(0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_22D81A198();
  *(v0 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_overrideClock) = sub_22D7A46A8(v33);
  v34 = sub_22D81B4F8();
  (*(*(v34 - 8) + 56))(v5, 1, 1, v34);
  sub_22D81B4D8();
  sub_22D81A198();
  v35 = sub_22D81B4C8();
  v36 = swift_allocObject();
  v37 = MEMORY[0x277D85700];
  v36[2] = v35;
  v36[3] = v37;
  v36[4] = v1;
  sub_22D75D890(0, 0, v5, &unk_22D822528, v36);

  *(*(v1 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_overrideClock) + 24) = &off_2840D7420;
  swift_unknownObjectWeakAssign();
  return v1;
}

void *sub_22D7A90B4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C38, &qword_22D8224F8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  (*(v5 + 56))(v12 + *(*v12 + 96), 1, 1, v4);
  v13 = *(*v12 + 104);
  type metadata accessor for MTSUnfairLock();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v12 + v13) = v14;
  *(v12 + *(*v12 + 112)) = MEMORY[0x277D84F98];
  *(v12 + *(*v12 + 120)) = 0;
  a2[4] = v12;
  v15 = sub_22D81A8C8();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C40, &qword_22D822500);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v19[2] = v20;
  sub_22D79DD0C(v8, v19 + *(*v19 + 96), &qword_27DA02000, &qword_22D81F160);
  a2[5] = v19;
  a2[2] = a1;
  a2[3] = &off_2840D8010;
  v21 = swift_allocObject();
  swift_weakInit();
  swift_retain_n();
  sub_22D81A198();
  sub_22D7B46DC(sub_22D7A9364, v21);

  return a2;
}

uint64_t objectdestroy_108Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_22D7A93B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D7A03F0(a1, v4, v5, v6);
}

uint64_t sub_22D7A946C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22D744B0C;

  return sub_22D7A48D0(a1, v4, v5, v7, v6);
}

uint64_t sub_22D7A952C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D7A54B8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_22D7A9680(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_22D81B718();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22D7A9738()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = sub_22D81B718();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + *(*v0 + 104));

  v5 = *(v0 + *(*v0 + 112));

  return v0;
}

uint64_t sub_22D7A97F4()
{
  sub_22D7A9738();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22D7A98B8@<X0>(char a1@<W0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v68) = a4;
  v66 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02D80, &qword_22D822678);
  v72 = *(v8 - 8);
  v73 = v8;
  v9 = *(v72 + 64);
  MEMORY[0x28223BE20](v8);
  v71 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02D88, &qword_22D822680);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v74 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v70 = &v64 - v16;
  MEMORY[0x28223BE20](v15);
  v69 = &v64 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v64 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v67 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v64 - v26;
  v28 = *(a2 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v28 + 4);
  swift_endAccess();
  swift_beginAccess();
  v29 = *(a2 + 24);
  if (*(v29 + 16) && (v30 = sub_22D807A48(a1), (v31 & 1) != 0))
  {
    v32 = *(*(v29 + 56) + 8 * v30);
    swift_retain_n();
  }

  else
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DA02D90, &qword_22D822688);
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    v32 = swift_allocObject();
    v36 = *(*v32 + 96);
    v37 = sub_22D81A8C8();
    (*(*(v37 - 8) + 56))(v32 + v36, 1, 1, v37);
    v38 = *(*v32 + 104);
    type metadata accessor for MTSUnfairLock();
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    *(v32 + v38) = v39;
    *(v32 + *(*v32 + 112)) = MEMORY[0x277D84F98];
    *(v32 + *(*v32 + 120)) = 0;
    swift_beginAccess();
    swift_retain_n();
    v40 = *(a2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = *(a2 + 24);
    *(a2 + 24) = 0x8000000000000000;
    sub_22D80C208(v32, a1, isUniquelyReferenced_nonNull_native);
    *(a2 + 24) = v76;
    swift_endAccess();
  }

  v42 = *(*v32 + 104);
  v43 = *(v32 + v42);
  swift_beginAccess();
  os_unfair_lock_lock(v43 + 4);
  swift_endAccess();
  v44 = *(*v32 + 120);
  v45 = *(v32 + v44);
  if ((v45 & 1) == 0)
  {
    *(v32 + v44) = 1;
  }

  v46 = *(v32 + v42);
  swift_beginAccess();
  os_unfair_lock_unlock(v46 + 4);
  swift_endAccess();
  v47 = sub_22D81A8C8();
  v48 = *(*(v47 - 8) + 56);
  v75 = v47;
  v48(v27, 1, 1);
  if ((v45 & 1) == 0)
  {
    swift_beginAccess();
    os_unfair_lock_unlock(v28 + 4);
    swift_endAccess();
    v49 = sub_22D81B4F8();
    (*(*(v49 - 8) + 56))(v21, 1, 1, v49);
    sub_22D81B4D8();
    sub_22D81A198();
    v50 = sub_22D81B4C8();
    v51 = swift_allocObject();
    v52 = MEMORY[0x277D85700];
    *(v51 + 16) = v50;
    *(v51 + 24) = v52;
    *(v51 + 32) = a3;
    *(v51 + 40) = v68;
    sub_22D75D890(0, 0, v21, &unk_22D822698, v51);

    v53 = v67;
    sub_22D81A8B8();
    swift_beginAccess();
    os_unfair_lock_lock(v28 + 4);
    swift_endAccess();
    (v48)(v53, 0, 1, v75);
    sub_22D77FD70(v53, v27);
  }

  v65 = v28;
  v67 = a3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02918, &qword_22D822690);
  v55 = *(v54 - 8);
  v68 = *(v55 + 56);
  v56 = v69;
  v68(v69, 1, 1, v54);
  v57 = *(v32 + v42);
  swift_beginAccess();
  os_unfair_lock_lock(v57 + 4);
  v58 = swift_endAccess();
  MEMORY[0x28223BE20](v58);
  *(&v64 - 2) = v32;
  *(&v64 - 1) = v27;
  v64 = v27;
  (*(v72 + 104))(v71, *MEMORY[0x277D85778], v73);
  v59 = v70;
  sub_22D81B588();
  sub_22D764440(v56, &qword_27DA02D88, &qword_22D822680);
  v68(v59, 0, 1, v54);
  sub_22D7AA194(v59, v56);
  v60 = *(v32 + v42);
  swift_beginAccess();
  os_unfair_lock_unlock(v60 + 4);
  swift_endAccess();
  v61 = v74;
  sub_22D7AA204(v56, v74);
  result = (*(v55 + 48))(v61, 1, v54);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_22D764440(v56, &qword_27DA02D88, &qword_22D822680);
    (*(v55 + 32))(v66, v61, v54);
    sub_22D764440(v64, &qword_27DA02000, &qword_22D81F160);
    v63 = v65;
    swift_beginAccess();
    os_unfair_lock_unlock(v63 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_22D7AA10C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_22D7AA134()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_22D7AA194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02D88, &qword_22D822680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D7AA204(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02D88, &qword_22D822680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D7AA274(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22D744B0C;

  return sub_22D7A059C(a1, v4, v5, v6, v7);
}

void LocationDataProvider.currentLocation(for:)(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = sub_22D7AADC0(&v4);
  sub_22D7AB640(a2);
}

uint64_t sub_22D7AA3D8(uint64_t a1)
{
  v2 = v1;
  v3 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F60, &qword_22D822AB8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_22D7AF608(v2, v5, type metadata accessor for LocationAccuracy);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_22D7AF5A8(v5, type metadata accessor for LocationAccuracy);
    return 0x6E776F6E6B6E55;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v12 = sub_22D81A5F8();
    (*(v7 + 8))(v10, v6);
    return v12;
  }
}

uint64_t CurrentLocation.description.getter()
{
  sub_22D81B838();

  v1 = *v0;
  [*v0 coordinate];
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02E30, qword_22D822770);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D839F8];
  *(v4 + 16) = xmmword_22D81DF60;
  v6 = MEMORY[0x277D83A80];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  v7 = sub_22D81B2D8();
  MEMORY[0x2318D1A50](v7);

  MEMORY[0x2318D1A50](44, 0xE100000000000000);
  [v1 coordinate];
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22D81DF60;
  *(v10 + 56) = v5;
  *(v10 + 64) = v6;
  *(v10 + 32) = v9;
  v11 = sub_22D81B2D8();
  MEMORY[0x2318D1A50](v11);

  MEMORY[0x2318D1A50](0x636172756363417CLL, 0xEA00000000003A79);
  v12 = *(type metadata accessor for CurrentLocation(0) + 20);
  type metadata accessor for LocationAccuracy(0);
  sub_22D7AF730(&qword_27DA02E38, type metadata accessor for LocationAccuracy);
  v13 = sub_22D81BAD8();
  MEMORY[0x2318D1A50](v13);

  MEMORY[0x2318D1A50](62, 0xE100000000000000);
  return 60;
}

uint64_t static CurrentLocation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22D759CA0(0, &qword_280CD1500, 0x277D82BB8);
  v4 = *a1;
  v5 = *a2;
  if ((sub_22D81B6F8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for CurrentLocation(0) + 20);

  return sub_22D7AE12C(a1 + v6, a2 + v6);
}

uint64_t sub_22D7AA838(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_22D759CA0(0, &qword_280CD1500, 0x277D82BB8);
  v6 = *a1;
  v7 = *a2;
  if ((sub_22D81B6F8() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 20);

  return sub_22D7AE12C(a1 + v8, a2 + v8);
}

id sub_22D7AA94C()
{
  v0 = type metadata accessor for LocationDataProvider();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = MEMORY[0x277D84F98];
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, sel_init);
  qword_27DA02E20 = result;
  return result;
}

id LocationDataProvider.__allocating_init()()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = MEMORY[0x277D84F98];
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

MobileTimerSupport::LocationDataProvider::Use_optional __swiftcall LocationDataProvider.Use.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22D81B998();

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

uint64_t LocationDataProvider.Use.rawValue.getter()
{
  if (*v0)
  {
    result = 0x4B72656874616577;
  }

  else
  {
    result = 0x6C616E7265746E69;
  }

  *v0;
  return result;
}

uint64_t sub_22D7AAADC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4B72656874616577;
  }

  else
  {
    v4 = 0x6C616E7265746E69;
  }

  if (v3)
  {
    v5 = 0xEA00000000004955;
  }

  else
  {
    v5 = 0xEA00000000007469;
  }

  if (*a2)
  {
    v6 = 0x4B72656874616577;
  }

  else
  {
    v6 = 0x6C616E7265746E69;
  }

  if (*a2)
  {
    v7 = 0xEA00000000007469;
  }

  else
  {
    v7 = 0xEA00000000004955;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22D81BB08();
  }

  return v9 & 1;
}

uint64_t sub_22D7AAB8C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22D81B998();

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

void sub_22D7AABEC(uint64_t *a1@<X8>)
{
  v2 = 0x6C616E7265746E69;
  if (*v1)
  {
    v2 = 0x4B72656874616577;
  }

  v3 = 0xEA00000000004955;
  if (*v1)
  {
    v3 = 0xEA00000000007469;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_22D7AAC34()
{
  v1 = *v0;
  sub_22D81BBC8();
  sub_22D81B328();

  return sub_22D81BC18();
}

uint64_t sub_22D7AACC0()
{
  *v0;
  sub_22D81B328();
}

uint64_t sub_22D7AAD38()
{
  v1 = *v0;
  sub_22D81BBC8();
  sub_22D81B328();

  return sub_22D81BC18();
}

id sub_22D7AADC0(char *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v1 + 112);
  if (*(v4 + 16) && (v5 = sub_22D807998(v3), (v6 & 1) != 0))
  {
    v16 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();

    return v16;
  }

  else
  {
    swift_endAccess();
    v8 = objc_allocWithZone(type metadata accessor for LocationSource(0));
    if (v3)
    {
      v9 = 0x800000022D82AA60;
      v10 = 0xD000000000000011;
      v11 = 0;
    }

    else
    {
      v10 = 0xD000000000000035;
      v9 = 0x800000022D82AA80;
      v11 = 1;
    }

    v12 = sub_22D7AB02C(v10, v9, v11);
    swift_beginAccess();
    v13 = v12;
    v14 = *(v2 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    sub_22D80C0C0(v13, v3, isUniquelyReferenced_nonNull_native);
    *(v2 + 112) = v17;
    swift_endAccess();
    return v13;
  }
}

id LocationDataProvider.init()()
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  v0[14] = MEMORY[0x277D84F98];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t LocationDataProvider.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t LocationDataProvider.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

id sub_22D7AB02C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v48 = a3;
  v53 = sub_22D81B628();
  v7 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = sub_22D81B668();
  v9 = *(v49 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v49);
  v51 = &v47[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_22D81B108();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v50 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02840, &qword_22D821A70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v47[-v17];
  v19 = OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource__isLocationUpdating;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FC8, &qword_22D822BD0);
  v20 = swift_allocObject();
  type metadata accessor for MTSUnfairLock();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v20 + 16) = v21;
  *(v20 + 24) = 0;
  *&v3[v19] = v20;
  v22 = OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource__location;
  v23 = type metadata accessor for CurrentLocation(0);
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FD0, &qword_22D822BD8);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v27[2] = v28;
  sub_22D79DD0C(v18, v27 + *(*v27 + 96), &qword_27DA02840, &qword_22D821A70);
  *&v3[v22] = v27;
  v29 = OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_stream;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FD8, qword_22D822BE0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  v34 = *(*v33 + 96);
  v35 = type metadata accessor for CurrentLocationResult(0);
  (*(*(v35 - 8) + 56))(v33 + v34, 1, 1, v35);
  v36 = *(*v33 + 104);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v33 + v36) = v37;
  *(v33 + *(*v33 + 112)) = MEMORY[0x277D84F98];
  *(v33 + *(*v33 + 120)) = 0;
  *&v3[v29] = v33;
  v38 = [objc_opt_self() meters];
  sub_22D759CA0(0, &qword_27DA02EF0, 0x277CCAE20);
  sub_22D81A5C8();
  *&v3[OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_inUseAssertion] = 0;
  *&v3[OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource____lazy_storage___locationManager] = 1;
  v39 = &v3[OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_source];
  *v39 = a1;
  *(v39 + 1) = a2;
  LOBYTE(v33) = v48;
  v39[16] = v48 & 1;
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_22D7AF728();
  sub_22D81B838();

  v55 = 0xD00000000000001FLL;
  v56 = 0x800000022D82AAC0;
  if (v33)
  {
    v40 = sub_22D81B2B8();
    v41 = [v40 lastPathComponent];

    v42 = sub_22D81B2C8();
    v44 = v43;

    sub_22D7AF718();
    a1 = v42;
    a2 = v44;
  }

  sub_22D759CA0(0, &qword_280CD2D60, 0x277D85C78);
  MEMORY[0x2318D1A50](a1, a2);

  sub_22D81B0F8();
  (*(v9 + 104))(v51, *MEMORY[0x277D85268], v49);
  v55 = MEMORY[0x277D84F90];
  sub_22D7AF730(&unk_280CD2D70, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FE0, &unk_22D81F120);
  sub_22D7AF778();
  sub_22D81B788();
  *&v4[OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_locationQueue] = sub_22D81B6A8();
  v45 = type metadata accessor for LocationSource(0);
  v54.receiver = v4;
  v54.super_class = v45;
  return objc_msgSendSuper2(&v54, sel_init);
}

void sub_22D7AB640(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FB0, &qword_22D822BB8);
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  MEMORY[0x28223BE20](v2);
  v44 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FB8, &qword_22D822BC0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v48 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v43 = &v38 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F90, &unk_22D822BA0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = *&v1[OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_stream];
  v21 = *(*v20 + 104);
  v22 = *(v20 + v21);
  swift_beginAccess();
  sub_22D81A198();
  v23 = v1;
  os_unfair_lock_lock(v22 + 4);
  swift_endAccess();
  v24 = *(*v20 + 120);
  v25 = *(v20 + v24);
  if ((v25 & 1) == 0)
  {
    *(v20 + v24) = 1;
  }

  v26 = v21;
  v27 = *(v20 + v21);
  swift_beginAccess();
  os_unfair_lock_unlock(v27 + 4);
  swift_endAccess();
  v28 = type metadata accessor for CurrentLocationResult(0);
  v29 = *(*(v28 - 8) + 56);
  v29(v19, 1, 1, v28);
  if ((v25 & 1) == 0)
  {
    sub_22D7ABD64(v17);
    v29(v17, 0, 1, v28);
    sub_22D79DCA4(v17, v19, &qword_27DA02F90, &unk_22D822BA0);
  }

  v47 = v23;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FC0, &qword_22D822BC8);
  v42 = *(v30 - 8);
  v40 = *(v42 + 56);
  v41 = v42 + 56;
  v40(v12, 1, 1, v30);
  v31 = v26;
  v32 = *(v20 + v26);
  swift_beginAccess();
  os_unfair_lock_lock(v32 + 4);
  v33 = swift_endAccess();
  MEMORY[0x28223BE20](v33);
  *(&v38 - 2) = v20;
  *(&v38 - 1) = v19;
  v38 = v19;
  (*(v45 + 104))(v44, *MEMORY[0x277D85778], v46);
  v34 = v43;
  sub_22D81B588();
  sub_22D764440(v12, &qword_27DA02FB8, &qword_22D822BC0);
  v40(v34, 0, 1, v30);
  sub_22D79DD0C(v34, v12, &qword_27DA02FB8, &qword_22D822BC0);
  v35 = *(v20 + v31);
  swift_beginAccess();
  os_unfair_lock_unlock(v35 + 4);
  swift_endAccess();
  v36 = v48;
  v37 = v42;
  sub_22D7640C4(v12, v48, &qword_27DA02FB8, &qword_22D822BC0);
  if ((*(v37 + 48))(v36, 1, v30) == 1)
  {

    __break(1u);
  }

  else
  {

    sub_22D764440(v12, &qword_27DA02FB8, &qword_22D822BC0);
    (*(v37 + 32))(v39, v36, v30);
    sub_22D764440(v38, &qword_27DA02F90, &unk_22D822BA0);
  }
}

id sub_22D7ABBF0()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource____lazy_storage___locationManager;
  v2 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource____lazy_storage___locationManager);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_22D7ABC60(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_22D7AF670(v4);
  }

  sub_22D7AF708(v2);
  return v3;
}

id sub_22D7ABC60(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_source);
  v3 = *(a1 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_source + 8);
  v4 = *(a1 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_source + 16);
  v5 = *(a1 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_locationQueue);
  v6 = objc_allocWithZone(MEMORY[0x277CBFC10]);
  v7 = v5;
  v8 = sub_22D81B2B8();
  v9 = &selRef_initWithEffectiveBundlePath_delegate_onQueue_;
  if (!v4)
  {
    v9 = &selRef_initWithEffectiveBundleIdentifier_delegate_onQueue_;
  }

  v10 = [v6 *v9];

  if (!v10)
  {
    v11 = objc_opt_self();
    v12 = sub_22D81B2B8();
    [v11 logError_];
  }

  return v10;
}

uint64_t sub_22D7ABD64@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F90, &unk_22D822BA0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = type metadata accessor for CurrentLocationResult(0);
  v10 = *(v9 - 8);
  (*(v10 + 56))(v8, 1, 1, v9);
  v11 = *&v1[OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_locationQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = v8;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_22D7AF680;
  *(v13 + 24) = v12;
  aBlock[4] = sub_22D7A8878;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D75BA3C;
  aBlock[3] = &block_descriptor_74;
  v14 = _Block_copy(aBlock);
  v15 = v11;
  v16 = v1;
  sub_22D81A198();

  dispatch_sync(v15, v14);

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_22D7640C4(v8, v6, &qword_27DA02F90, &unk_22D822BA0);
    result = (*(v10 + 48))(v6, 1, v9);
    if (result != 1)
    {
      sub_22D7AF6A0(v6, v20, type metadata accessor for CurrentLocationResult);
      sub_22D764440(v8, &qword_27DA02F90, &unk_22D822BA0);
    }
  }

  __break(1u);
  return result;
}

void sub_22D7AC01C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for LocationAccuracy(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_22D7AC698())
  {
    v7 = sub_22D7ABBF0();
    if (v7 && (v8 = v7, v9 = [v7 location], v8, v9))
    {
      [v9 horizontalAccuracy];
      v10 = [objc_opt_self() meters];
      sub_22D759CA0(0, &qword_27DA02EF0, 0x277CCAE20);
      sub_22D81A5C8();
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F60, &qword_22D822AB8);
      (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
      sub_22D764440(a2, &qword_27DA02F90, &unk_22D822BA0);
      v12 = type metadata accessor for CurrentLocation(0);
      sub_22D7AF6A0(v6, a2 + *(v12 + 20), type metadata accessor for LocationAccuracy);
      *a2 = v9;
      (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
      v13 = type metadata accessor for CurrentLocationResult(0);
      v14 = v13;
      *(a2 + *(v13 + 20)) = 2;
    }

    else
    {
      sub_22D764440(a2, &qword_27DA02F90, &unk_22D822BA0);
      v16 = type metadata accessor for CurrentLocation(0);
      (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
      v13 = type metadata accessor for CurrentLocationResult(0);
      v14 = v13;
      *(a2 + *(v13 + 20)) = 1;
    }
  }

  else
  {
    sub_22D764440(a2, &qword_27DA02F90, &unk_22D822BA0);
    v15 = type metadata accessor for CurrentLocation(0);
    (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
    v13 = type metadata accessor for CurrentLocationResult(0);
    v14 = v13;
    *(a2 + *(v13 + 20)) = 0;
  }

  (*(*(v13 - 8) + 56))(a2, 0, 1, v14);
  sub_22D7AC33C();
}

void sub_22D7AC33C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F80, &qword_22D822B90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - v3;
  v5 = sub_22D81B118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_locationQueue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v11 = v10;
  LOBYTE(v10) = sub_22D81B128();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v12 = sub_22D7ABBF0();
  if (!v12)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F88, &qword_22D822B98);
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    sub_22D7ACC78(v4);
LABEL_9:
    sub_22D764440(v4, &qword_27DA02F80, &qword_22D822B90);
    return;
  }

  v13 = v12;
  if ((sub_22D7AC698() & 1) == 0)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F88, &qword_22D822B98);
    (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
    sub_22D7ACC78(v4);

    goto LABEL_9;
  }

  v14 = OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource__isLocationUpdating;
  v15 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource__isLocationUpdating);
  v16 = *(v15 + 16);
  swift_beginAccess();
  sub_22D81A198();
  os_unfair_lock_lock(v16 + 4);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v16) = *(v15 + 24);
  v17 = *(v15 + 16);
  swift_beginAccess();
  os_unfair_lock_unlock(v17 + 4);
  swift_endAccess();

  if ((v16 & 1) == 0)
  {
    v18 = *(v0 + v14);
    v19 = *(v18 + 16);
    swift_beginAccess();
    sub_22D81A198();
    os_unfair_lock_lock(v19 + 4);
    swift_endAccess();
    swift_beginAccess();
    *(v18 + 24) = 1;
    v20 = *(v18 + 16);
    swift_beginAccess();
    os_unfair_lock_unlock(v20 + 4);
    swift_endAccess();

    [v13 startUpdatingLocation];
  }
}

uint64_t sub_22D7AC698()
{
  result = sub_22D7ABBF0();
  if (result)
  {
    v2 = result;
    v3 = [result _authorizationStatus];
    if (v3 <= 1)
    {
      if (!v3)
      {
        v8 = objc_opt_self();
        v9 = sub_22D81B2B8();
        [v8 logInfo_];

        v10 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource____lazy_storage___locationManager);
        if (v10)
        {
          v11 = v10;
          v12 = sub_22D81B2B8();
          [v8 logInfo_];
LABEL_16:

          [v11 requestWhenInUseAuthorizationWithPrompt];
          sub_22D7AF670(v10);
          return 0;
        }

LABEL_10:

        return 0;
      }

      if (v3 != 1)
      {
LABEL_14:
        v10 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource____lazy_storage___locationManager);
        if (v10)
        {
          v13 = objc_opt_self();
          v11 = v10;
          v12 = sub_22D81B2B8();
          [v13 logInfo_];
          goto LABEL_16;
        }

        goto LABEL_10;
      }
    }

    else if (v3 != 2)
    {
      if (v3 == 4 || v3 == 3)
      {
        v6 = objc_opt_self();
        v7 = sub_22D81B2B8();
        [v6 logInfo_];

        return 1;
      }

      goto LABEL_14;
    }

    v4 = objc_opt_self();
    v5 = sub_22D81B2B8();
    [v4 logInfo_];

    goto LABEL_10;
  }

  return result;
}

unint64_t sub_22D7AC980()
{
  sub_22D81B838();

  v2 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_source);
  v1 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_source + 8);
  v3 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_source + 16);
  if (v3)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xD000000000000019;
  }

  if (*(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_source + 16))
  {
    v5 = "LocationSource: type:";
  }

  else
  {
    v5 = "nager, Failed to Load>";
  }

  MEMORY[0x2318D1A50](v4, v5 | 0x8000000000000000);

  MEMORY[0x2318D1A50](979659040, 0xE400000000000000);
  if (v3)
  {
    v6 = sub_22D81B2B8();
    v7 = [v6 lastPathComponent];

    v2 = sub_22D81B2C8();
    v1 = v8;
  }

  else
  {
    sub_22D81A398();
  }

  MEMORY[0x2318D1A50](v2, v1);

  MEMORY[0x2318D1A50](32, 0xE100000000000000);
  v9 = sub_22D7ABBF0();
  if (v9)
  {

    v10 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = 0x800000022D82AA10;
    v10 = 0xD000000000000026;
  }

  MEMORY[0x2318D1A50](v10, v11);

  return 0xD000000000000015;
}

id sub_22D7ACB50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22D7ACC78(uint64_t a1)
{
  v57 = a1;
  v60 = type metadata accessor for CurrentLocationResult(0);
  v2 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v61 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for CurrentLocation(0);
  v4 = *(v59 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v59);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F80, &qword_22D822B90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v54 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F88, &qword_22D822B98);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v14);
  v54 = (&v54 - v18);
  MEMORY[0x28223BE20](v17);
  v58 = &v54 - v19;
  v20 = sub_22D81B118();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (&v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_locationQueue);
  *v24 = v25;
  (*(v21 + 104))(v24, *MEMORY[0x277D85200], v20);
  v26 = v25;
  LOBYTE(v25) = sub_22D81B128();
  result = (*(v21 + 8))(v24, v20);
  if (v25)
  {
    v28 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource__isLocationUpdating);
    v29 = *(v28 + 16);
    swift_beginAccess();
    sub_22D81A198();
    os_unfair_lock_lock(v29 + 4);
    swift_endAccess();
    swift_beginAccess();
    *(v28 + 24) = 0;
    v30 = *(v28 + 16);
    swift_beginAccess();
    os_unfair_lock_unlock(v30 + 4);
    swift_endAccess();

    v56 = v1;
    v31 = sub_22D7ABBF0();
    [v31 stopUpdatingLocation];

    sub_22D7640C4(v57, v10, &qword_27DA02F80, &qword_22D822B90);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_22D764440(v10, &qword_27DA02F80, &qword_22D822B90);
      v32 = objc_opt_self();
      v33 = sub_22D81B2B8();
      [v32 logInfo_];

      v34 = *(v56 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_stream);
      v35 = v61;
      (*(v4 + 56))(v61, 1, 1, v59);
      *(v35 + *(v60 + 20)) = 0;
      v36 = *(*v34 + 104);
      v37 = *(v34 + v36);
      swift_beginAccess();
      sub_22D81A198();
      os_unfair_lock_lock(v37 + 4);
      swift_endAccess();
      sub_22D798B48(v35);
      v38 = *(v34 + v36);
      swift_beginAccess();
      os_unfair_lock_unlock(v38 + 4);
      swift_endAccess();
      sub_22D7AF5A8(v35, type metadata accessor for CurrentLocationResult);
    }

    else
    {
      v39 = v10;
      v40 = v58;
      sub_22D79DD0C(v39, v58, &qword_27DA02F88, &qword_22D822B98);
      v41 = v54;
      sub_22D7640C4(v40, v54, &qword_27DA02F88, &qword_22D822B98);
      v42 = *v41;
      v57 = *(v11 + 48);
      v43 = v59;
      v44 = *(v59 + 20);
      sub_22D7640C4(v40, v16, &qword_27DA02F88, &qword_22D822B98);

      v45 = *(v11 + 48);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F60, &qword_22D822AB8);
      v47 = *(v46 - 8);
      v48 = v55;
      (*(v47 + 32))(&v55[v44], v16 + v45, v46);
      (*(v47 + 56))(&v48[v44], 0, 1, v46);
      *v48 = v42;
      (*(v47 + 8))(v41 + v57, v46);
      v49 = *(v56 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_stream);
      v50 = v61;
      sub_22D7AF608(v48, v61, type metadata accessor for CurrentLocation);
      (*(v4 + 56))(v50, 0, 1, v43);
      *(v50 + *(v60 + 20)) = 2;
      v51 = *(*v49 + 104);
      v52 = *(v49 + v51);
      swift_beginAccess();
      sub_22D81A198();
      os_unfair_lock_lock(v52 + 4);
      swift_endAccess();
      sub_22D798B48(v50);
      v53 = *(v49 + v51);
      swift_beginAccess();
      os_unfair_lock_unlock(v53 + 4);
      swift_endAccess();
      sub_22D7AF5A8(v50, type metadata accessor for CurrentLocationResult);
      sub_22D7AF5A8(v48, type metadata accessor for CurrentLocation);
      sub_22D764440(v58, &qword_27DA02F88, &qword_22D822B98);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22D7AD3E4(void *a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F80, &qword_22D822B90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (v38 - v7);
  v9 = sub_22D81B118();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_locationQueue);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_22D81B128();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v16 = *(v2 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource__isLocationUpdating);
    v17 = *(v16 + 16);
    swift_beginAccess();
    sub_22D81A198();
    os_unfair_lock_lock(v17 + 4);
    swift_endAccess();
    swift_beginAccess();
    *(v16 + 24) = 1;
    v18 = *(v16 + 16);
    swift_beginAccess();
    os_unfair_lock_unlock(v18 + 4);
    swift_endAccess();

    if (!(a2 >> 62))
    {
      v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_4;
      }

LABEL_15:
      v35 = objc_opt_self();
      v36 = sub_22D81B2B8();
      [v35 logDebug_];

      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F88, &qword_22D822B98);
      (*(*(v37 - 8) + 56))(v8, 1, 1, v37);
      sub_22D7ACC78(v8);
LABEL_16:
      sub_22D764440(v8, &qword_27DA02F80, &qword_22D822B90);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  v19 = sub_22D81B938();
  if (!v19)
  {
    goto LABEL_15;
  }

LABEL_4:
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_18:
    v22 = MEMORY[0x2318D1F70](v21, a2);
LABEL_9:
    v23 = v22;
    if (([a1 _limitsPrecision] & 1) == 0)
    {
      [v23 horizontalAccuracy];
      if (v24 > 1500.0)
      {

        return;
      }
    }

    v25 = objc_opt_self();
    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    sub_22D81B838();

    v26 = [v23 description];
    v27 = sub_22D81B2C8();
    v29 = v28;

    MEMORY[0x2318D1A50](v27, v29);

    MEMORY[0x2318D1A50](41, 0xE100000000000000);
    v30 = sub_22D81B2B8();

    [v25 logDebug_];

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F88, &qword_22D822B98);
    v32 = *(v31 + 48);
    *v8 = v23;
    v33 = v23;
    [v33 horizontalAccuracy];
    v34 = [objc_opt_self() meters];
    sub_22D759CA0(0, &qword_27DA02EF0, 0x277CCAE20);
    sub_22D81A5C8();
    (*(*(v31 - 8) + 56))(v8, 0, 1, v31);
    sub_22D7ACC78(v8);

    goto LABEL_16;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v21 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(a2 + 8 * v21 + 32);
    goto LABEL_9;
  }

  __break(1u);
}

id sub_22D7ADA4C()
{
  type metadata accessor for PlacemarkNameLookup();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  *(v0 + 112) = result;
  qword_27DA02E28 = v0;
  return result;
}

uint64_t sub_22D7ADAC8(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }

  return sub_22D81A198();
}

uint64_t sub_22D7ADB28(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_22D7ADB48, v1, 0);
}

uint64_t sub_22D7ADB48()
{
  v1 = v0[19];
  v2 = *(v0[20] + 112);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22D7ADC74;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02E40, &unk_22D822788);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22D7ADFD0;
  v0[13] = &block_descriptor_8;
  v0[14] = v3;
  [v2 reverseGeocodeLocation:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22D7ADC74()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 168) = v3;
  v4 = *(v1 + 160);
  if (v3)
  {
    v5 = sub_22D7ADE8C;
  }

  else
  {
    v5 = sub_22D7ADD94;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22D7ADD94()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v8 = *(v0 + 144);
    }

    result = sub_22D81B938();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    v5 = 0;
    v7 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x2318D1F70](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

  v5 = sub_22D7AEBB8(v4);
  v7 = v6;

LABEL_11:
  v9 = *(v0 + 8);

  return v9(v5, v7);
}

uint64_t sub_22D7ADE8C()
{
  v1 = v0[21];
  swift_willThrow();
  v2 = objc_opt_self();
  sub_22D81B838();
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  MEMORY[0x2318D1A50](0xD00000000000001FLL, 0x800000022D82A5D0);
  v0[18] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
  sub_22D81B908();
  v3 = v0[10];
  v4 = v0[11];
  v5 = sub_22D81B2B8();

  [v2 logDebug_];

  v6 = v0[1];

  return v6(0, 0);
}

uint64_t sub_22D7ADFD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_22D759CA0(0, &qword_27DA02F98, 0x277CBFC40);
    **(*(v4 + 64) + 40) = sub_22D81B438();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t PlacemarkNameLookup.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_22D7AE12C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F60, &qword_22D822AB8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v9 = type metadata accessor for LocationAccuracy(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FA8, &qword_22D822BB0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_22D7AF608(a1, &v23 - v16, type metadata accessor for LocationAccuracy);
  sub_22D7AF608(a2, &v17[v18], type metadata accessor for LocationAccuracy);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_22D7AF608(v17, v12, type metadata accessor for LocationAccuracy);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_22D759CA0(0, &qword_27DA02EF0, 0x277CCAE20);
      v20 = sub_22D81A5B8();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_22D7AF5A8(v17, type metadata accessor for LocationAccuracy);
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_22D764440(v17, &qword_27DA02FA8, &qword_22D822BB0);
    v20 = 0;
    return v20 & 1;
  }

  sub_22D7AF5A8(v17, type metadata accessor for LocationAccuracy);
  v20 = 1;
  return v20 & 1;
}

BOOL _s18MobileTimerSupport21CurrentLocationResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02840, &qword_22D821A70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v27 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FA0, &unk_22D821C00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v27 - v16;
  v18 = *(v15 + 56);
  sub_22D7640C4(a1, &v27 - v16, &qword_27DA02840, &qword_22D821A70);
  sub_22D7640C4(a2, &v17[v18], &qword_27DA02840, &qword_22D821A70);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_22D764440(v17, &qword_27DA02840, &qword_22D821A70);
LABEL_4:
      v20 = type metadata accessor for CurrentLocationResult(0);
      return *(a1 + *(v20 + 20)) == *(a2 + *(v20 + 20));
    }

    goto LABEL_7;
  }

  sub_22D7640C4(v17, v12, &qword_27DA02840, &qword_22D821A70);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_22D7AF5A8(v12, type metadata accessor for CurrentLocation);
LABEL_7:
    v22 = &qword_27DA02FA0;
    v23 = &unk_22D821C00;
LABEL_8:
    sub_22D764440(v17, v22, v23);
    return 0;
  }

  sub_22D7AF6A0(&v17[v18], v8, type metadata accessor for CurrentLocation);
  sub_22D759CA0(0, &qword_280CD1500, 0x277D82BB8);
  v24 = *v12;
  v25 = *v8;
  if ((sub_22D81B6F8() & 1) == 0)
  {
    sub_22D7AF5A8(v8, type metadata accessor for CurrentLocation);
    sub_22D7AF5A8(v12, type metadata accessor for CurrentLocation);
    v22 = &qword_27DA02840;
    v23 = &qword_22D821A70;
    goto LABEL_8;
  }

  v26 = sub_22D7AE12C(v12 + *(v4 + 20), v8 + *(v4 + 20));
  sub_22D7AF5A8(v8, type metadata accessor for CurrentLocation);
  sub_22D7AF5A8(v12, type metadata accessor for CurrentLocation);
  sub_22D764440(v17, &qword_27DA02840, &qword_22D821A70);
  if (v26)
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_22D7AE7C0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F80, &qword_22D822B90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v19 - v6;
  v8 = sub_22D81B118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_locationQueue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_22D81B128();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v16 = objc_opt_self();
    v19[2] = 0;
    v19[3] = 0xE000000000000000;
    sub_22D81B838();
    MEMORY[0x2318D1A50](0xD000000000000021, 0x800000022D82A7E0);
    v19[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
    sub_22D81B908();
    MEMORY[0x2318D1A50](41, 0xE100000000000000);
    v17 = sub_22D81B2B8();

    [v16 logDebug_];

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F88, &qword_22D822B98);
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    sub_22D7ACC78(v7);
    return sub_22D764440(v7, &qword_27DA02F80, &qword_22D822B90);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22D7AEA5C()
{
  v1 = sub_22D81B118();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_locationQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_22D81B128();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = objc_opt_self();
    v9 = sub_22D81B2B8();
    [v8 logDebug_];

    sub_22D7AC33C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D7AEBB8(void *a1)
{
  v2 = [a1 locality];
  if (!v2)
  {
    v2 = [a1 name];
    if (!v2)
    {
      v2 = [a1 subAdministrativeArea];
      if (!v2)
      {
        v2 = [a1 administrativeArea];
        if (!v2)
        {
          v2 = [a1 inlandWater];
          if (!v2)
          {
            v2 = [a1 country];
            if (!v2)
            {
              v2 = [a1 ocean];
              if (!v2)
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  v3 = v2;
  v4 = sub_22D81B2C8();

  return v4;
}

unint64_t sub_22D7AECCC()
{
  result = qword_27DA02E50;
  if (!qword_27DA02E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02E50);
  }

  return result;
}

uint64_t sub_22D7AED48()
{
  result = sub_22D759CA0(319, &qword_27DA02E70, 0x277CE41F8);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LocationAccuracy(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22D7AEE24()
{
  sub_22D7977EC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22D7AEF20()
{
  sub_22D7AEFF0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22D7AEFF0()
{
  if (!qword_27DA02EE8)
  {
    sub_22D759CA0(255, &qword_27DA02EF0, 0x277CCAE20);
    v0 = sub_22D81A608();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA02EE8);
    }
  }
}

uint64_t dispatch thunk of PlacemarkNameLookup.name(for:)(uint64_t a1)
{
  v4 = *(*v1 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22D7AF1B4;

  return v8(a1);
}

uint64_t sub_22D7AF1B4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22D7AF2D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_22D7AF320(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t getEnumTagSinglePayload for LocationStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22D7AF4F8()
{
  sub_22D7AEFF0();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_22D7AF554()
{
  result = qword_27DA02F78;
  if (!qword_27DA02F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02F78);
  }

  return result;
}

uint64_t sub_22D7AF5A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22D7AF608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22D7AF670(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

uint64_t sub_22D7AF6A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_22D7AF708(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_22D7AF730(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22D7AF778()
{
  result = qword_280CD2D90;
  if (!qword_280CD2D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA02FE0, &unk_22D81F120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2D90);
  }

  return result;
}

uint64_t sub_22D7AF84C()
{
  result = type metadata accessor for SolarEvent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22D7AF8EC()
{
  result = sub_22D81A8C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22D7AF980()
{
  v1 = type metadata accessor for SolarEvent(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81A8C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DA019F0 != -1)
  {
    swift_once();
  }

  sub_22D81A8B8();
  v10 = type metadata accessor for SolarCycle(0);
  sub_22D7B0A04(v0 + v10[7], v4);
  v11 = sub_22D81A828();
  v12 = *(v6 + 8);
  v12(v4, v5);
  if (v11)
  {
    v12(v9, v5);
    return 0;
  }

  else
  {
    sub_22D7B0A04(v0 + v10[6], v4);
    v14 = sub_22D81A828();
    v12(v4, v5);
    if (v14)
    {
      v12(v9, v5);
      return 3;
    }

    else
    {
      sub_22D7B0A04(v0 + v10[5], v4);
      v15 = sub_22D81A828();
      v12(v9, v5);
      v12(v4, v5);
      if (v15)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }
}

uint64_t sub_22D7AFBB8(float a1)
{
  v3 = type metadata accessor for SolarEvent(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D81A8C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D7AF980();
  if (qword_27DA019F0 != -1)
  {
    swift_once();
  }

  sub_22D81A8B8();
  v13 = type metadata accessor for SolarCycle(0);
  sub_22D7B0A04(v1 + *(v13 + 24), v6);
  v14 = sub_22D81A838();
  v15 = *(v8 + 8);
  v15(v11, v7);
  result = (v15)(v6, v7);
  v17 = 28;
  if (v14)
  {
    v17 = 20;
  }

  v18 = fabsf(a1 / *(v1 + *(v13 + v17) + *(v3 + 24)));
  if (v12 > 1u)
  {
    v19 = 0.25;
    v20 = 180.0;
    if (v12 != 2)
    {
      v19 = 0.5;
      v20 = 270.0;
    }
  }

  else
  {
    if (v12)
    {
      return result;
    }

    v19 = 0.75;
    v20 = 360.0;
  }

  if (v19 > (v20 / 360.0))
  {
    __break(1u);
  }

  return result;
}

void sub_22D7AFE0C(double a1, double a2)
{
  v4 = GEOLocationCoordinate2DMake();
  v6 = v5;
  v7 = objc_allocWithZone(MEMORY[0x277D0EB38]);
  v8 = sub_22D81A818();
  v9 = [v7 initWithLocation:v8 date:0 body:{v4, v6}];

  if (v9)
  {
    [v9 altitude];
  }

  else
  {
    v10 = objc_opt_self();
    sub_22D81B838();
    MEMORY[0x2318D1A50](0xD00000000000002DLL, 0x800000022D82AAE0);
    type metadata accessor for CLLocationCoordinate2D(0);
    v11 = sub_22D81B2E8();
    MEMORY[0x2318D1A50](v11);

    MEMORY[0x2318D1A50](0x203A65746164202CLL, 0xE800000000000000);
    sub_22D81A8C8();
    sub_22D7B05FC(&qword_27DA03020, MEMORY[0x277CC9578]);
    v12 = sub_22D81BAD8();
    MEMORY[0x2318D1A50](v12);

    v9 = sub_22D81B2B8();

    [v10 logError_];
  }
}

uint64_t sub_22D7AFFF8@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  sub_22D81A7C8();
  v7 = v6;
  v8 = objc_opt_self();
  v9 = GEOLocationCoordinate2DMake(a2, a3);
  v11 = v10;
  [v8 nextEventOfType:8 after:v7 forLocation:v9 altitudeInDegrees:v10 accuracy:{0.0, 60.0}];
  v12 = type metadata accessor for SolarCycle(0);
  v13 = a1 + v12[8];
  sub_22D81A7B8();
  v14 = *MEMORY[0x277D0E7C0];
  [v8 prevEventOfType:8 before:v7 forLocation:v9 altitudeInDegrees:v11 accuracy:{*MEMORY[0x277D0E7C0], 60.0}];
  sub_22D81A7B8();
  sub_22D81A7C8();
  v16 = [objc_allocWithZone(MEMORY[0x277D0ED50]) initWithLocation:v9 time:v11 altitudeInDegrees:v15 accuracy:{v14, 60.0}];
  [v16 nextEventOfType_];
  v17 = a1 + v12[5];
  sub_22D81A7B8();
  [v16 nextEventOfType_];
  v18 = a1 + v12[6];
  sub_22D81A7B8();
  sub_22D81A7C8();
  [v8 prevEventOfType:512 before:? forLocation:? altitudeInDegrees:? accuracy:?];
  v19 = a1 + v12[7];
  sub_22D81A7B8();

  sub_22D7AFE0C(a2, a3);
  LODWORD(v9) = v20;
  sub_22D7AFE0C(a2, a3);
  LODWORD(a3) = v21;
  result = type metadata accessor for SolarEvent(0);
  *(a1 + *(result + 20)) = 0;
  *(a1 + *(result + 24)) = 0;
  *(v17 + *(result + 20)) = 2;
  *(v17 + *(result + 24)) = LODWORD(v9);
  *(v18 + *(result + 20)) = 1;
  *(v18 + *(result + 24)) = 0;
  *(v19 + *(result + 20)) = 3;
  *(v19 + *(result + 24)) = LODWORD(a3);
  *(v13 + *(result + 20)) = 0;
  *(v13 + *(result + 24)) = 0;
  return result;
}

uint64_t sub_22D7B0260()
{
  sub_22D81BBC8();
  sub_22D81A8C8();
  sub_22D7B05FC(&qword_27DA02330, MEMORY[0x277CC9578]);
  sub_22D81B1D8();
  v1 = type metadata accessor for SolarEvent(0);
  MEMORY[0x2318D22E0](*(v0 + *(v1 + 20)));
  *(v0 + *(v1 + 24));
  sub_22D81BBF8();
  return sub_22D81BC18();
}

unint64_t sub_22D7B0334()
{
  result = qword_27DA03008;
  if (!qword_27DA03008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03008);
  }

  return result;
}

uint64_t sub_22D7B043C(uint64_t a1, uint64_t a2)
{
  sub_22D81A8C8();
  sub_22D7B05FC(&qword_27DA02330, MEMORY[0x277CC9578]);
  sub_22D81B1D8();
  MEMORY[0x2318D22E0](*(v2 + *(a2 + 20)));
  *(v2 + *(a2 + 24));
  return sub_22D81BBF8();
}

uint64_t sub_22D7B04F0(uint64_t a1, uint64_t a2)
{
  sub_22D81BBC8();
  sub_22D81A8C8();
  sub_22D7B05FC(&qword_27DA02330, MEMORY[0x277CC9578]);
  sub_22D81B1D8();
  MEMORY[0x2318D22E0](*(v2 + *(a2 + 20)));
  *(v2 + *(a2 + 24));
  sub_22D81BBF8();
  return sub_22D81BC18();
}

uint64_t sub_22D7B05FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22D7B0644()
{
  sub_22D81A8C8();
  sub_22D7B05FC(&qword_27DA02330, MEMORY[0x277CC9578]);
  sub_22D81B1D8();
  v1 = type metadata accessor for SolarEvent(0);
  MEMORY[0x2318D22E0](*(v0 + *(v1 + 20)));
  *(v0 + *(v1 + 24));
  sub_22D81BBF8();
  v2 = type metadata accessor for SolarCycle(0);
  v3 = v0 + v2[5];
  sub_22D81B1D8();
  MEMORY[0x2318D22E0](*(v3 + *(v1 + 20)));
  *(v3 + *(v1 + 24));
  sub_22D81BBF8();
  v4 = v0 + v2[6];
  sub_22D81B1D8();
  MEMORY[0x2318D22E0](*(v4 + *(v1 + 20)));
  *(v4 + *(v1 + 24));
  sub_22D81BBF8();
  v5 = v0 + v2[7];
  sub_22D81B1D8();
  MEMORY[0x2318D22E0](*(v5 + *(v1 + 20)));
  *(v5 + *(v1 + 24));
  sub_22D81BBF8();
  v6 = v0 + v2[8];
  sub_22D81B1D8();
  MEMORY[0x2318D22E0](*(v6 + *(v1 + 20)));
  *(v6 + *(v1 + 24));
  return sub_22D81BBF8();
}

uint64_t sub_22D7B0834()
{
  sub_22D81BBC8();
  sub_22D7B0644();
  return sub_22D81BC18();
}

uint64_t sub_22D7B0878()
{
  sub_22D81BBC8();
  sub_22D7B0644();
  return sub_22D81BC18();
}

BOOL sub_22D7B08B4(uint64_t a1, uint64_t a2)
{
  if ((sub_22D81A868() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SolarEvent(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = v4;
  v6 = type metadata accessor for SolarCycle(0);
  v7 = v6[5];
  v8 = a1 + v7;
  v9 = a2 + v7;
  if ((sub_22D81A868() & 1) == 0)
  {
    return 0;
  }

  if (*(v8 + *(v5 + 20)) == *(v9 + *(v5 + 20)) && *(v8 + *(v5 + 24)) == *(v9 + *(v5 + 24)) && (v10 = v6[6], v11 = a1 + v10, v12 = a2 + v10, (sub_22D81A868() & 1) != 0) && *(v11 + *(v5 + 20)) == *(v12 + *(v5 + 20)) && *(v11 + *(v5 + 24)) == *(v12 + *(v5 + 24)) && (v13 = v6[8], v14 = a1 + v13, v15 = a2 + v13, (sub_22D81A868() & 1) != 0) && *(v14 + *(v5 + 20)) == *(v15 + *(v5 + 20)))
  {
    return *(v14 + *(v5 + 24)) == *(v15 + *(v5 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22D7B0A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolarEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for MTAppIntentsTab(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MTAppIntentsTab(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22D7B0BBC()
{
  result = qword_27DA03028;
  if (!qword_27DA03028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03028);
  }

  return result;
}

uint64_t sub_22D7B0C1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03058, &qword_22D822ED8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_22D7640C4(a1, v5, &qword_27DA03058, &qword_22D822ED8);
    v15 = type metadata accessor for SystemOverrideClockData();
    if ((*(*(v15 - 8) + 48))(v5, 1, v15) == 1)
    {
      sub_22D764440(v5, &qword_27DA03058, &qword_22D822ED8);
      v16 = sub_22D81A8C8();
      (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    }

    else
    {
      v17 = sub_22D81A8C8();
      v18 = *(v17 - 8);
      (*(v18 + 16))(v12, v5, v17);
      sub_22D7B5CFC(v5);
      (*(v18 + 56))(v12, 0, 1, v17);
    }

    sub_22D7B1598(v12);
    v19 = *(v14 + 32);
    v20 = *(v14 + 40);
    v21 = v20[2];
    swift_beginAccess();
    sub_22D81A198();
    os_unfair_lock_lock(v21 + 4);
    swift_endAccess();
    v22 = *(*v20 + 96);
    swift_beginAccess();
    sub_22D7640C4(v20 + v22, v10, &qword_27DA02000, &qword_22D81F160);
    v23 = v20[2];
    swift_beginAccess();
    os_unfair_lock_unlock(v23 + 4);
    swift_endAccess();

    v24 = *(*v19 + 104);
    v25 = *(v19 + v24);
    swift_beginAccess();
    os_unfair_lock_lock(v25 + 4);
    swift_endAccess();
    sub_22D79AF88(v10);
    v26 = *(v19 + v24);
    swift_beginAccess();
    os_unfair_lock_unlock(v26 + 4);
    swift_endAccess();
    sub_22D764440(v10, &qword_27DA02000, &qword_22D81F160);
  }

  return result;
}

uint64_t sub_22D7B0FD0@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03060, &qword_22D822EE0);
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03068, &qword_22D822EE8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v50 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C60, &qword_22D822540);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  v21 = *(v1 + 32);
  v22 = *(*v21 + 104);
  v23 = *(v21 + v22);
  swift_beginAccess();
  os_unfair_lock_lock(v23 + 4);
  swift_endAccess();
  v24 = *(*v21 + 120);
  v25 = *(v21 + v24);
  if ((v25 & 1) == 0)
  {
    *(v21 + v24) = 1;
  }

  v26 = v22;
  v27 = *(v21 + v22);
  swift_beginAccess();
  os_unfair_lock_unlock(v27 + 4);
  swift_endAccess();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v29 = *(*(v28 - 8) + 56);
  v51 = v28;
  v29(v20, 1, 1);
  if ((v25 & 1) == 0)
  {
    v30 = *(v1 + 40);
    v31 = v30[2];
    swift_beginAccess();
    sub_22D81A198();
    os_unfair_lock_lock(v31 + 4);
    swift_endAccess();
    v32 = *(*v30 + 96);
    swift_beginAccess();
    sub_22D7640C4(v30 + v32, v18, &qword_27DA02000, &qword_22D81F160);
    v33 = v30[2];
    swift_beginAccess();
    os_unfair_lock_unlock(v33 + 4);
    swift_endAccess();

    (v29)(v18, 0, 1, v51);
    sub_22D79DCA4(v18, v20, &qword_27DA02C60, &qword_22D822540);
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C68, &qword_22D822548);
  v35 = *(v34 - 8);
  v36 = v35;
  v45 = *(v35 + 56);
  v46 = v35 + 56;
  v45(v13, 1, 1, v34);
  v37 = *(v21 + v26);
  swift_beginAccess();
  os_unfair_lock_lock(v37 + 4);
  v38 = swift_endAccess();
  MEMORY[0x28223BE20](v38);
  *(&v42 - 2) = v21;
  *(&v42 - 1) = v20;
  v43 = v20;
  (*(v48 + 104))(v47, *MEMORY[0x277D85778], v49);
  sub_22D81B588();
  sub_22D764440(v13, &qword_27DA03068, &qword_22D822EE8);
  v45(v11, 0, 1, v34);
  sub_22D7B5C8C(v11, v13);
  v39 = *(v21 + v26);
  swift_beginAccess();
  os_unfair_lock_unlock(v39 + 4);
  swift_endAccess();
  v40 = v50;
  sub_22D7640C4(v13, v50, &qword_27DA03068, &qword_22D822EE8);
  result = (*(v36 + 48))(v40, 1, v34);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_22D764440(v13, &qword_27DA03068, &qword_22D822EE8);
    (*(v36 + 32))(v44, v40, v34);
    return sub_22D764440(v43, &qword_27DA02C60, &qword_22D822540);
  }

  return result;
}

uint64_t sub_22D7B1598(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(v1 + 40);
  sub_22D7640C4(a1, &v15 - v8, &qword_27DA02000, &qword_22D81F160);
  v11 = v10[2];
  swift_beginAccess();
  sub_22D81A198();
  os_unfair_lock_lock(v11 + 4);
  swift_endAccess();
  sub_22D7640C4(v9, v7, &qword_27DA02000, &qword_22D81F160);
  v12 = *(*v10 + 96);
  swift_beginAccess();
  sub_22D79DCA4(v7, v10 + v12, &qword_27DA02000, &qword_22D81F160);
  swift_endAccess();
  v13 = v10[2];
  swift_beginAccess();
  os_unfair_lock_unlock(v13 + 4);
  swift_endAccess();
  sub_22D764440(a1, &qword_27DA02000, &qword_22D81F160);
  sub_22D764440(v9, &qword_27DA02000, &qword_22D81F160);
}

uint64_t sub_22D7B1740()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_22D7B17C0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X4>, unsigned int (*a6)(char *, uint64_t, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v165 = a6;
  v162 = a5;
  v174 = a4;
  v166 = a3;
  v178 = a2;
  v168 = a1;
  v163 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02958, &qword_22D822EC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v157 = &v144 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03040, &qword_22D822EC8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v167 = &v144 - v14;
  v161 = sub_22D81A708();
  v160 = *(v161 - 8);
  v15 = *(v160 + 64);
  v16 = MEMORY[0x28223BE20](v161);
  v159 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v172 = &v144 - v19;
  MEMORY[0x28223BE20](v18);
  v175 = &v144 - v20;
  v176 = sub_22D81AAB8();
  v180 = *(v176 - 8);
  v21 = v180[8];
  MEMORY[0x28223BE20](v176);
  v155 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_22D81A968();
  v153 = *(v154 - 8);
  v23 = *(v153 + 64);
  MEMORY[0x28223BE20](v154);
  *&v152 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22D81AA48();
  v170 = *(v25 - 8);
  v171 = v25;
  v26 = *(v170 + 64);
  MEMORY[0x28223BE20](v25);
  v181 = &v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22D81A8C8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v158 = &v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v177 = &v144 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v150 = &v144 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v146 = &v144 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v147 = &v144 - v40;
  MEMORY[0x28223BE20](v39);
  v179 = &v144 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v156 = &v144 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v169 = &v144 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v151 = &v144 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v149 = &v144 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v54 = &v144 - v53;
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v144 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v60 = &v144 - v59;
  v61 = MEMORY[0x28223BE20](v58);
  v63 = &v144 - v62;
  v64 = MEMORY[0x28223BE20](v61);
  v66 = &v144 - v65;
  v67 = MEMORY[0x28223BE20](v64);
  v69 = &v144 - v68;
  MEMORY[0x28223BE20](v67);
  v71 = &v144 - v70;
  sub_22D7B2E3C(v162, v165, a7, &v144 - v70);
  sub_22D7B3B10(v166, v174, a7, v69);
  v174 = v66;
  v72 = v168;
  v168 = a7;
  sub_22D7B3B10(v72, v178, a7, v66);
  v178 = v29;
  v75 = *(v29 + 48);
  v73 = v29 + 48;
  v74 = v75;
  v173 = v71;
  if (v75(v71, 1, v28) == 1 && v74(v69, 1, v28) == 1 && v74(v174, 1, v28) == 1)
  {
    v76 = objc_opt_self();
    v77 = sub_22D81B2B8();
    [v76 logInfo_];

    sub_22D764440(v173, &qword_27DA02000, &qword_22D81F160);
    v78 = 1;
    v79 = v163;
    v80 = v178;
    goto LABEL_29;
  }

  sub_22D7640C4(v69, v63, &qword_27DA02000, &qword_22D81F160);
  v81 = v74(v63, 1, v28);
  v165 = v74;
  v166 = v73;
  v164 = v69;
  if (v81 == 1)
  {
    sub_22D764440(v63, &qword_27DA02000, &qword_22D81F160);
    v82 = v151;
    v83 = v173;
LABEL_12:
    sub_22D7640C4(v69, v54, &qword_27DA02000, &qword_22D81F160);
    v92 = v74(v54, 1, v28);
    v93 = v150;
    if (v92 == 1)
    {
      sub_22D7640C4(v174, v57, &qword_27DA02000, &qword_22D81F160);
      if (v74(v54, 1, v28) != 1)
      {
        sub_22D764440(v54, &qword_27DA02000, &qword_22D81F160);
      }
    }

    else
    {
      v94 = v178;
      (*(v178 + 32))(v57, v54, v28);
      (*(v94 + 56))(v57, 0, 1, v28);
    }

    v95 = v149;
    sub_22D7640C4(v57, v149, &qword_27DA02000, &qword_22D81F160);
    if (v74(v95, 1, v28) == 1)
    {
      sub_22D81A888();
      sub_22D764440(v57, &qword_27DA02000, &qword_22D81F160);
      v96 = v74(v95, 1, v28);
      v97 = v178;
      if (v96 != 1)
      {
        sub_22D764440(v95, &qword_27DA02000, &qword_22D81F160);
      }
    }

    else
    {
      sub_22D764440(v57, &qword_27DA02000, &qword_22D81F160);
      v97 = v178;
      (*(v178 + 32))(v93, v95, v28);
    }

    v98 = *(v97 + 32);
    v98(v179, v93, v28);
    v99 = v177;
    goto LABEL_21;
  }

  v162 = v57;
  v84 = v74;
  v85 = v178;
  v86 = *(v178 + 32);
  v87 = v147;
  v86(v147, v63, v28);
  sub_22D7640C4(v174, v60, &qword_27DA02000, &qword_22D81F160);
  if (v84(v60, 1, v28) == 1)
  {
    (*(v85 + 8))(v87, v28);
    sub_22D764440(v60, &qword_27DA02000, &qword_22D81F160);
    v69 = v164;
    v74 = v165;
    v82 = v151;
LABEL_11:
    v83 = v173;
    v57 = v162;
    goto LABEL_12;
  }

  v88 = v146;
  v145 = v86;
  v86(v146, v60, v28);
  sub_22D7B5C1C(&qword_27DA02340, MEMORY[0x277CC9578]);
  v89 = sub_22D81B1F8();
  v82 = v151;
  v90 = v87;
  if (v89)
  {
    v91 = *(v178 + 8);
    v91(v88, v28);
    v91(v87, v28);
    v69 = v164;
    v74 = v165;
    goto LABEL_11;
  }

  v137 = v88;
  v138 = v178;
  (*(v178 + 16))(v179, v90, v28);
  v139 = objc_opt_self();
  v182 = 0;
  v183 = 0xE000000000000000;
  sub_22D81B838();
  MEMORY[0x2318D1A50](0xD000000000000073, 0x800000022D82ACD0);
  sub_22D7B5C1C(&qword_27DA03020, MEMORY[0x277CC9578]);
  v140 = sub_22D81BAD8();
  MEMORY[0x2318D1A50](v140);

  MEMORY[0x2318D1A50](0xD000000000000010, 0x800000022D82AD50);
  v141 = sub_22D81BAD8();
  MEMORY[0x2318D1A50](v141);

  MEMORY[0x2318D1A50](39, 0xE100000000000000);
  v142 = sub_22D81B2B8();

  [v139 logError_];

  v143 = *(v138 + 8);
  v143(v137, v28);
  v143(v90, v28);
  v99 = v177;
  v74 = v165;
  v83 = v173;
  v98 = v145;
LABEL_21:
  sub_22D7640C4(v83, v82, &qword_27DA02000, &qword_22D81F160);
  v100 = v74(v82, 1, v28);
  v148 = v28;
  if (v100 == 1)
  {
    sub_22D81A888();
    if (v74(v82, 1, v28) != 1)
    {
      sub_22D764440(v82, &qword_27DA02000, &qword_22D81F160);
    }
  }

  else
  {
    v98(v99, v82, v28);
  }

  v101 = v153;
  v102 = v152;
  v103 = v154;
  (*(v153 + 104))(v152, *MEMORY[0x277CC9830], v154);
  sub_22D81A978();
  (*(v101 + 8))(v102, v103);
  v104 = v180[2];
  v154 = (v180 + 2);
  v162 = v104;
  (v104)(v155, v168, v176);
  sub_22D81AA28();
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03048, &qword_22D822ED0);
  v105 = sub_22D81AA38();
  v106 = *(v105 - 8);
  v107 = *(v106 + 72);
  v108 = (*(v106 + 80) + 32) & ~*(v106 + 80);
  v109 = 2 * v107;
  v153 = 3 * v107;
  v110 = v107;
  v151 = v107;
  v111 = swift_allocObject();
  v152 = xmmword_22D81E100;
  *(v111 + 16) = xmmword_22D81E100;
  v112 = *(v106 + 104);
  v112(v111 + v108, *MEMORY[0x277CC9988], v105);
  v112(&v110[v111 + v108], *MEMORY[0x277CC9998], v105);
  v112(v111 + v108 + v109, *MEMORY[0x277CC9968], v105);
  sub_22D7DF8A4(v111);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22D81A9B8();

  v113 = swift_allocObject();
  *(v113 + 16) = v152;
  v112(v113 + v108, *MEMORY[0x277CC9980], v105);
  v112(&v151[v113 + v108], *MEMORY[0x277CC99A0], v105);
  v112(v113 + v108 + v109, *MEMORY[0x277CC99A8], v105);
  sub_22D7DF8A4(v113);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22D81A9B8();

  (*(v170 + 56))(v167, 1, 1, v171);
  v114 = v180[7];
  v180 += 7;
  v155 = v114;
  v115 = v157;
  (v114)(v157, 1, 1, v176);
  v153 = sub_22D81A678();
  LODWORD(v151) = v116;
  *&v152 = sub_22D81A688();
  LODWORD(v150) = v117;
  sub_22D81A638();
  sub_22D81A658();
  sub_22D81A6A8();
  sub_22D81A6C8();
  v118 = v159;
  sub_22D81A6E8();
  v119 = v176;
  (v162)(v115, v168, v176);
  (v155)(v115, 0, 1, v119);
  sub_22D81A6F8();
  v120 = v169;
  sub_22D81AA18();
  v121 = v120;
  v122 = v156;
  sub_22D7640C4(v121, v156, &qword_27DA02000, &qword_22D81F160);
  v28 = v148;
  if (v165(v122, 1, v148) == 1)
  {
    sub_22D764440(v122, &qword_27DA02000, &qword_22D81F160);
    v123 = objc_opt_self();
    v182 = 0;
    v183 = 0xE000000000000000;
    sub_22D81B838();
    MEMORY[0x2318D1A50](0xD00000000000004BLL, 0x800000022D82AC60);
    sub_22D7B5C1C(&qword_27DA03050, MEMORY[0x277CC8990]);
    v124 = v161;
    v125 = sub_22D81BAD8();
    MEMORY[0x2318D1A50](v125);

    MEMORY[0x2318D1A50](0x696D2C72756F680ALL, 0xED00003D6574756ELL);
    v126 = v172;
    v127 = sub_22D81BAD8();
    MEMORY[0x2318D1A50](v127);

    MEMORY[0x2318D1A50](39, 0xE100000000000000);
    v128 = sub_22D81B2B8();

    [v123 logError_];

    v80 = v178;
    v129 = v158;
    (*(v178 + 16))(v158, v179, v28);
  }

  else
  {
    v80 = v178;
    v129 = v158;
    (*(v178 + 32))(v158, v122, v28);
    v124 = v161;
    v126 = v172;
  }

  v130 = objc_opt_self();
  v182 = 0;
  v183 = 0xE000000000000000;
  sub_22D81B838();

  v182 = 0xD00000000000001ELL;
  v183 = 0x800000022D82ACB0;
  sub_22D7B5C1C(&qword_27DA03020, MEMORY[0x277CC9578]);
  v131 = sub_22D81BAD8();
  v132 = v129;
  MEMORY[0x2318D1A50](v131);

  v133 = sub_22D81B2B8();

  [v130 logInfo_];

  sub_22D764440(v169, &qword_27DA02000, &qword_22D81F160);
  v134 = *(v160 + 8);
  v134(v118, v124);
  v134(v126, v124);
  v134(v175, v124);
  (*(v170 + 8))(v181, v171);
  v135 = *(v80 + 8);
  v135(v177, v28);
  v135(v179, v28);
  sub_22D764440(v173, &qword_27DA02000, &qword_22D81F160);
  v79 = v163;
  (*(v80 + 32))(v163, v132, v28);
  v78 = 0;
  v69 = v164;
LABEL_29:
  (*(v80 + 56))(v79, v78, 1, v28);
  sub_22D764440(v174, &qword_27DA02000, &qword_22D81F160);
  return sub_22D764440(v69, &qword_27DA02000, &qword_22D81F160);
}

uint64_t sub_22D7B2E3C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v117 = &v101 - v10;
  v11 = sub_22D81AAB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D81A968();
  v115 = *(v16 - 8);
  v116 = v16;
  v17 = *(v115 + 64);
  MEMORY[0x28223BE20](v16);
  v114 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D81AA48();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02958, &qword_22D822EC0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v113 = &v101 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03040, &qword_22D822EC8);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v112 = &v101 - v29;
  v30 = sub_22D81A708();
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v35 = &v101 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v101 = v15;
    v102 = v12;
    v103 = v11;
    v104 = a3;
    v105 = v35;
    v106 = v33;
    v107 = v32;
    v108 = v23;
    v109 = v20;
    v110 = a4;
    v111 = v19;
    v122 = a1;
    v123 = a2;
    v120 = 47;
    v121 = 0xE100000000000000;
    sub_22D77F62C();
    result = sub_22D81B738();
    v37 = result;
    v38 = *(result + 16);
    if (!v38)
    {
      v40 = MEMORY[0x277D84F90];
      goto LABEL_84;
    }

    v39 = 0;
    v119 = &v122 + 1;
    v40 = MEMORY[0x277D84F90];
    while (1)
    {
      v118 = v40;
      while (1)
      {
        if (v39 >= *(v37 + 16))
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
          return result;
        }

        v41 = (v37 + 32 + 16 * v39);
        v43 = *v41;
        v42 = v41[1];
        ++v39;
        v44 = HIBYTE(v42) & 0xF;
        v45 = v43 & 0xFFFFFFFFFFFFLL;
        if ((v42 & 0x2000000000000000) != 0)
        {
          v46 = HIBYTE(v42) & 0xF;
        }

        else
        {
          v46 = v43 & 0xFFFFFFFFFFFFLL;
        }

        if (!v46)
        {
          sub_22D81A398();
          goto LABEL_68;
        }

        if ((v42 & 0x1000000000000000) != 0)
        {
          break;
        }

        if ((v42 & 0x2000000000000000) != 0)
        {
          v122 = v43;
          v123 = v42 & 0xFFFFFFFFFFFFFFLL;
          if (v43 == 43)
          {
            if (!v44)
            {
              goto LABEL_91;
            }

            if (--v44)
            {
              v48 = 0;
              v58 = v119;
              while (1)
              {
                v59 = *v58 - 48;
                if (v59 > 9)
                {
                  break;
                }

                v60 = 10 * v48;
                if ((v48 * 10) >> 64 != (10 * v48) >> 63)
                {
                  break;
                }

                v48 = v60 + v59;
                if (__OFADD__(v60, v59))
                {
                  break;
                }

                ++v58;
                if (!--v44)
                {
                  goto LABEL_67;
                }
              }
            }
          }

          else if (v43 == 45)
          {
            if (!v44)
            {
              goto LABEL_93;
            }

            if (--v44)
            {
              v48 = 0;
              v52 = v119;
              while (1)
              {
                v53 = *v52 - 48;
                if (v53 > 9)
                {
                  break;
                }

                v54 = 10 * v48;
                if ((v48 * 10) >> 64 != (10 * v48) >> 63)
                {
                  break;
                }

                v48 = v54 - v53;
                if (__OFSUB__(v54, v53))
                {
                  break;
                }

                ++v52;
                if (!--v44)
                {
                  goto LABEL_67;
                }
              }
            }
          }

          else if (v44)
          {
            v48 = 0;
            v63 = &v122;
            while (1)
            {
              v64 = *v63 - 48;
              if (v64 > 9)
              {
                break;
              }

              v65 = 10 * v48;
              if ((v48 * 10) >> 64 != (10 * v48) >> 63)
              {
                break;
              }

              v48 = v65 + v64;
              if (__OFADD__(v65, v64))
              {
                break;
              }

              v63 = (v63 + 1);
              if (!--v44)
              {
                goto LABEL_67;
              }
            }
          }
        }

        else
        {
          if ((v43 & 0x1000000000000000) != 0)
          {
            result = (v42 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            result = sub_22D81B878();
          }

          v47 = *result;
          if (v47 == 43)
          {
            if (v45 < 1)
            {
              goto LABEL_90;
            }

            v44 = v45 - 1;
            if (v45 != 1)
            {
              v48 = 0;
              if (!result)
              {
                goto LABEL_58;
              }

              v55 = (result + 1);
              while (1)
              {
                v56 = *v55 - 48;
                if (v56 > 9)
                {
                  break;
                }

                v57 = 10 * v48;
                if ((v48 * 10) >> 64 != (10 * v48) >> 63)
                {
                  break;
                }

                v48 = v57 + v56;
                if (__OFADD__(v57, v56))
                {
                  break;
                }

                ++v55;
                if (!--v44)
                {
                  goto LABEL_67;
                }
              }
            }
          }

          else if (v47 == 45)
          {
            if (v45 < 1)
            {
              goto LABEL_92;
            }

            v44 = v45 - 1;
            if (v45 != 1)
            {
              v48 = 0;
              if (!result)
              {
                goto LABEL_58;
              }

              v49 = (result + 1);
              while (1)
              {
                v50 = *v49 - 48;
                if (v50 > 9)
                {
                  break;
                }

                v51 = 10 * v48;
                if ((v48 * 10) >> 64 != (10 * v48) >> 63)
                {
                  break;
                }

                v48 = v51 - v50;
                if (__OFSUB__(v51, v50))
                {
                  break;
                }

                ++v49;
                if (!--v44)
                {
                  goto LABEL_67;
                }
              }
            }
          }

          else if (v45)
          {
            v48 = 0;
            if (!result)
            {
LABEL_58:
              LOBYTE(v44) = 0;
              goto LABEL_67;
            }

            while (1)
            {
              v61 = *result - 48;
              if (v61 > 9)
              {
                break;
              }

              v62 = 10 * v48;
              if ((v48 * 10) >> 64 != (10 * v48) >> 63)
              {
                break;
              }

              v48 = v62 + v61;
              if (__OFADD__(v62, v61))
              {
                break;
              }

              ++result;
              if (!--v45)
              {
                goto LABEL_58;
              }
            }
          }
        }

        v48 = 0;
        LOBYTE(v44) = 1;
LABEL_67:
        LOBYTE(v120) = v44;
        v66 = v44;
        sub_22D81A398();
        if ((v66 & 1) == 0)
        {
          goto LABEL_74;
        }

LABEL_68:
        v67 = objc_opt_self();
        v122 = 0;
        v123 = 0xE000000000000000;
        sub_22D81B838();

        v122 = 0xD000000000000012;
        v123 = 0x800000022D82AD70;
        MEMORY[0x2318D1A50](v43, v42);
        MEMORY[0x2318D1A50](0x746E69206F742027, 0xE800000000000000);
        v68 = sub_22D81B2B8();

        [v67 logError_];

        if (v39 == v38)
        {
          v40 = v118;
          goto LABEL_84;
        }
      }

      sub_22D81A398();
      v69 = sub_22D7B521C(v43, v42, 10);
      if (v70)
      {
        goto LABEL_68;
      }

      v48 = v69;
LABEL_74:

      v40 = v118;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22D7ED368(0, *(v40 + 16) + 1, 1, v40);
        v40 = result;
      }

      v72 = *(v40 + 16);
      v71 = *(v40 + 24);
      if (v72 >= v71 >> 1)
      {
        result = sub_22D7ED368((v71 > 1), v72 + 1, 1, v40);
        v40 = result;
      }

      *(v40 + 16) = v72 + 1;
      *(v40 + 8 * v72 + 32) = v48;
      if (v39 == v38)
      {
LABEL_84:
        if (*(v40 + 16) == 3)
        {
          v75 = *(v40 + 32);
          v76 = *(v40 + 40);
          v77 = *(v40 + 48);

          v78 = v109;
          (*(v109 + 56))(v112, 1, 1, v111);
          v79 = v102;
          v80 = v103;
          (*(v102 + 56))(v113, 1, 1, v103);
          v81 = v105;
          sub_22D81A6E8();
          v83 = v114;
          v82 = v115;
          v84 = v116;
          (*(v115 + 104))(v114, *MEMORY[0x277CC9830], v116);
          v85 = v108;
          sub_22D81A978();
          (*(v82 + 8))(v83, v84);
          (*(v79 + 16))(v101, v104, v80);
          sub_22D81AA28();
          v86 = v117;
          sub_22D81AA18();
          v87 = sub_22D81A8C8();
          v88 = *(v87 - 8);
          if ((*(v88 + 48))(v86, 1, v87) == 1)
          {
            sub_22D764440(v86, &qword_27DA02000, &qword_22D81F160);
            v89 = objc_opt_self();
            v122 = 0;
            v123 = 0xE000000000000000;
            sub_22D81B838();
            MEMORY[0x2318D1A50](0xD00000000000003ALL, 0x800000022D82ADE0);
            v90 = MEMORY[0x2318D1B50](v37, MEMORY[0x277D837D0]);
            v92 = v91;

            MEMORY[0x2318D1A50](v90, v92);

            MEMORY[0x2318D1A50](39, 0xE100000000000000);
            v93 = sub_22D81B2B8();

            [v89 logError_];

            (*(v78 + 8))(v85, v111);
            (*(v106 + 8))(v81, v107);
            return (*(v88 + 56))(v110, 1, 1, v87);
          }

          else
          {

            (*(v78 + 8))(v85, v111);
            (*(v106 + 8))(v81, v107);
            v100 = v110;
            (*(v88 + 32))(v110, v86, v87);
            return (*(v88 + 56))(v100, 0, 1, v87);
          }
        }

        else
        {

          v94 = objc_opt_self();
          v122 = 0;
          v123 = 0xE000000000000000;
          sub_22D81B838();

          v122 = 0xD000000000000021;
          v123 = 0x800000022D82ADB0;
          v95 = MEMORY[0x2318D1B50](v37, MEMORY[0x277D837D0]);
          v97 = v96;

          MEMORY[0x2318D1A50](v95, v97);

          MEMORY[0x2318D1A50](39, 0xE100000000000000);
          v98 = sub_22D81B2B8();

          [v94 logError_];

          v99 = sub_22D81A8C8();
          return (*(*(v99 - 8) + 56))(v110, 1, 1, v99);
        }
      }
    }
  }

  v73 = sub_22D81A8C8();
  v74 = *(*(v73 - 8) + 56);

  return v74(a4, 1, 1, v73);
}