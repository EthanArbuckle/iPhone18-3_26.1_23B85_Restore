void sub_24E76489C(uint64_t *a1@<X8>)
{
  v2 = 0x676E696461656CLL;
  if (*v1)
  {
    v2 = 0x7265746E6563;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_24E76498C()
{
  result = qword_27F21B9E8;
  if (!qword_27F21B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B9E8);
  }

  return result;
}

unint64_t sub_24E7649E0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x656C746974;
  if (v1 != 4)
  {
    v4 = 0x6E656D6E67696C61;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6575676573;
  if (v1 != 1)
  {
    v5 = 0x4D747865746E6F63;
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

uint64_t sub_24E764A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E766114(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E764AC0(uint64_t a1)
{
  v2 = sub_24E765DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E764AFC(uint64_t a1)
{
  v2 = sub_24E765DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E764B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E68039C(v7, a2);
}

unint64_t sub_24E764C68()
{
  result = qword_27F21B9F0;
  if (!qword_27F21B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B9F0);
  }

  return result;
}

uint64_t sub_24E764CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = sub_24F9248C8();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9241F8();
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionButtonRow();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BA08);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - v16;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BA10);
  MEMORY[0x28223BE20](v29);
  v19 = &v29 - v18;
  v20 = sub_24F9232F8();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  sub_24E60169C(a1 + 40, v36, qword_27F24EC90);
  sub_24E7657C8(a1, &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  sub_24E765A24(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BA18);
  sub_24E602068(&qword_27F21BA20, &qword_27F21BA18);
  sub_24F921788();
  sub_24F9241E8();
  sub_24E602068(&qword_27F21BA28, &qword_27F21BA08);
  sub_24E765EA8(&qword_27F212838, MEMORY[0x277CDDB18]);
  v23 = v30;
  sub_24F926178();
  (*(v31 + 8))(v7, v23);
  (*(v15 + 8))(v17, v14);
  v24 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BA30) + 36)];
  v25 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v26 = type metadata accessor for GradientBackground(0);
  (*(*(v26 - 8) + 56))(&v24[v25], 1, 1, v26);
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  *(v24 + 1) = xmmword_24F93CFD0;
  *(v24 + 4) = 0x4030000000000000;
  *(v24 + 20) = 257;
  v27 = v32;
  sub_24F9248B8();
  sub_24E765B00();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v33 + 8))(v27, v35);
  return sub_24E765D34(v19);
}

double sub_24E765248@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24F9249A8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_24E765330(a1, &v8);
  v15 = v10;
  v16 = v11;
  v17[0] = v12[0];
  *(v17 + 12) = *(v12 + 12);
  v13 = v8;
  v14 = v9;
  *&v19[12] = *(v12 + 12);
  v18[2] = v10;
  v18[3] = v11;
  *v19 = v12[0];
  v18[0] = v8;
  v18[1] = v9;
  sub_24E60169C(&v13, &v7, &qword_27F21BA48);
  sub_24E601704(v18, &qword_27F21BA48);
  v4 = v16;
  *(a2 + 56) = v15;
  *(a2 + 72) = v4;
  *(a2 + 88) = v17[0];
  *(a2 + 100) = *(v17 + 12);
  result = *&v13;
  v6 = v14;
  *(a2 + 24) = v13;
  *(a2 + 40) = v6;
  return result;
}

uint64_t sub_24E765330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ActionButtonRow();
  if (*(a1 + *(v4 + 36)) == 1)
  {

    v5 = 0;
    v22 = 1;
  }

  else
  {
    v6 = sub_24F92CE08();

    v22 = v6 & 1;
    v5 = v6 ^ 1;
  }

  v7 = (a1 + *(v4 + 32));
  v8 = v7[1];
  v23[0] = *v7;
  v23[1] = v8;
  sub_24E600AEC();

  v9 = sub_24F925E18();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_24E60169C(a1 + 40, v23, qword_27F24EC90);
  v16 = v23[3];
  sub_24E601704(v23, qword_27F21B590);
  if (v16)
  {
    v16 = sub_24F926DF8();
    v17 = sub_24F925898();
    KeyPath = swift_getKeyPath();
    v19 = sub_24F9251C8();
  }

  else
  {
    KeyPath = 0;
    v17 = 0;
    v19 = 0;
  }

  LOBYTE(v23[0]) = v5 & 1;
  sub_24E5FD138(v9, v11, v13 & 1);

  sub_24E680F54(v16);
  sub_24E680FA4(v16);
  v20 = v23[0];
  *a2 = 0;
  *(a2 + 8) = v22;
  *(a2 + 9) = v20;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v13 & 1;
  *(a2 + 40) = v15;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = v16;
  *(a2 + 72) = KeyPath;
  *(a2 + 80) = v17;
  *(a2 + 88) = v19;
  sub_24E680FA4(v16);
  sub_24E600B40(v9, v11, v13 & 1);
}

__n128 sub_24E7655A4@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_24F924258();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 64) = v2;
  *(a1 + 72) = sub_24E765EA8(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a1 + 40));
  v4 = *(v2 + 20);
  v5 = *MEMORY[0x277CE0118];
  v6 = sub_24F924B38();
  (*(*(v6 - 8) + 104))(boxed_opaque_existential_1 + v4, v5, v6);
  __asm { FMOV            V0.2D, #26.0 }

  *boxed_opaque_existential_1 = result;
  return result;
}

uint64_t sub_24E765680()
{
  sub_24E764C68();

  return sub_24F9218E8();
}

unint64_t sub_24E765710()
{
  result = qword_27F21BA00;
  if (!qword_27F21BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BA00);
  }

  return result;
}

uint64_t sub_24E7657C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionButtonRow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E76582C()
{
  v1 = type metadata accessor for ActionButtonRow();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);
  if (*(v2 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 40);
  }

  v3 = *(v1 + 24);
  v4 = sub_24F92A6D8();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = *(v1 + 28);
  v7 = sub_24F929608();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_24E765A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionButtonRow();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24E765A88@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActionButtonRow() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24E765248(v4, a1);
}

unint64_t sub_24E765B00()
{
  result = qword_27F21BA38;
  if (!qword_27F21BA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21BA10);
    sub_24E765BB8();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BA38);
  }

  return result;
}

unint64_t sub_24E765BB8()
{
  result = qword_27F21BA40;
  if (!qword_27F21BA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21BA30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21BA08);
    sub_24F9241F8();
    sub_24E602068(&qword_27F21BA28, &qword_27F21BA08);
    sub_24E765EA8(&qword_27F212838, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_24E765EA8(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BA40);
  }

  return result;
}

uint64_t sub_24E765D34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BA10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E765DA4()
{
  result = qword_27F21BA58;
  if (!qword_27F21BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BA58);
  }

  return result;
}

unint64_t sub_24E765DF8()
{
  result = qword_27F21BA60;
  if (!qword_27F21BA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BA60);
  }

  return result;
}

uint64_t sub_24E765E4C(uint64_t a1)
{
  v2 = type metadata accessor for ActionButtonRow();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E765EA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E765EF0()
{
  result = qword_27F21BA70;
  if (!qword_27F21BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BA70);
  }

  return result;
}

unint64_t sub_24E765F44()
{
  result = qword_27F21BA78;
  if (!qword_27F21BA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BA78);
  }

  return result;
}

uint64_t sub_24E765FA8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21BA10);
  sub_24E765B00();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24E766010()
{
  result = qword_27F21BA80;
  if (!qword_27F21BA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BA80);
  }

  return result;
}

unint64_t sub_24E766068()
{
  result = qword_27F21BA88;
  if (!qword_27F21BA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BA88);
  }

  return result;
}

unint64_t sub_24E7660C0()
{
  result = qword_27F21BA90;
  if (!qword_27F21BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BA90);
  }

  return result;
}

uint64_t sub_24E766114(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E766338(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_24F91F648();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_24E7664D0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_24F91F648();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for LeaderboardTimer()
{
  result = qword_27F21BA98;
  if (!qword_27F21BA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E7666A0()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24F91F648();
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
        if (v3 <= 0x3F)
        {
          sub_24E61C938();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24E7667B4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BB00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E768E54();
  sub_24F92D128();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for LeaderboardTimer();
    v11[14] = 1;
    sub_24F91F648();
    sub_24E768FAC(&qword_27F21BB08, MEMORY[0x277CC9578]);
    sub_24F92CD48();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_24E768F58();
    sub_24F92CD48();
    v11[11] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v11[10] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    v11[9] = 5;
    sub_24F929608();
    sub_24E768FAC(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E766B50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v32 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v35);
  v36 = &v32 - v5;
  v6 = sub_24F91F648();
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE8);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v10 = &v32 - v9;
  v11 = type metadata accessor for LeaderboardTimer();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v14[*(v12 + 28)];
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  v45 = v15;
  sub_24E61DA68(&v46, v15, qword_27F21B590);
  v16 = *(v11 + 32);
  v17 = sub_24F92A6D8();
  v18 = *(*(v17 - 8) + 56);
  v42 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = *(v11 + 36);
  v20 = sub_24F929608();
  v21 = *(*(v20 - 8) + 56);
  v43 = v19;
  v21(&v14[v19], 1, 1, v20);
  v22 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24E768E54();
  v39 = v10;
  v23 = v41;
  sub_24F92D108();
  if (v23)
  {
    v24 = v42;
    __swift_destroy_boxed_opaque_existential_1(v44);
    sub_24E601704(v45, qword_27F24EC90);
    sub_24E601704(&v14[v24], &qword_27F215440);
    return sub_24E601704(&v14[v43], &qword_27F213E68);
  }

  else
  {
    v41 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v49 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v25 = v47;
    *v14 = v46;
    *(v14 + 1) = v25;
    *(v14 + 4) = v48;
    LOBYTE(v46) = 1;
    sub_24E768FAC(&qword_27F21B778, MEMORY[0x277CC9578]);
    sub_24F92CC68();
    v26 = v42;
    v27 = v8;
    v28 = v41;
    (*(v37 + 32))(&v14[*(v41 + 20)], v27, v6);
    v49 = 2;
    sub_24E768EA8();
    v32 = 0;
    sub_24F92CC68();
    v14[*(v28 + 24)] = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v49 = 3;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v46, v45, qword_27F24EC90);
    LOBYTE(v46) = 4;
    sub_24E65CAA0();
    v29 = v36;
    sub_24F92CC68();
    sub_24E61DA68(v29, &v14[v26], &qword_27F215440);
    LOBYTE(v46) = 5;
    sub_24E768FAC(&qword_27F213F48, MEMORY[0x277D21F70]);
    v30 = v34;
    sub_24F92CC18();
    (*(v38 + 8))(v39, v40);
    sub_24E61DA68(v30, &v14[v43], &qword_27F213E68);
    sub_24E7689E8(v14, v33);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return sub_24E768EFC(v14);
  }
}

uint64_t sub_24E7672E0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  v4 = 0x4D747865746E6F63;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65746144646E65;
  if (v1 != 1)
  {
    v5 = 0x4F79616C70736964;
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

uint64_t sub_24E7673A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E7692C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E7673CC(uint64_t a1)
{
  v2 = sub_24E768E54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E767408(uint64_t a1)
{
  v2 = sub_24E768E54();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E767444@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(v2 + *(a1 + 28), v6, qword_27F24EC90);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_24E7674A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 32), &v9 - v6, &qword_27F215440);
  return sub_24E68039C(v7, a2);
}

__n128 sub_24E767580@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v113 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v3);
  v109 = v103 - v4;
  v5 = sub_24F924A78();
  MEMORY[0x28223BE20](v5 - 8);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = v103 - v6;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LeaderboardTimer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0);
  sub_24F923808();
  sub_24F91F558();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  if (v13 < 0.0)
  {
    v13 = 0.0;
  }

  v14 = *(a1 + *(v11 + 24));
  v15 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v15 setUnitsStyle_];
  v16 = 128;
  v17 = 64;
  v18 = 16;
  if (v13 < 86400.0)
  {
    v18 = 32;
  }

  if (v13 >= 3600.0)
  {
    v17 = v18;
  }

  if (v13 >= 60.0)
  {
    v16 = v17;
  }

  v19 = 16;
  if (v13 < 86400.0)
  {
    v19 = 224;
  }

  if (v14 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  [v15 setAllowedUnits_];
  v21 = [v15 stringFromTimeInterval_];
  if (v21)
  {
    v22 = v21;
    v23 = sub_24F92B0D8();
    v25 = v24;
  }

  else
  {

    v23 = 0;
    v25 = 0xE000000000000000;
  }

  sub_24F926DF8();
  v26 = sub_24F925E28();
  v28 = v27;
  v30 = v29;
  v105 = sub_24F925C78();
  v104 = v31;
  v33 = v32;
  v106 = v34;
  sub_24E600B40(v26, v28, v30 & 1);

  sub_24F924A68();
  sub_24F924A58();
  v35 = MEMORY[0x277CE13B8];
  v108 = v3;
  v107 = v14;
  if (v14 >= 2)
  {
    v41 = sub_24F925198();
    v115 = MEMORY[0x277CE04F8];
    v116 = MEMORY[0x277CE04E8];
    LODWORD(v114) = v41;
  }

  else
  {
    v115 = v3;
    v116 = sub_24E602068(&qword_27F214428, &qword_27F213F10);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v114);
    v37 = sub_24F9251C8();
    v38 = *(v3 + 36);
    v39 = *v35;
    v40 = sub_24F927748();
    (*(*(v40 - 8) + 104))(boxed_opaque_existential_1 + v38, v39, v40);
    *boxed_opaque_existential_1 = v37;
  }

  sub_24E612C80(&v114, &v117);
  __swift_project_boxed_opaque_existential_1(&v117, *(&v118 + 1));
  *&v114 = v23;
  *(&v114 + 1) = v25;
  sub_24E600AEC();
  v42 = sub_24F925E18();
  v44 = v43;
  v46 = v45;
  v47 = sub_24F925C58();
  v49 = v48;
  v51 = v50;
  sub_24E600B40(v42, v44, v46 & 1);

  v52 = sub_24F925C88();
  v54 = v53;
  v56 = v55;
  sub_24E600B40(v47, v49, v51 & 1);

  __swift_destroy_boxed_opaque_existential_1(&v117);
  sub_24F924A28();
  sub_24E600B40(v52, v54, v56 & 1);

  sub_24F924A58();
  sub_24F924A98();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v57 = qword_27F24F280;
  v58 = sub_24F925DE8();
  v60 = v59;
  v62 = v61;
  v63 = v33;
  v64 = v105;
  v65 = v104;
  v66 = sub_24F925C78();
  v103[0] = v67;
  v69 = v68;
  v103[1] = v70;
  sub_24E600B40(v58, v60, v62 & 1);

  sub_24E600B40(v64, v65, v63 & 1);

  v71 = v107;
  if (v107 >= 2)
  {
    sub_24F9258D8();
  }

  else
  {
    sub_24F925A08();
  }

  v107 = v71 < 2;
  v72 = v103[0];
  v73 = sub_24F925C98();
  v75 = v74;
  v77 = v76;
  v106 = v78;

  sub_24E600B40(v66, v72, v69 & 1);

  v79 = sub_24F9251C8();
  v80 = *(v108 + 36);
  v81 = *MEMORY[0x277CE13B8];
  v82 = sub_24F927748();
  v83 = v109;
  (*(*(v82 - 8) + 104))(&v109[v80], v81, v82);
  *v83 = v79;
  sub_24E602068(&qword_27F214428, &qword_27F213F10);
  v84 = sub_24F925C58();
  v86 = v85;
  v88 = v87;
  sub_24E600B40(v73, v75, v77 & 1);

  sub_24E601704(v83, &qword_27F213F10);
  sub_24E72FF4C();
  v89 = sub_24F925C58();
  v91 = v90;
  LOBYTE(v83) = v92;
  v94 = v93;
  sub_24E600B40(v84, v86, v88 & 1);

  *&v117 = v89;
  *(&v117 + 1) = v91;
  LOBYTE(v118) = v83 & 1;
  *(&v118 + 1) = v94;
  v95 = v110;
  sub_24F9268B8();
  sub_24E600B40(v89, v91, v83 & 1);

  sub_24F927628();
  sub_24F9242E8();
  v96 = v113;
  (*(v111 + 32))(v113, v95, v112);
  v97 = v96 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216BB8) + 36);
  result = v120;
  v99 = v122;
  v100 = v123;
  *(v97 + 64) = v121;
  *(v97 + 80) = v99;
  *(v97 + 96) = v100;
  v101 = v118;
  v102 = v119;
  *v97 = v117;
  *(v97 + 16) = v101;
  *(v97 + 32) = v102;
  *(v97 + 48) = result;
  return result;
}

double sub_24E767F90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LeaderboardTimer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_24F925468();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  sub_24F925458();
  sub_24E7689E8(a1, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_24E768C74(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  (*(v8 + 16))(v11, v13, v7);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24E768CD8;
  *(v16 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216BB8);
  sub_24E768FAC(&qword_27F21BAC8, MEMORY[0x277CDE300]);
  sub_24E768D98();
  sub_24F923828();
  (*(v8 + 8))(v13, v7);
  LOBYTE(v7) = sub_24F925818();
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAD8) + 36);
  *v17 = v7;
  result = 0.0;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 1;
  return result;
}

