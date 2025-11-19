void sub_258828C84()
{
  if (!qword_27F95F650)
  {
    sub_258828D18(255);
    sub_25882CB3C(&qword_27F95F6A8, sub_258828D18);
    v0 = sub_2588BD368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F650);
    }
  }
}

void sub_258828D4C()
{
  if (!qword_27F95F660)
  {
    sub_258828DB8(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95F660);
    }
  }
}

void sub_258828DEC()
{
  if (!qword_27F95F670)
  {
    sub_258828EA0();
    sub_25882CB3C(&qword_27F95F6A0, sub_258828EA0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F670);
    }
  }
}

void sub_258828EA0()
{
  if (!qword_27F95F678)
  {
    sub_25882C17C(255, &qword_27F95F680, &type metadata for PhotoEditView, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_258828F54();
    sub_258829054();
    v0 = sub_2588BCD78();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F678);
    }
  }
}

unint64_t sub_258828F54()
{
  result = qword_27F95F688;
  if (!qword_27F95F688)
  {
    sub_25882C17C(255, &qword_27F95F680, &type metadata for PhotoEditView, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_258829000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F688);
  }

  return result;
}

unint64_t sub_258829000()
{
  result = qword_27F95F690;
  if (!qword_27F95F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F690);
  }

  return result;
}

unint64_t sub_258829054()
{
  result = qword_27F95F698;
  if (!qword_27F95F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F698);
  }

  return result;
}

void sub_2588290A8()
{
  if (!qword_27F95F6B8)
  {
    sub_258828C84();
    sub_2588291A0(255, &qword_27F95F6C0, type metadata accessor for ImagePickerView);
    sub_25882CB3C(&qword_27F95F6C8, sub_258828C84);
    sub_258829204();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F6B8);
    }
  }
}

void sub_2588291A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_258829204()
{
  result = qword_27F95F6D0;
  if (!qword_27F95F6D0)
  {
    sub_2588291A0(255, &qword_27F95F6C0, type metadata accessor for ImagePickerView);
    sub_25882CB3C(&qword_27F95F6D8, type metadata accessor for ImagePickerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F6D0);
  }

  return result;
}

uint64_t sub_2588292D8@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v49 = a2;
  v3 = sub_2588BC978();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258828EA0();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258828DEC();
  v46 = *(v14 - 8);
  v47 = v14;
  v15 = *(v46 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258828DB8(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v48 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v45 = &v44 - v22;
  v51 = a1;
  v50 = a1;
  sub_25882C17C(0, &qword_27F95F680, &type metadata for PhotoEditView, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  sub_258828F54();
  sub_258829054();
  sub_2588BCD68();
  sub_2588BC958();
  v23 = sub_25882CB3C(&qword_27F95F6A0, sub_258828EA0);
  sub_2588BCF88();
  (*(v4 + 8))(v7, v3);
  (*(v10 + 8))(v13, v9);
  v54 = *a1;
  sub_25882CBB8(0, &qword_27F95F6E8, type metadata accessor for EditPhotoCellView.ViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v24 = v52;
  swift_getKeyPath();
  *&v54 = v24;
  sub_25882CB3C(&qword_27F95F6F8, type metadata accessor for EditPhotoCellView.ViewModel);
  sub_2588BBB98();

  v25 = *(v24 + 64);
  v26 = *(v24 + 72);
  sub_2587CC620(v25, v26);

  v27 = sub_2588BD858();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v29 = qword_27F95DA88;
  v30 = sub_2588BBAC8();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = v29;
  sub_2588BBAB8();
  v33 = sub_2588BD8B8();
  v35 = v34;
  sub_2587C4E98(v25, v26);
  *&v54 = v33;
  *(&v54 + 1) = v35;
  v52 = v9;
  v53 = v23;
  swift_getOpaqueTypeConformance2();
  sub_25878F648();
  v36 = v45;
  v37 = v47;
  sub_2588BCF68();

  (*(v46 + 8))(v17, v37);
  v38 = v48;
  sub_25882C9AC(v36, v48, sub_258828DB8);
  v39 = v49;
  *v49 = 0;
  *(v39 + 8) = 1;
  sub_258828D4C();
  v41 = v40;
  sub_25882C9AC(v38, v39 + *(v40 + 48), sub_258828DB8);
  v42 = v39 + *(v41 + 64);
  *v42 = 0;
  v42[8] = 1;
  sub_25882CA14(v36, sub_258828DB8);
  return sub_25882CA14(v38, sub_258828DB8);
}

void sub_258829950(__int128 *a1@<X0>, Swift::Void (__swiftcall **a2)()@<X8>)
{
  v11 = *a1;
  sub_25882CBB8(0, &qword_27F95F6E8, type metadata accessor for EditPhotoCellView.ViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_2588BD2C8();
  sub_2588BD2C8();
  swift_getKeyPath();
  sub_25882CB3C(&qword_27F95F6F8, type metadata accessor for EditPhotoCellView.ViewModel);
  sub_2588BBB98();

  if (*(v10 + 72) >> 60 == 15)
  {

    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = swift_allocObject();
    swift_weakInit();

    v3 = sub_25882CA80;
  }

  v5 = sub_2588BD9A8();
  v6 = HKUIJoinStringsForAutomationIdentifier();

  if (v6)
  {
    v7 = sub_2588BD8A8();
    v9 = v8;
  }

  else
  {
    v9 = 0xEB0000000072656BLL;
    v7 = 0x6369506F746F6850;
  }

  *a2 = j___s11MedicalIDUI17EditPhotoCellViewV0F5ModelC22cameraMenuButtonTappedyyF;
  a2[1] = v10;
  a2[2] = sub_25882CA78;
  a2[3] = v10;
  a2[4] = v3;
  a2[5] = v4;
  a2[6] = v7;
  a2[7] = v9;
}

uint64_t sub_258829B84(uint64_t result)
{
  if ((*(result + 88) & 1) != 0 || *(result + 80))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25882CB3C(&qword_27F95F6F8, type metadata accessor for EditPhotoCellView.ViewModel);
    sub_2588BBB88();
  }

  else
  {
    *(result + 88) = 0;
  }

  return result;
}

double sub_258829C98@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *a1;
  sub_25882CBB8(0, &qword_27F95F6E8, type metadata accessor for EditPhotoCellView.ViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  swift_getKeyPath();
  sub_25882CB3C(&qword_27F95F6F8, type metadata accessor for EditPhotoCellView.ViewModel);
  sub_2588BBB98();

  v3 = *(v12 + 64);
  v4 = *(v12 + 72);
  sub_2587CC620(v3, v4);

  v5 = sub_2588BD9A8();
  v6 = HKUIJoinStringsForAutomationIdentifier();

  if (v6)
  {
    v7 = sub_2588BD8A8();
    v9 = v8;
  }

  else
  {
    v9 = 0xE90000000000006FLL;
    v7 = 0x746F685074696445;
  }

  v10 = sub_2588BCB78();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  result = 0.0;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 1;
  return result;
}

uint64_t sub_258829E2C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25882CB3C(&qword_27F95F6F8, type metadata accessor for EditPhotoCellView.ViewModel);
  sub_2588BBB98();

  *a2 = (*(v3 + 88) & 1) == 0;
  return result;
}

void sub_258829F04(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ImagePickerView(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *a1;
  v22 = v21;
  sub_25882CBB8(0, &qword_27F95F6E8, type metadata accessor for EditPhotoCellView.ViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v9 = v20;
  swift_getKeyPath();
  *&v21 = v9;
  sub_25882CB3C(&qword_27F95F6F8, type metadata accessor for EditPhotoCellView.ViewModel);
  sub_2588BBB98();

  v10 = *(v9 + 10);
  v11 = *(v9 + 88);

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10;
  }

  v21 = v22;
  sub_2588BD2C8();
  v13 = v20;
  *v8 = swift_getKeyPath();
  sub_25882CBB8(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v5 + 28)) = v12;
  v14 = (v8 + *(v5 + 32));
  *v14 = j___s11MedicalIDUI17EditPhotoCellViewV0F5ModelC8selected5imageySo7UIImageC_tF;
  v14[1] = v13;
  v15 = sub_2588BC218();
  v16 = sub_2588BCB88();
  sub_25882C934(v8, a2, type metadata accessor for ImagePickerView);
  sub_2588291A0(0, &qword_27F95F6C0, type metadata accessor for ImagePickerView);
  v18 = a2 + *(v17 + 36);
  *v18 = v15;
  *(v18 + 8) = v16;
}

uint64_t sub_25882A1B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25882CB3C(&qword_27F95F6F8, type metadata accessor for EditPhotoCellView.ViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v4 = v3[12];
  v5 = v3[13];
  v6 = v3[14];
  v7 = v3[15];
  v8 = v3[16];
  v9 = v3[17];
  v10 = v3[18];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  return sub_25882C8CC(v4, v5);
}

uint64_t sub_25882A288(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = *a2;
  *&v10 = *a1;
  *(&v10 + 1) = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  sub_25882C8CC(v10, v2);
  return EditPhotoCellView.ViewModel.deniedPermissionsAlert.setter(&v10);
}

uint64_t sub_25882A2E4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a3 + 32);
  v12[0] = *(a3 + 16);
  v12[1] = v5;
  v6 = *(a3 + 32);
  v10 = *(a3 + 16);
  v11 = v6;
  v9[4] = v3;
  v9[5] = v4;
  sub_25882C830(v12, v9, sub_25882C898);
  sub_2587CC620(v3, v4);
  sub_25882C898(0);
  sub_2588BD438();
  v7 = v11;

  return sub_2587C4E98(v7, *(&v7 + 1));
}

uint64_t sub_25882A390@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v72 = a3;
  v5 = sub_2588BC6D8();
  v69 = *(v5 - 8);
  v70 = v5;
  v6 = *(v69 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25882C17C(0, &qword_27F95E9D0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v60 - v11;
  sub_25882C07C();
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = *(v67 + 64);
  MEMORY[0x28223BE20](v13);
  v65 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25882C048(0);
  v61 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25882C014(0);
  v62 = v20;
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25882BFE0(0);
  v66 = v24;
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v71 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v60 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v60 - v31;
  v33 = sub_2588BD858();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  if (a2 >> 60 != 15)
  {
    sub_2587CC634(a1, a2);
  }

  sub_2588BD7E8();
  v73 = a1;
  v74 = a2;
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v35 = qword_27F95DA88;
  v36 = sub_2588BBAC8();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = v35;
  sub_2588BBAB8();
  v75 = sub_2588BD8B8();
  v76 = v39;
  sub_25878F648();
  sub_2588BD338();
  sub_2588BC6C8();
  sub_25882C1D0();
  sub_25882CB3C(&qword_27F95F750, MEMORY[0x277CDDEE0]);
  v41 = v64;
  v40 = v65;
  v42 = v70;
  sub_2588BCE48();
  (*(v69 + 8))(v8, v42);
  (*(v63 + 8))(v12, v41);
  v43 = &v19[*(v61 + 36)];
  sub_25882C254(0);
  v45 = *(v44 + 28);
  v46 = *MEMORY[0x277CDF438];
  v47 = sub_2588BBF28();
  (*(*(v47 - 8) + 104))(v43 + v45, v46, v47);
  *v43 = swift_getKeyPath();
  (*(v67 + 32))(v19, v40, v68);
  v48 = &v23[*(v62 + 36)];
  sub_25882C288(0);
  v50 = v48 + *(v49 + 28);
  sub_2588BC338();
  *v48 = swift_getKeyPath();
  sub_25882C434(v19, v23, sub_25882C048);
  v51 = sub_2588BD158();
  KeyPath = swift_getKeyPath();
  sub_25882C434(v23, v30, sub_25882C014);
  v53 = &v30[*(v66 + 36)];
  *v53 = KeyPath;
  v53[1] = v51;
  sub_25882C434(v30, v32, sub_25882BFE0);
  v54 = v71;
  sub_25882C9AC(v32, v71, sub_25882BFE0);
  v56 = v72;
  v55 = v73;
  v57 = v74;
  *v72 = v73;
  v56[1] = v57;
  sub_25882BF78();
  sub_25882C9AC(v54, v56 + *(v58 + 48), sub_25882BFE0);
  sub_2587CC620(v55, v57);
  sub_25882CA14(v32, sub_25882BFE0);
  sub_25882CA14(v54, sub_25882BFE0);
  return sub_2587C4E98(v55, v57);
}

uint64_t sub_25882AA94@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = sub_2588BC6E8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_25882BED8(0, &qword_27F95F718, sub_25882BF44);
  return sub_25882A390(v3, v4, (a1 + *(v7 + 44)));
}

void sub_25882AB2C(uint64_t a1@<X8>)
{
  v2 = v1;
  v92 = a1;
  sub_25882CBB8(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = &v82 - v5;
  sub_25882C49C(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v91 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v90 = &v82 - v10;
  sub_25882C578();
  v12 = *(v11 - 8);
  v100 = v11;
  v101 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v93 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v97 = &v82 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v82 - v18;
  sub_25882C4D0(0);
  v87 = v20;
  v86 = *(v20 - 8);
  v21 = *(v86 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v89 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v88 = &v82 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v83 = &v82 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v94 = &v82 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v82 - v30;
  v32 = *(v2 + 8);
  v33 = *(v2 + 24);
  v34 = *(v2 + 32);
  v35 = *(v2 + 40);
  v104[0] = *(v2 + 48);
  v36 = swift_allocObject();
  v37 = *(v2 + 16);
  v36[1] = *v2;
  v36[2] = v37;
  v38 = *(v2 + 48);
  v36[3] = *(v2 + 32);
  v36[4] = v38;
  v95 = v32;

  v96 = v33;

  sub_2587FB4AC(v104, v103);
  v102 = v34;
  sub_2587B2344(v34);
  sub_25882C60C();
  v40 = v39;
  v41 = sub_25882CB3C(&qword_27F95F788, sub_25882C60C);
  v99 = v40;
  sub_2588BD318();
  sub_25878E1F0(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v43 = v42;
  v44 = swift_allocObject();
  v45 = v104[0];
  v98 = xmmword_2588BFF50;
  *(v44 + 16) = xmmword_2588BFF50;
  *(v44 + 32) = v45;
  *(v44 + 48) = 0x6172656D6143;
  *(v44 + 56) = 0xE600000000000000;
  sub_2587FB4AC(v104, v103);
  swift_bridgeObjectRetain_n();
  v46 = sub_2588BD9A8();

  v47 = HKUIJoinStringsForAutomationIdentifier();

  if (!v47)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2588BD8A8();

  sub_25882CB3C(&qword_27F95F790, sub_25882C578);
  v85 = v31;
  v48 = v100;
  sub_2588BCFB8();

  v50 = v101 + 8;
  v49 = *(v101 + 8);
  v49(v19, v48);
  v51 = swift_allocObject();
  v52 = *(v2 + 16);
  v51[1] = *v2;
  v51[2] = v52;
  v53 = *(v2 + 48);
  v51[3] = *(v2 + 32);
  v51[4] = v53;

  sub_2587FB4AC(v104, v103);
  v82 = v35;
  sub_2587B2344(v102);
  v54 = v97;
  v96 = v41;
  sub_2588BD318();
  v95 = v43;
  v55 = swift_allocObject();
  v56 = v104[0];
  *(v55 + 16) = v98;
  *(v55 + 32) = v56;
  *(v55 + 48) = 0x7972617262694CLL;
  *(v55 + 56) = 0xE700000000000000;
  v57 = sub_2588BD9A8();

  v58 = HKUIJoinStringsForAutomationIdentifier();

  if (!v58)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v59 = v50;
  sub_2588BD8A8();

  v60 = v94;
  v61 = v100;
  sub_2588BCFB8();

  v49(v54, v61);
  v62 = v93;
  if (!v102)
  {
    sub_25882C708(v104);
    v74 = 1;
    v73 = v90;
    v71 = v85;
    goto LABEL_7;
  }

  v101 = v59;
  v63 = v82;

  v64 = v84;
  sub_2588BBDC8();
  v65 = sub_2588BBDE8();
  (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
  v66 = swift_allocObject();
  *(v66 + 16) = v102;
  *(v66 + 24) = v63;

  sub_2588BD308();
  v67 = swift_allocObject();
  v68 = v104[0];
  *(v67 + 16) = v98;
  *(v67 + 32) = v68;
  *(v67 + 48) = 0x6574656C6544;
  *(v67 + 56) = 0xE600000000000000;
  v69 = sub_2588BD9A8();

  v70 = HKUIJoinStringsForAutomationIdentifier();

  v71 = v85;
  if (v70)
  {
    sub_2588BD8A8();

    v72 = v83;
    sub_2588BCFB8();

    sub_2587A6038(v102);
    v49(v62, v61);
    v73 = v90;
    sub_25882C934(v72, v90, sub_25882C4D0);
    v74 = 0;
LABEL_7:
    (*(v86 + 56))(v73, v74, 1, v87);
    v75 = v88;
    sub_25882C830(v71, v88, sub_25882C4D0);
    v76 = v71;
    v77 = v89;
    sub_25882C830(v60, v89, sub_25882C4D0);
    v78 = v91;
    sub_25882C830(v73, v91, sub_25882C49C);
    v79 = v92;
    sub_25882C830(v75, v92, sub_25882C4D0);
    sub_25882C75C();
    v81 = v80;
    sub_25882C830(v77, v79 + *(v80 + 48), sub_25882C4D0);
    sub_25882C830(v78, v79 + *(v81 + 64), sub_25882C49C);
    sub_25882C7D0(v73, sub_25882C49C);
    sub_25882C7D0(v60, sub_25882C4D0);
    sub_25882C7D0(v76, sub_25882C4D0);
    sub_25882C7D0(v78, sub_25882C49C);
    sub_25882C7D0(v77, sub_25882C4D0);
    sub_25882C7D0(v75, sub_25882C4D0);
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_25882B550()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  sub_2588BD8B8();
  sub_25878F648();
  return sub_2588BD298();
}

uint64_t sub_25882B70C()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  sub_2588BD8B8();
  sub_25878F648();
  return sub_2588BD298();
}

void sub_25882B88C(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_25882AB2C(a1);
}

uint64_t sub_25882B8C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25882CB3C(&qword_27F95F6F8, type metadata accessor for EditPhotoCellView.ViewModel);
  sub_2588BBB98();

  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  *a2 = v4;
  a2[1] = v5;
  return sub_2587CC620(v4, v5);
}

uint64_t sub_25882B974(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_2587CC620(*a1, v3);
  return sub_25882E734(v2, v3);
}

uint64_t objectdestroyTm_17()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[7];
  if (v5 >> 60 != 15)
  {
    sub_2587C2610(v0[6], v5);
  }

  return swift_deallocObject();
}

unint64_t sub_25882BA28()
{
  result = qword_27F95F700;
  if (!qword_27F95F700)
  {
    sub_2588291A0(255, &qword_27F95F6B0, sub_2588290A8);
    sub_258828C84();
    sub_2588291A0(255, &qword_27F95F6C0, type metadata accessor for ImagePickerView);
    sub_25882CB3C(&qword_27F95F6C8, sub_258828C84);
    sub_258829204();
    swift_getOpaqueTypeConformance2();
    sub_2587FC5B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F700);
  }

  return result;
}

unint64_t sub_25882BB70()
{
  result = qword_27F95F708;
  if (!qword_27F95F708)
  {
    sub_2587CC4B0();
    sub_25882BBE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F708);
  }

  return result;
}

unint64_t sub_25882BBE8()
{
  result = qword_27F95F710;
  if (!qword_27F95F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F710);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25882BC90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25882BCD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25882BD60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_25882BDA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25882BE08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25882BE50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_25882BED8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC0B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25882BF78()
{
  if (!qword_27F95F728)
  {
    sub_25882BFE0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95F728);
    }
  }
}

