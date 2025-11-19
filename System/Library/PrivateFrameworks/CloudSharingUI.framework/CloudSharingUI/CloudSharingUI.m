id TCPContactStore()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = TCPContactStore_contactStore;
  if (!TCPContactStore_contactStore)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v2 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    [v2 setIncludeIncludeManagedAppleIDs:1];
    v3 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v2];
    v4 = TCPContactStore_contactStore;
    TCPContactStore_contactStore = v3;

    v5 = CFAbsoluteTimeGetCurrent();
    v6 = CSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 134217984;
      v10 = (v5 - Current) * 1000.0;
      _os_log_impl(&dword_243B1E000, v6, OS_LOG_TYPE_INFO, "Time to create CNContactStore: %fms", &v9, 0xCu);
    }

    v0 = TCPContactStore_contactStore;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v0;
}

id CSCNAutocompleteSearchControllerHeaderView(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 headerView];
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x277D75D18]);
  }

  v3 = v2;

  return v3;
}

void CSSetCNAutocompleteSearchControllerHeaderView(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v4 setHeaderView:v3];
  }
}

void sub_243B20984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *CSCKSharingSummaryStringFromOptionsGroups()
{
  v0 = CKSharingSummaryStringFromOptionsGroups();
  if ([v0 length])
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;

  return v1;
}

uint64_t sub_243B22144()
{
  v1 = *v0;
  sub_243B70CBC();
  MEMORY[0x245D49D10](v1);
  return sub_243B70CEC();
}

uint64_t sub_243B221B8()
{
  v1 = *v0;
  sub_243B70CBC();
  MEMORY[0x245D49D10](v1);
  return sub_243B70CEC();
}

uint64_t sub_243B22228@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_243B22234(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_243B29D54(v5, v7) & 1;
}

uint64_t sub_243B22290(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_243B2A354(v5, v7) & 1;
}

uint64_t static SharingOptionsObservableModel.UserAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_243B70C6C()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_243B70C6C()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243B2238C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_243B70C6C()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_243B70C6C()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243B2247C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_243B2253C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_243B2268C(v2, v3);
}

uint64_t sub_243B2257C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t type metadata accessor for SharingOptionsObservableModel()
{
  result = qword_27EDA1E60;
  if (!qword_27EDA1E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243B2268C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 16) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 24);
      if (sub_243B70C6C())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  swift_getKeyPath();
  MEMORY[0x28223BE20]();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAEC();
}

uint64_t sub_243B227F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

void (*sub_243B2287C(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  *v4 = v1;
  swift_getKeyPath();
  sub_243B6FB1C();

  v4[7] = sub_243B2242C();
  return sub_243B229B4;
}

uint64_t sub_243B22A10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  v7 = *(v3 + 56);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = *(v3 + 64);
  return sub_243B22C04(v4, v5);
}

uint64_t sub_243B22AE0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = *(a1 + 32);
  *&v8 = *a1;
  *(&v8 + 1) = v2;
  v9 = v3;
  v10 = v4;
  v11 = v6;
  sub_243B22C04(v8, v2);
  return sub_243B22C48(&v8);
}

uint64_t sub_243B22B34@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(v1 + 64);
  return sub_243B22C04(v3, v4);
}

uint64_t sub_243B22C04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_243B22C48(__int128 *a1)
{
  v2 = a1[1];
  v13 = *a1;
  v14 = v2;
  v15 = *(a1 + 32);
  swift_beginAccess();
  v3 = *(v1 + 48);
  v16[0] = *(v1 + 32);
  v16[1] = v3;
  v17 = *(v1 + 64);
  sub_243B2E06C(v16, v12, &qword_27EDA1DF0, &qword_243B71F40);
  v4 = sub_243B2ACE0(v16, &v13);
  sub_243B2E620(v16, &qword_27EDA1DF0, &qword_243B71F40);
  if (v4)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    v12[0] = v1;
    sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
    sub_243B6FAEC();
    sub_243B2E620(&v13, &qword_27EDA1DF0, &qword_243B71F40);
  }

  else
  {
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    v8 = *(v1 + 48);
    v9 = *(v1 + 56);
    v10 = v14;
    *(v1 + 32) = v13;
    *(v1 + 48) = v10;
    v11 = *(v1 + 64);
    *(v1 + 64) = v15;
    return sub_243B2B0B0(v6, v7);
  }
}

uint64_t sub_243B22DF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a2 + 16);
  *(a1 + 32) = *a2;
  *(a1 + 48) = v8;
  v9 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 32);
  sub_243B2E06C(a2, &v11, &qword_27EDA1DF0, &qword_243B71F40);
  return sub_243B2B0B0(v4, v5);
}

void (*sub_243B22EA8(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  *v4 = v1;
  swift_getKeyPath();
  sub_243B6FB1C();

  v4[7] = sub_243B229C0();
  return sub_243B22FE0;
}

__n128 sub_243B2303C@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
  result = *(v3 + 72);
  *a2 = result;
  return result;
}

double sub_243B23120()
{
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t sub_243B231D4(double a1, double a2)
{
  result = swift_beginAccess();
  if (*(v2 + 72) == a1 && *(v2 + 80) == a2)
  {
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
    sub_243B6FAEC();
  }

  return result;
}

uint64_t sub_243B23308(uint64_t a1, double a2, double a3)
{
  result = swift_beginAccess();
  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
  return result;
}

void (*sub_243B23360(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  *v4 = v1;
  swift_getKeyPath();
  sub_243B6FB1C();

  v4[7] = sub_243B22FEC();
  return sub_243B23498;
}

uint64_t sub_243B234F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_243B235B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_243B2369C(v4);
}

uint64_t sub_243B235E4()
{
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
  v1 = *(v0 + 88);
}

uint64_t sub_243B2369C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);

  v5 = sub_243B283D0(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 88);
    *(v1 + 88) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
    sub_243B6FAEC();
  }
}

uint64_t sub_243B237E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 88);
  *(a1 + 88) = a2;
}

void (*sub_243B2384C(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  *v4 = v1;
  swift_getKeyPath();
  sub_243B6FB1C();

  v4[7] = sub_243B234A4();
  return sub_243B23984;
}

void sub_243B23990(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_243B6FB0C();

  free(v1);
}

uint64_t sub_243B23A24()
{
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  v1 = *(v0 + 152);
}

uint64_t sub_243B23AC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  *a2 = *(v3 + 152);
}

uint64_t sub_243B23B74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_243B23BA0(v4);
}

uint64_t sub_243B23BA0(uint64_t a1)
{
  if (sub_243B28620(*(v1 + 152), a1))
  {
    *(v1 + 152) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
    sub_243B6FAEC();
  }
}

uint64_t sub_243B23CE4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  v3 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlert;
  swift_beginAccess();
  return sub_243B2E06C(v5 + v3, a1, &qword_27EDA1E00, &unk_243B73660);
}

uint64_t sub_243B23DBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_243B2E06C(a2, &v10 - v6, &qword_27EDA1E00, &unk_243B73660);
  v8 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlert;
  swift_beginAccess();
  sub_243B2E0D4(v7, a1 + v8);
  return swift_endAccess();
}

uint64_t sub_243B23ED4()
{
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  v1 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__allGroups);
}

uint64_t sub_243B23F80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  *a2 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__allGroups);
}

uint64_t sub_243B24034(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_243B24060(v4);
}

uint64_t sub_243B24060(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__allGroups;
  if (sub_243B28620(*(v1 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__allGroups), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
    sub_243B6FAEC();
  }
}

uint64_t sub_243B241C0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  return *(v2 + *a2);
}

uint64_t sub_243B24260@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  *a2 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__shouldValidateWithAlert);
  return result;
}

uint64_t sub_243B24360(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
    sub_243B6FAEC();
  }

  return result;
}

id sub_243B24464()
{
  type metadata accessor for SharingOptionsViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EDA1D68 = result;
  return result;
}

uint64_t SharingOptionsObservableModel.__allocating_init(collaborationOptionsGroups:layoutMargins:userDidChangeOption:contentSizeDidChange:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v19 = *(v9 + 48);
  v20 = *(v9 + 52);
  swift_allocObject();
  v21 = sub_243B2B740(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  sub_243B2BFCC(a4);
  sub_243B2BFCC(a2);
  return v21;
}

uint64_t SharingOptionsObservableModel.init(collaborationOptionsGroups:layoutMargins:userDidChangeOption:contentSizeDidChange:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v11 = sub_243B2B740(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  sub_243B2BFCC(a4);
  sub_243B2BFCC(a2);
  return v11;
}

unint64_t sub_243B245D8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x245D49BC0](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject options];
      sub_243B2E534(0, &qword_27EDA1F58, 0x277CDC6C8);
      v8 = sub_243B7089C();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_243B70C0C();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_243B70C0C();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_243B70C0C();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_243B70B8C();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_243B70C0C();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_243B2E680(&qword_27EDA1F98, &qword_27EDA1F90, &qword_243B724E0);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F90, &qword_243B724E0);
              v20 = sub_243B66E0C(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_243B70C0C();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_243B2496C(uint64_t *a1, id *a2)
{
  v3 = *a2;
  v4 = [*a2 requiredOptionsIdentifiers];
  v5 = sub_243B7089C();

  v6 = [v3 identifier];
  v7 = sub_243B7082C();
  v9 = v8;

  v10 = *MEMORY[0x277CBC0C0];
  if (v7 == sub_243B7082C() && v9 == v11)
  {
  }

  else
  {
    v13 = sub_243B70C6C();

    if ((v13 & 1) == 0)
    {

      goto LABEL_9;
    }
  }

  v14 = *(v5 + 16);

  if (!v14)
  {
    v26 = [v3 identifier];
    v27 = sub_243B7082C();
    v18 = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1FA0, &qword_243B74F40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_243B71EC0;
    v30 = *MEMORY[0x277CBC0B0];
    *(inited + 32) = sub_243B7082C();
    *(inited + 40) = v31;
    v32 = sub_243B2B180(inited);
    swift_setDeallocating();
    sub_243B2E8B0(inited + 32);
    v33 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *a1;
    v24 = v32;
    v25 = v27;
    goto LABEL_11;
  }

LABEL_9:
  v15 = [v3 identifier];
  v16 = sub_243B7082C();
  v18 = v17;

  v19 = [v3 requiredOptionsIdentifiers];
  v20 = sub_243B7089C();

  v21 = sub_243B2B180(v20);

  v22 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *a1;
  v24 = v21;
  v25 = v16;
LABEL_11:
  sub_243B28F2C(v24, v25, v18, isUniquelyReferenced_nonNull_native);

  *a1 = v35;
  return result;
}

uint64_t sub_243B24C04()
{
  v1 = *(v0 + 16);
  sub_243B6FADC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t SharingOptionsObservableModel.__allocating_init(collaborationOptionsGroups:userDidChangeOption:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = sub_243B2BFDC(a1, a2, a3);
  sub_243B2BFCC(a2);
  return v9;
}

uint64_t SharingOptionsObservableModel.init(collaborationOptionsGroups:userDidChangeOption:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_243B2BFDC(a1, a2, a3);
  sub_243B2BFCC(a2);
  return v4;
}

uint64_t sub_243B24D68()
{
  v1 = *(v0 + 16);
  sub_243B6FADC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t SharingOptionsObservableModel.__allocating_init(collaborationShareOptions:layoutMargins:userDidChangeOption:contentSizeDidChange:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v11 = sub_243B2C694(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  sub_243B2BFCC(a2);

  return v11;
}

uint64_t sub_243B24E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  sub_243B2E534(0, &qword_27EDA2F30, 0x277CDC6D0);
  v15 = sub_243B7088C();
  v16 = CSCKSharingSummaryStringFromOptionsGroups();

  v17 = a6 >> 62;
  if (v16)
  {
    if (v17)
    {
      sub_243B2E534(0, &qword_27EDA1F20, 0x277CDC6A8);

      sub_243B70BFC();
    }

    else
    {

      sub_243B70C7C();
      sub_243B2E534(0, &qword_27EDA1F20, 0x277CDC6A8);
    }

    v18 = objc_allocWithZone(MEMORY[0x277CDC6E0]);
    sub_243B2E534(0, &qword_27EDA1F20, 0x277CDC6A8);
    v19 = sub_243B7088C();

    [v18 initWithOptionsGroups:v19 summary:v16];
  }

  else if (a8)
  {
    v24 = a4;
    if (v17)
    {
      sub_243B2E534(0, &qword_27EDA1F20, 0x277CDC6A8);

      sub_243B70BFC();
    }

    else
    {

      sub_243B70C7C();
      sub_243B2E534(0, &qword_27EDA1F20, 0x277CDC6A8);
    }

    v20 = objc_allocWithZone(MEMORY[0x277CDC6E0]);
    sub_243B2E534(0, &qword_27EDA1F20, 0x277CDC6A8);
    v21 = sub_243B7088C();

    v16 = sub_243B7080C();
    [v20 initWithOptionsGroups:v21 summary:v16];

    a4 = v24;
  }

  else
  {
    if (v17)
    {
      sub_243B2E534(0, &qword_27EDA1F20, 0x277CDC6A8);

      sub_243B70BFC();
    }

    else
    {

      sub_243B70C7C();
      sub_243B2E534(0, &qword_27EDA1F20, 0x277CDC6A8);
    }

    v22 = objc_allocWithZone(MEMORY[0x277CDC6E0]);
    sub_243B2E534(0, &qword_27EDA1F20, 0x277CDC6A8);
    v16 = sub_243B7088C();

    [v22 initWithOptionsGroups_];
  }

  if (a9)
  {
    a9(a1, a2, a3, a4, a5 & 1);
  }

  return MEMORY[0x2821F97D8]();
}

uint64_t SharingOptionsObservableModel.__allocating_init(collaborationShareOptions:userDidChangeOption:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_243B2C694(a1, a2, a3, 0, 0, 0.0, 0.0, 0.0, 0.0);
  sub_243B2BFCC(a2);

  return v5;
}

uint64_t sub_243B25260(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (v5 && (*(v2 + 16) == a1 ? (v6 = v5 == a2) : (v6 = 0), v6 || (v7 = *(v2 + 24), (sub_243B70C6C() & 1) != 0)))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
    sub_243B6FAEC();
  }
}

id sub_243B253BC()
{
  v1 = sub_243B6FB9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = v0;
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
  v6 = *(v0 + 24);
  if (v6)
  {
    v7 = *(v0 + 16);
    v8 = objc_opt_self();

    v9 = sub_243B7080C();
    v10 = [v8 _applicationIconImageForBundleIdentifier_format_];

    if (v10)
    {

      return v10;
    }

    sub_243B6FB7C();

    v12 = sub_243B6FB8C();
    v13 = sub_243B709CC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      v16 = sub_243B40EA8(v7, v6, &v17);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_243B1E000, v12, v13, "Failed to get appIcon for %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x245D4A570](v15, -1, -1);
      MEMORY[0x245D4A570](v14, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v5, v1);
  }

  return [objc_allocWithZone(MEMORY[0x277D755B8]) init];
}

uint64_t sub_243B25684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, __int128 *a8)
{
  v9 = v8;
  v102 = a4;
  v100 = a3;
  v101 = a2;
  v99 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v97 = &v85[-v16];
  v17 = type metadata accessor for AlertViewModelButton(0);
  v94 = *(v17 - 1);
  v18 = *(v94 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v98 = &v85[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v22 = &v85[-v21];
  v23 = a8[1];
  v116 = *a8;
  v117 = v23;
  v118 = a8[2];
  v119 = *(a8 + 48);
  swift_getKeyPath();
  v24 = v9 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel___observationRegistrar;
  *&v112 = v9;
  v95 = sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  v96 = v24;
  sub_243B6FAFC();

  if (*(v9 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__shouldValidateWithAlert) != 1)
  {
    goto LABEL_14;
  }

  v25 = *MEMORY[0x277CBC100];
  if (sub_243B7082C() == a6 && v26 == a7)
  {
  }

  else
  {
    v27 = sub_243B70C6C();

    if ((v27 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  *&v112 = v99;
  *(&v112 + 1) = v101;
  *&v113 = v100;
  *(&v113 + 1) = v102;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA1F10, &qword_243B72438);
  MEMORY[0x245D496D0](&v103, v28);
  v29 = v103;
  v30 = v104;
  v31 = *MEMORY[0x277CBC0B0];
  if (v29 != sub_243B7082C() || v30 != v32)
  {
    v33 = sub_243B70C6C();

    if (v33)
    {
      goto LABEL_10;
    }

LABEL_14:
    v112 = v116;
    v113 = v117;
    v114 = v118;
    v115 = v119;
    v108 = v99;
    v109 = v101;
    v110 = v100;
    v111 = v102;
    sub_243B2E06C(&v116, &v103, &qword_27EDA1F00, &qword_243B723D8);

    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA1F10, &qword_243B72438);
    MEMORY[0x245D496D0](&v103, v80);
    v81 = v103;
    v82 = v104;
    v103 = a6;
    v104 = a7;
    v105 = v81;
    v106 = v82;
    v107 = a5 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F00, &qword_243B723D8);
    sub_243B7069C();
    v83 = v113;

    return sub_243B2B0B0(v83, *(&v83 + 1));
  }

LABEL_10:
  v93 = v22;
  sub_243B700CC();
  if (qword_27EDA1D60 != -1)
  {
    swift_once();
  }

  v34 = qword_27EDA1D68;
  v35 = qword_27EDA1D68;
  v91 = v34;
  v92 = v35;
  v88 = sub_243B703AC();
  v87 = v36;
  v86 = v37;
  v39 = v38;
  v40 = v17[6];
  v41 = v93;
  sub_243B6FC8C();
  v42 = sub_243B6FCBC();
  v43 = *(v42 - 8);
  v89 = *(v43 + 56);
  v90 = v43 + 56;
  v89(v41 + v40, 0, 1, v42);
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  v46 = v117;
  *(v45 + 24) = v116;
  *(v45 + 40) = v46;
  *(v45 + 56) = v118;
  *(v45 + 72) = v119;
  *(v45 + 80) = a6;
  *(v45 + 88) = a7;
  sub_243B2E06C(&v116, &v112, &qword_27EDA1F00, &qword_243B723D8);

  sub_243B6FABC();
  v47 = v41 + v17[5];
  v48 = v87;
  *v47 = v88;
  *(v47 + 8) = v48;
  *(v47 + 16) = v86 & 1;
  *(v47 + 24) = v39;
  v49 = (v41 + v17[7]);
  *v49 = sub_243B2EC1C;
  v49[1] = v45;
  sub_243B700CC();
  v50 = sub_243B703AC();
  v52 = v51;
  LOBYTE(v39) = v53;
  v91 = v54;
  v55 = v17[6];
  v56 = v98;
  sub_243B6FCAC();
  v89(&v56[v55], 0, 1, v42);
  v57 = swift_allocObject();
  swift_weakInit();
  v58 = swift_allocObject();
  *(v58 + 2) = v57;
  v59 = v101;
  *(v58 + 3) = v99;
  *(v58 + 4) = v59;
  v60 = v102;
  *(v58 + 5) = v100;
  *(v58 + 6) = v60;

  sub_243B6FABC();
  v61 = &v56[v17[5]];
  *v61 = v50;
  *(v61 + 1) = v52;
  v62 = v56;
  v61[16] = v39 & 1;
  *(v61 + 3) = v91;
  v63 = &v56[v17[7]];
  *v63 = sub_243B2E1F8;
  v63[1] = v58;
  v102 = sub_243B6F9FC();
  v65 = v64;
  v66 = sub_243B6F9FC();
  v68 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F08, &qword_243B723E0);
  v69 = *(v94 + 72);
  v70 = (*(v94 + 80) + 32) & ~*(v94 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_243B71ED0;
  v72 = v71 + v70;
  sub_243B2DF64(v41, v72, type metadata accessor for AlertViewModelButton);
  sub_243B2DF64(v62, v72 + v69, type metadata accessor for AlertViewModelButton);
  v73 = v97;
  sub_243B6FABC();
  v74 = type metadata accessor for AlertViewModel(0);
  v75 = (v73 + v74[5]);
  *v75 = v102;
  v75[1] = v65;
  v76 = (v73 + v74[6]);
  *v76 = v66;
  v76[1] = v68;
  *(v73 + v74[7]) = v71;
  (*(*(v74 - 1) + 56))(v73, 0, 1, v74);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *&v112 = v9;
  sub_243B6FAEC();

  sub_243B2E620(v73, &qword_27EDA1E00, &unk_243B73660);
  v78 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlertBool;
  if (*(v9 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlertBool) == 1)
  {
    sub_243B2E010(v62);
    result = sub_243B2E010(v93);
    *(v9 + v78) = 1;
  }

  else
  {
    v84 = swift_getKeyPath();
    MEMORY[0x28223BE20](v84);
    *&v112 = v9;
    sub_243B6FAEC();

    sub_243B2E010(v62);
    return sub_243B2E010(v93);
  }

  return result;
}

uint64_t sub_243B2616C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v1 = *MEMORY[0x277CBC0A8];
    sub_243B7082C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA1F10, &qword_243B72438);
    return sub_243B7069C();
  }

  return result;
}

