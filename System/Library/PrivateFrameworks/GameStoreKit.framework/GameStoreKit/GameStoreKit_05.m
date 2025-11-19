uint64_t sub_24E670A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215ED8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EE0);
  v6 = MEMORY[0x28223BE20](v37);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  MEMORY[0x28223BE20](v8);
  v38 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EE8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EF0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v36 - v20;
  v22 = type metadata accessor for LargeButtonContentView();
  v23 = *(v22 + 36);
  v24 = *(a1 + v23);
  if (*(a1 + v23))
  {
    (*(v13 + 56))(v21, 1, 1, v12);
    sub_24E670EC0(v5);
    if (v24 != 1 && (*(a1 + *(v22 + 56)) & 1) != 0)
    {
      v25 = sub_24F926C88();
LABEL_8:
      v41 = v25;
      goto LABEL_9;
    }

LABEL_7:
    v25 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    goto LABEL_8;
  }

  sub_24E670EC0(v15);
  v36 = *(v12 + 36);
  v26 = *MEMORY[0x277CE13C0];
  v27 = sub_24F927748();
  (*(*(v27 - 8) + 104))(&v15[v36], v26, v27);
  sub_24E6009C8(v15, v21, &qword_27F215EE8);
  (*(v13 + 56))(v21, 0, 1, v12);
  sub_24E670EC0(v5);
  if ((*(a1 + *(v22 + 56)) & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_24F926C88();
  v28 = sub_24F926D08();

  v41 = v28;
LABEL_9:
  v29 = sub_24F9238D8();
  sub_24E6009C8(v5, v10, &qword_27F215ED8);
  *&v10[*(v37 + 36)] = v29;
  v30 = v10;
  v31 = v38;
  sub_24E6009C8(v30, v38, &qword_27F215EE0);
  sub_24E60169C(v21, v19, &qword_27F215EF0);
  v32 = v39;
  sub_24E60169C(v31, v39, &qword_27F215EE0);
  v33 = v40;
  sub_24E60169C(v19, v40, &qword_27F215EF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EF8);
  sub_24E60169C(v32, v33 + *(v34 + 48), &qword_27F215EE0);
  sub_24E601704(v31, &qword_27F215EE0);
  sub_24E601704(v21, &qword_27F215EF0);
  sub_24E601704(v32, &qword_27F215EE0);
  return sub_24E601704(v19, &qword_27F215EF0);
}

uint64_t sub_24E670EC0@<X0>(uint64_t a1@<X8>)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F00);
  MEMORY[0x28223BE20](v63);
  v4 = (&v53 - v3);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F08);
  MEMORY[0x28223BE20](v60);
  v61 = (&v53 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F10);
  MEMORY[0x28223BE20](v6);
  v62 = &v53 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F18);
  MEMORY[0x28223BE20](v57);
  v9 = &v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F20);
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F28);
  MEMORY[0x28223BE20](v56);
  v14 = &v53 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F30);
  MEMORY[0x28223BE20](v59);
  v58 = &v53 - v15;
  v16 = type metadata accessor for LargeButtonContentView();
  v17 = v16;
  v18 = (v1 + v16[5]);
  v19 = v18[1];
  if (v19)
  {
    v53 = v6;
    v54 = v4;
    v55 = a1;
    v20 = *v18;
    if (*(v1 + v16[6] + 8))
    {
      if (*(v1 + v16[15]))
      {
        *v9 = sub_24F9249A8();
        *(v9 + 1) = 0x4018000000000000;
        v9[16] = 0;
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F70);
        sub_24E671C68(v1, v20, v19, &v9[*(v21 + 44)]);
        v22 = &qword_27F215F18;
        sub_24E60169C(v9, v12, &qword_27F215F18);
        swift_storeEnumTagMultiPayload();
        sub_24E602068(&qword_27F215F50, &qword_27F215F28);
        sub_24E602068(&qword_27F215F58, &qword_27F215F18);
        v23 = v58;
        sub_24F924E28();
        v24 = v9;
      }

      else
      {
        *v14 = sub_24F924C88();
        *(v14 + 1) = 0x4000000000000000;
        v14[16] = 0;
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F78);
        sub_24E6718CC(v1, v20, v19, &v14[*(v31 + 44)]);
        v22 = &qword_27F215F28;
        sub_24E60169C(v14, v12, &qword_27F215F28);
        swift_storeEnumTagMultiPayload();
        sub_24E602068(&qword_27F215F50, &qword_27F215F28);
        sub_24E602068(&qword_27F215F58, &qword_27F215F18);
        v23 = v58;
        sub_24F924E28();
        v24 = v14;
      }

      sub_24E601704(v24, v22);
      sub_24E60169C(v23, v61, &qword_27F215F30);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F68);
      sub_24E672758();
      sub_24E67283C();
      v32 = v62;
      sub_24F924E28();
      sub_24E60169C(v32, v54, &qword_27F215F10);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0);
      sub_24E6726CC();
      sub_24E60156C();
      v33 = v55;
      sub_24F924E28();
      sub_24E601704(v32, &qword_27F215F10);
      sub_24E601704(v23, &qword_27F215F30);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F38);
      return (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    }

    else
    {
      v64 = *v18;
      v65 = v19;
      sub_24E600AEC();

      v26 = sub_24F925E18();
      v28 = v27;
      v30 = v29;
      if (!*(v1 + v17[7]))
      {
        if (*(v1 + v17[10]))
        {
          sub_24F925A28();
        }

        else
        {
          sub_24F925898();
        }

        sub_24F9258E8();
      }

      v41 = sub_24F925C98();
      v43 = v42;
      v45 = v44;
      v47 = v46;

      sub_24E600B40(v26, v28, v30 & 1);

      KeyPath = swift_getKeyPath();
      v49 = v61;
      *v61 = v41;
      v49[1] = v43;
      *(v49 + 16) = v45 & 1;
      v49[3] = v47;
      v49[4] = KeyPath;
      v58 = v47;
      v49[5] = 2;
      *(v49 + 48) = 0;
      swift_storeEnumTagMultiPayload();
      sub_24E5FD138(v41, v43, v45 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F68);
      sub_24E672758();
      sub_24E67283C();
      v50 = v62;
      sub_24F924E28();
      sub_24E60169C(v50, v54, &qword_27F215F10);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0);
      sub_24E6726CC();
      sub_24E60156C();
      v51 = v55;
      sub_24F924E28();
      sub_24E600B40(v41, v43, v45 & 1);

      sub_24E601704(v50, &qword_27F215F10);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F38);
      return (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
    }
  }

  else if (*(v1 + v16[6] + 8))
  {

    v25 = sub_24F926DF8();
    if (*(v1 + v17[10]))
    {
      sub_24F925898();
    }

    else
    {
      sub_24F925988();
    }

    v38 = sub_24F9258E8();

    v39 = swift_getKeyPath();
    *v4 = v25;
    v4[1] = v39;
    v4[2] = v38;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0);
    sub_24E6726CC();
    sub_24E60156C();
    sub_24F924E28();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F38);
    return (*(*(v40 - 8) + 56))(a1, 0, 1, v40);
  }

  else
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F38);
    v37 = *(*(v36 - 8) + 56);

    return v37(a1, 1, 1, v36);
  }
}

uint64_t sub_24E6718CC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v39 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F80);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = (&v38 - v11);

  v13 = sub_24F926DF8();
  v14 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
  v16 = *MEMORY[0x277CE1050];
  v17 = sub_24F926E78();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = swift_getKeyPath();
  *v12 = v13;
  v18 = type metadata accessor for LargeButtonContentView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  sub_24F9237D8();
  sub_24F927618();
  sub_24F9238C8();
  v19 = (v12 + *(v8 + 44));
  v20 = v44;
  *v19 = v43;
  v19[1] = v20;
  v19[2] = v45;
  v41 = a2;
  v42 = a3;
  sub_24E600AEC();

  v21 = sub_24F925E18();
  v23 = v22;
  v25 = v24;
  if (!*(a1 + *(v18 + 28)))
  {
    if (*(a1 + *(v18 + 40)))
    {
      sub_24F925A28();
    }

    else
    {
      sub_24F925898();
    }

    sub_24F9258E8();
  }

  v26 = sub_24F925C98();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_24E600B40(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  v34 = v40;
  sub_24E60169C(v12, v40, &qword_27F215F80);
  v35 = v39;
  sub_24E60169C(v34, v39, &qword_27F215F80);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F88) + 48);
  *v36 = v26;
  *(v36 + 8) = v28;
  v30 &= 1u;
  *(v36 + 16) = v30;
  *(v36 + 24) = v32;
  *(v36 + 32) = KeyPath;
  *(v36 + 40) = 2;
  *(v36 + 48) = 0;
  sub_24E5FD138(v26, v28, v30);

  sub_24E601704(v12, &qword_27F215F80);
  sub_24E600B40(v26, v28, v30);

  return sub_24E601704(v34, &qword_27F215F80);
}

uint64_t sub_24E671C68@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v37 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = (&v36 - v11);

  v13 = sub_24F926DF8();
  v14 = (v12 + *(v8 + 44));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
  v16 = *MEMORY[0x277CE1050];
  v17 = sub_24F926E78();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = swift_getKeyPath();
  *v12 = v13;
  v39 = a2;
  v40 = a3;
  sub_24E600AEC();

  v18 = sub_24F925E18();
  v20 = v19;
  v22 = v21;
  v23 = type metadata accessor for LargeButtonContentView();
  if (!*(a1 + *(v23 + 28)))
  {
    if (*(a1 + *(v23 + 40)))
    {
      sub_24F925A28();
    }

    else
    {
      sub_24F925898();
    }

    sub_24F9258E8();
  }

  v24 = sub_24F925C98();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_24E600B40(v18, v20, v22 & 1);

  KeyPath = swift_getKeyPath();
  v32 = v38;
  sub_24E60169C(v12, v38, &qword_27F22DF20);
  v33 = v37;
  sub_24E60169C(v32, v37, &qword_27F22DF20);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F90) + 48);
  *v34 = v24;
  *(v34 + 8) = v26;
  v28 &= 1u;
  *(v34 + 16) = v28;
  *(v34 + 24) = v30;
  *(v34 + 32) = KeyPath;
  *(v34 + 40) = 2;
  *(v34 + 48) = 0;
  sub_24E5FD138(v24, v26, v28);

  sub_24E601704(v12, &qword_27F22DF20);
  sub_24E600B40(v24, v26, v28);

  return sub_24E601704(v32, &qword_27F22DF20);
}

double sub_24E671F88()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = sub_24F924C48();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 9.0;
  if ((*(v0 + *(type metadata accessor for LargeButtonContentView() + 40)) & 1) == 0)
  {
    sub_24E60169C(v0, v7, &qword_27F215EB8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v9 + 32))(v11, v7, v8);
    }

    else
    {
      sub_24F92BDC8();
      v14 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
    }

    v15 = (*(v9 + 88))(v11, v8);
    if (v15 != *MEMORY[0x277CE0268] && v15 != *MEMORY[0x277CE0298] && v15 != *MEMORY[0x277CE02A0] && v15 != *MEMORY[0x277CE0290])
    {
      v12 = 13.0;
      if (v15 != *MEMORY[0x277CE0260] && v15 != *MEMORY[0x277CE0270] && v15 != *MEMORY[0x277CE0248])
      {
        v12 = 15.0;
        if (v15 != *MEMORY[0x277CE0280] && v15 != *MEMORY[0x277CE0278] && v15 != *MEMORY[0x277CE0288] && v15 != *MEMORY[0x277CE0250] && v15 != *MEMORY[0x277CE0258])
        {
          (*(v9 + 8))(v11, v8);
          return 9.0;
        }
      }
    }
  }

  return v12;
}

unint64_t sub_24E672338()
{
  result = qword_27F215E50;
  if (!qword_27F215E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215E40);
    sub_24E6723F4();
    sub_24E6729C0(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215E50);
  }

  return result;
}

unint64_t sub_24E6723F4()
{
  result = qword_27F215E58;
  if (!qword_27F215E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215E38);
    sub_24E6724B0();
    sub_24E6729C0(&qword_27F215EA0, type metadata accessor for LargeButtonForegroundStyleViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215E58);
  }

  return result;
}

unint64_t sub_24E6724B0()
{
  result = qword_27F215E60;
  if (!qword_27F215E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215E68);
    sub_24E672568();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215E60);
  }

  return result;
}

unint64_t sub_24E672568()
{
  result = qword_27F215E70;
  if (!qword_27F215E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215E78);
    sub_24E6725F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215E70);
  }

  return result;
}

unint64_t sub_24E6725F4()
{
  result = qword_27F215E80;
  if (!qword_27F215E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215E88);
    sub_24E602068(&qword_27F215E90, &qword_27F215E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215E80);
  }

  return result;
}

unint64_t sub_24E6726CC()
{
  result = qword_27F215F40;
  if (!qword_27F215F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215F10);
    sub_24E672758();
    sub_24E67283C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215F40);
  }

  return result;
}

unint64_t sub_24E672758()
{
  result = qword_27F215F48;
  if (!qword_27F215F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215F30);
    sub_24E602068(&qword_27F215F50, &qword_27F215F28);
    sub_24E602068(&qword_27F215F58, &qword_27F215F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215F48);
  }

  return result;
}

unint64_t sub_24E67283C()
{
  result = qword_27F215F60;
  if (!qword_27F215F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215F68);
    sub_24E602068(&qword_27F214778, &qword_27F214780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215F60);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_24E6729C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E672A08(uint64_t a1)
{
  v2 = type metadata accessor for LargeButtonContentView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E672A64()
{
  result = qword_27F215FE8;
  if (!qword_27F215FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215FE8);
  }

  return result;
}

unint64_t sub_24E672ABC()
{
  result = qword_27F215FF0;
  if (!qword_27F215FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215FF8);
    sub_24E672338();
    sub_24E602068(&qword_27F215EA8, &qword_27F215E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215FF0);
  }

  return result;
}

unint64_t sub_24E672B78()
{
  result = qword_27F216000;
  if (!qword_27F216000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216008);
    sub_24E602068(&qword_27F216010, &qword_27F216018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216000);
  }

  return result;
}

uint64_t RemoveFriendSuggestionAction.suggestion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_24E672C48();
}

uint64_t sub_24E672C50()
{
  if (*v0)
  {
    return 0x726579616C70;
  }

  else
  {
    return 0x746361746E6F63;
  }
}

uint64_t sub_24E672C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746361746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000)
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

uint64_t sub_24E672D60(uint64_t a1)
{
  v2 = sub_24E673308();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E672D9C(uint64_t a1)
{
  v2 = sub_24E673308();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E672DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044)
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

uint64_t sub_24E672E84(uint64_t a1)
{
  v2 = sub_24E6733B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E672EC0(uint64_t a1)
{
  v2 = sub_24E6733B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E672F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000)
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

uint64_t sub_24E672F9C(uint64_t a1)
{
  v2 = sub_24E67335C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E672FD8(uint64_t a1)
{
  v2 = sub_24E67335C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoveFriendSuggestionAction.Suggestion.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216020);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216028);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216030);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = *v1;
  v23 = v1[1];
  v24 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E673308();
  sub_24F92D128();
  if (v13)
  {
    v26 = 1;
    sub_24E67335C();
    v14 = v20;
    sub_24F92CC98();
    v15 = v22;
    sub_24F92CD08();
    (*(v21 + 8))(v14, v15);
  }

  else
  {
    v25 = 0;
    sub_24E6733B0();
    sub_24F92CC98();
    v16 = v19;
    sub_24F92CD08();
    (*(v18 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_24E673308()
{
  result = qword_27F216038;
  if (!qword_27F216038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216038);
  }

  return result;
}

unint64_t sub_24E67335C()
{
  result = qword_27F216040;
  if (!qword_27F216040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216040);
  }

  return result;
}

unint64_t sub_24E6733B0()
{
  result = qword_27F216048;
  if (!qword_27F216048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216048);
  }

  return result;
}

uint64_t RemoveFriendSuggestionAction.Suggestion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216050);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216058);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216060);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24E673308();
  v13 = v34;
  sub_24F92D108();
  if (!v13)
  {
    v34 = v9;
    v14 = sub_24F92CC78();
    v15 = (2 * *(v14 + 16)) | 1;
    v36 = v14;
    v37 = v14 + 32;
    v38 = 0;
    v39 = v15;
    v16 = sub_24E643430();
    v17 = v8;
    if (v16 == 2 || v38 != v39 >> 1)
    {
      v24 = sub_24F92C918();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
      *v26 = &type metadata for RemoveFriendSuggestionAction.Suggestion;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v34 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = v16;
      if (v16)
      {
        v41 = 1;
        sub_24E67335C();
        sub_24F92CBA8();
        v19 = v33;
        v18 = v34;
        v20 = v30;
        v21 = sub_24F92CC28();
        v23 = v22;
        (*(v32 + 8))(v4, v20);
      }

      else
      {
        v41 = 0;
        sub_24E6733B0();
        v28 = v7;
        sub_24F92CBA8();
        v19 = v33;
        v18 = v34;
        v21 = sub_24F92CC28();
        v23 = v29;
        (*(v31 + 8))(v28, v5);
      }

      (*(v18 + 8))(v11, v17);
      swift_unknownObjectRelease();
      *v19 = v21;
      *(v19 + 8) = v23;
      *(v19 + 16) = v40 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t RemoveFriendSuggestionAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveFriendSuggestionAction() + 20);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RemoveFriendSuggestionAction()
{
  result = qword_27F216098;
  if (!qword_27F216098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E6739E8()
{
  if (*v0)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 0x6974736567677573;
  }
}

uint64_t sub_24E673A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974736567677573 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
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

uint64_t sub_24E673B20(uint64_t a1)
{
  v2 = sub_24E673D6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E673B5C(uint64_t a1)
{
  v2 = sub_24E673D6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoveFriendSuggestionAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216068);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E673D6C();
  sub_24F92D128();
  v9 = v3[1];
  v10 = *(v3 + 16);
  v13 = *v3;
  v14 = v9;
  v15 = v10;
  v12[7] = 0;
  sub_24E672C48();
  sub_24E673DC0();
  sub_24F92CD48();
  sub_24E63FFA4();
  if (!v2)
  {
    type metadata accessor for RemoveFriendSuggestionAction();
    LOBYTE(v13) = 1;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24E673D6C()
{
  result = qword_27F216070;
  if (!qword_27F216070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216070);
  }

  return result;
}

unint64_t sub_24E673DC0()
{
  result = qword_27F216078;
  if (!qword_27F216078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216078);
  }

  return result;
}

uint64_t RemoveFriendSuggestionAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = sub_24F928AD8();
  v18 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216088);
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v17 - v6;
  v8 = type metadata accessor for RemoveFriendSuggestionAction();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E673D6C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v8;
  v11 = v10;
  v13 = v20;
  v12 = v21;
  v25 = 0;
  sub_24E674130();
  v14 = v22;
  sub_24F92CC68();
  v15 = v24;
  *v11 = v23;
  *(v11 + 16) = v15;
  LOBYTE(v23) = 1;
  sub_24E674184(&qword_27F254CB0);
  sub_24F92CC68();
  (*(v13 + 8))(v7, v14);
  (*(v18 + 32))(v11 + *(v17 + 20), v5, v12);
  sub_24E6741C8(v11, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E67422C(v11);
}

unint64_t sub_24E674130()
{
  result = qword_27F216090;
  if (!qword_27F216090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216090);
  }

  return result;
}

