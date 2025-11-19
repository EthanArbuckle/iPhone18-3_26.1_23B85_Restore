unint64_t sub_252566C20()
{
  result = qword_27F4DBCC0;
  if (!qword_27F4DBCC0)
  {
    type metadata accessor for AnimationModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBCC0);
  }

  return result;
}

void sub_252566CD0()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_252566E08(319, &qword_27F4E2938, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AccessoryControlsHeaderConfig(319);
      if (v2 <= 0x3F)
      {
        sub_252566E08(319, &qword_27F4DBD08, &type metadata for AccessoryControlsStyle, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_252566E08(319, &qword_27F4E2530, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_252566E08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_252566E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a1;
  v69 = a2;
  v70 = sub_2526915C0();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v61[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2940);
  MEMORY[0x28223BE20](v65);
  v66 = &v61[-v5];
  v6 = sub_2526910F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v61[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for HeaderViewModifier.ScrollView(0);
  v11 = (v3 + v10[10]);
  v12 = *v11;
  v62 = *(v11 + 8);
  if (v62 == 1)
  {
    v84 = *&v12;
    v13 = *&v12;
  }

  else
  {

    sub_252692F00();
    v14 = v6;
    v15 = sub_2526919C0();
    sub_252690570();

    v6 = v14;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v12, 0);
    (*(v7 + 8))(v9, v14);
    v13 = v84;
  }

  v16 = v3 + v10[9];
  v83 = *(v16 + 32);
  v17 = *(v16 + 3);
  v82[2] = *(v16 + 2);
  v82[3] = v17;
  v18 = *(v16 + 1);
  v82[0] = *v16;
  v82[1] = v18;
  v71 = v10;
  if ((v83 & 0x100) != 0)
  {
    v19 = *(v16 + 3);
    v78 = *(v16 + 2);
    v79 = v19;
    LOBYTE(v80) = v16[64];
    v20 = *(v16 + 1);
    v76 = *v16;
    v77 = v20;
  }

  else
  {

    sub_252692F00();
    v21 = sub_2526919C0();
    sub_252690570();

    v10 = v71;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v82, &qword_27F4DC120);
    (*(v7 + 8))(v9, v6);
  }

  v22 = v10[7];
  LOBYTE(v74[0]) = BYTE1(v76);
  v63 = v22;
  v23 = sub_252564040((v3 + v22), v74, v13);
  if (v62)
  {
    v81 = *&v12;
    v24 = *&v12;
  }

  else
  {

    sub_252692F00();
    v25 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v12, 0);
    (*(v7 + 8))(v9, v6);
    v24 = v81;
  }

  v80 = *(v16 + 32);
  v26 = *(v16 + 3);
  v78 = *(v16 + 2);
  v79 = v26;
  v27 = *(v16 + 1);
  v76 = *v16;
  v77 = v27;
  if ((v80 & 0x100) != 0)
  {
    v28 = *(v16 + 3);
    v74[2] = *(v16 + 2);
    v74[3] = v28;
    v75 = v16[64];
    v29 = *(v16 + 1);
    v74[0] = *v16;
    v74[1] = v29;
  }

  else
  {

    sub_252692F00();
    v30 = v6;
    v31 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(&v76, &qword_27F4DC120);
    (*(v7 + 8))(v9, v30);
  }

  LOBYTE(v72[0]) = BYTE1(v74[0]);
  v32 = v63;
  sub_25256426C((v3 + v63), v72, v24);
  sub_2525675C4(v3);
  v34 = v33;
  v35 = sub_252692900();
  v37 = v36;
  sub_2525678CC(v3);
  v38 = v23;
  v40 = -v39;
  sub_252692920();
  sub_2526909C0();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2948);
  v42 = v66;
  (*(*(v41 - 8) + 16))(v66, v64, v41);
  v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2950) + 36);
  *v43 = v35;
  *(v43 + 8) = v37;
  *(v43 + 16) = 0;
  *(v43 + 24) = v40;
  v44 = v72[1];
  *(v43 + 32) = v72[0];
  *(v43 + 48) = v44;
  *(v43 + 64) = v72[2];
  v45 = sub_2526912E0();
  v46 = v65;
  v47 = (v42 + *(v65 + 36));
  v48 = *v3;
  v49 = v3[3];
  v50 = type metadata accessor for HeaderView(0);
  sub_252568A78(v3 + v32, v47 + v50[6], type metadata accessor for AccessoryControlsHeaderConfig);
  v51 = *(v3 + v71[8]);
  KeyPath = swift_getKeyPath();
  v73 = 0;
  *v47 = v48;
  v47[1] = v49;
  *(v47 + v50[7]) = v51;
  v53 = v47 + v50[8];
  *v53 = KeyPath;
  v53[65] = 0;
  v54 = sub_252690980();
  LOBYTE(v50) = MEMORY[0x2530A3600]((2 * v54));
  v55 = sub_252690CC0();
  v56 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2958) + 36);
  *v56 = v55;
  *(v56 + 1) = v34;
  v56[16] = 0;
  v56[17] = v50;
  *(v56 + 3) = v45;
  v57 = sub_252691A30();
  v58 = v67;
  sub_2526915B0();
  v59 = sub_2525688DC();
  MEMORY[0x2530A3A60](v57, *&v38 ^ 0x8000000000000000, 0, v58, v46, v59);
  (*(v68 + 8))(v58, v70);
  return sub_252372288(v42, &qword_27F4E2940);
}

uint64_t sub_2525675C4(uint64_t a1)
{
  v2 = sub_2526910F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for HeaderViewModifier.ScrollView(0);
  v7 = result;
  v8 = a1 + *(result + 36);
  v20 = *(v8 + 64);
  v9 = *(v8 + 48);
  v19[2] = *(v8 + 32);
  v19[3] = v9;
  v10 = *(v8 + 16);
  v19[0] = *v8;
  v19[1] = v10;
  if ((v20 & 0x100) != 0)
  {
    v11 = *(v8 + 48);
    v17[2] = *(v8 + 32);
    v17[3] = v11;
    v18 = *(v8 + 64);
    v12 = *(v8 + 16);
    v17[0] = *v8;
    v17[1] = v12;
  }

  else
  {

    sub_252692F00();
    v13 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v19, &qword_27F4DC120);
    result = (*(v3 + 8))(v5, v2);
  }

  if (BYTE1(v17[0]) != 1)
  {
    if (*(a1 + *(v7 + 44)))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      if (*v17 <= 0.0)
      {
        v14 = a1 + *(v7 + 40);
        v15 = *v14;
        if (*(v14 + 8) != 1)
        {

          sub_252692F00();
          v16 = sub_2526919C0();
          sub_252690570();

          sub_2526910E0();
          swift_getAtKeyPath();
          sub_25235E264(v15, 0);
          return (*(v3 + 8))(v5, v2);
        }
      }
    }

    else
    {
      type metadata accessor for AnimationModel();
      sub_252566C20();
      result = sub_252690DE0();
      __break(1u);
    }
  }

  return result;
}

void sub_2525678CC(uint64_t a1)
{
  v2 = sub_2526910F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeaderViewModifier.ScrollView(0);
  v7 = a1 + *(v6 + 36);
  v21 = *(v7 + 64);
  v8 = *(v7 + 48);
  v20[2] = *(v7 + 32);
  v20[3] = v8;
  v9 = *(v7 + 16);
  v20[0] = *v7;
  v20[1] = v9;
  if ((v21 & 0x100) != 0)
  {
    v10 = *(v7 + 48);
    v18[2] = *(v7 + 32);
    v18[3] = v10;
    v19 = *(v7 + 64);
    v11 = *(v7 + 16);
    v18[0] = *v7;
    v18[1] = v11;
  }

  else
  {

    sub_252692F00();
    v12 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v20, &qword_27F4DC120);
    (*(v3 + 8))(v5, v2);
  }

  if (BYTE1(v18[0]) != 1)
  {
    v13 = [objc_opt_self() currentDevice];
    v14 = [v13 userInterfaceIdiom];

    if (v14)
    {
      v15 = a1 + *(v6 + 40);
      v16 = *v15;
      if (*(v15 + 8) != 1)
      {

        sub_252692F00();
        v17 = sub_2526919C0();
        sub_252690570();

        sub_2526910E0();
        swift_getAtKeyPath();
        sub_25235E264(v16, 0);
        (*(v3 + 8))(v5, v2);
      }
    }
  }
}

uint64_t sub_252567B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a1;
  v57 = a2;
  v4 = type metadata accessor for HeaderViewModifier.ScrollViewVStack(0);
  v54 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v55 = v5;
  v56 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2990);
  MEMORY[0x28223BE20](v51);
  v53 = &v50 - v6;
  v7 = sub_2526910F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3 + v4[8];
  v12 = *v11;
  v58 = *(v11 + 8);
  if (v58 == 1)
  {
    v72 = *&v12;
    v13 = *&v12;
  }

  else
  {

    sub_252692F00();
    v14 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v12, 0);
    (*(v8 + 8))(v10, v7);
    v13 = v72;
  }

  v15 = v3 + v4[7];
  v71 = *(v15 + 64);
  v16 = *(v15 + 48);
  v70[2] = *(v15 + 32);
  v70[3] = v16;
  v17 = *(v15 + 16);
  v70[0] = *v15;
  v70[1] = v17;
  v59 = v8;
  if ((v71 & 0x100) != 0)
  {
    v18 = *(v15 + 48);
    v75 = *(v15 + 32);
    v76 = v18;
    LOBYTE(v77) = *(v15 + 64);
    v19 = *(v15 + 16);
    v73 = *v15;
    v74 = v19;
  }

  else
  {

    sub_252692F00();
    v20 = sub_2526919C0();
    sub_252690570();

    v8 = v59;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v70, &qword_27F4DC120);
    (*(v8 + 8))(v10, v7);
  }

  v21 = v4[6];
  LOBYTE(v67[0]) = BYTE1(v73);
  sub_252564040((v3 + v21), v67, v13);
  if (v58)
  {
    v69 = *&v12;
    v22 = *&v12;
  }

  else
  {

    sub_252692F00();
    v23 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v12, 0);
    (*(v8 + 8))(v10, v7);
    v22 = v69;
  }

  v68 = *(v15 + 64);
  v24 = *(v15 + 48);
  v67[2] = *(v15 + 32);
  v67[3] = v24;
  v25 = *(v15 + 16);
  v67[0] = *v15;
  v67[1] = v25;
  if ((v68 & 0x100) != 0)
  {
    v26 = *(v15 + 48);
    v64 = *(v15 + 32);
    v65 = v26;
    v66 = *(v15 + 64);
    v27 = *(v15 + 16);
    v62 = *v15;
    v63 = v27;
  }

  else
  {

    sub_252692F00();
    v28 = sub_2526919C0();
    sub_252690570();

    v8 = v59;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v67, &qword_27F4DC120);
    (*(v8 + 8))(v10, v7);
  }

  LOBYTE(v73) = BYTE1(v62);
  sub_25256426C((v3 + v21), &v73, v22);
  v61 = *(v15 + 64);
  v29 = *(v15 + 48);
  v60[2] = *(v15 + 32);
  v60[3] = v29;
  v30 = *(v15 + 16);
  v60[0] = *v15;
  v60[1] = v30;
  if ((v61 & 0x100) != 0)
  {
    v31 = *(v15 + 48);
    v75 = *(v15 + 32);
    v76 = v31;
    LOBYTE(v77) = *(v15 + 64);
    v32 = *(v15 + 16);
    v73 = *v15;
    v74 = v32;
  }

  else
  {

    sub_252692F00();
    v33 = sub_2526919C0();
    sub_252690570();

    v8 = v59;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v60, &qword_27F4DC120);
    (*(v8 + 8))(v10, v7);
  }

  if (BYTE1(v73) != 1 && !v58)
  {

    sub_252692F00();
    v34 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v12, 0);
    (*(v8 + 8))(v10, v7);
  }

  sub_252692920();
  sub_252690D70();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2998);
  v36 = v53;
  (*(*(v35 - 8) + 16))(v53, v52, v35);
  v37 = (v36 + *(v51 + 36));
  v38 = v78;
  v37[4] = v77;
  v37[5] = v38;
  v37[6] = v79;
  v39 = v74;
  *v37 = v73;
  v37[1] = v39;
  v40 = v76;
  v37[2] = v75;
  v37[3] = v40;
  v41 = sub_252692920();
  v43 = v42;
  v44 = v56;
  sub_252568A78(v3, v56, type metadata accessor for HeaderViewModifier.ScrollViewVStack);
  v45 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v46 = swift_allocObject();
  sub_252568AE0(v44, v46 + v45);
  v47 = v57;
  sub_252568BC4(v36, v57);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E29A0);
  v49 = (v47 + *(result + 36));
  *v49 = sub_252568B44;
  v49[1] = v46;
  v49[2] = v41;
  v49[3] = v43;
  return result;
}

__n128 sub_2525683E8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = sub_252690A20();
  v6 = *(v33 - 8);
  v32 = *(v6 + 64);
  MEMORY[0x28223BE20](v33);
  v8 = &v28.i8[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for HeaderViewModifier.ScrollViewVStack(0);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28.i8[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_2526914C0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28.i8[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = sub_252692310();
  sub_252691680();
  sub_252690A10();
  v28 = v35;
  v29 = v34;
  (*(v13 + 8))(v15, v12);
  if (v36)
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  v17 = vdupq_n_s64(v16);
  v28 = vbicq_s8(v28, v17);
  v29 = vbicq_s8(v29, v17);
  sub_252568A78(a2, v28.i64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeaderViewModifier.ScrollViewVStack);
  v18 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v30 = swift_allocObject();
  sub_252568AE0(v11, v30 + v18);
  sub_252568A78(a2, v11, type metadata accessor for HeaderViewModifier.ScrollViewVStack);
  v19 = v6;
  v20 = *(v6 + 16);
  v21 = v8;
  v22 = v8;
  v23 = v33;
  v20(v22, a1, v33);
  v24 = (v18 + v10 + *(v19 + 80)) & ~*(v19 + 80);
  v25 = swift_allocObject();
  sub_252568AE0(v11, v25 + v18);
  (*(v19 + 32))(v25 + v24, v21, v23);
  v26 = v30;
  *a3 = v31;
  result = v29;
  *(a3 + 24) = v28;
  *(a3 + 8) = result;
  *(a3 + 40) = sub_252568E34;
  *(a3 + 48) = v26;
  *(a3 + 56) = sub_252568EA4;
  *(a3 + 64) = v25;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  return result;
}

uint64_t sub_252568790(void *a1)
{
  v2 = sub_2526914C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252691680();
  sub_252690A10();
  (*(v3 + 8))(v5, v2);
  v6 = *&v10[6];
  if (v11)
  {
    v6 = 0.0;
  }

  v7 = a1[3];
  v8 = a1[4];
  v10[2] = a1[2];
  v10[3] = v7;
  v10[4] = v8;
  *&v10[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E29A8);
  return sub_2526926B0();
}

unint64_t sub_2525688DC()
{
  result = qword_27F4E2960;
  if (!qword_27F4E2960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2940);
    sub_252568994();
    sub_252400FC8(&qword_27F4E2988, &qword_27F4E2958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2960);
  }

  return result;
}

unint64_t sub_252568994()
{
  result = qword_27F4E2968;
  if (!qword_27F4E2968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2950);
    sub_252400FC8(&qword_27F4E2970, &qword_27F4E2948);
    sub_252400FC8(&qword_27F4E2978, &qword_27F4E2980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2968);
  }

  return result;
}

uint64_t sub_252568A78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252568AE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeaderViewModifier.ScrollViewVStack(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_252568B44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HeaderViewModifier.ScrollViewVStack(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  *&result = sub_2525683E8(a1, v6, a2).n128_u64[0];
  return result;
}

uint64_t sub_252568BC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_26()
{
  v1 = type metadata accessor for HeaderViewModifier.ScrollViewVStack(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[6];

  v7 = v6 + *(type metadata accessor for AccessoryControlsHeaderConfig(0) + 24);
  v8 = type metadata accessor for AccessoryControlsHeaderConfig.Image(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

    if (EnumCaseMultiPayload != 1)
    {
      v10 = *(type metadata accessor for IconDescriptor() + 20);
      v11 = sub_25268F910();
      (*(*(v11 - 8) + 8))(v7 + v10, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC898);
    }
  }

  v12 = v5 + v1[7];
  sub_252457A80(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40), *(v12 + 48), *(v12 + 56), *(v12 + 64), *(v12 + 65));
  sub_25235E264(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252568E34()
{
  type metadata accessor for HeaderViewModifier.ScrollViewVStack(0);

  return sub_252568730();
}

uint64_t sub_252568EA4()
{
  v1 = *(type metadata accessor for HeaderViewModifier.ScrollViewVStack(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_252690A20();

  return sub_252568790((v0 + v2));
}

unint64_t sub_252568F70()
{
  result = qword_27F4E29B0;
  if (!qword_27F4E29B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E29A0);
    sub_252569028();
    sub_252400FC8(&qword_27F4E29C8, &qword_27F4E29D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E29B0);
  }

  return result;
}

unint64_t sub_252569028()
{
  result = qword_27F4E29B8;
  if (!qword_27F4E29B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2990);
    sub_252400FC8(&qword_27F4E29C0, &qword_27F4E2998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E29B8);
  }

  return result;
}

uint64_t sub_252569114(uint64_t result, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v26 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 32); ; i += 5)
    {
      v8 = i[1];
      v9 = i[3];
      v23 = i[2];
      v24 = v9;
      v10 = i[3];
      v25 = i[4];
      v11 = i[1];
      v22[0] = *i;
      v22[1] = v11;
      v19 = v23;
      v20 = v10;
      v21 = i[4];
      v17 = v22[0];
      v18 = v8;
      sub_2523EAF48(v22, &v12);
      a2(&v26, &v17);
      if (v4)
      {
        break;
      }

      v14 = v19;
      v15 = v20;
      v16 = v21;
      v12 = v17;
      v13 = v18;
      sub_2523EAFA4(&v12);
      if (!--v5)
      {
        return v26;
      }
    }

    v14 = v19;
    v15 = v20;
    v16 = v21;
    v12 = v17;
    v13 = v18;
    sub_2523EAFA4(&v12);
  }

  return result;
}

uint64_t sub_252569274(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = 0;
  v13 = a1;
  v10 = *(a4 + 16);
  while (v10 != v9)
  {
    v11 = *(a5(0) - 8);
    a2(&v13, a4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++);
    if (v5)
    {
    }
  }

  return v13;
}

uint64_t sub_252569368(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2AB0);
  MEMORY[0x28223BE20](v24);
  v9 = &v24 - v8;
  v28 = a1;
  v10 = a4 + 64;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 64);
  v14 = (v11 + 63) >> 6;
  v26 = a4;

  v16 = 0;
  while (v13)
  {
    v27 = v5;
    v17 = v16;
LABEL_10:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v17 << 6);
    v20 = v26;
    v21 = *(v26 + 48);
    v22 = type metadata accessor for AccessoryControl.ElementIdentifier();
    sub_25256EF18(v21 + *(*(v22 - 8) + 72) * v19, v9, type metadata accessor for AccessoryControl.ElementIdentifier);
    *&v9[*(v24 + 48)] = *(*(v20 + 56) + 8 * v19);

    v23 = v27;
    v25(&v28, v9);
    v5 = v23;
    result = sub_252372288(v9, &qword_27F4E2AB0);
    if (v23)
    {
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      return v28;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v27 = v5;
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25256955C@<X0>(BOOL *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v7[0] = v3;
  v7[1] = v4;
  v7[2] = v5;
  v7[3] = v6;
  if (*(&v3 + 1) != 1)
  {
    result = sub_252372288(v7, &qword_27F4DBB00);
  }

  *a1 = *(&v3 + 1) != 1;
  return result;
}

_BYTE *sub_252569614(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_252690690();
  }

  return result;
}

double sub_2525696A0(uint64_t a1)
{
  v48 = type metadata accessor for Device.Control(0);
  v2 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v43 - v5;
  v44 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v44);
  v45 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B88);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - v22;
  v24 = (a1 + *(type metadata accessor for AccessoryControlContainerView(0) + 28));
  v50 = *v24;
  v51 = *(v24 + 1);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B90);
  MEMORY[0x2530A4210](&v49, v25);
  v26 = v49;
  if (*(v49 + 16))
  {
    v27 = type metadata accessor for Device.ControlModule(0);
    v28 = *(v27 - 8);
    sub_25256EF18(v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v23, type metadata accessor for Device.ControlModule);

    (*(v28 + 56))(v23, 0, 1, v27);
  }

  else
  {

    v27 = type metadata accessor for Device.ControlModule(0);
    (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  }

  sub_25237153C(v23, v20, &qword_27F4E2B88);
  type metadata accessor for Device.ControlModule(0);
  if ((*(*(v27 - 8) + 48))(v20, 1, v27) == 1)
  {
    sub_252372288(v20, &qword_27F4E2B88);
  }

  else
  {
    v29 = *(v20 + 2);

    sub_25256F704(v20, type metadata accessor for Device.ControlModule);
    if (*(v29 + 16))
    {
      v30 = type metadata accessor for Device.ControlGroup(0);
      v31 = *(v30 - 8);
      sub_25256EF18(v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v17, type metadata accessor for Device.ControlGroup);

      (*(v31 + 56))(v17, 0, 1, v30);
      goto LABEL_10;
    }
  }

  v30 = type metadata accessor for Device.ControlGroup(0);
  (*(*(v30 - 8) + 56))(v17, 1, 1, v30);
LABEL_10:
  sub_25237153C(v17, v14, &qword_27F4E2B80);
  type metadata accessor for Device.ControlGroup(0);
  if ((*(*(v30 - 8) + 48))(v14, 1, v30) == 1)
  {
    sub_252372288(v14, &qword_27F4E2B80);
    v32 = 1;
    v33 = v47;
  }

  else
  {
    v34 = v45;
    sub_25256EF18(v14, v45, type metadata accessor for Device.ControlGroup.LayoutType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v33 = v47;
    if (EnumCaseMultiPayload > 1)
    {
      v37 = v43;
      sub_25256EF80(v34, v43, type metadata accessor for Device.Control);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8);
      v38 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_252694E90;
      sub_25256EF80(v37, v36 + v38, type metadata accessor for Device.Control);
    }

    else
    {
      v36 = *v34;
    }

    sub_25256F704(v14, type metadata accessor for Device.ControlGroup);
    if (*(v36 + 16))
    {
      sub_25256EF18(v36 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v11, type metadata accessor for Device.Control);

      v32 = 0;
    }

    else
    {

      v32 = 1;
    }
  }

  v39 = v48;
  (*(v2 + 56))(v11, v32, 1, v48);
  sub_25237153C(v11, v33, &qword_27F4E2B78);
  if ((*(v2 + 48))(v33, 1, v39) == 1)
  {
    sub_252372288(v11, &qword_27F4E2B78);
    sub_252372288(v17, &qword_27F4E2B80);
    sub_252372288(v23, &qword_27F4E2B88);
    sub_252372288(v33, &qword_27F4E2B78);
    return 20.0;
  }

  v41 = v46;
  sub_25256EF80(v33, v46, type metadata accessor for Device.Control);
  LOBYTE(v49) = 3;
  Device.Control.viewType(with:)(&v49, &v50);
  sub_25256F704(v41, type metadata accessor for Device.Control);
  sub_252372288(v11, &qword_27F4E2B78);
  sub_252372288(v17, &qword_27F4E2B80);
  sub_252372288(v23, &qword_27F4E2B88);
  result = 0.0;
  if (v50 <= 0xFu)
  {
    if (((1 << v50) & 0x2011) != 0)
    {
      return 40.0;
    }

    if (((1 << v50) & 0x8C00) == 0)
    {
      return result;
    }

    return 100.0;
  }

  return result;
}

