uint64_t sub_254513CC4(uint64_t a1)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for SoftwareUpdateStatusView(0) + 20));
  v4 = *v2;
  v5 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7B4();
}

uint64_t sub_254513DA4@<X0>(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_25454BCF4();
  v4 = v3;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_254513E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *a2 = sub_25454AC24();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7B8, &unk_2545507B0);
  sub_25450D6B8(v2, a2 + *(v6 + 44));
  sub_254515C8C(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoftwareUpdateStatusView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_254515F20(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for SoftwareUpdateStatusView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7D0, &qword_2545507D0);
  v10 = (a2 + *(result + 36));
  *v10 = sub_2545173BC;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

uint64_t SoftwareUpdateAccessoryCell.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_25454BA54();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7D8, &qword_2545507D8);
  return sub_254514018(v1, a1 + *(v4 + 44));
}

uint64_t sub_254514018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25454A744();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_25454AC14();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC840, &qword_2545508E0);
  sub_254514398(a1, a2 + *(v8 + 44));
  sub_25454BA64();
  sub_25454A544();
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC848, &qword_2545508E8) + 36));
  v10 = v44;
  *v9 = *&v43[8];
  v9[1] = v10;
  v9[2] = v45;
  v11 = sub_25454AF14();
  sub_25454A394();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC850, &qword_2545508F0) + 36);
  *v20 = v11;
  *(v20 + 8) = v13;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  v21 = *(v4 + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_25454ABA4();
  (*(*(v23 - 8) + 104))(&v7[v21], v22, v23);
  __asm { FMOV            V0.2D, #10.0 }

  *v7 = _Q0;
  v29 = sub_25454B644();
  sub_25454A484();
  v30 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC858, &qword_2545508F8) + 36);
  sub_254515C8C(v7, v30, MEMORY[0x277CDFC08]);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC758, &unk_254550900) + 36);
  v32 = v47;
  *v31 = v46;
  *(v31 + 16) = v32;
  *(v31 + 32) = v48;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC760, &unk_2545506E0);
  *(v30 + *(v33 + 52)) = v29;
  *(v30 + *(v33 + 56)) = 256;
  v34 = sub_25454BA54();
  v36 = v35;
  sub_25450D2B0(v7);
  v37 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC768, &qword_254550910) + 36));
  *v37 = v34;
  v37[1] = v36;
  v38 = sub_25454BA54();
  v40 = v39;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC860, &qword_254550918);
  v42 = (v30 + *(result + 36));
  *v42 = v38;
  v42[1] = v40;
  return result;
}

uint64_t sub_254514398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC868, &qword_254550920);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v27 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  sub_25454BE14();
  v26 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v8 = sub_25454AB14();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC870, &qword_254550928);
  sub_254514614(a1, &v8[*(v9 + 44)]);
  v24 = sub_25454AB14();
  sub_254514F40(v28);
  v10 = v28[0];
  v11 = v28[1];
  v12 = v29;
  v13 = v30;
  v23 = v31;
  v14 = v32;
  LOBYTE(v28[0]) = 1;
  v34 = v29;
  v33 = v32;
  v15 = v27;
  sub_2544AE240(v8, v27, &qword_27F5FC868, &qword_254550920);
  v16 = v25;
  sub_2544AE240(v15, v25, &qword_27F5FC868, &qword_254550920);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC878, &qword_254550930);
  v18 = v16 + *(v17 + 48);
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v16 + *(v17 + 64);
  *v19 = v24;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  *(v19 + 24) = v10;
  *(v19 + 32) = v11;
  *(v19 + 40) = v12;
  v20 = v23;
  *(v19 + 48) = v13;
  *(v19 + 56) = v20;
  *(v19 + 64) = v14;
  sub_2544A8F00(v10, v11, v12);

  sub_2544AE150(v8, &qword_27F5FC868, &qword_254550920);
  sub_2544C9C64(v10, v11, v12);

  sub_2544AE150(v15, &qword_27F5FC868, &qword_254550920);
}

uint64_t sub_254514614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v77 = sub_254549D24();
  v76 = *(v77 - 8);
  v3 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_254549744();
  v85 = *(v5 - 8);
  v6 = *(v85 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25454A0A4();
  v83 = *(v9 - 8);
  v84 = v9;
  v10 = *(v83 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_254549AB4();
  v13 = *(v82 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v82);
  v16 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC880, &qword_254550938);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v66 = (v62 - v19);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC888, &qword_254550940);
  v20 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v71 = v62 - v21;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC890, &qword_254550948);
  v22 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v81 = v62 - v23;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC898, &unk_254550950);
  v24 = *(*(v69 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v69);
  v74 = v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v80 = v62 - v28;
  MEMORY[0x28223BE20](v27);
  v73 = v62 - v29;
  sub_25454BE14();
  v72 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  v62[1] = a1;
  v63 = *(v13 + 8);
  v63(v16, v82);
  sub_254549F44();
  v30 = *(v83 + 8);
  v83 += 8;
  v79 = v30;
  v30(v12, v84);
  sub_254549734();
  v65 = v8;
  v31 = *(v85 + 8);
  v85 += 8;
  v67 = v31;
  v31(v8, v5);
  v32 = sub_25454B704();
  v33 = v66;
  v34 = (v66 + *(v17 + 36));
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC780, &qword_254550768);
  v64 = v5;
  v36 = *(v35 + 28);
  v37 = *MEMORY[0x277CE1048];
  v38 = sub_25454B754();
  (*(*(v38 - 8) + 104))(v34 + v36, v37, v38);
  *v34 = swift_getKeyPath();
  *v33 = v32;
  sub_25454BA54();
  sub_25454A784();
  v39 = v71;
  sub_2544B14E8(v33, v71, &qword_27F5FC880, &qword_254550938);
  v40 = (v39 + *(v68 + 36));
  v41 = v91;
  v40[4] = v90;
  v40[5] = v41;
  v40[6] = v92;
  v42 = v87;
  *v40 = v86;
  v40[1] = v42;
  v43 = v89;
  v40[2] = v88;
  v40[3] = v43;
  sub_25454B7A4();
  sub_254549AA4();
  v44 = v82;
  v45 = v63;
  v63(v16, v82);
  v46 = sub_254549FD4();
  v79(v12, v84);
  KeyPath = swift_getKeyPath();
  v48 = v39;
  v49 = v81;
  sub_2544B14E8(v48, v81, &qword_27F5FC888, &qword_254550940);
  v50 = (v49 + *(v70 + 36));
  *v50 = KeyPath;
  v50[1] = v46;
  v51 = (v80 + *(v69 + 36));
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB3A0, &qword_2545509C0) + 28);
  sub_25454B7A4();
  sub_254549AA4();
  v45(v16, v44);
  v53 = v65;
  sub_254549F44();
  v79(v12, v84);
  v54 = v75;
  sub_254549724();
  v67(v53, v64);
  sub_254549D14();
  (*(v76 + 8))(v54, v77);
  v55 = sub_25454AC44();
  (*(*(v55 - 8) + 56))(v51 + v52, 0, 1, v55);
  *v51 = swift_getKeyPath();
  v56 = v80;
  sub_2544B14E8(v81, v80, &qword_27F5FC890, &qword_254550948);
  v57 = v73;
  sub_2544B14E8(v56, v73, &qword_27F5FC898, &unk_254550950);
  v58 = v74;
  sub_2544AE240(v57, v74, &qword_27F5FC898, &unk_254550950);
  v59 = v78;
  sub_2544AE240(v58, v78, &qword_27F5FC898, &unk_254550950);
  v60 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8A0, &qword_2545509F8) + 48);
  *v60 = 0;
  *(v60 + 8) = 1;
  sub_2544AE150(v57, &qword_27F5FC898, &unk_254550950);
  sub_2544AE150(v58, &qword_27F5FC898, &unk_254550950);
}

uint64_t sub_254514F40@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25454A0A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254549AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v31[1] = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  (*(v8 + 8))(v11, v7);
  v12 = sub_25454A074();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v31[4] = v12;
  v31[5] = v14;
  sub_2544AECF0();
  v15 = sub_25454B274();
  v17 = v16;
  LOBYTE(v14) = v18;
  sub_25454B104();
  v19 = sub_25454B224();
  v21 = v20;
  v23 = v22;

  sub_2544C9C64(v15, v17, v14 & 1);

  sub_25454B054();
  v24 = sub_25454B194();
  v26 = v25;
  LOBYTE(v14) = v27;
  v29 = v28;
  sub_2544C9C64(v19, v21, v23 & 1);

  *a1 = v24;
  *(a1 + 8) = v26;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v29;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_2544A8F00(v24, v26, v14 & 1);

  sub_2544C9C64(v24, v26, v14 & 1);
}

uint64_t sub_254515254@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_25454BA54();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7D8, &qword_2545507D8);
  return sub_254514018(v1, a1 + *(v4 + 44));
}

uint64_t sub_2545152B4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C0, &qword_2545507C0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C8, &qword_2545507C8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_254515440(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C0, &qword_2545507C0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C8, &qword_2545507C8);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_2545155B4()
{
  sub_2545156D4(319, &qword_27F5FBD68, MEMORY[0x277D15E00]);
  if (v0 <= 0x3F)
  {
    sub_2544AD890();
    if (v1 <= 0x3F)
    {
      sub_2545156D4(319, &qword_27F5FC7F0, MEMORY[0x277D16CD8]);
      if (v2 <= 0x3F)
      {
        sub_2545156D4(319, &qword_27F5FC7F8, MEMORY[0x277D16648]);
        if (v3 <= 0x3F)
        {
          sub_254515728();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2545156D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25454B7D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_254515728()
{
  result = qword_27F5FC800;
  if (!qword_27F5FC800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5FC800);
  }

  return result;
}

uint64_t sub_254515788(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_254515814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_2545158B0()
{
  sub_2545156D4(319, &qword_27F5FBD68, MEMORY[0x277D15E00]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_25451593C()
{
  result = qword_27F5FC818;
  if (!qword_27F5FC818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC7D0, &qword_2545507D0);
    sub_2544AE1F0(&qword_27F5FC820, &qword_27F5FC828, &qword_2545508D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC818);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for SoftwareUpdateStatusView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_254549AB4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730) + 28));

  v7 = *(v0 + v3 + v1[7] + 8);

  v8 = v0 + v3 + v1[8];
  v9 = sub_25454A0F4();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C0, &qword_2545507C0) + 28));

  v11 = v0 + v3 + v1[9];
  v12 = sub_254549DC4();
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C8, &qword_2545507C8) + 28));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_254515C18(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SoftwareUpdateStatusView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_254515C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_254515D18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC8A8, &unk_254550A00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2544AE240(a1, &v6 - v4, &qword_27F5FC8A8, &unk_254550A00);
  return sub_25454A934();
}

uint64_t sub_254515E08(uint64_t a1)
{
  v2 = sub_25454B754();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25454A7E4();
}

double sub_254515F04(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_254515F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_254515F88()
{
  v1 = (type metadata accessor for SoftwareUpdateStatusView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_254549AB4();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730) + 28));

  v8 = *(v5 + v1[7] + 8);

  v9 = v5 + v1[8];
  v10 = sub_25454A0F4();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C0, &qword_2545507C0) + 28));

  v12 = v5 + v1[9];
  v13 = sub_254549DC4();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C8, &qword_2545507C8) + 28));

  v15 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_254516178@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for SoftwareUpdateStatusView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_254513424(a1, v2 + v6, v8, v9, a2);
}

unint64_t sub_254516248()
{
  result = qword_27F5FC9B8;
  if (!qword_27F5FC9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC9A8, &qword_254550B38);
    sub_2544AE1F0(&qword_27F5FBC20, &qword_27F5FBC28, &unk_25454F660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC9B8);
  }

  return result;
}

unint64_t sub_254516300()
{
  result = qword_27F5FC9C0;
  if (!qword_27F5FC9C0)
  {
    sub_25454ADA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FC9C0);
  }

  return result;
}

uint64_t sub_254516358()
{
  v1 = (type metadata accessor for SoftwareUpdateStatusView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_25454A5B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 16) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = v0 + v3;
  v12 = sub_254549AB4();
  (*(*(v12 - 8) + 8))(v0 + v3, v12);
  v13 = *(v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730) + 28));

  v14 = *(v0 + v3 + v1[7] + 8);

  v15 = v0 + v3 + v1[8];
  v16 = sub_25454A0F4();
  (*(*(v16 - 8) + 8))(v15, v16);
  v17 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C0, &qword_2545507C0) + 28));

  v18 = v11 + v1[9];
  v19 = sub_254549DC4();
  (*(*(v19 - 8) + 8))(v18, v19);
  v20 = *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C8, &qword_2545507C8) + 28));

  v21 = *(v0 + v4 + 8);

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_2545165D4()
{
  v1 = *(type metadata accessor for SoftwareUpdateStatusView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_25454A5B4() - 8);
  v5 = *(v0 + v3);
  v6 = *(v0 + v3 + 8);
  v7 = v0 + ((v3 + *(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_2545136C4(v0 + v2);
}

unint64_t sub_2545166B4()
{
  result = qword_27F5FCA88;
  if (!qword_27F5FCA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCA18, &qword_254550BA0);
    sub_25451676C();
    sub_2544AE1F0(&qword_27F5FCAB8, &qword_27F5FCAC0, &qword_254550C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCA88);
  }

  return result;
}

unint64_t sub_25451676C()
{
  result = qword_27F5FCA90;
  if (!qword_27F5FCA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCA10, &qword_254550B98);
    sub_254516824();
    sub_2544AE1F0(&qword_27F5FB5E8, &qword_27F5FB5F0, &qword_25454E670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCA90);
  }

  return result;
}

unint64_t sub_254516824()
{
  result = qword_27F5FCA98;
  if (!qword_27F5FCA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCA08, &qword_254550B90);
    sub_2545168DC();
    sub_2544AE1F0(&qword_27F5FBD28, &qword_27F5FBD30, &unk_254550C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCA98);
  }

  return result;
}

unint64_t sub_2545168DC()
{
  result = qword_27F5FCAA0;
  if (!qword_27F5FCAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCA00, &qword_254550B88);
    sub_254516994();
    sub_2544AE1F0(&qword_27F5FB5F8, &qword_27F5FB600, &qword_25454E678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCAA0);
  }

  return result;
}

unint64_t sub_254516994()
{
  result = qword_27F5FCAA8;
  if (!qword_27F5FCAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCA48, &qword_254550BD8);
    sub_2544AE1F0(&qword_27F5FCAB0, &qword_27F5FCA40, &qword_254550BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCAA8);
  }

  return result;
}

unint64_t sub_254516A4C()
{
  result = qword_27F5FCAC8;
  if (!qword_27F5FCAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCA38, &qword_254550BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCA58, &qword_254550BE8);
    sub_25454ADA4();
    sub_254516B60();
    sub_254516300();
    swift_getOpaqueTypeConformance2();
    sub_2544AE1F0(&qword_27F5FCAE0, &qword_27F5FB3C0, &qword_254550BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCAC8);
  }

  return result;
}

unint64_t sub_254516B60()
{
  result = qword_27F5FCAD0;
  if (!qword_27F5FCAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCA58, &qword_254550BE8);
    sub_254516C18();
    sub_2544AE1F0(&qword_27F5FCAB8, &qword_27F5FCAC0, &qword_254550C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCAD0);
  }

  return result;
}

unint64_t sub_254516C18()
{
  result = qword_27F5FCAD8;
  if (!qword_27F5FCAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCA50, &qword_254550BE0);
    sub_254516994();
    sub_2544AE1F0(&qword_27F5FBD28, &qword_27F5FBD30, &unk_254550C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCAD8);
  }

  return result;
}

unint64_t sub_254516CD0()
{
  result = qword_27F5FCAE8;
  if (!qword_27F5FCAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FC9F8, &qword_254550B80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCA18, &qword_254550BA0);
    sub_25454ADA4();
    sub_2545166B4();
    sub_254516300();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCAE8);
  }

  return result;
}

unint64_t sub_254516DB8()
{
  result = qword_27F5FCB10;
  if (!qword_27F5FCB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCB08, &qword_254550C50);
    sub_254516E90(&qword_27F5FBF50, &qword_27F5FBF58, &qword_25454FB98);
    sub_2544AE1F0(&qword_27F5FB388, &qword_27F5FB390, &qword_25454FBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCB10);
  }

  return result;
}

uint64_t sub_254516E90(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_254516F18()
{
  v1 = (type metadata accessor for SoftwareUpdateStatusView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = sub_254549AB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v8 = *(v6 + 80);
  v9 = (v4 + v8) & ~v8;
  v10 = *(v6 + 64);
  v11 = v2 | v8;
  v12 = v0 + v3;
  v7(v0 + v3, v5);
  v13 = *(v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730) + 28));

  v14 = *(v0 + v3 + v1[7] + 8);

  v15 = v0 + v3 + v1[8];
  v16 = sub_25454A0F4();
  (*(*(v16 - 8) + 8))(v15, v16);
  v17 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C0, &qword_2545507C0) + 28));

  v18 = v12 + v1[9];
  v19 = sub_254549DC4();
  (*(*(v19 - 8) + 8))(v18, v19);
  v20 = *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC7C8, &qword_2545507C8) + 28));

  v7(v0 + v9, v5);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_254517130()
{
  v1 = *(type metadata accessor for SoftwareUpdateStatusView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_254549AB4() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_254511AB4(v0 + v2, v5);
}

uint64_t sub_254517204()
{
  v1 = sub_254549AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2545172C8()
{
  v2 = *(sub_254549AB4() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2544AE3EC;

  return sub_254511E48();
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2545173E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254517428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2545174A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB20, &qword_254550D90);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v81 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v84 = &v60 - v8;
  sub_25454BE14();
  v70 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a1[1];
  if (v9)
  {
    v100 = *a1;
    v101 = v9;
    sub_2544AECF0();

    v10 = sub_25454B274();
    v79 = v11;
    v80 = v10;
    v13 = v12;
    v78 = v14;
    KeyPath = swift_getKeyPath();
    v76 = swift_getKeyPath();
    LOBYTE(v100) = v13 & 1;
    LOBYTE(v99[0]) = 0;
    v72 = v13 & 1;
    v74 = 0;
    v15 = a1[6];
    v73 = swift_getKeyPath();
    v75 = v15;

    v83 = sub_25454B6C4();
    v71 = swift_getKeyPath();
    v82 = 1;
  }

  else
  {
    v79 = 0;
    v80 = 0;
    KeyPath = 0;
    v78 = 0;
    v75 = 0;
    v76 = 0;
    v82 = 0;
    v83 = 0;
    v73 = 0;
    v74 = 0;
    v71 = 0;
    v72 = 0;
  }

  v16 = a1[3];
  v100 = a1[2];
  v101 = v16;
  sub_2544AECF0();

  v17 = sub_25454B274();
  v19 = v18;
  v100 = v17;
  v101 = v18;
  v21 = v20 & 1;
  LOBYTE(v102) = v20 & 1;
  v103 = v22;
  v23 = v84;
  sub_25454B3F4();
  sub_2544C9C64(v17, v19, v21);

  *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB28, &qword_254550D98) + 36)) = 256;
  v24 = swift_getKeyPath();
  v25 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB30, &qword_254550DD0) + 36);
  *v25 = v24;
  *(v25 + 8) = 1;
  v26 = swift_getKeyPath();
  v27 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB38, &qword_254550E08) + 36);
  *v27 = v26;
  *(v27 + 8) = 1;
  *(v27 + 16) = 0;
  v28 = a1[6];

  sub_25454B054();
  v29 = sub_25454B0D4();
  v30 = swift_getKeyPath();
  v31 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB40, &qword_254550E40) + 36));
  *v31 = v30;
  v31[1] = v29;
  v32 = sub_25454B6A4();
  v33 = swift_getKeyPath();
  v34 = (v23 + *(v4 + 36));
  *v34 = v33;
  v34[1] = v32;
  v35 = a1[5];
  if (v35)
  {
    v69 = a1[4];
    v36 = swift_getKeyPath();
    v68 = swift_getKeyPath();
    LOBYTE(v99[0]) = 0;
    v37 = swift_getKeyPath();
    LOBYTE(v100) = 0;
    v66 = 0;
    v67 = v37;

    v65 = sub_25454B6C4();
    v38 = swift_getKeyPath();
    v64 = 1;
  }

  else
  {

    v36 = 0;
    v68 = 0;
    v69 = 0;
    v28 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v38 = 0;
  }

  v61 = 0;
  v62 = v36;
  v63 = v38;
  v39 = v81;
  sub_254517C10(v84, v81);
  *a2 = 0;
  *(a2 + 8) = 0;
  *&v85 = v80;
  *(&v85 + 1) = v79;
  *&v86 = v72;
  *(&v86 + 1) = v78;
  *&v87 = KeyPath;
  *(&v87 + 1) = v82;
  *&v88 = v76;
  *(&v88 + 1) = v82;
  *&v89 = v74;
  *(&v89 + 1) = v73;
  *&v90 = v75;
  *(&v90 + 1) = v71;
  v40 = v83;
  v91 = v83;
  v41 = v86;
  *(a2 + 16) = v85;
  *(a2 + 32) = v41;
  v42 = v87;
  v43 = v88;
  v44 = v89;
  v45 = v90;
  *(a2 + 112) = v40;
  *(a2 + 80) = v44;
  *(a2 + 96) = v45;
  *(a2 + 48) = v42;
  *(a2 + 64) = v43;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB48, &qword_254550E78);
  sub_254517C10(v39, a2 + v46[16]);
  v47 = a2 + v46[20];
  v92 = v36;
  v48 = v68;
  v49 = v69;
  *&v93 = v69;
  *(&v93 + 1) = v35;
  v94 = v28;
  v50 = v64;
  *&v95 = v68;
  *(&v95 + 1) = v64;
  v51 = v67;
  *&v96 = v67;
  *(&v96 + 1) = v64;
  v52 = a2;
  v53 = v66;
  *&v97 = v66;
  *(&v97 + 1) = v38;
  v54 = v65;
  v98 = v65;
  *(v47 + 96) = v65;
  v55 = v93;
  *v47 = v92;
  *(v47 + 16) = v55;
  v56 = v95;
  *(v47 + 32) = v94;
  *(v47 + 48) = v56;
  v57 = v97;
  *(v47 + 64) = v96;
  *(v47 + 80) = v57;
  v58 = v52 + v46[24];
  *v58 = 0;
  *(v58 + 8) = 0;
  sub_2544AE240(&v85, &v100, &qword_27F5FCB50, &qword_254550E80);
  sub_2544AE240(&v92, &v100, &qword_27F5FCB58, &qword_254550E88);
  sub_254517C80(v84);
  v99[0] = v62;
  v99[1] = v61;
  v99[2] = v49;
  v99[3] = v35;
  v99[4] = v28;
  v99[5] = 0;
  v99[6] = v48;
  v99[7] = v50;
  v99[8] = v51;
  v99[9] = v50;
  v99[10] = v53;
  v99[11] = v63;
  v99[12] = v54;
  sub_2544AE150(v99, &qword_27F5FCB58, &qword_254550E88);
  sub_254517C80(v81);
  v100 = v80;
  v101 = v79;
  v102 = v72;
  v103 = v78;
  v104 = KeyPath;
  v105 = v82;
  v106 = v76;
  v107 = v82;
  v108 = v74;
  v109 = v73;
  v110 = v75;
  v111 = v71;
  v112 = v83;
  sub_2544AE150(&v100, &qword_27F5FCB50, &qword_254550E80);
}

