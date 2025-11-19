uint64_t sub_24EDD1E90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236230);
  sub_24F923378();
  return v1;
}

double sub_24EDD1EEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v68 = a2;
  v63 = sub_24F924B38();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230060);
  MEMORY[0x28223BE20](v6);
  v8 = (&v60 - v7);
  *&v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230068);
  v9 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v11 = &v60 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230070);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - v14;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230078);
  MEMORY[0x28223BE20](v64);
  v17 = &v60 - v16;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230080);
  MEMORY[0x28223BE20](v65);
  v66 = &v60 - v18;
  *v8 = sub_24F927618();
  v8[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230088);
  sub_24EDD26E0(v3, *(a1 + 16), *(a1 + 24));
  v20 = sub_24EDD34E0();
  sub_24F926B78();
  sub_24EDD35C4(v8);
  v67 = v3;
  sub_24EDD1E90();
  *&v69 = v6;
  *(&v69 + 1) = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v60;
  sub_24F9269C8();

  (*(v9 + 8))(v11, v21);
  v22 = &v15[*(v13 + 44)];
  v23 = sub_24F924258();
  v24 = *MEMORY[0x277CE0118];
  v25 = v62;
  v26 = *(v62 + 104);
  v27 = v63;
  v26(&v22[*(v23 + 20)], v24, v63);
  __asm { FMOV            V0.2D, #24.0 }

  v60 = _Q0;
  *v22 = _Q0;
  v33 = v61;
  v26(v61, v24, v27);
  *(&v70 + 1) = v23;
  *&v71 = sub_24EDD362C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v69);
  (*(v25 + 16))(boxed_opaque_existential_1 + *(v23 + 20), v33, v27);
  *boxed_opaque_existential_1 = v60;
  (*(v25 + 8))(v33, v27);
  sub_24E60169C(&v69, v17, &qword_27F2300A8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2300B0);
  sub_24E60169C(v15, &v17[v35[9]], &qword_27F230070);
  v36 = &v17[v35[10]];
  *v36 = sub_24F923398() & 1;
  *(v36 + 1) = v37;
  v36[16] = v38 & 1;
  v39 = &v17[v35[11]];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v40 = qword_27F24E488;
  v41 = sub_24F923398();
  v43 = v42;
  v45 = v44;
  v46 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2300B8) + 36)];
  *v46 = v40;
  v46[8] = v41 & 1;
  *(v46 + 2) = v43;
  v46[24] = v45 & 1;
  LOBYTE(v40) = sub_24F923398();
  v48 = v47;
  LOBYTE(v43) = v49;
  sub_24E601704(&v69, &qword_27F2300A8);
  sub_24E601704(v15, &qword_27F230070);
  v50 = &v17[*(v64 + 36)];
  *v50 = v40 & 1;
  *(v50 + 1) = v48;
  v50[16] = v43 & 1;
  sub_24F927618();
  sub_24F9242E8();
  v51 = v66;
  sub_24E6009C8(v17, v66, &qword_27F230078);
  v52 = (v51 + *(v65 + 36));
  v53 = v74;
  v52[4] = v73;
  v52[5] = v53;
  v52[6] = v75;
  v54 = v70;
  *v52 = v69;
  v52[1] = v54;
  v55 = v72;
  v52[2] = v71;
  v52[3] = v55;
  if ((*v67 & 1) == 0)
  {
    if (qword_27F210D78 == -1)
    {
      goto LABEL_10;
    }

LABEL_9:
    swift_once();
    goto LABEL_10;
  }

  if (qword_27F210D78 != -1)
  {
    swift_once();
  }

  if (qword_27F210D68 != -1)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_24F927618();
  sub_24F9238C8();
  v56 = v68;
  sub_24E6009C8(v51, v68, &qword_27F230080);
  v57 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2300C0) + 36));
  v58 = v77;
  *v57 = v76;
  v57[1] = v58;
  result = *&v78;
  v57[2] = v78;
  return result;
}

uint64_t sub_24EDD26E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OverlayControlsFocusableModule();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v13, a1 + *(v14 + 44), a2, v11);
  (*(v7 + 16))(v9, a1, v6);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  (*(v7 + 32))(v17 + v16, v9, v6);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230008);
  v19 = sub_24EDD31A0();
  return MEMORY[0x25304CBA0](v13, sub_24EDD3784, v17, v18, a2, v19, a3);
}

double sub_24EDD28E8@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a1;
  v77 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230058);
  MEMORY[0x28223BE20](v4);
  v6 = &v71 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230048);
  MEMORY[0x28223BE20](v7);
  v9 = &v71 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230038);
  MEMORY[0x28223BE20](v72);
  v11 = &v71 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230028);
  MEMORY[0x28223BE20](v73);
  v13 = &v71 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230018);
  MEMORY[0x28223BE20](v74);
  v75 = &v71 - v14;
  v15 = sub_24F925838();
  v16 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v15)
  {
    v16 = sub_24F925848();
  }

  v76 = a2;
  sub_24F923318();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_24F927308();
  (*(*(v25 - 8) + 16))(v6, v71, v25);
  v26 = &v6[*(v4 + 36)];
  *v26 = v16;
  *(v26 + 1) = v18;
  *(v26 + 2) = v20;
  *(v26 + 3) = v22;
  *(v26 + 4) = v24;
  v26[40] = 0;
  v27 = sub_24F925858();
  v28 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v27)
  {
    v28 = sub_24F925848();
  }

  sub_24F923318();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_24E6009C8(v6, v9, &qword_27F230058);
  v37 = &v9[*(v7 + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = sub_24F925818();
  v39 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v38)
  {
    v39 = sub_24F925848();
  }

  sub_24F923318();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_24E6009C8(v9, v11, &qword_27F230048);
  v48 = &v11[*(v72 + 36)];
  *v48 = v39;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  v49 = sub_24F925828();
  v50 = sub_24F925848();
  sub_24F925848();
  v51 = sub_24F925848();
  v52 = v76;
  if (v51 != v49)
  {
    v50 = sub_24F925848();
  }

  sub_24F923318();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_24E6009C8(v11, v13, &qword_27F230038);
  v61 = &v13[*(v73 + 36)];
  *v61 = v50;
  *(v61 + 1) = v54;
  *(v61 + 2) = v56;
  *(v61 + 3) = v58;
  *(v61 + 4) = v60;
  v61[40] = 0;
  sub_24F927618();
  sub_24F9242E8();
  v62 = v75;
  sub_24E6009C8(v13, v75, &qword_27F230028);
  v63 = (v62 + *(v74 + 36));
  v64 = v83;
  v63[4] = v82;
  v63[5] = v64;
  v63[6] = v84;
  v65 = v79;
  *v63 = v78;
  v63[1] = v65;
  v66 = v81;
  v63[2] = v80;
  v63[3] = v66;
  if ((*v52 & 1) == 0)
  {
    if (qword_27F210D78 == -1)
    {
      goto LABEL_16;
    }

LABEL_15:
    swift_once();
    goto LABEL_16;
  }

  if (qword_27F210D78 != -1)
  {
    swift_once();
  }

  if (qword_27F210D68 != -1)
  {
    goto LABEL_15;
  }

LABEL_16:
  sub_24F927618();
  sub_24F9238C8();
  v67 = v77;
  sub_24E6009C8(v62, v77, &qword_27F230018);
  v68 = (v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230008) + 36));
  v69 = v86;
  *v68 = v85;
  v68[1] = v69;
  result = *&v87;
  v68[2] = v87;
  return result;
}

uint64_t sub_24EDD2FE0()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for OverlayControlsModule();
  (*(*(v1 - 8) + 8))(v0 + *(v2 + 40) + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_24EDD30E8()
{
  result = qword_27F22FFF8;
  if (!qword_27F22FFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FFF0);
    sub_24EDD31A0();
    sub_24E602068(&qword_27F2195B0, &qword_27F2195B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FFF8);
  }

  return result;
}

unint64_t sub_24EDD31A0()
{
  result = qword_27F230000;
  if (!qword_27F230000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230008);
    sub_24EDD322C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230000);
  }

  return result;
}

unint64_t sub_24EDD322C()
{
  result = qword_27F230010;
  if (!qword_27F230010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230018);
    sub_24EDD32B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230010);
  }

  return result;
}

unint64_t sub_24EDD32B8()
{
  result = qword_27F230020;
  if (!qword_27F230020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230028);
    sub_24EDD3344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230020);
  }

  return result;
}

unint64_t sub_24EDD3344()
{
  result = qword_27F230030;
  if (!qword_27F230030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230038);
    sub_24EDD33D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230030);
  }

  return result;
}

unint64_t sub_24EDD33D0()
{
  result = qword_27F230040;
  if (!qword_27F230040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230048);
    sub_24EDD345C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230040);
  }

  return result;
}

unint64_t sub_24EDD345C()
{
  result = qword_27F230050;
  if (!qword_27F230050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230050);
  }

  return result;
}

unint64_t sub_24EDD34E0()
{
  result = qword_27F230090;
  if (!qword_27F230090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230060);
    sub_24E602068(&qword_27F230098, &qword_27F2300A0);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230090);
  }

  return result;
}

uint64_t sub_24EDD35C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EDD362C()
{
  result = qword_27F212868;
  if (!qword_27F212868)
  {
    sub_24F924258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212868);
  }

  return result;
}

uint64_t sub_24EDD368C()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for OverlayControlsFocusableModule() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[13], v1);

  return swift_deallocObject();
}

uint64_t sub_24EDD37B0(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(a2(0, v5, v6) - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a3(a1, v8, v5, v6);
}

unint64_t sub_24EDD386C()
{
  result = qword_27F2300C8;
  if (!qword_27F2300C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FFE8);
    sub_24EDD38F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2300C8);
  }

  return result;
}

unint64_t sub_24EDD38F8()
{
  result = qword_27F2300D0;
  if (!qword_27F2300D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FFD8);
    sub_24EDD3984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2300D0);
  }

  return result;
}

unint64_t sub_24EDD3984()
{
  result = qword_27F2300D8;
  if (!qword_27F2300D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FFD0);
    sub_24EDD3A3C();
    sub_24E602068(&qword_27F217098, &qword_27F2170A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2300D8);
  }

  return result;
}

unint64_t sub_24EDD3A3C()
{
  result = qword_27F2300E0;
  if (!qword_27F2300E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2300E8);
    sub_24E602068(&qword_27F2300F0, &qword_27F2300F8);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2300E0);
  }

  return result;
}

unint64_t sub_24EDD3B24()
{
  result = qword_27F230100;
  if (!qword_27F230100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2300C0);
    sub_24EDD3BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230100);
  }

  return result;
}

unint64_t sub_24EDD3BB0()
{
  result = qword_27F230108;
  if (!qword_27F230108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230080);
    sub_24EDD3C3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230108);
  }

  return result;
}

unint64_t sub_24EDD3C3C()
{
  result = qword_27F230110;
  if (!qword_27F230110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230078);
    sub_24EDD3CC8();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230110);
  }

  return result;
}

unint64_t sub_24EDD3CC8()
{
  result = qword_27F230118;
  if (!qword_27F230118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2300B8);
    sub_24E602068(&qword_27F230120, &qword_27F2300B0);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230118);
  }

  return result;
}

uint64_t VideoPlayerState.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24EDD3E10()
{
  result = qword_27F230128;
  if (!qword_27F230128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230128);
  }

  return result;
}