uint64_t sub_252569F2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v27 = a2;
  v8 = sub_252690A20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = type metadata accessor for AccessoryControlContainerView(0);
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_2526928B0();
  a3[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2A80);
  sub_25256A290(a2, (a3 + *(v15 + 44)), a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2A88);
  sub_25256D23C();
  sub_2526919D0();
  sub_2526909F0();
  sub_2526909F0();
  sub_252692920();
  sub_2526909C0();
  v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2A98) + 36));
  v17 = v30;
  *v16 = v29;
  v16[1] = v17;
  v16[2] = v31;
  type metadata accessor for AnimationModel();
  sub_25256F0DC(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  v18 = sub_252690DF0();
  v20 = v19;
  v21 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2AA0) + 36));
  *v21 = v18;
  v21[1] = v20;
  sub_25256EF18(v27, v13, type metadata accessor for AccessoryControlContainerView);
  (*(v9 + 16))(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v22 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v23 = (v12 + *(v9 + 80) + v22) & ~*(v9 + 80);
  v24 = swift_allocObject();
  sub_25256EF80(v13, v24 + v22, type metadata accessor for AccessoryControlContainerView);
  (*(v9 + 32))(v24 + v23, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2AA8);
  v26 = (a3 + *(result + 36));
  *v26 = sub_25256D290;
  v26[1] = v24;
  return result;
}

uint64_t sub_25256A290@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v118 = a2;
  v121 = sub_2526910F0();
  v125 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v6 = v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Device();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106.i64[0] = type metadata accessor for AccessoryControlContainerView.SheetView(0);
  MEMORY[0x28223BE20](v106.i64[0]);
  v11 = (v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2AC0);
  MEMORY[0x28223BE20](v128);
  v123 = v105 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2AC8);
  v108 = *(v13 - 8);
  v109 = v13;
  MEMORY[0x28223BE20](v13);
  v119 = v105 - v14;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2AD0);
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v110 = v105 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2AD8);
  v116 = *(v16 - 8);
  v117 = v16;
  MEMORY[0x28223BE20](v16);
  v115 = v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v127 = v105 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2AE0);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v113 = v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = (v105 - v24);
  v111 = sub_252692310();
  *v25 = sub_252692920();
  v25[1] = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2AE8);
  sub_25256B054(a1, v25 + *(v27 + 44), a3);
  v28 = sub_252690CB0();
  v29 = sub_252691A20();
  v30 = *(v21 + 44);
  v126 = v25;
  v31 = v25 + v30;
  *v31 = v28;
  v31[8] = v29;
  v32 = *a1;
  v33 = type metadata accessor for AccessoryControlContainerView(0);
  v34 = a1 + v33[6];
  v107.i64[0] = v9;
  sub_25256EF18(v34, v9, type metadata accessor for Device);
  v35 = (a1 + v33[7]);
  v36 = *v35;
  v37 = v35[1];
  v38 = v35[2];
  v124 = v33;
  v39 = v33[9];
  v122 = a1;
  v40 = a1 + v39;
  v162 = *(a1 + v39 + 64);
  v41 = *(a1 + v39 + 48);
  v161[2] = *(a1 + v39 + 32);
  v161[3] = v41;
  v42 = *(a1 + v39 + 16);
  v161[0] = *(a1 + v39);
  v161[1] = v42;
  v120 = v6;
  if ((v162 & 0x100) != 0)
  {
    v43 = *(v40 + 3);
    v158 = *(v40 + 2);
    v159 = v43;
    v160 = v40[64];
    v44 = *(v40 + 1);
    v156 = *v40;
    v157 = v44;
  }

  else
  {
    v105[1] = *&v161[0];

    sub_25237153C(v161, v155, &qword_27F4DC120);
    sub_252692F00();
    v45 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v161, &qword_27F4DC120);
    (*(v125 + 8))(v6, v121);
  }

  v152 = v158;
  v153 = v159;
  v154 = v160;
  v150 = v156;
  v151 = v157;
  *v11 = v32;
  v46 = v106.i64[0];
  sub_25256EF80(v107.i64[0], v11 + *(v106.i64[0] + 20), type metadata accessor for Device);
  v47 = (v11 + *(v46 + 24));
  *v47 = v36;
  v47[1] = v37;
  v47[2] = v38;
  v48 = v11 + *(v46 + 28);
  v49 = v153;
  *(v48 + 2) = v152;
  *(v48 + 3) = v49;
  v48[64] = v154;
  v50 = v151;
  *v48 = v150;
  *(v48 + 1) = v50;
  memcpy(v155, v122 + v124[8], sizeof(v155));
  v51 = sub_25256F008(v155);
  v52.i32[0] = 1;
  v53.i32[0] = v51;
  v54 = vdupq_lane_s32(*&vceqq_s32(v53, v52), 0);
  v106 = vbicq_s8(*&v155[53], v54);
  v107 = vbicq_s8(*&v155[51], v54);
  v55 = v51 == 1;
  KeyPath = swift_getKeyPath();
  v146 = 0;
  v149 = v55;
  type metadata accessor for AnimationModel();
  sub_25256F0DC(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  v57 = sub_252690DF0();
  v59 = v58;
  v60 = v11;
  v61 = v123;
  sub_25256EF80(v60, v123, type metadata accessor for AccessoryControlContainerView.SheetView);
  v62 = v61 + *(v128 + 36);
  *v62 = KeyPath;
  *(v62 + 65) = 0;
  v63 = v107;
  *(v62 + 88) = v106;
  *(v62 + 72) = v63;
  *(v62 + 104) = v55;
  *(v62 + 112) = v57;
  *(v62 + 120) = v59;
  v148 = *(v40 + 32);
  v64 = *(v40 + 3);
  v147[2] = *(v40 + 2);
  v147[3] = v64;
  v65 = *(v40 + 1);
  v147[0] = *v40;
  v147[1] = v65;
  if ((v148 & 0x100) != 0)
  {
    v66 = *(v40 + 3);
    v143 = *(v40 + 2);
    v144 = v66;
    v145 = v40[64];
    v67 = *(v40 + 1);
    v141 = *v40;
    v142 = v67;
    v68 = v120;
    v69 = v121;
  }

  else
  {

    sub_252692F00();
    v70 = sub_2526919C0();
    sub_252690570();

    v68 = v120;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v147, &qword_27F4DC120);
    v69 = v121;
    (*(v125 + 8))(v68, v121);
  }

  v71 = v119;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2AF0);
  v73 = sub_25256F020();
  v74 = sub_25256F258();
  v75 = v123;
  sub_252691D70();
  sub_252372288(v75, &qword_27F4E2AC0);
  v140 = *(v40 + 32);
  v76 = *(v40 + 3);
  v139[2] = *(v40 + 2);
  v139[3] = v76;
  v77 = *(v40 + 1);
  v139[0] = *v40;
  v139[1] = v77;
  if ((v140 & 0x100) != 0)
  {
    v78 = *(v40 + 3);
    v136 = *(v40 + 2);
    v137 = v78;
    LOBYTE(v138) = v40[64];
    v79 = *(v40 + 1);
    v134 = *v40;
    v135 = v79;
    v80 = v125;
  }

  else
  {

    sub_252692F00();
    v81 = sub_2526919C0();
    v68 = v120;
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v139, &qword_27F4DC120);
    v80 = v125;
    (*(v125 + 8))(v68, v69);
  }

  if (v134 != 1)
  {
    v138 = *(v40 + 32);
    v82 = *(v40 + 3);
    v136 = *(v40 + 2);
    v137 = v82;
    v83 = *(v40 + 1);
    v134 = *v40;
    v135 = v83;
    if ((v138 & 0x100) != 0)
    {
      v84 = *(v40 + 3);
      v131 = *(v40 + 2);
      v132 = v84;
      v133 = v40[64];
      v85 = *(v40 + 1);
      v129 = *v40;
      v130 = v85;
    }

    else
    {

      sub_252692F00();
      v86 = sub_2526919C0();
      sub_252690570();

      sub_2526910E0();
      swift_getAtKeyPath();
      sub_252372288(&v134, &qword_27F4DC120);
      v71 = v119;
      (*(v80 + 8))(v68, v69);
    }
  }

  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B38);
  *&v134 = v128;
  *(&v134 + 1) = v72;
  *&v135 = v73;
  *(&v135 + 1) = v74;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v89 = sub_25256F338();
  v91 = v109;
  v90 = v110;
  sub_252691D70();
  (*(v108 + 8))(v71, v91);
  v92 = v122 + v124[10];
  v93 = *(v92 + 1);
  v128 = *v92;
  v125 = v93;
  LODWORD(v124) = v92[16];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v129 = v134;
  v130 = v135;
  v131 = v136;
  v132 = v137;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF0B0);
  *&v134 = v91;
  *(&v134 + 1) = v87;
  *&v135 = OpaqueTypeConformance2;
  *(&v135 + 1) = v89;
  swift_getOpaqueTypeConformance2();
  sub_25256F458();
  sub_2524B48F8();
  v94 = v114;
  v95 = v127;
  sub_252692120();
  v134 = v129;
  v135 = v130;
  v136 = v131;
  v137 = v132;
  sub_252372288(&v134, &qword_27F4DBB00);
  (*(v112 + 8))(v90, v94);
  v96 = v113;
  sub_25237153C(v126, v113, &qword_27F4E2AE0);
  v98 = v115;
  v97 = v116;
  v99 = *(v116 + 16);
  v100 = v117;
  v99(v115, v95, v117);
  v101 = v118;
  *v118 = v111;
  *(v101 + 4) = 256;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B50);
  sub_25237153C(v96, v101 + *(v102 + 48), &qword_27F4E2AE0);
  v99(v101 + *(v102 + 64), v98, v100);
  v103 = *(v97 + 8);

  v103(v127, v100);
  sub_252372288(v126, &qword_27F4E2AE0);
  v103(v98, v100);
  sub_252372288(v96, &qword_27F4E2AE0);
}

uint64_t sub_25256B054@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B58);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v38 - v8);
  v10 = type metadata accessor for AccessoryControlContainerView(0);
  v11 = *(v10 + 32);
  memcpy(v47, a1 + v11, sizeof(v47));
  memcpy(v48, a1 + v11, 0x1B8uLL);
  if (sub_25256F008(v48) == 1)
  {
    return (*(v7 + 56))(a2, 1, 1, v6);
  }

  v42 = *a1;
  v13 = v42;
  v14 = *(v10 + 24);
  v15 = type metadata accessor for TransitionTileView();
  sub_25256EF18(a1 + v14, v9 + *(v15 + 24), type metadata accessor for Device);
  *v9 = v13;
  memcpy(v9 + 1, v48, 0x1B8uLL);
  v16 = v9 + *(v15 + 28);
  KeyPath = swift_getKeyPath();
  v45 = 0;
  *v16 = KeyPath;
  v16[65] = 0;
  memcpy(v46, v47, sizeof(v46));
  sub_25237153C(v47, v44, &qword_27F4E2B60);
  sub_25256F4AC(v46, v44);
  type metadata accessor for AnimationModel();
  sub_25256F0DC(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  v41 = v7;
  v18 = sub_252690DF0();
  v20 = v19;
  v21 = sub_252690DF0();
  v23 = v22;
  v43 = 1;
  sub_2526924D0();
  v39 = v6;
  v40 = a2;
  v24 = v44[0];
  v25 = *(&v44[0] + 1);
  v26 = sub_252690DF0();
  v28 = v27;
  v29 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B68) + 36);
  *v29 = v18;
  *(v29 + 1) = v20;
  *(v29 + 2) = v21;
  *(v29 + 3) = v23;
  *(v29 + 4) = a3;
  v29[40] = v24;
  *(v29 + 6) = v25;
  *(v29 + 7) = v26;
  v30 = v42;
  *(v29 + 8) = v28;
  *(v29 + 9) = v30;
  v31 = v48[51];
  v32 = v48[52];
  sub_252692920();
  sub_2526909C0();
  sub_252372288(v47, &qword_27F4E2B60);
  v33 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B70) + 36));
  v34 = v44[1];
  *v33 = v44[0];
  v33[1] = v34;
  v33[2] = v44[2];
  v35 = v39;
  v36 = v40;
  v37 = (v9 + *(v39 + 36));
  *v37 = v31;
  v37[1] = v32;
  sub_2523714D4(v9, v36, &qword_27F4E2B58);
  return (*(v41 + 56))(v36, 0, 1, v35);
}

uint64_t sub_25256B3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AnimationModel();
  sub_25256F0DC(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  v4 = sub_252690DF0();
  v6 = v5;
  sub_25237153C(a1, a2, &qword_27F4E2AC0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2AF0);
  v8 = (a2 + *(result + 36));
  *v8 = v4;
  v8[1] = v6;
  return result;
}

uint64_t sub_25256B4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B38) + 36);
  v5 = *MEMORY[0x277CDF3C0];
  v6 = sub_252690850();
  v7 = *(v6 - 8);
  (*(v7 + 104))(a2 + v4, v5, v6);
  (*(v7 + 56))(a2 + v4, 0, 1, v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2AC8);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

uint64_t sub_25256B5C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a1 + 16);
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v3;
  a2[2] = 0;
  a2[3] = v5;
}

uint64_t *sub_25256B5F0(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (byte_27F4FB500 == 1)
  {
    v10[12] = v3;
    v10[13] = v4;
    v6 = *result;
    v7 = *(a2 + 8);
    v8 = sub_25256ED10(MEMORY[0x277D84F90]);
    MEMORY[0x28223BE20](v8);
    v10[2] = a3;
    *(v7 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_controlViewFrames) = sub_252569368(v9, sub_25256EEFC, v10, v6);
  }

  return result;
}

uint64_t sub_25256B6B8(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2AB0);
  MEMORY[0x28223BE20](v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  sub_25237153C(a2, v16 - v8, &qword_27F4E2AB0);

  sub_25237153C(a2, v6, &qword_27F4E2AB0);
  type metadata accessor for CGRect(0);
  sub_252690A30();

  v10 = *v16;
  v11 = *&v16[1];
  v12 = *&v16[2];
  v13 = *&v16[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *a1;
  sub_25256DA6C(v9, isUniquelyReferenced_nonNull_native, v10, v11, v12, v13);
  sub_25256F704(v9, type metadata accessor for AccessoryControl.ElementIdentifier);
  *a1 = v17;
  return sub_25256F704(v6, type metadata accessor for AccessoryControl.ElementIdentifier);
}

uint64_t sub_25256B864@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AccessoryControlHorizontalSheetView();
  MEMORY[0x28223BE20](v3);
  v5 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2C10);
  MEMORY[0x28223BE20](v50);
  v7 = &v45 - v6;
  v8 = type metadata accessor for AccessoryControlSheetView(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AccessoryControlContainerView.SheetView(0);
  v12 = v11;
  if (*(v1 + *(v11 + 28) + 49))
  {
    v49 = v8;
    v13 = *v1;
    sub_25256EF18(v1 + *(v11 + 20), v5 + v3[5], type metadata accessor for Device);
    v14 = (v1 + *(v12 + 24));
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    *v5 = v13;
    v18 = (v5 + v3[6]);
    *v18 = v15;
    v18[1] = v16;
    v18[2] = v17;
    v19 = (v5 + v3[7]);
    type metadata accessor for AccessoryControlLegacyViewModel();
    sub_25256F0DC(&qword_27F4E0C50, type metadata accessor for AccessoryControlLegacyViewModel);

    *v19 = sub_252690DF0();
    v19[1] = v20;
    v21 = v5 + v3[8];
    KeyPath = swift_getKeyPath();
    LOBYTE(v52) = 0;
    *v21 = KeyPath;
    v21[65] = 0;
    sub_25256EF18(v5, v7, type metadata accessor for AccessoryControlHorizontalSheetView);
    swift_storeEnumTagMultiPayload();
    sub_25256F0DC(&qword_27F4E2C18, type metadata accessor for AccessoryControlSheetView);
    sub_25256F0DC(&qword_27F4E2C20, type metadata accessor for AccessoryControlHorizontalSheetView);
    sub_252691470();
    v23 = type metadata accessor for AccessoryControlHorizontalSheetView;
    v24 = v5;
  }

  else
  {
    v46 = *v1;
    sub_25256EF18(v1 + *(v11 + 20), v10 + *(v8 + 20), type metadata accessor for Device);
    v25 = (v1 + *(v12 + 24));
    v26 = v25[1];
    v45 = *v25;
    v47 = v7;
    v27 = v25[2];
    _s31SettingsPresentationCoordinatorCMa();
    v28 = swift_allocObject();
    *(v28 + 16) = 512;
    v29 = v8;
    v30 = OBJC_IVAR____TtCV22HomeAccessoryControlUI25AccessoryControlSheetView31SettingsPresentationCoordinator__source;
    v31 = type metadata accessor for Device.Control.Source(0);
    v32 = *(v31 - 8);
    v49 = v3;
    v33 = *(v32 + 56);
    v48 = a1;
    v33(v28 + v30, 1, 1, v31);
    v33(v28 + v30, 1, 1, v31);
    v34 = v45;

    sub_25268DB60();
    *v10 = v46;
    v35 = (v10 + v29[6]);
    *v35 = v34;
    v35[1] = v26;
    v35[2] = v27;
    v36 = (v10 + v29[7]);
    v51 = v28;
    sub_2526924D0();
    v37 = v53;
    *v36 = v52;
    v36[1] = v37;
    v38 = (v10 + v29[8]);
    type metadata accessor for AccessoryControlLegacyViewModel();
    sub_25256F0DC(&qword_27F4E0C50, type metadata accessor for AccessoryControlLegacyViewModel);
    *v38 = sub_252690DF0();
    v38[1] = v39;
    v40 = v10 + v29[9];
    v41 = swift_getKeyPath();
    v54 = 0;
    *v40 = v41;
    v40[65] = 0;
    v42 = (v10 + v29[10]);
    v51 = 0;
    sub_2526924D0();
    v43 = v53;
    *v42 = v52;
    v42[1] = v43;
    sub_25256EF18(v10, v47, type metadata accessor for AccessoryControlSheetView);
    swift_storeEnumTagMultiPayload();
    sub_25256F0DC(&qword_27F4E2C18, type metadata accessor for AccessoryControlSheetView);
    sub_25256F0DC(&qword_27F4E2C20, type metadata accessor for AccessoryControlHorizontalSheetView);
    sub_252691470();
    v23 = type metadata accessor for AccessoryControlSheetView;
    v24 = v10;
  }

  return sub_25256F704(v24, v23);
}

uint64_t sub_25256BE38@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = sub_2525696A0(v2);
  sub_25256EF18(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryControlContainerView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  result = sub_25256EF80(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for AccessoryControlContainerView);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  *a2 = sub_25256D190;
  a2[1] = v8;
  return result;
}

double sub_25256BF70@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_2526909F0();
  sub_2526909F0();
  sub_252692920();
  sub_2526909C0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2A78) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_25256C050@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2A70);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  result = (*(v5 + 32))(v10 + v9, v8, v4);
  *a2 = sub_25256D104;
  a2[1] = v10;
  return result;
}

uint64_t sub_25256C188@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2A60);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = v25 - v14;
  sub_2526909F0();
  sub_252692920();
  sub_2526909C0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2A58);
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  v17 = &v15[*(v13 + 44)];
  v18 = v25[1];
  *v17 = v25[0];
  *(v17 + 1) = v18;
  *(v17 + 2) = v25[2];
  sub_2526909F0();
  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  CGRectGetMidX(v26);
  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  CGRectGetMidY(v27);
  v20 = CGPointMake(v19);
  v22 = v21;
  sub_2523714D4(v15, a2, &qword_27F4E2A60);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2A68);
  v24 = (a2 + *(result + 36));
  *v24 = v20;
  *(v24 + 1) = v22;
  return result;
}

double sub_25256C3B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2A58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  (*(v6 + 16))(&v17 - v9, a1, v5, v8);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v10, v5);
  v13 = (v12 + ((v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = v2[1];
  *v13 = *v2;
  v13[1] = v14;
  v15 = sub_252691A20();
  *a2 = sub_25256D044;
  *(a2 + 8) = v12;
  *(a2 + 16) = v15;
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 1;
  return result;
}

uint64_t AccessoryControlSheetFrameModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E29D8);
  MEMORY[0x28223BE20](v4);
  v6 = v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E29E0);
  MEMORY[0x28223BE20](v7);
  v9 = v30 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E29E8);
  MEMORY[0x28223BE20](v34);
  v11 = v30 - v10;
  v12 = sub_2526910F0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2[3];
  v40[2] = v2[2];
  v40[3] = v17;
  v41 = *(v2 + 32);
  v18 = v2[1];
  v40[0] = *v2;
  v40[1] = v18;
  if (*(v2 + 104))
  {
    goto LABEL_6;
  }

  v31 = *(v2 + 88);
  v32 = *(v2 + 72);
  if ((v41 & 0x100) == 0)
  {
    v30[0] = v14;

    sub_252692F00();
    v26 = sub_2526919C0();
    v30[1] = v4;
    v27 = v26;
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v40, &qword_27F4DC120);
    (*(v13 + 8))(v16, v30[0]);
    if ((BYTE8(v35) & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E29F0);
    (*(*(v28 - 8) + 16))(v6, a1, v28);
    v24 = &qword_27F4E29D8;
    sub_25237153C(v6, v9, &qword_27F4E29D8);
    swift_storeEnumTagMultiPayload();
    sub_25256CA6C(&qword_27F4E29F8, &qword_27F4E29E8, &unk_2526A7900, sub_25256CA18);
    sub_25256CA6C(&qword_27F4E2A10, &qword_27F4E29D8, &unk_2526A78F0, sub_25256CB1C);
    sub_252691470();
    v25 = v6;
    return sub_252372288(v25, v24);
  }

  v19 = v2[3];
  v37 = v2[2];
  v38 = v19;
  v39 = *(v2 + 64);
  v20 = v2[1];
  v35 = *v2;
  v36 = v20;
  if (BYTE8(v35))
  {
    goto LABEL_6;
  }

LABEL_4:
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E29F0);
  (*(*(v21 - 8) + 16))(v11, a1, v21);
  v22 = &v11[*(v34 + 36)];
  v23 = v31;
  *v22 = v32;
  *(v22 + 1) = v23;
  v24 = &qword_27F4E29E8;
  sub_25237153C(v11, v9, &qword_27F4E29E8);
  swift_storeEnumTagMultiPayload();
  sub_25256CA6C(&qword_27F4E29F8, &qword_27F4E29E8, &unk_2526A7900, sub_25256CA18);
  sub_25256CA6C(&qword_27F4E2A10, &qword_27F4E29D8, &unk_2526A78F0, sub_25256CB1C);
  sub_252691470();
  v25 = v11;
  return sub_252372288(v25, v24);
}

unint64_t sub_25256CA18()
{
  result = qword_27F4E2A08;
  if (!qword_27F4E2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2A08);
  }

  return result;
}

uint64_t sub_25256CA6C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_252400FC8(&qword_27F4E2A00, &qword_27F4E29F0);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25256CB1C()
{
  result = qword_27F4E2A18;
  if (!qword_27F4E2A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2A18);
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_25256CBD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 105))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 65);
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

uint64_t sub_25256CC20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 65) = -a2;
    }
  }

  return result;
}

unint64_t sub_25256CC90()
{
  result = qword_27F4E2A20;
  if (!qword_27F4E2A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2A28);
    sub_25256CA6C(&qword_27F4E29F8, &qword_27F4E29E8, &unk_2526A7900, sub_25256CA18);
    sub_25256CA6C(&qword_27F4E2A10, &qword_27F4E29D8, &unk_2526A78F0, sub_25256CB1C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2A20);
  }

  return result;
}

void sub_25256CDBC()
{
  type metadata accessor for AccessoryControlLegacyViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Device();
    if (v1 <= 0x3F)
    {
      sub_25256CF1C();
      if (v2 <= 0x3F)
      {
        sub_25256CF80(319, &qword_27F4E2A50, &type metadata for TransitionTileView.Config, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_25256CF80(319, &qword_27F4DBD08, &type metadata for AccessoryControlsStyle, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_25256CF80(319, &qword_27F4E0438, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
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

void sub_25256CF1C()
{
  if (!qword_27F4E2A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2A48);
    v0 = sub_252692750();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4E2A40);
    }
  }
}

void sub_25256CF80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_25256D044@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2A58) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];

  return sub_25256C188(v1 + v4, a1, v6, v7, v8, v9);
}

double sub_25256D104@<D0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2A70) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25256BF70(v4, a1);
}

uint64_t sub_25256D190@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for AccessoryControlContainerView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_252569F2C(a1, (v2 + v6), a2, v7);
}