uint64_t sub_254517AD4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 9) = *(v1 + 41);
  *a1 = sub_25454AC24();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB18, &qword_254550D88);
  return sub_2545174A4(v6, a1 + *(v4 + 44));
}

uint64_t sub_254517B48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25454A894();
  *a1 = result;
  return result;
}

uint64_t sub_254517B74(uint64_t *a1)
{
  v1 = *a1;

  return sub_25454A8A4();
}

uint64_t sub_254517BB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25454A894();
  *a1 = result;
  return result;
}

uint64_t sub_254517BE4(uint64_t *a1)
{
  v1 = *a1;

  return sub_25454A8A4();
}

uint64_t sub_254517C10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB20, &qword_254550D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254517C80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB20, &qword_254550D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_254517CF4()
{
  result = qword_27F5FCB60;
  if (!qword_27F5FCB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCB68, &qword_254550EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCB60);
  }

  return result;
}

uint64_t WalletKeyUWBApproachAngleSection.init(accessoryDetails:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730) + 28)) = 0;
  v4 = sub_254549AB4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t WalletKeyUWBApproachAngleSection.body.getter()
{
  v1 = sub_254549AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21[-v8];
  shouldShowWalletKeyUWBApproachAngle = WalletKeyUWBApproachAngleSection._shouldShowWalletKeyUWBApproachAngleSection()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_2545499E4();
  (*(v2 + 8))(v5, v1);
  v21[16] = shouldShowWalletKeyUWBApproachAngle;
  v22 = v9;
  v23 = v0;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (shouldShowWalletKeyUWBApproachAngle)
  {
    v24 = sub_25454BCF4();
    v25 = v11;
    sub_2544AECF0();
    v12 = sub_25454B274();
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = v16 & 1;
  }

  else
  {

    v12 = 0;
    v14 = 0;
    v19 = 0;
    v18 = 0;
  }

  v24 = v12;
  v25 = v14;
  v26 = v19;
  v27 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB70, &unk_254550EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1A8, &qword_25454FD90);
  sub_254519A54();
  sub_254505794();
  sub_25454B9B4();
  return sub_2544AE150(v9, &qword_27F5FC620, &qword_2545503B0);
}

Swift::Bool __swiftcall WalletKeyUWBApproachAngleSection._shouldShowWalletKeyUWBApproachAngleSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v75 = &v73 - v2;
  v3 = sub_254549EA4();
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v73 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v74 = &v73 - v7;
  v8 = sub_254549AB4();
  v83 = *(v8 - 8);
  v84 = v8;
  v9 = *(v83 + 64);
  MEMORY[0x28223BE20](v8);
  v82 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2545495B4();
  v85 = *(v11 - 8);
  v86 = v11;
  v12 = *(v85 + 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_254549844();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2545497D4();
  v21 = *(v20 - 8);
  v87 = v20;
  v88 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_254549624();
  v26 = *(v25 - 8);
  v27 = v26[8];
  MEMORY[0x28223BE20](v25);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v26[13];
  v81 = *MEMORY[0x277D15238];
  v80 = v30;
  v30(v29);
  v79 = sub_254521084(&qword_27F5FCB90, MEMORY[0x277D15260]);
  v31 = sub_254549564();
  v78 = v26[1];
  v78(v29, v25);
  if ((v31 & 1) == 0)
  {
    if (qword_27F5FACF0 != -1)
    {
      swift_once();
    }

    v46 = sub_25454A2E4();
    __swift_project_value_buffer(v46, qword_27F5FD440);
    v47 = sub_25454A2C4();
    v48 = sub_25454BF94();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v89 = v50;
      *v49 = 136315650;
      *(v49 + 4) = sub_254502AAC(0xD00000000000002BLL, 0x8000000254556600, &v89);
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_254502AAC(0xD00000000000002DLL, 0x8000000254556660, &v89);
      *(v49 + 22) = 2080;
      v80(v29, v81, v25);
      v51 = sub_254549564();
      v78(v29, v25);
      if (v51)
      {
        v52 = 0x2E64656C62616E65;
      }

      else
      {
        v52 = 0x62616E6520544F4ELL;
      }

      if (v51)
      {
        v53 = 0xE800000000000000;
      }

      else
      {
        v53 = 0xEC0000002E64656CLL;
      }

      v54 = sub_254502AAC(v52, v53, &v89);

      *(v49 + 24) = v54;
      _os_log_impl(&dword_2544A5000, v47, v48, "%s - %s: Returning false to hide Wallet Key UWB approach angle because wallet_key_uwb is %s", v49, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C0FDF0](v50, -1, -1);
      MEMORY[0x259C0FDF0](v49, -1, -1);
    }

    goto LABEL_30;
  }

  sub_254549704();
  v32 = sub_2545496F4();
  sub_2545496E4();

  sub_254549814();
  (*(v16 + 8))(v19, v15);
  sub_2545495A4();
  (*(v85 + 1))(v14, v86);
  if ((sub_254549794() & 1) == 0)
  {
    if (qword_27F5FACF0 != -1)
    {
      swift_once();
    }

    v55 = sub_25454A2E4();
    __swift_project_value_buffer(v55, qword_27F5FD440);
    v41 = sub_25454A2C4();
    v42 = sub_25454BF94();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_29;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v89 = v44;
    *v43 = 136315394;
    *(v43 + 4) = sub_254502AAC(0xD00000000000002BLL, 0x8000000254556600, &v89);
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_254502AAC(0xD00000000000002DLL, 0x8000000254556660, &v89);
    v45 = "%s - %s: Returning false to hide Wallet Key UWB approach angle because currentUser does NOT have admin privilege.";
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v33 = v82;
  sub_25454B7A4();
  v34 = sub_2545499B4();
  v35 = v84;
  v36 = *(v83 + 8);
  v36(v33, v84);
  if ((v34 & 1) == 0)
  {
    if (qword_27F5FACF0 != -1)
    {
      swift_once();
    }

    v56 = sub_25454A2E4();
    __swift_project_value_buffer(v56, qword_27F5FD440);
    v41 = sub_25454A2C4();
    v42 = sub_25454BF94();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_29;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v89 = v44;
    *v43 = 136315394;
    *(v43 + 4) = sub_254502AAC(0xD00000000000002BLL, 0x8000000254556600, &v89);
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_254502AAC(0xD00000000000002DLL, 0x8000000254556660, &v89);
    v45 = "%s - %s: Returning false to hide Wallet Key UWB approach angle because supportsUWBUnlock is false.";
    goto LABEL_28;
  }

  sub_25454B7A4();
  v37 = v75;
  sub_2545499E4();
  v36(v33, v35);
  v38 = v76;
  v39 = v77;
  if ((*(v76 + 48))(v37, 1, v77) == 1)
  {
    sub_2544AE150(v37, &qword_27F5FC620, &qword_2545503B0);
    if (qword_27F5FACF0 != -1)
    {
      swift_once();
    }

    v40 = sub_25454A2E4();
    __swift_project_value_buffer(v40, qword_27F5FD440);
    v41 = sub_25454A2C4();
    v42 = sub_25454BF94();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_29;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v89 = v44;
    *v43 = 136315394;
    *(v43 + 4) = sub_254502AAC(0xD00000000000002BLL, 0x8000000254556600, &v89);
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_254502AAC(0xD00000000000002DLL, 0x8000000254556660, &v89);
    v45 = "%s - %s: doorLockCluster is nil, so returning false to hide Wallet Key UWB approach angle.";
LABEL_28:
    _os_log_impl(&dword_2544A5000, v41, v42, v45, v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v44, -1, -1);
    MEMORY[0x259C0FDF0](v43, -1, -1);
LABEL_29:

    (*(v88 + 8))(v24, v87);
LABEL_30:
    v57 = 0;
    return v57 & 1;
  }

  v59 = v74;
  (*(v38 + 32))(v74, v37, v39);
  v57 = sub_254549E94();
  if (qword_27F5FACF0 != -1)
  {
    swift_once();
  }

  v60 = sub_25454A2E4();
  __swift_project_value_buffer(v60, qword_27F5FD440);
  v61 = v73;
  (*(v38 + 16))(v73, v59, v39);
  v62 = sub_25454A2C4();
  v63 = sub_25454BF94();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v85 = v24;
    v86 = v65;
    v89 = v65;
    *v64 = 136315906;
    *(v64 + 4) = sub_254502AAC(0xD00000000000002BLL, 0x8000000254556600, &v89);
    *(v64 + 12) = 2080;
    *(v64 + 14) = sub_254502AAC(0xD00000000000002DLL, 0x8000000254556660, &v89);
    *(v64 + 22) = 1024;
    *(v64 + 24) = v57 & 1;
    *(v64 + 28) = 2080;
    v66 = sub_254549DE4();
    v68 = v67;
    v69 = *(v38 + 8);
    v69(v61, v39);
    v70 = sub_254502AAC(v66, v68, &v89);

    *(v64 + 30) = v70;
    _os_log_impl(&dword_2544A5000, v62, v63, "%s - %s: Returning %{BOOL}d | doorLockCluster = %s", v64, 0x26u);
    v71 = v86;
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v71, -1, -1);
    MEMORY[0x259C0FDF0](v64, -1, -1);

    v69(v74, v39);
    (*(v88 + 8))(v85, v87);
  }

  else
  {

    v72 = *(v38 + 8);
    v72(v61, v39);
    v72(v59, v39);
    (*(v88 + 8))(v24, v87);
  }

  return v57 & 1;
}

uint64_t sub_254518DD4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a3;
  v25 = a2;
  v31 = a1;
  v32 = a4;
  v30 = sub_254549AB4();
  v27 = *(v30 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - v9;
  v28 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v11 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v26 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB88, &qword_254550EF0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB70, &unk_254550EE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v25 - v20;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v31)
  {
    v33 = sub_25454BCF4();
    v34 = v22;
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_2544AE240(v25, v10, &qword_27F5FC620, &qword_2545503B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
    sub_25454B7A4();
    v23 = sub_254549964();
    (*(v27 + 8))(v6, v30);
    WalletKeyUWBApproachAngleView.init(doorLockCluster:canEdit:)(v10, v23 & 1, v26);

    sub_254521084(&qword_27F5FCDA0, type metadata accessor for WalletKeyUWBApproachAngleView);
    sub_2544AECF0();
    sub_25454A684();
    (*(v14 + 32))(v21, v17, v13);
    (*(v14 + 56))(v21, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v21, 1, 1, v13);
  }

  sub_2545227C8(v21, v32);
}

uint64_t WalletKeyUWBApproachAngleView.init(doorLockCluster:canEdit:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v64 = a2;
  v65 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB98, &qword_254550EF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = v52 - v6;
  v7 = sub_254549E54();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v54 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = v52 - v11;
  v12 = sub_254549EA4();
  v61 = v12;
  v59 = *(v12 - 8);
  v13 = v59;
  v14 = *(v59 + 64);
  MEMORY[0x28223BE20](v12);
  v63 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  v16 = *(*(v60 - 1) + 64);
  v17 = MEMORY[0x28223BE20](v60);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v52 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v52 - v23;
  (*(v13 + 56))(v52 - v23, 1, 1, v12);
  sub_2544AE240(v24, v22, &qword_27F5FC620, &qword_2545503B0);
  sub_25454B794();
  sub_2544AE150(v24, &qword_27F5FC620, &qword_2545503B0);
  v25 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v26 = a3 + v25[6];
  v66 = 1;
  sub_25454B794();
  v27 = v68;
  *v26 = v67;
  v53 = v26;
  v52[0] = v27;
  *(v26 + 8) = v27;
  v28 = a3 + v25[7];
  v66 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBA0, &qword_254550F00);
  sub_25454B794();
  v29 = v68;
  *v28 = v67;
  *(v28 + 8) = v29;
  v30 = a3 + v25[8];
  v66 = 1;
  sub_25454B794();
  v31 = v68;
  *v30 = v67;
  v52[1] = v31;
  *(v30 + 8) = v31;
  v32 = a3 + v25[9];
  v66 = 2;
  v33 = v65;
  sub_25454B794();
  v34 = v68;
  *v32 = v67;
  *(v32 + 8) = v34;
  v62 = v25;
  v35 = v25[10];
  *(a3 + v35) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBA8, &qword_254550F38);
  v36 = v59;
  swift_storeEnumTagMultiPayload();
  sub_2544AE240(v33, v24, &qword_27F5FC620, &qword_2545503B0);
  sub_2544AE150(a3, &qword_27F5FCBB0, &qword_254550F40);
  sub_2544AE240(v24, v22, &qword_27F5FC620, &qword_2545503B0);
  v37 = v61;
  sub_25454B794();
  sub_2544AE150(v24, &qword_27F5FC620, &qword_2545503B0);
  sub_2544AE240(v33, v19, &qword_27F5FC620, &qword_2545503B0);
  if ((*(v36 + 48))(v19, 1, v37) == 1)
  {
    sub_2544AE150(v65, &qword_27F5FC620, &qword_2545503B0);
    result = sub_2544AE150(v19, &qword_27F5FC620, &qword_2545503B0);
  }

  else
  {
    v60 = v30;
    (*(v36 + 32))(v63, v19, v37);
    v39 = v56;
    sub_254549E64();
    v41 = v57;
    v40 = v58;
    if ((*(v57 + 48))(v39, 1, v58) == 1)
    {
      sub_2544AE150(v65, &qword_27F5FC620, &qword_2545503B0);
      (*(v36 + 8))(v63, v37);
      result = sub_2544AE150(v39, &qword_27F5FCB98, &qword_254550EF8);
    }

    else
    {
      v42 = v55;
      (*(v41 + 32))(v55, v39, v40);
      v43 = v54;
      sub_254549E44();
      sub_254521084(&qword_27F5FCBB8, MEMORY[0x277D166C0]);
      v44 = v36;
      v45 = sub_25454C0B4();
      v46 = *(v41 + 8);
      v46(v43, v40);
      v66 = v45 & 1;
      sub_25454B794();

      v47 = v68;
      v48 = v53;
      *v53 = v67;
      *(v48 + 1) = v47;
      sub_254549E14();
      v49 = sub_25454C0B4();
      v46(v43, v40);
      v66 = v49 & 1;
      sub_25454B794();
      sub_2544AE150(v65, &qword_27F5FC620, &qword_2545503B0);
      v46(v42, v40);
      (*(v44 + 8))(v63, v37);

      v50 = v68;
      v51 = v60;
      *v60 = v67;
      *(v51 + 1) = v50;
    }
  }

  *(a3 + v62[5]) = v64 & 1;
  return result;
}

uint64_t sub_254519938@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    sub_25454BCF4();
    sub_2544AECF0();
    v4 = sub_25454B274();
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v12 = v8 & 1;
  }

  else
  {

    v4 = 0;
    v6 = 0;
    v12 = 0;
    v10 = 0;
  }

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v12;
  a2[3] = v10;
  return result;
}

unint64_t sub_254519A54()
{
  result = qword_27F5FCB78;
  if (!qword_27F5FCB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCB70, &unk_254550EE0);
    sub_2544AE1F0(&qword_27F5FCB80, &qword_27F5FCB88, &qword_254550EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCB78);
  }

  return result;
}

uint64_t sub_254519B04()
{
  v1 = sub_254549AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12[-v8];
  shouldShowWalletKeyUWBApproachAngle = WalletKeyUWBApproachAngleSection._shouldShowWalletKeyUWBApproachAngleSection()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_2545499E4();
  (*(v2 + 8))(v5, v1);
  v12[16] = shouldShowWalletKeyUWBApproachAngle;
  v13 = v9;
  v14 = v0;
  sub_254519938(shouldShowWalletKeyUWBApproachAngle, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB70, &unk_254550EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1A8, &qword_25454FD90);
  sub_254519A54();
  sub_254505794();
  sub_25454B9B4();
  return sub_2544AE150(v9, &qword_27F5FC620, &qword_2545503B0);
}

uint64_t sub_254519D08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25454AA94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBA8, &qword_254550F38);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  sub_2544AE240(v1 + *(v12 + 40), v11, &qword_27F5FCBA8, &qword_254550F38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_25454A454();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_25454BF84();
    v16 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t WalletKeyUWBApproachAngleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBC0, &qword_254550F48);
  sub_2545210D4();
  sub_25454A724();
  KeyPath = swift_getKeyPath();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBE0, &qword_254550F88) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBE8, &qword_254550F90) + 28);
  v5 = *MEMORY[0x277CDFA88];
  v6 = sub_25454A6E4();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = KeyPath;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBF0, &qword_254550F98);
  *(a1 + *(result + 36)) = 0;
  return result;
}

double sub_25451A03C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBD0, &qword_254550F50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v16 - 2) = a1;
  sub_25454AF04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCC70, &qword_2545510C8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCC78, &qword_2545510D0);
  v11 = sub_254521B00();
  v16 = v10;
  v17 = v11;
  swift_getOpaqueTypeConformance2();
  sub_25454A3C4();
  v16 = sub_25454BCF4();
  v17 = v12;
  sub_2544AE1F0(&qword_27F5FCBD8, &qword_27F5FCBD0, &qword_254550F50);
  sub_2544AECF0();
  sub_25454B3B4();

  (*(v5 + 8))(v8, v4);
  v13 = sub_25454AF14();

  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBC0, &qword_254550F48) + 36);
  *v14 = v13;
  result = 0.0;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 1;
  return result;
}

uint64_t sub_25451A304(uint64_t a1)
{
  v2 = sub_25454AAC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCC78, &qword_2545510D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = sub_25454AC14();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCCA8, &qword_2545510E8);
  sub_25451A5A8(a1, &v10[*(v11 + 44)]);
  v12 = &v10[*(v7 + 36)];
  v13 = *(sub_25454A744() + 20);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_25454ABA4();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  __asm { FMOV            V0.2D, #10.0 }

  *v12 = _Q0;
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCCA0, &qword_2545510E0) + 36)] = 256;
  (*(v3 + 104))(v6, *MEMORY[0x277CDDDC0], v2);
  sub_254521B00();
  sub_25454B4E4();
  (*(v3 + 8))(v6, v2);
  sub_2544AE150(v10, &qword_27F5FCC78, &qword_2545510D0);
}