uint64_t sub_24EDD3E74(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v25 = v9;
  v26 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_24F92D068();
    sub_24F92B218();

    v16 = sub_24F92D0B8();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v27 = v12;
    v19 = ~v17;
    while (!*(*(a2 + 48) + v18))
    {
      v21 = 0xE700000000000000;
      v20 = 0x636972656E6567;
      if (!v15)
      {
        goto LABEL_27;
      }

LABEL_18:
      if (v15 == 1)
      {
        v22 = 0x6D754E656E6F6870;
      }

      else
      {
        v22 = 0x6464416C69616D65;
      }

      if (v15 == 1)
      {
        v23 = 0xEB00000000726562;
      }

      else
      {
        v23 = 0xEC00000073736572;
      }

      if (v20 == v22)
      {
        goto LABEL_28;
      }

LABEL_29:
      v24 = sub_24F92CE08();

      if (v24)
      {
        goto LABEL_35;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v18) == 1)
    {
      v20 = 0x6D754E656E6F6870;
      v21 = 0xEB00000000726562;
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    v20 = 0x6464416C69616D65;
    v21 = 0xEC00000073736572;
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_27:
    v23 = 0xE700000000000000;
    if (v20 != 0x636972656E6567)
    {
      goto LABEL_29;
    }

LABEL_28:
    if (v21 != v23)
    {
      goto LABEL_29;
    }

LABEL_35:
    v9 = v25;
    v3 = v26;
    v8 = v27;
  }

  while (v27);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EDD4178(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v49 = a2 + 56;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v9 = (v6 - 1) & v6;
LABEL_13:
    v41 = result;
    v12 = (*(result + 48) + ((v8 | (v2 << 6)) << 6));
    v13 = v12[3];
    v15 = *v12;
    v14 = v12[1];
    v57 = v12[2];
    v58 = v13;
    v55 = v15;
    v56 = v14;
    v16 = v12[1];
    v51 = *v12;
    v52 = v16;
    v17 = v12[3];
    v53 = v12[2];
    v54 = v17;
    v18 = a2;
    sub_24F92D068();
    sub_24E8056D8(&v55, v50);
    PageFacets.Facet.Option.hash(into:)();
    v19 = sub_24F92D0B8();
    v20 = -1 << *(v18 + 32);
    v21 = v19 & ~v20;
    if (((*(v49 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_48:
      sub_24E805734(&v55);
      return 0;
    }

    v36 = v9;
    v37 = v7;
    v38 = v2;
    v39 = v3;
    v22 = ~v20;
    v23 = *(&v55 + 1);
    v48 = v56;
    v46 = v55;
    v47 = *(&v56 + 1);
    v42 = v58;
    v43 = v57;
    v44 = *(&v58 + 1);
    v45 = *(&v57 + 1);
    v40 = v18;
    v24 = *(v18 + 48);
    while (1)
    {
      v25 = (v24 + (v21 << 6));
      v26 = v25[1];
      v27 = v25[2];
      v29 = v25[3];
      v28 = v25[4];
      v30 = v25[5];
      v31 = v25[6];
      v32 = v25[7];
      if (v26)
      {
        if (!v23)
        {
          goto LABEL_16;
        }

        v33 = *v25 == v46 && v26 == v23;
        if (!v33 && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (v23)
      {
        goto LABEL_16;
      }

      v34 = v27 == v48 && v29 == v47;
      if (!v34 && (sub_24F92CE08() & 1) == 0)
      {
        goto LABEL_16;
      }

      if (v30)
      {
        if (!v45)
        {
          goto LABEL_16;
        }

        v35 = v28 == v43 && v30 == v45;
        if (!v35 && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (v45)
      {
        goto LABEL_16;
      }

      if (v32)
      {
        break;
      }

      if (!v44)
      {
        goto LABEL_45;
      }

LABEL_16:
      v21 = (v21 + 1) & v22;
      if (((*(v49 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    if (!v44 || (v31 != v42 || v32 != v44) && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_45:
    sub_24E805734(&v55);
    a2 = v40;
    result = v41;
    v2 = v38;
    v3 = v39;
    v6 = v36;
    v7 = v37;
  }

  while (v36);
LABEL_8:
  v10 = v2;
  while (1)
  {
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v2);
    ++v10;
    if (v11)
    {
      v8 = __clz(__rbit64(v11));
      v9 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EDD4478(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_24F92D068();

    sub_24F92B218();
    v16 = sub_24F92D0B8();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_24F92CE08() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EDD4630(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 56);
  v25 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v26 = v9;
  v27 = result;
  if ((v7 & v5) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_24F92D068();
    v28 = v12;
    sub_24F92B218();

    v16 = sub_24F92D0B8();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v19 = ~v17;
    while (!*(*(a2 + 48) + v18))
    {
      v20 = 0x656C6C6174736E69;
      v21 = 0xED0000796C6E4F64;
      if (!v15)
      {
        goto LABEL_27;
      }

LABEL_18:
      if (v15 == 1)
      {
        v22 = 0x6E4F656461637261;
      }

      else
      {
        v22 = 0xD000000000000015;
      }

      if (v15 == 1)
      {
        v23 = 0xEA0000000000796CLL;
      }

      else
      {
        v23 = 0x800000024FA3F9F0;
      }

      if (v20 == v22)
      {
        goto LABEL_28;
      }

LABEL_29:
      v24 = sub_24F92CE08();

      if (v24)
      {
        goto LABEL_35;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v18) == 1)
    {
      v20 = 0x6E4F656461637261;
      v21 = 0xEA0000000000796CLL;
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    v20 = 0xD000000000000015;
    v21 = 0x800000024FA3F9F0;
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_27:
    v23 = 0xED0000796C6E4F64;
    if (v20 != 0x656C6C6174736E69)
    {
      goto LABEL_29;
    }

LABEL_28:
    if (v21 != v23)
    {
      goto LABEL_29;
    }

LABEL_35:
    v9 = v26;
    v3 = v27;
    v8 = v28;
  }

  while (v28);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v25 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EDD4930(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return MEMORY[0x2821FCF40](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        sub_24F922F88();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &unk_27F23B790;
        if (!v13)
        {
LABEL_27:
          v17 = v14;
          while (1)
          {
            v14 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v18 = *(v10 + 8 * v14);
            ++v17;
            if (v18)
            {
              v23 = (v18 - 1) & v18;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v5, v4);
        }

        while (1)
        {
          v23 = (v13 - 1) & v13;
LABEL_32:
          sub_24EDD68B0(&unk_27F23B790, MEMORY[0x277CBCDA8]);

          v19 = sub_24F92AEE8();
          v20 = -1 << *(a2 + 32);
          v21 = v19 & ~v20;
          if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          sub_24EDD68B0(&qword_27F21E520, MEMORY[0x277CBCDA8]);
          while ((sub_24F92AFF8() & 1) == 0)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v23;
          v5 = &unk_27F23B790;
          if (!v23)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_24EDD62C0(v8, v7);
}

uint64_t sub_24EDD4C24(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v25 = v9;
  v26 = result;
  if (v8)
  {
    do
    {
      v11 = __clz(__rbit64(v8));
      v27 = (v8 - 1) & v8;
LABEL_13:
      v14 = *(*(v3 + 48) + (v11 | (v4 << 6)));
      sub_24F92D068();
      v15 = v14 ? 7304045 : 1701736302;
      v16 = v14 ? 0xE300000000000000 : 0xE400000000000000;
      sub_24F92B218();

      v17 = sub_24F92D0B8();
      v18 = -1 << *(a2 + 32);
      v19 = v17 & ~v18;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }

      v20 = ~v18;
      while (1)
      {
        v21 = *(*(a2 + 48) + v19) ? 7304045 : 1701736302;
        v22 = *(*(a2 + 48) + v19) ? 0xE300000000000000 : 0xE400000000000000;
        if (v21 == v15 && v22 == v16)
        {
          break;
        }

        v24 = sub_24F92CE08();

        if (v24)
        {
          goto LABEL_35;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          return 0;
        }
      }

LABEL_35:
      v9 = v25;
      v3 = v26;
      v8 = v27;
    }

    while (v27);
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v27 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EDD4E4C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_24F92D068();
    MEMORY[0x253052A00](v13);
    result = sub_24F92D0B8();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EDD4FBC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = sub_24F92D058();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_24EDD5110(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92AA48();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v33 - v9;
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_24EDD68B0(&qword_27F21BCA0, MEMORY[0x277D224C0]);
        v26 = sub_24F92AEE8();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_24EDD68B0(&qword_27F21BCA8, MEMORY[0x277D224C0]);
          v31 = sub_24F92AFF8();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t CallProviderConversationHandle.conversationHandle.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CallProviderConversationHandle() + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t type metadata accessor for CallProviderConversationHandle()
{
  result = qword_27F230160;
  if (!qword_27F230160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 CallProviderConversationHandle.conversationHandle.setter(__n128 *a1)
{
  v3 = (v1 + *(type metadata accessor for CallProviderConversationHandle() + 20));

  result = *a1;
  *v3 = *a1;
  return result;
}

unint64_t CallProviderConversationHandle.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x72656469766F7270;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = type metadata accessor for CallProvider();
  *(inited + 80) = sub_24EDD68B0(&qword_27F225B48, type metadata accessor for CallProvider);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24EDD64C0(v2, boxed_opaque_existential_1, type metadata accessor for CallProvider);
  *(inited + 88) = 0xD000000000000012;
  *(inited + 96) = 0x800000024FA5DE60;
  v6 = (v2 + *(type metadata accessor for CallProviderConversationHandle() + 20));
  v7 = *v6;
  v8 = v6[1];
  *(inited + 128) = &type metadata for ConversationHandle;
  *(inited + 136) = sub_24EDD5814();
  *(inited + 104) = v7;
  *(inited + 112) = v8;

  v9 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v10 = sub_24E80FFAC(v9);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v10;
  return result;
}

unint64_t sub_24EDD5814()
{
  result = qword_27F230130;
  if (!qword_27F230130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230130);
  }

  return result;
}

uint64_t static CallProviderConversationHandle.== infix(_:_:)(void *a1, void *a2)
{
  if (_s12GameStoreKit12CallProviderV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    v4 = *(type metadata accessor for CallProviderConversationHandle() + 20);
    v5 = *(a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = *v7;
    v9 = v7[1];

    if (sub_24EA15AB8(v5, v8))
    {
      v10 = sub_24EDD3E74(v6, v9);

      if (v10)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_24EDD5950()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x72656469766F7270;
  }
}

uint64_t sub_24EDD5990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA5DE60 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24EDD5A74(uint64_t a1)
{
  v2 = sub_24EDD63C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDD5AB0(uint64_t a1)
{
  v2 = sub_24EDD63C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CallProviderConversationHandle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230138);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDD63C4();
  sub_24F92D128();
  LOBYTE(v13) = 0;
  type metadata accessor for CallProvider();
  sub_24EDD68B0(&qword_27F225B60, type metadata accessor for CallProvider);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for CallProviderConversationHandle() + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_24EDD6418();

    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CallProviderConversationHandle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for CallProvider();
  MEMORY[0x28223BE20](v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230150);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for CallProviderConversationHandle();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDD63C4();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v17;
  LOBYTE(v20) = 0;
  sub_24EDD68B0(&qword_27F225B70, type metadata accessor for CallProvider);
  v14 = v18;
  sub_24F92CC68();
  sub_24EA45FDC(v19, v12);
  v21 = 1;
  sub_24EDD646C();
  sub_24F92CC68();
  (*(v13 + 8))(v8, v14);
  *(v12 + *(v9 + 20)) = v20;
  sub_24EDD64C0(v12, v16, type metadata accessor for CallProviderConversationHandle);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EDD6528(v12, type metadata accessor for CallProviderConversationHandle);
}

uint64_t sub_24EDD601C(void *a1, void *a2, uint64_t a3)
{
  if (static CallProvider.== infix(_:_:)(a1, a2))
  {
    v6 = *(a3 + 20);
    v7 = a1 + v6;
    v8 = *(a1 + v6);
    v9 = *(v7 + 1);
    v10 = (a2 + v6);
    v11 = *v10;
    v12 = v10[1];

    if (sub_24EA15AB8(v8, v11))
    {
      v13 = sub_24EDD3E74(v9, v12);

      if (v13)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

unint64_t sub_24EDD6100@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x72656469766F7270;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = type metadata accessor for CallProvider();
  *(inited + 80) = sub_24EDD68B0(&qword_27F225B48, type metadata accessor for CallProvider);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24EDD64C0(v4, boxed_opaque_existential_1, type metadata accessor for CallProvider);
  *(inited + 88) = 0xD000000000000012;
  *(inited + 96) = 0x800000024FA5DE60;
  v8 = (v4 + *(a1 + 20));
  v9 = *v8;
  v10 = v8[1];
  *(inited + 128) = &type metadata for ConversationHandle;
  *(inited + 136) = sub_24EDD5814();
  *(inited + 104) = v9;
  *(inited + 112) = v10;

  v11 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v12 = sub_24E80FFAC(v11);

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v12;
  return result;
}

uint64_t sub_24EDD62C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_24F92C738();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_24F92C788();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24EDD63C4()
{
  result = qword_27F230140;
  if (!qword_27F230140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230140);
  }

  return result;
}

unint64_t sub_24EDD6418()
{
  result = qword_27F230148;
  if (!qword_27F230148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230148);
  }

  return result;
}

unint64_t sub_24EDD646C()
{
  result = qword_27F230158;
  if (!qword_27F230158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230158);
  }

  return result;
}

uint64_t sub_24EDD64C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EDD6528(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EDD659C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CallProvider();
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

    return (v10 + 1);
  }
}

uint64_t sub_24EDD666C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CallProvider();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24EDD6724()
{
  result = type metadata accessor for CallProvider();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24EDD67AC()
{
  result = qword_27F230170;
  if (!qword_27F230170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230170);
  }

  return result;
}

unint64_t sub_24EDD6804()
{
  result = qword_27F230178;
  if (!qword_27F230178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230178);
  }

  return result;
}

unint64_t sub_24EDD685C()
{
  result = qword_27F230180;
  if (!qword_27F230180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230180);
  }

  return result;
}

uint64_t sub_24EDD68B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EDD6928(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_24EDD6970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EDD69EC@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000024FA5DE80;
  v5 = v1[1];
  v21 = *v1;
  v4 = v21;
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  strcpy((inited + 88), "nameComponent");
  *(inited + 102) = -4864;
  v7 = v1[2];
  v8 = v1[3];
  v20[0] = v5;
  v20[1] = v7;
  v9 = v1[4];
  v10 = v1[5];
  v20[2] = v8;
  v20[3] = v9;
  v11 = v1[6];
  v20[4] = v10;
  v20[5] = v11;
  *(inited + 128) = &type metadata for JSPersonNameComponentsFormatter.Components;
  *(inited + 136) = sub_24EDD6DBC();
  v12 = swift_allocObject();
  *(inited + 104) = v12;
  v13 = v1[2];
  v12[1] = v1[1];
  v12[2] = v13;
  v14 = v1[6];
  v12[5] = v1[5];
  v12[6] = v14;
  v15 = v1[4];
  v12[3] = v1[3];
  v12[4] = v15;
  sub_24E614DB0(&v21, v19);
  sub_24E606840(v20, v19);
  v16 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v17 = sub_24E80FFAC(v16);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v17;
  return result;
}

unint64_t sub_24EDD6BBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x6E49726579616C70;
  *(inited + 40) = 0xEB00000000736F66;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F90);
  v7 = sub_24EDD6E70(&qword_27F212F98, &qword_27F212F90, &unk_24F9482A0, sub_24E606DFC);
  *(inited + 48) = a1;
  *(inited + 80) = v7;
  strcpy((inited + 88), "contactInfos");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230190);
  *(inited + 136) = sub_24EDD6E70(&qword_27F230198, &qword_27F230190, &unk_24F99FE10, sub_24EDD6EEC);
  *(inited + 104) = a2;

  v8 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v9 = sub_24E80FFAC(v8);

  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a3[4] = result;
  *a3 = v9;
  return result;
}

unint64_t sub_24EDD6DBC()
{
  result = qword_27F230188;
  if (!qword_27F230188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230188);
  }

  return result;
}

uint64_t sub_24EDD6E10()
{

  return swift_deallocObject();
}

uint64_t sub_24EDD6E70(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24EDD6EEC()
{
  result = qword_27F2301A0;
  if (!qword_27F2301A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2301A0);
  }

  return result;
}

uint64_t sub_24EDD6F40()
{
  type metadata accessor for ZoomableViewModifier(255);
  sub_24F924038();
  sub_24E6A4C1C();
  sub_24EDE1A8C(&qword_27F217130, type metadata accessor for ZoomableViewModifier);
  swift_getWitnessTable();
  return sub_24F926B08();
}

double static ZoomCoordinator.overlayContentWidth.getter()
{
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27F2301A8 != 1)
  {
    return 374.0;
  }

  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;

  return v2;
}

uint64_t View.tapToDismiss(enabled:)()
{
  sub_24F924038();
  sub_24E6A4C1C();
  sub_24EB67FB4();
  swift_getWitnessTable();
  return sub_24F926B08();
}

double static ZoomCoordinator.containerSize.getter()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;

  return v2;
}

void ZoomCoordinator.ScrollGeometry.init(contentOffsetY:contentInsetTop:contentHeight:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

void static ZoomCoordinator.iPadMaxContainerWidth.getter()
{
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27F2301A8 == 1)
  {
    v0 = [objc_opt_self() mainScreen];
    [v0 bounds];
  }
}

void sub_24EDD7424()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_27F2301A8 = v1 == 0;
}

uint64_t static ZoomCoordinator.isPhone.getter()
{
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return byte_27F2301A8;
}

uint64_t static ZoomCoordinator.isPhone.setter(char a1)
{
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_27F2301A8 = a1 & 1;
  return result;
}

uint64_t (*static ZoomCoordinator.isPhone.modify())()
{
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24EDD7600@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a1 = byte_27F2301A8;
  return result;
}

uint64_t sub_24EDD767C(char *a1)
{
  v1 = *a1;
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_27F2301A8 = v1;
  return result;
}

uint64_t sub_24EDD7704()
{
  result = MEMORY[0x25304D060](0.4, 0.9, 0.0);
  qword_27F2301B0 = result;
  return result;
}

uint64_t static ZoomCoordinator.animation.getter()
{
  if (qword_27F210750 != -1)
  {
    swift_once();
  }
}

uint64_t static ZoomCoordinator.coordinators.getter()
{
  if (qword_27F210758 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t (*static ZoomCoordinator.coordinators.modify())()
{
  if (qword_27F210758 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_24EDD78FC@<X0>(void *a1@<X8>)
{
  if (qword_27F210758 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = off_27F2301B8;
}

uint64_t sub_24EDD797C(void **a1)
{
  v1 = *a1;
  v2 = qword_27F210758;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_27F2301B8 = v1;
}

__n128 sub_24EDD7A54@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  result = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

double sub_24EDD7B3C()
{
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_24EDD7BF4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  swift_beginAccess();
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(*(v4 + 16), v11);
  if (result)
  {
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    *(v4 + 32) = a3;
    *(v4 + 40) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
    sub_24F91FD78();
  }

  return result;
}

void (*sub_24EDD7D50(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EDD7A04();
  return sub_24EDD7E88;
}

double sub_24EDD7E94@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  result = *(v3 + 48);
  *a2 = result;
  return result;
}

double sub_24EDD7F78()
{
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  return *(v0 + 48);
}

uint64_t sub_24EDD802C(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 48) == a1)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
    sub_24F91FD78();
  }

  return result;
}

void (*sub_24EDD8158(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EC7B5F4();
  return sub_24EDD8290;
}

double sub_24EDD829C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  result = *(v3 + 72);
  *a2 = *(v3 + 56);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_24EDD8360(__int128 *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;
  return sub_24EDD8464(&v3);
}

double sub_24EDD83A0@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  result = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24EDD8464(double *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  result = swift_beginAccess();
  if (v1[7] == v3 && v1[8] == v2 && v1[9] == v4)
  {
    v1[7] = v3;
    v1[8] = v2;
    v1[9] = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
    sub_24F91FD78();
  }

  return result;
}

void (*sub_24EDD85B0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EC7B6D0();
  return sub_24EDD86E8;
}

double sub_24EDD86F4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  result = *(v3 + 80);
  *a2 = result;
  return result;
}

double sub_24EDD87D8()
{
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  return *(v0 + 80);
}

uint64_t sub_24EDD888C(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 80) == a1)
  {
    *(v1 + 80) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
    sub_24F91FD78();
  }

  return result;
}

void (*sub_24EDD89B8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EB9739C();
  return sub_24EDD8AF0;
}

uint64_t sub_24EDD8B74(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = type metadata accessor for TransientToolbarItem(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EDE1F5C(a1, v10, type metadata accessor for TransientToolbarItem);
  v11 = *a2;
  v12 = *a5;
  swift_beginAccess();
  sub_24EDE035C(v10, v11 + v12);
  return swift_endAccess();
}

uint64_t sub_24EDD8C4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_24EDE1F5C(v2 + v4, a2, type metadata accessor for TransientToolbarItem);
}

uint64_t sub_24EDD8CC0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_24EDE035C(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_24EDD8D7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_24EDD8E2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24EDD8F80()
{
  swift_getKeyPath();
  v3 = v0;
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  v1 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__presentingOverlay;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_24EDD903C(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__presentingOverlay;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
    sub_24F91FD78();
  }

  return result;
}

void (*sub_24EDD9168(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EDD8EE4();
  return sub_24EDD92A0;
}

uint64_t sub_24EDD930C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F235830);
}

uint64_t sub_24EDD9430@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID;
  swift_beginAccess();
  return sub_24E60169C(v5 + v3, a1, &qword_27F235830);
}

uint64_t sub_24EDD9508(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID;
  swift_beginAccess();
  sub_24E60169C(v1 + v3, v7, &qword_27F235830);
  v4 = sub_24EDE07CC(v7, a1);
  sub_24E601704(v7, &qword_27F235830);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v7[0] = v1;
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
    sub_24F91FD78();
  }

  else
  {
    sub_24E60169C(a1, v7, &qword_27F235830);
    swift_beginAccess();
    sub_24E74EE5C(v7, v1 + v3);
    swift_endAccess();
  }

  return sub_24E601704(a1, &qword_27F235830);
}

uint64_t sub_24EDD96C4(uint64_t a1, uint64_t a2)
{
  sub_24E60169C(a2, v5, &qword_27F235830);
  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID;
  swift_beginAccess();
  sub_24E74EE5C(v5, a1 + v3);
  return swift_endAccess();
}

void (*sub_24EDD974C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EDD92AC();
  return sub_24EDD9884;
}

uint64_t sub_24EDD98F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__actions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_24EDD99B8()
{
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD78();
}

uint64_t sub_24EDD9A84()
{
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
}

uint64_t sub_24EDD9B44()
{
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD78();
}

uint64_t sub_24EDD9C14(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__actions;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void (*sub_24EDD9C84(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EDD9890();
  return sub_24EDD9DBC;
}

void (*sub_24EDD9E90(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EDD9DC8();
  return sub_24EDD9FC8;
}

uint64_t sub_24EDDA048@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  v6 = (v5 + *a2);
  swift_beginAccess();
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t keypath_set_31Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_24EDDA18C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t sub_24EDDA27C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6 == a1 && v6[1] == a2;
  if (v7 || (sub_24F92CE08() & 1) != 0)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
    sub_24F91FD78();
  }
}

uint64_t sub_24EDDA3D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  *v6 = a2;
  v6[1] = a3;
}

void (*sub_24EDDA444(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EDD9FD4();
  return sub_24EDDA57C;
}

double sub_24EDDA5E8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__menuBarHeight;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

double sub_24EDDA6D4()
{
  swift_getKeyPath();
  v3 = v0;
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  v1 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__menuBarHeight;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_24EDDA790(double a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__menuBarHeight;
  result = swift_beginAccess();
  if (*(v1 + v3) == a1)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
    sub_24F91FD78();
  }

  return result;
}

void (*sub_24EDDA8C4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EDDA588();
  return sub_24EDDA9FC;
}

uint64_t ZoomCoordinator.DashboardVisibilityState.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t sub_24EDDAB08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t sub_24EDDAC08@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__dashboardVisibility;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t sub_24EDDACCC(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__dashboardVisibility;
  result = swift_beginAccess();
  if (v2 == *(v1 + v3))
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
    sub_24F91FD78();
  }

  return result;
}

void (*sub_24EDDADF8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24EDDAA94();
  return sub_24EDDAF30;
}

void sub_24EDDAF3C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_24F91FD98();

  free(v1);
}

void *sub_24EDDAFD0()
{
  type metadata accessor for ZoomCoordinator(0);
  swift_allocObject();
  result = sub_24EDDB2C8();
  off_27F2301C0 = result;
  return result;
}

uint64_t static ZoomCoordinator.shared.getter()
{
  if (qword_27F210760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_24EDDB0C0(uint64_t a1, void *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = *a3;
  *a3 = a1;
  return a4(v7);
}

uint64_t (*static ZoomCoordinator.shared.modify())()
{
  if (qword_27F210760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24EDDB1C0@<X0>(void *a1@<X8>)
{
  if (qword_27F210760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = off_27F2301C0;
}

uint64_t sub_24EDDB240(void **a1)
{
  v1 = *a1;
  v2 = qword_27F210760;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_27F2301C0 = v1;
}

uint64_t sub_24EDDB2C8()
{
  *(v0 + 80) = 0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_principalNavBarItem);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  type metadata accessor for TransientToolbarItem(0);
  swift_storeEnumTagMultiPayload();
  v2 = (v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingTransientNavBarItem);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  swift_storeEnumTagMultiPayload();
  v3 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__presentingOverlay) = 0;
  v4 = v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__actions) = v3;
  v5 = (v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__navigationCancelCommandNotificationId);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__activeTabIdentifier);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__menuBarHeight) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__dashboardVisibility) = 1;
  sub_24F91FDB8();
  return v0;
}

double sub_24EDDB3DC()
{
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  v1 = *(v0 + 24);
  swift_getKeyPath();
  sub_24F91FD88();

  return v1 + *(v0 + 40) + 20.0;
}

double sub_24EDDB4E4()
{
  swift_getKeyPath();
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_24F91FD88();

  v2 = *(v0 + 32);
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27F2301A8 == 1)
  {
    v3 = [objc_opt_self() mainScreen];
    [v3 bounds];
    v5 = v4;
  }

  else
  {
    v5 = 374.0;
  }

  swift_getKeyPath();
  sub_24F91FD88();

  swift_getKeyPath();
  sub_24F91FD88();

  v6 = [objc_opt_self() mainScreen];
  [v6 bounds];

  return (v1 + v2 * 0.5) / v5;
}

uint64_t sub_24EDDB74C()
{
  v1 = v0;
  v2 = type metadata accessor for TransientToolbarItem(0);
  MEMORY[0x28223BE20](v2);
  v4 = (v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  *&v29[0] = v0;
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  *&v29[0] = v0;
  swift_getKeyPath();
  sub_24F91FDA8();

  v5 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__actions;
  swift_beginAccess();
  *(v1 + v5) = MEMORY[0x277D84F90];

  *&v29[0] = v1;
  swift_getKeyPath();
  sub_24F91FD98();

  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27F2301A8 == 1)
  {
    v6 = objc_opt_self();
    v7 = [v6 mainScreen];
    [v7 bounds];
    v9 = v8;

    if (byte_27F2301A8 == 1)
    {
      v10 = [v6 mainScreen];
      [v10 bounds];
      v12 = v11;

      v13 = v12 * 0.5;
    }

    else
    {
      v13 = 187.0;
    }

    v14 = v9 - v13;
  }

  else
  {
    v14 = 187.0;
  }

  v15 = [objc_opt_self() mainScreen];
  [v15 bounds];
  v17 = v16;

  v18 = v17 * 0.5;
  swift_beginAccess();
  v31.size.width = 0.0;
  v31.size.height = 0.0;
  v31.origin.x = v14;
  v31.origin.y = v18;
  if (CGRectEqualToRect(*(v1 + 16), v31))
  {
    *(v1 + 16) = v14;
    *(v1 + 24) = v18;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v28[-6] = v1;
    *&v28[-5] = v14;
    *&v28[-4] = v18;
    v28[-3] = 0;
    v28[-2] = 0;
    *&v29[0] = v1;
    sub_24F91FD78();
  }

  v30 = 0;
  memset(v29, 0, sizeof(v29));
  sub_24EDD9508(v29);
  swift_beginAccess();
  if (*(v1 + 48) == 0.0)
  {
    *(v1 + 48) = 0;
  }

  else
  {
    v20 = swift_getKeyPath();
    MEMORY[0x28223BE20](v20);
    v28[-2] = v1;
    v28[-1] = 0;
    v28[7] = v1;
    sub_24F91FD78();
  }

  swift_beginAccess();
  if (*(v1 + 80) == 0.0)
  {
    *(v1 + 80) = 0;
  }

  else
  {
    v21 = swift_getKeyPath();
    MEMORY[0x28223BE20](v21);
    v28[-2] = v1;
    v28[-1] = 0;
    v28[4] = v1;
    sub_24F91FD78();
  }

  *v4 = 0;
  v4[1] = 0xE000000000000000;
  swift_storeEnumTagMultiPayload();
  v22 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_principalNavBarItem;
  swift_beginAccess();
  sub_24EDE035C(v4, v1 + v22);
  swift_endAccess();
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  swift_storeEnumTagMultiPayload();
  v23 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingTransientNavBarItem;
  swift_beginAccess();
  sub_24EDE035C(v4, v1 + v23);
  swift_endAccess();
  v24 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems;
  swift_beginAccess();
  *(v1 + v24) = MEMORY[0x277D84F90];

  v25 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__presentingOverlay;
  result = swift_beginAccess();
  if (*(v1 + v25))
  {
    v27 = swift_getKeyPath();
    MEMORY[0x28223BE20](v27);
    v28[-2] = v1;
    LOBYTE(v28[-1]) = 0;
    v28[0] = v1;
    sub_24F91FD78();
  }

  else
  {
    *(v1 + v25) = 0;
  }

  return result;
}

uint64_t sub_24EDDBDA0(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for TransientToolbarItem(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ZoomCoordinator(0);
  swift_allocObject();
  v6 = sub_24EDDB2C8();
  swift_getKeyPath();
  v36[0] = v1;
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
  sub_24F91FD88();

  swift_beginAccess();
  v8 = v1[2];
  v7 = v1[3];
  v10 = v1[4];
  v9 = v1[5];
  swift_beginAccess();
  v37.origin.x = v8;
  v37.origin.y = v7;
  v37.size.width = v10;
  v37.size.height = v9;
  if (CGRectEqualToRect(*(v6 + 16), v37))
  {
    *(v6 + 16) = v8;
    *(v6 + 24) = v7;
    *(v6 + 32) = v10;
    *(v6 + 40) = v9;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v34 - 6) = v6;
    *(&v34 - 5) = v8;
    *(&v34 - 4) = v7;
    *(&v34 - 3) = v10;
    *(&v34 - 2) = v9;
    v36[0] = v6;
    sub_24F91FD78();
  }

  swift_getKeyPath();
  v36[0] = v1;
  sub_24F91FD88();

  swift_beginAccess();
  v12 = v1[6];
  swift_beginAccess();
  if (*(v6 + 48) == v12)
  {
    *(v6 + 48) = v12;
  }

  else
  {
    v13 = swift_getKeyPath();
    MEMORY[0x28223BE20](v13);
    *(&v34 - 2) = v6;
    *(&v34 - 1) = v12;
    v36[0] = v6;
    sub_24F91FD78();
  }

  swift_getKeyPath();
  v36[0] = v1;
  sub_24F91FD88();

  swift_beginAccess();
  v15 = v1[7];
  v14 = v1[8];
  v16 = v1[9];
  swift_beginAccess();
  if (*(v6 + 56) == v15 && *(v6 + 64) == v14 && *(v6 + 72) == v16)
  {
    *(v6 + 56) = v15;
    *(v6 + 64) = v14;
    *(v6 + 72) = v16;
  }

  else
  {
    v17 = swift_getKeyPath();
    MEMORY[0x28223BE20](v17);
    *(&v34 - 4) = v6;
    *(&v34 - 3) = v15;
    *(&v34 - 2) = v14;
    *(&v34 - 1) = v16;
    v36[0] = v6;
    sub_24F91FD78();
  }

  swift_getKeyPath();
  v36[0] = v1;
  sub_24F91FD88();

  swift_beginAccess();
  v18 = v1[10];
  swift_beginAccess();
  if (*(v6 + 80) == v18)
  {
    *(v6 + 80) = v18;
  }

  else
  {
    v19 = swift_getKeyPath();
    MEMORY[0x28223BE20](v19);
    *(&v34 - 2) = v6;
    *(&v34 - 1) = v18;
    v36[0] = v6;
    sub_24F91FD78();
  }

  v20 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_principalNavBarItem;
  swift_beginAccess();
  sub_24EDE1F5C(v1 + v20, v5, type metadata accessor for TransientToolbarItem);
  v21 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_principalNavBarItem;
  swift_beginAccess();
  sub_24EDE035C(v5, v6 + v21);
  swift_endAccess();
  v22 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingTransientNavBarItem;
  swift_beginAccess();
  sub_24EDE1F5C(v1 + v22, v5, type metadata accessor for TransientToolbarItem);
  v23 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingTransientNavBarItem;
  swift_beginAccess();
  sub_24EDE035C(v5, v6 + v23);
  swift_endAccess();
  v24 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems;
  swift_beginAccess();
  v25 = *(v2 + v24);
  v26 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems;
  swift_beginAccess();
  *(v6 + v26) = v25;

  swift_getKeyPath();
  v36[0] = v2;
  sub_24F91FD88();

  v27 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__presentingOverlay;
  swift_beginAccess();
  v28 = *(v2 + v27);
  v29 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__presentingOverlay;
  swift_beginAccess();
  if (v28 == *(v6 + v29))
  {
    *(v6 + v29) = v28;
  }

  else
  {
    v30 = swift_getKeyPath();
    MEMORY[0x28223BE20](v30);
    *(&v34 - 2) = v6;
    *(&v34 - 8) = v28;
    v36[0] = v6;
    sub_24F91FD78();
  }

  swift_getKeyPath();
  v36[0] = v2;
  sub_24F91FD88();

  v31 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID;
  swift_beginAccess();
  sub_24E60169C(v2 + v31, v36, &qword_27F235830);
  sub_24EDD9508(v36);
  if (qword_27F210758 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = off_27F2301B8;
  off_27F2301B8 = 0x8000000000000000;
  sub_24E820E4C(v6, v34, isUniquelyReferenced_nonNull_native);
  off_27F2301B8 = v35;
  swift_endAccess();
}

uint64_t sub_24EDDC5F0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TransientToolbarItem(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65864C(a1, v40);
  if (swift_dynamicCast())
  {
    v7 = v39[43];
    v8 = v39[44];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  sub_24EDDA254(v7, v8);
  if (qword_27F210758 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = off_27F2301B8;
  if (!*(off_27F2301B8 + 2))
  {
    return swift_endAccess();
  }

  v10 = sub_24E76D934(a1);
  if ((v11 & 1) == 0)
  {
    return swift_endAccess();
  }

  v12 = *(v9[7] + 8 * v10);
  swift_endAccess();
  swift_getKeyPath();
  v40[0] = v12;
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);

  sub_24F91FD88();

  swift_beginAccess();
  v14 = v12[2];
  v13 = v12[3];
  v16 = v12[4];
  v15 = v12[5];
  swift_beginAccess();
  v41.origin.x = v14;
  v41.origin.y = v13;
  v41.size.width = v16;
  v41.size.height = v15;
  if (CGRectEqualToRect(*(v2 + 16), v41))
  {
    *(v2 + 16) = v14;
    *(v2 + 24) = v13;
    *(v2 + 32) = v16;
    *(v2 + 40) = v15;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v39[-6] = v2;
    *&v39[-5] = v14;
    *&v39[-4] = v13;
    *&v39[-3] = v16;
    *&v39[-2] = v15;
    v40[0] = v2;
    sub_24F91FD78();
  }

  swift_getKeyPath();
  v40[0] = v12;
  sub_24F91FD88();

  swift_beginAccess();
  v19 = v12[6];
  swift_beginAccess();
  if (*(v2 + 48) == v19)
  {
    *(v2 + 48) = v19;
  }

  else
  {
    v20 = swift_getKeyPath();
    MEMORY[0x28223BE20](v20);
    v39[-2] = v2;
    *&v39[-1] = v19;
    v40[0] = v2;
    sub_24F91FD78();
  }

  swift_getKeyPath();
  v40[0] = v12;
  sub_24F91FD88();

  swift_beginAccess();
  v22 = v12[7];
  v21 = v12[8];
  v23 = v12[9];
  swift_beginAccess();
  if (*(v2 + 56) == v22 && *(v2 + 64) == v21 && *(v2 + 72) == v23)
  {
    *(v2 + 56) = v22;
    *(v2 + 64) = v21;
    *(v2 + 72) = v23;
  }

  else
  {
    v24 = swift_getKeyPath();
    MEMORY[0x28223BE20](v24);
    v39[-4] = v2;
    *&v39[-3] = v22;
    *&v39[-2] = v21;
    *&v39[-1] = v23;
    v40[0] = v2;
    sub_24F91FD78();
  }

  swift_getKeyPath();
  v40[0] = v12;
  sub_24F91FD88();

  swift_beginAccess();
  v25 = v12[10];
  swift_beginAccess();
  if (*(v2 + 80) == v25)
  {
    *(v2 + 80) = v25;
  }

  else
  {
    v26 = swift_getKeyPath();
    MEMORY[0x28223BE20](v26);
    v39[-2] = v2;
    *&v39[-1] = v25;
    v40[0] = v2;
    sub_24F91FD78();
  }

  v27 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_principalNavBarItem;
  swift_beginAccess();
  sub_24EDE1F5C(v12 + v27, v6, type metadata accessor for TransientToolbarItem);
  v28 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_principalNavBarItem;
  swift_beginAccess();
  sub_24EDE035C(v6, v2 + v28);
  swift_endAccess();
  v29 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingTransientNavBarItem;
  swift_beginAccess();
  sub_24EDE1F5C(v12 + v29, v6, type metadata accessor for TransientToolbarItem);
  v30 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingTransientNavBarItem;
  swift_beginAccess();
  sub_24EDE035C(v6, v2 + v30);
  swift_endAccess();
  v31 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems;
  swift_beginAccess();
  v32 = *(v12 + v31);
  v33 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems;
  swift_beginAccess();
  *(v2 + v33) = v32;

  swift_getKeyPath();
  v40[0] = v12;
  sub_24F91FD88();

  v34 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__presentingOverlay;
  swift_beginAccess();
  v35 = *(v12 + v34);
  v36 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__presentingOverlay;
  swift_beginAccess();
  if (v35 == *(v2 + v36))
  {
    *(v2 + v36) = v35;
  }

  else
  {
    v37 = swift_getKeyPath();
    MEMORY[0x28223BE20](v37);
    v39[-2] = v2;
    LOBYTE(v39[-1]) = v35;
    v40[0] = v2;
    sub_24F91FD78();
  }

  swift_getKeyPath();
  v40[0] = v12;
  sub_24F91FD88();

  v38 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID;
  swift_beginAccess();
  sub_24E60169C(v12 + v38, v40, &qword_27F235830);
  sub_24EDD9508(v40);
}

uint64_t ZoomCoordinator.deinit()
{
  sub_24EDE1ADC(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_principalNavBarItem, type metadata accessor for TransientToolbarItem);
  sub_24EDE1ADC(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingTransientNavBarItem, type metadata accessor for TransientToolbarItem);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID, &qword_27F235830);

  v1 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ZoomCoordinator.__deallocating_deinit()
{
  sub_24EDE1ADC(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_principalNavBarItem, type metadata accessor for TransientToolbarItem);
  sub_24EDE1ADC(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingTransientNavBarItem, type metadata accessor for TransientToolbarItem);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID, &qword_27F235830);

  v1 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24EDDD0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a1;
  v39 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230278);
  MEMORY[0x28223BE20](v37);
  v38 = &v30 - v4;
  v5 = type metadata accessor for ZoomableViewModifier(0);
  v31 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v32 = v6;
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230280);
  MEMORY[0x28223BE20](v36);
  v34 = &v30 - v7;
  v8 = sub_24F924848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v5[6];
  sub_24E60169C(v2 + v12, v49, &qword_27F2171D0);
  if (v50)
  {
    __swift_project_boxed_opaque_existential_1(v49, v50);
    sub_24F928D68();
    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    sub_24E601704(v49, &qword_27F2171D0);
    memset(v51, 0, sizeof(v51));
    v52 = 0;
  }

  sub_24E60169C(v2 + v5[8], &v47, &qword_27F2171C8);
  if (v48)
  {
    sub_24E612C80(&v47, v49);
  }

  else
  {
    sub_24EDDD7F4(v49);
    if (v48)
    {
      sub_24E601704(&v47, &qword_27F2171C8);
    }
  }

  v13 = v2 + v5[5];
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    if ((v14 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {

    sub_24F92BDC8();
    v15 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v14, 0);
    (*(v9 + 8))(v11, v8);
    if ((v47 & 1) == 0)
    {
LABEL_20:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230288);
      (*(*(v28 - 8) + 16))(v38, v35, v28);
      swift_storeEnumTagMultiPayload();
      sub_24EDE1E34();
      sub_24E602068(&qword_27F230298, &qword_27F230288);
      sub_24F924E28();
      __swift_destroy_boxed_opaque_existential_1(v49);
      return sub_24E601704(v51, &qword_27F235830);
    }
  }

  sub_24E60169C(v3 + v5[7], &v42, qword_27F21B590);
  if (v43)
  {
    sub_24E612C80(&v42, &v44);
    goto LABEL_17;
  }

  sub_24E60169C(v3 + v12, &v40, &qword_27F2171D0);
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(&v40, v41);
    sub_24F928D78();
    __swift_destroy_boxed_opaque_existential_1(&v40);
    if (!v43)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  sub_24E601704(&v40, &qword_27F2171D0);
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  if (v43)
  {
LABEL_16:
    sub_24E601704(&v42, qword_27F21B590);
  }

LABEL_17:
  if (!*(&v45 + 1))
  {
    sub_24E601704(&v44, qword_27F21B590);
    goto LABEL_20;
  }

  sub_24E612C80(&v44, &v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230288);
  sub_24E602068(&qword_27F230298, &qword_27F230288);
  v16 = v34;
  sub_24F926B78();
  v35 = sub_24F927618();
  v30 = v17;
  v18 = v33;
  sub_24EDE1F5C(v3, v33, type metadata accessor for ZoomableViewModifier);
  sub_24E60169C(v51, &v44, &qword_27F235830);
  sub_24E615E00(&v47, &v42);
  sub_24E615E00(v49, &v40);
  v19 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v20 = (v32 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 47) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_24EDE2164(v18, v22 + v19);
  v23 = v22 + v20;
  v24 = v45;
  *v23 = v44;
  *(v23 + 16) = v24;
  *(v23 + 32) = v46;
  sub_24E612C80(&v42, v22 + v21);
  sub_24E612C80(&v40, v22 + ((v21 + 47) & 0xFFFFFFFFFFFFFFF8));
  v25 = v35;
  v26 = (v16 + *(v36 + 36));
  *v26 = sub_24EDE21C8;
  v26[1] = v22;
  v27 = v30;
  v26[2] = v25;
  v26[3] = v27;
  sub_24EDE228C(v16, v38);
  swift_storeEnumTagMultiPayload();
  sub_24EDE1E34();
  sub_24F924E28();
  sub_24E601704(v16, &qword_27F230280);
  __swift_destroy_boxed_opaque_existential_1(&v47);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_24E601704(v51, &qword_27F235830);
}

uint64_t sub_24EDDD7F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_24F924B38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230300);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230308);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29[-v11 - 8];
  v13 = *(type metadata accessor for ZoomableViewModifier(0) + 24);
  sub_24E60169C(v1 + v13, v29, &qword_27F2171D0);
  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
    v14 = type metadata accessor for CenteredCapsuleButton();
    v15 = swift_dynamicCast();
    (*(*(v14 - 8) + 56))(v12, v15 ^ 1u, 1, v14);
  }

  else
  {
    sub_24E601704(v29, &qword_27F2171D0);
    v14 = type metadata accessor for CenteredCapsuleButton();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  type metadata accessor for CenteredCapsuleButton();
  if ((*(*(v14 - 8) + 48))(v12, 1, v14))
  {
    sub_24E60169C(v1 + v13, v29, &qword_27F2171D0);
    if (v30)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      v16 = type metadata accessor for OverlayCapsuleLockup(0);
      v17 = swift_dynamicCast();
      (*(*(v16 - 8) + 56))(v9, v17 ^ 1u, 1, v16);
    }

    else
    {
      sub_24E601704(v29, &qword_27F2171D0);
      v16 = type metadata accessor for OverlayCapsuleLockup(0);
      (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    }

    type metadata accessor for OverlayCapsuleLockup(0);
    v18 = (*(*(v16 - 8) + 48))(v9, 1, v16);
    sub_24E601704(v9, &qword_27F230300);
    sub_24E601704(v12, &qword_27F230308);
    if (v18)
    {
      (*(v4 + 104))(v6, *MEMORY[0x277CE0118], v3);
      v19 = sub_24F924258();
      a1[3] = v19;
      a1[4] = sub_24EDE1A8C(&qword_27F212868, MEMORY[0x277CDFC08]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      (*(v4 + 16))(boxed_opaque_existential_1 + *(v19 + 20), v6, v3);
      __asm { FMOV            V0.2D, #30.0 }

      *boxed_opaque_existential_1 = _Q0;
      return (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    sub_24E601704(v12, &qword_27F230308);
  }

  a1[3] = sub_24F9271D8();
  a1[4] = sub_24EDE1A8C(&qword_27F214E38, MEMORY[0x277CE1260]);
  v27 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(v4 + 104))(v27, *MEMORY[0x277CE0118], v3);
}

uint64_t sub_24EDDDD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a5;
  v39 = a4;
  v42 = a3;
  v47 = a2;
  v38 = a1;
  v48 = a6;
  v8 = sub_24F9239C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ZoomableViewModifier(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v14;
  v41 = v14;
  v16 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2302B0);
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v18 = &v37 - v17;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2302B8);
  MEMORY[0x28223BE20](v45);
  v37 = &v37 - v19;
  v46 = type metadata accessor for ZoomableViewModifier;
  sub_24EDE1F5C(a2, v16, type metadata accessor for ZoomableViewModifier);
  (*(v9 + 16))(v11, v38, v8);
  sub_24E60169C(a3, &v50, &qword_27F235830);
  sub_24E615E00(v39, v54);
  v39 = *(v13 + 80);
  v20 = (v39 + 16) & ~v39;
  v38 = v39 | 7;
  v21 = (v15 + *(v9 + 80) + v20) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_24EDE2164(v16, v23 + v20);
  (*(v9 + 32))(v23 + v21, v11, v8);
  v24 = v23 + v22;
  v25 = v51;
  *v24 = v50;
  *(v24 + 16) = v25;
  *(v24 + 32) = v52;
  sub_24E612C80(v54, v23 + ((v22 + 47) & 0xFFFFFFFFFFFFFFF8));
  v26 = v40;
  v49 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2302C0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2302C8);
  v28 = sub_24EDE2624();
  v53[5] = v27;
  v53[6] = v28;
  swift_getOpaqueTypeConformance2();
  sub_24F926F88();
  sub_24E602068(&qword_27F2302E8, &qword_27F2302B0);
  v29 = v37;
  v30 = v43;
  sub_24F9265E8();
  (*(v44 + 8))(v18, v30);
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_24E615E00(v26, v53);
  sub_24EDE26DC();
  sub_24E620DE8();
  v31 = v48;
  sub_24F926178();
  sub_24E6A56E8(&v50);
  sub_24E601704(v29, &qword_27F2302B8);
  sub_24E60169C(v42, &v50, &qword_27F235830);
  sub_24EDE1F5C(v47, v16, v46);
  v32 = (v39 + 56) & ~v39;
  v33 = swift_allocObject();
  v34 = v51;
  *(v33 + 16) = v50;
  *(v33 + 32) = v34;
  *(v33 + 48) = v52;
  sub_24EDE2164(v16, v33 + v32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2302F8);
  v36 = (v31 + *(result + 36));
  *v36 = sub_24EDDF338;
  v36[1] = 0;
  v36[2] = sub_24EDE2938;
  v36[3] = v33;
  return result;
}

uint64_t sub_24EDDE2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v45 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v7 = sub_24F925048();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = off_27F2301C0;

  sub_24F925258();
  sub_24F9239B8();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v8 + 8))(v10, v7);
  sub_24EDDEABC(v13, v15, v17, v19);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  swift_beginAccess();
  v57.origin.x = v21;
  v57.origin.y = v23;
  v57.size.width = v25;
  v57.size.height = v27;
  if (CGRectEqualToRect(*(v11 + 16), v57))
  {
    *(v11 + 2) = v21;
    *(v11 + 3) = v23;
    *(v11 + 4) = v25;
    *(v11 + 5) = v27;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v44 - 6) = v11;
    *(&v44 - 5) = v21;
    *(&v44 - 4) = v23;
    *(&v44 - 3) = v25;
    *(&v44 - 2) = v27;
    *&v49 = v11;
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);
    sub_24F91FD78();
  }

  v29 = off_27F2301C0;
  swift_getKeyPath();
  *&v49 = v29;
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);

  sub_24F91FD88();

  v30 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID;
  swift_beginAccess();
  sub_24E60169C(v29 + v30, v55, &qword_27F235830);

  sub_24E60169C(v55, &v49, &qword_27F235830);
  sub_24E60169C(v45, &v52, &qword_27F235830);
  if (!*(&v50 + 1))
  {
    sub_24E601704(v55, &qword_27F235830);
    if (!*(&v53 + 1))
    {
      sub_24E601704(&v49, &qword_27F235830);
      goto LABEL_12;
    }

LABEL_14:
    sub_24E601704(&v49, &qword_27F21B438);
LABEL_15:
    v40 = off_27F2301C0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_24F93DE60;
    sub_24E615E00(v44, v41 + 32);
    v42 = swift_getKeyPath();
    MEMORY[0x28223BE20](v42);
    *(&v44 - 2) = v40;
    *(&v44 - 1) = v41;
    *&v49 = v40;

    sub_24F91FD78();

    sub_24E60169C(v45, &v49, &qword_27F235830);

    sub_24EDD9508(&v49);
  }

  sub_24E60169C(&v49, v48, &qword_27F235830);
  if (!*(&v53 + 1))
  {
    sub_24E601704(v55, &qword_27F235830);
    sub_24E6585F8(v48);
    goto LABEL_14;
  }

  v46[0] = v52;
  v46[1] = v53;
  v47 = v54;
  v31 = MEMORY[0x253052150](v48, v46);
  sub_24E6585F8(v46);
  sub_24E601704(v55, &qword_27F235830);
  sub_24E6585F8(v48);
  sub_24E601704(&v49, &qword_27F235830);
  if ((v31 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v32 = off_27F2301C0;
  v33 = swift_getKeyPath();
  MEMORY[0x28223BE20](v33);
  v34 = MEMORY[0x277D84F90];
  *(&v44 - 2) = v32;
  *(&v44 - 1) = v34;
  *&v49 = v32;

  sub_24F91FD78();

  v51 = 0;
  v49 = 0u;
  v50 = 0u;

  sub_24EDD9508(&v49);

  v35 = sub_24F92B858();
  (*(*(v35 - 8) + 56))(v6, 1, 1, v35);
  sub_24E615E00(v44, &v49);
  sub_24E60169C(v45, v55, &qword_27F235830);
  sub_24F92B7F8();
  v36 = sub_24F92B7E8();
  v37 = swift_allocObject();
  v38 = MEMORY[0x277D85700];
  *(v37 + 16) = v36;
  *(v37 + 24) = v38;
  sub_24E612C80(&v49, v37 + 32);
  v39 = v55[1];
  *(v37 + 72) = v55[0];
  *(v37 + 88) = v39;
  *(v37 + 104) = v56;
  sub_24EA998B8(0, 0, v6, &unk_24F9A04D8, v37);
}

void sub_24EDDEABC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = sub_24F923F78();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  sub_24F7699B0(v14);
  (*(v9 + 104))(v11, *MEMORY[0x277CDFA90], v8);
  v17 = sub_24F923F68();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v18(v14, v8);
  if (v16)
  {
    if (v17)
    {
      if (qword_27F210748 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_27F2301A8 == 1)
      {
        v19 = [objc_opt_self() mainScreen];
        [v19 bounds];
        v21 = v20;

        v22 = v21 + 10.0;
      }

      else
      {
        v22 = 384.0;
      }

      v42.size.height = a4;
      v34 = a1;
      v42.origin.x = a1;
      v42.origin.y = a2;
      v42.size.width = a3;
      height = v42.size.height;
      v26 = v22 - CGRectGetWidth(v42) - (v34 + v34);
      v36 = v34;
      v37 = a2;
      v38 = a3;
      v39 = height;
      goto LABEL_19;
    }

    v27 = objc_opt_self();
    v28 = [v27 mainScreen];
    [v28 bounds];
    v30 = v29;

    if (qword_27F210748 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_27F2301A8 == 1)
    {
      v31 = [v27 mainScreen];
      [v31 bounds];
      v33 = v32;
    }

    else
    {
      v33 = 374.0;
    }

    v26 = v33 - v30 + 10.0;
LABEL_18:
    v36 = a1;
    v37 = a2;
    v38 = a3;
    v39 = a4;
LABEL_19:
    CGRectOffset(*&v36, v26, 0.0);
    return;
  }

  if (v17)
  {
    v23 = [objc_opt_self() mainScreen];
    [v23 bounds];
    v25 = v24;

    v41.origin.x = a1;
    v41.origin.y = a2;
    v41.size.width = a3;
    v41.size.height = a4;
    v26 = v25 - CGRectGetWidth(v41) - (a1 + a1);
    goto LABEL_18;
  }
}