unint64_t sub_25256D23C()
{
  result = qword_27F4E2A90;
  if (!qword_27F4E2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2A90);
  }

  return result;
}

uint64_t *sub_25256D290(uint64_t *a1)
{
  v3 = *(type metadata accessor for AccessoryControlContainerView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_252690A20() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_25256B5F0(a1, v1 + v4, v7);
}

__n128 sub_25256D364@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  result = v6;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_25256D3F4(_OWORD *a1)
{
  v2 = a1[1];
  v8[0] = *a1;
  v8[1] = v2;
  v3 = a1[3];
  v8[2] = a1[2];
  v8[3] = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1[1];
  v7[4] = *a1;
  v7[5] = v4;
  v5 = a1[3];
  v7[6] = a1[2];
  v7[7] = v5;
  sub_25237153C(v8, v7, &qword_27F4DBB00);

  return sub_252690690();
}

unint64_t sub_25256D4A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_252372350(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_25236C640();
    result = v17;
    goto LABEL_8;
  }

  sub_252369ED8(v14, a3 & 1);
  result = sub_252372350(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_2526933E0();
  __break(1u);
  return result;
}

_OWORD *sub_25256D5C4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25268F4D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2523676D8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25236C9FC();
      goto LABEL_7;
    }

    sub_25236A4FC(v17, a3 & 1);
    v23 = sub_2523676D8(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25256DC08(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2526933E0();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);

  return sub_25235E20C(a1, v21);
}

uint64_t sub_25256D79C(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_2523674BC(a1);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
  }

  else
  {
    v17 = v12;
    v18 = v11[3];
    if (v18 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v19 = *v4;
      if (v17)
      {
LABEL_8:
        *(v19[7] + 8 * v13) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v18 >= result && (a2 & 1) == 0)
    {
      result = sub_25236CF00();
      goto LABEL_7;
    }

    sub_25236ACB0(result, a2 & 1);
    result = sub_2523674BC(a1);
    if ((v17 & 1) == (v20 & 1))
    {
      v13 = result;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_11:
      sub_25256EF18(a1, v10, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      return sub_25256DCC8(v13, v10, v19, a3);
    }
  }

  result = sub_2526933E0();
  __break(1u);
  return result;
}

uint64_t sub_25256D910(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_25236743C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_25236D37C();
      goto LABEL_7;
    }

    sub_25236B734(v15, a4 & 1);
    v22 = sub_25236743C(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2526933E0();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0) - 8) + 72) * v12;

    return sub_25256F508(a1, v20);
  }

LABEL_13:

  return sub_25256DE30(v12, a2, a3, a1, v18);
}

uint64_t sub_25256DA6C(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = type metadata accessor for AccessoryControl.ElementIdentifier();
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v6;
  v19 = sub_2523679CC(a1);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  result = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
  }

  else
  {
    v23 = v18;
    v24 = v17[3];
    if (v24 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v25 = *v7;
      if (v23)
      {
LABEL_8:
        v26 = (v25[7] + 32 * v19);
        *v26 = a3;
        v26[1] = a4;
        v26[2] = a5;
        v26[3] = a6;
        return result;
      }

      goto LABEL_11;
    }

    if (v24 >= result && (a2 & 1) == 0)
    {
      result = sub_25236D5D4();
      goto LABEL_7;
    }

    sub_25236BAAC(result, a2 & 1);
    result = sub_2523679CC(a1);
    if ((v23 & 1) == (v27 & 1))
    {
      v19 = result;
      v25 = *v7;
      if (v23)
      {
        goto LABEL_8;
      }

LABEL_11:
      sub_25256EF18(a1, v16, type metadata accessor for AccessoryControl.ElementIdentifier);
      return sub_25256DEE0(v19, v16, v25, a3, a4, a5, a6);
    }
  }

  result = sub_2526933E0();
  __break(1u);
  return result;
}

_OWORD *sub_25256DC08(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25268F4D0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_25235E20C(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_25256DCC8(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  result = sub_25256EF80(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_25256DD7C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  result = sub_25256EF80(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_25256DE30(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a5[6] + 16 * a1;
  *v8 = a2;
  *(v8 + 8) = a3;
  v9 = a5[7];
  v10 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  result = sub_25256EF80(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_25256DEE0(unint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a3[6];
  v15 = type metadata accessor for AccessoryControl.ElementIdentifier();
  result = sub_25256EF80(a2, v14 + *(*(v15 - 8) + 72) * a1, type metadata accessor for AccessoryControl.ElementIdentifier);
  v17 = (a3[7] + 32 * a1);
  *v17 = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  v18 = a3[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v20;
  }

  return result;
}

unint64_t sub_25256DFB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2BA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE68);
    v7 = sub_2526932A0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25237153C(v9, v5, &qword_27F4E2BA0);
      result = sub_2523674BC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
      result = sub_25256EF80(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25256E194(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2BA8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE48);
    v7 = sub_2526932A0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_25237153C(v9, v5, &qword_27F4E2BA8);
      result = sub_25236743C(*v5, v5[8]);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6] + 16 * result;
      v15 = v5[8];
      *v14 = *v5;
      *(v14 + 8) = v15;
      v16 = v7[7];
      v17 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
      result = sub_25256EF80(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25256E37C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE58);
    v7 = sub_2526932A0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25237153C(v9, v5, &qword_27F4E2B98);
      result = sub_2523674BC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
      result = sub_25256EF80(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25256E560(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEC8);
    v3 = sub_2526932A0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_252372350(v5);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25256E63C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF50);
    v7 = sub_2526932A0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25237153C(v9, v5, &qword_27F4DB228);
      result = sub_2523676D8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25268F4D0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_25235E20C(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25256E828(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2BB8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAFC8);
    v7 = sub_2526932A0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25237153C(v9, v5, &qword_27F4E2BB8);
      result = sub_2523677AC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25268E710();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25256EA10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB9B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB9C0);
    v7 = sub_2526932A0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25237153C(v9, v5, &qword_27F4DB9B8);
      result = sub_2523676D8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25268F4D0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_25235E20C(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25256EBFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2BB0);
    v3 = sub_2526932A0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_252367954(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_25256ED10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2AB8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE38);
    v7 = sub_2526932A0();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25237153C(v9, v5, &qword_27F4E2AB8);
      result = sub_2523679CC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for AccessoryControl.ElementIdentifier();
      result = sub_25256EF80(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for AccessoryControl.ElementIdentifier);
      v16 = (v7[7] + 32 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25256EF18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25256EF80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25256F008(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_25256F020()
{
  result = qword_27F4E2AF8;
  if (!qword_27F4E2AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2AC0);
    sub_25256F0DC(&qword_27F4E2B00, type metadata accessor for AccessoryControlContainerView.SheetView);
    sub_25256F124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2AF8);
  }

  return result;
}

uint64_t sub_25256F0DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25256F124()
{
  result = qword_27F4E2B08;
  if (!qword_27F4E2B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2B10);
    sub_25256F1B0();
    sub_25256F204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2B08);
  }

  return result;
}

unint64_t sub_25256F1B0()
{
  result = qword_27F4E2B18;
  if (!qword_27F4E2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2B18);
  }

  return result;
}

unint64_t sub_25256F204()
{
  result = qword_27F4E2B20;
  if (!qword_27F4E2B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2B20);
  }

  return result;
}

unint64_t sub_25256F258()
{
  result = qword_27F4E2B28;
  if (!qword_27F4E2B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2AF0);
    sub_25256F020();
    sub_25256F2E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2B28);
  }

  return result;
}

unint64_t sub_25256F2E4()
{
  result = qword_27F4E2B30;
  if (!qword_27F4E2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2B30);
  }

  return result;
}

unint64_t sub_25256F338()
{
  result = qword_27F4E2B40;
  if (!qword_27F4E2B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2B38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2AC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2AF0);
    sub_25256F020();
    sub_25256F258();
    swift_getOpaqueTypeConformance2();
    sub_252400FC8(&qword_27F4DF8A0, &qword_27F4DF8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2B40);
  }

  return result;
}

unint64_t sub_25256F458()
{
  result = qword_27F4E2B48;
  if (!qword_27F4E2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2B48);
  }

  return result;
}

uint64_t sub_25256F508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_25256F594()
{
  type metadata accessor for Device();
  if (v0 <= 0x3F)
  {
    sub_25256CF1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_25256F630()
{
  result = qword_27F4E2BD0;
  if (!qword_27F4E2BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2BD8);
    sub_252400FC8(&qword_27F4E2BE0, &qword_27F4E2BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2BD0);
  }

  return result;
}

uint64_t sub_25256F704(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25256F764(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2C40);
    v3 = sub_2526932A0();
    v4 = a1 + 32;

    while (1)
    {
      sub_25237153C(v4, &v11, &qword_27F4E2C48);
      v5 = v11;
      result = sub_252367A78(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_25235E20C(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25256F88C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2C28);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB130);
    v7 = sub_2526932A0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25237153C(v9, v5, &qword_27F4E2C28);
      result = sub_2523679CC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for AccessoryControl.ElementIdentifier();
      result = sub_25256EF80(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for AccessoryControl.ElementIdentifier);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25256FA70()
{
  result = qword_27F4E2C30;
  if (!qword_27F4E2C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2C38);
    sub_25256F0DC(&qword_27F4E2C18, type metadata accessor for AccessoryControlSheetView);
    sub_25256F0DC(&qword_27F4E2C20, type metadata accessor for AccessoryControlHorizontalSheetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2C30);
  }

  return result;
}

uint64_t sub_25256FB5C()
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for AccessoryControlHorizontalSheetView() + 32));
  v35 = *(v5 + 32);
  v6 = v5[3];
  v34[2] = v5[2];
  v34[3] = v6;
  v7 = v5[1];
  v34[0] = *v5;
  v34[1] = v7;
  if ((v35 & 0x100) != 0)
  {
    v8 = v5[3];
    v31 = v5[2];
    v32 = v8;
    v33 = *(v5 + 64);
    v9 = v5[1];
    v29 = *v5;
    v30 = v9;
  }

  else
  {

    sub_252692F00();
    v10 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v34, &qword_27F4DC120);
    (*(v2 + 8))(v4, v1);
  }

  if (BYTE8(v29) != 1)
  {
    v28 = *(v5 + 32);
    v11 = v5[3];
    v26 = v5[2];
    v27 = v11;
    v12 = v5[1];
    v24 = *v5;
    v25 = v12;
    if ((v28 & 0x100) != 0)
    {
      v13 = v5[3];
      v22[2] = v5[2];
      v22[3] = v13;
      v23 = *(v5 + 64);
      v14 = v5[1];
      v22[0] = *v5;
      v22[1] = v14;
    }

    else
    {

      sub_252692F00();
      v15 = sub_2526919C0();
      sub_252690570();

      sub_2526910E0();
      swift_getAtKeyPath();
      sub_252372288(&v24, &qword_27F4DC120);
      (*(v2 + 8))(v4, v1);
    }

    if (v23 != 1 && v23 != 2)
    {
      return 0;
    }
  }

  v28 = *(v5 + 32);
  v16 = v5[3];
  v26 = v5[2];
  v27 = v16;
  v17 = v5[1];
  v24 = *v5;
  v25 = v17;
  if ((v28 & 0x100) != 0)
  {
    v18 = v5[3];
    v31 = v5[2];
    v32 = v18;
    v33 = *(v5 + 64);
    v19 = v5[1];
    v29 = *v5;
    v30 = v19;
  }

  else
  {

    sub_252692F00();
    v20 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(&v24, &qword_27F4DC120);
    (*(v2 + 8))(v4, v1);
  }

  return BYTE8(v32) & 1;
}

uint64_t sub_25256FED4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v36 = sub_252691500();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2C60);
  MEMORY[0x28223BE20](v33);
  v7 = &v31 - v6;
  sub_2526919E0();
  v37 = a2;
  v38 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2C68);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2C70);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2C78);
  v10 = sub_252400FC8(&qword_27F4E2C80, &qword_27F4E2C70);
  v11 = sub_252572FAC();
  *&v57 = v8;
  *(&v57 + 1) = v9;
  *&v58 = v10;
  *(&v58 + 1) = v11;
  swift_getOpaqueTypeConformance2();
  sub_252690820();
  v12 = sub_252692920();
  v14 = v13;
  sub_252571E9C(a2, &v40);
  v52 = v44;
  v53 = v45;
  v54 = v46;
  v48 = v40;
  v49 = v41;
  v50 = v42;
  v51 = v43;
  *&v55 = v47;
  *(&v55 + 1) = v12;
  v56 = v14;
  v15 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2C90) + 36)];
  v16 = v55;
  *(v15 + 6) = v54;
  *(v15 + 7) = v16;
  *(v15 + 16) = v56;
  v17 = v51;
  *(v15 + 2) = v50;
  *(v15 + 3) = v17;
  v18 = v53;
  *(v15 + 4) = v52;
  *(v15 + 5) = v18;
  v19 = v49;
  *v15 = v48;
  *(v15 + 1) = v19;
  v61 = v44;
  v62 = v45;
  v63 = v46;
  v57 = v40;
  v58 = v41;
  v59 = v42;
  v60 = v43;
  v64 = v47;
  v65 = v12;
  v66 = v14;
  sub_25237153C(&v48, &v39, &qword_27F4E2C98);
  sub_252372288(&v57, &qword_27F4E2C98);
  v20 = sub_252692920();
  v22 = v21;
  v23 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2CA0) + 36)];
  sub_2525722A4(a2, v23);
  v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2CA8) + 36));
  *v24 = v20;
  v24[1] = v22;
  v25 = v32;
  type metadata accessor for AnimationModel();
  sub_252573090(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  v26 = v33;
  v27 = sub_252690DF0();
  v28 = &v7[*(v26 + 36)];
  *v28 = v27;
  v28[1] = v29;
  sub_2526914F0();
  LOBYTE(v12) = sub_252691A00();
  sub_2526919F0();
  sub_2526919F0();
  if (sub_2526919F0() != v12)
  {
    sub_2526919F0();
  }

  sub_2525730D8();
  sub_252692050();
  (*(v34 + 8))(v25, v36);
  return sub_25233F674(v7);
}

uint64_t sub_252570300(uint64_t *a1)
{
  v2 = sub_2526910F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2C70);
  MEMORY[0x28223BE20](v6);
  v8 = (v23 - v7);
  *v8 = sub_252692920();
  v8[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2D58);
  sub_2525706D8(a1, (v8 + *(v10 + 44)));
  v11 = a1 + *(type metadata accessor for AccessoryControlHorizontalSheetView() + 32);
  v31 = *(v11 + 32);
  v12 = *(v11 + 3);
  v30[2] = *(v11 + 2);
  v30[3] = v12;
  v13 = *(v11 + 1);
  v30[0] = *v11;
  v30[1] = v13;
  if ((v31 & 0x100) != 0)
  {
    v14 = *(v11 + 3);
    v27 = *(v11 + 2);
    v28 = v14;
    LOBYTE(v29) = v11[64];
    v15 = *(v11 + 1);
    v25 = *v11;
    v26 = v15;
  }

  else
  {

    sub_252692F00();
    v16 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v30, &qword_27F4DC120);
    (*(v3 + 8))(v5, v2);
  }

  if (v25 != 1)
  {
    v29 = *(v11 + 32);
    v17 = *(v11 + 3);
    v27 = *(v11 + 2);
    v28 = v17;
    v18 = *(v11 + 1);
    v25 = *v11;
    v26 = v18;
    if ((v29 & 0x100) != 0)
    {
      v19 = *(v11 + 3);
      v23[2] = *(v11 + 2);
      v23[3] = v19;
      v24 = v11[64];
      v20 = *v11;
      v23[1] = *(v11 + 1);
      v23[0] = v20;
    }

    else
    {

      sub_252692F00();
      v21 = sub_2526919C0();
      sub_252690570();

      sub_2526910E0();
      swift_getAtKeyPath();
      sub_252372288(&v25, &qword_27F4DC120);
      (*(v3 + 8))(v5, v2);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2C78);
  sub_252400FC8(&qword_27F4E2C80, &qword_27F4E2C70);
  sub_252572FAC();
  sub_252691D70();
  return sub_252372288(v8, &qword_27F4E2C70);
}

uint64_t sub_2525706D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2D60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v24 - v8);
  v25 = a1;
  if (sub_25256FB5C())
  {
    sub_2526909F0();
    v11 = v10;
    v12 = sub_252691A20();
    type metadata accessor for AnimationModel();
    sub_252573090(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    v13 = sub_252690DF0();
    v15 = v14;
    v16 = v12 << 8;

    v17 = 0x3F747AE147AE147BLL;
  }

  else
  {
    v11 = 0;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v13 = 1;
  }

  sub_2526909F0();
  v19 = v18 * 0.25;
  *v9 = sub_252692930();
  v9[1] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2D68);
  sub_252570950(v25, v9 + *(v21 + 44), v19);
  sub_25237153C(v9, v6, &qword_27F4E2D60);
  *a2 = v11;
  a2[1] = v16;
  a2[2] = v17;
  a2[3] = v13;
  a2[4] = v15;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2D70);
  sub_25237153C(v6, a2 + *(v22 + 48), &qword_27F4E2D60);
  sub_252573768(v11, v16, v17, v13);
  sub_25257377C(v11, v16, v17, v13);
  sub_252372288(v9, &qword_27F4E2D60);
  sub_252372288(v6, &qword_27F4E2D60);
  return sub_25257377C(v11, v16, v17, v13);
}

uint64_t sub_252570950@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v41 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2D78);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2D80);
  MEMORY[0x28223BE20](v39);
  v40 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v13);
  v38 = &v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2D88);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  *v21 = sub_2526912E0();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2D90);
  sub_252570DF4(a1, &v21[*(v22 + 44)]);
  sub_252692920();
  sub_2526909C0();
  v23 = &v21[*(v16 + 44)];
  v24 = v43;
  *v23 = v42;
  *(v23 + 1) = v24;
  *(v23 + 2) = v44;
  *v8 = sub_2526911D0();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2D98);
  sub_252571A4C(a1, &v8[*(v25 + 44)], a3);
  v26 = sub_252691A20();
  v27 = &v8[*(v6 + 44)];
  *v27 = v26;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  v27[40] = 1;
  sub_2526909F0();
  sub_2526909F0();
  sub_252692920();
  sub_252690D70();
  sub_2523714D4(v8, v12, &qword_27F4E2D78);
  v28 = &v12[*(v39 + 36)];
  v29 = v50;
  *(v28 + 4) = v49;
  *(v28 + 5) = v29;
  *(v28 + 6) = v51;
  v30 = v46;
  *v28 = v45;
  *(v28 + 1) = v30;
  v31 = v48;
  *(v28 + 2) = v47;
  *(v28 + 3) = v31;
  v32 = v38;
  sub_2523714D4(v12, v38, &qword_27F4E2D80);
  sub_25237153C(v21, v18, &qword_27F4E2D88);
  v33 = v40;
  sub_25237153C(v32, v40, &qword_27F4E2D80);
  v34 = v41;
  sub_25237153C(v18, v41, &qword_27F4E2D88);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DA0);
  sub_25237153C(v33, v34 + *(v35 + 48), &qword_27F4E2D80);
  sub_252372288(v32, &qword_27F4E2D80);
  sub_252372288(v21, &qword_27F4E2D88);
  sub_252372288(v33, &qword_27F4E2D80);
  return sub_252372288(v18, &qword_27F4E2D88);
}

uint64_t sub_252570DF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v97 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DB8);
  v95 = *(v3 - 8);
  v96 = v3;
  MEMORY[0x28223BE20](v3);
  v82 = (&v75 - v4);
  v79 = type metadata accessor for HeaderView.ControlView(0);
  MEMORY[0x28223BE20](v79);
  v81 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v80 = &v75 - v7;
  v76 = type metadata accessor for AccessoryControlModule.Layout.Thermostat(0);
  MEMORY[0x28223BE20](v76);
  v77 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  MEMORY[0x28223BE20](v9 - 8);
  v86 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v87 = &v75 - v12;
  v85 = type metadata accessor for AccessoryControl(0);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v78 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DC0);
  MEMORY[0x28223BE20](v14 - 8);
  v89 = &v75 - v15;
  v90 = type metadata accessor for AccessoryControlModule.Layout(0);
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v83 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v91 = &v75 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DC8);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v75 - v20;
  v22 = type metadata accessor for Device.ControlModule(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v75 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DD0);
  MEMORY[0x28223BE20](v28 - 8);
  v94 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v93 = &v75 - v31;
  v32 = type metadata accessor for Device();
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for HeaderView.HorizontalSheetHeader(0);
  v36 = v35 - 8;
  MEMORY[0x28223BE20](v35);
  v92 = &v75 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = (&v75 - v39);
  v41 = *a1;
  v75 = *(type metadata accessor for AccessoryControlHorizontalSheetView() + 20);
  sub_252573790(a1 + v75, v34, type metadata accessor for Device);
  sub_252430364(v34, (v40 + *(v36 + 28)));
  KeyPath = swift_getKeyPath();
  v107 = 0;
  *v40 = v41;
  v43 = v40 + *(v36 + 32);
  *v43 = KeyPath;
  v43[65] = 0;
  sub_2525C84C0(v21);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DD8);
  if ((*(*(v44 - 8) + 48))(v21, 1, v44) == 1)
  {
    v45 = &qword_27F4E2DC8;
  }

  else
  {
    MEMORY[0x2530A4210](v44);
    sub_252372288(v21, &qword_27F4E2DD8);
    sub_2525737F8(v24, v27, type metadata accessor for Device.ControlModule);
    v47 = v89;
    sub_25237153C(&v27[*(v22 + 28)], v89, &qword_27F4E2DC0);
    if ((*(v88 + 48))(v47, 1, v90) == 1)
    {
      sub_252573860(v27, type metadata accessor for Device.ControlModule);
      v45 = &qword_27F4E2DC0;
      v46 = v47;
      goto LABEL_6;
    }

    v55 = v47;
    v56 = v91;
    sub_2525737F8(v55, v91, type metadata accessor for AccessoryControlModule.Layout);
    v57 = v83;
    sub_252573790(v56, v83, type metadata accessor for AccessoryControlModule.Layout);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v58 = v57;
      v59 = v77;
      sub_2525737F8(v58, v77, type metadata accessor for AccessoryControlModule.Layout.Thermostat);
      v60 = v86;
      sub_25237153C(v59 + *(v76 + 20), v86, &qword_27F4DB120);
      sub_252573860(v59, type metadata accessor for AccessoryControlModule.Layout.Thermostat);
      v21 = v87;
      v61 = v85;
      v62 = v84;
    }

    else
    {
      v62 = v84;
      v60 = v86;
      v61 = v85;
      (*(v84 + 56))(v86, 1, 1, v85);
      sub_252573860(v57, type metadata accessor for AccessoryControlModule.Layout);
      v21 = v87;
    }

    sub_2523714D4(v60, v21, &qword_27F4DB120);
    if ((*(v62 + 48))(v21, 1, v61) != 1)
    {
      v63 = v21;
      v64 = v78;
      sub_2525737F8(v63, v78, type metadata accessor for AccessoryControl);
      sub_252692920();
      sub_2526909C0();
      v89 = v103;
      v90 = v101;
      v87 = v106;
      v88 = v105;
      v100 = 1;
      v99 = v102;
      v98 = v104;
      v65 = v79;
      v66 = v80;
      sub_252573790(a1 + v75, &v80[*(v79 + 20)], type metadata accessor for Device);
      v67 = v64;
      sub_252573790(v64, v66 + *(v65 + 24), type metadata accessor for AccessoryControl);
      *v66 = v41;
      v68 = v100;
      v69 = v99;
      LOBYTE(v64) = v98;
      v70 = v81;
      sub_252573790(v66, v81, type metadata accessor for HeaderView.ControlView);
      v71 = v82;
      *v82 = 0;
      *(v71 + 8) = v68;
      v72 = v89;
      *(v71 + 16) = v90;
      *(v71 + 24) = v69;
      *(v71 + 32) = v72;
      *(v71 + 40) = v64;
      v73 = v87;
      *(v71 + 48) = v88;
      *(v71 + 56) = v73;
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DE8);
      sub_252573790(v70, v71 + *(v74 + 48), type metadata accessor for HeaderView.ControlView);
      sub_252573860(v66, type metadata accessor for HeaderView.ControlView);
      sub_252573860(v67, type metadata accessor for AccessoryControl);
      sub_252573860(v91, type metadata accessor for AccessoryControlModule.Layout);
      sub_252573860(v27, type metadata accessor for Device.ControlModule);
      sub_252573860(v70, type metadata accessor for HeaderView.ControlView);
      v48 = v93;
      sub_2523714D4(v71, v93, &qword_27F4E2DB8);
      (*(v95 + 56))(v48, 0, 1, v96);
      goto LABEL_7;
    }

    sub_252573860(v91, type metadata accessor for AccessoryControlModule.Layout);
    sub_252573860(v27, type metadata accessor for Device.ControlModule);
    v45 = &qword_27F4DB120;
  }

  v46 = v21;