uint64_t sub_243B26218(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v7 = v6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v87 = &v76[-v16];
  v17 = type metadata accessor for AlertViewModelButton(0);
  v84 = *(v17 - 1);
  v18 = *(v84 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v83 = &v76[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v88 = &v76[-v21];
  v22 = a6[1];
  v99 = *a6;
  v100 = v22;
  v101 = a6[2];
  v102 = *(a6 + 48);
  swift_getKeyPath();
  v23 = v7 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel___observationRegistrar;
  *&v95 = v7;
  v85 = sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  v86 = v23;
  sub_243B6FAFC();

  if (*(v7 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__shouldValidateWithAlert) != 1)
  {
    goto LABEL_14;
  }

  v24 = *MEMORY[0x277CBC100];
  if (sub_243B7082C() == a4 && v25 == a5)
  {
  }

  else
  {
    v26 = sub_243B70C6C();

    if ((v26 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v27 = *MEMORY[0x277CBC0B0];
  if (sub_243B7082C() != a1 || v28 != a2)
  {
    v29 = sub_243B70C6C();

    if (v29)
    {
      goto LABEL_10;
    }

LABEL_14:
    v95 = v99;
    v96 = v100;
    v97 = v101;
    v98 = v102;
    v90 = a4;
    v91 = a5;
    v92 = a1;
    v93 = a2;
    v94 = a3 & 1;
    sub_243B2E06C(&v99, v89, &qword_27EDA1F00, &qword_243B723D8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F00, &qword_243B723D8);
    sub_243B7069C();
    v74 = v96;

    return sub_243B2B0B0(v74, *(&v74 + 1));
  }

LABEL_10:
  sub_243B700CC();
  if (qword_27EDA1D60 != -1)
  {
    swift_once();
  }

  v82 = qword_27EDA1D68;
  v79 = sub_243B703AC();
  v78 = v30;
  v77 = v31;
  v33 = v32;
  v34 = v17[6];
  v35 = v88;
  sub_243B6FC8C();
  v36 = sub_243B6FCBC();
  v37 = *(v36 - 8);
  v80 = *(v37 + 56);
  v81 = v37 + 56;
  v80(&v35[v34], 0, 1, v36);
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  v40 = v100;
  *(v39 + 24) = v99;
  *(v39 + 40) = v40;
  *(v39 + 56) = v101;
  *(v39 + 72) = v102;
  *(v39 + 80) = a4;
  *(v39 + 88) = a5;
  sub_243B2E06C(&v99, &v95, &qword_27EDA1F00, &qword_243B723D8);

  sub_243B6FABC();
  v41 = &v35[v17[5]];
  v42 = v78;
  *v41 = v79;
  *(v41 + 1) = v42;
  v41[16] = v77 & 1;
  *(v41 + 3) = v33;
  v43 = &v35[v17[7]];
  *v43 = sub_243B2DF0C;
  v43[1] = v39;
  sub_243B700CC();
  v78 = sub_243B703AC();
  v45 = v44;
  LOBYTE(v38) = v46;
  v79 = v47;
  v48 = v17[6];
  v49 = v83;
  sub_243B6FCAC();
  v80((v49 + v48), 0, 1, v36);
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = swift_allocObject();
  *(v51 + 16) = v50;
  v52 = v100;
  *(v51 + 24) = v99;
  *(v51 + 40) = v52;
  *(v51 + 56) = v101;
  *(v51 + 72) = v102;
  *(v51 + 80) = a4;
  *(v51 + 88) = a5;
  sub_243B2E06C(&v99, &v95, &qword_27EDA1F00, &qword_243B723D8);

  sub_243B6FABC();
  v53 = v49 + v17[5];
  *v53 = v78;
  *(v53 + 8) = v45;
  *(v53 + 16) = v38 & 1;
  *(v53 + 24) = v79;
  v54 = (v49 + v17[7]);
  *v54 = sub_243B2DF38;
  v54[1] = v51;
  v55 = sub_243B6F9FC();
  v81 = v56;
  v57 = sub_243B6F9FC();
  v59 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F08, &qword_243B723E0);
  v60 = *(v84 + 72);
  v61 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_243B71ED0;
  v63 = v62 + v61;
  sub_243B2DF64(v35, v63, type metadata accessor for AlertViewModelButton);
  v64 = v63 + v60;
  v65 = v49;
  sub_243B2DF64(v49, v64, type metadata accessor for AlertViewModelButton);
  v66 = v87;
  sub_243B6FABC();
  v67 = type metadata accessor for AlertViewModel(0);
  v68 = (v66 + v67[5]);
  v69 = v81;
  *v68 = v55;
  v68[1] = v69;
  v70 = (v66 + v67[6]);
  *v70 = v57;
  v70[1] = v59;
  *(v66 + v67[7]) = v62;
  (*(*(v67 - 1) + 56))(v66, 0, 1, v67);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *&v95 = v7;
  sub_243B6FAEC();

  sub_243B2E620(v66, &qword_27EDA1E00, &unk_243B73660);
  v72 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlertBool;
  if (*(v7 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlertBool) == 1)
  {
    sub_243B2E010(v65);
    result = sub_243B2E010(v88);
    *(v7 + v72) = 1;
  }

  else
  {
    v75 = swift_getKeyPath();
    MEMORY[0x28223BE20](v75);
    *&v95 = v7;
    sub_243B6FAEC();

    sub_243B2E010(v65);
    return sub_243B2E010(v88);
  }

  return result;
}

uint64_t sub_243B26C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v10 = *(a2 + 16);
    v16 = *a2;
    v17 = v10;
    v18 = *(a2 + 32);
    v19 = *(a2 + 48);
    v11 = *a5;
    v14[7] = a3;
    v14[8] = a4;
    v14[9] = sub_243B7082C();
    v14[10] = v12;
    v15 = 1;
    sub_243B2E06C(a2, v14, &qword_27EDA1F00, &qword_243B723D8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F00, &qword_243B723D8);
    sub_243B7069C();
    v13 = v17;

    return sub_243B2B0B0(v13, *(&v13 + 1));
  }

  return result;
}

uint64_t sub_243B26D2C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v22 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v22);
          ++v11;
        }

        while (!v7);
        v11 = v22;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a1 + 40);
      sub_243B70CBC();

      sub_243B7084C();
      v16 = sub_243B70CEC();
      v17 = -1 << *(a1 + 32);
      v18 = v16 & ~v17;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = ~v17;
      while (1)
      {
        v20 = (*(a1 + 48) + 16 * v18);
        v21 = *v20 == v14 && v20[1] == v13;
        if (v21 || (sub_243B70C6C() & 1) != 0)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

id sub_243B26F08(uint64_t *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = *(v4 + 16);
  if (v5)
  {
    v24 = MEMORY[0x277D84F90];
    sub_243B70BCC();
    sub_243B2E534(0, &qword_27EDA1F58, 0x277CDC6C8);
    v6 = (v4 + 32);
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v26 = *(v6 + 24);
      v25[1] = v8;
      v25[2] = v9;
      v25[0] = v7;
      sub_243B2E57C(v25, &v23);

      sub_243B28090(v25, a2);
      sub_243B70BAC();
      v10 = *(v24 + 16);
      sub_243B70BDC();
      sub_243B70BEC();
      sub_243B70BBC();
      v6 = (v6 + 56);
      --v5;
    }

    while (v5);

    if (a1[3])
    {
      goto LABEL_5;
    }
  }

  else
  {

    if (a1[3])
    {
LABEL_5:
      v11 = a1[2];

      v12 = sub_243B7080C();

      goto LABEL_8;
    }
  }

  v12 = 0;
LABEL_8:
  v13 = *a1;
  v14 = a1[1];
  v15 = sub_243B7080C();
  if (a1[5])
  {
    v16 = a1[4];
    v17 = a1[5];

    v18 = sub_243B7080C();
    sub_243B2E5B4(a1);
  }

  else
  {
    sub_243B2E5B4(a1);
    v18 = 0;
  }

  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_243B2E534(0, &qword_27EDA1F58, 0x277CDC6C8);
  v20 = sub_243B7088C();

  v21 = [v19 initWithTitle:v12 identifier:v15 footer:v18 options:v20];

  return v21;
}

uint64_t sub_243B2713C(uint64_t *a1, uint64_t a2)
{
  v4 = a1;
  v5 = a1[6];
  v34 = v5;
  v6 = *(v5 + 16);
  if (!v6)
  {

    v2 = 0;
    if (v4[3])
    {
LABEL_11:
      v15 = v4[2];

      v16 = sub_243B7080C();

LABEL_14:
      v17 = *v4;
      v18 = v4[1];
      v19 = sub_243B7080C();
      if (v4[5])
      {
        v20 = v4[4];
        v21 = v4[5];

        v22 = sub_243B7080C();
        sub_243B2E5B4(v4);
      }

      else
      {
        sub_243B2E5B4(v4);
        v22 = 0;
      }

      v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      sub_243B2E534(0, &qword_27EDA1F58, 0x277CDC6C8);
      v24 = sub_243B7088C();

      v25 = [v23 initWithTitle:v16 identifier:v19 footer:v22 options:v24 selectedOptionIdentifierIndex:v2];

      return v25;
    }

LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  v33 = MEMORY[0x277D84F90];

  sub_243B70BCC();
  v7 = *(v5 + 16);
  result = sub_243B2E534(0, &qword_27EDA1F58, 0x277CDC6C8);
  v27 = v7;
  if (!v7)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    sub_243B2E620(&v34, &qword_27EDA1F60, &unk_243B724B0);

    v4 = v26;
    if (v26[3])
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v2 = 0;
  v9 = 0;
  v10 = v5 + 32;
  while (v9 < *(v5 + 16))
  {
    v11 = *(v10 + 48);
    v13 = *(v10 + 16);
    v12 = *(v10 + 32);
    v29[0] = *v10;
    v29[1] = v13;
    v29[2] = v12;
    v30 = v11;
    v31[0] = v29[0];
    v31[1] = v13;
    v31[2] = v12;
    v32 = v11;
    v36 = v11;
    v35[1] = v13;
    v35[2] = v12;
    v35[0] = v29[0];
    sub_243B2E57C(v29, v28);
    sub_243B2E57C(v31, v28);

    if (!v36)
    {
      v2 = v9;
    }

    sub_243B28090(v35, a2);
    sub_243B70BAC();
    v14 = *(v33 + 16);
    sub_243B70BDC();
    sub_243B70BEC();
    result = sub_243B70BBC();
    if (v6 - 1 == v9)
    {
      goto LABEL_10;
    }

    ++v9;
    v10 += 56;
    if (v27 == v9)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t SharingOptionsObservableModel.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  sub_243B2B0B0(*(v0 + 32), *(v0 + 40));
  v5 = *(v0 + 88);

  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  sub_243B2B0B0(*(v0 + 96), *(v0 + 104));
  v9 = *(v0 + 152);

  sub_243B2E620(v0 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlert, &qword_27EDA1E00, &unk_243B73660);
  v10 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_optionsDependency);

  v11 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__allGroups);

  v12 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_userDidChangeOption + 8);
  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_userDidChangeOption));
  v13 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_contentSizeDidChange + 8);
  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_contentSizeDidChange));
  v14 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel___observationRegistrar;
  v15 = sub_243B6FB3C();
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  return v0;
}