void sub_25882C07C()
{
  if (!qword_27F95F748)
  {
    sub_25882C17C(255, &qword_27F95E9D0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    sub_2588BC6D8();
    sub_25882C1D0();
    sub_25882CB3C(&qword_27F95F750, MEMORY[0x277CDDEE0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F748);
    }
  }
}

void sub_25882C17C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_25882C1D0()
{
  result = qword_27F95E9D8;
  if (!qword_27F95E9D8)
  {
    sub_25882C17C(255, &qword_27F95E9D0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E9D8);
  }

  return result;
}

uint64_t sub_25882C2BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2588BC568();
  *a1 = result;
  return result;
}

uint64_t sub_25882C2E8(uint64_t *a1)
{
  v1 = *a1;

  return sub_2588BC578();
}

uint64_t sub_25882C364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

uint64_t sub_25882C434(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_25882C504(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_2588BC1E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_25882C578()
{
  if (!qword_27F95F778)
  {
    sub_25882C60C();
    sub_25882CB3C(&qword_27F95F788, sub_25882C60C);
    v0 = sub_2588BD348();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F778);
    }
  }
}

void sub_25882C60C()
{
  if (!qword_27F95F780)
  {
    v0 = sub_2588BD2A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F780);
    }
  }
}

uint64_t objectdestroy_40Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  if (v0[6])
  {
    v3 = v0[7];
  }

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_25882C6E0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

void sub_25882C75C()
{
  if (!qword_27F95F798)
  {
    sub_25882C4D0(255);
    sub_25882C49C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95F798);
    }
  }
}

uint64_t sub_25882C7D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25882C830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25882C8CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25882C934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25882C9AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25882CA14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25882CAA8()
{
  if (!qword_27F95F7B0)
  {
    sub_25882BF44(255);
    sub_25882CB3C(&qword_27F95F7B8, sub_25882BF44);
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F7B0);
    }
  }
}

uint64_t sub_25882CB3C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25882CBB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id _HKMedicalIDData.displayName.getter()
{
  result = [v0 name];
  if (result)
  {
    v2 = result;
    v3 = sub_2588BD8A8();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      result = [v0 name];
      if (result)
      {
        v7 = result;
        v8 = sub_2588BD8A8();

        return v8;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _HKMedicalIDData.typedCopy.getter()
{
  swift_getObjectType();
  [v0 copy];
  sub_2588BDD38();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  return v2;
}

uint64_t type metadata accessor for MedicalIDMedicationsCellView()
{
  result = qword_27F95F7D0;
  if (!qword_27F95F7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25882CDC0()
{
  result = type metadata accessor for MedicalIDMedicalInfoViewModel();
  if (v1 <= 0x3F)
  {
    result = sub_2587B2F78();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25882CE60@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F95D0F0 != -1)
  {
    swift_once();
  }

  v3 = qword_27F969840;
  v23 = qword_27F969838;
  v4 = *v1;

  v5 = [v4 medicationInfo];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2588BD8A8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = sub_2588BD858();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v12 = qword_27F95DA88;
  v13 = sub_2588BBAC8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v12;
  sub_2588BBAB8();
  v16 = sub_2588BD8B8();
  v18 = v17;
  v19 = (v1 + *(type metadata accessor for MedicalIDMedicationsCellView() + 20));
  v21 = *v19;
  v20 = v19[1];
  *a1 = v23;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v16;
  *(a1 + 48) = v18;
  *(a1 + 56) = v21;
  *(a1 + 64) = v20;
}

__n128 sub_25882D088@<Q0>(uint64_t a1@<X8>)
{
  sub_25882CE60(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25882D0D8()
{
  result = qword_27F95F7E0;
  if (!qword_27F95F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F7E0);
  }

  return result;
}

uint64_t MedicalIDMedicalInfoViewModel.init(data:calendar:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  v8 = *(v7 + 20);
  v9 = sub_2588BBB48();
  (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  v10 = *(v7 + 24);
  v11 = sub_2588BBAC8();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a4[v10], a3, v11);
}

uint64_t type metadata accessor for MedicalIDMedicalInfoViewModel()
{
  result = qword_27F95F7E8;
  if (!qword_27F95F7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_25882D27C(SEL *a1)
{
  result = [*v1 *a1];
  if (result)
  {
    v3 = result;
    v4 = sub_2588BD8A8();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    return (v7 != 0);
  }

  return result;
}

Swift::String_optional __swiftcall MedicalIDMedicalInfoViewModel.medicationsInfoDescription()()
{
  v0 = sub_25882D320(&selRef_medicationInfo);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall MedicalIDMedicalInfoViewModel.allergyInfoDescription()()
{
  v0 = sub_25882D320(&selRef_allergyInfo);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall MedicalIDMedicalInfoViewModel.medicalConditionsDescription()()
{
  v0 = sub_25882D320(&selRef_medicalConditions);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall MedicalIDMedicalInfoViewModel.medicalNotesDescription()()
{
  v0 = sub_25882D320(&selRef_medicalNotes);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_25882D320(SEL *a1)
{
  v2 = [*v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2588BD8A8();

  return v4;
}

uint64_t MedicalIDMedicalInfoViewModel.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicalIDMedicalInfoViewModel() + 20);
  v4 = sub_2588BBB48();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MedicalIDMedicalInfoViewModel.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicalIDMedicalInfoViewModel() + 24);
  v4 = sub_2588BBAC8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MedicalIDMedicalInfoViewModel.locale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MedicalIDMedicalInfoViewModel() + 24);
  v4 = sub_2588BBAC8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

Swift::Bool __swiftcall MedicalIDMedicalInfoViewModel.medicationsListVersionExists()()
{
  v1 = [*v0 medicationsListVersion];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

Swift::Bool __swiftcall MedicalIDMedicalInfoViewModel.allergiesListVersionExists()()
{
  v1 = [*v0 allergiesListVersion];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

Swift::Bool __swiftcall MedicalIDMedicalInfoViewModel.conditionsListVersionExists()()
{
  v1 = [*v0 conditionsListVersion];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

unint64_t sub_25882D80C()
{
  result = sub_25878D604();
  if (v1 <= 0x3F)
  {
    result = sub_2588BBB48();
    if (v2 <= 0x3F)
    {
      result = sub_2588BBAC8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25882D8A8@<X0>(uint64_t *a1@<X8>)
{
  sub_25882D8E8();
  result = sub_2588BBD18();
  *a1 = result;
  return result;
}

unint64_t sub_25882D8E8()
{
  result = qword_27F95D378;
  if (!qword_27F95D378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F95D378);
  }

  return result;
}

uint64_t EditPhotoCellView.ViewModel.__allocating_init(initialPictureData:openSettings:authorizationStatusFor:requestAccess:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(v8 + 48);
  v18 = *(v8 + 52);
  v19 = swift_allocObject();
  *(v19 + 64) = xmmword_2588C0670;
  *(v19 + 80) = 0;
  *(v19 + 88) = 1;
  *(v19 + 96) = 0u;
  *(v19 + 112) = 0u;
  *(v19 + 128) = 0u;
  *(v19 + 144) = 0;
  sub_2588BBBC8();
  sub_2587C4E98(*(v19 + 64), *(v19 + 72));
  *(v19 + 64) = a1;
  *(v19 + 72) = a2;
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;
  *(v19 + 48) = a7;
  *(v19 + 56) = a8;
  return v19;
}

Swift::Void __swiftcall EditPhotoCellView.ViewModel.cameraMenuButtonTapped()()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[4];
  v4 = v0[5];
  v5 = *MEMORY[0x277CE5EA8];
  v6 = v3(*MEMORY[0x277CE5EA8]);
  if ((v6 - 1) < 2)
  {

    sub_25882F1C8();
  }

  else if (v6)
  {
    if (v6 == 3)
    {
      if ((*(v1 + 88) & 1) != 0 || *(v1 + 80) != 1)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v22 = v1;
        sub_2588303E8();
        sub_2588BBB88();
      }

      else
      {
        *(v1 + 88) = 0;
      }
    }

    else
    {
      if (qword_27F95D170 != -1)
      {
        swift_once();
      }

      v10 = sub_2588BBC98();
      __swift_project_value_buffer(v10, qword_27F969938);
      v21 = sub_2588BBC78();
      v11 = sub_2588BDBD8();
      if (os_log_type_enabled(v21, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v22 = v13;
        *v12 = 136315394;
        v14 = sub_2588BE0E8();
        v16 = sub_258790224(v14, v15, &v22);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2080;
        type metadata accessor for AVAuthorizationStatus(0);
        v17 = sub_2588BD8C8();
        v19 = sub_258790224(v17, v18, &v22);

        *(v12 + 14) = v19;
        _os_log_impl(&dword_25878B000, v21, v11, "[%s]: Encountered unkown media authorization status: %s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C8DBE0](v13, -1, -1);
        MEMORY[0x259C8DBE0](v12, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    v8 = *(v1 + 48);
    v7 = *(v1 + 56);
    v9 = swift_allocObject();
    swift_weakInit();

    v8(v5, sub_2588303CC, v9);
  }
}

Swift::Void __swiftcall EditPhotoCellView.ViewModel.photoLibraryMenuButtonTapped()()
{
  if ((*(v0 + 88) & 1) != 0 || *(v0 + 80))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2588303E8();
    sub_2588BBB88();
  }

  else
  {
    *(v0 + 88) = 0;
  }
}

uint64_t (*EditPhotoCellView.ViewModel.deleteMenuButtonTapped.getter())()
{
  swift_getKeyPath();
  sub_2588303E8();
  sub_2588BBB98();

  if (*(v0 + 72) >> 60 == 15)
  {
    return 0;
  }

  swift_allocObject();
  swift_weakInit();
  return sub_25882CA80;
}

uint64_t EditPhotoCellView.ViewModel.pictureData.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_2588303E8();
  sub_2588BBB98();

  v1 = *(v0 + 64);
  sub_2587CC620(v1, *(v3 + 72));
  return v1;
}

BOOL EditPhotoCellView.ViewModel.imagePickerSheetOpen.getter()
{
  swift_getKeyPath();
  sub_2588303E8();
  sub_2588BBB98();

  return (*(v0 + 88) & 1) == 0;
}

void EditPhotoCellView.ViewModel.imagePickerSheetOpen.setter(char a1)
{
  v2 = *v1;
  if (a1)
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v3 = sub_2588BBC98();
    __swift_project_value_buffer(v3, qword_27F969938);
    v11 = sub_2588BBC78();
    v4 = sub_2588BDBD8();
    if (os_log_type_enabled(v11, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;
      v7 = sub_2588BE0E8();
      v9 = sub_258790224(v7, v8, &v12);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_25878B000, v11, v4, "[%s]: Didn't expect the sheet to be opened directly", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x259C8DBE0](v6, -1, -1);
      MEMORY[0x259C8DBE0](v5, -1, -1);
    }

    else
    {
    }
  }

  else if (*(v1 + 88) == 1)
  {
    v1[10] = 0;
    *(v1 + 88) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2588303E8();
    sub_2588BBB88();
  }
}

uint64_t EditPhotoCellView.ViewModel.imagePickerSource.getter()
{
  swift_getKeyPath();
  sub_2588303E8();
  sub_2588BBB98();

  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

Swift::Void __swiftcall EditPhotoCellView.ViewModel.selected(image:)(UIImage image)
{
  v2 = *v1;
  v3 = UIImagePNGRepresentation(image.super.isa);
  if (v3)
  {
    v4 = v3;
    v5 = sub_2588BB908();
    v7 = v6;

    sub_2587CC634(v5, v7);
    sub_25882E734(v5, v7);

    sub_2587C2610(v5, v7);
  }

  else
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v8 = sub_2588BBC98();
    __swift_project_value_buffer(v8, qword_27F969938);
    oslog = sub_2588BBC78();
    v9 = sub_2588BDBD8();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315394;
      v12 = sub_2588BE0E8();
      v14 = sub_258790224(v12, v13, &v16);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_258790224(0xD000000000000010, 0x80000002588CA000, &v16);
      _os_log_impl(&dword_25878B000, oslog, v9, "%s %s Error: could not extract png data from image", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v11, -1, -1);
      MEMORY[0x259C8DBE0](v10, -1, -1);
    }
  }
}

uint64_t EditPhotoCellView.ViewModel.deniedPermissionsAlert.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_2588303E8();
  sub_2588BBB98();

  swift_beginAccess();
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[16];
  v8 = v1[17];
  v9 = v1[18];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  return sub_25882C8CC(v3, v4);
}

uint64_t EditPhotoCellView.ViewModel.deniedPermissionsAlert.setter(__int128 *a1)
{
  v2 = a1[1];
  v16 = *a1;
  v17 = v2;
  v18 = a1[2];
  v19 = *(a1 + 6);
  swift_beginAccess();
  v3 = *(v1 + 112);
  v20[0] = *(v1 + 96);
  v20[1] = v3;
  v20[2] = *(v1 + 128);
  v21 = *(v1 + 144);
  sub_258830D88(v20, v15, sub_2587D1A68);
  v4 = sub_2588306AC(v20, &v16);
  sub_258830DF0(v20, sub_2587D1A68);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v15[0] = v1;
    sub_2588303E8();
    sub_2588BBB88();
    sub_258830DF0(&v16, sub_2587D1A68);
  }

  else
  {
    v7 = *(v1 + 96);
    v8 = *(v1 + 104);
    v9 = *(v1 + 112);
    v10 = *(v1 + 120);
    v11 = *(v1 + 128);
    v12 = *(v1 + 136);
    v13 = *(v1 + 144);
    v14 = v17;
    *(v1 + 96) = v16;
    *(v1 + 112) = v14;
    *(v1 + 128) = v18;
    *(v1 + 144) = v19;
    return sub_2587FC42C(v7, v8);
  }
}

uint64_t sub_25882E734(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  sub_2587CC620(v5, v6);
  v7 = sub_258830BBC(v5, v6, a1, a2);
  sub_2587C4E98(v5, v6);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2588303E8();
    sub_2588BBB88();
    sub_2587C4E98(a1, a2);
  }

  else
  {
    v10 = *(v2 + 64);
    v11 = *(v2 + 72);
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;

    return sub_2587C4E98(v10, v11);
  }
}

uint64_t sub_25882E884@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2588303E8();
  sub_2588BBB98();

  v5 = *(v3 + 88);
  *a2 = *(v3 + 80);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_25882E938(uint64_t result, char a2)
{
  if ((*(v2 + 88) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 80) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 80) = result;
    *(v2 + 88) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_2588303E8();
  sub_2588BBB88();
}

uint64_t sub_25882EA3C(uint64_t result, uint64_t a2, char a3)
{
  *(result + 80) = a2;
  *(result + 88) = a3 & 1;
  return result;
}

uint64_t sub_25882EA4C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[14];
  v7 = a1[15];
  v8 = a1[16];
  v9 = a1[17];
  v10 = a1[18];
  v11 = *(a2 + 16);
  *(a1 + 6) = *a2;
  *(a1 + 7) = v11;
  *(a1 + 8) = *(a2 + 32);
  a1[18] = *(a2 + 48);
  sub_258830D88(a2, &v13, sub_2587D1A68);
  return sub_2587FC42C(v4, v5);
}

void (*EditPhotoCellView.ViewModel.deniedPermissionsAlert.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtCV11MedicalIDUI17EditPhotoCellView9ViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_2588303E8();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath();
  sub_2588BBBB8();

  swift_beginAccess();
  return sub_25882EC2C;
}

void sub_25882EC2C(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_2588BBBA8();

  free(v1);
}

uint64_t sub_25882ECB0()
{
  sub_258830D24(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_2588BDAA8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_2587ABD24(0, 0, v3, &unk_2588C4850, v5);
}

uint64_t static EditPhotoCellView.ViewModel._openSettings@Sendable ()()
{
  sub_258830D24(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_2588BDAA8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_2587ABD24(0, 0, v3, &unk_2588C4790, v5);
}

id sub_25882EED8(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 authorizationStatusForMediaType_];
}

id static EditPhotoCellView.ViewModel._authorizationStatus@Sendable (_:)(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 authorizationStatusForMediaType_];
}

void sub_25882EF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2587D1E1C;
  v8[3] = &block_descriptor_29;
  v7 = _Block_copy(v8);

  [v6 requestAccessForMediaType:a1 completionHandler:v7];
  _Block_release(v7);
}

void static EditPhotoCellView.ViewModel._requestAccess@Sendable (_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2587D1E1C;
  v8[3] = &block_descriptor_3;
  v7 = _Block_copy(v8);

  [v6 requestAccessForMediaType:a1 completionHandler:v7];
  _Block_release(v7);
}

uint64_t EditPhotoCellView.ViewModel.init(initialPictureData:openSettings:authorizationStatusFor:requestAccess:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = xmmword_2588C0670;
  *(v8 + 80) = 0;
  *(v8 + 88) = 1;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0u;
  *(v8 + 144) = 0;
  sub_2588BBBC8();
  sub_2587C4E98(*(v8 + 64), *(v8 + 72));
  *(v8 + 64) = a1;
  *(v8 + 72) = a2;
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  return v8;
}

uint64_t sub_25882F1C8()
{
  v1 = v0;
  v2 = type metadata accessor for BasicAlertModel.Action();
  v44 = *(v2 - 1);
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2588BD858();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v8 = qword_27F95DA88;
  v9 = sub_2588BBAC8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v8;
  sub_2588BBAB8();
  v12 = v11;
  v45 = v8;
  v13 = sub_2588BD8B8();
  v15 = v14;
  v16 = v2[6];
  v17 = sub_2588BBDE8();
  v18 = *(v17 - 8);
  v42 = *(v18 + 56);
  v43 = v17;
  v41 = v18 + 56;
  v42(&v5[v16], 1, 1);
  v19 = swift_allocObject();
  swift_weakInit();
  sub_2588BB9E8();
  v20 = &v5[v2[5]];
  *v20 = v13;
  v20[1] = v15;
  v21 = &v5[v2[7]];
  *v21 = sub_258830D1C;
  v21[1] = v19;
  if (qword_27F95D098 != -1)
  {
    swift_once();
  }

  v46 = v1;
  v40 = xmmword_27F95F7F8;
  v22 = qword_27F95D0A0;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = unk_27F95F810;
  v39 = qword_27F95F808;
  sub_258830D24(0, &qword_27F95D9E8, type metadata accessor for BasicAlertModel.Action, MEMORY[0x277D84560]);
  v24 = *(v44 + 72);
  v25 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2588BFF50;
  v27 = v26 + v25;
  v28 = sub_258830D88(v5, v27, type metadata accessor for BasicAlertModel.Action);
  v29 = v27 + v24;
  MEMORY[0x28223BE20](v28);

  v30 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v30);
  sub_2588BBAB8();
  v31 = sub_2588BD8B8();
  v33 = v32;
  v34 = v2[6];
  sub_2588BBDD8();
  (v42)(v29 + v34, 0, 1, v43);
  sub_2588BB9E8();
  v35 = (v29 + v2[5]);
  *v35 = v31;
  v35[1] = v33;
  v36 = (v29 + v2[7]);
  *v36 = 0;
  v36[1] = 0;
  v47 = v40;
  v48 = v39;
  v49 = v23;
  v51 = 0;
  v52 = 0;
  v50 = v26;
  EditPhotoCellView.ViewModel.deniedPermissionsAlert.setter(&v47);
  return sub_258830DF0(v5, type metadata accessor for BasicAlertModel.Action);
}

uint64_t sub_25882F6AC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25882E734(0, 0xF000000000000000);
  }

  return result;
}

void (*EditPhotoCellView.ViewModel.imagePickerSheetOpen.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  swift_getKeyPath();
  *a1 = v1;
  sub_2588303E8();
  sub_2588BBB98();

  *(a1 + 16) = (*(v1 + 88) & 1) == 0;
  return sub_25882F7A4;
}

char *EditPhotoCellView.ViewModel.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  sub_2587C4E98(*(v0 + 8), *(v0 + 9));
  v4 = *(v0 + 14);
  v5 = *(v0 + 15);
  v6 = *(v0 + 16);
  v7 = *(v0 + 17);
  v8 = *(v0 + 18);
  sub_2587FC42C(*(v0 + 12), *(v0 + 13));
  v9 = OBJC_IVAR____TtCV11MedicalIDUI17EditPhotoCellView9ViewModel___observationRegistrar;
  v10 = sub_2588BBBD8();
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  return v0;
}

uint64_t EditPhotoCellView.ViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  sub_2587C4E98(*(v0 + 8), *(v0 + 9));
  v4 = *(v0 + 14);
  v5 = *(v0 + 15);
  v6 = *(v0 + 16);
  v7 = *(v0 + 17);
  v8 = *(v0 + 18);
  sub_2587FC42C(*(v0 + 12), *(v0 + 13));
  v9 = OBJC_IVAR____TtCV11MedicalIDUI17EditPhotoCellView9ViewModel___observationRegistrar;
  v10 = sub_2588BBBD8();
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25882F94C()
{
  v1 = sub_2588BB8E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64) + 15;
  v4 = swift_task_alloc();
  sub_258830D24(0, &qword_27F95F830, MEMORY[0x28220BE28], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v8 = [objc_opt_self() internalHealthSettingsURLString];
  sub_2588BD8A8();

  sub_2588BB8D8();

  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_258830B3C(v7);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);

    v9 = [objc_opt_self() defaultWorkspace];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2588BB8B8();
      sub_25886369C(MEMORY[0x277D84F90]);
      v12 = sub_2588BD758();

      [v10 openSensitiveURL:v11 withOptions:v12];
    }

    (*(v2 + 8))(v4, v1);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_25882FBCC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 16);
    v1 = *(result + 24);

    v2(v3);
  }

  return result;
}

uint64_t sub_25882FC44(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a1 & 1) == 0)
    {
    }

    if ((*(result + 88) & 1) == 0 && *(result + 80) == 1)
    {
      *(result + 88) = 0;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2588303E8();
    sub_2588BBB88();
  }

  return result;
}