uint64_t sub_24E674184(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24F928AD8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E6741C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveFriendSuggestionAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E67422C(uint64_t a1)
{
  v2 = type metadata accessor for RemoveFriendSuggestionAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E674288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24F928AD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24E674340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E6743F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24E674498()
{
  result = sub_24F928AD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E674520(uint64_t a1, unsigned int a2)
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

uint64_t sub_24E674568(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24E67460C()
{
  result = qword_27F2160A8;
  if (!qword_27F2160A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160A8);
  }

  return result;
}

unint64_t sub_24E674664()
{
  result = qword_27F2160B0;
  if (!qword_27F2160B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160B0);
  }

  return result;
}

unint64_t sub_24E6746BC()
{
  result = qword_27F2160B8;
  if (!qword_27F2160B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160B8);
  }

  return result;
}

unint64_t sub_24E674714()
{
  result = qword_27F2160C0;
  if (!qword_27F2160C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160C0);
  }

  return result;
}

unint64_t sub_24E67476C()
{
  result = qword_27F2160C8;
  if (!qword_27F2160C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160C8);
  }

  return result;
}

unint64_t sub_24E6747C4()
{
  result = qword_27F2160D0;
  if (!qword_27F2160D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160D0);
  }

  return result;
}

unint64_t sub_24E67481C()
{
  result = qword_27F2160D8;
  if (!qword_27F2160D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160D8);
  }

  return result;
}

unint64_t sub_24E674874()
{
  result = qword_27F2160E0;
  if (!qword_27F2160E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160E0);
  }

  return result;
}

unint64_t sub_24E6748CC()
{
  result = qword_27F2160E8;
  if (!qword_27F2160E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160E8);
  }

  return result;
}

unint64_t sub_24E674924()
{
  result = qword_27F2160F0;
  if (!qword_27F2160F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160F0);
  }

  return result;
}

unint64_t sub_24E67497C()
{
  result = qword_27F2160F8;
  if (!qword_27F2160F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2160F8);
  }

  return result;
}

unint64_t sub_24E6749D4()
{
  result = qword_27F216100;
  if (!qword_27F216100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216100);
  }

  return result;
}

uint64_t sub_24E674A30()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24E674B1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 56);
  v16 = *(*a1 + 88);
  v4 = *(v1 + 72);
  v15[2] = v3;
  v15[3] = v4;
  v15[1] = v2;
  v15[0] = *(v1 + 24);
  v21 = v16;
  v5 = *(v1 + 40);
  v19 = *(v1 + 56);
  v20 = v4;
  v17 = *(v1 + 24);
  v18 = v5;
  v12 = v19;
  v13 = v4;
  v14 = v16;
  v10 = v17;
  v11 = v5;
  swift_beginAccess();
  v6 = *(v1 + 112);
  if (v6 && v6 >> 62)
  {
    sub_24F92C738();
  }

  sub_24E674F88(v15, v8);
  sub_24E674EDC();
  sub_24F926928();
  v8[2] = v12;
  v8[3] = v13;
  v9 = v14;
  v8[0] = v10;
  v8[1] = v11;
  return sub_24E674FC0(v8);
}

uint64_t sub_24E674C34()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216108);
  sub_24E602068(&qword_27F216110, &qword_27F216118);
  sub_24E674EDC();
  swift_getOpaqueTypeConformance2();
  sub_24E674F30();
  return sub_24F923788();
}

uint64_t sub_24E674D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v2;
  v11 = *(a1 + 64);
  v3 = v11;
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  *(a2 + 32) = v9;
  *(a2 + 48) = v2;
  *(a2 + 64) = v3;
  *a2 = v5;
  *(a2 + 16) = v4;
  return sub_24E674F88(v8, v7);
}

uint64_t sub_24E674D9C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F924C88();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2161A8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2161B0);
  sub_24E602068(&qword_27F2161B8, &qword_27F2161B0);
  sub_24E674EDC();
  sub_24E6774A0();
  return sub_24F927238();
}

uint64_t sub_24E674EA8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

unint64_t sub_24E674EDC()
{
  result = qword_27F216120;
  if (!qword_27F216120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216120);
  }

  return result;
}

unint64_t sub_24E674F30()
{
  result = qword_27F216128;
  if (!qword_27F216128)
  {
    type metadata accessor for GSKDebugMetricsImpressionsView.TreeNode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216128);
  }

  return result;
}

uint64_t sub_24E674FF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24E675040(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E6750A4()
{
  result = qword_27F216130;
  if (!qword_27F216130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216138);
    sub_24E674EDC();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F216140, &qword_27F216148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216130);
  }

  return result;
}

uint64_t sub_24E6751A8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216160);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216168);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v43 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v42 = *(v47 - 8);
  v13 = v42;
  v14 = MEMORY[0x28223BE20](v47);
  v46 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  v48 = *a1;
  sub_24F92CD88();
  v18 = sub_24F925B88();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v48 = v18;
  v49 = v20;
  v22 &= 1u;
  v50 = v22;
  v51 = v24;
  v41 = v17;
  sub_24F9268B8();
  sub_24E600B40(v18, v20, v22);

  v25 = v12;
  *v12 = sub_24F924C98();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v26 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216170) + 44)];
  v40 = v12;
  sub_24E675600(a1, v26);
  *v7 = sub_24F924CA8();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216178);
  sub_24E675880(a1, &v7[*(v27 + 44)]);
  v28 = *(v13 + 16);
  v29 = v46;
  v30 = v47;
  v28(v46, v17, v47);
  v31 = v43;
  sub_24E60169C(v25, v43, &qword_27F216168);
  v32 = v44;
  sub_24E60169C(v7, v44, &qword_27F216160);
  v33 = v45;
  v28(v45, v29, v30);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216180);
  sub_24E60169C(v31, &v33[v34[12]], &qword_27F216168);
  v35 = &v33[v34[16]];
  *v35 = 0;
  v35[8] = 1;
  sub_24E60169C(v32, &v33[v34[20]], &qword_27F216160);
  sub_24E601704(v7, &qword_27F216160);
  sub_24E601704(v40, &qword_27F216168);
  v36 = *(v42 + 8);
  v37 = v47;
  v36(v41, v47);
  sub_24E601704(v32, &qword_27F216160);
  sub_24E601704(v31, &qword_27F216168);
  return (v36)(v46, v37);
}

uint64_t sub_24E675600@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[2];
  v11 = a1[4];
  v28 = a1[1];
  v29 = v10;
  v30 = 0;
  v31 = MEMORY[0x277D84F90];
  sub_24F9268B8();
  if (v11)
  {

    LODWORD(v28) = sub_24F9251C8();
    v12 = sub_24F925C58();
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v11 = v16 & 1;
    sub_24E5FD138(v12, v14, v16 & 1);
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v18 = 0;
  }

  v19 = *(v4 + 16);
  v19(v7, v9, v3);
  v26 = v9;
  v20 = v7;
  v21 = v27;
  v19(v27, v20, v3);
  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216190) + 48)];
  sub_24E65D2B4(v12, v14, v11, v18);
  sub_24E65D2F8(v12, v14, v11, v18);
  *v22 = v12;
  v22[1] = v14;
  v22[2] = v11;
  v22[3] = v18;
  v23 = *(v4 + 8);
  v23(v26, v3);
  sub_24E65D2F8(v12, v14, v11, v18);
  return (v23)(v20, v3);
}

uint64_t sub_24E675880@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = a1[6];
  v15 = a1[8];
  if (v14)
  {
    v26 = a1[5];
    v27 = v14;
    v28 = 0;
    v29 = MEMORY[0x277D84F90];
    sub_24F9268B8();
    (*(v5 + 32))(v13, v7, v4);
    (*(v5 + 56))(v13, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(&v25 - v12, 1, 1, v4);
  }

  if (v15)
  {

    LODWORD(v26) = sub_24F9251C8();
    v16 = sub_24F925C58();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v15 = v20 & 1;
    sub_24E5FD138(v16, v18, v20 & 1);
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v22 = 0;
  }

  sub_24E60169C(v13, v11, &qword_27F2128D8);
  sub_24E60169C(v11, a2, &qword_27F2128D8);
  v23 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216188) + 48));
  sub_24E65D2B4(v16, v18, v15, v22);
  sub_24E65D2F8(v16, v18, v15, v22);
  *v23 = v16;
  v23[1] = v18;
  v23[2] = v15;
  v23[3] = v22;
  sub_24E601704(v13, &qword_27F2128D8);
  sub_24E65D2F8(v16, v18, v15, v22);
  return sub_24E601704(v11, &qword_27F2128D8);
}

uint64_t sub_24E675B8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  *a1 = sub_24F9249A8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216158);
  return sub_24E6751A8(v7, (a1 + *(v5 + 44)));
}

uint64_t sub_24E675C00(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24E861E6C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24E675C7C(v6);
  return sub_24F92C958();
}

uint64_t sub_24E675C7C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24F92CD78();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for GSKDebugMetricsImpressionsView.TreeNode();
        v6 = sub_24F92B618();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_24E675DEC(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_24E675D80(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24E675D80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(v7 + 24) >= *(*v9 + 24))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24E675DEC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v82;
    if (!*v82)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_24E86164C(v10);
      v10 = result;
    }

    v77 = *(v10 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = *&v10[16 * v77];
        v79 = *&v10[16 * v77 + 24];
        sub_24E67635C((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v77 + 16]), (*a3 + 8 * v79), v5);
        if (v4)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_24E86164C(v10);
        }

        if (v77 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v80 = &v10[16 * v77];
        *v80 = v78;
        *(v80 + 1) = v79;
        result = sub_24E8615C0(v77 - 1);
        v77 = *(v10 + 2);
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*(*a3 + 8 * v9) + 24);
      v13 = *(*(*a3 + 8 * v11) + 24);
      v14 = v11 + 2;
      v15 = v12;
      while (v7 != v14)
      {
        v16 = *(*(*a3 + 8 * v14) + 24);
        v17 = (v12 < v13) ^ (v16 >= v15);
        ++v14;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v9 = v14 - 1;
          if (v12 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v12 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v18 = 8 * v9 - 8;
        v19 = 8 * v11;
        v20 = v9;
        v21 = v11;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v22 = *(v23 + v19);
            *(v23 + v19) = *(v23 + v18);
            *(v23 + v18) = v22;
          }

          ++v21;
          v18 -= 8;
          v19 += 8;
        }

        while (v21 < v20);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v32 = *(v10 + 3);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_24E615ED8((v32 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v33;
    v34 = &v10[16 * v5];
    *(v34 + 4) = v11;
    *(v34 + 5) = v9;
    v35 = *v82;
    if (!*v82)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v10 + 4);
          v38 = *(v10 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v10[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_107;
          }

          v59 = &v10[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v63 = &v10[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_71:
        if (v58)
        {
          goto LABEL_106;
        }

        v66 = &v10[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_109;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_78:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v75 = *&v10[16 * v74 + 32];
        v5 = *&v10[16 * v36 + 40];
        sub_24E67635C((*a3 + 8 * v75), (*a3 + 8 * *&v10[16 * v36 + 32]), (*a3 + 8 * v5), v35);
        if (v4)
        {
        }

        if (v5 < v75)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_24E86164C(v10);
        }

        if (v74 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v76 = &v10[16 * v74];
        *(v76 + 4) = v75;
        *(v76 + 5) = v5;
        result = sub_24E8615C0(v36);
        v33 = *(v10 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v10[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v10[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_108;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_112;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 8 * v9 - 8;
  v26 = v11 - v9;
LABEL_30:
  v27 = *(v24 + 8 * v9);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    v30 = *v29;
    if (*(v27 + 24) >= *(*v29 + 24))
    {
LABEL_29:
      ++v9;
      v25 += 8;
      --v26;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    *v29 = v27;
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_24E67635C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v6 + 24) < *(*v4 + 24))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(v21 + 24) < *(*v17 + 24))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_24E676560@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_24E76D644(25705, 0xE200000000000000), (v5 & 1) == 0) || (sub_24E643A9C(*(a1 + 56) + 32 * v4, v28), (swift_dynamicCast() & 1) == 0))
  {

    v10 = 0;
    v6 = 0;
    v7 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
LABEL_9:
    v16 = 0;
    v17 = 0;
    goto LABEL_10;
  }

  v6 = v26;
  v7 = v27;
  if (!*(a1 + 16))
  {
    v10 = -1;
    goto LABEL_23;
  }

  v8 = sub_24E76D644(0x6973736572706D69, 0xEF7865646E496E6FLL);
  if ((v9 & 1) != 0 && (sub_24E643A9C(*(a1 + 56) + 32 * v8, v28), swift_dynamicCast()))
  {
    v10 = v26;
  }

  else
  {
    v10 = -1;
  }

  if (!*(a1 + 16))
  {
LABEL_23:
    v13 = 0;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  v18 = sub_24E76D644(0x657079546469, 0xE600000000000000);
  if (v19)
  {
    sub_24E643A9C(*(a1 + 56) + 32 * v18, v28);
    v20 = swift_dynamicCast();
    if (v20)
    {
      v12 = v26;
    }

    else
    {
      v12 = 0;
    }

    if (v20)
    {
      v13 = v27;
    }

    else
    {
      v13 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_33;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    if (!*(a1 + 16))
    {
LABEL_33:
      v14 = 0;
      v15 = 0;
      goto LABEL_34;
    }
  }

  v21 = sub_24E76D644(1701667182, 0xE400000000000000);
  if ((v22 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_24E643A9C(*(a1 + 56) + 32 * v21, v28);
  v23 = swift_dynamicCast();
  if (v23)
  {
    v14 = v26;
  }

  else
  {
    v14 = 0;
  }

  if (v23)
  {
    v15 = v27;
  }

  else
  {
    v15 = 0;
  }

LABEL_34:
  if (!*(a1 + 16))
  {
LABEL_38:

    goto LABEL_9;
  }

LABEL_35:
  v24 = sub_24E76D644(0x6973736572706D69, 0xEE00657079546E6FLL);
  if ((v25 & 1) == 0)
  {
    goto LABEL_38;
  }

  sub_24E643A9C(*(a1 + 56) + 32 * v24, v28);

  result = swift_dynamicCast();
  v16 = v26;
  v17 = v27;
  if (!result)
  {
    v16 = 0;
    v17 = 0;
  }

LABEL_10:
  *a2 = v10;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v14;
  a2[6] = v15;
  a2[7] = v16;
  a2[8] = v17;
  return result;
}

uint64_t sub_24E676838(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v3 = sub_24E6090B8(MEMORY[0x277D84F90]);
  v73 = v2;
  v74 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    v64 = v2;
    goto LABEL_23;
  }

  v5 = 0;
  v6 = a1 + 32;
  v64 = MEMORY[0x277D84F90];
  v7 = 0xEC00000064496E6FLL;
  while (2)
  {
    v8 = v5;
    while (1)
    {
      if (v8 >= v4)
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_74;
      }

      v9 = *(v6 + 8 * v8);
      swift_bridgeObjectRetain_n();
      sub_24E676560(v9, &v75);
      v10 = v76;
      if (v76)
      {
        break;
      }

LABEL_5:

      ++v8;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    v80 = v77;
    v81 = v78;
    v82 = v79;
    v83 = v75;
    if (!*(v9 + 16) || (v11 = sub_24E76D644(0x6973736572706D69, 0xEC00000064496E6FLL), (v12 & 1) == 0) || (sub_24E643A9C(*(v9 + 56) + 32 * v11, v72), (swift_dynamicCast() & 1) == 0))
    {
      sub_24E676FCC(&v75);
      goto LABEL_5;
    }

    if (*(v9 + 16) && (v13 = sub_24E76D644(0xD000000000000012, 0x800000024FA42AC0), (v14 & 1) != 0))
    {
      sub_24E643A9C(*(v9 + 56) + 32 * v13, v72);

      v15 = swift_dynamicCast();
      v16 = v71;
      if (!v15)
      {
        v16 = 0;
      }

      v67 = v16;
      v17 = v15 ^ 1;
    }

    else
    {

      v67 = 0;
      v17 = 1;
    }

    v65 = v17;
    type metadata accessor for GSKDebugMetricsImpressionsView.TreeNode();
    v18 = swift_allocObject();
    *(v18 + 112) = 0;
    v19 = (v18 + 112);
    v20 = v82;
    *(v18 + 24) = v83;
    v21 = v81;
    *(v18 + 48) = v80;
    *(v18 + 64) = v21;
    *(v18 + 16) = v71;
    *(v18 + 40) = v10;
    *(v18 + 80) = v20;
    *(v18 + 96) = v67;
    *(v18 + 104) = v65;
    v22 = swift_beginAccess();
    *v19 = 0;
    MEMORY[0x253050F00](v22);
    if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
    v64 = v73;
    if (v5 != v4)
    {
      continue;
    }

    break;
  }

LABEL_23:
  v7 = v64;
  if (v64 >> 62)
  {
LABEL_84:
    v23 = sub_24F92C738();
  }

  else
  {
    v23 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = 0;
  if (!v23)
  {
LABEL_72:

    v73 = sub_24EC4E0B4(v61);
    sub_24E675C00(&v73);

    return v73;
  }

  v69 = v23;
  v70 = v7 & 0xC000000000000001;
  v68 = v7 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v70)
    {
      v26 = MEMORY[0x253052270](v24, v7);
      v27 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (v24 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_81;
      }

      v26 = *(v7 + 8 * v24 + 32);

      v27 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_75;
      }
    }

    v28 = *(v26 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72[0] = v3;
    v30 = sub_24E7728CC(v28);
    v32 = v3[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_76;
    }

    v36 = v31;
    if (v3[3] >= v35)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = v30;
        sub_24E8ADC30();
        v30 = v40;
        v3 = v72[0];
        if ((v36 & 1) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_27;
      }

LABEL_40:
      v3 = v72[0];
      if ((v36 & 1) == 0)
      {
LABEL_41:
        v3[(v30 >> 6) + 8] |= 1 << v30;
        *(v3[6] + 8 * v30) = v28;
        *(v3[7] + 8 * v30) = v26;

        v38 = v3[2];
        v34 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v34)
        {
          goto LABEL_78;
        }

        v3[2] = v39;
        goto LABEL_28;
      }

LABEL_27:
      *(v3[7] + 8 * v30) = v26;

LABEL_28:
      ++v24;
      v25 = v69;
      if (v27 == v69)
      {
        v41 = 0;
        v24 = 0;
        v42 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v70)
          {
            v43 = MEMORY[0x253052270](v41, v7);
            v44 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              goto LABEL_77;
            }
          }

          else
          {
            if (v41 >= *(v68 + 16))
            {
              goto LABEL_82;
            }

            v43 = *(v7 + 8 * v41 + 32);

            v44 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              goto LABEL_77;
            }
          }

          v45 = v3[2];
          if (*(v43 + 104))
          {
            if (!v45)
            {
              goto LABEL_79;
            }

            sub_24E7728CC(*(v43 + 16));
            if ((v46 & 1) == 0)
            {
              goto LABEL_80;
            }

            MEMORY[0x253050F00](v47);
            if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24F92B5E8();
              v7 = v64;
            }

            sub_24F92B638();

            v42 = v74;
          }

          else if (v45 && (v48 = sub_24E7728CC(*(v43 + 96)), (v49 & 1) != 0))
          {
            v66 = v42;
            v7 = v3[7];
            v50 = *(v7 + 8 * v48);
            swift_beginAccess();
            v51 = *(v50 + 112);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_24F941C80;
            v53 = sub_24E7728CC(*(v43 + 16));
            if ((v54 & 1) == 0)
            {
              goto LABEL_83;
            }

            v55 = MEMORY[0x277D84F90];
            if (v51)
            {
              v55 = v51;
            }

            *(inited + 32) = *(v7 + 8 * v53);
            v73 = v55;

            sub_24EA0A5A0(inited);
            v56 = v73;
            if (v73 >> 62)
            {
              v58 = sub_24F92C738();
              v7 = v64;
              if (v58)
              {
                v59 = v58;
                v57 = sub_24EAEACA0(v58, 0);

                sub_24EA0FC48(v57 + 32, v59, v56);
                v63 = v60;

                if (v63 != v59)
                {
                  __break(1u);
                  goto LABEL_85;
                }
              }

              else
              {
                v57 = MEMORY[0x277D84F90];
              }
            }

            else
            {
              v57 = v73 & 0xFFFFFFFFFFFFFF8;

              v7 = v64;
            }

            v73 = v57;
            sub_24E675C00(&v73);

            *(v50 + 112) = v73;

            v25 = v69;
            v42 = v66;
          }

          else
          {
          }

          ++v41;
          if (v44 == v25)
          {
            goto LABEL_72;
          }
        }
      }

      continue;
    }

    break;
  }

  sub_24E8990A0(v35, isUniquelyReferenced_nonNull_native);
  v30 = sub_24E7728CC(v28);
  if ((v36 & 1) == (v37 & 1))
  {
    goto LABEL_40;
  }