uint64_t SharingOptionsObservableModel.__deallocating_deinit()
{
  SharingOptionsObservableModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_243B2758C()
{
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_getKeyPath();
  sub_243B6FAFC();
}

uint64_t sub_243B27664()
{
  v0 = sub_243B7078C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_243B707AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    swift_getKeyPath();
    v30 = v6;
    v28 = v0;
    aBlock[0] = v11;
    sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
    v29 = v5;
    sub_243B6FAFC();

    swift_beginAccess();
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);
    v14 = *(v11 + 48);
    v15 = *(v11 + 56);
    v16 = *(v11 + 96);
    v17 = *(v11 + 104);
    v18 = *(v11 + 112);
    v19 = *(v11 + 120);
    *(v11 + 96) = v12;
    *(v11 + 104) = v13;
    *(v11 + 112) = v14;
    *(v11 + 120) = v15;
    v20 = *(v11 + 64);
    v27 = v1;
    v21 = *(v11 + 128);
    *(v11 + 128) = v20;
    sub_243B22C04(v12, v13);
    sub_243B2B0B0(v16, v17);
    swift_getKeyPath();
    aBlock[0] = v11;
    sub_243B6FAFC();

    swift_beginAccess();
    *(v11 + 136) = *(v11 + 72);
    sub_243B2E534(0, &qword_27EDA1F30, 0x277D85C78);
    v22 = sub_243B70A0C();
    v23 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_243B2E494;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B2804C;
    aBlock[3] = &block_descriptor;
    v24 = _Block_copy(aBlock);

    sub_243B7079C();
    v31 = MEMORY[0x277D84F90];
    sub_243B2CC20(&qword_27EDA1F38, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F40, &qword_243B724A8);
    sub_243B2E680(&qword_27EDA1F48, &qword_27EDA1F40, &qword_243B724A8);
    v25 = v28;
    sub_243B70B2C();
    MEMORY[0x245D49A60](0, v9, v4, v24);
    _Block_release(v24);

    (*(v27 + 8))(v4, v25);
    (*(v30 + 8))(v9, v29);
  }

  return result;
}

uint64_t sub_243B27AC0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
    sub_243B6FAFC();

    swift_beginAccess();
    if (*(v1 + 72) != *(v1 + 136) || *(v1 + 80) != *(v1 + 144))
    {
      swift_getKeyPath();
      sub_243B6FAFC();

      if (*(v1 + 72) != 0.0 || *(v1 + 80) != 0.0)
      {
        v3 = *(v1 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_contentSizeDidChange);
        if (v3)
        {
          v4 = *(v1 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_contentSizeDidChange + 8);
          swift_getKeyPath();
          sub_243B6FAFC();

          v3(v5, *(v1 + 72), *(v1 + 80));
        }
      }
    }

    v6 = *(v1 + 104);
    if (v6)
    {
      v7 = *(v1 + 96);
      v8 = *(v1 + 112);
      v9 = *(v1 + 120);
      v15 = *(v1 + 128);
      swift_getKeyPath();

      sub_243B6FAFC();

      swift_beginAccess();
      v10 = *(v1 + 40);
      if (v10 && ((v11 = *(v1 + 48), v12 = *(v1 + 56), v13 = *(v1 + 64), *(v1 + 32) == v7) && v10 == v6 || (sub_243B70C6C() & 1) != 0))
      {
        if (v11 == v8 && v12 == v9)
        {
          sub_243B2B0B0(v7, v6);
          if (((v15 ^ v13) & 1) == 0)
          {
LABEL_21:

            swift_beginAccess();
            result = swift_weakLoadStrong();
            if (result)
            {
              sub_243B6FADC();
            }

            return result;
          }
        }

        else
        {
          v14 = sub_243B70C6C();
          sub_243B2B0B0(v7, v6);
          if ((v14 & 1) != 0 && ((v15 ^ v13) & 1) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        sub_243B2B0B0(v7, v6);
      }
    }

    sub_243B27E1C();
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_243B27E1C()
{
  v1 = v0;
  swift_getKeyPath();
  v18 = v0;
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  result = swift_beginAccess();
  v3 = *(v0 + 40);
  if (v3)
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    swift_getKeyPath();
    v18 = v0;

    sub_243B6FAFC();

    v8 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__allGroups);
    v18 = v4;
    v19 = v3;
    v20 = v5;
    v21 = v6;
    v22 = v7;
    sub_243B22C04(v4, v3);

    v10 = sub_243B2CFCC(v9, &v18);

    sub_243B2B0B0(v18, v19);

    sub_243B24060(v11);
    v12 = *(v1 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_optionsDependency);
    v13 = sub_243B2B218(v10, v12);
    v14 = sub_243B2D474(v10, v12);

    sub_243B23BA0(v13);

    sub_243B2369C(v15);
    v16 = *(v1 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_userDidChangeOption);
    if (v16)
    {
      v17 = *(v1 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_userDidChangeOption + 8);
      v16(v4, v3, v5, v6, v7 & 1, v14);
    }

    return sub_243B2B0B0(v4, v3);
  }

  return result;
}

uint64_t sub_243B2804C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_243B28090(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (*(a2 + 16))
  {
    v6 = *(a1 + 8);

    v7 = sub_243B66CDC(v4, v5);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(a2 + 56) + 8 * v7);

      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = sub_243B32884(*(v10 + 16), 0);
        v13 = sub_243B29BFC(&v26, v12 + 4, v11, v10);
        sub_243B2E614();
        if (v13 == v11)
        {
          goto LABEL_7;
        }

        __break(1u);
      }
    }
  }

LABEL_7:
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = sub_243B7080C();
  v17 = sub_243B7080C();
  if (*(a1 + 40))
  {
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);

    v20 = sub_243B7080C();
  }

  else
  {
    v20 = 0;
  }

  sub_243B2E5E4(a1);
  v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v22 = *(a1 + 48) == 0;
  v23 = sub_243B7088C();

  v24 = [v21 initWithTitle:v16 identifier:v17 subtitle:v20 selected:v22 requiredOptionsIdentifiers:v23];

  return v24;
}