uint64_t sub_25451A5A8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCCB0, &qword_2545510F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v98 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v78 - v8;
  sub_25454BE14();
  v88 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v97 = sub_25454AB14();
  LOBYTE(v143) = 1;
  sub_25451AFE4(a1, v196);
  *&v195[7] = v196[0];
  *&v195[23] = v196[1];
  *&v195[39] = v196[2];
  v195[55] = v197;
  v96 = v143;
  *v9 = sub_25454AB04();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCCB8, &unk_2545510F8);
  sub_25451B400(a1, &v9[*(v10 + 44)]);
  v11 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v12 = a1 + *(v11 + 24);
  v13 = *v12;
  v14 = *(v12 + 8);
  LOBYTE(v143) = v13;
  v144 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  v15 = a1 + *(v11 + 32);
  v16 = *v15;
  v17 = *(v15 + 8);
  LOBYTE(v143) = v16;
  v144 = v17;
  sub_25454B7A4();
  v18 = sub_25454BCF4();
  v20 = v19;

  v143 = v18;
  v144 = v20;
  sub_2544AECF0();
  v21 = sub_25454B274();
  v94 = v22;
  v95 = v21;
  LOBYTE(v11) = v23;
  v93 = v24;
  sub_25454BA64();
  sub_25454A784();
  LODWORD(v11) = v11 & 1;
  v193 = v11;
  v87 = v9;
  v86 = v11;
  KeyPath = swift_getKeyPath();
  v89 = sub_25454B134();
  v25 = swift_getKeyPath();
  v85 = v25;
  v92 = sub_25454AF14();
  sub_25454A394();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v194 = 0;
  v143 = sub_25454BCF4();
  v144 = v34;
  v35 = sub_25454B274();
  v83 = v36;
  v84 = v35;
  LOBYTE(v18) = v37;
  v91 = v38;
  sub_25454BA64();
  sub_25454A784();
  v191 = v18 & 1;
  v78 = v18 & 1;
  v82 = swift_getKeyPath();
  *(&v81 + 1) = sub_25454B124();
  *&v81 = swift_getKeyPath();
  v80 = sub_25454B644();
  v39 = sub_25454AF14();
  v40 = v39;
  v79 = v39;
  sub_25454A394();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v192 = 0;
  v49 = v98;
  sub_2544AE240(v9, v98, &qword_27F5FCCB0, &qword_2545510F0);
  v113[0] = v97;
  v113[1] = 0;
  LOBYTE(v114[0]) = v96;
  *(v114 + 1) = *v195;
  *(&v114[1] + 1) = *&v195[16];
  *(&v114[2] + 1) = *&v195[32];
  *(&v114[3] + 1) = *&v195[48];
  v50 = v114[0];
  *a2 = v97;
  a2[1] = v50;
  v51 = v114[2];
  a2[2] = v114[1];
  a2[3] = v51;
  *(a2 + 57) = *(&v114[2] + 9);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCCC0, &qword_254551168);
  sub_2544AE240(v49, a2 + v52[12], &qword_27F5FCCB0, &qword_2545510F0);
  v53 = (a2 + v52[16]);
  *&v115 = v95;
  *(&v115 + 1) = v94;
  LOBYTE(v116) = v11;
  *(&v116 + 1) = v93;
  v121 = v110;
  v122 = v111;
  v123 = v112;
  v120 = v109;
  v119 = v108;
  v117 = v106;
  v118 = v107;
  *&v124 = KeyPath;
  BYTE8(v124) = 0;
  *&v125 = v25;
  *(&v125 + 1) = v89;
  LOBYTE(v126) = v92;
  *(&v126 + 1) = v27;
  *&v127[0] = v29;
  *(&v127[0] + 1) = v31;
  *&v127[1] = v33;
  BYTE8(v127[1]) = 0;
  v54 = v109;
  v53[4] = v108;
  v53[5] = v54;
  v55 = v118;
  v53[2] = v117;
  v53[3] = v55;
  v56 = v124;
  v53[8] = v123;
  v53[9] = v56;
  v57 = v122;
  v53[6] = v121;
  v53[7] = v57;
  v58 = v116;
  *v53 = v115;
  v53[1] = v58;
  *(v53 + 201) = *(v127 + 9);
  v59 = v127[0];
  v60 = v125;
  v53[11] = v126;
  v53[12] = v59;
  v53[10] = v60;
  v61 = a2 + v52[20];
  v62 = v83;
  v63 = v84;
  *&v128 = v84;
  *(&v128 + 1) = v83;
  LOBYTE(v129) = v18 & 1;
  *(&v129 + 1) = v91;
  v134 = v103;
  v135 = v104;
  v136 = v105;
  v130 = v99;
  v131 = v100;
  v133 = v102;
  v132 = v101;
  v65 = *(&v81 + 1);
  v64 = v82;
  *&v137 = v82;
  BYTE8(v137) = 0;
  v66 = a2;
  v67 = v80;
  v68 = v81;
  v138 = v81;
  *&v139 = v80;
  BYTE8(v139) = v40;
  *&v140 = v42;
  *(&v140 + 1) = v44;
  *&v141 = v46;
  *(&v141 + 1) = v48;
  v142 = 0;
  v61[224] = 0;
  v69 = v129;
  *v61 = v128;
  *(v61 + 1) = v69;
  v70 = v133;
  *(v61 + 4) = v132;
  *(v61 + 5) = v70;
  v71 = v137;
  *(v61 + 8) = v136;
  *(v61 + 9) = v71;
  v72 = v135;
  *(v61 + 6) = v134;
  *(v61 + 7) = v72;
  v73 = v131;
  *(v61 + 2) = v130;
  *(v61 + 3) = v73;
  v74 = v141;
  *(v61 + 12) = v140;
  *(v61 + 13) = v74;
  v75 = v139;
  *(v61 + 10) = v138;
  *(v61 + 11) = v75;
  v76 = v66 + v52[24];
  *v76 = 0;
  v76[8] = 1;
  sub_2544AE240(v113, &v143, &qword_27F5FCCC8, &qword_254551170);
  sub_2544AE240(&v115, &v143, &qword_27F5FCCD0, &qword_254551178);
  sub_2544AE240(&v128, &v143, &qword_27F5FCCD8, &qword_254551180);
  sub_2544AE150(v87, &qword_27F5FCCB0, &qword_2545510F0);
  v143 = v63;
  v144 = v62;
  v145 = v78;
  v151 = v103;
  v152 = v104;
  v153 = v105;
  v147 = v99;
  v148 = v100;
  v149 = v101;
  v150 = v102;
  v146 = v91;
  v154 = v64;
  v155 = 0;
  v156 = v68;
  v157 = v65;
  v158 = v67;
  v159 = v79;
  v160 = v42;
  v161 = v44;
  v162 = v46;
  v163 = v48;
  v164 = 0;
  sub_2544AE150(&v143, &qword_27F5FCCD8, &qword_254551180);
  v165[0] = v95;
  v165[1] = v94;
  v166 = v86;
  v167 = v93;
  v172 = v110;
  v173 = v111;
  v174 = v112;
  v168 = v106;
  v169 = v107;
  v171 = v109;
  v170 = v108;
  v175 = KeyPath;
  v176 = 0;
  v177 = v85;
  v178 = v89;
  v179 = v92;
  v180 = v27;
  v181 = v29;
  v182 = v31;
  v183 = v33;
  v184 = 0;
  sub_2544AE150(v165, &qword_27F5FCCD0, &qword_254551178);
  sub_2544AE150(v98, &qword_27F5FCCB0, &qword_2545510F0);
  v185[0] = v97;
  v185[1] = 0;
  v186 = v96;
  v187 = *v195;
  v188 = *&v195[16];
  v189 = *&v195[32];
  v190 = *&v195[48];
  sub_2544AE150(v185, &qword_27F5FCCC8, &qword_254551170);
}

uint64_t sub_25451AFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = sub_25454B714();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v28);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25454A454();
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v26);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v27 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v13 = a1 + *(v12 + 24);
  v14 = *v13;
  v15 = *(v13 + 8);
  v29 = v14;
  v30 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  v16 = v32;
  v17 = a1 + *(v12 + 32);
  v18 = *v17;
  v19 = *(v17 + 8);
  v29 = v18;
  v30 = v19;
  sub_25454B7A4();
  LOBYTE(v12) = v32;
  sub_254519D08(v11);
  WalletKeyUWBApproachAngleView._getImageName(left:right:colorScheme:)(v16, v12);
  (*(v8 + 8))(v11, v26);
  type metadata accessor for _BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  sub_25454B774();
  v22 = v28;
  (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v28);
  v23 = sub_25454B764();

  (*(v4 + 8))(v7, v22);
  v29 = 1;
  v32 = 1;
  v31 = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v23;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
}

Swift::String __swiftcall WalletKeyUWBApproachAngleView._getImageName(left:right:)(Swift::Bool left, Swift::Bool right)
{
  v4 = sub_25454A454();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254519D08(v8);
  v9 = WalletKeyUWBApproachAngleView._getImageName(left:right:colorScheme:)(left, right);
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t sub_25451B400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCCE0, &qword_254551188);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCCE8, &qword_254551190);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v35 = &v32 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v32 - v21;
  sub_25454BE14();
  v34 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v22 = sub_25454AC14();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCCF0, &qword_254551198);
  sub_25451B7D0(a1, &v22[*(v23 + 44)]);
  *v10 = sub_25454AC14();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCCF8, &qword_2545511A0);
  sub_25451E318(&v10[*(v24 + 44)]);
  *v20 = sub_25454AC14();
  *(v20 + 1) = 0;
  v20[16] = 1;
  sub_25451E9C0(a1, &v20[*(v23 + 44)]);
  v25 = v35;
  sub_2544AE240(v22, v35, &qword_27F5FCCE8, &qword_254551190);
  sub_2544AE240(v10, v8, &qword_27F5FCCE0, &qword_254551188);
  sub_2544AE240(v20, v15, &qword_27F5FCCE8, &qword_254551190);
  *a2 = 0;
  v33 = v10;
  *(a2 + 8) = 1;
  v26 = v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD00, &qword_2545511A8);
  sub_2544AE240(v25, a2 + v27[12], &qword_27F5FCCE8, &qword_254551190);
  v28 = a2 + v27[16];
  *v28 = 0;
  *(v28 + 8) = 1;
  sub_2544AE240(v26, a2 + v27[20], &qword_27F5FCCE0, &qword_254551188);
  v29 = a2 + v27[24];
  *v29 = 0;
  *(v29 + 8) = 1;
  sub_2544AE240(v15, a2 + v27[28], &qword_27F5FCCE8, &qword_254551190);
  v30 = a2 + v27[32];
  *v30 = 0;
  *(v30 + 8) = 1;
  sub_2544AE150(v20, &qword_27F5FCCE8, &qword_254551190);
  sub_2544AE150(v33, &qword_27F5FCCE0, &qword_254551188);
  sub_2544AE150(v22, &qword_27F5FCCE8, &qword_254551190);
  sub_2544AE150(v15, &qword_27F5FCCE8, &qword_254551190);
  sub_2544AE150(v26, &qword_27F5FCCE0, &qword_254551188);
  sub_2544AE150(v25, &qword_27F5FCCE8, &qword_254551190);
}

uint64_t sub_25451B7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a1;
  v76 = a2;
  v77 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v2 = *(v77 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v77);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD08, &qword_2545511B0);
  v4 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v6 = &v61 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD10, &qword_2545511B8);
  v66 = *(v67 - 8);
  v7 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v65 = &v61 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD18, &qword_2545511C0);
  v9 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v69 = &v61 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD20, &qword_2545511C8);
  v11 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v72 = &v61 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD28, &qword_2545511D0);
  v13 = *(*(v71 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v71);
  v75 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v70 = &v61 - v17;
  MEMORY[0x28223BE20](v16);
  v73 = &v61 - v18;
  sub_25454BE14();
  v74 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = v78;
  sub_254521C60(v78, &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v21 = swift_allocObject();
  v22 = sub_254521CC8(&v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  MEMORY[0x28223BE20](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD30, &qword_2545511D8);
  sub_254521D4C();
  sub_25454B7F4();
  sub_254521C60(v19, &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = swift_allocObject();
  sub_254521CC8(&v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v20);
  v24 = &v6[*(v63 + 36)];
  *v24 = sub_2545223B4;
  v24[1] = v23;
  v24[2] = 0;
  v24[3] = 0;
  v25 = (v19 + *(v77 + 24));
  v62 = *v25;
  v61 = *(v25 + 1);
  LOBYTE(v82) = v62;
  *(&v82 + 1) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  LOBYTE(v82) = v80;
  sub_254521C60(v19, &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = swift_allocObject();
  sub_254521CC8(&v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v20);
  sub_254521FFC();
  v27 = v65;
  sub_25454B574();

  sub_2544AE150(v6, &qword_27F5FCD08, &qword_2545511B0);
  sub_25454BA54();
  sub_25454A784();
  v28 = v69;
  (*(v66 + 32))(v69, v27, v67);
  v29 = (v28 + *(v64 + 36));
  v30 = v87;
  v29[4] = v86;
  v29[5] = v30;
  v29[6] = v88;
  v31 = v83;
  *v29 = v82;
  v29[1] = v31;
  v32 = v85;
  v29[2] = v84;
  v29[3] = v32;
  LOBYTE(v80) = v62;
  v81 = v61;
  sub_25454B7A4();
  if (v79 == 1)
  {
    v33 = sub_25454B684();
  }

  else
  {
    v34 = [objc_opt_self() systemGray2Color];
    v33 = sub_25454B5F4();
  }

  v35 = v33;
  KeyPath = swift_getKeyPath();
  v37 = v72;
  sub_2544B14E8(v28, v72, &qword_27F5FCD18, &qword_2545511C0);
  v38 = (v37 + *(v68 + 36));
  *v38 = KeyPath;
  v38[1] = v35;
  LOBYTE(KeyPath) = *(v78 + *(v77 + 20));
  v39 = swift_getKeyPath();
  v40 = swift_allocObject();
  *(v40 + 16) = (KeyPath & 1) == 0;
  v41 = v70;
  sub_2544B14E8(v37, v70, &qword_27F5FCD20, &qword_2545511C8);
  v42 = (v41 + *(v71 + 36));
  *v42 = v39;
  v42[1] = sub_254522860;
  v42[2] = v40;
  v43 = v73;
  sub_2544B14E8(v41, v73, &qword_27F5FCD28, &qword_2545511D0);
  v80 = sub_25454BCF4();
  v81 = v44;
  sub_2544AECF0();
  v45 = sub_25454B274();
  v47 = v46;
  v49 = v48;
  _s7SwiftUI4FontV7HomeUI2E14softMonospaced4size6weightACSd_AC6WeightVtFZfA0__0();
  v50 = sub_25454B194();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_2544C9C64(v45, v47, v49 & 1);

  v57 = v75;
  sub_2544AE240(v43, v75, &qword_27F5FCD28, &qword_2545511D0);
  v58 = v76;
  sub_2544AE240(v57, v76, &qword_27F5FCD28, &qword_2545511D0);
  v59 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD58, &unk_254551248) + 48);
  *v59 = v50;
  *(v59 + 8) = v52;
  *(v59 + 16) = v54 & 1;
  *(v59 + 24) = v56;
  sub_2544A8F00(v50, v52, v54 & 1);

  sub_2544AE150(v43, &qword_27F5FCD28, &qword_2545511D0);
  sub_2544C9C64(v50, v52, v54 & 1);

  sub_2544AE150(v57, &qword_27F5FCD28, &qword_2545511D0);
}

void sub_25451C0D0(uint64_t a1)
{
  v2 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v33 - v7;
  sub_25454BE14();
  v9 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a1 + *(v2 + 24);
  v12 = *(v10 + 8);
  v37 = *v10;
  v11 = v37;
  v38 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  v13 = a1 + *(v2 + 28);
  v14 = *v13;
  v15 = *(v13 + 8);
  v37 = v14;
  v38 = v15;
  v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD60, &qword_254551268);
  sub_25454B7B4();
  v37 = v11;
  v38 = v12;

  sub_25454B7A4();
  LOBYTE(v35[0]) = v11;
  v35[1] = v12;
  v34 = (v36 & 1) == 0;
  sub_25454B7B4();

  if (qword_27F5FACE8 != -1)
  {
    swift_once();
  }

  v16 = sub_25454A2E4();
  __swift_project_value_buffer(v16, qword_27F5FD428);
  sub_254521C60(a1, v8);
  sub_254521C60(a1, v6);
  v17 = sub_25454A2C4();
  v18 = sub_25454BF94();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35[0] = v20;
    *v19 = 136315906;
    *(v19 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, v35);
    v33[0] = v9;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_254502AAC(2036625250, 0xE400000000000000, v35);
    *(v19 + 22) = 1024;
    v21 = &v8[*(v2 + 24)];
    v22 = *v21;
    v23 = *(v21 + 1);
    v37 = v22;
    v38 = v23;
    sub_25454B7A4();
    v24 = v36;
    sub_254522280(v8);
    *(v19 + 24) = v24;
    *(v19 + 28) = 2080;
    v25 = &v6[*(v2 + 28)];
    v26 = *v25;
    v27 = *(v25 + 1);
    v37 = v26;
    v38 = v27;
    sub_25454B7A4();
    v28 = 1702195828;
    if ((v36 & 1) == 0)
    {
      v28 = 0x65736C6166;
    }

    v29 = 0xE500000000000000;
    if (v36)
    {
      v29 = 0xE400000000000000;
    }

    if (v36 == 2)
    {
      v30 = 7104878;
    }

    else
    {
      v30 = v28;
    }

    if (v36 == 2)
    {
      v31 = 0xE300000000000000;
    }

    else
    {
      v31 = v29;
    }

    sub_254522280(v6);
    v32 = sub_254502AAC(v30, v31, v35);

    *(v19 + 30) = v32;
    _os_log_impl(&dword_2544A5000, v17, v18, "<%s: %s> User tapped left button. includeLeft = %{BOOL}d | prevIncludeLeft %s", v19, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v20, -1, -1);
    MEMORY[0x259C0FDF0](v19, -1, -1);
  }

  else
  {
    sub_254522280(v8);

    sub_254522280(v6);
  }
}

uint64_t sub_25451C504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25454B714();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = (a1 + *(type metadata accessor for WalletKeyUWBApproachAngleView(0) + 24));
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v21) = v10;
  v22 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  sub_25454B704();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v12 = sub_25454B764();

  (*(v5 + 8))(v8, v4);
  sub_25454BA54();
  sub_25454A544();
  v13 = v21;
  v14 = v22;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  v18 = v26;

  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  return result;
}

void sub_25451C760(uint64_t a1)
{
  v66 = a1;
  v64 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v1 = *(*(v64 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v64);
  v65 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v62 = &v60 - v4;
  v5 = sub_254549EA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB98, &qword_254550EF8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v60 - v16;
  v18 = sub_254549E54();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v61 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v60 - v24;
  MEMORY[0x28223BE20](v23);
  v63 = &v60 - v26;
  sub_25454BE14();
  v67 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBB0, &qword_254550F40);
  v27 = v66;
  sub_25454B7A4();
  if ((*(v6 + 48))(v13, 1, v5))
  {
    sub_2544AE150(v13, &qword_27F5FC620, &qword_2545503B0);
    (*(v19 + 56))(v17, 1, 1, v18);
LABEL_6:
    sub_2544AE150(v17, &qword_27F5FCB98, &qword_254550EF8);
    if (qword_27F5FACF0 != -1)
    {
      swift_once();
    }

    v28 = sub_25454A2E4();
    __swift_project_value_buffer(v28, qword_27F5FD440);
    v29 = v65;
    sub_254521C60(v27, v65);
    v30 = sub_25454A2C4();
    v31 = sub_25454BF94();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v71 = v33;
      *v32 = 136315650;
      *(v32 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, &v71);
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_254502AAC(2036625250, 0xE400000000000000, &v71);
      *(v32 + 22) = 1024;
      v34 = &v29[*(v64 + 24)];
      v35 = *v34;
      v36 = *(v34 + 1);
      v69 = v35;
      v70 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
      sub_25454B7A4();
      v37 = v68;
      sub_254522280(v29);
      *(v32 + 24) = v37;
      _os_log_impl(&dword_2544A5000, v30, v31, "<%s: %s> Appearing without updating approach angle. includeLeft = %{BOOL}d", v32, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x259C0FDF0](v33, -1, -1);
      MEMORY[0x259C0FDF0](v32, -1, -1);
    }

    else
    {
      sub_254522280(v29);
    }

    return;
  }

  (*(v6 + 16))(v9, v13, v5);
  sub_2544AE150(v13, &qword_27F5FC620, &qword_2545503B0);
  sub_254549E64();
  (*(v6 + 8))(v9, v5);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    goto LABEL_6;
  }

  v38 = v63;
  (*(v19 + 32))(v63, v17, v18);
  sub_254549E44();
  sub_254521084(&qword_27F5FCBB8, MEMORY[0x277D166C0]);
  v39 = sub_25454C0B4();
  v65 = *(v19 + 8);
  (v65)(v25, v18);
  v40 = v27 + *(v64 + 24);
  v41 = *v40;
  v42 = *(v40 + 8);
  v69 = v41;
  v70 = v42;
  LOBYTE(v71) = v39 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7B4();
  if (qword_27F5FACF0 != -1)
  {
    swift_once();
  }

  v43 = sub_25454A2E4();
  __swift_project_value_buffer(v43, qword_27F5FD440);
  v44 = v62;
  sub_254521C60(v27, v62);
  v45 = v61;
  (*(v19 + 16))(v61, v38, v18);
  v46 = sub_25454A2C4();
  v47 = sub_25454BF94();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71 = v49;
    *v48 = 136315906;
    *(v48 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, &v71);
    *(v48 + 12) = 2080;
    *(v48 + 14) = sub_254502AAC(2036625250, 0xE400000000000000, &v71);
    *(v48 + 22) = 1024;
    v50 = v44 + *(v64 + 24);
    v51 = *v50;
    v52 = *(v50 + 8);
    v69 = v51;
    v70 = v52;
    sub_25454B7A4();
    v53 = v68;
    sub_254522280(v44);
    *(v48 + 24) = v53;
    *(v48 + 28) = 2080;
    v54 = sub_254549E24();
    v56 = v55;
    v57 = v65;
    (v65)(v45, v18);
    v58 = sub_254502AAC(v54, v56, &v71);

    *(v48 + 30) = v58;
    _os_log_impl(&dword_2544A5000, v46, v47, "<%s: %s> On Appear setting  includeLeft %{BOOL}d from Matter %s", v48, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v49, -1, -1);
    MEMORY[0x259C0FDF0](v48, -1, -1);

    (v57)(v63, v18);
  }

  else
  {
    sub_254522280(v44);

    v59 = v65;
    (v65)(v45, v18);
    (v59)(v38, v18);
  }
}

uint64_t sub_25451D060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v4[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  sub_25454BE14();
  v4[14] = sub_25454BE04();
  v8 = sub_25454BDB4();
  v4[15] = v8;
  v4[16] = v7;

  return MEMORY[0x2822009F8](sub_25451D134, v8, v7);
}

