void sub_2587DB554()
{
  if (!qword_27F95E1E0)
  {
    sub_2587DB66C();
    type metadata accessor for MedicalIDDataManager();
    sub_2587DC924(&qword_27F95E1F8, sub_2587DB66C, sub_2587DB77C, sub_2587A8934);
    sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E1E0);
    }
  }
}

void sub_2587DB66C()
{
  if (!qword_27F95E1E8)
  {
    sub_2587DB6F4();
    sub_2587DB8A4(255, &qword_27F95D368, &qword_27F95D370, &qword_27F95D378, 0x277CCD7D0);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E1E8);
    }
  }
}

void sub_2587DB6F4()
{
  if (!qword_27F95E1F0)
  {
    sub_2587DB034();
    sub_2587DB8A4(255, &qword_27F95D350, &qword_27F95D358, &qword_27F95D360, 0x277CCD4D8);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E1F0);
    }
  }
}

unint64_t sub_2587DB7C4()
{
  result = qword_27F95E208;
  if (!qword_27F95E208)
  {
    sub_2587DB034();
    sub_2587DB148();
    sub_2587DCE6C(&qword_27F95E1C8, sub_2587DB148);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E208);
  }

  return result;
}

void sub_2587DB8A4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_2587AE90C(255, a3, a4, a5);
    v6 = sub_2588BCA88();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2587DB900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMainView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587DB964@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicalIDMainView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_2587D8CFC(v4, a1);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for MedicalIDMainView();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;

  v5 = v1[5];
  sub_2587DBED8(0, &qword_27F95DB18, MEMORY[0x28220C240], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2588BBB48();
    (*(*(v6 - 8) + 8))(&v3[v5], v6);
  }

  else
  {
    v7 = *&v3[v5];
  }

  v8 = v1[6];
  sub_2587DBED8(0, &qword_27F95DB20, MEMORY[0x28220C198], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2588BBAC8();
    (*(*(v9 - 8) + 8))(&v3[v8], v9);
  }

  else
  {
    v10 = *&v3[v8];
  }

  v11 = *&v3[v1[7] + 8];

  return swift_deallocObject();
}

uint64_t sub_2587DBBB8()
{
  v1 = *(type metadata accessor for MedicalIDMainView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2587D9318(v2);
}

unint64_t sub_2587DBC18()
{
  result = qword_27F95E210;
  if (!qword_27F95E210)
  {
    sub_2587DB484(255);
    sub_2587DBD64();
    sub_2587DB66C();
    type metadata accessor for MedicalIDDataManager();
    sub_2587DC924(&qword_27F95E1F8, sub_2587DB66C, sub_2587DB77C, sub_2587A8934);
    sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E210);
  }

  return result;
}

unint64_t sub_2587DBD64()
{
  result = qword_27F95E218;
  if (!qword_27F95E218)
  {
    sub_2587DB4CC();
    sub_2587DB66C();
    type metadata accessor for MedicalIDDataManager();
    sub_2587DC924(&qword_27F95E1F8, sub_2587DB66C, sub_2587DB77C, sub_2587A8934);
    sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    swift_getOpaqueTypeConformance2();
    sub_2587A8CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E218);
  }

  return result;
}

void sub_2587DBED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2587DBF50()
{
  type metadata accessor for MedicalIDModelProvider();
  if (v0 <= 0x3F)
  {
    sub_2587DBED8(319, &qword_27F95DAB8, MEMORY[0x28220C240], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2587DBED8(319, &qword_27F95DAC0, MEMORY[0x28220C198], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2587DC074();
        if (v3 <= 0x3F)
        {
          sub_25878E130(319, &qword_27F95D3C0, off_2798A65E8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2587DC074()
{
  if (!qword_27F95DAF8)
  {
    v0 = sub_2588BD2F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DAF8);
    }
  }
}

uint64_t sub_2587DC0C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2587DC150(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_25878E130(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2587DC194@<X0>(char *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  return sub_2587D9CAC(v1[2], a1);
}

void sub_2587DC1A4()
{
  if (!qword_27F95E2C8)
  {
    sub_2587DC22C();
    sub_2587DB8A4(255, &qword_27F95D368, &qword_27F95D370, &qword_27F95D378, 0x277CCD7D0);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E2C8);
    }
  }
}

void sub_2587DC22C()
{
  if (!qword_27F95E2D0)
  {
    type metadata accessor for NanoMedicalIDEditView();
    sub_2587DB8A4(255, &qword_27F95D350, &qword_27F95D358, &qword_27F95D360, 0x277CCD4D8);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E2D0);
    }
  }
}

void sub_2587DC2B4()
{
  if (!qword_27F95E2D8)
  {
    sub_2587DC1A4();
    type metadata accessor for MedicalIDDataManager();
    sub_2587DC924(&qword_27F95E2E0, sub_2587DC1A4, sub_2587DC3CC, sub_2587A8934);
    sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E2D8);
    }
  }
}

unint64_t sub_2587DC3CC()
{
  result = qword_27F95E2E8;
  if (!qword_27F95E2E8)
  {
    sub_2587DC22C();
    sub_2587DCE6C(&qword_27F95E2F0, type metadata accessor for NanoMedicalIDEditView);
    sub_2587A88BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E2E8);
  }

  return result;
}

void sub_2587DC47C()
{
  if (!qword_27F95E300)
  {
    sub_2587DC2B4();
    sub_2587DB8A4(255, &qword_27F95D3B0, &qword_27F95D3B8, &qword_27F95D3C0, off_2798A65E8);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E300);
    }
  }
}

unint64_t sub_2587DC504()
{
  result = qword_27F95E308;
  if (!qword_27F95E308)
  {
    sub_2587DC47C();
    sub_2587DC1A4();
    type metadata accessor for MedicalIDDataManager();
    sub_2587DC924(&qword_27F95E2E0, sub_2587DC1A4, sub_2587DC3CC, sub_2587A8934);
    sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    swift_getOpaqueTypeConformance2();
    sub_2587A8CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E308);
  }

  return result;
}

void sub_2587DC648()
{
  if (!qword_27F95E310)
  {
    sub_2587DC6D0();
    sub_2587DB8A4(255, &qword_27F95D368, &qword_27F95D370, &qword_27F95D378, 0x277CCD7D0);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E310);
    }
  }
}

void sub_2587DC6D0()
{
  if (!qword_27F95E318)
  {
    sub_2587DC758();
    sub_2587DB8A4(255, &qword_27F95D350, &qword_27F95D358, &qword_27F95D360, 0x277CCD4D8);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E318);
    }
  }
}

void sub_2587DC758()
{
  if (!qword_27F95E320)
  {
    type metadata accessor for NanoMedicalIDEditView();
    sub_2587DCE6C(&qword_27F95E2F0, type metadata accessor for NanoMedicalIDEditView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E320);
    }
  }
}

void sub_2587DC80C()
{
  if (!qword_27F95E328)
  {
    sub_2587DC648();
    type metadata accessor for MedicalIDDataManager();
    sub_2587DC924(&qword_27F95E330, sub_2587DC648, sub_2587DC9B0, sub_2587A8934);
    sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E328);
    }
  }
}

uint64_t sub_2587DC924(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2587DC9B0()
{
  result = qword_27F95E338;
  if (!qword_27F95E338)
  {
    sub_2587DC6D0();
    type metadata accessor for NanoMedicalIDEditView();
    sub_2587DCE6C(&qword_27F95E2F0, type metadata accessor for NanoMedicalIDEditView);
    swift_getOpaqueTypeConformance2();
    sub_2587A88BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E338);
  }

  return result;
}

void sub_2587DCA90()
{
  if (!qword_27F95E348)
  {
    sub_2587DC80C();
    sub_2587DB8A4(255, &qword_27F95D3B0, &qword_27F95D3B8, &qword_27F95D3C0, off_2798A65E8);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E348);
    }
  }
}

unint64_t sub_2587DCB18()
{
  result = qword_27F95E350;
  if (!qword_27F95E350)
  {
    sub_2587DCA90();
    sub_2587DC648();
    type metadata accessor for MedicalIDDataManager();
    sub_2587DC924(&qword_27F95E330, sub_2587DC648, sub_2587DC9B0, sub_2587A8934);
    sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    swift_getOpaqueTypeConformance2();
    sub_2587A8CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E350);
  }

  return result;
}

uint64_t sub_2587DCC5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587DCCC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_2587DCD24(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() deviceWithDescriptor:a1 error:v6];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_2588BB878();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_2587DCDE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_2587DCE6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2587DCEB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587DCF1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2587DCFD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2587DD120();
  sub_2588BBB98();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_2587DD05C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_2587DD1C4(&v4);
}

uint64_t sub_2587DD094@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_2587DD120();
  sub_2588BBB98();

  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

unint64_t sub_2587DD120()
{
  result = qword_27F95E380;
  if (!qword_27F95E380)
  {
    type metadata accessor for AddEmergencyContactFlowViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E380);
  }

  return result;
}

uint64_t type metadata accessor for AddEmergencyContactFlowViewModel()
{
  result = qword_27F95E390;
  if (!qword_27F95E390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587DD1C4(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  if (v4 != 2)
  {
    if (v2 == 2 || ((v4 ^ v2) & 1) != 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 16) = v2;
    return result;
  }

  if (v2 == 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_2587DD120();
  sub_2588BBB88();
}

uint64_t sub_2587DD2D4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 16) = a2;
  return result;
}

uint64_t sub_2587DD328()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

void (*sub_2587DD37C(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI32AddEmergencyContactFlowViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587DD120();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath();
  sub_2588BBBB8();

  v4[7] = sub_2587DCF80();
  return sub_2587DD484;
}

uint64_t sub_2587DD4E0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v17[0] = v3;
  sub_2587DD120();
  sub_2588BBB98();

  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 40);
  v6 = *(v3 + 72);
  v17[2] = *(v3 + 56);
  v17[3] = v6;
  v7 = *(v3 + 88);
  v8 = *(v3 + 104);
  v9 = *(v3 + 136);
  v17[6] = *(v3 + 120);
  v17[7] = v9;
  v17[4] = v7;
  v17[5] = v8;
  v17[0] = v4;
  v17[1] = v5;
  v10 = *(v3 + 24);
  v11 = *(v3 + 40);
  v12 = *(v3 + 72);
  a2[2] = *(v3 + 56);
  a2[3] = v12;
  *a2 = v10;
  a2[1] = v11;
  v13 = *(v3 + 88);
  v14 = *(v3 + 104);
  a2[6] = *(v3 + 120);
  a2[7] = v9;
  a2[4] = v13;
  a2[5] = v14;
  return sub_2587DEE04(v17, v16);
}

uint64_t sub_2587DD5D8(__int128 *a1, uint64_t *a2)
{
  v3 = a1[5];
  v10[4] = a1[4];
  v10[5] = v3;
  v4 = a1[7];
  v10[6] = a1[6];
  v10[7] = v4;
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  v7 = *a2;
  sub_2587DEE04(v10, &v9);
  return sub_2587DD71C(a1);
}

uint64_t sub_2587DD640@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v12[0] = v1;
  sub_2587DD120();
  sub_2588BBB98();

  swift_beginAccess();
  v4 = *(v1 + 104);
  v15 = *(v1 + 88);
  v3 = v15;
  v16 = v4;
  v6 = *(v1 + 136);
  v17 = *(v1 + 120);
  v5 = v17;
  v18 = v6;
  v7 = *(v1 + 40);
  v12[0] = *(v1 + 24);
  v12[1] = v7;
  v9 = *(v1 + 72);
  v13 = *(v1 + 56);
  v8 = v13;
  v14 = v9;
  *a1 = v12[0];
  a1[1] = v7;
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v3;
  a1[5] = v4;
  a1[6] = v5;
  a1[7] = v6;
  return sub_2587DEE04(v12, v11);
}

uint64_t sub_2587DD71C(__int128 *a1)
{
  v2 = a1[5];
  v28 = a1[4];
  v29 = v2;
  v3 = a1[7];
  v30 = a1[6];
  v31 = v3;
  v4 = a1[1];
  v24 = *a1;
  v25 = v4;
  v5 = a1[3];
  v26 = a1[2];
  v27 = v5;
  swift_beginAccess();
  v6 = *(v1 + 104);
  v32[4] = *(v1 + 88);
  v32[5] = v6;
  v7 = *(v1 + 136);
  v32[6] = *(v1 + 120);
  v32[7] = v7;
  v8 = *(v1 + 40);
  v32[0] = *(v1 + 24);
  v32[1] = v8;
  v9 = *(v1 + 72);
  v32[2] = *(v1 + 56);
  v32[3] = v9;
  sub_2587DEE04(v32, v23);
  v10 = sub_2587DEEB8(v32, &v24);
  sub_2587DF7B0(v32, sub_2587DEE68);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v23[0] = v1;
    sub_2587DD120();
    sub_2588BBB88();
    sub_2587DF7B0(&v24, sub_2587DEE68);
  }

  else
  {
    v13 = *(v1 + 104);
    v23[4] = *(v1 + 88);
    v23[5] = v13;
    v14 = *(v1 + 136);
    v23[6] = *(v1 + 120);
    v23[7] = v14;
    v15 = *(v1 + 40);
    v23[0] = *(v1 + 24);
    v23[1] = v15;
    v16 = *(v1 + 72);
    v23[2] = *(v1 + 56);
    v23[3] = v16;
    v17 = v24;
    v18 = v25;
    v19 = v26;
    *(v1 + 72) = v27;
    *(v1 + 56) = v19;
    *(v1 + 40) = v18;
    *(v1 + 24) = v17;
    v20 = v28;
    v21 = v29;
    v22 = v30;
    *(v1 + 136) = v31;
    *(v1 + 120) = v22;
    *(v1 + 104) = v21;
    *(v1 + 88) = v20;
    return sub_2587DF7B0(v23, sub_2587DEE68);
  }
}

uint64_t sub_2587DD930(uint64_t a1, __int128 *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 104);
  v16[4] = *(a1 + 88);
  v16[5] = v4;
  v5 = *(a1 + 136);
  v16[6] = *(a1 + 120);
  v16[7] = v5;
  v6 = *(a1 + 40);
  v16[0] = *(a1 + 24);
  v16[1] = v6;
  v7 = *(a1 + 72);
  v16[2] = *(a1 + 56);
  v16[3] = v7;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  *(a1 + 72) = a2[3];
  *(a1 + 56) = v10;
  *(a1 + 40) = v9;
  *(a1 + 24) = v8;
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[6];
  *(a1 + 136) = a2[7];
  *(a1 + 120) = v13;
  *(a1 + 104) = v12;
  *(a1 + 88) = v11;
  sub_2587DEE04(a2, v15);
  return sub_2587DF7B0(v16, sub_2587DEE68);
}

void (*sub_2587DDA14(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI32AddEmergencyContactFlowViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587DD120();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath();
  sub_2588BBBB8();

  v4[7] = sub_2587DD490();
  return sub_2587DDB1C;
}

uint64_t sub_2587DDB78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2587DD120();
  sub_2588BBB98();

  result = swift_beginAccess();
  *a2 = *(v3 + 152);
  return result;
}

uint64_t sub_2587DDC2C()
{
  swift_getKeyPath();
  sub_2587DD120();
  sub_2588BBB98();

  swift_beginAccess();
  return *(v0 + 152);
}

uint64_t sub_2587DDCB0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 152) == v2)
  {
    *(v1 + 152) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2587DD120();
    sub_2588BBB88();
  }

  return result;
}

uint64_t sub_2587DDDA4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 152) = a2;
  return result;
}

void (*sub_2587DDDF8(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI32AddEmergencyContactFlowViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587DD120();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath();
  sub_2588BBBB8();

  v4[7] = sub_2587DDB28();
  return sub_2587DDF00;
}

uint64_t sub_2587DDF5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2587DD120();
  sub_2588BBB98();

  result = swift_beginAccess();
  *a2 = *(v3 + 153);
  return result;
}

uint64_t sub_2587DE010()
{
  swift_getKeyPath();
  sub_2587DD120();
  sub_2588BBB98();

  swift_beginAccess();
  return *(v0 + 153);
}

uint64_t sub_2587DE094(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 153) == v2)
  {
    *(v1 + 153) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2587DD120();
    sub_2588BBB88();
  }

  return result;
}

uint64_t sub_2587DE188(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 153) = a2;
  return result;
}

void (*sub_2587DE1DC(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI32AddEmergencyContactFlowViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587DD120();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath();
  sub_2588BBBB8();

  v4[7] = sub_2587DDF0C();
  return sub_2587DE2E4;
}

uint64_t sub_2587DE340@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2587DD120();
  sub_2588BBB98();

  result = swift_beginAccess();
  *a2 = *(v3 + 154);
  return result;
}

uint64_t sub_2587DE3F4()
{
  swift_getKeyPath();
  sub_2587DD120();
  sub_2588BBB98();

  swift_beginAccess();
  return *(v0 + 154);
}

uint64_t sub_2587DE478(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 154) == v2)
  {
    *(v1 + 154) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2587DD120();
    sub_2588BBB88();
  }

  return result;
}

uint64_t sub_2587DE56C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 154) = a2;
  return result;
}

void (*sub_2587DE5C0(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI32AddEmergencyContactFlowViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587DD120();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath();
  sub_2588BBBB8();

  v4[7] = sub_2587DE2F0();
  return sub_2587DE6C8;
}

uint64_t sub_2587DE724@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2587DD120();
  sub_2588BBB98();

  swift_beginAccess();
  v4 = *(v3 + 168);
  *a2 = *(v3 + 160);
  a2[1] = v4;
}

uint64_t sub_2587DE7B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2587DE888(v2, v3);
}

uint64_t sub_2587DE7F4()
{
  swift_getKeyPath();
  v4 = v0;
  sub_2587DD120();
  sub_2588BBB98();

  swift_beginAccess();
  v2 = *(v0 + 160);
  v1 = *(v4 + 168);

  return v2;
}

uint64_t sub_2587DE888(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 168);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 160) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 168);
      if (sub_2588BDF98())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 160) = a1;
    *(v2 + 168) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_2587DD120();
  sub_2588BBB88();
}

uint64_t sub_2587DE9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 168);
  *(a1 + 160) = a2;
  *(a1 + 168) = a3;
}

void (*sub_2587DEA28(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI32AddEmergencyContactFlowViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587DD120();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath();
  sub_2588BBBB8();

  v4[7] = sub_2587DE6D4();
  return sub_2587DEB30;
}

void sub_2587DEB3C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_2588BBBA8();

  free(v1);
}

uint64_t AddEmergencyContactFlowViewModel.deinit()
{
  v1 = *(v0 + 104);
  v9[4] = *(v0 + 88);
  v9[5] = v1;
  v2 = *(v0 + 136);
  v9[6] = *(v0 + 120);
  v9[7] = v2;
  v3 = *(v0 + 40);
  v9[0] = *(v0 + 24);
  v9[1] = v3;
  v4 = *(v0 + 72);
  v9[2] = *(v0 + 56);
  v9[3] = v4;
  sub_2587DF7B0(v9, sub_2587DEE68);
  v5 = *(v0 + 168);

  v6 = OBJC_IVAR____TtC11MedicalIDUI32AddEmergencyContactFlowViewModel___observationRegistrar;
  v7 = sub_2588BBBD8();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t AddEmergencyContactFlowViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 104);
  v11[4] = *(v0 + 88);
  v11[5] = v1;
  v2 = *(v0 + 136);
  v11[6] = *(v0 + 120);
  v11[7] = v2;
  v3 = *(v0 + 40);
  v11[0] = *(v0 + 24);
  v11[1] = v3;
  v4 = *(v0 + 72);
  v11[2] = *(v0 + 56);
  v11[3] = v4;
  sub_2587DF7B0(v11, sub_2587DEE68);
  v5 = *(v0 + 168);

  v6 = OBJC_IVAR____TtC11MedicalIDUI32AddEmergencyContactFlowViewModel___observationRegistrar;
  v7 = sub_2588BBBD8();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t EmergencyContactPickerError.hashValue.getter()
{
  v1 = *v0;
  sub_2588BE038();
  MEMORY[0x259C8D1C0](v1);
  return sub_2588BE078();
}

uint64_t sub_2587DEE04(uint64_t a1, uint64_t a2)
{
  sub_2587DEE68();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2587DEE68()
{
  if (!qword_27F95FB40)
  {
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FB40);
    }
  }
}