LABEL_85:
  sub_24F92CF88();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_24E676FCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E677034@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_24E76D644(25705, 0xE200000000000000), (v5 & 1) == 0) || (sub_24E643A9C(*(a1 + 56) + 32 * v4, v28), (swift_dynamicCast() & 1) == 0))
  {

    v10 = 0;
    v6 = 0;
    v7 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
LABEL_9:
    v16 = 0;
    v17 = 0;
    goto LABEL_10;
  }

  v6 = v26;
  v7 = v27;
  if (!*(a1 + 16))
  {
    v10 = -1;
LABEL_23:
    v13 = 0;
    v12 = 0;
    goto LABEL_24;
  }

  v8 = sub_24E76D644(0xD000000000000010, 0x800000024FA45740);
  if ((v9 & 1) != 0 && (sub_24E643A9C(*(a1 + 56) + 32 * v8, v28), swift_dynamicCast()))
  {
    v10 = v26;
  }

  else
  {
    v10 = -1;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v18 = sub_24E76D644(0x657079546469, 0xE600000000000000);
  if (v19)
  {
    sub_24E643A9C(*(a1 + 56) + 32 * v18, v28);
    v20 = swift_dynamicCast();
    if (v20)
    {
      v12 = v26;
    }

    else
    {
      v12 = 0;
    }

    if (v20)
    {
      v13 = v27;
    }

    else
    {
      v13 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_24;
    }
  }

  v23 = sub_24E76D644(1701667182, 0xE400000000000000);
  if (v24)
  {
    sub_24E643A9C(*(a1 + 56) + 32 * v23, v28);
    v25 = swift_dynamicCast();
    if (v25)
    {
      v14 = v26;
    }

    else
    {
      v14 = 0;
    }

    if (v25)
    {
      v15 = v27;
    }

    else
    {
      v15 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_37;
    }

    goto LABEL_25;
  }

LABEL_24:
  v14 = 0;
  v15 = 0;
  if (!*(a1 + 16))
  {
LABEL_37:

    goto LABEL_9;
  }

LABEL_25:
  v21 = sub_24E76D644(0x6E6F697461636F6CLL, 0xEC00000065707954);
  if ((v22 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_24E643A9C(*(a1 + 56) + 32 * v21, v28);

  result = swift_dynamicCast();
  v16 = v26;
  v17 = v27;
  if (!result)
  {
    v16 = 0;
    v17 = 0;
  }

LABEL_10:
  *a2 = v10;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v14;
  a2[6] = v15;
  a2[7] = v16;
  a2[8] = v17;
  return result;
}

uint64_t sub_24E6772DC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  do
  {
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      result = sub_24E677034(v5, &v14);
      if (v15)
      {
        break;
      }

      if (v2 == v1)
      {
        return v3;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615EEC(0, *(v3 + 16) + 1, 1, v3);
      v3 = result;
    }

    v7 = *(v3 + 16);
    v6 = *(v3 + 24);
    if (v7 >= v6 >> 1)
    {
      result = sub_24E615EEC((v6 > 1), v7 + 1, 1, v3);
      v3 = result;
    }

    v13 = v18;
    v11 = v16;
    v12 = v17;
    v8 = v14;
    v10 = v15;
    *(v3 + 16) = v7 + 1;
    v9 = v3 + 72 * v7;
    *(v9 + 32) = v8;
    *(v9 + 96) = v13;
    *(v9 + 64) = v11;
    *(v9 + 80) = v12;
    *(v9 + 48) = v10;
  }

  while (v2 != v1);
  return v3;
}

unint64_t sub_24E6774A0()
{
  result = qword_27F2161C0;
  if (!qword_27F2161C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2161C0);
  }

  return result;
}

uint64_t sub_24E677540()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x7463417974706D65;
  *(inited + 40) = 0xEB000000006E6F69;
  v1 = sub_24F9284A8();
  v2 = MEMORY[0x277D21B60];
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 64) = 0x7463417472656C61;
  *(inited + 72) = 0xEB000000006E6F69;
  v3 = sub_24F92A638();
  v4 = MEMORY[0x277D223B8];
  *(inited + 80) = v3;
  *(inited + 88) = v4;
  strcpy((inited + 96), "flowBackAction");
  *(inited + 111) = -18;
  v5 = sub_24F92A6B8();
  v6 = MEMORY[0x277D223D8];
  *(inited + 112) = v5;
  *(inited + 120) = v6;
  strcpy((inited + 128), "compoundAction");
  *(inited + 143) = -18;
  v7 = sub_24F928DD8();
  v8 = MEMORY[0x277D21D10];
  *(inited + 144) = v7;
  *(inited + 152) = v8;
  *(inited + 160) = 0x69746341776F6C66;
  *(inited + 168) = 0xEA00000000006E6FLL;
  v9 = type metadata accessor for FlowAction();
  v10 = sub_24E6791D4(&qword_27F216400, type metadata accessor for FlowAction);
  *(inited + 176) = v9;
  *(inited + 184) = v10;
  v11 = sub_24E6090CC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A68);
  result = swift_arrayDestroy();
  qword_27F2161D8 = v11;
  return result;
}

char *sub_24E6776FC()
{
  result = sub_24E67771C();
  off_27F2161E0 = result;
  return result;
}

char *sub_24E67771C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F942010;
  v1 = type metadata accessor for AcceptChallengeAction();
  v2 = sub_24E6791D4(&qword_27F216200, type metadata accessor for AcceptChallengeAction);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for AddFriendAction();
  v4 = sub_24E6791D4(&qword_27F216208, type metadata accessor for AddFriendAction);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for AlertAction();
  v6 = sub_24E6791D4(&qword_27F216210, type metadata accessor for AlertAction);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for ArcadeLaunchAttributionAction();
  v8 = sub_24E6791D4(&qword_27F216218, type metadata accessor for ArcadeLaunchAttributionAction);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for ArcadeSubscriptionStateAction();
  v10 = sub_24E6791D4(&qword_27F216220, type metadata accessor for ArcadeSubscriptionStateAction);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  v11 = type metadata accessor for CallAction();
  v12 = sub_24E6791D4(&qword_27F216228, type metadata accessor for CallAction);
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  v13 = type metadata accessor for CallInviteAction();
  v14 = sub_24E6791D4(&qword_27F216230, type metadata accessor for CallInviteAction);
  *(v0 + 128) = v13;
  *(v0 + 136) = v14;
  v15 = type metadata accessor for CancelFriendInvitationAction();
  v16 = sub_24E6791D4(&qword_27F216238, type metadata accessor for CancelFriendInvitationAction);
  *(v0 + 144) = v15;
  *(v0 + 152) = v16;
  v17 = type metadata accessor for CancelPreorderAction();
  v18 = sub_24E6791D4(&qword_27F216240, type metadata accessor for CancelPreorderAction);
  *(v0 + 160) = v17;
  *(v0 + 168) = v18;
  v19 = type metadata accessor for CancelSignInAction();
  v20 = sub_24E6791D4(&qword_27F216248, type metadata accessor for CancelSignInAction);
  *(v0 + 176) = v19;
  *(v0 + 184) = v20;
  v21 = type metadata accessor for ClearCachesDebugAction();
  v22 = sub_24E6791D4(&qword_27F216250, type metadata accessor for ClearCachesDebugAction);
  *(v0 + 192) = v21;
  *(v0 + 200) = v22;
  v23 = type metadata accessor for CompleteOnboardProfileCreationAction();
  v24 = sub_24E6791D4(&qword_27F216258, type metadata accessor for CompleteOnboardProfileCreationAction);
  *(v0 + 208) = v23;
  *(v0 + 216) = v24;
  v25 = type metadata accessor for CompleteOnboardWelcomeAction();
  v26 = sub_24E6791D4(&qword_27F216260, type metadata accessor for CompleteOnboardWelcomeAction);
  *(v0 + 224) = v25;
  *(v0 + 232) = v26;
  v27 = type metadata accessor for CompleteWelcomeMoltresAction();
  v28 = sub_24E6791D4(&qword_27F216268, type metadata accessor for CompleteWelcomeMoltresAction);
  *(v0 + 240) = v27;
  *(v0 + 248) = v28;
  ImpedimentAction = type metadata accessor for ContinueToNextImpedimentAction();
  v30 = sub_24E6791D4(&qword_27F216270, type metadata accessor for ContinueToNextImpedimentAction);
  *(v0 + 256) = ImpedimentAction;
  *(v0 + 264) = v30;
  v31 = type metadata accessor for CloseAppAction();
  v32 = sub_24E6791D4(&qword_27F216278, type metadata accessor for CloseAppAction);
  *(v0 + 272) = v31;
  *(v0 + 280) = v32;
  ChallengeRematchAction = type metadata accessor for CreateChallengeRematchAction();
  v34 = sub_24E6791D4(&qword_27F216280, type metadata accessor for CreateChallengeRematchAction);
  *(v0 + 288) = ChallengeRematchAction;
  *(v0 + 296) = v34;
  v35 = type metadata accessor for DismissDashboardAction();
  v36 = sub_24E6791D4(&qword_27F216288, type metadata accessor for DismissDashboardAction);
  *(v0 + 304) = v35;
  *(v0 + 312) = v36;
  v37 = type metadata accessor for DraftPlayTogetherAction();
  v38 = sub_24E6791D4(&qword_27F216290, type metadata accessor for DraftPlayTogetherAction);
  *(v0 + 320) = v37;
  *(v0 + 328) = v38;
  v39 = type metadata accessor for GameCenterSignOutAction();
  v40 = sub_24E6791D4(&qword_27F216298, type metadata accessor for GameCenterSignOutAction);
  *(v0 + 336) = v39;
  *(v0 + 344) = v40;
  v41 = type metadata accessor for GamesSignInAction();
  v42 = sub_24E6791D4(&qword_27F2162A0, type metadata accessor for GamesSignInAction);
  *(v0 + 352) = v41;
  *(v0 + 360) = v42;
  v43 = type metadata accessor for GSKDebugMetricsOverlayAction();
  v44 = sub_24E6791D4(&qword_27F2162A8, type metadata accessor for GSKDebugMetricsOverlayAction);
  *(v0 + 368) = v43;
  *(v0 + 376) = v44;
  v45 = type metadata accessor for GSKTabChangeAction();
  v46 = sub_24E6791D4(&qword_27F2162B0, type metadata accessor for GSKTabChangeAction);
  *(v0 + 384) = v45;
  *(v0 + 392) = v46;
  v47 = type metadata accessor for GSKWrappedAction();
  v48 = sub_24E6791D4(&qword_27F2162B8, type metadata accessor for GSKWrappedAction);
  *(v0 + 400) = v47;
  *(v0 + 408) = v48;
  v49 = type metadata accessor for InvitePlayersToChallengeAction();
  v50 = sub_24E6791D4(&qword_27F2162C0, type metadata accessor for InvitePlayersToChallengeAction);
  *(v0 + 416) = v49;
  *(v0 + 424) = v50;
  v51 = type metadata accessor for InvitePlayersToMultiplayerActivityAction();
  v52 = sub_24E6791D4(&qword_27F214298, type metadata accessor for InvitePlayersToMultiplayerActivityAction);
  *(v0 + 432) = v51;
  *(v0 + 440) = v52;
  v53 = type metadata accessor for LaunchChallengeDefinitionAction();
  v54 = sub_24E6791D4(&qword_27F2162C8, type metadata accessor for LaunchChallengeDefinitionAction);
  *(v0 + 448) = v53;
  *(v0 + 456) = v54;
  v55 = type metadata accessor for LaunchGameAction();
  v56 = sub_24E6791D4(&qword_27F2162D0, type metadata accessor for LaunchGameAction);
  *(v0 + 464) = v55;
  *(v0 + 472) = v56;
  v57 = type metadata accessor for LaunchGameActivityAction();
  v58 = sub_24E6791D4(&qword_27F2162D8, type metadata accessor for LaunchGameActivityAction);
  *(v0 + 480) = v57;
  *(v0 + 488) = v58;
  v59 = type metadata accessor for LaunchGameClipAction();
  v60 = sub_24E6791D4(&qword_27F2162E0, type metadata accessor for LaunchGameClipAction);
  *(v0 + 496) = v59;
  *(v0 + 504) = v60;
  v61 = type metadata accessor for LaunchDashboardAction();
  v62 = sub_24E6791D4(&qword_27F214868, type metadata accessor for LaunchDashboardAction);
  *(v0 + 512) = v61;
  *(v0 + 520) = v62;
  v63 = type metadata accessor for LeaveChallengeAction();
  v64 = sub_24E6791D4(&qword_27F2162E8, type metadata accessor for LeaveChallengeAction);
  *(v0 + 528) = v63;
  *(v0 + 536) = v64;
  v65 = type metadata accessor for ProgressPerformAction();
  v66 = sub_24E6791D4(&qword_27F2162F0, type metadata accessor for ProgressPerformAction);
  *(v0 + 544) = v65;
  *(v0 + 552) = v66;
  v67 = type metadata accessor for OpenURLAction();
  v68 = sub_24E6791D4(&qword_27F2162F8, type metadata accessor for OpenURLAction);
  *(v0 + 560) = v67;
  *(v0 + 568) = v68;
  v69 = type metadata accessor for PresentPromptAction();
  v70 = sub_24E6791D4(&qword_27F216300, type metadata accessor for PresentPromptAction);
  *(v0 + 576) = v69;
  *(v0 + 584) = v70;
  v71 = type metadata accessor for RequestReviewAction();
  v72 = sub_24E6791D4(&qword_27F216308, type metadata accessor for RequestReviewAction);
  *(v0 + 592) = v71;
  *(v0 + 600) = v72;
  v73 = type metadata accessor for RateLimitedAction();
  v74 = sub_24E6791D4(&qword_27F216310, type metadata accessor for RateLimitedAction);
  *(v0 + 608) = v73;
  *(v0 + 616) = v74;
  refreshed = type metadata accessor for RefreshAppStateUpdateRegistryAction();
  v76 = sub_24E6791D4(&qword_27F216318, type metadata accessor for RefreshAppStateUpdateRegistryAction);
  *(v0 + 624) = refreshed;
  *(v0 + 632) = v76;
  v77 = type metadata accessor for RefreshChallengeDetailAction();
  v78 = sub_24E6791D4(&qword_27F216320, type metadata accessor for RefreshChallengeDetailAction);
  *(v0 + 640) = v77;
  *(v0 + 648) = v78;
  v79 = type metadata accessor for RefreshFeedsAction();
  v80 = sub_24E6791D4(&qword_27F216328, type metadata accessor for RefreshFeedsAction);
  *(v0 + 656) = v79;
  *(v0 + 664) = v80;
  v81 = type metadata accessor for RefreshPageAction();
  v82 = sub_24E6791D4(&qword_27F216330, type metadata accessor for RefreshPageAction);
  *(v0 + 672) = v81;
  *(v0 + 680) = v82;
  v83 = type metadata accessor for RematchChallengeAction();
  v84 = sub_24E6791D4(&qword_27F216338, type metadata accessor for RematchChallengeAction);
  *(v0 + 688) = v83;
  *(v0 + 696) = v84;
  v85 = type metadata accessor for RemoveFriendAction();
  v86 = sub_24E6791D4(&qword_27F216340, type metadata accessor for RemoveFriendAction);
  *(v0 + 704) = v85;
  *(v0 + 712) = v86;
  v87 = type metadata accessor for RemoveFriendSuggestionAction();
  v88 = sub_24E6791D4(&qword_27F216348, type metadata accessor for RemoveFriendSuggestionAction);
  *(v0 + 720) = v87;
  *(v0 + 728) = v88;
  v89 = type metadata accessor for ReportFriendRequestDidSendAction();
  v90 = sub_24E6791D4(&qword_27F216350, type metadata accessor for ReportFriendRequestDidSendAction);
  *(v0 + 736) = v89;
  *(v0 + 744) = v90;
  v91 = type metadata accessor for ReportPromptDidPresentAction();
  v92 = sub_24E6791D4(&qword_27F216358, type metadata accessor for ReportPromptDidPresentAction);
  *(v0 + 752) = v91;
  *(v0 + 760) = v92;
  v93 = type metadata accessor for ResetRequestReviewPropertiesIfNeededAction();
  v94 = sub_24E6791D4(&qword_27F216360, type metadata accessor for ResetRequestReviewPropertiesIfNeededAction);
  *(v0 + 768) = v93;
  *(v0 + 776) = v94;
  v95 = type metadata accessor for ResetDebugSettingsAction();
  v96 = sub_24E6791D4(&qword_27F216368, type metadata accessor for ResetDebugSettingsAction);
  *(v0 + 784) = v95;
  *(v0 + 792) = v96;
  v97 = type metadata accessor for ResetTipDatastoreDebugSettingsAction();
  v98 = sub_24E6791D4(&qword_27F216370, type metadata accessor for ResetTipDatastoreDebugSettingsAction);
  *(v0 + 800) = v97;
  *(v0 + 808) = v98;
  v99 = type metadata accessor for SaveAvatarAction(0);
  v100 = sub_24E6791D4(&qword_27F216378, type metadata accessor for SaveAvatarAction);
  *(v0 + 816) = v99;
  *(v0 + 824) = v100;
  v101 = type metadata accessor for SaveRecentSearchAction();
  v102 = sub_24E6791D4(&qword_27F216380, type metadata accessor for SaveRecentSearchAction);
  *(v0 + 832) = v101;
  *(v0 + 840) = v102;
  v103 = type metadata accessor for SetContactsIntegrationConsentAction();
  v104 = sub_24E6791D4(&qword_27F216388, type metadata accessor for SetContactsIntegrationConsentAction);
  *(v0 + 848) = v103;
  *(v0 + 856) = v104;
  v105 = type metadata accessor for SetNicknameAction();
  v106 = sub_24E6791D4(&qword_27F216390, type metadata accessor for SetNicknameAction);
  *(v0 + 864) = v105;
  *(v0 + 872) = v106;
  v107 = type metadata accessor for SetProfilePrivacyAction();
  v108 = sub_24E6791D4(&qword_27F216398, type metadata accessor for SetProfilePrivacyAction);
  *(v0 + 880) = v107;
  *(v0 + 888) = v108;
  updated = type metadata accessor for UpdateActivityDefinitionAction();
  v110 = sub_24E6791D4(&qword_27F2163A0, type metadata accessor for UpdateActivityDefinitionAction);
  *(v0 + 896) = updated;
  *(v0 + 904) = v110;
  v111 = type metadata accessor for UpdateActivityInstanceAction();
  v112 = sub_24E6791D4(&qword_27F2163A8, type metadata accessor for UpdateActivityInstanceAction);
  *(v0 + 912) = v111;
  *(v0 + 920) = v112;
  v113 = type metadata accessor for UpdateChallengeDefinitionAction();
  v114 = sub_24E6791D4(&qword_27F2163B0, type metadata accessor for UpdateChallengeDefinitionAction);
  *(v0 + 928) = v113;
  *(v0 + 936) = v114;
  v115 = type metadata accessor for UpdateChallengeLeaderboardAction();
  v116 = sub_24E6791D4(&qword_27F2163B8, type metadata accessor for UpdateChallengeLeaderboardAction);
  *(v0 + 944) = v115;
  *(v0 + 952) = v116;
  v117 = type metadata accessor for UpdateChallengePlayersToInviteAction();
  v118 = sub_24E6791D4(&qword_27F2163C0, type metadata accessor for UpdateChallengePlayersToInviteAction);
  *(v0 + 960) = v117;
  *(v0 + 968) = v118;
  v119 = type metadata accessor for UpdateCrossUseConsentAction();
  v120 = sub_24E6791D4(&qword_27F23F500, type metadata accessor for UpdateCrossUseConsentAction);
  *(v0 + 976) = v119;
  *(v0 + 984) = v120;
  v121 = type metadata accessor for UpdateFriendRequestAction(0);
  v122 = sub_24E6791D4(&qword_27F2163C8, type metadata accessor for UpdateFriendRequestAction);
  *(v0 + 992) = v121;
  *(v0 + 1000) = v122;
  v123 = type metadata accessor for UpdateFriendRequestsPrivacyStateAction();
  v124 = sub_24E6791D4(&qword_27F215530, type metadata accessor for UpdateFriendRequestsPrivacyStateAction);
  *(v0 + 1008) = v123;
  *(v0 + 1016) = v124;
  v125 = type metadata accessor for UpdateGamedActivityInstanceAction();
  v126 = sub_24E6791D4(&qword_27F2163D0, type metadata accessor for UpdateGamedActivityInstanceAction);
  *(v0 + 1024) = v125;
  *(v0 + 1032) = v126;
  v127 = type metadata accessor for UpdateImpedimentCompletionStatesAction();
  v128 = sub_24E6791D4(&qword_27F2163D8, type metadata accessor for UpdateImpedimentCompletionStatesAction);
  *(v0 + 1040) = v127;
  *(v0 + 1048) = v128;
  v129 = type metadata accessor for UpdateNotificationTopicsAction();
  v130 = sub_24E6791D4(&qword_27F2163E0, type metadata accessor for UpdateNotificationTopicsAction);
  *(v0 + 1056) = v129;
  *(v0 + 1064) = v130;
  v131 = type metadata accessor for UpdatePlayTogetherGameAction();
  v132 = sub_24E6791D4(&qword_27F2163E8, type metadata accessor for UpdatePlayTogetherGameAction);
  *(v0 + 1072) = v131;
  *(v0 + 1080) = v132;
  v133 = type metadata accessor for WaitAction();
  v134 = sub_24E6791D4(&qword_27F2163F0, type metadata accessor for WaitAction);
  *(v0 + 1088) = v133;
  *(v0 + 1096) = v134;
  v135 = type metadata accessor for InviteChallengeViaMessagesAction();
  v136 = sub_24E6791D4(&qword_27F2163F8, type metadata accessor for InviteChallengeViaMessagesAction);
  result = sub_24E616014(1, 68, 1, v0);
  *(result + 2) = 68;
  *(result + 138) = v135;
  *(result + 139) = v136;
  return result;
}