LABEL_6:
  sub_252372288(v46, v45);
  v48 = v93;
  (*(v95 + 56))(v93, 1, 1, v96);
LABEL_7:
  v49 = v92;
  sub_252573790(v40, v92, type metadata accessor for HeaderView.HorizontalSheetHeader);
  v50 = v94;
  sub_25237153C(v48, v94, &qword_27F4E2DD0);
  v51 = v97;
  *v97 = 0;
  *(v51 + 8) = 1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DE0);
  sub_252573790(v49, v51 + v52[12], type metadata accessor for HeaderView.HorizontalSheetHeader);
  sub_25237153C(v50, v51 + v52[16], &qword_27F4E2DD0);
  v53 = v51 + v52[20];
  *v53 = 0;
  v53[8] = 1;
  sub_252372288(v48, &qword_27F4E2DD0);
  sub_252573860(v40, type metadata accessor for HeaderView.HorizontalSheetHeader);
  sub_252372288(v50, &qword_27F4E2DD0);
  return sub_252573860(v49, type metadata accessor for HeaderView.HorizontalSheetHeader);
}

uint64_t sub_252571A4C@<X0>(uint64_t *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v45 = a2;
  v5 = type metadata accessor for AccessoryControlSheetView.ControlsView(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DA8);
  MEMORY[0x28223BE20](v44);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v17 = *a1;
  v18 = type metadata accessor for AccessoryControlHorizontalSheetView();
  sub_252573790(a1 + *(v18 + 20), v8 + v6[7], type metadata accessor for Device);
  v19 = (a1 + *(v18 + 24));
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];

  sub_2526909F0();
  *v8 = v17;
  v23 = (v8 + v6[8]);
  *v23 = v20;
  v23[1] = v21;
  v23[2] = v22;
  v24 = (v8 + v6[9]);
  *v24 = v25;
  v24[1] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252694EA0;
  LOBYTE(v21) = sub_252691A40();
  *(inited + 32) = v21;
  v28 = sub_252691A30();
  *(inited + 33) = v28;
  v29 = sub_252691A60();
  sub_252691A60();
  if (sub_252691A60() != v21)
  {
    v29 = sub_252691A60();
  }

  sub_252691A60();
  if (sub_252691A60() != v28)
  {
    v29 = sub_252691A60();
  }

  sub_252690760();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_2525737F8(v8, v13, type metadata accessor for AccessoryControlSheetView.ControlsView);
  v38 = &v13[*(v44 + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  sub_2523714D4(v13, v16, &qword_27F4E2DA8);
  sub_25237153C(v16, v10, &qword_27F4E2DA8);
  v39 = v45;
  *v45 = a3;
  *(v39 + 8) = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DB0);
  sub_25237153C(v10, v39 + *(v40 + 48), &qword_27F4E2DA8);
  v41 = v39 + *(v40 + 64);
  *v41 = 0;
  v41[8] = 1;
  sub_252372288(v16, &qword_27F4E2DA8);
  return sub_252372288(v10, &qword_27F4E2DA8);
}

uint64_t sub_252571DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2C78) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00) + 28);
  v7 = *MEMORY[0x277CDF3C0];
  v8 = sub_252690850();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = KeyPath;
  return sub_25237153C(a1, a2, &qword_27F4E2C70);
}

uint64_t sub_252571E9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for AccessoryControlDecorationButton.Config(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v33 - v12;
  v14 = (a1 + *(type metadata accessor for AccessoryControlHorizontalSheetView() + 24));
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v41 = 9;
  v18 = sub_252600F28(&v41, v15, v16, v17);
  v19 = v18[2];
  if (v19)
  {
    v33 = a1;
    v34 = a2;
    v20 = *(v11 + 80);
    v35 = v18;
    v21 = v18 + ((v20 + 32) & ~v20);
    v37 = v8;
    v22 = (v8 + 48);
    v23 = MEMORY[0x277D84F90];
    v24 = *(v11 + 72);
    v38 = v7;
    v36 = v24;
    do
    {
      sub_25237153C(v21, v13, &qword_27F4DAE18);
      static AccessoryControlDecorationButton.Config.control(control:action:)(v13, CGPointMake, 0, v6);
      sub_252372288(v13, &qword_27F4DAE18);
      if ((*v22)(v6, 1, v7) == 1)
      {
        sub_252372288(v6, &qword_27F4DAE10);
      }

      else
      {
        sub_2525737F8(v6, v39, type metadata accessor for AccessoryControlDecorationButton.Config);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_252369AE4(0, v23[2] + 1, 1, v23);
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          v23 = sub_252369AE4(v25 > 1, v26 + 1, 1, v23);
        }

        v23[2] = v26 + 1;
        sub_2525737F8(v39, v23 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v26, type metadata accessor for AccessoryControlDecorationButton.Config);
        v7 = v38;
        v24 = v36;
      }

      v21 += v24;
      --v19;
    }

    while (v19);

    a1 = v33;
    a2 = v34;
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v27 = *a1;
  type metadata accessor for AccessoryControlLegacyViewModel();
  sub_252573090(&qword_27F4E0C50, type metadata accessor for AccessoryControlLegacyViewModel);
  v28 = sub_252690DF0();
  v30 = v29;
  KeyPath = swift_getKeyPath();
  v40 = 0;
  result = swift_getKeyPath();
  *a2 = v27;
  *(a2 + 8) = v23;
  *(a2 + 16) = KeyPath;
  *(a2 + 81) = 0;
  *(a2 + 88) = result;
  *(a2 + 96) = 0;
  *(a2 + 104) = v28;
  *(a2 + 112) = v30;
  return result;
}

uint64_t sub_2525722A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_2526910F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2CF0);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v10 = a1 + *(type metadata accessor for AccessoryControlHorizontalSheetView() + 32);
  v84 = *(v10 + 32);
  v11 = *(v10 + 3);
  v83[2] = *(v10 + 2);
  v83[3] = v11;
  v12 = *(v10 + 1);
  v83[0] = *v10;
  v83[1] = v12;
  v44 = v6;
  v45 = v4;
  v48 = v9;
  v46 = v3;
  if ((v84 & 0x100) != 0)
  {
    v13 = *(v10 + 3);
    v80 = *(v10 + 2);
    v81 = v13;
    v82 = v10[64];
    v14 = *(v10 + 1);
    v78 = *v10;
    v79 = v14;
  }

  else
  {

    sub_252692F00();
    v15 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v83, &qword_27F4DC120);
    (*(v4 + 8))(v6, v3);
  }

  v16 = v78;
  v47 = *a1;
  type metadata accessor for AnimationModel();
  sub_252573090(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  v17 = sub_252690DF0();
  v19 = v18;
  KeyPath = swift_getKeyPath();
  v75 = 0;
  v21 = sub_252690DF0();
  v23 = v22;
  v24 = swift_getKeyPath();
  v76 = 0;
  LOBYTE(v62) = v16;
  *(&v62 + 1) = v17;
  *&v63 = v19;
  *(&v63 + 1) = v47;
  *&v64 = KeyPath;
  BYTE1(v68) = 0;
  *(&v68 + 1) = v21;
  *&v69 = v23;
  *(&v69 + 1) = v24;
  BYTE9(v73) = 0;
  v74 = xmmword_2526A7E10;
  sub_25256FB5C();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2CF8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2D00);
  v27 = sub_252573354();
  v28 = sub_252573568();
  v29 = v48;
  sub_252691D70();
  v77[10] = v72;
  v77[11] = v73;
  v77[12] = v74;
  v77[6] = v68;
  v77[7] = v69;
  v77[8] = v70;
  v77[9] = v71;
  v77[2] = v64;
  v77[3] = v65;
  v77[4] = v66;
  v77[5] = v67;
  v77[0] = v62;
  v77[1] = v63;
  sub_252372288(v77, &qword_27F4E2CF8);
  LOWORD(v66) = *(v10 + 32);
  v30 = *(v10 + 3);
  v64 = *(v10 + 2);
  v65 = v30;
  v31 = *(v10 + 1);
  v62 = *v10;
  v63 = v31;
  if (BYTE1(v66))
  {
    v32 = *(v10 + 3);
    v59 = *(v10 + 2);
    v60 = v32;
    LOBYTE(v61) = v10[64];
    v33 = *(v10 + 1);
    v57 = *v10;
    v58 = v33;
  }

  else
  {

    sub_252692F00();
    v34 = sub_2526919C0();
    sub_252690570();

    v35 = v44;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(&v62, &qword_27F4DC120);
    (*(v45 + 8))(v35, v46);
  }

  if (v57 != 1)
  {
    v61 = *(v10 + 32);
    v36 = *(v10 + 3);
    v59 = *(v10 + 2);
    v60 = v36;
    v37 = *(v10 + 1);
    v57 = *v10;
    v58 = v37;
    if ((v61 & 0x100) != 0)
    {
      v38 = *(v10 + 3);
      v54 = *(v10 + 2);
      v55 = v38;
      v56 = v10[64];
      v39 = *(v10 + 1);
      v52 = *v10;
      v53 = v39;
    }

    else
    {

      sub_252692F00();
      v40 = sub_2526919C0();
      sub_252690570();

      v41 = v44;
      sub_2526910E0();
      swift_getAtKeyPath();
      sub_252372288(&v57, &qword_27F4DC120);
      (*(v45 + 8))(v41, v46);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2D48);
  *&v57 = v25;
  *(&v57 + 1) = v26;
  *&v58 = v27;
  *(&v58 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  sub_252573648();
  v42 = v50;
  sub_252691D70();
  return (*(v49 + 8))(v29, v42);
}

uint64_t sub_2525728E0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[11];
  v29 = a1[10];
  v30 = v3;
  v31 = a1[12];
  v4 = a1[7];
  v25 = a1[6];
  v26 = v4;
  v5 = a1[9];
  v27 = a1[8];
  v28 = v5;
  v6 = a1[3];
  v21 = a1[2];
  v22 = v6;
  v7 = a1[5];
  v23 = a1[4];
  v24 = v7;
  v8 = a1[1];
  v19 = *a1;
  v20 = v8;
  type metadata accessor for AnimationModel();
  sub_252573090(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  v9 = sub_252690DF0();
  v10 = v30;
  *(a2 + 160) = v29;
  *(a2 + 176) = v10;
  *(a2 + 192) = v31;
  v11 = v26;
  *(a2 + 96) = v25;
  *(a2 + 112) = v11;
  v12 = v28;
  *(a2 + 128) = v27;
  *(a2 + 144) = v12;
  v13 = v22;
  *(a2 + 32) = v21;
  *(a2 + 48) = v13;
  v14 = v24;
  *(a2 + 64) = v23;
  *(a2 + 80) = v14;
  v15 = v20;
  *a2 = v19;
  *(a2 + 16) = v15;
  *(a2 + 208) = v9;
  *(a2 + 216) = v16;
  return sub_25237153C(&v19, &v18, &qword_27F4E2CF8);
}

uint64_t sub_2525729EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2D48) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00) + 28);
  v7 = *MEMORY[0x277CDF3C0];
  v8 = sub_252690850();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = KeyPath;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2CF0);
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a1, v9);
}

uint64_t sub_252572B04@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_252573790(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryControlHorizontalSheetView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_2525737F8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for AccessoryControlHorizontalSheetView);
  *a2 = sub_252572F24;
  a2[1] = v7;
  return result;
}

uint64_t static Color.random.getter()
{
  v0 = sub_252692270();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252572D44(0x20000000000001uLL);
  sub_252572D44(0x20000000000001uLL);
  sub_252572D44(0x20000000000001uLL);
  (*(v1 + 104))(v3, *MEMORY[0x277CE0EE0], v0);
  return sub_252692390();
}

unint64_t sub_252572D44(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x2530A5A50](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x2530A5A50](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for AccessoryControlHorizontalSheetView()
{
  result = qword_27F4E2C50;
  if (!qword_27F4E2C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252572E44()
{
  type metadata accessor for Device();
  if (v0 <= 0x3F)
  {
    sub_25256CF1C();
    if (v1 <= 0x3F)
    {
      sub_25251B654();
      if (v2 <= 0x3F)
      {
        sub_252420F5C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_252572F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccessoryControlHorizontalSheetView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_25256FED4(a1, v6, a2);
}

unint64_t sub_252572FAC()
{
  result = qword_27F4E2C88;
  if (!qword_27F4E2C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2C78);
    sub_252400FC8(&qword_27F4E2C80, &qword_27F4E2C70);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2C88);
  }

  return result;
}

uint64_t sub_252573090(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2525730D8()
{
  result = qword_27F4E2CB0;
  if (!qword_27F4E2CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2C60);
    sub_252573164();
    sub_252573300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2CB0);
  }

  return result;
}

unint64_t sub_252573164()
{
  result = qword_27F4E2CB8;
  if (!qword_27F4E2CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2CA0);
    sub_25257321C();
    sub_252400FC8(&qword_27F4E2CE0, &qword_27F4E2CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2CB8);
  }

  return result;
}

unint64_t sub_25257321C()
{
  result = qword_27F4E2CC0;
  if (!qword_27F4E2CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2C90);
    sub_252400FC8(&qword_27F4E2CC8, &qword_27F4E2CD0);
    sub_252400FC8(&qword_27F4E2CD8, &qword_27F4E2C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2CC0);
  }

  return result;
}

unint64_t sub_252573300()
{
  result = qword_27F4E2CE8;
  if (!qword_27F4E2CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2CE8);
  }

  return result;
}

unint64_t sub_252573354()
{
  result = qword_27F4E2D08;
  if (!qword_27F4E2D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2CF8);
    sub_2525733E0();
    sub_252573434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2D08);
  }

  return result;
}

unint64_t sub_2525733E0()
{
  result = qword_27F4E2D10;
  if (!qword_27F4E2D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2D10);
  }

  return result;
}

unint64_t sub_252573434()
{
  result = qword_27F4E2D18;
  if (!qword_27F4E2D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2D20);
    sub_2525734C0();
    sub_252573514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2D18);
  }

  return result;
}

unint64_t sub_2525734C0()
{
  result = qword_27F4E2D28;
  if (!qword_27F4E2D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2D28);
  }

  return result;
}

unint64_t sub_252573514()
{
  result = qword_27F4E2D30;
  if (!qword_27F4E2D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2D30);
  }

  return result;
}

unint64_t sub_252573568()
{
  result = qword_27F4E2D38;
  if (!qword_27F4E2D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2D00);
    sub_252573354();
    sub_2525735F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2D38);
  }

  return result;
}

unint64_t sub_2525735F4()
{
  result = qword_27F4E2D40;
  if (!qword_27F4E2D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2D40);
  }

  return result;
}

unint64_t sub_252573648()
{
  result = qword_27F4E2D50;
  if (!qword_27F4E2D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2D48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2CF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2D00);
    sub_252573354();
    sub_252573568();
    swift_getOpaqueTypeConformance2();
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2D50);
  }

  return result;
}

uint64_t sub_252573768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t sub_25257377C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t sub_252573790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525737F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252573860(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2525738C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25237153C(a3, v25 - v10, &qword_27F4DB930);
  v12 = sub_252692E30();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_252372288(v11, &qword_27F4DB930);
  }

  else
  {
    sub_252692E20();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_252692DE0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_252692C30() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_252372288(a3, &qword_27F4DB930);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_252372288(a3, &qword_27F4DB930);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_252573BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25237153C(a3, v25 - v10, &qword_27F4DB930);
  v12 = sub_252692E30();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_252372288(v11, &qword_27F4DB930);
  }

  else
  {
    sub_252692E20();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_252692DE0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_252692C30() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F70);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_252372288(a3, &qword_27F4DB930);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_252372288(a3, &qword_27F4DB930);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F70);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_252573ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25237153C(a3, v25 - v10, &qword_27F4DB930);
  v12 = sub_252692E30();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_252372288(v11, &qword_27F4DB930);
  }

  else
  {
    sub_252692E20();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_252692DE0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_252692C30() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E15D8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_252372288(a3, &qword_27F4DB930);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_252372288(a3, &qword_27F4DB930);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E15D8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t AccessoryControlModelView.presentingVCDismissalTask.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);

  *(v2 + v4) = a1;
  return result;
}

__n128 sub_252574250@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X3>, __int128 *a3@<X4>, uint64_t a4@<X5>, char *a5@<X8>)
{
  v31 = a4;
  v33 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = a3[3];
  v41 = a3[2];
  v42 = v11;
  v43 = *(a3 + 64);
  v12 = a3[1];
  v39 = *a3;
  v40 = v12;
  *a5 = 0;
  v13 = type metadata accessor for AccessoryControlModelView();
  v14 = v13[13];
  v15 = type metadata accessor for Device();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  type metadata accessor for AccessoryControlLegacyViewModel();
  swift_allocObject();
  *&a5[v14] = sub_25266B98C(v10, MEMORY[0x277D84F90]);
  *&a5[v13[16]] = 0;
  v16 = &a5[v13[14]];
  swift_unknownObjectRetain();
  *v16 = sub_252690AD0();
  v16[1] = v17;
  v18 = v13[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 16);
  v32 = a1;
  v21(&a5[v18], a1, AssociatedTypeWitness);
  v22 = &a5[v13[15]];
  type metadata accessor for TransitionTileHelper();
  sub_25257AE58(&qword_27F4DBCA0, type metadata accessor for TransitionTileHelper);

  *v22 = sub_252690AD0();
  v22[1] = v23;
  v24 = v31;
  sub_25237153C(v31, &v34, qword_27F4E2E00);
  if (v35)
  {
    swift_unknownObjectRelease();

    sub_252372288(v24, qword_27F4E2E00);
    (*(v20 + 8))(v32, AssociatedTypeWitness);
    sub_25235E1A4(&v34, &v36);
  }

  else
  {
    v25 = type metadata accessor for EmptyAlarmAndTimerUIViewBuilder();
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0xE000000000000000;
    v26[4] = 0;
    v26[5] = 0xE000000000000000;
    v37 = v25;
    v38 = &off_286488550;
    swift_unknownObjectRelease();

    *&v36 = v26;
    sub_252372288(v24, qword_27F4E2E00);
    (*(v20 + 8))(v32, AssociatedTypeWitness);
    if (v35)
    {
      sub_252372288(&v34, qword_27F4E2E00);
    }
  }

  sub_25235E1A4(&v36, &a5[v13[11]]);
  *&a5[v13[10]] = v33;
  v27 = &a5[v13[12]];
  v28 = v42;
  *(v27 + 2) = v41;
  *(v27 + 3) = v28;
  v27[64] = v43;
  result = v40;
  *v27 = v39;
  *(v27 + 1) = result;
  return result;
}

uint64_t AccessoryControlModelView.init(deviceModel:deviceIdentifier:tileHelper:decorationButtons:style:alarmAndTimerUIViewBuilder:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, char *a5@<X8>)
{
  v17 = a4;
  v18 = a1;
  v19 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v17 - v10;
  v12 = *(a3 + 48);
  v21[2] = *(a3 + 32);
  v21[3] = v12;
  v22 = *(a3 + 64);
  v13 = *(a3 + 16);
  v21[0] = *a3;
  v21[1] = v13;
  (*(v9 + 16))(&v17 - v10, a1, AssociatedTypeWitness);
  type metadata accessor for AnimationModel();
  swift_allocObject();
  swift_unknownObjectRetain();

  v14 = AnimationModel.init()();
  v15 = v17;
  sub_25237153C(v17, v20, qword_27F4E2E00);
  sub_252574250(v11, v14, v21, v20, a5);
  type metadata accessor for AccessoryControlModelView();
  swift_getKeyPath();
  swift_getKeyPath();
  v20[0] = v19;

  sub_252690690();
  swift_unknownObjectRelease();

  sub_252372288(v15, qword_27F4E2E00);
  return (*(v9 + 8))(v18, AssociatedTypeWitness);
}

uint64_t AccessoryControlModelView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v69 = a2;
  v5 = type metadata accessor for Device();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x28223BE20](v5);
  v59 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D60);
  MEMORY[0x28223BE20](v9 - 8);
  v60 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v62 = &v55 - v12;
  MEMORY[0x28223BE20](v13);
  v68 = &v55 - v14;
  MEMORY[0x28223BE20](v15);
  v67 = &v55 - v16;
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v58 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v56 = &v55 - v20;
  v21 = *(a1 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 + 44);
  v27 = *(v17 + 64);
  swift_unknownObjectRetain();
  v65 = v18;
  v66 = v17;
  v28 = v2;
  LOBYTE(v26) = v27(v2 + v26, v18, v17);
  swift_unknownObjectRelease();
  if ((v26 & 1) == 0)
  {
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v29 = sub_2526905A0();
    __swift_project_value_buffer(v29, qword_27F4E4B18);
    (*(v21 + 16))(v24, v2, a1);
    v30 = sub_252690580();
    v31 = sub_252692EF0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v55 = v3;
      v33 = v32;
      v34 = swift_slowAlloc();
      v70[0] = v34;
      *v33 = 136446210;
      (*(v57 + 16))(v56, &v24[*(a1 + 36)], v58);
      v35 = sub_252692C00();
      v37 = v36;
      (*(v21 + 8))(v24, a1);
      v38 = sub_2525BDA90(v35, v37, v70);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_252309000, v30, v31, "Couldn't find device for identifier %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x2530A5A40](v34, -1, -1);
      v39 = v33;
      v28 = v55;
      MEMORY[0x2530A5A40](v39, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v24, a1);
    }

    AccessoryControlModelView.dismiss(completion:)(0, 0, a1);
  }

  v40 = *(v28 + *(a1 + 52));
  v41 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_device;
  swift_beginAccess();
  v42 = v67;
  sub_25237153C(v40 + v41, v67, &qword_27F4E0D60);
  v43 = v68;
  sub_252575158(a1, v68);
  v44 = v62;
  sub_25237153C(v42, v62, &qword_27F4E0D60);
  v45 = v64;
  v46 = *(v63 + 48);
  if (v46(v44, 1, v64) != 1)
  {
    v47 = v44;
    v48 = v61;
    sub_2525772E8(v47, v61);
    v49 = v60;
    sub_25237153C(v43, v60, &qword_27F4E0D60);
    if (v46(v49, 1, v45) == 1)
    {
      sub_25257AD2C(v48, type metadata accessor for Device);
      sub_252372288(v49, &qword_27F4E0D60);
      goto LABEL_19;
    }

    v50 = v59;
    sub_2525772E8(v49, v59);
    v51 = *(v45 + 48);
    v52 = *(v48 + v51);
    v53 = *(v50 + v51);
    if (v52 == 2)
    {
      if (v53 == 2)
      {
        goto LABEL_18;
      }
    }

    else if (v53 != 2 && ((v52 ^ v53) & 1) == 0)
    {
      goto LABEL_18;
    }

    AccessoryControlModelView.dismiss(completion:)(0, 0, a1);
LABEL_18:
    sub_25257AD2C(v50, type metadata accessor for Device);
    sub_25257AD2C(v48, type metadata accessor for Device);
    goto LABEL_19;
  }

  sub_252372288(v44, &qword_27F4E0D60);
LABEL_19:
  sub_2525755DC(v28, v43, v69);
  sub_252372288(v42, &qword_27F4E0D60);
  return sub_252372288(v43, &qword_27F4E0D60);
}