uint64_t sub_25451D134()
{
  v46 = v0;
  if (qword_27F5FACF0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = sub_25454A2E4();
  __swift_project_value_buffer(v4, qword_27F5FD440);
  sub_254521C60(v3, v1);
  sub_254521C60(v3, v2);
  v5 = sub_25454A2C4();
  v6 = sub_25454BF94();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  if (v7)
  {
    v10 = *(v0 + 88);
    v11 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v12 = v45;
    *v11 = 136315906;
    *(v11 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, &v45);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_254502AAC(2036625250, 0xE400000000000000, &v45);
    *(v11 + 22) = 2080;
    v13 = v9 + *(v10 + 28);
    v14 = *v13;
    v15 = *(v13 + 8);
    *(v0 + 48) = v14;
    *(v0 + 56) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD60, &qword_254551268);
    sub_25454B7A4();
    v16 = *(v0 + 146);
    v17 = 1702195828;
    if ((v16 & 1) == 0)
    {
      v17 = 0x65736C6166;
    }

    v18 = 0xE500000000000000;
    if (v16)
    {
      v18 = 0xE400000000000000;
    }

    if (v16 == 2)
    {
      v19 = 7104878;
    }

    else
    {
      v19 = v17;
    }

    if (v16 == 2)
    {
      v20 = 0xE300000000000000;
    }

    else
    {
      v20 = v18;
    }

    sub_254522280(v9);
    v21 = sub_254502AAC(v19, v20, &v45);

    *(v11 + 24) = v21;
    *(v11 + 32) = 1024;
    v22 = v8 + *(v10 + 24);
    v23 = *v22;
    v24 = *(v22 + 8);
    *(v0 + 64) = v23;
    *(v0 + 72) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
    sub_25454B7A4();
    LODWORD(v21) = *(v0 + 147);
    sub_254522280(v8);
    *(v11 + 34) = v21;
    _os_log_impl(&dword_2544A5000, v5, v6, "<%s: %s> Changing from prevIncludeLeft %s to includeLeft %{BOOL}d", v11, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v12, -1, -1);
    MEMORY[0x259C0FDF0](v11, -1, -1);
  }

  else
  {
    sub_254522280(*(v0 + 96));

    sub_254522280(v9);
  }

  v26 = *(v0 + 80);
  v25 = *(v0 + 88);
  v27 = (v26 + *(v25 + 28));
  v28 = *v27;
  v29 = *(v27 + 1);
  *(v0 + 16) = v28;
  *(v0 + 24) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD60, &qword_254551268);
  sub_25454B7A4();
  v30 = *(v0 + 144);
  v31 = (v26 + *(v25 + 24));
  v32 = *v31;
  v33 = *(v31 + 1);
  *(v0 + 32) = v32;
  *(v0 + 40) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  if (v30 == 2 || ((*(v0 + 145) ^ v30) & 1) != 0)
  {
    v43 = swift_task_alloc();
    *(v0 + 136) = v43;
    *v43 = v0;
    v43[1] = sub_25451D63C;
    v44 = *(v0 + 80);

    return sub_25451D75C();
  }

  else
  {
    v34 = *(v0 + 112);

    v35 = sub_25454A2C4();
    v36 = sub_25454BF94();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v45 = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, &v45);
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_254502AAC(2036625250, 0xE400000000000000, &v45);
      _os_log_impl(&dword_2544A5000, v35, v36, "<%s: %s> Not updating matter because the value for includeLeft did NOT change", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C0FDF0](v38, -1, -1);
      MEMORY[0x259C0FDF0](v37, -1, -1);
    }

    v40 = *(v0 + 96);
    v39 = *(v0 + 104);

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_25451D63C()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_254522858, v4, v3);
}

uint64_t sub_25451D75C()
{
  v1[16] = v0;
  v2 = sub_254549EA4();
  v1[17] = v2;
  v3 = *(v2 - 8);
  v1[18] = v3;
  v4 = *(v3 + 64) + 15;
  v1[19] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v6 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v1[21] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v8 = sub_254549E54();
  v1[24] = v8;
  v9 = *(v8 - 8);
  v1[25] = v9;
  v10 = *(v9 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  sub_25454BE14();
  v1[30] = sub_25454BE04();
  v12 = sub_25454BDB4();
  v1[31] = v12;
  v1[32] = v11;

  return MEMORY[0x2822009F8](sub_25451D944, v12, v11);
}

uint64_t sub_25451D944()
{
  v72 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 168);
  v3 = *(v0 + 128);
  sub_254549E34();
  v4 = (v3 + *(v2 + 32));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  if (*(v0 + 272) == 1)
  {
    v8 = *(v0 + 224);
    v7 = *(v0 + 232);
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v11 = *(v0 + 192);
    v12 = *(v0 + 200);
    sub_254549E14();
    v13 = MEMORY[0x277D166C0];
    sub_254521084(&qword_27F5FCD68, MEMORY[0x277D166C0]);
    sub_25454BD94();
    sub_254521084(&qword_27F5FCD70, v13);
    sub_25454C584();
    (*(v12 + 16))(v10, v9, v11);
    sub_254521084(&qword_27F5FCBB8, v13);
    sub_25454C0C4();
    (*(v12 + 8))(v9, v11);
    (*(v12 + 40))(v7, v8, v11);
  }

  v14 = *(v0 + 168);
  v15 = (*(v0 + 128) + *(v14 + 24));
  v16 = *v15;
  v17 = *(v15 + 1);
  *(v0 + 80) = v16;
  *(v0 + 88) = v17;
  sub_25454B7A4();
  if (*(v0 + 273) == 1)
  {
    v19 = *(v0 + 224);
    v18 = *(v0 + 232);
    v69 = v14;
    v21 = *(v0 + 208);
    v20 = *(v0 + 216);
    v22 = *(v0 + 192);
    v23 = *(v0 + 200);
    sub_254549E44();
    v24 = MEMORY[0x277D166C0];
    sub_254521084(&qword_27F5FCD68, MEMORY[0x277D166C0]);
    sub_25454BD94();
    sub_254521084(&qword_27F5FCD70, v24);
    sub_25454C584();
    (*(v23 + 16))(v21, v20, v22);
    sub_254521084(&qword_27F5FCBB8, v24);
    sub_25454C0C4();
    v25 = v20;
    v14 = v69;
    (*(v23 + 8))(v25, v22);
    (*(v23 + 40))(v18, v19, v22);
  }

  if (qword_27F5FACF0 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 176);
  v26 = *(v0 + 184);
  v28 = *(v0 + 128);
  v29 = sub_25454A2E4();
  __swift_project_value_buffer(v29, qword_27F5FD440);
  sub_254521C60(v28, v26);
  sub_254521C60(v28, v27);
  v30 = sub_25454A2C4();
  v31 = sub_25454BF94();
  if (os_log_type_enabled(v30, v31))
  {
    v68 = *(v0 + 232);
    v33 = *(v0 + 176);
    v32 = *(v0 + 184);
    v34 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v71 = v70;
    *v34 = 136316162;
    *(v34 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, &v71);
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_254502AAC(0xD000000000000016, 0x80000002545568B0, &v71);
    *(v34 + 22) = 1024;
    v35 = v32 + *(v14 + 24);
    v36 = *v35;
    v37 = *(v35 + 8);
    *(v0 + 96) = v36;
    *(v0 + 104) = v37;
    sub_25454B7A4();
    v38 = *(v0 + 274);
    sub_254522280(v32);
    *(v34 + 24) = v38;
    *(v34 + 28) = 1024;
    v39 = v33 + *(v2 + 32);
    v40 = *v39;
    v41 = *(v39 + 8);
    *(v0 + 112) = v40;
    *(v0 + 120) = v41;
    sub_25454B7A4();
    v42 = *(v0 + 275);
    sub_254522280(v33);
    *(v34 + 30) = v42;
    *(v34 + 34) = 2080;
    swift_beginAccess();
    v43 = sub_254549E24();
    v45 = sub_254502AAC(v43, v44, &v71);

    *(v34 + 36) = v45;
    _os_log_impl(&dword_2544A5000, v30, v31, "<%s: %s> left = %{BOOL}d | right = %{BOOL}d | newAngle = %s", v34, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v70, -1, -1);
    MEMORY[0x259C0FDF0](v34, -1, -1);
  }

  else
  {
    v46 = *(v0 + 184);
    sub_254522280(*(v0 + 176));
    sub_254522280(v46);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 136);
  v49 = *(v0 + 144);
  v50 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBB0, &qword_254550F40);
  sub_25454B7A4();
  v51 = (*(v49 + 48))(v47, 1, v48);
  v52 = *(v0 + 160);
  if (v51)
  {
    v53 = *(v0 + 240);

    sub_2544AE150(v52, &qword_27F5FC620, &qword_2545503B0);
    v54 = *(v0 + 224);
    v56 = *(v0 + 208);
    v55 = *(v0 + 216);
    v58 = *(v0 + 176);
    v57 = *(v0 + 184);
    v60 = *(v0 + 152);
    v59 = *(v0 + 160);
    (*(*(v0 + 200) + 8))(*(v0 + 232), *(v0 + 192));

    v61 = *(v0 + 8);

    return v61();
  }

  else
  {
    v63 = *(v0 + 232);
    (*(*(v0 + 144) + 16))(*(v0 + 152), *(v0 + 160), *(v0 + 136));
    sub_2544AE150(v52, &qword_27F5FC620, &qword_2545503B0);
    swift_beginAccess();
    v64 = *(MEMORY[0x277D166E0] + 4);
    v65 = swift_task_alloc();
    *(v0 + 264) = v65;
    *v65 = v0;
    v65[1] = sub_25451E0B4;
    v66 = *(v0 + 232);
    v67 = *(v0 + 152);

    return MEMORY[0x282170648](v66);
  }
}

uint64_t sub_25451E0B4()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 144);
  v5 = *(*v0 + 136);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 256);
  v7 = *(v1 + 248);

  return MEMORY[0x2822009F8](sub_25451E238, v7, v6);
}

uint64_t sub_25451E238()
{
  v1 = v0[30];

  v2 = v0[28];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[22];
  v5 = v0[23];
  v8 = v0[19];
  v7 = v0[20];
  (*(v0[25] + 8))(v0[29], v0[24]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_25451E318@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD78, &qword_254551278);
  v38 = *(v39 - 8);
  v1 = *(v38 + 64);
  v2 = MEMORY[0x28223BE20](v39);
  v36 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = v35 - v4;
  v6 = sub_25454B714();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v35[1] = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454B704();
  (*(v7 + 104))(v10, *MEMORY[0x277CE0FE0], v6);
  v35[0] = sub_25454B764();

  (*(v7 + 8))(v10, v6);
  sub_25454BA54();
  sub_25454A544();
  v45 = v71;
  v11 = v72;
  v46 = v73;
  v12 = v74;
  v48 = v75;
  v47 = v76;
  sub_25454B684();
  v44 = sub_25454B694();

  v52 = v11;
  v50 = v12;
  KeyPath = swift_getKeyPath();
  v40 = swift_allocObject();
  *(v40 + 16) = 1;
  v41 = v52;
  v42 = v50;
  v59 = sub_25454BCF4();
  v60 = v13;
  sub_2544AECF0();
  v14 = sub_25454B274();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = swift_getKeyPath();
  v59 = v14;
  v60 = v16;
  v61 = v18 & 1;
  v63 = v20;
  v64 = v21;
  LOBYTE(v65) = 1;
  _s7SwiftUI4FontV7HomeUI2E14softMonospaced4size6weightACSd_AC6WeightVtFZfA0__0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD80, &unk_254551280);
  sub_2545222DC();
  sub_25454B2D4();
  sub_2544C9C64(v14, v16, v18 & 1);

  v22 = v38;
  v23 = *(v38 + 16);
  v24 = v36;
  v25 = v39;
  v23(v36, v5, v39);
  v26 = v35[0];
  *&v53 = v35[0];
  *(&v53 + 1) = v45;
  LOBYTE(v54) = v41;
  *(&v54 + 1) = *v51;
  DWORD1(v54) = *&v51[3];
  *(&v54 + 1) = v46;
  LOBYTE(v55) = v42;
  *(&v55 + 1) = *v49;
  DWORD1(v55) = *&v49[3];
  *(&v55 + 1) = v48;
  *&v56 = v47;
  *(&v56 + 1) = v44;
  *&v57 = KeyPath;
  *(&v57 + 1) = sub_254522860;
  v58 = v40;
  v27 = v55;
  v28 = v56;
  v29 = v57;
  v30 = v37;
  *(v37 + 80) = v40;
  *(v30 + 3) = v28;
  *(v30 + 4) = v29;
  v31 = v53;
  *(v30 + 1) = v54;
  *(v30 + 2) = v27;
  *v30 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD90, &qword_254551290);
  v23(&v30[*(v32 + 48)], v24, v25);
  sub_2544AE240(&v53, &v59, &qword_27F5FCD98, &qword_254551298);
  v33 = *(v22 + 8);
  v33(v5, v25);
  v33(v24, v25);
  v59 = v26;
  v60 = v45;
  v61 = v41;
  *v62 = *v51;
  *&v62[3] = *&v51[3];
  v63 = v46;
  LOBYTE(v64) = v42;
  *(&v64 + 1) = *v49;
  HIDWORD(v64) = *&v49[3];
  v65 = v48;
  v66 = v47;
  v67 = v44;
  v68 = KeyPath;
  v69 = sub_254522860;
  v70 = v40;
  sub_2544AE150(&v59, &qword_27F5FCD98, &qword_254551298);
}

uint64_t sub_25451E9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a1;
  v76 = a2;
  v77 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v2 = *(v77 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v77);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD08, &qword_2545511B0);
  v4 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v6 = &v61 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD10, &qword_2545511B8);
  v66 = *(v67 - 8);
  v7 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v65 = &v61 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD18, &qword_2545511C0);
  v9 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v69 = &v61 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD20, &qword_2545511C8);
  v11 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v72 = &v61 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD28, &qword_2545511D0);
  v13 = *(*(v71 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v71);
  v75 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v70 = &v61 - v17;
  MEMORY[0x28223BE20](v16);
  v73 = &v61 - v18;
  sub_25454BE14();
  v74 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = v78;
  sub_254521C60(v78, &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v21 = swift_allocObject();
  v22 = sub_254521CC8(&v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  MEMORY[0x28223BE20](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD30, &qword_2545511D8);
  sub_254521D4C();
  sub_25454B7F4();
  sub_254521C60(v19, &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = swift_allocObject();
  sub_254521CC8(&v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v20);
  v24 = &v6[*(v63 + 36)];
  *v24 = sub_254521FC0;
  v24[1] = v23;
  v24[2] = 0;
  v24[3] = 0;
  v25 = (v19 + *(v77 + 32));
  v62 = *v25;
  v61 = *(v25 + 1);
  LOBYTE(v82) = v62;
  *(&v82 + 1) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  LOBYTE(v82) = v80;
  sub_254521C60(v19, &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = swift_allocObject();
  sub_254521CC8(&v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v20);
  sub_254521FFC();
  v27 = v65;
  sub_25454B574();

  sub_2544AE150(v6, &qword_27F5FCD08, &qword_2545511B0);
  sub_25454BA54();
  sub_25454A784();
  v28 = v69;
  (*(v66 + 32))(v69, v27, v67);
  v29 = (v28 + *(v64 + 36));
  v30 = v87;
  v29[4] = v86;
  v29[5] = v30;
  v29[6] = v88;
  v31 = v83;
  *v29 = v82;
  v29[1] = v31;
  v32 = v85;
  v29[2] = v84;
  v29[3] = v32;
  LOBYTE(v80) = v62;
  v81 = v61;
  sub_25454B7A4();
  if (v79 == 1)
  {
    v33 = sub_25454B684();
  }

  else
  {
    v34 = [objc_opt_self() systemGray2Color];
    v33 = sub_25454B5F4();
  }

  v35 = v33;
  KeyPath = swift_getKeyPath();
  v37 = v72;
  sub_2544B14E8(v28, v72, &qword_27F5FCD18, &qword_2545511C0);
  v38 = (v37 + *(v68 + 36));
  *v38 = KeyPath;
  v38[1] = v35;
  LOBYTE(KeyPath) = *(v78 + *(v77 + 20));
  v39 = swift_getKeyPath();
  v40 = swift_allocObject();
  *(v40 + 16) = (KeyPath & 1) == 0;
  v41 = v70;
  sub_2544B14E8(v37, v70, &qword_27F5FCD20, &qword_2545511C8);
  v42 = (v41 + *(v71 + 36));
  *v42 = v39;
  v42[1] = sub_254522174;
  v42[2] = v40;
  v43 = v73;
  sub_2544B14E8(v41, v73, &qword_27F5FCD28, &qword_2545511D0);
  v80 = sub_25454BCF4();
  v81 = v44;
  sub_2544AECF0();
  v45 = sub_25454B274();
  v47 = v46;
  v49 = v48;
  _s7SwiftUI4FontV7HomeUI2E14softMonospaced4size6weightACSd_AC6WeightVtFZfA0__0();
  v50 = sub_25454B194();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_2544C9C64(v45, v47, v49 & 1);

  v57 = v75;
  sub_2544AE240(v43, v75, &qword_27F5FCD28, &qword_2545511D0);
  v58 = v76;
  sub_2544AE240(v57, v76, &qword_27F5FCD28, &qword_2545511D0);
  v59 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD58, &unk_254551248) + 48);
  *v59 = v50;
  *(v59 + 8) = v52;
  *(v59 + 16) = v54 & 1;
  *(v59 + 24) = v56;
  sub_2544A8F00(v50, v52, v54 & 1);

  sub_2544AE150(v43, &qword_27F5FCD28, &qword_2545511D0);
  sub_2544C9C64(v50, v52, v54 & 1);

  sub_2544AE150(v57, &qword_27F5FCD28, &qword_2545511D0);
}

void sub_25451F2C0(uint64_t a1)
{
  v2 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v33 - v7;
  sub_25454BE14();
  v9 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a1 + *(v2 + 32);
  v12 = *(v10 + 8);
  v37 = *v10;
  v11 = v37;
  v38 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  v13 = a1 + *(v2 + 36);
  v14 = *v13;
  v15 = *(v13 + 8);
  v37 = v14;
  v38 = v15;
  v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD60, &qword_254551268);
  sub_25454B7B4();
  v37 = v11;
  v38 = v12;

  sub_25454B7A4();
  LOBYTE(v35[0]) = v11;
  v35[1] = v12;
  v34 = (v36 & 1) == 0;
  sub_25454B7B4();

  if (qword_27F5FACE8 != -1)
  {
    swift_once();
  }

  v16 = sub_25454A2E4();
  __swift_project_value_buffer(v16, qword_27F5FD428);
  sub_254521C60(a1, v8);
  sub_254521C60(a1, v6);
  v17 = sub_25454A2C4();
  v18 = sub_25454BF94();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35[0] = v20;
    *v19 = 136315906;
    *(v19 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, v35);
    v33[0] = v9;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_254502AAC(2036625250, 0xE400000000000000, v35);
    *(v19 + 22) = 1024;
    v21 = &v8[*(v2 + 32)];
    v22 = *v21;
    v23 = *(v21 + 1);
    v37 = v22;
    v38 = v23;
    sub_25454B7A4();
    v24 = v36;
    sub_254522280(v8);
    *(v19 + 24) = v24;
    *(v19 + 28) = 2080;
    v25 = &v6[*(v2 + 36)];
    v26 = *v25;
    v27 = *(v25 + 1);
    v37 = v26;
    v38 = v27;
    sub_25454B7A4();
    v28 = 1702195828;
    if ((v36 & 1) == 0)
    {
      v28 = 0x65736C6166;
    }

    v29 = 0xE500000000000000;
    if (v36)
    {
      v29 = 0xE400000000000000;
    }

    if (v36 == 2)
    {
      v30 = 7104878;
    }

    else
    {
      v30 = v28;
    }

    if (v36 == 2)
    {
      v31 = 0xE300000000000000;
    }

    else
    {
      v31 = v29;
    }

    sub_254522280(v6);
    v32 = sub_254502AAC(v30, v31, v35);

    *(v19 + 30) = v32;
    _os_log_impl(&dword_2544A5000, v17, v18, "<%s: %s> User tapped right button. includeRight = %{BOOL}d | prevIncludeRight %s", v19, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v20, -1, -1);
    MEMORY[0x259C0FDF0](v19, -1, -1);
  }

  else
  {
    sub_254522280(v8);

    sub_254522280(v6);
  }
}

uint64_t sub_25451F6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25454B714();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = (a1 + *(type metadata accessor for WalletKeyUWBApproachAngleView(0) + 32));
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v21) = v10;
  v22 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  sub_25454B704();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v12 = sub_25454B764();

  (*(v5 + 8))(v8, v4);
  sub_25454BA54();
  sub_25454A544();
  v13 = v21;
  v14 = v22;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  v18 = v26;

  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  return result;
}