void *sub_24E678A20()
{
  result = sub_24E678A40();
  off_27F2161E8 = result;
  return result;
}

uint64_t sub_24E678A40()
{
  if (qword_27F210F28 != -1)
  {
    swift_once();
  }

  v0 = qword_27F23A738;
  v1 = qword_27F20FD88;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_27F2161D8;
  v3 = qword_27F20FD90;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = *(off_27F2161E0 + 2);
  if (v4)
  {
    v20 = v0;
    v5 = (off_27F2161E0 + 32);
    v6 = MEMORY[0x277D84F90];
    do
    {
      v21 = *v5;
      v22 = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2161F8);
      v7 = sub_24F92B188();
      v9 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_24E616118(0, v6[2] + 1, 1, v6);
      }

      v11 = v6[2];
      v10 = v6[3];
      if (v11 >= v10 >> 1)
      {
        v6 = sub_24E616118((v10 > 1), v11 + 1, 1, v6);
      }

      v6[2] = v11 + 1;
      v12 = &v6[4 * v11];
      v12[4] = v7;
      v12[5] = v9;
      *(v12 + 3) = v21;
      ++v5;
      --v4;
    }

    while (v4);
    v0 = v20;
  }

  else if (!*(MEMORY[0x277D84F90] + 16))
  {
    v13 = MEMORY[0x277D84F98];
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213310);
  v13 = sub_24F92CB58();
LABEL_17:
  *&v22 = v13;

  sub_24F15E680(v14, 1, &v22);

  v15 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v22 = v2;
  sub_24E678F54(v15, sub_24F15F3A4, 0, isUniquelyReferenced_nonNull_native, &v22);

  v17 = v22;
  v18 = swift_isUniquelyReferenced_nonNull_native();
  *&v22 = v0;
  sub_24E678F54(v17, sub_24F15F3A4, 0, v18, &v22);

  return v22;
}

uint64_t static ActionKinds.table.getter()
{
  if (qword_27F20FD98 != -1)
  {
    swift_once();
  }
}

unint64_t sub_24E678D94()
{
  result = qword_27F2161F0;
  if (!qword_27F2161F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2161F0);
  }

  return result;
}

uint64_t sub_24E678DE8()
{
  if (qword_27F20FD98 != -1)
  {
    swift_once();
  }
}

unint64_t sub_24E678E44()
{
  if (qword_27F20FD98 != -1)
  {
    swift_once();
  }

  v0 = off_27F2161E8;

  v1 = sub_24F92A018();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v0;
  sub_24F15F06C(v1, sub_24F15F3A4, 0, isUniquelyReferenced_nonNull_native, &v5);

  v3 = sub_24F15EA0C(v5);

  return v3;
}

uint64_t sub_24E678F54(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
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
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = *(a1 + 56);
    v16 = (*(a1 + 48) + v14);
    v17 = v16[1];
    v42[0] = *v16;
    v42[1] = v17;
    v43 = *(v15 + v14);

    a2(&v39, v42);

    v18 = v39;
    v19 = v40;
    v37 = v41;
    v20 = *v44;
    v22 = sub_24E76D644(v39, v40);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if ((v38 & 1) == 0)
      {
        sub_24E8ADC44();
      }
    }

    else
    {
      sub_24E8990B4(v25, v38 & 1);
      v27 = sub_24E76D644(v18, v19);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_27;
      }

      v22 = v27;
    }

    v9 &= v9 - 1;
    v29 = *v44;
    if (v26)
    {

      *(v29[7] + 16 * v22) = v37;
    }

    else
    {
      v29[(v22 >> 6) + 8] |= 1 << v22;
      v30 = (v29[6] + 16 * v22);
      *v30 = v18;
      v30[1] = v19;
      *(v29[7] + 16 * v22) = v37;
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_26;
      }

      v29[2] = v33;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_24E6586B4();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24E6791D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E67925C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449726579616C70 && a2 == 0xE900000000000073)
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

uint64_t sub_24E6792EC(uint64_t a1)
{
  v2 = sub_24E6794FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E679328(uint64_t a1)
{
  v2 = sub_24E6794FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayerProfileDataIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216408);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6794FC();

  sub_24F92D128();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  sub_24E61B71C(&qword_27F2137A0);
  sub_24F92CD48();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24E6794FC()
{
  result = qword_27F216410;
  if (!qword_27F216410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216410);
  }

  return result;
}

uint64_t PlayerProfileDataIntent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216418);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6794FC();
  sub_24F92D108();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    sub_24E61B71C(&qword_27F216420);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E679768()
{
  result = qword_27F216428;
  if (!qword_27F216428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216428);
  }

  return result;
}

unint64_t sub_24E6797C0()
{
  result = qword_27F216430;
  if (!qword_27F216430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216430);
  }

  return result;
}

unint64_t sub_24E679818()
{
  result = qword_27F216438;
  if (!qword_27F216438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216438);
  }

  return result;
}

id sub_24E679898@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v5 = result;
  if (result)
  {
    result = v3;
  }

  *a2 = v5;
  return result;
}

void sub_24E6798EC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 windows];
  sub_24E679B04();
  v4 = sub_24F92B5A8();

  *a2 = v4;
}

id sub_24E679A94()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24E679B04()
{
  result = qword_27F216450;
  if (!qword_27F216450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F216450);
  }

  return result;
}

__n128 sub_24E679B7C@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_24F9249A8();
  sub_24E679D70(v22);
  *&v17[7] = v22[0];
  *&v17[23] = v22[1];
  *&v17[39] = v23[0];
  *&v17[48] = *(v23 + 9);
  sub_24F927618();
  sub_24F9238C8();
  *&v18[7] = v19;
  *&v18[23] = v20;
  *&v18[39] = v21;
  v3 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  KeyPath = swift_getKeyPath();
  sub_24F926C88();
  v5 = sub_24F926D08();

  v6 = sub_24F925808();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C0) + 36));
  v8 = *(sub_24F924258() + 20);
  v9 = *MEMORY[0x277CE0118];
  v10 = sub_24F924B38();
  (*(*(v10 - 8) + 104))(&v7[v8], v9, v10);
  __asm { FMOV            V0.2D, #14.0 }

  *v7 = _Q0;
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)] = 256;
  *(a1 + 17) = *v17;
  *(a1 + 33) = *&v17[16];
  *(a1 + 49) = *&v17[32];
  *(a1 + 65) = *&v17[48];
  *(a1 + 81) = *v18;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 97) = *&v18[16];
  result = *&v18[32];
  *(a1 + 113) = *&v18[32];
  *(a1 + 128) = *(&v21 + 1);
  *(a1 + 136) = KeyPath;
  *(a1 + 144) = v3;
  *(a1 + 152) = v5;
  *(a1 + 160) = v6;
  return result;
}

uint64_t sub_24E679D70@<X0>(uint64_t a1@<X8>)
{
  sub_24E600AEC();

  v2 = sub_24F925E18();
  v4 = v3;
  v6 = v5 & 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5 & 1;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_24E5FD138(v2, v3, v5 & 1);

  sub_24E600B40(v2, v4, v6);
}

unint64_t sub_24E679E48()
{
  result = qword_27F2164D0;
  if (!qword_27F2164D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2164C0);
    sub_24E679F00();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2164D0);
  }

  return result;
}

unint64_t sub_24E679F00()
{
  result = qword_27F2164D8;
  if (!qword_27F2164D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2164E0);
    sub_24E679FB8();
    sub_24E602068(&qword_27F216518, &qword_27F216520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2164D8);
  }

  return result;
}

unint64_t sub_24E679FB8()
{
  result = qword_27F2164E8;
  if (!qword_27F2164E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2164F0);
    sub_24E67A070();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2164E8);
  }

  return result;
}

unint64_t sub_24E67A070()
{
  result = qword_27F2164F8;
  if (!qword_27F2164F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216500);
    sub_24E602068(&qword_27F216508, &qword_27F216510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2164F8);
  }

  return result;
}

uint64_t sub_24E67A128(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24E67A184(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_24E67A20C@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30[0] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216530);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216538);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216540);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v30 - v13;
  sub_24F927468();
  *&v6[*(v4 + 64)] = 256;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v6, v10, &qword_27F216530);
  v15 = &v10[*(v8 + 44)];
  v16 = v46;
  *(v15 + 4) = v45;
  *(v15 + 5) = v16;
  *(v15 + 6) = v47;
  v17 = v42;
  *v15 = v41;
  *(v15 + 1) = v17;
  v18 = v44;
  *(v15 + 2) = v43;
  *(v15 + 3) = v18;
  v19 = *v2;
  v20 = v2[1];
  v21 = swift_allocObject();
  v22 = *(v2 + 1);
  *(v21 + 16) = *v2;
  *(v21 + 32) = v22;
  *(v21 + 48) = v2[4];
  sub_24E6009C8(v10, v14, &qword_27F216538);
  v23 = &v14[*(v12 + 44)];
  *v23 = sub_24E67A5CC;
  *(v23 + 1) = 0;
  *(v23 + 2) = sub_24E67A80C;
  *(v23 + 3) = v21;
  v48[0] = v20;
  sub_24E67A864(v48, v33);
  sub_24E67A5F8(v33);
  v34 = v33[0];
  v35 = v33[1];
  v36 = v33[2];
  v37 = v33[3];
  v31 = v19;
  v32 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550);
  sub_24F926F38();
  v31 = v19;
  v32 = v20;
  sub_24F926F38();
  tan(*(v2 + 2) * 3.14159265 / 180.0);
  sub_24F927618();
  sub_24F9238C8();
  v24 = v30[0];
  sub_24E6009C8(v14, v30[0], &qword_27F216540);
  v25 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216558) + 36);
  result = v37;
  v27 = v39;
  v28 = v40;
  *(v25 + 64) = v38;
  *(v25 + 80) = v27;
  *(v25 + 96) = v28;
  v29 = v35;
  *v25 = v34;
  *(v25 + 16) = v29;
  *(v25 + 32) = v36;
  *(v25 + 48) = result;
  return result;
}

uint64_t sub_24E67A5CC@<X0>(void *a1@<X8>)
{
  result = sub_24F923998();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_24E67A5F8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F93FC20;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  sub_24F926D08();

  *(v3 + 32) = sub_24F9273C8();
  *(v3 + 40) = v4;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  sub_24F926D08();

  *(v3 + 48) = sub_24F9273C8();
  *(v3 + 56) = v5;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  sub_24F926D08();

  *(v3 + 64) = sub_24F9273C8();
  *(v3 + 72) = v6;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  sub_24F926D08();

  *(v3 + 80) = sub_24F9273C8();
  *(v3 + 88) = v7;
  sub_24F9273D8();
  sub_24F927898();
  sub_24F923BD8();
  v8 = *(v1 + 16) * 0.0174532925;
  result = sub_24F9278A8();
  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = v8;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  return result;
}

uint64_t sub_24E67A7D4()
{

  return swift_deallocObject();
}

uint64_t sub_24E67A864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216548);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E67A8D8()
{
  result = qword_27F216568;
  if (!qword_27F216568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216558);
    sub_24E67A990();
    sub_24E602068(&qword_27F216598, &qword_27F2165A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216568);
  }

  return result;
}

unint64_t sub_24E67A990()
{
  result = qword_27F216570;
  if (!qword_27F216570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216540);
    sub_24E67AA48();
    sub_24E602068(&qword_27F216588, &qword_27F216590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216570);
  }

  return result;
}

unint64_t sub_24E67AA48()
{
  result = qword_27F216578;
  if (!qword_27F216578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216538);
    sub_24E602068(&qword_27F216580, &qword_27F216530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216578);
  }

  return result;
}

uint64_t sub_24E67AB00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216688);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E67C7E4();
  sub_24F92D108();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216698);
    sub_24E602068(&qword_27F2166A0, &qword_27F216698);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    v9 = v14;
    v16 = v13;
    v17 = v14;
    v10 = v15;
    v18 = v15;
    *a2 = v13;
    *(a2 + 16) = v9;
    *(a2 + 32) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24E67ACE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024FA45910 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24F92CE08();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24E67AD74(uint64_t a1)
{
  v2 = sub_24E67C7E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E67ADB0(uint64_t a1)
{
  v2 = sub_24E67C7E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E67AE24(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2166A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E67C7E4();
  sub_24F92D128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216698);
  sub_24E602068(&qword_27F2166B0, &qword_27F216698);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24E67AFA4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216648);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E67C398();
  sub_24F92D128();
  v10 = 0;
  type metadata accessor for GSKShelf();
  sub_24E67C2E4(&qword_27F216618);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for PaginatedShelfContent();
    v9 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216638);
    sub_24E602068(&qword_27F216650, &qword_27F216638);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E67B19C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for GSKShelf();
  MEMORY[0x28223BE20](v4);
  v19 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216628);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for PaginatedShelfContent();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v12[*(v10 + 28)];
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E67C398();
  sub_24F92D108();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24E601704(v13, &qword_27F216638);
  }

  else
  {
    v22[0] = 0;
    sub_24E67C2E4(&qword_27F2165F8);
    v14 = v19;
    v15 = v21;
    sub_24F92CC68();
    sub_24E67C3EC(v14, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216638);
    v22[55] = 1;
    sub_24E602068(&qword_27F216640, &qword_27F216638);
    sub_24F92CC68();
    (*(v20 + 8))(v8, v15);
    sub_24E61DA68(v22, v13, &qword_27F216638);
    sub_24E67C450(v12, v18);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24E67C4B4(v12, type metadata accessor for PaginatedShelfContent);
  }
}

uint64_t sub_24E67B50C()
{
  if (*v0)
  {
    return 0x656761507478656ELL;
  }

  else
  {
    return 0x666C656873;
  }
}

uint64_t sub_24E67B550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x666C656873 && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656761507478656ELL && a2 == 0xEE00746E65746E49)
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