uint64_t sub_24EDDEEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_24F92B7F8();
  v5[12] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EDDEF44, v7, v6);
}

uint64_t sub_24EDDEF44()
{

  if (qword_27F210760 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  swift_beginAccess();
  v3 = off_27F2301C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F93DE60;
  sub_24E615E00(v2, v4 + 32);
  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v0[2] = v3;
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);

  sub_24F91FD78();

  sub_24E60169C(v1, (v0 + 2), &qword_27F235830);

  sub_24EDD9508((v0 + 2));

  v6 = v0[1];

  return v6();
}

uint64_t sub_24EDDF158(void *a1)
{
  v2 = sub_24F9248C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F926C98();
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = MEMORY[0x28223BE20](v7);
  (*(v10 + 16))(v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v11 = sub_24F927348();
  sub_24F9248B8();
  v13[1] = v6;
  v13[2] = v11;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2302C8);
  sub_24EDE2624();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v2);
}

uint64_t sub_24EDDF338@<X0>(void *a1@<X8>)
{
  v2 = sub_24F925048();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F925258();
  sub_24F9239B8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

uint64_t sub_24EDDF444(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_24E60169C(a2, &v23, &qword_27F235830);
  if (!*(&v24 + 1))
  {
    return sub_24E601704(&v23, &qword_27F235830);
  }

  v31[0] = v23;
  v31[1] = v24;
  v32 = v25;
  sub_24E65864C(v31, v30);
  if (qword_27F210760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_27F2301C0;
  swift_getKeyPath();
  *&v23 = v6;
  sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);

  sub_24F91FD88();

  v7 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__sourceID;
  swift_beginAccess();
  sub_24E60169C(v6 + v7, v29, &qword_27F235830);

  sub_24E60169C(v30, &v23, &qword_27F235830);
  sub_24E60169C(v29, &v26, &qword_27F235830);
  if (!*(&v24 + 1))
  {
    sub_24E601704(v29, &qword_27F235830);
    sub_24E601704(v30, &qword_27F235830);
    if (!*(&v27 + 1))
    {
      sub_24E601704(&v23, &qword_27F235830);
      goto LABEL_11;
    }

LABEL_15:
    sub_24E601704(&v23, &qword_27F21B438);
    return sub_24E6585F8(v31);
  }

  sub_24E60169C(&v23, v22, &qword_27F235830);
  if (!*(&v27 + 1))
  {
    sub_24E601704(v29, &qword_27F235830);
    sub_24E601704(v30, &qword_27F235830);
    sub_24E6585F8(v22);
    goto LABEL_15;
  }

  v20[0] = v26;
  v20[1] = v27;
  v21 = v28;
  v8 = MEMORY[0x253052150](v22, v20);
  sub_24E6585F8(v20);
  sub_24E601704(v29, &qword_27F235830);
  sub_24E601704(v30, &qword_27F235830);
  sub_24E6585F8(v22);
  sub_24E601704(&v23, &qword_27F235830);
  if ((v8 & 1) == 0)
  {
    return sub_24E6585F8(v31);
  }

LABEL_11:
  v10 = off_27F2301C0;

  sub_24EDDEABC(v2, v3, v4, v5);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  swift_beginAccess();
  v33.origin.x = v12;
  v33.origin.y = v14;
  v33.size.width = v16;
  v33.size.height = v18;
  if (CGRectEqualToRect(*(v10 + 16), v33))
  {
    sub_24E6585F8(v31);
    *(v10 + 2) = v12;
    *(v10 + 3) = v14;
    *(v10 + 4) = v16;
    *(v10 + 5) = v18;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v30[0] = v10;
    sub_24F91FD78();

    sub_24E6585F8(v31);
  }
}

uint64_t sub_24EDDF8A8()
{
  if (qword_27F210760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_27F2301C0;
  v1 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__dashboardVisibility;
  result = swift_beginAccess();
  if (v0[v1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EDE1A8C(&qword_27F2301D0, type metadata accessor for ZoomCoordinator);

    sub_24F91FD78();
  }

  else
  {
    v0[v1] = 0;
  }

  return result;
}

uint64_t sub_24EDDFA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[0] = a2;
  v15[1] = a1;
  v3 = sub_24F923488();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220ED8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - v9;
  v11 = *v2;
  v12 = *(v2 + 8);
  v13 = *(v2 + 9);
  sub_24F923478();
  sub_24F927268();
  (*(v4 + 8))(v6, v3);
  if (v13 == 1 && (sub_24F769A00(v11, v12) & 1) != 0)
  {
    sub_24F9235A8();
  }

  else
  {
    sub_24F9235B8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230240);
  sub_24E602068(&qword_27F230248, &qword_27F230240);
  sub_24E602068(&qword_27F220EE0, &qword_27F220ED8);
  sub_24F9269D8();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24EDDFCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27[1] = a1;
  v28 = a6;
  v29 = a7;
  v11 = type metadata accessor for ZoomableViewModifier(0);
  MEMORY[0x28223BE20](v11);
  v13 = (v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_24F924038();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v27 - v19;
  sub_24E60169C(a2, v13 + v11[6], &qword_27F2171D0);
  sub_24E60169C(a3, v13 + v11[7], qword_27F21B590);
  sub_24E60169C(a4, v13 + v11[8], &qword_27F2171C8);
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  v21 = v13 + v11[5];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v28;
  MEMORY[0x25304C420](v13, a5, v11, v28);
  sub_24EDE1ADC(v13, type metadata accessor for ZoomableViewModifier);
  v23 = sub_24EDE1A8C(&qword_27F217130, type metadata accessor for ZoomableViewModifier);
  v30 = v22;
  v31 = v23;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v17, v14, WitnessTable);
  v25 = *(v15 + 8);
  v25(v17, v14);
  sub_24E7896B8(v20, v14, WitnessTable);
  return (v25)(v20, v14);
}

uint64_t sub_24EDDFF8C@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v18[1] = a4;
  v7 = sub_24F924038();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v18 - v12;
  KeyPath = swift_getKeyPath();
  v20 = 0;
  v21 = a1;
  MEMORY[0x25304C420](&KeyPath, a2, &type metadata for OverlayTapToDismiss, a3);

  v14 = sub_24EB67FB4();
  v18[2] = a3;
  v18[3] = v14;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v10, v7, WitnessTable);
  v16 = *(v8 + 8);
  v16(v10, v7);
  sub_24E7896B8(v13, v7, WitnessTable);
  return (v16)(v13, v7);
}