uint64_t sub_2587DEEB8(__int128 *a1, __int128 *a2)
{
  v4 = a1[3];
  v5 = a1[5];
  v66 = a1[4];
  v67 = v5;
  v6 = a1[5];
  v7 = a1[7];
  v68 = a1[6];
  v69 = v7;
  v8 = a1[1];
  v62 = *a1;
  v63 = v8;
  v9 = a1[3];
  v11 = *a1;
  v10 = a1[1];
  v64 = a1[2];
  v65 = v9;
  v12 = a2[2];
  v73 = a2[3];
  v72 = v12;
  v13 = *a2;
  v71 = a2[1];
  v70 = v13;
  v14 = a2[6];
  v77 = a2[7];
  v76 = v14;
  v15 = a2[4];
  v75 = a2[5];
  v74 = v15;
  v78[2] = v64;
  v78[3] = v4;
  v78[0] = v11;
  v78[1] = v10;
  v16 = a1[7];
  v78[6] = v68;
  v78[7] = v16;
  v78[4] = v66;
  v78[5] = v6;
  if (sub_2587DF798(v78) != 1)
  {
    v58 = v66;
    v59 = v67;
    v60 = v68;
    v61 = v69;
    v54 = v62;
    v55 = v63;
    v56 = v64;
    v57 = v65;
    v32 = v64;
    v33 = v65;
    v30 = v62;
    v31 = v63;
    v36 = v68;
    v37 = v69;
    v34 = v66;
    v35 = v67;
    v40 = v72;
    v41 = v73;
    v38 = v70;
    v39 = v71;
    v44 = v76;
    v45 = v77;
    v42 = v74;
    v43 = v75;
    if (sub_2587DF798(&v38) != 1)
    {
      v26 = v74;
      v27 = v75;
      v28 = v76;
      v29 = v77;
      v22 = v70;
      v23 = v71;
      v24 = v72;
      v25 = v73;
      sub_2587DEE04(a1, v21);
      sub_2587DEE04(a2, v21);
      sub_2587DEE04(&v54, v21);
      v18 = _s11MedicalIDUI0A18IDEmergencyContactV2eeoiySbAC_ACtFZ_0(&v30, &v22);
      v20[4] = v26;
      v20[5] = v27;
      v20[6] = v28;
      v20[7] = v29;
      v20[0] = v22;
      v20[1] = v23;
      v20[2] = v24;
      v20[3] = v25;
      sub_2587C66FC(v20);
      v21[4] = v34;
      v21[5] = v35;
      v21[6] = v36;
      v21[7] = v37;
      v21[0] = v30;
      v21[1] = v31;
      v21[2] = v32;
      v21[3] = v33;
      sub_2587C66FC(v21);
      v26 = v66;
      v27 = v67;
      v28 = v68;
      v29 = v69;
      v22 = v62;
      v23 = v63;
      v24 = v64;
      v25 = v65;
      sub_2587DF7B0(&v22, sub_2587DEE68);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    v26 = v66;
    v27 = v67;
    v28 = v68;
    v29 = v69;
    v22 = v62;
    v23 = v63;
    v24 = v64;
    v25 = v65;
    sub_2587DEE04(a1, v21);
    sub_2587DEE04(a2, v21);
    sub_2587DEE04(&v54, v21);
    sub_2587C66FC(&v22);
    goto LABEL_7;
  }

  v42 = v74;
  v43 = v75;
  v44 = v76;
  v45 = v77;
  v38 = v70;
  v39 = v71;
  v40 = v72;
  v41 = v73;
  if (sub_2587DF798(&v38) != 1)
  {
    sub_2587DEE04(a1, &v54);
    sub_2587DEE04(a2, &v54);
LABEL_7:
    v50 = v74;
    v51 = v75;
    v52 = v76;
    v53 = v77;
    v46 = v70;
    v47 = v71;
    v48 = v72;
    v49 = v73;
    v42 = v66;
    v43 = v67;
    v44 = v68;
    v45 = v69;
    v38 = v62;
    v39 = v63;
    v40 = v64;
    v41 = v65;
    sub_2587DF7B0(&v38, sub_2587DF810);
    v17 = 1;
    return v17 & 1;
  }

  v58 = v66;
  v59 = v67;
  v60 = v68;
  v61 = v69;
  v54 = v62;
  v55 = v63;
  v56 = v64;
  v57 = v65;
  sub_2587DEE04(a1, &v30);
  sub_2587DEE04(a2, &v30);
  sub_2587DF7B0(&v54, sub_2587DEE68);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_2587DF250()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 152) = v2;
  return result;
}

uint64_t sub_2587DF2A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 153) = v2;
  return result;
}

uint64_t sub_2587DF2F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 154) = v2;
  return result;
}

unint64_t sub_2587DF370()
{
  result = qword_27F95E388;
  if (!qword_27F95E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E388);
  }

  return result;
}

uint64_t sub_2587DF3CC()
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

uint64_t sub_2587DF798(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2587DF7B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2587DF810()
{
  if (!qword_27F95E3A0)
  {
    sub_2587DEE68();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95E3A0);
    }
  }
}

BOOL sub_2587DF874(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1 == 2;
  if (a2 != 2)
  {
    v2 = 0;
  }

  if (a1 != 2 && a2 != 2)
  {
    v2 = ((a2 ^ a1) & 1) == 0;
  }

  return !v2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2587DF8C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2587DF908(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_2587DF974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();

  v9 = sub_2588BD868();
  v10 = [v8 localizedStringForLabel_];

  sub_2588BD8A8();
  sub_25878F648();
  v11 = sub_2588BCDF8();
  v13 = v12;
  v15 = v14 & 1;
  sub_258790D88();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2588C17A0;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = 0x6E6F6974616C6552;
  *(v16 + 56) = 0xE800000000000000;
  *(v16 + 64) = a1;
  *(v16 + 72) = a2;

  v17 = sub_2588BD9A8();

  v18 = HKUIJoinStringsForAutomationIdentifier();

  if (v18)
  {
    sub_2588BD8A8();

    sub_2588BCFB8();

    sub_2587B1CF8(v11, v13, v15);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2587DFB50()
{
  result = qword_27F95E3A8;
  if (!qword_27F95E3A8)
  {
    sub_2587DFBD0();
    sub_2587DFC30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E3A8);
  }

  return result;
}

void sub_2587DFBD0()
{
  if (!qword_27F95E3B0)
  {
    sub_2588BCA98();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E3B0);
    }
  }
}

unint64_t sub_2587DFC30()
{
  result = qword_27F95D9D8;
  if (!qword_27F95D9D8)
  {
    sub_2588BCA98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D9D8);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_2587DFCA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_2587DFCEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2587DFD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 80);

  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
  return result;
}

uint64_t sub_2587DFDB8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v13[2] = v1[2];
  v13[3] = v3;
  v4 = v1[5];
  v13[4] = v1[4];
  v13[5] = v4;
  v5 = v1[1];
  v13[0] = *v1;
  v13[1] = v5;
  v12[3] = &type metadata for MedicationsConfiguration;
  v12[4] = &off_2869C1908;
  v6 = swift_allocObject();
  v12[0] = v6;
  v7 = v1[3];
  v6[3] = v1[2];
  v6[4] = v7;
  v8 = v1[5];
  v6[5] = v1[4];
  v6[6] = v8;
  v9 = v1[1];
  v6[1] = *v1;
  v6[2] = v9;
  sub_2587DFE70(v13, v11);
  return sub_25884E278(v12, sub_2587DFD70, 0, a1);
}

unint64_t sub_2587DFECC()
{
  result = qword_27F95E3B8;
  if (!qword_27F95E3B8)
  {
    type metadata accessor for MedicalIDEditFreeformTextModalView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E3B8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2587DFF30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2587DFF78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_2587DFFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2587E0620(0, &qword_27F95E3C0, MEMORY[0x277CE0330]);
  v7 = v6;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  sub_2587E04CC();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v18 = result;
    v19 = [result isAppleInternalInstall];

    if (v19)
    {
      v31 = a3;
      LODWORD(v32) = sub_2588BC8D8();
      v20 = sub_2588BCD98();
      v30 = v12;
      v22 = v21;
      v32 = v20;
      v33 = v21;
      v24 = v23 & 1;
      v34 = v23 & 1;
      v35 = v25;
      v26 = swift_allocObject();
      v29 = v7;
      *(v26 + 16) = a1;
      *(v26 + 24) = a2;

      v27 = MEMORY[0x277CE0BD8];
      sub_2588BCED8();

      sub_2587B1CF8(v20, v22, v24);

      v28 = v30;
      (*(v13 + 16))(v10, v16, v30);
      swift_storeEnumTagMultiPayload();
      v32 = v27;
      v33 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      sub_2588BC778();
      return (*(v13 + 8))(v16, v28);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      v32 = MEMORY[0x277CE0BD8];
      v33 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      return sub_2588BC778();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2587E0348(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2588BB8E8();
    v7 = *(v6 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20](v6);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2587AEACC(a1, a2);
    v11 = sub_2588BB8B8();
    (*(v7 + 8))(v10, v6);
    sub_25886369C(MEMORY[0x277D84F90]);
    v12 = sub_2588BD758();

    [v5 openSensitiveURL:v11 withOptions:v12];
  }
}

void sub_2587E04CC()
{
  if (!qword_27F95E3C8)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E3C8);
    }
  }
}

unint64_t sub_2587E0554()
{
  result = qword_27F95E3D0;
  if (!qword_27F95E3D0)
  {
    sub_2587E0620(255, &qword_27F95E3D8, MEMORY[0x277CE0338]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E3D0);
  }

  return result;
}

void sub_2587E0620(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_2587E04CC();
    v7 = a3(a1, v6, MEMORY[0x277CE1428]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2587E0688()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for EditOrganDonationCellView() + 28));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_2588BDBE8();
    v9 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_2587E07D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EditOrganDonationCellView();
  v51 = *(v4 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = v6;
  v52 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F95D078 != -1)
  {
    swift_once();
  }

  v7 = *algn_27F95E3E8;
  v54 = qword_27F95E3E0;
  v8 = (v2 + *(v4 + 20));
  v10 = v8[1];
  v62 = *v8;
  v9 = v62;
  v63 = v10;
  sub_2587E1ACC(0, &qword_27F95E410, type metadata accessor for EditOrganDonationCellViewModel, MEMORY[0x277CE10B8]);
  v55 = v7;

  sub_2588BD2C8();
  v53 = sub_2587F5888();

  v59 = v9;
  v60 = v10;
  sub_2588BD2E8();
  v12 = v62;
  v11 = v63;
  v13 = v64;
  swift_getKeyPath();
  v62 = v12;
  v63 = v11;
  v64 = v13;
  sub_2587E1ACC(0, &qword_27F95E418, type metadata accessor for EditOrganDonationCellViewModel, MEMORY[0x277CE11F8]);
  sub_2588BD448();

  v14 = v59;
  v47 = v60;
  v46 = v61;

  sub_25878F1E0(0, &qword_280C0DDD0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2588BFF50;
  v16 = (v2 + *(type metadata accessor for MedicalIDPersonalInfoViewModel() + 36));
  v17 = v16[1];
  *(v15 + 32) = *v16;
  *(v15 + 40) = v17;
  strcpy((v15 + 48), "OrganDonation");
  *(v15 + 62) = -4864;

  v18 = sub_2588BD9A8();

  v19 = HKUIJoinStringsForAutomationIdentifier();

  if (v19)
  {
    v20 = sub_2588BD8A8();
    v49 = v21;
    v50 = v20;
  }

  else
  {
    v49 = 0xED00006E6F697461;
    v50 = 0x6E6F446E6167724FLL;
  }

  v22 = (v2 + *(v4 + 24));
  v24 = v22[1];
  v45 = *v22;
  v23 = v45;
  v25 = v52;
  sub_2587E1B30(v2, v52);
  v26 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v51 = swift_allocObject();
  sub_2587E1B94(v25, v51 + v26);
  v27 = v47;
  *(a1 + 40) = v14;
  *(a1 + 48) = v27;
  *(a1 + 56) = v46;
  *(a1 + 57) = 1028;
  *(a1 + 64) = swift_getKeyPath();
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_2587E1C6C();
  v29 = v28;
  v30 = v28[20];
  v31 = sub_2588BB9F8();
  v52 = &v44;
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2587B2344(v23);
  v35 = sub_2588BB9E8();
  MEMORY[0x28223BE20](v35);
  (*(v32 + 16))(&v44 - v34, &v44 - v34, v31);
  sub_2588BD2B8();
  (*(v32 + 8))(&v44 - v34, v31);
  v36 = a1 + v29[21];
  v56 = 0;
  result = sub_2588BD2B8();
  v38 = v58;
  *v36 = v57;
  *(v36 + 8) = v38;
  v39 = v55;
  *a1 = v54;
  *(a1 + 8) = v39;
  v40 = v53;
  *(a1 + 57) = 4;
  v41 = v49;
  *(a1 + 16) = v50;
  *(a1 + 24) = v41;
  *(a1 + 32) = v40;
  *(a1 + v29[23]) = 0;
  *(a1 + 88) = v45;
  *(a1 + 96) = v24;
  v42 = (a1 + v29[22]);
  v43 = v51;
  *v42 = sub_2587E1BF8;
  v42[1] = v43;
  return result;
}

uint64_t sub_2587E0CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v15 = a2;
  v5 = type metadata accessor for EditOrganDonationCellView();
  v14 = *(v5 - 8);
  v6 = *(v14 + 64);
  v18 = a1;
  v7 = (v3 + *(MEMORY[0x28223BE20](v5 - 8) + 28));
  v9 = *v7;
  v8 = v7[1];
  v16 = v9;
  v17 = v8;
  sub_2587E1ACC(0, &qword_27F95E410, type metadata accessor for EditOrganDonationCellViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  swift_getKeyPath();
  sub_2587E1ACC(0, &qword_27F95E418, type metadata accessor for EditOrganDonationCellViewModel, MEMORY[0x277CE11F8]);
  sub_2588BD448();

  sub_2587E1B30(v3, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v11 = swift_allocObject();
  sub_2587E1B94(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_2587E1E30();
  sub_2587E2764(&qword_27F95E470, sub_2587E1E30);
  sub_2588BD068();
}

uint64_t sub_2587E0F7C()
{
  sub_2587E1F6C();
  sub_2587E2078();
  sub_2587E20D0();
  sub_2587E2224();
  sub_2587E2184();
  sub_2587E2764(&qword_27F95E460, sub_2587E2184);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_2588BC1F8();
}

void sub_2587E1098(uint64_t a1)
{
  v2 = sub_2587E0688();
  swift_beginAccess();
  v3 = *(v2 + 16);

  v4 = (a1 + *(type metadata accessor for EditOrganDonationCellView() + 20));
  v9 = *v4;
  v10 = v4[1];
  sub_2587E1ACC(0, &qword_27F95E410, type metadata accessor for EditOrganDonationCellViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_2588BC228();
  sub_25878F1E0(0, &qword_27F95E480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2588BFF50;
  v6 = sub_2588BCB98();
  *(inited + 32) = v6;
  v7 = sub_2588BCBA8();
  *(inited + 33) = v7;
  sub_2588BCBC8();
  sub_2588BCBC8();
  if (sub_2588BCBC8() != v6)
  {
    sub_2588BCBC8();
  }

  sub_2588BCBC8();
  v8 = sub_2588BCBC8();
  if (v8 != v7)
  {
    v8 = sub_2588BCBC8();
  }

  MEMORY[0x28223BE20](v8);
  sub_2587E2078();
  sub_2587E20D0();
  sub_2587E2224();
  sub_2587E2184();
  sub_2587E2764(&qword_27F95E460, sub_2587E2184);
  swift_getOpaqueTypeConformance2();
  sub_2588BD0B8();
}

uint64_t sub_2587E1334(uint64_t a1)
{
  v2 = sub_2588BC828();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2587E2184();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2588BC7F8();
  v13 = a1;
  sub_2588BD748();
  sub_2587E2764(&qword_27F95E458, MEMORY[0x277D126A0]);
  sub_2588BBF88();
  v10 = sub_2587E2764(&qword_27F95E460, sub_2587E2184);
  MEMORY[0x259C8B9F0](v9, v5, v10);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2587E1504(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for EditOrganDonationCellView() + 20));
  v3 = *v1;
  v4 = v1[1];
  sub_2587E1ACC(0, &qword_27F95E410, type metadata accessor for EditOrganDonationCellViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  return sub_2588BD718();
}

uint64_t sub_2587E15B4(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2587E2764(&qword_27F95E488, type metadata accessor for EditOrganDonationCellViewModel);
    sub_2588BBB88();
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_2587E16C8()
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
  qword_27F95E3E0 = result;
  *algn_27F95E3E8 = v7;
  return result;
}

unint64_t sub_2587E1820(uint64_t a1)
{
  *(a1 + 8) = sub_2587E1850();
  result = sub_2587E18A4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2587E1850()
{
  result = qword_27F95E3F0;
  if (!qword_27F95E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E3F0);
  }

  return result;
}

unint64_t sub_2587E18A4()
{
  result = qword_27F95E3F8;
  if (!qword_27F95E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E3F8);
  }

  return result;
}

uint64_t type metadata accessor for EditOrganDonationCellView()
{
  result = qword_27F95E400;
  if (!qword_27F95E400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2587E196C()
{
  type metadata accessor for MedicalIDPersonalInfoViewModel();
  if (v0 <= 0x3F)
  {
    sub_2587E1ACC(319, &qword_27F95E410, type metadata accessor for EditOrganDonationCellViewModel, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2587E1ACC(319, &qword_27F95DA10, sub_2587B2F78, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2587E1ACC(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2587E1ACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2587E1B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditOrganDonationCellView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587E1B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditOrganDonationCellView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587E1BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for EditOrganDonationCellView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_2587E0CEC(a1, a2);
}

void sub_2587E1C6C()
{
  if (!qword_27F95E420)
  {
    sub_2587E1D68();
    sub_2587E22A4();
    sub_2587E1E30();
    sub_2587E2764(&qword_27F95E470, sub_2587E1E30);
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for ExpandableWheelPickerView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E420);
    }
  }
}

void sub_2587E1D68()
{
  if (!qword_27F95E428)
  {
    sub_2587E1E30();
    sub_2587E2764(&qword_27F95E470, sub_2587E1E30);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E428);
    }
  }
}

void sub_2587E1E30()
{
  if (!qword_27F95E430)
  {
    sub_2588BC138();
    sub_2587E1F6C();
    sub_2587E2078();
    sub_2587E20D0();
    sub_2587E2224();
    sub_2587E2184();
    sub_2587E2764(&qword_27F95E460, sub_2587E2184);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_2588BC208();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E430);
    }
  }
}

void sub_2587E1F6C()
{
  if (!qword_27F95E438)
  {
    sub_2587E2078();
    sub_2587E20D0();
    sub_2587E2224();
    sub_2587E2184();
    sub_2587E2764(&qword_27F95E460, sub_2587E2184);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E438);
    }
  }
}

void sub_2587E2078()
{
  if (!qword_27F95E440)
  {
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E440);
    }
  }
}

void sub_2587E20D0()
{
  if (!qword_27F95E448)
  {
    sub_2587E2184();
    sub_2587E2764(&qword_27F95E460, sub_2587E2184);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E448);
    }
  }
}

void sub_2587E2184()
{
  if (!qword_27F95E450)
  {
    sub_2588BD748();
    sub_2587E2764(&qword_27F95E458, MEMORY[0x277D126A0]);
    v0 = sub_2588BBF98();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E450);
    }
  }
}

unint64_t sub_2587E2224()
{
  result = qword_27F95E468;
  if (!qword_27F95E468)
  {
    sub_2587E2078();
    sub_2587D1C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E468);
  }

  return result;
}

unint64_t sub_2587E22A4()
{
  result = qword_27F95E478;
  if (!qword_27F95E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E478);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for EditOrganDonationCellView();
  v36 = *(*(v1 - 1) + 80);
  v35 = *(*(v1 - 1) + 64);
  v2 = v0 + ((v36 + 16) & ~v36);
  v3 = *(v2 + 8);

  v4 = *(v2 + 16);

  v5 = *(v2 + 32);

  v6 = *(v2 + 48);

  v7 = *(v2 + 64);

  v8 = *(v2 + 80);

  v9 = type metadata accessor for MedicalIDData();
  v10 = v9[13];
  v11 = sub_2588BB9B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v2 + v10, 1, v11))
  {
    (*(v12 + 8))(v2 + v10, v11);
  }

  v14 = v9[14];
  if (!v13(v2 + v14, 1, v11))
  {
    (*(v12 + 8))(v2 + v14, v11);
  }

  v15 = *(v2 + v9[15] + 8);

  v16 = (v2 + v9[18]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_2587C2610(*v16, v17);
  }

  v18 = v9[19];
  v19 = sub_2588BB818();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v2 + v18, 1, v19))
  {
    (*(v20 + 8))(v2 + v18, v19);
  }

  v21 = v9[21];
  if (!v13(v2 + v21, 1, v11))
  {
    (*(v12 + 8))(v2 + v21, v11);
  }

  v22 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v23 = v22[5];
  v24 = sub_2588BBB48();
  (*(*(v24 - 8) + 8))(v2 + v23, v24);
  v25 = v22[6];
  v26 = sub_2588BBAC8();
  (*(*(v26 - 8) + 8))(v2 + v25, v26);

  v27 = *(v2 + v22[9] + 8);

  v28 = (v2 + v1[5]);
  v29 = *v28;

  v30 = v28[1];

  v31 = (v2 + v1[6]);
  if (*v31)
  {
    v32 = v31[1];
  }

  v33 = *(v2 + v1[7]);

  return swift_deallocObject();
}