uint64_t sub_25882FD6C()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F95F7F8 = result;
  unk_27F95F800 = v7;
  return result;
}

uint64_t sub_25882FEBC()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F95F808 = result;
  unk_27F95F810 = v7;
  return result;
}

uint64_t sub_25883000C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2588BB718();
    if (v10)
    {
      v11 = sub_2588BB738();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2588BB728();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2588BB718();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2588BB738();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2588BB728();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_25883023C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_25883048C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2587C2610(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_25883000C(v14, a3, a4, &v13);
  v10 = v4;
  sub_2587C2610(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void sub_2588303D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 80) = *(v0 + 24);
  *(v1 + 88) = v2;
}

unint64_t sub_2588303E8()
{
  result = qword_27F95F6F8;
  if (!qword_27F95F6F8)
  {
    type metadata accessor for EditPhotoCellView.ViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F6F8);
  }

  return result;
}

uint64_t type metadata accessor for EditPhotoCellView.ViewModel()
{
  result = qword_27F95F820;
  if (!qword_27F95F820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25883048C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2588BB718();
  v11 = result;
  if (result)
  {
    result = sub_2588BB738();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2588BB728();
  sub_25883000C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_258830544(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2587CC634(a3, a4);
          return sub_25883023C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2588306AC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v12 = a2[3];
  v15 = a2[4];
  v14 = a2[5];
  v16 = a2[6];
  if (!v4)
  {
    v19 = a1[6];
    if (!v11)
    {
      sub_258830D88(a1, v23, sub_2587D1A68);
      sub_258830D88(a2, v23, sub_2587D1A68);
      sub_2587FC42C(v3, 0);
      v17 = 0;
      return v17 & 1;
    }

    sub_258830D88(a1, v23, sub_2587D1A68);
    sub_258830D88(a2, v23, sub_2587D1A68);
    goto LABEL_7;
  }

  v23[0] = *a1;
  v23[1] = v4;
  v23[2] = v6;
  v23[3] = v5;
  v23[4] = v7;
  v23[5] = v8;
  v23[6] = v9;
  if (!v11)
  {
    sub_258830D88(a1, v22, sub_2587D1A68);
    sub_258830D88(a2, v22, sub_2587D1A68);
    sub_25882C8CC(v3, v4);

LABEL_7:
    sub_2587FC42C(v3, v4);
    sub_2587FC42C(v10, v11);
    v17 = 1;
    return v17 & 1;
  }

  v22[0] = v10;
  v22[1] = v11;
  v22[2] = v13;
  v22[3] = v12;
  v22[4] = v15;
  v22[5] = v14;
  v22[6] = v16;
  sub_258830D88(a1, v21, sub_2587D1A68);
  sub_258830D88(a2, v21, sub_2587D1A68);
  sub_25882C8CC(v3, v4);
  v20 = _s11MedicalIDUI15BasicAlertModelV2eeoiySbAC_ACtFZ_0(v23, v22);

  sub_2587FC42C(v3, v4);
  v17 = v20 ^ 1;
  return v17 & 1;
}

uint64_t sub_25883099C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2587AEAC8;

  return sub_25882F930();
}

uint64_t sub_258830A50()
{
  result = sub_2588BBBD8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_258830B3C(uint64_t a1)
{
  sub_258830D24(0, &qword_27F95F830, MEMORY[0x28220BE28], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258830BBC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    if (a4 >> 60 != 15)
    {
      sub_2587CC620(a1, a2);
      sub_2587CC620(a3, a4);
      v9 = sub_258830544(a1, a2, a3, a4);
      sub_2587C4E98(a3, a4);
      sub_2587C4E98(a1, a2);
      v8 = v9 ^ 1;
      return v8 & 1;
    }

    goto LABEL_5;
  }

  if (a4 >> 60 != 15)
  {
LABEL_5:
    sub_2587CC620(a1, a2);
    sub_2587CC620(a3, a4);
    sub_2587C4E98(a1, a2);
    sub_2587C4E98(a3, a4);
    v8 = 1;
    return v8 & 1;
  }

  sub_2587CC620(a1, a2);
  sub_2587CC620(a3, a4);
  sub_2587C4E98(a1, a2);
  v8 = 0;
  return v8 & 1;
}

uint64_t sub_258830CD0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  sub_2587CC620(v1, v3);
  return sub_2587C4E98(v4, v5);
}

void sub_258830D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258830D88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258830DF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258830E50()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2587AE310;

  return sub_25882F930();
}

uint64_t sub_258830F38()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F9697B8 = result;
  unk_27F9697C0 = v7;
  return result;
}

uint64_t sub_2588310B4()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F9697D8 = result;
  unk_27F9697E0 = v7;
  return result;
}

uint64_t sub_258831204()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F9697E8 = result;
  unk_27F9697F0 = v7;
  return result;
}

uint64_t sub_258831354()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F9697F8 = result;
  unk_27F969800 = v7;
  return result;
}

uint64_t sub_2588314BC()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F969808 = result;
  unk_27F969810 = v7;
  return result;
}

uint64_t sub_258831628()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F969818 = result;
  unk_27F969820 = v7;
  return result;
}

uint64_t sub_258831794()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F969828 = result;
  unk_27F969830 = v7;
  return result;
}

uint64_t sub_25883192C()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F969848 = result;
  unk_27F969850 = v7;
  return result;
}

uint64_t sub_258831A7C()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F969858 = result;
  unk_27F969860 = v7;
  return result;
}

uint64_t sub_258831BCC()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F969868 = result;
  unk_27F969870 = v7;
  return result;
}

uint64_t sub_258831E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = sub_2588BD858();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v9 = qword_27F95DA88;
  v10 = sub_2588BBAC8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v9;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  *a4 = result;
  *a5 = v14;
  return result;
}

uint64_t sub_258831FBC()
{
  swift_getKeyPath();
  v4 = v0;
  sub_258837A54(&qword_27F95F850, type metadata accessor for Model);
  sub_2588BBB98();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_25883206C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258837A54(&qword_27F95F850, type metadata accessor for Model);
  sub_2588BBB98();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_258832118(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (v6 = *(v2 + 24), (sub_2588BDF98() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258837A54(&qword_27F95F850, type metadata accessor for Model);
    sub_2588BBB88();
  }
}

uint64_t sub_258832278()
{
  swift_getKeyPath();
  sub_258837A54(&qword_27F95F850, type metadata accessor for Model);
  sub_2588BBB98();

  v1 = *(v0 + 24);
  v2 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_2588BBB98();

  return *(v0 + 32);
}

uint64_t sub_258832374()
{
  swift_getKeyPath();
  sub_258837A54(&qword_27F95F850, type metadata accessor for Model);
  sub_2588BBB98();

  return *(v0 + 32);
}

uint64_t sub_258832414@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258837A54(&qword_27F95F850, type metadata accessor for Model);
  sub_2588BBB98();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_2588324BC(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258837A54(&qword_27F95F850, type metadata accessor for Model);
    sub_2588BBB88();
  }

  return result;
}

uint64_t sub_2588325CC()
{
  swift_getKeyPath();
  v4 = v0;
  sub_258837A54(&qword_27F95F850, type metadata accessor for Model);
  sub_2588BBB98();

  v2 = *(v0 + 40);
  v1 = *(v4 + 48);

  return v2;
}

uint64_t sub_25883267C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258837A54(&qword_27F95F850, type metadata accessor for Model);
  sub_2588BBB98();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_258832728(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_258832768(v2, v3);
}

uint64_t sub_258832768(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 40) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 48);
      if (sub_2588BDF98())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258837A54(&qword_27F95F850, type metadata accessor for Model);
    sub_2588BBB88();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_2588328D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
}

uint64_t sub_258832914()
{
  v1 = v0;
  swift_getKeyPath();
  sub_258837A54(&qword_27F95F850, type metadata accessor for Model);
  sub_2588BBB98();

  v3 = *(v0 + 48);
  if (v3)
  {
    v4 = *(v1 + 40);
    v5 = *(v1 + 48);

    result = sub_258832118(v4, v3);
  }

  if (*(v1 + 32) == 1)
  {
    *(v1 + 32) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2588BBB88();
  }

  return result;
}

uint64_t sub_258832A7C()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 6);

  v3 = OBJC_IVAR____TtC11MedicalIDUIP33_D4BBDB7E727832FA87D2B563116D5DE45Model___observationRegistrar;
  v4 = sub_2588BBBD8();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Model()
{
  result = qword_27F95F840;
  if (!qword_27F95F840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258832B7C()
{
  result = sub_2588BBBD8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_258832C3C()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 48);
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
}

uint64_t sub_258832C7C()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 24);
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_258832CE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_258832D30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258832DB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v85 = a1;
  sub_2588360BC();
  v4 = v3;
  v5 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258836EA8();
  v77 = v8;
  v79 = *(v8 - 8);
  v9 = *(v79 + 64);
  MEMORY[0x28223BE20](v8);
  v75 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258836F70();
  v81 = v11;
  v82 = *(v11 - 8);
  v12 = *(v82 + 64);
  MEMORY[0x28223BE20](v11);
  v78 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258837070();
  v83 = v14;
  v84 = *(v14 - 8);
  v15 = *(v84 + 64);
  MEMORY[0x28223BE20](v14);
  v80 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v18 = *(v2 + 80);
  *(v17 + 80) = *(v2 + 64);
  *(v17 + 96) = v18;
  *(v17 + 112) = *(v2 + 96);
  *(v17 + 128) = *(v2 + 112);
  v19 = *(v2 + 16);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v19;
  v20 = *(v2 + 48);
  *(v17 + 48) = *(v2 + 32);
  *(v17 + 64) = v20;
  v21 = swift_allocObject();
  v22 = *(v2 + 80);
  *(v21 + 80) = *(v2 + 64);
  *(v21 + 96) = v22;
  *(v21 + 112) = *(v2 + 96);
  *(v21 + 128) = *(v2 + 112);
  v23 = *(v2 + 16);
  *(v21 + 16) = *v2;
  *(v21 + 32) = v23;
  v24 = *(v2 + 48);
  *(v21 + 48) = *(v2 + 32);
  *(v21 + 64) = v24;
  *v7 = swift_getKeyPath();
  sub_2588377FC(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v25 = v4[13];
  v26 = *MEMORY[0x277CDF988];
  v27 = sub_2588BC1C8();
  (*(*(v27 - 8) + 104))(v7 + v25, v26, v27);
  v28 = (v7 + v4[14]);
  *v28 = sub_2588371A4;
  v28[1] = v17;
  v29 = (v7 + v4[15]);
  *v29 = sub_2588371FC;
  v29[1] = v21;
  v30 = *(v2 + 72);
  v91 = *(v2 + 56);
  v92 = v30;
  sub_258837254(v2, &v88);
  sub_258837254(v2, &v88);
  v31 = MEMORY[0x277D837D0];
  sub_258837860(0, &qword_27F95F990, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0](&v88);
  v91 = v88;
  v32 = swift_allocObject();
  v33 = *(v2 + 80);
  *(v32 + 80) = *(v2 + 64);
  *(v32 + 96) = v33;
  *(v32 + 112) = *(v2 + 96);
  *(v32 + 128) = *(v2 + 112);
  v34 = *(v2 + 16);
  *(v32 + 16) = *v2;
  *(v32 + 32) = v34;
  v35 = *(v2 + 48);
  *(v32 + 48) = *(v2 + 32);
  *(v32 + 64) = v35;
  sub_258837254(v2, &v88);
  v36 = sub_258837A54(&qword_27F95F978, sub_2588360BC);
  v37 = MEMORY[0x277D837F8];
  sub_2588BD108();

  sub_258837A9C(v7, sub_2588360BC);
  v91 = *(v2 + 40);
  v88 = *(v2 + 40);
  sub_2588377FC(0, &qword_27F95F998, type metadata accessor for Model, MEMORY[0x277CE10B8]);
  v76 = v38;
  sub_2588BD2C8();
  v39 = v86;
  swift_getKeyPath();
  *&v88 = v39;
  v74 = sub_258837A54(&qword_27F95F850, type metadata accessor for Model);
  sub_2588BBB98();

  v40 = *(v39 + 16);
  v41 = *(v39 + 24);

  v86 = v40;
  v87 = v41;
  v42 = swift_allocObject();
  v43 = *(v2 + 80);
  *(v42 + 80) = *(v2 + 64);
  *(v42 + 96) = v43;
  *(v42 + 112) = *(v2 + 96);
  *(v42 + 128) = *(v2 + 112);
  v44 = *(v2 + 16);
  *(v42 + 16) = *v2;
  *(v42 + 32) = v44;
  v45 = *(v2 + 48);
  *(v42 + 48) = *(v2 + 32);
  *(v42 + 64) = v45;
  sub_258837254(v2, &v88);
  *&v88 = v4;
  *(&v88 + 1) = v31;
  v89 = v36;
  v90 = v37;
  v46 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v78;
  v49 = v77;
  v50 = v75;
  sub_2588BD108();

  (*(v79 + 8))(v50, v49);
  v88 = *(v2 + 16);
  LOBYTE(v89) = *(v2 + 32);
  v51 = MEMORY[0x277D839B0];
  sub_25883729C(0, &qword_27F95F9A0, MEMORY[0x277D839B0], MEMORY[0x277D839C0], MEMORY[0x277CDD6A0]);
  sub_2588BBE48();
  v52 = swift_allocObject();
  v53 = *(v2 + 80);
  *(v52 + 80) = *(v2 + 64);
  *(v52 + 96) = v53;
  *(v52 + 112) = *(v2 + 96);
  *(v52 + 128) = *(v2 + 112);
  v54 = *(v2 + 16);
  *(v52 + 16) = *v2;
  *(v52 + 32) = v54;
  v55 = *(v2 + 48);
  *(v52 + 48) = *(v2 + 32);
  *(v52 + 64) = v55;
  sub_258837254(v2, &v88);
  *&v88 = v49;
  *(&v88 + 1) = MEMORY[0x277D837D0];
  v89 = OpaqueTypeConformance2;
  v90 = v46;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = MEMORY[0x277D839C8];
  v58 = v80;
  v59 = v81;
  sub_2588BD108();

  (*(v82 + 8))(v48, v59);
  v88 = v91;
  sub_2588BD2C8();
  v60 = v86;
  swift_getKeyPath();
  *&v88 = v60;
  sub_2588BBB98();

  LOBYTE(v50) = *(v60 + 32);

  LOBYTE(v86) = v50;
  v61 = swift_allocObject();
  v62 = *(v2 + 80);
  *(v61 + 80) = *(v2 + 64);
  *(v61 + 96) = v62;
  *(v61 + 112) = *(v2 + 96);
  *(v61 + 128) = *(v2 + 112);
  v63 = *(v2 + 16);
  *(v61 + 16) = *v2;
  *(v61 + 32) = v63;
  v64 = *(v2 + 48);
  *(v61 + 48) = *(v2 + 32);
  *(v61 + 64) = v64;
  sub_258837254(v2, &v88);
  *&v88 = v59;
  *(&v88 + 1) = v51;
  v89 = v56;
  v90 = v57;
  swift_getOpaqueTypeConformance2();
  v65 = v85;
  v66 = v83;
  sub_2588BD108();

  (*(v84 + 8))(v58, v66);
  v67 = swift_allocObject();
  v68 = *(v2 + 80);
  *(v67 + 80) = *(v2 + 64);
  *(v67 + 96) = v68;
  *(v67 + 112) = *(v2 + 96);
  *(v67 + 128) = *(v2 + 112);
  v69 = *(v2 + 16);
  *(v67 + 16) = *v2;
  *(v67 + 32) = v69;
  v70 = *(v2 + 48);
  *(v67 + 48) = *(v2 + 32);
  *(v67 + 64) = v70;
  sub_258837380();
  v72 = (v65 + *(v71 + 36));
  *v72 = sub_258837378;
  v72[1] = v67;
  v72[2] = 0;
  v72[3] = 0;
  return sub_258837254(v2, &v88);
}