__n128 sub_24EDE01A8()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_beginAccess();
  result = v4;
  *(v1 + 16) = v4;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_24EDE022C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 48) = v2;
  return result;
}

uint64_t sub_24EDE0284(__int128 *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;
  return sub_24EDD8464(&v3);
}

uint64_t sub_24EDE0308()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 80) = v2;
  return result;
}

uint64_t sub_24EDE035C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransientToolbarItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDE0474@<X0>(_BYTE *a1@<X8>)
{
  sub_24EDE0B70();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.shouldZoomOnSegue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_24EDE0B70();
  sub_24F924868();
  *(a1 + 16) = *(a1 + 17);
  return sub_24EDE0598;
}

uint64_t (*EnvironmentValues.isPresentedInOverlay.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_24EDE0BC4();
  sub_24F924868();
  *(a1 + 16) = *(a1 + 17);
  return sub_24EDE064C;
}

uint64_t sub_24EDE0678(void (*a1)(void))
{
  a1();
  sub_24F924868();
  return v2;
}

uint64_t (*EnvironmentValues.isTopmostViewInOverlay.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_24EDE0C18();
  sub_24F924868();
  *(a1 + 16) = *(a1 + 17);
  return sub_24EDE0790;
}

uint64_t sub_24EDE07CC(uint64_t a1, uint64_t a2)
{
  sub_24E60169C(a1, v9, &qword_27F235830);
  sub_24E60169C(a2, &v11, &qword_27F235830);
  if (!v10)
  {
    if (!*(&v12 + 1))
    {
      sub_24E601704(v9, &qword_27F235830);
      v4 = 0;
      return v4 & 1;
    }

LABEL_7:
    sub_24E601704(v9, &qword_27F21B438);
    v4 = 1;
    return v4 & 1;
  }

  sub_24E60169C(v9, v8, &qword_27F235830);
  if (!*(&v12 + 1))
  {
    sub_24E6585F8(v8);
    goto LABEL_7;
  }

  v6[0] = v11;
  v6[1] = v12;
  v7 = v13;
  v3 = MEMORY[0x253052150](v8, v6);
  sub_24E6585F8(v6);
  sub_24E6585F8(v8);
  sub_24E601704(v9, &qword_27F235830);
  v4 = v3 ^ 1;
  return v4 & 1;
}