uint64_t sub_24E768258()
{
  sub_24E768848();

  return sub_24F9218E8();
}

unint64_t sub_24E76829C@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    v5 = 0xE300000000000000;
    v6 = 7827314;
    if (a2 != 1)
    {
      v6 = 0x50736C6961746564;
      v5 = 0xEB00000000656761;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1685217635;
  }

  v10 = v6;
  v11 = v5;
  v7 = sub_24F92CF68();
  v8 = [objc_opt_self() valueWithObject:v7 inContext:{a1, v10, v11}];
  swift_unknownObjectRelease();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928);
  result = sub_24E6360E0();
  a3[4] = result;
  *a3 = v8;
  return result;
}

uint64_t sub_24E768394(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7827314;
  if (v2 != 1)
  {
    v4 = 0x50736C6961746564;
    v3 = 0xEB00000000656761;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1685217635;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7827314;
  if (*a2 != 1)
  {
    v8 = 0x50736C6961746564;
    v7 = 0xEB00000000656761;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1685217635;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24E768490()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E76852C()
{
  sub_24F92B218();
}

uint64_t sub_24E7685B4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E76864C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E768FF4();
  *a1 = result;
  return result;
}

void sub_24E76867C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 7827314;
  if (v2 != 1)
  {
    v5 = 0x50736C6961746564;
    v4 = 0xEB00000000656761;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1685217635;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_24E7687A4()
{
  result = qword_27F21BAA8;
  if (!qword_27F21BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BAA8);
  }

  return result;
}

unint64_t sub_24E768848()
{
  result = qword_27F21BAB0;
  if (!qword_27F21BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BAB0);
  }

  return result;
}

unint64_t sub_24E7688E8()
{
  result = qword_27F21BAC0;
  if (!qword_27F21BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BAC0);
  }

  return result;
}

uint64_t sub_24E7689E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardTimer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E768A4C()
{
  v1 = type metadata accessor for LeaderboardTimer();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);
  v3 = v1[5];
  v4 = sub_24F91F648();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[7];
  if (*(v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  v6 = v1[8];
  v7 = sub_24F92A6D8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v9 = v1[9];
  v10 = sub_24F929608();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_24E768C74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardTimer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24E768CD8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LeaderboardTimer() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_24E767580(v4, a1).n128_u64[0];
  return result;
}

uint64_t sub_24E768D58()
{

  return swift_deallocObject();
}

unint64_t sub_24E768D98()
{
  result = qword_27F21BAD0;
  if (!qword_27F21BAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216BB8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BAD0);
  }

  return result;
}

unint64_t sub_24E768E54()
{
  result = qword_27F21BAF0;
  if (!qword_27F21BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BAF0);
  }

  return result;
}

unint64_t sub_24E768EA8()
{
  result = qword_27F21BAF8;
  if (!qword_27F21BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BAF8);
  }

  return result;
}

uint64_t sub_24E768EFC(uint64_t a1)
{
  v2 = type metadata accessor for LeaderboardTimer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E768F58()
{
  result = qword_27F21BB10;
  if (!qword_27F21BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BB10);
  }

  return result;
}

uint64_t sub_24E768FAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E768FF4()
{
  v0 = sub_24F92CB88();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24E769040()
{
  result = qword_27F21BB18;
  if (!qword_27F21BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BB18);
  }

  return result;
}

unint64_t sub_24E7690A8()
{
  result = qword_27F21BB20;
  if (!qword_27F21BB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21BAD8);
    sub_24E769134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BB20);
  }

  return result;
}

unint64_t sub_24E769134()
{
  result = qword_27F21BB28;
  if (!qword_27F21BB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21BB30);
    sub_24E768D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BB28);
  }

  return result;
}

unint64_t sub_24E7691BC()
{
  result = qword_27F21BB38;
  if (!qword_27F21BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BB38);
  }

  return result;
}

unint64_t sub_24E769214()
{
  result = qword_27F21BB40;
  if (!qword_27F21BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BB40);
  }

  return result;
}

unint64_t sub_24E76926C()
{
  result = qword_27F21BB48[0];
  if (!qword_27F21BB48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F21BB48);
  }

  return result;
}

uint64_t sub_24E7692C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4F79616C70736964 && a2 == 0xED00006E6F697470 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E7694CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_24E7694F0, 0, 0);
}

uint64_t sub_24E7694F0()
{
  v1 = [objc_opt_self() shared];
  if (v1)
  {
    v4 = v1;
    if (**(v0 + 32))
    {
      v5 = sub_24F92CE08();
    }

    else
    {
      v5 = 1;
    }

    [v4 setInboxContactsOnly_];

    refreshed = type metadata accessor for FeedRefreshNotifier();
    v7 = swift_task_alloc();
    *(v0 + 48) = v7;
    *v7 = v0;
    v7[1] = sub_24E769640;
    v1 = (v0 + 16);
    v2 = refreshed;
    v3 = refreshed;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x28217F228](v1, v2, v3);
}