uint64_t sub_243B28254(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 56)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v11 = *(a2 + i + 64);
      v10 = *(a2 + i + 72);
      v18 = *(a2 + i + 80);
      v19 = *(a1 + i + 80);
      v16 = *(a2 + i + 81);
      v17 = *(a1 + i + 81);
      if ((*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 40) != *(a2 + i + 40)) && (sub_243B70C6C() & 1) == 0)
      {
        break;
      }

      if ((v4 != v8 || v5 != v9) && (sub_243B70C6C() & 1) == 0)
      {
        break;
      }

      if (v7)
      {
        if (!v10)
        {
          return 0;
        }

        if (v6 == v11 && v7 == v10)
        {
          result = 0;
        }

        else
        {
          v13 = sub_243B70C6C();
          result = 0;
          if ((v13 & 1) == 0)
          {
            return result;
          }
        }
      }

      else
      {
        result = 0;
        if (v10)
        {
          return result;
        }
      }

      if (v19 != v18 || ((v17 ^ v16) & 1) != 0)
      {
        return result;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_243B283D0(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_243B2E534(0, &qword_27EDA2F30, 0x277CDC6D0);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x245D49BC0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x245D49BC0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_243B70A2C();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_243B70A2C();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_243B70C0C();
  }

  result = sub_243B70C0C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_243B28620(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v33 = *(result + 16);
  v34 = 0;
  v29 = a2 + 32;
  v30 = result + 32;
  while (v34 != v33)
  {
    v3 = v30 + (v34 << 6);
    result = *v3;
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    v7 = *(v3 + 40);
    v8 = *(v3 + 56);
    v9 = v29 + (v34 << 6);
    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    v13 = *(v9 + 32);
    v12 = *(v9 + 40);
    v35 = *(v9 + 48);
    v36 = *(v3 + 48);
    v14 = *(v9 + 56);
    if (*v3 != *v9 || *(v3 + 8) != *(v9 + 8))
    {
      result = sub_243B70C6C();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (v5)
    {
      if (!v10)
      {
        return 0;
      }

      if (v4 != v11 || v5 != v10)
      {
        result = sub_243B70C6C();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v10)
    {
      return 0;
    }

    if (v7)
    {
      if (!v12)
      {
        return 0;
      }

      if (v6 != v13 || v7 != v12)
      {
        result = sub_243B70C6C();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v12)
    {
      return 0;
    }

    v32 = v14;
    v16 = v35;
    v15 = v36;
    v17 = *(v36 + 16);
    if (v17 != *(v35 + 16))
    {
      return 0;
    }

    v31 = v8;
    if (v17)
    {
      v18 = v36 == v35;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = 0;
      while (v17)
      {
        v20 = *(v15 + v19 + 48);
        v21 = *(v15 + v19 + 56);
        v22 = *(v15 + v19 + 64);
        v23 = *(v15 + v19 + 72);
        v38 = *(v15 + v19 + 81);
        v24 = *(v16 + v19 + 48);
        v25 = *(v16 + v19 + 56);
        v27 = *(v16 + v19 + 64);
        v26 = *(v16 + v19 + 72);
        v39 = *(v16 + v19 + 80);
        v40 = *(v15 + v19 + 80);
        v37 = *(v16 + v19 + 81);
        if ((*(v15 + v19 + 32) != *(v16 + v19 + 32) || *(v15 + v19 + 40) != *(v16 + v19 + 40)) && (sub_243B70C6C() & 1) == 0 || (v20 != v24 || v21 != v25) && (sub_243B70C6C() & 1) == 0)
        {
          return 0;
        }

        if (v23)
        {
          if (!v26)
          {
            return 0;
          }

          if (v22 == v27 && v23 == v26)
          {
            result = 0;
          }

          else
          {
            v28 = sub_243B70C6C();
            result = 0;
            if ((v28 & 1) == 0)
            {
              return result;
            }
          }
        }

        else
        {
          result = 0;
          if (v26)
          {
            return result;
          }
        }

        if (v40 != v39 || ((v38 ^ v37) & 1) != 0)
        {
          return result;
        }

        v19 += 56;
        --v17;
        v16 = v35;
        v15 = v36;
        if (!v17)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
      break;
    }

LABEL_29:
    if (v31 != v32)
    {
      return 0;
    }

    result = 1;
    if (++v34 == v33)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_243B288E4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x245D49990](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_243B28938(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x245D499A0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

void *sub_243B289B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_243B289E8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_243B289F8@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_243B28A04()
{
  v2 = *v0;
  sub_243B2CC20(&qword_27EDA1FD0, type metadata accessor for UILayoutPriority);
  sub_243B2CC20(&qword_27EDA1FD8, type metadata accessor for UILayoutPriority);
  return sub_243B70C4C();
}

uint64_t sub_243B28B34(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_243B70CBC();
  sub_243B7084C();
  v9 = sub_243B70CEC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_243B70C6C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_243B29478(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_243B28C84(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F80, &qword_243B724D0);
  v38 = a2;
  result = sub_243B70C2C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_243B70CBC();
      sub_243B7084C();
      result = sub_243B70CEC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_243B28F2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_243B66CDC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_243B28C84(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_243B66CDC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_243B70C9C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_243B290A8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_243B290A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F80, &qword_243B724D0);
  v2 = *v0;
  v3 = sub_243B70C1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_243B29218(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F88, &qword_243B724D8);
  result = sub_243B70B4C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_243B70CBC();
      sub_243B7084C();
      result = sub_243B70CEC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_243B29478(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_243B29218(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_243B295F8();
      goto LABEL_16;
    }

    sub_243B29754(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_243B70CBC();
  sub_243B7084C();
  result = sub_243B70CEC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_243B70C6C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_243B70C8C();
  __break(1u);
  return result;
}

void *sub_243B295F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F88, &qword_243B724D8);
  v2 = *v0;
  v3 = sub_243B70B3C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_243B29754(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F88, &qword_243B724D8);
  result = sub_243B70B4C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_243B70CBC();

      sub_243B7084C();
      result = sub_243B70CEC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

char *sub_243B2998C(char *a1, int64_t a2, char a3)
{
  result = sub_243B299CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243B299AC(char *a1, int64_t a2, char a3)
{
  result = sub_243B29AD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243B299CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2240, &qword_243B724C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_243B29AD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F68, &qword_243B72B50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_243B29BFC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_243B29D54(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_243B70C6C() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_243B70C6C() & 1) == 0)
  {
    goto LABEL_20;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7 || (*(a1 + 32) != *(a2 + 32) || v6 != v7) && (sub_243B70C6C() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v7)
  {
LABEL_20:
    v8 = 0;
    return v8 & 1;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    goto LABEL_20;
  }

  v8 = *(a1 + 49) ^ *(a2 + 49) ^ 1;
  return v8 & 1;
}

uint64_t sub_243B29E24(void *a1)
{
  v2 = sub_243B6FB9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v53 - v8;
  v10 = [a1 identifier];
  v11 = sub_243B7082C();
  v13 = v12;

  v14 = *MEMORY[0x277CBC0E8];
  v16 = v11 == sub_243B7082C() && v13 == v15;
  v17 = &unk_278DE4000;
  if (v16)
  {
    goto LABEL_8;
  }

  v18 = sub_243B70C6C();

  if ((v18 & 1) == 0)
  {
    v19 = [a1 identifier];
    v20 = sub_243B7082C();
    v22 = v21;

    v23 = *MEMORY[0x277CBC0C8];
    if (v20 == sub_243B7082C() && v22 == v24)
    {
LABEL_8:

      goto LABEL_9;
    }

    v43 = sub_243B70C6C();

    if ((v43 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

LABEL_9:
  v25 = [a1 selectedOptionIdentifier];
  v26 = sub_243B7082C();
  v28 = v27;

  v29 = *MEMORY[0x277CBC0F0];
  if (sub_243B7082C() != v26 || v30 != v28)
  {
    v31 = sub_243B70C6C();

    if (v31)
    {
      goto LABEL_13;
    }

    v41 = *MEMORY[0x277CBC0D0];
    if (sub_243B7082C() == v26 && v42 == v28)
    {

LABEL_24:
      sub_243B6FB7C();
      v45 = a1;
      v46 = sub_243B6FB8C();
      v47 = sub_243B709EC();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412290;
        *(v48 + 4) = v45;
        *v49 = v45;
        v50 = v45;
        _os_log_impl(&dword_243B1E000, v46, v47, "SharingOptionsObservableModel converted mixed allow others to invite to on: %@", v48, 0xCu);
        sub_243B2E620(v49, &unk_27EDA1F70, &qword_243B724C0);
        MEMORY[0x245D4A570](v49, -1, -1);
        MEMORY[0x245D4A570](v48, -1, -1);
      }

      (*(v3 + 8))(v7, v2);
      v51 = *MEMORY[0x277CBC0D8];
      v39 = sub_243B7082C();
      goto LABEL_16;
    }

    v44 = sub_243B70C6C();

    v17 = &unk_278DE4000;
    if (v44)
    {
      goto LABEL_24;
    }

LABEL_27:
    v52 = [a1 v17[98]];
    v39 = sub_243B7082C();

    return v39;
  }

LABEL_13:

  sub_243B6FB7C();
  v32 = a1;
  v33 = sub_243B6FB8C();
  v34 = sub_243B709EC();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v32;
    *v36 = v32;
    v37 = v32;
    _os_log_impl(&dword_243B1E000, v33, v34, "SharingOptionsObservableModel converted mixed permission to read-only: %@", v35, 0xCu);
    sub_243B2E620(v36, &unk_27EDA1F70, &qword_243B724C0);
    MEMORY[0x245D4A570](v36, -1, -1);
    MEMORY[0x245D4A570](v35, -1, -1);
  }

  (*(v3 + 8))(v9, v2);
  v38 = *MEMORY[0x277CBC0F8];
  v39 = sub_243B7082C();
LABEL_16:
  sub_243B7082C();
  return v39;
}

uint64_t sub_243B2A354(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_243B70C6C() & 1) == 0)
  {
    goto LABEL_24;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_24;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_243B70C6C() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v6)
  {
    goto LABEL_24;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_22;
    }

LABEL_24:
    v10 = 0;
    return v10 & 1;
  }

  if (!v9 || (*(a1 + 32) != *(a2 + 32) || v8 != v9) && (sub_243B70C6C() & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  if ((sub_243B28254(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
    goto LABEL_24;
  }

  v10 = *(a1 + 56) ^ *(a2 + 56) ^ 1;
  return v10 & 1;
}

char *sub_243B2A43C(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a1;
  if (a1 >> 62)
  {
LABEL_49:
    v61 = v6 & 0xFFFFFFFFFFFFFF8;
    v50 = a5;
    v51 = sub_243B70C0C();
    a5 = v50;
    v7 = v51;
    if (v51)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v61 = a1 & 0xFFFFFFFFFFFFFF8;
  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v8 = 0;
  v57 = a5;
  v58 = v6 & 0xC000000000000001;
  v54 = *MEMORY[0x277CBC0D0];
  v55 = MEMORY[0x277D84F90];
  v59 = a4;
  do
  {
    for (i = v8; ; ++i)
    {
      if (v58)
      {
        v10 = MEMORY[0x245D49BC0](i, v6);
      }

      else
      {
        if (i >= *(v61 + 16))
        {
          goto LABEL_48;
        }

        v10 = *(v6 + 8 * i + 32);
      }

      v11 = v10;
      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      if (*a2)
      {
        v62 = [v10 isSelected] ^ 1;
        goto LABEL_40;
      }

      v12 = v7;
      v13 = v6;
      v14 = [v10 identifier];
      v15 = sub_243B7082C();
      v17 = v16;

      if (a4)
      {
        if (v15 == a3 && v17 == a4)
        {

          v20 = 0;
        }

        else
        {
          v19 = sub_243B70C6C();

          v20 = (v19 & 1) == 0;
        }
      }

      else
      {

        v20 = 1;
      }

      LOBYTE(v62) = v20;
      v21 = v57[1];
      if (!v21)
      {
        v6 = v13;
        v7 = v12;
LABEL_39:
        v8 = i + 1;
        goto LABEL_40;
      }

      v22 = *v57;
      v23 = v57[1];

      v24 = [v11 identifier];
      v25 = sub_243B7082C();
      v27 = v26;

      if (v22 == v25 && v21 == v27)
      {

LABEL_6:

        v6 = v13;
        a4 = v59;
        v7 = v12;
        v8 = i + 1;
        goto LABEL_7;
      }

      v28 = sub_243B70C6C();

      if (v28)
      {

        goto LABEL_6;
      }

      v6 = v13;
      if (v22 == sub_243B7082C() && v21 == v29)
      {

        v7 = v12;
      }

      else
      {
        v30 = sub_243B70C6C();

        v7 = v12;
        if ((v30 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      v31 = [v11 identifier];
      v32 = sub_243B7082C();
      v34 = v33;

      a4 = v59;
      v8 = i + 1;
      if (!v59)
      {

        goto LABEL_7;
      }

      if (v32 == a3 && v34 == v59)
      {
        break;
      }

      v35 = sub_243B70C6C();

      if (v35)
      {
        goto LABEL_40;
      }

LABEL_7:
      if (v8 == v7)
      {
        return v55;
      }
    }

LABEL_40:
    v36 = v11;
    v37 = [v36 identifier];
    v38 = sub_243B7082C();
    v63 = v39;

    v40 = [v36 title];
    v41 = sub_243B7082C();
    v53 = v42;

    v43 = [v36 subtitle];
    v44 = sub_243B7082C();
    v46 = v45;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_243B32540(0, *(v55 + 2) + 1, 1, v55);
    }

    v48 = *(v55 + 2);
    v47 = *(v55 + 3);
    if (v48 >= v47 >> 1)
    {
      v55 = sub_243B32540((v47 > 1), v48 + 1, 1, v55);
    }

    *(v55 + 2) = v48 + 1;
    v49 = &v55[56 * v48];
    *(v49 + 4) = v38;
    *(v49 + 5) = v63;
    *(v49 + 6) = v41;
    *(v49 + 7) = v53;
    *(v49 + 8) = v44;
    *(v49 + 9) = v46;
    v49[80] = v62;
    v49[81] = 1;
    a4 = v59;
  }

  while (v8 != v7);
  return v55;
}

uint64_t sub_243B2A91C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243B6FB9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB7C();
  v9 = a1;
  v10 = sub_243B6FB8C();
  v11 = sub_243B709EC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_243B1E000, v10, v11, "SharingOptionsObservableModel init options: %@", v12, 0xCu);
    sub_243B2E620(v13, &unk_27EDA1F70, &qword_243B724C0);
    MEMORY[0x245D4A570](v13, -1, -1);
    MEMORY[0x245D4A570](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v47 = 0;
  v48 = 0;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  v16 = v15 == 0;
  if (v15)
  {
    v17 = v9;
    v18 = sub_243B29E24(v15);
    v20 = v19;
    v22 = v21;
    v15 = v23;

    v24 = 0;
    v47 = v22;
    v48 = v15;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v22 = 0;
    v24 = 1;
  }

  v49 = v24;
  v25 = [v9 options];
  sub_243B2E534(0, &qword_27EDA1F58, 0x277CDC6C8);
  v26 = sub_243B7089C();

  v46[0] = sub_243B2A43C(v26, &v49, v18, v20, &v47);

  swift_bridgeObjectRelease_n();
  v27 = *MEMORY[0x277CBC0D0];
  v28 = sub_243B7082C();
  v46[1] = v15;
  if (v15)
  {
    if (v22 == v28 && v15 == v29)
    {

LABEL_12:
      v16 = 1;
      goto LABEL_13;
    }

    v30 = sub_243B70C6C();

    if (v30)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

LABEL_13:
  v31 = v9;
  v32 = [v31 identifier];
  v33 = sub_243B7082C();
  v35 = v34;

  v36 = [v31 title];
  v37 = sub_243B7082C();
  v38 = v16;
  v40 = v39;

  v41 = [v31 footer];
  v42 = sub_243B7082C();
  v44 = v43;

  *a2 = v33;
  *(a2 + 8) = v35;
  *(a2 + 16) = v37;
  *(a2 + 24) = v40;
  *(a2 + 32) = v42;
  *(a2 + 40) = v44;
  *(a2 + 48) = v46[0];
  *(a2 + 56) = v38;
  return result;
}

uint64_t sub_243B2ACE0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v19 = *(a2 + 32);
  v20 = *(a1 + 32);
  if (v5)
  {
    if (v8)
    {
      v12 = v4 == v9 && v5 == v8;
      if (v12 || (sub_243B70C6C() & 1) != 0)
      {
        if (v7 == v11 && v6 == v10)
        {
          sub_243B2E06C(a1, v21, &qword_27EDA1DF0, &qword_243B71F40);
          sub_243B2E06C(a2, v21, &qword_27EDA1DF0, &qword_243B71F40);
          v14 = v20;
          sub_243B22C04(v4, v5);
          v15 = v19;
          sub_243B2B0B0(v9, v8);
        }

        else
        {
          v18 = sub_243B70C6C();
          sub_243B2E06C(a1, v21, &qword_27EDA1DF0, &qword_243B71F40);
          sub_243B2E06C(a2, v21, &qword_27EDA1DF0, &qword_243B71F40);
          v14 = v20;
          sub_243B22C04(v4, v5);
          v15 = v19;
          sub_243B2B0B0(v9, v8);
          if ((v18 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v16 = v14 ^ v15;
LABEL_23:

        sub_243B2B0B0(v4, v5);
        return v16 & 1;
      }

      sub_243B2E06C(a1, v21, &qword_27EDA1DF0, &qword_243B71F40);
      sub_243B2E06C(a2, v21, &qword_27EDA1DF0, &qword_243B71F40);
      sub_243B22C04(v4, v5);
      sub_243B2B0B0(v9, v8);
LABEL_22:
      v16 = 1;
      goto LABEL_23;
    }

    sub_243B2E06C(a1, v21, &qword_27EDA1DF0, &qword_243B71F40);
    sub_243B2E06C(a2, v21, &qword_27EDA1DF0, &qword_243B71F40);
    sub_243B22C04(v4, v5);
  }

  else
  {
    if (!v8)
    {
      sub_243B2E06C(a1, v21, &qword_27EDA1DF0, &qword_243B71F40);
      sub_243B2E06C(a2, v21, &qword_27EDA1DF0, &qword_243B71F40);
      sub_243B2B0B0(v4, 0);
      v16 = 0;
      return v16 & 1;
    }

    sub_243B2E06C(a1, v21, &qword_27EDA1DF0, &qword_243B71F40);
    sub_243B2E06C(a2, v21, &qword_27EDA1DF0, &qword_243B71F40);
  }

  sub_243B2B0B0(v4, v5);
  sub_243B2B0B0(v9, v8);
  v16 = 1;
  return v16 & 1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_243B2B0B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_243B2B110()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  result = swift_beginAccess();
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  return result;
}

uint64_t sub_243B2B180(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x245D499D0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_243B28B34(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_243B2B218(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  v63 = v3;
  v65 = result;
  if (v3)
  {
    v4 = result + 80;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      v6 = *v4;
      v7 = *(*v4 + 16);
      v8 = *(v5 + 16);
      v9 = v8 + v7;
      if (__OFADD__(v8, v7))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        return result;
      }

      v10 = *v4;

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v9 <= *(v5 + 24) >> 1)
      {
        if (*(v6 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v8 <= v9)
        {
          v11 = v8 + v7;
        }

        else
        {
          v11 = v8;
        }

        result = sub_243B32540(result, v11, 1, v5);
        v5 = result;
        if (*(v6 + 16))
        {
LABEL_14:
          if ((*(v5 + 24) >> 1) - *(v5 + 16) < v7)
          {
            goto LABEL_70;
          }

          swift_arrayInitWithCopy();

          if (v7)
          {
            v12 = *(v5 + 16);
            v13 = __OFADD__(v12, v7);
            v14 = v12 + v7;
            if (v13)
            {
              goto LABEL_71;
            }

            *(v5 + 16) = v14;
          }

          goto LABEL_4;
        }
      }

      if (v7)
      {
        goto LABEL_67;
      }

LABEL_4:
      v4 += 64;
      if (!--v3)
      {
        goto LABEL_19;
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_19:
  v15 = 0;
  v16 = *(v5 + 16);
  v17 = MEMORY[0x277D84F90];
LABEL_20:
  v18 = 56 * v15;
  while (v16 != v15)
  {
    if (v15 >= *(v5 + 16))
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    ++v15;
    v19 = v18 + 56;
    v20 = *(v5 + v18 + 80);
    v18 += 56;
    if (!v20)
    {
      v22 = *(v5 + v19 - 24);
      v21 = *(v5 + v19 - 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_243B32770(0, *(v17 + 16) + 1, 1, v17);
        v17 = result;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_243B32770((v23 > 1), v24 + 1, 1, v17);
        v17 = result;
      }

      *(v17 + 16) = v24 + 1;
      v25 = v17 + 16 * v24;
      *(v25 + 32) = v22;
      *(v25 + 40) = v21;
      goto LABEL_20;
    }
  }

  v26 = sub_243B2B180(v17);

  v27 = v63;
  if (v63)
  {
    v28 = 0;
    v62 = v65 + 32;
    v61 = MEMORY[0x277D84F90];
    while (v28 < v27)
    {
      v29 = (v62 + (v28 << 6));
      *&v74[9] = *(v29 + 41);
      v30 = v29[1];
      v72 = *v29;
      v31 = v29[2];
      v73 = v30;
      *v74 = v31;
      v13 = __OFADD__(v28++, 1);
      if (v13)
      {
        goto LABEL_69;
      }

      v32 = *&v74[16];
      v33 = *(*&v74[16] + 16);
      result = sub_243B2E4FC(&v72, &v68);
      if (v33)
      {
        v34 = 0;
        v35 = MEMORY[0x277D84F90];
        do
        {
          v36 = v32 + 32 + 56 * v34;
          v37 = v34;
          while (1)
          {
            if (v37 >= *(v32 + 16))
            {
              __break(1u);
              goto LABEL_65;
            }

            v38 = *v36;
            v39 = *(v36 + 16);
            v40 = *(v36 + 32);
            v71 = *(v36 + 48);
            v69 = v39;
            v70 = v40;
            v68 = v38;
            if (!*(a2 + 16))
            {
              break;
            }

            v41 = v68;
            sub_243B2E57C(&v68, v67);
            v42 = sub_243B66CDC(v41, *(&v41 + 1));
            if ((v43 & 1) == 0)
            {
              goto LABEL_44;
            }

            v44 = *(*(a2 + 56) + 8 * v42);
            if (!*(v44 + 16))
            {
              goto LABEL_44;
            }

            v45 = *(*(a2 + 56) + 8 * v42);

            v46 = sub_243B26D2C(v26, v44);

            if (v46)
            {
              goto LABEL_44;
            }

            ++v37;
            result = sub_243B2E5E4(&v68);
            v36 += 56;
            if (v33 == v37)
            {
              goto LABEL_51;
            }
          }

          sub_243B2E57C(&v68, v67);
LABEL_44:
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_243B32540(0, *(v35 + 16) + 1, 1, v35);
            v35 = result;
          }

          v48 = *(v35 + 16);
          v47 = *(v35 + 24);
          if (v48 >= v47 >> 1)
          {
            result = sub_243B32540((v47 > 1), v48 + 1, 1, v35);
            v35 = result;
          }

          v34 = v37 + 1;
          *(v35 + 16) = v48 + 1;
          v49 = v35 + 56 * v48;
          v50 = v68;
          v51 = v69;
          v52 = v70;
          *(v49 + 80) = v71;
          *(v49 + 48) = v51;
          *(v49 + 64) = v52;
          *(v49 + 32) = v50;
        }

        while (v33 - 1 != v37);
      }

      else
      {
        v35 = MEMORY[0x277D84F90];
      }

LABEL_51:
      v53 = v74[24];
      v54 = 1;
      if (!v74[24])
      {
        v54 = 2;
      }

      if (*(v35 + 16) >= v54)
      {
        v64 = *&v74[8];
        v66 = *v74;
        v55 = *(&v73 + 1);
        v60 = v73;
        v56 = v72;

        sub_243B2E5B4(&v72);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_243B32664(0, *(v61 + 16) + 1, 1, v61);
          v61 = result;
        }

        v58 = *(v61 + 16);
        v57 = *(v61 + 24);
        if (v58 >= v57 >> 1)
        {
          result = sub_243B32664((v57 > 1), v58 + 1, 1, v61);
          v61 = result;
        }

        *(v61 + 16) = v58 + 1;
        v59 = v61 + (v58 << 6);
        *(v59 + 32) = v56;
        *(v59 + 48) = v60;
        *(v59 + 56) = v55;
        *(v59 + 64) = v66;
        *(v59 + 72) = v64;
        *(v59 + 80) = v35;
        *(v59 + 88) = v53;
      }

      else
      {

        result = sub_243B2E5B4(&v72);
      }

      v27 = v63;
      if (v28 == v63)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_68;
  }

  v61 = MEMORY[0x277D84F90];
LABEL_63:

  return v61;
}

uint64_t sub_243B2B740(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v103 = a3;
  v104 = a4;
  v102 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v99 - v19;
  *(v9 + 64) = 0;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  *(v9 + 144) = 0;
  v21 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlert;
  v22 = type metadata accessor for AlertViewModel(0);
  v23 = *(*(v22 - 8) + 56);
  v109 = v21;
  v23(v9 + v21, 1, 1, v22);
  *(v9 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlertBool) = 0;
  v24 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__shouldValidateWithAlert;
  *(v9 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__shouldValidateWithAlert) = 0;
  v25 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel___observationRegistrar;
  sub_243B6FB2C();
  *(v9 + 88) = a1;
  v107 = v9;
  v26 = (v9 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_layoutMargins);
  *v26 = a6;
  v26[1] = a7;
  v26[2] = a8;
  v26[3] = a9;

  v28 = 0;
  v29 = sub_243B245D8(v27);
  v30 = v29;
  v100 = v24;
  *&v115[0] = MEMORY[0x277D84F98];
  if (v29 >> 62)
  {
    goto LABEL_13;
  }

  v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v105 = a5;
  for (i = v20; v31; i = v20)
  {
    v108 = v25;
    v25 = 0;
    v20 = (v30 & 0xC000000000000001);
    a5 = v30 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v20)
      {
        v32 = MEMORY[0x245D49BC0](v25, v30);
      }

      else
      {
        if (v25 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v32 = *(v30 + 8 * v25 + 32);
      }

      v10 = v32;
      v33 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      *&v113[0] = v32;
      sub_243B2496C(v115, v113);

      ++v25;
      if (v33 == v31)
      {
        v34 = *&v115[0];
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    v31 = sub_243B70C0C();
    v105 = a5;
  }

  v34 = MEMORY[0x277D84F98];
LABEL_15:

  *(v107 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_optionsDependency) = v34;
  v101 = v34;
  if (a1 >> 62)
  {
    v35 = sub_243B70C0C();
    if (v35)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v35 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
LABEL_17:
      *&v113[0] = MEMORY[0x277D84F90];
      v25 = v35 & ~(v35 >> 63);

      sub_243B2998C(0, v25, 0);
      if (v35 < 0)
      {
        goto LABEL_61;
      }

      v25 = 0;
      v36 = *&v113[0];
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x245D49BC0](v25, a1);
        }

        else
        {
          v37 = *(a1 + 8 * v25 + 32);
        }

        sub_243B2A91C(v37, v115);
        *&v113[0] = v36;
        v39 = *(v36 + 16);
        v38 = *(v36 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_243B2998C((v38 > 1), v39 + 1, 1);
          v36 = *&v113[0];
        }

        ++v25;
        *(v36 + 16) = v39 + 1;
        v40 = (v36 + (v39 << 6));
        v41 = v115[0];
        v42 = v115[1];
        v43 = v116[0];
        *(v40 + 73) = *(v116 + 9);
        v40[3] = v42;
        v40[4] = v43;
        v40[2] = v41;
      }

      while (v35 != v25);

      goto LABEL_28;
    }
  }

  v36 = MEMORY[0x277D84F90];
LABEL_28:
  *(v107 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__allGroups) = v36;
  v44 = *(v36 + 16);

  v108 = v44;
  if (!v44)
  {
    goto LABEL_57;
  }

  v10 = 0;
  v45 = (v36 + 32);
  v46 = *MEMORY[0x277CBC100];
  while (1)
  {
    if (v10 >= *(v36 + 16))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);

      v78 = v107;
      v79 = *(v107 + 24);

      v80 = *(v78 + 48);
      v81 = *(v78 + 56);
      v82 = *(v78 + 64);
      sub_243B2B0B0(*(v78 + 32), *(v78 + 40));
      v83 = *(v78 + 88);

      v84 = *(v78 + 112);
      v85 = *(v78 + 120);
      v86 = *(v78 + 128);
      sub_243B2B0B0(*(v78 + 96), *(v78 + 104));
      sub_243B2E620(v78 + v109, &qword_27EDA1E00, &unk_243B73660);
      v87 = sub_243B6FB3C();
      (*(*(v87 - 8) + 8))(&v108[v78], v87);
      while (1)
      {
        type metadata accessor for SharingOptionsObservableModel();
        v88 = *(*v78 + 48);
        v89 = *(*v78 + 52);
        swift_deallocPartialClassInstance();
        __break(1u);

        v78 = v107;
        v90 = *(v107 + 24);

        v91 = *(v78 + 48);
        v92 = *(v78 + 56);
        v93 = *(v78 + 64);
        sub_243B2B0B0(*(v78 + 32), *(v78 + 40));
        v94 = *(v78 + 88);

        v95 = *(v78 + 112);
        v96 = *(v78 + 120);
        v97 = *(v78 + 128);
        sub_243B2B0B0(*(v78 + 96), *(v78 + 104));
        sub_243B2E620(v78 + v109, &qword_27EDA1E00, &unk_243B73660);
        v98 = sub_243B6FB3C();
        (*(*(v98 - 8) + 8))(v78 + v25, v98);
      }
    }

    v48 = v45[1];
    v47 = v45[2];
    v49 = *v45;
    *(v114 + 9) = *(v45 + 41);
    v113[0] = v49;
    v113[1] = v48;
    v114[0] = v47;
    v109 = *&v114[1];
    v50 = *(&v49 + 1);
    v25 = v49;
    if (v49 == sub_243B7082C() && v50 == v51)
    {
      break;
    }

    v25 = sub_243B70C6C();
    sub_243B2E4FC(v113, v111);

    if (v25)
    {
      goto LABEL_37;
    }

    ++v10;
    sub_243B2E5B4(v113);
    v45 += 4;
    if (v108 == v10)
    {
      goto LABEL_57;
    }
  }

  sub_243B2E4FC(v113, v111);

LABEL_37:
  v52 = *(v109 + 16);
  v53 = v109 + 32;
  v108 = *MEMORY[0x277CBC0B0];
  v54 = (v109 + 40);
  v10 = -v52;
  v55 = -1;
  while (1)
  {
    if (v10 + v55 == -1)
    {
      goto LABEL_54;
    }

    if (++v55 >= *(v109 + 16))
    {
      goto LABEL_59;
    }

    v25 = *(v54 - 1);
    v56 = *v54;
    if (v25 == sub_243B7082C() && v56 == v57)
    {
      break;
    }

    v54 += 7;
    v25 = sub_243B70C6C();

    if (v25)
    {
      goto LABEL_47;
    }
  }

LABEL_47:
  v59 = *(v109 + 16);
  if (!v59)
  {
LABEL_54:
    sub_243B2E5B4(v113);
    goto LABEL_57;
  }

  v60 = 0;
  v28 = *MEMORY[0x277CBC0A8];
  while (1)
  {
    if (v60 >= *(v109 + 16))
    {
      goto LABEL_60;
    }

    v62 = *(v53 + 16);
    v61 = *(v53 + 32);
    v63 = *v53;
    v112 = *(v53 + 48);
    v111[1] = v62;
    v111[2] = v61;
    v111[0] = v63;
    v10 = v112;
    v25 = *(&v63 + 1);
    if (v63 == sub_243B7082C() && v25 == v64)
    {
      break;
    }

    v65 = sub_243B70C6C();
    sub_243B2E57C(v111, v110);

    if (v65)
    {
      goto LABEL_56;
    }

    ++v60;
    sub_243B2E5E4(v111);
    v53 += 56;
    if (v59 == v60)
    {
      goto LABEL_54;
    }
  }

  sub_243B2E57C(v111, v110);

LABEL_56:
  sub_243B2E5B4(v113);
  sub_243B2E5E4(v111);
  *(v107 + v100) = v10 == 0;
LABEL_57:
  v66 = v107;
  v67 = (v107 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_userDidChangeOption);
  v68 = v102;
  v69 = v103;
  *v67 = v102;
  v67[1] = v69;
  v70 = (v66 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_contentSizeDidChange);
  v72 = v104;
  v71 = v105;
  *v70 = v104;
  v70[1] = v71;
  sub_243B2E364(v68);
  sub_243B2E364(v72);
  v73 = sub_243B2B218(v36, v101);

  *(v66 + 152) = v73;
  v74 = sub_243B7092C();
  v75 = i;
  (*(*(v74 - 8) + 56))(i, 1, 1, v74);
  v76 = swift_allocObject();
  v76[2] = 0;
  v76[3] = 0;
  v76[4] = v66;

  sub_243B3EF48(0, 0, v75, &unk_243B724F0, v76);

  return v66;
}

uint64_t sub_243B2BFCC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243B2BFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a2;
  v72 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v73 = &v70 - v7;
  *(v3 + 64) = 0;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 1) = 0u;
  v3[9] = 0;
  v3[10] = 0;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 128) = 0;
  v3[17] = 0;
  v3[18] = 0;
  v8 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlert;
  v9 = type metadata accessor for AlertViewModel(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  *(v3 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlertBool) = 0;
  *(v3 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__shouldValidateWithAlert) = 0;
  sub_243B6FB2C();
  v3[11] = a1;
  v10 = (v3 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_layoutMargins);
  *v10 = 0u;
  v10[1] = 0u;

  v12 = sub_243B245D8(v11);
  v13 = v12;
  if (v12 >> 62)
  {
    goto LABEL_26;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v74 = a1;
  for (i = v3; v14; i = v3)
  {
    v15 = 0;
    v79 = v13 & 0xC000000000000001;
    v16 = MEMORY[0x277D84F98];
    v77 = v13;
    v78 = v13 & 0xFFFFFFFFFFFFFF8;
    v76 = v14;
    while (1)
    {
      if (v79)
      {
        v19 = MEMORY[0x245D49BC0](v15, v13);
      }

      else
      {
        if (v15 >= *(v78 + 16))
        {
          goto LABEL_23;
        }

        v19 = *(v13 + 8 * v15 + 32);
      }

      v20 = v19;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v80 = v15 + 1;
      v21 = [v19 identifier];
      v22 = sub_243B7082C();
      v24 = v23;

      v25 = [v20 requiredOptionsIdentifiers];
      v26 = sub_243B7089C();

      a1 = sub_243B2B180(v26);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v82[0] = v16;
      v3 = v16;
      v13 = sub_243B66CDC(v22, v24);
      v29 = v16[2];
      v30 = (v28 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        goto LABEL_24;
      }

      v32 = v28;
      if (v16[3] >= v31)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v16 = *&v82[0];
          if (v28)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v3 = v82;
          sub_243B290A8();
          v16 = *&v82[0];
          if (v32)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_243B28C84(v31, isUniquelyReferenced_nonNull_native);
        v3 = *&v82[0];
        v33 = sub_243B66CDC(v22, v24);
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_43;
        }

        v13 = v33;
        v16 = *&v82[0];
        if (v32)
        {
LABEL_4:
          v17 = v16[7];
          v18 = *(v17 + 8 * v13);
          *(v17 + 8 * v13) = a1;

          goto LABEL_5;
        }
      }

      v16[(v13 >> 6) + 8] |= 1 << v13;
      v35 = (v16[6] + 16 * v13);
      *v35 = v22;
      v35[1] = v24;
      *(v16[7] + 8 * v13) = a1;
      v36 = v16[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_25;
      }

      v16[2] = v38;

LABEL_5:
      ++v15;
      v13 = v77;
      if (v80 == v76)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    v14 = sub_243B70C0C();
    v74 = a1;
  }

  v16 = MEMORY[0x277D84F98];
LABEL_28:

  v40 = v74;
  v39 = i;
  *(i + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_optionsDependency) = v16;
  if (!(v40 >> 62))
  {
    v22 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_30;
    }

LABEL_40:

    v42 = MEMORY[0x277D84F90];
LABEL_41:
    *(v39 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__allGroups) = v42;
    v50 = (v39 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_userDidChangeOption);
    v52 = v71;
    v51 = v72;
    *v50 = v71;
    v50[1] = v51;
    v53 = (v39 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_contentSizeDidChange);
    *v53 = 0;
    v53[1] = 0;

    sub_243B2E364(v52);
    v54 = sub_243B2B218(v42, v16);

    v39[19] = v54;
    v55 = sub_243B7092C();
    v56 = v73;
    (*(*(v55 - 8) + 56))(v73, 1, 1, v55);
    v57 = swift_allocObject();
    v57[2] = 0;
    v57[3] = 0;
    v57[4] = v39;

    sub_243B3EF48(0, 0, v56, &unk_243B724A0, v57);

    return v39;
  }

  v22 = sub_243B70C0C();
  if (!v22)
  {
    goto LABEL_40;
  }

LABEL_30:
  v81 = MEMORY[0x277D84F90];
  v24 = v22 & ~(v22 >> 63);

  v3 = &v81;
  sub_243B2998C(0, v24, 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v41 = 0;
    v42 = v81;
    do
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x245D49BC0](v41, v40);
      }

      else
      {
        v43 = *(v40 + 8 * v41 + 32);
      }

      sub_243B2A91C(v43, v82);
      v81 = v42;
      v45 = *(v42 + 16);
      v44 = *(v42 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_243B2998C((v44 > 1), v45 + 1, 1);
        v42 = v81;
      }

      ++v41;
      *(v42 + 16) = v45 + 1;
      v46 = (v42 + (v45 << 6));
      v47 = v82[0];
      v48 = v82[1];
      v49 = v83[0];
      *(v46 + 73) = *(v83 + 9);
      v46[3] = v48;
      v46[4] = v49;
      v46[2] = v47;
    }

    while (v22 != v41);

    goto LABEL_41;
  }

  __break(1u);
LABEL_43:
  sub_243B70C9C();
  __break(1u);

  v59 = v3[3];

  v60 = v3[6];
  v61 = v3[7];
  v62 = *(v3 + 64);
  sub_243B2B0B0(v3[4], v3[5]);
  v63 = v3[11];

  v64 = v3[14];
  v65 = v3[15];
  v66 = *(v3 + 128);
  sub_243B2B0B0(v3[12], v3[13]);
  sub_243B2E620(v3 + v22, &qword_27EDA1E00, &unk_243B73660);
  v67 = sub_243B6FB3C();
  (*(*(v67 - 8) + 8))(v3 + v24, v67);
  type metadata accessor for SharingOptionsObservableModel();
  v68 = *(*v3 + 48);
  v69 = *(*v3 + 52);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_243B2C694(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v59 = a2;
  v17 = sub_243B6FB9C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB7C();
  v22 = a1;
  v23 = sub_243B6FB8C();
  v24 = sub_243B709EC();

  if (os_log_type_enabled(v23, v24))
  {
    v55 = v17;
    v57 = a3;
    v58 = a4;
    v25 = a1;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v60 = v27;
    *v26 = 136315138;
    v56 = v25;
    if (v25)
    {
      v28 = [v22 description];
      v54 = v22;
      v29 = a5;
      v30 = v28;
      v31 = sub_243B7082C();
      v33 = v32;

      a5 = v29;
      v22 = v54;
    }

    else
    {
      v33 = 0xE500000000000000;
      v31 = 0x296C696E28;
    }

    v46 = sub_243B40EA8(v31, v33, &v60);

    *(v26 + 4) = v46;
    _os_log_impl(&dword_243B1E000, v23, v24, "SharingOptionsViewModel init options: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x245D4A570](v27, -1, -1);
    MEMORY[0x245D4A570](v26, -1, -1);

    (*(v18 + 8))(v21, v55);
    a3 = v57;
    a4 = v58;
    if (!v56)
    {
      goto LABEL_9;
    }
  }

  else
  {

    (*(v18 + 8))(v21, v17);
    if (!a1)
    {
LABEL_9:
      v39 = swift_allocObject();
      v39[2] = 0;
      v39[3] = 0;
      v47 = v59;
      v39[4] = v59;
      v39[5] = a3;
      sub_243B2E364(v47);
      v42 = sub_243B2E2F0;
      goto LABEL_10;
    }
  }

  v34 = [v22 summary];
  v35 = sub_243B7082C();
  v37 = v36;

  v38 = v22;
  v39 = swift_allocObject();
  v39[2] = v35;
  v39[3] = v37;
  v40 = v59;
  v39[4] = v59;
  v39[5] = a3;
  sub_243B2E364(v40);
  v41 = [v38 optionsGroups];
  v42 = sub_243B2EC5C;
  if (!v41)
  {
LABEL_10:
    v45 = v42;
    v44 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v43 = v41;
  sub_243B2E534(0, &qword_27EDA2F30, 0x277CDC6D0);
  v44 = sub_243B7089C();

  v45 = sub_243B2EC5C;
LABEL_11:
  v48 = type metadata accessor for SharingOptionsObservableModel();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  v51 = sub_243B2B740(v44, v45, v39, a4, a5, a6, a7, a8, a9);
  sub_243B2BFCC(a4);

  return v51;
}

uint64_t sub_243B2CA78(uint64_t *a1)
{
  v1 = *a1;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_243B6FE6C();
  }

  else
  {
    sub_243B6FE0C();
  }

  return sub_243B6FE8C();
}

uint64_t sub_243B2CAE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_243B6FE6C();
    sub_243B6FE8C();
    sub_243B2CBD4();
  }

  else
  {
    sub_243B6FE0C();
    sub_243B6FE8C();
    sub_243B2CC20(&qword_27EDA1E30, MEMORY[0x277CDD8B0]);
  }

  return swift_getWitnessTable();
}

unint64_t sub_243B2CBD4()
{
  result = qword_27EDA1E28;
  if (!qword_27EDA1E28)
  {
    sub_243B6FE6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA1E28);
  }

  return result;
}

uint64_t sub_243B2CC20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243B2CC68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_243B7020C();

    return sub_243B6FE8C();
  }

  else
  {
    sub_243B6FECC();
    swift_getWitnessTable();
    sub_243B701BC();
    sub_243B6FE8C();
    sub_243B70B0C();
    swift_getWitnessTable();
    sub_243B6FECC();
    swift_getWitnessTable();
    sub_243B701BC();
    return sub_243B6FE8C();
  }
}

uint64_t sub_243B2CDCC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_243B7020C();
    sub_243B6FE8C();
  }

  else
  {
    sub_243B6FECC();
    swift_getWitnessTable();
    sub_243B701BC();
    sub_243B6FE8C();
    sub_243B70B0C();
    swift_getWitnessTable();
    sub_243B6FECC();
    swift_getWitnessTable();
    sub_243B701BC();
    sub_243B6FE8C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_243B2CFCC(uint64_t a1, unint64_t *a2)
{
  v2 = a1;
  v3 = a2[1];
  if (v3)
  {
    v4 = *(a1 + 16);
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v6 = *a2;
      v7 = a2[2];
      v63 = a2[3];
      v71 = MEMORY[0x277D84F90];
      sub_243B2998C(0, v4, 0);
      v9 = v7;
      v10 = 0;
      v49 = a1 + 32;
      v2 = v71;
      v45 = v4;
      v46 = v3;
      v44 = v6;
      v64 = v7;
      while (1)
      {
        v11 = (v49 + (v10 << 6));
        *&v70[25] = *(v11 + 41);
        v12 = v11[2];
        *v70 = v11[1];
        *&v70[16] = v12;
        v69 = *v11;
        v13 = v70[40];
        v14 = *&v70[32];
        v55 = *(&v12 + 1);
        v54 = *&v70[8];
        v52 = v10;
        v53 = v69;
        v51 = v70[40];
        v50 = *v70;
        if (__PAIR128__(v3, v6) == v69)
        {
          break;
        }

        v15 = v9;
        v16 = sub_243B70C6C();
        v9 = v15;
        if (v16)
        {
          break;
        }

        sub_243B2E4FC(&v69, v67);
LABEL_32:
        v71 = v2;
        v41 = *(v2 + 16);
        v40 = *(v2 + 24);
        v9 = v15;
        if (v41 >= v40 >> 1)
        {
          sub_243B2998C((v40 > 1), v41 + 1, 1);
          v9 = v15;
          v2 = v71;
        }

        v10 = v52 + 1;
        *(v2 + 16) = v41 + 1;
        v42 = v2 + (v41 << 6);
        *(v42 + 32) = v53;
        *(v42 + 48) = v50;
        *(v42 + 56) = v54;
        *(v42 + 72) = v55;
        *(v42 + 80) = v14;
        *(v42 + 88) = v51;
        if (v52 + 1 == v4)
        {
          return v2;
        }
      }

      v17 = v14[2];
      v15 = v9;
      if (v13)
      {
        if (v17)
        {
          sub_243B2E4FC(&v69, v67);
          v66 = v5;

          v47 = v2;
          sub_243B299AC(0, v17, 0);
          v18 = v14 + 4;
          v14 = v66;
          v19 = v15;
          do
          {
            v20 = *v18;
            v21 = *(v18 + 1);
            v22 = *(v18 + 2);
            v68 = *(v18 + 24);
            v67[1] = v21;
            v67[2] = v22;
            v67[0] = v20;
            LOBYTE(v23) = v68;
            v59 = *(&v22 + 1);
            v61 = v22;
            v56 = *(&v21 + 1);
            v57 = v21;
            v24 = v20;
            if (__PAIR128__(v63, v19) == v20 || (sub_243B70C6C() & 1) != 0)
            {
              v25 = 1;
              v23 = 1u >> (8 * v23);
            }

            else
            {
              v25 = HIBYTE(v68);
              sub_243B2E57C(v67, v65);
            }

            v66 = v14;
            v27 = v14[2];
            v26 = v14[3];
            if (v27 >= v26 >> 1)
            {
              sub_243B299AC((v26 > 1), v27 + 1, 1);
              v2 = v47;
              v14 = v66;
            }

            v14[2] = v27 + 1;
            v28 = &v14[7 * v27];
            *(v28 + 2) = v24;
            v28[6] = v57;
            v28[7] = v56;
            v28[8] = v61;
            v28[9] = v59;
            *(v28 + 80) = v23;
            *(v28 + 81) = v25;
            v18 += 7;
            --v17;
            v19 = v64;
          }

          while (v17);
          v15 = v64;
          v4 = v45;
          v3 = v46;
          v5 = MEMORY[0x277D84F90];
          v6 = v44;
          goto LABEL_31;
        }
      }

      else if (v17)
      {
        v48 = v2;
        sub_243B2E4FC(&v69, v67);
        *&v67[0] = v5;

        sub_243B299AC(0, v17, 0);
        v29 = v14 + 9;
        v14 = *&v67[0];
        v30 = v15;
        do
        {
          v31 = *(v29 - 5);
          v32 = *(v29 - 4);
          v33 = *(v29 - 2);
          v34 = *(v29 - 1);
          v35 = *v29;
          v60 = v34;
          v62 = *(v29 - 3);
          v58 = (v31 != v30 || v63 != v32) && (sub_243B70C6C() & 1) == 0;
          *&v67[0] = v14;
          v38 = v14[2];
          v37 = v14[3];

          if (v38 >= v37 >> 1)
          {
            sub_243B299AC((v37 > 1), v38 + 1, 1);
            v14 = *&v67[0];
          }

          v29 += 7;
          v14[2] = v38 + 1;
          v39 = &v14[7 * v38];
          v39[4] = v31;
          v39[5] = v32;
          v39[6] = v62;
          v39[7] = v33;
          v39[8] = v60;
          v39[9] = v35;
          *(v39 + 80) = v58;
          *(v39 + 81) = 1;
          --v17;
          v30 = v64;
        }

        while (v17);
        v15 = v64;
        v4 = v45;
        v3 = v46;
        v5 = MEMORY[0x277D84F90];
        v6 = v44;
        v2 = v48;
        goto LABEL_31;
      }

      sub_243B2E4FC(&v69, v67);

      v14 = v5;
LABEL_31:

      sub_243B2E5B4(&v69);
      goto LABEL_32;
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
  }

  return v2;
}

uint64_t sub_243B2D474(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v10 = MEMORY[0x277D84F90];
    sub_243B70BCC();
    v6 = (a1 + 32);
    do
    {
      *&v12[9] = *(v6 + 41);
      v8 = v6[1];
      v11[0] = *v6;
      v11[1] = v8;
      *v12 = v6[2];
      if (v12[24] == 1)
      {
        sub_243B2E534(0, &qword_27EDA2F30, 0x277CDC6D0);
        sub_243B2E4FC(v11, v9);

        sub_243B26F08(v11, a2);
      }

      else
      {
        sub_243B2E534(0, &qword_27EDA1F50, 0x277CDC6D8);
        sub_243B2E4FC(v11, v9);

        sub_243B2713C(v11, a2);
      }

      sub_243B70BAC();
      v7 = *(v10 + 16);
      sub_243B70BDC();
      sub_243B70BEC();
      sub_243B70BBC();
      v6 += 4;
      --v3;
    }

    while (v3);
    return v10;
  }

  return result;
}

uint64_t sub_243B2D5E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_243B2D5F8()
{
  sub_243B2D97C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_243B6FB3C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_243B2D97C()
{
  if (!qword_27EDA1E70)
  {
    type metadata accessor for AlertViewModel(255);
    v0 = sub_243B70B0C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA1E70);
    }
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_243B2D9E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_243B2DA30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_243B2DAA8(uint64_t a1, int a2)
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

uint64_t sub_243B2DAC8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_243B2DB24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_243B2DB6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharingOptionsObservableModel.Group.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingOptionsObservableModel.Group.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
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

uint64_t sub_243B2DD5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_243B2DDA4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_243B2DE10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243B2DE30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_243B2DE7C()
{
  result = qword_27EDA1EF8;
  if (!qword_27EDA1EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA1EF8);
  }

  return result;
}

uint64_t sub_243B2DED0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243B2DF64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_243B2E010(uint64_t a1)
{
  v2 = type metadata accessor for AlertViewModelButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243B2E06C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_243B2E0D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_81Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  if (v0[6])
  {

    v4 = v0[8];
  }

  v5 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_243B2E1A8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243B2E1F8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_243B2616C();
}

uint64_t sub_243B2E220()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__allGroups);
  *(v1 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__allGroups) = *(v0 + 24);
}

uint64_t sub_243B2E264()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 152);
  *(v1 + 152) = *(v0 + 24);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t objectdestroy_109Tm()
{
  v1 = v0[3];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_243B2E364(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243B2E378(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243B2EC14;

  return sub_243B24D48(a1, v4, v5, v6);
}

uint64_t (*sub_243B2E434())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_243B2E48C;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_243B2E534(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_243B2E620(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_243B2E680(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_116Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_243B2E708(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243B2E7BC;

  return sub_243B24BE4(a1, v4, v5, v6);
}

uint64_t sub_243B2E7BC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t getEnumTagSinglePayload for SharingOptionsObservableModel.Group.Option.AccessoryState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SharingOptionsObservableModel.Group.Option.AccessoryState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_243B2EA60()
{
  result = qword_27EDA1FA8;
  if (!qword_27EDA1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA1FA8);
  }

  return result;
}

void sub_243B2EAC8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_243B2EC74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2040, &unk_243B72710);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_243B2ED44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2040, &unk_243B72710);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CopyLinkButtonView()
{
  result = qword_27EDA2048;
  if (!qword_27EDA2048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243B2EE40()
{
  sub_243B2EEC4();
  if (v0 <= 0x3F)
  {
    sub_243B2EF58();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_243B2EEC4()
{
  if (!qword_27EDA2058)
  {
    type metadata accessor for CreateiCloudLinkViewModel();
    sub_243B3077C(&qword_27EDA2060, type metadata accessor for CreateiCloudLinkViewModel);
    v0 = sub_243B6FE4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA2058);
    }
  }
}

void sub_243B2EF58()
{
  if (!qword_27EDA2068)
  {
    sub_243B6FACC();
    v0 = sub_243B705EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA2068);
    }
  }
}

uint64_t sub_243B2EFCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v96 = a1;
  v85 = sub_243B7022C();
  v83 = *(v85 - 8);
  v3 = *(v83 + 64);
  MEMORY[0x28223BE20](v85);
  v82 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for CopyLinkButtonView();
  v5 = *(v90 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v90);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2070, &qword_243B72788);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v78 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2078, &qword_243B72790);
  v12 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v14 = &v78 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2080, &qword_243B72798);
  v15 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v17 = &v78 - v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2088, &qword_243B727A0);
  v87 = *(v88 - 8);
  v18 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v80 = &v78 - v19;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2090, &qword_243B727A8);
  v20 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v86 = &v78 - v21;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2098, &qword_243B727B0);
  v22 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v89 = &v78 - v23;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA20A0, &qword_243B727B8);
  v93 = *(v94 - 8);
  v24 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = &v78 - v25;
  sub_243B302C0(v2, &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v5 + 80);
  v27 = (v26 + 16) & ~v26;
  v99 = v6;
  v97 = v26;
  v28 = swift_allocObject();
  v91 = v27;
  v95 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B30328(v95, v28 + v27);
  v100 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA20A8, &qword_243B727C0);
  sub_243B2E680(&qword_27EDA20B0, &qword_27EDA20A8, &qword_243B727C0);
  sub_243B7060C();
  v29 = sub_243B7035C();
  KeyPath = swift_getKeyPath();
  v31 = &v11[*(v8 + 44)];
  *v31 = KeyPath;
  v31[1] = v29;
  v81 = v2;
  v32 = *(v2 + 8);
  swift_getKeyPath();
  v101 = v32;
  v33 = sub_243B3077C(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v34 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel;
  v35 = *(v32 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  v36 = *(v101 + 16);

  if (v36 || (swift_getKeyPath(), v101 = v32, sub_243B6FAFC(), , v37 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic, swift_beginAccess(), (*(v32 + v37) & 1) != 0))
  {
    v38 = sub_243B704FC();
  }

  else
  {
    v77 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
    v38 = sub_243B7054C();
  }

  v39 = v38;
  v40 = swift_getKeyPath();
  v101 = v39;
  v41 = sub_243B6FDCC();
  sub_243B304EC(v11, v14, &qword_27EDA2070, &qword_243B72788);
  v42 = &v14[*(v78 + 36)];
  *v42 = v40;
  v42[1] = v41;
  LOBYTE(v40) = sub_243B702EC();
  sub_243B6FCCC();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_243B304EC(v14, v17, &qword_27EDA2078, &qword_243B72790);
  v51 = &v17[*(v79 + 36)];
  *v51 = v40;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  v52 = v82;
  sub_243B7021C();
  sub_243B30554();
  sub_243B3077C(&qword_27EDA2108, MEMORY[0x277CDE400]);
  v53 = v80;
  v54 = v85;
  sub_243B703FC();
  (*(v83 + 8))(v52, v54);
  sub_243B2E620(v17, &qword_27EDA2080, &qword_243B72798);
  swift_getKeyPath();
  v101 = v32;
  sub_243B6FAFC();

  v85 = v34;
  v55 = *(v32 + v34);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  v56 = *(v101 + 16);

  v57 = 0;
  if (!v56)
  {
    swift_getKeyPath();
    v101 = v32;
    sub_243B6FAFC();

    v58 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
    swift_beginAccess();
    v57 = *(v32 + v58) ^ 1;
  }

  v59 = swift_getKeyPath();
  v60 = swift_allocObject();
  *(v60 + 16) = v57 & 1;
  v61 = v86;
  (*(v87 + 32))(v86, v53, v88);
  v62 = (v61 + *(v84 + 36));
  *v62 = v59;
  v62[1] = sub_243B307DC;
  v62[2] = v60;
  v63 = *(v90 + 20);
  v64 = *(v98 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2040, &unk_243B72710);
  v65 = v89;
  v66 = v81;
  sub_243B705BC();
  sub_243B307E4(v61, v65);
  swift_getKeyPath();
  v101 = v32;
  sub_243B6FAFC();

  v67 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  LOBYTE(v101) = *(v32 + v67);
  v88 = v33;
  v68 = v95;
  sub_243B302C0(v66, v95);
  v69 = v91;
  v70 = swift_allocObject();
  sub_243B30328(v68, v70 + v69);
  v90 = sub_243B2E680(&qword_27EDA2110, &qword_27EDA2098, &qword_243B727B0);
  v71 = v92;
  v72 = v98;
  sub_243B704DC();

  sub_243B308DC(v65);
  swift_getKeyPath();
  v101 = v32;
  sub_243B6FAFC();

  v73 = *(v32 + v85);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  v105 = v101;
  sub_243B302C0(v66, v68);
  v74 = swift_allocObject();
  sub_243B30328(v68, v74 + v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2118, &qword_243B74B90);
  v101 = v72;
  v102 = MEMORY[0x277D839B0];
  v103 = v90;
  v104 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_243B30A50();
  v75 = v94;
  sub_243B704DC();

  return (*(v93 + 8))(v71, v75);
}

uint64_t sub_243B2FCCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_243B7009C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2120, &qword_243B72910);
  return sub_243B2FD24(a1, a2 + *(v4 + 44));
}