uint64_t sub_24EDE09F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__menuBarHeight;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

__n128 sub_24EDE0AB0()
{
  v1 = *(v0 + 16);
  v4 = *(v0 + 24);
  v2 = *(v0 + 40);
  swift_beginAccess();
  result = v4;
  *(v1 + 56) = v4;
  *(v1 + 72) = v2;
  return result;
}

uint64_t sub_24EDE0B14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__presentingOverlay;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_24EDE0B70()
{
  result = qword_27F230210;
  if (!qword_27F230210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230210);
  }

  return result;
}

unint64_t sub_24EDE0BC4()
{
  result = qword_27F230218;
  if (!qword_27F230218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230218);
  }

  return result;
}

unint64_t sub_24EDE0C18()
{
  result = qword_27F230220;
  if (!qword_27F230220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230220);
  }

  return result;
}

unint64_t sub_24EDE0C70()
{
  result = qword_27F230228;
  if (!qword_27F230228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230228);
  }

  return result;
}

uint64_t keypath_get_67Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_24EDE1F5C(v4 + v5, a3, type metadata accessor for TransientToolbarItem);
}

uint64_t sub_24EDE0D98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_24EDE0E00@<X0>(_BYTE *a1@<X8>)
{
  sub_24EDE0B70();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24EDE0EB4()
{
  result = type metadata accessor for TransientToolbarItem(319);
  if (v1 <= 0x3F)
  {
    result = sub_24F91FDC8();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24EDE1808()
{
  sub_24F924038();
  sub_24E6A4C1C();
  sub_24EB67FB4();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24EDE1910()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator__dashboardVisibility;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_24EDE196C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230240);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220ED8);
  sub_24E602068(&qword_27F230248, &qword_27F230240);
  sub_24E602068(&qword_27F220EE0, &qword_27F220ED8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24EDE1A8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EDE1ADC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EDE1B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
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

uint64_t sub_24EDE1C3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = a2;
  }

  return result;
}

void sub_24EDE1D04()
{
  sub_24E6C55A0();
  if (v0 <= 0x3F)
  {
    sub_24EB999AC();
    if (v1 <= 0x3F)
    {
      sub_24E8EF898(319, &qword_27F230260, &unk_27F23A6A0);
      if (v2 <= 0x3F)
      {
        sub_24E8EF898(319, &qword_27F218180, &unk_27F22C070);
        if (v3 <= 0x3F)
        {
          sub_24E8EF898(319, &qword_27F230268, &qword_27F230270);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_24EDE1E34()
{
  result = qword_27F230290;
  if (!qword_27F230290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230280);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230288);
    sub_24E602068(&qword_27F230298, &qword_27F230288);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2302A0, &qword_27F2302A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230290);
  }

  return result;
}

uint64_t sub_24EDE1F5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EDE1FC4()
{
  v1 = type metadata accessor for ZoomableViewModifier(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F923F78();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
  }

  v6 = v3 + v2;
  sub_24E62A5EC(*(v4 + v1[5]), *(v4 + v1[5] + 8));
  v7 = v4 + v1[6];
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  v8 = v6 + 7;
  v9 = v4 + v1[7];
  if (*(v9 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFF8;
  v11 = v4 + v1[8];
  if (*(v11 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  if (*(v0 + v10 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v10);
  }

  v12 = (v10 + 47) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v0 + v12);
  __swift_destroy_boxed_opaque_existential_1(v0 + v13);

  return swift_deallocObject();
}

uint64_t sub_24EDE2164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoomableViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDE21C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ZoomableViewModifier(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_24EDDDD20(a1, v2 + v6, v2 + v7, v2 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8), v2 + ((((v7 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8), a2);
}

uint64_t sub_24EDE228C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDE22FC()
{
  v1 = type metadata accessor for ZoomableViewModifier(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_24F9239C8();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F923F78();
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  else
  {
  }

  v10 = v7 + v6;
  sub_24E62A5EC(*(v8 + v1[5]), *(v8 + v1[5] + 8));
  v11 = v8 + v1[6];
  if (*(v11 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v12 = v10 + 7;
  v13 = v8 + v1[7];
  if (*(v13 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFF8;
  v15 = v8 + v1[8];
  if (*(v15 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  (*(v5 + 8))(v0 + v6, v4);
  if (*(v0 + v14 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v14);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + ((v14 + 47) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_24EDE2518()
{
  v1 = *(type metadata accessor for ZoomableViewModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_24F9239C8() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_24EDDE2F0(v0 + v2, v0 + v5, v0 + v6, v0 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
}

unint64_t sub_24EDE2624()
{
  result = qword_27F2302D0;
  if (!qword_27F2302D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2302C8);
    sub_24E602068(&qword_27F2302D8, &qword_27F2302E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2302D0);
  }

  return result;
}

unint64_t sub_24EDE26DC()
{
  result = qword_27F2302F0;
  if (!qword_27F2302F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2302B8);
    sub_24E602068(&qword_27F2302E8, &qword_27F2302B0);
    sub_24EDE1A8C(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2302F0);
  }

  return result;
}

uint64_t sub_24EDE27C4()
{
  v1 = type metadata accessor for ZoomableViewModifier(0);
  v2 = (*(*(v1 - 1) + 80) + 56) & ~*(*(v1 - 1) + 80);
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923F78();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_24E62A5EC(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  v5 = v3 + v1[6];
  if (*(v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  v6 = v3 + v1[7];
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  v7 = v3 + v1[8];
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return swift_deallocObject();
}

uint64_t sub_24EDE2938(double *a1)
{
  type metadata accessor for ZoomableViewModifier(0);

  return sub_24EDDF444(a1, v1 + 16);
}

uint64_t sub_24EDE29AC()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  }

  return swift_deallocObject();
}

uint64_t sub_24EDE29FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E614970;

  return sub_24EDDEEAC(a1, v4, v5, v1 + 32, v1 + 72);
}

unint64_t sub_24EDE2AB4()
{
  result = qword_27F230310;
  if (!qword_27F230310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230318);
    sub_24EDE1E34();
    sub_24E602068(&qword_27F230298, &qword_27F230288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230310);
  }

  return result;
}

uint64_t GameCenterReengagement.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  GameCenterReengagement.init(deserializing:using:)(a1, a2);
  return v4;
}

void *GameCenterReengagement.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v145 = a2;
  v125 = sub_24F91FEF8();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v131 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v123 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v127 = &v118 - v10;
  MEMORY[0x28223BE20](v11);
  v146 = &v118 - v12;
  MEMORY[0x28223BE20](v13);
  v140 = &v118 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v15 - 8);
  v138 = &v118 - v16;
  v148 = sub_24F91F6B8();
  v143 = *(v148 - 1);
  MEMORY[0x28223BE20](v148);
  v18 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F928388();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v121 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v122 = &v118 - v23;
  MEMORY[0x28223BE20](v24);
  v126 = &v118 - v25;
  MEMORY[0x28223BE20](v26);
  v132 = &v118 - v27;
  MEMORY[0x28223BE20](v28);
  v137 = &v118 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v118 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v118 - v34;
  v135 = OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_clickAction;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_clickAction) = 0;
  v136 = OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_heroAction;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_heroAction) = 0;
  v154 = a1;
  sub_24F928398();
  v36 = sub_24F928348();
  v147 = v6;
  v141 = v32;
  v142 = v19;
  if (v37)
  {
    v149 = v36;
    v150 = v37;
    sub_24F92C7F8();
    v38 = *(v20 + 8);
    v143 = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v148 = v38;
    (v38)(v35, v19);
    v39 = v7;
  }

  else
  {
    sub_24F91F6A8();
    v40 = sub_24F91F668();
    v41 = v7;
    v42 = v19;
    v43 = v3;
    v45 = v44;
    (*(v143 + 8))(v18, v148);
    v149 = v40;
    v150 = v45;
    v3 = v43;
    v39 = v41;
    sub_24F92C7F8();
    v46 = *(v20 + 8);
    v143 = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v148 = v46;
    (v46)(v35, v42);
  }

  v144 = v39;
  v47 = v3 + OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_id;
  v48 = v152;
  *v47 = v151;
  *(v47 + 16) = v48;
  v134 = v47;
  *(v47 + 32) = v153;
  sub_24F929608();
  sub_24F928398();
  v49 = v3;
  v50 = (v39 + 16);
  v51 = *(v39 + 16);
  v52 = v145;
  v53 = v147;
  v51(v140, v145, v147);
  v54 = v138;
  sub_24F929548();
  v139 = v49;
  v133 = OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_impressionMetrics;
  sub_24E65E0D4(v54, v49 + OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_impressionMetrics);
  v138 = v50;
  v130 = v51;
  v51(v146, v52, v53);
  v55 = v154;
  v56 = v137;
  sub_24F928398();
  v57 = sub_24F928348();
  v59 = v58;
  v60 = v142;
  v61 = v148;
  v62 = v144;
  (v148)(v56, v142);
  if (!v59)
  {
    v75 = sub_24F92AC38();
    sub_24EDE42D8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v148 = v61;
    v76 = v147;
    v78 = v77;
    v79 = type metadata accessor for GameCenterReengagement();
    *v78 = 0x656C746974;
    v78[1] = 0xE500000000000000;
    v78[2] = v79;
    (*(*(v75 - 8) + 104))(v78, *MEMORY[0x277D22530], v75);
    swift_willThrow();
    v80 = *(v62 + 8);
    v80(v145, v76);
    (v148)(v55, v60);
    v80(v146, v76);
    goto LABEL_10;
  }

  v129 = v59;
  v120 = v57;
  v63 = v141;
  sub_24F928398();
  v119 = sub_24F928348();
  v65 = v64;
  (v61)(v63, v60);
  v66 = v132;
  sub_24F928398();
  v67 = JSONObject.appStoreColor.getter();
  (v61)(v66, v60);
  if (!v67)
  {

    v81 = sub_24F92AC38();
    sub_24EDE42D8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v82 = v147;
    v84 = v83;
    v85 = type metadata accessor for GameCenterReengagement();
    *v84 = 0x756F72676B636162;
    v84[1] = 0xEF726F6C6F43646ELL;
    v84[2] = v85;
    (*(*(v81 - 8) + 104))(v84, *MEMORY[0x277D22530], v81);
    swift_willThrow();
    v86 = *(v144 + 8);
    v86(v145, v82);
    (v61)(v55, v60);
    v86(v146, v82);
    goto LABEL_10;
  }

  v137 = v65;
  v68 = v126;
  sub_24F928398();
  v69 = v127;
  v71 = v146;
  v70 = v147;
  v72 = v130;
  v130(v127, v146, v147);
  v73 = v128;
  Achievement.init(deserializing:using:)(v68, v69, v131);
  if (v73)
  {

    v74 = *(v144 + 8);
    v74(v145, v70);
    (v148)(v154, v142);
    v74(v71, v70);
LABEL_10:
    v87 = v139;

    sub_24E6585F8(v134);
    sub_24EB05BC8(v87 + v133);
    type metadata accessor for GameCenterReengagement();
    swift_deallocPartialClassInstance();
    return v87;
  }

  v89 = v122;
  sub_24F928398();
  v90 = v123;
  v72(v123, v71, v70);
  type metadata accessor for Lockup();
  swift_allocObject();
  v91 = Lockup.init(deserializing:using:)(v89, v90);
  v132 = 0;
  v136 = v91;
  v92 = v121;
  sub_24F928398();
  v93 = sub_24F928348();
  v95 = v94;
  v96 = v92;
  v97 = v142;
  v98 = v148;
  (v148)(v96, v142);
  v99 = v137;
  v100 = v129;
  v148 = v98;
  if (v95)
  {
    v101 = v141;
    sub_24F928398();
    v102 = sub_24F928348();
    v104 = v103;
    (v98)(v101, v97);
    v99 = v137;
  }

  else
  {
    v104 = 0;
    v102 = v93;
    v101 = v141;
  }

  v87 = v139;
  v139[2] = v102;
  v87[3] = v104;
  v87[4] = v93;
  v87[5] = v95;
  v87[6] = v120;
  v87[7] = v100;
  v87[8] = v119;
  v87[9] = v99;
  v87[10] = v67;
  type metadata accessor for Artwork();
  v138 = v67;
  v105 = v154;
  sub_24F928398();
  v130(v140, v146, v147);
  sub_24EDE42D8(&qword_27F219660, type metadata accessor for Artwork);
  sub_24F929548();
  v87[11] = v151;
  v106 = v124;
  (*(v124 + 16))(v87 + OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_achievement, v131, v125);
  v107 = v136;
  *(v87 + OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_lockup) = v136;
  v108 = *(v107 + 264);
  v109 = OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_clickAction;
  swift_beginAccess();
  *(v87 + v109) = v108;

  type metadata accessor for Action();
  sub_24F928398();
  v110 = v101;
  v111 = v146;
  v140 = static Action.tryToMakeInstance(byDeserializing:using:)(v110, v146);

  v112 = *(v144 + 8);
  v113 = v147;
  v112(v145, v147);
  v114 = v105;
  v115 = v142;
  v116 = v148;
  (v148)(v114, v142);
  v116(v141, v115);
  (*(v106 + 8))(v131, v125);
  v112(v111, v113);
  v117 = OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_heroAction;
  swift_beginAccess();
  *(v87 + v117) = v140;

  return v87;
}

uint64_t type metadata accessor for GameCenterReengagement()
{
  result = qword_27F230330;
  if (!qword_27F230330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GameCenterReengagement.badgeGlyph.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GameCenterReengagement.badge.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t GameCenterReengagement.title.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t GameCenterReengagement.subtitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t GameCenterReengagement.achievement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_achievement;
  v4 = sub_24F91FEF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24EDE3D54(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t sub_24EDE3DD0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_24EDE3E84()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_lockup);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_24F93DE60;
    *(v2 + 56) = type metadata accessor for Lockup();
    *(v2 + 64) = sub_24EDE42D8(&qword_27F2289F8, type metadata accessor for Lockup);
    *(v2 + 32) = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t GameCenterReengagement.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_achievement;
  v2 = sub_24F91FEF8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_id);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_impressionMetrics);
  return v0;
}

uint64_t GameCenterReengagement.__deallocating_deinit()
{
  GameCenterReengagement.deinit();

  return swift_deallocClassInstance();
}

void *sub_24EDE410C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for GameCenterReengagement();
  v7 = swift_allocObject();
  result = GameCenterReengagement.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EDE41C4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC12GameStoreKit22GameCenterReengagement_lockup);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_24F93DE60;
    *(v2 + 56) = type metadata accessor for Lockup();
    *(v2 + 64) = sub_24EDE42D8(&qword_27F2289F8, type metadata accessor for Lockup);
    *(v2 + 32) = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_24EDE4280(uint64_t a1)
{
  result = sub_24EDE42D8(&qword_27F230328, type metadata accessor for GameCenterReengagement);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24EDE42D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t keypath_getTm_4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void sub_24EDE43F0()
{
  sub_24F91FEF8();
  if (v0 <= 0x3F)
  {
    sub_24E61C938();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t SearchHintsIntent.term.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall SearchHintsIntent.makeValue(in:)(JSContext in)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = objc_opt_self();
  result.super.isa = [v5 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;

    v8 = [v5 valueWithObject:sub_24F92CF68() inContext:{in.super.isa, v4, v3}];
    result.super.isa = swift_unknownObjectRelease();
    if (v8)
    {
      sub_24F92C328();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24EDE47E4()
{
  result = qword_27F230340;
  if (!qword_27F230340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230340);
  }

  return result;
}

unint64_t sub_24EDE4840()
{
  result = qword_27F230348;
  if (!qword_27F230348)
  {
    type metadata accessor for SearchHintSet();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230348);
  }

  return result;
}

uint64_t sub_24EDE48AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EDE48F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EDE4958(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230360);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 2);
  v19 = *(v1 + 1);
  v20 = v9;
  v10 = *(v1 + 4);
  v21 = *(v1 + 3);
  v22 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDE4FEC();

  sub_24F92D128();
  *&v15 = v7;
  *(&v15 + 1) = v8;
  LOBYTE(v14[0]) = 0;
  sub_24E94B538();
  v11 = v13[1];
  sub_24F92CD48();

  if (!v11)
  {
    v15 = v19;
    v16 = v20;
    v17 = v21;
    v18 = v22;
    v23 = 1;
    sub_24E94B1E0(&v19, v14);
    sub_24E94B5E0();
    sub_24F92CD48();
    v14[0] = v15;
    v14[1] = v16;
    v14[2] = v17;
    v14[3] = v18;
    sub_24E94B218(v14);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EDE4B78@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230350);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDE4FEC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v9 = v33;
  LOBYTE(v17[0]) = 0;
  sub_24E94B6E8();
  sub_24F92CC68();
  v10 = v19;
  v16 = v18;
  v24 = 1;
  sub_24E94B790();
  sub_24F92CC68();
  (*(v8 + 8))(v7, v4);
  v11 = v25;
  v29 = v25;
  v30 = v26;
  v12 = v27;
  v13 = v28;
  v31 = v27;
  v32 = v28;
  v14 = v16;
  *&v17[0] = v16;
  *(&v17[0] + 1) = v10;
  v17[1] = v25;
  v17[2] = v26;
  v17[3] = v27;
  v17[4] = v28;
  v9[2] = v26;
  v9[3] = v12;
  v9[4] = v13;
  *v9 = v17[0];
  v9[1] = v11;
  sub_24EDE5040(v17, &v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v18 = v14;
  v19 = v10;
  v20 = v29;
  v21 = v30;
  v22 = v31;
  v23 = v32;
  return sub_24EDE5078(&v18);
}

uint64_t sub_24EDE4DF4()
{
  if (*v0)
  {
    return 0x656E6961746E6F63;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_24EDE4E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xE900000000000072)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24EDE4F24(uint64_t a1)
{
  v2 = sub_24EDE4FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE4F60(uint64_t a1)
{
  v2 = sub_24EDE4FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EDE4FEC()
{
  result = qword_27F230358;
  if (!qword_27F230358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230358);
  }

  return result;
}

unint64_t sub_24EDE50BC()
{
  result = qword_27F230368;
  if (!qword_27F230368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230368);
  }

  return result;
}

unint64_t sub_24EDE5114()
{
  result = qword_27F230370;
  if (!qword_27F230370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230370);
  }

  return result;
}

unint64_t sub_24EDE516C()
{
  result = qword_27F230378;
  if (!qword_27F230378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230378);
  }

  return result;
}

uint64_t sub_24EDE51C0(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v17 = a1[4];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = sub_24F92B098();
  v9 = sub_24F92B098();
  [v3 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v8 withReuseIdentifier:v9];

  v10 = sub_24F92B098();
  v11 = sub_24F92B098();
  v12 = sub_24F91F9D8();
  v13 = [v3 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:v12];

  v14 = swift_dynamicCastUnknownClass();
  if (v14)
  {
    v15 = v14;
    v17(v14, v5, v6, a2);
    return v15;
  }

  else
  {

    result = sub_24F92CA88();
    __break(1u);
  }

  return result;
}

unint64_t sub_24EDE5368()
{
  result = qword_27F230400;
  if (!qword_27F230400)
  {
    type metadata accessor for CopyTextAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230400);
  }

  return result;
}

uint64_t sub_24EDE53CC()
{
  v0 = sub_24F928AE8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() generalPasteboard];
  v5 = sub_24F92B098();
  [v4 setString_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  (*(v1 + 104))(v3, *MEMORY[0x277D21CA8], v0);
  return sub_24F92A988();
}

uint64_t sub_24EDE5534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EDEB704(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EDE555C(uint64_t a1)
{
  v2 = sub_24EDE58C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE5598(uint64_t a1)
{
  v2 = sub_24EDE58C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShelfGridDesign.GridItemWidth.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230408);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDE58C8();
  sub_24F92D108();
  if (!v2)
  {
    v12 = 0;
    sub_24E620E90();
    sub_24F92CC68();
    v9 = v13;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24EDE58C8()
{
  result = qword_27F230410;
  if (!qword_27F230410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230410);
  }

  return result;
}

uint64_t sub_24EDE592C(uint64_t a1)
{
  v2 = sub_24EDE5FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE5968(uint64_t a1)
{
  v2 = sub_24EDE5FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE59A4(uint64_t a1)
{
  v2 = sub_24EDE5F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE59E0(uint64_t a1)
{
  v2 = sub_24EDE5F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE5A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24EDE5A9C(uint64_t a1)
{
  v2 = sub_24EDE5F98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE5AD8(uint64_t a1)
{
  v2 = sub_24EDE5F98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShelfGridDesign.GridItemWidth.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230418);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230420);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230428);
  v24 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230430);
  v12 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v14 = &v23 - v13;
  v30 = *v2;
  v15 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDE58C8();
  sub_24F92D128();
  v16 = (v12 + 8);
  if (v15)
  {
    if (v15 == 1)
    {
      LOBYTE(v32) = 1;
      sub_24EDE5F98();
      v17 = v31;
      sub_24F92CC98();
      v32 = v30;
      sub_24E620F7C();
      v18 = v26;
      sub_24F92CD48();
      v19 = *(v25 + 8);
      v20 = v8;
    }

    else
    {
      LOBYTE(v32) = 2;
      sub_24EDE5F44();
      v21 = v27;
      v17 = v31;
      sub_24F92CC98();
      v32 = v30;
      sub_24E620F7C();
      v18 = v29;
      sub_24F92CD48();
      v19 = *(v28 + 8);
      v20 = v21;
    }

    v19(v20, v18);
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_24EDE5FEC();
    v17 = v31;
    sub_24F92CC98();
    v32 = v30;
    sub_24E620F7C();
    sub_24F92CD48();
    (*(v24 + 8))(v11, v9);
  }

  return (*v16)(v14, v17);
}

unint64_t sub_24EDE5F44()
{
  result = qword_27F230438;
  if (!qword_27F230438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230438);
  }

  return result;
}

unint64_t sub_24EDE5F98()
{
  result = qword_27F230440;
  if (!qword_27F230440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230440);
  }

  return result;
}

unint64_t sub_24EDE5FEC()
{
  result = qword_27F230448;
  if (!qword_27F230448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230448);
  }

  return result;
}

unint64_t sub_24EDE6040(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x416E6769736564;
      break;
    case 2:
      result = 0x426E6769736564;
      break;
    case 3:
      result = 0x436E6769736564;
      break;
    case 4:
      result = 0x446E6769736564;
      break;
    case 5:
      result = 0x4C7972617262696CLL;
      break;
    case 6:
      result = 0x7262694C656D6167;
      break;
    case 7:
      result = 0x65756E69746E6F63;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0x5279616C7265766FLL;
      break;
    case 11:
      result = 0x746E6F7A69726F68;
      break;
    case 12:
      result = 0x6C61636974726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24EDE6230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EDEB81C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EDE6258(uint64_t a1)
{
  v2 = sub_24EDE7924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE6294(uint64_t a1)
{
  v2 = sub_24EDE7924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE62D0(uint64_t a1)
{
  v2 = sub_24EDE7B70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE630C(uint64_t a1)
{
  v2 = sub_24EDE7B70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE6348(uint64_t a1)
{
  v2 = sub_24EDE7DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE6384(uint64_t a1)
{
  v2 = sub_24EDE7DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE63C0(uint64_t a1)
{
  v2 = sub_24EDE7D68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE63FC(uint64_t a1)
{
  v2 = sub_24EDE7D68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE6438(uint64_t a1)
{
  v2 = sub_24EDE7D14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE6474(uint64_t a1)
{
  v2 = sub_24EDE7D14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE64B0(uint64_t a1)
{
  v2 = sub_24EDE7CC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE64EC(uint64_t a1)
{
  v2 = sub_24EDE7CC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE6528(uint64_t a1)
{
  v2 = sub_24EDE7C6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE6564(uint64_t a1)
{
  v2 = sub_24EDE7C6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE65A0(uint64_t a1)
{
  v2 = sub_24EDE7AC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE65DC(uint64_t a1)
{
  v2 = sub_24EDE7AC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE6618(uint64_t a1)
{
  v2 = sub_24EDE7BC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE6654(uint64_t a1)
{
  v2 = sub_24EDE7BC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE6690()
{
  if (*v0)
  {
    return 0x746469576D657469;
  }

  else
  {
    return 0x726550736D657469;
  }
}

uint64_t sub_24EDE66DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726550736D657469 && a2 == 0xEE006E6D756C6F43;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746469576D657469 && a2 == 0xE900000000000068)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24EDE67C8(uint64_t a1)
{
  v2 = sub_24EDE79CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE6804(uint64_t a1)
{
  v2 = sub_24EDE79CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE6840(uint64_t a1)
{
  v2 = sub_24EDE7C18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE687C(uint64_t a1)
{
  v2 = sub_24EDE7C18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE68D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F436E6D756C6F63 && a2 == 0xEB00000000746E75)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24EDE6964(uint64_t a1)
{
  v2 = sub_24EDE7A74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE69A0(uint64_t a1)
{
  v2 = sub_24EDE7A74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE69DC(uint64_t a1)
{
  v2 = sub_24EDE7B1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE6A18(uint64_t a1)
{
  v2 = sub_24EDE7B1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EDE6A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726550736D657469 && a2 == 0xEB00000000776F52)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24EDE6B00(uint64_t a1)
{
  v2 = sub_24EDE7978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDE6B3C(uint64_t a1)
{
  v2 = sub_24EDE7978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShelfGridDesign.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230450);
  v81 = *(v3 - 8);
  v82 = v3;
  MEMORY[0x28223BE20](v3);
  v79 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230458);
  v83 = *(v5 - 8);
  v84 = v5;
  MEMORY[0x28223BE20](v5);
  v80 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230460);
  v77 = *(v7 - 8);
  v78 = v7;
  MEMORY[0x28223BE20](v7);
  v76 = &v48 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230468);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v48 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230470);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v48 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230478);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v48 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230480);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v48 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230488);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v48 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230490);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v48 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230498);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v48 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2304A0);
  v71 = *(v16 - 8);
  v72 = v16;
  MEMORY[0x28223BE20](v16);
  v70 = &v48 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2304A8);
  v73 = *(v18 - 8);
  v74 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2304B0);
  v75 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2304B8);
  v25 = *(v24 - 8);
  v86 = v24;
  v87 = v25;
  MEMORY[0x28223BE20](v24);
  v26 = *v1;
  v85 = v1[1];
  v27 = *(v1 + 16);
  v28 = a1[3];
  v29 = a1;
  v31 = &v48 - v30;
  __swift_project_boxed_opaque_existential_1(v29, v28);
  sub_24EDE7924();
  sub_24F92D128();
  v32 = v27 >> 6;
  if (v27 >> 6 > 1)
  {
    if (v32 != 2)
    {
      if (v85 | v26 || v27 != 192)
      {
        if (v26 != 1 || v85 || v27 != 192)
        {
          v34 = v86;
          if (v26 == 2 && !v85 && v27 == 192)
          {
            LOBYTE(v89) = 2;
            sub_24EDE7D14();
            v40 = v70;
            sub_24F92CC98();
            (*(v71 + 8))(v40, v72);
          }

          else if (v26 == 3 && !v85 && v27 == 192)
          {
            LOBYTE(v89) = 3;
            sub_24EDE7CC0();
            v41 = v67;
            sub_24F92CC98();
            (*(v68 + 8))(v41, v69);
          }

          else if (v26 == 4 && !v85 && v27 == 192)
          {
            LOBYTE(v89) = 4;
            sub_24EDE7C6C();
            v42 = v64;
            sub_24F92CC98();
            (*(v65 + 8))(v42, v66);
          }

          else if (v26 == 5 && !v85 && v27 == 192)
          {
            LOBYTE(v89) = 5;
            sub_24EDE7C18();
            v43 = v61;
            sub_24F92CC98();
            (*(v62 + 8))(v43, v63);
          }

          else if (v26 == 6 && !v85 && v27 == 192)
          {
            LOBYTE(v89) = 6;
            sub_24EDE7BC4();
            v44 = v58;
            sub_24F92CC98();
            (*(v59 + 8))(v44, v60);
          }

          else if (v26 == 7 && !v85 && v27 == 192)
          {
            LOBYTE(v89) = 7;
            sub_24EDE7B70();
            v45 = v55;
            sub_24F92CC98();
            (*(v56 + 8))(v45, v57);
          }

          else if (v26 == 8 && !v85 && v27 == 192)
          {
            LOBYTE(v89) = 8;
            sub_24EDE7B1C();
            v46 = v49;
            sub_24F92CC98();
            (*(v50 + 8))(v46, v51);
          }

          else
          {
            LOBYTE(v89) = 9;
            sub_24EDE7AC8();
            v47 = v52;
            sub_24F92CC98();
            (*(v53 + 8))(v47, v54);
          }

          return (*(v87 + 8))(v31, v34);
        }

        LOBYTE(v89) = 1;
        sub_24EDE7D68();
        v39 = v86;
        sub_24F92CC98();
        (*(v73 + 8))(v20, v74);
      }

      else
      {
        LOBYTE(v89) = 0;
        sub_24EDE7DBC();
        v39 = v86;
        sub_24F92CC98();
        (*(v75 + 8))(v23, v21);
      }

      return (*(v87 + 8))(v31, v39);
    }

    LOBYTE(v89) = 12;
    sub_24EDE7978();
    v33 = v79;
    v34 = v86;
    sub_24F92CC98();
    v35 = v82;
    sub_24F92CD38();
    v36 = v81;
  }

  else if (v32)
  {
    LOBYTE(v89) = 11;
    sub_24EDE79CC();
    v33 = v80;
    v34 = v86;
    sub_24F92CC98();
    LOBYTE(v89) = 0;
    v35 = v84;
    v37 = v88;
    sub_24F92CD38();
    if (!v37)
    {
      v89 = v85;
      v90 = v27 & 0x3F;
      v91 = 1;
      sub_24EDE7A20();
      sub_24F92CD48();
    }

    v36 = v83;
  }

  else
  {
    LOBYTE(v89) = 10;
    sub_24EDE7A74();
    v33 = v76;
    v34 = v86;
    sub_24F92CC98();
    v35 = v78;
    sub_24F92CD38();
    v36 = v77;
  }

  (*(v36 + 8))(v33, v35);
  return (*(v87 + 8))(v31, v34);
}

unint64_t sub_24EDE7924()
{
  result = qword_27F2304C0;
  if (!qword_27F2304C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2304C0);
  }

  return result;
}

unint64_t sub_24EDE7978()
{
  result = qword_27F2304C8;
  if (!qword_27F2304C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2304C8);
  }

  return result;
}

unint64_t sub_24EDE79CC()
{
  result = qword_27F2304D0;
  if (!qword_27F2304D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2304D0);
  }

  return result;
}

unint64_t sub_24EDE7A20()
{
  result = qword_27F2304D8;
  if (!qword_27F2304D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2304D8);
  }

  return result;
}

unint64_t sub_24EDE7A74()
{
  result = qword_27F2304E0;
  if (!qword_27F2304E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2304E0);
  }

  return result;
}

unint64_t sub_24EDE7AC8()
{
  result = qword_27F2304E8;
  if (!qword_27F2304E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2304E8);
  }

  return result;
}

unint64_t sub_24EDE7B1C()
{
  result = qword_27F2304F0;
  if (!qword_27F2304F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2304F0);
  }

  return result;
}

unint64_t sub_24EDE7B70()
{
  result = qword_27F2304F8;
  if (!qword_27F2304F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2304F8);
  }

  return result;
}

unint64_t sub_24EDE7BC4()
{
  result = qword_27F230500;
  if (!qword_27F230500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230500);
  }

  return result;
}

unint64_t sub_24EDE7C18()
{
  result = qword_27F230508;
  if (!qword_27F230508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230508);
  }

  return result;
}

unint64_t sub_24EDE7C6C()
{
  result = qword_27F230510;
  if (!qword_27F230510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230510);
  }

  return result;
}

unint64_t sub_24EDE7CC0()
{
  result = qword_27F230518;
  if (!qword_27F230518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230518);
  }

  return result;
}

unint64_t sub_24EDE7D14()
{
  result = qword_27F230520;
  if (!qword_27F230520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230520);
  }

  return result;
}

unint64_t sub_24EDE7D68()
{
  result = qword_27F230528;
  if (!qword_27F230528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230528);
  }

  return result;
}

unint64_t sub_24EDE7DBC()
{
  result = qword_27F230530;
  if (!qword_27F230530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230530);
  }

  return result;
}

uint64_t ShelfGridDesign.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230538);
  v88 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v117 = &v83 - v3;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230540);
  v89 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v118 = &v83 - v4;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230548);
  v87 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v116 = &v83 - v5;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230550);
  v107 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v115 = &v83 - v6;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230558);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v114 = &v83 - v7;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230560);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v113 = &v83 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230568);
  v102 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v121 = &v83 - v9;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230570);
  v100 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v120 = &v83 - v10;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230578);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v119 = &v83 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230580);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v112 = &v83 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230588);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v111 = &v83 - v13;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230590);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v15 = &v83 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230598);
  v90 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v83 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2305A0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v83 - v21;
  v23 = a1[3];
  v124 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24EDE7924();
  v24 = v125;
  sub_24F92D108();
  v125 = v24;
  if (v24)
  {
LABEL_8:
    v44 = v124;
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v84 = v18;
  v83 = v16;
  v85 = v15;
  v25 = v119;
  v26 = v120;
  v28 = v121;
  v27 = v122;
  v86 = v20;
  v29 = v123;
  v30 = sub_24F92CC78();
  v31 = (2 * *(v30 + 16)) | 1;
  v128 = v30;
  v129 = v30 + 32;
  v130 = 0;
  v131 = v31;
  v32 = sub_24E643438();
  if (v130 != v131 >> 1)
  {
LABEL_6:
    v38 = sub_24F92C918();
    v39 = v22;
    v40 = v19;
    v41 = swift_allocError();
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v43 = &type metadata for ShelfGridDesign;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v38 - 8) + 104))(v43, *MEMORY[0x277D84160], v38);
    v125 = v41;
    swift_willThrow();
    (*(v86 + 8))(v39, v40);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v32)
  {
    case 0:
      LOBYTE(v126) = 0;
      sub_24EDE7DBC();
      v33 = v84;
      v34 = v125;
      sub_24F92CBA8();
      v125 = v34;
      if (v34)
      {
        goto LABEL_33;
      }

      (*(v90 + 8))(v33, v83);
      (*(v86 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v35 = 0;
      v36 = 0;
      v37 = -64;
      goto LABEL_38;
    case 1:
      LOBYTE(v126) = 1;
      sub_24EDE7D68();
      v69 = v85;
      v70 = v125;
      sub_24F92CBA8();
      v125 = v70;
      if (v70)
      {
        goto LABEL_33;
      }

      (*(v91 + 8))(v69, v92);
      (*(v86 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = -64;
      v35 = 1;
      goto LABEL_38;
    case 2:
      LOBYTE(v126) = 2;
      sub_24EDE7D14();
      v63 = v111;
      v64 = v125;
      sub_24F92CBA8();
      v125 = v64;
      if (v64)
      {
        goto LABEL_33;
      }

      (*(v93 + 8))(v63, v94);
      (*(v86 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = -64;
      v35 = 2;
      goto LABEL_38;
    case 3:
      LOBYTE(v126) = 3;
      sub_24EDE7CC0();
      v65 = v112;
      v66 = v125;
      sub_24F92CBA8();
      v125 = v66;
      if (v66)
      {
        goto LABEL_33;
      }

      (*(v95 + 8))(v65, v96);
      (*(v86 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = -64;
      v35 = 3;
      goto LABEL_38;
    case 4:
      LOBYTE(v126) = 4;
      sub_24EDE7C6C();
      v53 = v125;
      sub_24F92CBA8();
      v125 = v53;
      if (v53)
      {
        goto LABEL_33;
      }

      (*(v97 + 8))(v25, v98);
      (*(v86 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = -64;
      v35 = 4;
      goto LABEL_38;
    case 5:
      LOBYTE(v126) = 5;
      sub_24EDE7C18();
      v71 = v125;
      sub_24F92CBA8();
      v125 = v71;
      if (v71)
      {
        goto LABEL_33;
      }

      (*(v100 + 8))(v26, v99);
      (*(v86 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = -64;
      v35 = 5;
      goto LABEL_38;
    case 6:
      LOBYTE(v126) = 6;
      sub_24EDE7BC4();
      v72 = v125;
      sub_24F92CBA8();
      v125 = v72;
      if (v72)
      {
        goto LABEL_33;
      }

      (*(v102 + 8))(v28, v101);
      (*(v86 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = -64;
      v35 = 6;
      goto LABEL_38;
    case 7:
      LOBYTE(v126) = 7;
      sub_24EDE7B70();
      v67 = v113;
      v68 = v125;
      sub_24F92CBA8();
      v125 = v68;
      if (v68)
      {
        goto LABEL_33;
      }

      (*(v103 + 8))(v67, v104);
      (*(v86 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = -64;
      v35 = 7;
      goto LABEL_38;
    case 8:
      LOBYTE(v126) = 8;
      sub_24EDE7B1C();
      v78 = v114;
      v79 = v125;
      sub_24F92CBA8();
      v125 = v79;
      if (v79)
      {
        goto LABEL_33;
      }

      (*(v105 + 8))(v78, v106);
      (*(v86 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = -64;
      v35 = 8;
      goto LABEL_38;
    case 9:
      v60 = v27;
      LOBYTE(v126) = 9;
      sub_24EDE7AC8();
      v61 = v115;
      v62 = v125;
      sub_24F92CBA8();
      v125 = v62;
      if (v62)
      {
        goto LABEL_33;
      }

      (*(v107 + 8))(v61, v60);
      (*(v86 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = -64;
      v35 = 9;
      goto LABEL_38;
    case 10:
      LOBYTE(v126) = 10;
      sub_24EDE7A74();
      v73 = v116;
      v74 = v125;
      sub_24F92CBA8();
      v125 = v74;
      if (v74)
      {
        goto LABEL_33;
      }

      v75 = v108;
      v76 = sub_24F92CC58();
      v77 = v86;
      v125 = 0;
      v82 = v76;
      (*(v87 + 8))(v73, v75);
      (*(v77 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v35 = v82;
      v36 = 0;
      v37 = 0;
      goto LABEL_38;
    case 11:
      LOBYTE(v126) = 11;
      sub_24EDE79CC();
      v46 = v118;
      v47 = v125;
      sub_24F92CBA8();
      v125 = v47;
      if (v47)
      {
        goto LABEL_33;
      }

      v48 = v22;
      v49 = v19;
      LOBYTE(v126) = 0;
      v50 = v110;
      v51 = sub_24F92CC58();
      v52 = v86;
      v125 = 0;
      v80 = v51;
      v132 = 1;
      sub_24EDE912C();
      v81 = v125;
      sub_24F92CC68();
      v125 = v81;
      if (v81)
      {
        (*(v89 + 8))(v46, v50);
        (*(v52 + 8))(v48, v49);
        goto LABEL_7;
      }

      (*(v89 + 8))(v46, v50);
      (*(v52 + 8))(v48, v49);
      swift_unknownObjectRelease();
      v36 = v126;
      v37 = v127 | 0x40;
      v35 = v80;
      goto LABEL_38;
    case 12:
      LOBYTE(v126) = 12;
      sub_24EDE7978();
      v54 = v117;
      v55 = v125;
      sub_24F92CBA8();
      v125 = v55;
      if (v55)
      {
LABEL_33:
        (*(v86 + 8))(v22, v19);
        goto LABEL_7;
      }

      v56 = v109;
      v57 = sub_24F92CC58();
      v58 = v86;
      v125 = 0;
      v59 = v57;
      (*(v88 + 8))(v54, v56);
      (*(v58 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v35 = v59;
      v36 = 0;
      v37 = 0x80;
LABEL_38:
      v44 = v124;
      *v29 = v35;
      *(v29 + 8) = v36;
      *(v29 + 16) = v37;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

unint64_t sub_24EDE912C()
{
  result = qword_27F2305A8;
  if (!qword_27F2305A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShelfGridDesign(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 17))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ShelfGridDesign(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 16) = 0;
    *result = a2 - 61;
    *(result + 8) = 0;
    if (a3 >= 0x3D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_24EDE9254(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24EDE9280(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

unint64_t sub_24EDE9400()
{
  result = qword_27F2305B0;
  if (!qword_27F2305B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305B0);
  }

  return result;
}

unint64_t sub_24EDE9458()
{
  result = qword_27F2305B8;
  if (!qword_27F2305B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305B8);
  }

  return result;
}

unint64_t sub_24EDE94B0()
{
  result = qword_27F2305C0;
  if (!qword_27F2305C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305C0);
  }

  return result;
}

unint64_t sub_24EDE9508()
{
  result = qword_27F2305C8;
  if (!qword_27F2305C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305C8);
  }

  return result;
}

unint64_t sub_24EDE9560()
{
  result = qword_27F2305D0;
  if (!qword_27F2305D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305D0);
  }

  return result;
}

unint64_t sub_24EDE95B8()
{
  result = qword_27F2305D8;
  if (!qword_27F2305D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305D8);
  }

  return result;
}

unint64_t sub_24EDE9610()
{
  result = qword_27F2305E0;
  if (!qword_27F2305E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305E0);
  }

  return result;
}

unint64_t sub_24EDE9668()
{
  result = qword_27F2305E8;
  if (!qword_27F2305E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305E8);
  }

  return result;
}

unint64_t sub_24EDE96C0()
{
  result = qword_27F2305F0;
  if (!qword_27F2305F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305F0);
  }

  return result;
}

unint64_t sub_24EDE9718()
{
  result = qword_27F2305F8;
  if (!qword_27F2305F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2305F8);
  }

  return result;
}

unint64_t sub_24EDE9770()
{
  result = qword_27F230600;
  if (!qword_27F230600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230600);
  }

  return result;
}

unint64_t sub_24EDE97C8()
{
  result = qword_27F230608;
  if (!qword_27F230608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230608);
  }

  return result;
}

unint64_t sub_24EDE9820()
{
  result = qword_27F230610;
  if (!qword_27F230610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230610);
  }

  return result;
}

unint64_t sub_24EDE9878()
{
  result = qword_27F230618;
  if (!qword_27F230618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230618);
  }

  return result;
}

unint64_t sub_24EDE98D0()
{
  result = qword_27F230620;
  if (!qword_27F230620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230620);
  }

  return result;
}

unint64_t sub_24EDE9928()
{
  result = qword_27F230628;
  if (!qword_27F230628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230628);
  }

  return result;
}

unint64_t sub_24EDE9980()
{
  result = qword_27F230630;
  if (!qword_27F230630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230630);
  }

  return result;
}

unint64_t sub_24EDE99D8()
{
  result = qword_27F230638;
  if (!qword_27F230638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230638);
  }

  return result;
}

unint64_t sub_24EDE9A30()
{
  result = qword_27F230640;
  if (!qword_27F230640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230640);
  }

  return result;
}

unint64_t sub_24EDE9A88()
{
  result = qword_27F230648;
  if (!qword_27F230648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230648);
  }

  return result;
}

unint64_t sub_24EDE9AE0()
{
  result = qword_27F230650;
  if (!qword_27F230650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230650);
  }

  return result;
}

unint64_t sub_24EDE9B38()
{
  result = qword_27F230658;
  if (!qword_27F230658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230658);
  }

  return result;
}

unint64_t sub_24EDE9B90()
{
  result = qword_27F230660;
  if (!qword_27F230660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230660);
  }

  return result;
}

unint64_t sub_24EDE9BE8()
{
  result = qword_27F230668;
  if (!qword_27F230668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230668);
  }

  return result;
}

unint64_t sub_24EDE9C40()
{
  result = qword_27F230670;
  if (!qword_27F230670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230670);
  }

  return result;
}

unint64_t sub_24EDE9C98()
{
  result = qword_27F230678;
  if (!qword_27F230678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230678);
  }

  return result;
}

unint64_t sub_24EDE9CF0()
{
  result = qword_27F230680;
  if (!qword_27F230680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230680);
  }

  return result;
}

unint64_t sub_24EDE9D48()
{
  result = qword_27F230688;
  if (!qword_27F230688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230688);
  }

  return result;
}

unint64_t sub_24EDE9DA0()
{
  result = qword_27F230690;
  if (!qword_27F230690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230690);
  }

  return result;
}