uint64_t sub_24E769640()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_24E769808;
  }

  else
  {
    v2 = sub_24E769754;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E769754()
{
  v1 = *(v0 + 24);
  sub_24F03AC94();

  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_24F928AE8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24E769828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  updated = type metadata accessor for UpdateFriendRequestsPrivacyStateAction();
  v10 = *(updated - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](updated - 8);
  sub_24E769ADC(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  sub_24E769C30(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F953198;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

unint64_t sub_24E769A6C()
{
  result = qword_27F215530;
  if (!qword_27F215530)
  {
    type metadata accessor for UpdateFriendRequestsPrivacyStateAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215530);
  }

  return result;
}

uint64_t sub_24E769ADC(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateFriendRequestsPrivacyStateAction();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_24E769B40()
{
  updated = type metadata accessor for UpdateFriendRequestsPrivacyStateAction();
  v2 = (*(*(updated - 8) + 80) + 24) & ~*(*(updated - 8) + 80);
  v3 = v0 + *(updated + 20);
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v3 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_24E769C30(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateFriendRequestsPrivacyStateAction();
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_24E769C94(uint64_t a1)
{
  v4 = *(type metadata accessor for UpdateFriendRequestsPrivacyStateAction() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24E7694CC(a1, v1 + v5, v6);
}

uint64_t sub_24E769DB0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E769E0C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AchievementDetails();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 88);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24E769FB0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for AchievementDetails();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 88) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for AchievementsDetailsPageMainContentView()
{
  result = qword_27F21BBD0;
  if (!qword_27F21BBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E76A18C()
{
  type metadata accessor for AchievementDetails();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_24E684120();
      if (v2 <= 0x3F)
      {
        sub_24E6CAF48();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24E76A274@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for AchievementsDetailsPageMainContentView();
  sub_24E76AAA8(v1 + *(v10 + 32), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E667F6C(v9, a1);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E76A434@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for AchievementDetailsSideBySideView();
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BBE0);
  MEMORY[0x28223BE20](v23);
  v24 = &v23 - v5;
  v6 = type metadata accessor for UnifiedSingleColumnViewWithGameLockup();
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F923E98();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  v15 = type metadata accessor for AchievementsDetailsPageMainContentView();
  v16 = 360;
  if (*(v1 + v15[7]) >= *(v1 + v15[5]))
  {
    v16 = 0;
  }

  v17 = *(v1 + v15[6] + v16);
  sub_24E76A274(v14);
  sub_24F769788(v11);
  sub_24F52EC5C(v14, v11, v27);
  if (v27[0] > 1u)
  {
    sub_24E76A9E0(v1, v4, type metadata accessor for AchievementDetails);
    v21 = *(v2 + 20);
    if (qword_27F210E90 != -1)
    {
      swift_once();
    }

    memcpy(v27, &xmmword_27F237800, 0x178uLL);
    memcpy(&v4[v21], &xmmword_27F237800, 0x178uLL);
    sub_24E76A9E0(v4, v24, type metadata accessor for AchievementDetailsSideBySideView);
    swift_storeEnumTagMultiPayload();
    sub_24E76A93C(v27, v26);
    sub_24E76A998(&qword_27F21BBE8, type metadata accessor for UnifiedSingleColumnViewWithGameLockup);
    sub_24E76A998(&qword_27F21BBF0, type metadata accessor for AchievementDetailsSideBySideView);
    sub_24F924E28();
    v19 = type metadata accessor for AchievementDetailsSideBySideView;
    v20 = v4;
  }

  else
  {
    sub_24E76A9E0(v1, v8, type metadata accessor for AchievementDetails);
    *&v8[*(v6 + 20)] = v17;
    v18 = *(v6 + 24);
    if (qword_27F210E90 != -1)
    {
      swift_once();
    }

    memcpy(v27, &xmmword_27F237800, 0x178uLL);
    memcpy(&v8[v18], &xmmword_27F237800, 0x178uLL);
    sub_24E76A9E0(v8, v24, type metadata accessor for UnifiedSingleColumnViewWithGameLockup);
    swift_storeEnumTagMultiPayload();
    sub_24E76A93C(v27, v26);
    sub_24E76A998(&qword_27F21BBE8, type metadata accessor for UnifiedSingleColumnViewWithGameLockup);
    sub_24E76A998(&qword_27F21BBF0, type metadata accessor for AchievementDetailsSideBySideView);
    sub_24F924E28();
    v19 = type metadata accessor for UnifiedSingleColumnViewWithGameLockup;
    v20 = v8;
  }

  return sub_24E76AA48(v20, v19);
}

uint64_t sub_24E76A998(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E76A9E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E76AA48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E76AAA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E76AB1C()
{
  result = qword_27F21BBF8;
  if (!qword_27F21BBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21BC00);
    sub_24E76A998(&qword_27F21BBE8, type metadata accessor for UnifiedSingleColumnViewWithGameLockup);
    sub_24E76A998(&qword_27F21BBF0, type metadata accessor for AchievementDetailsSideBySideView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BBF8);
  }

  return result;
}

uint64_t sub_24E76AC1C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E76ACDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent()
{
  result = qword_27F21BC08;
  if (!qword_27F21BC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E76ADCC()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24E76AE60();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E76AE60()
{
  if (!qword_27F2191B0)
  {
    type metadata accessor for Player(255);
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2191B0);
    }
  }
}

unint64_t sub_24E76AEB8@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x616C506C61636F6CLL;
  *(inited + 96) = 0xEB00000000726579;
  v7 = type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent();
  v8 = *(v7 + 20);
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E61C064(&qword_27F215388);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E76B95C(v1 + v8, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 0x73726579616C70;
  *(inited + 152) = 0xE700000000000000;
  v10 = *(v1 + *(v7 + 24));
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
  *(inited + 192) = sub_24E76B8D4(&qword_27F21BC38, &qword_27F215388);
  *(inited + 160) = v10;

  v11 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v11;
  return result;
}

uint64_t sub_24E76B0D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E76B820();
  sub_24F92D128();
  v14 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v9 = type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent();
    v13 = 1;
    type metadata accessor for Player(0);
    sub_24E61C064(&qword_27F213E28);
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
    sub_24E76B8D4(&qword_27F21BC30, &qword_27F213E28);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E76B308@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v3 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC18);
  v16 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = &v15 - v6;
  v8 = type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent();
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E76B820();
  v17 = v7;
  v11 = v19;
  sub_24F92D108();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v16;
  v23 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v13;
  v19 = v13;
  v22 = 1;
  sub_24E61C064(&qword_27F213E38);
  sub_24F92CC68();
  sub_24E61C0A8(v5, v10 + *(v8 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
  v21 = 2;
  sub_24E76B8D4(&qword_27F2196A8, &qword_27F213E38);
  sub_24F92CC68();
  (*(v12 + 8))(v17, v18);
  *(v10 + *(v8 + 24)) = v20;
  sub_24E76B95C(v10, v15, type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E76B874(v10, type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent);
}

uint64_t sub_24E76B6B8()
{
  v1 = 0x616C506C61636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x73726579616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24E76B718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E76BADC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E76B740(uint64_t a1)
{
  v2 = sub_24E76B820();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E76B77C(uint64_t a1)
{
  v2 = sub_24E76B820();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E76B820()
{
  result = qword_27F21BC20;
  if (!qword_27F21BC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BC20);
  }

  return result;
}

uint64_t sub_24E76B874(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E76B8D4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247240);
    sub_24E61C064(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E76B95C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E76B9D8()
{
  result = qword_27F21BC40;
  if (!qword_27F21BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BC40);
  }

  return result;
}

unint64_t sub_24E76BA30()
{
  result = qword_27F21BC48;
  if (!qword_27F21BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BC48);
  }

  return result;
}

unint64_t sub_24E76BA88()
{
  result = qword_27F21BC50;
  if (!qword_27F21BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BC50);
  }

  return result;
}

uint64_t sub_24E76BADC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xEB00000000726579 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73726579616C70 && a2 == 0xE700000000000000)
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

uint64_t sub_24E76BC08(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E76BC88(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ReportFriendRequestDidSendAction()
{
  result = qword_27F21BC58;
  if (!qword_27F21BC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E76BD44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ReportFriendRequestDidSendAction();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E76C1A4();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24E76C1F8(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24E76BFB0(uint64_t a1)
{
  v2 = sub_24E76C1A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E76BFEC(uint64_t a1)
{
  v2 = sub_24E76C1A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E76C040(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E76C1A4();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E76C1A4()
{
  result = qword_27F21BC70;
  if (!qword_27F21BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BC70);
  }

  return result;
}

uint64_t sub_24E76C1F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportFriendRequestDidSendAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E76C270()
{
  result = qword_27F21BC80;
  if (!qword_27F21BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BC80);
  }

  return result;
}

unint64_t sub_24E76C2C8()
{
  result = qword_27F21BC88;
  if (!qword_27F21BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BC88);
  }

  return result;
}

unint64_t sub_24E76C320()
{
  result = qword_27F21BC90;
  if (!qword_27F21BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BC90);
  }

  return result;
}

double sub_24E76C374@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_24E76D644(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_24E643A9C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_24E76C3D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_24E76D934(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_24E643A9C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_24E76C464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 6;
  }

  v4 = sub_24E76D644(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 6;
  }
}

void *sub_24E76C4D8(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = a1;
    v6 = sub_24F92CA68();

    if (v6)
    {
      sub_24E69A5C4(0, a4);
      swift_dynamicCast();
      return v13;
    }
  }

  else if (*(a2 + 16))
  {
    v9 = a3();
    if (v10)
    {
      v11 = *(*(a2 + 56) + 8 * v9);
      v12 = v11;
      return v11;
    }
  }

  return 0;
}

uint64_t sub_24E76C5AC(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  sub_24F457D24(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v15 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_24F457D24((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v15 == ++v8)
      {
        goto LABEL_19;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_24E76C720(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x277D84F90];
  sub_24F457900(0, v5, 0);
  v6 = v16;
  for (i = (a3 + 32); ; ++i)
  {
    v14 = *i;

    a1(&v15, &v14);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v10 = v15;
    v16 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_24F457900((v11 > 1), v12 + 1, 1);
      v6 = v16;
    }

    *(v6 + 16) = v12 + 1;
    *(v6 + 8 * v12 + 32) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24E76C84C(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x277D84F90];
  sub_24F457ADC(0, v5, 0);
  v6 = v18;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v16[0] = *(i - 1);
    v16[1] = v10;

    a1(&v17, v16);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v17;
    v18 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      v15 = v17;
      sub_24F457ADC((v12 > 1), v13 + 1, 1);
      v11 = v15;
      v6 = v18;
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 16 * v13 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24E76C980(void (*a1)(_OWORD *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v27 = MEMORY[0x277D84F90];
  sub_24F45855C(0, v4, 0);
  v5 = v27;
  v25 = *(a3 + 32);
  a1(v26, &v25);
  if (!v3)
  {
    v8 = (a3 + 33);
    for (i = v4 - 1; ; --i)
    {
      v19 = v26[4];
      v20 = v26[5];
      v18 = v26[3];
      v16 = v26[1];
      v17 = v26[2];
      v23 = v26[8];
      v24 = v26[9];
      v21 = v26[6];
      v22 = v26[7];
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      v15 = v26[0];
      v27 = v5;
      if (v11 >= v10 >> 1)
      {
        sub_24F45855C((v10 > 1), v11 + 1, 1);
        v5 = v27;
      }

      *(v5 + 16) = v11 + 1;
      v12 = (v5 + 160 * v11);
      v12[2] = v15;
      v12[3] = v16;
      v12[6] = v19;
      v12[7] = v20;
      v12[4] = v17;
      v12[5] = v18;
      v12[10] = v23;
      v12[11] = v24;
      v12[8] = v21;
      v12[9] = v22;
      if (!i)
      {
        break;
      }

      v13 = *v8++;
      v25 = v13;
      a1(v26, &v25);
    }

    return v5;
  }

  __break(1u);
  return result;
}

void sub_24E76CB20(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E230);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v24 = MEMORY[0x277D84F90];
    sub_24F458414(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v10 = 0;
    v11 = v24;
    v18 = i;
    v19 = a3 & 0xC000000000000001;
    v17 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v19)
      {
        v13 = MEMORY[0x253052270](v10, a3);
      }

      else
      {
        if (v10 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v13 = *(a3 + 8 * v10 + 32);
      }

      i = v13;
      v23 = v13;
      v21(&v23);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v24 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_24F458414(v14 > 1, v15 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v15 + 1;
      sub_24E7725B4(v8, v11 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v15);
      ++v10;
      if (v12 == v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_24E76CD4C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = a1;
  v18 = a2;
  v16 = sub_24F922848();
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v19 = MEMORY[0x277D84F90];
  sub_24F45898C(0, v9, 0);
  v10 = v19;
  v11 = a3 + 32;
  v15 = v6 + 32;
  while (1)
  {
    v17(v11);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v19 = v10;
    v13 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_24F45898C(v12 > 1, v13 + 1, 1);
      v10 = v19;
    }

    *(v10 + 16) = v13 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v8, v16);
    v11 += 40;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24E76CEF8(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v17 = MEMORY[0x277D84F90];
    sub_24F45824C(0, v4, 0);
    v5 = v17;
    v8 = *(type metadata accessor for ItemLayoutContext() - 8);
    v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    while (1)
    {
      a1(&v16, v9, &v15);
      if (v3)
      {
        break;
      }

      v11 = v16;
      v17 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_24F45824C((v12 > 1), v13 + 1, 1);
        v5 = v17;
      }

      *(v5 + 16) = v13 + 1;
      *(v5 + 8 * v13 + 32) = v11;
      v9 += v10;
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_24E76D064(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v24 = MEMORY[0x277D84F90];
  sub_24F458D44(0, v5, 0);
  v6 = v24;
  for (i = (a3 + 56); ; i += 4)
  {
    v9 = *i;
    v19 = *(i - 3);
    v20 = *(i - 1);
    v21 = v9;

    a1(v22, &v19);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v22[0];
    v10 = v22[1];
    v12 = v23;
    v24 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      v17 = v23;
      sub_24F458D44((v13 > 1), v14 + 1, 1);
      v12 = v17;
      v6 = v24;
    }

    *(v6 + 16) = v14 + 1;
    v15 = v6 + 32 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v10;
    *(v15 + 48) = v12;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t ContentRestrictionReasonsProvider.init(restrictions:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for Restrictions();
  a2[3] = result;
  a2[4] = &protocol witness table for Restrictions;
  *a2 = a1;
  return result;
}

uint64_t ContentRestrictionReasonsProvider.addExpensiveMetricsFields(into:using:)(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_24F929A18();
  if (!*(v4 + 16))
  {
  }

  v5 = sub_24E76D644(0x6973736572706D69, 0xEB00000000736E6FLL);
  if ((v6 & 1) == 0)
  {
  }

  sub_24E643A9C(*(v4 + 56) + 32 * v5, v11);

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98);
  result = swift_dynamicCast();
  if (result)
  {
    MEMORY[0x28223BE20](result);
    v10[2] = v2;
    v9 = sub_24E76C720(sub_24E76D6BC, v10, v10[5]);

    v11[3] = v7;
    v11[0] = v9;
    __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_24F929A28();
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return result;
}

unint64_t sub_24E76D3B0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *(*a1 + 16);

  if (v6)
  {
    result = sub_24E76D644(0x6449656C646E7562, 0xE800000000000000);
    if (v8)
    {
      sub_24E643A9C(*(v5 + 56) + 32 * result, &v14);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v5 + 16) && (v9 = sub_24E76D644(0x52746E65746E6F63, 0xED0000676E697461), (v10 & 1) != 0) && (sub_24E643A9C(*(v5 + 56) + 32 * v9, &v14), (swift_dynamicCast() & 1) != 0))
        {
          __swift_project_boxed_opaque_existential_1(a2, a2[3]);
          v11 = RestrictionsProtocol.isAgeRestricted(bundleId:contentRating:)(v13[0], v13[0].value._countAndFlagsBits);

          if (v11)
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
            *&v14 = &unk_2861BF670;
            sub_24E612B0C(&v14, v13);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v16 = v5;
            result = sub_24E81C1D4(v13, 0xD000000000000019, 0x800000024FA46990, isUniquelyReferenced_nonNull_native);
            v5 = v16;
          }
        }

        else
        {
        }
      }
    }
  }

  *a3 = v5;
  return result;
}

uint64_t sub_24E76D5B0(void *a1)
{
  ContentRestrictionReasonsProvider.addExpensiveMetricsFields(into:using:)(a1);
  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_24E76D644(uint64_t a1, uint64_t a2)
{
  sub_24F92D068();
  sub_24F92B218();
  v4 = sub_24F92D0B8();

  return sub_24E76EDD8(a1, a2, v4);
}

unint64_t sub_24E76D6EC(uint64_t *a1)
{
  sub_24F92D068();
  PageFacets.Facet.hash(into:)(v4);
  v2 = sub_24F92D0B8();

  return sub_24E76EE90(a1, v2);
}

unint64_t sub_24E76D758(unsigned __int8 a1)
{
  sub_24F92D068();
  sub_24F92B218();

  v2 = sub_24F92D0B8();

  return sub_24E76F134(a1, v2);
}

unint64_t sub_24E76D830(unsigned __int8 a1)
{
  sub_24F92D068();
  sub_24F92B218();

  v2 = sub_24F92D0B8();

  return sub_24E76F2E4(a1, v2);
}

unint64_t sub_24E76D934(uint64_t a1)
{
  v2 = sub_24F92C7B8();

  return sub_24E76F4C8(a1, v2);
}

unint64_t sub_24E76D9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  v8 = sub_24F92D0B8();

  return sub_24E76F590(a1, a2, a3, a4, v8);
}

unint64_t sub_24E76DAA8(uint64_t a1)
{
  sub_24F92D068();
  MEMORY[0x253052A00](a1);
  v2 = sub_24F92D0B8();

  return sub_24E76F690(a1, v2);
}

unint64_t sub_24E76DB14(unsigned __int8 a1)
{
  v2 = sub_24EA18BEC();

  return sub_24E76F6FC(a1, v2);
}

unint64_t sub_24E76DB84(uint64_t a1, uint64_t a2)
{
  sub_24F92D068();
  sub_24F92B218();
  v4 = sub_24F92D0B8();
  return sub_24E76EDD8(a1, a2, v4);
}

unint64_t sub_24E76DC28(uint64_t a1)
{
  sub_24F92B0D8();
  sub_24F92D068();
  sub_24F92B218();
  v2 = sub_24F92D0B8();

  return sub_24E772154(a1, v2);
}

unint64_t sub_24E76DCB8(char a1)
{
  sub_24F92D068();
  sub_24E97433C(a1);
  sub_24F92B218();

  v2 = sub_24F92D0B8();

  return sub_24E7702CC(a1, v2);
}

unint64_t sub_24E76DD40(uint64_t a1)
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  v2 = sub_24F92D0B8();

  return sub_24E7703D0(a1, v2);
}

unint64_t sub_24E76DDAC(uint64_t a1)
{
  sub_24F929598();
  v2 = MEMORY[0x277D21F50];
  sub_24E772884(&qword_27F21BCE8, MEMORY[0x277D21F50]);
  v3 = sub_24F92AEE8();
  return sub_24E770F1C(a1, v3, MEMORY[0x277D21F50], &qword_27F21BCF0, v2, MEMORY[0x277D21F60]);
}

unint64_t sub_24E76DE80(char a1)
{
  sub_24F92D068();
  sub_24F92B218();

  v2 = sub_24F92D0B8();

  return sub_24E770498(a1, v2);
}

unint64_t sub_24E76DF04(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  sub_24E772624(&qword_27F21BCC0);
  v2 = sub_24F92AEE8();

  return sub_24E770584(a1, v2);
}

unint64_t sub_24E76DF94(unsigned __int8 *a1)
{
  sub_24F92D068();
  OfferTitleType.rawValue.getter();
  sub_24F92B218();

  v2 = sub_24F92D0B8();

  return sub_24E770738(a1, v2);
}

unint64_t sub_24E76E024(unsigned __int8 *a1)
{
  sub_24F92D068();
  sub_24F92B218();

  v2 = sub_24F92D0B8();

  return sub_24E770CAC(a1, v2);
}

unint64_t sub_24E76E150(uint64_t a1)
{
  sub_24F929458();
  v2 = MEMORY[0x277D21E98];
  sub_24E772884(&qword_27F21BD00, MEMORY[0x277D21E98]);
  v3 = sub_24F92AEE8();
  return sub_24E770F1C(a1, v3, MEMORY[0x277D21E98], &qword_27F21BD08, v2, MEMORY[0x277D21EA8]);
}

unint64_t sub_24E76E224(uint64_t *a1)
{
  sub_24F92D068();
  if (a1[1])
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  sub_24F92C418();
  sub_24F92B218();
  v2 = sub_24F92D0B8();

  return sub_24E7710BC(a1, v2);
}

unint64_t sub_24E76E2DC(uint64_t a1)
{
  v2 = *(a1 + 144);
  v18 = *(a1 + 128);
  v19 = v2;
  v20 = *(a1 + 160);
  v3 = *(a1 + 80);
  v14 = *(a1 + 64);
  v15 = v3;
  v4 = *(a1 + 112);
  v16 = *(a1 + 96);
  v17 = v4;
  v5 = *(a1 + 16);
  v10 = *a1;
  v11 = v5;
  v6 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = v6;
  sub_24F92D068();
  sub_24EB1FE0C(v9);
  v7 = sub_24F92D0B8();

  return sub_24E771278(a1, v7);
}

unint64_t sub_24E76E37C(void *a1)
{
  sub_24F92D068();
  MEMORY[0x253052A00]([a1 hash]);
  v2 = sub_24F92D0B8();

  return sub_24E77140C(a1, v2);
}

unint64_t sub_24E76E444(char a1)
{
  sub_24F92D068();
  sub_24F92B218();

  v2 = sub_24F92D0B8();

  return sub_24E7714B0(a1 & 1, v2);
}

unint64_t sub_24E76E530(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_24F92D068();
  sub_24F92B218();
  MEMORY[0x253052A00](a3);
  sub_24F92D088();
  v8 = sub_24F92D0B8();

  return sub_24E7715DC(a1, a2, a3, a4, v8);
}

unint64_t sub_24E76E5D8(char a1, uint64_t a2, uint64_t a3)
{
  sub_24F92D068();
  sub_24F92B218();

  sub_24F92B218();
  v6 = sub_24F92D0B8();

  return sub_24E7716C8(a1, a2, a3, v6);
}

uint64_t sub_24E76E754(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = sub_24F92D068();
  a2(v5);
  sub_24F92B218();

  v6 = sub_24F92D0B8();

  return a3(a1, v6);
}

unint64_t sub_24E76E7F4(uint64_t a1)
{
  sub_24F91F6B8();
  v2 = MEMORY[0x277CC95F0];
  sub_24E772884(&qword_27F2551B0, MEMORY[0x277CC95F0]);
  v3 = sub_24F92AEE8();
  return sub_24E770F1C(a1, v3, MEMORY[0x277CC95F0], &unk_27F239490, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_24E76E8C8(uint64_t a1)
{
  sub_24F923E98();
  v2 = MEMORY[0x277CDFA28];
  sub_24E772884(&qword_27F21BCE0, MEMORY[0x277CDFA28]);
  v3 = sub_24F92AEE8();
  return sub_24E770F1C(a1, v3, MEMORY[0x277CDFA28], &qword_27F22DF90, v2, MEMORY[0x277CDFA48]);
}

unint64_t sub_24E76E99C(uint64_t a1)
{
  sub_24F9272E8();
  v2 = MEMORY[0x277CE12A8];
  sub_24E772884(&qword_27F21BCD0, MEMORY[0x277CE12A8]);
  v3 = sub_24F92AEE8();
  return sub_24E770F1C(a1, v3, MEMORY[0x277CE12A8], &qword_27F21BCD8, v2, MEMORY[0x277CE12B8]);
}

unint64_t sub_24E76EA70(unsigned __int8 a1)
{
  sub_24F92D068();
  MEMORY[0x253052A00](a1);
  v2 = sub_24F92D0B8();
  return sub_24E772258(a1, v2);
}

unint64_t sub_24E76EAD8(unsigned __int8 a1)
{
  sub_24F92D068();
  sub_24F92B218();

  v2 = sub_24F92D0B8();

  return sub_24E7722C8(a1, v2);
}

unint64_t sub_24E76EBE8(char a1)
{
  sub_24F92D068();
  MEMORY[0x253052A00](a1 & 1);
  v2 = sub_24F92D0B8();

  return sub_24E772498(a1 & 1, v2);
}

unint64_t sub_24E76EC54(uint64_t a1)
{
  sub_24F92AA48();
  v2 = MEMORY[0x277D224C0];
  sub_24E772884(&qword_27F21BCA0, MEMORY[0x277D224C0]);
  v3 = sub_24F92AEE8();
  return sub_24E770F1C(a1, v3, MEMORY[0x277D224C0], &qword_27F21BCA8, v2, MEMORY[0x277D224D8]);
}

unint64_t sub_24E76ED28(uint64_t a1, char a2, uint64_t a3, char a4)
{
  sub_24F92D068();
  v8 = a2 & 1;
  sub_24F904F28(v11, a1, v8, a3, a4 & 1);
  v9 = sub_24F92D0B8();
  v11[0] = v8;

  return sub_24E772508(a1, v8, a3, a4 & 1, v9);
}

unint64_t sub_24E76EDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24F92CE08())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24E76EE90(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = *a1;
    v8 = a1[1];
    v21 = *(a1 + 89);
    do
    {
      sub_24E772674(*(v2 + 48) + 136 * v4, v22);
      v9 = v22[0] == v7 && v22[1] == v8;
      if (!v9 && (sub_24F92CE08() & 1) == 0)
      {
        goto LABEL_43;
      }

      v10 = v22[4] == a1[4] && v22[5] == a1[5];
      if (!v10 && (sub_24F92CE08() & 1) == 0 || (v22[2] != a1[2] || v22[3] != a1[3]) && (sub_24F92CE08() & 1) == 0)
      {
        goto LABEL_43;
      }

      if (v23)
      {
        if (v23 == 1)
        {
          v11 = 0x6553656C676E6973;
        }

        else
        {
          v11 = 0xD000000000000011;
        }

        v12 = 0xEF6E6F697463656CLL;
        if (v23 == 1)
        {
          v13 = 0xEF6E6F697463656CLL;
        }

        else
        {
          v13 = 0x800000024FA3FA90;
        }
      }

      else
      {
        v13 = 0xE600000000000000;
        v11 = 0x656C67676F74;
        v12 = 0xEF6E6F697463656CLL;
      }

      v14 = 0xD000000000000011;
      if (*(a1 + 48) == 1)
      {
        v14 = 0x6553656C676E6973;
      }

      else
      {
        v12 = 0x800000024FA3FA90;
      }

      if (*(a1 + 48))
      {
        v15 = v14;
      }

      else
      {
        v15 = 0x656C67676F74;
      }

      if (*(a1 + 48))
      {
        v16 = v12;
      }

      else
      {
        v16 = 0xE600000000000000;
      }

      if (v11 == v15 && v13 == v16)
      {
      }

      else
      {
        v17 = sub_24F92CE08();

        if ((v17 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      if ((sub_24EDD4178(v25, a1[8]) & 1) != 0 && (sub_24EA169B8(v24, a1[7]) & 1) != 0 && v26 == *(a1 + 88) && ((v27 ^ v21) & 1) == 0)
      {
        v18 = v28;
        v19 = *(a1 + 90);
        sub_24E7726D0(v22);
        if (v18 == v19)
        {
          return v4;
        }

        goto LABEL_44;
      }

LABEL_43:
      sub_24E7726D0(v22);
LABEL_44:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24E76F134(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x736275732D6E6F6ELL;
          v8 = 0xEE00726562697263;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0x6269726373627573;
          v8 = 0xEA00000000007265;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE700000000000000;
            if (v7 != 0x746C7561666564)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE700000000000000;
        v7 = 0x746C7561666564;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x736275732D6E6F6ELL;
      }

      else
      {
        v10 = 0x6269726373627573;
      }

      if (v9 == 1)
      {
        v11 = 0xEE00726562697263;
      }

      else
      {
        v11 = 0xEA00000000007265;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_24F92CE08();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24E76F2E4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xE700000000000000;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v2 + 48) + v4))
        {
          v8 = 0x74726F6873;
        }

        else
        {
          v8 = 0x746C7561666564;
        }

        if (*(*(v2 + 48) + v4))
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE700000000000000;
        }
      }

      else if (v7 == 2)
      {
        v9 = 0xE600000000000000;
        v8 = 0x6D756964656DLL;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 1735290732;
        }

        else
        {
          v8 = 0x6169766572626261;
        }

        if (v7 == 3)
        {
          v9 = 0xE400000000000000;
        }

        else
        {
          v9 = 0xEB00000000646574;
        }
      }

      if (v6 == 3)
      {
        v10 = 1735290732;
      }

      else
      {
        v10 = 0x6169766572626261;
      }

      if (v6 == 3)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xEB00000000646574;
      }

      if (v6 == 2)
      {
        v10 = 0x6D756964656DLL;
        v11 = 0xE600000000000000;
      }

      if (v6)
      {
        v12 = 0x74726F6873;
      }

      else
      {
        v12 = 0x746C7561666564;
      }

      if (v6)
      {
        v5 = 0xE500000000000000;
      }

      v13 = v6 <= 1 ? v12 : v10;
      v14 = v6 <= 1 ? v5 : v11;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_24F92CE08();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xE700000000000000;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24E76F4C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24E65864C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x253052150](v9, a1);
      sub_24E6585F8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24E76F590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_24F92CE08() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_24F92CE08() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_24E76F690(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24E76F6FC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      v28 = v4;
      if (v6 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v11 = 0xD000000000000013;
            v12 = 0x800000024FA40260;
          }

          else
          {
            v11 = 0x6573616863727570;
            v12 = 0xEF79726F74736948;
          }
        }

        else
        {
          if (v6 == 4)
          {
            v11 = 0x74666947646E6573;
          }

          else
          {
            v11 = 0x6853796C696D6166;
          }

          if (v6 == 4)
          {
            v12 = 0xE800000000000000;
          }

          else
          {
            v12 = 0xED0000676E697261;
          }
        }
      }

      else
      {
        if (v6 == 2)
        {
          v7 = 0x6D6565646572;
        }

        else
        {
          v7 = 0x73646E7546646461;
        }

        if (v6 == 2)
        {
          v8 = 0xE600000000000000;
        }

        else
        {
          v8 = 0xE800000000000000;
        }

        if (*(*(v27 + 48) + v4))
        {
          v9 = 0x6341657461657263;
        }

        else
        {
          v9 = 0x44746E756F636361;
        }

        if (v6)
        {
          v10 = 0xED0000746E756F63;
        }

        else
        {
          v10 = 0xEE00736C69617465;
        }

        if (v6 <= 1)
        {
          v11 = v9;
        }

        else
        {
          v11 = v7;
        }

        if (v6 <= 1)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }
      }

      v13 = 0xD000000000000013;
      if (v5 != 6)
      {
        v13 = 0x6573616863727570;
      }

      v14 = 0xEF79726F74736948;
      if (v5 == 6)
      {
        v14 = 0x800000024FA40260;
      }

      v15 = 0x74666947646E6573;
      if (v5 != 4)
      {
        v15 = 0x6853796C696D6166;
      }

      v16 = 0xED0000676E697261;
      if (v5 == 4)
      {
        v16 = 0xE800000000000000;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v5 == 2)
      {
        v17 = 0x6D6565646572;
      }

      else
      {
        v17 = 0x73646E7546646461;
      }

      if (v5 == 2)
      {
        v18 = 0xE600000000000000;
      }

      else
      {
        v18 = 0xE800000000000000;
      }

      if (v5)
      {
        v19 = 0x6341657461657263;
      }

      else
      {
        v19 = 0x44746E756F636361;
      }

      if (v5)
      {
        v20 = 0xED0000746E756F63;
      }

      else
      {
        v20 = 0xEE00736C69617465;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 3 ? v17 : v13;
      v22 = v5 <= 3 ? v18 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = sub_24F92CE08();

      if (v23)
      {
        return v28;
      }

      v4 = (v28 + 1) & v25;
      if (((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}

unint64_t sub_24E76F9F0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x647261646E617473;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x616D7269666E6F63;
          v7 = 0xEC0000006E6F6974;
          break;
        case 2:
          v8 = 0xD000000000000013;
          v7 = 0x800000024FA41990;
          break;
        case 3:
          v8 = 0xD000000000000015;
          v7 = 0x800000024FA419B0;
          break;
        case 4:
          v7 = 0xE400000000000000;
          v8 = 1852141679;
          break;
        case 5:
          v7 = 0xE600000000000000;
          v8 = 0x657461647075;
          break;
        case 6:
          v8 = 0x64616F6C6E776F64;
          break;
        case 7:
          v8 = 0x6573616863727570;
          v7 = 0xE900000000000064;
          break;
        case 8:
          v8 = 0x64616F6C6E776F64;
          goto LABEL_21;
        case 9:
          v7 = 0xE500000000000000;
          v8 = 0x6C61697274;
          break;
        case 0xA:
          v8 = 0x6373627553746F6ELL;
          v7 = 0xED00006465626972;
          break;
        case 0xB:
          v8 = 0x6269726373627573;
          goto LABEL_21;
        case 0xC:
          v8 = 0x7463697274736572;
LABEL_21:
          v7 = 0xEA00000000006465;
          break;
        case 0xD:
          v8 = 0xD000000000000012;
          v7 = 0x800000024FA41A10;
          break;
        case 0xE:
          v8 = 0xD000000000000015;
          v7 = 0x800000024FA41A30;
          break;
        case 0xF:
          v8 = 0xD000000000000014;
          v7 = 0x800000024FA41A50;
          break;
        case 0x10:
          v8 = 0xD000000000000017;
          v7 = 0x800000024FA41A70;
          break;
        case 0x11:
          v8 = 0xD000000000000013;
          v7 = 0x800000024FA41A90;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x647261646E617473;
      switch(a1)
      {
        case 1:
          v9 = 0xEC0000006E6F6974;
          if (v8 == 0x616D7269666E6F63)
          {
            goto LABEL_53;
          }

          goto LABEL_54;
        case 2:
          v9 = 0x800000024FA41990;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 3:
          v9 = 0x800000024FA419B0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 4:
          v9 = 0xE400000000000000;
          if (v8 != 1852141679)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 5:
          v9 = 0xE600000000000000;
          if (v8 != 0x657461647075)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 6:
          if (v8 != 0x64616F6C6E776F64)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 7:
          v9 = 0xE900000000000064;
          if (v8 != 0x6573616863727570)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 8:
          v11 = 0x64616F6C6E776F64;
          goto LABEL_58;
        case 9:
          v9 = 0xE500000000000000;
          if (v8 != 0x6C61697274)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 10:
          v10 = 0x6373627553746F6ELL;
          v9 = 0xED00006465626972;
          goto LABEL_52;
        case 11:
          v11 = 0x6269726373627573;
          goto LABEL_58;
        case 12:
          v11 = 0x7463697274736572;
LABEL_58:
          v9 = 0xEA00000000006465;
          if (v8 != v11)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 13:
          v9 = 0x800000024FA41A10;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 14:
          v9 = 0x800000024FA41A30;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 15:
          v9 = 0x800000024FA41A50;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 16:
          v9 = 0x800000024FA41A70;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 17:
          v9 = 0x800000024FA41A90;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        default:
LABEL_52:
          if (v8 != v10)
          {
            goto LABEL_54;
          }

LABEL_53:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_54:
          v12 = sub_24F92CE08();

          if (v12)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_24E76FF64(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 5)
      {
        v20 = 0xD000000000000021;
        v21 = 0xD00000000000001BLL;
        if (v7 != 10)
        {
          v21 = 0xD000000000000029;
        }

        v22 = "ing_ExpandedMedia";
        if (v7 != 10)
        {
          v22 = "downloadingOrdering_Compact";
        }

        if (v7 != 9)
        {
          v20 = v21;
        }

        v23 = "downloadingOrdering";
        if (v7 != 9)
        {
          v23 = v22;
        }

        v24 = 0xD000000000000019;
        v25 = 0xD000000000000027;
        if (v7 != 7)
        {
          v25 = 0xD000000000000013;
        }

        v26 = "purchasedOrdering_Compact";
        if (v7 != 7)
        {
          v26 = "g_ExpandedMedia_Compact";
        }

        if (v7 != 6)
        {
          v24 = v25;
        }

        v27 = "ring_ExpandedMedia_Compact";
        if (v7 != 6)
        {
          v27 = v26;
        }

        if (*(*(v2 + 48) + v4) <= 8u)
        {
          v16 = v24;
        }

        else
        {
          v16 = v20;
        }

        if (*(*(v2 + 48) + v4) <= 8u)
        {
          v17 = v27;
        }

        else
        {
          v17 = v23;
        }

        if (v6 > 5)
        {
LABEL_27:
          if (v6 > 8)
          {
            if (v6 == 9)
            {
              v18 = 0xD000000000000021;
              v19 = "downloadingOrdering";
            }

            else if (v6 == 10)
            {
              v18 = 0xD00000000000001BLL;
              v19 = "ing_ExpandedMedia";
            }

            else
            {
              v18 = 0xD000000000000029;
              v19 = "downloadingOrdering_Compact";
            }
          }

          else if (v6 == 6)
          {
            v18 = 0xD000000000000019;
            v19 = "ring_ExpandedMedia_Compact";
          }

          else if (v6 == 7)
          {
            v18 = 0xD000000000000027;
            v19 = "purchasedOrdering_Compact";
          }

          else
          {
            v18 = 0xD000000000000013;
            v19 = "g_ExpandedMedia_Compact";
          }

          goto LABEL_72;
        }
      }

      else
      {
        v8 = 0xD000000000000014;
        v9 = 0xD00000000000001FLL;
        v10 = 0xD00000000000001CLL;
        if (v7 != 4)
        {
          v10 = 0xD00000000000002ALL;
        }

        v11 = "purchasedOrdering_ExpandedMedia";
        if (v7 != 4)
        {
          v11 = "notPurchasedOrdering_Compact";
        }

        if (v7 != 3)
        {
          v9 = v10;
        }

        v12 = "purchasedOrdering";
        if (v7 != 3)
        {
          v12 = v11;
        }

        v13 = 0xD000000000000022;
        if (v7 != 1)
        {
          v13 = 0xD000000000000011;
        }

        v14 = "notPurchasedOrdering";
        if (v7 != 1)
        {
          v14 = "ring_ExpandedMedia";
        }

        if (*(*(v2 + 48) + v4))
        {
          v8 = v13;
        }

        v15 = "oBuyRequest";
        if (*(*(v2 + 48) + v4))
        {
          v15 = v14;
        }

        if (*(*(v2 + 48) + v4) <= 2u)
        {
          v16 = v8;
        }

        else
        {
          v16 = v9;
        }

        if (*(*(v2 + 48) + v4) <= 2u)
        {
          v17 = v15;
        }

        else
        {
          v17 = v12;
        }

        if (v6 > 5)
        {
          goto LABEL_27;
        }
      }

      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v18 = 0xD00000000000001FLL;
          v19 = "purchasedOrdering";
        }

        else if (v6 == 4)
        {
          v18 = 0xD00000000000001CLL;
          v19 = "purchasedOrdering_ExpandedMedia";
        }

        else
        {
          v18 = 0xD00000000000002ALL;
          v19 = "notPurchasedOrdering_Compact";
        }
      }

      else if (v6)
      {
        if (v6 == 1)
        {
          v18 = 0xD000000000000022;
          v19 = "notPurchasedOrdering";
        }

        else
        {
          v18 = 0xD000000000000011;
          v19 = "ring_ExpandedMedia";
        }
      }

      else
      {
        v18 = 0xD000000000000014;
        v19 = "oBuyRequest";
      }

LABEL_72:
      if (v16 == v18 && (v17 | 0x8000000000000000) == (v19 | 0x8000000000000000))
      {

        return v4;
      }

      v28 = sub_24F92CE08();

      if ((v28 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24E7702CC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = sub_24E97433C(*(*(v2 + 48) + v4));
      v9 = v8;
      if (v7 == sub_24E97433C(a1) && v9 == v10)
      {
        break;
      }

      v12 = sub_24F92CE08();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24E7703D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24E772724(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x253052150](v9, a1);
      sub_24E772780(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24E770498(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = qword_24F953708[a1];
    while (qword_24F953708[*(*(v2 + 48) + v4)] != v6)
    {
      v7 = sub_24F92CE08();
      swift_bridgeObjectRelease_n();
      if ((v7 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_24E770584(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_24E772624(&qword_27F21BCC8);
      v16 = sub_24F92AFF8();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_24E770738(unsigned __int8 *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *a1;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x647261646E617473;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x616D7269666E6F63;
          v7 = 0xEC0000006E6F6974;
          break;
        case 2:
          v8 = 0xD000000000000013;
          v7 = 0x800000024FA41990;
          break;
        case 3:
          v8 = 0xD000000000000015;
          v7 = 0x800000024FA419B0;
          break;
        case 4:
          v7 = 0xE400000000000000;
          v8 = 1852141679;
          break;
        case 5:
          v7 = 0xE600000000000000;
          v8 = 0x657461647075;
          break;
        case 6:
          v8 = 0x64616F6C6E776F64;
          break;
        case 7:
          v8 = 0x6573616863727570;
          v7 = 0xE900000000000064;
          break;
        case 8:
          v8 = 0x64616F6C6E776F64;
          goto LABEL_21;
        case 9:
          v7 = 0xE500000000000000;
          v8 = 0x6C61697274;
          break;
        case 0xA:
          v8 = 0x6373627553746F6ELL;
          v7 = 0xED00006465626972;
          break;
        case 0xB:
          v8 = 0x6269726373627573;
          goto LABEL_21;
        case 0xC:
          v8 = 0x7463697274736572;
LABEL_21:
          v7 = 0xEA00000000006465;
          break;
        case 0xD:
          v8 = 0xD000000000000012;
          v7 = 0x800000024FA41A10;
          break;
        case 0xE:
          v8 = 0xD000000000000015;
          v7 = 0x800000024FA41A30;
          break;
        case 0xF:
          v8 = 0xD000000000000014;
          v7 = 0x800000024FA41A50;
          break;
        case 0x10:
          v8 = 0xD000000000000017;
          v7 = 0x800000024FA41A70;
          break;
        case 0x11:
          v8 = 0xD000000000000013;
          v7 = 0x800000024FA41A90;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x647261646E617473;
      switch(v6)
      {
        case 1:
          v9 = 0xEC0000006E6F6974;
          if (v8 == 0x616D7269666E6F63)
          {
            goto LABEL_53;
          }

          goto LABEL_54;
        case 2:
          v9 = 0x800000024FA41990;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 3:
          v9 = 0x800000024FA419B0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 4:
          v9 = 0xE400000000000000;
          if (v8 != 1852141679)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 5:
          v9 = 0xE600000000000000;
          if (v8 != 0x657461647075)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 6:
          if (v8 != 0x64616F6C6E776F64)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 7:
          v9 = 0xE900000000000064;
          if (v8 != 0x6573616863727570)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 8:
          v11 = 0x64616F6C6E776F64;
          goto LABEL_58;
        case 9:
          v9 = 0xE500000000000000;
          if (v8 != 0x6C61697274)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 10:
          v10 = 0x6373627553746F6ELL;
          v9 = 0xED00006465626972;
          goto LABEL_52;
        case 11:
          v11 = 0x6269726373627573;
          goto LABEL_58;
        case 12:
          v11 = 0x7463697274736572;
LABEL_58:
          v9 = 0xEA00000000006465;
          if (v8 != v11)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 13:
          v9 = 0x800000024FA41A10;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 14:
          v9 = 0x800000024FA41A30;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 15:
          v9 = 0x800000024FA41A50;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 16:
          v9 = 0x800000024FA41A70;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 17:
          v9 = 0x800000024FA41A90;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        default:
LABEL_52:
          if (v8 != v10)
          {
            goto LABEL_54;
          }

LABEL_53:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_54:
          v12 = sub_24F92CE08();

          if (v12)
          {
            return v4;
          }

          v4 = (v4 + 1) & v5;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_24E770CAC(unsigned __int8 *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *a1;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x736275732D6E6F6ELL;
          v8 = 0xEE00726562697263;
          if (!v6)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0x6269726373627573;
          v8 = 0xEA00000000007265;
          if (!v6)
          {
LABEL_17:
            v10 = 0xE700000000000000;
            if (v7 != 0x746C7561666564)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE700000000000000;
        v7 = 0x746C7561666564;
        if (!v6)
        {
          goto LABEL_17;
        }
      }

      if (v6 == 1)
      {
        v9 = 0x736275732D6E6F6ELL;
      }

      else
      {
        v9 = 0x6269726373627573;
      }

      if (v6 == 1)
      {
        v10 = 0xEE00726562697263;
      }

      else
      {
        v10 = 0xEA00000000007265;
      }

      if (v7 != v9)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v10)
      {

        return v4;
      }

LABEL_19:
      v11 = sub_24F92CE08();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24E770E50(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_24E69A5C4(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_24F92C408();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24E770F1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_24E772884(v23, v24);
      v19 = sub_24F92AFF8();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_24E7710BC(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v20 = ~v4;
    v7 = a1[1];
    v19 = *a1;
    do
    {
      v8 = (*(v2 + 48) + 40 * v5);
      v10 = v8[1];
      v9 = v8[2];
      v11 = v8[3];
      v12 = v8[4];
      if (v10)
      {
        if (!v7)
        {
          goto LABEL_4;
        }

        v13 = *v8 == v19 && v10 == v7;
        if (!v13 && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v7)
      {
        goto LABEL_4;
      }

      sub_24E69A5C4(0, &qword_27F21BCB0);

      v14 = v9;

      if (sub_24F92C408())
      {
        if (v11 == a1[3] && v12 == a1[4])
        {

          return v5;
        }

        v16 = sub_24F92CE08();

        v2 = v18;
        if (v16)
        {
          return v5;
        }
      }

      else
      {

        v2 = v18;
      }

LABEL_4:
      v5 = (v5 + 1) & v20;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24E771278(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  v43[8] = *(a1 + 128);
  v43[9] = v3;
  v44 = *(a1 + 160);
  v4 = *(a1 + 80);
  v43[4] = *(a1 + 64);
  v43[5] = v4;
  v5 = *(a1 + 112);
  v43[6] = *(a1 + 96);
  v43[7] = v5;
  v6 = *(a1 + 16);
  v43[0] = *a1;
  v43[1] = v6;
  v7 = *(a1 + 48);
  v43[2] = *(a1 + 32);
  v43[3] = v7;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      v11 = *(v2 + 48) + 168 * v9;
      v13 = *(v11 + 16);
      v12 = *(v11 + 32);
      v39[0] = *v11;
      v39[1] = v13;
      v39[2] = v12;
      v14 = *(v11 + 96);
      v16 = *(v11 + 48);
      v15 = *(v11 + 64);
      v39[5] = *(v11 + 80);
      v39[6] = v14;
      v39[3] = v16;
      v39[4] = v15;
      v18 = *(v11 + 128);
      v17 = *(v11 + 144);
      v19 = *(v11 + 112);
      v40 = *(v11 + 160);
      v39[8] = v18;
      v39[9] = v17;
      v39[7] = v19;
      v20 = *(v11 + 144);
      v36 = *(v11 + 128);
      v37 = v20;
      v38 = *(v11 + 160);
      v21 = *(v11 + 80);
      v32 = *(v11 + 64);
      v33 = v21;
      v22 = *(v11 + 112);
      v34 = *(v11 + 96);
      v35 = v22;
      v23 = *(v11 + 16);
      v28 = *v11;
      v29 = v23;
      v24 = *(v11 + 48);
      v30 = *(v11 + 32);
      v31 = v24;
      sub_24E7727D4(v39, v27);
      v25 = sub_24EB20188(&v28, v43);
      v41[8] = v36;
      v41[9] = v37;
      v42 = v38;
      v41[4] = v32;
      v41[5] = v33;
      v41[6] = v34;
      v41[7] = v35;
      v41[0] = v28;
      v41[1] = v29;
      v41[2] = v30;
      v41[3] = v31;
      sub_24E772830(v41);
      if (v25)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_24E77140C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      if ([*(*(v2 + 48) + 8 * v4) isEqual_])
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24E7714B0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 7304045;
    }

    else
    {
      v6 = 1701736302;
    }

    if (a1)
    {
      v7 = 0xE300000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 7304045 : 1701736302;
      v9 = *(*(v2 + 48) + v4) ? 0xE300000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_24F92CE08();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24E7715DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = v14 + 32 * v8;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      v18 = *v15 == a1 && *(v15 + 8) == a2;
      if (v18 || (sub_24F92CE08()) && v16 == a3 && ((v17 ^ a4) & 1) == 0)
      {
        break;
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_24E7716C8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v20 = ~v5;
    do
    {
      v9 = *(v4 + 48) + 24 * v6;
      if (*v9)
      {
        if (*v9 == 1)
        {
          v10 = 0x6D754E656E6F6870;
          v11 = 0xEB00000000726562;
        }

        else
        {
          v10 = 0x6464416C69616D65;
          v11 = 0xEC00000073736572;
        }
      }

      else
      {
        v11 = 0xE700000000000000;
        v10 = 0x636972656E6567;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v12 = 0x6D754E656E6F6870;
        }

        else
        {
          v12 = 0x6464416C69616D65;
        }

        if (a1 == 1)
        {
          v13 = 0xEB00000000726562;
        }

        else
        {
          v13 = 0xEC00000073736572;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        v12 = 0x636972656E6567;
      }

      v15 = *(v9 + 8);
      v14 = *(v9 + 16);
      if (v10 == v12 && v11 == v13)
      {
      }

      else
      {
        v16 = sub_24F92CE08();

        if ((v16 & 1) == 0)
        {

          goto LABEL_4;
        }
      }

      if (v15 == a2 && v14 == a3)
      {

        return v6;
      }

      v18 = sub_24F92CE08();

      if (v18)
      {
        return v6;
      }

LABEL_4:
      v6 = (v6 + 1) & v20;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_24E7718FC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE300000000000000;
      v8 = 7105633;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x676E656C6C616863;
          v7 = 0xEA00000000007365;
          break;
        case 2:
          v7 = 0xE700000000000000;
          v8 = 0x73646E65697266;
          break;
        case 3:
          v8 = 0x6552646E65697266;
          v7 = 0xEE00737473657571;
          break;
        case 4:
          v8 = 0xD000000000000015;
          v7 = 0x800000024FA41B30;
          break;
        case 5:
          v7 = 0xE500000000000000;
          v8 = 0x73656D6167;
          break;
        case 6:
          v7 = 0xE800000000000000;
          v8 = 0x73656C69666F7270;
          break;
        case 7:
          v7 = 0xE700000000000000;
          v8 = 0x73726579616C70;
          break;
        case 8:
          v8 = 0x6D65766569686361;
          v9 = 1937010277;
          goto LABEL_34;
        case 9:
          v7 = 0xEC00000073647261;
          goto LABEL_12;
        case 0xA:
          v7 = 0xE500000000000000;
          v8 = 0x6F746F6870;
          break;
        case 0xB:
          v7 = 0xEF73746553647261;
LABEL_12:
          v8 = 0x6F6272656461656CLL;
          break;
        case 0xC:
          v8 = 0x6E65726566657270;
          v7 = 0xEB00000000736563;
          break;
        case 0xD:
          v7 = 0xE600000000000000;
          v8 = 0x7365726F6373;
          break;
        case 0xE:
          v7 = 0xE500000000000000;
          v8 = 0x736E727574;
          break;
        case 0xF:
          v8 = 0x73736553656D6167;
          goto LABEL_33;
        case 0x10:
          v7 = 0xE700000000000000;
          v8 = 0x73726174617661;
          break;
        case 0x11:
          v8 = 0x50656C69666F7270;
          v7 = 0xEE00796361766972;
          break;
        case 0x12:
          v8 = 0xD00000000000001ALL;
          v7 = 0x800000024FA41BD0;
          break;
        case 0x13:
          v8 = 0xD000000000000014;
          v7 = 0x800000024FA41BF0;
          break;
        case 0x14:
          v8 = 0x796C746E65636572;
          v7 = 0xEE00646579616C50;
          break;
        case 0x15:
          v8 = 0xD00000000000001DLL;
          v7 = 0x800000024FA41C10;
          break;
        case 0x16:
          v8 = 0x4D707041656D6167;
          v7 = 0xEF61746164617465;
          break;
        case 0x17:
          v8 = 0x7262694C656D6167;
          v7 = 0xEB00000000797261;
          break;
        case 0x18:
          v8 = 0xD000000000000014;
          v7 = 0x800000024FA41C50;
          break;
        case 0x19:
          v8 = 0xD000000000000012;
          v7 = 0x800000024FA41C70;
          break;
        case 0x1A:
          v8 = 0x7463697274736572;
LABEL_33:
          v9 = 1936617321;
LABEL_34:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 0x1B:
          v8 = 0xD000000000000010;
          v7 = 0x800000024FA41C90;
          break;
        case 0x1C:
          v7 = 0xE700000000000000;
          v8 = 0x6C616974696E69;
          break;
        default:
          break;
      }

      v10 = 0xE300000000000000;
      v11 = 7105633;
      switch(a1)
      {
        case 1:
          v10 = 0xEA00000000007365;
          if (v8 == 0x676E656C6C616863)
          {
            goto LABEL_86;
          }

          goto LABEL_87;
        case 2:
          v10 = 0xE700000000000000;
          v12 = 0x646E65697266;
          goto LABEL_57;
        case 3:
          v17 = 0x6552646E65697266;
          v18 = 0x737473657571;
          goto LABEL_61;
        case 4:
          v10 = 0x800000024FA41B30;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 5:
          v10 = 0xE500000000000000;
          v13 = 1701667175;
          goto LABEL_64;
        case 6:
          v10 = 0xE800000000000000;
          if (v8 != 0x73656C69666F7270)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 7:
          v10 = 0xE700000000000000;
          v12 = 0x726579616C70;
          goto LABEL_57;
        case 8:
          v16 = 0x6D65766569686361;
          v19 = 1937010277;
          goto LABEL_92;
        case 9:
          v10 = 0xEC00000073647261;
          goto LABEL_47;
        case 10:
          v10 = 0xE500000000000000;
          if (v8 != 0x6F746F6870)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 11:
          v10 = 0xEF73746553647261;
LABEL_47:
          if (v8 != 0x6F6272656461656CLL)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 12:
          v14 = 0x6E65726566657270;
          v15 = 7562595;
          goto LABEL_82;
        case 13:
          v10 = 0xE600000000000000;
          if (v8 != 0x7365726F6373)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 14:
          v10 = 0xE500000000000000;
          v13 = 1852994932;
LABEL_64:
          if (v8 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x7300000000))
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 15:
          v16 = 0x73736553656D6167;
          goto LABEL_91;
        case 16:
          v10 = 0xE700000000000000;
          v12 = 0x726174617661;
LABEL_57:
          if (v8 != (v12 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 17:
          v17 = 0x50656C69666F7270;
          v18 = 0x796361766972;
          goto LABEL_61;
        case 18:
          v10 = 0x800000024FA41BD0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 19:
          v10 = 0x800000024FA41BF0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 20:
          v17 = 0x796C746E65636572;
          v18 = 0x646579616C50;
LABEL_61:
          v10 = v18 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v17)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 21:
          v10 = 0x800000024FA41C10;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 22:
          v10 = 0xEF61746164617465;
          if (v8 != 0x4D707041656D6167)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 23:
          v14 = 0x7262694C656D6167;
          v15 = 7959137;
LABEL_82:
          v10 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v8 != v14)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 24:
          v10 = 0x800000024FA41C50;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 25:
          v10 = 0x800000024FA41C70;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 26:
          v16 = 0x7463697274736572;
LABEL_91:
          v19 = 1936617321;
LABEL_92:
          v10 = v19 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v16)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 27:
          v10 = 0x800000024FA41C90;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        case 28:
          v10 = 0xE700000000000000;
          v11 = 0x6C616974696E69;
          goto LABEL_85;
        default:
LABEL_85:
          if (v8 != v11)
          {
            goto LABEL_87;
          }

LABEL_86:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_87:
          v20 = sub_24F92CE08();

          if (v20)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_24E772154(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_24F92B0D8();
      v8 = v7;
      if (v6 == sub_24F92B0D8() && v8 == v9)
      {
        break;
      }

      v11 = sub_24F92CE08();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24E772258(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24E7722C8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v20 = ~v3;
    v21 = a1;
    while (1)
    {
      v5 = *(*(v22 + 48) + v4);
      v6 = 0xD000000000000013;
      v7 = v5 == 2 ? 0x686374615777656ELL : 0xD000000000000013;
      v8 = v5 == 2 ? 0xEF676E6972696150 : 0x800000024FA42E60;
      v9 = *(*(v22 + 48) + v4) ? 0xD000000000000010 : 0x7070416F5477656ELL;
      v10 = *(*(v22 + 48) + v4) ? 0x800000024FA42E30 : 0xED000065726F7453;
      v11 = *(*(v22 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v22 + 48) + v4) <= 1u ? v10 : v8;
      if (v21 == 2)
      {
        v6 = 0x686374615777656ELL;
        v13 = 0xEF676E6972696150;
      }

      else
      {
        v13 = 0x800000024FA42E60;
      }

      v14 = v21 ? 0xD000000000000010 : 0x7070416F5477656ELL;
      v15 = v21 ? 0x800000024FA42E30 : 0xED000065726F7453;
      v16 = v21 <= 1 ? v14 : v6;
      v17 = v21 <= 1 ? v15 : v13;
      if (v11 == v16 && v12 == v17)
      {
        break;
      }

      v18 = sub_24F92CE08();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v20;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24E772498(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24E772508(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = -1 << *(v5 + 32);
  result = a5 & ~v7;
  if ((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v9 = ~v7;
    do
    {
      v10 = *(v5 + 48) + 32 * result;
      if (*(v10 + 8))
      {
        if ((a2 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if ((a2 & 1) != 0 || *v10 != *&a1)
      {
        goto LABEL_4;
      }

      if (*(v10 + 24))
      {
        if (a4)
        {
          return result;
        }
      }

      else if ((a4 & 1) == 0 && *(v10 + 16) == *&a3)
      {
        return result;
      }

LABEL_4:
      result = (result + 1) & v9;
    }

    while (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_24E7725B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E772624(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21BCB8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E772884(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t UserContentRestrictionProvider.init(restrictions:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for Restrictions();
  a2[3] = result;
  a2[4] = &protocol witness table for Restrictions;
  *a2 = a1;
  return result;
}

uint64_t UserContentRestrictionProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 6645601;
  *(inited + 40) = 0xE300000000000000;
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 8))(v4, v5);
  *(inited + 48) = sub_24F92CD88();
  *(inited + 56) = v6;
  v7 = sub_24E6086DC(inited);
  swift_setDeallocating();
  sub_24E772B08(inited + 32);
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
  v9[0] = v7;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_24F929A28();
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_24E772A90(uint64_t a1)
{
  UserContentRestrictionProvider.addExpensiveMetricsFields(into:using:)(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_24E772B08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GSKShelf.Orientation.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD50);
      inited = swift_initStackObject();
      *(inited + 32) = 0x6C61636974726576;
      v19 = inited + 32;
      *(inited + 16) = xmmword_24F93DE60;
      v20 = MEMORY[0x277D84F98];
      *(inited + 40) = 0xE800000000000000;
      *(inited + 48) = v20;
      v8 = sub_24E60B478(inited);
      swift_setDeallocating();
      sub_24E601704(v19, &qword_27F21BD58);
      v14 = &qword_27F21BD60;
      v15 = &unk_24F9537F0;
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD60);
      v16 = &qword_27F21BD68;
      v17 = sub_24E776F6C;
      goto LABEL_7;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD10);
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_24F93DE60;
    *(v4 + 32) = 0xD000000000000011;
    *(v4 + 40) = 0x800000024FA469D0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD18);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_24F93DE60;
    *(v5 + 32) = 0x4372655073776F72;
    v6 = v5 + 32;
    *(v5 + 40) = 0xED00006E6D756C6FLL;
    *(v5 + 48) = v3;
    v7 = sub_24E60B368(v5);
    swift_setDeallocating();
    sub_24E601704(v6, &qword_27F21BD20);
    *(v4 + 48) = v7;
    v8 = sub_24E60B464(v4);
    swift_setDeallocating();
    v9 = v4 + 32;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD10);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_24F93DE60;
    *(v10 + 32) = 0x746E6F7A69726F68;
    *(v10 + 40) = 0xEA00000000006C61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD18);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_24F93DE60;
    *(v11 + 32) = 0x4372655073776F72;
    v12 = v11 + 32;
    *(v11 + 40) = 0xED00006E6D756C6FLL;
    *(v11 + 48) = v3;
    v13 = sub_24E60B368(v11);
    swift_setDeallocating();
    sub_24E601704(v12, &qword_27F21BD20);
    *(v10 + 48) = v13;
    v8 = sub_24E60B464(v10);
    swift_setDeallocating();
    v9 = v10 + 32;
  }

  sub_24E601704(v9, &qword_27F21BD28);
  v14 = &qword_27F21BD30;
  v15 = &unk_24F9537D0;
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD30);
  v16 = &qword_27F21BD38;
  v17 = sub_24E776EC0;
LABEL_7:
  result = sub_24E776EF0(v16, v14, v15, v17);
  a1[4] = result;
  *a1 = v8;
  return result;
}

BOOL static GSKShelf.Orientation.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return *a1 == v2;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

    return *a1 == v2;
  }

  return v3 == 2 && v2 == 0;
}

uint64_t sub_24E772F38()
{
  v1 = 0x6C61636974726576;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E6F7A69726F68;
  }
}

uint64_t sub_24E772F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E778B68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E772FC4(uint64_t a1)
{
  v2 = sub_24E776FE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E773000(uint64_t a1)
{
  v2 = sub_24E776FE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E773064(uint64_t a1)
{
  v2 = sub_24E7770E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7730A0(uint64_t a1)
{
  v2 = sub_24E7770E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E7730DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4372655073776F72 && a2 == 0xED00006E6D756C6FLL)
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

uint64_t sub_24E77316C(uint64_t a1)
{
  v2 = sub_24E77703C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7731A8(uint64_t a1)
{
  v2 = sub_24E77703C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E7731E4(uint64_t a1)
{
  v2 = sub_24E777090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E773220(uint64_t a1)
{
  v2 = sub_24E777090();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GSKShelf.Orientation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD78);
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v25 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD80);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v22 = &v20 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD88);
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD90);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  v28 = *v2;
  v15 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E776FE8();
  sub_24F92D128();
  if (!v15)
  {
    v29 = 0;
    sub_24E7770E4();
    sub_24F92CC98();
    sub_24F92CD38();
    (*(v21 + 8))(v10, v8);
    return (*(v12 + 8))(v14, v11);
  }

  if (v15 == 1)
  {
    v31 = 2;
    sub_24E77703C();
    v16 = v25;
    sub_24F92CC98();
    v17 = v27;
    sub_24F92CD38();
    (*(v26 + 8))(v16, v17);
    return (*(v12 + 8))(v14, v11);
  }

  v30 = 1;
  sub_24E777090();
  v19 = v22;
  sub_24F92CC98();
  (*(v23 + 8))(v19, v24);
  return (*(v12 + 8))(v14, v11);
}

uint64_t GSKShelf.Orientation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BDB8);
  v42 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v43 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BDC0);
  v5 = *(v4 - 8);
  v40 = v4;
  v41 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BDC8);
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BDD0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24E776FE8();
  v16 = v45;
  sub_24F92D108();
  if (!v16)
  {
    v37 = 0;
    v45 = v12;
    v17 = v43;
    v18 = v44;
    v19 = sub_24F92CC78();
    v20 = (2 * *(v19 + 16)) | 1;
    v47 = v19;
    v48 = v19 + 32;
    v49 = 0;
    v50 = v20;
    v21 = sub_24E643434();
    if (v21 != 3 && v49 == v50 >> 1)
    {
      if (v21)
      {
        if (v21 == 1)
        {
          v51 = 1;
          sub_24E777090();
          v22 = v14;
          v23 = v37;
          sub_24F92CBA8();
          if (!v23)
          {
            (*(v41 + 8))(v7, v40);
            (*(v45 + 8))(v14, v11);
            swift_unknownObjectRelease();
            v24 = 0;
            v25 = 2;
LABEL_18:
            *v18 = v24;
            *(v18 + 8) = v25;
            return __swift_destroy_boxed_opaque_existential_1(v46);
          }

          goto LABEL_9;
        }

        v51 = 2;
        sub_24E77703C();
        v31 = v14;
        v33 = v37;
        sub_24F92CBA8();
        if (!v33)
        {
          v34 = v38;
          v35 = sub_24F92CC58();
          v36 = v45;
          v24 = v35;
          (*(v42 + 8))(v17, v34);
          (*(v36 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v25 = 1;
          goto LABEL_18;
        }
      }

      else
      {
        v51 = 0;
        sub_24E7770E4();
        v30 = v10;
        v31 = v14;
        v32 = v37;
        sub_24F92CBA8();
        if (!v32)
        {
          v24 = sub_24F92CC58();
          (*(v39 + 8))(v30, v8);
          (*(v45 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v25 = 0;
          goto LABEL_18;
        }
      }

      (*(v45 + 8))(v31, v11);
      goto LABEL_10;
    }

    v26 = sub_24F92C918();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v28 = &type metadata for GSKShelf.Orientation;
    v22 = v14;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
    swift_willThrow();
LABEL_9:
    (*(v45 + 8))(v22, v11);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_24E773C8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 == v3;
  }

  v6 = v5;
  v8 = v4 == 1 && v2 == v3;
  v10 = v4 == 2 && v3 == 0;
  if (*(a1 + 8) != 1)
  {
    v8 = v10;
  }

  if (*(a1 + 8))
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

BOOL static GSKShelf.ResolvedOrientation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_24E773D24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

GameStoreKit::GSKShelf::Visibility_optional __swiftcall GSKShelf.Visibility.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t GSKShelf.Visibility.rawValue.getter()
{
  v1 = 0x6E6564646968;
  v2 = 0x6E776F6873;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_24E773E28()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E773EE4()
{
  sub_24F92B218();
}

uint64_t sub_24E773F8C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24E774050(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x6E6564646968;
  v4 = 0xE500000000000000;
  v5 = 0x6E776F6873;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000024FA43CF0;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x800000024FA43CD0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_24E774178()
{
  v1 = *v0;
  v2 = 0xD000000000000013;
  if (v1 != 1)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_24E7741D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E778C90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E7741FC(uint64_t a1)
{
  v2 = sub_24E777138();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E774238(uint64_t a1)
{
  v2 = sub_24E777138();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E774274()
{
  v1 = 0x7464695764697267;
  if (*v0 != 1)
  {
    v1 = 0x6769654864697267;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6461654868746977;
  }
}

uint64_t sub_24E7742D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E778DB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E774300(uint64_t a1)
{
  v2 = sub_24E77718C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E77433C(uint64_t a1)
{
  v2 = sub_24E77718C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E774378(uint64_t a1)
{
  v2 = sub_24E777234();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7743B4(uint64_t a1)
{
  v2 = sub_24E777234();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E77440C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6461654868746977 && a2 == 0xEA00000000007265)
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

uint64_t sub_24E77449C(uint64_t a1)
{
  v2 = sub_24E7771E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7744D8(uint64_t a1)
{
  v2 = sub_24E7771E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GSKShelf.DisplayStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BDD8);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BDE0);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BDE8);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BDF0);
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v15 = *v1;
  v14 = v1[1];
  v24[1] = v1[2];
  v24[2] = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E777138();
  sub_24F92D128();
  if (!(v15 >> 62))
  {
    v35 = 1;
    sub_24E7771E0();
    v17 = v32;
    sub_24F92CC98();
    v18 = v27;
    sub_24F92CD18();
    v20 = *(v26 + 8);
    v21 = v7;
    goto LABEL_7;
  }

  if (v15 >> 62 == 1)
  {
    v39 = 2;
    sub_24E77718C();
    v16 = v28;
    v17 = v32;
    sub_24F92CC98();
    v38 = 0;
    v18 = v30;
    v19 = v33;
    sub_24F92CD18();
    if (v19)
    {
      (*(v29 + 8))(v16, v18);
      return (*(v31 + 8))(v13, v17);
    }

    v37 = 1;
    sub_24F92CD38();
    v36 = 2;
    sub_24F92CD38();
    v20 = *(v29 + 8);
    v21 = v16;
LABEL_7:
    v20(v21, v18);
    return (*(v31 + 8))(v13, v17);
  }

  v34 = 0;
  sub_24E777234();
  v23 = v32;
  sub_24F92CC98();
  (*(v25 + 8))(v10, v8);
  return (*(v31 + 8))(v13, v23);
}

uint64_t GSKShelf.DisplayStyle.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v50 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BE18);
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v49 = &v43 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BE20);
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v5 = &v43 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BE28);
  v48 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BE30);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - v11;
  v13 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24E777138();
  v14 = v51;
  sub_24F92D108();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v15 = v6;
  v43 = 0;
  v17 = v48;
  v16 = v49;
  v51 = v10;
  v18 = v50;
  v19 = sub_24F92CC78();
  v20 = (2 * *(v19 + 16)) | 1;
  v53 = v19;
  v54 = v19 + 32;
  v55 = 0;
  v56 = v20;
  v21 = sub_24E643434();
  if (v21 == 3 || v55 != v56 >> 1)
  {
    v25 = sub_24F92C918();
    swift_allocError();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v27 = &type metadata for GSKShelf.DisplayStyle;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
    swift_willThrow();
    goto LABEL_9;
  }

  if (!v21)
  {
    v57 = 0;
    sub_24E777234();
    v29 = v43;
    sub_24F92CBA8();
    v30 = v29;
    if (!v29)
    {
      v43 = 0;
      (*(v17 + 8))(v8, v15);
      (*(v51 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v31 = 0;
      v32 = 0x8000000000000000;
      goto LABEL_16;
    }

LABEL_9:
    (*(v51 + 8))(v12, v9);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  if (v21 == 1)
  {
    v57 = 1;
    sub_24E7771E0();
    v22 = v5;
    v23 = v43;
    sub_24F92CBA8();
    v24 = v51;
    if (v23)
    {
      goto LABEL_9;
    }

    v37 = v44;
    v38 = sub_24F92CC38();
    v39 = v22;
    v40 = v38;
    v30 = 0;
    (*(v46 + 8))(v39, v37);
    (*(v24 + 8))(v12, v9);
    swift_unknownObjectRelease();
    v43 = 0;
    v31 = 0;
    v32 = v40 & 1;
  }

  else
  {
    v57 = 2;
    sub_24E77718C();
    v33 = v16;
    v34 = v43;
    sub_24F92CBA8();
    v35 = v51;
    if (v34)
    {
      goto LABEL_9;
    }

    v57 = 0;
    v36 = v45;
    v41 = sub_24F92CC38();
    v57 = 1;
    v48 = sub_24F92CC58();
    v57 = 2;
    v42 = sub_24F92CC58();
    v43 = 0;
    v30 = v42;
    (*(v47 + 8))(v33, v36);
    (*(v35 + 8))(v12, v9);
    swift_unknownObjectRelease();
    v32 = v41 & 1 | 0x4000000000000000;
    v31 = v48;
  }

LABEL_16:
  *v18 = v32;
  v18[1] = v31;
  v18[2] = v30;
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t GSKShelf.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92AA48();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GSKShelf.id.setter(uint64_t a1)
{
  v3 = sub_24F92AA48();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t GSKShelf.presentation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GSKShelf() + 24);

  return sub_24E7772D4(a1, v3);
}

uint64_t GSKShelf.orientation.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for GSKShelf();
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t GSKShelf.orientation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for GSKShelf();
  v5 = v1 + *(result + 28);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t GSKShelf.visibility.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GSKShelf();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t GSKShelf.visibility.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for GSKShelf();
  *(v1 + *(result + 32)) = v2;
  return result;
}

__n128 GSKShelf.displayStyle.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GSKShelf() + 36));
  v4 = v3[1].n128_u64[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  return result;
}

__n128 GSKShelf.displayStyle.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for GSKShelf() + 36));
  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t GSKShelf.margins.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GSKShelf();
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t GSKShelf.margins.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for GSKShelf();
  *(v1 + *(result + 40)) = v2;
  return result;
}

__n128 GSKShelf.gridDesign.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GSKShelf() + 44));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t GSKShelf.gridDesign.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = type metadata accessor for GSKShelf();
  v6 = v1 + *(result + 44);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

uint64_t GSKShelf.showItemsAsPlaceholders.setter(char a1)
{
  result = type metadata accessor for GSKShelf();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t GSKShelf.items.getter()
{
  type metadata accessor for GSKShelf();
}

uint64_t sub_24E7757CC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for GSKShelf() + 60);

  *(a2 + v4) = v3;
  return result;
}

uint64_t GSKShelf.items.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GSKShelf() + 60);

  *(v1 + v3) = a1;
  return result;
}

double GSKShelf.footerItem.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GSKShelf();
  sub_24E60169C(v1 + *(v3 + 64), v6, &qword_27F21BE38);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

unint64_t sub_24E775998(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x61746E6573657270;
      break;
    case 3:
      result = 0x7461746E6569726FLL;
      break;
    case 4:
      result = 0x696C696269736976;
      break;
    case 5:
      result = 0x5379616C70736964;
      break;
    case 6:
      result = 0x736E696772616DLL;
      break;
    case 7:
      result = 0x6973654464697267;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0x676553656C746974;
      break;
    case 10:
      result = 0x656C746974627573;
      break;
    case 11:
      result = 0x736D657469;
      break;
    case 12:
      result = 0x74497265746F6F66;
      break;
    case 13:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E775B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E778EE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E775BB4(uint64_t a1)
{
  v2 = sub_24E777338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E775BF0(uint64_t a1)
{
  v2 = sub_24E777338();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GSKShelf.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BE40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E777338();
  sub_24F92D128();
  LOBYTE(v19) = 0;
  sub_24F92AA48();
  sub_24E777930(&qword_27F21BE50, MEMORY[0x277D224C0]);
  sub_24F92CD48();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = type metadata accessor for GSKShelf();
  LOBYTE(v19) = 1;
  sub_24F929608();
  sub_24E777930(&qword_27F214058, MEMORY[0x277D21F70]);
  sub_24F92CCF8();
  LOBYTE(v19) = 2;
  type metadata accessor for HeaderPresentation(0);
  sub_24E777930(&qword_27F21BE58, type metadata accessor for HeaderPresentation);
  sub_24F92CD48();
  v10 = (v3 + v9[7]);
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  *&v19 = v11;
  BYTE8(v19) = v10;
  v21 = 3;
  sub_24E77738C();
  sub_24F92CD48();
  LOBYTE(v19) = *(v3 + v9[8]);
  v21 = 4;
  sub_24E7773E0();
  sub_24F92CD48();
  v12 = (v3 + v9[9]);
  v13 = *(v12 + 2);
  v19 = *v12;
  v20 = v13;
  v21 = 5;
  sub_24E777434();
  sub_24F92CD48();
  LOBYTE(v19) = *(v3 + v9[10]);
  v21 = 6;
  sub_24E777488();
  sub_24F92CD48();
  v14 = (v3 + v9[11]);
  v15 = *(v14 + 16);
  v19 = *v14;
  LOBYTE(v20) = v15;
  v21 = 7;
  sub_24E7774DC();
  sub_24F92CCF8();
  LOBYTE(v19) = 8;
  sub_24F92CD18();
  v18 = v6;
  LOBYTE(v19) = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
  sub_24E602068(&qword_27F21BE88, &qword_27F213EA8);
  sub_24F92CD48();
  LOBYTE(v19) = 10;
  sub_24F92CD48();
  *&v19 = *(v3 + v9[15]);
  v21 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BE90);
  sub_24E602068(&qword_27F21BE98, &qword_27F21BE90);
  sub_24F92CD48();
  LOBYTE(v19) = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BE38);
  sub_24E602068(&qword_27F21BEA0, &qword_27F21BE38);
  sub_24F92CD48();
  LOBYTE(v19) = 13;
  sub_24F92CCB8();
  return (*(v18 + 8))(v8, v5);
}

uint64_t GSKShelf.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v60 = type metadata accessor for HeaderPresentation(0);
  MEMORY[0x28223BE20](v60);
  v58 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = &v54 - v5;
  v6 = sub_24F92AA48();
  v56 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v59 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BEA8);
  v61 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v9 = &v54 - v8;
  v10 = type metadata accessor for GSKShelf();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 20);
  v15 = sub_24F929608();
  v16 = *(*(v15 - 8) + 56);
  v70 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = &v13[v10[11]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = -4;
  v18 = &v13[v10[13]];
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v69 = v18;
  sub_24E61DA68(&v72, v18, qword_27F21B590);
  v19 = &v13[v10[14]];
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v68 = v19;
  sub_24E61DA68(&v72, v19, qword_27F21B590);
  v62 = v10;
  v20 = v10[16];
  v71 = v13;
  v21 = &v13[v20];
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  v67 = &v13[v20];
  sub_24E61DA68(&v72, &v13[v20], &qword_27F2171D0);
  v22 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24E777338();
  v63 = v9;
  v23 = v65;
  sub_24F92D108();
  if (v23)
  {
    v27 = v71;
    __swift_destroy_boxed_opaque_existential_1(v66);
    sub_24E601704(&v27[v70], &qword_27F213E68);
    v28 = 0;
  }

  else
  {
    v24 = v57;
    v25 = v58;
    v65 = v17;
    LOBYTE(v72) = 0;
    sub_24E777930(&qword_27F21BEB0, MEMORY[0x277D224C0]);
    v26 = v59;
    sub_24F92CC68();
    v30 = v56;
    v31 = *(v56 + 32);
    v32 = v71;
    v59 = v6;
    v31(v71, v26);
    LOBYTE(v72) = 1;
    sub_24E777930(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    v33 = v70;
    sub_24E61DA68(v24, &v32[v70], &qword_27F213E68);
    LOBYTE(v72) = 2;
    sub_24E777930(&qword_27F21BEB8, type metadata accessor for HeaderPresentation);
    sub_24F92CC68();
    v34 = v62;
    sub_24E777530(v25, &v32[v62[6]]);
    v75 = 3;
    sub_24E777594();
    sub_24F92CC68();
    v35 = BYTE8(v72);
    v36 = &v32[v34[7]];
    *v36 = v72;
    v36[8] = v35;
    v75 = 4;
    sub_24E7775E8();
    sub_24F92CC68();
    v32[v34[8]] = v72;
    v75 = 5;
    sub_24E77763C();
    sub_24F92CC68();
    v37 = v73;
    v38 = &v32[v34[9]];
    *v38 = v72;
    *(v38 + 2) = v37;
    v75 = 6;
    sub_24E777690();
    sub_24F92CC68();
    v32[v34[10]] = v72;
    v75 = 7;
    sub_24E7776E4();
    sub_24F92CC18();
    v60 = 0;
    v40 = v61;
    v41 = v73;
    v42 = v65;
    *v65 = v72;
    v42[16] = v41;
    LOBYTE(v72) = 8;
    v43 = v60;
    v44 = sub_24F92CC38();
    v60 = v43;
    if (v43)
    {
      (*(v40 + 8))(v63, v64);
      v28 = 0;
      v39 = v59;
    }

    else
    {
      v39 = v59;
      v32[v62[12]] = v44 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
      v75 = 9;
      sub_24E602068(&qword_27F21BEE8, &qword_27F213EA8);
      v45 = v60;
      sub_24F92CC68();
      v60 = v45;
      if (v45 || (sub_24E61DA68(&v72, v69, &qword_27F213EA8), v75 = 10, v46 = v60, sub_24F92CC68(), (v60 = v46) != 0) || (sub_24E61DA68(&v72, v68, &qword_27F213EA8), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BE90), v75 = 11, sub_24E602068(&qword_27F21BEF0, &qword_27F21BE90), v47 = v60, sub_24F92CC68(), (v60 = v47) != 0))
      {
        (*(v61 + 8))(v63, v64);
        v28 = 0;
      }

      else
      {
        *&v71[v62[15]] = v72;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BE38);
        v75 = 12;
        sub_24E602068(&qword_27F21BEF8, &qword_27F21BE38);
        v48 = v60;
        sub_24F92CC68();
        v60 = v48;
        if (!v48)
        {
          sub_24E61DA68(&v72, v67, &qword_27F21BE38);
          LOBYTE(v72) = 13;
          v49 = v60;
          v50 = sub_24F92CBD8();
          v60 = v49;
          if (!v49)
          {
            v51 = v50;
            v52 = v62[17];
            (*(v61 + 8))(v63, v64);
            v53 = v71;
            v71[v52] = v51;
            sub_24E777738(v53, v55, type metadata accessor for GSKShelf);
            __swift_destroy_boxed_opaque_existential_1(v66);
            return sub_24E7777A0(v53, type metadata accessor for GSKShelf);
          }
        }

        (*(v61 + 8))(v63, v64);
        v28 = 1;
      }

      v30 = v56;
      v33 = v70;
      v32 = v71;
    }

    __swift_destroy_boxed_opaque_existential_1(v66);
    (*(v30 + 8))(v32, v39);
    sub_24E601704(&v32[v33], &qword_27F213E68);
    sub_24E7777A0(&v32[v62[6]], type metadata accessor for HeaderPresentation);
  }

  sub_24E601704(v69, &qword_27F213EA8);
  sub_24E601704(v68, &qword_27F213EA8);
  if (v28)
  {
  }

  return sub_24E601704(v67, &qword_27F21BE38);
}

uint64_t sub_24E776E58@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92AA48();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24E776EF0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24E776F6C()
{
  result = qword_27F21BD70;
  if (!qword_27F21BD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BD70);
  }

  return result;
}

unint64_t sub_24E776FE8()
{
  result = qword_27F21BD98;
  if (!qword_27F21BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BD98);
  }

  return result;
}

unint64_t sub_24E77703C()
{
  result = qword_27F21BDA0;
  if (!qword_27F21BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BDA0);
  }

  return result;
}

unint64_t sub_24E777090()
{
  result = qword_27F21BDA8;
  if (!qword_27F21BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BDA8);
  }

  return result;
}

unint64_t sub_24E7770E4()
{
  result = qword_27F21BDB0;
  if (!qword_27F21BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BDB0);
  }

  return result;
}

unint64_t sub_24E777138()
{
  result = qword_27F21BDF8;
  if (!qword_27F21BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BDF8);
  }

  return result;
}

unint64_t sub_24E77718C()
{
  result = qword_27F21BE00;
  if (!qword_27F21BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BE00);
  }

  return result;
}

unint64_t sub_24E7771E0()
{
  result = qword_27F21BE08;
  if (!qword_27F21BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BE08);
  }

  return result;
}

unint64_t sub_24E777234()
{
  result = qword_27F21BE10;
  if (!qword_27F21BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BE10);
  }

  return result;
}

uint64_t type metadata accessor for GSKShelf()
{
  result = qword_27F21BF18;
  if (!qword_27F21BF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E7772D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeaderPresentation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E777338()
{
  result = qword_27F21BE48;
  if (!qword_27F21BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BE48);
  }

  return result;
}

unint64_t sub_24E77738C()
{
  result = qword_27F21BE60;
  if (!qword_27F21BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BE60);
  }

  return result;
}

unint64_t sub_24E7773E0()
{
  result = qword_27F21BE68;
  if (!qword_27F21BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BE68);
  }

  return result;
}

unint64_t sub_24E777434()
{
  result = qword_27F21BE70;
  if (!qword_27F21BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BE70);
  }

  return result;
}

unint64_t sub_24E777488()
{
  result = qword_27F21BE78;
  if (!qword_27F21BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BE78);
  }

  return result;
}

unint64_t sub_24E7774DC()
{
  result = qword_27F21BE80;
  if (!qword_27F21BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BE80);
  }

  return result;
}

uint64_t sub_24E777530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeaderPresentation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E777594()
{
  result = qword_27F21BEC0;
  if (!qword_27F21BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BEC0);
  }

  return result;
}

unint64_t sub_24E7775E8()
{
  result = qword_27F21BEC8;
  if (!qword_27F21BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BEC8);
  }

  return result;
}

unint64_t sub_24E77763C()
{
  result = qword_27F21BED0;
  if (!qword_27F21BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BED0);
  }

  return result;
}

unint64_t sub_24E777690()
{
  result = qword_27F21BED8;
  if (!qword_27F21BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BED8);
  }

  return result;
}

unint64_t sub_24E7776E4()
{
  result = qword_27F21BEE0;
  if (!qword_27F21BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BEE0);
  }

  return result;
}

uint64_t sub_24E777738(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7777A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E777804()
{
  result = qword_27F21BF00;
  if (!qword_27F21BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BF00);
  }

  return result;
}

uint64_t sub_24E777930(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E777978@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for GSKShelf() + 60));
}

double sub_24E7779C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GSKShelf();
  sub_24E60169C(a1 + *(v4 + 64), v7, &qword_27F21BE38);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_24E777A2C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for GSKShelf() + 64);

  return sub_24E779354(a1, v3);
}