uint64_t sub_24E67B630(uint64_t a1)
{
  v2 = sub_24E67C398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E67B66C(uint64_t a1)
{
  v2 = sub_24E67C398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E67B6D8()
{
  if (*v0)
  {
    return 0x656761507478656ELL;
  }

  else
  {
    return 0x7365766C656873;
  }
}

uint64_t sub_24E67B720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365766C656873 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656761507478656ELL && a2 == 0xEE00746E65746E49)
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

uint64_t sub_24E67B804(uint64_t a1)
{
  v2 = sub_24E67C208();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E67B840(uint64_t a1)
{
  v2 = sub_24E67C208();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E67B87C()
{

  sub_24E601704(v0 + 24, &qword_27F2165E0);

  return swift_deallocClassInstance();
}

uint64_t sub_24E67B904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GSKShelf();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
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

uint64_t sub_24E67B9E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GSKShelf();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t type metadata accessor for PaginatedShelfContent()
{
  result = qword_27F2165A8;
  if (!qword_27F2165A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E67BAEC()
{
  type metadata accessor for GSKShelf();
  if (v0 <= 0x3F)
  {
    sub_24E67BB70();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E67BB70()
{
  if (!qword_27F2165B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2165C0);
    sub_24E602068(&qword_27F2165C8, &qword_27F2165C0);
    v0 = sub_24F929658();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2165B8);
    }
  }
}

uint64_t sub_24E67BC14(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216608);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E67C208();
  sub_24F92D128();
  v11[0] = *(v3 + 16);
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2165E8);
  sub_24E67C25C(&qword_27F216610, &qword_27F216618);
  sub_24F92CD48();
  if (!v2)
  {
    swift_beginAccess();
    sub_24E67C328(v3 + 24, v11);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2165E0);
    sub_24E602068(&qword_27F216620, &qword_27F2165E0);
    sub_24F92CD48();
    sub_24E601704(v11, &qword_27F2165E0);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E67BE5C(void *a1)
{
  v3 = v1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2165D0);
  v5 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v7 = &v12 - v6;
  *(v3 + 24) = 0u;
  *(v3 + 56) = 0;
  *(v3 + 40) = 0u;
  v8 = a1[3];
  v16 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_24E67C208();
  sub_24F92D108();
  if (v2)
  {
    sub_24E601704(v3 + 24, &qword_27F2165E0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2165E8);
    v14 = 0;
    sub_24E67C25C(&qword_27F2165F0, &qword_27F2165F8);
    v10 = v13;
    sub_24F92CC68();
    *(v3 + 16) = v15[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2165E0);
    v14 = 1;
    sub_24E602068(&qword_27F216600, &qword_27F2165E0);
    sub_24F92CC68();
    (*(v9 + 8))(v7, v10);
    swift_beginAccess();
    sub_24E61DA68(v15, v3 + 24, &qword_27F2165E0);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v3;
}

uint64_t sub_24E67C18C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_24E67BE5C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_24E67C208()
{
  result = qword_27F2165D8;
  if (!qword_27F2165D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2165D8);
  }

  return result;
}

uint64_t sub_24E67C25C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2165E8);
    sub_24E67C2E4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E67C2E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GSKShelf();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E67C328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2165E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E67C398()
{
  result = qword_27F216630;
  if (!qword_27F216630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216630);
  }

  return result;
}

uint64_t sub_24E67C3EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKShelf();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E67C450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaginatedShelfContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E67C4B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E67C514(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24E67C55C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_24E67C5D8()
{
  result = qword_27F216658;
  if (!qword_27F216658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216658);
  }

  return result;
}

unint64_t sub_24E67C630()
{
  result = qword_27F216660;
  if (!qword_27F216660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216660);
  }

  return result;
}

unint64_t sub_24E67C688()
{
  result = qword_27F216668;
  if (!qword_27F216668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216668);
  }

  return result;
}

unint64_t sub_24E67C6E0()
{
  result = qword_27F216670;
  if (!qword_27F216670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216670);
  }

  return result;
}

unint64_t sub_24E67C738()
{
  result = qword_27F216678;
  if (!qword_27F216678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216678);
  }

  return result;
}

unint64_t sub_24E67C790()
{
  result = qword_27F216680;
  if (!qword_27F216680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216680);
  }

  return result;
}

unint64_t sub_24E67C7E4()
{
  result = qword_27F216690;
  if (!qword_27F216690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216690);
  }

  return result;
}

unint64_t sub_24E67C84C()
{
  result = qword_27F2166B8;
  if (!qword_27F2166B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2166B8);
  }

  return result;
}

unint64_t sub_24E67C8A4()
{
  result = qword_27F2166C0;
  if (!qword_27F2166C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2166C0);
  }

  return result;
}

unint64_t sub_24E67C8FC()
{
  result = qword_27F2166C8;
  if (!qword_27F2166C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2166C8);
  }

  return result;
}

void sub_24E67C950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2166D0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [objc_opt_self() proxyForLocalPlayer];
  v11 = [v10 gameServicePrivate];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24F93DE60;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;

  v13 = sub_24F92B588();

  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v9, v6);
  aBlock[4] = sub_24E67CD9C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E67CE28;
  aBlock[3] = &block_descriptor_2;
  v16 = _Block_copy(aBlock);

  [v11 getGameMetadataForBundleIDs:v13 handler:v16];
  _Block_release(v16);
  swift_unknownObjectRelease();
}

void sub_24E67CBC4(unint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2166D0);
    sub_24F92B788();
    return;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_12:
    sub_24E67CF2C();
    swift_allocError();
    goto LABEL_3;
  }

  v6 = a1;
  v7 = sub_24F92C738();
  a1 = v6;
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x253052270](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(a1 + 32);
  }

  v4 = v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D0C048]) initWithInternalRepresentation_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2166D0);
  sub_24F92B798();
}

uint64_t sub_24E67CD08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2166D0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_24E67CD9C(unint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2166D0);

  sub_24E67CBC4(a1, a2);
}

void sub_24E67CE28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_24E67CEE0();
  v5 = sub_24F92B5A8();

  v6 = a3;
  v4(v5, a3);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E67CEE0()
{
  result = qword_27F235840;
  if (!qword_27F235840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F235840);
  }

  return result;
}

unint64_t sub_24E67CF2C()
{
  result = qword_27F2166D8;
  if (!qword_27F2166D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2166D8);
  }

  return result;
}

unint64_t sub_24E67CF94()
{
  result = qword_27F2166E0;
  if (!qword_27F2166E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2166E0);
  }

  return result;
}

uint64_t RecentSearchesDataIntentImplementation.perform(_:objectGraph:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E67D094;

  return (sub_24E67D354)(a1);
}

uint64_t sub_24E67D094(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_24E67D194(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24E67D244;

  return (sub_24E67D354)(a2);
}

uint64_t sub_24E67D244(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_24E67D354(void *a1)
{
  v2 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
  return MEMORY[0x2822009F8](sub_24E67D378, 0, 0);
}

uint64_t sub_24E67D378()
{
  v5 = v0;
  sub_24F3A3C78(v0[2], v0[3], v4);
  if (v4[1])
  {
    v1 = v4[2];
  }

  else
  {

    v1 = MEMORY[0x277D84F90];
  }

  v2 = v0[1];

  return v2(v1);
}

unint64_t sub_24E67D40C()
{
  result = qword_27F2166E8;
  if (!qword_27F2166E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2166E8);
  }

  return result;
}

uint64_t sub_24E67D494(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24E67D638(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ActivityFeedLockup()
{
  result = qword_27F2166F0;
  if (!qword_27F2166F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E67D814()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F216700);
    if (v1 <= 0x3F)
    {
      sub_24E67D9A0(319, &qword_27F213FD0, MEMORY[0x277D21C48]);
      if (v2 <= 0x3F)
      {
        sub_24E66ECF0(319, &qword_27F254DE0);
        if (v3 <= 0x3F)
        {
          sub_24E67D9A0(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
          if (v4 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
            if (v5 <= 0x3F)
            {
              sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
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

void sub_24E67D9A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24E67DA0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167E8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6807F4();
  sub_24F92D128();
  v14 = 0;
  sub_24F92CCA8();
  if (!v5)
  {
    v13 = 1;
    sub_24F92CCA8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24E67DBA0()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 0x614E6C6F626D7973;
  }
}

uint64_t sub_24E67DBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
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

uint64_t sub_24E67DCBC(uint64_t a1)
{
  v2 = sub_24E6807F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E67DCF8(uint64_t a1)
{
  v2 = sub_24E6807F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E67DD34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24E680610(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_24E67DD84(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E68040C();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = *(v3 + 56);
    v12 = *(v3 + 40);
    v13 = v9;
    v11[15] = 1;
    sub_24E6805BC();
    sub_24F92CCF8();
    LOBYTE(v12) = 2;
    sub_24F92CD08();
    type metadata accessor for ActivityFeedLockup();
    LOBYTE(v12) = 3;
    sub_24F9289E8();
    sub_24E680A58(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CCF8();
    LOBYTE(v12) = 4;
    sub_24F92CCA8();
    LOBYTE(v12) = 5;
    sub_24F929608();
    sub_24E680A58(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    LOBYTE(v12) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    LOBYTE(v12) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E67E178@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v54);
  v55 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167B0);
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for ActivityFeedLockup();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 28);
  v16 = sub_24F9289E8();
  v17 = *(*(v16 - 8) + 56);
  v62 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = v11[9];
  v19 = sub_24F929608();
  v20 = *(*(v19 - 8) + 56);
  v64 = v18;
  v20(&v14[v18], 1, 1, v19);
  v21 = &v14[v11[10]];
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  sub_24E61DA68(&v66, v21, qword_27F21B590);
  v22 = v11[11];
  v23 = sub_24F92A6D8();
  v24 = *(*(v23 - 8) + 56);
  v63 = v22;
  v24(&v14[v22], 1, 1, v23);
  v25 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_24E68040C();
  v60 = v10;
  v26 = v61;
  sub_24F92D108();
  if (v26)
  {
    v27 = v62;
    __swift_destroy_boxed_opaque_existential_1(v65);
    v29 = v64;
LABEL_4:
    sub_24E601704(&v14[v27], &qword_27F213FB0);

    sub_24E601704(&v14[v29], &qword_27F213E68);
    sub_24E601704(v21, qword_27F24EC90);
    return sub_24E601704(&v14[v63], &qword_27F215440);
  }

  v52 = v19;
  v28 = v57;
  v61 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  v69 = 0;
  sub_24E602068(&qword_27F213F30, &qword_27F213F18);
  sub_24F92CC68();
  v31 = v67;
  *v14 = v66;
  *(v14 + 1) = v31;
  *(v14 + 4) = v68;
  v69 = 1;
  sub_24E6804A8();
  sub_24F92CC18();
  v27 = v62;
  v32 = *(&v66 + 1);
  v33 = v67;
  v50 = v66;
  *(v14 + 5) = v66;
  *(v14 + 6) = v32;
  v47 = v32;
  v49 = v33;
  *(v14 + 56) = v33;
  v48 = *(&v33 + 1);
  LOBYTE(v66) = 2;
  v34 = sub_24F92CC28();
  v29 = v64;
  v21 = v61;
  v51 = 0;
  *(v14 + 9) = v34;
  *(v14 + 10) = v35;
  LOBYTE(v66) = 3;
  sub_24E680A58(&qword_27F214018, MEMORY[0x277D21C48]);
  v36 = v51;
  sub_24F92CC18();
  if (v36)
  {
    v51 = v36;
    (*(v58 + 8))(v60, v59);
    LODWORD(v60) = 1;
    v38 = v50;
    v39 = v47;
    __swift_destroy_boxed_opaque_existential_1(v65);
    sub_24E601704(v14, &qword_27F213F18);
    sub_24E680460(v38, v39);
    if (v60)
    {
    }

    goto LABEL_4;
  }

  sub_24E61DA68(v28, &v14[v27], &qword_27F213FB0);
  LOBYTE(v66) = 4;
  v37 = sub_24F92CBC8();
  v40 = &v14[v11[8]];
  *v40 = v37;
  v40[1] = v41;
  LOBYTE(v66) = 5;
  sub_24E680A58(&qword_27F213F48, MEMORY[0x277D21F70]);
  v42 = v56;
  sub_24F92CC18();
  sub_24E61DA68(v42, &v14[v29], &qword_27F213E68);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
  v69 = 6;
  sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
  sub_24F92CC68();
  sub_24E61DA68(&v66, v61, qword_27F24EC90);
  LOBYTE(v66) = 7;
  sub_24E65CAA0();
  v43 = v55;
  v45 = v59;
  v44 = v60;
  sub_24F92CC68();
  (*(v58 + 8))(v44, v45);
  sub_24E61DA68(v43, &v14[v63], &qword_27F215440);
  sub_24E6804FC(v14, v53);
  __swift_destroy_boxed_opaque_existential_1(v65);
  return sub_24E680560(v14);
}

uint64_t sub_24E67EA70()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  if (v1 != 6)
  {
    v3 = 0x4D747865746E6F63;
  }

  v4 = 0x726174617661;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 2)
  {
    v5 = 1852793705;
  }

  if (*v0)
  {
    v2 = 0x6567646162;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24E67EB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E680CCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E67EB88(uint64_t a1)
{
  v2 = sub_24E68040C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E67EBC4(uint64_t a1)
{
  v2 = sub_24E68040C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E67EC00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(v2 + *(a1 + 40), v6, qword_27F24EC90);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_24E67EC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 44), &v9 - v6, &qword_27F215440);
  return sub_24E68039C(v7, a2);
}

unint64_t sub_24E67EDC0()
{
  result = qword_27F216708;
  if (!qword_27F216708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216708);
  }

  return result;
}

uint64_t sub_24E67EE14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216728);
  MEMORY[0x28223BE20](v4);
  v6 = &v19[-v5 - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216730);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19[-v9 - 8];
  *v6 = sub_24F9249A8();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216738);
  sub_24E67F114(a1, &v6[*(v11 + 44)]);
  v12 = type metadata accessor for ActivityFeedLockup();
  sub_24E60169C(a1 + *(v12 + 40), v19, qword_27F24EC90);
  sub_24E601704(v19, qword_27F21B590);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v13 = sub_24F9248C8();
  __swift_project_value_buffer(v13, qword_27F39F078);
  sub_24E602068(&qword_27F216740, &qword_27F216728);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v6, &qword_27F216728);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216748) + 36);
  v15 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v16 = type metadata accessor for GradientBackground(0);
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *(v14 + 16) = xmmword_24F93CFD0;
  *(v14 + 32) = 0x4030000000000000;
  *(v14 + 40) = 257;
  return (*(v8 + 32))(a2, v10, v7);
}

uint64_t sub_24E67F114@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v73 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216750);
  v2 = MEMORY[0x28223BE20](v70);
  v71 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v58 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = &v58 - v7;
  v62 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v62);
  v64 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0);
  MEMORY[0x28223BE20](v66);
  v65 = &v58 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216758);
  MEMORY[0x28223BE20](v67);
  v11 = &v58 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760);
  MEMORY[0x28223BE20](v68);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v58 - v15;
  v17 = sub_24F9289E8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216768);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v69 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v58 - v24;
  v26 = type metadata accessor for ActivityFeedLockup();
  sub_24E60169C(v73 + *(v26 + 28), v16, &qword_27F213FB0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v60 = v11;
    v61 = v25;
    sub_24E601704(v16, &qword_27F213FB0);
    v27 = *(v26 + 32);
    v28 = v73;
    v29 = (v73 + v27);
    v30 = v29[1];
    if (v30)
    {
      v59 = *v29;
      v31 = type metadata accessor for PlayerAvatar.Overlay(0);
      v32 = *(*(v31 - 8) + 56);
      v33 = v63;
      v32(v63, 1, 1, v31);
      *&v78 = 0;
      v76 = 0u;
      v77 = 0u;
      v34 = v62;
      v35 = *(v62 + 20);
      v36 = v64;
      v32(&v64[v35], 1, 1, v31);
      v37 = v36 + *(v34 + 24);
      v75 = 0;
      memset(v74, 0, sizeof(v74));
      *v37 = 0u;
      *(v37 + 16) = 0u;
      *(v37 + 32) = 0;

      sub_24E61DA68(v74, v37, qword_27F21B590);
      *v36 = v59;
      v36[1] = v30;
      sub_24E61DA68(v33, v36 + v35, &qword_27F22DF80);
      sub_24E61DA68(&v76, v37, qword_27F21B590);
      LOBYTE(v76) = 7;
      v38 = v65;
      sub_24F8319B8(v36, &v76, v65);
      sub_24F927618();
      sub_24F9238C8();
      v39 = (v38 + *(v66 + 36));
      v40 = v77;
      *v39 = v76;
      v39[1] = v40;
      v39[2] = v78;
      sub_24E60169C(v38, v60, &qword_27F2233D0);
      swift_storeEnumTagMultiPayload();
      sub_24E6801D4();
      sub_24E680290();
      v41 = v61;
      sub_24F924E28();
      sub_24E601704(v38, &qword_27F2233D0);
      v42 = 0;
    }

    else
    {
      v42 = 1;
      v41 = v61;
    }
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    (*(v18 + 16))(v13, v20, v17);
    (*(v18 + 56))(v13, 0, 1, v17);
    v43 = type metadata accessor for GameIcon(0);
    v44 = v43[8];
    *&v13[v44] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
    swift_storeEnumTagMultiPayload();
    v13[v43[5]] = 1;
    v13[v43[6]] = 1;
    v13[v43[7]] = 0;
    sub_24F927618();
    sub_24F9238C8();
    v45 = &v13[*(v68 + 36)];
    v46 = v77;
    *v45 = v76;
    *(v45 + 1) = v46;
    *(v45 + 2) = v78;
    sub_24E60169C(v13, v11, &qword_27F216760);
    swift_storeEnumTagMultiPayload();
    sub_24E6801D4();
    sub_24E680290();
    sub_24F924E28();
    sub_24E601704(v13, &qword_27F216760);
    (*(v18 + 8))(v20, v17);
    v42 = 0;
    v28 = v73;
    v41 = v25;
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216770);
  (*(*(v47 - 8) + 56))(v41, v42, 1, v47);
  *v5 = sub_24F924C98();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216778);
  sub_24E67FA6C(v28, &v5[*(v48 + 44)]);
  KeyPath = swift_getKeyPath();
  v50 = v69;
  v51 = &v5[*(v70 + 36)];
  *v51 = KeyPath;
  v51[8] = 0;
  sub_24E60169C(v41, v50, &qword_27F216768);
  v52 = v71;
  sub_24E680164(v5, v71);
  v53 = v41;
  v54 = v72;
  sub_24E60169C(v50, v72, &qword_27F216768);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216780);
  sub_24E680164(v52, v54 + *(v55 + 48));
  v56 = v54 + *(v55 + 64);
  *v56 = 0;
  *(v56 + 8) = 1;
  sub_24E601704(v5, &qword_27F216750);
  sub_24E601704(v53, &qword_27F216768);
  sub_24E601704(v52, &qword_27F216750);
  return sub_24E601704(v50, &qword_27F216768);
}