uint64_t sub_2587E26B0()
{
  v0 = *(*(type metadata accessor for EditOrganDonationCellView() - 8) + 80);

  return sub_2587E0F7C();
}

uint64_t sub_2587E2764(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2587E27F8()
{
  type metadata accessor for MedicalIDPersonalInfoViewModel();
  if (v0 <= 0x3F)
  {
    sub_2587B2F78();
    if (v1 <= 0x3F)
    {
      sub_2587BC234();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2587E28B0@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  sub_2587E5C64(0, &qword_27F95E4A8, sub_2587E3A04, &type metadata for MedicalIDPlaceholderCell, MEMORY[0x277CE0330]);
  v67 = v2;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v68 = (v65 - v4);
  v5 = type metadata accessor for MedicalIDPersonalInformationCellView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v65 - v10;
  sub_2587E3A04();
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v65 - v18;
  if (MedicalIDPersonalInfoViewModel.hasPersonalInfoData.getter())
  {
    v66 = v19;
    sub_2587E3030(v72);
    v20 = v1 + *(v5 + 24);
    if (*v20)
    {
      v21 = [*v20 isLockScreen];
      v22 = v72[2];
      *(v17 + 1) = v72[1];
      *(v17 + 2) = v22;
      v23 = v73;
      *v17 = v72[0];
      *(v17 + 6) = v23;
      *(v17 + 7) = 0x4038000000000000;
      v17[64] = v21 ^ 1;
      v24 = &v17[*(v13 + 44)];
      sub_2587E5A60(v1, v11, type metadata accessor for MedicalIDPersonalInformationCellView);
      v25 = *(v6 + 80);
      v65[1] = v13;
      v26 = (v25 + 16) & ~v25;
      v65[0] = swift_allocObject();
      sub_2587E59F8(v11, v65[0] + v26, type metadata accessor for MedicalIDPersonalInformationCellView);
      sub_2587E5A60(v1, v9, type metadata accessor for MedicalIDPersonalInformationCellView);
      v27 = swift_allocObject();
      sub_2587E59F8(v9, v27 + v26, type metadata accessor for MedicalIDPersonalInformationCellView);
      *v24 = swift_getKeyPath();
      sub_2587E615C(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      sub_2587E3AA0();
      v29 = v28;
      v30 = *(v28 + 52);
      v31 = *MEMORY[0x277CDF988];
      v32 = sub_2588BC1C8();
      (*(*(v32 - 8) + 104))(v24 + v30, v31, v32);
      v33 = (v24 + *(v29 + 56));
      v34 = v65[0];
      *v33 = sub_2587E40CC;
      v33[1] = v34;
      v35 = (v24 + *(v29 + 60));
      *v35 = sub_2587E44D4;
      v35[1] = v27;
      LOBYTE(v27) = sub_2588BCBA8();
      sub_2588BBE38();
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      sub_2587E5C64(0, &qword_27F95E4B8, sub_2587E3AA0, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
      v45 = v24 + *(v44 + 36);
      *v45 = v27;
      *(v45 + 1) = v37;
      *(v45 + 2) = v39;
      *(v45 + 3) = v41;
      *(v45 + 4) = v43;
      v45[40] = 0;
      v46 = v66;
      sub_2587E59F8(v17, v66, sub_2587E3A04);
      sub_2587E5A60(v46, v68, sub_2587E3A04);
      swift_storeEnumTagMultiPayload();
      sub_2587E675C(&qword_27F95E548, sub_2587E3A04);
      sub_2587E4078();
      sub_2588BC778();
      return sub_2587E6568(v46, sub_2587E3A04);
    }

    else
    {
      v64 = *(v20 + 8);
      sub_2587CEE98();
      sub_2587E675C(&qword_27F95DAE8, sub_2587CEE98);
      result = sub_2588BC348();
      __break(1u);
    }
  }

  else
  {
    sub_2587E3030(v70);
    v48 = sub_2588BD858();
    v49 = *(*(v48 - 8) + 64);
    MEMORY[0x28223BE20](v48 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v50 = qword_27F95DA88;
    v51 = sub_2588BBAC8();
    v52 = *(*(v51 - 8) + 64);
    MEMORY[0x28223BE20](v51 - 8);
    v53 = v50;
    sub_2588BBAB8();
    v54 = sub_2588BD8B8();
    v56 = v55;
    v57 = (v1 + *(type metadata accessor for MedicalIDPersonalInfoViewModel() + 36));
    v58 = *v57;
    v59 = v57[1];
    v60 = v71;
    v61 = v70[2];
    v62 = v68;
    v63 = v70[1];
    *v68 = v70[0];
    v62[1] = v63;
    v62[2] = v61;
    *(v62 + 6) = v60;
    *(v62 + 7) = v54;
    *(v62 + 8) = v56;
    *(v62 + 9) = v58;
    *(v62 + 10) = v59;
    swift_storeEnumTagMultiPayload();
    sub_2587E675C(&qword_27F95E548, sub_2587E3A04);
    sub_2587E4078();

    return sub_2588BC778();
  }

  return result;
}

uint64_t sub_2587E3030@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BD858();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v5 = qword_27F95DA88;
  v6 = sub_2588BBAC8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v5;
  sub_2588BBAB8();
  v9 = sub_2588BD8B8();
  v11 = v10;
  v12 = MedicalIDPersonalInfoViewModel.hasPersonalInfoData.getter();
  v13 = (v1 + *(type metadata accessor for MedicalIDPersonalInfoViewModel() + 36));
  v15 = *v13;
  v14 = v13[1];
  v16 = (v1 + *(type metadata accessor for MedicalIDPersonalInformationCellView(0) + 20));
  v17 = *v16;
  v18 = v16[1];
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 17) = 2;
  *(a1 + 24) = v17;
  *(a1 + 32) = v18;
  *(a1 + 40) = v15;
  *(a1 + 48) = v14;
}

uint64_t sub_2587E31EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2588BC608();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  sub_2587E598C(0, &qword_27F95E560, sub_2587E3C28);
  return sub_2587E3404(a1, a2 + *(v4 + 44));
}

__n128 sub_2587E3264@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2587E3D4C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = sub_2588BC6E8();
  *(v7 + 1) = 0x4018000000000000;
  v7[16] = 0;
  sub_2587E598C(0, &qword_27F95E558, sub_2587E3DE0);
  sub_2587E3778(v2, &v7[*(v8 + 44)]);
  sub_2588BD5C8();
  sub_2588BC328();
  sub_2587E59F8(v7, a1, sub_2587E3D4C);
  sub_2587E5C64(0, &qword_27F95E4F8, sub_2587E3D4C, MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
  v10 = a1 + *(v9 + 36);
  v11 = v14[5];
  *(v10 + 64) = v14[4];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[6];
  v12 = v14[1];
  *v10 = v14[0];
  *(v10 + 16) = v12;
  result = v14[3];
  *(v10 + 32) = v14[2];
  *(v10 + 48) = result;
  return result;
}

uint64_t sub_2587E3404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for PersonInfoView(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587E3CF0(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  sub_2587E5A60(a1, v7, type metadata accessor for MedicalIDPersonalInfoViewModel);
  v19 = sub_2588BC6F8();
  sub_2587CEE98();
  sub_2587E675C(&qword_27F95DAE8, sub_2587CEE98);
  v20 = sub_2588BC358();
  *&v7[*(v4 + 28)] = v19;
  v21 = &v7[*(v4 + 32)];
  *v21 = v20;
  v21[1] = v22;
  sub_2588BD5D8();
  sub_2588BC328();
  sub_2587E59F8(v7, v16, type metadata accessor for PersonInfoView);
  v23 = &v16[*(v9 + 44)];
  v24 = v43;
  *(v23 + 4) = v42;
  *(v23 + 5) = v24;
  *(v23 + 6) = v44;
  v25 = v39;
  *v23 = v38;
  *(v23 + 1) = v25;
  v26 = v41;
  *(v23 + 2) = v40;
  *(v23 + 3) = v26;
  sub_2587E59F8(v16, v18, sub_2587E3CF0);
  v27 = a1 + *(type metadata accessor for MedicalIDPersonalInformationCellView(0) + 24);
  if (*v27)
  {
    if (([*v27 isLockScreen] & 1) != 0 && *(a1 + *(type metadata accessor for MedicalIDData() + 72) + 8) >> 60 == 15)
    {
      v28 = 0;
      v29 = 0xB000000000000000;
    }

    else
    {
      v30 = (a1 + *(type metadata accessor for MedicalIDData() + 72));
      v28 = *v30;
      v29 = v30[1];
      sub_2587CC620(*v30, v29);
    }

    sub_2587E5A60(v18, v13, sub_2587E3CF0);
    v31 = v37;
    sub_2587E5A60(v13, v37, sub_2587E3CF0);
    sub_2587E3C5C();
    v33 = (v31 + *(v32 + 48));
    *v33 = v28;
    v33[1] = v29;
    sub_2587E5964(v28, v29);
    sub_2587E6568(v18, sub_2587E3CF0);
    sub_2587E5978(v28, v29);
    return sub_2587E6568(v13, sub_2587E3CF0);
  }

  else
  {
    v35 = *(v27 + 8);
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_2587E3778@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PersonInfoView(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = a1 + *(type metadata accessor for MedicalIDPersonalInformationCellView(0) + 24);
  if (*v11)
  {
    if (([*v11 isLockScreen] & 1) != 0 && *(a1 + *(type metadata accessor for MedicalIDData() + 72) + 8) >> 60 == 15)
    {
      v12 = 0;
      v13 = 0xB000000000000000;
    }

    else
    {
      v14 = (a1 + *(type metadata accessor for MedicalIDData() + 72));
      v12 = *v14;
      v13 = v14[1];
      sub_2587CC620(*v14, v13);
    }

    sub_2587E5A60(a1, v10, type metadata accessor for MedicalIDPersonalInfoViewModel);
    v15 = sub_2588BC6E8();
    sub_2587CEE98();
    sub_2587E675C(&qword_27F95DAE8, sub_2587CEE98);
    v16 = sub_2588BC358();
    *&v10[*(v4 + 20)] = v15;
    v17 = &v10[*(v4 + 24)];
    *v17 = v16;
    v17[1] = v18;
    sub_2587E5A60(v10, v8, type metadata accessor for PersonInfoView);
    *a2 = v12;
    a2[1] = v13;
    sub_2587E3E14();
    sub_2587E5A60(v8, a2 + *(v19 + 48), type metadata accessor for PersonInfoView);
    sub_2587E5964(v12, v13);
    sub_2587E6568(v10, type metadata accessor for PersonInfoView);
    sub_2587E6568(v8, type metadata accessor for PersonInfoView);
    return sub_2587E5978(v12, v13);
  }

  else
  {
    v21 = *(v11 + 8);
    sub_2587CEE98();
    sub_2587E675C(&qword_27F95DAE8, sub_2587CEE98);
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

void sub_2587E3A04()
{
  if (!qword_27F95E4B0)
  {
    sub_2587E5C64(255, &qword_27F95E4B8, sub_2587E3AA0, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_2587E3F90();
    v0 = type metadata accessor for MedicalIDCellView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E4B0);
    }
  }
}

void sub_2587E3AA0()
{
  if (!qword_27F95E4C0)
  {
    sub_2587E3B94();
    sub_2587E5C64(255, &qword_27F95E4F8, sub_2587E3D4C, MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
    sub_2587E675C(&qword_27F95E520, sub_2587E3B94);
    sub_2587E3EA8();
    v0 = type metadata accessor for MedicalIDAXLayoutView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E4C0);
    }
  }
}

void sub_2587E3B94()
{
  if (!qword_27F95E4C8)
  {
    sub_2587E3C28(255);
    sub_2587E675C(&qword_27F95E4F0, sub_2587E3C28);
    v0 = sub_2588BD368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E4C8);
    }
  }
}

void sub_2587E3C5C()
{
  if (!qword_27F95E4D8)
  {
    sub_2587E3CF0(255);
    sub_2587E628C(255, &qword_27F95E4E8, &type metadata for ProfileImageView, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95E4D8);
    }
  }
}

void sub_2587E3D4C()
{
  if (!qword_27F95E500)
  {
    sub_2587E3DE0(255);
    sub_2587E675C(&qword_27F95E518, sub_2587E3DE0);
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E500);
    }
  }
}

void sub_2587E3E14()
{
  if (!qword_27F95E510)
  {
    sub_2587E628C(255, &qword_27F95E4E8, &type metadata for ProfileImageView, MEMORY[0x277D83D88]);
    type metadata accessor for PersonInfoView(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95E510);
    }
  }
}

unint64_t sub_2587E3EA8()
{
  result = qword_27F95E528;
  if (!qword_27F95E528)
  {
    sub_2587E5C64(255, &qword_27F95E4F8, sub_2587E3D4C, MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
    sub_2587E675C(&qword_27F95E530, sub_2587E3D4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E528);
  }

  return result;
}

unint64_t sub_2587E3F90()
{
  result = qword_27F95E538;
  if (!qword_27F95E538)
  {
    sub_2587E5C64(255, &qword_27F95E4B8, sub_2587E3AA0, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_2587E675C(&qword_27F95E540, sub_2587E3AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E538);
  }

  return result;
}

unint64_t sub_2587E4078()
{
  result = qword_27F95E550;
  if (!qword_27F95E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E550);
  }

  return result;
}

uint64_t sub_2587E40CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicalIDPersonalInformationCellView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2587E31EC(v4, a1);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for MedicalIDPersonalInformationCellView(0);
  v31 = *(*(v1 - 8) + 80);
  v30 = *(*(v1 - 8) + 64);
  v2 = v0 + ((v31 + 16) & ~v31);
  v3 = *(v2 + 8);

  v4 = *(v2 + 16);

  v5 = *(v2 + 32);

  v6 = *(v2 + 48);

  v7 = *(v2 + 64);

  v8 = *(v2 + 80);

  v9 = type metadata accessor for MedicalIDData();
  v10 = v9[13];
  v11 = sub_2588BB9B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v2 + v10, 1, v11))
  {
    (*(v12 + 8))(v2 + v10, v11);
  }

  v14 = v9[14];
  if (!v13(v2 + v14, 1, v11))
  {
    (*(v12 + 8))(v2 + v14, v11);
  }

  v15 = *(v2 + v9[15] + 8);

  v16 = (v2 + v9[18]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_2587C2610(*v16, v17);
  }

  v18 = v9[19];
  v19 = sub_2588BB818();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v2 + v18, 1, v19))
  {
    (*(v20 + 8))(v2 + v18, v19);
  }

  v21 = v9[21];
  if (!v13(v2 + v21, 1, v11))
  {
    (*(v12 + 8))(v2 + v21, v11);
  }

  v22 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v23 = v22[5];
  v24 = sub_2588BBB48();
  (*(*(v24 - 8) + 8))(v2 + v23, v24);
  v25 = v22[6];
  v26 = sub_2588BBAC8();
  (*(*(v26 - 8) + 8))(v2 + v25, v26);

  v27 = *(v2 + v22[9] + 8);

  v28 = *(v2 + *(v1 + 20) + 8);

  return swift_deallocObject();
}

double sub_2587E44D4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicalIDPersonalInformationCellView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  *&result = sub_2587E3264(a1).n128_u64[0];
  return result;
}