uint64_t sub_24E777A88(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24F92AA48();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = type metadata accessor for HeaderPresentation(0);
      if (*(*(v14 - 8) + 84) != a2)
      {
        if ((*(a1 + a3[9]) >> 1) > 0x80000000)
        {
          return -(*(a1 + a3[9]) >> 1);
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[6];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_24E777BFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24F92AA48();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for HeaderPresentation(0);
      if (*(*(result - 8) + 84) != a3)
      {
        v17 = (a1 + a4[9]);
        v17[1] = 0;
        v17[2] = 0;
        *v17 = 2 * -a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_24E777D64()
{
  sub_24F92AA48();
  if (v0 <= 0x3F)
  {
    sub_24E61C938();
    if (v1 <= 0x3F)
    {
      type metadata accessor for HeaderPresentation(319);
      if (v2 <= 0x3F)
      {
        sub_24E66ECF0(319, &qword_27F21BF28);
        if (v3 <= 0x3F)
        {
          sub_24E777F74(319, &qword_27F21BF30, sub_24E678D94, &type metadata for ActionKinds, MEMORY[0x277D21FC8]);
          if (v4 <= 0x3F)
          {
            sub_24E777F74(319, &qword_27F21BF38, sub_24E735CA0, &type metadata for ComponentKinds, MEMORY[0x277D21F10]);
            if (v5 <= 0x3F)
            {
              sub_24E777F74(319, &qword_27F21BF40, sub_24E735CA0, &type metadata for ComponentKinds, MEMORY[0x277D21FC8]);
              if (v6 <= 0x3F)
              {
                sub_24E66ECF0(319, &qword_27F2169A0);
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

void sub_24E777F74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for GSKShelf.Orientation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for GSKShelf.Orientation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_24E778068(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_24E778080(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t storeEnumTagSinglePayload for HeaderPresentation.HeaderLabel.TextStyle(uint64_t result, int a2, int a3)
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_24E7780D8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E7780F4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GSKShelf.DisplayStyle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for GSKShelf.DisplayStyle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 2 * -a2;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E7781CC(uint64_t a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 & 1 | (2 * *(a1 + 8))) + 2;
  }
}

void *sub_24E7781FC(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 62);
  }

  else
  {
    result[1] = (a2 - 2) >> 1;
    result[2] = 0;
    *result = (a2 - 2) & 1 | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_24E7782D4()
{
  result = qword_27F21BF48;
  if (!qword_27F21BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BF48);
  }

  return result;
}

unint64_t sub_24E77832C()
{
  result = qword_27F21BF50;
  if (!qword_27F21BF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BF50);
  }

  return result;
}

unint64_t sub_24E778384()
{
  result = qword_27F21BF58;
  if (!qword_27F21BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BF58);
  }

  return result;
}

unint64_t sub_24E7783DC()
{
  result = qword_27F21BF60;
  if (!qword_27F21BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BF60);
  }

  return result;
}

unint64_t sub_24E778434()
{
  result = qword_27F21BF68;
  if (!qword_27F21BF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BF68);
  }

  return result;
}

unint64_t sub_24E77848C()
{
  result = qword_27F21BF70;
  if (!qword_27F21BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BF70);
  }

  return result;
}

unint64_t sub_24E7784E4()
{
  result = qword_27F21BF78;
  if (!qword_27F21BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BF78);
  }

  return result;
}

unint64_t sub_24E77853C()
{
  result = qword_27F21BF80;
  if (!qword_27F21BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BF80);
  }

  return result;
}

unint64_t sub_24E778594()
{
  result = qword_27F21BF88;
  if (!qword_27F21BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BF88);
  }

  return result;
}

unint64_t sub_24E7785EC()
{
  result = qword_27F21BF90;
  if (!qword_27F21BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BF90);
  }

  return result;
}

unint64_t sub_24E778644()
{
  result = qword_27F21BF98;
  if (!qword_27F21BF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BF98);
  }

  return result;
}

unint64_t sub_24E77869C()
{
  result = qword_27F21BFA0;
  if (!qword_27F21BFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BFA0);
  }

  return result;
}