uint64_t sub_243B2FD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2128, &qword_243B72918);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2130, &qword_243B72920);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v12 = *(a1 + 8);
  swift_getKeyPath();
  v40 = v12;
  sub_243B3077C(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  if (*(v12 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isActionInProgress) == 1)
  {
    sub_243B6FD7C();
    v13 = sub_243B7051C();
    KeyPath = swift_getKeyPath();
    v15 = &v11[*(v8 + 36)];
    *v15 = KeyPath;
    v15[1] = v13;
    sub_243B30C98(v11, v7);
    swift_storeEnumTagMultiPayload();
    sub_243B30B5C();
    sub_243B7014C();
    return sub_243B2E620(v11, &qword_27EDA2130, &qword_243B72920);
  }

  else
  {
    v39 = a2;
    if (qword_27EDA1DC8 != -1)
    {
      swift_once();
    }

    v36 = v8;
    v40 = qword_27EDA5040;
    v41 = *algn_27EDA5048;
    sub_243B30AF8();

    v17 = sub_243B703BC();
    v37 = v18;
    v38 = v17;
    v35 = v19;
    swift_getKeyPath();
    v40 = v12;
    sub_243B6FAFC();

    v20 = *(v12 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_243B6FC3C();

    v21 = *(v40 + 16);

    v34 = v4;
    if (v21 || (swift_getKeyPath(), v40 = v12, sub_243B6FAFC(), , v22 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic, swift_beginAccess(), (*(v12 + v22) & 1) != 0))
    {
      sub_243B7051C();
    }

    else
    {
      v33 = [objc_opt_self() tertiaryLabelColor];
      sub_243B7054C();
    }

    v23 = v35;
    v24 = v37;
    v25 = v38;
    v26 = sub_243B7038C();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    sub_243B30B4C(v25, v24, v23 & 1);

    *v7 = v26;
    *(v7 + 1) = v28;
    v7[16] = v30 & 1;
    *(v7 + 3) = v32;
    swift_storeEnumTagMultiPayload();
    sub_243B30B5C();
    return sub_243B7014C();
  }
}

uint64_t sub_243B3015C()
{
  v0 = sub_243B6FACC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_243B6FABC();
  v8 = *(type metadata accessor for CopyLinkButtonView() + 20);
  (*(v1 + 16))(v5, v7, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2040, &unk_243B72710);
  sub_243B705CC();
  return (*(v1 + 8))(v7, v0);
}

uint64_t sub_243B302C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CopyLinkButtonView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B30328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CopyLinkButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_243B3038C()
{
  v1 = *(type metadata accessor for CopyLinkButtonView() - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 8);
  sub_243B5D768();
}

uint64_t sub_243B303F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B3077C(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  *a2 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isActionInProgress);
  return result;
}