void sub_25451F950(uint64_t a1)
{
  v66 = a1;
  v64 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v1 = *(*(v64 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v64);
  v65 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v62 = &v60 - v4;
  v5 = sub_254549EA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB98, &qword_254550EF8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v60 - v16;
  v18 = sub_254549E54();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v61 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v60 - v24;
  MEMORY[0x28223BE20](v23);
  v63 = &v60 - v26;
  sub_25454BE14();
  v67 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBB0, &qword_254550F40);
  v27 = v66;
  sub_25454B7A4();
  if ((*(v6 + 48))(v13, 1, v5))
  {
    sub_2544AE150(v13, &qword_27F5FC620, &qword_2545503B0);
    (*(v19 + 56))(v17, 1, 1, v18);
LABEL_6:
    sub_2544AE150(v17, &qword_27F5FCB98, &qword_254550EF8);
    if (qword_27F5FACF0 != -1)
    {
      swift_once();
    }

    v28 = sub_25454A2E4();
    __swift_project_value_buffer(v28, qword_27F5FD440);
    v29 = v65;
    sub_254521C60(v27, v65);
    v30 = sub_25454A2C4();
    v31 = sub_25454BF94();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v71 = v33;
      *v32 = 136315650;
      *(v32 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, &v71);
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_254502AAC(2036625250, 0xE400000000000000, &v71);
      *(v32 + 22) = 1024;
      v34 = &v29[*(v64 + 32)];
      v35 = *v34;
      v36 = *(v34 + 1);
      v69 = v35;
      v70 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
      sub_25454B7A4();
      v37 = v68;
      sub_254522280(v29);
      *(v32 + 24) = v37;
      _os_log_impl(&dword_2544A5000, v30, v31, "<%s: %s> Appearing without updating approach angle. includeRight = %{BOOL}d", v32, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x259C0FDF0](v33, -1, -1);
      MEMORY[0x259C0FDF0](v32, -1, -1);
    }

    else
    {
      sub_254522280(v29);
    }

    return;
  }

  (*(v6 + 16))(v9, v13, v5);
  sub_2544AE150(v13, &qword_27F5FC620, &qword_2545503B0);
  sub_254549E64();
  (*(v6 + 8))(v9, v5);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    goto LABEL_6;
  }

  v38 = v63;
  (*(v19 + 32))(v63, v17, v18);
  sub_254549E14();
  sub_254521084(&qword_27F5FCBB8, MEMORY[0x277D166C0]);
  v39 = sub_25454C0B4();
  v65 = *(v19 + 8);
  (v65)(v25, v18);
  v40 = v27 + *(v64 + 32);
  v41 = *v40;
  v42 = *(v40 + 8);
  v69 = v41;
  v70 = v42;
  LOBYTE(v71) = v39 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7B4();
  if (qword_27F5FACF0 != -1)
  {
    swift_once();
  }

  v43 = sub_25454A2E4();
  __swift_project_value_buffer(v43, qword_27F5FD440);
  v44 = v62;
  sub_254521C60(v27, v62);
  v45 = v61;
  (*(v19 + 16))(v61, v38, v18);
  v46 = sub_25454A2C4();
  v47 = sub_25454BF94();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71 = v49;
    *v48 = 136315906;
    *(v48 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, &v71);
    *(v48 + 12) = 2080;
    *(v48 + 14) = sub_254502AAC(2036625250, 0xE400000000000000, &v71);
    *(v48 + 22) = 1024;
    v50 = v44 + *(v64 + 32);
    v51 = *v50;
    v52 = *(v50 + 8);
    v69 = v51;
    v70 = v52;
    sub_25454B7A4();
    v53 = v68;
    sub_254522280(v44);
    *(v48 + 24) = v53;
    *(v48 + 28) = 2080;
    v54 = sub_254549E24();
    v56 = v55;
    v57 = v65;
    (v65)(v45, v18);
    v58 = sub_254502AAC(v54, v56, &v71);

    *(v48 + 30) = v58;
    _os_log_impl(&dword_2544A5000, v46, v47, "<%s: %s> On Appear setting  includeRight %{BOOL}d from Matter %s", v48, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v49, -1, -1);
    MEMORY[0x259C0FDF0](v48, -1, -1);

    (v57)(v63, v18);
  }

  else
  {
    sub_254522280(v44);

    v59 = v65;
    (v65)(v45, v18);
    (v59)(v38, v18);
  }
}

uint64_t sub_254520250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[2] = a3;
  v19 = a4;
  v18[1] = a2;
  v5 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v18 - v10;
  sub_25454BE14();
  sub_25454BE04();
  v12 = MEMORY[0x277D85700];
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = sub_25454BE44();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_254521C60(a1, v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_25454BE04();
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v12;
  sub_254521CC8(v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_2544B5138(0, 0, v11, v19, v16);
}

uint64_t sub_254520470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v4[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  sub_25454BE14();
  v4[14] = sub_25454BE04();
  v8 = sub_25454BDB4();
  v4[15] = v8;
  v4[16] = v7;

  return MEMORY[0x2822009F8](sub_254520544, v8, v7);
}

uint64_t sub_254520544()
{
  v46 = v0;
  if (qword_27F5FACF0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = sub_25454A2E4();
  __swift_project_value_buffer(v4, qword_27F5FD440);
  sub_254521C60(v3, v1);
  sub_254521C60(v3, v2);
  v5 = sub_25454A2C4();
  v6 = sub_25454BF94();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  if (v7)
  {
    v10 = *(v0 + 88);
    v11 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v12 = v45;
    *v11 = 136315906;
    *(v11 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, &v45);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_254502AAC(2036625250, 0xE400000000000000, &v45);
    *(v11 + 22) = 2080;
    v13 = v9 + *(v10 + 36);
    v14 = *v13;
    v15 = *(v13 + 8);
    *(v0 + 48) = v14;
    *(v0 + 56) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD60, &qword_254551268);
    sub_25454B7A4();
    v16 = *(v0 + 146);
    v17 = 1702195828;
    if ((v16 & 1) == 0)
    {
      v17 = 0x65736C6166;
    }

    v18 = 0xE500000000000000;
    if (v16)
    {
      v18 = 0xE400000000000000;
    }

    if (v16 == 2)
    {
      v19 = 7104878;
    }

    else
    {
      v19 = v17;
    }

    if (v16 == 2)
    {
      v20 = 0xE300000000000000;
    }

    else
    {
      v20 = v18;
    }

    sub_254522280(v9);
    v21 = sub_254502AAC(v19, v20, &v45);

    *(v11 + 24) = v21;
    *(v11 + 32) = 1024;
    v22 = v8 + *(v10 + 32);
    v23 = *v22;
    v24 = *(v22 + 8);
    *(v0 + 64) = v23;
    *(v0 + 72) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
    sub_25454B7A4();
    LODWORD(v21) = *(v0 + 147);
    sub_254522280(v8);
    *(v11 + 34) = v21;
    _os_log_impl(&dword_2544A5000, v5, v6, "<%s: %s> Changing from prevIncludeRight %s to includeRight %{BOOL}d", v11, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v12, -1, -1);
    MEMORY[0x259C0FDF0](v11, -1, -1);
  }

  else
  {
    sub_254522280(*(v0 + 96));

    sub_254522280(v9);
  }

  v26 = *(v0 + 80);
  v25 = *(v0 + 88);
  v27 = (v26 + *(v25 + 36));
  v28 = *v27;
  v29 = *(v27 + 1);
  *(v0 + 16) = v28;
  *(v0 + 24) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD60, &qword_254551268);
  sub_25454B7A4();
  v30 = *(v0 + 144);
  v31 = (v26 + *(v25 + 32));
  v32 = *v31;
  v33 = *(v31 + 1);
  *(v0 + 32) = v32;
  *(v0 + 40) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  if (v30 == 2 || ((*(v0 + 145) ^ v30) & 1) != 0)
  {
    v43 = swift_task_alloc();
    *(v0 + 136) = v43;
    *v43 = v0;
    v43[1] = sub_254520A4C;
    v44 = *(v0 + 80);

    return sub_25451D75C();
  }

  else
  {
    v34 = *(v0 + 112);

    v35 = sub_25454A2C4();
    v36 = sub_25454BF94();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v45 = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, &v45);
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_254502AAC(2036625250, 0xE400000000000000, &v45);
      _os_log_impl(&dword_2544A5000, v35, v36, "<%s: %s> Not updating matter because the value for includeRight did NOT change.", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C0FDF0](v38, -1, -1);
      MEMORY[0x259C0FDF0](v37, -1, -1);
    }

    v40 = *(v0 + 96);
    v39 = *(v0 + 104);

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_254520A4C()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_254520B6C, v4, v3);
}

uint64_t sub_254520B6C()
{
  v1 = v0[14];

  v3 = v0[12];
  v2 = v0[13];

  v4 = v0[1];

  return v4();
}

Swift::String __swiftcall WalletKeyUWBApproachAngleView._getFooterString(left:right:)(Swift::Bool left, Swift::Bool right)
{
  v2 = 0xD00000000000002DLL;
  v3 = "oachAngle_Footer_LeftAndFront";
  if (right)
  {
    v2 = 0xD000000000000024;
  }

  else
  {
    v3 = "oachAngle_Footer_RightAndFront";
  }

  v4 = 0xD00000000000002ELL;
  if (right)
  {
    v5 = "oachAngle_Footer_Front";
  }

  else
  {
    v4 = 0xD000000000000026;
    v5 = "tKeyUWBApproachAngleSection()";
  }

  v6 = !left;
  if (left)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = v3;
  }

  v9 = (v8 | 0x8000000000000000);
  result._object = v9;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t WalletKeyUWBApproachAngleView._getImageName(left:right:colorScheme:)(char a1, char a2)
{
  v4 = sub_25454A454();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277CDF3C0], v4);
  v9 = sub_25454A444();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v10 = 0x6B7261642DLL;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  if (a1)
  {
    if (a2)
    {
      v12 = "WalletKeyUWB-ApproachAngle-Both";
    }

    else
    {
      v12 = "WalletKeyUWB-ApproachAngle-Left";
    }

    v13 = (v12 - 32) | 0x8000000000000000;
    v16[0] = 0xD00000000000001FLL;
  }

  else
  {
    if (a2)
    {
      v13 = 0x8000000254556780;
      v14 = 0xD000000000000020;
    }

    else
    {
      v13 = 0x8000000254556750;
      v14 = 0xD000000000000026;
    }

    v16[0] = v14;
  }

  v16[1] = v13;
  MEMORY[0x259C0EE40](v10, v11);

  return v16[0];
}

uint64_t sub_254520E04@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBC0, &qword_254550F48);
  sub_2545210D4();
  sub_25454A724();
  KeyPath = swift_getKeyPath();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBE0, &qword_254550F88) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBE8, &qword_254550F90) + 28);
  v5 = *MEMORY[0x277CDFA88];
  v6 = sub_25454A6E4();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = KeyPath;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBF0, &qword_254550F98);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_254520F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_254521084(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2545210D4()
{
  result = qword_27F5FCBC8;
  if (!qword_27F5FCBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCBC0, &qword_254550F48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCBD0, &qword_254550F50);
    sub_2544AE1F0(&qword_27F5FCBD8, &qword_27F5FCBD0, &qword_254550F50);
    sub_2544AECF0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCBC8);
  }

  return result;
}

uint64_t sub_254521294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_254521320(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_2545213BC()
{
  sub_254521858(319, &qword_27F5FBD68, MEMORY[0x277D15E00], MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_254521490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBB0, &qword_254550F40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCC08, &unk_254551080);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2545215F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBB0, &qword_254550F40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCC08, &unk_254551080);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_254521730()
{
  sub_2544AD83C(319, &qword_27F5FCC20, &qword_27F5FC620, &qword_2545503B0);
  if (v0 <= 0x3F)
  {
    sub_2544AD890();
    if (v1 <= 0x3F)
    {
      sub_2544AD83C(319, &qword_27F5FCC28, &qword_27F5FCBA0, &qword_254550F00);
      if (v2 <= 0x3F)
      {
        sub_254521858(319, &qword_27F5FCC30, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_254521858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2545218C0()
{
  result = qword_27F5FCC38;
  if (!qword_27F5FCC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCC40, &qword_2545510B0);
    sub_254519A54();
    sub_254505794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCC38);
  }

  return result;
}

unint64_t sub_25452195C()
{
  result = qword_27F5FCC48;
  if (!qword_27F5FCC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCBF0, &qword_254550F98);
    sub_254521A14();
    sub_2544AE1F0(&qword_27F5FB320, &qword_27F5FB328, &qword_2545510C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCC48);
  }

  return result;
}

unint64_t sub_254521A14()
{
  result = qword_27F5FCC50;
  if (!qword_27F5FCC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCBE0, &qword_254550F88);
    sub_2544AE1F0(&qword_27F5FCC58, &qword_27F5FCC60, &qword_2545510B8);
    sub_2544AE1F0(&qword_27F5FCC68, &qword_27F5FCBE8, &qword_254550F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCC50);
  }

  return result;
}

unint64_t sub_254521B00()
{
  result = qword_27F5FCC80;
  if (!qword_27F5FCC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCC78, &qword_2545510D0);
    sub_2544AE1F0(&qword_27F5FCC88, &qword_27F5FCC90, &qword_2545510D8);
    sub_2544AE1F0(&qword_27F5FCC98, &qword_27F5FCCA0, &qword_2545510E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCC80);
  }

  return result;
}

uint64_t sub_254521BE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25454AA24();
  *a1 = result & 1;
  return result;
}

uint64_t sub_254521C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254521CC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_254521D4C()
{
  result = qword_27F5FCD38;
  if (!qword_27F5FCD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCD30, &qword_2545511D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCD38);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_254549EA4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBB0, &qword_254550F40) + 28));

  v9 = *(v5 + v1[6] + 8);

  v10 = *(v5 + v1[7] + 8);

  v11 = *(v5 + v1[8] + 8);

  v12 = *(v5 + v1[9] + 8);

  v13 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBA8, &qword_254550F38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_25454A454();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_254521FFC()
{
  result = qword_27F5FCD40;
  if (!qword_27F5FCD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCD08, &qword_2545511B0);
    sub_2544AE1F0(&qword_27F5FCD48, &qword_27F5FCD50, &qword_2545511E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCD40);
  }

  return result;
}

uint64_t sub_2545220B4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x259C0D910]();
  *a1 = result;
  return result;
}

uint64_t sub_2545220E0(uint64_t *a1)
{
  v1 = *a1;

  return sub_25454A824();
}

uint64_t sub_25452210C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25454AA24();
  *a1 = result & 1;
  return result;
}

uint64_t sub_254522190(uint64_t a1)
{
  v4 = *(type metadata accessor for WalletKeyUWBApproachAngleView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2544AE3EC;

  return sub_254520470(a1, v6, v7, v1 + v5);
}

uint64_t sub_254522280(uint64_t a1)
{
  v2 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2545222DC()
{
  result = qword_27F5FCD88;
  if (!qword_27F5FCD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCD80, &unk_254551280);
    sub_2544AE1F0(&qword_27F5FC148, &qword_27F5FC150, &qword_25454FD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCD88);
  }

  return result;
}

uint64_t sub_2545223CC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WalletKeyUWBApproachAngleView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroy_48Tm()
{
  v1 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = sub_254549EA4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBB0, &qword_254550F40) + 28));

  v10 = *(v6 + v1[6] + 8);

  v11 = *(v6 + v1[7] + 8);

  v12 = *(v6 + v1[8] + 8);

  v13 = *(v6 + v1[9] + 8);

  v14 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBA8, &qword_254550F38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_25454A454();
    (*(*(v15 - 8) + 8))(v6 + v14, v15);
  }

  else
  {
    v16 = *(v6 + v14);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2545226D8(uint64_t a1)
{
  v4 = *(type metadata accessor for WalletKeyUWBApproachAngleView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2544AE660;

  return sub_25451D060(a1, v6, v7, v1 + v5);
}

uint64_t sub_2545227C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB70, &unk_254550EE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t HomeDataError.icon.getter()
{
  v1 = 0x74696B656D6F68;
  v2 = *v0;
  if (v2 - 6 >= 5)
  {
    v3 = 0xD000000000000020;
  }

  else
  {
    v3 = 0x74696B656D6F68;
  }

  v4 = 0x69662E6B636F6C63;
  if (v2 != 2)
  {
    v4 = 0xD000000000000012;
  }

  if (v2 >= 2)
  {
    v1 = v4;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t HomeDataError.secondaryDescription.getter()
{
  result = 0;
  if (((1 << *v0) & 0x7F3) == 0)
  {
    return sub_25454BCF4();
  }

  return result;
}

_BYTE *HomeDataErrorView.init(error:foregroundStyle:descriptionStyle:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t sub_254522B0C@<X0>(void *a1@<X8>)
{
  v78 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE30, &qword_254551518);
  v73 = *(v2 - 8);
  v3 = *(v73 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v60 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE38, &qword_254551520);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v64 = (&v60 - v11);
  MEMORY[0x28223BE20](v10);
  v65 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE40, &qword_254551528);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v76 = &v60 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB370, &qword_254551530);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v60 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE48, &qword_254551538);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v81 = &v60 - v28;
  v29 = *v1;
  v63 = *(v1 + 1);
  v30 = v1[16];
  if (v30 == 1)
  {
    v31 = 0x4022000000000000;
  }

  else
  {
    v31 = 0;
  }

  sub_25454BA54();
  v79 = v31;
  LODWORD(v80) = v30 != 1;
  sub_25454A544();
  v87 = 1;
  v86 = v89;
  v85 = v91;
  v77 = v17;
  v75 = v2;
  v74 = v27;
  v72 = v89;
  v71 = v91;
  v70 = v88;
  v69 = v90;
  v68 = v92;
  v67 = v93;
  v32 = sub_25454B704();
  v33 = sub_25454AE34();
  sub_25454B084();
  v34 = sub_25454B044();
  (*(*(v34 - 8) + 56))(v22, 1, 1, v34);
  v35 = sub_25454B0A4();
  sub_2544AE150(v22, &qword_27F5FB370, &qword_254551530);
  KeyPath = swift_getKeyPath();
  v100 = v32;
  v101 = v33;
  v102 = KeyPath;
  v103 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE50, &qword_254551570);
  sub_254525210();
  sub_25454B4C4();

  if (v30)
  {
    sub_25454BA54();
    sub_25454A544();
    v62 = v94;
    v37 = v96;
    v38 = v98;
    v61 = v99;
    LOBYTE(v100) = 1;
    v84 = v95;
    v83 = v97;
    if (v30 == 1)
    {
      v39 = sub_25454AC24();
    }

    else
    {
      v39 = sub_25454AC14();
    }

    v41 = v64;
    *v64 = v39;
    *(v41 + 8) = 0;
    *(v41 + 16) = 1;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE80, &qword_254551590);
    sub_254523460(v29, v30, v41 + *(v42 + 44));
    v43 = v65;
    sub_2544B14E8(v41, v65, &qword_27F5FCE38, &qword_254551520);
    LOBYTE(v41) = v100;
    v44 = v84;
    v45 = v83;
    v46 = v66;
    sub_2544AE240(v43, v66, &qword_27F5FCE38, &qword_254551520);
    *v5 = 0;
    v5[8] = v41;
    *(v5 + 2) = v62;
    v5[24] = v44;
    *(v5 + 4) = v37;
    v5[40] = v45;
    v47 = v61;
    *(v5 + 6) = v38;
    *(v5 + 7) = v47;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE88, &qword_254551598);
    sub_2544AE240(v46, &v5[*(v48 + 48)], &qword_27F5FCE38, &qword_254551520);
    sub_2544AE150(v43, &qword_27F5FCE38, &qword_254551520);
    sub_2544AE150(v46, &qword_27F5FCE38, &qword_254551520);
    v40 = v76;
    sub_2544B14E8(v5, v76, &qword_27F5FCE30, &qword_254551518);
    (*(v73 + 56))(v40, 0, 1, v75);
  }

  else
  {
    v40 = v76;
    (*(v73 + 56))(v76, 1, 1, v75);
  }

  sub_25454BA54();
  sub_25454A544();
  v80 = v100;
  v49 = v101;
  v79 = v102;
  v50 = v103;
  v76 = v104;
  v75 = v105;
  v84 = 1;
  v83 = v101;
  v82 = v103;
  v51 = v81;
  v52 = v74;
  sub_2544AE240(v81, v74, &qword_27F5FCE48, &qword_254551538);
  v53 = v77;
  sub_2544AE240(v40, v77, &qword_27F5FCE40, &qword_254551528);
  v54 = v78;
  *v78 = 0;
  *(v54 + 8) = 1;
  v54[2] = v70;
  *(v54 + 24) = v72;
  v54[4] = v69;
  *(v54 + 40) = v71;
  v55 = v67;
  v54[6] = v68;
  v54[7] = v55;
  v54[8] = 0xBFF0000000000000;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE90, &qword_2545515A0);
  sub_2544AE240(v52, v54 + v56[12], &qword_27F5FCE48, &qword_254551538);
  sub_2544AE240(v53, v54 + v56[16], &qword_27F5FCE40, &qword_254551528);
  v57 = v54 + v56[20];
  *v57 = 0;
  v57[8] = 1;
  *(v57 + 2) = v80;
  v57[24] = v49;
  *(v57 + 4) = v79;
  v57[40] = v50;
  v58 = v75;
  *(v57 + 6) = v76;
  *(v57 + 7) = v58;
  *(v57 + 8) = 0xBFF0000000000000;
  sub_2544AE150(v40, &qword_27F5FCE40, &qword_254551528);
  sub_2544AE150(v51, &qword_27F5FCE48, &qword_254551538);
  sub_2544AE150(v53, &qword_27F5FCE40, &qword_254551528);
  return sub_2544AE150(v52, &qword_27F5FCE48, &qword_254551538);
}