unint64_t sub_24E7786F4()
{
  result = qword_27F21BFA8;
  if (!qword_27F21BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BFA8);
  }

  return result;
}

unint64_t sub_24E77874C()
{
  result = qword_27F21BFB0;
  if (!qword_27F21BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BFB0);
  }

  return result;
}

unint64_t sub_24E7787A4()
{
  result = qword_27F21BFB8;
  if (!qword_27F21BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BFB8);
  }

  return result;
}

unint64_t sub_24E7787FC()
{
  result = qword_27F21BFC0;
  if (!qword_27F21BFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BFC0);
  }

  return result;
}

unint64_t sub_24E778854()
{
  result = qword_27F21BFC8;
  if (!qword_27F21BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BFC8);
  }

  return result;
}

unint64_t sub_24E7788AC()
{
  result = qword_27F21BFD0;
  if (!qword_27F21BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BFD0);
  }

  return result;
}

unint64_t sub_24E778904()
{
  result = qword_27F21BFD8;
  if (!qword_27F21BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BFD8);
  }

  return result;
}

unint64_t sub_24E77895C()
{
  result = qword_27F21BFE0;
  if (!qword_27F21BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BFE0);
  }

  return result;
}

unint64_t sub_24E7789B4()
{
  result = qword_27F21BFE8;
  if (!qword_27F21BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BFE8);
  }

  return result;
}