uint64_t AccessoryControlModelView.dismiss(completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - v11;
  v13 = *(v3 + *(a3 + 60) + 8);
  swift_beginAccess();
  *(v13 + 16) = 1;
  v14 = sub_252692E30();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  (*(v7 + 16))(v9, v3, a3);
  sub_252692E00();
  sub_25235E21C(a1);
  v15 = sub_252692DF0();
  v16 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  *(v18 + 32) = *(a3 + 16);
  (*(v7 + 32))(v18 + v16, v9, a3);
  v20 = (v18 + v17);
  *v20 = a1;
  v20[1] = a2;
  sub_2525738C0(0, 0, v12, &unk_2526A80B8, v18);
}

uint64_t sub_252575158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v4 = type metadata accessor for Device();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D60);
  MEMORY[0x28223BE20](v8 - 8);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = &v45 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = *(v2 + *(a1 + 52));
  v16 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_device;
  swift_beginAccess();
  v54 = v14;
  sub_25237153C(v15 + v16, v14, &qword_27F4E0D60);
  v17 = *(a1 + 36);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = *(v19 + 24);
  swift_unknownObjectRetain();
  v47 = v2;
  v21 = v53;
  v20(v2 + v17, v18, v19);
  swift_unknownObjectRelease();
  v23 = v48;
  v22 = v49;
  v24 = v16;
  v45 = a1;
  v46 = v15;
  v25 = v21;
  v27 = v54;
  v26 = v55;
  v28 = v50;
  sub_25237153C(v54, v50, &qword_27F4E0D60);
  v30 = v51;
  v29 = v52;
  if ((*(v51 + 48))(v28, 1, v52) == 1)
  {
    sub_252372288(v27, &qword_27F4E0D60);
    sub_252372288(v28, &qword_27F4E0D60);
    v31 = v26;
    v32 = v23;
    v33 = v46;
    v34 = v16;
    goto LABEL_7;
  }

  sub_2525772E8(v28, v22);
  sub_252439154(*(v22 + v29[9]), *(v25 + v29[9]));
  v36 = v35;
  sub_252372288(v27, &qword_27F4E0D60);
  v37 = v22;
  v31 = v26;
  v34 = v24;
  if ((v36 & 1) == 0 || *(v37 + v29[11]) != *(v25 + v29[11]))
  {
    sub_25257AD2C(v37, type metadata accessor for Device);
    v32 = v23;
    v33 = v46;
    v38 = v47;
    v39 = v45;
    goto LABEL_6;
  }

  v43 = *(v37 + v29[12]);
  sub_25257AD2C(v37, type metadata accessor for Device);
  v44 = *(v25 + v29[12]);
  v32 = v23;
  v38 = v47;
  if (v43 == 2)
  {
    v39 = v45;
    v33 = v46;
    if (v44 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v39 = v45;
  v33 = v46;
  if (v44 == 2 || ((v43 ^ v44) & 1) != 0)
  {
LABEL_6:
    v40 = *(v38 + *(v39 + 60) + 8);
    swift_beginAccess();
    *(v40 + 16) = 1;
  }

LABEL_7:
  sub_25257AEA0(v25, v32, type metadata accessor for Device);
  v41 = *(v30 + 56);
  v41(v32, 0, 1, v29);
  swift_beginAccess();
  sub_25257AFA8(v32, v33 + v34);
  swift_endAccess();
  sub_2525772E8(v25, v31);
  return (v41)(v31, 0, 1, v29);
}

uint64_t sub_2525755DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a3;
  *&v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F10);
  MEMORY[0x28223BE20](v78);
  v6 = (&v75 - v5);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F00);
  MEMORY[0x28223BE20](v80);
  v81 = &v75 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2EF0);
  MEMORY[0x28223BE20](v79);
  v83 = &v75 - v8;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2EE0);
  MEMORY[0x28223BE20](v82);
  v86 = &v75 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2ED0);
  v89 = *(v10 - 8);
  v90 = v10;
  MEMORY[0x28223BE20](v10);
  v85 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v75 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D60);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v75 - v15;
  v17 = type metadata accessor for Device();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v88 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AccessoryControlModelView();
  v21 = sub_252575E4C(v20);
  if (!v22)
  {
    return (*(v89 + 56))(v91, 1, 1, v90);
  }

  v24 = v21;
  v25 = v22;
  v87 = v23;
  sub_25237153C(a2, v16, &qword_27F4E0D60);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {

    sub_252372288(v16, &qword_27F4E0D60);
    return (*(v89 + 56))(v91, 1, 1, v90);
  }

  v27 = v24;
  v28 = v88;
  sub_2525772E8(v16, v88);
  v29 = sub_2526929E0();
  v76 = *(a1 + v20[10]);
  v77 = v29;
  v30 = *(a1 + v20[13]);
  v31 = type metadata accessor for AccessoryControlView();
  sub_25257AEA0(v28, v6 + v31[7], type metadata accessor for Device);

  v32 = a1;
  v33 = v87;

  sub_252575F10(v20, v92);
  v34 = v6 + v31[11];
  KeyPath = swift_getKeyPath();
  v92[447] = 0;
  *v34 = KeyPath;
  v34[65] = 0;
  v36 = v31[12];
  *(v6 + v36) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  swift_storeEnumTagMultiPayload();
  v37 = v76;
  *v6 = v77;
  v6[1] = v37;
  v6[2] = v30;
  memcpy(v6 + v31[9], v92, 0x1B8uLL);
  v38 = (v6 + v31[8]);
  v76 = v25;
  v77 = v27;
  *v38 = v27;
  v38[1] = v25;
  v38[2] = v33;
  v39 = v32;
  *(v6 + v31[10]) = 1;
  v40 = v32 + v20[12];
  v41 = *(v40 + 48);
  *&v100[32] = *(v40 + 32);
  *&v100[48] = v41;
  v100[64] = *(v40 + 64);
  v42 = *(v40 + 16);
  *v100 = *v40;
  *&v100[16] = v42;
  v43 = swift_getKeyPath();
  *&v93[0] = v43;
  BYTE8(v93[4]) = v100[64];
  *(&v93[3] + 8) = *&v100[48];
  v45 = *&v100[32];
  v44 = *&v100[48];
  *(&v93[2] + 8) = *&v100[32];
  *(&v93[1] + 8) = *&v100[16];
  v47 = *v100;
  v46 = *&v100[16];
  *(v93 + 8) = *v100;
  v48 = (v6 + *(v78 + 36));
  v49 = v93[1];
  *v48 = v93[0];
  v48[1] = v49;
  v50 = v93[3];
  v48[2] = v93[2];
  v48[3] = v50;
  *(v48 + 57) = *(&v93[3] + 9);
  v98 = v44;
  v97 = v45;
  v96 = v46;
  v94 = v43;
  v99 = v100[64];
  v95 = v47;
  sub_25237153C(v93, v101, &qword_27F4DCA10);
  sub_252372288(&v94, &qword_27F4DCA10);
  v51 = sub_2526929C0();
  sub_252575F10(v20, v100);
  memcpy(v101, v100, 0x1B8uLL);
  v52 = sub_25256F008(v101);
  v53 = 0uLL;
  v54 = 0uLL;
  if (v52 != 1)
  {
    sub_252372288(v100, &qword_27F4E2B60);
    v53 = *&v101[51];
    v54 = *&v101[53];
  }

  v75 = v54;
  v78 = v53;
  v55 = v81;
  sub_2523714D4(v6, v81, &qword_27F4E2F10);
  v56 = v55 + *(v80 + 36);
  *v56 = v51;
  *(v56 + 24) = v75;
  *(v56 + 8) = v78;
  *(v56 + 40) = v52 == 1;
  v57 = swift_getKeyPath();
  v58 = v83;
  v59 = &v83[*(v79 + 36)];
  sub_2523C3820(v39 + v20[11], (v59 + 1));
  *v59 = v57;
  sub_2523714D4(v55, v58, &qword_27F4E2F00);
  v60 = swift_getKeyPath();
  v61 = *(**(v39 + v20[15] + 8) + 208);

  v63 = v61(v62);

  v64 = v86;
  sub_2523714D4(v58, v86, &qword_27F4E2EF0);
  v65 = (v64 + *(v82 + 36));
  *v65 = v60;
  *(v65 + 1) = v63;
  v66 = swift_getKeyPath();
  v67 = sub_2525760CC(v20);

  sub_25257AD2C(v88, type metadata accessor for Device);
  v68 = v85;
  sub_2523714D4(v64, v85, &qword_27F4E2EE0);
  v69 = v90;
  v70 = (v68 + *(v90 + 36));
  *v70 = v66;
  v70[1] = v67;
  v71 = v68;
  v72 = v84;
  sub_2523714D4(v71, v84, &qword_27F4E2ED0);
  v73 = v72;
  v74 = v91;
  sub_2523714D4(v73, v91, &qword_27F4E2ED0);
  return (*(v89 + 56))(v74, 0, 1, v69);
}

uint64_t sub_252575E4C(uint64_t a1)
{
  v2 = *(a1 + 36);
  v3 = *(v1 + *(a1 + 52));
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_unknownObjectRetain();
  v6 = sub_252601CD4(v1 + v2, v3, v4, v5);
  swift_unknownObjectRelease();
  return v6;
}

void *sub_252575F10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(**(v2 + *(a1 + 60) + 8) + 168);

  v5(v17, v6);

  v7 = *(**(v2 + *(a1 + 60) + 8) + 176);

  v9 = v7(v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  *&v17[51] = v9;
  v17[52] = v11;
  v17[53] = v13;
  v17[54] = v15;
  memcpy(__dst, v17, sizeof(__dst));
  CGPointMake(__dst);
  return memcpy(a2, __dst, 0x1B8uLL);
}

uint64_t sub_25257606C(uint64_t a1)
{
  sub_2523C3820(a1, v3);
  sub_2523C3820(v3, &v2);
  sub_25257AF08();
  sub_252691110();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_2525760CC(uint64_t a1)
{
  v2 = *(a1 + 36);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(v3 + 48);
  swift_unknownObjectRetain();
  v6 = v5(v1 + v2, v4, v3);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_252576174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = sub_252692A80();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v10 = sub_252692AB0();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v11 = type metadata accessor for AccessoryControlModelView();
  v8[20] = v11;
  v12 = *(v11 - 8);
  v8[21] = v12;
  v8[22] = *(v12 + 64);
  v8[23] = swift_task_alloc();
  v13 = sub_252692AD0();
  v8[24] = v13;
  v8[25] = *(v13 - 8);
  v8[26] = swift_task_alloc();
  sub_252692E00();
  v8[27] = sub_252692DF0();
  v15 = sub_252692DE0();
  v8[28] = v15;
  v8[29] = v14;

  return MEMORY[0x2822009F8](sub_25257639C, v15, v14);
}

uint64_t sub_25257639C()
{
  v1 = *(v0[9] + *(v0[20] + 64));
  v0[30] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[31] = v2;
    *v2 = v0;
    v2[1] = sub_252576790;
    v3 = MEMORY[0x277D84A98];
    v4 = MEMORY[0x277D84AC0];
    v5 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 32, v1, v5, v3, v4);
  }

  else
  {

    v21 = v0[26];
    v28 = v0[25];
    v6 = v0[23];
    v29 = v0[24];
    v7 = v0[21];
    v8 = v0[22];
    v9 = v0[20];
    v20 = v0[19];
    v26 = v0[18];
    v27 = v0[17];
    v25 = v0[15];
    v23 = v0[16];
    v24 = v0[14];
    v10 = v0[10];
    v11 = v0[11];
    v12 = v0[9];
    sub_25242D500();
    v19 = *(v0 + 6);
    v22 = sub_252692FB0();
    sub_252692AC0();
    (*(v7 + 16))(v6, v12, v9);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v19;
    (*(v7 + 32))(v14 + v13, v6, v9);
    v15 = (v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v15 = v10;
    v15[1] = v11;
    v0[6] = sub_25257AD8C;
    v0[7] = v14;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_252576CB4;
    v0[5] = &block_descriptor_1;
    v16 = _Block_copy(v0 + 2);
    sub_25235E21C(v10);
    sub_252692A90();
    v0[8] = MEMORY[0x277D84F90];
    sub_25257AE58(&qword_27F4DC400, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4E15F0);
    sub_252400FC8(&qword_27F4DC408, &unk_27F4E15F0);
    sub_252693190();
    MEMORY[0x2530A4AE0](v21, v20, v23, v16);
    _Block_release(v16);

    (*(v25 + 8))(v23, v24);
    (*(v26 + 8))(v20, v27);
    (*(v28 + 8))(v21, v29);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_252576790()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return MEMORY[0x2822009F8](sub_2525768B0, v3, v2);
}

uint64_t sub_2525768B0()
{

  v16 = v0[26];
  v23 = v0[25];
  v1 = v0[23];
  v24 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[20];
  v15 = v0[19];
  v21 = v0[18];
  v22 = v0[17];
  v20 = v0[15];
  v18 = v0[16];
  v19 = v0[14];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[9];
  sub_25242D500();
  v14 = *(v0 + 6);
  v17 = sub_252692FB0();
  sub_252692AC0();
  (*(v2 + 16))(v1, v7, v4);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v14;
  (*(v2 + 32))(v9 + v8, v1, v4);
  v10 = (v9 + ((v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v10 = v5;
  v10[1] = v6;
  v0[6] = sub_25257AD8C;
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_252576CB4;
  v0[5] = &block_descriptor_1;
  v11 = _Block_copy(v0 + 2);
  sub_25235E21C(v5);
  sub_252692A90();
  v0[8] = MEMORY[0x277D84F90];
  sub_25257AE58(&qword_27F4DC400, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4E15F0);
  sub_252400FC8(&qword_27F4DC408, &unk_27F4E15F0);
  sub_252693190();
  MEMORY[0x2530A4AE0](v16, v15, v18, v11);
  _Block_release(v11);

  (*(v20 + 8))(v18, v19);
  (*(v21 + 8))(v15, v22);
  (*(v23 + 8))(v16, v24);

  v12 = v0[1];

  return v12();
}

uint64_t sub_252576BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + *(type metadata accessor for AccessoryControlModelView() + 40));
  swift_beginAccess();
  if (*(v5 + 40) != 2)
  {
    return sub_252423D80();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 24))(0, a2, a3, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_252576CB4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_252576CFC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  *a1 = v3;
  return result;
}

uint64_t sub_252576D7C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_252690690();
}

uint64_t sub_252576DF8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25257B188;

  return v6(a1);
}

uint64_t sub_252576EF0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_252576FE8;

  return v6(a1);
}

uint64_t sub_252576FE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2525770E0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2525771D4;

  return v5(v2 + 32);
}

uint64_t sub_2525771D4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2525772E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25257734C(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for AccessoryControlModelView() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2523E233C;

  return sub_252576174(a1, v9, v10, v1 + v8, v12, v13, v6, v5);
}