uint64_t sub_24E67FA6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v3 = *(v45 - 8);
  v4 = MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v39 - v6;
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  if (v8 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1[5];
  }

  v40 = a1[6];
  v41 = v11;
  if (v8 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  if (v8 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  v42 = v13;
  v43 = v12;
  sub_24E680354(v7, v8);

  sub_24F924A88();
  v14 = sub_24F925DE8();
  v16 = v15;
  v18 = v17;
  sub_24F925898();
  v19 = sub_24F925C98();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_24E600B40(v14, v16, v18 & 1);

  v48 = v19;
  v49 = v21;
  v23 &= 1u;
  v50 = v23;
  v51 = v25;
  v26 = v47;
  sub_24F9268B8();
  sub_24E600B40(v19, v21, v23);

  v27 = v3;
  v28 = *(v3 + 16);
  v30 = v44;
  v29 = v45;
  v28(v44, v26, v45);
  v31 = v46;
  v32 = v40;
  v33 = v41;
  *v46 = v41;
  v31[1] = v32;
  v34 = v42;
  v31[2] = v43;
  v31[3] = v34;
  v35 = v31;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A8);
  v28(v35 + *(v36 + 48), v30, v29);
  sub_24E680354(v33, v32);
  v37 = *(v27 + 8);
  v37(v47, v29);
  v37(v30, v29);
  return sub_24E680460(v33, v32);
}

uint64_t sub_24E67FD3C()
{
  sub_24E67EDC0();

  return sub_24F9218E8();
}

unint64_t sub_24E67FDCC()
{
  result = qword_27F216718;
  if (!qword_27F216718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216718);
  }

  return result;
}

uint64_t sub_24E67FECC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v3 = a2;
  if (!a1)
  {
    v5 = 0;
    KeyPath = 0;
    v6 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v18 = 0;
    v17 = 0;
    goto LABEL_6;
  }

  v5 = sub_24F926E48();
  v6 = sub_24F925A08();
  KeyPath = swift_getKeyPath();

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24E600AEC();

  v8 = sub_24F925E18();
  v10 = v9;
  v12 = v11;
  sub_24F925A08();
  v3 = sub_24F925C98();
  v14 = v13;
  v20 = v15;
  v17 = v16;

  sub_24E600B40(v8, v10, v12 & 1);

  v18 = v20 & 1;
  sub_24E5FD138(v3, v14, v20 & 1);

LABEL_6:
  sub_24E680F54(v5);
  sub_24E65D2B4(v3, v14, v18, v17);
  sub_24E680FA4(v5);
  sub_24E65D2F8(v3, v14, v18, v17);
  *a3 = v5;
  a3[1] = KeyPath;
  a3[2] = v6;
  a3[3] = v3;
  a3[4] = v14;
  a3[5] = v18;
  a3[6] = v17;
  sub_24E65D2F8(v3, v14, v18, v17);
  return sub_24E680FA4(v5);
}

__n128 sub_24E6800C4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = sub_24F924978();
  v13 = 0;
  sub_24E67FECC(v3, v4, v11);
  v6 = v12;
  result = v11[0];
  v8 = v11[1];
  v9 = v11[2];
  v10 = v13;
  *a1 = v5;
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = v10;
  *(a1 + 24) = result;
  *(a1 + 40) = v8;
  *(a1 + 56) = v9;
  *(a1 + 72) = v6;
  return result;
}

uint64_t sub_24E680164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E6801D4()
{
  result = qword_27F216788;
  if (!qword_27F216788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216760);
    sub_24E680A58(&qword_27F216790, type metadata accessor for GameIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216788);
  }

  return result;
}

unint64_t sub_24E680290()
{
  result = qword_27F216798;
  if (!qword_27F216798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2233D0);
    sub_24E680A58(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216798);
  }

  return result;
}

uint64_t sub_24E680354(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_24E68039C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E68040C()
{
  result = qword_27F2167B8;
  if (!qword_27F2167B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2167B8);
  }

  return result;
}

uint64_t sub_24E680460(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_24E6804A8()
{
  result = qword_27F2167C0;
  if (!qword_27F2167C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2167C0);
  }

  return result;
}

uint64_t sub_24E6804FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityFeedLockup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E680560(uint64_t a1)
{
  v2 = type metadata accessor for ActivityFeedLockup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E6805BC()
{
  result = qword_27F2167D0;
  if (!qword_27F2167D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2167D0);
  }

  return result;
}

uint64_t sub_24E680610(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6807F4();
  sub_24F92D108();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_24F92CBC8();
    v10 = 1;
    sub_24F92CBC8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24E6807F4()
{
  result = qword_27F2167E0;
  if (!qword_27F2167E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2167E0);
  }

  return result;
}

uint64_t sub_24E680868(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24E6808C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_24E68092C()
{
  result = qword_27F2167F0;
  if (!qword_27F2167F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216728);
    sub_24E602068(&qword_27F216740, &qword_27F216728);
    swift_getOpaqueTypeConformance2();
    sub_24E680A58(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2167F0);
  }

  return result;
}

uint64_t sub_24E680A58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E680AC0()
{
  result = qword_27F2167F8;
  if (!qword_27F2167F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2167F8);
  }

  return result;
}

unint64_t sub_24E680B18()
{
  result = qword_27F216800;
  if (!qword_27F216800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216800);
  }

  return result;
}

unint64_t sub_24E680B70()
{
  result = qword_27F216808;
  if (!qword_27F216808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216808);
  }

  return result;
}

unint64_t sub_24E680BC8()
{
  result = qword_27F216810;
  if (!qword_27F216810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216810);
  }

  return result;
}

unint64_t sub_24E680C20()
{
  result = qword_27F216818;
  if (!qword_27F216818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216818);
  }

  return result;
}

unint64_t sub_24E680C78()
{
  result = qword_27F216820;
  if (!qword_27F216820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216820);
  }

  return result;
}

uint64_t sub_24E680CCC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567646162 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E680F54(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24E680FA4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24E6810A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for ArticlePageViewModel();
  sub_24E685034(&qword_27F216838, type metadata accessor for ArticlePageViewModel);
  sub_24F923628();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3 & 1;
  sub_24E683970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216848);
  sub_24E602068(&qword_27F216850, &qword_27F216840);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216858);
  sub_24E602068(&qword_27F216860, &qword_27F216858);
  swift_getOpaqueTypeConformance2();
  sub_24F926A58();

  v8 = sub_24F923628();
  v9 = *(v8 + *(*v8 + 192));

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216868);
  v12 = a4 + *(result + 36);
  *v12 = sub_24E6839B0;
  *(v12 + 8) = v10;
  *(v12 + 16) = 0;
  return result;
}

uint64_t sub_24E681364@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ArticlePageViewModel();
  sub_24E685034(&qword_27F216838, type metadata accessor for ArticlePageViewModel);
  sub_24F923628();
  *a1 = sub_24F923C28();
  a1[1] = v2;
  v3 = type metadata accessor for GamesArticlePageView.ArticleContent();
  v4 = v3[5];
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v5 = v3[6];
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v6 = v3[7];
  *(a1 + v6) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v7 = v3[8];
  *(a1 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  *(a1 + v3[9]) = 0;
  v8 = a1 + v3[10];
  result = sub_24F926F28();
  *v8 = v10;
  *(v8 + 1) = v11;
  return result;
}

uint64_t sub_24E68152C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_24F925018();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216858);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-v9];
  sub_24F924FF8();
  v14 = a1;
  v15 = a2;
  v16 = a3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216870);
  sub_24E6839C4();
  sub_24F923668();
  v11 = sub_24E602068(&qword_27F216860, &qword_27F216858);
  MEMORY[0x25304AA30](v10, v7, v11);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24E6816FC@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v1 - 8);
  v21 = &v20 - v2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216888);
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v20 - v4;
  type metadata accessor for ArticlePageViewModel();
  sub_24E685034(&qword_27F216838, type metadata accessor for ArticlePageViewModel);
  sub_24F923628();
  v6 = type metadata accessor for ArticlePage();
  v30 = v6;
  v31 = &protocol witness table for ArticlePage;
  v32 = &protocol witness table for BasePage;
  v33 = &protocol witness table for ArticlePage;
  v34 = &protocol witness table for BasePage;
  v7 = sub_24E685034(&qword_27F216890, type metadata accessor for ArticlePage);
  v35 = v7;
  swift_getKeyPath();
  v24 = v6;
  v25 = &protocol witness table for ArticlePage;
  v26 = &protocol witness table for BasePage;
  v27 = &protocol witness table for ArticlePage;
  v28 = &protocol witness table for BasePage;
  v29 = v7;
  swift_getKeyPath();
  sub_24F923098();

  v8 = v37;
  if (v37 == 255)
  {
    goto LABEL_4;
  }

  v9 = v36;
  if (v37)
  {
    sub_24E683B84(v36, v37);
LABEL_4:

    goto LABEL_5;
  }

  v14 = *&v36[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shareAction];

  sub_24E683B84(v9, v8);

  if (v14)
  {
    v15 = v22;

    sub_24F9241E8();
    v16 = sub_24F925908();
    v17 = v21;
    (*(*(v16 - 8) + 56))(v21, 1, 1, v16);
    v18 = sub_24F925968();

    sub_24E601704(v17, &qword_27F214698);
    *v5 = 71;
    *(v5 + 1) = v14;
    *&v5[*(v15 + 44)] = v18;
    v19 = v23;
    sub_24E6009C8(v5, v23, &qword_27F216888);
    v12 = v15;
    v11 = v19;
    v10 = 0;
    return (*(v3 + 56))(v11, v10, 1, v12);
  }

LABEL_5:
  v10 = 1;
  v12 = v22;
  v11 = v23;
  return (*(v3 + 56))(v11, v10, 1, v12);
}

uint64_t sub_24E681A94@<X0>(uint64_t a1@<X8>)
{
  v57 = type metadata accessor for GamesArticlePageView.ArticleContent();
  v59 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v60 = v3;
  v61 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_24F923E98();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v52 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v48 - v8;
  v55 = sub_24F925218();
  v53 = *(v55 - 8);
  v9 = MEMORY[0x28223BE20](v55);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v51 = &v48 - v12;
  MEMORY[0x28223BE20](v11);
  v58 = &v48 - v13;
  v14 = v1;
  v15 = type metadata accessor for ArticlePage();
  v68 = v15;
  v69 = &protocol witness table for ArticlePage;
  v70 = &protocol witness table for BasePage;
  v71 = &protocol witness table for ArticlePage;
  v72 = &protocol witness table for BasePage;
  v16 = sub_24E685034(&qword_27F216890, type metadata accessor for ArticlePage);
  v73 = v16;
  swift_getKeyPath();
  v62 = v15;
  v63 = &protocol witness table for ArticlePage;
  v64 = &protocol witness table for BasePage;
  v65 = &protocol witness table for ArticlePage;
  v66 = &protocol witness table for BasePage;
  v67 = v16;
  swift_getKeyPath();
  sub_24F923098();

  v17 = v76;
  if (v76 == 255)
  {
    goto LABEL_4;
  }

  v18 = v75;
  if (v76)
  {
    sub_24E683B84(v75, v76);
LABEL_4:
    v19 = 2;
    v20 = v14;
    goto LABEL_5;
  }

  v33 = *&v75[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_editorialStoryCard];

  sub_24E683B84(v18, v17);
  v20 = v14;
  if (v33)
  {

    v34 = v49;
    sub_24F769764(v49);
    v35 = v53;
    v36 = *(v53 + 48);
    v37 = v55;
    if (v36(v34, 1, v55) == 1)
    {
      v38 = MEMORY[0x277CE0560];
      (*(v35 + 104))(v58, *MEMORY[0x277CE0560], v37);
      if (v36(v34, 1, v37) != 1)
      {
        sub_24E601704(v34, &qword_27F215598);
      }
    }

    else
    {
      v38 = MEMORY[0x277CE0560];
      (*(v35 + 32))(v58, v34, v37);
    }

    v39 = v50;
    sub_24F769764(v50);
    v40 = v39;
    if (v36(v39, 1, v37) == 1)
    {
      v41 = v51;
      (*(v35 + 104))(v51, *v38, v37);
      if (v36(v40, 1, v37) != 1)
      {
        sub_24E601704(v40, &qword_27F215598);
      }
    }

    else
    {
      v41 = v51;
      (*(v35 + 32))(v51, v40, v37);
    }

    v42 = v52;
    sub_24F769788(v52);
    v43 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
    (*(v54 + 8))(v42, v56);
    if (v43)
    {
      v44 = *(v35 + 8);
      v44(v41, v37);
      v44(v58, v37);
      v19 = 1;
    }

    else
    {
      v45 = v48;
      (*(v35 + 104))(v48, *MEMORY[0x277CE0558], v37);
      v46 = sub_24F925208();
      v47 = *(v35 + 8);
      v47(v45, v37);
      v47(v41, v37);
      v47(v58, v37);
      v19 = (v46 & 1) == 0;
    }
  }

  else
  {
    v19 = 2;
  }

LABEL_5:
  v21 = v61;
  sub_24E6850D8(v20, v61, type metadata accessor for GamesArticlePageView.ArticleContent);
  v22 = (*(v59 + 80) + 17) & ~*(v59 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  sub_24E684E54(v21, v23 + v22, type metadata accessor for GamesArticlePageView.ArticleContent);
  sub_24E6850D8(v20, v21, type metadata accessor for GamesArticlePageView.ArticleContent);
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  sub_24E684E54(v21, v24 + v22, type metadata accessor for GamesArticlePageView.ArticleContent);
  *a1 = v19;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168E8);
  v26 = v25[19];
  *(a1 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v27 = v25[20];
  *(a1 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v28 = v25[21];
  *(a1 + v28) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v29 = v25[22];
  *(a1 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  *(a1 + v25[23]) = 0;
  v30 = a1 + v25[24];
  v74 = 1;
  result = sub_24F926F28();
  v32 = v76;
  *v30 = v75;
  *(v30 + 8) = v32;
  *(a1 + 8) = sub_24E6843E8;
  *(a1 + 16) = v23;
  *(a1 + 24) = sub_24E68477C;
  *(a1 + 32) = v24;
  return result;
}

uint64_t sub_24E68231C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = type metadata accessor for GamesArticlePageEditorialStoryCardView(0);
  v32 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticlePageEditorialStoryCardViewModel();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168F8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v31 = a2;
  if (a1 != 3 && a1)
  {
    v18 = *(a2 + 8);
    sub_24F403730((&v31 - v16));
  }

  else
  {
    v18 = *(a2 + 8);
    sub_24F403728((&v31 - v16));
  }

  sub_24E60169C(v17, v15, &qword_27F2168F8);
  if ((*(v9 + 48))(v15, 1, v8) == 1)
  {
    sub_24E601704(v17, &qword_27F2168F8);
LABEL_11:
    sub_24E601704(v15, &qword_27F2168F8);
    v29 = 1;
    v28 = v33;
    return (*(v32 + 56))(v28, v29, 1, v5);
  }

  sub_24E684E54(v15, v11, type metadata accessor for ArticlePageEditorialStoryCardViewModel);
  if (a1 != 3 && a1)
  {
    sub_24E68507C(v11);
    v15 = v17;
    goto LABEL_11;
  }

  sub_24E6850D8(v11, v7, type metadata accessor for ArticlePageEditorialStoryCardViewModel);
  v19 = (v31 + *(type metadata accessor for GamesArticlePageView.ArticleContent() + 40));
  v20 = *v19;
  v21 = *(v19 + 1);
  v37 = v20;
  v38 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F58();
  sub_24E68507C(v11);
  sub_24E601704(v17, &qword_27F2168F8);
  v22 = v34;
  v23 = v35;
  v24 = v36;
  v25 = v5[10];
  *&v7[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  *&v7[v5[5]] = v18;
  v7[v5[6]] = 1;
  v7[v5[7]] = a1 != 0;
  v26 = &v7[v5[8]];
  *v26 = v22;
  *(v26 + 1) = v23;
  v26[16] = v24;
  v7[v5[9]] = a1 == 0;
  v27 = v33;
  sub_24E684E54(v7, v33, type metadata accessor for GamesArticlePageEditorialStoryCardView);
  v28 = v27;
  v29 = 0;
  return (*(v32 + 56))(v28, v29, 1, v5);
}

uint64_t sub_24E682714@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for GamesArticlePageView.ArticleContent();
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10);
  v52 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168F0);
  MEMORY[0x28223BE20](v12);
  v14 = &v44[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168F8);
  v47 = *(v15 - 8);
  v16 = *(v47 + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v44[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v20 = &v44[-v19];
  v53 = v10;
  v54 = a3;
  if (a1 != 3 && a1)
  {
    v21 = v12;
    v49 = *(a2 + 8);
    v22 = &v44[-v19];
    sub_24F403730(v20);
  }

  else
  {
    v21 = v12;
    v49 = *(a2 + 8);
    v22 = &v44[-v19];
    sub_24F403728(v20);
  }

  v50 = v22;
  v23 = a1 == 3 || a1 == 0;
  v51 = v23;
  v45 = a1;
  v46 = v21;
  v24 = *(v21 + 60);
  v25 = sub_24F9234D8();
  (*(*(v25 - 8) + 56))(v14 + v24, 1, 1, v25);
  sub_24E60169C(v22, v18, &qword_27F2168F8);
  v26 = v52;
  sub_24E6850D8(a2, v52, type metadata accessor for GamesArticlePageView.ArticleContent);
  v27 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v28 = v27 + v16;
  v29 = *(v48 + 80);
  v48 = a2;
  v30 = (v29 + v27 + v16 + 1) & ~v29;
  v31 = swift_allocObject();
  sub_24E6009C8(v18, v31 + v27, &qword_27F2168F8);
  *(v31 + v28) = v45;
  sub_24E684E54(v26, v31 + v30, type metadata accessor for GamesArticlePageView.ArticleContent);
  v32 = (v31 + ((v11 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v32 = a4;
  v32[1] = a5;
  v33 = v46;
  v34 = *(v46 + 52);
  *(v14 + v34) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ArticlePageViewModel();
  sub_24E685034(&qword_27F216838, type metadata accessor for ArticlePageViewModel);

  *v14 = sub_24F923C28();
  v14[1] = v35;
  v36 = (v14 + *(v33 + 56));
  *v36 = sub_24E684D3C;
  v36[1] = v31;
  v37 = v48 + *(v53 + 40);
  v38 = *v37;
  v39 = *(v37 + 8);
  v56 = v38;
  v57 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  v40 = v55 | v51;
  v41 = sub_24F925818();
  v42 = sub_24E602068(&qword_27F216900, &qword_27F2168F0);
  MEMORY[0x25304C0E0](v40 & 1, v41, v33, v42);
  sub_24E601704(v14, &qword_27F2168F0);
  return sub_24E601704(v50, &qword_27F2168F8);
}

uint64_t sub_24E682BE8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v100 = a3;
  LODWORD(v106) = a2;
  v109 = a4;
  v89 = sub_24F922348();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_24F923F78();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v92 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v7 - 8);
  v91 = v86 - v8;
  v95 = sub_24F925218();
  v93 = *(v95 - 8);
  v9 = MEMORY[0x28223BE20](v95);
  v90 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v99 = v86 - v11;
  v12 = type metadata accessor for GamesArticlePageEditorialStoryCardView(0);
  MEMORY[0x28223BE20](v12);
  v14 = v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216908);
  v15 = MEMORY[0x28223BE20](v104);
  v94 = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v96 = v86 - v17;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216910);
  MEMORY[0x28223BE20](v101);
  v103 = v86 - v18;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216918);
  MEMORY[0x28223BE20](v102);
  v20 = v86 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216920);
  v107 = *(v21 - 8);
  v108 = v21;
  MEMORY[0x28223BE20](v21);
  v105 = v86 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168F8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v86 - v24;
  v26 = type metadata accessor for ArticlePageEditorialStoryCardViewModel();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, v25, &qword_27F2168F8);
  if ((*(v27 + 48))(v25, 1, v26) != 1)
  {
    sub_24E684E54(v25, v29, type metadata accessor for ArticlePageEditorialStoryCardViewModel);
    v34 = v106;
    v106 = v29;
    if (v34 == 3)
    {
      v52 = 1;
      v31 = v108;
      v32 = v109;
      v33 = v107;
      v51 = v105;
      goto LABEL_20;
    }

    if (!v34)
    {
      v35 = *v106;
      sub_24E6850D8(*v106 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_badge, v20, type metadata accessor for EditorialStoryCard.Badge);
      v36 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_title;
      v37 = type metadata accessor for GamesArticlePageEditorialStoryCardView.TextStack(0);
      sub_24E60169C(v35 + v36, &v20[v37[5]], &qword_27F215340);
      sub_24E60169C(v35 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_description, &v20[v37[6]], &qword_27F215340);
      *&v20[v37[9]] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
      swift_storeEnumTagMultiPayload();
      v20[v37[7]] = 1;
      v38 = &v20[v37[8]];
      *v38 = 0;
      v38[8] = 1;
      v39 = v37[10];
      sub_24F925898();
      v40 = sub_24F9258E8();

      *&v20[v39] = v40;
      v41 = v37[11];
      sub_24F925888();
      v42 = sub_24F9258E8();

      *&v20[v41] = v42;
      v43 = v37[12];
      sub_24F9259D8();
      v44 = sub_24F9258E8();

      *&v20[v43] = v44;
      LOBYTE(v37) = sub_24F925828();
      sub_24F923318();
      v45 = v103;
      v46 = &v20[*(v102 + 36)];
      *v46 = v37;
      *(v46 + 1) = v47;
      *(v46 + 2) = v48;
      *(v46 + 3) = v49;
      *(v46 + 4) = v50;
      v46[40] = 0;
      sub_24E60169C(v20, v45, &qword_27F216918);
      swift_storeEnumTagMultiPayload();
      sub_24E684EBC();
      sub_24E684F78();
      v51 = v105;
      sub_24F924E28();
      sub_24E601704(v20, &qword_27F216918);
      v52 = 0;
      v31 = v108;
      v32 = v109;
      v33 = v107;
LABEL_20:
      sub_24E68507C(v106);
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216948);
      (*(*(v82 - 8) + 56))(v51, v52, 1, v82);
      sub_24E6009C8(v51, v32, &qword_27F216920);
      v30 = 0;
      return (*(v33 + 56))(v32, v30, 1, v31);
    }

    sub_24E6850D8(v106, v14, type metadata accessor for ArticlePageEditorialStoryCardViewModel);
    v53 = v100;
    v54 = *(v100 + 8);
    v55 = type metadata accessor for GamesArticlePageView.ArticleContent();
    v56 = (v53 + *(v55 + 40));
    v57 = *v56;
    v58 = *(v56 + 1);
    v110 = v57;
    v111 = v58;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
    sub_24F926F58();
    v59 = v112;
    v60 = v113;
    v61 = v12[10];
    *&v14[v61] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
    swift_storeEnumTagMultiPayload();
    *&v14[v12[5]] = v54;
    v14[v12[6]] = 0;
    v14[v12[7]] = 1;
    v62 = &v14[v12[8]];
    *v62 = v59;
    v62[16] = v60;
    v14[v12[9]] = 1;
    v86[1] = v55;
    v63 = v91;
    sub_24F769764(v91);
    v64 = v93;
    v65 = *(v93 + 48);
    v66 = v95;
    if (v65(v63, 1, v95) == 1)
    {
      v67 = v99;
      (*(v64 + 104))(v99, *MEMORY[0x277CE0560], v66);
      v68 = v65(v63, 1, v66);
      v32 = v109;
      v69 = v98;
      v70 = v97;
      if (v68 != 1)
      {
        sub_24E601704(v63, &qword_27F215598);
      }
    }

    else
    {
      v67 = v99;
      (*(v64 + 32))(v99, v63, v66);
      v32 = v109;
      v69 = v98;
      v70 = v97;
    }

    v71 = v92;
    sub_24F7699B0(v92);
    v33 = v107;
    v72 = *v106;
    if (*(*v106 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_artwork) || *(v72 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_video) || *(v72 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_landscapeArtwork) || *(v72 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_landscapeVideo))
    {
      (*(v70 + 8))(v71, v69);
      v31 = v108;
    }

    else
    {
      v84 = v71;
      v85 = *(v72 + 16);
      (*(v70 + 8))(v84, v69);
      v31 = v108;
      if (!v85)
      {
        (*(v64 + 8))(v67, v66);
LABEL_19:
        sub_24F927618();
        sub_24F9238C8();
        v78 = v94;
        sub_24E684E54(v14, v94, type metadata accessor for GamesArticlePageEditorialStoryCardView);
        v79 = (v78 + *(v104 + 36));
        v80 = v113;
        *v79 = v112;
        v79[1] = v80;
        v79[2] = v114;
        v81 = v96;
        sub_24E6009C8(v78, v96, &qword_27F216908);
        sub_24E60169C(v81, v103, &qword_27F216908);
        swift_storeEnumTagMultiPayload();
        sub_24E684EBC();
        sub_24E684F78();
        v51 = v105;
        sub_24F924E28();
        sub_24E601704(v81, &qword_27F216908);
        v52 = 0;
        goto LABEL_20;
      }
    }

    v73 = v90;
    (*(v64 + 104))(v90, *MEMORY[0x277CE0558], v66);
    v74 = sub_24F925208();
    v75 = v67;
    v76 = *(v64 + 8);
    v76(v73, v66);
    if ((v74 & 1) == 0)
    {
      v77 = v87;
      _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
      sub_24F922308();
      (*(v88 + 8))(v77, v89);
    }

    v76(v75, v66);
    goto LABEL_19;
  }

  sub_24E601704(v25, &qword_27F2168F8);
  v30 = 1;
  v31 = v108;
  v32 = v109;
  v33 = v107;
  return (*(v33 + 56))(v32, v30, 1, v31);
}