void sub_2587E4538(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v184 = a2;
  sub_2587E5F4C();
  v176 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v177 = &v171 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CDE470];
  sub_2587E5ED8(0, &qword_27F95E5C8, sub_2587E5F4C, MEMORY[0x277CDE470]);
  v182 = v7;
  v181 = *(v7 - 8);
  v8 = *(v181 + 64);
  MEMORY[0x28223BE20](v7);
  v174 = &v171 - v9;
  sub_2587E5E6C(0, &qword_27F95E5C0, &qword_27F95E5C8, sub_2587E5F4C);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v183 = &v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v193 = &v171 - v14;
  v15 = sub_2588BCC88();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v171 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587E6128(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v189 = &v171 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2588BCCE8();
  v187 = *(v23 - 8);
  v188 = v23;
  v24 = *(v187 + 64);
  MEMORY[0x28223BE20](v23);
  v186 = &v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587E5ED8(0, &qword_27F95E5A8, sub_2587E5DE8, v6);
  v27 = v26;
  v28 = *(v26 - 1);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v175 = &v171 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v178 = &v171 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v171 - v34;
  sub_2587E5E6C(0, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v180 = &v171 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v179 = &v171 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v192 = &v171 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v194 = &v171 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v197 = &v171 - v47;
  MEMORY[0x28223BE20](v46);
  v48 = a1[1];
  v195 = &v171 - v49;
  v196 = a1;
  object = v27;
  v185 = v28;
  if (!v48)
  {
    goto LABEL_7;
  }

  v50 = *a1;
  v51 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v51 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v51)
  {
LABEL_7:
    v79 = *(v28 + 56);
    v79();
LABEL_8:
    v80 = MedicalIDPersonalInfoViewModel.localizedAgeDescription()();
    v190 = v79;
    if (v80.value._object)
    {
      v198 = v80;
      sub_25878F648();

      v81 = sub_2588BCDF8();
      v83 = v82;
      v85 = v84;
      sub_2588BCC08();
      v86 = sub_2588BCDD8();
      v88 = v87;
      v90 = v89;
      v92 = v91;

      sub_2587B1CF8(v81, v83, v85 & 1);
      a1 = v196;

      KeyPath = swift_getKeyPath();
      v198.value._countAndFlagsBits = v86;
      v198.value._object = v88;
      v94 = v90 & 1;
      v199 = v90 & 1;
      v173 = v92;
      v200 = v92;
      v201 = KeyPath;
      v202 = 0;
      sub_2587E628C(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_2588BFF50;
      v96 = (a1 + *(type metadata accessor for MedicalIDPersonalInfoViewModel() + 36));
      v97 = v96[1];
      *(v95 + 32) = *v96;
      *(v95 + 40) = v97;
      *(v95 + 48) = 6645569;
      *(v95 + 56) = 0xE300000000000000;

      v98 = sub_2588BD9A8();

      v99 = HKUIJoinStringsForAutomationIdentifier();

      if (!v99)
      {
        __break(1u);
        goto LABEL_22;
      }

      sub_2588BD8A8();

      sub_2587E5DE8();
      sub_2587E65C8();
      v100 = v178;
      sub_2588BCFB8();

      sub_2587B1CF8(v86, v88, v94);

      v101 = v100;
      v102 = v197;
      sub_2587E6648(v101, v197, &qword_27F95E5A8, sub_2587E5DE8);
      v103 = 0;
      v79 = v190;
      v27 = object;
      v28 = v185;
    }

    else
    {
      v103 = 1;
      v102 = v197;
    }

    v104 = 1;
    (v79)(v102, v103, 1, v27);
    v105 = MedicalIDPersonalInfoViewModel.spokenLanguageDescription()();
    if (!v105.value._object)
    {
      v126 = v194;
      goto LABEL_16;
    }

    v173 = v28 + 56;
    v198 = v105;
    sub_25878F648();

    v106 = sub_2588BCDF8();
    v108 = v107;
    v110 = v109;
    sub_2588BCC08();
    v111 = sub_2588BCDD8();
    v113 = v112;
    v115 = v114;
    v117 = v116;

    sub_2587B1CF8(v106, v108, v110 & 1);

    v118 = swift_getKeyPath();
    v178 = v111;
    v198.value._countAndFlagsBits = v111;
    v198.value._object = v113;
    v185 = v113;
    v119 = v115 & 1;
    v199 = v115 & 1;
    v200 = v117;
    v201 = v118;
    v202 = 0;
    sub_2587E628C(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_2588BFF50;
    v121 = (a1 + *(type metadata accessor for MedicalIDPersonalInfoViewModel() + 36));
    v122 = v121[1];
    *(v120 + 32) = *v121;
    *(v120 + 40) = v122;
    *(v120 + 48) = 0x65676175676E614CLL;
    *(v120 + 56) = 0xE800000000000000;

    v123 = sub_2588BD9A8();

    v124 = HKUIJoinStringsForAutomationIdentifier();

    if (v124)
    {

      sub_2588BD8A8();

      sub_2587E5DE8();
      sub_2587E65C8();
      v125 = v175;
      sub_2588BCFB8();

      sub_2587B1CF8(v178, v185, v119);

      v126 = v194;
      sub_2587E6648(v125, v194, &qword_27F95E5A8, sub_2587E5DE8);
      v104 = 0;
      v79 = v190;
      v27 = object;
LABEL_16:
      v127 = 1;
      (v79)(v126, v104, 1, v27);
      v128 = MedicalIDPersonalInfoViewModel.localizedOrganDonationDescription()();
      if (!v128.value._object)
      {
        v162 = v193;
        goto LABEL_20;
      }

      v198 = v128;
      sub_25878F648();
      object = v128.value._object;

      v129 = sub_2588BCDF8();
      v131 = v130;
      v133 = v132;
      v135 = v187;
      v134 = v188;
      v136 = v186;
      (*(v187 + 104))(v186, *MEMORY[0x277CE0AB0], v188);
      v137 = sub_2588BCC18();
      v138 = v189;
      (*(*(v137 - 8) + 56))(v189, 1, 1, v137);
      sub_2588BCC28();
      sub_2588BCC48();
      sub_2587E6568(v138, sub_2587E6128);
      (*(v135 + 8))(v136, v134);
      v139 = sub_2588BCDD8();
      v141 = v140;
      LOBYTE(v138) = v142;
      v144 = v143;

      sub_2587B1CF8(v129, v131, v133 & 1);

      sub_2587E6008();
      v146 = v177;
      v147 = &v177[*(v145 + 36)];
      sub_2587E6068(0);
      v149 = *(v148 + 28);
      v150 = *MEMORY[0x277CE0B48];
      v151 = sub_2588BCDB8();
      v152 = *(v151 - 8);
      (*(v152 + 104))(v147 + v149, v150, v151);
      (*(v152 + 56))(v147 + v149, 0, 1, v151);
      *v147 = swift_getKeyPath();
      *v146 = v139;
      *(v146 + 8) = v141;
      *(v146 + 16) = v138 & 1;
      *(v146 + 24) = v144;
      LODWORD(v138) = sub_2588BC8D8();
      sub_2587E5ED8(0, &qword_27F95E5D8, sub_2587E6008, sub_2587E60D0);
      *(v146 + *(v153 + 36)) = v138;
      v154 = swift_getKeyPath();
      v155 = v146 + *(v176 + 36);
      *v155 = v154;
      *(v155 + 8) = 0;
      sub_2587E628C(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v156 = swift_allocObject();
      *(v156 + 16) = xmmword_2588BFF50;
      v157 = (v196 + *(type metadata accessor for MedicalIDPersonalInfoViewModel() + 36));
      v158 = v157[1];
      *(v156 + 32) = *v157;
      *(v156 + 40) = v158;
      *(v156 + 48) = 0xD000000000000010;
      *(v156 + 56) = 0x80000002588C9870;

      v159 = sub_2588BD9A8();

      v160 = HKUIJoinStringsForAutomationIdentifier();

      if (v160)
      {

        sub_2588BD8A8();

        sub_2587E62DC();
        v161 = v174;
        sub_2588BCFB8();

        sub_2587E6568(v146, sub_2587E5F4C);
        v162 = v193;
        sub_2587E6648(v161, v193, &qword_27F95E5C8, sub_2587E5F4C);
        v127 = 0;
LABEL_20:
        (*(v181 + 56))(v162, v127, 1, v182);
        v163 = v192;
        sub_2587E61C0(v195, v192, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        v164 = v179;
        sub_2587E61C0(v197, v179, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        v165 = v194;
        v166 = v180;
        sub_2587E61C0(v194, v180, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        v167 = v183;
        sub_2587E61C0(v162, v183, &qword_27F95E5C0, &qword_27F95E5C8, sub_2587E5F4C);
        v168 = v184;
        sub_2587E61C0(v163, v184, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        sub_2587E5D20();
        v170 = v169;
        sub_2587E61C0(v164, v168 + *(v169 + 48), &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        sub_2587E61C0(v166, v168 + *(v170 + 64), &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        sub_2587E61C0(v167, v168 + *(v170 + 80), &qword_27F95E5C0, &qword_27F95E5C8, sub_2587E5F4C);
        sub_2587E6230(v193, &qword_27F95E5C0, &qword_27F95E5C8, sub_2587E5F4C);
        sub_2587E6230(v165, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        sub_2587E6230(v197, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        sub_2587E6230(v195, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        sub_2587E6230(v167, &qword_27F95E5C0, &qword_27F95E5C8, sub_2587E5F4C);
        sub_2587E6230(v166, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        sub_2587E6230(v164, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        sub_2587E6230(v192, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        return;
      }

      goto LABEL_23;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v172 = v35;
  v198.value._countAndFlagsBits = v50;
  v198.value._object = v48;
  sub_25878F648();

  v190 = sub_2588BCDF8();
  v53 = v52;
  v55 = v54;
  v173 = v56;
  v58 = v187;
  v57 = v188;
  v59 = v186;
  (*(v187 + 104))(v186, *MEMORY[0x277CE0A80], v188);
  v60 = sub_2588BCC18();
  v61 = v189;
  (*(*(v60 - 8) + 56))(v189, 1, 1, v60);
  sub_2588BCC28();
  sub_2588BCC48();
  sub_2587E6568(v61, sub_2587E6128);
  (*(v58 + 8))(v59, v57);
  (*(v16 + 104))(v19, *MEMORY[0x277CE0A10], v15);
  sub_2588BCCA8();

  (*(v16 + 8))(v19, v15);
  v62 = v190;
  v63 = sub_2588BCDD8();
  v65 = v64;
  v67 = v66;
  v69 = v68;

  sub_2587B1CF8(v62, v53, v55 & 1);

  v70 = swift_getKeyPath();
  v198.value._countAndFlagsBits = v63;
  v198.value._object = v65;
  v71 = v67 & 1;
  v199 = v67 & 1;
  v200 = v69;
  v201 = v70;
  v202 = 0;
  sub_2587E628C(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_2588BFF50;
  v73 = (v196 + *(type metadata accessor for MedicalIDPersonalInfoViewModel() + 36));
  v74 = v73[1];
  *(v72 + 32) = *v73;
  *(v72 + 40) = v74;
  *(v72 + 48) = 1701667150;
  *(v72 + 56) = 0xE400000000000000;

  v75 = sub_2588BD9A8();

  v76 = HKUIJoinStringsForAutomationIdentifier();

  if (v76)
  {
    sub_2588BD8A8();

    sub_2587E5DE8();
    sub_2587E65C8();
    v77 = v172;
    sub_2588BCFB8();

    sub_2587B1CF8(v63, v65, v71);

    v78 = v195;
    sub_2587E6648(v77, v195, &qword_27F95E5A8, sub_2587E5DE8);
    v28 = v185;
    v79 = *(v185 + 56);
    v27 = object;
    (v79)(v78, 0, 1, object);
    a1 = v196;
    goto LABEL_8;
  }

LABEL_24:
  __break(1u);
}

void sub_2587E58EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(v2 + *(a1 + 20));
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  sub_2587E598C(0, &qword_27F95E588, sub_2587E5CEC);
  sub_2587E4538(v2, a2 + *(v4 + 44));
}

uint64_t sub_2587E5964(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_2587CC620(a1, a2);
  }

  return a1;
}

uint64_t sub_2587E5978(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_2587C4E98(a1, a2);
  }

  return a1;
}

void sub_2587E598C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_2587E59F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587E5A60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2587E5AF0()
{
  type metadata accessor for MedicalIDPersonalInfoViewModel();
  if (v0 <= 0x3F)
  {
    sub_2587BC234();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2587E5B7C()
{
  result = qword_27F95E578;
  if (!qword_27F95E578)
  {
    sub_2587E5C64(255, &qword_27F95E580, sub_2587E3A04, &type metadata for MedicalIDPlaceholderCell, MEMORY[0x277CE0338]);
    sub_2587E675C(&qword_27F95E548, sub_2587E3A04);
    sub_2587E4078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E578);
  }

  return result;
}

void sub_2587E5C64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_2587E5D20()
{
  if (!qword_27F95E598)
  {
    sub_2587E5E6C(255, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
    sub_2587E5E6C(255, &qword_27F95E5C0, &qword_27F95E5C8, sub_2587E5F4C);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27F95E598);
    }
  }
}

void sub_2587E5DE8()
{
  if (!qword_27F95E5B0)
  {
    sub_2587E628C(255, &qword_27F95E5B8, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E5B0);
    }
  }
}

void sub_2587E5E6C(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2587E5ED8(255, a3, a4, MEMORY[0x277CDE470]);
    v5 = sub_2588BDCE8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2587E5ED8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_2587E5F4C()
{
  if (!qword_27F95E5D0)
  {
    sub_2587E5ED8(255, &qword_27F95E5D8, sub_2587E6008, sub_2587E60D0);
    sub_2587E628C(255, &qword_27F95E5B8, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E5D0);
    }
  }
}

void sub_2587E6008()
{
  if (!qword_27F95E5E0)
  {
    sub_2587E6068(255);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E5E0);
    }
  }
}

void sub_2587E60D0()
{
  if (!qword_27F95E5F8)
  {
    v0 = sub_2588BC918();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E5F8);
    }
  }
}

void sub_2587E615C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2587E61C0(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_2587E5E6C(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_2587E6230(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2587E5E6C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_2587E628C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2587E62DC()
{
  result = qword_27F95E608;
  if (!qword_27F95E608)
  {
    sub_2587E5F4C();
    sub_2587E635C();
    sub_2587E64EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E608);
  }

  return result;
}

unint64_t sub_2587E635C()
{
  result = qword_27F95E610;
  if (!qword_27F95E610)
  {
    sub_2587E5ED8(255, &qword_27F95E5D8, sub_2587E6008, sub_2587E60D0);
    sub_2587E643C();
    sub_2587E675C(&qword_27F95E628, sub_2587E60D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E610);
  }

  return result;
}

unint64_t sub_2587E643C()
{
  result = qword_27F95E618;
  if (!qword_27F95E618)
  {
    sub_2587E6008();
    sub_2587E675C(&qword_27F95E620, sub_2587E6068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E618);
  }

  return result;
}

unint64_t sub_2587E64EC()
{
  result = qword_27F95E630;
  if (!qword_27F95E630)
  {
    sub_2587E628C(255, &qword_27F95E5B8, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E630);
  }

  return result;
}

uint64_t sub_2587E6568(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2587E65C8()
{
  result = qword_27F95E638;
  if (!qword_27F95E638)
  {
    sub_2587E5DE8();
    sub_2587E64EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E638);
  }

  return result;
}

uint64_t sub_2587E6648(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2587E5ED8(0, a3, a4, MEMORY[0x277CDE470]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_2587E66C8()
{
  if (!qword_27F95E648)
  {
    sub_2587E5CEC(255);
    sub_2587E675C(&qword_27F95E650, sub_2587E5CEC);
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E648);
    }
  }
}

uint64_t sub_2587E675C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MedicalIDEmergencyContactsCellView()
{
  result = qword_27F95E670;
  if (!qword_27F95E670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2587E6818()
{
  sub_2587E89C8(319, &qword_27F95E668, MEMORY[0x277CDE530], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2587E8520(319, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2587B2F78();
      if (v2 <= 0x3F)
      {
        sub_2587E8520(319, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2587E6968(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MedicalIDEmergencyContactsCellView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  if (qword_27F95D0F8 != -1)
  {
    v21 = v6;
    swift_once();
    v6 = v21;
  }

  v7 = unk_27F969850;
  v8 = *(*(v1 + v6[5]) + 16) != 0;
  v9 = (v1 + v6[6]);
  v10 = *v9;
  v11 = v9[1];
  v12 = (v1 + v6[7]);
  v13 = *v12;
  v14 = v12[1];
  *a1 = qword_27F969848;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 17) = 2;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = 0x4018000000000000;
  *(a1 + 64) = 1;
  sub_2587E7D34();
  v16 = *(v15 + 44);

  sub_2587E6BAC(v1);
  sub_2587E84B8(v1, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDEmergencyContactsCellView);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_2587E88B0(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for MedicalIDEmergencyContactsCellView);
  sub_2587E8148(0, &qword_27F95E6F8, sub_2587E7D34, MEMORY[0x277CE07A0], MEMORY[0x277CDFAB8]);
  v20 = (a1 + *(v19 + 36));
  *v20 = sub_2587E83C0;
  v20[1] = v18;
  v20[2] = 0;
  v20[3] = 0;
}

uint64_t sub_2587E6BAC(uint64_t a1)
{
  sub_2587E8148(0, &qword_27F95E700, sub_2587E7DD0, &type metadata for MedicalIDCellPlaceholderText, MEMORY[0x277CE0330]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - v4);
  sub_2587E7DD0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MedicalIDEmergencyContactsCellView();
  if (*(*(a1 + *(v10 + 20)) + 16))
  {
    *v9 = sub_2588BC6F8();
    *(v9 + 1) = 0x4030000000000000;
    v9[16] = 0;
    sub_2587E8420();
    sub_2587E6E80(a1, &v9[*(v11 + 44)]);
    sub_2587E84B8(v9, v5, sub_2587E7DD0);
    swift_storeEnumTagMultiPayload();
    sub_2587E8324(&qword_27F95E6E0, sub_2587E7DD0);
    sub_2587E836C();
    sub_2588BC778();
    return sub_2587E8918(v9, sub_2587E7DD0);
  }

  else
  {
    if (qword_27F95D080 != -1)
    {
      v17 = v10;
      swift_once();
      v10 = v17;
    }

    v13 = unk_27F95E660;
    v14 = (a1 + *(v10 + 24));
    v15 = *v14;
    v16 = v14[1];
    *v5 = qword_27F95E658;
    v5[1] = v13;
    v5[2] = v15;
    v5[3] = v16;
    swift_storeEnumTagMultiPayload();
    sub_2587E8324(&qword_27F95E6E0, sub_2587E7DD0);
    sub_2587E836C();

    return sub_2588BC778();
  }
}

void sub_2587E6E80(uint64_t a1@<X0>, char *a2@<X8>)
{
  v84 = a1;
  v83 = a2;
  v3 = type metadata accessor for MedicalIDEmergencyContactsCellView();
  v4 = v3 - 8;
  v72 = *(v3 - 8);
  v5 = *(v72 + 64);
  MEMORY[0x28223BE20](v3);
  v73 = v6;
  v74 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587E80A8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587E8010();
  v71 = v10;
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v82 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v75 = &v71 - v15;
  MEMORY[0x28223BE20](v14);
  v79 = &v71 - v16;
  sub_2587E7ED4();
  v81 = v17;
  v80 = *(v17 - 8);
  v18 = *(v80 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v78 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - v21;
  *&v87 = *(a1 + *(v4 + 28));
  swift_getKeyPath();
  sub_2587E8520(0, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
  type metadata accessor for ContactLabelView();
  sub_2587E7F94();
  sub_258791374();
  sub_2587E8324(&qword_27F95E710, type metadata accessor for ContactLabelView);

  v76 = v22;
  sub_2588BD4B8();
  sub_2587E77D4();
  sub_2588BC688();
  v23 = sub_2588BCDE8();
  v25 = v24;
  v27 = v26;
  sub_2588BCCC8();
  v28 = sub_2588BCDD8();
  v30 = v29;
  v32 = v31;

  sub_2587B1CF8(v23, v25, v27 & 1);

  LODWORD(v87) = sub_2588BC8D8();
  v33 = sub_2588BCD98();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_2587B1CF8(v28, v30, v32 & 1);

  KeyPath = swift_getKeyPath();
  v41 = sub_2588BCB98();
  sub_2588BBE38();
  v93 = v37 & 1;
  v92 = 0;
  *&v87 = v33;
  *(&v87 + 1) = v35;
  LOBYTE(v88) = v37 & 1;
  *(&v88 + 1) = v39;
  *&v89 = KeyPath;
  v42 = v84;
  BYTE8(v89) = 0;
  LOBYTE(v90) = v41;
  *(&v90 + 1) = v43;
  *v91 = v44;
  *&v91[8] = v45;
  *&v91[16] = v46;
  v91[24] = 0;
  sub_2587E8520(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_2588BFF50;
  v48 = (v42 + *(v4 + 32));
  v49 = v48[1];
  *(v47 + 32) = *v48;
  *(v47 + 40) = v49;
  *(v47 + 48) = 0x7265746F6F46;
  *(v47 + 56) = 0xE600000000000000;

  v50 = sub_2588BD9A8();

  v51 = HKUIJoinStringsForAutomationIdentifier();

  if (v51)
  {
    sub_2588BD8A8();

    sub_2587E8148(0, &qword_27F95E6C0, sub_2587E5DE8, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_2587E8570();
    v52 = v77;
    sub_2588BCFB8();

    v85[2] = v89;
    v85[3] = v90;
    v86[0] = *v91;
    *(v86 + 9) = *&v91[9];
    v85[0] = v87;
    v85[1] = v88;
    sub_2587E8628(v85);
    v53 = swift_getKeyPath();
    v54 = v74;
    sub_2587E84B8(v42, v74, type metadata accessor for MedicalIDEmergencyContactsCellView);
    v55 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v56 = swift_allocObject();
    sub_2587E88B0(v54, v56 + v55, type metadata accessor for MedicalIDEmergencyContactsCellView);
    v57 = v75;
    v58 = &v75[*(v71 + 36)];
    sub_2587E89C8(0, &qword_27F95E6C8, MEMORY[0x277CDF708], MEMORY[0x277CE0860]);
    v60 = *(v59 + 28);
    sub_2588BC078();
    *v58 = v53;
    sub_2587E88B0(v52, v57, sub_2587E80A8);
    v61 = v79;
    sub_2587E88B0(v57, v79, sub_2587E8010);
    v62 = v80;
    v63 = *(v80 + 16);
    v64 = v78;
    v65 = v76;
    v66 = v81;
    v63(v78, v76, v81);
    v67 = v82;
    sub_2587E84B8(v61, v82, sub_2587E8010);
    v68 = v83;
    v63(v83, v64, v66);
    sub_2587E7E64();
    sub_2587E84B8(v67, &v68[*(v69 + 48)], sub_2587E8010);
    sub_2587E8918(v61, sub_2587E8010);
    v70 = *(v62 + 8);
    v70(v65, v66);
    sub_2587E8918(v67, sub_2587E8010);
    v70(v64, v66);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2587E76F0@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[5];
  v18 = a1[4];
  v19 = v3;
  v4 = a1[7];
  v20 = a1[6];
  v21 = v4;
  v5 = a1[1];
  v14 = *a1;
  v15 = v5;
  v6 = a1[3];
  v16 = a1[2];
  v17 = v6;
  KeyPath = swift_getKeyPath();
  *(a2 + *(type metadata accessor for ContactLabelView() + 20)) = KeyPath;
  sub_2587E89C8(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v8 = v19;
  a2[4] = v18;
  a2[5] = v8;
  v9 = v21;
  a2[6] = v20;
  a2[7] = v9;
  v10 = v15;
  *a2 = v14;
  a2[1] = v10;
  v11 = v17;
  a2[2] = v16;
  a2[3] = v11;
  return sub_2587914E8(&v14, &v13);
}

id sub_2587E77D4()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    v2 = sub_2588BD868();
    [v1 applicationIsInstalled_];

    v3 = sub_2588BD858();
    v4 = *(*(v3 - 8) + 64);
    MEMORY[0x28223BE20](v3 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v5 = qword_27F95DA88;
    v6 = sub_2588BBAC8();
    v7 = *(*(v6 - 8) + 64);
    MEMORY[0x28223BE20](v6 - 8);
    v8 = v5;
    sub_2588BBAB8();
    return sub_2588BD8B8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2587E79A0()
{
  v0 = sub_2588BCB28();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_2588BD868();
  v6 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  sub_258852750(v4);
  v8 = v6;
  sub_2588BCB18();
  (*(v1 + 8))(v4, v0);
  sub_2588BC068();
}

uint64_t sub_2587E7AF8(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MedicalIDEmergencyContactsCellView() + 32));
  v2 = *v1;
  v3 = *(v1 + 1);
  sub_2587E8520(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  result = sub_2588BD2C8();
  if (v6 == 1)
  {
    v5 = objc_opt_self();
    if (([v5 isAllowedToMessageSOSContacts] & 1) == 0)
    {
      [v5 setAllowedToMessageSOSContacts_];
    }

    return sub_2588BD2D8();
  }

  return result;
}

uint64_t sub_2587E7BE4()
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
  qword_27F95E658 = result;
  unk_27F95E660 = v7;
  return result;
}

void sub_2587E7D34()
{
  if (!qword_27F95E680)
  {
    sub_2587E8148(255, &qword_27F95E688, sub_2587E7DD0, &type metadata for MedicalIDCellPlaceholderText, MEMORY[0x277CE0338]);
    sub_2587E823C();
    v0 = type metadata accessor for MedicalIDCellView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E680);
    }
  }
}

void sub_2587E7DD0()
{
  if (!qword_27F95E690)
  {
    sub_2587E89C8(255, &qword_27F95E698, sub_2587E7E64, MEMORY[0x277CE14B8]);
    sub_2587E81B4();
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E690);
    }
  }
}

void sub_2587E7E64()
{
  if (!qword_27F95E6A0)
  {
    sub_2587E7ED4();
    sub_2587E8010();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95E6A0);
    }
  }
}

void sub_2587E7ED4()
{
  if (!qword_27F95E6A8)
  {
    sub_2587E8520(255, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
    type metadata accessor for ContactLabelView();
    sub_2587E7F94();
    sub_258791374();
    v0 = sub_2588BD4D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E6A8);
    }
  }
}

unint64_t sub_2587E7F94()
{
  result = qword_27F95E150;
  if (!qword_27F95E150)
  {
    sub_2587E8520(255, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E150);
  }

  return result;
}

void sub_2587E8010()
{
  if (!qword_27F95E6B0)
  {
    sub_2587E80A8();
    sub_2587E89C8(255, &qword_27F95E6C8, MEMORY[0x277CDF708], MEMORY[0x277CE0860]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E6B0);
    }
  }
}

void sub_2587E80A8()
{
  if (!qword_27F95E6B8)
  {
    sub_2587E8148(255, &qword_27F95E6C0, sub_2587E5DE8, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_2588BCA98();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E6B8);
    }
  }
}

void sub_2587E8148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_2587E81B4()
{
  result = qword_27F95E6D0;
  if (!qword_27F95E6D0)
  {
    sub_2587E89C8(255, &qword_27F95E698, sub_2587E7E64, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E6D0);
  }

  return result;
}

unint64_t sub_2587E823C()
{
  result = qword_27F95E6D8;
  if (!qword_27F95E6D8)
  {
    sub_2587E8148(255, &qword_27F95E688, sub_2587E7DD0, &type metadata for MedicalIDCellPlaceholderText, MEMORY[0x277CE0338]);
    sub_2587E8324(&qword_27F95E6E0, sub_2587E7DD0);
    sub_2587E836C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E6D8);
  }

  return result;
}

uint64_t sub_2587E8324(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2587E836C()
{
  result = qword_27F95E6E8;
  if (!qword_27F95E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E6E8);
  }

  return result;
}

uint64_t sub_2587E83C0()
{
  v1 = *(type metadata accessor for MedicalIDEmergencyContactsCellView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2587E7AF8(v2);
}

void sub_2587E8420()
{
  if (!qword_27F95E708)
  {
    sub_2587E89C8(255, &qword_27F95E698, sub_2587E7E64, MEMORY[0x277CE14B8]);
    v0 = sub_2588BC0B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E708);
    }
  }
}

uint64_t sub_2587E84B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2587E8520(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2587E8570()
{
  result = qword_27F95E718;
  if (!qword_27F95E718)
  {
    sub_2587E8148(255, &qword_27F95E6C0, sub_2587E5DE8, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_2587E65C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E718);
  }

  return result;
}

uint64_t sub_2587E8628(uint64_t a1)
{
  sub_2587E8148(0, &qword_27F95E6C0, sub_2587E5DE8, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for MedicalIDEmergencyContactsCellView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  sub_2587E89C8(0, &qword_27F95E6F0, MEMORY[0x277CDE530], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2588BCB28();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *(v4 + v1[5]);

  v8 = *(v4 + v1[6] + 8);

  v9 = *(v4 + v1[7] + 8);

  v10 = *(v4 + v1[8] + 8);

  return swift_deallocObject();
}

void sub_2587E8830()
{
  v0 = *(*(type metadata accessor for MedicalIDEmergencyContactsCellView() - 8) + 80);

  sub_2587E79A0();
}

uint64_t sub_2587E88B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587E8918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_2587E8978(uint64_t a1)
{
  v2 = *(v1 + 16);
  [v2 setPresentingViewController_];

  return [v2 present];
}

void sub_2587E89C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2587E8A2C()
{
  result = qword_27F95E720;
  if (!qword_27F95E720)
  {
    sub_2587E8148(255, &qword_27F95E6F8, sub_2587E7D34, MEMORY[0x277CE07A0], MEMORY[0x277CDFAB8]);
    sub_2587E8324(&qword_27F95E728, sub_2587E7D34);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E720);
  }

  return result;
}

uint64_t MedicalIDData.displayName.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0;
  }

  v2 = *v0;
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  return v2;
}

uint64_t MedicalIDData.init(name:emergencyContacts:medicalConditions:allergyInfo:medicalNotes:medicationInfo:bloodType:height:weight:pregnancyStartDate:pregnancyEstimatedDueDate:primaryLanguageCode:isDisabled:shareDuringEmergency:pictureData:gregorianBirthday:isOrganDonor:dateSaved:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v25 = type metadata accessor for MedicalIDData();
  v26 = v25[13];
  v27 = sub_2588BB9B8();
  v28 = *(*(v27 - 8) + 56);
  v28(a9 + v26, 1, 1, v27);
  v29 = v25[14];
  v28(a9 + v29, 1, 1, v27);
  v30 = (a9 + v25[15]);
  v31 = a9 + v25[18];
  *v31 = xmmword_2588C0670;
  v32 = v25[19];
  v33 = sub_2588BB818();
  (*(*(v33 - 8) + 56))(a9 + v32, 1, 1, v33);
  v34 = v25[20];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  v35 = MEMORY[0x28220BF30];
  sub_2587E8E28(a14, a9 + v26, &qword_27F95D880, MEMORY[0x28220BF30]);
  sub_2587E8E28(a15, a9 + v29, &qword_27F95D880, v35);
  *v30 = a16;
  v30[1] = a17;
  *(a9 + v25[16]) = a18;
  *(a9 + v25[17]) = a19;
  sub_2587C4E98(*v31, *(v31 + 8));
  *v31 = a20;
  *(v31 + 8) = a21;
  sub_2587E8E28(a22, a9 + v32, &qword_27F95DA80, MEMORY[0x28220B6D0]);
  *(a9 + v34) = a23;
  v36 = a9 + v25[21];

  return sub_2587E8EE8(a24, v36);
}

uint64_t type metadata accessor for MedicalIDData()
{
  result = qword_27F95E730;
  if (!qword_27F95E730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587E8E28(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2587E8E94(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_2587E8E94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BDCE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2587E8EE8(uint64_t a1, uint64_t a2)
{
  sub_2587E8E94(0, &qword_27F95D880, MEMORY[0x28220BF30]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MedicalIDData.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MedicalIDData.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MedicalIDData.emergencyContacts.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t MedicalIDData.medicalConditions.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t MedicalIDData.medicalConditions.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t MedicalIDData.allergyInfo.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t MedicalIDData.allergyInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t MedicalIDData.medicalNotes.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t MedicalIDData.medicalNotes.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t MedicalIDData.medicationInfo.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t MedicalIDData.medicationInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

void *MedicalIDData.height.getter()
{
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

void *MedicalIDData.weight.getter()
{
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

uint64_t MedicalIDData.primaryLanguageCode.getter()
{
  v1 = (v0 + *(type metadata accessor for MedicalIDData() + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MedicalIDData.primaryLanguageCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MedicalIDData() + 60));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MedicalIDData.isDisabled.setter(char a1)
{
  result = type metadata accessor for MedicalIDData();
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t MedicalIDData.shareDuringEmergency.setter(char a1)
{
  result = type metadata accessor for MedicalIDData();
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t MedicalIDData.pictureData.getter()
{
  v1 = v0 + *(type metadata accessor for MedicalIDData() + 72);
  v2 = *v1;
  sub_2587CC620(*v1, *(v1 + 8));
  return v2;
}

uint64_t MedicalIDData.pictureData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for MedicalIDData() + 72);
  result = sub_2587C4E98(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2587E9844(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2587E8E94(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *MedicalIDData.isOrganDonor.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicalIDData() + 80));
  v2 = v1;
  return v1;
}

void MedicalIDData.isOrganDonor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MedicalIDData() + 80);

  *(v1 + v3) = a1;
}

BOOL _s11MedicalIDUI0A6IDDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_2588BDF98() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((sub_2587C544C(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v8 = a1[4];
  v9 = a2[4];
  if (v8)
  {
    if (!v9 || (a1[3] != a2[3] || v8 != v9) && (sub_2588BDF98() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[6];
  v11 = a2[6];
  if (v10)
  {
    if (!v11 || (a1[5] != a2[5] || v10 != v11) && (sub_2588BDF98() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = a1[8];
  v13 = a2[8];
  if (v12)
  {
    if (!v13 || (a1[7] != a2[7] || v12 != v13) && (sub_2588BDF98() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v14 = a1[10];
  v15 = a2[10];
  if (v14)
  {
    if (!v15 || (a1[9] != a2[9] || v14 != v15) && (sub_2588BDF98() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (a1[11] != a2[11])
  {
    return 0;
  }

  v16 = a1[12];
  v17 = a2[12];
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    sub_25878E130(0, &qword_27F95E748, 0x277CCD7E8);
    v18 = v17;
    v19 = v16;
    v20 = sub_2588BDCD8();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = a1[13];
  v22 = a2[13];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    sub_25878E130(0, &qword_27F95E748, 0x277CCD7E8);
    v23 = v22;
    v24 = v21;
    v25 = sub_2588BDCD8();

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v145 = type metadata accessor for MedicalIDData();
  v26 = v145[13];
  v27 = MEMORY[0x28220BF30];
  sub_2587EABE4(0, &qword_27F95E758, &qword_27F95D880, MEMORY[0x28220BF30]);
  v29 = v28;
  v146 = v135;
  v144 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v135[-v31];
  v33 = *(v30 + 48);
  sub_2587E9844(a1 + v26, &v135[-v31], &qword_27F95D880, v27);
  sub_2587E9844(a2 + v26, &v32[v33], &qword_27F95D880, v27);
  v34 = sub_2588BB9B8();
  v35 = *(v34 - 8);
  v36 = v35 + 48;
  v37 = *(v35 + 48);
  if (v37(v32, 1, v34) == 1)
  {
    if (v37(&v32[v33], 1, v34) != 1)
    {
      goto LABEL_61;
    }

    v139 = v35;
    v38 = sub_2587EACA4(v32, &qword_27F95D880, MEMORY[0x28220BF30]);
  }

  else
  {
    v141 = v29;
    v39 = MEMORY[0x28220BF30];
    sub_2587E8E94(0, &qword_27F95D880, MEMORY[0x28220BF30]);
    v140 = v135;
    v41 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v40 - 8);
    v43 = &v135[-v42];
    sub_2587E9844(v32, &v135[-v42], &qword_27F95D880, v39);
    v142 = v37;
    v143 = v35 + 48;
    v44 = (v37)(&v32[v33], 1, v34);
    if (v44 == 1)
    {
      (*(v35 + 8))(v43, v34);
      goto LABEL_61;
    }

    v138 = v135;
    v45 = *(v35 + 64);
    MEMORY[0x28223BE20](v44);
    v47 = &v135[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v35 + 32))(v47, &v32[v33], v34);
    v48 = MEMORY[0x28220BF30];
    sub_2587EAD00(&qword_27F95E768, MEMORY[0x28220BF30]);
    v49 = v43;
    v50 = sub_2588BD7D8();
    v139 = v35;
    v51 = *(v35 + 8);
    v51(v47, v34);
    v51(v49, v34);
    v38 = sub_2587EACA4(v32, &qword_27F95D880, v48);
    v37 = v142;
    v36 = v143;
    v29 = v141;
    if ((v50 & 1) == 0)
    {
      return 0;
    }
  }

  v146 = v135;
  v52 = v145[14];
  MEMORY[0x28223BE20](v38);
  v32 = &v135[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v141 = v29;
  v54 = *(v29 + 48);
  v55 = MEMORY[0x28220BF30];
  sub_2587E9844(a1 + v52, v32, &qword_27F95D880, MEMORY[0x28220BF30]);
  sub_2587E9844(a2 + v52, &v32[v54], &qword_27F95D880, v55);
  v56 = v37(v32, 1, v34);
  v142 = v37;
  v143 = v36;
  if (v56 == 1)
  {
    v57 = v34;
    if (v37(&v32[v54], 1, v34) == 1)
    {
      sub_2587EACA4(v32, &qword_27F95D880, MEMORY[0x28220BF30]);
      goto LABEL_65;
    }

LABEL_61:
    v65 = &qword_27F95E758;
    v66 = &qword_27F95D880;
    v67 = MEMORY[0x28220BF30];
LABEL_62:
    sub_2587EAC48(v32, v65, v66, v67);
    return 0;
  }

  v58 = v37;
  v59 = MEMORY[0x28220BF30];
  sub_2587E8E94(0, &qword_27F95D880, MEMORY[0x28220BF30]);
  v140 = v135;
  v61 = (*(*(v60 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60 - 8);
  v63 = &v135[-v62];
  sub_2587E9844(v32, &v135[-v62], &qword_27F95D880, v59);
  v64 = v58(&v32[v54], 1, v34);
  if (v64 == 1)
  {
    (*(v139 + 8))(v63, v34);
    goto LABEL_61;
  }

  v138 = v135;
  v69 = v139;
  v70 = *(v139 + 64);
  MEMORY[0x28223BE20](v64);
  v72 = &v135[-((v71 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v69 + 32))(v72, &v32[v54], v34);
  v73 = MEMORY[0x28220BF30];
  sub_2587EAD00(&qword_27F95E768, MEMORY[0x28220BF30]);
  v74 = v63;
  v75 = sub_2588BD7D8();
  v76 = *(v69 + 8);
  v76(v72, v34);
  v57 = v34;
  v76(v74, v34);
  sub_2587EACA4(v32, &qword_27F95D880, v73);
  if ((v75 & 1) == 0)
  {
    return 0;
  }

LABEL_65:
  v77 = v145[15];
  v78 = (a1 + v77);
  v79 = *(a1 + v77 + 8);
  v80 = (a2 + v77);
  v81 = v80[1];
  if (v79)
  {
    if (!v81 || (*v78 != *v80 || v79 != v81) && (sub_2588BDF98() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v81)
  {
    return 0;
  }

  if (*(a1 + v145[16]) != *(a2 + v145[16]) || *(a1 + v145[17]) != *(a2 + v145[17]))
  {
    return 0;
  }

  v82 = v145[18];
  v84 = *(a1 + v82);
  v83 = *(a1 + v82 + 8);
  v85 = (a2 + v82);
  v87 = *v85;
  v86 = v85[1];
  if (v83 >> 60 == 15)
  {
    if (v86 >> 60 == 15)
    {
      sub_2587CC620(v84, v83);
      sub_2587CC620(v87, v86);
      sub_2587C4E98(v84, v83);
      goto LABEL_80;
    }

LABEL_78:
    sub_2587CC620(v84, v83);
    sub_2587CC620(v87, v86);
    sub_2587C4E98(v84, v83);
    sub_2587C4E98(v87, v86);
    return 0;
  }

  if (v86 >> 60 == 15)
  {
    goto LABEL_78;
  }

  sub_2587CC620(v84, v83);
  sub_2587CC620(v87, v86);
  v88 = sub_258830544(v84, v83, v87, v86);
  sub_2587C4E98(v87, v86);
  sub_2587C4E98(v84, v83);
  if ((v88 & 1) == 0)
  {
    return 0;
  }

LABEL_80:
  v89 = v145[19];
  v90 = MEMORY[0x28220B6D0];
  sub_2587EABE4(0, &qword_27F95E760, &qword_27F95DA80, MEMORY[0x28220B6D0]);
  v146 = v135;
  v92 = (*(*(v91 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v93 = MEMORY[0x28223BE20](v91 - 8);
  v32 = &v135[-v94];
  v95 = *(v93 + 56);
  sub_2587E9844(a1 + v89, &v135[-v94], &qword_27F95DA80, v90);
  sub_2587E9844(a2 + v89, &v32[v95], &qword_27F95DA80, v90);
  v96 = sub_2588BB818();
  v97 = *(v96 - 8);
  v98 = *(v97 + 48);
  if (v98(v32, 1, v96) == 1)
  {
    if (v98(&v32[v95], 1, v96) == 1)
    {
      v99 = sub_2587EACA4(v32, &qword_27F95DA80, MEMORY[0x28220B6D0]);
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v100 = MEMORY[0x28220B6D0];
  sub_2587E8E94(0, &qword_27F95DA80, MEMORY[0x28220B6D0]);
  v140 = v135;
  v102 = (*(*(v101 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v101 - 8);
  v138 = &v135[-v103];
  sub_2587E9844(v32, &v135[-v103], &qword_27F95DA80, v100);
  v104 = (v98)(&v32[v95], 1, v96);
  if (v104 == 1)
  {
    (*(v97 + 8))(v138, v96);
LABEL_85:
    v65 = &qword_27F95E760;
    v66 = &qword_27F95DA80;
    v67 = MEMORY[0x28220B6D0];
    goto LABEL_62;
  }

  v137 = v135;
  v105 = *(v97 + 64);
  MEMORY[0x28223BE20](v104);
  v107 = &v135[-((v106 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v97 + 32))(v107, &v32[v95], v96);
  v108 = MEMORY[0x28220B6D0];
  sub_2587EAD00(&qword_27F95E770, MEMORY[0x28220B6D0]);
  v109 = v138;
  v136 = sub_2588BD7D8();
  v110 = *(v97 + 8);
  v110(v107, v96);
  v110(v109, v96);
  v99 = sub_2587EACA4(v32, &qword_27F95DA80, v108);
  if ((v136 & 1) == 0)
  {
    return 0;
  }

LABEL_87:
  v111 = v145[20];
  v112 = *(a1 + v111);
  v113 = *(a2 + v111);
  if (!v112)
  {
    if (!v113)
    {
      goto LABEL_92;
    }

    return 0;
  }

  if (!v113)
  {
    return 0;
  }

  sub_25878E130(0, &qword_27F95D898, 0x277CCABB0);
  v114 = v113;
  v115 = v112;
  v116 = sub_2588BDCD8();

  if ((v116 & 1) == 0)
  {
    return 0;
  }

LABEL_92:
  v117 = v145[21];
  MEMORY[0x28223BE20](v99);
  v119 = &v135[-((v118 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v120 = *(v141 + 48);
  v121 = MEMORY[0x28220BF30];
  sub_2587E9844(a1 + v117, v119, &qword_27F95D880, MEMORY[0x28220BF30]);
  sub_2587E9844(a2 + v117, &v119[v120], &qword_27F95D880, v121);
  if (v142(v119, 1, v57) == 1)
  {
    if (v142(&v119[v120], 1, v57) == 1)
    {
      sub_2587EACA4(v119, &qword_27F95D880, MEMORY[0x28220BF30]);
      return 1;
    }

    goto LABEL_97;
  }

  v122 = MEMORY[0x28220BF30];
  sub_2587E8E94(0, &qword_27F95D880, MEMORY[0x28220BF30]);
  v124 = (*(*(v123 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v123 - 8);
  v126 = &v135[-v125];
  sub_2587E9844(v119, &v135[-v125], &qword_27F95D880, v122);
  v127 = (v142)(&v119[v120], 1, v57);
  if (v127 == 1)
  {
    (*(v139 + 8))(v126, v57);
LABEL_97:
    sub_2587EAC48(v119, &qword_27F95E758, &qword_27F95D880, MEMORY[0x28220BF30]);
    return 0;
  }

  v146 = v135;
  v128 = v139;
  v129 = *(v139 + 64);
  MEMORY[0x28223BE20](v127);
  v131 = &v135[-((v130 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v128 + 32))(v131, &v119[v120], v57);
  v132 = MEMORY[0x28220BF30];
  sub_2587EAD00(&qword_27F95E768, MEMORY[0x28220BF30]);
  v133 = sub_2588BD7D8();
  v134 = *(v128 + 8);
  v134(v131, v57);
  v134(v126, v57);
  sub_2587EACA4(v119, &qword_27F95D880, v132);
  return (v133 & 1) != 0;
}

void sub_2587EAA04()
{
  sub_25878E290(319, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_25878E290(319, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for HKBloodType(319);
      if (v2 <= 0x3F)
      {
        sub_2587AE90C(319, &qword_27F95E740, &qword_27F95E748, 0x277CCD7E8);
        if (v3 <= 0x3F)
        {
          sub_2587E8E94(319, &qword_27F95D880, MEMORY[0x28220BF30]);
          if (v4 <= 0x3F)
          {
            sub_2587CC4B0();
            if (v5 <= 0x3F)
            {
              sub_2587E8E94(319, &qword_27F95DA80, MEMORY[0x28220B6D0]);
              if (v6 <= 0x3F)
              {
                sub_2587AE90C(319, &qword_27F95E750, &qword_27F95D898, 0x277CCABB0);
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

void sub_2587EABE4(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2587E8E94(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2587EAC48(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2587EABE4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2587EACA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2587E8E94(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2587EAD00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static MIUIMedicalIDLearnMoreNavigationViewControllerFactory.makeViewController()()
{
  v0 = type metadata accessor for MedicalIDLearnMoreNavigationView();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  *(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0)) = swift_getKeyPath();
  sub_2587EAE10();
  swift_storeEnumTagMultiPayload();
  sub_2587EAE68();
  v4 = objc_allocWithZone(v3);
  return sub_2588BC738();
}

void sub_2587EAE10()
{
  if (!qword_27F95DB30)
  {
    sub_2588BC038();
    v0 = sub_2588BBF38();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DB30);
    }
  }
}

void sub_2587EAE68()
{
  if (!qword_27F95E778)
  {
    type metadata accessor for MedicalIDLearnMoreNavigationView();
    sub_2587EAECC();
    v0 = sub_2588BC748();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E778);
    }
  }
}

unint64_t sub_2587EAECC()
{
  result = qword_27F95E780;
  if (!qword_27F95E780)
  {
    type metadata accessor for MedicalIDLearnMoreNavigationView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E780);
  }

  return result;
}

MIUIMedicalIDLearnMoreNavigationViewControllerFactory __swiftcall MIUIMedicalIDLearnMoreNavigationViewControllerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for MIUIMedicalIDLearnMoreNavigationViewControllerFactory()
{
  result = qword_27F95E788;
  if (!qword_27F95E788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F95E788);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2587EB0F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2587EB138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2587EB1B8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v2;
  v12 = *(v1 + 32);
  v3 = v12;
  v5 = *(v1 + 56);
  v13 = *(v1 + 48);
  v4 = v13;
  v7 = *(v1 + 64);
  v6 = *(v1 + 72);
  v8 = *(v1 + 80);
  *a1 = v11[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = 0x4018000000000000;
  *(a1 + 64) = 1;
  *(a1 + 72) = v5;
  *(a1 + 80) = v7;
  *(a1 + 88) = v6;
  *(a1 + 96) = v8;
  sub_2587EB238(v11, v10);
}

unint64_t sub_2587EB294()
{
  result = qword_27F95E790;
  if (!qword_27F95E790)
  {
    sub_2587EB2EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E790);
  }

  return result;
}

void sub_2587EB2EC()
{
  if (!qword_27F95E798)
  {
    sub_2587E836C();
    v0 = type metadata accessor for MedicalIDCellView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E798);
    }
  }
}

uint64_t sub_2587EB348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MedicalIDEditPregnancyModalView();
  v33 = v4[6];
  sub_2587AFFC8(0);
  v35 = v5;
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = sub_2588BB9B8();
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  v10 = (*(v9 + 56))(&v31 - v7, 1, 1, v8);
  MEMORY[0x28223BE20](v10);
  sub_2587ED620(&v31 - v7, &v31 - v7, sub_2587AFFC8);
  sub_2588BD2B8();
  v34 = sub_2587AFFC8;
  sub_2587ED688(&v31 - v7, sub_2587AFFC8);
  v11 = (a2 + v4[7]);
  sub_2587ED8CC(0, &qword_27F95DC40, &type metadata for BasicAlertModel, MEMORY[0x277D83D88]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0;
  sub_2588BD2B8();
  v12 = v44;
  *v11 = v43;
  v11[1] = v12;
  v13 = v46;
  v11[2] = v45;
  v11[3] = v13;
  v14 = a2 + v4[8];
  type metadata accessor for MedicalIDDataManager();
  sub_2587ED5D8(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  *v14 = sub_2588BBF58();
  *(v14 + 8) = v15 & 1;
  v16 = v4[9];
  *(a2 + v16) = swift_getKeyPath();
  v17 = MEMORY[0x277CDF458];
  sub_2587ED574(0, &qword_27F95DB18, MEMORY[0x28220C250], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v18 = v4[10];
  *(a2 + v18) = swift_getKeyPath();
  sub_2587ED574(0, &qword_27F95DB30, MEMORY[0x277CDD848], v17);
  swift_storeEnumTagMultiPayload();
  v19 = (a2 + v4[11]);
  sub_2587CEE98();
  sub_2587ED5D8(&qword_27F95DAE8, sub_2587CEE98);
  *v19 = sub_2588BC358();
  v19[1] = v20;
  v32 = a1;
  sub_2587ED620(a1, a2, type metadata accessor for MedicalIDPregnancyViewModel);
  v21 = a1 + *(type metadata accessor for MedicalIDPregnancyViewModel() + 20);
  v22 = type metadata accessor for MedicalIDData();
  v23 = *(v22 + 56);
  MEMORY[0x28223BE20](v22);
  sub_2587ED620(v21 + v23, &v31 - v7, sub_2587AFFC8);
  v24 = sub_2587ED688(a2 + v33, sub_2587CC6E8);
  MEMORY[0x28223BE20](v24);
  sub_2587ED620(&v31 - v7, &v31 - v7, sub_2587AFFC8);
  sub_2588BD2B8();
  v25 = v34;
  v26 = sub_2587ED688(&v31 - v7, v34);
  MEMORY[0x28223BE20](v26);
  v27 = &v31 - v7;
  sub_2587ED620(v21 + v23, &v31 - v7, sub_2587AFFC8);
  LOBYTE(v7) = (*(v37 + 48))(&v31 - v7, 1, v36) != 1;
  sub_2587ED688(v27, v25);
  v28 = a2 + v4[5];
  v38 = v7;
  sub_2588BD2B8();
  result = sub_2587ED688(v32, type metadata accessor for MedicalIDPregnancyViewModel);
  v30 = *(&v39 + 1);
  *v28 = v39;
  *(v28 + 8) = v30;
  return result;
}

uint64_t type metadata accessor for MedicalIDEditPregnancyModalView()
{
  result = qword_27F95E7B0;
  if (!qword_27F95E7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587EB868()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for MedicalIDEditPregnancyModalView() + 32));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_2588BDBE8();
    v9 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_2587EB9B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MedicalIDEditPregnancyModalView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27F95D088 != -1)
  {
    swift_once();
  }

  v9 = qword_27F95E7A0;
  v8 = *algn_27F95E7A8;
  sub_2587ED620(v2, &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for MedicalIDEditPregnancyModalView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_2587ED938(v7, v11 + v10);
  v12 = (v2 + *(v4 + 28));
  v13 = v12[1];
  v32 = *v12;
  v33 = v13;
  v14 = v12[3];
  v34 = v12[2];
  v35 = v14;
  sub_2587D2DD4();

  sub_2588BD2E8();
  v35 = v30;
  v36 = v31;
  v33 = v28;
  v34 = v29;
  v32 = v27;
  *a1 = swift_getKeyPath();
  sub_2587ED574(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_2587EDA68();
  v16 = v15;
  v17 = (a1 + v15[9]);
  *v17 = v9;
  v17[1] = v8;
  v18 = (a1 + v15[10]);
  *v18 = &unk_2588C1FC8;
  v18[1] = v11;
  v19 = a1 + v15[11];
  v20 = v33;
  v21 = v35;
  *(v19 + 2) = v34;
  *(v19 + 3) = v21;
  *(v19 + 8) = v36;
  *v19 = v32;
  *(v19 + 1) = v20;
  sub_2587EC740(v2, a1 + v15[12]);
  v22 = a1 + v16[13];
  v25[7] = 0;
  result = sub_2588BD2B8();
  v24 = v26;
  *v22 = v25[8];
  *(v22 + 1) = v24;
  return result;
}

uint64_t sub_2587EBC60()
{
  v0[2] = sub_2588BDA78();
  v0[3] = sub_2588BDA68();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2587C9A98;

  return sub_2587EBD0C();
}

uint64_t sub_2587EBD0C()
{
  v1[14] = v0;
  v2 = sub_2588BC038();
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();
  sub_2587B63B8();
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v7 = *(*(type metadata accessor for MedicalIDData() - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = sub_2588BDA78();
  v1[22] = sub_2588BDA68();
  v9 = sub_2588BDA28();
  v1[23] = v9;
  v1[24] = v8;

  return MEMORY[0x2822009F8](sub_2587EBE68, v9, v8);
}

uint64_t sub_2587EBE68()
{
  v32 = v0;
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[14];
  v4 = sub_2587EB868();
  swift_getKeyPath();
  v0[11] = v4;
  v0[25] = sub_2587ED5D8(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BBB98();

  v5 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2587ED620(v4 + v5, v2, sub_2587B63B8);

  LoadState<>.loadedValue.getter(v1);
  sub_2587ED688(v2, sub_2587B63B8);
  sub_2587AFFC8(0);
  v7 = *(*(v6 - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v9 = type metadata accessor for MedicalIDEditPregnancyModalView();
  v0[26] = v9;
  v10 = *(v9 + 24);
  sub_2587CC6E8(0);
  sub_2588BD2C8();
  MedicalIDPregnancyViewModel.update(_:with:)(v1, v8);
  sub_2587ED688(v8, sub_2587AFFC8);

  MedicalIDPregnancyViewModel.validationResult(for:)(v1, &v27);
  v11 = v28;
  if (v28)
  {
    v12 = v0[22];
    v13 = v31;
    v25 = v29;
    v26 = v30;
    v14 = v27;

    sub_2587B2CD4();
    swift_allocError();
    *v15 = v14;
    *(v15 + 8) = v11;
    *(v15 + 16) = v25;
    *(v15 + 32) = v26;
    *(v15 + 48) = v13;
    swift_willThrow();
    v16 = v0[19];
    v18 = v0[17];
    v17 = v0[18];
    sub_2587ED688(v0[20], type metadata accessor for MedicalIDData);

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = v0[21];
    v22 = v0[14];
    v0[27] = sub_2587EB868();
    v0[28] = sub_2588BDA68();
    v24 = sub_2588BDA28();
    v0[29] = v24;
    v0[30] = v23;

    return MEMORY[0x2822009F8](sub_2587EC188, v24, v23);
  }
}

uint64_t sub_2587EC188()
{
  v1 = v0[27];
  v2 = v0[25];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  swift_getKeyPath();
  v0[12] = v1;
  sub_2588BBB98();

  v6 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2587ED620(v1 + v6, v5, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v4);
  sub_2587ED688(v5, sub_2587B63B8);
  sub_2587ED688(v4, type metadata accessor for MedicalIDData);
  swift_beginAccess();
  sub_2587ED620(v3, v4, type metadata accessor for MedicalIDData);
  v7 = swift_task_alloc();
  v0[31] = v7;
  *v7 = v0;
  v7[1] = sub_2587EC338;
  v8 = v0[27];
  v9 = v0[19];

  return sub_258880280(v9, (v0 + 13));
}

uint64_t sub_2587EC338()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v8 = *v1;

  v4 = *(v2 + 232);
  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_2587EC5D0;
  }

  else
  {
    v6 = sub_2587EC448;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2587EC448()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[19];

  sub_2587ED688(v3, type metadata accessor for MedicalIDData);
  v4 = v0[23];
  v5 = v0[24];

  return MEMORY[0x2822009F8](sub_2587EC4D4, v4, v5);
}

uint64_t sub_2587EC4D4()
{
  v1 = v0[26];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[14];

  v10 = v9 + *(v1 + 40);
  sub_25885269C(v6);
  sub_2588BC028();
  (*(v8 + 8))(v6, v7);
  sub_2587ED688(v3, type metadata accessor for MedicalIDData);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2587EC5D0()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[19];

  sub_2587ED688(v3, type metadata accessor for MedicalIDData);
  v0[32] = v0[13];
  v4 = v0[23];
  v5 = v0[24];

  return MEMORY[0x2822009F8](sub_2587EC664, v4, v5);
}

uint64_t sub_2587EC664()
{
  v1 = v0[32];
  v2 = v0[22];

  sub_2587CE078();
  swift_allocError();
  *v3 = v1;
  v4 = v0[19];
  v6 = v0[17];
  v5 = v0[18];
  sub_2587ED688(v0[20], type metadata accessor for MedicalIDData);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2587EC740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MedicalIDEditPregnancyModalView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v9 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - v10;
  sub_2587ED620(a1, a2, type metadata accessor for MedicalIDPregnancyViewModel);
  sub_2587ED620(a1, v11, type metadata accessor for MedicalIDEditPregnancyModalView);
  sub_2587ED620(a1, v9, type metadata accessor for MedicalIDEditPregnancyModalView);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_2587ED938(v9, v13 + v12);
  v14 = a1 + *(v5 + 28);
  v15 = *v14;
  v16 = *(v14 + 8);
  v29 = v15;
  v30 = v16;
  sub_2587ED8CC(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v17 = v27[1];
  v18 = v27[2];
  v19 = v28;
  v20 = *(v5 + 32);
  sub_2587EDAFC();
  v22 = v21;
  v23 = v21[12];
  sub_2587CC6E8(0);
  sub_2588BD2E8();
  sub_2587EC97C(a2 + v22[9]);
  result = sub_2587ED688(v11, type metadata accessor for MedicalIDEditPregnancyModalView);
  v25 = (a2 + v22[10]);
  *v25 = sub_2587EE14C;
  v25[1] = v13;
  v26 = a2 + v22[11];
  *v26 = v17;
  *(v26 + 8) = v18;
  *(v26 + 16) = v19;
  return result;
}

uint64_t sub_2587EC97C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2587EE1A8(0);
  v65 = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MedicalIDEditPregnancyModalView();
  v9 = *(v8 + 24);
  sub_2587CC6E8(0);
  v66 = v7;
  sub_2588BD2E8();
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
  v58 = sub_2588BD8B8();
  v55 = v16;
  v17 = sub_2588BB9B8();
  v64 = &v54;
  v59 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v56 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v57 = v20;
  v21 = &v54 - v56;
  v22 = v2 + *(v8 + 44);
  if (*v22)
  {
    v23 = *v22;
    v67 = v21;
    MedicalIDPregnancyViewModel.defaultPregnancyDueDate(with:)(v23, v21);

    sub_2587AFFC8(0);
    v63 = &v54;
    v25 = *(*(v24 - 8) + 64);
    MEMORY[0x28223BE20](v24 - 8);
    v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
    v27 = MedicalIDPregnancyViewModel.minimumSelectableDueDate.getter(&v54 - v26);
    v62 = &v54;
    MEMORY[0x28223BE20](v27);
    _s11MedicalIDUI0A20IDPregnancyViewModelV24maximumSelectableDueDate10Foundation0I0VSgvg_0(&v54 - v26);
    v28 = *v2;
    v29 = v2[1];
    v60 = v28;
    sub_2587EDB90();
    v31 = v30;
    v32 = a1 + v30[18];
    v68 = 0;
    v61 = v29;

    sub_2588BD2B8();
    v33 = v70;
    *v32 = v69;
    *(v32 + 8) = v33;
    v34 = v66;
    sub_2587ED620(v66, a1, sub_2587EE1A8);
    v35 = (a1 + v31[9]);
    v36 = v59;
    v37 = v55;
    *v35 = v58;
    v35[1] = v37;
    (*(v18 + 16))(a1 + v31[10], v67, v36);
    sub_2587ED620(&v54 - v26, a1 + v31[11], sub_2587AFFC8);
    v38 = sub_2587ED620(&v54 - v26, a1 + v31[12], sub_2587AFFC8);
    v55 = &v54;
    *(a1 + v31[13]) = 0;
    v39 = (a1 + v31[14]);
    *v39 = 0;
    v39[1] = 0;
    v40 = v31[15];
    v58 = a1;
    v41 = (a1 + v40);
    *v41 = nullsub_1;
    v41[1] = 0;
    v42 = MEMORY[0x28223BE20](v38);
    v43 = &v54 - v56;
    v57 = &v54;
    MEMORY[0x28223BE20](v42);
    v44 = &v54 - v26;
    MEMORY[0x259C8C5A0](v65);
    sub_2587ED688(&v54 - v26, sub_2587AFFC8);
    sub_2587ED688(&v54 - v26, sub_2587AFFC8);
    sub_2587ED688(v34, sub_2587EE1A8);
    v45 = *(v18 + 48);
    if (v45(&v54 - v26, 1, v36) == 1)
    {
      v46 = *(v18 + 32);
      v46(v43, v67, v36);
      if (v45(v44, 1, v36) != 1)
      {
        sub_2587ED688(v44, sub_2587AFFC8);
      }
    }

    else
    {
      (*(v18 + 8))(v67, v36);
      v46 = *(v18 + 32);
      v46(v43, v44, v36);
    }

    v47 = v58;
    v48 = v58 + v31[17];
    sub_2587ED574(0, &qword_27F95E7E8, MEMORY[0x28220BF18], MEMORY[0x277CE10B8]);
    *(v48 + *(v49 + 28)) = 0;
    result = (v46)(v48, v43, v36);
    v51 = (v47 + v31[16]);
    v52 = v61;
    *v51 = v60;
    v51[1] = v52;
  }

  else
  {
    v53 = *(v22 + 1);
    sub_2587CEE98();
    sub_2587ED5D8(&qword_27F95DAE8, sub_2587CEE98);
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_2587ED018()
{
  v1 = v0;
  v2 = type metadata accessor for MedicalIDEditPregnancyModalView();
  v3 = (v0 + v2[5]);
  v4 = *v3;
  v5 = *(v3 + 1);
  v29 = v4;
  v30 = v5;
  sub_2587ED8CC(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_2587AFFC8(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v27 - v8;
  if (v28 != 1)
  {
    v20 = sub_2588BB9B8();
    v21 = (*(*(v20 - 8) + 56))(&v27 - v8, 1, 1, v20);
    v22 = v2[6];
    MEMORY[0x28223BE20](v21);
    sub_2587ED620(&v27 - v8, &v27 - v8, sub_2587AFFC8);
    sub_2587CC6E8(0);
LABEL_9:
    sub_2588BD2D8();
    return sub_2587ED688(v9, sub_2587AFFC8);
  }

  v10 = v1 + *(type metadata accessor for MedicalIDPregnancyViewModel() + 20);
  v11 = type metadata accessor for MedicalIDData();
  v27 = &v27;
  v12 = *(v11 + 56);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v8;
  sub_2587ED620(v10 + v14, &v27 - v8, sub_2587AFFC8);
  v15 = sub_2588BB9B8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(&v27 - v8, 1, v15) != 1)
  {
    (*(v16 + 32))(&v27 - v8, &v27 - v8, v15);
LABEL_8:
    v23 = (*(v16 + 56))(v9, 0, 1, v15);
    v24 = v2[6];
    MEMORY[0x28223BE20](v23);
    sub_2587ED620(v9, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2587AFFC8);
    sub_2587CC6E8(0);
    goto LABEL_9;
  }

  v18 = v1 + v2[11];
  if (*v18)
  {
    v19 = *v18;
    MedicalIDPregnancyViewModel.defaultPregnancyDueDate(with:)(v19, v9);

    if (v17(v13, 1, v15) != 1)
    {
      sub_2587ED688(v13, sub_2587AFFC8);
    }

    goto LABEL_8;
  }

  v26 = *(v18 + 8);
  sub_2587CEE98();
  sub_2587ED5D8(&qword_27F95DAE8, sub_2587CEE98);
  result = sub_2588BC348();
  __break(1u);
  return result;
}

uint64_t sub_2587ED404()
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
  qword_27F95E7A0 = result;
  *algn_27F95E7A8 = v7;
  return result;
}

void sub_2587ED574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2587ED5D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2587ED620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587ED688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2587ED710()
{
  type metadata accessor for MedicalIDPregnancyViewModel();
  if (v0 <= 0x3F)
  {
    sub_2587ED8CC(319, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2587CC6E8(319);
      if (v2 <= 0x3F)
      {
        sub_2587D2DD4();
        if (v3 <= 0x3F)
        {
          sub_2587ED574(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_2587ED574(319, &qword_27F95DAB8, MEMORY[0x28220C250], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_2587ED574(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_2587BC234();
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

void sub_2587ED8CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2587ED938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDEditPregnancyModalView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587ED99C()
{
  v1 = *(type metadata accessor for MedicalIDEditPregnancyModalView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2587AE310;

  return sub_2587EBC60();
}

void sub_2587EDA68()
{
  if (!qword_27F95E7C0)
  {
    sub_2587EDAFC();
    sub_2587ED5D8(&qword_27F95E7E0, sub_2587EDAFC);
    v0 = type metadata accessor for MedicalIDEditModal();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E7C0);
    }
  }
}

void sub_2587EDAFC()
{
  if (!qword_27F95E7C8)
  {
    sub_2587EDB90();
    sub_2587ED5D8(&qword_27F95E7D8, sub_2587EDB90);
    v0 = type metadata accessor for SharedPregnancyEditView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E7C8);
    }
  }
}

void sub_2587EDB90()
{
  if (!qword_27F95E7D0)
  {
    v0 = type metadata accessor for DatePickerEditView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E7D0);
    }
  }
}

uint64_t objectdestroyTm_6()
{
  v49 = type metadata accessor for MedicalIDEditPregnancyModalView();
  v47 = *(*(v49 - 1) + 80);
  v46 = *(*(v49 - 1) + 64);
  v1 = v0 + ((v47 + 16) & ~v47);
  v2 = *(v1 + 8);

  v3 = type metadata accessor for MedicalIDPregnancyViewModel();
  v4 = v1 + v3[5];
  v5 = *(v4 + 8);

  v6 = *(v4 + 16);

  v7 = *(v4 + 32);

  v8 = *(v4 + 48);

  v9 = *(v4 + 64);

  v10 = *(v4 + 80);

  v11 = type metadata accessor for MedicalIDData();
  v12 = v11[13];
  v13 = sub_2588BB9B8();
  v48 = *(v13 - 8);
  v14 = *(v48 + 48);
  if (!v14(v4 + v12, 1, v13))
  {
    (*(v48 + 8))(v4 + v12, v13);
  }

  v15 = v11[14];
  if (!v14(v4 + v15, 1, v13))
  {
    (*(v48 + 8))(v4 + v15, v13);
  }

  v16 = *(v4 + v11[15] + 8);

  v17 = (v4 + v11[18]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_2587C2610(*v17, v18);
  }

  v19 = v11[19];
  v20 = sub_2588BB818();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v4 + v19, 1, v20))
  {
    (*(v21 + 8))(v4 + v19, v20);
  }

  v22 = v11[21];
  if (!v14(v4 + v22, 1, v13))
  {
    (*(v48 + 8))(v4 + v22, v13);
  }

  v23 = v3[6];
  v24 = sub_2588BBB48();
  v25 = *(*(v24 - 8) + 8);
  v25(v1 + v23, v24);
  v26 = v3[7];
  v27 = sub_2588BBAC8();
  (*(*(v27 - 8) + 8))(v1 + v26, v27);
  v28 = *(v1 + v3[8]);

  v29 = v3[9];
  if (!v14(v1 + v29, 1, v13))
  {
    (*(v48 + 8))(v1 + v29, v13);
  }

  v30 = *(v1 + v49[5] + 8);

  v31 = v1 + v49[6];
  if (!v14(v31, 1, v13))
  {
    (*(v48 + 8))(v31, v13);
  }

  sub_2587CC6E8(0);
  v33 = *(v31 + *(v32 + 28));

  v34 = (v1 + v49[7]);
  if (v34[1])
  {

    v35 = v34[3];

    v36 = v34[4];

    v37 = v34[6];
  }

  v38 = v34[7];

  v39 = *(v1 + v49[8]);

  v40 = v49[9];
  sub_2587ED574(0, &qword_27F95DB18, MEMORY[0x28220C250], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25(v1 + v40, v24);
  }

  else
  {
    v41 = *(v1 + v40);
  }

  v42 = v49[10];
  sub_2587ED574(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = sub_2588BC038();
    (*(*(v43 - 8) + 8))(v1 + v42, v43);
  }

  else
  {
    v44 = *(v1 + v42);
  }

  return swift_deallocObject();
}

uint64_t sub_2587EE14C()
{
  v1 = *(type metadata accessor for MedicalIDEditPregnancyModalView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_2587ED018();
}

void sub_2587EE1DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v38 = MEMORY[0x277D84F90];
    sub_2587F06B4(0, v1, 0);
    v3 = v38;
    v4 = a1 + 56;
    v5 = -1 << *(a1 + 32);
    v6 = sub_2588BDD58();
    v7 = 0;
    v34 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      v35 = v7;
      v36 = *(a1 + 36);
      v10 = (*(a1 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];

      v13._countAndFlagsBits = v11;
      v13._object = v12;
      MedicalIDSpokenLanguage.init(id:)(&v37, v13);
      countAndFlagsBits = v37.id._countAndFlagsBits;
      object = v37.id._object;
      v16 = v37.languageInCurrentLocale._countAndFlagsBits;
      v17 = v37.languageInCurrentLocale._object;
      v18 = v37.languageInLanguageLocale._countAndFlagsBits;
      v19 = v37.languageInLanguageLocale._object;
      v38 = v3;
      v21 = *(v3 + 16);
      v20 = *(v3 + 24);
      if (v21 >= v20 >> 1)
      {
        v32 = v37.languageInCurrentLocale._countAndFlagsBits;
        v33 = v37.id._countAndFlagsBits;
        v30 = v37.languageInLanguageLocale._object;
        v31 = v37.languageInLanguageLocale._countAndFlagsBits;
        sub_2587F06B4((v20 > 1), v21 + 1, 1);
        v19 = v30;
        v18 = v31;
        v16 = v32;
        countAndFlagsBits = v33;
        v3 = v38;
      }

      *(v3 + 16) = v21 + 1;
      v22 = (v3 + 48 * v21);
      v22[4] = countAndFlagsBits;
      v22[5] = object;
      v22[6] = v16;
      v22[7] = v17;
      v22[8] = v18;
      v22[9] = v19;
      v8 = 1 << *(a1 + 32);
      if (v6 >= v8)
      {
        goto LABEL_22;
      }

      v4 = a1 + 56;
      v23 = *(a1 + 56 + 8 * v9);
      if ((v23 & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v36 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v24 = v23 & (-2 << (v6 & 0x3F));
      if (v24)
      {
        v8 = __clz(__rbit64(v24)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v9 << 6;
        v26 = v9 + 1;
        v27 = (a1 + 64 + 8 * v9);
        while (v26 < (v8 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_2587F1B84(v6, v36, 0);
            v8 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_2587F1B84(v6, v36, 0);
      }

LABEL_4:
      v7 = v35 + 1;
      v6 = v8;
      if (v35 + 1 == v34)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_2587EE430(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v27 = *(a3 + 16);
  if (v27)
  {
    v6 = result;
    v7 = 0;
    v8 = (a3 + 72);
    v9 = MEMORY[0x277D84F90];
    v22 = result;
    while (v7 < *(v5 + 16))
    {
      v10 = *(v8 - 1);
      v11 = *v8;
      v12 = *(v8 - 3);
      v13 = *(v8 - 2);
      v14 = *(v8 - 4);
      v28 = *(v8 - 5);
      v29 = v14;
      v30 = v12;
      v31 = v13;
      v32 = v10;
      v33 = v11;

      v15 = v6(&v28);
      if (v4)
      {

        goto LABEL_16;
      }

      if (v15)
      {
        v16 = v28;
        v17 = v29;
        v18 = v30;
        v25 = v32;
        v26 = v31;
        v24 = v33;
        result = swift_isUniquelyReferenced_nonNull_native();
        v34 = v9;
        if ((result & 1) == 0)
        {
          result = sub_2587F06B4(0, *(v9 + 16) + 1, 1);
          v9 = v34;
        }

        v20 = *(v9 + 16);
        v19 = *(v9 + 24);
        if (v20 >= v19 >> 1)
        {
          result = sub_2587F06B4((v19 > 1), v20 + 1, 1);
          v9 = v34;
        }

        *(v9 + 16) = v20 + 1;
        v21 = (v9 + 48 * v20);
        v21[4] = v16;
        v21[5] = v17;
        v21[6] = v18;
        v21[7] = v26;
        v5 = a3;
        v21[8] = v25;
        v21[9] = v24;
        v6 = v22;
      }

      else
      {
      }

      ++v7;
      v8 += 6;
      if (v27 == v7)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_16:

    return v9;
  }

  return result;
}

uint64_t sub_2587EE62C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for NanoMedicalIDGridItemsView();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_2587F0F3C(a3 + v16 + v17 * v14, v13);
      v18 = a1(v13);
      if (v3)
      {
        sub_2587F0FA0(v13);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_2587C51A4(v13, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2587F06F4(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2587F06F4(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_2587C51A4(v25, v15 + v16 + v21 * v17);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_2587F0FA0(v13);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t MedicalIDSpokenLanguagePickerViewModel.__allocating_init(primaryLanguageCode:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  MedicalIDSpokenLanguagePickerViewModel.init(primaryLanguageCode:)(a1, a2);
  return v7;
}

uint64_t sub_2587EE8FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2587EF3D0();
  sub_2588BBB98();

  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_2587EE98C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2587EEA60(v2, v3);
}

uint64_t sub_2587EE9CC()
{
  swift_getKeyPath();
  v4 = v0;
  sub_2587EF3D0();
  sub_2588BBB98();

  swift_beginAccess();
  v2 = *(v0 + 24);
  v1 = *(v4 + 32);

  return v2;
}

uint64_t sub_2587EEA60(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 24) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 32);
      if (sub_2588BDF98())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_2587EF3D0();
  sub_2588BBB88();
}

uint64_t sub_2587EEB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 32);
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
}

void (*sub_2587EEC00(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI38MedicalIDSpokenLanguagePickerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587EF3D0();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath();
  sub_2588BBBB8();

  v4[7] = sub_2587EE8AC();
  return sub_2587EED08;
}

uint64_t sub_2587EED64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2587EF3D0();
  sub_2588BBB98();

  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_2587EEDF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2587EEEC8(v2, v3);
}

uint64_t sub_2587EEE34()
{
  swift_getKeyPath();
  v4 = v0;
  sub_2587EF3D0();
  sub_2588BBB98();

  swift_beginAccess();
  v2 = *(v0 + 40);
  v1 = *(v4 + 48);

  return v2;
}

uint64_t sub_2587EEEC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40) == a1 && *(v2 + 48) == a2;
  if (v5 || (v6 = *(v2 + 48), (sub_2588BDF98() & 1) != 0))
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2587EF3D0();
    sub_2588BBB88();
  }
}

uint64_t sub_2587EEFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 48);
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
}

void (*sub_2587EF058(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI38MedicalIDSpokenLanguagePickerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587EF3D0();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath();
  sub_2588BBBB8();

  v4[7] = sub_2587EED14();
  return sub_2587EF160;
}

void sub_2587EF16C(uint64_t *a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  v13.id._countAndFlagsBits = v1;
  sub_2587EF3D0();
  sub_2588BBB98();

  swift_beginAccess();
  v4 = *(v1 + 32);
  if (v4)
  {
    v5 = *(v2 + 24);

    v6._countAndFlagsBits = v5;
    v6._object = v4;
    MedicalIDSpokenLanguage.init(id:)(&v13, v6);
    countAndFlagsBits = v13.id._countAndFlagsBits;
    object = v13.id._object;
    v9 = v13.languageInCurrentLocale._countAndFlagsBits;
    v10 = v13.languageInCurrentLocale._object;
    v11 = v13.languageInLanguageLocale._countAndFlagsBits;
    v12 = v13.languageInLanguageLocale._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  *a1 = countAndFlagsBits;
  a1[1] = object;
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v11;
  a1[5] = v12;
}

void *MedicalIDSpokenLanguagePickerViewModel.init(primaryLanguageCode:)(uint64_t a1, uint64_t a2)
{
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = 0xE000000000000000;
  sub_2588BBBC8();
  v5 = v2[4];

  v2[3] = a1;
  v2[4] = a2;
  v6 = [objc_opt_self() availableSpokenLanguages];
  v7 = sub_2588BDAD8();

  sub_2587EE1DC(v7);
  v9 = v8;

  v11 = v9;

  sub_2587F0C5C(&v11);

  v2[2] = v11;
  return v2;
}

unint64_t sub_2587EF3D0()
{
  result = qword_27F95DDA0;
  if (!qword_27F95DDA0)
  {
    type metadata accessor for MedicalIDSpokenLanguagePickerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DDA0);
  }

  return result;
}

uint64_t type metadata accessor for MedicalIDSpokenLanguagePickerViewModel()
{
  result = qword_27F95E800;
  if (!qword_27F95E800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_2587EF4B4()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_2588BBA78();
  v3 = sub_2588BD9A8();

  v4 = [v2 spokenLanguagesForLanguages:v3 includeLanguagesForRegion:1];

  v5 = sub_2588BD9B8();
  v6 = *(v5 + 16);
  if (v6)
  {
    v48 = v0;
    v50 = MEMORY[0x277D84F90];
    sub_2587F06B4(0, v6, 0);
    v7 = v50;
    v8 = (v5 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      v11._countAndFlagsBits = v9;
      v11._object = v10;
      MedicalIDSpokenLanguage.init(id:)(&v52, v11);
      countAndFlagsBits = v52.id._countAndFlagsBits;
      object = v52.id._object;
      v14 = v52.languageInCurrentLocale._countAndFlagsBits;
      v15 = v52.languageInCurrentLocale._object;
      v17 = v52.languageInLanguageLocale._countAndFlagsBits;
      v16 = v52.languageInLanguageLocale._object;
      v51 = v7;
      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      if (v19 >= v18 >> 1)
      {
        v45 = v52.languageInCurrentLocale._countAndFlagsBits;
        v21 = v52.languageInLanguageLocale._object;
        sub_2587F06B4((v18 > 1), v19 + 1, 1);
        v16 = v21;
        v14 = v45;
        v7 = v51;
      }

      *(v7 + 16) = v19 + 1;
      v20 = (v7 + 48 * v19);
      v20[4] = countAndFlagsBits;
      v20[5] = object;
      v20[6] = v14;
      v20[7] = v15;
      v20[8] = v17;
      v20[9] = v16;
      v8 += 2;
      --v6;
    }

    while (v6);
    v46 = v7;

    v1 = v48;
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  v52.id._countAndFlagsBits = v1;
  sub_2587EF3D0();
  sub_2588BBB98();

  swift_beginAccess();
  v22 = *(v1 + 32);
  if (!v22)
  {
    return v46;
  }

  v23 = *(v1 + 24);

  v24._countAndFlagsBits = v23;
  v24._object = v22;
  MedicalIDSpokenLanguage.init(id:)(&v52, v24);
  v26 = v52.id._countAndFlagsBits;
  v25 = v52.id._object;
  v27 = v52.languageInCurrentLocale._object;
  v28 = v52.languageInLanguageLocale._object;
  v47 = v52.languageInLanguageLocale._countAndFlagsBits;
  v49 = v52.languageInCurrentLocale._countAndFlagsBits;
  v44 = *(v46 + 16);
  if (v44)
  {
    v29 = *(v46 + 16);
    v30 = (v46 + 72);
    while (1)
    {
      v32 = *(v30 - 3);
      v31 = *(v30 - 2);
      v33 = *(v30 - 1);
      v34 = *v30;
      v35 = *(v30 - 5) == v26 && *(v30 - 4) == v25;
      if (v35 || (sub_2588BDF98() & 1) != 0)
      {
        v36 = v32 == v49 && v31 == v27;
        if (v36 || (sub_2588BDF98() & 1) != 0)
        {
          v37 = v33 == v47 && v34 == v28;
          if (v37 || (sub_2588BDF98() & 1) != 0)
          {
            break;
          }
        }
      }

      v30 += 6;
      if (!--v29)
      {
        goto LABEL_29;
      }
    }

    return v46;
  }

LABEL_29:
  v39 = v27;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v38 = v46;
  }

  else
  {
    v38 = sub_2587F0410(0, v44 + 1, 1, v46);
  }

  v41 = *(v38 + 2);
  v40 = *(v38 + 3);
  if (v41 >= v40 >> 1)
  {
    v38 = sub_2587F0410((v40 > 1), v41 + 1, 1, v38);
  }

  *(v38 + 2) = v41 + 1;
  v42 = &v38[48 * v41];
  *(v42 + 4) = v26;
  *(v42 + 5) = v25;
  *(v42 + 6) = v49;
  *(v42 + 7) = v39;
  *(v42 + 8) = v47;
  *(v42 + 9) = v28;
  return v38;
}

char *sub_2587EF828()
{
  swift_getKeyPath();
  sub_2587EF3D0();
  sub_2588BBB98();

  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 40) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v3 = *(v0 + 40) & 0xFFFFFFFFFFFFLL;
  }

  v26 = v0;
  result = sub_2587EF4B4();
  if (v3)
  {
    v22 = *(result + 2);
    if (v22)
    {
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      v7 = result + 72;
      v24 = result;
      v21 = result + 72;
      do
      {
        v23 = v6;
        v8 = v22 - v5;
        v9 = &v7[48 * v5];
        while (1)
        {
          if (v5 >= *(result + 2))
          {
            __break(1u);
            return result;
          }

          v28 = v8;
          v10 = *(v9 - 4);
          v25 = *(v9 - 5);
          v11 = *(v9 - 3);
          v12 = *(v9 - 2);
          v13 = *(v9 - 1);
          v14 = *v9;
          swift_getKeyPath();
          v27 = v10;

          sub_2588BBB98();

          v15 = *(v26 + 40);
          v16 = *(v26 + 48);
          sub_25878F648();

          if (sub_2588BDD28())
          {
            break;
          }

          v17 = sub_2588BDD28();

          if (v17)
          {
            goto LABEL_14;
          }

          v9 += 48;
          ++v5;
          v8 = v28 - 1;
          result = v24;
          if (v28 == 1)
          {
            v6 = v23;
            goto LABEL_21;
          }
        }

LABEL_14:
        v6 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2587F06B4(0, *(v23 + 16) + 1, 1);
          v6 = v23;
        }

        v7 = v21;
        v19 = *(v6 + 16);
        v18 = *(v6 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_2587F06B4((v18 > 1), v19 + 1, 1);
          v6 = v23;
        }

        ++v5;
        *(v6 + 16) = v19 + 1;
        v20 = (v6 + 48 * v19);
        v20[4] = v25;
        v20[5] = v27;
        result = v24;
        v20[6] = v11;
        v20[7] = v12;
        v20[8] = v13;
        v20[9] = v14;
      }

      while (v28 != 1);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

LABEL_21:

    return v6;
  }

  return result;
}

uint64_t sub_2587EFB14()
{
  v1 = v0;
  swift_getKeyPath();
  sub_2587EF3D0();
  sub_2588BBB98();

  swift_beginAccess();
  v2 = v0[6];
  v3 = v0[5] & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  v26 = v0;
  result = v0[2];
  if (!v3)
  {
  }

  v22 = *(result + 16);
  if (!v22)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = result + 72;
  v24 = v1[2];
  v21 = result + 72;
LABEL_6:
  v23 = v6;
  v8 = v22 - v5;
  v9 = (v7 + 48 * v5);
  while (v5 < *(result + 16))
  {
    v28 = v8;
    v10 = *(v9 - 4);
    v25 = *(v9 - 5);
    v11 = *(v9 - 3);
    v12 = *(v9 - 2);
    v13 = *(v9 - 1);
    v14 = *v9;
    swift_getKeyPath();
    v27 = v10;

    sub_2588BBB98();

    v15 = v26[5];
    v16 = v26[6];
    sub_25878F648();

    if (sub_2588BDD28())
    {

LABEL_13:
      v6 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2587F06B4(0, *(v23 + 16) + 1, 1);
        v6 = v23;
      }

      v7 = v21;
      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2587F06B4((v18 > 1), v19 + 1, 1);
        v6 = v23;
      }

      ++v5;
      *(v6 + 16) = v19 + 1;
      v20 = (v6 + 48 * v19);
      v20[4] = v25;
      v20[5] = v27;
      result = v24;
      v20[6] = v11;
      v20[7] = v12;
      v20[8] = v13;
      v20[9] = v14;
      if (v28 == 1)
      {
        return v6;
      }

      goto LABEL_6;
    }

    v17 = sub_2588BDD28();

    if (v17)
    {
      goto LABEL_13;
    }

    v9 += 6;
    ++v5;
    v8 = v28 - 1;
    result = v24;
    if (v28 == 1)
    {
      return v23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2587EFE04(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v5 = a1[2];
  v6 = a1[3];
  sub_25878F648();
  if (sub_2588BDD28())
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_2588BDD28();
  }

  return v3 & 1;
}

char *MedicalIDSpokenLanguagePickerViewModel.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 6);

  v4 = OBJC_IVAR____TtC11MedicalIDUI38MedicalIDSpokenLanguagePickerViewModel___observationRegistrar;
  v5 = sub_2588BBBD8();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

uint64_t MedicalIDSpokenLanguagePickerViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 6);

  v4 = OBJC_IVAR____TtC11MedicalIDUI38MedicalIDSpokenLanguagePickerViewModel___observationRegistrar;
  v5 = sub_2588BBBD8();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

size_t sub_2587EFFDC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_258791310(0, &qword_27F95E828, sub_2587BBA90, MEMORY[0x277D84560]);
  sub_2587BBA90(0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_2587BBA90(0);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2587F01D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_258791310(0, &qword_27F95E830, sub_2587D6188, MEMORY[0x277D84560]);
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

char *sub_2587F0300(char *result, int64_t a2, char a3, char *a4)
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
    sub_25878F1E0(0, &qword_280C0DDD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2587F0410(char *result, int64_t a2, char a3, char *a4)
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
    sub_25878F1E0(0, &qword_27F95E840);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2587F0534(char *result, int64_t a2, char a3, char *a4)
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
    sub_25878F1E0(0, &qword_280C0DDD0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2587F0644(char *a1, int64_t a2, char a3)
{
  result = sub_2587F0744(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2587F0664(size_t a1, int64_t a2, char a3)
{
  result = sub_2587F0A68(a1, a2, a3, *v3, &qword_27F95E810, _s15SectionGridItemVMa, _s15SectionGridItemVMa);
  *v3 = result;
  return result;
}

char *sub_2587F06B4(char *a1, int64_t a2, char a3)
{
  result = sub_2587F084C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2587F06D4(char *a1, int64_t a2, char a3)
{
  result = sub_2587F0970(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2587F06F4(size_t a1, int64_t a2, char a3)
{
  result = sub_2587F0A68(a1, a2, a3, *v3, &qword_27F95E818, type metadata accessor for NanoMedicalIDGridItemsView, type metadata accessor for NanoMedicalIDGridItemsView);
  *v3 = result;
  return result;
}

char *sub_2587F0744(char *result, int64_t a2, char a3, char *a4)
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
    sub_25878F1E0(0, &qword_27F95E820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2587F084C(char *result, int64_t a2, char a3, char *a4)
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
    sub_25878F1E0(0, &qword_27F95E840);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2587F0970(char *result, int64_t a2, char a3, char *a4)
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
    sub_25878F1E0(0, &qword_27F95E838);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_2587F0A68(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_258791310(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_2587F0C5C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25883FA20(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_2587F0FFC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2587F0CD0()
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

uint64_t sub_2587F0F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NanoMedicalIDGridItemsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587F0FA0(uint64_t a1)
{
  v2 = type metadata accessor for NanoMedicalIDGridItemsView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2587F0FFC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_2588BDF68();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2588BD9E8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2587F1214(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_2587F10F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2587F10F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_25878F648();
    v7 = v6 + 48 * v4 - 48;
    v8 = v5 - v4;
LABEL_5:
    v9 = v6 + 48 * v4;
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);
    v12 = v8;
    v13 = v7;
    while (1)
    {
      v22 = *(v13 + 16);
      v23 = *(v13 + 24);
      result = sub_2588BDD18();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 48;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v13 + 48);
      v15 = *(v13 + 56);
      v16 = *(v13 + 64);
      v17 = *(v13 + 72);
      v18 = *(v13 + 80);
      v19 = *(v13 + 88);
      v20 = *(v13 + 16);
      *(v13 + 48) = *v13;
      *(v13 + 64) = v20;
      *(v13 + 80) = *(v13 + 32);
      *v13 = v14;
      *(v13 + 8) = v15;
      *(v13 + 16) = v16;
      *(v13 + 24) = v17;
      *(v13 + 32) = v18;
      *(v13 + 40) = v19;
      v13 -= 48;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2587F1214(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v101 = result;
  v6 = *(a3 + 1);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      if (v7 + 1 >= v6)
      {
        v6 = (v7 + 1);
      }

      else
      {
        v99 = v5;
        v10 = *a3 + 48 * (v7 + 1);
        v11 = *a3 + 48 * v7;
        v110 = *(v10 + 16);
        v112 = *(v10 + 24);
        v104 = *(v11 + 16);
        v107 = *(v11 + 24);
        sub_25878F648();
        result = sub_2588BDD18();
        v12 = result;
        v13 = (v7 + 2);
        v14 = (v11 + 120);
        while (v6 != v13)
        {
          v111 = *(v14 - 1);
          v113 = *v14;
          v105 = *(v14 - 7);
          v108 = *(v14 - 6);
          result = sub_2588BDD18();
          ++v13;
          v14 += 6;
          if ((v12 == -1) == (result != -1))
          {
            v6 = v13 - 1;
            break;
          }
        }

        v5 = v99;
        if (v12 == -1)
        {
          if (v6 < v7)
          {
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
LABEL_127:
            __break(1u);
            return result;
          }

          if (v7 < v6)
          {
            v15 = 48 * v6 - 24;
            v16 = 48 * v7 + 40;
            v17 = v6;
            v18 = v7;
            do
            {
              if (v18 != --v17)
              {
                v27 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                v19 = (v27 + v16);
                v20 = *(v27 + v16 - 40);
                v21 = v27 + v15;
                v22 = *(v19 - 3);
                v23 = *(v19 - 1);
                v24 = *v19;
                v25 = *(v21 + 8);
                v26 = *(v21 - 8);
                *(v19 - 5) = *(v21 - 24);
                *(v19 - 3) = v26;
                *(v19 - 1) = v25;
                *(v21 - 24) = v20;
                *(v21 - 8) = v22;
                *(v21 + 8) = v23;
                *(v21 + 16) = v24;
              }

              ++v18;
              v15 -= 48;
              v16 += 48;
            }

            while (v18 < v17);
          }
        }
      }

      v28 = *(a3 + 1);
      if (v6 >= v28)
      {
        goto LABEL_27;
      }

      if (__OFSUB__(v6, v7))
      {
        goto LABEL_117;
      }

      if (&v6[-v7] >= a4)
      {
        goto LABEL_27;
      }

      if (__OFADD__(v7, a4))
      {
        goto LABEL_118;
      }

      if (v7 + a4 < v28)
      {
        v28 = (v7 + a4);
      }

      if (v28 < v7)
      {
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      if (v6 == v28)
      {
LABEL_27:
        v7 = v6;
      }

      else
      {
        v102 = v28;
        v100 = v5;
        v76 = *a3;
        sub_25878F648();
        v77 = v76 + 48 * v6 - 48;
        v97 = v9;
        v78 = v9 - v6;
        do
        {
          v79 = v76 + 48 * v6;
          v80 = *(v79 + 16);
          v81 = *(v79 + 24);
          v82 = v78;
          v83 = v77;
          do
          {
            v106 = *(v83 + 16);
            v109 = *(v83 + 24);
            result = sub_2588BDD18();
            if (result != -1)
            {
              break;
            }

            if (!v76)
            {
              goto LABEL_122;
            }

            v84 = *(v83 + 48);
            v85 = *(v83 + 56);
            v86 = *(v83 + 64);
            v87 = *(v83 + 72);
            v88 = *(v83 + 80);
            v89 = *(v83 + 88);
            v90 = *(v83 + 16);
            *(v83 + 48) = *v83;
            *(v83 + 64) = v90;
            *(v83 + 80) = *(v83 + 32);
            *v83 = v84;
            *(v83 + 8) = v85;
            *(v83 + 16) = v86;
            *(v83 + 24) = v87;
            *(v83 + 32) = v88;
            *(v83 + 40) = v89;
            v83 -= 48;
          }

          while (!__CFADD__(v82++, 1));
          ++v6;
          v77 += 48;
          --v78;
        }

        while (v6 != v102);
        v5 = v100;
        v7 = v102;
        v9 = v97;
      }

      v6 = a3;
      if (v7 < v9)
      {
        goto LABEL_116;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2587F01D8(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v30 = *(v8 + 2);
      v29 = *(v8 + 3);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        result = sub_2587F01D8((v29 > 1), v30 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v31;
      v32 = &v8[16 * v30];
      *(v32 + 4) = v9;
      *(v32 + 5) = v7;
      v33 = *v101;
      if (!*v101)
      {
        goto LABEL_126;
      }

      if (v30)
      {
        while (1)
        {
          v34 = v31 - 1;
          if (v31 >= 4)
          {
            break;
          }

          if (v31 == 3)
          {
            v35 = *(v8 + 4);
            v36 = *(v8 + 5);
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_48:
            if (v38)
            {
              goto LABEL_105;
            }

            v51 = &v8[16 * v31];
            v53 = *v51;
            v52 = *(v51 + 1);
            v54 = __OFSUB__(v52, v53);
            v55 = v52 - v53;
            v56 = v54;
            if (v54)
            {
              goto LABEL_108;
            }

            v57 = &v8[16 * v34 + 32];
            v59 = *v57;
            v58 = *(v57 + 1);
            v45 = __OFSUB__(v58, v59);
            v60 = v58 - v59;
            if (v45)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v55, v60))
            {
              goto LABEL_112;
            }

            if (v55 + v60 >= v37)
            {
              if (v37 < v60)
              {
                v34 = v31 - 2;
              }

              goto LABEL_69;
            }

            goto LABEL_62;
          }

          v61 = &v8[16 * v31];
          v63 = *v61;
          v62 = *(v61 + 1);
          v45 = __OFSUB__(v62, v63);
          v55 = v62 - v63;
          v56 = v45;
LABEL_62:
          if (v56)
          {
            goto LABEL_107;
          }

          v64 = &v8[16 * v34];
          v66 = *(v64 + 4);
          v65 = *(v64 + 5);
          v45 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v45)
          {
            goto LABEL_110;
          }

          if (v67 < v55)
          {
            goto LABEL_3;
          }

LABEL_69:
          v72 = v34 - 1;
          if (v34 - 1 >= v31)
          {
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
            goto LABEL_123;
          }

          v73 = *&v8[16 * v72 + 32];
          v74 = *&v8[16 * v34 + 40];
          sub_2587F18D0((*a3 + 48 * v73), (*a3 + 48 * *&v8[16 * v34 + 32]), (*a3 + 48 * v74), v33);
          if (v5)
          {
          }

          if (v74 < v73)
          {
            goto LABEL_101;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_25883E0C8(v8);
          }

          if (v72 >= *(v8 + 2))
          {
            goto LABEL_102;
          }

          v75 = &v8[16 * v72];
          *(v75 + 4) = v73;
          *(v75 + 5) = v74;
          result = sub_25883E03C(v34);
          v31 = *(v8 + 2);
          if (v31 <= 1)
          {
            goto LABEL_3;
          }
        }

        v39 = &v8[16 * v31 + 32];
        v40 = *(v39 - 64);
        v41 = *(v39 - 56);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_103;
        }

        v44 = *(v39 - 48);
        v43 = *(v39 - 40);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_104;
        }

        v46 = &v8[16 * v31];
        v48 = *v46;
        v47 = *(v46 + 1);
        v45 = __OFSUB__(v47, v48);
        v49 = v47 - v48;
        if (v45)
        {
          goto LABEL_106;
        }

        v45 = __OFADD__(v37, v49);
        v50 = v37 + v49;
        if (v45)
        {
          goto LABEL_109;
        }

        if (v50 >= v42)
        {
          v68 = &v8[16 * v34 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v45 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v45)
          {
            goto LABEL_113;
          }

          if (v37 < v71)
          {
            v34 = v31 - 2;
          }

          goto LABEL_69;
        }

        goto LABEL_48;
      }

LABEL_3:
      v6 = *(a3 + 1);
      if (v7 >= v6)
      {
        goto LABEL_88;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_88:
  v6 = *v101;
  if (!*v101)
  {
    goto LABEL_127;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_120:
    result = sub_25883E0C8(v8);
    v8 = result;
  }

  v92 = v5;
  v93 = *(v8 + 2);
  if (v93 >= 2)
  {
    while (*a3)
    {
      v5 = v93 - 1;
      v94 = *&v8[16 * v93];
      v95 = *&v8[16 * v93 + 24];
      sub_2587F18D0((*a3 + 48 * v94), (*a3 + 48 * *&v8[16 * v93 + 16]), (*a3 + 48 * v95), v6);
      if (v92)
      {
      }

      if (v95 < v94)
      {
        goto LABEL_114;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_25883E0C8(v8);
      }

      if (v93 - 2 >= *(v8 + 2))
      {
        goto LABEL_115;
      }

      v96 = &v8[16 * v93];
      *v96 = v94;
      *(v96 + 1) = v95;
      result = sub_25883E03C(v5);
      v93 = *(v8 + 2);
      if (v93 <= 1)
      {
      }
    }

    goto LABEL_124;
  }
}

uint64_t sub_2587F18D0(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 48;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 48;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[48 * v11] <= a4)
    {
      memmove(a4, __dst, 48 * v11);
    }

    v12 = &v4[48 * v11];
    if (v10 >= 48 && v6 > v7)
    {
      sub_25878F648();
LABEL_23:
      v5 -= 48;
      do
      {
        v17 = v5 + 48;
        v31 = *(v12 - 4);
        v33 = *(v12 - 3);
        v27 = *(v6 - 4);
        v29 = *(v6 - 3);
        if (sub_2588BDD18() == -1)
        {
          v21 = v6 - 48;
          if (v17 != v6)
          {
            v22 = *v21;
            v23 = *(v6 - 1);
            *(v5 + 1) = *(v6 - 2);
            *(v5 + 2) = v23;
            *v5 = v22;
          }

          if (v12 <= v4 || (v6 -= 48, v21 <= v7))
          {
            v6 = v21;
            goto LABEL_35;
          }

          goto LABEL_23;
        }

        v18 = v12 - 48;
        if (v17 != v12)
        {
          v19 = *v18;
          v20 = *(v12 - 1);
          *(v5 + 1) = *(v12 - 2);
          *(v5 + 2) = v20;
          *v5 = v19;
        }

        v5 -= 48;
        v12 -= 48;
      }

      while (v18 > v4);
      v12 = v18;
    }
  }

  else
  {
    if (a4 != __src || &__src[48 * v9] <= a4)
    {
      memmove(a4, __src, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 >= 48 && v6 < v5)
    {
      sub_25878F648();
      while (1)
      {
        v30 = *(v6 + 2);
        v32 = *(v6 + 3);
        v26 = *(v4 + 2);
        v28 = *(v4 + 3);
        if (sub_2588BDD18() != -1)
        {
          break;
        }

        v13 = v6;
        v14 = v7 == v6;
        v6 += 48;
        if (!v14)
        {
          goto LABEL_10;
        }

LABEL_11:
        v7 += 48;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_33;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 48;
      if (v14)
      {
        goto LABEL_11;
      }

LABEL_10:
      v15 = *v13;
      v16 = *(v13 + 2);
      *(v7 + 1) = *(v13 + 1);
      *(v7 + 2) = v16;
      *v7 = v15;
      goto LABEL_11;
    }

LABEL_33:
    v6 = v7;
  }

LABEL_35:
  v24 = (v12 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v24])
  {
    memmove(v6, v4, 48 * v24);
  }

  return 1;
}

uint64_t sub_2587F1B84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t MedicalIDHeightFormatter.init(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2588BBAC8();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  v6 = sub_2587F28D4(a1, 2);
  (*(v5 + 8))(a1, v4);
  result = type metadata accessor for MedicalIDHeightFormatter();
  *(a2 + *(result + 20)) = v6;
  return result;
}

Swift::String __swiftcall MedicalIDHeightFormatter.localizedUnitDescription()()
{
  v1 = sub_2587F28D4(v0, 1);
  sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
  v2 = sub_2588BBAC8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2587F2AD8(0, &qword_27F95E848, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220BCE0]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_2588BB8A8();
  v8 = sub_2588BDBA8();
  v9 = [v1 stringFromUnit_];

  v10 = sub_2588BD8A8();
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

void sub_2587F1E14(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
  v5 = sub_2588BBAC8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_2587F2AD8(0, &qword_27F95E848, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220BCE0]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2588BB8A8();
  v11 = sub_2588BDBA8();
  sub_25884CDDC(a1, v11, a2);
}

uint64_t sub_2587F21C4(uint64_t a1)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_2588BBA58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = sub_2588BBA68();
  MEMORY[0x28223BE20](v7);
  sub_2588BBA38();
  sub_2587BBA44();
  v8 = sub_2588BD7D8();
  v9 = *(v4 + 8);
  v10 = v9(v46 - v6, v3);
  if (v8)
  {
    v9(v46 - v6, v3);
  }

  else
  {
    MEMORY[0x28223BE20](v10);
    sub_2588BBA28();
    v11 = sub_2588BD7D8();
    v9(v46 - v6, v3);
    v9(v46 - v6, v3);
    if ((v11 & 1) == 0)
    {
      sub_2587F2AD8(0, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220B530]);
      v38 = v37;
      v39 = *(v37 - 8);
      v40 = *(v39 + 64);
      MEMORY[0x28223BE20](v37);
      v42 = v46 - v41;
      v43 = [objc_opt_self() centimeters];
      sub_2588BB6B8();

      v44 = *(v2 + *(type metadata accessor for MedicalIDHeightFormatter() + 20));
      sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
      v45 = sub_2588BDC68();
      (*(v39 + 8))(v42, v38);
      return v45;
    }
  }

  sub_2587F2AD8(0, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220B530]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = objc_opt_self();
  v18 = v2;
  v19 = [v17 inches];
  sub_2588BB6B8();

  sub_2588BB688();
  v21 = v20;
  v22 = *(v14 + 8);
  v22(v46 - v16, v13);
  v23 = type metadata accessor for MedicalIDHeightFormatter();
  v46[1] = v46;
  v24 = *(v18 + *(v23 + 20));
  MEMORY[0x28223BE20](v23);
  v25 = [v17 feet];
  sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
  sub_2588BB678();
  v47 = sub_2588BDC68();
  v22(v46 - v16, v13);
  fmod(v21, 12.0);
  MEMORY[0x28223BE20](v26);
  v27 = [v17 inches];
  sub_2588BB678();
  sub_2588BDC68();
  v22(v46 - v16, v13);
  v28 = sub_2588BD838();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  sub_2588BD828();
  sub_2588BD818();
  sub_2588BD808();

  sub_2588BD818();
  sub_2588BD808();

  sub_2588BD818();
  v30 = sub_2588BD858();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  sub_2588BD848();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v32 = qword_27F95DA88;
  v33 = sub_2588BBAC8();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = v32;
  sub_2588BBAB8();
  return sub_2588BD8B8();
}

id sub_2587F28D4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  v4 = sub_2588BBA88();
  [v3 setLocale_];

  [v3 setUnitStyle_];
  [v3 setUnitOptions_];
  result = [v3 numberFormatter];
  if (result)
  {
    v6 = result;
    sub_25878E130(0, &qword_27F95D898, 0x277CCABB0);
    v7 = sub_2588BDCC8();
    [v6 setRoundingIncrement_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for MedicalIDHeightFormatter()
{
  result = qword_27F95E850;
  if (!qword_27F95E850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587F2A44()
{
  result = sub_2588BBAC8();
  if (v1 <= 0x3F)
  {
    result = sub_25878E130(319, &qword_27F95E860, 0x277CCAB18);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2587F2AD8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_25878E130(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2587F2B40(uint64_t a1)
{
  sub_2587F2AD8(0, &qword_27F95D870, &qword_27F95D878, 0x277D82BB8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __swiftcall MedicalIDSpokenLanguage.init(id:)(MedicalIDUI::MedicalIDSpokenLanguage *__return_ptr retstr, Swift::String id)
{
  object = id._object;
  countAndFlagsBits = id._countAndFlagsBits;
  v5 = sub_2588BBAC8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);

  sub_2588BBAB8();
  v8 = sub_2588BBA88();
  v9 = *(v6 + 8);
  v9(v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v43 = countAndFlagsBits;
  v10 = sub_2588BD868();
  v11 = [v8 localizedStringForLanguage:v10 context:3];

  if (v11)
  {
    v12 = sub_2588BD8A8();
    v14 = v13;
  }

  else
  {
    v42 = v9;
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v15 = sub_2588BBC98();
    __swift_project_value_buffer(v15, qword_27F969938);

    v16 = sub_2588BBC78();
    v17 = sub_2588BDBE8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v44 = v41;
      *v18 = 136315650;
      *(v18 + 4) = sub_258790224(0xD000000000000017, 0x80000002588C2110, &v44);
      *(v18 + 12) = 2080;
      v19 = sub_258790224(v43, object, &v44);
      v40[1] = v40;
      *(v18 + 14) = v19;
      *(v18 + 22) = 2080;
      MEMORY[0x28223BE20](v19);
      v20 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_2588BBAB8();
      v21 = sub_2588BBA08();
      v23 = v22;
      v42(v20, v5);
      v24 = sub_258790224(v21, v23, &v44);

      *(v18 + 24) = v24;
      _os_log_impl(&dword_25878B000, v16, v17, "%s spoken language for %s returned nil for localizing in current locale %s.", v18, 0x20u);
      v25 = v41;
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v25, -1, -1);
      MEMORY[0x259C8DBE0](v18, -1, -1);
    }

    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v26 = objc_allocWithZone(MEMORY[0x277CBEAF8]);
  v27 = sub_2588BD868();
  v28 = [v26 initWithLocaleIdentifier_];

  v29 = sub_2588BD868();
  v30 = [v28 localizedStringForLanguage:v29 context:3];

  if (v30)
  {
    v31 = sub_2588BD8A8();
    v33 = v32;
  }

  else
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v34 = sub_2588BBC98();
    __swift_project_value_buffer(v34, qword_27F969938);

    v35 = sub_2588BBC78();
    v36 = sub_2588BDBE8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44 = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_258790224(0xD000000000000017, 0x80000002588C2110, &v44);
      *(v37 + 12) = 2080;
      v39 = sub_258790224(v43, object, &v44);

      *(v37 + 14) = v39;
      _os_log_impl(&dword_25878B000, v35, v36, "%s spoken language for %s returned nil for localizing in that languages locale.", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v38, -1, -1);
      MEMORY[0x259C8DBE0](v37, -1, -1);
    }

    else
    {
    }

    v31 = 0;
    v33 = 0xE000000000000000;
  }

  retstr->id._countAndFlagsBits = v43;
  retstr->id._object = object;
  retstr->languageInCurrentLocale._countAndFlagsBits = v12;
  retstr->languageInCurrentLocale._object = v14;
  retstr->languageInLanguageLocale._countAndFlagsBits = v31;
  retstr->languageInLanguageLocale._object = v33;
}