void sub_2525774E8()
{
  swift_getAssociatedTypeWitness();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AnimationModel();
    if (v1 <= 0x3F)
    {
      sub_252577A28();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AccessoryControlLegacyViewModel();
        if (v3 <= 0x3F)
        {
          sub_252690B00();
          if (v4 <= 0x3F)
          {
            sub_252577A8C();
            if (v5 <= 0x3F)
            {
              sub_252577B20();
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

uint64_t sub_252577628(int *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v10 = v9 + 7;
  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v11 = ((((((((((((v10 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = a2 - v7 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v11);
      if (!v16)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v16 = *(a1 + v11);
      if (!v16)
      {
        goto LABEL_27;
      }
    }

LABEL_24:
    v18 = v16 - 1;
    if (v12)
    {
      v18 = 0;
      v19 = *a1;
    }

    else
    {
      v19 = 0;
    }

    return v7 + (v19 | v18) + 1;
  }

  if (v15)
  {
    v16 = *(a1 + v11);
    if (v16)
    {
      goto LABEL_24;
    }
  }

LABEL_27:
  v20 = (a1 + v8 + 8) & ~v8;
  if (v6 < 0x7FFFFFFF)
  {
    v22 = *((v10 + v20) & 0xFFFFFFFFFFFFFFF8);
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    return (v22 + 1);
  }

  else
  {
    v21 = *(v5 + 48);

    return v21(v20);
  }
}

void sub_252577800(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(v6 + 64) + 7;
  v11 = ((((((((((((v10 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v14 = 0;
    v15 = a2 - v9;
    if (a2 <= v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((((((((v10 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 119) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = a3 - v9 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v9;
    if (a2 <= v9)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v18 = (a1 + v8 + 8) & ~v8;
      if (v7 < 0x7FFFFFFF)
      {
        v20 = ((v10 + v18) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = (a2 - 1);
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v6 + 56);

        v19(v18, a2);
      }

      return;
    }
  }

  if (((((((((((((v10 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 119) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((((((((v10 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 119) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v9 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

unint64_t sub_252577A28()
{
  result = qword_27F4E2E88;
  if (!qword_27F4E2E88)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F4E2E88);
  }

  return result;
}

void sub_252577A8C()
{
  if (!qword_27F4E2E90)
  {
    type metadata accessor for TransitionTileHelper();
    sub_25257AE58(&qword_27F4DBCA0, type metadata accessor for TransitionTileHelper);
    v0 = sub_252690B00();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4E2E90);
    }
  }
}

void sub_252577B20()
{
  if (!qword_27F4E2E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2EA0);
    v0 = sub_252693130();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4E2E98);
    }
  }
}

unint64_t sub_252577B84()
{
  result = qword_27F4E2EA8;
  if (!qword_27F4E2EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2EB0);
    sub_252577C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2EA8);
  }

  return result;
}

unint64_t sub_252577C08()
{
  result = qword_27F4E2EB8;
  if (!qword_27F4E2EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2EC0);
    sub_252577C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2EB8);
  }

  return result;
}

unint64_t sub_252577C8C()
{
  result = qword_27F4E2EC8;
  if (!qword_27F4E2EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2ED0);
    sub_252577D44();
    sub_252400FC8(&qword_27F4E2F40, &qword_27F4E2F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2EC8);
  }

  return result;
}

unint64_t sub_252577D44()
{
  result = qword_27F4E2ED8;
  if (!qword_27F4E2ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2EE0);
    sub_252577DFC();
    sub_252400FC8(&qword_27F4DBFB8, &qword_27F4DBFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2ED8);
  }

  return result;
}

unint64_t sub_252577DFC()
{
  result = qword_27F4E2EE8;
  if (!qword_27F4E2EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2EF0);
    sub_252577EB4();
    sub_252400FC8(&qword_27F4E2F30, &qword_27F4E2F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2EE8);
  }

  return result;
}

unint64_t sub_252577EB4()
{
  result = qword_27F4E2EF8;
  if (!qword_27F4E2EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2F00);
    sub_252577F6C();
    sub_252400FC8(&qword_27F4E2F20, &qword_27F4E2F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2EF8);
  }

  return result;
}

unint64_t sub_252577F6C()
{
  result = qword_27F4E2F08;
  if (!qword_27F4E2F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2F10);
    sub_25257AE58(&qword_27F4E2F18, type metadata accessor for AccessoryControlView);
    sub_252400FC8(&qword_27F4DCA18, &qword_27F4DCA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2F08);
  }

  return result;
}

uint64_t sub_252578054(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252401074;

  return sub_2525770E0(a1, v4);
}

uint64_t sub_25257810C(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F50);
  v1[3] = swift_task_alloc();
  v2 = sub_25268F6F0();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF40);
  v1[7] = swift_task_alloc();
  v3 = sub_25268EBE0();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = sub_25268E8D0();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB948);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F58);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v5 = sub_25268DA10();
  v1[33] = v5;
  v1[34] = *(v5 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = type metadata accessor for DataModel.ObjectIdentifier();
  v1[46] = swift_task_alloc();
  sub_252692E00();
  v1[47] = sub_252692DF0();
  v7 = sub_252692DE0();
  v1[48] = v7;
  v1[49] = v6;

  return MEMORY[0x2822009F8](sub_25257855C, v7, v6);
}

uint64_t sub_25257855C()
{
  sub_25257AEA0(v0[2], v0[46], type metadata accessor for DataModel.ObjectIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v2 = v0[46];
        v4 = v0[38];
        v3 = v0[39];
        v5 = v0[33];
        v6 = v0[34];
        v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F60) + 48);
        v8 = *(v6 + 32);
        v8(v3, v2, v5);
        v8(v4, v2 + v7, v5);
        sub_25268E1B0();
        v9 = sub_25268E1A0();
        v10 = sub_25268E160();

        if (*(v10 + 16) && (v11 = sub_252367880(v0[38]), (v12 & 1) != 0))
        {
          (*(v0[12] + 16))(v0[21], *(v10 + 56) + *(v0[12] + 72) * v11, v0[11]);
          v13 = 0;
        }

        else
        {
          v13 = 1;
        }

        v55 = v0[21];
        v56 = v0[11];
        v57 = v0[12];

        v58 = *(v57 + 56);
        v58(v55, v13, 1, v56);
        v59 = *(v57 + 48);
        if (v59(v55, 1, v56))
        {
          v60 = v0[38];
          v61 = v0[39];
          v62 = v0[33];
          v63 = v0[34];
          v64 = v0[21];
          v65 = v0[4];
          v66 = v0[5];
          v67 = v0[3];

          v68 = *(v63 + 8);
          v68(v60, v62);
          v68(v61, v62);
          sub_252372288(v64, &qword_27F4DB948);
          (*(v66 + 56))(v67, 1, 1, v65);
LABEL_45:
          v133 = v0[3];
          v134 = &unk_27F4E2F50;
LABEL_68:
          sub_252372288(v133, v134);
          goto LABEL_69;
        }

        v98 = v0[21];
        v99 = v0[15];
        v100 = v0[11];
        v101 = v0[12];
        v226 = *(v101 + 16);
        v226(v99, v98, v100);
        sub_252372288(v98, &qword_27F4DB948);
        v102 = sub_25268E8B0();
        v224 = *(v101 + 8);
        v224(v99, v100);
        if (*(v102 + 16) && (v103 = sub_252367880(v0[39]), (v104 & 1) != 0))
        {
          (*(v0[5] + 16))(v0[3], *(v102 + 56) + *(v0[5] + 72) * v103, v0[4]);
          v105 = 0;
        }

        else
        {
          v105 = 1;
        }

        v125 = v0[4];
        v126 = v0[5];
        v127 = v0[3];

        (*(v126 + 56))(v127, v105, 1, v125);
        if ((*(v126 + 48))(v127, 1, v125) == 1)
        {
          v128 = v0[38];
          v129 = v0[39];
          v130 = v0[33];
          v131 = v0[34];

          v132 = *(v131 + 8);
          v132(v128, v130);
          v132(v129, v130);
          goto LABEL_45;
        }

        (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
        v143 = sub_25268E1A0();
        v144 = sub_25268E160();

        if (*(v144 + 16) && (v145 = sub_252367880(v0[38]), (v146 & 1) != 0))
        {
          v226(v0[20], *(v144 + 56) + *(v0[12] + 72) * v145, v0[11]);
          v147 = 0;
        }

        else
        {
          v147 = 1;
        }

        v168 = v0[20];
        v169 = v0[11];

        v58(v168, v147, 1, v169);
        v170 = v59(v168, 1, v169);
        v171 = v0[20];
        if (v170)
        {
          v172 = v0[28];
          sub_252372288(v0[20], &qword_27F4DB948);
        }

        else
        {
          v196 = v0[14];
          v197 = v0[11];
          v226(v196, v0[20], v197);
          sub_252372288(v171, &qword_27F4DB948);
          v198 = sub_25268E890();
          v224(v196, v197);
          sub_25268F670();
          v199 = v0[37];
          if (!*(v198 + 16))
          {
            v218 = v0[33];
            v219 = v0[34];
            v220 = v0[28];

            (*(v219 + 8))(v199, v218);
            v173 = sub_25268F0A0();
            (*(*(v173 - 8) + 56))(v220, 1, 1, v173);
            goto LABEL_80;
          }

          v200 = sub_252367880(v0[37]);
          v201 = v0[37];
          v202 = v0[33];
          v203 = v0[34];
          v172 = v0[28];
          if (v204)
          {
            v205 = v200;
            v228 = *(v198 + 56);
            v173 = sub_25268F0A0();
            v206 = *(v173 - 8);
            (*(v206 + 16))(v172, v228 + *(v206 + 72) * v205, v173);
            (*(v203 + 8))(v201, v202);

            (*(v206 + 56))(v172, 0, 1, v173);
            goto LABEL_80;
          }

          (*(v203 + 8))(v201, v202);
        }

        v173 = sub_25268F0A0();
        (*(*(v173 - 8) + 56))(v172, 1, 1, v173);
LABEL_80:
        v174 = v0[27];
        sub_25237153C(v0[28], v174, &qword_27F4E2F58);
        sub_25268F0A0();
        v0[58] = v173;
        v175 = *(v173 - 8);
        v0[59] = v175;
        if ((*(v175 + 48))(v174, 1, v173) == 1)
        {
          v176 = v0[38];
          v177 = v0[39];
          v178 = v0[33];
          v179 = v0[34];
          v181 = v0[27];
          v180 = v0[28];
          v183 = v0[5];
          v182 = v0[6];
          v184 = v0[4];
LABEL_88:

          sub_252372288(v180, &qword_27F4E2F58);
          (*(v183 + 8))(v182, v184);
          v193 = *(v179 + 8);
          v193(v176, v178);
          v193(v177, v178);
          v133 = v181;
          v134 = &qword_27F4E2F58;
          goto LABEL_68;
        }

        v194 = swift_task_alloc();
        v0[60] = v194;
        *v194 = v0;
        v194[1] = sub_25257A5A4;
        goto LABEL_73;
      }

      v38 = v0[46];
      v40 = v0[35];
      v39 = v0[36];
      v41 = v0[33];
      v42 = v0[34];
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F60) + 48);
      v44 = *(v42 + 32);
      v44(v39, v38, v41);
      v44(v40, v38 + v43, v41);
      sub_25268E1B0();
      v45 = sub_25268E1A0();
      v46 = sub_25268E160();

      if (*(v46 + 16) && (v47 = sub_252367880(v0[35]), (v48 & 1) != 0))
      {
        (*(v0[12] + 16))(v0[19], *(v46 + 56) + *(v0[12] + 72) * v47, v0[11]);
        v49 = 0;
      }

      else
      {
        v49 = 1;
      }

      v69 = v0[19];
      v70 = v0[11];
      v71 = v0[12];

      (*(v71 + 56))(v69, v49, 1, v70);
      if ((*(v71 + 48))(v69, 1, v70))
      {
        v72 = v0[26];
        sub_252372288(v0[19], &qword_27F4DB948);
      }

      else
      {
        v106 = v0[19];
        v108 = v0[12];
        v107 = v0[13];
        v109 = v0[11];
        (*(v108 + 16))(v107, v106, v109);
        sub_252372288(v106, &qword_27F4DB948);
        v110 = sub_25268E890();
        (*(v108 + 8))(v107, v109);
        if (*(v110 + 16))
        {
          v111 = sub_252367880(v0[36]);
          v72 = v0[26];
          if (v112)
          {
            v113 = v111;
            v114 = *(v110 + 56);
            v115 = sub_25268F0A0();
            v116 = *(v115 - 8);
            (*(v116 + 16))(v72, v114 + *(v116 + 72) * v113, v115);

            (*(v116 + 56))(v72, 0, 1, v115);
LABEL_65:
            v162 = v0[25];
            sub_25237153C(v0[26], v162, &qword_27F4E2F58);
            sub_25268F0A0();
            v0[62] = v115;
            v163 = *(v115 - 8);
            v0[63] = v163;
            if ((*(v163 + 48))(v162, 1, v115) != 1)
            {
              v167 = swift_task_alloc();
              v0[64] = v167;
              *v167 = v0;
              v167[1] = sub_25257A978;
              goto LABEL_73;
            }

            v155 = v0[35];
            v156 = v0[36];
            v157 = v0[33];
            v158 = v0[34];
            v160 = v0[25];
            v159 = v0[26];
            goto LABEL_67;
          }
        }

        else
        {
          v72 = v0[26];
        }
      }

      v115 = sub_25268F0A0();
      (*(*(v115 - 8) + 56))(v72, 1, 1, v115);
      goto LABEL_65;
    }

    v26 = v0[46];
    v28 = v0[43];
    v27 = v0[44];
    v29 = v0[33];
    v30 = v0[34];
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F60) + 48);
    v32 = *(v30 + 32);
    v32(v27, v26, v29);
    v32(v28, v26 + v31, v29);
    sub_25268E1B0();
    v33 = sub_25268E1A0();
    v34 = sub_25268E160();

    if (*(v34 + 16) && (v35 = sub_252367880(v0[43]), (v36 & 1) != 0))
    {
      (*(v0[12] + 16))(v0[24], *(v34 + 56) + *(v0[12] + 72) * v35, v0[11]);
      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v51 = v0[24];
    v52 = v0[11];
    v53 = v0[12];

    (*(v53 + 56))(v51, v37, 1, v52);
    if ((*(v53 + 48))(v51, 1, v52))
    {
      v54 = v0[32];
      sub_252372288(v0[24], &qword_27F4DB948);
    }

    else
    {
      v87 = v0[24];
      v88 = v0[18];
      v89 = v0[11];
      v90 = v0[12];
      (*(v90 + 16))(v88, v87, v89);
      sub_252372288(v87, &qword_27F4DB948);
      v91 = sub_25268E890();
      (*(v90 + 8))(v88, v89);
      if (*(v91 + 16))
      {
        v92 = sub_252367880(v0[44]);
        v54 = v0[32];
        if (v93)
        {
          v94 = v92;
          v95 = *(v91 + 56);
          v96 = sub_25268F0A0();
          v97 = *(v96 - 8);
          (*(v97 + 16))(v54, v95 + *(v97 + 72) * v94, v96);

          (*(v97 + 56))(v54, 0, 1, v96);
LABEL_59:
          v153 = v0[31];
          sub_25237153C(v0[32], v153, &qword_27F4E2F58);
          sub_25268F0A0();
          v0[50] = v96;
          v154 = *(v96 - 8);
          v0[51] = v154;
          if ((*(v154 + 48))(v153, 1, v96) != 1)
          {
            v161 = swift_task_alloc();
            v0[52] = v161;
            *v161 = v0;
            v161[1] = sub_252579E1C;
            goto LABEL_73;
          }

          v155 = v0[43];
          v156 = v0[44];
          v157 = v0[33];
          v158 = v0[34];
          v160 = v0[31];
          v159 = v0[32];
LABEL_67:

          sub_252372288(v159, &qword_27F4E2F58);
          v164 = *(v158 + 8);
          v164(v155, v157);
          v164(v156, v157);
          v133 = v160;
          v134 = &qword_27F4E2F58;
          goto LABEL_68;
        }
      }

      else
      {
        v54 = v0[32];
      }
    }

    v96 = sub_25268F0A0();
    (*(*(v96 - 8) + 56))(v54, 1, 1, v96);
    goto LABEL_59;
  }

  if (EnumCaseMultiPayload)
  {
    v50 = v0[46];

    sub_25257AD2C(v50, type metadata accessor for DataModel.ObjectIdentifier);
LABEL_69:

    v165 = v0[1];

    return v165(0);
  }

  v14 = v0[46];
  v16 = v0[41];
  v15 = v0[42];
  v17 = v0[33];
  v18 = v0[34];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F60) + 48);
  v20 = *(v18 + 32);
  v20(v15, v14, v17);
  v20(v16, v14 + v19, v17);
  sub_25268E1B0();
  v21 = sub_25268E1A0();
  v22 = sub_25268E160();

  if (*(v22 + 16) && (v23 = sub_252367880(v0[41]), (v24 & 1) != 0))
  {
    (*(v0[12] + 16))(v0[23], *(v22 + 56) + *(v0[12] + 72) * v23, v0[11]);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v73 = v0[23];
  v74 = v0[11];
  v75 = v0[12];

  v76 = *(v75 + 56);
  v76(v73, v25, 1, v74);
  v77 = *(v75 + 48);
  if (v77(v73, 1, v74))
  {
    v78 = v0[41];
    v79 = v0[42];
    v80 = v0[33];
    v81 = v0[34];
    v82 = v0[23];
    v83 = v0[8];
    v84 = v0[9];
    v85 = v0[7];

    v86 = *(v81 + 8);
    v86(v78, v80);
    v86(v79, v80);
    sub_252372288(v82, &qword_27F4DB948);
    (*(v84 + 56))(v85, 1, 1, v83);
LABEL_49:
    v133 = v0[7];
    v134 = &unk_27F4DAF40;
    goto LABEL_68;
  }

  v117 = v0[23];
  v118 = v0[17];
  v119 = v0[11];
  v120 = v0[12];
  v227 = *(v120 + 16);
  v227(v118, v117, v119);
  sub_252372288(v117, &qword_27F4DB948);
  v121 = sub_25268E880();
  v225 = *(v120 + 8);
  v225(v118, v119);
  if (*(v121 + 16) && (v122 = sub_252367880(v0[42]), (v123 & 1) != 0))
  {
    (*(v0[9] + 16))(v0[7], *(v121 + 56) + *(v0[9] + 72) * v122, v0[8]);
    v124 = 0;
  }

  else
  {
    v124 = 1;
  }

  v135 = v0[8];
  v136 = v0[9];
  v137 = v0[7];

  (*(v136 + 56))(v137, v124, 1, v135);
  if ((*(v136 + 48))(v137, 1, v135) == 1)
  {
    v138 = v0[41];
    v139 = v0[42];
    v140 = v0[33];
    v141 = v0[34];

    v142 = *(v141 + 8);
    v142(v138, v140);
    v142(v139, v140);
    goto LABEL_49;
  }

  (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
  v148 = sub_25268E1A0();
  v149 = sub_25268E160();

  if (*(v149 + 16) && (v150 = sub_252367880(v0[41]), (v151 & 1) != 0))
  {
    v227(v0[22], *(v149 + 56) + *(v0[12] + 72) * v150, v0[11]);
    v152 = 0;
  }

  else
  {
    v152 = 1;
  }

  v185 = v0[22];
  v186 = v0[11];

  v76(v185, v152, 1, v186);
  v187 = v77(v185, 1, v186);
  v188 = v0[22];
  if (v187)
  {
    v189 = v0[30];
    sub_252372288(v0[22], &qword_27F4DB948);
  }

  else
  {
    v207 = v0[16];
    v208 = v0[11];
    v227(v207, v0[22], v208);
    sub_252372288(v188, &qword_27F4DB948);
    v209 = sub_25268E890();
    v225(v207, v208);
    sub_25268E940();
    v210 = v0[40];
    if (!*(v209 + 16))
    {
      v221 = v0[33];
      v222 = v0[34];
      v223 = v0[30];

      (*(v222 + 8))(v210, v221);
      v190 = sub_25268F0A0();
      (*(*(v190 - 8) + 56))(v223, 1, 1, v190);
      goto LABEL_86;
    }

    v211 = sub_252367880(v0[40]);
    v212 = v0[40];
    v213 = v0[33];
    v214 = v0[34];
    v189 = v0[30];
    if (v215)
    {
      v216 = v211;
      v229 = *(v209 + 56);
      v190 = sub_25268F0A0();
      v217 = *(v190 - 8);
      (*(v217 + 16))(v189, v229 + *(v217 + 72) * v216, v190);
      (*(v214 + 8))(v212, v213);

      (*(v217 + 56))(v189, 0, 1, v190);
      goto LABEL_86;
    }

    (*(v214 + 8))(v212, v213);
  }

  v190 = sub_25268F0A0();
  (*(*(v190 - 8) + 56))(v189, 1, 1, v190);
LABEL_86:
  v191 = v0[29];
  sub_25237153C(v0[30], v191, &qword_27F4E2F58);
  sub_25268F0A0();
  v0[54] = v190;
  v192 = *(v190 - 8);
  v0[55] = v192;
  if ((*(v192 + 48))(v191, 1, v190) == 1)
  {
    v176 = v0[41];
    v177 = v0[42];
    v178 = v0[33];
    v179 = v0[34];
    v181 = v0[29];
    v180 = v0[30];
    v183 = v0[9];
    v182 = v0[10];
    v184 = v0[8];
    goto LABEL_88;
  }

  v195 = swift_task_alloc();
  v0[56] = v195;
  *v195 = v0;
  v195[1] = sub_25257A1D0;
LABEL_73:

  return MEMORY[0x28216FAE8]();
}

uint64_t sub_252579E1C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 424) = a1;

  v3 = *(v2 + 392);
  v4 = *(v2 + 384);

  return MEMORY[0x2822009F8](sub_252579F44, v4, v3);
}

uint64_t sub_252579F44()
{
  v1 = v0[50];
  v2 = v0[51];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[33];
  v6 = v0[34];
  v8 = v0[31];
  v7 = v0[32];

  sub_252372288(v7, &qword_27F4E2F58);
  v9 = *(v6 + 8);
  v9(v4, v5);
  v9(v3, v5);
  (*(v2 + 8))(v8, v1);
  v12 = v0[53];

  v10 = v0[1];

  return v10(v12);
}

uint64_t sub_25257A1D0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 456) = a1;

  v3 = *(v2 + 392);
  v4 = *(v2 + 384);

  return MEMORY[0x2822009F8](sub_25257A2F8, v4, v3);
}

uint64_t sub_25257A2F8()
{
  v1 = v0[55];
  v3 = v0[41];
  v2 = v0[42];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[30];
  v13 = v0[29];
  v14 = v0[54];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[8];

  sub_252372288(v6, &qword_27F4E2F58);
  (*(v7 + 8))(v8, v9);
  v10 = *(v4 + 8);
  v10(v3, v5);
  v10(v2, v5);
  (*(v1 + 8))(v13, v14);
  v15 = v0[57];

  v11 = v0[1];

  return v11(v15);
}

uint64_t sub_25257A5A4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 488) = a1;

  v3 = *(v2 + 392);
  v4 = *(v2 + 384);

  return MEMORY[0x2822009F8](sub_25257A6CC, v4, v3);
}

uint64_t sub_25257A6CC()
{
  v1 = v0[59];
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[28];
  v13 = v0[27];
  v14 = v0[58];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];

  sub_252372288(v6, &qword_27F4E2F58);
  (*(v7 + 8))(v8, v9);
  v10 = *(v4 + 8);
  v10(v3, v5);
  v10(v2, v5);
  (*(v1 + 8))(v13, v14);
  v15 = v0[61];

  v11 = v0[1];

  return v11(v15);
}

uint64_t sub_25257A978(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 520) = a1;

  v3 = *(v2 + 392);
  v4 = *(v2 + 384);

  return MEMORY[0x2822009F8](sub_25257AAA0, v4, v3);
}

uint64_t sub_25257AAA0()
{
  v1 = v0[62];
  v2 = v0[63];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  v8 = v0[25];
  v7 = v0[26];

  sub_252372288(v7, &qword_27F4E2F58);
  v9 = *(v6 + 8);
  v9(v4, v5);
  v9(v3, v5);
  (*(v2 + 8))(v8, v1);
  v12 = v0[65];

  v10 = v0[1];

  return v10(v12);
}

uint64_t sub_25257AD2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25257AD8C()
{
  v1 = *(type metadata accessor for AccessoryControlModelView() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_252576BEC(v0 + v2, v4, v5);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25257AE58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25257AEA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25257AF08()
{
  result = qword_27F4E2F68;
  if (!qword_27F4E2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2F68);
  }

  return result;
}

uint64_t sub_25257AF5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25257AFA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25257B018(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252401074;

  return sub_252576EF0(a1, v4);
}

uint64_t sub_25257B0D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2523E233C;

  return sub_252576EF0(a1, v4);
}

void sub_25257B1D4()
{
  type metadata accessor for Device();
  if (v0 <= 0x3F)
  {
    sub_25256CF1C();
    if (v1 <= 0x3F)
    {
      sub_25257B310();
      if (v2 <= 0x3F)
      {
        sub_25251B654();
        if (v3 <= 0x3F)
        {
          sub_252475A70(319, &qword_27F4DBD08, &type metadata for AccessoryControlsStyle, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_252475A70(319, &qword_27F4E2F90, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
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

void sub_25257B310()
{
  if (!qword_27F4E2F88)
  {
    _s31SettingsPresentationCoordinatorCMa();
    v0 = sub_252692510();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4E2F88);
    }
  }
}

uint64_t sub_25257B384(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControlModule.Layout(0);
  v184 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v155 - v8;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3190);
  MEMORY[0x28223BE20](v164);
  v11 = &v155 - v10;
  v191 = type metadata accessor for Device.Control(0);
  v175 = *(v191 - 1);
  MEMORY[0x28223BE20](v191);
  v165 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v188 = &v155 - v14;
  MEMORY[0x28223BE20](v15);
  v186 = &v155 - v16;
  MEMORY[0x28223BE20](v17);
  v187 = &v155 - v18;
  MEMORY[0x28223BE20](v19);
  v182 = &v155 - v20;
  v21 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v21);
  v168 = &v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v167 = (&v155 - v24);
  MEMORY[0x28223BE20](v25);
  v166 = (&v155 - v26);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB840);
  MEMORY[0x28223BE20](v174);
  v28 = &v155 - v27;
  v180 = type metadata accessor for Device.ControlGroup(0);
  v183 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v189 = &v155 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v190 = &v155 - v31;
  v163 = type metadata accessor for Device.ControlModule(0);
  MEMORY[0x28223BE20](v163);
  v34 = (&v155 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *(a2 + 16);
  if (!v35)
  {
    return 0;
  }

  v185 = v28;
  v156 = v9;
  v155 = v6;
  v36 = 0;
  v37 = a1;
  v38 = a2 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
  v39 = *(v32 + 72);
  v157 = (v184 + 48);
  v40 = v37;
  v179 = v37;
  v159 = v4;
  v158 = v11;
  v41 = v186;
  v172 = v35;
  v173 = v21;
  v184 = v39;
  v176 = v38;
  while (1)
  {
    result = sub_252582648(v38 + v39 * v36, v34, type metadata accessor for Device.ControlModule);
    v43 = v34[1];
    v44 = v40;
    v45 = v40[1];
    if (v43)
    {
      if (!v45)
      {
        goto LABEL_4;
      }

      result = *v34;
      v46 = *v34 == *v40 && v43 == v45;
      if (!v46)
      {
        result = sub_2526933B0();
        v44 = v40;
        if ((result & 1) == 0)
        {
          goto LABEL_4;
        }
      }
    }

    else if (v45)
    {
      goto LABEL_4;
    }

    v47 = v34[2];
    v48 = v44[2];
    v49 = *(v47 + 16);
    if (v49 != *(v48 + 16))
    {
      goto LABEL_4;
    }

    if (v49 && v47 != v48)
    {
      break;
    }

LABEL_137:
    v141 = v34[4];
    v142 = v44[4];
    if (v141)
    {
      v38 = v176;
      if (!v142)
      {
        goto LABEL_4;
      }

      if (v34[3] != v44[3] || v141 != v142)
      {
        v143 = v44;
        v144 = sub_2526933B0();
        v44 = v143;
        if ((v144 & 1) == 0)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      v38 = v176;
      if (v142)
      {
        goto LABEL_4;
      }
    }

    v145 = *(v163 + 28);
    v146 = *(v164 + 48);
    v147 = v158;
    v148 = v44;
    sub_25237153C(v34 + v145, v158, &qword_27F4E2DC0);
    sub_25237153C(v148 + v145, v147 + v146, &qword_27F4E2DC0);
    v149 = *v157;
    v150 = v159;
    if ((*v157)(v147, 1, v159) == 1)
    {
      v151 = v149(v147 + v146, 1, v150);
      v41 = v186;
      if (v151 == 1)
      {
        sub_252372288(v147, &qword_27F4E2DC0);
LABEL_163:
        sub_2525826B0(v34, type metadata accessor for Device.ControlModule);
        return v36;
      }

      goto LABEL_149;
    }

    v152 = v156;
    sub_25237153C(v147, v156, &qword_27F4E2DC0);
    if (v149(v147 + v146, 1, v150) == 1)
    {
      sub_2525826B0(v152, type metadata accessor for AccessoryControlModule.Layout);
      v41 = v186;
      v38 = v176;
LABEL_149:
      sub_252372288(v147, &qword_27F4E3190);
      v39 = v184;
      v44 = v179;
      goto LABEL_4;
    }

    v153 = v155;
    sub_252582710(v147 + v146, v155, type metadata accessor for AccessoryControlModule.Layout);
    v154 = _s22HomeAccessoryControlUI0bC6ModuleV6LayoutO2eeoiySbAE_AEtFZ_0(v152, v153);
    sub_2525826B0(v153, type metadata accessor for AccessoryControlModule.Layout);
    sub_2525826B0(v152, type metadata accessor for AccessoryControlModule.Layout);
    sub_252372288(v147, &qword_27F4E2DC0);
    v41 = v186;
    v38 = v176;
    v39 = v184;
    v44 = v179;
    if (v154)
    {
      goto LABEL_163;
    }

LABEL_4:
    v40 = v44;
    sub_2525826B0(v34, type metadata accessor for Device.ControlModule);
    if (++v36 == v35)
    {
      return 0;
    }
  }

  v50 = 0;
  v51 = (*(v183 + 80) + 32) & ~*(v183 + 80);
  v177 = v48 + v51;
  v178 = v47 + v51;
  v170 = v47;
  v181 = v48;
  v169 = v49;
  while (v50 < *(v47 + 16))
  {
    v52 = v41;
    v53 = *(v183 + 72) * v50;
    v54 = v190;
    result = sub_252582648(v178 + v53, v190, type metadata accessor for Device.ControlGroup);
    if (v50 >= *(v48 + 16))
    {
      goto LABEL_165;
    }

    v55 = v189;
    sub_252582648(v177 + v53, v189, type metadata accessor for Device.ControlGroup);
    v56 = *(v174 + 48);
    v57 = v185;
    sub_252582648(v54, v185, type metadata accessor for Device.ControlGroup.LayoutType);
    sub_252582648(v55, v57 + v56, type metadata accessor for Device.ControlGroup.LayoutType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v84 = v185;
      v85 = v166;
      sub_252582648(v185, v166, type metadata accessor for Device.ControlGroup.LayoutType);
      v86 = *v85;
      result = swift_getEnumCaseMultiPayload();
      v41 = v52;
      if (result)
      {
LABEL_157:

LABEL_159:
        v35 = v172;
        v39 = v184;
        sub_252372288(v185, &qword_27F4DB840);
        goto LABEL_160;
      }

      v171 = v50;
      v87 = *(v84 + v56);
      v88 = *(v86 + 16);
      if (v88 != *(v87 + 16))
      {
        goto LABEL_153;
      }

      v39 = v184;
      if (v88)
      {
        v48 = v181;
        if (v86 != v87)
        {
          v89 = 0;
          v90 = (*(v175 + 80) + 32) & ~*(v175 + 80);
          v162 = v86 + v90;
          v160 = v87 + v90;
          v161 = v86;
          while (v89 < *(v86 + 16))
          {
            v91 = *(v175 + 72) * v89;
            v92 = v182;
            result = sub_252582648(v162 + v91, v182, type metadata accessor for Device.Control);
            if (v89 >= *(v87 + 16))
            {
              goto LABEL_168;
            }

            sub_252582648(v160 + v91, v187, type metadata accessor for Device.Control);
            if ((_s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (v93 = static Device.Control.Kind.== infix(_:_:)(v92 + v191[5], (v187 + v191[5])), v92 = v182, (v93 & 1) == 0) || (v94 = static Device.Control.Source.== infix(_:_:)(v182 + v191[6], v187 + v191[6]), v92 = v182, (v94 & 1) == 0) || *(v182 + v191[7]) != *(v187 + v191[7]))
            {
LABEL_150:
              sub_2525826B0(v187, type metadata accessor for Device.Control);
              sub_2525826B0(v92, type metadata accessor for Device.Control);
              goto LABEL_153;
            }

            v95 = v191[8];
            v96 = (v182 + v95);
            v97 = *(v182 + v95 + 8);
            v98 = (v187 + v95);
            v99 = v98[1];
            if (v97)
            {
              if (!v99)
              {
                goto LABEL_150;
              }

              if (*v96 != *v98 || v97 != v99)
              {
                v100 = sub_2526933B0();
                v92 = v182;
                if ((v100 & 1) == 0)
                {
                  goto LABEL_150;
                }
              }
            }

            else if (v99)
            {
              goto LABEL_150;
            }

            v101 = v191[9];
            v102 = *(v92 + v101);
            v103 = *(v92 + v101 + 1);
            v104 = (v187 + v101);
            v105 = *v104;
            v106 = v104[1];
            if (v102 == 4)
            {
              if (v105 != 4)
              {
                goto LABEL_150;
              }
            }

            else if (v102 != v105)
            {
              goto LABEL_150;
            }

            if (v103 == 4)
            {
              if (v106 != 4)
              {
                goto LABEL_150;
              }
            }

            else if (v106 == 4 || v103 != v106)
            {
              goto LABEL_150;
            }

            v107 = v191[10];
            v108 = *(v92 + v107);
            v109 = *(v187 + v107);
            if (v108 == 16)
            {
              if (v109 != 16)
              {
                goto LABEL_150;
              }
            }

            else if (v108 != v109)
            {
              goto LABEL_150;
            }

            v110 = v191[11];
            v111 = *(v92 + v110);
            v112 = *(v187 + v110);
            sub_2525826B0(v187, type metadata accessor for Device.Control);
            result = sub_2525826B0(v92, type metadata accessor for Device.Control);
            v46 = v111 == v112;
            v41 = v186;
            v86 = v161;
            if (!v46)
            {
              goto LABEL_153;
            }

            ++v89;
            v48 = v181;
            if (v88 == v89)
            {

              v35 = v172;
              v39 = v184;
              goto LABEL_103;
            }
          }

          goto LABEL_166;
        }

        v35 = v172;
        goto LABEL_103;
      }

LABEL_101:

      v35 = v172;
LABEL_102:
      v48 = v181;
LABEL_103:
      v50 = v171;
      goto LABEL_120;
    }

    v41 = v52;
    if (EnumCaseMultiPayload == 1)
    {
      v59 = v185;
      v60 = v167;
      sub_252582648(v185, v167, type metadata accessor for Device.ControlGroup.LayoutType);
      v61 = *v60;
      result = swift_getEnumCaseMultiPayload();
      if (result != 1)
      {
        goto LABEL_157;
      }

      v171 = v50;
      v62 = *(v59 + v56);
      v63 = *(v61 + 16);
      if (v63 != *(v62 + 16))
      {
LABEL_153:

        sub_2525826B0(v185, type metadata accessor for Device.ControlGroup.LayoutType);
        v35 = v172;
        v39 = v184;
LABEL_160:
        sub_2525826B0(v189, type metadata accessor for Device.ControlGroup);
        sub_2525826B0(v190, type metadata accessor for Device.ControlGroup);
        v38 = v176;
        v44 = v179;
        goto LABEL_4;
      }

      v39 = v184;
      if (v63 && v61 != v62)
      {
        v64 = 0;
        v65 = (*(v175 + 80) + 32) & ~*(v175 + 80);
        v162 = v61 + v65;
        v161 = v62 + v65;
        while (v64 < *(v61 + 16))
        {
          v66 = *(v175 + 72) * v64;
          result = sub_252582648(v162 + v66, v41, type metadata accessor for Device.Control);
          if (v64 >= *(v62 + 16))
          {
            goto LABEL_169;
          }

          sub_252582648(v161 + v66, v188, type metadata accessor for Device.Control);
          v41 = v186;
          if ((_s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (static Device.Control.Kind.== infix(_:_:)(v41 + v191[5], (v188 + v191[5])) & 1) == 0 || (static Device.Control.Source.== infix(_:_:)(v41 + v191[6], v188 + v191[6]) & 1) == 0 || *(v41 + v191[7]) != *(v188 + v191[7]))
          {
LABEL_152:
            sub_2525826B0(v188, type metadata accessor for Device.Control);
            sub_2525826B0(v41, type metadata accessor for Device.Control);
            goto LABEL_153;
          }

          v67 = v191[8];
          v68 = (v41 + v67);
          v69 = *(v41 + v67 + 8);
          v70 = (v188 + v67);
          v71 = v70[1];
          if (v69)
          {
            if (!v71 || (*v68 != *v70 || v69 != v71) && (sub_2526933B0() & 1) == 0)
            {
              goto LABEL_152;
            }
          }

          else if (v71)
          {
            goto LABEL_152;
          }

          v72 = v191[9];
          v73 = *(v41 + v72);
          v74 = *(v41 + v72 + 1);
          v75 = (v188 + v72);
          v76 = *v75;
          v77 = v75[1];
          if (v73 == 4)
          {
            if (v76 != 4)
            {
              goto LABEL_152;
            }
          }

          else if (v73 != v76)
          {
            goto LABEL_152;
          }

          if (v74 == 4)
          {
            if (v77 != 4)
            {
              goto LABEL_152;
            }
          }

          else if (v77 == 4 || v74 != v77)
          {
            goto LABEL_152;
          }

          v78 = v191[10];
          v79 = *(v41 + v78);
          v80 = *(v188 + v78);
          if (v79 == 16)
          {
            if (v80 != 16)
            {
              goto LABEL_152;
            }
          }

          else if (v79 != v80)
          {
            goto LABEL_152;
          }

          v81 = v191[11];
          v82 = *(v186 + v81);
          v83 = *(v188 + v81);
          sub_2525826B0(v188, type metadata accessor for Device.Control);
          result = sub_2525826B0(v186, type metadata accessor for Device.Control);
          v46 = v82 == v83;
          v41 = v186;
          if (!v46)
          {
            goto LABEL_153;
          }

          if (v63 == ++v64)
          {

            v35 = v172;
            v39 = v184;
            goto LABEL_102;
          }
        }

        goto LABEL_167;
      }

      goto LABEL_101;
    }

    v113 = v185;
    v114 = v168;
    sub_252582648(v185, v168, type metadata accessor for Device.ControlGroup.LayoutType);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_2525826B0(v114, type metadata accessor for Device.Control);
      goto LABEL_159;
    }

    v115 = v165;
    sub_252582710(v113 + v56, v165, type metadata accessor for Device.Control);
    v116 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
    v35 = v172;
    v39 = v184;
    v48 = v181;
    if ((v116 & 1) == 0 || (static Device.Control.Kind.== infix(_:_:)(v114 + v191[5], (v115 + v191[5])) & 1) == 0 || (static Device.Control.Source.== infix(_:_:)(v114 + v191[6], v115 + v191[6]) & 1) == 0 || *(v114 + v191[7]) != *(v115 + v191[7]))
    {
      goto LABEL_154;
    }

    v117 = v191[8];
    v118 = (v114 + v117);
    v119 = *(v114 + v117 + 8);
    v120 = (v115 + v117);
    v121 = v120[1];
    if (v119)
    {
      if (!v121 || (*v118 != *v120 || v119 != v121) && (sub_2526933B0() & 1) == 0)
      {
        goto LABEL_154;
      }
    }

    else if (v121)
    {
      goto LABEL_154;
    }

    v122 = v191[9];
    v123 = *(v114 + v122);
    v124 = *(v114 + v122 + 1);
    v125 = (v115 + v122);
    v126 = *v125;
    v127 = v125[1];
    if (v123 == 4)
    {
      if (v126 != 4)
      {
        goto LABEL_154;
      }
    }

    else if (v123 != v126)
    {
      goto LABEL_154;
    }

    if (v124 == 4)
    {
      if (v127 != 4)
      {
        goto LABEL_154;
      }
    }

    else if (v127 == 4 || v124 != v127)
    {
      goto LABEL_154;
    }

    v128 = v191[10];
    v129 = *(v114 + v128);
    v130 = *(v115 + v128);
    if (v129 == 16)
    {
      if (v130 != 16)
      {
        goto LABEL_154;
      }
    }

    else if (v129 != v130)
    {
      goto LABEL_154;
    }

    if (*(v114 + v191[11]) != *(v115 + v191[11]))
    {
LABEL_154:
      sub_2525826B0(v115, type metadata accessor for Device.Control);
      sub_2525826B0(v114, type metadata accessor for Device.Control);
      sub_2525826B0(v185, type metadata accessor for Device.ControlGroup.LayoutType);
      v41 = v186;
      goto LABEL_160;
    }

    sub_2525826B0(v115, type metadata accessor for Device.Control);
    sub_2525826B0(v114, type metadata accessor for Device.Control);
    v41 = v186;
LABEL_120:
    sub_2525826B0(v185, type metadata accessor for Device.ControlGroup.LayoutType);
    v131 = *(v180 + 20);
    v132 = (v190 + v131);
    v133 = *(v190 + v131 + 8);
    v134 = (v189 + v131);
    v135 = v134[1];
    if (v133)
    {
      if (!v135 || (*v132 != *v134 || v133 != v135) && (sub_2526933B0() & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (v135)
    {
      goto LABEL_160;
    }

    v136 = *(v180 + 24);
    v137 = (v190 + v136);
    v138 = *(v190 + v136 + 8);
    v139 = (v189 + v136);
    v140 = v139[1];
    if (v138)
    {
      if (!v140 || (*v137 != *v139 || v138 != v140) && (sub_2526933B0() & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (v140)
    {
      goto LABEL_160;
    }

    ++v50;
    sub_2525826B0(v189, type metadata accessor for Device.ControlGroup);
    result = sub_2525826B0(v190, type metadata accessor for Device.ControlGroup);
    v44 = v179;
    v47 = v170;
    if (v50 == v169)
    {
      goto LABEL_137;
    }
  }

  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
  return result;
}

uint64_t sub_25257C73C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device.Control(0);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v47 - v10);
  MEMORY[0x28223BE20](v12);
  v51 = (&v47 - v13);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB840);
  MEMORY[0x28223BE20](v54);
  v15 = &v47 - v14;
  v47 = type metadata accessor for DisplayControlGroup(0);
  MEMORY[0x28223BE20](v47);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(a2 + 16);
  if (!v53)
  {
    return 0;
  }

  v50 = v8;
  v19 = 0;
  v20 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v52 = *(v16 + 72);
  while (1)
  {
    sub_252582648(v20, v18, type metadata accessor for DisplayControlGroup);
    v23 = *(v54 + 48);
    sub_252582648(v18, v15, type metadata accessor for Device.ControlGroup.LayoutType);
    sub_252582648(a1, &v15[v23], type metadata accessor for Device.ControlGroup.LayoutType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_252582648(v15, v11, type metadata accessor for Device.ControlGroup.LayoutType);
        v25 = *v11;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v26 = sub_2523E7CA4(v25, *&v15[v23]);

          sub_2525826B0(v15, type metadata accessor for Device.ControlGroup.LayoutType);
          if ((v26 & 1) == 0)
          {
            goto LABEL_6;
          }

          goto LABEL_17;
        }

LABEL_4:
      }

      else
      {
        v27 = v50;
        sub_252582648(v15, v50, type metadata accessor for Device.ControlGroup.LayoutType);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v28 = v48;
          sub_252582710(&v15[v23], v48, type metadata accessor for Device.Control);
          v49 = _s22HomeAccessoryControlUI6DeviceV0C0V2eeoiySbAE_AEtFZ_0(v27, v28);
          sub_2525826B0(v28, type metadata accessor for Device.Control);
          sub_2525826B0(v27, type metadata accessor for Device.Control);
          sub_2525826B0(v15, type metadata accessor for Device.ControlGroup.LayoutType);
          if ((v49 & 1) == 0)
          {
            goto LABEL_6;
          }

          goto LABEL_17;
        }

        sub_2525826B0(v27, type metadata accessor for Device.Control);
      }

      sub_252372288(v15, &qword_27F4DB840);
      goto LABEL_6;
    }

    v21 = v51;
    sub_252582648(v15, v51, type metadata accessor for Device.ControlGroup.LayoutType);
    v22 = *v21;
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_4;
    }

    v29 = sub_2523E7CA4(v22, *&v15[v23]);

    sub_2525826B0(v15, type metadata accessor for Device.ControlGroup.LayoutType);
    if ((v29 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    v30 = type metadata accessor for Device.ControlGroup(0);
    v31 = *(v30 + 20);
    v32 = &v18[v31];
    v33 = *&v18[v31 + 8];
    v34 = (a1 + v31);
    v35 = v34[1];
    if (v33)
    {
      if (!v35 || (*v32 != *v34 || v33 != v35) && (sub_2526933B0() & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (v35)
    {
      goto LABEL_6;
    }

    v36 = *(v30 + 24);
    v37 = &v18[v36];
    v38 = *&v18[v36 + 8];
    v39 = (a1 + v36);
    v40 = v39[1];
    if (v38)
    {
      if (!v40 || (*v37 != *v39 || v38 != v40) && (sub_2526933B0() & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (v40)
    {
      goto LABEL_6;
    }

    if (v18[v47[5]] != *(a1 + v47[5]) || !sub_25266A600(&v18[v47[6]], a1 + v47[6]))
    {
      goto LABEL_6;
    }

    v41 = v47[7];
    v42 = &v18[v41];
    v43 = *&v18[v41 + 8];
    v44 = (a1 + v41);
    v45 = v44[1];
    if (v43)
    {
      break;
    }

    if (!v45)
    {
      goto LABEL_40;
    }

LABEL_6:
    sub_2525826B0(v18, type metadata accessor for DisplayControlGroup);
    ++v19;
    v20 += v52;
    if (v53 == v19)
    {
      return 0;
    }
  }

  if (!v45 || (*v42 != *v44 || v43 != v45) && (sub_2526933B0() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_40:
  sub_2525826B0(v18, type metadata accessor for DisplayControlGroup);
  return v19;
}

uint64_t sub_25257CD60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayControl(0);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    while (1)
    {
      sub_252582648(v10, v7, type metadata accessor for DisplayControl);
      if ((_s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
        break;
      }

      v12 = type metadata accessor for Device.Control(0);
      if ((static Device.Control.Kind.== infix(_:_:)(&v7[v12[5]], (a1 + v12[5])) & 1) == 0 || (static Device.Control.Source.== infix(_:_:)(&v7[v12[6]], a1 + v12[6]) & 1) == 0 || v7[v12[7]] != *(a1 + v12[7]))
      {
        break;
      }

      v13 = v12[8];
      v14 = &v7[v13];
      v15 = *&v7[v13 + 8];
      v16 = (a1 + v13);
      v17 = v16[1];
      if (v15)
      {
        if (!v17)
        {
          break;
        }

        v18 = *v14 == *v16 && v15 == v17;
        if (!v18 && (sub_2526933B0() & 1) == 0)
        {
          break;
        }
      }

      else if (v17)
      {
        break;
      }

      v19 = v12[9];
      v20 = v7[v19];
      v21 = v7[v19 + 1];
      v22 = (a1 + v19);
      v23 = *v22;
      v24 = v22[1];
      if (v20 == 4)
      {
        if (v23 != 4)
        {
          break;
        }
      }

      else if (v20 != v23)
      {
        break;
      }

      if (v21 == 4)
      {
        if (v24 != 4)
        {
          break;
        }
      }

      else if (v24 == 4 || v21 != v24)
      {
        break;
      }

      v25 = v12[10];
      v26 = v7[v25];
      v27 = *(a1 + v25);
      if (v26 == 16)
      {
        if (v27 != 16)
        {
          break;
        }
      }

      else if (v26 != v27)
      {
        break;
      }

      if (v7[v12[11]] != *(a1 + v12[11]))
      {
        break;
      }

      v28 = v7[*(v4 + 20)];
      sub_2525826B0(v7, type metadata accessor for DisplayControl);
      if (v28 == *(a1 + *(v4 + 20)))
      {
        return v9;
      }

LABEL_8:
      ++v9;
      v10 += v11;
      if (v8 == v9)
      {
        return 0;
      }
    }

    sub_2525826B0(v7, type metadata accessor for DisplayControl);
    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_25257D004@<X0>(void *a1@<X8>)
{
  sub_252582F34();
  result = sub_252691100();
  *a1 = v3;
  return result;
}

uint64_t sub_25257D054()
{
  sub_252582F34();

  return sub_252691110();
}

uint64_t sub_25257D0B4()
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for AccessoryControlSheetView(0) + 36));
  v35 = *(v5 + 32);
  v6 = v5[3];
  v34[2] = v5[2];
  v34[3] = v6;
  v7 = v5[1];
  v34[0] = *v5;
  v34[1] = v7;
  if ((v35 & 0x100) != 0)
  {
    v8 = v5[3];
    v31 = v5[2];
    v32 = v8;
    v33 = *(v5 + 64);
    v9 = v5[1];
    v29 = *v5;
    v30 = v9;
  }

  else
  {

    sub_252692F00();
    v10 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v34, &qword_27F4DC120);
    (*(v2 + 8))(v4, v1);
  }

  if (BYTE8(v29) != 1)
  {
    v28 = *(v5 + 32);
    v11 = v5[3];
    v26 = v5[2];
    v27 = v11;
    v12 = v5[1];
    v24 = *v5;
    v25 = v12;
    if ((v28 & 0x100) != 0)
    {
      v13 = v5[3];
      v22[2] = v5[2];
      v22[3] = v13;
      v23 = *(v5 + 64);
      v14 = v5[1];
      v22[0] = *v5;
      v22[1] = v14;
    }

    else
    {

      sub_252692F00();
      v15 = sub_2526919C0();
      sub_252690570();

      sub_2526910E0();
      swift_getAtKeyPath();
      sub_252372288(&v24, &qword_27F4DC120);
      (*(v2 + 8))(v4, v1);
    }

    if (v23 != 1 && v23 != 2)
    {
      return 0;
    }
  }

  v28 = *(v5 + 32);
  v16 = v5[3];
  v26 = v5[2];
  v27 = v16;
  v17 = v5[1];
  v24 = *v5;
  v25 = v17;
  if ((v28 & 0x100) != 0)
  {
    v18 = v5[3];
    v31 = v5[2];
    v32 = v18;
    v33 = *(v5 + 64);
    v19 = v5[1];
    v29 = *v5;
    v30 = v19;
  }

  else
  {

    sub_252692F00();
    v20 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(&v24, &qword_27F4DC120);
    (*(v2 + 8))(v4, v1);
  }

  return BYTE8(v32) & 1;
}

uint64_t sub_25257D42C@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v87 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v87);
  v3 = (&v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = type metadata accessor for Device.Control(0);
  v88 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v65 = &v58 - v7;
  v72 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v72);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Device.ControlGroup(0);
  v80 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = type metadata accessor for AccessoryControlSheetView(0);
  v17 = v16 - 8;
  v59 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v60 = v18;
  v61 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Device.ControlModule(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v82 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v81 = &v58 - v23;
  v24 = *(v17 + 32);
  v62 = v1;
  v25 = v1 + v24;
  v91 = *v25;
  v92 = *(v25 + 8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B90);
  MEMORY[0x2530A4210](&v90, v26);
  result = v90;
  v74 = *(v90 + 16);
  if (!v74)
  {
    v83 = MEMORY[0x277D84F90];
LABEL_47:

    v54 = v61;
    sub_252582648(v62, v61, type metadata accessor for AccessoryControlSheetView);
    v55 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v56 = (v60 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    sub_252582710(v54, v57 + v55, type metadata accessor for AccessoryControlSheetView);
    *(v57 + v56) = v83;
    v91 = sub_252582778;
    *&v92 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FC0);
    sub_252400FC8(&qword_27F4E2FC8, &qword_27F4E2FC0);
    sub_252692070();
  }

  v28 = 0;
  v76 = v3 + 10;
  v83 = MEMORY[0x277D84F90];
  v75 = v3 + 2;
  v64 = xmmword_252694E90;
  v78 = v9;
  v71 = v12;
  v29 = v81;
  v68 = v15;
  v67 = v19;
  v66 = v20;
  v73 = v90;
  while (1)
  {
    if (v28 >= *(result + 16))
    {
      goto LABEL_49;
    }

    v30 = *(v20 + 72);
    v85 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v86 = v28;
    v84 = v30;
    sub_252582648(result + v85 + v30 * v28, v29, type metadata accessor for Device.ControlModule);
    v31 = v20;
    sub_25237153C(v29 + *(v19 + 28), v15, &qword_27F4E2DC0);
    v32 = type metadata accessor for AccessoryControlModule.Layout(0);
    v33 = (*(*(v32 - 8) + 48))(v15, 1, v32);
    result = sub_252372288(v15, &qword_27F4E2DC0);
    if (v33 != 1)
    {
LABEL_40:
      v20 = v31;
      sub_252582710(v29, v82, type metadata accessor for Device.ControlModule);
      v49 = v83;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = v49;
      if (isUniquelyReferenced_nonNull_native)
      {
        v51 = v49;
      }

      else
      {
        sub_252370694(0, *(v49 + 16) + 1, 1);
        v29 = v81;
        v51 = v89;
      }

      v53 = *(v51 + 16);
      v52 = *(v51 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_252370694(v52 > 1, v53 + 1, 1);
        v29 = v81;
        v51 = v89;
      }

      *(v51 + 16) = v53 + 1;
      v83 = v51;
      sub_252582710(v82, v51 + v85 + v53 * v84, type metadata accessor for Device.ControlModule);
      goto LABEL_4;
    }

    v34 = *(v29 + 16);
    v77 = *(v34 + 16);
    v35 = v78;
    if (v77)
    {
      break;
    }

LABEL_3:
    sub_2525826B0(v29, type metadata accessor for Device.ControlModule);
    v15 = v68;
    v19 = v67;
    v20 = v66;
LABEL_4:
    result = v73;
    v28 = v86 + 1;
    if (v86 + 1 == v74)
    {
      goto LABEL_47;
    }
  }

  v36 = 0;
  v79 = v34 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
  v70 = v34;
  while (1)
  {
    if (v36 >= *(v34 + 16))
    {
      goto LABEL_50;
    }

    sub_252582648(v79 + *(v80 + 72) * v36, v12, type metadata accessor for Device.ControlGroup);
    sub_252582648(v12, v35, type metadata accessor for Device.ControlGroup.LayoutType);
    result = swift_getEnumCaseMultiPayload();
    if (result > 1)
    {
      break;
    }

    v37 = *v35;
    v38 = *(v37 + 16);
    if (v38)
    {
      goto LABEL_15;
    }

LABEL_9:
    ++v36;

    v12 = v71;
    result = sub_2525826B0(v71, type metadata accessor for Device.ControlGroup);
    v35 = v78;
    v29 = v81;
    v34 = v70;
    if (v36 == v77)
    {
      goto LABEL_3;
    }
  }

  v39 = v65;
  sub_252582710(v35, v65, type metadata accessor for Device.Control);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8);
  v40 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v64;
  result = sub_252582710(v39, v37 + v40, type metadata accessor for Device.Control);
  v38 = *(v37 + 16);
  if (!v38)
  {
    goto LABEL_9;
  }

LABEL_15:
  v41 = 0;
  v42 = *(v69 + 20);
  v43 = v37 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
  while (2)
  {
    if (v41 < *(v37 + 16))
    {
      sub_252582648(v43 + *(v88 + 72) * v41, v5, type metadata accessor for Device.Control);
      sub_252582648(&v5[v42], v3, type metadata accessor for Device.Control.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload <= 6)
        {
          if (EnumCaseMultiPayload == 5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0);

            sub_252372288(v3, &qword_27F4DB258);
            goto LABEL_36;
          }
        }

        else if (EnumCaseMultiPayload != 7)
        {
          if (EnumCaseMultiPayload == 8)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98);

            sub_252372288(v3, &qword_27F4DB440);
            goto LABEL_36;
          }

          sub_2525826B0(v3, type metadata accessor for Device.Control.Kind);

          result = sub_2525826B0(v5, type metadata accessor for Device.Control);
LABEL_37:
          if (v38 == ++v41)
          {
            goto LABEL_9;
          }

          continue;
        }
      }

      else
      {
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8);
            sub_2525826B0(v3 + *(v47 + 48), type metadata accessor for AccessoryControl.IncrementalConfig);
            sub_252372288(v3, &qword_27F4DB218);
          }

          else
          {
            sub_252393F68(*v3, v3[1], v3[2], v3[3], v3[4]);
            v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428);
            sub_2525826B0(v3 + *(v45 + 48), type metadata accessor for AccessoryControl.BinaryViewConfig);
          }

          goto LABEL_36;
        }

        if (EnumCaseMultiPayload == 2)
        {
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0);
          sub_2525826B0(v3 + *(v46 + 48), type metadata accessor for AccessoryControl.PickerViewConfig);
          goto LABEL_36;
        }

        if (EnumCaseMultiPayload == 3)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8);

          sub_252372288(v3, &qword_27F4DB2A0);
LABEL_36:
          v48 = sub_2526933B0();

          result = sub_2525826B0(v5, type metadata accessor for Device.Control);
          if ((v48 & 1) == 0)
          {
            v12 = v71;
            sub_2525826B0(v71, type metadata accessor for Device.ControlGroup);

            v15 = v68;
            v19 = v67;
            v31 = v66;
            v29 = v81;
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }

      sub_2525826B0(v3, type metadata accessor for Device.Control.Kind);
      goto LABEL_36;
    }

    break;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_25257E178@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v140 = a4;
  v144 = type metadata accessor for AccessoryControlSheetView(0);
  OpaqueTypeConformance2 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v145 = v7;
  v146 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252691500();
  v134 = *(v8 - 8);
  v135 = v8;
  MEMORY[0x28223BE20](v8);
  v133 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_2526915C0();
  v120 = *(v141 - 1);
  MEMORY[0x28223BE20](v141);
  v119 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeaderViewModifier.ScrollView(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FD0);
  v116 = *(v14 - 8);
  v117 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v109 - v15;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FD8);
  MEMORY[0x28223BE20](v118);
  v112 = &v109 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FE0);
  v122 = *(v18 - 8);
  v123 = v18;
  MEMORY[0x28223BE20](v18);
  v142 = (&v109 - v19);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FE8);
  MEMORY[0x28223BE20](v121);
  v128 = &v109 - v20;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FF0);
  MEMORY[0x28223BE20](v126);
  v127 = &v109 - v21;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FF8);
  MEMORY[0x28223BE20](v130);
  v129 = &v109 - v22;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3000);
  v132 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v131 = &v109 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3008);
  v137 = *(v24 - 8);
  v138 = v24;
  MEMORY[0x28223BE20](v24);
  v143 = &v109 - v25;
  v147 = a2;
  v148 = a1;
  v149 = a3;
  sub_252691A00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3010);
  sub_252400FC8(&qword_27F4E3018, &qword_27F4E3010);
  v115 = v16;
  v26 = v144;
  sub_252690820();
  v27 = *a2;
  sub_2526909F0();
  v29 = v28;
  v31 = v30;
  v32 = (a2 + v26[10]);
  v33 = *v32;
  v34 = v32[1];
  v171 = v33;
  v125 = v34;
  v172 = v34;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3020);
  sub_2526924E0();
  if (*(a2 + v26[8]))
  {
    v35 = v166;
    v36 = v11[7];

    sub_25266BF90((v13 + v36));

    v37 = sub_25257D0B4();
    v114 = type metadata accessor for AnimationModel();
    v113 = sub_252583B30(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    v38 = sub_252690DF0();
    v40 = v39;
    v111 = v27;
    *v13 = v27;
    v13[1] = v29;
    v13[2] = v31;
    v13[3] = v35;
    *(v13 + v11[8]) = v37 & 1;
    v41 = v13 + v11[9];
    KeyPath = swift_getKeyPath();
    v161 = 0;
    *v41 = KeyPath;
    v41[65] = 0;
    v43 = v13 + v11[10];
    *v43 = swift_getKeyPath();
    v43[8] = 0;
    v44 = (v13 + v11[11]);
    *v44 = v38;
    v44[1] = v40;
    v45 = v112;
    (*(v116 + 32))(v112, v115, v117);
    v46 = v118;
    sub_252582710(v13, v45 + *(v118 + 36), type metadata accessor for HeaderViewModifier.ScrollView);
    v47 = sub_252691A40();
    v48 = v119;
    sub_2526915B0();
    v49 = sub_252582830();
    MEMORY[0x2530A3A60](v47, 0x4034000000000000, 0, v48, v46, v49);
    (*(v120 + 8))(v48, v141);
    sub_252372288(v45, &qword_27F4E2FD8);
    v141 = sub_252692920();
    v51 = v50;
    v52 = v26[6];
    v110 = a2;
    v53 = (a2 + v52);
    v54 = *v53;
    v55 = v53[1];
    v56 = v53[2];
    LOBYTE(v171) = 9;
    v57 = sub_252600F28(&v171, v54, v55, v56);
    MEMORY[0x28223BE20](v57);
    v108 = a2;
    v58 = sub_2523665E0(sub_252582918, v107, v57);

    type metadata accessor for AccessoryControlLegacyViewModel();
    sub_252583B30(&qword_27F4E0C50, type metadata accessor for AccessoryControlLegacyViewModel);
    v59 = sub_252690DF0();
    v61 = v60;
    v62 = swift_getKeyPath();
    v162 = 0;
    v63 = swift_getKeyPath();
    *(v167 + 8) = v163;
    LOBYTE(v171) = 0;
    v64 = v111;
    *&v166 = v111;
    *(&v166 + 1) = v58;
    *&v167[0] = v62;
    *(&v167[1] + 8) = v164;
    *(&v167[2] + 8) = v165[0];
    *(&v167[3] + 1) = *(v165 + 9);
    BYTE1(v167[4]) = 0;
    *(&v167[4] + 2) = v159;
    WORD3(v167[4]) = v160;
    *(&v167[4] + 1) = v63;
    LOBYTE(v168) = 0;
    DWORD1(v168) = *&v158[3];
    *(&v168 + 1) = *v158;
    *(&v168 + 1) = v59;
    *&v169 = v61;
    *(&v169 + 1) = v141;
    v170 = v51;
    v65 = v51;
    v66 = v128;
    (*(v122 + 32))(v128, v142, v123);
    v67 = v66 + *(v121 + 36);
    v68 = v169;
    *(v67 + 96) = v168;
    *(v67 + 112) = v68;
    v69 = v167[2];
    *(v67 + 32) = v167[1];
    *(v67 + 48) = v69;
    v70 = v167[4];
    *(v67 + 64) = v167[3];
    *(v67 + 80) = v70;
    v71 = v167[0];
    *v67 = v166;
    *(v67 + 16) = v71;
    v72 = v164;
    v174 = v163;
    *(v67 + 128) = v170;
    v171 = v64;
    v172 = v58;
    v173 = v62;
    v175 = v72;
    *v176 = v165[0];
    *&v176[9] = *(v165 + 9);
    v177 = 0;
    v178 = v159;
    v179 = v160;
    v180 = v63;
    v181 = 0;
    *&v182[3] = *&v158[3];
    *v182 = *v158;
    v183 = v59;
    v184 = v61;
    v185 = v141;
    v186 = v65;
    sub_25237153C(&v166, &v154, &qword_27F4E2C98);
    sub_252372288(&v171, &qword_27F4E2C98);
    v73 = sub_252692920();
    v75 = v74;
    v76 = v127;
    v77 = &v127[*(v126 + 36)];
    v78 = v110;
    sub_252580424(v110, v77);
    v79 = (v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2CA8) + 36));
    *v79 = v73;
    v79[1] = v75;
    sub_2523714D4(v66, v76, &qword_27F4E2FE8);
    v80 = sub_252690DF0();
    v82 = v81;
    v83 = v129;
    sub_2523714D4(v76, v129, &qword_27F4E2FF0);
    v84 = v130;
    v85 = (v83 + *(v130 + 36));
    *v85 = v80;
    v85[1] = v82;
    v86 = v133;
    sub_2526914F0();
    LOBYTE(v82) = sub_252691A00();
    sub_2526919F0();
    sub_2526919F0();
    if (sub_2526919F0() != v82)
    {
      sub_2526919F0();
    }

    v87 = sub_252582934();
    v88 = v131;
    sub_252692050();
    (*(v134 + 8))(v86, v135);
    sub_252372288(v83, &qword_27F4E2FF8);
    v154 = v33;
    v155 = v125;
    sub_2526924E0();
    v142 = type metadata accessor for AccessoryControlSheetView;
    v89 = v146;
    sub_252582648(v78, v146, type metadata accessor for AccessoryControlSheetView);
    v90 = (*(OpaqueTypeConformance2 + 80) + 16) & ~*(OpaqueTypeConformance2 + 80);
    v91 = swift_allocObject();
    v141 = type metadata accessor for AccessoryControlSheetView;
    sub_252582710(v89, v91 + v90, type metadata accessor for AccessoryControlSheetView);
    v154 = v84;
    v155 = v87;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v135 = sub_252582BEC();
    v92 = v136;
    sub_2526921D0();

    (*(v132 + 8))(v88, v92);
    v93 = (v78 + *(v144 + 28));
    v95 = *v93;
    v94 = v93[1];
    v151 = v95;
    v152 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3060);
    sub_252692500();
    v97 = v154;
    v96 = v155;
    v98 = v156;
    swift_getKeyPath();
    v151 = v97;
    v152 = v96;
    v153 = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3068);
    sub_2526926C0();

    LODWORD(v144) = v150;

    v99 = v146;
    sub_252582648(v78, v146, v142);
    v100 = swift_allocObject();
    sub_252582710(v99, v100 + v90, v141);
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2138);
    v154 = v92;
    v155 = MEMORY[0x277D85048];
    v156 = OpaqueTypeConformance2;
    v157 = v135;
    v102 = swift_getOpaqueTypeConformance2();
    v103 = sub_252400FC8(&qword_27F4E2148, &qword_27F4E2138);
    v107[1] = v102;
    v108 = v103;
    v107[0] = v101;
    v104 = v138;
    v105 = v143;
    sub_252692150();

    return (*(v137 + 8))(v105, v104);
  }

  else
  {
    type metadata accessor for AccessoryControlLegacyViewModel();
    sub_252583B30(&qword_27F4E0C50, type metadata accessor for AccessoryControlLegacyViewModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_25257F0CC@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = sub_252692920();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3098);
  return sub_25257F134(a1, a2, (a3 + *(v7 + 44)));
}

uint64_t sub_25257F134@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v45 = a2;
  v5 = type metadata accessor for HeaderViewModifier.ScrollViewVStack(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E30A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E30A8);
  MEMORY[0x28223BE20](v49);
  v52 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = &v44 - v13;
  MEMORY[0x28223BE20](v14);
  v51 = &v44 - v15;
  if (sub_25257D0B4())
  {
    sub_2526909F0();
    v50 = v16;
    v17 = sub_252691A20();
    type metadata accessor for AnimationModel();
    sub_252583B30(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    v18 = sub_252690DF0();
    v48 = v19;
    v46 = v17 << 8;

    v20 = 0x3F747AE147AE147BLL;
  }

  else
  {
    v50 = 0;
    v46 = 0;
    v20 = 0;
    v48 = 0;
    v18 = 1;
  }

  *v10 = sub_2526912E0();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E30B0);
  sub_25257F614(v45, a1, &v10[*(v21 + 44)]);
  sub_2526909F0();
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for AccessoryControlSheetView(0);
  v27 = (a1 + *(v26 + 40));
  v28 = *v27;
  v29 = v27[1];
  v56 = v28;
  v57 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3020);
  sub_252692500();
  if (*(a1 + *(v26 + 32)))
  {
    v30 = v53;
    v31 = v54;
    v32 = v55;
    v33 = v5[6];

    sub_25266BF90((v7 + v33));

    *v7 = v23;
    v7[1] = v25;
    v7[2] = v30;
    v7[3] = v31;
    v7[4] = v32;
    v34 = v7 + v5[7];
    KeyPath = swift_getKeyPath();
    LOBYTE(v53) = 0;
    *v34 = KeyPath;
    v34[65] = 0;
    v36 = v7 + v5[8];
    *v36 = swift_getKeyPath();
    v36[8] = 0;
    v37 = v47;
    sub_2523714D4(v10, v47, &qword_27F4E30A0);
    sub_252582710(v7, v37 + *(v49 + 36), type metadata accessor for HeaderViewModifier.ScrollViewVStack);
    v38 = v51;
    sub_2523714D4(v37, v51, &qword_27F4E30A8);
    v39 = v52;
    sub_25234105C(v38, v52);
    v40 = v50;
    v41 = v46;
    *a3 = v50;
    a3[1] = v41;
    a3[2] = v20;
    a3[3] = v18;
    a3[4] = v48;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E30B8);
    sub_25234105C(v39, a3 + *(v42 + 48));
    sub_252573768(v40, v41, v20, v18);
    sub_25257377C(v40, v41, v20, v18);
    sub_252372288(v38, &qword_27F4E30A8);
    sub_252372288(v39, &qword_27F4E30A8);
    return sub_25257377C(v40, v41, v20, v18);
  }

  else
  {
    type metadata accessor for AccessoryControlLegacyViewModel();
    sub_252583B30(&qword_27F4E0C50, type metadata accessor for AccessoryControlLegacyViewModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_25257F614@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v83 = a3;
  v5 = sub_2526910F0();
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x28223BE20](v5);
  v70 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E30C0);
  v81 = *(v7 - 8);
  v82 = v7;
  MEMORY[0x28223BE20](v7);
  v80 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v84 = &v70 - v10;
  v11 = type metadata accessor for AccessoryControlSheetView.ControlsView(0);
  MEMORY[0x28223BE20](v11);
  v79 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v85 = (&v70 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DC0);
  MEMORY[0x28223BE20](v15 - 8);
  v73 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v70 - v18;
  v20 = *(a1 + 16);
  v75 = a1;
  if (v20)
  {
    v21 = type metadata accessor for Device.ControlModule(0);
    sub_25237153C(a1 + *(v21 + 28) + ((*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80)), v19, &qword_27F4E2DC0);
    v22 = type metadata accessor for AccessoryControlModule.Layout(0);
    v23 = (*(*(v22 - 8) + 48))(v19, 1, v22);
    v78 = v23 != 1;
    v24 = 0x4044000000000000;
    if (v23 != 1)
    {
      v24 = 0;
    }
  }

  else
  {
    v25 = type metadata accessor for AccessoryControlModule.Layout(0);
    (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
    v78 = 0;
    v24 = 0x4044000000000000;
  }

  v77 = v24;
  sub_252372288(v19, &qword_27F4E2DC0);
  v26 = *a2;
  v27 = type metadata accessor for AccessoryControlSheetView(0);
  v28 = v85;
  sub_252582648(a2 + v27[5], v85 + v11[5], type metadata accessor for Device);
  v29 = v27[6];
  v76 = a2;
  v30 = (a2 + v29);
  v32 = *v30;
  v31 = v30[1];
  v33 = v30[2];

  sub_2526909F0();
  *v28 = v26;
  v34 = (v28 + v11[6]);
  *v34 = v32;
  v34[1] = v31;
  v34[2] = v33;
  v35 = (v28 + v11[7]);
  *v35 = v36;
  v35[1] = v37;
  if (v20)
  {
    v38 = type metadata accessor for Device.ControlModule(0);
    v39 = v73;
    sub_25237153C(v75 + ((*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80)) + *(*(v38 - 8) + 72) * (v20 - 1) + *(v38 + 28), v73, &qword_27F4E2DC0);
    v40 = type metadata accessor for AccessoryControlModule.Layout(0);
    v41 = (*(*(v40 - 8) + 48))(v39, 1, v40);
    LODWORD(v75) = v41 != 1;
    v42 = 0x4044000000000000;
    if (v41 != 1)
    {
      v42 = 0;
    }
  }

  else
  {
    v43 = type metadata accessor for AccessoryControlModule.Layout(0);
    v39 = v73;
    (*(*(v43 - 8) + 56))(v73, 1, 1, v43);
    LODWORD(v75) = 0;
    v42 = 0x4044000000000000;
  }

  v74 = v42;
  sub_252372288(v39, &qword_27F4E2DC0);
  type metadata accessor for AccessoryControlLegacyViewModel();
  sub_252583B30(&qword_27F4E0C50, type metadata accessor for AccessoryControlLegacyViewModel);
  v96 = sub_252690DF0();
  v97 = v44;
  v45 = v76 + v27[9];
  v99 = *(v45 + 32);
  v46 = *(v45 + 3);
  v98[2] = *(v45 + 2);
  v98[3] = v46;
  v47 = *(v45 + 1);
  v98[0] = *v45;
  v98[1] = v47;
  if ((v99 & 0x100) != 0)
  {
    v48 = *(v45 + 3);
    v93 = *(v45 + 2);
    v94 = v48;
    LOBYTE(v95) = v45[64];
    v49 = *(v45 + 1);
    v91 = *v45;
    v92 = v49;
  }

  else
  {

    sub_252692F00();
    v50 = sub_2526919C0();
    sub_252690570();

    v51 = v70;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v98, &qword_27F4DC120);
    (*(v71 + 8))(v51, v72);
  }

  if (v91 != 1)
  {
    v95 = *(v45 + 32);
    v52 = *(v45 + 3);
    v93 = *(v45 + 2);
    v94 = v52;
    v53 = *(v45 + 1);
    v91 = *v45;
    v92 = v53;
    if ((v95 & 0x100) != 0)
    {
      v54 = *(v45 + 3);
      v88 = *(v45 + 2);
      v89 = v54;
      v90 = v45[64];
      v55 = *(v45 + 1);
      v86 = *v45;
      v87 = v55;
    }

    else
    {

      sub_252692F00();
      v56 = sub_2526919C0();
      sub_252690570();

      v57 = v70;
      sub_2526910E0();
      swift_getAtKeyPath();
      sub_252372288(&v91, &qword_27F4DC120);
      (*(v71 + 8))(v57, v72);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E30C8);
  sub_2525830F0();
  sub_252583144();
  v58 = v84;
  sub_252691D70();

  v59 = v79;
  sub_252582648(v85, v79, type metadata accessor for AccessoryControlSheetView.ControlsView);
  v61 = v80;
  v60 = v81;
  v62 = *(v81 + 16);
  v63 = v58;
  v64 = v82;
  v62(v80, v63, v82);
  v65 = v83;
  *v83 = v77;
  *(v65 + 8) = 0;
  *(v65 + 9) = v78;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E30E0);
  sub_252582648(v59, v65 + v66[12], type metadata accessor for AccessoryControlSheetView.ControlsView);
  v67 = v65 + v66[16];
  *v67 = v74;
  v67[8] = 0;
  v67[9] = v75;
  v62(v65 + v66[20], v61, v64);
  v68 = *(v60 + 8);
  v68(v84, v64);
  sub_2525826B0(v85, type metadata accessor for AccessoryControlSheetView.ControlsView);
  v68(v61, v64);
  return sub_2525826B0(v59, type metadata accessor for AccessoryControlSheetView.ControlsView);
}

uint64_t sub_25257FF1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  KeyPath = swift_getKeyPath();
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E30C8) + 36));
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00) + 28);
  v8 = *MEMORY[0x277CDF3C0];
  v9 = sub_252690850();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = KeyPath;
  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_252580000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for AccessoryControlSheetView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252582648(a2, v12, type metadata accessor for AccessoryControlSheetView);
  sub_25237153C(a1, v8, &qword_27F4DAE18);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_252582710(v12, v15 + v13, type metadata accessor for AccessoryControlSheetView);
  sub_252582F88(v8, v15 + v14);
  static AccessoryControlDecorationButton.Config.control(control:action:)(a1, sub_252582FF8, v15, v18);
}