uint64_t sub_24E683914()
{
  sub_24E683950();

  return swift_deallocObject();
}

uint64_t sub_24E683978()
{

  return swift_deallocObject();
}

unint64_t sub_24E6839C4()
{
  result = qword_27F216878;
  if (!qword_27F216878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216870);
    sub_24E602068(&qword_27F216880, &qword_27F216888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216878);
  }

  return result;
}

uint64_t sub_24E683A74@<X0>(uint64_t a1@<X8>)
{
  result = sub_24F119E5C();
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_24E683AA4@<X0>(uint64_t a1@<X8>)
{
  result = sub_24F119E5C();
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

__n128 sub_24E683B70(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

void sub_24E683B84(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_24E683B9C(a1, a2 & 1);
  }
}

void sub_24E683B9C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_24E683BA8(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_24E683BC0(result, a2 & 1);
  }

  return result;
}

id sub_24E683BC0(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t type metadata accessor for GamesArticlePageView.ArticleContent()
{
  result = qword_27F2168B0;
  if (!qword_27F2168B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E683C4C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_24E683DF0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

void sub_24E683F80()
{
  sub_24E68408C();
  if (v0 <= 0x3F)
  {
    sub_24E684184(319, &qword_27F2168C8, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      sub_24E684120();
      if (v2 <= 0x3F)
      {
        sub_24E684184(319, &qword_27F2168D0, MEMORY[0x277CDFAA0]);
        if (v3 <= 0x3F)
        {
          sub_24E654514();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E68408C()
{
  if (!qword_27F2168C0)
  {
    type metadata accessor for ArticlePageViewModel();
    sub_24E685034(&qword_27F216838, type metadata accessor for ArticlePageViewModel);
    v0 = sub_24F923C48();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2168C0);
    }
  }
}

void sub_24E684120()
{
  if (!qword_27F254DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215598);
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F254DC0);
    }
  }
}

void sub_24E684184(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F923578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24E6841DC()
{
  result = qword_27F2168D8;
  if (!qword_27F2168D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216840);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216848);
    sub_24E602068(&qword_27F216850, &qword_27F216840);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216858);
    sub_24E602068(&qword_27F216860, &qword_27F216858);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E684374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2168D8);
  }

  return result;
}

unint64_t sub_24E684374()
{
  result = qword_27F2168E0;
  if (!qword_27F2168E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2168E0);
  }

  return result;
}

uint64_t sub_24E6843E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GamesArticlePageView.ArticleContent() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return sub_24E68231C(v4, v5, a1);
}

uint64_t objectdestroy_30Tm()
{
  v1 = type metadata accessor for GamesArticlePageView.ArticleContent();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 17) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923E98();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F925218();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F925218();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v2 + v8, 1, v9))
    {
      (*(v10 + 8))(v2 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F923F78();
    (*(*(v12 - 8) + 8))(v2 + v11, v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E68477C@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *(type metadata accessor for GamesArticlePageView.ArticleContent() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 17) & ~*(v7 + 80));

  return sub_24E682714(v8, v9, a1, a2, a3);
}

uint64_t sub_24E684838()
{
  v1 = v0;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168F8) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for GamesArticlePageView.ArticleContent();
  v6 = (v4 + *(*(v5 - 1) + 80) + v3 + 1) & ~*(*(v5 - 1) + 80);
  v7 = v0 + v3;
  v8 = type metadata accessor for ArticlePageEditorialStoryCardViewModel();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {

    v9 = v7 + *(v8 + 24);

    v10 = v9 + *(_s9ViewModelVMa() + 24);
    v11 = type metadata accessor for IconRowViewModel();
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      v27 = v6;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
      v13 = *(*(v12 - 8) + 8);
      v13(v10, v12);
      v14 = v12;
      v6 = v27;
      v13(v10 + *(v11 + 20), v14);
      v1 = v0;
    }
  }

  v15 = v1 + v6;

  v16 = v5[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_24F923E98();
    (*(*(v17 - 8) + 8))(v15 + v16, v17);
  }

  else
  {
  }

  v18 = v5[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_24F925218();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v15 + v18, 1, v19))
    {
      (*(v20 + 8))(v15 + v18, v19);
    }
  }

  else
  {
  }

  v21 = v5[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_24F925218();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v15 + v21, 1, v22))
    {
      (*(v23 + 8))(v15 + v21, v22);
    }
  }

  else
  {
  }

  v24 = v5[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_24F923F78();
    (*(*(v25 - 8) + 8))(v15 + v24, v25);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E684D3C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168F8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(type metadata accessor for GamesArticlePageView.ArticleContent() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 1) & ~*(v6 + 80));

  return sub_24E682BE8(v1 + v4, v7, v8, a1);
}

uint64_t sub_24E684E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E684EBC()
{
  result = qword_27F216928;
  if (!qword_27F216928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216918);
    sub_24E685034(&qword_27F216930, type metadata accessor for GamesArticlePageEditorialStoryCardView.TextStack);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216928);
  }

  return result;
}

unint64_t sub_24E684F78()
{
  result = qword_27F216938;
  if (!qword_27F216938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216908);
    sub_24E685034(&qword_27F216940, type metadata accessor for GamesArticlePageEditorialStoryCardView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216938);
  }

  return result;
}

uint64_t sub_24E685034(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E68507C(uint64_t a1)
{
  v2 = type metadata accessor for ArticlePageEditorialStoryCardViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E6850D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6851A4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216960);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216970);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[13];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[15];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[17];

  return v17(v18, a2, v16);
}

uint64_t sub_24E6853F0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216960);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216970);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[15];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[17];

  return v17(v18, a2, a2, v16);
}

void sub_24E685648()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E68598C(319, &qword_27F216988, type metadata accessor for TransitionalGameIcon, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24E690478(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24E68598C(319, &qword_27F216990, type metadata accessor for DescriptionLabelConfig, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24E68598C(319, &qword_27F216998, type metadata accessor for GameLockup.TrailingButtonType, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_24E68598C(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_24E68857C(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21D28]);
              if (v6 <= 0x3F)
              {
                sub_24E68857C(319, &qword_27F215458, &qword_27F215460, &unk_24F942C00, MEMORY[0x277D21D28]);
                if (v7 <= 0x3F)
                {
                  sub_24E690478(319, &qword_27F2169A0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    sub_24E690478(319, &qword_27F2169A8, &type metadata for ReleaseStateDetails, MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
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
  }
}

uint64_t sub_24E685944(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24E68598C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24E685A20()
{
  sub_24E685A94();
  if (v0 <= 0x3F)
  {
    sub_24E685C00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24E685A94()
{
  if (!qword_27F2169C0)
  {
    sub_24E685ADC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2169C0);
    }
  }
}

void sub_24E685ADC()
{
  if (!qword_27F2169C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2169D0);
    sub_24E685B4C();
    v0 = sub_24F927EA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2169C8);
    }
  }
}

unint64_t sub_24E685B4C()
{
  result = qword_27F2169D8;
  if (!qword_27F2169D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2169D0);
    sub_24E685944(&qword_27F212DF0, type metadata accessor for OfferButtonInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2169D8);
  }

  return result;
}

void sub_24E685C00()
{
  if (!qword_27F2169E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2169E8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F2169E0);
    }
  }
}

uint64_t sub_24E685C78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A40);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = &v40 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A48);
  v44 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A50);
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v9 = type metadata accessor for GameLockup.TrailingButtonType(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v40 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v18 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24E6880C8();
  v19 = v52;
  sub_24F92D108();
  if (!v19)
  {
    v42 = v17;
    v43 = v15;
    v41 = v12;
    v20 = v47;
    v21 = v48;
    v22 = v49;
    v52 = v9;
    v23 = v51;
    v24 = sub_24F92CC78();
    v25 = (2 * *(v24 + 16)) | 1;
    v54 = v24;
    v55 = v24 + 32;
    v56 = 0;
    v57 = v25;
    v26 = sub_24E643430();
    if (v26 != 2 && v56 == v57 >> 1)
    {
      if (v26)
      {
        v58 = 1;
        sub_24E68811C();
        sub_24F92CBA8();
        v48 = v6;
        v58 = 0;
        v27 = sub_24F92CC28();
        v28 = v50;
        v34 = v41;
        *v41 = v27;
        v34[1] = v35;
        v44 = v35;
        v47 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
        v58 = 1;
        v36 = v46;
        sub_24E602068(&qword_27F243830, &qword_27F2169E8);
        v37 = v47;
        sub_24F92CC68();
        if (v37)
        {
          (*(v45 + 8))(v22, v36);
          (*(v28 + 8))(v8, v48);

          goto LABEL_7;
        }

        (*(v45 + 8))(v22, v36);
        (*(v28 + 8))(v8, v48);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v38 = v34;
      }

      else
      {
        v58 = 0;
        sub_24E688170();
        sub_24F92CBA8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A70);
        sub_24E602068(&qword_27F216A78, &qword_27F216A70);
        v33 = v43;
        sub_24F92CC68();
        (*(v44 + 8))(v20, v21);
        (*(v50 + 8))(v8, v6);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v38 = v33;
        v23 = v51;
      }

      v39 = v42;
      sub_24E68FEC8(v38, v42, type metadata accessor for GameLockup.TrailingButtonType);
      sub_24E68FEC8(v39, v23, type metadata accessor for GameLockup.TrailingButtonType);
      return __swift_destroy_boxed_opaque_existential_1(v53);
    }

    v29 = sub_24F92C918();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v31 = v52;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
    swift_willThrow();
    (*(v50 + 8))(v8, v6);
LABEL_7:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_24E6863A8()
{
  if (*v0)
  {
    return 0x6575676573;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_24E6863D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000)
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

uint64_t sub_24E6864A8(uint64_t a1)
{
  v2 = sub_24E68811C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6864E4(uint64_t a1)
{
  v2 = sub_24E68811C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E686520()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x726566666FLL;
  }
}

uint64_t sub_24E686554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726566666FLL && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
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

uint64_t sub_24E686628(uint64_t a1)
{
  v2 = sub_24E6880C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E686664(uint64_t a1)
{
  v2 = sub_24E6880C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E6866A0(uint64_t a1)
{
  v2 = sub_24E688170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6866DC(uint64_t a1)
{
  v2 = sub_24E688170();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E686730(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D756964656DLL;
  }

  else
  {
    v3 = 0x6C6C616D73;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D756964656DLL;
  }

  else
  {
    v5 = 0x6C6C616D73;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24E6867D0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E68684C()
{
  sub_24F92B218();
}

uint64_t sub_24E6868B4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E68692C@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_24E68698C(uint64_t *a1@<X8>)
{
  v2 = 0x6C6C616D73;
  if (*v1)
  {
    v2 = 0x6D756964656DLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_24E686A28()
{
  result = qword_27F2169F0;
  if (!qword_27F2169F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2169F0);
  }

  return result;
}

unint64_t sub_24E686A7C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1852793705;
      break;
    case 2:
      result = 0x676E6964616568;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x656C746974627573;
      break;
    case 5:
      result = 0x54676E696461656CLL;
      break;
    case 6:
      result = 0x7470697263736564;
      break;
    case 7:
      result = 0x4449656C646E7562;
      break;
    case 8:
      result = 0x44496D616461;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x656C797473;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6575676573;
      break;
    case 13:
      result = 0x4D747865746E6F63;
      break;
    case 14:
      result = 0xD00000000000001BLL;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 16:
      result = 0xD000000000000016;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E686CBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v73);
  v74 = v71 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v75 = v71 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216970);
  MEMORY[0x28223BE20](v6 - 8);
  v76 = v71 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968);
  MEMORY[0x28223BE20](v8 - 8);
  v80 = v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216960);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = v71 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A00);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v13 = v71 - v12;
  v14 = type metadata accessor for GameLockup(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 20);
  v19 = type metadata accessor for TransitionalGameIcon(0);
  v20 = *(*(v19 - 8) + 56);
  v88 = v18;
  v20(&v17[v18], 1, 1, v19);
  v21 = v14[10];
  v22 = type metadata accessor for DescriptionLabelConfig(0);
  v23 = *(*(v22 - 8) + 56);
  *&v89 = v21;
  v23(&v17[v21], 1, 1, v22);
  v24 = v14[13];
  v25 = type metadata accessor for GameLockup.TrailingButtonType(0);
  v26 = *(*(v25 - 8) + 56);
  v87 = v24;
  v26(&v17[v24], 1, 1, v25);
  v27 = v14[15];
  v28 = sub_24F929608();
  v29 = *(*(v28 - 8) + 56);
  v86 = v27;
  v29(&v17[v27], 1, 1, v28);
  v30 = &v17[v14[16]];
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 0;
  v85 = v30;
  sub_24E61DA68(&v92, v30, qword_27F21B590);
  v31 = v14[17];
  v32 = sub_24F92A6D8();
  v33 = *(*(v32 - 8) + 56);
  v84 = v31;
  v33(&v17[v31], 1, 1, v32);
  *&v90 = v14;
  v34 = v14[21];
  v91 = v17;
  v35 = &v17[v34];
  *(v35 + 1) = 0u;
  *(v35 + 2) = 0u;
  *v35 = 0u;
  v36 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_24E687F28();
  v79 = v13;
  v37 = v82;
  sub_24F92D108();
  if (v37)
  {
    v38 = v88;
    __swift_destroy_boxed_opaque_existential_1(v83);
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v39 = v89;
    v40 = v91;
    sub_24E601704(v91 + v38, &qword_27F216960);

    sub_24E601704(v40 + v39, &qword_27F216968);

    sub_24E601704(v40 + v87, &qword_27F216970);
    sub_24E601704(v40 + v86, &qword_27F213E68);
    sub_24E601704(v85, qword_27F24EC90);
    sub_24E601704(v40 + v84, &qword_27F215440);
    return sub_24E687F7C(*v35, *(v35 + 1));
  }

  else
  {
    v71[2] = v22;
    v71[1] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v96 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v41 = v93;
    v42 = v91;
    *v91 = v92;
    v42[1] = v41;
    *(v42 + 4) = v94;
    LOBYTE(v92) = 1;
    sub_24E685944(&qword_27F216A10, type metadata accessor for TransitionalGameIcon);
    v43 = v81;
    sub_24F92CC18();
    v44 = v90;
    sub_24E61DA68(v43, v42 + v88, &qword_27F216960);
    LOBYTE(v92) = 2;
    v45 = sub_24F92CBC8();
    v46 = v89;
    v47 = (v42 + v44[6]);
    *v47 = v45;
    v47[1] = v48;
    LOBYTE(v92) = 3;
    v49 = sub_24F92CC28();
    v50 = (v42 + v44[7]);
    *v50 = v49;
    v50[1] = v51;
    LOBYTE(v92) = 4;
    v52 = sub_24F92CBC8();
    v53 = (v42 + v44[8]);
    *v53 = v52;
    v53[1] = v54;
    v71[0] = v54;
    LOBYTE(v92) = 5;
    v55 = sub_24F92CBC8();
    v56 = (v42 + v44[9]);
    *v56 = v55;
    v56[1] = v57;
    v82 = v57;
    LOBYTE(v92) = 6;
    sub_24E685944(&qword_27F216A18, type metadata accessor for DescriptionLabelConfig);
    sub_24F92CC18();
    sub_24E61DA68(v80, v42 + v46, &qword_27F216968);
    LOBYTE(v92) = 7;
    v58 = sub_24F92CBC8();
    v59 = (v42 + v44[11]);
    *v59 = v58;
    v59[1] = v60;
    v81 = v60;
    LOBYTE(v92) = 8;
    v61 = sub_24F92CBC8();
    v62 = (v42 + v44[12]);
    *v62 = v61;
    v62[1] = v63;
    v80 = v63;
    LOBYTE(v92) = 9;
    sub_24E685944(&qword_27F216A20, type metadata accessor for GameLockup.TrailingButtonType);
    sub_24F92CC18();
    sub_24E61DA68(v76, v91 + v87, &qword_27F216970);
    v96 = 10;
    sub_24E687FCC();
    sub_24F92CC68();
    *(v91 + *(v90 + 56)) = v92;
    LOBYTE(v92) = 11;
    sub_24E685944(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    sub_24E61DA68(v75, v91 + v86, &qword_27F213E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v96 = 12;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(&v92, v85, qword_27F24EC90);
    LOBYTE(v92) = 13;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v74, v91 + v84, &qword_27F215440);
    LOBYTE(v92) = 14;
    *(v91 + *(v90 + 72)) = sub_24F92CBD8();
    LOBYTE(v92) = 15;
    *(v91 + *(v90 + 76)) = sub_24F92CC38() & 1;
    LOBYTE(v92) = 16;
    *(v91 + *(v90 + 80)) = sub_24F92CC38() & 1;
    v96 = 17;
    sub_24E688020();
    sub_24F92CC18();
    (*(v77 + 8))(v79, v78);
    v64 = v94;
    v65 = v95;
    v66 = *v35;
    v67 = *(v35 + 1);
    v89 = v93;
    v90 = v92;
    sub_24E687F7C(v66, v67);
    v68 = v89;
    *v35 = v90;
    *(v35 + 1) = v68;
    *(v35 + 4) = v64;
    *(v35 + 5) = v65;
    v69 = v91;
    sub_24E68F818(v91, v72, type metadata accessor for GameLockup);
    __swift_destroy_boxed_opaque_existential_1(v83);
    return sub_24E68F880(v69, type metadata accessor for GameLockup);
  }
}

uint64_t sub_24E687C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E68F29C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E687CC8(uint64_t a1)
{
  v2 = sub_24E687F28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E687D04(uint64_t a1)
{
  v2 = sub_24E687F28();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E687D40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(v2 + *(a1 + 64), v6, qword_27F24EC90);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_24E687D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 68), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24E687E74(uint64_t a1)
{
  if (*(v1 + *(a1 + 80)) == 1)
  {
    return sub_24F921958();
  }

  else
  {
    return sub_24F921978();
  }
}

unint64_t sub_24E687F28()
{
  result = qword_27F216A08;
  if (!qword_27F216A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216A08);
  }

  return result;
}

uint64_t sub_24E687F7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_24E687FCC()
{
  result = qword_27F216A28;
  if (!qword_27F216A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216A28);
  }

  return result;
}

unint64_t sub_24E688020()
{
  result = qword_27F216A30;
  if (!qword_27F216A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216A30);
  }

  return result;
}

unint64_t sub_24E688074()
{
  result = qword_27F216A38;
  if (!qword_27F216A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216A38);
  }

  return result;
}