uint64_t sub_254523460@<X0>(int a1@<W0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v146 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE98, &qword_2545515A8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v145 = v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v142 = v124 - v9;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEA0, &unk_2545515B0);
  v10 = *(*(v160 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v160);
  v159 = v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v156 = v124 - v13;
  v14 = sub_25454A6D4();
  v164 = *(v14 - 8);
  v15 = *(v164 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v162 = v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v161 = v124 - v18;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEA8, &qword_254554640);
  v19 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v153 = v124 - v20;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEB0, &qword_2545515C0);
  v163 = *(v158 - 8);
  v21 = *(v163 + 64);
  v22 = MEMORY[0x28223BE20](v158);
  v135 = v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v152 = v124 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEB8, &qword_2545515C8);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v134 = v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v151 = v124 - v29;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEC0, &qword_2545515D0);
  v141 = *(v157 - 8);
  v30 = *(v141 + 64);
  v31 = MEMORY[0x28223BE20](v157);
  v133 = v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v132 = v124 - v34;
  MEMORY[0x28223BE20](v33);
  v150 = v124 - v35;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEC8, &qword_2545515D8);
  v36 = *(*(v149 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v149);
  v144 = v124 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v148 = v124 - v40;
  MEMORY[0x28223BE20](v39);
  v155 = v124 - v41;
  sub_25454BE14();
  v143 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  LOBYTE(v174[0]) = a1;
  HomeDataError.description.getter();
  LODWORD(v174[0]) = sub_25454AE34();
  v42 = sub_25454B1E4();
  v44 = v43;
  v46 = v45;
  v48 = v47;

  v136 = a2;
  v49 = a2;
  KeyPath = swift_getKeyPath();
  sub_25454B134();
  sub_25454B084();
  v51 = sub_25454B0D4();
  v147 = a1;
  v52 = v51;

  v53 = swift_getKeyPath();
  v175 = v46 & 1;
  *&v170 = v42;
  *(&v170 + 1) = v44;
  LOBYTE(v171) = v46 & 1;
  *(&v171 + 1) = v48;
  *&v172 = KeyPath;
  v138 = a2 != 1;
  BYTE8(v172) = a2 != 1;
  *&v173 = v53;
  *(&v173 + 1) = v52;
  v54 = *MEMORY[0x277CDF9F8];
  v55 = v164;
  v56 = v164 + 104;
  v57 = *(v164 + 104);
  v58 = v161;
  v57(v161, *MEMORY[0x277CDF9F8], v14);
  v59 = *MEMORY[0x277CDF988];
  v60 = v162;
  v57(v162, *MEMORY[0x277CDF988], v14);
  v137 = sub_254525428();
  result = sub_25454BC34();
  if (result)
  {
    v128 = v59;
    v129 = v54;
    v130 = v57;
    v131 = v56;
    v140 = v49 != 1;
    v139 = v49 == 1;
    v62 = *(v55 + 32);
    v63 = v156;
    v62(v156, v58, v14);
    v64 = v160;
    v62((v63 + *(v160 + 48)), v60, v14);
    v65 = v159;
    sub_2544AE240(v63, v159, &qword_27F5FCEA0, &unk_2545515B0);
    v66 = *(v64 + 48);
    v67 = v153;
    v62(v153, v65, v14);
    v68 = *(v55 + 8);
    v68(v65 + v66, v14);
    sub_254525480(v63, v65);
    v69 = *(v64 + 48);
    v70 = v154;
    v71 = v67 + *(v154 + 36);
    v126 = v62;
    v124[2] = v55 + 32;
    v62(v71, (v65 + v69), v14);
    v127 = v14;
    v164 = v55 + 8;
    v125 = v68;
    v68(v65, v14);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCED8, &qword_254551610);
    v73 = sub_2545254F0();
    v74 = sub_2544AE1F0(&qword_27F5FCEE8, &qword_27F5FCEA8, &qword_254554640);
    v75 = v152;
    sub_25454B384();
    sub_2544AE150(v67, &qword_27F5FCEA8, &qword_254554640);
    v174[0] = v170;
    v174[1] = v171;
    v174[2] = v172;
    v174[3] = v173;
    sub_2544AE150(v174, &qword_27F5FCED8, &qword_254551610);
    v124[1] = v72;
    *&v170 = v72;
    *(&v170 + 1) = v70;
    *&v171 = v73;
    *(&v171 + 1) = v74;
    v124[0] = v74;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v77 = v151;
    v78 = v158;
    sub_25454B4C4();
    v79 = v163 + 8;
    v152 = *(v163 + 8);
    (v152)(v75, v78);
    v80 = 2 * v139;
    v81 = swift_getKeyPath();
    v82 = v77;
    v83 = v150;
    sub_2544B14E8(v82, v150, &qword_27F5FCEB8, &qword_2545515C8);
    v84 = v157;
    v85 = v83 + *(v157 + 36);
    *v85 = v81;
    *(v85 + 8) = v80;
    *(v85 + 16) = v140;
    v86 = v148;
    sub_2544B14E8(v83, v148, &qword_27F5FCEC0, &qword_2545515D0);
    *(v86 + *(v149 + 36)) = 0x3FF0000000000000;
    v87 = v155;
    sub_2544B14E8(v86, v155, &qword_27F5FCEC8, &qword_2545515D8);
    if (((1 << v147) & 0x7F3) != 0)
    {
      v88 = v142;
      (*(v141 + 56))(v142, 1, 1, v84);
LABEL_6:
      v89 = v144;
      sub_2544AE240(v87, v144, &qword_27F5FCEC8, &qword_2545515D8);
      v90 = v145;
      sub_2544AE240(v88, v145, &qword_27F5FCE98, &qword_2545515A8);
      v91 = v146;
      sub_2544AE240(v89, v146, &qword_27F5FCEC8, &qword_2545515D8);
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEF0, &qword_254551648);
      sub_2544AE240(v90, v91 + *(v92 + 48), &qword_27F5FCE98, &qword_2545515A8);
      sub_2544AE150(v88, &qword_27F5FCE98, &qword_2545515A8);
      sub_2544AE150(v87, &qword_27F5FCEC8, &qword_2545515D8);
      sub_2544AE150(v90, &qword_27F5FCE98, &qword_2545515A8);
      sub_2544AE150(v89, &qword_27F5FCEC8, &qword_2545515D8);
    }

    v151 = v73;
    v163 = v79;
    v150 = OpaqueTypeConformance2;
    sub_25454BCF4();
    LODWORD(v170) = sub_25454AE44();
    v93 = sub_25454B1E4();
    v95 = v94;
    v97 = v96;
    v99 = v98;

    v100 = swift_getKeyPath();
    v101 = sub_25454B104();
    v102 = swift_getKeyPath();
    v169 = v97 & 1;
    *&v165 = v93;
    *(&v165 + 1) = v95;
    LOBYTE(v166) = v97 & 1;
    *(&v166 + 1) = v99;
    *&v167 = v100;
    BYTE8(v167) = v138;
    *&v168 = v102;
    *(&v168 + 1) = v101;
    v103 = v161;
    v104 = v127;
    v105 = v130;
    v130(v161, v129, v127);
    v106 = v162;
    v105(v162, v128, v104);
    result = sub_25454BC34();
    if (result)
    {
      LODWORD(v149) = v136 != 1;
      v148 = v136 == 1;
      v107 = v156;
      v108 = v126;
      v126(v156, v103, v104);
      v109 = v160;
      v108(v107 + *(v160 + 48), v106, v104);
      v110 = v159;
      sub_2544AE240(v107, v159, &qword_27F5FCEA0, &unk_2545515B0);
      v111 = *(v109 + 48);
      v112 = v153;
      v108(v153, v110, v104);
      v113 = v125;
      v125(v110 + v111, v104);
      sub_254525480(v107, v110);
      v108(v112 + *(v154 + 36), (v110 + *(v109 + 48)), v104);
      v113(v110, v104);
      v114 = v135;
      sub_25454B384();
      sub_2544AE150(v112, &qword_27F5FCEA8, &qword_254554640);
      v170 = v165;
      v171 = v166;
      v172 = v167;
      v173 = v168;
      sub_2544AE150(&v170, &qword_27F5FCED8, &qword_254551610);
      v115 = v134;
      v116 = v158;
      sub_25454B4C4();
      (v152)(v114, v116);
      v117 = swift_getKeyPath();
      v118 = v115;
      v119 = v133;
      sub_2544B14E8(v118, v133, &qword_27F5FCEB8, &qword_2545515C8);
      v120 = v157;
      v121 = v119 + *(v157 + 36);
      v122 = v148;
      *v121 = v117;
      *(v121 + 8) = v122;
      *(v121 + 16) = v149;
      v123 = v132;
      sub_2544B14E8(v119, v132, &qword_27F5FCEC0, &qword_2545515D0);
      v88 = v142;
      sub_2544B14E8(v123, v142, &qword_27F5FCEC0, &qword_2545515D0);
      (*(v141 + 56))(v88, 0, 1, v120);
      v87 = v155;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t HomeDataErrorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1);
  sub_254524534(*v1, v3, v1[16], a1);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCDA8, &qword_2545512B0) + 36)) = 0;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCDB0, &qword_2545512B8) + 36)) = v3;
}

uint64_t sub_254524534@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v27 = a1;
  v31 = a4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE10, &qword_2545514F8);
  v5 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v7 = &v26[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE18, &qword_254551500);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26[-v10];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE00, &qword_2545514F0);
  v12 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v14 = &v26[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCDF0, &qword_2545514E8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26[-v17];
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = sub_25454AB14();
  if (a3 == 1)
  {
    *v14 = v19;
    *(v14 + 1) = 0;
    v14[16] = 1;
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE28, &qword_254551510) + 44);
    v32 = v27;
    v33 = v28;
    v34 = 1;
    sub_254522B0C(&v14[v20]);

    sub_2544AE240(v14, v11, &qword_27F5FCE00, &qword_2545514F0);
    swift_storeEnumTagMultiPayload();
    sub_2544AE1F0(&qword_27F5FCDF8, &qword_27F5FCE00, &qword_2545514F0);
    sub_2544AE1F0(&qword_27F5FCE08, &qword_27F5FCE10, &qword_2545514F8);
    sub_25454AD44();
    v21 = v14;
    v22 = &qword_27F5FCE00;
    v23 = &qword_2545514F0;
  }

  else
  {
    *v7 = v19;
    *(v7 + 1) = 0;
    v7[16] = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE20, &qword_254551508);
    sub_254524A58(v27, v28, a3, &v7[*(v24 + 44)]);
    sub_2544AE240(v7, v11, &qword_27F5FCE10, &qword_2545514F8);
    swift_storeEnumTagMultiPayload();
    sub_2544AE1F0(&qword_27F5FCDF8, &qword_27F5FCE00, &qword_2545514F0);
    sub_2544AE1F0(&qword_27F5FCE08, &qword_27F5FCE10, &qword_2545514F8);
    sub_25454AD44();
    v21 = v7;
    v22 = &qword_27F5FCE10;
    v23 = &qword_2545514F8;
  }

  sub_2544AE150(v21, v22, v23);
  sub_2544B14E8(v18, v31, &qword_27F5FCDF0, &qword_2545514E8);
}

unint64_t sub_254524990()
{
  result = qword_27F5FCDB8;
  if (!qword_27F5FCDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCDB8);
  }

  return result;
}

unint64_t sub_2545249E8()
{
  result = qword_27F5FCDC0;
  if (!qword_27F5FCDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCDC0);
  }

  return result;
}

uint64_t sub_254524A58@<X0>(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v19 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEF8, &qword_254551650);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v18[-v12];
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v13 = sub_25454AC14();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF00, &qword_254551658) + 44);
  v20 = a1;
  v21 = a2;
  v22 = v19;
  sub_254522B0C(&v13[v14]);

  sub_2544AE240(v13, v11, &qword_27F5FCEF8, &qword_254551650);
  *a4 = 0;
  *(a4 + 8) = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF08, &unk_254551660);
  sub_2544AE240(v11, a4 + *(v15 + 48), &qword_27F5FCEF8, &qword_254551650);
  v16 = a4 + *(v15 + 64);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_2544AE150(v13, &qword_27F5FCEF8, &qword_254551650);
  sub_2544AE150(v11, &qword_27F5FCEF8, &qword_254551650);
}

uint64_t sub_254524CA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1);
  sub_254524534(*v1, v3, v1[16], a1);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCDA8, &qword_2545512B0) + 36)) = 0;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCDB0, &qword_2545512B8) + 36)) = v3;
}

uint64_t getEnumTagSinglePayload for HomeDataError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeDataError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeDataErrorView.DescriptionStyle(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_254524F34()
{
  result = qword_27F5FCDC8;
  if (!qword_27F5FCDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCDB0, &qword_2545512B8);
    sub_254524FEC();
    sub_2544AE1F0(&qword_27F5FB790, &qword_27F5FB798, &qword_25454EB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCDC8);
  }

  return result;
}

unint64_t sub_254524FEC()
{
  result = qword_27F5FCDD0;
  if (!qword_27F5FCDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCDA8, &qword_2545512B0);
    sub_2545250A4();
    sub_2544AE1F0(&qword_27F5FB320, &qword_27F5FB328, &qword_2545510C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCDD0);
  }

  return result;
}

unint64_t sub_2545250A4()
{
  result = qword_27F5FCDD8;
  if (!qword_27F5FCDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCDE0, &qword_2545514E0);
    sub_254525128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCDD8);
  }

  return result;
}

unint64_t sub_254525128()
{
  result = qword_27F5FCDE8;
  if (!qword_27F5FCDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCDF0, &qword_2545514E8);
    sub_2544AE1F0(&qword_27F5FCDF8, &qword_27F5FCE00, &qword_2545514F0);
    sub_2544AE1F0(&qword_27F5FCE08, &qword_27F5FCE10, &qword_2545514F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCDE8);
  }

  return result;
}

unint64_t sub_254525210()
{
  result = qword_27F5FCE58;
  if (!qword_27F5FCE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCE50, &qword_254551570);
    sub_2545252C8();
    sub_2544AE1F0(&qword_27F5FB388, &qword_27F5FB390, &qword_25454FBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCE58);
  }

  return result;
}

unint64_t sub_2545252C8()
{
  result = qword_27F5FCE60;
  if (!qword_27F5FCE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCE68, &qword_254551578);
    sub_2544AE1F0(&qword_27F5FCE70, &qword_27F5FCE78, &unk_254551580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCE60);
  }

  return result;
}

uint64_t sub_254525380@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25454A954();
  *a1 = result;
  return result;
}

uint64_t sub_2545253AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25454A954();
  *a1 = result;
  return result;
}

unint64_t sub_254525428()
{
  result = qword_27F5FCED0;
  if (!qword_27F5FCED0)
  {
    sub_25454A6D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCED0);
  }

  return result;
}

uint64_t sub_254525480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEA0, &unk_2545515B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2545254F0()
{
  result = qword_27F5FCEE0;
  if (!qword_27F5FCEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCED8, &qword_254551610);
    sub_2545222DC();
    sub_2544AE1F0(&qword_27F5FB388, &qword_27F5FB390, &qword_25454FBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCEE0);
  }

  return result;
}

Swift::String __swiftcall TextIcon.Unit.formatted()()
{
  v1 = sub_2545491D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2545493C4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF10, &qword_254551670);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - v13;
  v16 = (v15 + 8);
  v21[1] = *v0;
  sub_2545493A4();
  sub_254525884();
  sub_254549164();
  sub_2545491C4();
  MEMORY[0x259C0C270](v5, v8);
  (*(v2 + 8))(v5, v1);
  v17 = *v16;
  (*v16)(v12, v8);
  sub_2545258D8();
  sub_25454BBB4();
  v17(v14, v8);
  v18 = v21[2];
  v19 = v21[3];
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

unint64_t sub_254525884()
{
  result = qword_27F5FCF18;
  if (!qword_27F5FCF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCF18);
  }

  return result;
}

unint64_t sub_2545258D8()
{
  result = qword_27F5FCF20;
  if (!qword_27F5FCF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCF10, &qword_254551670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCF20);
  }

  return result;
}

uint64_t TextIcon.Unit.description.getter()
{
  v1 = *v0;
  if (v0[1])
  {
    v5 = 0x65686E6572686166;
  }

  else
  {
    v5 = 0x28737569736C6563;
  }

  v4 = *v0;
  countAndFlagsBits = TextIcon.Unit.formatted()()._countAndFlagsBits;
  MEMORY[0x259C0EE40](countAndFlagsBits);

  MEMORY[0x259C0EE40](41, 0xE100000000000000);
  return v5;
}

uint64_t static TextIcon.Unit.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      v5 = *a1;
      v6 = *a2;
      if (v2 == v3)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    v8 = *a1;
    v9 = *a2;
    if (v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_254525A80(uint64_t a1)
{
  v2 = sub_2545260CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254525ABC(uint64_t a1)
{
  v2 = sub_2545260CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254525B10()
{
  if (*v0)
  {
    result = 0x65686E6572686166;
  }

  else
  {
    result = 0x737569736C6563;
  }

  *v0;
  return result;
}

uint64_t sub_254525B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737569736C6563 && a2 == 0xE700000000000000;
  if (v6 || (sub_25454C334() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65686E6572686166 && a2 == 0xEA00000000007469)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25454C334();

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

uint64_t sub_254525C40(uint64_t a1)
{
  v2 = sub_254526024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254525C7C(uint64_t a1)
{
  v2 = sub_254526024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254525CB8(uint64_t a1)
{
  v2 = sub_254526078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254525CF4(uint64_t a1)
{
  v2 = sub_254526078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TextIcon.Unit.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF28, &qword_254551678);
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v25 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF30, &qword_254551680);
  v23 = *(v6 - 8);
  v24 = v6;
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF38, &qword_254551688);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = *v1;
  v16 = *(v1 + 8);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254526024();
  sub_25454C454();
  if (v16)
  {
    v29 = 1;
    sub_254526078();
    v18 = v25;
    sub_25454C294();
    v19 = v27;
    sub_25454C2C4();
    (*(v26 + 8))(v18, v19);
  }

  else
  {
    v28 = 0;
    sub_2545260CC();
    sub_25454C294();
    v20 = v24;
    sub_25454C2C4();
    (*(v23 + 8))(v9, v20);
  }

  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_254526024()
{
  result = qword_27F5FCF40;
  if (!qword_27F5FCF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCF40);
  }

  return result;
}

unint64_t sub_254526078()
{
  result = qword_27F5FCF48;
  if (!qword_27F5FCF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCF48);
  }

  return result;
}

unint64_t sub_2545260CC()
{
  result = qword_27F5FCF50;
  if (!qword_27F5FCF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCF50);
  }

  return result;
}

uint64_t TextIcon.Unit.hash(into:)()
{
  if ((*v0 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  MEMORY[0x259C0F4F0](*(v0 + 8));
  return MEMORY[0x259C0F520](v1);
}

uint64_t TextIcon.Unit.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_25454C3E4();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v1 = 0;
  }

  MEMORY[0x259C0F4F0](v2);
  MEMORY[0x259C0F520](v1);
  return sub_25454C434();
}

uint64_t TextIcon.Unit.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF58, &qword_254551690);
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v28[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF60, &qword_254551698);
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF68, &qword_2545516A0);
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v33);
  v12 = &v28[-v11];
  v14 = a1[3];
  v13 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_254526024();
  v15 = v34;
  sub_25454C444();
  if (!v15)
  {
    v34 = v9;
    v16 = v32;
    v17 = sub_25454C284();
    if (*(v17 + 16) == 1)
    {
      v18 = v12;
      v19 = v33;
      v29 = *(v17 + 32);
      v36 = 1;
      sub_254526078();
      sub_25454C234();
      sub_25454C264();
      v21 = v20;
      (*(v31 + 8))(v6, v3);
      (*(v34 + 8))(v18, v19);
      swift_unknownObjectRelease();
      *v16 = v21;
      *(v16 + 8) = v29;
    }

    else
    {
      v22 = sub_25454C184();
      swift_allocError();
      v24 = v23;
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF70, &qword_2545516A8) + 48);
      *v24 = &type metadata for TextIcon.Unit;
      v26 = v33;
      sub_25454C244();
      sub_25454C174();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v34 + 8))(v12, v26);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v35);
}

uint64_t sub_25452667C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2545266B0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      v5 = *a1;
      v6 = *a2;
      if (v2 == v3)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    v8 = *a1;
    v9 = *a2;
    if (v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_254526704()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_25454C3E4();
  TextIcon.Unit.hash(into:)();
  return sub_25454C434();
}

uint64_t sub_25452675C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_25454C3E4();
  TextIcon.Unit.hash(into:)();
  return sub_25454C434();
}