unint64_t sub_24EDE9DF8()
{
  result = qword_27F230698;
  if (!qword_27F230698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230698);
  }

  return result;
}

unint64_t sub_24EDE9E50()
{
  result = qword_27F2306A0;
  if (!qword_27F2306A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306A0);
  }

  return result;
}

unint64_t sub_24EDE9EA8()
{
  result = qword_27F2306A8;
  if (!qword_27F2306A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306A8);
  }

  return result;
}

unint64_t sub_24EDE9F00()
{
  result = qword_27F2306B0;
  if (!qword_27F2306B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306B0);
  }

  return result;
}

unint64_t sub_24EDE9F58()
{
  result = qword_27F2306B8;
  if (!qword_27F2306B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306B8);
  }

  return result;
}

unint64_t sub_24EDE9FB0()
{
  result = qword_27F2306C0;
  if (!qword_27F2306C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306C0);
  }

  return result;
}

unint64_t sub_24EDEA008()
{
  result = qword_27F2306C8;
  if (!qword_27F2306C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306C8);
  }

  return result;
}

unint64_t sub_24EDEA060()
{
  result = qword_27F2306D0;
  if (!qword_27F2306D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306D0);
  }

  return result;
}

unint64_t sub_24EDEA0B8()
{
  result = qword_27F2306D8;
  if (!qword_27F2306D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306D8);
  }

  return result;
}