unint64_t sub_24E6880C8()
{
  result = qword_27F216A58;
  if (!qword_27F216A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216A58);
  }

  return result;
}

unint64_t sub_24E68811C()
{
  result = qword_27F216A60;
  if (!qword_27F216A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216A60);
  }

  return result;
}

unint64_t sub_24E688170()
{
  result = qword_27F216A68;
  if (!qword_27F216A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216A68);
  }

  return result;
}

uint64_t sub_24E6881D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24E688328(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24E688484()
{
  sub_24F928FD8();
  if (v0 <= 0x3F)
  {
    sub_24E68598C(319, &qword_27F216A98, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24E68857C(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E68857C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for OfferTitleType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OfferTitleType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24E688764()
{
  result = qword_27F216AA0;
  if (!qword_27F216AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216AA0);
  }

  return result;
}

unint64_t sub_24E6887BC()
{
  result = qword_27F216AA8;
  if (!qword_27F216AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216AA8);
  }

  return result;
}

unint64_t sub_24E688814()
{
  result = qword_27F216AB0;
  if (!qword_27F216AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216AB0);
  }

  return result;
}

unint64_t sub_24E68886C()
{
  result = qword_27F216AB8;
  if (!qword_27F216AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216AB8);
  }

  return result;
}

uint64_t sub_24E688940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B18);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B20);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B28);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  if (*(a1 + *(type metadata accessor for GameLockup(0) + 76)) == 1)
  {
    sub_24E688C10(a1, v10);
    v11 = &v10[*(v8 + 36)];
    v12 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
    v13 = type metadata accessor for GradientBackground(0);
    (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
    *v11 = swift_getKeyPath();
    v11[8] = 0;
    *(v11 + 1) = xmmword_24F93CFD0;
    *(v11 + 4) = 0x4030000000000000;
    *(v11 + 20) = 257;
    sub_24E60169C(v10, v7, &qword_27F216B28);
    swift_storeEnumTagMultiPayload();
    sub_24E68F8E0();
    sub_24E68F99C();
    sub_24F924E28();
    v14 = v10;
    v15 = &qword_27F216B28;
  }

  else
  {
    sub_24E688C10(a1, v4);
    sub_24E60169C(v4, v7, &qword_27F216B18);
    swift_storeEnumTagMultiPayload();
    sub_24E68F8E0();
    sub_24E68F99C();
    sub_24F924E28();
    v14 = v4;
    v15 = &qword_27F216B18;
  }

  return sub_24E601704(v14, v15);
}

__n128 sub_24E688C10@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B78);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B60);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B80);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v11 = &v35 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B58);
  MEMORY[0x28223BE20](v37);
  v13 = &v35 - v12;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B48);
  MEMORY[0x28223BE20](v39);
  v15 = &v35 - v14;
  *v6 = sub_24F9249A8();
  *(v6 + 1) = 0x4024000000000000;
  v6[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B88);
  sub_24E6895F8(a1, v2, &v6[*(v16 + 44)]);
  v17 = sub_24F925868();
  v18 = type metadata accessor for GameLockup(0);
  v19 = *(a1 + *(v18 + 80));
  v20 = 0uLL;
  v21 = 0uLL;
  if ((v19 & 1) == 0)
  {
    sub_24F923318();
    *(&v21 + 1) = v22;
    *(&v20 + 1) = v23;
  }

  v35 = v21;
  v36 = v20;
  sub_24E6009C8(v6, v9, &qword_27F216B78);
  v24 = &v9[*(v7 + 36)];
  *v24 = v17;
  *(v24 + 24) = v35;
  *(v24 + 8) = v36;
  v24[40] = v19;
  sub_24E60169C(a1 + *(v18 + 64), v49, qword_27F24EC90);
  sub_24E601704(v49, qword_27F21B590);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v25 = sub_24F9248C8();
  __swift_project_value_buffer(v25, qword_27F39F078);
  sub_24E68FBA8();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v9, &qword_27F216B60);
  (*(v38 + 32))(v13, v11, v40);
  v13[*(v37 + 36)] = 0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v13, v15, &qword_27F216B58);
  v26 = &v15[*(v39 + 36)];
  v27 = v47;
  *(v26 + 4) = v46;
  *(v26 + 5) = v27;
  *(v26 + 6) = v48;
  v28 = v43;
  *v26 = v42;
  *(v26 + 1) = v28;
  v29 = v45;
  *(v26 + 2) = v44;
  *(v26 + 3) = v29;
  sub_24F927628();
  sub_24F9242E8();
  v30 = v41;
  sub_24E6009C8(v15, v41, &qword_27F216B48);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B18) + 36);
  v32 = v49[5];
  *(v31 + 64) = v49[4];
  *(v31 + 80) = v32;
  *(v31 + 96) = v49[6];
  v33 = v49[1];
  *v31 = v49[0];
  *(v31 + 16) = v33;
  result = v49[3];
  *(v31 + 32) = v49[2];
  *(v31 + 48) = result;
  return result;
}

double sub_24E689164(uint64_t a1)
{
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v24 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  if (*(a1 + *(type metadata accessor for GameLockup(0) + 56)) != 1)
  {
    return 40.0;
  }

  type metadata accessor for GameLockupComponent(0);
  sub_24F769764(v17);
  (*(v3 + 104))(v15, *MEMORY[0x277CE0558], v2);
  (*(v3 + 56))(v15, 0, 1, v2);
  v18 = *(v6 + 48);
  sub_24E60169C(v17, v8, &qword_27F215598);
  sub_24E60169C(v15, &v8[v18], &qword_27F215598);
  v19 = *(v3 + 48);
  if (v19(v8, 1, v2) == 1)
  {
    sub_24E601704(v15, &qword_27F215598);
    sub_24E601704(v17, &qword_27F215598);
    if (v19(&v8[v18], 1, v2) == 1)
    {
      sub_24E601704(v8, &qword_27F215598);
      return 60.0;
    }

LABEL_8:
    sub_24E601704(v8, &unk_27F254F20);
    return 72.0;
  }

  sub_24E60169C(v8, v12, &qword_27F215598);
  if (v19(&v8[v18], 1, v2) == 1)
  {
    sub_24E601704(v15, &qword_27F215598);
    sub_24E601704(v17, &qword_27F215598);
    (*(v3 + 8))(v12, v2);
    goto LABEL_8;
  }

  (*(v3 + 32))(v5, &v8[v18], v2);
  sub_24E685944(&qword_27F215650, MEMORY[0x277CE0570]);
  v22 = sub_24F92AFF8();
  v23 = *(v3 + 8);
  v23(v5, v2);
  sub_24E601704(v15, &qword_27F215598);
  sub_24E601704(v17, &qword_27F215598);
  v23(v12, v2);
  sub_24E601704(v8, &qword_27F215598);
  result = 72.0;
  if (v22)
  {
    return 60.0;
  }

  return result;
}

uint64_t sub_24E6895F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v150 = a2;
  v148 = a3;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B90);
  MEMORY[0x28223BE20](v137);
  v151 = (&v118 - v4);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216B98);
  MEMORY[0x28223BE20](v140);
  v145 = &v118 - v5;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216BA0);
  v6 = MEMORY[0x28223BE20](v144);
  v147 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v143 = &v118 - v9;
  MEMORY[0x28223BE20](v8);
  v146 = &v118 - v10;
  v11 = sub_24F9297D8();
  v135 = *(v11 - 8);
  v136 = v11;
  MEMORY[0x28223BE20](v11);
  v132 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F929888();
  v133 = *(v13 - 8);
  v134 = v13;
  MEMORY[0x28223BE20](v13);
  v131 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216BA8);
  MEMORY[0x28223BE20](v130);
  v129 = &v118 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216BB0);
  v141 = *(v16 - 8);
  v142 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v139 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v153 = &v118 - v19;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v125);
  v126 = &v118 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v118 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216BB8);
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v128 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v127 = &v118 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216BC0);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v149 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v118 - v33;
  v35 = type metadata accessor for GameLockup(0);
  v36 = v35[9];
  v138 = a1;
  v37 = (a1 + v36);
  v38 = v37[1];
  v152 = v34;
  if (v38)
  {
    *&v165 = *v37;
    *(&v165 + 1) = v38;
    sub_24E600AEC();

    v39 = sub_24F925E18();
    v121 = v22;
    v122 = v25;
    v40 = v39;
    v123 = v26;
    v124 = v35;
    v42 = v41;
    v44 = v43;
    sub_24F925988();
    v45 = sub_24F925C98();
    v119 = v24;
    v120 = v21;
    v47 = v46;
    v49 = v48;
    v118 = v50;

    sub_24E600B40(v40, v42, v44 & 1);

    v51 = sub_24F9251C8();
    v52 = *(v125 + 36);
    v53 = *MEMORY[0x277CE13B8];
    v54 = sub_24F927748();
    v55 = v126;
    (*(*(v54 - 8) + 104))(&v126[v52], v53, v54);
    *v55 = v51;
    sub_24E602068(&qword_27F214428, &qword_27F213F10);
    v56 = sub_24F925C58();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    sub_24E600B40(v45, v47, v49 & 1);

    sub_24E601704(v55, &qword_27F213F10);
    *&v165 = v56;
    *(&v165 + 1) = v58;
    LOBYTE(v45) = v60 & 1;
    v35 = v124;
    LOBYTE(v166) = v45;
    *(&v166 + 1) = v62;
    v63 = v119;
    sub_24F9268B8();
    sub_24E600B40(v56, v58, v45);

    sub_24F927618();
    sub_24F9242E8();
    v64 = v128;
    (*(v121 + 32))(v128, v63, v120);
    v65 = v122;
    v66 = (v64 + *(v122 + 36));
    v67 = v160;
    v66[4] = v159;
    v66[5] = v67;
    v66[6] = v161;
    v68 = v156;
    *v66 = v155;
    v66[1] = v68;
    v69 = v158;
    v66[2] = v157;
    v66[3] = v69;
    v70 = v127;
    sub_24E6009C8(v64, v127, &qword_27F216BB8);
    v71 = v70;
    v72 = v152;
    sub_24E6009C8(v71, v152, &qword_27F216BB8);
    (*(v123 + 56))(v72, 0, 1, v65);
  }

  else
  {
    (*(v26 + 56))(v34, 1, 1, v25);
  }

  v73 = v138;
  v74 = (v138 + v35[11]);
  v76 = *v74;
  v75 = v74[1];
  v77 = v35[5];
  v78 = *(type metadata accessor for GameLockupIconView(0) + 24);
  v79 = v73 + v77;
  v80 = v129;
  sub_24E60169C(v79, &v129[v78], &qword_27F216960);
  *v80 = swift_getKeyPath();
  *(v80 + 8) = 0;
  *(v80 + 16) = v76;
  *(v80 + 24) = v75;
  v81 = v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216BC8) + 36);
  *v81 = 0x3FF0000000000000;
  *(v81 + 8) = 0;

  sub_24E689164(v73);
  sub_24E689164(v73);
  sub_24F927618();
  sub_24F9238C8();
  v82 = (v80 + *(v130 + 36));
  v83 = v163;
  *v82 = v162;
  v82[1] = v83;
  v82[2] = v164;
  v85 = v135;
  v84 = v136;
  v86 = v132;
  (*(v135 + 104))(v132, *MEMORY[0x277D22040], v136);
  v165 = 0u;
  v166 = 0u;
  memset(v154, 0, sizeof(v154));
  v87 = v131;
  sub_24F929818();
  sub_24E601704(v154, &qword_27F2129B0);
  sub_24E601704(&v165, &qword_27F2129B0);
  (*(v85 + 8))(v86, v84);
  sub_24E68FC90();
  sub_24F925EE8();
  (*(v133 + 8))(v87, v134);
  sub_24E601704(v80, &qword_27F216BA8);
  v165 = sub_24F9249A8();
  LOBYTE(v166) = 1;
  sub_24E68FDD8();
  v88 = sub_24F927738();
  v90 = v150;
  v89 = v151;
  *v151 = v88;
  sub_24E68A3A0(v73, v90, v89 + *(v137 + 44));
  sub_24E689164(v73);
  sub_24F927628();
  sub_24F9242E8();
  v91 = v145;
  sub_24E6009C8(v151, v145, &qword_27F216B90);
  v92 = (v91 + *(v140 + 36));
  v93 = v170;
  v92[4] = v169;
  v92[5] = v93;
  v92[6] = v171;
  v94 = v166;
  *v92 = v165;
  v92[1] = v94;
  v95 = v168;
  v92[2] = v167;
  v92[3] = v95;
  LOBYTE(v90) = sub_24F925868();
  sub_24F923318();
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v104 = v91;
  v105 = v143;
  sub_24E6009C8(v104, v143, &qword_27F216B98);
  v106 = v105 + *(v144 + 36);
  *v106 = v90;
  *(v106 + 8) = v97;
  *(v106 + 16) = v99;
  *(v106 + 24) = v101;
  *(v106 + 32) = v103;
  *(v106 + 40) = 0;
  v107 = v146;
  sub_24E6009C8(v105, v146, &qword_27F216BA0);
  v108 = v149;
  sub_24E60169C(v152, v149, &qword_27F216BC0);
  v110 = v141;
  v109 = v142;
  v111 = *(v141 + 16);
  v112 = v139;
  v111(v139, v153, v142);
  v113 = v147;
  sub_24E60169C(v107, v147, &qword_27F216BA0);
  v114 = v148;
  sub_24E60169C(v108, v148, &qword_27F216BC0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216BF0);
  v111((v114 + *(v115 + 48)), v112, v109);
  sub_24E60169C(v113, v114 + *(v115 + 64), &qword_27F216BA0);
  sub_24E601704(v107, &qword_27F216BA0);
  v116 = *(v110 + 8);
  v116(v153, v109);
  sub_24E601704(v152, &qword_27F216BC0);
  sub_24E601704(v113, &qword_27F216BA0);
  v116(v112, v109);
  return sub_24E601704(v149, &qword_27F216BC0);
}