uint64_t sub_243B304EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_243B30554()
{
  result = qword_27EDA20C0;
  if (!qword_27EDA20C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2080, &qword_243B72798);
    sub_243B305E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA20C0);
  }

  return result;
}

unint64_t sub_243B305E0()
{
  result = qword_27EDA20C8;
  if (!qword_27EDA20C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2078, &qword_243B72790);
    sub_243B30698();
    sub_243B2E680(&qword_27EDA20F8, &qword_27EDA2100, &qword_243B728A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA20C8);
  }

  return result;
}

unint64_t sub_243B30698()
{
  result = qword_27EDA20D0;
  if (!qword_27EDA20D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2070, &qword_243B72788);
    sub_243B2E680(&qword_27EDA20D8, &qword_27EDA20E0, &qword_243B72898);
    sub_243B2E680(&qword_27EDA20E8, &qword_27EDA20F0, &qword_243B728A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA20D0);
  }

  return result;
}

uint64_t sub_243B3077C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243B307E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2090, &qword_243B727A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B3085C()
{
  v0 = *(*(type metadata accessor for CopyLinkButtonView() - 8) + 80);

  return sub_243B3015C();
}

uint64_t sub_243B308DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2098, &qword_243B727B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for CopyLinkButtonView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = v0 + v3 + v1[7];
  v7 = sub_243B6FACC();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2040, &unk_243B72710) + 28));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_243B30A50()
{
  result = qword_27EDA2FC0;
  if (!qword_27EDA2FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2118, &qword_243B74B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2FC0);
  }

  return result;
}