uint64_t sub_252580210(uint64_t a1)
{
  v2 = type metadata accessor for Device.Control(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (a1 + *(type metadata accessor for AccessoryControlSheetView(0) + 28));
  v7 = v5[1];
  v12 = *v5;
  v6 = v12;
  v13 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3060);
  sub_2526924E0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  MEMORY[0x2530A4210](v8);
  sub_2525851D8(v4);

  sub_2525826B0(v4, type metadata accessor for Device.Control);
  v12 = v6;
  v13 = v7;
  sub_2526924E0();
  v9 = v11[1];
  swift_getKeyPath();
  v12 = v9;
  sub_252583B30(&qword_27F4E3078, _s31SettingsPresentationCoordinatorCMa);
  sub_25268DB30();

  v12 = v9;
  swift_getKeyPath();
  sub_25268DB50();

  *(v9 + 16) = (*(v9 + 16) & 1) == 0;
  v12 = v9;
  swift_getKeyPath();
  sub_25268DB40();
}

uint64_t sub_252580424@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_2526910F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2CF0);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v10 = a1 + *(type metadata accessor for AccessoryControlSheetView(0) + 36);
  v84 = *(v10 + 32);
  v11 = *(v10 + 3);
  v83[2] = *(v10 + 2);
  v83[3] = v11;
  v12 = *(v10 + 1);
  v83[0] = *v10;
  v83[1] = v12;
  v44 = v6;
  v45 = v4;
  v48 = v9;
  v46 = v3;
  if ((v84 & 0x100) != 0)
  {
    v13 = *(v10 + 3);
    v80 = *(v10 + 2);
    v81 = v13;
    v82 = v10[64];
    v14 = *(v10 + 1);
    v78 = *v10;
    v79 = v14;
  }

  else
  {

    sub_252692F00();
    v15 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v83, &qword_27F4DC120);
    (*(v4 + 8))(v6, v3);
  }

  v16 = v78;
  v47 = *a1;
  type metadata accessor for AnimationModel();
  sub_252583B30(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  v17 = sub_252690DF0();
  v19 = v18;
  KeyPath = swift_getKeyPath();
  v75 = 0;
  v21 = sub_252690DF0();
  v23 = v22;
  v24 = swift_getKeyPath();
  v76 = 0;
  LOBYTE(v62) = v16;
  *(&v62 + 1) = v17;
  *&v63 = v19;
  *(&v63 + 1) = v47;
  *&v64 = KeyPath;
  BYTE1(v68) = 0;
  *(&v68 + 1) = v21;
  *&v69 = v23;
  *(&v69 + 1) = v24;
  BYTE9(v73) = 0;
  v74 = xmmword_2526A7E10;
  sub_25257D0B4();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2CF8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2D00);
  v27 = sub_252573354();
  v28 = sub_252573568();
  v29 = v48;
  sub_252691D70();
  v77[10] = v72;
  v77[11] = v73;
  v77[12] = v74;
  v77[6] = v68;
  v77[7] = v69;
  v77[8] = v70;
  v77[9] = v71;
  v77[2] = v64;
  v77[3] = v65;
  v77[4] = v66;
  v77[5] = v67;
  v77[0] = v62;
  v77[1] = v63;
  sub_252372288(v77, &qword_27F4E2CF8);
  LOWORD(v66) = *(v10 + 32);
  v30 = *(v10 + 3);
  v64 = *(v10 + 2);
  v65 = v30;
  v31 = *(v10 + 1);
  v62 = *v10;
  v63 = v31;
  if (BYTE1(v66))
  {
    v32 = *(v10 + 3);
    v59 = *(v10 + 2);
    v60 = v32;
    LOBYTE(v61) = v10[64];
    v33 = *(v10 + 1);
    v57 = *v10;
    v58 = v33;
  }

  else
  {

    sub_252692F00();
    v34 = sub_2526919C0();
    sub_252690570();

    v35 = v44;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(&v62, &qword_27F4DC120);
    (*(v45 + 8))(v35, v46);
  }

  if (v57 != 1)
  {
    v61 = *(v10 + 32);
    v36 = *(v10 + 3);
    v59 = *(v10 + 2);
    v60 = v36;
    v37 = *(v10 + 1);
    v57 = *v10;
    v58 = v37;
    if ((v61 & 0x100) != 0)
    {
      v38 = *(v10 + 3);
      v54 = *(v10 + 2);
      v55 = v38;
      v56 = v10[64];
      v39 = *(v10 + 1);
      v52 = *v10;
      v53 = v39;
    }

    else
    {

      sub_252692F00();
      v40 = sub_2526919C0();
      sub_252690570();

      v41 = v44;
      sub_2526910E0();
      swift_getAtKeyPath();
      sub_252372288(&v57, &qword_27F4DC120);
      (*(v45 + 8))(v41, v46);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2D48);
  *&v57 = v25;
  *(&v57 + 1) = v26;
  *&v58 = v27;
  *(&v58 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  sub_252573648();
  v42 = v50;
  sub_252691D70();
  return (*(v49 + 8))(v29, v42);
}