unint64_t sub_24E778A0C()
{
  result = qword_27F21BFF0;
  if (!qword_27F21BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BFF0);
  }

  return result;
}

unint64_t sub_24E778A64()
{
  result = qword_27F21BFF8;
  if (!qword_27F21BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BFF8);
  }

  return result;
}

unint64_t sub_24E778ABC()
{
  result = qword_27F21C000;
  if (!qword_27F21C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C000);
  }

  return result;
}

unint64_t sub_24E778B14()
{
  result = qword_27F21C008;
  if (!qword_27F21C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C008);
  }

  return result;
}

uint64_t sub_24E778B68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6F7A69726F68 && a2 == 0xEA00000000006C61;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61636974726576 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA469D0 == a2)
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

uint64_t sub_24E778C90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA469F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46A10 == a2)
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

uint64_t sub_24E778DB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6461654868746977 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7464695764697267 && a2 == 0xE900000000000068 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6769654864697267 && a2 == 0xEA00000000007468)
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

uint64_t sub_24E778EE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736E696772616DLL && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6973654464697267 && a2 == 0xEA00000000006E67 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA46A30 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x676553656C746974 && a2 == 0xEA00000000006575 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xED00006575676553 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x74497265746F6F66 && a2 == 0xEA00000000006D65 || (sub_24F92CE08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA46A50 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_24E779354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2171D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E7793C4()
{
  result = qword_27F21C010;
  if (!qword_27F21C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C010);
  }

  return result;
}