uint64_t sub_2588337BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  sub_258836AD0(0);
  v49 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258836B6C(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v44 - v12;
  sub_2588379D0(0, &qword_27F95F9F0, sub_2588362D8, sub_258836AD0, MEMORY[0x277CE0330]);
  v46 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  sub_2588362D8();
  v47 = v17;
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258836290(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v48 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v44 - v25;
  sub_2587DFBD0();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = &v44 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v44 - v32;
  sub_258833E10();
  v51 = *(a1 + 40);
  sub_2588377FC(0, &qword_27F95F998, type metadata accessor for Model, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v34 = sub_258832278();

  if (v34)
  {
    *v20 = sub_2588BC608();
    *(v20 + 1) = 0;
    v20[16] = 1;
    sub_258837790(0, &qword_27F95F9D8, sub_25883636C);
    sub_25883543C(a1, 2, &v20[*(v35 + 44)]);
    sub_258837728(v20, v16, sub_2588362D8);
    swift_storeEnumTagMultiPayload();
    sub_258837A54(&qword_27F95F9C8, sub_2588362D8);
    sub_258837A54(&qword_27F95F9F8, sub_258836AD0);
    sub_2588BC778();
    v36 = sub_2588362D8;
    v37 = v20;
  }

  else
  {
    v38 = v45;
    sub_258833F90(v45);
    sub_258837728(v38, v11, sub_258836B6C);
    *v6 = 0;
    v6[8] = 1;
    sub_258836B04();
    sub_258837728(v11, &v6[*(v39 + 48)], sub_258836B6C);
    sub_258837A9C(v11, sub_258836B6C);
    sub_258837728(v6, v16, sub_258836AD0);
    swift_storeEnumTagMultiPayload();
    sub_258837A54(&qword_27F95F9C8, sub_2588362D8);
    sub_258837A54(&qword_27F95F9F8, sub_258836AD0);
    sub_2588BC778();
    sub_258837A9C(v6, sub_258836AD0);
    v37 = v38;
    v36 = sub_258836B6C;
  }

  sub_258837A9C(v37, v36);
  sub_2588376C4(v33, v31);
  v40 = v48;
  sub_258837728(v26, v48, sub_258836290);
  v41 = v50;
  sub_2588376C4(v31, v50);
  sub_258836270(0);
  sub_258837728(v40, v41 + *(v42 + 48), sub_258836290);
  sub_258837A9C(v26, sub_258836290);
  sub_2588378C0(v33, sub_2587DFBD0);
  sub_258837A9C(v40, sub_258836290);
  return sub_2588378C0(v31, sub_2587DFBD0);
}

void sub_258833E10()
{
  v11 = *v0;
  v12 = v0[1];
  sub_25878F648();

  v1 = MEMORY[0x277D837D0];
  v2 = sub_2588BCDF8();
  v4 = v3;
  v6 = v5 & 1;
  sub_258837860(0, &qword_280C0DDD0, v1, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2588BFF50;
  v8 = v0[14];
  *(v7 + 32) = v0[13];
  *(v7 + 40) = v8;
  *(v7 + 48) = 0x656C746954;
  *(v7 + 56) = 0xE500000000000000;

  v9 = sub_2588BD9A8();

  v10 = HKUIJoinStringsForAutomationIdentifier();

  if (v10)
  {
    sub_2588BD8A8();

    sub_2588BCFB8();

    sub_2587B1CF8(v2, v4, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_258833F90(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = MEMORY[0x277CDF020];
  sub_25883729C(0, &qword_27F95E9D0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v26 - v8;
  sub_258836BB4();
  v27 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = *(v1 + 80);
  *(v15 + 80) = *(v1 + 64);
  *(v15 + 96) = v16;
  *(v15 + 112) = *(v1 + 96);
  *(v15 + 128) = *(v1 + 112);
  v17 = *(v1 + 16);
  *(v15 + 16) = *v1;
  *(v15 + 32) = v17;
  v18 = *(v1 + 48);
  *(v15 + 48) = *(v1 + 32);
  *(v15 + 64) = v18;
  sub_258837254(v1, v29);
  sub_2588BD318();
  v19 = sub_2588366AC(&qword_27F95E9D8, &qword_27F95E9D0, v3);
  v20 = sub_258836CAC();
  sub_2588BCE48();
  (*(v6 + 8))(v9, v5);
  sub_258837860(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2588BFF50;
  v22 = *(v2 + 112);
  *(v21 + 32) = *(v2 + 104);
  *(v21 + 40) = v22;
  *(v21 + 48) = 0x6E6F74747542;
  *(v21 + 56) = 0xE600000000000000;

  v23 = sub_2588BD9A8();

  v24 = HKUIJoinStringsForAutomationIdentifier();

  if (v24)
  {
    sub_2588BD8A8();

    v29[0] = v5;
    v29[1] = &type metadata for NoTapAnimationButtonStyle;
    v29[2] = v19;
    v29[3] = v20;
    swift_getOpaqueTypeConformance2();
    v25 = v27;
    sub_2588BCFB8();

    (*(v11 + 8))(v14, v25);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258834324@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  *a5 = a2();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v9 = a5 + *(a3(0) + 44);
  return a4(a1);
}

uint64_t sub_25883438C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  sub_258836B6C(0);
  v36[3] = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588379D0(0, &qword_27F95F9C0, sub_2588362D8, sub_258836B6C, MEMORY[0x277CE0330]);
  v36[1] = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v36 - v9;
  sub_2588362D8();
  v36[2] = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258836E60(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v36 - v20;
  sub_2587DFBD0();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = v36 - v27;
  sub_258833E10();
  v38 = *(a1 + 40);
  sub_2588377FC(0, &qword_27F95F998, type metadata accessor for Model, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v29 = sub_258832278();

  if (v29)
  {
    *v14 = sub_2588BC608();
    *(v14 + 1) = 0;
    v14[16] = 1;
    sub_258837790(0, &qword_27F95F9D8, sub_25883636C);
    sub_25883543C(a1, 0, &v14[*(v30 + 44)]);
    sub_258837728(v14, v10, sub_2588362D8);
    swift_storeEnumTagMultiPayload();
    sub_258837A54(&qword_27F95F9C8, sub_2588362D8);
    sub_258837570();
    sub_2588BC778();
    v31 = sub_2588362D8;
    v32 = v14;
  }

  else
  {
    sub_258833F90(v6);
    sub_258837728(v6, v10, sub_258836B6C);
    swift_storeEnumTagMultiPayload();
    sub_258837A54(&qword_27F95F9C8, sub_2588362D8);
    sub_258837570();
    sub_2588BC778();
    v31 = sub_258836B6C;
    v32 = v6;
  }

  sub_258837A9C(v32, v31);
  sub_2588376C4(v28, v26);
  sub_258837728(v21, v19, sub_258836E60);
  v33 = v37;
  sub_2588376C4(v26, v37);
  sub_258836DC8(0);
  sub_258837728(v19, v33 + *(v34 + 48), sub_258836E60);
  sub_258837A9C(v21, sub_258836E60);
  sub_2588378C0(v28, sub_2587DFBD0);
  sub_258837A9C(v19, sub_258836E60);
  return sub_2588378C0(v26, sub_2587DFBD0);
}

uint64_t sub_25883488C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  v6 = *(a3 + 40);
  sub_2588377FC(0, &qword_27F95F998, type metadata accessor for Model, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();

  sub_258832118(v3, v4);
}

uint64_t sub_258834928(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 56);
  v7 = *(a3 + 72);
  v4 = *a2;
  v5 = a2[1];
  sub_258837860(0, &qword_27F95F990, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);

  return sub_2588BD438();
}

uint64_t sub_2588349B0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v7 = *(a3 + 40);
  sub_2588377FC(0, &qword_27F95F998, type metadata accessor for Model, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  if (v3 == *(v6 + 32))
  {
    *(v6 + 32) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258837A54(&qword_27F95F850, type metadata accessor for Model);
    sub_2588BBB88();
  }
}

uint64_t sub_258834B20(uint64_t a1)
{
  v4 = *(a1 + 40);
  sub_2588377FC(0, &qword_27F95F998, type metadata accessor for Model, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  swift_getKeyPath();
  sub_258837A54(&qword_27F95F850, type metadata accessor for Model);
  sub_2588BBB98();

  v2 = *(v7 + 32);

  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  sub_25883729C(0, &qword_27F95F9A0, MEMORY[0x277D839B0], MEMORY[0x277D839C0], MEMORY[0x277CDD6A0]);
  return sub_2588BBE58();
}

void sub_258834C70(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2587A82F0();
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25883694C(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 96);
  if (v15)
  {
    v46[0] = v14;
    v46[1] = v5;
    v47 = v8;
    v48 = v11;
    v49 = a1;
    v16 = *(v2 + 88);
    v51 = v12;
    v52[0] = v16;
    v52[1] = v15;
    sub_25878F648();

    v17 = sub_2588BCDF8();
    v19 = v18;
    v21 = v20;
    v52[0] = sub_2588BD158();
    v22 = sub_2588BCD98();
    v24 = v23;
    v26 = v25;
    v50 = v27;
    sub_2587B1CF8(v17, v19, v21 & 1);

    v28 = sub_2588BCBB8();
    sub_2588BBE38();
    v60 = v26 & 1;
    v59 = 0;
    *&v55 = v22;
    *(&v55 + 1) = v24;
    LOBYTE(v56) = v26 & 1;
    *(&v56 + 1) = v50;
    LOBYTE(v57) = v28;
    *(&v57 + 1) = v29;
    *v58 = v30;
    *&v58[8] = v31;
    *&v58[16] = v32;
    v58[24] = 0;
    sub_258837860(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_2588BFF50;
    v34 = *(v2 + 112);
    *(v33 + 32) = *(v2 + 104);
    *(v33 + 40) = v34;
    *(v33 + 48) = 1953066581;
    *(v33 + 56) = 0xE400000000000000;

    v35 = sub_2588BD9A8();

    v36 = HKUIJoinStringsForAutomationIdentifier();

    if (v36)
    {
      sub_2588BD8A8();

      sub_25883729C(0, &qword_27F95D308, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
      sub_2587C4C84();
      v37 = v47;
      sub_2588BCFB8();

      v53[1] = v56;
      v53[2] = v57;
      v54[0] = *v58;
      *(v54 + 9) = *&v58[9];
      v53[0] = v55;
      sub_2587B1E08(v53);
      v38 = swift_allocObject();
      v39 = *(v2 + 80);
      *(v38 + 80) = *(v2 + 64);
      *(v38 + 96) = v39;
      *(v38 + 112) = *(v2 + 96);
      *(v38 + 128) = *(v2 + 112);
      v40 = *(v2 + 16);
      *(v38 + 16) = *v2;
      *(v38 + 32) = v40;
      v41 = *(v2 + 48);
      *(v38 + 48) = *(v2 + 32);
      *(v38 + 64) = v41;
      sub_258837254(v2, v52);
      sub_258836A20();
      v42 = v46[0];
      sub_2588BCED8();

      sub_2588378C0(v37, sub_2587A82F0);
      v44 = v48;
      v43 = v49;
      (*(v51 + 32))(v49, v42, v48);
      (*(v51 + 56))(v43, 0, 1, v44);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v45 = *(v12 + 56);

    v45(a1, 1, 1);
  }
}

uint64_t sub_2588350F4(uint64_t a1)
{
  v4 = *(a1 + 40);
  sub_2588377FC(0, &qword_27F95F998, type metadata accessor for Model, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  if (*(v3 + 32) == 1)
  {
    *(v3 + 32) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258837A54(&qword_27F95F850, type metadata accessor for Model);
    sub_2588BBB88();
  }
}

uint64_t sub_258835264(uint64_t a1)
{
  v2 = *(a1 + 40);
  sub_2588377FC(0, &qword_27F95F998, type metadata accessor for Model, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_258832914();
}

uint64_t sub_2588352E4@<X0>(uint64_t a1@<X8>)
{
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BCDE8();
  v5 = v4;
  v7 = v6;
  sub_2588BD158();
  v8 = sub_2588BCD98();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_2587B1CF8(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

void sub_25883543C(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v70 = a3;
  sub_258836918(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v72 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = v65 - v8;
  v82 = sub_2588BBF78();
  v81 = *(v82 - 8);
  v9 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v80 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x277CDF198];
  sub_25883729C(0, &qword_27F95F8C0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF198]);
  v78 = v11;
  v79 = *(v11 - 8);
  v12 = *(v79 + 64);
  MEMORY[0x28223BE20](v11);
  v76 = v65 - v13;
  sub_2588364A8();
  v75 = v14;
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258836460(0);
  v67 = v18;
  v66 = *(v18 - 8);
  v19 = *(v66 + 64);
  MEMORY[0x28223BE20](v18);
  v74 = v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258836418(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v69 = v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v68 = v65 - v25;
  v26 = *(a1 + 8);
  v73 = *a1;
  v90 = *(a1 + 40);
  v88 = *(a1 + 40);
  sub_2588377FC(0, &qword_27F95F998, type metadata accessor for Model, MEMORY[0x277CE10B8]);
  v28 = v27;

  v65[1] = v28;
  sub_2588BD2E8();
  v29 = v84;
  v30 = v85;
  swift_getKeyPath();
  v88 = v29;
  v89 = v30;
  sub_2588377FC(0, &qword_27F95F9E0, type metadata accessor for Model, MEMORY[0x277CE11F8]);
  sub_2588BD448();

  v31 = v75;

  v86 = v73;
  v87 = v26;
  sub_25878F648();
  v32 = MEMORY[0x277D837D0];
  v33 = v76;
  v34 = v74;
  sub_2588BD628();
  v84 = *(a1 + 16);
  LOBYTE(v85) = *(a1 + 32);
  sub_25883729C(0, &qword_27F95F9A0, MEMORY[0x277D839B0], MEMORY[0x277D839C0], MEMORY[0x277CDD6A0]);
  sub_2588BBE68();
  sub_2588366AC(&qword_27F95F8C8, &qword_27F95F8C0, v77);
  v35 = v78;
  sub_2588BD098();

  (*(v79 + 8))(v33, v35);
  v36 = sub_2588BD158();
  sub_258836534();
  *&v17[*(v37 + 36)] = v36;
  KeyPath = swift_getKeyPath();
  v39 = &v17[*(v31 + 36)];
  *v39 = KeyPath;
  v39[8] = v83;
  v40 = v80;
  sub_2588BBF68();
  v41 = sub_258836704();
  sub_2588BCE98();
  (*(v81 + 8))(v40, v82);
  sub_258837A9C(v17, sub_2588364A8);
  sub_258837860(0, &qword_280C0DDD0, v32, MEMORY[0x277D84560]);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_2588BFF50;
  v43 = *(a1 + 112);
  v82 = *(a1 + 104);
  *(v42 + 32) = v82;
  *(v42 + 40) = v43;
  *(v42 + 48) = 0x65756C6156;
  *(v42 + 56) = 0xE500000000000000;
  v81 = v43;
  swift_bridgeObjectRetain_n();
  v44 = sub_2588BD9A8();

  v45 = HKUIJoinStringsForAutomationIdentifier();

  if (v45)
  {
    sub_2588BD8A8();

    *&v84 = v31;
    *(&v84 + 1) = v41;
    swift_getOpaqueTypeConformance2();
    v46 = v68;
    v47 = v67;
    sub_2588BCFB8();

    (*(v66 + 8))(v34, v47);
    v48 = v71;
    sub_258834C70(v71);
    v49 = *(a1 + 72);
    v84 = *(a1 + 56);
    v85 = v49;
    sub_258837860(0, &qword_27F95F990, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
    MEMORY[0x259C8C5A0](&v88);
    v50 = v88;

    v51 = HIBYTE(*(&v50 + 1)) & 0xFLL;
    if ((*(&v50 + 1) & 0x2000000000000000) == 0)
    {
      v51 = v50 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v80) = v51 == 0;
    v84 = v90;
    sub_2588BD2C8();
    v52 = v88;
    swift_getKeyPath();
    *&v84 = v52;
    sub_258837A54(&qword_27F95F850, type metadata accessor for Model);
    sub_2588BBB98();

    v53 = *(v52 + 32);

    v54 = swift_allocObject();
    v55 = *(a1 + 80);
    *(v54 + 80) = *(a1 + 64);
    *(v54 + 96) = v55;
    *(v54 + 112) = *(a1 + 96);
    *(v54 + 128) = *(a1 + 112);
    v56 = *(a1 + 16);
    *(v54 + 16) = *a1;
    *(v54 + 32) = v56;
    v57 = *(a1 + 48);
    *(v54 + 48) = *(a1 + 32);
    *(v54 + 64) = v57;
    v58 = v69;
    sub_258837728(v46, v69, sub_258836418);
    v59 = v72;
    sub_258837728(v48, v72, sub_258836918);
    v60 = v70;
    sub_258837728(v58, v70, sub_258836418);
    sub_2588363A0();
    v62 = v61;
    sub_258837728(v59, v60 + *(v61 + 48), sub_258836918);
    v63 = v60 + *(v62 + 64);
    *v63 = v80;
    *(v63 + 1) = v53;
    *(v63 + 2) = v83;
    v64 = v81;
    *(v63 + 8) = v82;
    *(v63 + 16) = v64;
    *(v63 + 24) = sub_2588378B0;
    *(v63 + 32) = v54;
    sub_258837254(a1, &v84);

    sub_258837A9C(v48, sub_258836918);
    sub_258837A9C(v46, sub_258836418);

    sub_258837A9C(v59, sub_258836918);
    sub_258837A9C(v58, sub_258836418);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258835EEC(uint64_t a1)
{
  v4 = *(a1 + 40);
  sub_2588377FC(0, &qword_27F95F998, type metadata accessor for Model, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_258832118(0, 0xE000000000000000);
  if (*(v3 + 32) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258837A54(&qword_27F95F850, type metadata accessor for Model);
    sub_2588BBB88();
  }

  else
  {
    *(v3 + 32) = 0;
  }
}

uint64_t sub_258836068@<X0>(uint64_t a1@<X8>)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + 14);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_258832DB8(a1);
}

void sub_2588360BC()
{
  if (!qword_27F95F858)
  {
    sub_2588361A8();
    sub_258836D00();
    sub_258837A54(&qword_27F95F960, sub_2588361A8);
    sub_258837A54(&qword_27F95F968, sub_258836D00);
    v0 = type metadata accessor for MedicalIDAXLayoutView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F858);
    }
  }
}

void sub_2588361A8()
{
  if (!qword_27F95F860)
  {
    sub_25883623C(255);
    sub_258837A54(&qword_27F95F930, sub_25883623C);
    v0 = sub_2588BD368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F860);
    }
  }
}

void sub_2588362D8()
{
  if (!qword_27F95F880)
  {
    sub_25883636C(255);
    sub_258837A54(&qword_27F95F900, sub_25883636C);
    v0 = sub_2588BD368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F880);
    }
  }
}

void sub_2588363A0()
{
  if (!qword_27F95F890)
  {
    sub_258836418(255);
    sub_258836918(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95F890);
    }
  }
}

void sub_2588364A8()
{
  if (!qword_27F95F8A8)
  {
    sub_258836534();
    sub_258837860(255, &qword_27F95E5B8, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F8A8);
    }
  }
}

void sub_258836534()
{
  if (!qword_27F95F8B0)
  {
    sub_2588365C8();
    sub_25883729C(255, &qword_27F95D950, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F8B0);
    }
  }
}

void sub_2588365C8()
{
  if (!qword_27F95F8B8)
  {
    v0 = MEMORY[0x277CDF198];
    sub_25883729C(255, &qword_27F95F8C0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF198]);
    sub_2588366AC(&qword_27F95F8C8, &qword_27F95F8C0, v0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F8B8);
    }
  }
}

uint64_t sub_2588366AC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_25883729C(255, a2, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258836704()
{
  result = qword_27F95F8D0;
  if (!qword_27F95F8D0)
  {
    sub_2588364A8();
    sub_258836784();
    sub_2587E64EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F8D0);
  }

  return result;
}

unint64_t sub_258836784()
{
  result = qword_27F95F8D8;
  if (!qword_27F95F8D8)
  {
    sub_258836534();
    v1 = MEMORY[0x277CDF198];
    sub_25883729C(255, &qword_27F95F8C0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF198]);
    sub_2588366AC(&qword_27F95F8C8, &qword_27F95F8C0, v1);
    swift_getOpaqueTypeConformance2();
    sub_258836894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F8D8);
  }

  return result;
}

unint64_t sub_258836894()
{
  result = qword_27F95F8E0;
  if (!qword_27F95F8E0)
  {
    sub_25883729C(255, &qword_27F95D950, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F8E0);
  }

  return result;
}

void sub_258836994(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_258836A20()
{
  result = qword_27F95F8F8;
  if (!qword_27F95F8F8)
  {
    sub_2587A82F0();
    sub_2587C4C84();
    sub_258837A54(&qword_27F95D9D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F8F8);
  }

  return result;
}

void sub_258836B04()
{
  if (!qword_27F95F910)
  {
    sub_258836B6C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95F910);
    }
  }
}

void sub_258836BB4()
{
  if (!qword_27F95F920)
  {
    v0 = MEMORY[0x277CDF020];
    sub_25883729C(255, &qword_27F95E9D0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    sub_2588366AC(&qword_27F95E9D8, &qword_27F95E9D0, v0);
    sub_258836CAC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F920);
    }
  }
}

unint64_t sub_258836CAC()
{
  result = qword_27F95F928;
  if (!qword_27F95F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F928);
  }

  return result;
}

void sub_258836D00()
{
  if (!qword_27F95F938)
  {
    sub_258836D94(255);
    sub_258837A54(&qword_27F95F958, sub_258836D94);
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F938);
    }
  }
}

void sub_258836DE8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_2587DFBD0();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_258836EA8()
{
  if (!qword_27F95F970)
  {
    sub_2588360BC();
    sub_258837A54(&qword_27F95F978, sub_2588360BC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F970);
    }
  }
}