unint64_t sub_24EDEA110()
{
  result = qword_27F2306E0;
  if (!qword_27F2306E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306E0);
  }

  return result;
}

unint64_t sub_24EDEA168()
{
  result = qword_27F2306E8;
  if (!qword_27F2306E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306E8);
  }

  return result;
}

unint64_t sub_24EDEA1C0()
{
  result = qword_27F2306F0;
  if (!qword_27F2306F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306F0);
  }

  return result;
}

unint64_t sub_24EDEA218()
{
  result = qword_27F2306F8;
  if (!qword_27F2306F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2306F8);
  }

  return result;
}

unint64_t sub_24EDEA270()
{
  result = qword_27F230700;
  if (!qword_27F230700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230700);
  }

  return result;
}

unint64_t sub_24EDEA2C8()
{
  result = qword_27F230708;
  if (!qword_27F230708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230708);
  }

  return result;
}

uint64_t sub_24EDEA31C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 280);
  result = type metadata accessor for ShelfLayoutEnvironment();
  v7 = (a1 + *(result + 48));
  if ((v7[1] & 1) == 0)
  {
    v9 = *v7;
    v10 = *(v2 + 288);
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140B8) + 48);
    *a2 = v9;
    *&a2[v11] = v10;
    v12 = *MEMORY[0x277D7EB58];
    v13 = sub_24F9219E8();
    (*(*(v13 - 8) + 104))(&a2[v11], v12, v13);
    v8 = MEMORY[0x277D7EB20];
    goto LABEL_7;
  }

  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  *a2 = v5;
  v8 = MEMORY[0x277D7EB30];
LABEL_7:
  v14 = *v8;
  v15 = sub_24F9218F8();
  v16 = *(*(v15 - 8) + 104);

  return v16(a2, v14, v15);
}

void *sub_24EDEA488@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  v96 = a1;
  v97 = a2;
  v95 = sub_24F925218();
  v3 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v6);
  v94 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v91 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v91 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v91 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v91 - v21;
  v23 = *(v2 + 16);
  if ((v23 >> 6) - 1 < 2)
  {
    goto LABEL_2;
  }

  v92 = v5;
  v93 = v3;
  v24 = *v2;
  v25 = v96;
  v27 = *v96;
  v26 = v96[1];
  if (!(v23 >> 6))
  {
    v100[0] = *(v25 + *(type metadata accessor for ShelfLayoutEnvironment() + 48) + 8);
    sub_24EE94E1C(v24, v25);
    v29 = v28;
    v30 = *MEMORY[0x277D768C8];
    v31 = *(MEMORY[0x277D768C8] + 8);
    v32 = *(MEMORY[0x277D768C8] + 16);
    v33 = *(MEMORY[0x277D768C8] + 24);
    v89 = v32;
    v90 = *(MEMORY[0x277D768C8] + 24);
    v34 = 0x79616C7265766FLL;
    v35 = v27;
    v36 = v26;
    v37 = *MEMORY[0x277D768C8];
    v38 = *(MEMORY[0x277D768C8] + 8);
    v39 = 0xE700000000000000;
LABEL_5:
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(v34, v39, v100, 0, v29, v99, v35, v36, v30, v31, v32, v33, v37, v38, *&v89, v90);
    CGSizeMake(v99, v40, v41);
    memcpy(v100, v99, 0x188uLL);
    goto LABEL_6;
  }

  v44 = *(v2 + 8);
  v45 = v93;
  if (v23 != 192 || v44 | v24)
  {
    if (v23 == 192 && v24 == 1 && !v44)
    {
      v46 = type metadata accessor for ShelfLayoutEnvironment();
      v47 = v45;
      v49 = v95;
      v48 = v96;
      v98[0] = *(v96 + *(v46 + 48) + 8);
      v50 = v96[2];
      v51 = *(v46 + 36);
      (*(v45 + 104))(v22, *MEMORY[0x277CE0558], v95);
      (*(v45 + 56))(v22, 0, 1, v49);
      v52 = *(v6 + 48);
      sub_24EDEBCCC(v48 + v51, v10);
      sub_24EDEBCCC(v22, &v10[v52]);
      v53 = *(v47 + 48);
      if (v53(v10, 1, v49) == 1)
      {
        sub_24E601704(v22, &qword_27F215598);
        v54 = v53(&v10[v52], 1, v49);
        v55 = v97;
        if (v54 == 1)
        {
          sub_24E601704(v10, &qword_27F215598);
LABEL_31:
          sub_24E69C15C(2.0, v50);
          goto LABEL_32;
        }
      }

      else
      {
        sub_24EDEBCCC(v10, v19);
        if (v53(&v10[v52], 1, v49) != 1)
        {
          v71 = v92;
          v72 = v93;
          (*(v93 + 32))(v92, &v10[v52], v49);
          sub_24EDEBD3C();
          v73 = sub_24F92AFF8();
          v74 = *(v72 + 8);
          v74(v71, v49);
          sub_24E601704(v22, &qword_27F215598);
          v74(v19, v49);
          sub_24E601704(v10, &qword_27F215598);
          v55 = v97;
          if (v73)
          {
            goto LABEL_31;
          }

LABEL_25:
          sub_24EF29A90(v50);
LABEL_32:
          PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x72476E6769736564, 0xEB00000000416469, v98, 0, v69, v99, v27, v26, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24), *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));
          CGSizeMake(v99, v75, v76);
          memcpy(v100, v99, 0x188uLL);
          v42 = v55;
          return memcpy(v42, v100, 0x188uLL);
        }

        sub_24E601704(v22, &qword_27F215598);
        (*(v93 + 8))(v19, v49);
        v55 = v97;
      }

      sub_24E601704(v10, &unk_27F254F20);
      goto LABEL_25;
    }

    if (v23 == 192 && v24 == 2 && !v44)
    {
      v56 = type metadata accessor for ShelfLayoutEnvironment();
      v57 = v45;
      v58 = v96;
      v98[0] = *(v96 + *(v56 + 48) + 8);
      v59 = v96[2];
      v60 = *(v56 + 36);
      v61 = *(v45 + 104);
      v62 = v95;
      v61(v16, *MEMORY[0x277CE0558], v95);
      (*(v57 + 56))(v16, 0, 1, v62);
      v63 = *(v6 + 48);
      v64 = v94;
      sub_24EDEBCCC(v58 + v60, v94);
      sub_24EDEBCCC(v16, v64 + v63);
      v65 = *(v57 + 48);
      if (v65(v64, 1, v62) == 1)
      {
        sub_24E601704(v16, &qword_27F215598);
        v66 = v65(v64 + v63, 1, v62);
        v67 = v97;
        if (v66 == 1)
        {
          sub_24E601704(v64, &qword_27F215598);
          v68 = 1;
LABEL_41:
          _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
          sub_24EE7C714(v68 & 1, v59);
          PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x72476E6769736564, 0xEB00000000426469, v98, 0, v83, v99, v27, v26, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24), *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));
          CGSizeMake(v99, v84, v85);
          memcpy(v100, v99, 0x188uLL);
          v42 = v67;
          return memcpy(v42, v100, 0x188uLL);
        }
      }

      else
      {
        sub_24EDEBCCC(v64, v13);
        if (v65(v64 + v63, 1, v62) != 1)
        {
          v79 = v93;
          v80 = v64 + v63;
          v81 = v92;
          (*(v93 + 32))(v92, v80, v62);
          sub_24EDEBD3C();
          v68 = sub_24F92AFF8();
          v82 = *(v79 + 8);
          v82(v81, v62);
          sub_24E601704(v16, &qword_27F215598);
          v82(v13, v62);
          sub_24E601704(v94, &qword_27F215598);
          v67 = v97;
          goto LABEL_41;
        }

        sub_24E601704(v16, &qword_27F215598);
        (*(v93 + 8))(v13, v62);
        v67 = v97;
      }

      sub_24E601704(v64, &unk_27F254F20);
      v68 = 0;
      goto LABEL_41;
    }

    if (v23 == 192 && v24 == 3 && !v44)
    {
      v100[0] = *(v96 + *(type metadata accessor for ShelfLayoutEnvironment() + 48) + 8);
      sub_24F2AC800(v96[2]);
      v29 = v70;
      v30 = *MEMORY[0x277D768C8];
      v31 = *(MEMORY[0x277D768C8] + 8);
      v32 = *(MEMORY[0x277D768C8] + 16);
      v33 = *(MEMORY[0x277D768C8] + 24);
      v89 = v32;
      v90 = *(MEMORY[0x277D768C8] + 24);
      v34 = 0x72476E6769736564;
      v39 = 0xEB00000000436469;
LABEL_54:
      v35 = v27;
      v36 = v26;
      v37 = v30;
      v38 = v31;
      goto LABEL_5;
    }

    v77 = v96;
    if (v23 == 192 && v24 == 4 && !v44)
    {
      v100[0] = *(v77 + *(type metadata accessor for ShelfLayoutEnvironment() + 48) + 8);
      sub_24EAC876C(v77[2]);
      v29 = v78;
      v30 = *MEMORY[0x277D768C8];
      v31 = *(MEMORY[0x277D768C8] + 8);
      v32 = *(MEMORY[0x277D768C8] + 16);
      v33 = *(MEMORY[0x277D768C8] + 24);
      v89 = v32;
      v90 = *(MEMORY[0x277D768C8] + 24);
      v34 = 0x72476E6769736564;
      v39 = 0xEB00000000446469;
      goto LABEL_54;
    }

    if (v23 == 192 && v24 == 5 && !v44)
    {
      v100[0] = *(v77 + *(type metadata accessor for ShelfLayoutEnvironment() + 48) + 8);
      sub_24F24DF2C(v77);
      v29 = v86;
      v30 = *MEMORY[0x277D768C8];
      v31 = *(MEMORY[0x277D768C8] + 8);
      v32 = *(MEMORY[0x277D768C8] + 16);
      v33 = *(MEMORY[0x277D768C8] + 24);
      v89 = v32;
      v90 = *(MEMORY[0x277D768C8] + 24);
      v34 = 0x4C7972617262696CLL;
      v39 = 0xEC000000736B6E69;
      goto LABEL_54;
    }

    if (v23 == 192 && v24 == 6 && !v44)
    {
      v100[0] = *(v77 + *(type metadata accessor for ShelfLayoutEnvironment() + 48) + 8);
      v29 = sub_24F1B3B98(v77);
      v30 = *MEMORY[0x277D768C8];
      v31 = *(MEMORY[0x277D768C8] + 8);
      v32 = *(MEMORY[0x277D768C8] + 16);
      v33 = *(MEMORY[0x277D768C8] + 24);
      v89 = v32;
      v90 = *(MEMORY[0x277D768C8] + 24);
      v34 = 0x7262694C656D6167;
      v39 = 0xEB00000000797261;
      goto LABEL_54;
    }

    if (v23 == 192 && v24 == 7 && !v44)
    {
      v87 = type metadata accessor for ShelfLayoutEnvironment();
      v100[0] = *(v77 + *(v87 + 48) + 8);
      MEMORY[0x28223BE20](v87);
      v89 = *&v77;
      v29 = sub_24E76C980(sub_24EDEBCAC, (&v91 - 4), &unk_2861BCE80);
      v30 = *MEMORY[0x277D768C8];
      v31 = *(MEMORY[0x277D768C8] + 8);
      v32 = *(MEMORY[0x277D768C8] + 16);
      v33 = *(MEMORY[0x277D768C8] + 24);
      v89 = v32;
      v90 = *(MEMORY[0x277D768C8] + 24);
      v34 = 0x65756E69746E6F63;
      v39 = 0xEF676E6979616C50;
      goto LABEL_54;
    }

    if (v23 != 192 || v24 != 8 || v44)
    {
      v100[0] = *(v96 + *(type metadata accessor for ShelfLayoutEnvironment() + 48) + 8);
      v88 = sub_24E7335BC(v96);
      v30 = *MEMORY[0x277D768C8];
      v31 = *(MEMORY[0x277D768C8] + 8);
      v32 = *(MEMORY[0x277D768C8] + 16);
      v33 = *(MEMORY[0x277D768C8] + 24);
      v89 = v32;
      v90 = *(MEMORY[0x277D768C8] + 24);
      v39 = 0x800000024FA5E1A0;
      v35 = v27;
      v36 = v26;
      v37 = *MEMORY[0x277D768C8];
      v38 = *(MEMORY[0x277D768C8] + 8);
      v29 = v88;
      v34 = 0xD000000000000015;
      goto LABEL_5;
    }
  }