uint64_t sub_24E779420()
{
  v140 = sub_24F926C08();
  v150 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v151 = &v137 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for ColorGroup();
  v2 = *(v1 - 1);
  v3 = MEMORY[0x28223BE20](v1);
  v139 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v149 = &v137 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v147 = &v137 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v146 = &v137 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v145 = &v137 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v138 = &v137 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v144 = &v137 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v137 = &v137 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v143 = &v137 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v152 = &v137 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v142 = &v137 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v141 = &v137 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v137 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v137 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v137 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v137 - v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C038);
  v38 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v153 = *(v2 + 72);
  v148 = swift_allocObject();
  *(v148 + 16) = xmmword_24F954600;
  sub_24F91F6A8();
  v39 = &v37[v1[5]];
  *v39 = 6579538;
  *(v39 + 1) = 0xE300000000000000;
  *&v37[v1[6]] = 9;
  sub_24E77ACC8();
  v40 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v154);
  if (v155)
  {
    v41 = sub_24F926BF8();
  }

  else
  {
    (*(v150 + 104))(v151, *MEMORY[0x277CE0EE8], v140);
    v41 = sub_24F926D48();
  }

  *&v37[v1[7]] = v41;
  sub_24F92C398();
  v42 = v148 + v38;
  *&v37[v1[8]] = sub_24F926BF8();
  sub_24E77D42C(v37, v42);
  sub_24F91F6A8();
  v43 = &v35[v1[5]];
  *v43 = 0x6C61726F43;
  *(v43 + 1) = 0xE500000000000000;
  *&v35[v1[6]] = 24;
  v44 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v154);
  v45 = v140;
  if (v155)
  {
    v46 = sub_24F926BF8();
  }

  else
  {
    (*(v150 + 104))(v151, *MEMORY[0x277CE0EE8], v140);
    v46 = sub_24F926D48();
  }

  *&v35[v1[7]] = v46;
  sub_24F92C398();
  *&v35[v1[8]] = sub_24F926BF8();
  sub_24E77D42C(v35, v42 + v153);
  sub_24F91F6A8();
  v47 = &v32[v1[5]];
  *v47 = 0x65676E61724FLL;
  *(v47 + 1) = 0xE600000000000000;
  *&v32[v1[6]] = 39;
  v48 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v154);
  if (v155)
  {
    v49 = sub_24F926BF8();
  }

  else
  {
    (*(v150 + 104))(v151, *MEMORY[0x277CE0EE8], v45);
    v49 = sub_24F926D48();
  }

  *&v32[v1[7]] = v49;
  sub_24F92C398();
  v50 = v42 + 2 * v153;
  *&v32[v1[8]] = sub_24F926BF8();
  sub_24E77D42C(v32, v50);
  sub_24F91F6A8();
  v51 = &v29[v1[5]];
  *v51 = 1684827975;
  *(v51 + 1) = 0xE400000000000000;
  *&v29[v1[6]] = 64;
  v52 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v154);
  v53 = v150;
  if (v155)
  {
    v54 = sub_24F926BF8();
  }

  else
  {
    (*(v150 + 104))(v151, *MEMORY[0x277CE0EE8], v45);
    v54 = sub_24F926D48();
  }

  *&v29[v1[7]] = v54;
  sub_24F92C398();
  v55 = 3 * v153;
  *&v29[v1[8]] = sub_24F926BF8();
  sub_24E77D42C(v29, v42 + v55);
  v56 = v141;
  sub_24F91F6A8();
  v57 = &v56[v1[5]];
  *v57 = 1701669196;
  *(v57 + 1) = 0xE400000000000000;
  *&v56[v1[6]] = 89;
  v58 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v154);
  v59 = v151;
  if (v155)
  {
    v60 = sub_24F926BF8();
  }

  else
  {
    (*(v53 + 104))(v151, *MEMORY[0x277CE0EE8], v45);
    v60 = sub_24F926D48();
  }

  v61 = v141;
  *&v141[v1[7]] = v60;
  v62 = v61;
  sub_24F92C398();
  v63 = v42 + 4 * v153;
  *(v62 + v1[8]) = sub_24F926BF8();
  sub_24E77D42C(v62, v63);
  v64 = v142;
  sub_24F91F6A8();
  v65 = &v64[v1[5]];
  *v65 = 0x724720796C6C654BLL;
  *(v65 + 1) = 0xEB000000006E6565;
  *&v64[v1[6]] = 129;
  v66 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v154);
  if (v155)
  {
    v67 = sub_24F926BF8();
  }

  else
  {
    (*(v53 + 104))(v59, *MEMORY[0x277CE0EE8], v45);
    v67 = sub_24F926D48();
  }

  v68 = v142;
  *&v142[v1[7]] = v67;
  v69 = v68;
  sub_24F92C398();
  v70 = 5 * v153;
  *(v69 + v1[8]) = sub_24F926BF8();
  sub_24E77D42C(v69, v42 + v70);
  v71 = v152;
  sub_24F91F6A8();
  v72 = &v71[v1[5]];
  strcpy(v72, "Forest Green");
  v72[13] = 0;
  *(v72 + 7) = -5120;
  *&v71[v1[6]] = 159;
  v73 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v154);
  if (v155)
  {
    v74 = sub_24F926BF8();
  }

  else
  {
    (*(v53 + 104))(v59, *MEMORY[0x277CE0EE8], v45);
    v74 = sub_24F926D48();
  }

  v75 = v152;
  *&v152[v1[7]] = v74;
  v76 = v75;
  sub_24F92C398();
  v77 = v42 + 6 * v153;
  *(v76 + v1[8]) = sub_24F926BF8();
  sub_24E77D42C(v76, v77);
  v78 = v143;
  sub_24F91F6A8();
  v79 = &v78[v1[5]];
  *v79 = 1818322260;
  *(v79 + 1) = 0xE400000000000000;
  *&v78[v1[6]] = 189;
  v80 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v154);
  if (v155)
  {
    v81 = sub_24F926BF8();
  }

  else
  {
    (*(v53 + 104))(v59, *MEMORY[0x277CE0EE8], v45);
    v81 = sub_24F926D48();
  }

  v82 = v143;
  *&v143[v1[7]] = v81;
  v83 = v82;
  sub_24F92C398();
  v152 = v42;
  v142 = (v42 - v153);
  v84 = v42 - v153 + 8 * v153;
  *(v83 + v1[8]) = sub_24F926BF8();
  sub_24E77D42C(v83, v84);
  v85 = v137;
  sub_24F91F6A8();
  v86 = (v85 + v1[5]);
  *v86 = 1851881795;
  v86[1] = 0xE400000000000000;
  *(v85 + v1[6]) = 209;
  v87 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v154);
  v88 = v138;
  if (v155)
  {
    v89 = sub_24F926BF8();
  }

  else
  {
    (*(v53 + 104))(v59, *MEMORY[0x277CE0EE8], v45);
    v89 = sub_24F926D48();
  }

  *(v85 + v1[7]) = v89;
  sub_24F92C398();
  v90 = &v152[8 * v153];
  *(v85 + v1[8]) = sub_24F926BF8();
  sub_24E77D42C(v85, v90);
  v91 = v144;
  sub_24F91F6A8();
  v92 = &v91[v1[5]];
  *v92 = 0x6C42206C61796F52;
  *(v92 + 1) = 0xEA00000000006575;
  *&v91[v1[6]] = 229;
  v93 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v154);
  v94 = v53;
  if (v155)
  {
    v95 = v45;
    v96 = sub_24F926BF8();
  }

  else
  {
    v97 = *(v53 + 104);
    v95 = v45;
    v97(v59, *MEMORY[0x277CE0EE8], v45);
    v96 = sub_24F926D48();
  }

  v98 = v144;
  *&v144[v1[7]] = v96;
  sub_24F92C398();
  v99 = 9 * v153;
  *(v98 + v1[8]) = sub_24F926BF8();
  sub_24E77D42C(v98, &v152[v99]);
  sub_24F91F6A8();
  v100 = (v88 + v1[5]);
  *v100 = 0x6F6769646E49;
  v100[1] = 0xE600000000000000;
  *(v88 + v1[6]) = 249;
  v101 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v154);
  if (v155)
  {
    v102 = sub_24F926BF8();
  }

  else
  {
    (*(v94 + 104))(v59, *MEMORY[0x277CE0EE8], v95);
    v102 = sub_24F926D48();
  }

  *(v88 + v1[7]) = v102;
  sub_24F92C398();
  v103 = &v152[10 * v153];
  *(v88 + v1[8]) = sub_24F926BF8();
  sub_24E77D42C(v88, v103);
  v104 = v145;
  sub_24F91F6A8();
  v105 = &v104[v1[5]];
  *v105 = 0x74656C6F6956;
  *(v105 + 1) = 0xE600000000000000;
  *&v104[v1[6]] = 269;
  v106 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v154);
  if (v155)
  {
    v107 = sub_24F926BF8();
  }

  else
  {
    (*(v94 + 104))(v59, *MEMORY[0x277CE0EE8], v95);
    v107 = sub_24F926D48();
  }

  v108 = v145;
  *&v145[v1[7]] = v107;
  sub_24F92C398();
  v109 = &v152[11 * v153];
  *(v108 + v1[8]) = sub_24F926BF8();
  sub_24E77D42C(v108, v109);
  v110 = v146;
  sub_24F91F6A8();
  v111 = &v110[v1[5]];
  *v111 = 0x656C70727550;
  *(v111 + 1) = 0xE600000000000000;
  *&v110[v1[6]] = 289;
  v112 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v154);
  if (v155)
  {
    v113 = sub_24F926BF8();
  }

  else
  {
    (*(v94 + 104))(v59, *MEMORY[0x277CE0EE8], v95);
    v113 = sub_24F926D48();
  }

  v114 = v146;
  *&v146[v1[7]] = v113;
  v115 = v114;
  sub_24F92C398();
  v116 = &v152[12 * v153];
  *(v115 + v1[8]) = sub_24F926BF8();
  sub_24E77D42C(v115, v116);
  v117 = v147;
  sub_24F91F6A8();
  v118 = &v117[v1[5]];
  *v118 = 1802398032;
  *(v118 + 1) = 0xE400000000000000;
  *&v117[v1[6]] = 330;
  v119 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v154);
  if (v155)
  {
    v120 = sub_24F926BF8();
  }

  else
  {
    (*(v94 + 104))(v59, *MEMORY[0x277CE0EE8], v95);
    v120 = sub_24F926D48();
  }

  v121 = v147;
  *&v147[v1[7]] = v120;
  v122 = v121;
  sub_24F92C398();
  v123 = &v152[13 * v153];
  *(v122 + v1[8]) = sub_24F926BF8();
  sub_24E77D42C(v122, v123);
  v124 = v149;
  sub_24F91F6A8();
  v125 = &v124[v1[5]];
  *v125 = 0x61746E6567614DLL;
  *(v125 + 1) = 0xE700000000000000;
  *&v124[v1[6]] = 352;
  v126 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v154);
  if (v155)
  {
    v127 = sub_24F926BF8();
  }

  else
  {
    (*(v94 + 104))(v59, *MEMORY[0x277CE0EE8], v95);
    v127 = sub_24F926D48();
  }

  v128 = v149;
  *&v149[v1[7]] = v127;
  v129 = v128;
  sub_24F92C398();
  v130 = &v152[14 * v153];
  *(v129 + v1[8]) = sub_24F926BF8();
  sub_24E77D42C(v129, v130);
  v131 = v139;
  sub_24F91F6A8();
  v132 = (v131 + v1[5]);
  *v132 = 6579538;
  v132[1] = 0xE300000000000000;
  *(v131 + v1[6]) = 360;
  v133 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v154);
  if (v155)
  {
    v134 = sub_24F926BF8();
  }

  else
  {
    (*(v94 + 104))(v59, *MEMORY[0x277CE0EE8], v95);
    v134 = sub_24F926D48();
  }

  *(v131 + v1[7]) = v134;
  sub_24F92C398();
  v135 = &v142[16 * v153];
  *(v131 + v1[8]) = sub_24F926BF8();
  result = sub_24E77D42C(v131, v135);
  qword_27F39ABE8 = v148;
  return result;
}