uint64_t TextIcon.Kind.description.getter()
{
  v1 = *(v0 + 16);
  if (v1 > 2)
  {
    v5 = *v0;
    v4 = v0[1];
    if (v1 == 3)
    {
      strcpy(v7, "temperature(");
      BYTE5(v7[1]) = 0;
      HIWORD(v7[1]) = -5120;
    }

    else
    {
      if (v1 != 4)
      {
        return 0x61746E6563726570;
      }

      sub_25454C154();

      v7[0] = 0xD000000000000011;
      v7[1] = 0x8000000254556C30;
    }

    v6 = TextIcon.Unit.description.getter();
    MEMORY[0x259C0EE40](v6);

    MEMORY[0x259C0EE40](41, 0xE100000000000000);
    return v7[0];
  }

  v2 = 0x7265626D756ELL;
  if (v1 != 1)
  {
    v2 = 0x65676E6172;
  }

  if (*(v0 + 16))
  {
    return v2;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_25452692C()
{
  v1 = *v0;
  v2 = 1954047348;
  v3 = 0x74617265706D6574;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0x61746E6563726570;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7265626D756ELL;
  if (v1 != 1)
  {
    v5 = 0x65676E6172;
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

uint64_t sub_2545269E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25452AFCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254526A1C(uint64_t a1)
{
  v2 = sub_254529710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254526A58(uint64_t a1)
{
  v2 = sub_254529710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254526A94(uint64_t a1)
{
  v2 = sub_254529908();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254526AD0(uint64_t a1)
{
  v2 = sub_254529908();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254526B0C(uint64_t a1)
{
  v2 = sub_254529764();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254526B48(uint64_t a1)
{
  v2 = sub_254529764();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254526B84(uint64_t a1)
{
  v2 = sub_2545298B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254526BC0(uint64_t a1)
{
  v2 = sub_2545298B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254526BFC(uint64_t a1)
{
  v2 = sub_254529860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254526C38(uint64_t a1)
{
  v2 = sub_254529860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254526C74(uint64_t a1)
{
  v2 = sub_2545297B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254526CB0(uint64_t a1)
{
  v2 = sub_2545297B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254526CEC()
{
  sub_25454C3E4();
  MEMORY[0x259C0F4F0](0);
  return sub_25454C434();
}

uint64_t sub_254526D30()
{
  sub_25454C3E4();
  MEMORY[0x259C0F4F0](0);
  return sub_25454C434();
}

uint64_t sub_254526D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25454C334();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_254526DF0(uint64_t a1)
{
  v2 = sub_25452995C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254526E2C(uint64_t a1)
{
  v2 = sub_25452995C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TextIcon.Kind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF78, &qword_2545516B0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF80, &qword_2545516B8);
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF88, &qword_2545516C0);
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = *(v44 + 64);
  MEMORY[0x28223BE20](v9);
  v41 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF90, &qword_2545516C8);
  v42 = *(v12 - 8);
  v43 = v12;
  v13 = *(v42 + 64);
  MEMORY[0x28223BE20](v12);
  v40 = &v38 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF98, &qword_2545516D0);
  v39 = *(v15 - 8);
  v16 = *(v39 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCFA0, &qword_2545516D8);
  v38 = *(v19 - 8);
  v20 = *(v38 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v38 - v21;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCFA8, &qword_2545516E0);
  v54 = *(v55 - 8);
  v23 = *(v54 + 64);
  MEMORY[0x28223BE20](v55);
  v24 = *v1;
  v52 = v1[1];
  v53 = v24;
  v25 = *(v1 + 16);
  v26 = a1[3];
  v27 = a1[4];
  v28 = a1;
  v30 = &v38 - v29;
  __swift_project_boxed_opaque_existential_1(v28, v26);
  sub_254529710();
  sub_25454C454();
  if (v25 <= 2)
  {
    if (!v25)
    {
      LOBYTE(v56) = 0;
      sub_25452995C();
      v35 = v55;
      sub_25454C294();
      sub_25454C2A4();
      (*(v38 + 8))(v22, v19);
      return (*(v54 + 8))(v30, v35);
    }

    if (v25 == 1)
    {
      LOBYTE(v56) = 1;
      sub_254529908();
      v31 = v55;
      sub_25454C294();
      sub_25454C2C4();
      (*(v39 + 8))(v18, v15);
      return (*(v54 + 8))(v30, v31);
    }

    LOBYTE(v56) = 2;
    sub_2545298B4();
    v32 = v40;
    v31 = v55;
    sub_25454C294();
    v56 = v53;
    v57 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCFE0, &qword_2545516E8);
    sub_254529A04(&qword_27F5FCFE8);
    v33 = v43;
    sub_25454C2F4();
    v34 = v42;
LABEL_11:
    (*(v34 + 8))(v32, v33);
    return (*(v54 + 8))(v30, v31);
  }

  if (v25 == 3)
  {
    LOBYTE(v56) = 3;
    sub_254529860();
    v32 = v41;
    v31 = v55;
    sub_25454C294();
    v56 = v53;
    LOBYTE(v57) = v52 & 1;
    sub_25452980C();
    v33 = v45;
    sub_25454C2F4();
    v34 = v44;
    goto LABEL_11;
  }

  v31 = v55;
  if (v25 == 4)
  {
    LOBYTE(v56) = 4;
    sub_2545297B8();
    v32 = v47;
    sub_25454C294();
    v56 = v53;
    LOBYTE(v57) = v52 & 1;
    sub_25452980C();
    v33 = v51;
    sub_25454C2F4();
    v34 = v50;
    goto LABEL_11;
  }

  LOBYTE(v56) = 5;
  sub_254529764();
  v37 = v46;
  sub_25454C294();
  (*(v48 + 8))(v37, v49);
  return (*(v54 + 8))(v30, v31);
}

uint64_t TextIcon.Kind.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = 3;
    }

    else
    {
      if (v3 != 4)
      {
        v7 = 5;
        return MEMORY[0x259C0F4F0](v7);
      }

      v5 = 4;
    }

    MEMORY[0x259C0F4F0](v5);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v1 = 0;
    }

    MEMORY[0x259C0F4F0](v2 & 1);
    v4 = v1;
    return MEMORY[0x259C0F520](v4);
  }

  if (*(v0 + 16))
  {
    if (v3 == 1)
    {
      MEMORY[0x259C0F4F0](1);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v4 = v1;
      }

      else
      {
        v4 = 0;
      }

      return MEMORY[0x259C0F520](v4);
    }

    MEMORY[0x259C0F4F0](2);
    MEMORY[0x259C0F4F0](v1);
    v7 = v2;
    return MEMORY[0x259C0F4F0](v7);
  }

  MEMORY[0x259C0F4F0](0);

  return sub_25454BD14();
}

uint64_t TextIcon.Kind.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_25454C3E4();
  TextIcon.Kind.hash(into:)();
  return sub_25454C434();
}

uint64_t TextIcon.Kind.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD000, &qword_2545516F0);
  v72 = *(v77 - 8);
  v3 = *(v72 + 64);
  MEMORY[0x28223BE20](v77);
  v84 = &v66 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD008, &qword_2545516F8);
  v6 = *(v5 - 8);
  v78 = v5;
  v79 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v80 = &v66 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD010, &qword_254551700);
  v76 = *(v73 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x28223BE20](v73);
  v83 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD018, &qword_254551708);
  v12 = *(v11 - 8);
  v74 = v11;
  v75 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v82 = &v66 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD020, &qword_254551710);
  v70 = *(v15 - 8);
  v71 = v15;
  v16 = *(v70 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v66 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD028, &qword_254551718);
  v69 = *(v19 - 8);
  v20 = *(v69 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v66 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD030, &qword_254551720);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v66 - v26;
  v28 = a1[3];
  v29 = a1[4];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_254529710();
  v30 = v85;
  sub_25454C444();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_0(v86);
  }

  v66 = v19;
  v31 = v18;
  v33 = v82;
  v32 = v83;
  v34 = v84;
  v67 = 0;
  v68 = v24;
  v85 = v27;
  v35 = sub_25454C284();
  if (*(v35 + 16) != 1 || (v36 = *(v35 + 32), v36 == 6))
  {
    v45 = sub_25454C184();
    swift_allocError();
    v47 = v46;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF70, &qword_2545516A8) + 48);
    *v47 = &type metadata for TextIcon.Kind;
    v49 = v85;
    sub_25454C244();
    sub_25454C174();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
    (*(v68 + 8))(v49, v23);
LABEL_10:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v86);
  }

  if (*(v35 + 32) > 2u)
  {
    v51 = v81;
    if (v36 == 3)
    {
      LOBYTE(v87) = 3;
      sub_254529860();
      v38 = v85;
      v58 = v67;
      sub_25454C234();
      if (!v58)
      {
        sub_2545299B0();
        v59 = v73;
        sub_25454C274();
        (*(v76 + 8))(v32, v59);
        (*(v68 + 8))(v38, v23);
        goto LABEL_28;
      }
    }

    else
    {
      v83 = v35;
      v38 = v85;
      if (v36 == 4)
      {
        LOBYTE(v87) = 4;
        sub_2545297B8();
        v52 = v80;
        v53 = v67;
        sub_25454C234();
        if (!v53)
        {
          sub_2545299B0();
          v54 = v78;
          sub_25454C274();
          (*(v79 + 8))(v52, v54);
          (*(v68 + 8))(v38, v23);
LABEL_28:
          swift_unknownObjectRelease();
          v44 = v87;
          v43 = v88;
          goto LABEL_30;
        }
      }

      else
      {
        LOBYTE(v87) = 5;
        sub_254529764();
        v61 = v67;
        sub_25454C234();
        v43 = v61;
        if (!v61)
        {
          (*(v72 + 8))(v34, v77);
          (*(v68 + 8))(v38, v23);
          swift_unknownObjectRelease();
          v44 = 0;
          goto LABEL_30;
        }
      }
    }

LABEL_22:
    (*(v68 + 8))(v38, v23);
    goto LABEL_10;
  }

  if (*(v35 + 32))
  {
    v37 = *(v35 + 32);
    if (v37 == 1)
    {
      LOBYTE(v87) = 1;
      sub_254529908();
      v38 = v85;
      v39 = v67;
      sub_25454C234();
      if (!v39)
      {
        v40 = v71;
        sub_25454C264();
        v42 = v41;
        v43 = 0;
        (*(v70 + 8))(v31, v40);
        (*(v68 + 8))(v38, v23);
        swift_unknownObjectRelease();
        v44 = v42;
LABEL_29:
        v51 = v81;
        LOBYTE(v36) = v37;
        goto LABEL_30;
      }
    }

    else
    {
      LOBYTE(v87) = 2;
      sub_2545298B4();
      v38 = v85;
      v60 = v67;
      sub_25454C234();
      if (!v60)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCFE0, &qword_2545516E8);
        sub_254529A04(&qword_27F5FD040);
        v63 = v74;
        sub_25454C274();
        v64 = v68;
        (*(v75 + 8))(v33, v63);
        (*(v64 + 8))(v38, v23);
        swift_unknownObjectRelease();
        v44 = v87;
        v43 = v88;
        goto LABEL_29;
      }
    }

    goto LABEL_22;
  }

  LOBYTE(v87) = 0;
  sub_25452995C();
  v55 = v22;
  v56 = v85;
  v57 = v67;
  sub_25454C234();
  if (v57)
  {
    (*(v68 + 8))(v56, v23);
    goto LABEL_10;
  }

  v62 = v66;
  v44 = sub_25454C254();
  v43 = v65;
  (*(v69 + 8))(v55, v62);
  (*(v68 + 8))(v85, v23);
  swift_unknownObjectRelease();
  v51 = v81;
LABEL_30:
  *v51 = v44;
  *(v51 + 8) = v43;
  *(v51 + 16) = v36;
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_254528298()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_25454C3E4();
  TextIcon.Kind.hash(into:)();
  return sub_25454C434();
}

uint64_t sub_2545282F0()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_25454C3E4();
  TextIcon.Kind.hash(into:)();
  return sub_25454C434();
}

uint64_t TextIcon.Configuration.init(value:localizedString:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, double *a4@<X8>, double a5@<D0>)
{
  v10 = sub_254549104();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = *a3;
  v13 = a3[1];
  v14 = *(a3 + 16);
  *a4 = a5;

  sub_2545490F4();
  v15 = type metadata accessor for TextIcon.Configuration();
  v16 = a4 + v15[5];
  result = sub_2545490E4();
  v18 = (a4 + v15[7]);
  *v18 = a1;
  v18[1] = a2;
  v19 = a4 + v15[6];
  *v19 = v12;
  *(v19 + 1) = v13;
  v19[16] = v14;
  return result;
}

uint64_t TextIcon.Configuration.init(value:localizedString:kind:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD048, &qword_254551728);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29[-v10];
  v12 = sub_2545490A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *a2;
  v31 = a2[1];
  v32 = v17;
  v30 = *(a2 + 16);
  *a3 = a4;
  v18 = type metadata accessor for TextIcon.Configuration();
  v19 = v18[5];
  v20 = sub_2545490D4();
  v21 = *(v20 - 8);
  (*(v21 + 16))(a3 + v19, a1, v20);
  sub_254549094();
  sub_254528698(v11);
  (*(v13 + 8))(v16, v12);
  v22 = sub_25454BCB4();
  v24 = v23;
  result = (*(v21 + 8))(a1, v20);
  v26 = (a3 + v18[7]);
  *v26 = v22;
  v26[1] = v24;
  v27 = a3 + v18[6];
  v28 = v31;
  *v27 = v32;
  *(v27 + 1) = v28;
  v27[16] = v30;
  return result;
}

uint64_t sub_254528698@<X0>(uint64_t a1@<X8>)
{
  v28[2] = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD1B8, &qword_2545526D8);
  v2 = *(*(v30 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v30);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v28 - v6;
  v8 = sub_2545490C4();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD1C0, &qword_2545526E0);
  v13 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v15 = v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD1C8, &qword_2545526E8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - v18;
  v20 = sub_2545490A4();
  v21 = sub_25452B340(&qword_27F5FD1D0, MEMORY[0x277CC8B30]);
  v31 = v20;
  v22 = v21;
  sub_25454BEF4();
  sub_25452B340(&qword_27F5FD1D8, MEMORY[0x277CC8C20]);
  result = sub_25454BC44();
  if (result)
  {
    sub_25454BF24();
    sub_25452B340(&qword_27F5FD1E0, MEMORY[0x277CC8C20]);
    result = sub_25454BC34();
    if (result)
    {
      v28[1] = v1;
      v24 = v9[4];
      v24(v7, v19, v8);
      v28[0] = v22;
      v25 = v30;
      v24(&v7[*(v30 + 48)], v12, v8);
      sub_25452B388(v7, v5);
      v26 = *(v25 + 48);
      v24(v15, v5, v8);
      v27 = v9[1];
      v27(&v5[v26], v8);
      sub_25452B3F8(v7, v5);
      v24(&v15[*(v29 + 36)], &v5[*(v25 + 48)], v8);
      v27(v5, v8);
      sub_25454BF44();
      return sub_25452B468(v15);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_254528A74()
{
  v1 = 0x65756C6176;
  v2 = 1684957547;
  if (*v0 != 2)
  {
    v2 = 0x7453656C706D6973;
  }

  if (*v0)
  {
    v1 = 0x657A696C61636F6CLL;
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

uint64_t sub_254528AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25452B1D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254528B2C(uint64_t a1)
{
  v2 = sub_254529BF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254528B68(uint64_t a1)
{
  v2 = sub_254529BF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TextIcon.Configuration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD050, &qword_254551730);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254529BF0();
  sub_25454C454();
  v11 = *v3;
  LOBYTE(v22) = 0;
  sub_25454C2C4();
  if (!v2)
  {
    v12 = type metadata accessor for TextIcon.Configuration();
    v13 = v12[5];
    LOBYTE(v22) = 1;
    sub_2545490D4();
    sub_25452B340(&qword_27F5FD060, MEMORY[0x277CC8C40]);
    sub_25454C2F4();
    v14 = v3 + v12[6];
    v15 = *(v14 + 1);
    v16 = v14[16];
    v22 = *v14;
    v23 = v15;
    v24 = v16;
    v21[7] = 2;
    sub_254529C44(v22, v15, v16);
    sub_254529C58();
    sub_25454C2F4();
    sub_254529CAC(v22, v23, v24);
    v17 = (v3 + v12[7]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v22) = 3;
    sub_25454C2A4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TextIcon.Configuration.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  if (*v0 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x259C0F520](*&v2);
  v3 = type metadata accessor for TextIcon.Configuration();
  v4 = v3[5];
  sub_2545490D4();
  sub_25452B340(&qword_27F5FD070, MEMORY[0x277CC8C40]);
  sub_25454BBF4();
  v5 = v1 + v3[6];
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = v5[16];
  if (v8 <= 2)
  {
    if (!v8)
    {
      MEMORY[0x259C0F4F0](0);
      sub_25454BD14();
      goto LABEL_21;
    }

    if (v8 == 1)
    {
      MEMORY[0x259C0F4F0](1);
      if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = 0;
      }

      MEMORY[0x259C0F520](v9);
      goto LABEL_21;
    }

    MEMORY[0x259C0F4F0](2);
    MEMORY[0x259C0F4F0](v6);
    v11 = v7;
    goto LABEL_20;
  }

  if (v8 == 3)
  {
    v10 = 3;
  }

  else
  {
    if (v8 != 4)
    {
      v11 = 5;
LABEL_20:
      MEMORY[0x259C0F4F0](v11);
      goto LABEL_21;
    }

    v10 = 4;
  }

  MEMORY[0x259C0F4F0](v10);
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v6 = 0;
  }

  MEMORY[0x259C0F4F0](v7 & 1);
  MEMORY[0x259C0F520](v6);
LABEL_21:
  v12 = (v1 + v3[7]);
  v13 = *v12;
  v14 = v12[1];

  return sub_25454BD14();
}

uint64_t TextIcon.Configuration.hashValue.getter()
{
  sub_25454C3E4();
  TextIcon.Configuration.hash(into:)();
  return sub_25454C434();
}

uint64_t TextIcon.Configuration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_2545490D4();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD078, &qword_254551738);
  v33 = *(v36 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v36);
  v9 = &v30 - v8;
  v10 = type metadata accessor for TextIcon.Configuration();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254529BF0();
  v35 = v9;
  v15 = v37;
  sub_25454C444();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v37 = a1;
  v31 = v10;
  v17 = v33;
  v16 = v34;
  LOBYTE(v38) = 0;
  sub_25454C264();
  v18 = v13;
  *v13 = v19;
  LOBYTE(v38) = 1;
  sub_25452B340(&qword_27F5FD080, MEMORY[0x277CC8C40]);
  v20 = v6;
  sub_25454C274();
  v21 = v18;
  (*(v16 + 32))(&v18[*(v31 + 20)], v20, v3);
  v40 = 2;
  sub_254529CC0();
  sub_25454C274();
  v22 = v39;
  v23 = v31;
  v24 = v21 + *(v31 + 24);
  *v24 = v38;
  *(v24 + 16) = v22;
  LOBYTE(v38) = 3;
  v25 = sub_25454C254();
  v27 = v26;
  (*(v17 + 8))(v35, v36);
  v28 = (v21 + *(v23 + 28));
  *v28 = v25;
  v28[1] = v27;
  sub_254529D14(v21, v32);
  __swift_destroy_boxed_opaque_existential_0(v37);
  return sub_254529D78(v21);
}

uint64_t sub_2545293D4()
{
  sub_25454C3E4();
  TextIcon.Configuration.hash(into:)();
  return sub_25454C434();
}

uint64_t sub_254529418()
{
  sub_25454C3E4();
  TextIcon.Configuration.hash(into:)();
  return sub_25454C434();
}

BOOL _s7HomeUI28TextIconO4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v7 != 3)
      {
        goto LABEL_29;
      }

      sub_254529CAC(*a1, v2, 3);
      v10 = v6;
      v11 = v5;
      v12 = 3;
    }

    else
    {
      if (v4 != 4)
      {
        if (v7 != 5 || (v5 | v6) != 0)
        {
          goto LABEL_29;
        }

        sub_254529CAC(*a1, v2, 5);
        v16 = 0;
        v17 = 0;
        v18 = 5;
        goto LABEL_41;
      }

      if (v7 != 4)
      {
        goto LABEL_29;
      }

      sub_254529CAC(*a1, v2, 4);
      v10 = v6;
      v11 = v5;
      v12 = 4;
    }

    sub_254529CAC(v10, v11, v12);
    if (v2)
    {
      if ((v5 & (*&v3 == *&v6)) == 0)
      {
        return 0;
      }
    }

    else if (v5 & 1 | (*&v3 != *&v6))
    {
      return 0;
    }

    return 1;
  }

  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      v13 = *(a1 + 8);

      goto LABEL_29;
    }

    v19 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v21 = sub_25454C334();
      sub_254529C44(v6, v5, 0);
      sub_254529C44(v3, v2, 0);
      sub_254529CAC(v3, v2, 0);
      sub_254529CAC(v6, v5, 0);
      return v21 & 1;
    }

    sub_254529C44(v19, v2, 0);
    sub_254529C44(v3, v2, 0);
    sub_254529CAC(v3, v2, 0);
    v16 = v3;
    v17 = v2;
    v18 = 0;
LABEL_41:
    sub_254529CAC(v16, v17, v18);
    return 1;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a2;
      sub_254529CAC(*a1, v2, 1);
      sub_254529CAC(v6, v5, 1);
      result = 1;
      if (*&v3 == *&v6)
      {
        return result;
      }

      return 0;
    }

    goto LABEL_29;
  }

  if (v7 != 2)
  {
LABEL_29:
    sub_254529C44(v6, v5, v7);
    sub_254529CAC(v3, v2, v4);
    sub_254529CAC(v6, v5, v7);
    return 0;
  }

  sub_254529CAC(*a1, v2, 2);
  sub_254529CAC(v6, v5, 2);
  return v3 == v6 && v2 == v5;
}

unint64_t sub_254529710()
{
  result = qword_27F5FCFB0;
  if (!qword_27F5FCFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCFB0);
  }

  return result;
}

unint64_t sub_254529764()
{
  result = qword_27F5FCFB8;
  if (!qword_27F5FCFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCFB8);
  }

  return result;
}

unint64_t sub_2545297B8()
{
  result = qword_27F5FCFC0;
  if (!qword_27F5FCFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCFC0);
  }

  return result;
}

unint64_t sub_25452980C()
{
  result = qword_27F5FCFC8;
  if (!qword_27F5FCFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCFC8);
  }

  return result;
}

unint64_t sub_254529860()
{
  result = qword_27F5FCFD0;
  if (!qword_27F5FCFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCFD0);
  }

  return result;
}

unint64_t sub_2545298B4()
{
  result = qword_27F5FCFD8;
  if (!qword_27F5FCFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCFD8);
  }

  return result;
}

unint64_t sub_254529908()
{
  result = qword_27F5FCFF0;
  if (!qword_27F5FCFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCFF0);
  }

  return result;
}

unint64_t sub_25452995C()
{
  result = qword_27F5FCFF8;
  if (!qword_27F5FCFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCFF8);
  }

  return result;
}

unint64_t sub_2545299B0()
{
  result = qword_27F5FD038;
  if (!qword_27F5FD038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD038);
  }

  return result;
}