unint64_t sub_243B30AF8()
{
  result = qword_27EDA2138;
  if (!qword_27EDA2138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2138);
  }

  return result;
}

uint64_t sub_243B30B4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_243B30B5C()
{
  result = qword_27EDA2140;
  if (!qword_27EDA2140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2130, &qword_243B72920);
    sub_243B2E680(&qword_27EDA2148, &qword_27EDA2150, &qword_243B72950);
    sub_243B2E680(&qword_27EDA2158, &qword_27EDA2160, &qword_243B72958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2140);
  }

  return result;
}

uint64_t sub_243B30C40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243B7004C();
  *a1 = result;
  return result;
}

uint64_t sub_243B30C6C(uint64_t *a1)
{
  v1 = *a1;

  return sub_243B7005C();
}

uint64_t sub_243B30C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2130, &qword_243B72920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B30D08()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA20A0, &qword_243B727B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2118, &qword_243B74B90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2098, &qword_243B727B0);
  sub_243B2E680(&qword_27EDA2110, &qword_27EDA2098, &qword_243B727B0);
  swift_getOpaqueTypeConformance2();
  sub_243B30A50();
  return swift_getOpaqueTypeConformance2();
}

id sub_243B3107C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InsetLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_243B310FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  return v1;
}

void sub_243B31170()
{
  v0 = sub_243B6F9DC();
  if (v0)
  {
    v1 = sub_243B312C8(v0);

    if (v1)
    {
      v2 = *MEMORY[0x277D76BB8];
      v3 = sub_243B7082C();
      if (*(v1 + 16))
      {
        v5 = sub_243B66CDC(v3, v4);
        v7 = v6;

        if (v7)
        {
          sub_243B319B0(*(v1 + 56) + 32 * v5, v11);

          sub_243B31A0C();
          if (swift_dynamicCast())
          {
            [v10 CGRectValue];
            v9 = v8;
            swift_getKeyPath();
            swift_getKeyPath();
            v11[0] = v9;

            sub_243B6FC4C();
          }

          return;
        }
      }

      else
      {
      }
    }
  }
}

unint64_t sub_243B312C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2198, &qword_243B72A58);
    v2 = sub_243B70C3C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_243B31A60(*(a1 + 48) + 40 * v14, v29);
        sub_243B319B0(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_243B31A60(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_243B319B0(v27 + 8, v22);
        sub_243B31ABC(v26);
        v23 = v20;
        sub_243B31B24(v22, v24);
        v15 = v23;
        sub_243B31B24(v24, v25);
        sub_243B31B24(v25, &v23);
        result = sub_243B66CDC(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_243B31B24(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_243B31B24(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_243B31ABC(v26);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_243B31788()
{
  v1 = OBJC_IVAR____TtC14CloudSharingUI16KeyboardObserver__height;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA21A8, &qword_243B72A68);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for KeyboardObserver()
{
  result = qword_27EDA2178;
  if (!qword_27EDA2178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243B31884()
{
  sub_243B31914();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_243B31914()
{
  if (!qword_27EDA2188)
  {
    v0 = sub_243B6FC5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA2188);
    }
  }
}

uint64_t sub_243B31970@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for KeyboardObserver();
  result = sub_243B6FBEC();
  *a1 = result;
  return result;
}

uint64_t sub_243B319B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_243B31A0C()
{
  result = qword_27EDA2190;
  if (!qword_27EDA2190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDA2190);
  }

  return result;
}

uint64_t sub_243B31ABC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA21A0, &qword_243B72A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_243B31B24(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_243B31B8C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = a1;
  v5 = [v4 recipients];
  sub_243B2E534(0, &unk_27EDA2F70, 0x277CFBCA0);
  v6 = sub_243B7089C();

  sub_243B3228C(v6);
}

void sub_243B31CB0(void *a1, void *a2)
{
  v5 = sub_243B7078C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_243B707AC();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_243B707CC();
  v34 = *(v14 - 8);
  v15 = *(v34 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  v21 = [a2 contact];
  if (v21)
  {
    v37 = v21;
    v22 = [a1 navigationController];
    if (v22)
    {
      v23 = v22;
      v24 = *(v2 + OBJC_IVAR____TtC14CloudSharingUI29AutocompleteSearchCoordinator_viewModel);
      swift_getKeyPath();
      swift_getKeyPath();
      v33 = v6;
      LOBYTE(aBlock[0]) = 0;

      sub_243B6FC4C();
      sub_243B2E534(0, &qword_27EDA1F30, 0x277D85C78);
      v32 = sub_243B70A0C();
      sub_243B707BC();
      sub_243B707DC();
      v34 = *(v34 + 8);
      (v34)(v18, v14);
      v25 = swift_allocObject();
      *(v25 + 16) = v37;
      *(v25 + 24) = v23;
      aBlock[4] = sub_243B32950;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_243B2804C;
      aBlock[3] = &block_descriptor_0;
      v26 = _Block_copy(aBlock);
      v31 = v23;
      v27 = v37;

      sub_243B7079C();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_243B32970();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F40, &qword_243B724A8);
      sub_243B329C8();
      sub_243B70B2C();
      v28 = v32;
      MEMORY[0x245D49A40](v20, v13, v9, v26);
      _Block_release(v26);

      (*(v33 + 8))(v9, v5);
      (*(v35 + 8))(v13, v36);
      (v34)(v20, v14);
    }

    else
    {
      v29 = v37;
    }
  }
}

void sub_243B32118(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() viewControllerForContact_];
  [a2 pushViewController:v3 animated:1];
}

uint64_t sub_243B3228C(unint64_t a1)
{
  v19 = *(v1 + OBJC_IVAR____TtC14CloudSharingUI29AutocompleteSearchCoordinator_viewModel);
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_21:
    v4 = sub_243B70C0C();
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245D49BC0](v7, a1);
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 normalizedAddress];
      if (v10)
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_22;
      }
    }

    v11 = v10;
    v12 = sub_243B7082C();
    v18 = v13;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_243B32770(0, *(v6 + 2) + 1, 1, v6);
    }

    v15 = *(v6 + 2);
    v14 = *(v6 + 3);
    if (v15 >= v14 >> 1)
    {
      v6 = sub_243B32770((v14 > 1), v15 + 1, 1, v6);
    }

    *(v6 + 2) = v15 + 1;
    v16 = &v6[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v18;
  }

  while (v5 != v4);
LABEL_22:
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

id sub_243B3249C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutocompleteSearchCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_243B32540(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F68, &qword_243B72B50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_243B32664(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2240, &qword_243B724C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_243B32770(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1FA0, &qword_243B74F40);
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

void *sub_243B32884(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1FA0, &qword_243B74F40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_243B32910()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_243B32970()
{
  result = qword_27EDA1F38;
  if (!qword_27EDA1F38)
  {
    sub_243B7078C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA1F38);
  }

  return result;
}

unint64_t sub_243B329C8()
{
  result = qword_27EDA1F48;
  if (!qword_27EDA1F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA1F40, &qword_243B724A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA1F48);
  }

  return result;
}

uint64_t sub_243B32A2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI29AutocompleteSearchCoordinator_viewModel) + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_243B6FC3C();

    v2();
    sub_243B2BFCC(v2);
  }

  return result;
}

uint64_t sub_243B32AFC(double a1, double a2)
{
  v3 = v2;
  v5 = sub_243B6FB9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB6C();
  v10 = sub_243B6FB8C();
  v11 = sub_243B709BC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a2;
    _os_log_impl(&dword_243B1E000, v10, v11, "textViewDidChange: %f", v12, 0xCu);
    MEMORY[0x245D4A570](v12, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v13 = OBJC_IVAR____TtC14CloudSharingUI29AutocompleteSearchCoordinator_delegate;
  swift_beginAccess();
  sub_243B32CD8(v3 + v13, v18);
  if (!v19)
  {
    return sub_243B32D48(v18);
  }

  sub_243B32DB0(v18, v17);
  sub_243B32D48(v18);
  v14 = *(__swift_project_boxed_opaque_existential_1(v17, v17[3])[2] + 16);
  if (v14)
  {
    [v14 setConstant_];
  }

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t sub_243B32CD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2230, &unk_243B72B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B32D48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2230, &unk_243B72B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243B32DB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_243B32E74(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2248, &unk_243B74050);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_243B32F44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2248, &unk_243B74050);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PermissionsView()
{
  result = qword_27EDA2250;
  if (!qword_27EDA2250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243B33040()
{
  sub_243B33190(319, &qword_27EDA2260, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_243B3312C();
    if (v1 <= 0x3F)
    {
      sub_243B2EEC4();
      if (v2 <= 0x3F)
      {
        sub_243B33190(319, &qword_27EDA2278, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_243B3312C()
{
  if (!qword_27EDA2268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2270, "LT");
    v0 = sub_243B6FD2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA2268);
    }
  }
}

void sub_243B33190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

uint64_t sub_243B33200@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_243B7007C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for PermissionsView();
  sub_243B2E06C(v1 + *(v12 + 20), v11, &qword_27EDA2280, &qword_243B732D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_243B304EC(v11, a1, &qword_27EDA2270, "LT");
  }

  v14 = *v11;
  sub_243B709DC();
  v15 = sub_243B702CC();
  sub_243B6FB4C();

  sub_243B7006C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

double sub_243B333E8@<D0>(double a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1FA0, &qword_243B74F40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_243B71ED0;
  if (qword_27EDA1DA0 != -1)
  {
    swift_once();
  }

  v5 = *algn_27EDA4FF8;
  *(v4 + 32) = qword_27EDA4FF0;
  *(v4 + 40) = v5;
  v6 = qword_27EDA1DA8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_27EDA5008;
  *(v4 + 48) = qword_27EDA5000;
  *(v4 + 56) = v7;
  *a2 = v4;
  v8 = type metadata accessor for PermissionsView();
  v9 = v8[5];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  swift_storeEnumTagMultiPayload();
  v10 = (a2 + v8[6]);
  type metadata accessor for CreateiCloudLinkViewModel();
  sub_243B35C14(&qword_27EDA2060, type metadata accessor for CreateiCloudLinkViewModel);

  *v10 = sub_243B6FE1C();
  v10[1] = v11;
  swift_getKeyPath();
  *&v14 = a1;
  sub_243B35C14(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  *(*&a1 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit);

  v12 = a2 + v8[7];
  sub_243B705AC();

  result = a1;
  *v12 = v14;
  *(v12 + 2) = v15;
  return result;
}

uint64_t sub_243B3365C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v55 = sub_243B701DC();
  v57 = *(v55 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  v52 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2298, &qword_243B734D0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v56 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2270, "LT");
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v53 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v54 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  v17 = sub_243B700BC();
  v62 = *(v17 - 8);
  v63 = v17;
  v18 = *(v62 + 64);
  MEMORY[0x28223BE20](v17);
  v61 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA22A0, &qword_243B72C28);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v51 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA22A8, &qword_243B72C30);
  v59 = *(v25 - 8);
  v60 = v25;
  v26 = *(v59 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v51 - v27;
  v65 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA22B0, &qword_243B72C38);
  sub_243B2E680(&qword_27EDA22B8, &qword_27EDA22B0, &qword_243B72C38);
  sub_243B7036C();
  sub_243B2E680(&qword_27EDA22C0, &qword_27EDA22A0, &qword_243B72C28);
  v58 = v28;
  v29 = v55;
  sub_243B7048C();
  (*(v21 + 8))(v24, v20);
  v30 = v57;
  v31 = v54;
  sub_243B33200(v16);
  (*(v30 + 104))(v31, *MEMORY[0x277CE0558], v29);
  (*(v30 + 56))(v31, 0, 1, v29);
  v32 = *(v6 + 56);
  v33 = v56;
  sub_243B2E06C(v16, v56, &qword_27EDA2270, "LT");
  sub_243B2E06C(v31, v33 + v32, &qword_27EDA2270, "LT");
  v34 = *(v30 + 48);
  if (v34(v33, 1, v29) != 1)
  {
    v51 = v16;
    v35 = v33;
    v36 = v33;
    v37 = v53;
    sub_243B2E06C(v35, v53, &qword_27EDA2270, "LT");
    if (v34(v36 + v32, 1, v29) != 1)
    {
      v48 = v36 + v32;
      v49 = v52;
      (*(v30 + 32))(v52, v48, v29);
      sub_243B35C14(&qword_27EDA22E0, MEMORY[0x277CE0570]);
      sub_243B707FC();
      v50 = *(v30 + 8);
      v50(v49, v29);
      sub_243B2E620(v31, &qword_27EDA2270, "LT");
      sub_243B2E620(v51, &qword_27EDA2270, "LT");
      v50(v37, v29);
      sub_243B2E620(v36, &qword_27EDA2270, "LT");
      goto LABEL_7;
    }

    sub_243B2E620(v31, &qword_27EDA2270, "LT");
    sub_243B2E620(v51, &qword_27EDA2270, "LT");
    (*(v30 + 8))(v37, v29);
    v33 = v36;
    goto LABEL_6;
  }

  sub_243B2E620(v31, &qword_27EDA2270, "LT");
  sub_243B2E620(v16, &qword_27EDA2270, "LT");
  if (v34(v33 + v32, 1, v29) != 1)
  {
LABEL_6:
    sub_243B2E620(v33, &qword_27EDA2298, &qword_243B734D0);
    goto LABEL_7;
  }

  sub_243B2E620(v33, &qword_27EDA2270, "LT");
LABEL_7:
  v38 = v61;
  sub_243B700AC();
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA22C8, &qword_243B72C40) + 36);
  v41 = v62;
  v40 = v63;
  v42 = v64;
  (*(v62 + 16))(v64 + v39, v38, v63);
  v43 = *(v41 + 56);
  v43((v42 + v39), 0, 1, v40);
  (*(v59 + 32))(v42, v58, v60);
  KeyPath = swift_getKeyPath();
  v45 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA22D0, &qword_243B72C78) + 36));
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA22D8, &qword_243B72C80) + 28);
  (*(v41 + 32))(v45 + v46, v38, v40);
  result = v43(v45 + v46, 0, 1, v40);
  *v45 = KeyPath;
  return result;
}