uint64_t ColorGroup.init(name:limit:lightColor:darkColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v19[0] = a4;
  v19[1] = a5;
  v10 = sub_24F926C08();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F6A8();
  v14 = type metadata accessor for ColorGroup();
  v15 = (a6 + v14[5]);
  *v15 = a1;
  v15[1] = a2;
  *(a6 + v14[6]) = a3;
  sub_24E77ACC8();

  v16 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v20);
  if (v21)
  {
    v17 = sub_24F926BF8();
  }

  else
  {
    (*(v11 + 104))(v13, *MEMORY[0x277CE0EE8], v10);
    v17 = sub_24F926D48();
  }

  *(a6 + v14[7]) = v17;

  sub_24F92C398();

  result = sub_24F926BF8();
  *(a6 + v14[8]) = result;
  return result;
}

uint64_t type metadata accessor for ColorGroup()
{
  result = qword_27F21C028;
  if (!qword_27F21C028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24E77ACC8()
{
  result = qword_27F2394A0;
  if (!qword_27F2394A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F2394A0);
  }

  return result;
}

uint64_t sub_24E77AD14()
{
  v0 = sub_24F926C08();
  v32 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v31 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ColorGroup();
  v3 = *(v2 - 1);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C038);
  v12 = *(v3 + 72);
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_24F9479A0;
  sub_24F91F6A8();
  v14 = &v11[v2[5]];
  *v14 = 0x6B63616C42;
  *(v14 + 1) = 0xE500000000000000;
  *&v11[v2[6]] = 25;
  sub_24E77ACC8();
  v15 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v33);
  v30 = v0;
  v28 = v12;
  if (v34)
  {
    v16 = sub_24F926BF8();
  }

  else
  {
    (*(v32 + 104))(v31, *MEMORY[0x277CE0EE8], v0);
    v16 = sub_24F926D48();
  }

  *&v11[v2[7]] = v16;
  sub_24F92C398();
  v17 = v29 + v13;
  v18 = v29;
  *&v11[v2[8]] = sub_24F926BF8();
  sub_24E77D42C(v11, v17);
  sub_24F91F6A8();
  v19 = &v9[v2[5]];
  *v19 = 2036691527;
  *(v19 + 1) = 0xE400000000000000;
  *&v9[v2[6]] = 34;
  v20 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v33);
  v21 = v28;
  if (v34)
  {
    v22 = sub_24F926BF8();
  }

  else
  {
    (*(v32 + 104))(v31, *MEMORY[0x277CE0EE8], v30);
    v22 = sub_24F926D48();
  }

  *&v9[v2[7]] = v22;
  sub_24F92C398();
  *&v9[v2[8]] = sub_24F926BF8();
  sub_24E77D42C(v9, v17 + v21);
  sub_24F91F6A8();
  v23 = &v6[v2[5]];
  *v23 = 0x6574696857;
  *(v23 + 1) = 0xE500000000000000;
  *&v6[v2[6]] = 100;
  v24 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v33);
  if (v34)
  {
    v25 = sub_24F926BF8();
  }

  else
  {
    (*(v32 + 104))(v31, *MEMORY[0x277CE0EE8], v30);
    v25 = sub_24F926D48();
  }

  *&v6[v2[7]] = v25;
  sub_24F92C398();
  *&v6[v2[8]] = sub_24F926BF8();
  result = sub_24E77D42C(v6, v17 + 2 * v21);
  qword_27F39ABF0 = v18;
  return result;
}

uint64_t sub_24E77B2C0()
{
  result = MEMORY[0x253048030](0x4024000000000000, 0, 0x4041800000000000, 0);
  qword_27F39ABF8 = result;
  byte_27F39AC00 = v1 & 1;
  qword_27F39AC08 = v2;
  byte_27F39AC10 = v3 & 1;
  return result;
}

uint64_t sub_24E77B30C()
{
  result = MEMORY[0x253048030](0x4014000000000000, 0, 0x404E000000000000, 0);
  qword_27F39AC18 = result;
  byte_27F39AC20 = v1 & 1;
  qword_27F39AC28 = v2;
  byte_27F39AC30 = v3 & 1;
  return result;
}

uint64_t sub_24E77B354()
{
  result = MEMORY[0x253048030](0, 0, 0x4048800000000000, 0);
  qword_27F39AC38 = result;
  byte_27F39AC40 = v1 & 1;
  qword_27F39AC48 = v2;
  byte_27F39AC50 = v3 & 1;
  return result;
}

uint64_t sub_24E77B3A0()
{
  v0 = sub_24F926C08();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ColorGroup();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v5, qword_27F39AC58);
  v8 = __swift_project_value_buffer(v4, qword_27F39AC58);
  sub_24F91F6A8();
  v9 = &v7[v4[5]];
  *v9 = 0x74616C6F636F6843;
  *(v9 + 1) = 0xE900000000000065;
  *&v7[v4[6]] = 0;
  sub_24E77ACC8();
  v10 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v13);
  if (v14)
  {
    v11 = sub_24F926BF8();
  }

  else
  {
    (*(v1 + 104))(v3, *MEMORY[0x277CE0EE8], v0);
    v11 = sub_24F926D48();
  }

  *&v7[v4[7]] = v11;
  sub_24F92C398();
  *&v7[v4[8]] = sub_24F926BF8();
  return sub_24E77D42C(v7, v8);
}

uint64_t sub_24E77B690()
{
  result = MEMORY[0x253048030](0x4024000000000000, 0, 0x4041800000000000, 0);
  qword_27F39AC70 = result;
  byte_27F39AC78 = v1 & 1;
  qword_27F39AC80 = v2;
  byte_27F39AC88 = v3 & 1;
  return result;
}

uint64_t sub_24E77B6DC()
{
  result = MEMORY[0x253048030](0x4014000000000000, 0, 0x403E000000000000, 0);
  qword_27F39AC90 = result;
  byte_27F39AC98 = v1 & 1;
  qword_27F39ACA0 = v2;
  byte_27F39ACA8 = v3 & 1;
  return result;
}

uint64_t sub_24E77B724()
{
  result = MEMORY[0x253048030](0x4014000000000000, 0, 0x4059000000000000, 0);
  qword_27F39ACB0 = result;
  byte_27F39ACB8 = v1 & 1;
  qword_27F39ACC0 = v2;
  byte_27F39ACC8 = v3 & 1;
  return result;
}

uint64_t sub_24E77B76C()
{
  v0 = sub_24F926C08();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ColorGroup();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v5, qword_27F39ACD0);
  v8 = __swift_project_value_buffer(v4, qword_27F39ACD0);
  sub_24F91F6A8();
  v9 = &v7[v4[5]];
  *v9 = 0x6D61657243;
  *(v9 + 1) = 0xE500000000000000;
  *&v7[v4[6]] = 0;
  sub_24E77ACC8();
  v10 = sub_24F92C398();
  UIColor.rgbaComponents.getter(&v13);
  if (v14)
  {
    v11 = sub_24F926BF8();
  }

  else
  {
    (*(v1 + 104))(v3, *MEMORY[0x277CE0EE8], v0);
    v11 = sub_24F926D48();
  }

  *&v7[v4[7]] = v11;
  sub_24F92C398();
  *&v7[v4[8]] = sub_24F926BF8();
  return sub_24E77D42C(v7, v8);
}

uint64_t sub_24E77BA54()
{
  if (qword_27F20FE90 != -1)
  {
    swift_once();
  }

  v0 = qword_27F39ABE8;
  v1 = qword_27F20FE98;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_27F39ABF0;
  type metadata accessor for ColorGrouping();
  v3 = swift_allocObject();

  v4 = sub_24E77CB74(v0);

  *(v3 + 48) = v4;
  *(v3 + 56) = sub_24E77CB74(v2);
  *(v3 + 16) = xmmword_24F954610;
  *(v3 + 32) = xmmword_24F954610;

  qword_27F21C018 = v3;
  return result;
}

uint64_t ColorGrouping.__allocating_init(hueColorGroups:brightnessColorGroups:gameSaturationBoundary:gameBrightnessBoundary:profileSaturationBoundary:profileBrightnessBoundary:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = swift_allocObject();
  v13 = sub_24E77CB74(a1);

  *(v12 + 48) = v13;
  v14 = sub_24E77CB74(a2);

  *(v12 + 56) = v14;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  return v12;
}

uint64_t static ColorGrouping.shared.getter()
{
  if (qword_27F20FEE0 != -1)
  {
    swift_once();
  }
}

uint64_t ColorGrouping.init(hueColorGroups:brightnessColorGroups:gameSaturationBoundary:gameBrightnessBoundary:profileSaturationBoundary:profileBrightnessBoundary:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_24E77CB74(a1);

  *(v6 + 48) = v12;
  *(v6 + 56) = sub_24E77CB74(a2);
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;

  return v6;
}

double sub_24E77BCC4()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = 0;
  v5[0] = 0.0;
  v2 = 0;
  v3 = 0;
  sub_24E77ACC8();

  v0 = sub_24F92C3B8();
  [v0 getHue:v5 saturation:&v4 brightness:&v3 alpha:&v2];

  return v5[0] * 360.0;
}