uint64_t sub_254529A04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCFE0, &qword_2545516E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for TextIcon.Configuration()
{
  result = qword_27F5FD0A8;
  if (!qword_27F5FD0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s7HomeUI28TextIconO13ConfigurationV2eeoiySbAE_AEtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for TextIcon.Configuration();
  v5 = v4[5];
  if ((sub_2545490B4() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  v7 = *(a1 + v6 + 8);
  v8 = *(a1 + v6 + 16);
  v21 = *(a1 + v6);
  v22 = v7;
  v23 = v8;
  v9 = a2 + v6;
  v10 = *(v9 + 1);
  v11 = v9[16];
  v18 = *v9;
  v19 = v10;
  v20 = v11;
  sub_254529C44(v21, v7, v8);
  sub_254529C44(v18, v10, v11);
  v12 = _s7HomeUI28TextIconO4KindO2eeoiySbAE_AEtFZ_0(&v21, &v18);
  sub_254529CAC(v18, v19, v20);
  sub_254529CAC(v21, v22, v23);
  if (!v12)
  {
    return 0;
  }

  v13 = v4[7];
  v14 = *(a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  if (v14 == *v16 && v15 == v16[1])
  {
    return 1;
  }

  return sub_25454C334();
}

unint64_t sub_254529BF0()
{
  result = qword_27F5FD058;
  if (!qword_27F5FD058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD058);
  }

  return result;
}

uint64_t sub_254529C44(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

unint64_t sub_254529C58()
{
  result = qword_27F5FD068;
  if (!qword_27F5FD068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD068);
  }

  return result;
}

uint64_t sub_254529CAC(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

unint64_t sub_254529CC0()
{
  result = qword_27F5FD088;
  if (!qword_27F5FD088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD088);
  }

  return result;
}

uint64_t sub_254529D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextIcon.Configuration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254529D78(uint64_t a1)
{
  v2 = type metadata accessor for TextIcon.Configuration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_254529DD8()
{
  result = qword_27F5FD090;
  if (!qword_27F5FD090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD090);
  }

  return result;
}

unint64_t sub_254529E30()
{
  result = qword_27F5FD098;
  if (!qword_27F5FD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD098);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextIcon.Unit(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for TextIcon.Unit(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t get_enum_tag_for_layout_string_7HomeUI28TextIconO4KindO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_254529FC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25452A00C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_25452A050(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_25452A08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2545490D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25452A164(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2545490D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25452A224()
{
  result = sub_2545490D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextIcon.Kind.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TextIcon.Kind.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25452A4D0()
{
  result = qword_27F5FD0B8;
  if (!qword_27F5FD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD0B8);
  }

  return result;
}

unint64_t sub_25452A528()
{
  result = qword_27F5FD0C0;
  if (!qword_27F5FD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD0C0);
  }

  return result;
}

unint64_t sub_25452A580()
{
  result = qword_27F5FD0C8;
  if (!qword_27F5FD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD0C8);
  }

  return result;
}

unint64_t sub_25452A5D8()
{
  result = qword_27F5FD0D0;
  if (!qword_27F5FD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD0D0);
  }

  return result;
}

unint64_t sub_25452A630()
{
  result = qword_27F5FD0D8;
  if (!qword_27F5FD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD0D8);
  }

  return result;
}

unint64_t sub_25452A688()
{
  result = qword_27F5FD0E0;
  if (!qword_27F5FD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD0E0);
  }

  return result;
}

unint64_t sub_25452A6E0()
{
  result = qword_27F5FD0E8;
  if (!qword_27F5FD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD0E8);
  }

  return result;
}

unint64_t sub_25452A738()
{
  result = qword_27F5FD0F0;
  if (!qword_27F5FD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD0F0);
  }

  return result;
}

unint64_t sub_25452A790()
{
  result = qword_27F5FD0F8;
  if (!qword_27F5FD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD0F8);
  }

  return result;
}

unint64_t sub_25452A7E8()
{
  result = qword_27F5FD100;
  if (!qword_27F5FD100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD100);
  }

  return result;
}

unint64_t sub_25452A840()
{
  result = qword_27F5FD108;
  if (!qword_27F5FD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD108);
  }

  return result;
}

unint64_t sub_25452A898()
{
  result = qword_27F5FD110;
  if (!qword_27F5FD110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD110);
  }

  return result;
}

unint64_t sub_25452A8F0()
{
  result = qword_27F5FD118;
  if (!qword_27F5FD118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD118);
  }

  return result;
}

unint64_t sub_25452A948()
{
  result = qword_27F5FD120;
  if (!qword_27F5FD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD120);
  }

  return result;
}

unint64_t sub_25452A9A0()
{
  result = qword_27F5FD128;
  if (!qword_27F5FD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD128);
  }

  return result;
}

unint64_t sub_25452A9F8()
{
  result = qword_27F5FD130;
  if (!qword_27F5FD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD130);
  }

  return result;
}

unint64_t sub_25452AA50()
{
  result = qword_27F5FD138;
  if (!qword_27F5FD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD138);
  }

  return result;
}

unint64_t sub_25452AAA8()
{
  result = qword_27F5FD140;
  if (!qword_27F5FD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD140);
  }

  return result;
}

unint64_t sub_25452AB00()
{
  result = qword_27F5FD148;
  if (!qword_27F5FD148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD148);
  }

  return result;
}

unint64_t sub_25452AB58()
{
  result = qword_27F5FD150;
  if (!qword_27F5FD150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD150);
  }

  return result;
}

unint64_t sub_25452ABB0()
{
  result = qword_27F5FD158;
  if (!qword_27F5FD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD158);
  }

  return result;
}

unint64_t sub_25452AC08()
{
  result = qword_27F5FD160;
  if (!qword_27F5FD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD160);
  }

  return result;
}

unint64_t sub_25452AC60()
{
  result = qword_27F5FD168;
  if (!qword_27F5FD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD168);
  }

  return result;
}

unint64_t sub_25452ACB8()
{
  result = qword_27F5FD170;
  if (!qword_27F5FD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD170);
  }

  return result;
}

unint64_t sub_25452AD10()
{
  result = qword_27F5FD178;
  if (!qword_27F5FD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD178);
  }

  return result;
}

unint64_t sub_25452AD68()
{
  result = qword_27F5FD180;
  if (!qword_27F5FD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD180);
  }

  return result;
}

unint64_t sub_25452ADC0()
{
  result = qword_27F5FD188;
  if (!qword_27F5FD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD188);
  }

  return result;
}

unint64_t sub_25452AE18()
{
  result = qword_27F5FD190;
  if (!qword_27F5FD190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD190);
  }

  return result;
}

unint64_t sub_25452AE70()
{
  result = qword_27F5FD198;
  if (!qword_27F5FD198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD198);
  }

  return result;
}

unint64_t sub_25452AEC8()
{
  result = qword_27F5FD1A0;
  if (!qword_27F5FD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD1A0);
  }

  return result;
}

unint64_t sub_25452AF20()
{
  result = qword_27F5FD1A8;
  if (!qword_27F5FD1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD1A8);
  }

  return result;
}

unint64_t sub_25452AF78()
{
  result = qword_27F5FD1B0;
  if (!qword_27F5FD1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD1B0);
  }

  return result;
}

uint64_t sub_25452AFCC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_25454C334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265626D756ELL && a2 == 0xE600000000000000 || (sub_25454C334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000 || (sub_25454C334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275 || (sub_25454C334() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000254556C50 == a2 || (sub_25454C334() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61746E6563726570 && a2 == 0xEA00000000006567)
  {

    return 5;
  }

  else
  {
    v6 = sub_25454C334();

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

uint64_t sub_25452B1D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_25454C334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEF676E6972745364 || (sub_25454C334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_25454C334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7453656C706D6973 && a2 == 0xEC000000676E6972)
  {

    return 3;
  }

  else
  {
    v6 = sub_25454C334();

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

uint64_t sub_25452B340(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25452B388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD1B8, &qword_2545526D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25452B3F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD1B8, &qword_2545526D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25452B468(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD1C0, &qword_2545526E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NSUnitTemperature.FormatStyle.description.getter(char a1)
{
  if (a1)
  {
    return 0x72656874616577;
  }

  else
  {
    return 0x7265626D756ELL;
  }
}

uint64_t sub_25452B530()
{
  if (*v0)
  {
    result = 0x72656874616577;
  }

  else
  {
    result = 0x7265626D756ELL;
  }

  *v0;
  return result;
}

uint64_t sub_25452B568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265626D756ELL && a2 == 0xE600000000000000;
  if (v6 || (sub_25454C334() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72656874616577 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25454C334();

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

uint64_t sub_25452B640(uint64_t a1)
{
  v2 = sub_25452BA64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25452B67C(uint64_t a1)
{
  v2 = sub_25452BA64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25452B6B8(uint64_t a1)
{
  v2 = sub_25452BB0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25452B6F4(uint64_t a1)
{
  v2 = sub_25452BB0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25452B730(uint64_t a1)
{
  v2 = sub_25452BAB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25452B76C(uint64_t a1)
{
  v2 = sub_25452BAB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NSUnitTemperature.FormatStyle.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD1E8, &qword_2545526F0);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD1F0, &qword_2545526F8);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD1F8, &unk_254552700);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25452BA64();
  sub_25454C454();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_25452BAB8();
    sub_25454C294();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_25452BB0C();
    sub_25454C294();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_25452BA64()
{
  result = qword_27F5FD200;
  if (!qword_27F5FD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD200);
  }

  return result;
}

unint64_t sub_25452BAB8()
{
  result = qword_27F5FD208;
  if (!qword_27F5FD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD208);
  }

  return result;
}

unint64_t sub_25452BB0C()
{
  result = qword_27F5FD210;
  if (!qword_27F5FD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD210);
  }

  return result;
}

uint64_t NSUnitTemperature.FormatStyle.hashValue.getter(char a1)
{
  sub_25454C3E4();
  MEMORY[0x259C0F4F0](a1 & 1);
  return sub_25454C434();
}

uint64_t sub_25452BBEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25452C7A4(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t NSUnitTemperature.numberFormatStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v23[2] = a1;
  v24 = sub_2545491D4();
  v1 = *(v24 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v24);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2545491B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2545493C4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF10, &qword_254551670);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v23 - v18;
  sub_2545493A4();
  sub_254525884();
  sub_254549164();
  sub_2545491A4();
  MEMORY[0x259C0C250](v9, v12);
  (*(v6 + 8))(v9, v5);
  v20 = *(v13 + 8);
  v20(v17, v12);
  sub_25452CC60();
  v21 = [objc_opt_self() celsius];
  sub_25454C034();

  sub_2545491C4();
  MEMORY[0x259C0C270](v4, v12);
  (*(v1 + 8))(v4, v24);
  return (v20)(v19, v12);
}

uint64_t NSUnitTemperature.attributedStyle.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF10, &qword_254551670);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  NSUnitTemperature.numberFormatStyle.getter(&v6 - v3);
  sub_254549144();
  return (*(v1 + 8))(v4, v0);
}

uint64_t NSUnitTemperature.temperatureFormatStyle.getter()
{
  v0 = sub_2545493C4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD220, &qword_254552710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD228, &qword_254552718);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD230, &qword_254552720);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_25452CC60();
  sub_254549044();
  sub_254549184();
  NSUnitTemperature.numberFormatStyle.getter(v5);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF10, &qword_254551670);
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  sub_2545493A4();
  return sub_254549054();
}

uint64_t NSUnitTemperature.temperatureAttributedStyle.getter()
{
  v0 = sub_2545493C4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD220, &qword_254552710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD228, &qword_254552718);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD230, &qword_254552720);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD238, &qword_254552728);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  sub_25452CC60();
  sub_254549044();
  sub_254549184();
  NSUnitTemperature.numberFormatStyle.getter(v5);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF10, &qword_254551670);
  (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
  sub_2545493A4();
  sub_254549054();
  sub_254549034();
  return (*(v11 + 8))(v14, v10);
}

uint64_t static FormatStyle<>.temperature(_:style:)@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  v4 = sub_2545493C4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD220, &qword_254552710);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD228, &qword_254552718);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD230, &qword_254552720);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  if (a1)
  {
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD238, &qword_254552728);
    a2[4] = sub_2544AE1F0(&qword_27F5FD240, &qword_27F5FD238, &qword_254552728);
    __swift_allocate_boxed_opaque_existential_0(a2);
    sub_25452CC60();
    sub_254549044();
    sub_254549184();
    NSUnitTemperature.numberFormatStyle.getter(v9);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF10, &qword_254551670);
    (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
    sub_2545493A4();
    return sub_254549054();
  }

  else
  {
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF10, &qword_254551670);
    a2[4] = sub_2544AE1F0(&qword_27F5FCF20, &qword_27F5FCF10, &qword_254551670);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
    return NSUnitTemperature.numberFormatStyle.getter(boxed_opaque_existential_0);
  }
}

uint64_t sub_25452C7A4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD288, &qword_254552AC0);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD290, &qword_254552AC8);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD298, &unk_254552AD0);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25452BA64();
  v15 = v32;
  sub_25454C444();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_25454C284();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_25452667C();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_25454C184();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF70, &qword_2545516A8) + 48);
    *v24 = &type metadata for NSUnitTemperature.FormatStyle;
    sub_25454C244();
    sub_25454C174();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_25452BAB8();
    sub_25454C234();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_25452BB0C();
    sub_25454C234();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v37 & 1;
}

unint64_t sub_25452CC60()
{
  result = qword_27F5FD218;
  if (!qword_27F5FD218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5FD218);
  }

  return result;
}

unint64_t sub_25452CCB0()
{
  result = qword_27F5FD248;
  if (!qword_27F5FD248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD248);
  }

  return result;
}

unint64_t sub_25452CD50()
{
  result = qword_27F5FD250;
  if (!qword_27F5FD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD250);
  }

  return result;
}

unint64_t sub_25452CDA8()
{
  result = qword_27F5FD258;
  if (!qword_27F5FD258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD258);
  }

  return result;
}

unint64_t sub_25452CE00()
{
  result = qword_27F5FD260;
  if (!qword_27F5FD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD260);
  }

  return result;
}

unint64_t sub_25452CE58()
{
  result = qword_27F5FD268;
  if (!qword_27F5FD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD268);
  }

  return result;
}

unint64_t sub_25452CEB0()
{
  result = qword_27F5FD270;
  if (!qword_27F5FD270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD270);
  }

  return result;
}

unint64_t sub_25452CF08()
{
  result = qword_27F5FD278;
  if (!qword_27F5FD278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD278);
  }

  return result;
}

unint64_t sub_25452CF60()
{
  result = qword_27F5FD280;
  if (!qword_27F5FD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD280);
  }

  return result;
}

uint64_t sub_25452CFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25452D234();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.roomContainerState.getter()
{
  sub_25452D078();

  return sub_25454AAA4();
}

unint64_t sub_25452D078()
{
  result = qword_27F5FD2A0;
  if (!qword_27F5FD2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD2A0);
  }

  return result;
}

uint64_t EnvironmentValues.roomContainerState.setter(char *a1)
{
  v2 = *a1;
  sub_25452D078();
  return sub_25454AAB4();
}

uint64_t (*EnvironmentValues.roomContainerState.modify(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  a1[1] = sub_25452D078();
  sub_25454AAA4();
  return sub_25452D16C;
}

uint64_t sub_25452D16C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_25454AAB4();
}

uint64_t RoomContainerState.hashValue.getter()
{
  v1 = *v0;
  sub_25454C3E4();
  MEMORY[0x259C0F4F0](v1);
  return sub_25454C434();
}

unint64_t sub_25452D234()
{
  result = qword_27F5FD2A8;
  if (!qword_27F5FD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD2A8);
  }

  return result;
}

uint64_t sub_25452D288@<X0>(_BYTE *a1@<X8>)
{
  sub_25452D078();
  result = sub_25454AAA4();
  *a1 = v3;
  return result;
}

uint64_t sub_25452D2D8(char *a1)
{
  v2 = *a1;
  sub_25452D078();
  return sub_25454AAB4();
}

uint64_t sub_25452D344@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25454AA94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC50, &qword_25454F680);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_2544AE240(v2, &v17 - v11, &qword_27F5FBC50, &qword_25454F680);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_25454A584();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_25454BF84();
    v16 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t CloseButton.init(actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC50, &qword_25454F680);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for CloseButton();
  v7 = (a3 + *(result + 20));
  *v7 = a1;
  v7[1] = a2;
  return result;
}

uint64_t CloseButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = sub_2545493C4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v57 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25454BC64();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD2B0, &unk_254553660);
  v50 = *(v52 - 8);
  v7 = *(v50 + 64);
  v8 = MEMORY[0x28223BE20](v52);
  v47 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD2B8, &qword_254552BF8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v49 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  v17 = type metadata accessor for CloseButton();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD2C0, &qword_254552C00);
  v53 = *(v20 - 8);
  v54 = v20;
  v21 = *(v53 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v47 - v22;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD2C8, &qword_254552C08);
  v24 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v26 = &v47 - v25;
  v27 = sub_25454AB84();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_25452DF50(v51, &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v35 = swift_allocObject();
  sub_25452E0E0(&v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34);
  v59 = v27;
  v60 = v29;
  v61 = v31 & 1;
  v62 = v33;
  v63 = 0x6B72616D78;
  v64 = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD2D0, &qword_254552C10);
  v36 = v50;
  sub_2544AE1F0(&qword_27F5FD2D8, &qword_27F5FD2D0, &qword_254552C10);
  v37 = v52;
  v38 = v49;
  sub_25454B7F4();

  v65 = sub_25454B654();
  v67 = sub_25454B674();
  sub_254549804();
  (*(v36 + 56))(v16, 0, 1, v37);
  KeyPath = swift_getKeyPath();
  sub_2544AE240(v16, v38, &qword_27F5FD2B8, &qword_254552BF8);
  v40 = 0;
  if ((*(v36 + 48))(v38, 1, v37) != 1)
  {
    v41 = v48;
    (*(v36 + 32))(v48, v38, v37);
    (*(v36 + 16))(v47, v41, v37);
    sub_2544AE1F0(&qword_27F5FD300, &qword_27F5FD2B0, &unk_254553660);
    v40 = sub_25454A554();
    (*(v36 + 8))(v41, v37);
  }

  v43 = v53;
  v42 = v54;
  (*(v53 + 16))(v26, v23, v54);
  v44 = &v26[*(v55 + 36)];
  *v44 = KeyPath;
  v44[1] = v40;
  sub_2544AE150(v16, &qword_27F5FD2B8, &qword_254552BF8);
  (*(v43 + 8))(v23, v42);
  sub_25454BC54();
  sub_2545493B4();
  v65 = sub_25454BCA4();
  v66 = v45;
  sub_25452E2A4();
  sub_2544AECF0();
  sub_25454B424();

  return sub_2544AE150(v26, &qword_27F5FD2C8, &qword_254552C08);
}

uint64_t sub_25452DC9C(uint64_t a1)
{
  v2 = sub_25454A584();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27F5FACE8 != -1)
  {
    swift_once();
  }

  v7 = sub_25454A2E4();
  __swift_project_value_buffer(v7, qword_27F5FD428);
  v8 = sub_25454A2C4();
  v9 = sub_25454BF94();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2544A5000, v8, v9, "User tapped Close button", v10, 2u);
    MEMORY[0x259C0FDF0](v10, -1, -1);
  }

  v11 = a1 + *(type metadata accessor for CloseButton() + 20);
  if (*v11)
  {
    v12 = *(v11 + 8);
    (*v11)();
  }

  sub_25452D344(v6);
  sub_25454A574();
  (*(v3 + 8))(v6, v2);
}

uint64_t type metadata accessor for CloseButton()
{
  result = qword_27F5FD308;
  if (!qword_27F5FD308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25452DF50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloseButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25452DFB4()
{
  v1 = type metadata accessor for CloseButton();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC50, &qword_25454F680);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25454A584();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v5 + *(v1 + 20));
  if (*v8)
  {
    v9 = v8[1];
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25452E0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloseButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25452E144()
{
  v1 = *(type metadata accessor for CloseButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25452DC9C(v2);
}

uint64_t sub_25452E1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return MEMORY[0x282130010](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_25452E24C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x259C0DAA0]();
  *a1 = result;
  return result;
}

uint64_t sub_25452E278(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x259C0DAB0](v2);
}

unint64_t sub_25452E2A4()
{
  result = qword_27F5FD2E0;
  if (!qword_27F5FD2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD2C8, &qword_254552C08);
    sub_2544AE1F0(&qword_27F5FD2E8, &qword_27F5FD2C0, &qword_254552C00);
    sub_2544AE1F0(&qword_27F5FD2F0, &qword_27F5FD2F8, &qword_254552C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD2E0);
  }

  return result;
}

uint64_t sub_25452E3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB68, &qword_25454F588);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_25452E4A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB68, &qword_25454F588);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_25452E564()
{
  sub_25452E5E8();
  if (v0 <= 0x3F)
  {
    sub_25452E640();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25452E5E8()
{
  if (!qword_27F5FBB90)
  {
    sub_25454A584();
    v0 = sub_25454A464();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FBB90);
    }
  }
}

void sub_25452E640()
{
  if (!qword_27F5FBD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBD80, &qword_25454F7F8);
    v0 = sub_25454C054();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FBD78);
    }
  }
}

unint64_t sub_25452E6A8()
{
  result = qword_27F5FD318;
  if (!qword_27F5FD318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD320, &qword_254552CB8);
    sub_25452E2A4();
    sub_2544DB604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD318);
  }

  return result;
}

uint64_t TileInfoBearer.resolvedForegroundColor.getter(uint64_t a1)
{
  v3 = sub_2545498F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  (*(v11 + 16))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  if (swift_dynamicCast())
  {
    (*(v4 + 8))(v8, v3);
    if (sub_2545498B4())
    {
      return sub_2545498D4();
    }
  }

  else if (sub_2545498C4())
  {
    return sub_2545498D4();
  }

  return sub_25454B674();
}

uint64_t sub_25452E93C(SEL *a1)
{
  v1 = [objc_opt_self() *a1];

  return sub_25454B5F4();
}

double Font.lineHeight(in:)()
{
  v0 = sub_25454AF84();
  [v0 lineHeight];
  v2 = v1;

  return v2;
}

uint64_t sub_25452E9CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25454AA94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A0, &qword_25454E640);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_25452F644(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_25454B0E4();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_25454BF84();
    v16 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_25452EBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v31 = a2;
  v3 = sub_25454B0E4();
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD340, &qword_254552D80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD348, &qword_254552D88);
  v13 = *(v12 - 8);
  v27 = v12;
  v28 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = type metadata accessor for CenteringBaselineOffsetModifier();
  v18 = *(v2 + *(v17 + 20));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD350, &unk_254552D90);
  v20 = sub_25452F5E0();
  sub_25454B404();
  v32 = v19;
  v33 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_25454B414();
  (*(v8 + 8))(v11, v7);
  v22 = *(v2 + *(v17 + 24));
  sub_25452E9CC(v6);
  v23 = sub_25454AF84();
  [v23 lineHeight];

  (*(v29 + 8))(v6, v30);
  v32 = v7;
  v33 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v24 = v27;
  sub_25454B364();
  return (*(v28 + 8))(v16, v24);
}