uint64_t sub_243B33E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA22F0, &qword_243B72C90);
  v55 = *(v56 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v50 = v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA22F8, &qword_243B72C98);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v58 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v57 = v48 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2300, &qword_243B72CA0);
  v10 = *(v52 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v52);
  v13 = v48 - v12;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2308, &qword_243B72CA8);
  v14 = *(*(v51 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v51);
  v54 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v48 - v18;
  MEMORY[0x28223BE20](v17);
  v53 = v48 - v20;
  v60 = a1;
  v21 = *(a1 + *(type metadata accessor for PermissionsView() + 24) + 8);
  swift_getKeyPath();
  v61[0] = v21;
  sub_243B35C14(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v22 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  if (*(v21 + v22) == 1)
  {
    if (qword_27EDA1D90 != -1)
    {
      swift_once();
    }

    v23 = &qword_27EDA4FD0;
  }

  else
  {
    if (qword_27EDA1D98 != -1)
    {
      swift_once();
    }

    v23 = &qword_27EDA4FE0;
  }

  v25 = *v23;
  v24 = v23[1];

  v61[0] = v25;
  v61[1] = v26;
  sub_243B30AF8();
  v61[10] = sub_243B703BC();
  v61[11] = v27;
  v62 = v28 & 1;
  v63 = v29;
  v49 = a1;
  sub_243B3510C(a1, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2310, &qword_243B72CD8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2318, &qword_243B72CE0);
  sub_243B35C6C();
  v48[1] = sub_243B35E8C();
  v48[2] = v30;
  sub_243B7070C();
  v31 = objc_opt_self();
  v32 = [v31 tertiarySystemGroupedBackgroundColor];
  v61[0] = sub_243B7054C();
  v33 = sub_243B7067C();
  (*(v10 + 32))(v19, v13, v52);
  *&v19[*(v51 + 36)] = v33;
  v34 = v53;
  sub_243B304EC(v19, v53, &qword_27EDA2308, &qword_243B72CA8);
  swift_getKeyPath();
  v61[0] = v21;
  sub_243B6FAFC();

  if ((*(v21 + v22) & 1) != 0 || (swift_getKeyPath(), v61[0] = v21, sub_243B6FAFC(), v35 = , *(v21 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit) != 1))
  {
    v42 = 1;
    v41 = v56;
    v40 = v57;
  }

  else
  {
    MEMORY[0x28223BE20](v35);
    sub_243B355EC(v49, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2398, &qword_243B72D20);
    sub_243B35F44();
    v36 = v50;
    sub_243B7071C();
    v37 = [v31 tertiarySystemGroupedBackgroundColor];
    v61[0] = sub_243B7054C();
    v38 = sub_243B7067C();
    v39 = v56;
    v40 = v57;
    *(v36 + *(v56 + 36)) = v38;
    sub_243B304EC(v36, v40, &qword_27EDA22F0, &qword_243B72C90);
    v41 = v39;
    v42 = 0;
  }

  (*(v55 + 56))(v40, v42, 1, v41);
  v43 = v54;
  sub_243B2E06C(v34, v54, &qword_27EDA2308, &qword_243B72CA8);
  v44 = v58;
  sub_243B2E06C(v40, v58, &qword_27EDA22F8, &qword_243B72C98);
  v45 = v59;
  sub_243B2E06C(v43, v59, &qword_27EDA2308, &qword_243B72CA8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2390, &qword_243B72D18);
  sub_243B2E06C(v44, v45 + *(v46 + 48), &qword_27EDA22F8, &qword_243B72C98);
  sub_243B2E620(v40, &qword_27EDA22F8, &qword_243B72C98);
  sub_243B2E620(v34, &qword_27EDA2308, &qword_243B72CA8);
  sub_243B2E620(v44, &qword_27EDA22F8, &qword_243B72C98);
  return sub_243B2E620(v43, &qword_27EDA2308, &qword_243B72CA8);
}

uint64_t sub_243B345B8(void *a1)
{
  v2 = type metadata accessor for PermissionsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = *a1;
  swift_getKeyPath();
  sub_243B36100(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_243B3630C(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2118, &qword_243B74B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2330, &qword_243B72CE8);
  sub_243B2E680(&qword_27EDA23B8, &qword_27EDA2118, &qword_243B74B90);
  sub_243B35CF0();
  return sub_243B706EC();
}

uint64_t sub_243B34774@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = type metadata accessor for PermissionsView();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2340, &qword_243B72CF0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = *a1;
  v15 = a1[1];
  sub_243B36100(a2, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_243B3630C(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = (v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = v14;
  v18[1] = v15;
  v27 = v14;
  v28 = v15;
  v29 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA23C0, &qword_243B72DF8);
  sub_243B2E680(&qword_27EDA23C8, &qword_27EDA23C0, &qword_243B72DF8);
  sub_243B7060C();
  v13[*(v10 + 44)] = 0;
  v19 = *(a2 + *(v6 + 32) + 8);
  swift_getKeyPath();
  v30 = v19;
  sub_243B35C14(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  LOBYTE(v19) = *(v19 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus) == 2;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v22 = v26;
  sub_243B304EC(v13, v26, &qword_27EDA2340, &qword_243B72CF0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2330, &qword_243B72CE8);
  v24 = (v22 + *(result + 36));
  *v24 = KeyPath;
  v24[1] = sub_243B368BC;
  v24[2] = v21;
  return result;
}

uint64_t sub_243B34A88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PermissionsView();
  v7 = (v3 + *(v6 + 28));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA23D8, &qword_243B72E08);
  sub_243B705CC();
  sub_243B705BC();
  v11 = a1;
  if (qword_27EDA1DA8 != -1)
  {
    swift_once();
    v11 = a1;
  }

  if (v11 == qword_27EDA5000 && a2 == *algn_27EDA5008)
  {

    goto LABEL_7;
  }

  v13 = sub_243B70C6C();

  if (v13)
  {
LABEL_7:
    v14 = *(v3 + *(v6 + 24) + 8);
    if (*(v14 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit) == 1)
    {
      *(v14 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit) = 1;
      return result;
    }

    goto LABEL_11;
  }

  v15 = *(v3 + *(v6 + 24) + 8);
  if (*(v15 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit))
  {
LABEL_11:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B35C14(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
    sub_243B6FAEC();
  }

  *(v15 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit) = 0;
  return result;
}

double sub_243B34D70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_243B7009C();
  v20 = 1;
  sub_243B34EA8(a1, a2, a3, &v14);
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v21 = v14;
  v26[1] = v15;
  v26[2] = v16;
  v26[3] = v17;
  v27 = v18;
  v26[0] = v14;
  sub_243B2E06C(&v21, v13, &qword_27EDA23D0, &qword_243B72E00);
  sub_243B2E620(v26, &qword_27EDA23D0, &qword_243B72E00);
  *&v19[7] = v21;
  *&v19[71] = v25;
  *&v19[55] = v24;
  *&v19[39] = v23;
  *&v19[23] = v22;
  v9 = *v19;
  *(a4 + 33) = *&v19[16];
  v10 = *&v19[48];
  *(a4 + 49) = *&v19[32];
  *(a4 + 65) = v10;
  result = *&v19[63];
  *(a4 + 80) = *&v19[63];
  v12 = v20;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v12;
  *(a4 + 17) = v9;
  return result;
}

uint64_t sub_243B34EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_243B30AF8();

  v8 = sub_243B703BC();
  v10 = v9;
  v12 = v11;
  sub_243B7052C();
  v25 = sub_243B7038C();
  v26 = v13;
  v15 = v14;
  v24 = v16;

  sub_243B30B4C(v8, v10, v12 & 1);

  v17 = (a3 + *(type metadata accessor for PermissionsView() + 28));
  v29 = *v17;
  v30 = *(v17 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA23D8, &qword_243B72E08);
  sub_243B705BC();
  if (v27 == a1 && v28 == a2)
  {
  }

  else
  {
    v18 = sub_243B70C6C();

    if ((v18 & 1) == 0)
    {
      v22 = 0;
      v19 = 0;
      KeyPath = 0;
      v20 = 0;
      goto LABEL_7;
    }
  }

  v19 = sub_243B7056C();
  v20 = sub_243B704FC();
  KeyPath = swift_getKeyPath();

  v22 = 1;
LABEL_7:
  sub_243B2D5E0(v25, v15, v24 & 1);

  sub_243B36648(0, v22, v19);
  sub_243B36698(0, v22, v19);
  *a4 = v25;
  *(a4 + 8) = v15;
  *(a4 + 16) = v24 & 1;
  *(a4 + 24) = v26;
  *(a4 + 32) = 0;
  *(a4 + 40) = v22;
  *(a4 + 48) = v19;
  *(a4 + 56) = KeyPath;
  *(a4 + 64) = v20;
  sub_243B36698(0, v22, v19);
  sub_243B30B4C(v25, v15, v24 & 1);
}

uint64_t sub_243B3510C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for PermissionsView() + 24) + 8);
  swift_getKeyPath();
  sub_243B35C14(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v4 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  if ((*(v3 + v4) & 1) != 0 || (swift_getKeyPath(), sub_243B6FAFC(), , (*(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit) & 1) == 0))
  {
    v5 = sub_243B700FC();
    swift_getKeyPath();
    sub_243B6FAFC();

    v12 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText);
    v13 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText + 8);
    sub_243B30AF8();

    result = sub_243B703BC();
    v9 = v11 & 1;
    v6 = 0x4028000000000000;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    result = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  *a2 = v5;
  a2[1] = v6;
  a2[2] = 0;
  a2[3] = result;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  return result;
}

uint64_t sub_243B352DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA23B0, &qword_243B72D28);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  if (qword_27EDA1DB0 != -1)
  {
    swift_once();
  }

  v17[4] = qword_27EDA5010;
  v17[5] = *algn_27EDA5018;
  v9 = (a1 + *(type metadata accessor for PermissionsView() + 24));
  v11 = *v9;
  v10 = v9[1];
  type metadata accessor for CreateiCloudLinkViewModel();
  sub_243B35C14(&qword_27EDA2060, type metadata accessor for CreateiCloudLinkViewModel);

  sub_243B6FE2C();
  swift_getKeyPath();
  sub_243B6FE3C();

  sub_243B30AF8();
  sub_243B7066C();
  swift_getKeyPath();
  v17[1] = v10;
  sub_243B35C14(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v12 = *(v10 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus) == 2;
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v5 + 32))(a2, v8, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2398, &qword_243B72D20);
  v16 = (a2 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = sub_243B307DC;
  v16[2] = v14;
  return result;
}

uint64_t sub_243B355EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for PermissionsView() + 24) + 8);
  swift_getKeyPath();
  sub_243B35C14(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v4 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  v5 = 0;
  v6 = 0;
  result = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if ((*(v3 + v4) & 1) == 0)
  {
    v5 = sub_243B700FC();
    swift_getKeyPath();
    sub_243B6FAFC();

    v12 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText);
    v13 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText + 8);
    sub_243B30AF8();

    result = sub_243B703BC();
    v9 = v11 & 1;
    v6 = 0x4028000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
  a2[2] = 0;
  a2[3] = result;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  return result;
}

uint64_t sub_243B35778@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_243B700FC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2288, &qword_243B72C18);
  sub_243B3365C(v1, a1 + *(v3 + 44));
  v4 = [objc_opt_self() systemBackgroundColor];
  v5 = sub_243B7054C();
  v6 = sub_243B702FC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2290, &qword_243B72C20);
  v8 = a1 + *(result + 36);
  *v8 = v5;
  *(v8 + 8) = v6;
  return result;
}

uint64_t sub_243B35824@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B35C14(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  *a2 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus);
  return result;
}

uint64_t sub_243B35910@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_243B35C14(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_243B359EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B35C14(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v4 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText);
  a2[1] = v4;
}

uint64_t sub_243B35AA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_243B5CAA4(v2, v3);
}

uint64_t sub_243B35B68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA22E8, &qword_243B72C88);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  sub_243B2E06C(a1, &v7 - v4, &qword_27EDA22E8, &qword_243B72C88);
  return MEMORY[0x245D48FC0](v5);
}

uint64_t sub_243B35C14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243B35C6C()
{
  result = qword_27EDA2320;
  if (!qword_27EDA2320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2310, &qword_243B72CD8);
    sub_243B35CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2320);
  }

  return result;
}

unint64_t sub_243B35CF0()
{
  result = qword_27EDA2328;
  if (!qword_27EDA2328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2330, &qword_243B72CE8);
    sub_243B35DA8();
    sub_243B2E680(&qword_27EDA2368, &qword_27EDA2370, &qword_243B72D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2328);
  }

  return result;
}

unint64_t sub_243B35DA8()
{
  result = qword_27EDA2338;
  if (!qword_27EDA2338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2340, &qword_243B72CF0);
    sub_243B2E680(&qword_27EDA2348, &qword_27EDA2350, &qword_243B72CF8);
    sub_243B2E680(&qword_27EDA2358, &qword_27EDA2360, &qword_243B72D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2338);
  }

  return result;
}

unint64_t sub_243B35E8C()
{
  result = qword_27EDA2378;
  if (!qword_27EDA2378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2318, &qword_243B72CE0);
    sub_243B2E680(&qword_27EDA2380, &qword_27EDA2388, &qword_243B72D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2378);
  }

  return result;
}

unint64_t sub_243B35F44()
{
  result = qword_27EDA23A0;
  if (!qword_27EDA23A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2398, &qword_243B72D20);
    sub_243B2E680(&qword_27EDA23A8, &qword_27EDA23B0, &qword_243B72D28);
    sub_243B2E680(&qword_27EDA2368, &qword_27EDA2370, &qword_243B72D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA23A0);
  }

  return result;
}

uint64_t sub_243B3602C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_243B5CAA4(v2, v3);
}

uint64_t sub_243B36100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PermissionsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B36164()
{
  v1 = type metadata accessor for PermissionsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_243B701DC();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
    v10 = *(v5 + v7);
  }

  v11 = *(v5 + v1[6] + 8);

  v12 = v5 + v1[7];
  v13 = *(v12 + 8);

  v14 = *(v12 + 16);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243B3630C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PermissionsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B36370@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PermissionsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243B34774(a1, v6, a2);
}

uint64_t sub_243B363F0()
{
  v1 = type metadata accessor for PermissionsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_243B701DC();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
    v10 = *(v5 + v7);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v5 + v1[6] + 8);

  v13 = v5 + v1[7];
  v14 = *(v13 + 8);

  v15 = *(v13 + 16);

  v16 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v2 | 7);
}

uint64_t sub_243B365B0()
{
  v1 = *(type metadata accessor for PermissionsView() - 8);
  v2 = (v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_243B34A88(*v2, v2[1]);
}

uint64_t sub_243B36648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}