LABEL_2:
  sub_24EDEBC70(v100);
LABEL_6:
  v42 = v97;
  return memcpy(v42, v100, 0x188uLL);
}

uint64_t sub_24EDEB058@<X0>(double *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_24F9219E8();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *v2;
  v11 = v2[1];
  v13 = *(v2 + 16);
  v14 = v13 >> 6;
  if (v13 >> 6 <= 1)
  {
    if (v14)
    {
      *a2 = v12;
      v20 = *(v6 + 104);
      *v10 = v11;
      v21 = v7;
      v20(v10, **(&unk_27968DB50 + (v13 & 0x3F)), v7, v8);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140B8);
      (*(v6 + 32))(&a2[*(v22 + 48)], v10, v21);
      v23 = *MEMORY[0x277D7EB20];
      v24 = sub_24F9218F8();
      return (*(*(v24 - 8) + 104))(a2, v23, v24);
    }

    goto LABEL_3;
  }

  if (v14 == 2)
  {
    *a2 = v12;
    goto LABEL_8;
  }

  if (!(v11 | v12) && v13 == 192)
  {
    v25 = v7;
    if ((*(a1 + *(type metadata accessor for ShelfLayoutEnvironment() + 48) + 8) & 1) == 0)
    {
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140B8) + 48);
      *a2 = 1;
      *&a2[v26] = 0x3FF0000000000000;
      (*(v6 + 104))(&a2[v26], *MEMORY[0x277D7EB68], v25);
      v16 = MEMORY[0x277D7EB20];
      goto LABEL_9;
    }

    *a2 = 1;
LABEL_8:
    v16 = MEMORY[0x277D7EB30];
LABEL_9:
    v17 = *v16;
    v18 = sub_24F9218F8();
    v19 = *(*(v18 - 8) + 104);

    return v19(a2, v17, v18);
  }

  if ((v12 != 1 || v11 || v13 != 192) && (v12 != 2 || v11 || v13 != 192) && (v12 != 3 || v11 || v13 != 192) && (v12 != 4 || v11 || v13 != 192) && (v12 != 5 || v11 || v13 != 192) && (v12 != 6 || v11 || v13 != 192) && (v12 != 7 || v11 || v13 != 192) && v12 == 8 && !v11 && v13 == 192)
  {
    sub_24E6B00B4(*a1);
    v29[0] = xmmword_24F950E90;
    LOBYTE(v29[1]) = -64;
    return sub_24EDEB058(a1);
  }

LABEL_3:
  v27[0] = *v2;
  v27[1] = v11;
  LOBYTE(v27[2]) = v13;
  sub_24EDEA488(a1, v28);
  memcpy(v29, v28, 0x188uLL);
  if (sub_24EDEBC58(v29) == 1)
  {
    v27[0] = 0;
    v27[1] = 0;
    LOBYTE(v27[2]) = -64;
    return sub_24EDEB058(a1);
  }

  memcpy(v27, v29, sizeof(v27));
  sub_24EDEA31C(a1, a2);
  return sub_24E601704(v28, &qword_27F226148);
}

uint64_t sub_24EDEB448(double *a1)
{
  v3 = sub_24F921998();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  if ((v8 >> 6) - 1 >= 2)
  {
    v10 = *v1;
    v11 = v1[1];
    if (v8 >> 6)
    {
      if (!(v11 | v10) && v8 == 192)
      {
        goto LABEL_2;
      }

      if ((v10 != 1 || v11 || v8 != 192) && (v10 != 2 || v11 || v8 != 192) && (v10 != 3 || v11 || v8 != 192) && (v10 != 4 || v11 || v8 != 192) && (v10 != 5 || v11 || v8 != 192) && (v10 != 6 || v11 || v8 != 192) && (v10 != 7 || v11 || v8 != 192) && v10 == 8 && !v11 && v8 == 192)
      {
        v12 = v5;
        sub_24E6B00B4(*a1);
        sub_24F921958();
        v17[0] = xmmword_24F950E90;
        LOBYTE(v17[1]) = -64;
        sub_24EDEB448(a1);
        return (*(v4 + 8))(v7, v12);
      }
    }

    v13 = *v1;
    v14 = v11;
    v15 = v8;
    sub_24EDEA488(a1, v16);
    memcpy(v17, v16, 0x188uLL);
    if (sub_24EDEBC58(v17) == 1)
    {
      v13 = 0;
      v14 = 0;
      v15 = -64;
      return sub_24EDEB448(a1);
    }

    else
    {
      sub_24F921978();
      return sub_24E601704(v16, &qword_27F226148);
    }
  }

LABEL_2:
  sub_24E6B00B4(*a1);

  return sub_24F921958();
}

uint64_t sub_24EDEB704(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574756C6F736261 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697463617266 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7942656469766964 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24EDEB81C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x416E6769736564 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x426E6769736564 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x436E6769736564 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446E6769736564 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4C7972617262696CLL && a2 == 0xEC000000736B6E69 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7262694C656D6167 && a2 == 0xEB00000000797261 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65756E69746E6F63 && a2 == 0xEF676E6979616C50 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA5E180 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA5E1A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x5279616C7265766FLL && a2 == 0xEF65676150746F6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x746E6F7A69726F68 && a2 == 0xEA00000000006C61 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6C61636974726576 && a2 == 0xE800000000000000)
  {

    return 12;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_24EDEBC58(uint64_t a1)
{
  v1 = *(a1 + 264);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_24EDEBC70(uint64_t a1)
{
  *(a1 + 384) = 0;
  result = 0.0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_24EDEBCCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EDEBD3C()
{
  result = qword_27F215650;
  if (!qword_27F215650)
  {
    sub_24F925218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215650);
  }

  return result;
}

uint64_t ArticleDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a3;
  v53 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - v13;
  v15 = swift_allocObject();
  v48 = a2;
  sub_24E99091C(a2, v14);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_24E911D90(v14, v18 + v16);
  v19 = a1;
  *(v18 + v17) = a1;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v20 = v18;
  sub_24E99091C(a2, v11);
  *(v15 + qword_27F22F198) = 0;
  v21 = MEMORY[0x277D84F90];
  *(v15 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v22 = qword_27F39C780;
  v54 = a5;

  swift_retain_n();

  *(v15 + v22) = sub_24E60986C(v21);
  v23 = (v15 + qword_27F22F1A8);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v15 + qword_27F22F1B0);
  *v24 = 0;
  v24[1] = 0;
  v51 = v24;
  v25 = (v15 + qword_27F22F1B8);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v15 + qword_27F22F1C0);
  *v26 = 0;
  v26[1] = 0;
  v49 = v26;
  v27 = (v15 + qword_27F22F1C8);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v15 + qword_27F39C788);
  *v28 = 0u;
  v28[1] = 0u;
  *(v28 + 25) = 0u;
  *(v15 + qword_27F39C790) = 0;
  *(v15 + qword_27F22F1D0) = 0;
  *(v15 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v15 + qword_27F39C798) = 0;
  v29 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEA8);
  swift_allocObject();
  *(v15 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v15 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEC0);
  swift_allocObject();
  *(v15 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7B8;
  swift_allocObject();
  *(v15 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v15 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  v35 = sub_24F92ADA8();

  v36 = v19;

  sub_24E70E058(v48);
  *(v15 + v34) = v35;
  v37 = qword_27F22F1E0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v39 = *(*(v38 - 8) + 56);
  v39(v15 + v37, 1, 1, v38);
  v39(v15 + qword_27F22F1E8, 1, 1, v38);
  v40 = v52;
  *(v15 + 16) = v36;
  sub_24E911D90(v50, v15 + qword_27F39C7D0);
  *v23 = sub_24EDECB20;
  v23[1] = v20;
  *v25 = 0;
  v25[1] = 0;
  if (v40)
  {
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    v42 = sub_24E965688;
  }

  else
  {
    v42 = 0;
    v41 = 0;
  }

  v43 = v51;
  *v51 = v42;
  v43[1] = v41;
  v44 = v49;
  *v49 = sub_24EC9810C;
  v44[1] = v36;
  *v27 = 0;
  v27[1] = 0;
  v45 = v54;
  *(v15 + qword_27F22F1F0) = v53;
  *(v15 + qword_27F39C7D8) = v45;
  return v15;
}

uint64_t ArticleDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v55 = a3;
  v56 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v51 = a2;
  sub_24E99091C(a2, &v50 - v15);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = (v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_24E911D90(v16, v19 + v17);
  *(v19 + v18) = a1;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  sub_24E99091C(a2, v13);
  *(v6 + qword_27F22F198) = 0;
  v20 = MEMORY[0x277D84F90];
  *(v6 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v21 = qword_27F39C780;
  v57 = a5;

  swift_retain_n();

  *(v6 + v21) = sub_24E60986C(v20);
  v22 = (v6 + qword_27F22F1A8);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v6 + qword_27F22F1B0);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v6 + qword_27F22F1B8);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v6 + qword_27F22F1C0);
  *v25 = 0;
  v25[1] = 0;
  v52 = v25;
  v26 = (v6 + qword_27F22F1C8);
  *v26 = 0;
  v26[1] = 0;
  v54 = v26;
  v27 = (v6 + qword_27F39C788);
  *v27 = 0u;
  v27[1] = 0u;
  *(v27 + 25) = 0u;
  *(v6 + qword_27F39C790) = 0;
  *(v6 + qword_27F22F1D0) = 0;
  *(v6 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v6 + qword_27F39C798) = 0;
  v28 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEA8);
  swift_allocObject();
  *(v6 + v28) = sub_24F92ADA8();
  v29 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v6 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEC0);
  swift_allocObject();
  *(v6 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7B8;
  swift_allocObject();
  *(v6 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v6 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  v34 = sub_24F92ADA8();

  sub_24E70E058(v51);
  *(v6 + v33) = v34;
  v35 = qword_27F22F1E0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v37 = *(*(v36 - 8) + 56);
  v37(v6 + v35, 1, 1, v36);
  v37(v6 + qword_27F22F1E8, 1, 1, v36);
  v38 = v55;
  *(v6 + 16) = a1;
  sub_24E911D90(v53, v6 + qword_27F39C7D0);
  v39 = *v22;
  *v22 = sub_24EDECE20;
  v22[1] = v19;
  sub_24E824448(v39);
  v40 = *v24;
  *v24 = 0;
  v24[1] = 0;
  sub_24E824448(v40);
  if (v38)
  {
    v41 = swift_allocObject();
    *(v41 + 16) = v38;
    v42 = sub_24EC02BCC;
  }

  else
  {
    v42 = 0;
    v41 = 0;
  }

  v43 = *v23;
  *v23 = v42;
  v23[1] = v41;
  sub_24E824448(v43);
  v44 = v52;
  v45 = *v52;
  *v52 = sub_24EDECE24;
  v44[1] = a1;
  sub_24E824448(v45);
  v46 = v54;
  v47 = *v54;
  *v54 = 0;
  v46[1] = 0;
  sub_24E824448(v47);
  v48 = v57;
  *(v6 + qword_27F22F1F0) = v56;
  *(v6 + qword_27F39C7D8) = v48;
  return v6;
}

uint64_t sub_24EDEC7E0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ArticlePageIntent();
  MEMORY[0x28223BE20](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = sub_24F91F4A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E99091C(a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24E70E058(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230720);
    sub_24EDECD58();
    swift_allocError();
    *v13 = 0;
    return sub_24F92A978();
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v17[0] = 0xD000000000000011;
    v17[1] = 0x800000024FA53E10;
    sub_24F92C7F8();
    (*(v10 + 16))(&v5[*(v3 + 20)], v12, v9);
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    sub_24F929C28();

    sub_24F928FE8();
    sub_24F929BF8();

    v15 = sub_24F929C08();

    v16 = sub_24EB472E8(v5, v15, "GameStoreKit/ArticleDiffablePageContentPresenter.swift", 54, 2);

    sub_24EDECDBC(v5);
    (*(v10 + 8))(v12, v9);
    return v16;
  }
}

uint64_t sub_24EDECB24(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  v4 = sub_24EB46264(a1, a2, "GameStoreKit/ArticleDiffablePageContentPresenter.swift", 54, 2);

  return v4;
}

uint64_t ArticleDiffablePageContentPresenter.__deallocating_deinit()
{
  _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_24EDECC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_24E824448(a10);
  sub_24E824448(a6);
  sub_24E824448(a4);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_24EDECCA8()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for ArticleDiffablePageContentPresenter()
{
  result = qword_27F230710;
  if (!qword_27F230710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EDECD58()
{
  result = qword_27F230728;
  if (!qword_27F230728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230728);
  }

  return result;
}

uint64_t sub_24EDECDBC(uint64_t a1)
{
  v2 = type metadata accessor for ArticlePageIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppStateDataSourceError.errorDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (*(v0 + 48))
  {
    if (*(v0 + 48) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_24F9479A0;

      v6 = sub_24F92B098();
      v7 = AMSHashIfNeeded();

      if (v7)
      {
        v8 = sub_24F92B0D8();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0;
      }

      v26 = MEMORY[0x277D837D0];
      *(v5 + 56) = MEMORY[0x277D837D0];
      v27 = sub_24E90A06C();
      if (v10)
      {
        v28 = v8;
      }

      else
      {
        v28 = 0;
      }

      v29 = 0xE000000000000000;
      if (v10)
      {
        v29 = v10;
      }

      *(v5 + 32) = v28;
      *(v5 + 40) = v29;
      *(v5 + 96) = v26;
      *(v5 + 104) = v27;
      *(v5 + 64) = v27;
      *(v5 + 72) = v2;
      *(v5 + 80) = v1;
      *(v5 + 136) = v26;
      *(v5 + 144) = v27;
      *(v5 + 112) = v4;
      *(v5 + 120) = v3;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_24F93A400;
      v24 = MEMORY[0x277D837D0];
      *(v23 + 56) = MEMORY[0x277D837D0];
      v25 = sub_24E90A06C();
      *(v23 + 32) = v2;
      *(v23 + 40) = v1;
      *(v23 + 96) = v24;
      *(v23 + 104) = v25;
      *(v23 + 64) = v25;
      *(v23 + 72) = v4;
      *(v23 + 80) = v3;
    }
  }

  else if (v0[4])
  {

    v11 = sub_24F91F268();
    v12 = [v11 code];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_24F93FC20;
    v14 = MEMORY[0x277D837D0];
    *(v13 + 56) = MEMORY[0x277D837D0];
    v15 = sub_24E90A06C();
    *(v13 + 32) = v2;
    *(v13 + 40) = v1;
    *(v13 + 96) = v14;
    *(v13 + 104) = v15;
    *(v13 + 64) = v15;
    *(v13 + 72) = v4;
    v16 = MEMORY[0x277D83B88];
    *(v13 + 80) = v3;
    v17 = MEMORY[0x277D83C10];
    *(v13 + 136) = v16;
    *(v13 + 144) = v17;
    *(v13 + 112) = v12;
    v18 = sub_24F91F268();
    v19 = [v18 domain];

    v20 = sub_24F92B0D8();
    v22 = v21;

    *(v13 + 176) = v14;
    *(v13 + 184) = v15;
    *(v13 + 152) = v20;
    *(v13 + 160) = v22;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_24F9479A0;
    v32 = MEMORY[0x277D837D0];
    *(v31 + 56) = MEMORY[0x277D837D0];
    v33 = sub_24E90A06C();
    *(v31 + 32) = v2;
    *(v31 + 40) = v1;
    *(v31 + 96) = v32;
    *(v31 + 104) = v33;
    *(v31 + 64) = v33;
    *(v31 + 72) = v4;
    *(v31 + 80) = v3;
    *(v31 + 136) = v32;
    *(v31 + 144) = v33;
    *(v31 + 112) = 4271950;
    *(v31 + 120) = 0xE300000000000000;
  }

  return sub_24F92B118();
}