void sub_258836F70()
{
  if (!qword_27F95F980)
  {
    sub_258836EA8();
    sub_2588360BC();
    sub_258837A54(&qword_27F95F978, sub_2588360BC);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F980);
    }
  }
}

void sub_258837070()
{
  if (!qword_27F95F988)
  {
    sub_258836F70();
    sub_258836EA8();
    sub_2588360BC();
    sub_258837A54(&qword_27F95F978, sub_2588360BC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F988);
    }
  }
}

void sub_25883729C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2588372F8(uint64_t a1, char *a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  v4 = *a2;
  sub_25883729C(0, &qword_27F95F9A0, MEMORY[0x277D839B0], MEMORY[0x277D839C0], MEMORY[0x277CDD6A0]);
  return sub_2588BBE58();
}

void sub_258837380()
{
  if (!qword_27F95F9A8)
  {
    sub_2588373E0();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F9A8);
    }
  }
}

void sub_2588373E0()
{
  if (!qword_27F95F9B0)
  {
    sub_258837070();
    sub_258836F70();
    sub_258836EA8();
    sub_2588360BC();
    sub_258837A54(&qword_27F95F978, sub_2588360BC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F9B0);
    }
  }
}

unint64_t sub_258837570()
{
  result = qword_27F95F9D0;
  if (!qword_27F95F9D0)
  {
    sub_258836B6C(255);
    v1 = MEMORY[0x277CDF020];
    sub_25883729C(255, &qword_27F95E9D0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    sub_2588366AC(&qword_27F95E9D8, &qword_27F95E9D0, v1);
    sub_258836CAC();
    swift_getOpaqueTypeConformance2();
    sub_258837A54(&qword_27F95D9D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F9D0);
  }

  return result;
}

uint64_t sub_2588376C4(uint64_t a1, uint64_t a2)
{
  sub_2587DFBD0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258837728(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258837790(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC0B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2588377FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258837860(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2588378C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_18()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[10];

  v7 = v0[12];

  v8 = v0[14];

  v9 = v0[16];

  return swift_deallocObject();
}

void sub_2588379D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_258837A54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258837A9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_258837AFC()
{
  result = qword_27F95FA00;
  if (!qword_27F95FA00)
  {
    sub_258837380();
    sub_258837070();
    sub_258836F70();
    sub_258836EA8();
    sub_2588360BC();
    sub_258837A54(&qword_27F95F978, sub_2588360BC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FA00);
  }

  return result;
}

uint64_t sub_258837CCC(uint64_t a1)
{
  v2 = sub_2588BCB08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_258837E84();
  v6 = v5;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BCAE8();
  v9[*(v6 + 36)] = 0;
  (*(v3 + 16))(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_258837FA4();
  sub_2588BCED8();

  return sub_2588380CC(v9);
}

void sub_258837E84()
{
  if (!qword_27F95FA08)
  {
    sub_2588BCAD8();
    sub_258837EEC();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FA08);
    }
  }
}

void sub_258837EEC()
{
  if (!qword_27F95FA10)
  {
    sub_2587A7B40();
    v0 = sub_2588BC898();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FA10);
    }
  }
}

uint64_t sub_258837F48()
{
  v1 = *(sub_2588BCB08() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_2588BCAF8();
}

unint64_t sub_258837FA4()
{
  result = qword_27F95FA18;
  if (!qword_27F95FA18)
  {
    sub_258837E84();
    sub_258838084(&qword_27F95FA20, MEMORY[0x277CDE500]);
    sub_258838084(qword_27F95FA28, sub_258837EEC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FA18);
  }

  return result;
}

uint64_t sub_258838084(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2588380CC(uint64_t a1)
{
  sub_258837E84();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258838128(uint64_t a1)
{
  sub_25883A2CC(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v2 <= 0x3F)
  {
    sub_2587B2F78();
    if (v3 <= 0x3F)
    {
      sub_2587FC3C4();
      if (v4 <= 0x3F)
      {
        v5 = *(a1 + 16);
        swift_checkMetadataState();
        if (v6 <= 0x3F)
        {
          sub_25883A58C(319, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_258838254(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_2588BC038() - 8) + 64);
  v7 = 8;
  v8 = *(*(a3 + 16) - 8);
  if (v6 > 8)
  {
    v7 = v6;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((v11 + ((v10 + (((((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 72) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v12 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v20 = v18 - 1;
    if (v14)
    {
      v20 = 0;
      v21 = *a1;
    }

    else
    {
      v21 = 0;
    }

    return v12 + (v21 | v20) + 1;
  }

  if (v17)
  {
    v18 = *(a1 + v13);
    if (v18)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  v22 = (a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8;
  if ((v9 & 0x80000000) != 0)
  {
    v24 = *(*(*(a3 + 16) - 8) + 48);

    return v24((((((v22 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 72) & ~v10);
  }

  else
  {
    v23 = *(v22 + 8);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }
}

void sub_258838444(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_2588BC038() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = ((*(v10 + 64) + ((v12 + (((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 72) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v17 = 0;
    v18 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((*(v10 + 64) + ((v12 + (((((v9 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 72) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a3 - v13 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(a1 + v14) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v14) = 0;
      }

      else if (v17)
      {
        *(a1 + v14) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v21 = ((a1 + v9 + 8) & 0xFFFFFFFFFFFFFFF8);
      if ((v11 & 0x80000000) != 0)
      {
        v22 = *(v10 + 56);

        v22((((((v21 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 72) & ~v12, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *v21 = a2 & 0x7FFFFFFF;
        v21[1] = 0;
      }

      else
      {
        v21[1] = (a2 - 1);
      }

      return;
    }
  }

  if (((*(v10 + 64) + ((v12 + (((((v9 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 72) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((*(v10 + 64) + ((v12 + (((((v9 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 72) & ~v12) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v20 = ~v13 + a2;
    bzero(a1, v14);
    *a1 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(a1 + v14) = v19;
    }

    else
    {
      *(a1 + v14) = v19;
    }
  }

  else if (v17)
  {
    *(a1 + v14) = v19;
  }
}

uint64_t sub_2588386D8(__int128 *a1, uint64_t a2)
{
  v3 = v2 + *(a2 + 44);
  v4 = *(v3 + 16);
  v5 = *(v3 + 48);
  v18 = *(v3 + 32);
  v19 = v5;
  v6 = *(v3 + 16);
  v17[0] = *v3;
  v17[1] = v6;
  v14 = v18;
  v15 = *(v3 + 48);
  v7 = *(a1 + 6);
  v20 = *(v3 + 64);
  v16 = *(v3 + 64);
  v12 = v17[0];
  v13 = v4;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  sub_25883A888(v17, v21);
  sub_2587FC3C4();
  sub_2588BD438();
  v21[2] = v14;
  v21[3] = v15;
  v22 = v16;
  v21[0] = v12;
  v21[1] = v13;
  return sub_2587FC9FC(v21);
}

uint64_t sub_258838794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  sub_2588BC138();
  v57 = a1;
  v3 = *(a1 + 24);
  *&v76 = *(a1 + 16);
  v51 = v3;
  v52 = v76;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_25883A2CC(255, &qword_27F95FAB0, sub_25883A330, MEMORY[0x277CDDF58]);
  v6 = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v8 = sub_25883A504();
  v47 = swift_getOpaqueTypeMetadata2();
  *&v76 = OpaqueTypeMetadata2;
  *(&v76 + 1) = v6;
  *&v77 = OpaqueTypeConformance2;
  *(&v77 + 1) = v8;
  swift_getOpaqueTypeConformance2();
  v9 = sub_2588BC208();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  WitnessTable = swift_getWitnessTable();
  *&v76 = v9;
  *(&v76 + 1) = WitnessTable;
  v48 = MEMORY[0x277CDECD0];
  v14 = swift_getOpaqueTypeMetadata2();
  v50 = *(v14 - 8);
  v15 = *(v50 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  sub_25883A58C(255, &qword_27F95FAE0, MEMORY[0x277D839B0], MEMORY[0x277CE0898]);
  v18 = sub_2588BC1E8();
  v54 = *(v18 - 8);
  v19 = *(v54 + 64);
  MEMORY[0x28223BE20](v18);
  v45 = &v45 - v20;
  v21 = sub_2588BC1E8();
  v55 = *(v21 - 8);
  v22 = *(v55 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v49 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v53 = &v45 - v25;
  v59 = v52;
  v60 = v51;
  v26 = v56;
  v61 = v56;
  sub_2588BC1F8();
  v27 = WitnessTable;
  sub_2588BCFD8();
  (*(v10 + 8))(v13, v9);
  v28 = v57;
  v29 = (v26 + *(v57 + 52));
  v30 = *v29;
  v31 = *(v29 + 1);
  LOBYTE(v76) = v30;
  *(&v76 + 1) = v31;
  sub_25883A58C(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  *&v76 = v9;
  *(&v76 + 1) = v27;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v45;
  sub_2588BD0E8();
  (*(v50 + 8))(v17, v14);
  v34 = (v26 + *(v28 + 44));
  v35 = v34[3];
  v78 = v34[2];
  v79 = v35;
  v80 = *(v34 + 8);
  v36 = v34[1];
  v76 = *v34;
  v77 = v36;
  sub_2587FC3C4();
  sub_2588BD458();
  v68 = v73;
  v69 = v74;
  v70 = v75;
  v66 = v71;
  v67 = v72;
  v37 = sub_25883A5E8();
  v64 = v32;
  v65 = v37;
  v38 = swift_getWitnessTable();
  v39 = v49;
  sub_2587FCA58(&v66, v18, v38);
  v78 = v68;
  v79 = v69;
  v80 = v70;
  v76 = v66;
  v77 = v67;
  sub_2587FC9FC(&v76);
  (*(v54 + 8))(v33, v18);
  v40 = sub_2587FC5B8();
  v62 = v38;
  v63 = v40;
  v41 = swift_getWitnessTable();
  v42 = v53;
  sub_2587DCF7C(v39, v21, v41);
  v43 = *(v55 + 8);
  v43(v39, v21);
  sub_2587DCF7C(v42, v21, v41);
  return (v43)(v42, v21);
}

uint64_t sub_258838DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a1;
  v45 = a4;
  v6 = sub_2588BC5E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2;
  v50 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = OpaqueTypeMetadata2;
  v43 = *(OpaqueTypeMetadata2 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v40 = v35 - v13;
  sub_25883A2CC(255, &qword_27F95FAB0, sub_25883A330, MEMORY[0x277CDDF58]);
  v15 = v14;
  v35[1] = v14;
  v49 = a2;
  v50 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = OpaqueTypeConformance2;
  v37 = sub_25883A504();
  v49 = OpaqueTypeMetadata2;
  v50 = v15;
  v51 = OpaqueTypeConformance2;
  v52 = v37;
  v41 = MEMORY[0x277CDEEF8];
  v17 = swift_getOpaqueTypeMetadata2();
  v42 = *(v17 - 8);
  v18 = *(v42 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v36 = v35 - v22;
  v23 = a2;
  LODWORD(a2) = *(type metadata accessor for MedicalIDEditModal() + 48);
  v24 = v6;
  (*(v7 + 104))(v10, *MEMORY[0x277CDDDC0], v6);
  v25 = v44;
  v26 = v40;
  sub_2588BD008();
  (*(v7 + 8))(v10, v24);
  v46 = v23;
  v47 = a3;
  v48 = v25;
  v27 = swift_checkMetadataState();
  v28 = v38;
  v29 = v39;
  v30 = v37;
  sub_2588BD0B8();
  (*(v43 + 8))(v26, v29);
  v49 = v29;
  v50 = v27;
  v51 = v28;
  v52 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v36;
  sub_2587DCF7C(v21, v17, v31);
  v33 = *(v42 + 8);
  v33(v21, v17);
  sub_2587DCF7C(v32, v17, v31);
  return (v33)(v32, v17);
}

uint64_t sub_2588391CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  sub_25883A330();
  v8 = v7;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25883A41C();
  v43 = *(v11 - 8);
  v44 = v11;
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11);
  v40 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25883A3B8();
  v42 = v14;
  v41 = *(v14 - 8);
  v15 = *(v41 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2588BC828();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  sub_2587E2184();
  v39 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BC7F8();
  v52 = a2;
  v53 = a3;
  v54 = a1;
  sub_2588BD748();
  sub_25883A4BC(&qword_27F95E458, MEMORY[0x277D126A0]);
  v37 = v24;
  sub_2588BBF88();
  sub_2588BC818();
  v49 = a2;
  v50 = a3;
  v51 = a1;
  v36 = v17;
  sub_2588BBF88();
  sub_2588BC808();
  v46 = a2;
  v47 = a3;
  v48 = a1;
  sub_2588BD728();
  sub_25883A4BC(&qword_27F95FAD0, MEMORY[0x277D12688]);
  v25 = v40;
  sub_2588BBF88();
  v26 = *(v8 + 48);
  v27 = *(v8 + 64);
  v28 = v38;
  v29 = v39;
  (*(v21 + 16))(v38, v24, v39);
  v30 = v41;
  v31 = v17;
  v32 = v42;
  (*(v41 + 16))(&v28[v26], v31, v42);
  v34 = v43;
  v33 = v44;
  (*(v43 + 16))(&v28[v27], v25, v44);
  sub_2588BC718();
  (*(v34 + 8))(v25, v33);
  (*(v30 + 8))(v36, v32);
  return (*(v21 + 8))(v37, v29);
}

uint64_t sub_25883966C(uint64_t a1)
{
  v2 = sub_2588BC598();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25883A2CC(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - v9);
  v11 = sub_2588BC038();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25883AB58(a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v16 = *v10;
    sub_2588BDBE8();
    v17 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_2588BC028();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_2588398F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MedicalIDEditModal() + 36));
  v17 = *v3;
  v18 = v3[1];
  sub_25878F648();

  v4 = sub_2588BCDF8();
  v6 = v5;
  v8 = v7;
  v9 = sub_2588BCDC8();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_2587B1CF8(v4, v6, v8 & 1);

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_2588399D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v19 = a6;
  v10 = type metadata accessor for MedicalIDEditModal();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  (*(v11 + 32))(v16 + v15, v14, v10);
  return v19(a5, v16);
}

uint64_t sub_258839B20(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25883A2CC(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_2588BDAA8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v3 + 16))(v5, v1, a1);
  sub_2588BDA78();
  v11 = sub_2588BDA68();
  v12 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  *(v13 + 32) = *(a1 + 16);
  (*(v3 + 32))(v13 + v12, v5, a1);
  sub_2587ABD24(0, 0, v9, &unk_2588C4B80, v13);
}

uint64_t sub_258839D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  sub_2588BDA78();
  v6[15] = sub_2588BDA68();
  v8 = sub_2588BDA28();
  v6[16] = v8;
  v6[17] = v7;

  return MEMORY[0x2822009F8](sub_258839DC8, v8, v7);
}

uint64_t sub_258839DC8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = type metadata accessor for MedicalIDEditModal();
  *(v0 + 144) = v4;
  v5 = (v3 + *(v4 + 52));
  v6 = *v5;
  v7 = *(v5 + 1);
  *(v0 + 72) = v6;
  *(v0 + 80) = v7;
  *(v0 + 168) = 1;
  sub_25883A58C(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2D8();
  v8 = (v3 + *(v4 + 40));
  v9 = v8[1];
  v13 = (*v8 + **v8);
  v10 = (*v8)[1];
  v11 = swift_task_alloc();
  *(v0 + 152) = v11;
  *v11 = v0;
  v11[1] = sub_258839F3C;

  return v13();
}

uint64_t sub_258839F3C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_25883A0E4;
  }

  else
  {
    v7 = sub_25883A078;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25883A078()
{
  v1 = v0[15];

  v2 = v0[13];
  v3 = v0[14];
  sub_25883A240(v0[12]);
  v4 = v0[1];

  return v4();
}

uint64_t sub_25883A0E4()
{
  v23 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);

  *(v0 + 88) = v1;
  v3 = v1;
  sub_25878D8F4();
  v4 = swift_dynamicCast();
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);
  v7 = *(v0 + 96);
  if (v4)
  {

    v8 = *(v0 + 24);
    v9 = *(v0 + 48);
    *&v19 = *(v0 + 16);
    *(&v19 + 1) = v8;
    v20 = *(v0 + 32);
    v21 = v9;
    v22 = *(v0 + 56);
    sub_2588386D8(&v19, v6);
    v10 = *(v0 + 88);
  }

  else
  {

    v11 = v5;
    sub_25889C124(v5, v16);

    v19 = v16[0];
    v20 = v16[1];
    v21 = v17;
    v22 = v18;
    sub_2588386D8(&v19, v6);
    v10 = v5;
  }

  v12 = *(v0 + 104);
  v13 = *(v0 + 112);
  sub_25883A240(*(v0 + 96));
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_25883A240(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MedicalIDEditModal() + 52));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_25883A58C(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_2588BD2D8();
}

void sub_25883A2CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25883A330()
{
  if (!qword_27F95FAB8)
  {
    sub_2587E2184();
    sub_25883A3B8();
    sub_25883A41C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95FAB8);
    }
  }
}

void sub_25883A3B8()
{
  if (!qword_27F95FAC0)
  {
    v0 = sub_2588BBF98();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FAC0);
    }
  }
}

void sub_25883A41C()
{
  if (!qword_27F95FAC8)
  {
    sub_2588BD728();
    sub_25883A4BC(&qword_27F95FAD0, MEMORY[0x277D12688]);
    v0 = sub_2588BBF98();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FAC8);
    }
  }
}

uint64_t sub_25883A4BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25883A504()
{
  result = qword_27F95FAD8;
  if (!qword_27F95FAD8)
  {
    sub_25883A2CC(255, &qword_27F95FAB0, sub_25883A330, MEMORY[0x277CDDF58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FAD8);
  }

  return result;
}

void sub_25883A58C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_25883A5E8()
{
  result = qword_27F95FAE8;
  if (!qword_27F95FAE8)
  {
    sub_25883A58C(255, &qword_27F95FAE0, MEMORY[0x277D839B0], MEMORY[0x277CE0898]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FAE8);
  }

  return result;
}

uint64_t sub_25883A6C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_2588398F8(v1[4], a1);
}

uint64_t sub_25883A71C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for MedicalIDEditModal();
  v4 = v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
  return sub_258839B20(v3);
}

uint64_t sub_25883A77C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for MedicalIDEditModal() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2587AE310;

  return sub_258839D2C(a1, v8, v9, v1 + v7, v4, v5);
}

uint64_t sub_25883A888(uint64_t a1, uint64_t a2)
{
  sub_2587FC3C4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_19()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for MedicalIDEditModal();
  v4 = (*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = (v0 + v4);
  sub_25883A2CC(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2588BC038();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *&v6[v3[9] + 8];

  v10 = *&v6[v3[10] + 8];

  v11 = &v6[v3[11]];
  v12 = *v11;

  v13 = *(v11 + 1);

  if (*(v11 + 3))
  {

    v14 = *(v11 + 5);

    v15 = *(v11 + 6);

    v16 = *(v11 + 8);
  }

  (*(*(v2 - 8) + 8))(&v6[v3[12]], v2);
  v17 = *&v6[v3[13] + 8];

  return swift_deallocObject();
}

uint64_t sub_25883AAD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for MedicalIDEditModal() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_25883966C(v4);
}

uint64_t sub_25883AB58(uint64_t a1, uint64_t a2)
{
  sub_25883A2CC(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25883AC34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25883AC98()
{
  if (!qword_27F95F428)
  {
    sub_25878E130(255, &qword_27F95F430, 0x277CCAE28);
    v0 = sub_2588BB6D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F428);
    }
  }
}

uint64_t type metadata accessor for EditWeightCellView()
{
  result = qword_27F95FAF8;
  if (!qword_27F95FAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25883AD60()
{
  type metadata accessor for MedicalIDBiometricsViewModel();
  if (v0 <= 0x3F)
  {
    sub_25883AC34(319, &qword_27F95FAF0, sub_25883AC00, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for HealthDemographicDataProvider();
      if (v2 <= 0x3F)
      {
        sub_25883C738(319, &qword_27F95FB08, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_25883AC34(319, &qword_27F95DAC0, MEMORY[0x28220C1A8], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_2587BC234();
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

uint64_t sub_25883AED8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BC598();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for EditWeightCellView() + 36);
  sub_25883AC34(0, &qword_27F95DB20, MEMORY[0x28220C1A8], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_25883CF5C(v1 + v8, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2588BBAC8();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_2588BDBE8();
    v16 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_25883B0E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v125 = a1;
  v3 = sub_2588BC178();
  v126 = *(v3 - 8);
  v127 = v3;
  v4 = *(v126 + 64);
  MEMORY[0x28223BE20](v3);
  v124 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EditWeightCellView();
  v113 = *(v6 - 1);
  v7 = *(v113 + 64);
  MEMORY[0x28223BE20](v6);
  v131 = v8;
  v123 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25883C328();
  v114 = v9;
  v128 = *(v9 - 8);
  v10 = *(v128 + 8);
  MEMORY[0x28223BE20](v9);
  v112 = (&v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25883C3FC();
  v118 = v12;
  v116 = *(v12 - 8);
  v13 = *(v116 + 64);
  MEMORY[0x28223BE20](v12);
  v115 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25883C4AC();
  v121 = *(v15 - 8);
  v122 = v15;
  v16 = *(v121 + 64);
  MEMORY[0x28223BE20](v15);
  v120 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25883C5EC();
  v119 = v18;
  v117 = *(v18 - 8);
  v19 = *(v117 + 64);
  MEMORY[0x28223BE20](v18);
  v129 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F95D120 != -1)
  {
    swift_once();
  }

  v21 = 0x746867696557;
  v22 = qword_27F9698A0;
  v130 = qword_27F969898;
  sub_25883C738(0, &qword_280C0DDD0, MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  v100 = xmmword_2588BFF50;
  *(v23 + 16) = xmmword_2588BFF50;
  v24 = v1[1];
  *(v23 + 32) = *v1;
  *(v23 + 40) = v24;
  v25 = 0xE600000000000000;
  *(v23 + 48) = 0x746867696557;
  *(v23 + 56) = 0xE600000000000000;

  v26 = sub_2588BD9A8();

  v27 = HKUIJoinStringsForAutomationIdentifier();

  if (v27)
  {
    v21 = sub_2588BD8A8();
    v25 = v28;
  }

  v29 = (v2 + v6[8]);
  v30 = *v29;
  v31 = v29[1];
  v32 = v29[2];
  v110 = v31;
  v111 = v30;
  *&v133 = v30;
  *(&v133 + 1) = v31;
  v109 = v32;
  *&v134 = v32;
  sub_25883C738(0, &qword_27F95FB08, MEMORY[0x277CE10B8]);
  v108 = v33;
  sub_2588BD2E8();
  v106 = *(&v141 + 1);
  v107 = v141;
  v103 = *(&v142 + 1);
  v104 = v142;
  v34 = type metadata accessor for MedicalIDBiometricsViewModel();
  v35 = sub_25884DC0C(v2 + *(v34 + 32), 1);
  v36 = sub_25884D888();
  v37 = [v35 stringFromUnit_];

  v38 = sub_2588BD8A8();
  v101 = v39;
  v102 = v38;

  v40 = v2 + v6[10];
  if (*v40)
  {
    v41 = *(v2 + v6[6]);
    v42 = *v40;
    v132 = v2;
    v43 = sub_25888B21C(v42, v41);
    v98 = v44;
    v99 = v43;

    v45 = sub_2588BBE78();
    v97 = v46;
    v48 = v47;
    v49 = swift_allocObject();
    *(v49 + 16) = v100;
    *(v49 + 32) = v21;
    *(v49 + 40) = v25;
    *(v49 + 48) = v130;
    *(v49 + 56) = v22;

    v50 = sub_2588BD9A8();

    v51 = HKUIJoinStringsForAutomationIdentifier();

    v105 = v22;
    if (v51)
    {
      *&v100 = sub_2588BD8A8();
      v53 = v52;
    }

    else
    {
      *&v100 = v21;
      v53 = v25;
    }

    v95 = v45 & 1;
    v96 = v48 & 1;
    v54 = v106;
    v55 = v107;
    *&v141 = v107;
    *(&v141 + 1) = v106;
    v56 = v103;
    v57 = v104;
    *&v142 = v104;
    *(&v142 + 1) = v103;
    sub_25883C738(0, &qword_27F95F990, MEMORY[0x277CE11F8]);
    MEMORY[0x259C8C5A0](&v133);
    v58 = v133;
    v59 = type metadata accessor for Model();
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    v62 = swift_allocObject();
    *(v62 + 32) = 0;
    *(v62 + 40) = 0;
    *(v62 + 48) = 0;
    sub_2588BBBC8();
    *(v62 + 16) = v58;
    sub_258832768(v99, v98);
    *&v141 = v130;
    *(&v141 + 1) = v105;
    LOBYTE(v142) = v95;
    *(&v142 + 1) = v150[0];
    DWORD1(v142) = *(v150 + 3);
    *(&v142 + 1) = v97;
    LOBYTE(v143) = v96;
    *(&v143 + 1) = *v149;
    DWORD1(v143) = *&v149[3];
    *(&v143 + 1) = v62;
    *&v144 = 0;
    *(&v144 + 1) = v55;
    *&v145 = v54;
    *(&v145 + 1) = v57;
    *&v146 = v56;
    *(&v146 + 1) = v102;
    *&v147 = v101;
    *(&v147 + 1) = v100;
    v148 = v53;
    v137 = v145;
    v138 = v146;
    v139 = v147;
    v140 = v53;
    v135 = v143;
    v136 = v144;
    v133 = v141;
    v134 = v142;
    v103 = sub_25883C3A8();
    v63 = v112;
    MEMORY[0x259C8C120](1, &type metadata for ClearableAddableTextField, v103);
    sub_25883C78C(&v141);
    v64 = sub_2588BBAC8();
    v102 = &v95;
    v106 = v64;
    v130 = *(v64 - 8);
    v104 = *(v130 + 64);
    MEMORY[0x28223BE20](v64);
    v105 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
    v66 = &v95 - v105;
    sub_25883AED8(&v95 - v105);
    v67 = sub_2588BBA58();
    v101 = &v95;
    v68 = *(v67 - 8);
    v69 = *(v68 + 64);
    MEMORY[0x28223BE20](v67);
    sub_2588BBA68();
    v70 = *(v130 + 8);
    v130 += 8;
    v107 = v70;
    v71 = (v70)(v66, v64);
    MEMORY[0x28223BE20](v71);
    v72 = &v95 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BBA38();
    MEMORY[0x259C8AB90](v72, v72);
    v73 = *(v68 + 8);
    v73(v72, v67);
    v73(v72, v67);
    *&v133 = &type metadata for ClearableAddableTextField;
    *(&v133 + 1) = v103;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v75 = v114;
    v76 = v115;
    sub_2588BCEC8();
    v77 = (*(v128 + 1))(v63, v75);
    v112 = &v95;
    MEMORY[0x28223BE20](v77);
    v78 = &v95 - v105;
    v79 = v132;
    sub_25883AED8(&v95 - v105);
    v128 = type metadata accessor for EditWeightCellView;
    v80 = v123;
    sub_25883CDFC(v79, v123, type metadata accessor for EditWeightCellView);
    v81 = (*(v113 + 80) + 16) & ~*(v113 + 80);
    v82 = swift_allocObject();
    sub_25883C7E0(v80, v82 + v81);
    *&v133 = v75;
    *(&v133 + 1) = OpaqueTypeConformance2;
    v114 = swift_getOpaqueTypeConformance2();
    v113 = sub_25883C6EC();
    v83 = v118;
    v84 = v106;
    sub_2588BD118();

    v107(v78, v84);
    (*(v116 + 8))(v76, v83);
    *&v133 = v111;
    *(&v133 + 1) = v110;
    *&v134 = v109;
    sub_2588BD2C8();
    sub_25883CDFC(v132, v80, v128);
    v85 = swift_allocObject();
    sub_25883C7E0(v80, v85 + v81);
    *&v133 = v83;
    *(&v133 + 1) = v84;
    *&v134 = v114;
    *(&v134 + 1) = v113;
    v130 = MEMORY[0x277CE0E40];
    v86 = swift_getOpaqueTypeConformance2();
    v88 = v119;
    v87 = v120;
    v89 = v129;
    sub_2588BD118();

    (*(v117 + 8))(v89, v88);
    sub_25883CDFC(v132, v80, v128);
    v90 = swift_allocObject();
    sub_25883C7E0(v80, v90 + v81);
    v91 = v124;
    sub_2588BC168();
    *&v133 = v88;
    *(&v133 + 1) = MEMORY[0x277D837D0];
    *&v134 = v86;
    *(&v134 + 1) = MEMORY[0x277D837F8];
    swift_getOpaqueTypeConformance2();
    v92 = v122;
    sub_2588BD128();

    (*(v126 + 8))(v91, v127);
    return (*(v121 + 8))(v87, v92);
  }

  else
  {
    v94 = *(v40 + 8);
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_25883BDB8(uint64_t a1)
{
  sub_25883AC00(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EditWeightCellView();
  v7 = *(v6 + 20);
  sub_25883AC34(0, &qword_27F95FAF0, sub_25883AC00, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0]();
  v8 = MedicalIDBiometricsViewModel.formattedWeightText(for:)(v5);
  v10 = v9;
  sub_25883CE64(v5);
  v11 = (a1 + *(v6 + 32));
  v12 = *v11;
  v13 = *(v11 + 2);
  v16 = v12;
  v17 = v13;
  v15[1] = v8;
  v15[2] = v10;
  sub_25883C738(0, &qword_27F95FB08, MEMORY[0x277CE10B8]);
  return sub_2588BD2D8();
}

uint64_t sub_25883BEF4(uint64_t a1)
{
  v2 = type metadata accessor for EditWeightCellView();
  v3 = (a1 + *(v2 + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  sub_25883C738(0, &qword_27F95FB08, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v8 = sub_25883CEC0(*(a1 + *(v2 + 28)), v19, v20, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x259C8CA70](v8, v10, v12, v14);
  v17 = v16;

  sub_2588BD2D8();
  sub_2588BD2C8();
  sub_25883C030(v15, v17);
}

uint64_t sub_25883C030(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_25883AC00(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = type metadata accessor for MedicalIDBiometricsViewModel();
  if (!a2)
  {
    goto LABEL_7;
  }

  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10 && (v11 = *(v9 + 32), *&v21 = 0, sub_25888CA24(a1, a2)))
  {
    sub_25884D888();
    sub_25878E130(0, &qword_27F95F430, 0x277CCAE28);
    sub_2588BB678();
    v12 = 0;
  }

  else
  {
LABEL_7:
    v12 = 1;
  }

  sub_25883AC98();
  (*(*(v13 - 8) + 56))(v20 - v8, v12, 1, v13);
  v14 = type metadata accessor for EditWeightCellView();
  v15 = *(v14 + 20);
  MEMORY[0x28223BE20](v14);
  sub_25883CDFC(v20 - v8, v20 - v8, sub_25883AC00);
  sub_25883AC34(0, &qword_27F95FAF0, sub_25883AC00, MEMORY[0x277CE11F8]);
  sub_2588BD438();
  result = sub_25883CE64(v20 - v8);
  if (!a2)
  {
    v17 = (v3 + *(v14 + 32));
    v18 = *v17;
    v19 = *(v17 + 2);
    v21 = v18;
    v22 = v19;
    v20[1] = 0;
    v20[2] = 0xE000000000000000;
    sub_25883C738(0, &qword_27F95FB08, MEMORY[0x277CE10B8]);
    return sub_2588BD2D8();
  }

  return result;
}

uint64_t sub_25883C28C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for EditWeightCellView() + 32));
  v5 = *v1;
  v6 = *(v1 + 2);
  sub_25883C738(0, &qword_27F95FB08, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_25883C030(v3, v4);
}

void sub_25883C328()
{
  if (!qword_27F95FB10)
  {
    sub_25883C3A8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95FB10);
    }
  }
}

unint64_t sub_25883C3A8()
{
  result = qword_27F95FB18;
  if (!qword_27F95FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FB18);
  }

  return result;
}

void sub_25883C3FC()
{
  if (!qword_27F95FB20)
  {
    sub_25883C328();
    sub_25883C3A8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95FB20);
    }
  }
}

void sub_25883C4AC()
{
  if (!qword_27F95FB28)
  {
    sub_25883C5EC();
    sub_25883C3FC();
    sub_2588BBAC8();
    sub_25883C328();
    sub_25883C3A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25883C6EC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95FB28);
    }
  }
}

void sub_25883C5EC()
{
  if (!qword_27F95FB30)
  {
    sub_25883C3FC();
    sub_2588BBAC8();
    sub_25883C328();
    sub_25883C3A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25883C6EC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95FB30);
    }
  }
}

unint64_t sub_25883C6EC()
{
  result = qword_27F95FB38;
  if (!qword_27F95FB38)
  {
    sub_2588BBAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FB38);
  }

  return result;
}

void sub_25883C738(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25883C7E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditWeightCellView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_20()
{
  v1 = type metadata accessor for EditWeightCellView();
  v47 = *(*(v1 - 8) + 80);
  v48 = v1;
  v46 = *(*(v1 - 8) + 64);
  v2 = v0 + ((v47 + 16) & ~v47);
  v3 = *(v2 + 8);

  v45 = type metadata accessor for MedicalIDBiometricsViewModel();
  v4 = v2 + v45[5];
  v5 = *(v4 + 8);

  v6 = *(v4 + 16);

  v7 = *(v4 + 32);

  v8 = *(v4 + 48);

  v9 = *(v4 + 64);

  v10 = *(v4 + 80);

  v11 = type metadata accessor for MedicalIDData();
  v12 = v11[13];
  v13 = sub_2588BB9B8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (!v15(v4 + v12, 1, v13))
  {
    (*(v14 + 8))(v4 + v12, v13);
  }

  v16 = v11[14];
  if (!v15(v4 + v16, 1, v13))
  {
    (*(v14 + 8))(v4 + v16, v13);
  }

  v17 = *(v4 + v11[15] + 8);

  v18 = (v4 + v11[18]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_2587C2610(*v18, v19);
  }

  v20 = v11[19];
  v21 = sub_2588BB818();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v4 + v20, 1, v21))
  {
    (*(v22 + 8))(v4 + v20, v21);
  }

  v23 = v11[21];
  if (!v15(v4 + v23, 1, v13))
  {
    (*(v14 + 8))(v4 + v23, v13);
  }

  v24 = v45[6];
  v25 = sub_2588BBAC8();
  v26 = *(*(v25 - 8) + 8);
  v26(v2 + v24, v25);
  v27 = v2 + v45[7];
  v26(v27, v25);

  v28 = v2 + v45[8];
  v26(v28, v25);
  v29 = type metadata accessor for MedicalIDWeightFormatter();

  v30 = (v2 + v48[5]);
  v31 = *v30;

  v32 = *(v30 + 1);

  sub_25883AC34(0, &qword_27F95FAF0, sub_25883AC00, MEMORY[0x277CE11F8]);
  v34 = *(v33 + 32);
  sub_25883AC98();
  v36 = v35;
  v37 = *(v35 - 8);
  if (!(*(v37 + 48))(&v30[v34], 1, v35))
  {
    (*(v37 + 8))(&v30[v34], v36);
  }

  v38 = *(v2 + v48[6]);

  v39 = v2 + v48[8];
  v40 = *(v39 + 8);

  v41 = *(v39 + 16);

  v42 = v48[9];
  sub_25883AC34(0, &qword_27F95DB20, MEMORY[0x28220C1A8], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26(v2 + v42, v25);
  }

  else
  {
    v43 = *(v2 + v42);
  }

  return swift_deallocObject();
}

uint64_t sub_25883CD88(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for EditWeightCellView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_25883CDFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25883CE64(uint64_t a1)
{
  sub_25883AC00(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25883CEC0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_2588BD918();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t sub_25883CF5C(uint64_t a1, uint64_t a2)
{
  sub_25883AC34(0, &qword_27F95DB20, MEMORY[0x28220C1A8], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MedicalIDEmergencyContactProvider.__allocating_init(medicalIDStore:healthStore:contactStore:)(void *a1, void *a2, void *a3)
{
  swift_allocObject();
  v6 = sub_25878DD28(a2, a3);

  return v6;
}

double sub_25883D048@<D0>(_OWORD *a1@<X8>)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  if ([objc_opt_self() authorizationStatusForEntityType_] != 3)
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v20 = sub_2588BBC98();
    __swift_project_value_buffer(v20, qword_27F969938);
    v21 = sub_2588BBC78();
    v22 = sub_2588BDBD8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v56[0] = v24;
      *v23 = 136315138;
      v25 = sub_2588BE0E8();
      v27 = sub_258790224(v25, v26, v56);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_25878B000, v21, v22, "%s: Not authorized to fetch me contact", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x259C8DBE0](v24, -1, -1);
      MEMORY[0x259C8DBE0](v23, -1, -1);
    }

    goto LABEL_12;
  }

  v4 = v1[3];
  v5 = v1[8];
  sub_25878FA5C();
  v6 = sub_2588BD9A8();
  *&v56[0] = 0;
  v7 = [v4 _ios_meContactWithKeysToFetch_error_];

  v8 = *&v56[0];
  if (!v7)
  {
    v34 = *&v56[0];
    v35 = sub_2588BB878();

    swift_willThrow();
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v36 = sub_2588BBC98();
    __swift_project_value_buffer(v36, qword_27F969938);
    v37 = v35;
    v38 = sub_2588BBC78();
    v39 = sub_2588BDBD8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v56[0] = v41;
      *v40 = 136315394;
      v42 = sub_2588BE0E8();
      v44 = sub_258790224(v42, v43, v56);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      swift_getErrorValue();
      v45 = sub_2588BDFD8();
      v47 = sub_258790224(v45, v46, v56);

      *(v40 + 14) = v47;
      _os_log_impl(&dword_25878B000, v38, v39, "%s: unable to fetch me contact with error: %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v41, -1, -1);
      MEMORY[0x259C8DBE0](v40, -1, -1);
    }

    else
    {
    }

    goto LABEL_12;
  }

  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 emergencyContactUsingSimCardNumberWithContact:v7 property:0];
  v12 = [v11 phoneNumber];
  if (!v12)
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v48 = sub_2588BBC98();
    __swift_project_value_buffer(v48, qword_27F969938);
    v49 = sub_2588BBC78();
    v50 = sub_2588BDBD8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v56[0] = v52;
      *v51 = 136315138;
      v53 = sub_2588BE0E8();
      v55 = sub_258790224(v53, v54, v56);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_25878B000, v49, v50, "%s: Me contact did not have a phone number available to use", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x259C8DBE0](v52, -1, -1);
      MEMORY[0x259C8DBE0](v51, -1, -1);
    }

LABEL_12:
    sub_25880088C(v56);
    goto LABEL_13;
  }

  v13 = sub_2588BD858();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v15 = qword_27F95DA88;
  v16 = sub_2588BBAC8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v15;
  sub_2588BBAB8();
  sub_2588BD8B8();
  v19 = sub_2588BD868();

  [v11 setRelationship_];

  MedicalIDEmergencyContact.init(hkEmergencyContact:contact:)(v11, v7, v56);
  nullsub_1(v56);
LABEL_13:
  v28 = v60;
  a1[4] = v59;
  a1[5] = v28;
  v29 = v62;
  a1[6] = v61;
  a1[7] = v29;
  v30 = v56[1];
  *a1 = v56[0];
  a1[1] = v30;
  result = *&v57;
  v32 = v58;
  a1[2] = v57;
  a1[3] = v32;
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MedicalIDEmergencyContactProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  return v0;
}

uint64_t sub_25883D768(void *a1)
{
  v2 = *v1;
  sub_25878EA48(a1);
  swift_beginAccess();
  v3 = *(v2 + 40);
}

uint64_t sub_25883D7B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25883E0C8(v7);
      v7 = result;
    }

    v82 = (v7 + 16);
    v83 = *(v7 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v7 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_25883DE04((*a3 + 136 * *v84), (*a3 + 136 * *v86), (*a3 + 136 * v87), v91);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 136 * v6 + 128);
      v10 = 136 * v8;
      v11 = *a3 + 136 * v8;
      v12 = *(v11 + 128);
      v13 = v8 + 2;
      v14 = (v11 + 400);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 17;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 136 * v6 - 136;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = v22 + v18;
            v104 = *(v22 + v10 + 96);
            v106 = *(v22 + v10 + 112);
            v108 = *(v22 + v10 + 128);
            v96 = *(v22 + v10 + 32);
            v98 = *(v22 + v10 + 48);
            v100 = *(v22 + v10 + 64);
            v102 = *(v22 + v10 + 80);
            v92 = *(v22 + v10);
            v94 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0x88uLL);
            *(v21 + 96) = v104;
            *(v21 + 112) = v106;
            *(v21 + 128) = v108;
            *(v21 + 32) = v96;
            *(v21 + 48) = v98;
            *(v21 + 64) = v100;
            *(v21 + 80) = v102;
            *v21 = v92;
            *(v21 + 16) = v94;
          }

          ++v20;
          v18 -= 136;
          v10 += 136;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2587F01D8(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v35 = *(v7 + 16);
    v34 = *(v7 + 24);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_2587F01D8((v34 > 1), v35 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v36;
    v37 = v7 + 32;
    v38 = (v7 + 32 + 16 * v35);
    *v38 = v8;
    v38[1] = v6;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v7 + 32);
          v41 = *(v7 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v7 + 16 * v36);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v37 + 16 * v39);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v7 + 16 * v36);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v37 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = (v37 + 16 * (v39 - 1));
        v78 = *v77;
        v79 = (v37 + 16 * v39);
        v80 = v79[1];
        sub_25883DE04((*a3 + 136 * *v77), (*a3 + 136 * *v79), (*a3 + 136 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v39 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v7 + 16);
        if (v39 >= v81)
        {
          goto LABEL_101;
        }

        v36 = v81 - 1;
        result = memmove((v37 + 16 * v39), v79 + 2, 16 * (v81 - 1 - v39));
        *(v7 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v37 + 16 * v36;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v7 + 16 * v36);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v37 + 16 * v39);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 136 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 + 128) >= *(v27 - 8))
    {
LABEL_29:
      ++v6;
      v24 += 136;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = v27 - 136;
    v105 = *(v27 + 96);
    v107 = *(v27 + 112);
    v109 = *(v27 + 128);
    v97 = *(v27 + 32);
    v99 = *(v27 + 48);
    v101 = *(v27 + 64);
    v103 = *(v27 + 80);
    v93 = *v27;
    v95 = *(v27 + 16);
    v29 = *(v27 - 56);
    *(v27 + 64) = *(v27 - 72);
    *(v27 + 80) = v29;
    v30 = *(v27 - 24);
    *(v27 + 96) = *(v27 - 40);
    *(v27 + 112) = v30;
    *(v27 + 128) = *(v27 - 8);
    v31 = *(v27 - 88);
    *(v27 + 32) = *(v27 - 104);
    *(v27 + 48) = v31;
    v32 = *(v27 - 120);
    *v27 = *(v27 - 136);
    *(v27 + 16) = v32;
    *(v28 + 64) = v101;
    *(v28 + 80) = v103;
    *(v28 + 96) = v105;
    *(v28 + 112) = v107;
    *(v28 + 128) = v109;
    *(v28 + 32) = v97;
    *(v28 + 48) = v99;
    v27 -= 136;
    *v28 = v93;
    *(v28 + 16) = v95;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_25883DE04(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 136;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 136;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[136 * v9] <= a4)
    {
      memmove(a4, __dst, 136 * v9);
    }

    v12 = &v4[136 * v9];
    if (v8 < 136)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 16) < *(v4 + 16))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 136;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 136;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 136;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x88uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[136 * v11] <= a4)
  {
    memmove(a4, __src, 136 * v11);
  }

  v12 = &v4[136 * v11];
  if (v10 >= 136 && v6 > v7)
  {
LABEL_20:
    v5 -= 136;
    do
    {
      v15 = v5 + 136;
      if (*(v12 - 1) < *(v6 - 1))
      {
        v17 = v6 - 136;
        if (v15 != v6)
        {
          memmove(v5, v6 - 136, 0x88uLL);
        }

        if (v12 <= v4 || (v6 -= 136, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 136);
      if (v15 != v12)
      {
        memmove(v5, v12 - 136, 0x88uLL);
      }

      v5 -= 136;
      v12 -= 136;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 136;
  if (v6 != v4 || v6 >= &v4[136 * v18])
  {
    memmove(v6, v4, 136 * v18);
  }

  return 1;
}

uint64_t sub_25883E03C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25883E0C8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_25883E0DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_25878E0CC(0, &qword_27F95E830, sub_2587D6188, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_25883E204(_OWORD *a1, __int128 *a2)
{
  v3 = v2;
  v5 = a2[5];
  v6 = a2[3];
  v69 = a2[4];
  v70 = v5;
  v7 = a2[5];
  v8 = a2[7];
  v71 = a2[6];
  v72 = v8;
  v9 = a2[1];
  v65 = *a2;
  v66 = v9;
  v10 = a2[3];
  v12 = *a2;
  v11 = a2[1];
  v67 = a2[2];
  v68 = v10;
  v13 = *v2;
  v14 = *(*v2 + 40);
  v77 = v69;
  v78 = v7;
  v15 = a2[7];
  v79 = v71;
  v80 = v15;
  v73 = v12;
  v74 = v11;
  v75 = v67;
  v76 = v6;
  sub_2588BE038();
  MedicalIDEmergencyContact.hash(into:)();
  v16 = sub_2588BE078();
  v17 = -1 << *(v13 + 32);
  v18 = v16 & ~v17;
  if ((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    while (1)
    {
      v20 = (*(v13 + 48) + (v18 << 7));
      v22 = v20[2];
      v21 = v20[3];
      v23 = v20[1];
      v64[0] = *v20;
      v64[1] = v23;
      v64[2] = v22;
      v64[3] = v21;
      v24 = v20[4];
      v25 = v20[5];
      v26 = v20[7];
      v64[6] = v20[6];
      v64[7] = v26;
      v64[4] = v24;
      v64[5] = v25;
      v27 = *v20;
      v28 = v20[1];
      v29 = v20[3];
      v58 = v20[2];
      v59 = v29;
      v56 = v27;
      v57 = v28;
      v30 = v20[4];
      v31 = v20[5];
      v32 = v20[7];
      v62 = v20[6];
      v63 = v32;
      v60 = v30;
      v61 = v31;
      sub_2587914E8(v64, v55);
      v33 = _s11MedicalIDUI0A18IDEmergencyContactV2eeoiySbAC_ACtFZ_0(&v56, &v65);
      v77 = v60;
      v78 = v61;
      v79 = v62;
      v80 = v63;
      v73 = v56;
      v74 = v57;
      v75 = v58;
      v76 = v59;
      sub_2587C66FC(&v73);
      if (v33)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v55[4] = v69;
    v55[5] = v70;
    v55[6] = v71;
    v55[7] = v72;
    v55[0] = v65;
    v55[1] = v66;
    v55[2] = v67;
    v55[3] = v68;
    sub_2587C66FC(v55);
    v41 = (*(v13 + 48) + (v18 << 7));
    v42 = *v41;
    v43 = v41[1];
    v44 = v41[2];
    v59 = v41[3];
    v45 = v41[4];
    v46 = v41[5];
    v47 = v41[7];
    v62 = v41[6];
    v63 = v47;
    v60 = v45;
    v61 = v46;
    v57 = v43;
    v58 = v44;
    v56 = v42;
    v48 = *v41;
    v49 = v41[1];
    v50 = v41[3];
    a1[2] = v41[2];
    a1[3] = v50;
    *a1 = v48;
    a1[1] = v49;
    v51 = v41[4];
    v52 = v41[5];
    v53 = v41[7];
    a1[6] = v41[6];
    a1[7] = v53;
    a1[4] = v51;
    a1[5] = v52;
    sub_2587914E8(&v56, &v54);
    return 0;
  }

  else
  {
LABEL_5:
    v34 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v69;
    v78 = v70;
    v79 = v71;
    v80 = v72;
    v73 = v65;
    v74 = v66;
    v75 = v67;
    v76 = v68;
    *&v56 = *v3;
    sub_2587914E8(&v73, v64);
    sub_25883ECC8(&v73, v18, isUniquelyReferenced_nonNull_native);
    *v3 = v56;
    v36 = v70;
    a1[4] = v69;
    a1[5] = v36;
    v37 = v72;
    a1[6] = v71;
    a1[7] = v37;
    v38 = v66;
    *a1 = v65;
    a1[1] = v38;
    v39 = v68;
    result = 1;
    a1[2] = v67;
    a1[3] = v39;
  }

  return result;
}

uint64_t sub_25883E490(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2587916D4(0, qword_27F95FB68, MEMORY[0x277D84098]);
  result = sub_2588BDDA8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v38 = v2;
    v39 = (v9 + 63) >> 6;
    v12 = result + 56;
    v40 = v3;
    v41 = result;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v42 = (v11 - 1) & v11;
LABEL_17:
      v22 = *(v3 + 48) + ((v19 | (v7 << 6)) << 7);
      v24 = *v22;
      v23 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);
      v27 = *(v22 + 32);
      v28 = *(v22 + 40);
      v44 = *(v22 + 64);
      v45 = *(v22 + 48);
      v47 = *(v22 + 72);
      v48 = *(v22 + 56);
      v43 = *(v22 + 80);
      v46 = *(v22 + 88);
      v49 = *(v22 + 96);
      v50 = *(v22 + 112);
      v29 = *(v6 + 40);
      sub_2588BE038();
      sub_2588BE058();
      if (v23)
      {
        sub_2588BD908();
      }

      sub_2588BE058();
      if (v26)
      {
        sub_2588BD908();
      }

      sub_2588BE058();
      if (v28)
      {
        sub_2588BD908();
      }

      sub_2588BE058();
      if (v48)
      {
        sub_2588BD908();
      }

      sub_2588BE058();
      if (v47)
      {
        sub_2588BD908();
      }

      sub_2588BE058();
      if (v46)
      {
        sub_2588BD908();
      }

      result = sub_2588BE078();
      v6 = v41;
      v30 = -1 << *(v41 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v12 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v14 = v24;
        v15 = v46;
        v17 = v47;
        v16 = v48;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v12 + 8 * v32);
          if (v36 != -1)
          {
            v13 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v31) & ~*(v12 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v14 = v24;
      v15 = v46;
      v17 = v47;
      v16 = v48;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v18 = *(v41 + 48) + (v13 << 7);
      *v18 = v14;
      *(v18 + 8) = v23;
      *(v18 + 16) = v25;
      *(v18 + 24) = v26;
      *(v18 + 32) = v27;
      *(v18 + 40) = v28;
      *(v18 + 48) = v45;
      *(v18 + 56) = v16;
      *(v18 + 64) = v44;
      *(v18 + 72) = v17;
      *(v18 + 80) = v43;
      *(v18 + 88) = v15;
      *(v18 + 96) = v49;
      *(v18 + 112) = v50;
      ++*(v41 + 16);
      v3 = v40;
      v11 = v42;
    }

    v20 = v7;
    while (1)
    {
      v7 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v7 >= v39)
      {
        break;
      }

      v21 = v8[v7];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v37 = 1 << *(v3 + 32);
    if (v37 >= 64)
    {
      bzero(v8, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v37;
    }

    v2 = v38;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25883E8AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_258840248();
  result = sub_2588BDDA8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v38 = v2;
    v39 = (v9 + 63) >> 6;
    v12 = result + 56;
    v40 = v3;
    v41 = result;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v42 = (v11 - 1) & v11;
LABEL_17:
      v22 = *(v3 + 48) + 136 * (v19 | (v7 << 6));
      v24 = *v22;
      v23 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);
      v27 = *(v22 + 32);
      v28 = *(v22 + 40);
      v44 = *(v22 + 64);
      v45 = *(v22 + 48);
      v47 = *(v22 + 72);
      v48 = *(v22 + 56);
      v43 = *(v22 + 80);
      v46 = *(v22 + 88);
      v49 = *(v22 + 96);
      v50 = *(v22 + 112);
      v51 = *(v22 + 128);
      v29 = *(v6 + 40);
      sub_2588BE038();
      sub_2588BE058();
      if (v23)
      {
        sub_2588BD908();
      }

      sub_2588BE058();
      if (v26)
      {
        sub_2588BD908();
      }

      sub_2588BE058();
      if (v28)
      {
        sub_2588BD908();
      }

      sub_2588BE058();
      if (v48)
      {
        sub_2588BD908();
      }

      sub_2588BE058();
      if (v47)
      {
        sub_2588BD908();
      }

      sub_2588BE058();
      if (v46)
      {
        sub_2588BD908();
      }

      result = sub_2588BE078();
      v6 = v41;
      v30 = -1 << *(v41 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v12 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v14 = v24;
        v15 = v46;
        v17 = v47;
        v16 = v48;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v12 + 8 * v32);
          if (v36 != -1)
          {
            v13 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v31) & ~*(v12 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v14 = v24;
      v15 = v46;
      v17 = v47;
      v16 = v48;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v18 = *(v41 + 48) + 136 * v13;
      *v18 = v14;
      *(v18 + 8) = v23;
      *(v18 + 16) = v25;
      *(v18 + 24) = v26;
      *(v18 + 32) = v27;
      *(v18 + 40) = v28;
      *(v18 + 48) = v45;
      *(v18 + 56) = v16;
      *(v18 + 64) = v44;
      *(v18 + 72) = v17;
      *(v18 + 80) = v43;
      *(v18 + 88) = v15;
      *(v18 + 96) = v49;
      *(v18 + 112) = v50;
      *(v18 + 128) = v51;
      ++*(v41 + 16);
      v3 = v40;
      v11 = v42;
    }

    v20 = v7;
    while (1)
    {
      v7 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v7 >= v39)
      {
        break;
      }

      v21 = v8[v7];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v37 = 1 << *(v3 + 32);
    if (v37 >= 64)
    {
      bzero(v8, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v37;
    }

    v2 = v38;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25883ECC8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(result + 80);
  v65 = *(result + 64);
  v66 = v7;
  v8 = *(result + 112);
  v67 = *(result + 96);
  v68 = v8;
  v9 = *(result + 16);
  v61 = *result;
  v62 = v9;
  v10 = *(result + 48);
  v63 = *(result + 32);
  v64 = v10;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25883E490(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_25883EF00();
      goto LABEL_12;
    }

    sub_25883F240(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  v15 = v6[5];
  v57 = v6[4];
  v58 = v15;
  v16 = v6[7];
  v59 = v6[6];
  v60 = v16;
  v17 = v6[1];
  v53 = *v6;
  v54 = v17;
  v18 = v6[3];
  v55 = v6[2];
  v56 = v18;
  sub_2588BE038();
  MedicalIDEmergencyContact.hash(into:)();
  result = sub_2588BE078();
  v19 = -1 << *(v13 + 32);
  a2 = result & ~v19;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    do
    {
      v21 = (*(v13 + 48) + (a2 << 7));
      v23 = v21[2];
      v22 = v21[3];
      v24 = v21[1];
      v52[0] = *v21;
      v52[1] = v24;
      v52[2] = v23;
      v52[3] = v22;
      v25 = v21[4];
      v26 = v21[5];
      v27 = v21[7];
      v52[6] = v21[6];
      v52[7] = v27;
      v52[4] = v25;
      v52[5] = v26;
      v28 = *v21;
      v29 = v21[1];
      v30 = v21[3];
      v46 = v21[2];
      v47 = v30;
      v44 = v28;
      v45 = v29;
      v31 = v21[4];
      v32 = v21[5];
      v33 = v21[7];
      v50 = v21[6];
      v51 = v33;
      v48 = v31;
      v49 = v32;
      sub_2587914E8(v52, &v53);
      v34 = _s11MedicalIDUI0A18IDEmergencyContactV2eeoiySbAC_ACtFZ_0(&v44, &v61);
      v57 = v48;
      v58 = v49;
      v59 = v50;
      v60 = v51;
      v53 = v44;
      v54 = v45;
      v55 = v46;
      v56 = v47;
      result = sub_2587C66FC(&v53);
      if (v34)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v35 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v36 = (*(v35 + 48) + (a2 << 7));
  v37 = v62;
  *v36 = v61;
  v36[1] = v37;
  v38 = v64;
  v36[2] = v63;
  v36[3] = v38;
  v39 = v68;
  v36[6] = v67;
  v36[7] = v39;
  v40 = v66;
  v36[4] = v65;
  v36[5] = v40;
  v41 = *(v35 + 16);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (!v42)
  {
    *(v35 + 16) = v43;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2588BDFB8();
  __break(1u);
  return result;
}

void *sub_25883EF00()
{
  v1 = v0;
  sub_2587916D4(0, qword_27F95FB68, MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_2588BDD98();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = (v14 | (v8 << 6)) << 7;
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v26[3] = v18[3];
        v22 = v18[4];
        v23 = v18[5];
        v24 = v18[7];
        v26[6] = v18[6];
        v26[7] = v24;
        v26[4] = v22;
        v26[5] = v23;
        v26[1] = v19;
        v26[2] = v21;
        v26[0] = v20;
        memmove((*(v4 + 48) + v17), v18, 0x80uLL);
        result = sub_2587914E8(v26, &v25);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25883F0A0()
{
  v1 = v0;
  sub_258840248();
  v2 = *v0;
  v3 = sub_2588BDD98();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_258791754(v25, v24))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 136 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v19 = v17[1];
      v18 = v17[2];
      v20 = v17[4];
      v25[3] = v17[3];
      v25[4] = v20;
      v21 = v17[5];
      v22 = v17[6];
      v23 = v17[7];
      v26 = *(v17 + 16);
      v25[6] = v22;
      v25[7] = v23;
      v25[5] = v21;
      v25[0] = *v17;
      v25[1] = v19;
      v25[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0x88uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_25883F240(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2587916D4(0, qword_27F95FB68, MEMORY[0x277D84098]);
  result = sub_2588BDDA8();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_41:
    *v2 = v6;
    return result;
  }

  v40 = v2;
  v41 = v3;
  v7 = 0;
  v8 = v3 + 56;
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  while (v11)
  {
    v22 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v25 = (*(v3 + 48) + ((v22 | (v7 << 6)) << 7));
    v27 = *v25;
    v26 = v25[1];
    v28 = v25[3];
    v45 = v25[2];
    v46 = v28;
    v29 = v25[4];
    v30 = v25[5];
    v31 = v25[7];
    v49 = v25[6];
    v50 = v31;
    v47 = v29;
    v48 = v30;
    v43 = v27;
    v44 = v26;
    v32 = *(v6 + 40);
    sub_2588BE038();
    if (*(&v43 + 1))
    {
      sub_2588BE058();
      sub_2587914E8(&v43, v42);
      sub_2588BD908();
      if (*(&v44 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_2588BE058();
      sub_2587914E8(&v43, v42);
      if (*(&v44 + 1))
      {
LABEL_19:
        sub_2588BE058();
        sub_2588BD908();
        if (*(&v45 + 1))
        {
          goto LABEL_20;
        }

        goto LABEL_26;
      }
    }

    sub_2588BE058();
    if (*(&v45 + 1))
    {
LABEL_20:
      sub_2588BE058();
      sub_2588BD908();
      if (*(&v46 + 1))
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }

LABEL_26:
    sub_2588BE058();
    if (*(&v46 + 1))
    {
LABEL_21:
      sub_2588BE058();
      sub_2588BD908();
      if (*(&v47 + 1))
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }

LABEL_27:
    sub_2588BE058();
    if (*(&v47 + 1))
    {
LABEL_22:
      sub_2588BE058();
      sub_2588BD908();
      if (*(&v48 + 1))
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }

LABEL_28:
    sub_2588BE058();
    if (*(&v48 + 1))
    {
LABEL_23:
      sub_2588BE058();
      sub_2588BD908();
      goto LABEL_30;
    }

LABEL_29:
    sub_2588BE058();
LABEL_30:
    v3 = v41;
    result = sub_2588BE078();
    v33 = -1 << *(v6 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v13 + 8 * (v34 >> 6))) == 0)
    {
      v36 = 0;
      v37 = (63 - v33) >> 6;
      while (++v35 != v37 || (v36 & 1) == 0)
      {
        v38 = v35 == v37;
        if (v35 == v37)
        {
          v35 = 0;
        }

        v36 |= v38;
        v39 = *(v13 + 8 * v35);
        if (v39 != -1)
        {
          v14 = __clz(__rbit64(~v39)) + (v35 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_43;
    }

    v14 = __clz(__rbit64((-1 << v34) & ~*(v13 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = (*(v6 + 48) + (v14 << 7));
    v16 = v43;
    v18 = v45;
    v17 = v46;
    v15[1] = v44;
    v15[2] = v18;
    *v15 = v16;
    v19 = v47;
    v20 = v48;
    v21 = v50;
    v15[6] = v49;
    v15[7] = v21;
    v15[4] = v19;
    v15[5] = v20;
    v15[3] = v17;
    ++*(v6 + 16);
  }

  v23 = v7;
  while (1)
  {
    v7 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v7 >= v12)
    {

      v2 = v40;
      goto LABEL_41;
    }

    v24 = *(v8 + 8 * v7);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v11 = (v24 - 1) & v24;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_25883F630(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_258840248();
  result = sub_2588BDDA8();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_41:
    *v2 = v6;
    return result;
  }

  v39 = v2;
  v7 = 0;
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  while (v10)
  {
    v21 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v24 = *(v3 + 48) + 136 * (v21 | (v7 << 6));
    v25 = *(v24 + 64);
    v26 = *(v24 + 16);
    v27 = *(v24 + 32);
    v44 = *(v24 + 48);
    v45 = v25;
    v43 = v27;
    v28 = *(v24 + 80);
    v29 = *(v24 + 96);
    v30 = *(v24 + 112);
    v49 = *(v24 + 128);
    v47 = v29;
    v48 = v30;
    v46 = v28;
    v41 = *v24;
    v42 = v26;
    v31 = *(v6 + 40);
    sub_2588BE038();
    if (*(&v41 + 1))
    {
      sub_2588BE058();
      sub_258791754(&v41, v40);
      sub_2588BD908();
      if (*(&v42 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_2588BE058();
      sub_258791754(&v41, v40);
      if (*(&v42 + 1))
      {
LABEL_19:
        sub_2588BE058();
        sub_2588BD908();
        if (*(&v43 + 1))
        {
          goto LABEL_20;
        }

        goto LABEL_26;
      }
    }

    sub_2588BE058();
    if (*(&v43 + 1))
    {
LABEL_20:
      sub_2588BE058();
      sub_2588BD908();
      if (*(&v44 + 1))
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }

LABEL_26:
    sub_2588BE058();
    if (*(&v44 + 1))
    {
LABEL_21:
      sub_2588BE058();
      sub_2588BD908();
      if (*(&v45 + 1))
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }

LABEL_27:
    sub_2588BE058();
    if (*(&v45 + 1))
    {
LABEL_22:
      sub_2588BE058();
      sub_2588BD908();
      if (*(&v46 + 1))
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }

LABEL_28:
    sub_2588BE058();
    if (*(&v46 + 1))
    {
LABEL_23:
      sub_2588BE058();
      sub_2588BD908();
      goto LABEL_30;
    }

LABEL_29:
    sub_2588BE058();
LABEL_30:
    result = sub_2588BE078();
    v32 = -1 << *(v6 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v12 + 8 * (v33 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v32) >> 6;
      while (++v34 != v36 || (v35 & 1) == 0)
      {
        v37 = v34 == v36;
        if (v34 == v36)
        {
          v34 = 0;
        }

        v35 |= v37;
        v38 = *(v12 + 8 * v34);
        if (v38 != -1)
        {
          v13 = __clz(__rbit64(~v38)) + (v34 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_43;
    }

    v13 = __clz(__rbit64((-1 << v33) & ~*(v12 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v6 + 48) + 136 * v13;
    v15 = v42;
    v16 = v43;
    v17 = v45;
    *(v14 + 48) = v44;
    *(v14 + 64) = v17;
    *(v14 + 16) = v15;
    *(v14 + 32) = v16;
    v18 = v46;
    v19 = v47;
    v20 = v48;
    *(v14 + 128) = v49;
    *(v14 + 96) = v19;
    *(v14 + 112) = v20;
    *(v14 + 80) = v18;
    *v14 = v41;
    ++*(v6 + 16);
  }

  v22 = v7;
  while (1)
  {
    v7 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v7 >= v11)
    {

      v2 = v39;
      goto LABEL_41;
    }

    v23 = *(v3 + 56 + 8 * v7);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v10 = (v23 - 1) & v23;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_25883FAAC(uint64_t a1)
{
  sub_25878E42C(0, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25883FB2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_258791374();
  result = MEMORY[0x259C8CC60](v2, &type metadata for MedicalIDEmergencyContact, v3);
  v12 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[5];
      v13[4] = v5[4];
      v13[5] = v6;
      v7 = v5[7];
      v13[6] = v5[6];
      v13[7] = v7;
      v8 = v5[1];
      v13[0] = *v5;
      v13[1] = v8;
      v9 = v5[3];
      v13[2] = v5[2];
      v13[3] = v9;
      sub_2587914E8(v13, v11);
      sub_25883E204(v10, v13);
      v11[4] = v10[4];
      v11[5] = v10[5];
      v11[6] = v10[6];
      v11[7] = v10[7];
      v11[0] = v10[0];
      v11[1] = v10[1];
      v11[2] = v10[2];
      v11[3] = v10[3];
      sub_2587C66FC(v11);
      v5 += 8;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

id sub_25883FBF8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a1 phoneNumberContactIdentifier];
  v64 = a2;
  if (v4)
  {
    v5 = v4;
    v62 = sub_2588BD8A8();
    v63 = v6;

    v7 = [a2 phoneNumbers];
    sub_25878E130(0, &qword_27F961820, 0x277CBDB20);
    v8 = sub_2588BD9B8();

    if (v8 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2588BDD68())
    {
      v10 = 0;
      v66 = v8 & 0xFFFFFFFFFFFFFF8;
      v67 = (v8 & 0xC000000000000001);
      v65 = v8;
      while (1)
      {
        if (v67)
        {
          v11 = MEMORY[0x259C8CF80](v10, v8);
        }

        else
        {
          if (v10 >= *(v66 + 16))
          {
            goto LABEL_20;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v14 = [v11 identifier];
        v15 = sub_2588BD8A8();
        v17 = v16;

        v18 = [v3 phoneNumberContactIdentifier];
        if (v18)
        {
          v19 = v18;
          v20 = i;
          v21 = v3;
          v22 = sub_2588BD8A8();
          v24 = v23;

          if (v15 == v22 && v17 == v24)
          {

            return v62;
          }

          v25 = sub_2588BDF98();

          v3 = v21;
          i = v20;
          v8 = v65;
          if (v25)
          {

            return v62;
          }
        }

        else
        {
        }

        ++v10;
        if (v13 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  result = [v3 phoneNumber];
  if (result)
  {
    v27 = result;
    v28 = sub_2588BD8A8();
    v30 = v29;

    v68 = v28;
    v69 = v30;
    v31 = sub_2588BB708();
    v32 = *(v31 - 8);
    v33 = *(v32 + 64);
    MEMORY[0x28223BE20](v31);
    v34 = sub_2588BB6E8();
    MEMORY[0x28223BE20](v34);
    v35 = &v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BB6F8();
    v36 = *(v32 + 8);
    v36(v35, v31);
    sub_25878F648();
    v37 = MEMORY[0x277D837D0];
    v38 = sub_2588BDCF8();
    v36(v35, v31);

    v68 = v38;
    sub_25878E42C(0, &qword_280C0DE60, v37, MEMORY[0x277D83940]);
    sub_25878F69C();
    sub_2588BD7A8();

    v39 = objc_allocWithZone(MEMORY[0x277CBDB70]);
    v40 = sub_2588BD868();

    v67 = [v39 initWithStringValue_];

    v41 = [v64 phoneNumbers];
    sub_25878E130(0, &qword_27F961820, 0x277CBDB20);
    v42 = sub_2588BD9B8();

    if (v42 >> 62)
    {
      goto LABEL_43;
    }

    for (j = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_2588BDD68())
    {
      v44 = 0;
      v65 = v42 & 0xFFFFFFFFFFFFFF8;
      v66 = v42 & 0xC000000000000001;
      while (1)
      {
        if (v66)
        {
          v45 = MEMORY[0x259C8CF80](v44, v42);
        }

        else
        {
          if (v44 >= *(v65 + 16))
          {
            goto LABEL_42;
          }

          v45 = *(v42 + 8 * v44 + 32);
        }

        v46 = v45;
        v47 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        v48 = [v45 value];
        v49 = [v48 digits];

        v50 = sub_2588BD8A8();
        v52 = v51;

        v53 = [v67 digits];
        v54 = sub_2588BD8A8();
        v56 = v55;

        if (v50 == v54 && v52 == v56)
        {

LABEL_40:

          v59 = v46;
          v60 = [v59 identifier];
          v61 = sub_2588BD8A8();

          return v61;
        }

        v58 = sub_2588BDF98();

        if (v58)
        {
          goto LABEL_40;
        }

        ++v44;
        if (v47 == j)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

LABEL_44:

    return 0;
  }

  return result;
}