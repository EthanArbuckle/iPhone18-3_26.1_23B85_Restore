uint64_t sub_21BD30E84()
{
  v15 = *MEMORY[0x277D85DE8];
  v1[8] = v0;
  v2 = sub_21BE26A4C();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = sub_21BE25DFC();
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v7 = *(v6 + 64) + 15;
  v1[15] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v9 = sub_21BE25D6C();
  v1[17] = v9;
  v10 = *(v9 - 8);
  v1[18] = v10;
  v11 = *(v10 + 64) + 15;
  v1[19] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21BD310A4, 0, 0);
}

uint64_t sub_21BD310A4()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[8];
  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 1;
  }

  else
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 1;
    v0[2] = v1;
    sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel);
    sub_21BE25F0C();
  }

  sub_21BE28D7C();
  v0[21] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21BD31244, v3, v4);
}

uint64_t sub_21BD31244()
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 64);

  (*(v7 + 56))(v2, 1, 1, v6);

  sub_21BE25D5C();
  sub_21BE25D2C();
  (*(v4 + 8))(v3, v5);
  *(v0 + 200) = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6860, &qword_21BE35700);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 176) = sub_21BE262AC();
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21BD313CC, 0, 0);
}

uint64_t sub_21BD313CC()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[16];
  v2 = sub_21BE28DAC();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = MEMORY[0x277D07FD0];
  v4 = *(MEMORY[0x277D07FD0] + 4);
  v5 = *MEMORY[0x277D07FD0];
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_21BD314E4;
  v7 = v0[22];
  v8 = v0[16];
  v9 = *MEMORY[0x277D85DE8];

  return ((v5 + v3))();
}

uint64_t sub_21BD314E4()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 176);
  sub_21BBDE578(*(v2 + 128));

  if (v0)
  {
    v6 = sub_21BD31CD0;
  }

  else
  {
    v6 = sub_21BD31668;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21BD31668()
{
  v50 = v0;
  v49[2] = *MEMORY[0x277D85DE8];
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = *(v0[8] + 24);
  sub_21BE25DBC();
  v5 = sub_21BE25DAC();
  (*(v2 + 8))(v1, v3);
  v0[4] = 0;
  v6 = [v4 fetchFamilyGroceryListEligibilityForFamilyChecklistWithLocale:v5 error:v0 + 4];

  v7 = v0[4];
  if (v6)
  {
    v8 = v7;
    if ([v6 isEligible])
    {

LABEL_4:
      v9 = v0[24];
      goto LABEL_17;
    }

    v16 = v0[12];
    sub_21BE261BC();
    v17 = v6;
    v18 = sub_21BE26A2C();
    v19 = sub_21BE28FFC();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[12];
    v22 = &off_2782F5000;
    v24 = v0[9];
    v23 = v0[10];
    if (v20)
    {
      v48 = v0[9];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v49[0] = v26;
      *v25 = 136315138;
      v0[7] = [v17 ineligibilityReasons];
      type metadata accessor for REMFamilyChecklistFamilyGroceryListIneligibilityReasons(0);
      v27 = sub_21BE28A5C();
      v29 = sub_21BB3D81C(v27, v28, v49);

      *(v25 + 4) = v29;
      v22 = &off_2782F5000;
      _os_log_impl(&dword_21BB35000, v18, v19, "Sharing grocery list is ineligible, reasons: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x21CF05C50](v26, -1, -1);
      MEMORY[0x21CF05C50](v25, -1, -1);

      (*(v23 + 8))(v21, v48);
    }

    else
    {

      (*(v23 + 8))(v21, v24);
    }

    v30 = [v17 v22[220]];
    v31 = v0[8];
    if ((v30 & 0x100) != 0)
    {
      if (*(v31 + 17) == 1)
      {

        *(v31 + 17) = 1;
        goto LABEL_4;
      }

      v34 = v0[24];
      swift_getKeyPath();
      v35 = swift_task_alloc();
      *(v35 + 16) = v31;
      *(v35 + 24) = 1;
      v0[6] = v31;
      sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel);
    }

    else
    {
      if (*(v31 + 18) == 1)
      {

        *(v31 + 18) = 1;
        goto LABEL_4;
      }

      v32 = v0[24];
      swift_getKeyPath();
      v33 = swift_task_alloc();
      *(v33 + 16) = v31;
      *(v33 + 24) = 1;
      v0[5] = v31;
      sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel);
    }

    sub_21BE25F0C();
  }

  else
  {
    v10 = v7;
    v11 = sub_21BE25A8C();

    swift_willThrow();
    v13 = v0[10];
    v12 = v0[11];
    v14 = v0[9];
    sub_21BE261BC();
    v49[0] = 0;
    v49[1] = 0xE000000000000000;
    v15 = v11;
    sub_21BE295EC();
    MEMORY[0x21CF03CA0](0xD000000000000012, 0x800000021BE57830);
    MEMORY[0x21CF03CA0](0xD000000000000046, 0x800000021BE5EC10);
    sub_21BC51D50(v11);

    (*(v13 + 8))(v12, v14);
  }

LABEL_17:
  v36 = v0[8];
  if (*(v36 + 16))
  {
    swift_getKeyPath();
    v37 = swift_task_alloc();
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    v0[3] = v36;
    sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel);
    sub_21BE25F0C();
  }

  else
  {
    *(v36 + 16) = 0;
  }

  v38 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4ED8 != -1)
  {
    swift_once();
  }

  v40 = v0[19];
  v39 = v0[20];
  v42 = v0[15];
  v41 = v0[16];
  v44 = v0[11];
  v43 = v0[12];
  [v38 postNotificationName:qword_27CDB7E88 object:0];

  v45 = v0[1];
  v46 = *MEMORY[0x277D85DE8];

  return v45();
}

uint64_t sub_21BD31CD0()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = v0[24];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  sub_21BE261BC();
  v5 = v1;
  sub_21BE295EC();
  MEMORY[0x21CF03CA0](0xD000000000000012, 0x800000021BE57830);
  MEMORY[0x21CF03CA0](0xD000000000000046, 0x800000021BE5EC10);
  sub_21BC51D50(v1);

  (*(v3 + 8))(v2, v4);
  v6 = v0[8];
  if (*(v6 + 16))
  {
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    v0[3] = v6;
    sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel);
    sub_21BE25F0C();
  }

  else
  {
    *(v6 + 16) = 0;
  }

  v8 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4ED8 != -1)
  {
    swift_once();
  }

  v10 = v0[19];
  v9 = v0[20];
  v12 = v0[15];
  v11 = v0[16];
  v14 = v0[11];
  v13 = v0[12];
  [v8 postNotificationName:qword_27CDB7E88 object:0];

  v15 = v0[1];
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

uint64_t sub_21BD31FA4(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_21BE26A4C();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  sub_21BE28D7C();
  v2[7] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v2[8] = v7;
  v2[9] = v6;

  return MEMORY[0x2822009F8](sub_21BD320A4, v7, v6);
}

uint64_t sub_21BD320A4()
{
  v17 = v0;
  v1 = v0[6];
  sub_21BE261BC();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21BB3D81C(0xD000000000000021, 0x800000021BE5EC60, &v16);
    _os_log_impl(&dword_21BB35000, v2, v3, "%s Turning on iCloud Reminders sync", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[10] = v10;
  v11 = *(v0[2] + 32);
  v12 = *MEMORY[0x277CB8A18];
  v13 = *(MEMORY[0x277D08088] + 4);
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_21BD32258;

  return MEMORY[0x28215E638](v12);
}

uint64_t sub_21BD32258()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_21BBF90BC;
  }

  else
  {
    v7 = sub_21BD32394;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21BD32394()
{
  v17 = v0;
  v1 = v0[5];
  sub_21BE261BC();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21BB3D81C(0xD000000000000021, 0x800000021BE5EC60, &v16);
    _os_log_impl(&dword_21BB35000, v2, v3, "%s iCloud Reminders sync is now enabled", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  v5(v6, v8);
  v11 = v0[2];
  v12 = *(MEMORY[0x277D08048] + 4);

  v13 = swift_task_alloc();
  v0[13] = v13;
  *v13 = v0;
  v13[1] = sub_21BBF8F28;
  v14 = v0[2];
  v19 = MEMORY[0x277D839B0];

  return MEMORY[0x28215E468](v0 + 15, 5, 1000000000000000000, 0, 0x8AC7230489E80000, 0, &unk_21BE44BE8, v14);
}

uint64_t sub_21BD32598(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_21BE26A4C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_21BE25DFC();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  sub_21BE28D7C();
  v2[11] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21BD3271C, v9, v10);
}

uint64_t sub_21BD3271C()
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[4];

  v6 = *(v5 + 24);
  sub_21BE25DBC();
  v7 = sub_21BE25DAC();
  (*(v4 + 8))(v2, v3);
  v0[2] = 0;
  v8 = [v6 fetchFamilyGroceryListEligibilityForFamilyChecklistWithLocale:v7 error:v0 + 2];

  v9 = v0[2];
  if (v8)
  {
    v10 = v9;
    if (([v8 isEligible] & 1) != 0 || (objc_msgSend(v8, sel_ineligibilityReasons) & 4) == 0)
    {
      v11 = v0[10];
      v12 = v0[7];
      v13 = v0[3];

      *v13 = 1;

      v14 = v0[1];
      v15 = *MEMORY[0x277D85DE8];
      goto LABEL_8;
    }

    sub_21BE2637C();
    sub_21BD32DB4(&qword_27CDB6868, MEMORY[0x277D08018]);
    v17 = swift_allocError();
    sub_21BE2636C();
    swift_willThrow();
  }

  else
  {
    v16 = v9;
    v17 = sub_21BE25A8C();

    swift_willThrow();
  }

  v18 = v0[10];
  v20 = v0[6];
  v19 = v0[7];
  v21 = v0[5];
  sub_21BE261BC();
  v22 = v17;
  sub_21BE295EC();
  MEMORY[0x21CF03CA0](0xD000000000000021, 0x800000021BE5EC60);
  MEMORY[0x21CF03CA0](0xD00000000000003FLL, 0x800000021BE5EC90);
  sub_21BC51D50(v17);

  (*(v20 + 8))(v19, v21);
  sub_21BE2637C();
  sub_21BD32DB4(&qword_27CDB6868, MEMORY[0x277D08018]);
  swift_allocError();
  sub_21BE2636C();
  swift_willThrow();

  v14 = v0[1];
  v23 = *MEMORY[0x277D85DE8];
LABEL_8:

  return v14();
}

uint64_t sub_21BD32A70()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI26SharedGroceryListItemModel___observationRegistrar;
  v2 = sub_21BE25F5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharedGroceryListItemModel()
{
  result = qword_27CDBA9F0;
  if (!qword_27CDBA9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BD32B70()
{
  result = sub_21BE25F5C();
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

uint64_t sub_21BD32C20(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BD31FA4(a1, v1);
}

uint64_t sub_21BD32CCC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BD32598(a1, v1);
}

unint64_t sub_21BD32D68()
{
  result = qword_280BD68E0;
  if (!qword_280BD68E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD68E0);
  }

  return result;
}

uint64_t sub_21BD32DB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21BD32E2C(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x696D694C6D6D6F63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x69636966656E6562;
      break;
    case 7:
      result = 0x6C5064756F6C4369;
      break;
    case 8:
      result = 0x6D657449656D6F68;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x736143656C707061;
      break;
    case 11:
      result = 0x49746361746E6F63;
      break;
    case 12:
    case 15:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_21BD33024@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BD32E2C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21BD33064@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for ChecklistStateVars();
  sub_21BD34274(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
  v12 = sub_21BE26E9C();
  v11 = v3;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for FamilyChecklistStore();
  sub_21BD34274(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore);

  v10 = sub_21BE2727C();
  v5 = v4;
  type metadata accessor for FamilyCircleStore(0);
  sub_21BD34274(&qword_27CDB5C40, type metadata accessor for FamilyCircleStore);
  v6 = sub_21BE270CC();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CC8, &qword_21BE36190);
  sub_21BE283EC();
  sub_21BE283EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E30, &qword_21BE3E330);
  sub_21BE283EC();
  result = sub_21BE283EC();
  *a2 = v12;
  *(a2 + 8) = v11 & 1;
  *(a2 + 9) = a1;
  *(a2 + 10) = HIBYTE(a1) & 1;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v5;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  *(a2 + 64) = v14;
  *(a2 + 72) = v15;
  *(a2 + 80) = v14;
  *(a2 + 88) = v15;
  *(a2 + 96) = v14;
  *(a2 + 104) = v15;
  return result;
}

uint64_t sub_21BD332DC@<X0>(uint64_t a1@<X8>)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_21BD33064(v2 | *v1, a1);
}

uint64_t sub_21BD332F8()
{
  v1 = qword_27CDBAA08;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAA50, &unk_21BE508C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = (v0 + qword_27CDD42E0);

  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

id sub_21BD3337C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for FamilyContactsItemProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21BD333F4(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver_];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for FamilyContactsItemProvider();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_21BD33480(uint64_t a1)
{
  v2 = qword_27CDBAA08;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAA50, &unk_21BE508C0);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = (a1 + qword_27CDD42E0);

  return __swift_destroy_boxed_opaque_existential_0Tm(v4);
}

uint64_t sub_21BD33508()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BD3357C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BD337C8();
}

uint64_t sub_21BD3362C(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BD336C4, v4, v3);
}

uint64_t sub_21BD336C4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_21BBCDD2C;

    return sub_21BBCBD4C();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21BD337C8()
{
  v1[2] = v0;
  sub_21BE28D7C();
  v1[3] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_21BD33860, v3, v2);
}

uint64_t sub_21BD33860()
{
  v1 = v0[2];
  v3 = *(v1 + qword_27CDB63F0);
  v2 = *(v1 + qword_27CDB63F0 + 8);
  v4 = type metadata accessor for FamilySignpost();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v0[6] = sub_21BC84D18(v3, v2, "computeItems", 12, 2);
  v7 = qword_27CDD42E0;
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_21BD3397C;
  v9 = v0[2];

  return (sub_21BE19D18)(v1 + v7);
}

uint64_t sub_21BD3397C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(v4 + 64) = a1;
  *(v4 + 72) = v1;

  v7 = *(v3 + 40);
  v8 = *(v3 + 32);
  if (v1)
  {
    v9 = sub_21BBE5E28;
  }

  else
  {
    v9 = sub_21BD33AC0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21BD33AC0()
{
  v1 = v0[8];
  v2 = v0[3];

  v3 = sub_21BE2905C();
  v4 = v3;
  v21 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BE2951C())
  {
    v20 = v0;
    v6 = 0;
    v0 = &selRef_bundleURL;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CF047C0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = [v8 contact];
      if (v11)
      {
      }

      else
      {
        sub_21BE296BC();
        v7 = *(v21 + 16);
        sub_21BE296EC();
        sub_21BE296FC();
        sub_21BE296CC();
      }

      ++v6;
      if (v10 == i)
      {
        v0 = v20;
        v12 = v21;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_18:

  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    v13 = sub_21BE2951C();
  }

  else
  {
    v13 = *(v12 + 16);
  }

  v14 = v0[8];
  v15 = v0[6];

  v16 = v13 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAA58, &unk_21BE44DC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21BE32770;
  *(v17 + 32) = 11;
  *(v17 + 33) = v16;

  sub_21BC852D8();

  v18 = v0[1];

  return (v18)(v17);
}

uint64_t sub_21BD33CE4()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCBD4C();
}

void sub_21BD33DA8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_21BE28D7C();
  v7 = a1;
  v8 = sub_21BE28D6C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_21BBA932C(0, 0, v5, &unk_21BE44DD8, v9);
}

uint64_t type metadata accessor for FamilyContactsItemProvider()
{
  result = qword_27CDBAA10;
  if (!qword_27CDBAA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD33F24()
{
  sub_21BD33FBC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_21BD33FBC()
{
  if (!qword_27CDBAA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBAA28, &qword_21BE44C28);
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBAA20);
    }
  }
}

unint64_t sub_21BD3403C()
{
  result = qword_27CDBAA30;
  if (!qword_27CDBAA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBAA30);
  }

  return result;
}

unint64_t sub_21BD34090(uint64_t a1)
{
  *(a1 + 8) = sub_21BD340C0();
  result = sub_21BD34114();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21BD340C0()
{
  result = qword_27CDBAA38;
  if (!qword_27CDBAA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBAA38);
  }

  return result;
}

unint64_t sub_21BD34114()
{
  result = qword_27CDBAA40;
  if (!qword_27CDBAA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBAA40);
  }

  return result;
}

uint64_t sub_21BD34168()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_21BE26CBC();
}

uint64_t sub_21BD341D4(uint64_t a1)
{
  *(a1 + 8) = sub_21BD34274(&qword_27CDBAA48, type metadata accessor for FamilyContactsItemProvider);
  result = sub_21BD34274(&qword_27CDB6098, type metadata accessor for FamilyContactsItemProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BD34274(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BD342BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BD3433C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_21BE26CBC();
}

uint64_t sub_21BD343B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BD33CE4();
}

unint64_t sub_21BD34468()
{
  result = qword_27CDBAA60;
  if (!qword_27CDBAA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBAA60);
  }

  return result;
}

uint64_t sub_21BD34534(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_21BD3558C(a1);
  (*(*(*(v2 + qword_27CDD42E8) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_21BD345B4()
{
  v1 = v0 + *((*MEMORY[0x277D85000] & *v0) + qword_27CDD42E8 + 16);
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 1);
  return result;
}

id sub_21BD34624()
{
  v1 = [v0 navigationController];

  return v1;
}

uint64_t sub_21BD3465C(uint64_t a1, char a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = *MEMORY[0x277D85000] & *v2;
  v7 = *(v6 + qword_27CDD42E8);
  v8 = *(v6 + qword_27CDD42E8 + 8);
  v11.receiver = v2;
  v11.super_class = type metadata accessor for FARUINavigationPlaceholderController();
  objc_msgSendSuper2(&v11, sel_viewDidMoveToWindow_shouldAppearOrDisappear_, a1, a2 & 1);
  v9 = *((*v5 & *v2) + qword_27CDD42E8 + 16);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21BC436C0(a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21BD34758(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  v8 = a1;
  sub_21BD3465C(a3, a4);
}

uint64_t sub_21BD347CC()
{
  v1 = v0;
  v2 = v1;
  while (1)
  {
    v3 = v1;
    v4 = [v2 navigationController];
    if (v4 && (v5 = v4, v6 = [v4 topViewController], v5, v6))
    {

      if (v3 == v6)
      {

        return 1;
      }
    }

    else
    {
    }

    v7 = [v3 parentViewController];

    if (!v7)
    {
      break;
    }

    v1 = v7;
  }

  return 0;
}

void sub_21BD348A4(void *a1, char a2)
{
  v5 = [v2 navigationController];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = [v5 viewControllers];
  sub_21BD356A4();
  v8 = sub_21BE28C3C();

  v18 = v8;
  if (sub_21BD347CC())
  {
    v9 = *((*MEMORY[0x277D85000] & *v2) + qword_27CDD42E8 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [*(Strong + 16) setPresenter_];
      swift_unknownObjectRelease();
    }

    if (v8 >> 62)
    {
      if (sub_21BE2951C())
      {
        goto LABEL_7;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v8 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        v8 = sub_21BD9381C(v8);
      }

      v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        v13 = v12 - 1;
        v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v13 + 0x20);
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;

        a2 = 0;
        v18 = v8;
        goto LABEL_12;
      }

LABEL_18:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  v15 = a1;
  MEMORY[0x21CF03DB0]();
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v17 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_21BE28C5C();
  }

  sub_21BE28C8C();
  v16 = sub_21BE28C1C();

  [v6 setViewControllers:v16 animated:a2 & 1];
}

void sub_21BD34AC4(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_21BD348A4(v6, a4);
}

id sub_21BD34B34(char a1)
{
  v3 = [v1 navigationController];
  v4 = [v3 popViewControllerAnimated_];

  return v4;
}

id sub_21BD34B94(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  v5 = sub_21BD34B34(a3);

  return v5;
}

id sub_21BD34BE0(uint64_t a1, char a2)
{
  v3 = v2;
  result = [v3 navigationController];
  if (result)
  {
    v7 = a2 & 1;
    v8 = result;
    v9 = [result popToViewController:a1 animated:v7];

    result = 0;
    if (v9)
    {
      sub_21BD356A4();
      v10 = sub_21BE28C3C();

      return v10;
    }
  }

  return result;
}

id sub_21BD34C70(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_21BD34BE0(v6, a4);

  if (v8)
  {
    sub_21BD356A4();
    v9 = sub_21BE28C1C();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_21BD34D04(char a1)
{
  result = [v1 navigationController];
  if (result)
  {
    v4 = result;
    v5 = [result popToRootViewControllerAnimated_];

    result = 0;
    if (v5)
    {
      sub_21BD356A4();
      v6 = sub_21BE28C3C();

      return v6;
    }
  }

  return result;
}

id sub_21BD34D88(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  v5 = sub_21BD34D04(a3);

  if (v5)
  {
    sub_21BD356A4();
    v6 = sub_21BE28C1C();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_21BD34E00(void *a1)
{
  v1 = a1;
  v2 = sub_21BD34E44();

  return v2;
}

id sub_21BD34E44()
{
  v1 = [v0 navigationController];
  v2 = [v1 topViewController];

  return v2;
}

id sub_21BD34E9C(void *a1)
{
  v1 = a1;
  sub_21BD34F00();

  sub_21BD356A4();
  v2 = sub_21BE28C1C();

  return v2;
}

uint64_t sub_21BD34F00()
{
  v1 = [v0 navigationController];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v3 = [v1 viewControllers];

  sub_21BD356A4();
  v4 = sub_21BE28C3C();

  return v4;
}

void sub_21BD34F84(void *a1)
{
  sub_21BD356A4();
  sub_21BE28C3C();
  v2 = a1;
  sub_21BD34FF4();
}

void sub_21BD34FF4()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    sub_21BD356A4();
    v3 = sub_21BE28C1C();

    [v2 setViewControllers_];
  }

  else
  {
  }
}

void sub_21BD350AC(uint64_t a1, char a2)
{
  v4 = [v2 navigationController];
  if (v4)
  {
    v5 = v4;
    sub_21BD356A4();
    v6 = sub_21BE28C1C();
    [v5 setViewControllers:v6 animated:a2 & 1];
  }
}

uint64_t sub_21BD3515C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_21BD356A4();
  v6 = sub_21BE28C3C();
  v7 = a1;
  sub_21BD350AC(v6, a4);
}

void *sub_21BD35214(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + qword_27CDD42E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - v7;
  *(v2 + *(v9 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v8, a2, v4);
  v10 = sub_21BE2773C();
  v11 = *(v5 + 8);
  v12 = v10;
  v11(a2, v4);
  if (v10)
  {
  }

  return v10;
}

id sub_21BD35368(void *a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  *(v1 + *(v3 + qword_27CDD42E8 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = *(v3 + qword_27CDD42E8);
  v5 = *(v3 + qword_27CDD42E8 + 8);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for FARUINavigationPlaceholderController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_21BD354AC()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + qword_27CDD42E8);
  v3 = *(v1 + qword_27CDD42E8 + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for FARUINavigationPlaceholderController();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_21BD3558C(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + qword_27CDD42E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - v6;
  *(v1 + *(v8 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(v7, a1, v3);
  return sub_21BE2774C();
}

unint64_t sub_21BD356A4()
{
  result = qword_27CDB6358;
  if (!qword_27CDB6358)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB6358);
  }

  return result;
}

uint64_t sub_21BD3573C(uint64_t a1)
{
  v3 = sub_21BD35D58(a1);
  (*(*(*(v1 + qword_27CDD42F8) - 8) + 8))(a1);
  return v3;
}

void *sub_21BD357EC(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + qword_27CDD42F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v12 - v7);
  v8 = sub_21BE2773C();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_21BD35924(void *a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = *(v3 + qword_27CDD42F8);
  v5 = *(v3 + qword_27CDD42F8 + 8);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for StateRestorableHostingController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_21BD359F8()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + qword_27CDD42F8);
  v3 = *(v1 + qword_27CDD42F8 + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for StateRestorableHostingController();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_21BD35AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_21BD35B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_21BD35BB8()
{
  swift_getWitnessTable();
  sub_21BE27ABC();
  __break(1u);
}

uint64_t sub_21BD35BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDBAC30, &unk_21BE44F60);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_21BD35C70(uint64_t a1)
{
  v2 = *(*(*((*MEMORY[0x277D85000] & *v1) + qword_27CDD42F8) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - v3);
  return sub_21BE2774C();
}

uint64_t sub_21BD35D58(uint64_t a1)
{
  v3 = *(v1 + qword_27CDD42F8);
  v4 = *(v1 + qword_27CDD42F8 + 8);
  v5 = objc_allocWithZone(type metadata accessor for StateRestorableHostingController());
  return sub_21BD35C70(a1);
}

unint64_t sub_21BD35DB8()
{
  result = qword_27CDBACB8;
  if (!qword_27CDBACB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDBACC0, &qword_21BE44F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBACB8);
  }

  return result;
}

uint64_t sub_21BD35E38(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  type metadata accessor for StateRestorableHostingController();
  return sub_21BD35D58(v1);
}

__C::FACircleEventType_optional __swiftcall NSDictionary.fa_eventTypeForFamilyActionURL()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBACD0, &qword_21BE45068);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v25 - v2;
  v4 = sub_21BE262EC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = sub_21BE260BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  v33 = 0;
  sub_21BE288FC();
  if (!v33)
  {
    goto LABEL_11;
  }

  v30 = v19;
  v21 = *MEMORY[0x277D08008];
  v28 = v5[13];
  v28(v11, v21, v4);
  sub_21BD363E8(&qword_27CDBACD8, MEMORY[0x277D07FB0]);
  sub_21BE2892C();
  v29 = v5[1];
  v29(v11, v4);
  if ((*(v13 + 48))(v3, 1, v12) == 1)
  {

    sub_21BD36338(v3);
LABEL_11:
    v24 = 0;
    goto LABEL_12;
  }

  v26 = v9;
  (*(v13 + 32))(v30, v3, v12);
  (*(v13 + 104))(v17, *MEMORY[0x277D07FA0], v12);
  sub_21BD363E8(&qword_27CDBACE0, MEMORY[0x277D07FB0]);
  sub_21BE28BDC();
  sub_21BE28BDC();
  if (v33 == v31 && v34 == v32)
  {
    v22 = 1;
  }

  else
  {
    v22 = sub_21BE2995C();
  }

  v27 = *(v13 + 8);
  v27(v17, v12);

  if ((v22 & 1) == 0)
  {
    v27(v30, v12);

    goto LABEL_11;
  }

  v23 = v26;
  v28(v26, *MEMORY[0x277D08010], v4);
  type metadata accessor for FACircleEventType(0);
  sub_21BD363E8(&qword_27CDBACE8, type metadata accessor for FACircleEventType);
  sub_21BE2893C();

  v29(v23, v4);
  v27(v30, v12);
  v24 = v33;
LABEL_12:
  result.value._rawValue = v24;
  result.is_nil = v20;
  return result;
}

uint64_t sub_21BD36338(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBACD0, &qword_21BE45068);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BD363E8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_21BD36430(void *a1)
{
  v1 = a1;
  v2 = NSDictionary.fa_eventTypeForFamilyActionURL()();

  return v2;
}

uint64_t sub_21BD36474@<X0>(uint64_t *a1@<X8>)
{
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

uint64_t sub_21BD3657C@<X0>(uint64_t *a1@<X8>)
{
  sub_21BB3A2A4(0, &qword_27CDB7EE8, off_2782F0D00);
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

uint64_t sub_21BD365F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v5 = sub_21BE2870C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21BE2874C();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
  v14 = sub_21BE2925C();
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BB42A18;
  aBlock[3] = v19;
  v16 = _Block_copy(aBlock);
  v17 = v3;

  sub_21BE2872C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21BBE3CE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BB3E288();
  sub_21BE294DC();
  MEMORY[0x21CF04410](0, v13, v9, v16);
  _Block_release(v16);

  (*(v6 + 8))(v9, v5);
  return (*(v10 + 8))(v13, v20);
}

uint64_t sub_21BD368C4@<X0>(uint64_t *a1@<X8>)
{
  sub_21BB3A2A4(0, &qword_27CDB6928, off_2782F0B80);
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

uint64_t sub_21BD3693C(uint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  sub_21BB3A2A4(0, a2, a3);
  sub_21BB3CC48(a4, a2, a3);
  sub_21BE26C0C();
  sub_21BE26C4C();
}

uint64_t sub_21BD36AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BE2783C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_21BE2784C();
}

uint64_t sub_21BD36B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21BE2783C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_21BE2784C();
}

uint64_t sub_21BD36C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2946C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t View.fa_availableIf(condition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v29 = a3;
  v30 = a4;
  v6 = a1;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = sub_21BE2946C();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v28 - v20;
  if (v6)
  {
    v22 = v4;
    v23 = v11;
    v24 = *(v7 + 16);
    v24(v13, v22, a2);
    v24(v23, v13, a2);
    (*(v7 + 8))(v13, a2);
    (*(v7 + 32))(v19, v23, a2);
    (*(v7 + 56))(v19, 0, 1, a2);
  }

  else
  {
    (*(v7 + 56))(v19, 1, 1, a2);
  }

  v25 = v15[2];
  v25(v21, v19, v14);
  v26 = v15[1];
  v26(v19, v14);
  v31 = v29;
  swift_getWitnessTable();
  v25(v30, v21, v14);
  return (v26)(v21, v14);
}

uint64_t View.fa_if<A>(_:transform:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a7;
  v44 = a6;
  v37 = a3;
  v38 = a2;
  v40 = a1;
  v39 = *(a4 - 8);
  v11 = *(v39 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v37 - v16;
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v15);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v37 - v24;
  v42 = sub_21BE2785C();
  v26 = *(v42 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v42);
  v29 = &v37 - v28;
  if (v40)
  {
    v38(v41);
    v30 = v19[2];
    v30(v25, v23, a5);
    v41 = a8;
    v31 = v19[1];
    v31(v23, a5);
    v30(v23, v25, a5);
    sub_21BD36AA0(v23, a5);
    v31(v23, a5);
    v31(v25, a5);
    a8 = v41;
  }

  else
  {
    v32 = v39;
    v33 = *(v39 + 16);
    v33(v17, v41, a4);
    v33(v14, v17, a4);
    sub_21BD36B98(v14, a5, a4);
    v34 = *(v32 + 8);
    v34(v14, a4);
    v34(v17, a4);
  }

  v45 = v43;
  v46 = v44;
  v35 = v42;
  swift_getWitnessTable();
  (*(v26 + 16))(a8, v29, v35);
  return (*(v26 + 8))(v29, v35);
}

id AgeRangeSharingViewController.__allocating_init(ageRangeAccountProtocol:presentAsModal:)(uint64_t a1, char a2)
{
  swift_getObjectType();

  return sub_21BD38478(a1, a2);
}

id AgeRangeSharingViewController.init(ageRangeAccountProtocol:presentAsModal:)(uint64_t a1, char a2)
{
  swift_getObjectType();

  return sub_21BD384D0(a1, a2, v2);
}

id sub_21BD37498()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for AgeRangeSharingViewController();
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC14FamilyCircleUI29AgeRangeSharingViewController_underlyingHostingController];
  [v0 addChildViewController_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = result;
  [v3 addSubview_];

  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21BE397B0;
  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  v8 = [result topAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = result;
  v10 = [result topAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v6 + 32) = v11;
  result = [v1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = result;
  v13 = [result bottomAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v15 = [result bottomAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v6 + 40) = v16;
  result = [v1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = result;
  v18 = [result leadingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = result;
  v20 = [result leadingAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v6 + 48) = v21;
  result = [v1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = result;
  v23 = [result trailingAnchor];

  result = [v0 view];
  if (result)
  {
    v24 = result;
    v25 = objc_opt_self();
    v26 = [v24 trailingAnchor];

    v27 = [v23 constraintEqualToAnchor_];
    *(v6 + 56) = v27;
    sub_21BC47284();
    v28 = sub_21BE28C1C();

    [v25 activateConstraints_];

    return [v1 didMoveToParentViewController_];
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_21BD378F4(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for AgeRangeSharingViewController();
  v14.receiver = v1;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, sel_viewWillAppear_, a1 & 1);
  v8 = sub_21BE28DAC();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_21BE28D7C();
  v9 = v1;
  v10 = sub_21BE28D6C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_21BBA932C(0, 0, v6, &unk_21BE451D8, v11);
}

uint64_t sub_21BD37A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = *(*(sub_21BE25D6C() - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v6 = sub_21BE26A4C();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_21BE28D7C();
  v4[9] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  v4[10] = v10;
  v4[11] = v9;

  return MEMORY[0x2822009F8](sub_21BD37B5C, v10, v9);
}

uint64_t sub_21BD37B5C()
{
  v0[12] = *(v0[4] + OBJC_IVAR____TtC14FamilyCircleUI29AgeRangeSharingViewController_ageRangeSharingViewModel);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_21BD37BFC;

  return sub_21BCF8840();
}

uint64_t sub_21BD37BFC()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21BD37D1C, v4, v3);
}

uint64_t sub_21BD37D1C()
{
  v1 = v0[12];
  swift_getKeyPath();
  v0[2] = v1;
  sub_21BD38860(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  if (*(v1 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding) == 1)
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_21BD37E94;
    v3 = v0[12];
    v4 = v0[4];

    return sub_21BCF7F00(v4);
  }

  else
  {
    v6 = v0[9];

    v7 = v0[8];
    v8 = v0[5];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_21BD37E94(int a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 112);
  v9 = *v2;
  *(v4 + 128) = a1;
  *(v4 + 120) = a2;

  v6 = *(v3 + 88);
  v7 = *(v3 + 80);

  return MEMORY[0x2822009F8](sub_21BD37FC0, v7, v6);
}

uint64_t sub_21BD37FC0()
{
  v27 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 72);

  v3 = *(v0 + 120);
  if (!v1)
  {
    v4 = *(v0 + 64);
    sub_21BE2614C();
    v3 = v3;
    v5 = sub_21BE26A2C();
    v6 = sub_21BE28FFC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 120);
      v8 = *(v0 + 56);
      v25 = *(v0 + 64);
      v9 = *(v0 + 48);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      *v10 = 136315138;
      *(v0 + 24) = v7;
      v12 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD08, &unk_21BE45250);
      v13 = sub_21BE28A5C();
      v15 = sub_21BB3D81C(v13, v14, &v26);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_21BB35000, v5, v6, "iOS - AgeRangeSharingViewController - ageRangeGlobalState unknown, error: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x21CF05C50](v11, -1, -1);
      MEMORY[0x21CF05C50](v10, -1, -1);

      (*(v8 + 8))(v25, v9);
    }

    else
    {
      v17 = *(v0 + 56);
      v16 = *(v0 + 64);
      v18 = *(v0 + 48);

      (*(v17 + 8))(v16, v18);
    }

    v19 = *(v0 + 96);
    v20 = *(v0 + 40);
    sub_21BE25D5C();
    sub_21BCF6314(v20);
  }

  v21 = *(v0 + 64);
  v22 = *(v0 + 40);

  v23 = *(v0 + 8);

  return v23();
}

id AgeRangeSharingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_21BE289CC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AgeRangeSharingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AgeRangeSharingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21BD38478(uint64_t a1, char a2)
{
  v4 = objc_allocWithZone(type metadata accessor for AgeRangeSharingViewController());

  return sub_21BD384D0(a1, a2, v4);
}

id sub_21BD384D0(uint64_t a1, char a2, _BYTE *a3)
{
  v6 = type metadata accessor for AgeRangeSharingView();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  a3[OBJC_IVAR____TtC14FamilyCircleUI29AgeRangeSharingViewController_presentAsModal] = a2;
  v13 = [objc_allocWithZone(MEMORY[0x277D08210]) init];
  v14 = type metadata accessor for AgeRangeSharingViewModel();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *&a3[OBJC_IVAR____TtC14FamilyCircleUI29AgeRangeSharingViewController_ageRangeSharingViewModel] = sub_21BCFE038(v13, a1, v17);

  sub_21BCB3920(v18, a2, v12);
  sub_21BCBC8BC(v12, v10);
  sub_21BD38860(&qword_27CDB93A0, type metadata accessor for AgeRangeSharingView);
  v25 = sub_21BE2852C();
  v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5778, &qword_21BE4F700));
  *&a3[OBJC_IVAR____TtC14FamilyCircleUI29AgeRangeSharingViewController_underlyingHostingController] = sub_21BE2774C();
  v20 = type metadata accessor for AgeRangeSharingViewController();
  v24.receiver = a3;
  v24.super_class = v20;
  v21 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, 0, 0);
  sub_21BCBD884(v12);
  return v21;
}

uint64_t sub_21BD386CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BD37A3C(a1, v4, v5, v6);
}

uint64_t sub_21BD387AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BD37A3C(a1, v4, v5, v6);
}

uint64_t sub_21BD38860(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BD388A8()
{
  v1 = sub_21BE25D1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = [v6 invitationDate];
  if (v7)
  {
    v8 = v7;
    sub_21BE25CDC();

    (*(v2 + 8))(v5, v1);
  }

  v9 = [v6 memberTypeDisplayString];
  if (v9)
  {
    v10 = v9;
    v11 = sub_21BE28A0C();

    return v11;
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BD38A24()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21BD38A80(uint64_t *a1, int a2)
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

uint64_t sub_21BD38AC8(uint64_t result, int a2, int a3)
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

uint64_t sub_21BD38B3C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD10, &qword_21BE45350);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD18, &qword_21BE45358);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD20, &qword_21BE45360);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27[-v15];
  *v6 = sub_21BE275DC();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD28, &unk_21BE45368);
  sub_21BD38DD0(v1, &v6[*(v17 + 44)]);
  sub_21BE286AC();
  sub_21BE2725C();
  sub_21BBB7D84(v6, v11, &qword_27CDBAD10, &qword_21BE45350);
  v18 = &v11[*(v8 + 44)];
  v19 = v36;
  v18[4] = v35;
  v18[5] = v19;
  v18[6] = v37;
  v20 = v32;
  *v18 = v31;
  v18[1] = v20;
  v21 = v34;
  v18[2] = v33;
  v18[3] = v21;
  v29 = *(v1 + 8);
  v30 = *(v1 + 24);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  MEMORY[0x21CF036E0](&v28, v22);
  v23 = v28;
  KeyPath = swift_getKeyPath();
  sub_21BBB7D84(v11, v16, &qword_27CDBAD18, &qword_21BE45358);
  v25 = &v16[*(v13 + 44)];
  *v25 = (v23 & 1) == 0;
  *(v25 + 1) = KeyPath;
  v25[16] = 0;
  return sub_21BBB7D84(v16, a1, &qword_27CDBAD20, &qword_21BE45360);
}

void sub_21BD38DD0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD30, &qword_21BE453A8);
  v4 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v6 = &v44 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD38, &unk_21BE453B0);
  v7 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v9 = &v44 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF0, &unk_21BE33810);
  v10 = *(*(v44 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v44);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD40, &qword_21BE453C0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v54 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v52 = &v44 - v20;
  v21 = qword_27CDB4E58;
  v53 = *(*a1 + 16);
  if (v21 != -1)
  {
    swift_once();
  }

  v47 = byte_27CDD41B0;
  sub_21BBDAF04();
  sub_21BC2ACA4();
  v50 = sub_21BE2727C();
  v48 = v22;
  v55 = sub_21BE2771C();
  LOBYTE(v59) = 1;
  sub_21BD394F4(a1, v68);
  *&v67[7] = v68[0];
  *&v67[23] = v68[1];
  *&v67[39] = v68[2];
  *&v67[55] = v68[3];
  v45 = v59;
  v46 = sub_21BD397A8();
  v59 = *(a1 + 8);
  v60 = *(a1 + 24);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  MEMORY[0x21CF036E0](&v56, v23);
  if (v56 == 1)
  {
    sub_21BE26EEC();
    *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF8, &unk_21BE38C60) + 36)] = 257;
    v24 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E00, &unk_21BE33820) + 36)];
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
    v26 = *MEMORY[0x277CDF438];
    v27 = sub_21BE26E7C();
    (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
    *v24 = swift_getKeyPath();
    sub_21BE286BC();
    sub_21BE26F2C();
    v28 = &v15[*(v44 + 36)];
    v29 = v68[5];
    *v28 = v68[4];
    *(v28 + 1) = v29;
    *(v28 + 2) = v68[6];
    sub_21BBA3854(v15, v13, &qword_27CDB5DF0, &unk_21BE33810);
    *v9 = 0;
    v9[8] = 1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD60, &qword_21BE45410);
    sub_21BBA3854(v13, &v9[*(v30 + 48)], &qword_27CDB5DF0, &unk_21BE33810);
    sub_21BB3A4CC(v13, &qword_27CDB5DF0, &unk_21BE33810);
    sub_21BBA3854(v9, v6, &qword_27CDBAD38, &unk_21BE453B0);
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDBAD48, &qword_27CDBAD38, &unk_21BE453B0);
    v31 = v52;
    sub_21BE2784C();
    sub_21BB3A4CC(v9, &qword_27CDBAD38, &unk_21BE453B0);
    sub_21BB3A4CC(v15, &qword_27CDB5DF0, &unk_21BE33810);
  }

  else
  {
    *v6 = 0;
    v6[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDBAD48, &qword_27CDBAD38, &unk_21BE453B0);
    v31 = v52;
    sub_21BE2784C();
  }

  if (v47)
  {
    v32 = 40.0;
  }

  else
  {
    v32 = 38.0;
  }

  v33 = v54;
  sub_21BBA3854(v31, v54, &qword_27CDBAD40, &qword_21BE453C0);
  *a2 = v32;
  v34 = v53;
  v35 = v50;
  *(a2 + 8) = v53;
  *(a2 + 16) = v35;
  *(a2 + 24) = v48;
  v56 = v55;
  v36 = v45;
  LOBYTE(v57[0]) = v45;
  *(v57 + 1) = *v67;
  *(&v57[1] + 1) = *&v67[16];
  *(&v57[2] + 1) = *&v67[32];
  *(&v57[3] + 1) = *&v67[48];
  v57[4] = *&v67[63];
  v37 = v46;
  v58 = v46;
  *(a2 + 128) = v46;
  v38 = v57[4];
  *(a2 + 96) = v57[3];
  *(a2 + 112) = v38;
  v39 = v57[0];
  *(a2 + 32) = v56;
  *(a2 + 48) = v39;
  v40 = v57[2];
  *(a2 + 64) = v57[1];
  *(a2 + 80) = v40;
  *(a2 + 136) = 0;
  *(a2 + 144) = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD50, &qword_21BE453C8);
  sub_21BBA3854(v33, a2 + *(v41 + 80), &qword_27CDBAD40, &qword_21BE453C0);
  v42 = v35;
  v43 = v34;
  sub_21BBA3854(&v56, &v59, &qword_27CDBAD58, &unk_21BE453D0);
  sub_21BB3A4CC(v31, &qword_27CDBAD40, &qword_21BE453C0);
  sub_21BB3A4CC(v33, &qword_27CDBAD40, &qword_21BE453C0);
  v62 = *&v67[16];
  v63 = *&v67[32];
  *v64 = *&v67[48];
  v59 = v55;
  v60 = v36;
  v61 = *v67;
  *&v64[15] = *&v67[63];
  v65 = 0;
  v66 = v37;
  sub_21BB3A4CC(&v59, &qword_27CDBAD58, &unk_21BE453D0);
}

uint64_t sub_21BD394F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = [v3 fullName];
  if (v4 || (v4 = [v3 inviteEmail]) != 0)
  {
    v5 = v4;
    sub_21BE28A0C();
  }

  sub_21BB41FA4();
  v6 = sub_21BE27DBC();
  v8 = v7;
  v10 = v9;
  sub_21BE2832C();
  v11 = sub_21BE27D4C();
  v34 = v12;
  v35 = v11;
  v33 = v13;
  v36 = v14;

  sub_21BBC7C7C(v6, v8, v10 & 1);

  sub_21BD388A8();
  v15 = sub_21BE27DBC();
  v17 = v16;
  v19 = v18;
  sub_21BE27BEC();
  v20 = sub_21BE27D9C();
  v22 = v21;
  v24 = v23;

  sub_21BBC7C7C(v15, v17, v19 & 1);

  sub_21BE2833C();
  v25 = sub_21BE27D4C();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_21BBC7C7C(v20, v22, v24 & 1);

  *a2 = v35;
  *(a2 + 8) = v34;
  *(a2 + 16) = v33 & 1;
  *(a2 + 24) = v36;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  *(a2 + 48) = v29 & 1;
  *(a2 + 56) = v31;
  sub_21BBA4A38(v35, v34, v33 & 1);

  sub_21BBA4A38(v25, v27, v29 & 1);

  sub_21BBC7C7C(v25, v27, v29 & 1);

  sub_21BBC7C7C(v35, v34, v33 & 1);
}

uint64_t sub_21BD3976C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_21BD38B3C(a1);
}

BOOL sub_21BD397A8()
{
  v0 = sub_21BE2626C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BE25FCC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x277D07F18], v5);
  v10 = MEMORY[0x21CF01150](v9);
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v11 = v15;
  if (!v15)
  {
    return 0;
  }

  sub_21BE2909C();
  v12 = sub_21BE2625C();

  (*(v1 + 8))(v4, v0);
  return v12 > 0;
}

unint64_t sub_21BD399EC()
{
  result = qword_27CDBAD68;
  if (!qword_27CDBAD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBAD70, qword_21BE45460);
    sub_21BD39A78();
    sub_21BBDD54C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBAD68);
  }

  return result;
}

unint64_t sub_21BD39A78()
{
  result = qword_27CDBAD78;
  if (!qword_27CDBAD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBAD20, &qword_21BE45360);
    sub_21BD39B04();
    sub_21BBDD1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBAD78);
  }

  return result;
}

unint64_t sub_21BD39B04()
{
  result = qword_27CDBAD80;
  if (!qword_27CDBAD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBAD18, &qword_21BE45358);
    sub_21BB3B038(&qword_27CDBAD88, &qword_27CDBAD10, &qword_21BE45350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBAD80);
  }

  return result;
}

uint64_t sub_21BD39BBC()
{
  result = sub_21BE2828C();
  qword_27CDD4308 = result;
  return result;
}

uint64_t type metadata accessor for MemberDetailsSubscriptionWrapper()
{
  result = qword_27CDBAD90;
  if (!qword_27CDBAD90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD39C50()
{
  sub_21BC97780(319, &qword_27CDB8B60, &unk_27CDB6550, 0x277D08338);
  if (v0 <= 0x3F)
  {
    sub_21BBF088C();
    if (v1 <= 0x3F)
    {
      sub_21BC97780(319, &qword_27CDB8B68, &qword_280BD68F8, 0x277CCABB0);
      if (v2 <= 0x3F)
      {
        sub_21BD39D4C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21BD39D4C()
{
  if (!qword_27CDBADA0)
  {
    v0 = sub_21BE2859C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBADA0);
    }
  }
}

uint64_t sub_21BD39DB8()
{
  v1 = type metadata accessor for MemberDetailsSubscriptionWrapper();
  v2 = v1;
  v3 = *(v0 + *(v1 + 24));
  if (v3)
  {
    v4 = *(v0 + *(v1 + 32));
    if (v4)
    {
      sub_21BB3A2A4(0, &qword_27CDB6730, 0x277D82BB8);
      v5 = v3;
      v6 = v4;
      if (sub_21BE2940C())
      {
        type metadata accessor for ConfirmChildAgeViewModel();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v8 = [objc_opt_self() bundleForClass_];
        v9 = sub_21BE2599C();

        return v9;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21BE32770;
  v12 = (v0 + *(v2 + 28));
  v14 = *v12;
  v13 = v12[1];
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_21BBBEFE8();
  *(v11 + 32) = v14;
  *(v11 + 40) = v13;
  type metadata accessor for ConfirmChildAgeViewModel();
  v15 = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();

  v17 = [v16 bundleForClass_];
  sub_21BE2599C();

  v18 = sub_21BE289DC();

  return v18;
}

uint64_t sub_21BD3A020@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v45 = sub_21BE27A2C();
  v43 = *(v45 - 8);
  v2 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - v6;
  v8 = type metadata accessor for StaticSelectableCellTemplate();
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for MemberDetailsSubscriptionWrapper();
  sub_21BBF0D04(v1 + v12[5], v7);
  v13 = v12[9];
  swift_unknownObjectWeakLoadStrong();
  v14 = sub_21BD39DB8();
  v40 = v15;
  v41 = v14;
  v16 = *(v1 + v12[6]);
  if (v16)
  {
    v39 = [v16 integerValue];
  }

  else
  {
    v39 = 0;
  }

  v17 = (v1 + v12[10]);
  v18 = *v17;
  v19 = v17[1];
  LOBYTE(v17) = *(v17 + 16);
  v49 = v18;
  v50 = v19;
  v51 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v20 = v46;
  v21 = v47;
  v22 = v48;
  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  *v11 = 0xD000000000000011;
  v11[1] = 0x800000021BE55910;
  sub_21BC438F8(v7, v11 + v8[5]);
  *(v11 + v8[6]) = 1;
  v23 = v8[7];
  swift_unknownObjectWeakInit();

  swift_unknownObjectRelease();
  v24 = (v11 + v8[8]);
  v25 = v40;
  *v24 = v41;
  v24[1] = v25;
  v26 = v11 + v8[9];
  *v26 = v39;
  v26[8] = v16 == 0;
  v27 = (v11 + v8[10]);
  *v27 = 0;
  v27[1] = 0;
  v28 = v11 + v8[11];
  *v28 = v20;
  *(v28 + 1) = v21;
  v28[16] = v22;
  v29 = (v11 + v8[12]);
  *v29 = 0;
  v29[1] = 0;
  *(v11 + v8[13]) = 0;
  *(v11 + v8[14]) = 6;
  v30 = (v11 + v8[15]);
  type metadata accessor for ServicesStore();
  sub_21BD3A4A4(&qword_27CDB5750, type metadata accessor for ServicesStore);
  *v30 = sub_21BE270CC();
  v30[1] = v31;
  *(v11 + v8[16]) = 0;
  v32 = v11 + v8[17];
  LOBYTE(v46) = 0;
  sub_21BE283EC();
  v33 = v50;
  *v32 = v49;
  *(v32 + 1) = v33;
  v34 = v8[18];
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  v35 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_27CDB4EE0 != -1)
  {
    swift_once();
  }

  sub_21BE2935C();

  v36 = v42;
  sub_21BE27A0C();
  sub_21BD3A4A4(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate);
  sub_21BE2805C();
  (*(v43 + 8))(v36, v45);
  return sub_21BC5E088(v11);
}

uint64_t sub_21BD3A4A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BD3A4EC()
{
  sub_21BC0A610();
  sub_21BE2755C();
  return v1;
}

void *sub_21BD3A54C(void *a1)
{
  v1 = [a1 me];
  if (v1)
  {
    v2 = v1;
    if ([v1 isOrganizer])
    {
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v4 = [objc_opt_self() bundleForClass_];
      sub_21BE2599C();

      v5 = sub_21BE28B8C();
      return v5;
    }
  }

  result = sub_21BE2911C();
  if (result)
  {
    v7 = result;
    v8 = [result shortName];
    if (v8)
    {
      v9 = v8;
      v10 = sub_21BE28A0C();
      v12 = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_21BE33260;
      v14 = MEMORY[0x277D837D0];
      *(v13 + 56) = MEMORY[0x277D837D0];
      v15 = sub_21BBBEFE8();
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 64) = v15;
      *(v13 + 72) = v10;
      *(v13 + 80) = v12;
      type metadata accessor for ConfirmChildAgeViewModel();
      v16 = swift_getObjCClassFromMetadata();
      v17 = objc_opt_self();

      v18 = [v17 bundleForClass_];
      sub_21BE2599C();

      v19 = sub_21BE289DC();

      return v19;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_21BD3A7F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBADB8, &qword_21BE45658);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBADE0, &qword_21BE45678);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v12 = sub_21BD3A54C(a1);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v34 = ObjCClassFromMetadata;
    v17 = objc_opt_self();
    v18 = [v17 bundleForClass_];
    v19 = sub_21BE2599C();
    v35 = a2;
    v20 = v19;
    v21 = v4;
    v23 = v22;

    v37 = v14;
    v38 = v15;
    v39 = v20;
    v40 = v23;
    v41 = 0xD000000000000022;
    v42 = 0x800000021BE5EFD0;
    v43 = 0;
    sub_21BC353D0();
    sub_21BE285EC();
    v24 = &v7[*(v21 + 36)];
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2A0, &qword_21BE33660) + 28);
    v26 = sub_21BE27D7C();
    (*(*(v26 - 8) + 56))(v24 + v25, 1, 1, v26);
    *v24 = swift_getKeyPath();
    v27 = [v17 bundleForClass_];
    v28 = sub_21BE2599C();
    v30 = v29;

    v37 = v28;
    v38 = v30;
    sub_21BD3AED4();
    sub_21BB41FA4();
    sub_21BE27F9C();

    sub_21BB3A4CC(v7, &qword_27CDBADB8, &qword_21BE45658);
    v31 = v35;
    (*(v36 + 32))(v35, v11, v8);
    return (*(v36 + 56))(v31, 0, 1, v8);
  }

  else
  {
    v33 = *(v36 + 56);

    return v33(a2, 1, 1, v8);
  }
}

uint64_t sub_21BD3ABEC()
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6976614E77656976;
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEF6F546465746167;
  *(inited + 48) = 0xD00000000000001BLL;
  *(inited + 56) = 0x800000021BE455B0;

  v1 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(&v3, v1);
}

uint64_t sub_21BD3AD2C@<X0>(uint64_t a1@<X8>)
{
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBADA8, &qword_21BE45650);
  sub_21BD3ADF8();
  sub_21BE27D1C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBADD8, &qword_21BE45670);
  v4 = (a1 + *(result + 36));
  *v4 = sub_21BD3ABEC;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0;
  return result;
}

unint64_t sub_21BD3ADF8()
{
  result = qword_27CDBADB0;
  if (!qword_27CDBADB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBADA8, &qword_21BE45650);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBADB8, &qword_21BE45658);
    sub_21BD3AED4();
    sub_21BB41FA4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBADB0);
  }

  return result;
}

unint64_t sub_21BD3AED4()
{
  result = qword_27CDBADC0;
  if (!qword_27CDBADC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBADB8, &qword_21BE45658);
    sub_21BD3AF8C();
    sub_21BB3B038(&qword_27CDB6D70, &qword_27CDBC2A0, &qword_21BE33660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBADC0);
  }

  return result;
}

unint64_t sub_21BD3AF8C()
{
  result = qword_27CDBADC8;
  if (!qword_27CDBADC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBADD0, &unk_21BE45660);
    sub_21BC353D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBADC8);
  }

  return result;
}

unint64_t sub_21BD3B01C()
{
  result = qword_27CDBADE8;
  if (!qword_27CDBADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBADD8, &qword_21BE45670);
    sub_21BB3B038(&qword_27CDBADF0, &qword_27CDBADF8, qword_21BE456B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBADE8);
  }

  return result;
}

uint64_t sub_21BD3B0D4()
{
  v1 = *(v0 + *(type metadata accessor for AppleCashItemView(0) + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v2 = [v12 profilePictureForFamilyMember:*(v0 + *(type metadata accessor for AppleCashItem(0) + 24)) pictureDiameter:36.0];
  if (v2)
  {
    v3 = v2;
    v4 = sub_21BE25BFC();
    v6 = v5;

    v7 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v8 = sub_21BE25BCC();
    v9 = [v7 initWithData_];

    sub_21BBBEF94(v4, v6);
    if (v9)
    {
      return v9;
    }
  }

  else
  {
  }

  v10 = sub_21BE289CC();
  v9 = [objc_opt_self() systemImageNamed_];

  if (v9)
  {
    return v9;
  }

  result = sub_21BE2978C();
  __break(1u);
  return result;
}

uint64_t sub_21BD3B2A4@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for AppleCashItemView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BD3D434(v1, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppleCashItemView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21BD3D2E8(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11[1] = v8;
  result = sub_21BE283EC();
  v10 = v11[3];
  *a1 = v11[2];
  a1[1] = v10;
  a1[2] = sub_21BD3D34C;
  a1[3] = v7;
  return result;
}

uint64_t sub_21BD3B40C@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a1;
  v74 = a3;
  v4 = type metadata accessor for AppleCashItemView(0);
  v70 = *(v4 - 8);
  v5 = *(v70 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v71 = v6;
  v72 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  v69 = a2;
  if (v7 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v8 = swift_allocObject();
    v66 = xmmword_21BE32770;
    *(v8 + 16) = xmmword_21BE32770;
    v68 = type metadata accessor for AppleCashItem(0);
    v9 = *&a2[*(v68 + 24)];
    v10 = sub_21BE2917C();
    v12 = v11;
    *(v8 + 56) = MEMORY[0x277D837D0];
    v13 = sub_21BBBEFE8();
    *(v8 + 64) = v13;
    *(v8 + 32) = v10;
    *(v8 + 40) = v12;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = objc_opt_self();

    v16 = [v15 &selRef:ObjCClassFromMetadata :? launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
    sub_21BE2599C();

    v17 = sub_21BE289DC();
    v67 = v18;

    v19 = swift_allocObject();
    *(v19 + 16) = v66;
    v20 = sub_21BE2917C();
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = v13;
    *(v19 + 32) = v20;
    *(v19 + 40) = v21;

    v22 = [v15 bundleForClass_];
    sub_21BE2599C();

    v23 = sub_21BE289DC();
    v25 = v24;

    v26 = v69;
    v27 = v72;
    sub_21BD3D434(v69, v72, type metadata accessor for AppleCashItemView);
    v28 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v29 = (v71 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    sub_21BD3D2E8(v27, v30 + v28);
    v31 = v73;
    *(v30 + v29) = v73;
    v32 = v31;
    v33 = sub_21BD3B0D4();
    v92 = v68;
    v93 = sub_21BD3D3EC(&qword_27CDBAE20, type metadata accessor for AppleCashItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v91);
    sub_21BD3D434(v26, boxed_opaque_existential_1, type metadata accessor for AppleCashItem);
    v75 = 1031;
    v76 = 0;
    v77 = &unk_282D86CB8;
    v78 = &unk_282D86CE8;
    v79 = 0;
    v81 = v17;
    v82 = v67;
    v83 = 0;
    v84 = 0;
    v85 = v23;
    v86 = v25;
    sub_21BCE8CF0();
    v94 = sub_21BE2852C();
    v89 = v30;
    v90 = v33;
    v87 = 0;
    v88 = sub_21BD3D61C;
    sub_21BBC7A18(&v81, &v75);
    v80 = 0;
    sub_21BBC24D4();
    sub_21BBC2528();
    sub_21BE2784C();
    return sub_21BBC7A74(&v81);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v36 = swift_allocObject();
    v65 = xmmword_21BE32770;
    *(v36 + 16) = xmmword_21BE32770;
    v68 = type metadata accessor for AppleCashItem(0);
    v37 = *&a2[*(v68 + 24)];
    v38 = sub_21BE2917C();
    v40 = v39;
    *(v36 + 56) = MEMORY[0x277D837D0];
    v41 = sub_21BBBEFE8();
    *(v36 + 64) = v41;
    *(v36 + 32) = v38;
    *(v36 + 40) = v40;
    type metadata accessor for ConfirmChildAgeViewModel();
    v42 = swift_getObjCClassFromMetadata();
    v43 = objc_opt_self();

    v44 = [v43 &selRef:v42 :? launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
    sub_21BE2599C();

    v67 = sub_21BE289DC();
    *&v66 = v45;

    v46 = swift_allocObject();
    *(v46 + 16) = v65;
    v47 = sub_21BE2917C();
    *(v46 + 56) = MEMORY[0x277D837D0];
    *(v46 + 64) = v41;
    *(v46 + 32) = v47;
    *(v46 + 40) = v48;

    v49 = [v43 bundleForClass_];
    sub_21BE2599C();

    v50 = sub_21BE289DC();
    *&v65 = v51;

    v52 = v69;
    v53 = v72;
    sub_21BD3D434(v69, v72, type metadata accessor for AppleCashItemView);
    v54 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v55 = (v71 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    sub_21BD3D2E8(v53, v56 + v54);
    v57 = v73;
    *(v56 + v55) = v73;
    v58 = v57;
    v59 = [v43 bundleForClass_];
    v60 = sub_21BE2599C();
    v62 = v61;

    v63 = sub_21BD3B0D4();
    v92 = v68;
    v93 = sub_21BD3D3EC(&qword_27CDBAE20, type metadata accessor for AppleCashItem);
    v64 = __swift_allocate_boxed_opaque_existential_1(v91);
    sub_21BD3D434(v52, v64, type metadata accessor for AppleCashItem);
    v75 = 1031;
    v76 = 0;
    v77 = &unk_282D86D18;
    v78 = &unk_282D86D48;
    v79 = 0;
    v81 = v67;
    v82 = v66;
    v83 = v50;
    v84 = v65;
    sub_21BCE8CF0();
    v94 = sub_21BE2852C();
    v87 = v56;
    v88 = v60;
    v89 = v62;
    v90 = v63;
    v85 = 0;
    v86 = sub_21BD3D3CC;
    sub_21BBC7968(&v81, &v75);
    v80 = 1;
    sub_21BBC24D4();
    sub_21BBC2528();
    sub_21BE2784C();
    return sub_21BBC79C4(&v81);
  }
}

uint64_t sub_21BD3BCD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AppleCashItemView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  v14 = sub_21BE28DAC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_21BD3D434(a1, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppleCashItemView);
  sub_21BE28D7C();
  v15 = a2;
  v16 = sub_21BE28D6C();
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  sub_21BD3D2E8(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  *(v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_21BBA932C(0, 0, v13, a4, v18);
}

uint64_t sub_21BD3BEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_21BE28D7C();
  v5[4] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_21BD3BF50, v7, v6);
}

uint64_t sub_21BD3BF50()
{
  v1 = v0[2];
  v2 = *(v1 + *(type metadata accessor for AppleCashItemView(0) + 20));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21BC187C4;
  v4 = v0[3];

  return sub_21BD3BFFC(v4);
}

uint64_t sub_21BD3BFFC(uint64_t a1)
{
  v2[79] = v1;
  v2[78] = a1;
  v3 = sub_21BE26A4C();
  v2[80] = v3;
  v4 = *(v3 - 8);
  v2[81] = v4;
  v5 = *(v4 + 64) + 15;
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8) + 64) + 15;
  v2[86] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD3C11C, 0, 0);
}

uint64_t sub_21BD3C11C()
{
  v1 = v0[78];
  if (v1)
  {
    v2 = v0[86];
    v3 = v0[79];
    v4 = objc_allocWithZone(FACircleContext);
    v49 = v1;
    v5 = [v4 initWithEventType_];
    v0[87] = v5;
    v6 = v3 + OBJC_IVAR____TtC14FamilyCircleUI19AppleCashFamilyFlow_item;
    v7 = type metadata accessor for AppleCashItem(0);
    sub_21BBF0D04(v6 + *(v7 + 20), v2);
    v8 = sub_21BE25B9C();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v2, 1, v8);
    v11 = 0;
    if (v10 != 1)
    {
      v12 = v0[86];
      v11 = sub_21BE25B2C();
      (*(v9 + 8))(v12, v8);
    }

    [v5 setUrlForContext_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
    inited = swift_initStackObject();
    *(inited + 32) = 0xD000000000000011;
    *(inited + 16) = xmmword_21BE32770;
    *(inited + 40) = 0x800000021BE55FB0;
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_21BE33260;
    *(v14 + 32) = 0xD000000000000012;
    *(v14 + 40) = 0x800000021BE55FD0;
    v15 = [*(v6 + *(v7 + 24)) dsid];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 integerValue];
    }

    else
    {
      v17 = 1;
    }

    v26 = v0[79];
    v27 = MEMORY[0x277D83B88];
    *(v14 + 48) = v17;
    *(v14 + 72) = v27;
    *(v14 + 80) = 0x6574736575716572;
    *(v14 + 120) = MEMORY[0x277D837D0];
    *(v14 + 88) = 0xE900000000000072;
    *(v14 + 96) = 0x6843796C696D6146;
    *(v14 + 104) = 0xEF7473696C6B6365;
    v28 = sub_21BBB52D8(v14);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57D8, &qword_21BE32860);
    swift_arrayDestroy();
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D28, &unk_21BE45710);
    *(inited + 48) = v28;
    sub_21BBB52D8(inited);
    swift_setDeallocating();
    sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
    v29 = sub_21BE288EC();

    [v5 setAdditionalParameters_];

    v30 = [objc_allocWithZone(FACircleStateController) initWithPresenter_];
    v0[88] = v30;
    v31 = *(v26 + OBJC_IVAR____TtC14FamilyCircleUI19AppleCashFamilyFlow_circleController);
    *(v26 + OBJC_IVAR____TtC14FamilyCircleUI19AppleCashFamilyFlow_circleController) = v30;
    v32 = v30;

    if (v32)
    {
      [v32 setModalPresentationStyle_];
      v0[2] = v0;
      v0[7] = v0 + 76;
      v0[3] = sub_21BD3C77C;
      v33 = swift_continuation_init();
      v0[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5950, &qword_21BE32B20);
      v0[44] = MEMORY[0x277D85DD0];
      v0[45] = 1107296256;
      v0[46] = sub_21BC2D85C;
      v0[47] = &block_descriptor_40;
      v0[48] = v33;
      [v32 performWithContext:v5 completion:v0 + 44];

      return MEMORY[0x282200938](v0 + 2);
    }

    v34 = v0[83];
    sub_21BE261BC();
    v35 = sub_21BE26A2C();
    v36 = sub_21BE28FDC();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[83];
    v39 = v0[81];
    v40 = v0[80];
    if (v37)
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_21BB35000, v35, v36, "No circle controller to present Apple Cash flow", v41, 2u);
      MEMORY[0x21CF05C50](v41, -1, -1);
    }

    else
    {
    }

    (*(v39 + 8))(v38, v40);
  }

  else
  {
    v18 = v0[82];
    sub_21BE261BC();
    v19 = sub_21BE26A2C();
    v20 = sub_21BE28FDC();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[82];
    v23 = v0[81];
    v24 = v0[80];
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_21BB35000, v19, v20, "No navigation controller to present Apple Cash flow", v25, 2u);
      MEMORY[0x21CF05C50](v25, -1, -1);
    }

    (*(v23 + 8))(v22, v24);
  }

  v42 = v0[86];
  v43 = v0[85];
  v44 = v0[84];
  v45 = v0[83];
  v46 = v0[82];

  v47 = v0[1];

  return v47();
}

uint64_t sub_21BD3C77C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BD3C85C, 0, 0);
}

uint64_t sub_21BD3C85C()
{
  v63 = v0;
  v1 = *(v0 + 608);
  *(v0 + 712) = v1;
  v2 = [v1 error];
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 680);
    sub_21BE261BC();
    v5 = v3;
    v6 = sub_21BE26A2C();
    v7 = sub_21BE28FDC();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 680);
    v10 = *(v0 + 648);
    v11 = *(v0 + 640);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v62 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v60 = v9;
      v14 = *(v0 + 552);
      v15 = *(v0 + 560);
      v16 = *(v0 + 568);
      v17 = sub_21BE29A5C();
      v59 = v11;
      v19 = sub_21BB3D81C(v17, v18, &v62);

      *(v12 + 4) = v19;
      _os_log_impl(&dword_21BB35000, v6, v7, "Error loading stateController for family shared services: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x21CF05C50](v13, -1, -1);
      MEMORY[0x21CF05C50](v12, -1, -1);

      (*(v10 + 8))(v60, v59);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }
  }

  v20 = [v1 userInfo];
  if (!v20)
  {
    goto LABEL_14;
  }

  v21 = v20;
  v22 = sub_21BE2890C();

  *(v0 + 576) = 0x6E6F69746361;
  *(v0 + 584) = 0xE600000000000000;
  sub_21BE2958C();
  if (!*(v22 + 16) || (v23 = sub_21BBB31E8(v0 + 480), (v24 & 1) == 0))
  {

    sub_21BBB7238(v0 + 480);
LABEL_14:
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    goto LABEL_15;
  }

  sub_21BB3DCD4(*(v22 + 56) + 32 * v23, v0 + 520);
  sub_21BBB7238(v0 + 480);

  if (!*(v0 + 544))
  {
LABEL_15:
    sub_21BB3A4CC(v0 + 520, &qword_27CDB5940, &unk_21BE32B10);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (*(v0 + 592) != 0xD000000000000012 || 0x800000021BE56510 != *(v0 + 600))
  {
    v45 = *(v0 + 600);
    v46 = sub_21BE2995C();

    if (v46)
    {
      goto LABEL_23;
    }

LABEL_16:
    v26 = v1;
    v27 = *(v0 + 672);
    sub_21BE261BC();
    v28 = sub_21BE26A2C();
    v29 = sub_21BE28FDC();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 704);
    v32 = *(v0 + 696);
    v33 = *(v0 + 672);
    v34 = *(v0 + 648);
    v35 = *(v0 + 640);
    v36 = *(v0 + 624);
    if (v30)
    {
      v61 = *(v0 + 672);
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_21BB35000, v28, v29, "Peerpayment hook not found in response", v37, 2u);
      MEMORY[0x21CF05C50](v37, -1, -1);

      (*(v34 + 8))(v61, v35);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }

    goto LABEL_19;
  }

  v25 = *(v0 + 600);

LABEL_23:
  v47 = v1;
  v48 = *(v0 + 632);
  v49 = [objc_allocWithZone(FAAppleCashPresentationHandler) initWithNavigationController_];
  *(v0 + 720) = v49;
  v50 = *(v48 + OBJC_IVAR____TtC14FamilyCircleUI19AppleCashFamilyFlow_appleCashHandler);
  *(v48 + OBJC_IVAR____TtC14FamilyCircleUI19AppleCashFamilyFlow_appleCashHandler) = v49;
  v51 = v49;

  if (v51)
  {
    v52 = [v47 userInfo];
    if (v52)
    {
      v53 = v52;
      sub_21BE2890C();
    }

    else
    {
      sub_21BBB5D24(MEMORY[0x277D84F90]);
    }

    v57 = sub_21BE288EC();
    *(v0 + 728) = v57;

    *(v0 + 80) = v0;
    *(v0 + 88) = sub_21BD3CE94;
    v58 = swift_continuation_init();
    *(v0 + 472) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5948, &qword_21BE4DE90);
    *(v0 + 416) = MEMORY[0x277D85DD0];
    *(v0 + 424) = 1107296256;
    *(v0 + 432) = sub_21BD44BD8;
    *(v0 + 440) = &block_descriptor_11_0;
    *(v0 + 448) = v58;
    [v51 presentPeerPaymentControllerWithAttributes:v57 completion:v0 + 416];

    return MEMORY[0x282200938](v0 + 80);
  }

  v54 = *(v0 + 704);
  v55 = *(v0 + 696);
  v56 = *(v0 + 624);

LABEL_19:
  v38 = *(v0 + 688);
  v39 = *(v0 + 680);
  v40 = *(v0 + 672);
  v41 = *(v0 + 664);
  v42 = *(v0 + 656);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_21BD3CE94()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BD3CF74, 0, 0);
}

uint64_t sub_21BD3CF74()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v5 = *(v0 + 624);

  v6 = *(v0 + 688);
  v7 = *(v0 + 680);
  v8 = *(v0 + 672);
  v9 = *(v0 + 664);
  v10 = *(v0 + 656);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_21BD3D044()
{
  sub_21BD3D18C(v0 + OBJC_IVAR____TtC14FamilyCircleUI19AppleCashFamilyFlow_item);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21BD3D0F0()
{
  result = type metadata accessor for AppleCashItem(319);
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

uint64_t sub_21BD3D18C(uint64_t a1)
{
  v2 = type metadata accessor for AppleCashItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21BD3D230()
{
  type metadata accessor for AppleCashItem(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppleCashFamilyFlow(319);
    if (v1 <= 0x3F)
    {
      sub_21BC41FE8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21BD3D2E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCashItemView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD3D34C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppleCashItemView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_21BD3B40C(a1, v6, a2);
}

uint64_t sub_21BD3D3EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BD3D434(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_15Tm()
{
  v1 = type metadata accessor for AppleCashItemView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for AppleCashItem(0);
  v6 = v5[5];
  v7 = sub_21BE25B9C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v9 = *(v4 + *(v1 + 20));

  v10 = *(v4 + *(v1 + 24) + 8);

  return swift_deallocObject();
}

uint64_t sub_21BD3D63C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppleCashItemView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_21BD3BCD8(v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

uint64_t sub_21BD3D6DC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppleCashItemView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBB7EB8;

  return sub_21BD3BEB8(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_23Tm()
{
  v1 = type metadata accessor for AppleCashItemView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = type metadata accessor for AppleCashItem(0);
  v7 = v6[5];
  v8 = sub_21BE25B9C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = *(v5 + *(v1 + 20));

  v11 = *(v5 + *(v1 + 24) + 8);

  return swift_deallocObject();
}

uint64_t sub_21BD3D984(uint64_t a1)
{
  v4 = *(type metadata accessor for AppleCashItemView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBA6A64;

  return sub_21BD3BEB8(a1, v6, v7, v1 + v5, v8);
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

uint64_t sub_21BD3DAD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_21BD3DB18(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21BD3DB84()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BD3DC44()
{
  *v0;
  *v0;
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BD3DCF0()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BD3DDAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21BD3F3FC();
  *a2 = result;
  return result;
}

void sub_21BD3DDDC(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE800000000000000;
  v5 = 0x6C6562614C627573;
  if (*v1 != 2)
  {
    v5 = 0x4D746E656D796170;
    v4 = 0xED0000646F687465;
  }

  if (*v1)
  {
    v3 = 0x6C6562616CLL;
    v2 = 0xE500000000000000;
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

uint64_t sub_21BD3DE58()
{
  v1 = 25705;
  v2 = 0x6C6562614C627573;
  if (*v0 != 2)
  {
    v2 = 0x4D746E656D796170;
  }

  if (*v0)
  {
    v1 = 0x6C6562616CLL;
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

uint64_t sub_21BD3DED0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BD3F3FC();
  *a1 = result;
  return result;
}

uint64_t sub_21BD3DF04(uint64_t a1)
{
  v2 = sub_21BD3F784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BD3DF40(uint64_t a1)
{
  v2 = sub_21BD3F784();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BD3DF7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAEA8, &qword_21BE459C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19[-v7 - 8];
  v9 = type metadata accessor for PaymentStackRowRUI.PaymentMethod();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v14 = sub_21BE29B3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  *v12 = v14;
  v12[1] = v15;
  sub_21BB3A35C(a1, v19);
  sub_21BE2878C();
  v17 = sub_21BE287AC();
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  sub_21BBB7D84(v8, v12 + *(v9 + 20), &qword_27CDBAEA8, &qword_21BE459C0);
  sub_21BD3FB50(v12, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_21BD3FBB4(v12);
}

uint64_t sub_21BD3E170@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAE28, &qword_21BE45950);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAE30, &qword_21BE45958);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAE38, &qword_21BE45960);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - v14;
  *v7 = sub_21BE275CC();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAE40, &unk_21BE45968);
  sub_21BD3E550(v2, &v7[*(v16 + 44)]);
  v17 = sub_21BE276FC();
  v18 = &v7[*(v4 + 44)];
  *v18 = v17;
  v18[1] = sub_21BD3F024;
  v18[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EF0, &qword_21BE42450);
  inited = swift_initStackObject();
  v46 = xmmword_21BE33260;
  *(inited + 16) = xmmword_21BE33260;
  v20 = sub_21BE27BAC();
  *(inited + 32) = v20;
  v21 = sub_21BE27BCC();
  *(inited + 33) = v21;
  v22 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v20)
  {
    v22 = sub_21BE27BBC();
  }

  sub_21BE27BBC();
  if (sub_21BE27BBC() != v21)
  {
    v22 = sub_21BE27BBC();
  }

  sub_21BE26E0C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_21BBB7D84(v7, v11, &qword_27CDBAE28, &qword_21BE45950);
  v31 = &v11[*(v8 + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = swift_initStackObject();
  *(v32 + 16) = v46;
  v33 = sub_21BE27B8C();
  *(v32 + 32) = v33;
  v34 = sub_21BE27B9C();
  *(v32 + 33) = v34;
  v35 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v33)
  {
    v35 = sub_21BE27BBC();
  }

  sub_21BE27BBC();
  if (sub_21BE27BBC() != v34)
  {
    v35 = sub_21BE27BBC();
  }

  sub_21BE26E0C();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_21BBB7D84(v11, v15, &qword_27CDBAE30, &qword_21BE45958);
  v44 = &v15[*(v12 + 36)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  sub_21BD3F110(&qword_27CDBAE48, &qword_27CDBAE38, &qword_21BE45960, sub_21BD3F0E0);
  sub_21BE27DFC();
  return sub_21BB3A4CC(v15, &qword_27CDBAE38, &qword_21BE45960);
}

uint64_t sub_21BD3E550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAE70, &qword_21BE45980);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v37 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAE78, &qword_21BE45988);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v18 = sub_21BE2770C();
  v19 = *(*(a1 + 48) + 16);
  v20 = 52.0;
  v21 = (v19 - 1);
  v22 = *(a1 + 56);
  v23 = *(a1 + 64);
  if (v19 <= 1)
  {
    v20 = *(a1 + 56);
  }

  if (v19 <= 2)
  {
    v21 = 1.0;
  }

  *v6 = v18;
  v6[1] = (v23 - v20 * (v23 / v22)) / v21 - v20 * (v23 / v22);
  *(v6 + 16) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAE80, &qword_21BE45990);
  sub_21BD3E8CC(a1, (v6 + *(v24 + 44)));
  sub_21BE2869C();
  sub_21BE26F2C();
  sub_21BBB7D84(v6, v15, &qword_27CDBAE70, &qword_21BE45980);
  v25 = &v15[*(v8 + 44)];
  v26 = *&v48[39];
  *v25 = *&v48[23];
  *(v25 + 1) = v26;
  *(v25 + 2) = *&v48[55];
  sub_21BBB7D84(v15, v17, &qword_27CDBAE78, &qword_21BE45988);
  v27 = sub_21BE2771C();
  LOBYTE(v43[0]) = 1;
  sub_21BD3EE44(a1, v40);
  *&v39[7] = v40[0];
  *&v39[23] = v40[1];
  *&v39[39] = v40[2];
  *&v39[55] = v40[3];
  v28 = v43[0];
  sub_21BBA3854(v17, v12, &qword_27CDBAE78, &qword_21BE45988);
  v29 = v38;
  sub_21BBA3854(v12, v38, &qword_27CDBAE78, &qword_21BE45988);
  v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAE88, &unk_21BE45998) + 48);
  v41[0] = v27;
  v41[1] = 0;
  v42[0] = v28;
  *&v42[1] = *v39;
  *&v42[17] = *&v39[16];
  *&v42[33] = *&v39[32];
  *&v42[49] = *&v39[48];
  v31 = *&v39[63];
  *&v42[64] = *&v39[63];
  v32 = *v42;
  *v30 = v27;
  *(v30 + 16) = v32;
  v33 = *&v42[16];
  v34 = *&v42[32];
  v35 = *&v42[48];
  *(v30 + 80) = v31;
  *(v30 + 48) = v34;
  *(v30 + 64) = v35;
  *(v30 + 32) = v33;
  sub_21BBA3854(v41, v43, &qword_27CDB9550, &qword_21BE3FAA0);
  sub_21BB3A4CC(v17, &qword_27CDBAE78, &qword_21BE45988);
  v43[0] = v27;
  v43[1] = 0;
  v44 = v28;
  v46 = *&v39[16];
  v47 = *&v39[32];
  *v48 = *&v39[48];
  *&v48[15] = *&v39[63];
  v45 = *v39;
  sub_21BB3A4CC(v43, &qword_27CDB9550, &qword_21BE3FAA0);
  return sub_21BB3A4CC(v12, &qword_27CDBAE78, &qword_21BE45988);
}

uint64_t sub_21BD3E8CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v28 = a1;
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAE90, &qword_21BE459A8);
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAE98, &qword_21BE459B0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v28 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  *&v32 = *(a1 + 48);
  v18 = v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAEA0, &qword_21BE459B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAEA8, &qword_21BE459C0);
  sub_21BD3F24C();
  sub_21BD3F2FC();
  sub_21BD3F88C(&qword_27CDBAED8, type metadata accessor for PaymentStackRowRUI.PaymentMethod);
  sub_21BE285CC();
  if (*(v18 + 16) <= 1uLL)
  {
    v19 = *(v28 + 56);
  }

  v20 = *(v28 + 64) / *(v28 + 56);
  sub_21BE2869C();
  sub_21BE26F2C();
  (*(v29 + 32))(v15, v6, v30);
  v21 = &v15[*(v8 + 44)];
  v22 = v33;
  *v21 = v32;
  *(v21 + 1) = v22;
  *(v21 + 2) = v34;
  sub_21BBB7D84(v15, v17, &qword_27CDBAE98, &qword_21BE459B0);
  sub_21BBA3854(v17, v12, &qword_27CDBAE98, &qword_21BE459B0);
  v23 = v31;
  *v31 = 0;
  *(v23 + 8) = 1;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAEE0, &qword_21BE459D0);
  sub_21BBA3854(v12, v24 + *(v25 + 48), &qword_27CDBAE98, &qword_21BE459B0);
  v26 = v24 + *(v25 + 64);
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_21BB3A4CC(v17, &qword_27CDBAE98, &qword_21BE459B0);
  return sub_21BB3A4CC(v12, &qword_27CDBAE98, &qword_21BE459B0);
}

uint64_t sub_21BD3EC28@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAEA8, &qword_21BE459C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_21BE287AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = type metadata accessor for PaymentStackRowRUI.PaymentMethod();
  sub_21BBA3854(a1 + *(v16 + 20), v7, &qword_27CDBAEA8, &qword_21BE459C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21BB3A4CC(v7, &qword_27CDBAEA8, &qword_21BE459C0);
    v17 = 1;
  }

  else
  {
    v18 = *(v9 + 32);
    v18(v15, v7, v8);
    sub_21BE2879C();
    (*(v9 + 8))(v15, v8);
    v18(a2, v13, v8);
    v17 = 0;
  }

  return (*(v9 + 56))(a2, v17, 1, v8);
}

uint64_t sub_21BD3EE44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1[2];
  v32 = a1[3];
  sub_21BB41FA4();

  v4 = sub_21BE27DBC();
  v27 = v5;
  v28 = v4;
  v26 = v6;
  v29 = v7;
  v31 = a1[4];
  v33 = a1[5];

  v8 = sub_21BE27DBC();
  v10 = v9;
  v12 = v11;
  sub_21BE2833C();
  v13 = sub_21BE27D4C();
  v15 = v14;
  v17 = v16;

  sub_21BBC7C7C(v8, v10, v12 & 1);

  sub_21BE27BEC();
  v18 = sub_21BE27D9C();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_21BBC7C7C(v13, v15, v17 & 1);

  *a2 = v28;
  *(a2 + 8) = v27;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v29;
  *(a2 + 32) = v18;
  *(a2 + 40) = v20;
  *(a2 + 48) = v22 & 1;
  *(a2 + 56) = v24;
  sub_21BBA4A38(v28, v27, v26 & 1);

  sub_21BBA4A38(v18, v20, v22 & 1);

  sub_21BBC7C7C(v18, v20, v22 & 1);

  sub_21BBC7C7C(v28, v27, v26 & 1);
}

uint64_t sub_21BD3F02C@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 8);
  v3 = *v1;
  v4 = v1[1];
  return sub_21BD3E170(a1);
}

__n128 sub_21BD3F070@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21BD3F448(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_21BD3F110(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BD3F194()
{
  result = qword_27CDBAE58;
  if (!qword_27CDBAE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBAE28, &qword_21BE45950);
    sub_21BB3B038(&qword_27CDBAE60, &qword_27CDBAE68, &qword_21BE45978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBAE58);
  }

  return result;
}

unint64_t sub_21BD3F24C()
{
  result = qword_27CDBAEB0;
  if (!qword_27CDBAEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBAEA0, &qword_21BE459B8);
    sub_21BB3B038(&qword_27CDBAEB8, &qword_27CDBAEC0, &qword_21BE459C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBAEB0);
  }

  return result;
}

unint64_t sub_21BD3F2FC()
{
  result = qword_27CDBAEC8;
  if (!qword_27CDBAEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBAEA8, &qword_21BE459C0);
    sub_21BD3F88C(&qword_27CDBAED0, MEMORY[0x277D46198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBAEC8);
  }

  return result;
}

uint64_t type metadata accessor for PaymentStackRowRUI.PaymentMethod()
{
  result = qword_27CDBAF08;
  if (!qword_27CDBAF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BD3F3FC()
{
  v0 = sub_21BE2980C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21BD3F448@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAEE8, &qword_21BE459D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v11 = sub_21BE29B3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v14 = v12;
  v31 = a2;
  v32 = v11;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BD3F784();
  sub_21BE29B4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAEC0, &qword_21BE459C8);
  LOBYTE(v33) = 3;
  sub_21BD3F7D8();
  sub_21BE298AC();
  v16 = v37[0];
  LOBYTE(v37[0]) = 1;
  v17 = sub_21BE2986C();
  v19 = v18;
  v30 = v17;
  v39 = 2;
  v20 = sub_21BE2986C();
  v21 = v9;
  v23 = v22;
  (*(v6 + 8))(v21, v5);
  v24 = v32;
  *&v33 = v32;
  *(&v33 + 1) = v14;
  v25 = v30;
  *&v34 = v30;
  *(&v34 + 1) = v19;
  *&v35 = v20;
  *(&v35 + 1) = v23;
  *v36 = v16;
  v29 = xmmword_21BE457F0;
  *&v36[8] = xmmword_21BE457F0;
  sub_21BD3F8D4(&v33, v37);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v37[0] = v24;
  v37[1] = v14;
  v37[2] = v25;
  v37[3] = v19;
  v37[4] = v20;
  v37[5] = v23;
  v37[6] = v16;
  v38 = v29;
  result = sub_21BD3F90C(v37);
  v26 = *v36;
  v27 = v31;
  *(v31 + 32) = v35;
  *(v27 + 48) = v26;
  *(v27 + 64) = *&v36[16];
  v28 = v34;
  *v27 = v33;
  *(v27 + 16) = v28;
  return result;
}

unint64_t sub_21BD3F784()
{
  result = qword_27CDBAEF0;
  if (!qword_27CDBAEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBAEF0);
  }

  return result;
}

unint64_t sub_21BD3F7D8()
{
  result = qword_27CDBAEF8;
  if (!qword_27CDBAEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBAEC0, &qword_21BE459C8);
    sub_21BD3F88C(&qword_27CDBAF00, type metadata accessor for PaymentStackRowRUI.PaymentMethod);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBAEF8);
  }

  return result;
}

uint64_t sub_21BD3F88C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21BD3F974()
{
  sub_21BD3F9F0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21BD3F9F0()
{
  if (!qword_27CDBAF18)
  {
    sub_21BE287AC();
    v0 = sub_21BE2946C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBAF18);
    }
  }
}

unint64_t sub_21BD3FA4C()
{
  result = qword_27CDBAF20;
  if (!qword_27CDBAF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBAF20);
  }

  return result;
}

unint64_t sub_21BD3FAA4()
{
  result = qword_27CDBAF28;
  if (!qword_27CDBAF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBAF28);
  }

  return result;
}

unint64_t sub_21BD3FAFC()
{
  result = qword_27CDBAF30;
  if (!qword_27CDBAF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBAF30);
  }

  return result;
}

uint64_t sub_21BD3FB50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentStackRowRUI.PaymentMethod();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD3FBB4(uint64_t a1)
{
  v2 = type metadata accessor for PaymentStackRowRUI.PaymentMethod();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BD3FC3C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAF38, &unk_21BE4FB40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE374E0;
  *(inited + 32) = 0;
  *(inited + 40) = &unk_282D85088;
  *(inited + 48) = 1;
  *(inited + 56) = &unk_282D850B0;
  *(inited + 64) = 2;
  v3 = MEMORY[0x277D84F90];
  *(inited + 72) = MEMORY[0x277D84F90];
  *(inited + 80) = 3;
  if (*(a1 + 16))
  {
    v4 = sub_21BBB3230(3u);
    if (v5)
    {
      v6 = *(*(a1 + 56) + 8 * v4);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }
  }

  v9 = v3;
  sub_21BDE58DC(&unk_282D850D8);
  *(inited + 88) = v9;
  v7 = sub_21BBB64E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAF40, &unk_21BE45C50);
  swift_arrayDestroy();
  return v7;
}

Swift::Void __swiftcall RemoteUIController.fa_registerFamilyRUIViews()()
{
  sub_21BD3FDF4();
  sub_21BE292DC();

  sub_21BE292DC();
}

unint64_t sub_21BD3FDF4()
{
  result = qword_27CDBAF48;
  if (!qword_27CDBAF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBAF48);
  }

  return result;
}

void sub_21BD3FE48(void *a1)
{
  sub_21BD3FDF4();
  v2 = a1;
  sub_21BE292DC();
  sub_21BE292DC();
}

uint64_t sub_21BD3FF04@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21BE28A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE28A3C();
  v7 = sub_21BE28A1C();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  if (v9 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  if (v9 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = v9;
  }

  sub_21BDF6D70(v16);
  sub_21BBBEF94(v10, v11);
  v12 = sub_21BBB63EC(&unk_282D85218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA378, &qword_21BE43268);
  swift_arrayDestroy();
  v13 = sub_21BBB62CC(&unk_282D85338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA380, &unk_21BE43F30);
  swift_arrayDestroy();
  v15[3] = &type metadata for NewVerificationRules;
  v15[4] = &off_282D927D0;
  v15[0] = v12;
  v15[1] = v13;
  return sub_21BDF5AA8(v16, v15, a1);
}

uint64_t sub_21BD400D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_21BC7F9A8(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_21BBB3108(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_21BC80E88();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_21BC7ECF0(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_21BD401E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_21BB414D0(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_21BC800D4(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_21BB3A4CC(a1, &qword_27CDB5940, &unk_21BE32B10);
    sub_21BC7B790(a2, a3, v10);

    return sub_21BB3A4CC(v10, &qword_27CDB5940, &unk_21BE32B10);
  }

  return result;
}

uint64_t sub_21BD402B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_21BC80370(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_21BBB3108(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_21BC81D54();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_21BC833D8(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void sub_21BD403A8(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_21BC804EC(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }

  else
  {
    v7 = *v2;
    v8 = sub_21BBB322C(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v16 = *v3;
      if (!v12)
      {
        sub_21BC81EC4();
        v13 = v16;
      }

      sub_21BC7F1F4(v10, v13);
      *v3 = v13;
    }

    else
    {
    }
  }
}

uint64_t sub_21BD404AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_21BC80654(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_21BBB3108(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_21BC82024();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_21BC833D8(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_21BD405A4()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2613C();

  v7 = sub_21BE26A2C();
  v8 = sub_21BE28FFC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21BB3D81C(v1[2], v1[3], &v14);
    _os_log_impl(&dword_21BB35000, v7, v8, "%s store reset", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  result = (*(v3 + 8))(v6, v2);
  if (v1[5])
  {
    v12 = v1[5];

    sub_21BE2627C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BD4075C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_21BD4082C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

id static FamilySettingsApplication.shared.getter()
{
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v1 = qword_280BD7CD0;

  return v1;
}

void sub_21BD40910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v28 - v6;
  v8 = *MEMORY[0x277CED1A0];
  if (!*(a2 + 16) || (sub_21BBB322C(*MEMORY[0x277CED1A0]), (v9 & 1) == 0))
  {
    if (qword_280BD83C0 != -1)
    {
      swift_once();
    }

    sub_21BD405A4();
    if (qword_280BD79D8 != -1)
    {
      swift_once();
    }

    sub_21BD405A4();
    if (qword_280BD76F0 != -1)
    {
      swift_once();
    }

    v10 = qword_280BDCB98;
    sub_21BD405A4();
    v11 = *(v10 + qword_280BDCB90);
    *(v10 + qword_280BDCB90) = 0;

    if (qword_280BD7508 != -1)
    {
      swift_once();
    }

    sub_21BD405A4();
    if (qword_280BD6CD0 != -1)
    {
      swift_once();
    }

    sub_21BD405A4();
  }

  if (*(a1 + 16) && (v12 = sub_21BBB322C(v8), (v13 & 1) != 0))
  {
    v14 = *(*(a1 + 56) + 8 * v12);
    v15 = v14;
    if (!*(a2 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v14 = 0;
    if (!*(a2 + 16))
    {
      goto LABEL_21;
    }
  }

  v16 = sub_21BBB322C(v8);
  if (v17)
  {
    v18 = *(*(a2 + 56) + 8 * v16);
    v19 = v18;
    goto LABEL_22;
  }

LABEL_21:
  v18 = 0;
LABEL_22:
  v20 = sub_21BD445D4(v14, v18);

  if ((v20 & 1) == 0)
  {
    if (qword_280BD83C0 != -1)
    {
      swift_once();
    }

    sub_21BD405A4();
    if (qword_280BD79D8 != -1)
    {
      swift_once();
    }

    sub_21BD405A4();
    if (qword_280BD76F0 != -1)
    {
      swift_once();
    }

    v21 = qword_280BDCB98;
    sub_21BD405A4();
    v22 = *(v21 + qword_280BDCB90);
    *(v21 + qword_280BDCB90) = 0;

    if (qword_280BD7508 != -1)
    {
      swift_once();
    }

    sub_21BD405A4();
    if (qword_280BD6CD0 != -1)
    {
      swift_once();
    }

    sub_21BD405A4();
    v23 = sub_21BE28DAC();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    sub_21BE28D7C();
    v24 = v28[1];
    v25 = sub_21BE28D6C();
    v26 = swift_allocObject();
    v27 = MEMORY[0x277D85700];
    v26[2] = v25;
    v26[3] = v27;
    v26[4] = v24;
    sub_21BC54908(0, 0, v7, &unk_21BE45E28, v26);
  }
}

uint64_t sub_21BD40D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_21BE26A4C();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = sub_21BE28D7C();
  v4[12] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  v4[13] = v10;
  v4[14] = v9;

  return MEMORY[0x2822009F8](sub_21BD40EA0, v10, v9);
}

uint64_t sub_21BD40EA0()
{
  v1 = v0[11];
  v0[15] = *(v0[6] + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_checklistRankingConfigStore);
  v0[16] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v0[17] = v3;
  v0[18] = v2;

  return MEMORY[0x2822009F8](sub_21BD40F40, v3, v2);
}

void sub_21BD40F40()
{
  v1 = *(v0[15] + 40);
  v0[19] = v1;
  if (v1)
  {
    v2 = v0[10];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FD0] + 4);
    v7 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v5 = swift_task_alloc();
    v0[20] = v5;
    *v5 = v0;
    v5[1] = sub_21BD41054;
    v6 = v0[10];

    v7(v0 + 2, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BD41054()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 168) = v0;

  sub_21BB3A4CC(v5, &qword_27CDB5790, &qword_21BE32800);

  v7 = *(v2 + 144);
  v8 = *(v2 + 136);
  if (v0)
  {
    v9 = sub_21BD412C4;
  }

  else
  {
    v9 = sub_21BD411E0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21BD411E0()
{
  v1 = v0[16];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[13];
  v5 = v0[14];

  return MEMORY[0x2822009F8](sub_21BD41254, v4, v5);
}

uint64_t sub_21BD41254()
{
  v1 = v0[12];

  v3 = v0[9];
  v2 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21BD412C4()
{
  v1 = v0[16];

  v2 = v0[13];
  v3 = v0[14];

  return MEMORY[0x2822009F8](sub_21BD41328, v2, v3);
}

uint64_t sub_21BD41328()
{
  v1 = v0[21];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  sub_21BE261BC();
  v6 = v1;
  sub_21BC51D50(v1);

  (*(v4 + 8))(v3, v5);
  v8 = v0[9];
  v7 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t sub_21BD4140C()
{
  sub_21BE28D7C();
  *(v0 + 16) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD414A0, v2, v1);
}

uint64_t sub_21BD414A0()
{
  v1 = *(v0 + 16);

  if (qword_280BD7FD8 != -1)
  {
    swift_once();
  }

  sub_21BB3D11C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BD4153C()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BD415E8;

  return sub_21BD41DF4();
}

uint64_t sub_21BD415E8()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_21BE28D0C();
  if (v2)
  {
    v8 = sub_21BD44A18;
  }

  else
  {
    v8 = sub_21BD44A1C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21BD41744()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BD417F0;

  return sub_21BD41A14();
}

uint64_t sub_21BD417F0()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_21BE28D0C();
  if (v2)
  {
    v8 = sub_21BD419B0;
  }

  else
  {
    v8 = sub_21BD4194C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21BD4194C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BD419B0()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_21BD41A14()
{
  v1[8] = v0;
  sub_21BE28D7C();
  v1[9] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](sub_21BD41AAC, v3, v2);
}

uint64_t sub_21BD41AAC()
{
  v1 = *(v0 + 64);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  if (v4 >> 62 == 2 && (v3 | v2) == 0 && v4 == 0x8000000000000000)
  {
    v10 = *(v0 + 64);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 40) = xmmword_21BE3B610;
    *(v0 + 56) = 0x8000000000000000;
    v11 = v10;
    sub_21BE26CBC();
    v12 = swift_task_alloc();
    *(v0 + 96) = v12;
    *v12 = v0;
    v12[1] = sub_21BD41C54;
    v13 = *(v0 + 64);

    return sub_21BD41DF4();
  }

  else
  {
    v7 = *(v0 + 72);
    sub_21BD43B1C(v2, v3, v4);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_21BD41C54()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_21BD41D90;
  }

  else
  {
    v7 = sub_21BBE56CC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21BD41D90()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_21BD41DF4()
{
  v1[34] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = sub_21BE28D7C();
  v1[39] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[40] = v4;
  v1[41] = v3;

  return MEMORY[0x2822009F8](sub_21BD41EE0, v4, v3);
}

uint64_t sub_21BD41EE0()
{
  v1 = *(v0[34] + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_accountStore);
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_21BD42008;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9AC0, &unk_21BE41050);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BD4075C;
  v0[13] = &block_descriptor_41;
  v0[14] = v2;
  [v1 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BD42008()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 336) = v3;
  v4 = *(v1 + 328);
  v5 = *(v1 + 320);
  if (v3)
  {
    v6 = sub_21BD4314C;
  }

  else
  {
    v6 = sub_21BD42138;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BD42138()
{
  v1 = *(v0 + 248);
  *(v0 + 344) = v1;
  if (v1)
  {
    v2 = *(v0 + 272);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 192);
    if (v5 >> 62 == 1)
    {
      v6 = *(v0 + 272);
      v7 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 224) = v3;
      *(v0 + 232) = v4;
      *(v0 + 240) = v7;
      v8 = v6;
      sub_21BE26CBC();
    }

    else
    {
      sub_21BD43B1C(*(v0 + 176), *(v0 + 184), v5);
    }

    if (qword_280BD83C0 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 304);
    *(v0 + 352) = qword_280BDCBF0;
    *(v0 + 360) = sub_21BE28D6C();
    v17 = sub_21BE28D0C();
    *(v0 + 368) = v17;
    *(v0 + 376) = v16;

    return MEMORY[0x2822009F8](sub_21BD42344, v17, v16);
  }

  else
  {
    v9 = *(v0 + 312);

    v11 = *(v0 + 288);
    v10 = *(v0 + 296);
    v12 = *(v0 + 280);

    v13 = *(v0 + 8);

    return v13();
  }
}

void sub_21BD42344()
{
  v1 = *(v0[44] + 40);
  v0[48] = v1;
  if (v1)
  {
    v2 = v0[37];
    v3 = sub_21BE28DAC();
    v0[49] = v3;
    v4 = *(v3 - 8);
    v5 = *(v4 + 56);
    v0[50] = v5;
    v0[51] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v5(v2, 1, 1, v3);
    v6 = *(MEMORY[0x277D07FD0] + 4);
    v9 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v7 = swift_task_alloc();
    v0[52] = v7;
    *v7 = v0;
    v7[1] = sub_21BD42468;
    v8 = v0[37];

    v9(v0 + 32, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BD42468()
{
  v2 = *v1;
  v3 = (*v1)[52];
  v4 = *v1;
  (*v1)[53] = v0;

  v5 = v2[48];
  sub_21BB3A4CC(v2[37], &qword_27CDB5790, &qword_21BE32800);

  v6 = v2[47];
  v7 = v2[46];
  if (v0)
  {
    v8 = sub_21BD42984;
  }

  else
  {
    v8 = sub_21BD425E8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21BD425E8()
{
  v1 = *(v0 + 360);

  v2 = *(v0 + 320);
  v3 = *(v0 + 328);

  return MEMORY[0x2822009F8](sub_21BD42654, v2, v3);
}

uint64_t sub_21BD42654()
{
  if (qword_280BD6CD0 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v0[54] = qword_280BDCB48;
  v0[55] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v0[56] = v3;
  v0[57] = v2;

  return MEMORY[0x2822009F8](sub_21BD4271C, v3, v2);
}

void sub_21BD4271C()
{
  v1 = *(*(v0 + 432) + 40);
  *(v0 + 464) = v1;
  if (v1)
  {
    v2 = *(v0 + 408);
    (*(v0 + 400))(*(v0 + 288), 1, 1, *(v0 + 392));
    v3 = *(MEMORY[0x277D07FF8] + 4);
    v6 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v4 = swift_task_alloc();
    *(v0 + 472) = v4;
    *v4 = v0;
    v4[1] = sub_21BD42804;
    v5 = *(v0 + 288);

    v6(v0 + 144, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BD42804()
{
  v2 = *v1;
  v3 = (*v1)[59];
  v4 = *v1;
  (*v1)[60] = v0;

  v5 = v2[58];
  sub_21BB3A4CC(v2[36], &qword_27CDB5790, &qword_21BE32800);

  v6 = v2[57];
  v7 = v2[56];
  if (v0)
  {
    v8 = sub_21BD42DF4;
  }

  else
  {
    v8 = sub_21BD42A78;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21BD42984()
{
  v1 = v0[45];

  v2 = v0[40];
  v3 = v0[41];

  return MEMORY[0x2822009F8](sub_21BD429E8, v2, v3);
}

uint64_t sub_21BD429E8()
{
  v1 = v0[43];
  v2 = v0[39];

  v3 = v0[53];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];

  v7 = v0[1];

  return v7();
}

uint64_t sub_21BD42A78()
{
  v1 = v0[55];

  v2 = v0[19];

  v3 = v0[21];

  v4 = v0[40];
  v5 = v0[41];

  return MEMORY[0x2822009F8](sub_21BD42AEC, v4, v5);
}

uint64_t sub_21BD42AEC()
{
  v1 = v0[38];
  v0[61] = *(v0[34] + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_familyCircleStore);
  v0[62] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v0[63] = v3;
  v0[64] = v2;

  return MEMORY[0x2822009F8](sub_21BD42B8C, v3, v2);
}

void sub_21BD42B8C()
{
  v1 = *(*(v0 + 488) + 40);
  *(v0 + 520) = v1;
  if (v1)
  {
    v2 = *(v0 + 408);
    (*(v0 + 400))(*(v0 + 280), 1, 1, *(v0 + 392));
    v3 = *(MEMORY[0x277D07FF8] + 4);
    v6 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v4 = swift_task_alloc();
    *(v0 + 528) = v4;
    *v4 = v0;
    v4[1] = sub_21BD42C74;
    v5 = *(v0 + 280);

    v6(v0 + 264, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BD42C74()
{
  v2 = *v1;
  v3 = (*v1)[66];
  v4 = *v1;
  (*v1)[67] = v0;

  v5 = v2[65];
  sub_21BB3A4CC(v2[35], &qword_27CDB5790, &qword_21BE32800);

  v6 = v2[64];
  v7 = v2[63];
  if (v0)
  {
    v8 = sub_21BD43058;
  }

  else
  {
    v8 = sub_21BD42EE8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21BD42DF4()
{
  v1 = v0[55];

  v2 = v0[40];
  v3 = v0[41];

  return MEMORY[0x2822009F8](sub_21BD42E58, v2, v3);
}

uint64_t sub_21BD42E58()
{
  v1 = v0[43];
  v2 = v0[39];

  v3 = v0[60];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];

  v7 = v0[1];

  return v7();
}

uint64_t sub_21BD42EE8()
{
  v1 = v0[62];

  v0[68] = v0[33];
  v2 = v0[40];
  v3 = v0[41];

  return MEMORY[0x2822009F8](sub_21BD42F54, v2, v3);
}

uint64_t sub_21BD42F54()
{
  v1 = v0[68];
  v2 = v0[43];
  v3 = v0[39];
  v4 = v0[34];

  v5 = *&v4[OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_checklistRankingConfigStore];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[25] = v2;
  v0[26] = v1;
  v0[27] = v5 | 0x4000000000000000;
  v6 = v4;

  sub_21BE26CBC();
  v8 = v0[36];
  v7 = v0[37];
  v9 = v0[35];

  v10 = v0[1];

  return v10();
}

uint64_t sub_21BD43058()
{
  v1 = v0[62];

  v2 = v0[40];
  v3 = v0[41];

  return MEMORY[0x2822009F8](sub_21BD430BC, v2, v3);
}

uint64_t sub_21BD430BC()
{
  v1 = v0[43];
  v2 = v0[39];

  v3 = v0[67];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];

  v7 = v0[1];

  return v7();
}

uint64_t sub_21BD4314C()
{
  v1 = v0[42];
  v2 = v0[39];

  swift_willThrow();
  v3 = v0[42];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];

  v7 = v0[1];

  return v7();
}

id FamilySettingsApplication.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilySettingsApplication();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BD4334C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FamilySettingsApplication();
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

unint64_t FamilySettingsApplication.accounts(for:)()
{
  v5 = sub_21BBB62F4(MEMORY[0x277D84F90]);
  v1 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_servicesOwnerManager);
  v2 = *MEMORY[0x277CED1A0];
  sub_21BD403A8([v1 accountForService_], v2);
  v3 = *MEMORY[0x277CED1C0];
  sub_21BD403A8([v1 accountForService_], v3);
  return v5;
}

void sub_21BD43608(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = [objc_opt_self() defaultCenter];
  v7 = v6;
  if (*a3 != -1)
  {
    swift_once();
    v6 = v7;
  }

  [v6 postNotificationName:*a4 object:0 userInfo:0 deliverImmediately:1];
}

id sub_21BD436B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_21BE25B9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BBF0D04(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_21BB3A4CC(v5, &unk_27CDB57F0, &qword_21BE328A0);
  }

  (*(v7 + 32))(v10, v5, v6);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v12 = result;
    v13 = sub_21BE25B2C();
    sub_21BBB52D8(MEMORY[0x277D84F90]);
    v14 = sub_21BE288EC();

    [v12 openSensitiveURL:v13 withOptions:v14];

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_21BD438D0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_21BD43958(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;
  sub_21BD43B7C(v2, v3, v4);
  return sub_21BE26CBC();
}

unint64_t get_enum_tag_for_layout_string_14FamilyCircleUI0A19SettingsApplicationC5StateO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_21BD43A28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 24))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 16) >> 57) >> 5) | (4 * ((*(a1 + 16) >> 57) & 0x18 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21BD43A84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_21BD43AEC(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = xmmword_21BE45C60;
  }

  return result;
}

void *sub_21BD43B1C(void *result, void *a2, unint64_t a3)
{
  if ((a3 >> 62) <= 1)
  {
  }

  return result;
}

void *sub_21BD43B7C(void *result, void *a2, unint64_t a3)
{
  if ((a3 >> 62) <= 1)
  {
    v4 = result;
    v5 = a2;
  }

  return result;
}

void sub_21BD43BDC(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_21BD40910(a1, a2);
}

uint64_t sub_21BD43C4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BD40D70(a1, v4, v5, v6);
}

uint64_t sub_21BD43D00()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBA6A64;

  return sub_21BD4140C();
}

uint64_t sub_21BD43DAC(char a1)
{
  v7 = *MEMORY[0x277D85DE8];
  *(v1 + 56) = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  *(v1 + 40) = swift_task_alloc();
  sub_21BE28D7C();
  *(v1 + 48) = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21BD43EBC, v3, v4);
}

uint64_t sub_21BD43EBC()
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  v3 = objc_opt_self();
  if (v2 == 1)
  {
    *(v0 + 24) = 0;
    v4 = [v3 urlDestinationTo:9 error:v0 + 24];
    v5 = *(v0 + 24);
    if (v4)
    {
      v7 = (v0 + 40);
      v6 = *(v0 + 40);
LABEL_6:
      v9 = v4;
      sub_21BE25B5C();
      v10 = v5;

      v11 = 0;
      goto LABEL_10;
    }

    v12 = v5;
    v13 = sub_21BE25A8C();

    swift_willThrow();
    v7 = (v0 + 40);
  }

  else
  {
    *(v0 + 16) = 0;
    v4 = [v3 urlDestinationTo:1 error:v0 + 16];
    v5 = *(v0 + 16);
    if (v4)
    {
      v7 = (v0 + 32);
      v8 = *(v0 + 32);
      goto LABEL_6;
    }

    v14 = v5;
    v15 = sub_21BE25A8C();

    swift_willThrow();
    v7 = (v0 + 32);
  }

  v11 = 1;
LABEL_10:
  v16 = *v7;
  v18 = *(v0 + 32);
  v17 = *(v0 + 40);
  v19 = sub_21BE25B9C();
  (*(*(v19 - 8) + 56))(v16, v11, 1, v19);
  sub_21BD436B4(v16);
  sub_21BB3A4CC(v16, &unk_27CDB57F0, &qword_21BE328A0);

  v20 = *(v0 + 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20();
}

uint64_t sub_21BD440CC()
{
  v1 = sub_21BE26A4C();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  sub_21BE28D7C();
  v0[5] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v0[6] = v5;
  v0[7] = v4;

  return MEMORY[0x2822009F8](sub_21BD441BC, v5, v4);
}

uint64_t sub_21BD441BC()
{
  v13 = v0;
  v1 = v0[4];
  sub_21BE260FC();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21BB3D81C(0x754F65636E756F62, 0xEB00000000292874, &v12);
    _os_log_impl(&dword_21BB35000, v2, v3, "%s trying to bounce", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_21BD44358;

  return sub_21BD43DAC(1);
}

uint64_t sub_21BD44358()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21BCE9994, v4, v3);
}

uint64_t sub_21BD44478()
{
  v0 = [objc_opt_self() defaultStore];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 aa_primaryAppleAccount];
    if (v2)
    {
      v3 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFC8, &qword_21BE45E48);
      inited = swift_initStackObject();
      v5 = MEMORY[0x277CED1A0];
      *(inited + 16) = xmmword_21BE32770;
      v6 = *v5;
      *(inited + 32) = v6;
      *(inited + 40) = v3;
      v7 = v6;
      v8 = sub_21BBB62F4(inited);
      swift_setDeallocating();
      sub_21BB3A4CC(inited + 32, &qword_27CDBAFD0, &qword_21BE45E50);
    }

    else
    {
      v8 = sub_21BBB62F4(MEMORY[0x277D84F90]);
    }

    return v8;
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

unint64_t sub_21BD445D4(unint64_t a1, unint64_t a2)
{
  result = (a1 | a2) == 0;
  if (a1 && a2)
  {
    v4 = a2;
    v5 = a1;
    result = [v5 accountType];
    if (result)
    {
      v6 = result;
      v7 = [result identifier];

      if (v7)
      {
        v8 = sub_21BE28A0C();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0;
      }

      result = [v4 accountType];
      if (result)
      {
        v11 = result;
        v12 = [result identifier];

        v31 = v8;
        v34 = v10;
        if (v12)
        {
          v30 = sub_21BE28A0C();
          v14 = v13;
        }

        else
        {
          v30 = 0;
          v14 = 0;
        }

        v15 = [v5 aa_isPrimaryEmailVerified];
        v16 = [v4 aa_isPrimaryEmailVerified];
        v17 = [v5 aa_needsToVerifyTerms];
        v18 = [v4 aa_needsToVerifyTerms];
        v33 = sub_21BE2943C();
        v32 = sub_21BE2943C();
        v19 = [v5 accountType];
        v20 = [v4 accountType];
        v29 = [v5 aa_isCloudSubscriber];
        v21 = [v4 aa_isCloudSubscriber];
        if (v15 != v16 || (v22 = v19, v17 != v18))
        {

LABEL_14:

          return 0;
        }

        if (v14)
        {
          if (!v34)
          {

            goto LABEL_27;
          }

          v23 = v21;
          if (v30 == v31 && v14 == v34)
          {

            v21 = v23;
          }

          else
          {
            v24 = sub_21BE2995C();

            v21 = v23;
            if ((v24 & 1) == 0)
            {
              goto LABEL_27;
            }
          }
        }

        else if (v34)
        {

          goto LABEL_14;
        }

        v25 = v20;
        if ((v33 & 1) == (v32 & 1))
        {
          if (v19)
          {
            if (!v20)
            {

              goto LABEL_28;
            }

            v26 = v21;
            sub_21BB3A2A4(0, &qword_280BD6990, 0x277CB8F58);
            v27 = v22;
            v28 = sub_21BE2940C();

            if ((v28 & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            v26 = v21;

            if (v20)
            {

              return 0;
            }
          }

          return v29 ^ v26 ^ 1;
        }

LABEL_27:

LABEL_28:
        return 0;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21BD4495C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BD4153C();
}

uint64_t type metadata accessor for AppleCashView()
{
  result = qword_27CDBAFD8;
  if (!qword_27CDBAFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD44A94()
{
  sub_21BC08FA8();
  if (v0 <= 0x3F)
  {
    sub_21BB3A2A4(319, &qword_280BD8A40, 0x277D08268);
    if (v1 <= 0x3F)
    {
      sub_21BBF088C();
      if (v2 <= 0x3F)
      {
        sub_21BD44B58();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21BD44B58()
{
  if (!qword_27CDBAFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA108, &unk_21BE42B58);
    v0 = sub_21BE2842C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBAFE8);
    }
  }
}

uint64_t sub_21BD44BD8(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_21BD44C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8408, &unk_21BE3B9A8);
  v3 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v91 = &v80 - v4;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7020, &qword_21BE39520);
  v89 = *(v90 - 8);
  v5 = *(v89 + 64);
  v6 = MEMORY[0x28223BE20](v90);
  v87 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v88 = &v80 - v8;
  v9 = type metadata accessor for AppleCashView();
  v83 = *(v9 - 8);
  v10 = *(v83 + 64);
  MEMORY[0x28223BE20](v9);
  v84 = v11;
  v85 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for CircleStateControllerHostView(0);
  v12 = *(*(v92 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v92);
  v86 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v93 = &v80 - v15;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8410, &qword_21BE3B9B8);
  v16 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v95 = (&v80 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v80 - v20;
  v22 = sub_21BE25B9C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v94 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8418, &qword_21BE3B9C0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  result = MEMORY[0x28223BE20](v26);
  v31 = &v80 - v30;
  v32 = a1;
  v33 = *(a1 + 8);
  if (*(v33 + 40))
  {
    v34 = *(v33 + 40);

    sub_21BE262BC();

    v35 = (*(v27 + 88))(v31, v26);
    v36 = *MEMORY[0x277D07FD8];
    (*(v27 + 8))(v31, v26);
    if (v35 == v36)
    {
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v38 = [objc_opt_self() bundleForClass_];
      v39 = sub_21BE2599C();
      v41 = v40;

      v99 = v39;
      v100 = v41;
      sub_21BB41FA4();
      v42 = sub_21BE27DBC();
      v43 = v95;
      *v95 = v42;
      v43[1] = v44;
      *(v43 + 16) = v45 & 1;
      v43[3] = v46;
      swift_storeEnumTagMultiPayload();
      sub_21BB3B038(&qword_27CDB8440, &qword_27CDB8408, &unk_21BE3B9A8);
      v47 = v98;
      sub_21BE2784C();
      v48 = 0;
LABEL_10:
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8420, &qword_21BE3B9C8);
      return (*(*(v79 - 8) + 56))(v47, v48, 1, v79);
    }

    v49 = v32;
    sub_21BBA3854(v32 + *(v9 + 24), v21, &unk_27CDB57F0, &qword_21BE328A0);
    v50 = v23;
    v51 = v22;
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      sub_21BB3A4CC(v21, &unk_27CDB57F0, &qword_21BE328A0);
    }

    else
    {
      v52 = *(v23 + 32);
      v53 = v94;
      v52(v94, v21, v22);
      v54 = [*(v49 + 16) dsid];
      if (v54)
      {
        v55 = v54;
        v81 = @"FACircleEventTypeSharedService";
        v56 = *(v92 + 20);
        v57 = v93;
        (*(v50 + 16))(&v93[v56], v53, v51);
        (*(v50 + 56))(&v57[v56], 0, 1, v51);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8428, &qword_21BE3B9D0);
        inited = swift_initStackObject();
        v80 = xmmword_21BE32770;
        *(inited + 16) = xmmword_21BE32770;
        *(inited + 32) = 0xD000000000000011;
        *(inited + 40) = 0x800000021BE55FB0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
        v59 = swift_initStackObject();
        v82 = v50;
        v60 = v59;
        *(v59 + 16) = v80;
        *(v59 + 32) = 0xD000000000000012;
        v61 = v59 + 32;
        *(v59 + 40) = 0x800000021BE55FD0;
        *(v59 + 72) = sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
        *(v60 + 48) = v55;
        *&v80 = v81;
        v81 = v55;
        v62 = sub_21BBB52D8(v60);
        swift_setDeallocating();
        sub_21BB3A4CC(v61, &qword_27CDB57D8, &qword_21BE32860);
        *(inited + 48) = v62;
        v63 = sub_21BBB6A70(inited);
        swift_setDeallocating();
        sub_21BB3A4CC(inited + 32, &qword_27CDB8430, &qword_21BE3B9D8);
        v64 = v85;
        sub_21BD46424(v49, v85, type metadata accessor for AppleCashView);
        v65 = (*(v83 + 80) + 16) & ~*(v83 + 80);
        v66 = swift_allocObject();
        sub_21BD460C0(v64, v66 + v65);
        v67 = v57;
        *v57 = v80;
        v68 = v92;
        *&v57[*(v92 + 24)] = v63;
        v69 = &v57[*(v68 + 28)];
        *v69 = &unk_21BE45EE8;
        *(v69 + 1) = v66;
        v70 = v88;
        sub_21BE26EEC();
        v71 = v86;
        sub_21BD46424(v67, v86, type metadata accessor for CircleStateControllerHostView);
        v72 = v89;
        v73 = *(v89 + 16);
        v74 = v87;
        v75 = v90;
        v73(v87, v70, v90);
        v76 = v91;
        sub_21BD46424(v71, v91, type metadata accessor for CircleStateControllerHostView);
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8438, &qword_21BE3B9E0);
        v73((v76 + *(v77 + 48)), v74, v75);
        v78 = *(v72 + 8);
        v78(v74, v75);
        sub_21BC77378(v71);
        sub_21BBA3854(v76, v95, &qword_27CDB8408, &unk_21BE3B9A8);
        swift_storeEnumTagMultiPayload();
        sub_21BB3B038(&qword_27CDB8440, &qword_27CDB8408, &unk_21BE3B9A8);
        v47 = v98;
        sub_21BE2784C();

        sub_21BB3A4CC(v76, &qword_27CDB8408, &unk_21BE3B9A8);
        v78(v70, v75);
        sub_21BC77378(v93);
        (*(v82 + 8))(v94, v51);
        v48 = 0;
        goto LABEL_10;
      }

      (*(v50 + 8))(v53, v22);
    }

    v48 = 1;
    v47 = v98;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BD4571C(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_21BE28D7C();
  v2[3] = sub_21BE28D6C();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_21BBAFDA8;

  return sub_21BD457E0(a1, a2);
}

uint64_t sub_21BD457E0(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  sub_21BE28D7C();
  v3[27] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v3[28] = v5;
  v3[29] = v4;

  return MEMORY[0x2822009F8](sub_21BD4587C, v5, v4);
}

uint64_t sub_21BD4587C()
{
  v1 = [*(v0 + 200) presenter];
  if (!v1 || (v2 = v1, v3 = [v1 navigationController], *(v0 + 240) = v3, v2, !v3))
  {
    v10 = *(v0 + 216);

    goto LABEL_16;
  }

  v4 = [*(v0 + 192) userInfo];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  v6 = sub_21BE2890C();

  *(v0 + 176) = 0x6E6F69746361;
  *(v0 + 184) = 0xE600000000000000;
  sub_21BE2958C();
  if (!*(v6 + 16) || (v7 = sub_21BBB31E8(v0 + 80), (v8 & 1) == 0))
  {

    sub_21BBB7238(v0 + 80);
LABEL_13:
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    goto LABEL_14;
  }

  sub_21BB3DCD4(*(v6 + 56) + 32 * v7, v0 + 144);
  sub_21BBB7238(v0 + 80);

  if (!*(v0 + 168))
  {
LABEL_14:
    v11 = *(v0 + 216);
    sub_21BB3A4CC(v0 + 144, &qword_27CDB5940, &unk_21BE32B10);
LABEL_15:

    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    v24 = *(v0 + 216);
    goto LABEL_15;
  }

  if (*(v0 + 80) != 0xD000000000000012 || 0x800000021BE56510 != *(v0 + 88))
  {
    v14 = *(v0 + 88);
    v15 = sub_21BE2995C();

    if (v15)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v9 = *(v0 + 88);

LABEL_20:
  v16 = *(v0 + 208);
  v17 = [objc_allocWithZone(FAAppleCashPresentationHandler) initWithNavigationController_];
  v18 = (v16 + *(type metadata accessor for AppleCashView() + 28));
  v19 = *v18;
  v20 = v18[1];
  *(v0 + 80) = *v18;
  *(v0 + 88) = v20;
  *(v0 + 144) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFF0, &qword_21BE45EF8);
  sub_21BE2840C();
  *(v0 + 80) = v19;
  *(v0 + 88) = v20;
  sub_21BE283FC();
  v21 = *(v0 + 144);
  *(v0 + 248) = v21;
  if (v21)
  {
    v22 = [*(v0 + 192) userInfo];
    if (v22)
    {
      v23 = v22;
      sub_21BE2890C();
    }

    else
    {
      sub_21BBB5D24(MEMORY[0x277D84F90]);
    }

    v28 = sub_21BE288EC();
    *(v0 + 256) = v28;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21BD45D30;
    v29 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5948, &qword_21BE4DE90);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21BD44BD8;
    *(v0 + 104) = &block_descriptor_42;
    *(v0 + 112) = v29;
    [v21 presentPeerPaymentControllerWithAttributes:v28 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  v25 = *(v0 + 216);

  v26 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EE0 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 240);
  [v26 postNotificationName:qword_27CDB7E90 object:0 userInfo:0 deliverImmediately:1];

LABEL_16:
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_21BD45D30()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BD45E38, v2, v1);
}

uint64_t sub_21BD45E38()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[27];

  v4 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EE0 != -1)
  {
    swift_once();
  }

  v5 = v0[30];
  [v4 postNotificationName:qword_27CDB7E90 object:0 userInfo:0 deliverImmediately:1];

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BD45F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *a2 = sub_21BE2770C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB83F0, &qword_21BE3B978);
  sub_21BD44C0C(v2, a2 + *(v6 + 44));
  sub_21BD46424(v2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppleCashView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_21BD460C0(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB83F8, &qword_21BE3B990) + 36));
  v10 = v9 + *(sub_21BE2701C() + 20);
  sub_21BE28D8C();
  *v9 = &unk_21BE45ED8;
  v9[1] = v8;
  v11 = sub_21BE271CC();
  LOBYTE(v9) = sub_21BE27B7C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8400, &unk_21BE3B998);
  v13 = a2 + *(result + 36);
  *v13 = v11;
  *(v13 + 8) = v9;
  return result;
}

uint64_t sub_21BD460C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCashView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD46124()
{
  v2 = *(type metadata accessor for AppleCashView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BC76B68(v0 + v3);
}

uint64_t objectdestroyTm_21()
{
  v1 = type metadata accessor for AppleCashView();
  v2 = *(*(v1 - 8) + 64);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *(v3 + 8);

  v5 = *(v1 + 24);
  v6 = sub_21BE25B9C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = v3 + *(v1 + 28);

  v9 = *(v8 + 8);

  return swift_deallocObject();
}

uint64_t sub_21BD46344(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppleCashView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BD4571C(a1, a2);
}

uint64_t sub_21BD46424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_21BD4648C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_21BE2762C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB060, &unk_21BE46068);
  v9 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_21BE2599C();
  v14 = v13;

  v35 = v12;
  v36 = v14;
  sub_21BB41FA4();
  v15 = sub_21BE27DBC();
  v17 = v16;
  v35 = v15;
  v36 = v16;
  LOBYTE(v12) = v18 & 1;
  v37 = v18 & 1;
  v38 = v19;
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  sub_21BE295EC();

  strcpy(v34, "Active group: ");
  HIBYTE(v34[1]) = -18;
  MEMORY[0x21CF03CA0](a1, a2);
  sub_21BE2809C();

  sub_21BBC7C7C(v15, v17, v12);

  sub_21BD4AE34(&qword_27CDBB068, &qword_27CDBB060, &unk_21BE46068, sub_21BD4ADE0);
  v20 = v33;
  sub_21BE285EC();
  v21 = v32;
  sub_21BE2761C();
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB078, &qword_21BE46078) + 36);
  (*(v6 + 16))(v20 + v22, v21, v5);
  v23 = *(v6 + 56);
  v24 = v20;
  v23(v20 + v22, 0, 1, v5);
  KeyPath = swift_getKeyPath();
  v26 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB080, &qword_21BE46080) + 36));
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB020, &qword_21BE4F0A0) + 28);
  (*(v6 + 32))(v26 + v27, v21, v5);
  v23(v26 + v27, 0, 1, v5);
  *v26 = KeyPath;
  LOBYTE(KeyPath) = sub_21BE27B8C();
  v28 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB088, &qword_21BE46088) + 36);
  *v28 = KeyPath;
  result = 0.0;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  *(v28 + 40) = 1;
  return result;
}

double sub_21BD4687C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_21BE2762C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB090, &qword_21BE46090);
  v9 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_21BE2599C();
  v14 = v13;

  v36 = v12;
  v37 = v14;
  sub_21BB41FA4();
  v15 = sub_21BE27DBC();
  v17 = v16;
  v36 = v15;
  v37 = v16;
  LOBYTE(v12) = v18 & 1;
  v38 = v18 & 1;
  v39 = v19;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_21BE295EC();

  v34 = 0xD00000000000001ELL;
  v35 = 0x800000021BE5F9D0;
  MEMORY[0x21CF03CA0](a1, a2);
  sub_21BE2809C();

  sub_21BBC7C7C(v15, v17, v12);

  sub_21BD4AE34(&qword_27CDBB098, &qword_27CDBB090, &qword_21BE46090, sub_21BD4AEB8);
  v20 = v33;
  sub_21BE285EC();
  v21 = v32;
  sub_21BE2761C();
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB0A8, &qword_21BE46098) + 36);
  (*(v6 + 16))(v20 + v22, v21, v5);
  v23 = *(v6 + 56);
  v24 = v20;
  v23(v20 + v22, 0, 1, v5);
  KeyPath = swift_getKeyPath();
  v26 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB0B0, &qword_21BE460A0) + 36));
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB020, &qword_21BE4F0A0) + 28);
  (*(v6 + 32))(v26 + v27, v21, v5);
  v23(v26 + v27, 0, 1, v5);
  *v26 = KeyPath;
  LOBYTE(KeyPath) = sub_21BE27B8C();
  v28 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB0B8, &qword_21BE460A8) + 36);
  *v28 = KeyPath;
  result = 0.0;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  *(v28 + 40) = 1;
  return result;
}

uint64_t sub_21BD46C64@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FamilyChecklistView();
  v9 = *(v1 + *(v8 + 36) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v10 = v34;
  if (!v34)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v11 = (v1 + *(v8 + 20));
  if (*v11)
  {
    v12 = *(*v11 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75C0, &qword_21BE382F0);
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = sub_21BE0476C;
    v13[4] = 0;

    v14 = sub_21BBED570(v13);

    if (qword_27CDB4E70 != -1)
    {
      swift_once();
    }

    if ((*(qword_27CDD41D8 + 40) & 0x8000000000000000) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21BE26CAC();

      v18 = v34;
      if (!v34)
      {
        v18 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
      }

      sub_21BC24D94(v18, v14);
    }

    else
    {
      sub_21BE261BC();
      v15 = sub_21BE26A2C();
      v16 = sub_21BE28FFC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_21BB35000, v15, v16, "Session already active", v17, 2u);
        MEMORY[0x21CF05C50](v17, -1, -1);
      }

      (*(v4 + 8))(v7, v3);
    }

    type metadata accessor for FamilyChecklistStore();
    sub_21BD4B0A4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore);
    v19 = sub_21BE2727C();
    v21 = v20;
    if (qword_27CDB4E20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v22 = off_27CDB59A8;
    v23 = qword_280BD79D8;

    if (v23 != -1)
    {
      swift_once();
    }

    v31 = v14;
    type metadata accessor for ChecklistSortingRules();

    sub_21BE283EC();
    v24 = v32;
    v25 = v33;
    v31 = v22;
    type metadata accessor for ChecklistUserPreferences();
    sub_21BE283EC();
    v26 = v32;
    v27 = v33;
    type metadata accessor for FamilyCircleStore(0);
    sub_21BD4B0A4(&qword_27CDB5C40, type metadata accessor for FamilyCircleStore);
    result = sub_21BE270CC();
    *a1 = v19;
    a1[1] = v21;
    a1[2] = v24;
    a1[3] = v25;
    a1[4] = v26;
    a1[5] = v27;
    a1[6] = result;
    a1[7] = v29;
  }

  else
  {
    v30 = v11[1];
    type metadata accessor for FamilyChecklistStore();
    sub_21BD4B0A4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore);
    result = sub_21BE2726C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BD4714C()
{
  v0 = sub_21BE25FCC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D07F38], v0);
  MEMORY[0x21CF01150](v4);
  (*(v1 + 8))(v4, v0);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_21BE2599C();

  return v7;
}

uint64_t sub_21BD4730C()
{
  v1 = v0;
  v2 = type metadata accessor for FamilyChecklistView();
  v51 = *(v2 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = v49 - v7;
  v8 = sub_21BE26A4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v49 - v14;
  sub_21BE261BC();
  v16 = sub_21BE26A2C();
  v17 = sub_21BE28FFC();
  v18 = os_log_type_enabled(v16, v17);
  v52 = v9;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v49[1] = v3;
    v20 = v2;
    v21 = v4;
    v22 = v1;
    v23 = v19;
    v24 = swift_slowAlloc();
    v49[0] = v8;
    v25 = v9;
    v26 = v24;
    v54[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE5F9F0, v54);
    _os_log_impl(&dword_21BB35000, v16, v17, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x21CF05C50](v26, -1, -1);
    v27 = v23;
    v1 = v22;
    v4 = v21;
    v2 = v20;
    MEMORY[0x21CF05C50](v27, -1, -1);

    v28 = v25;
    v8 = v49[0];
    v29 = *(v28 + 8);
    v29(v15, v49[0]);
  }

  else
  {

    v29 = *(v9 + 8);
    v29(v15, v8);
  }

  v30 = v1 + *(v2 + 32);
  v31 = *v30;
  v32 = *(v30 + 8);
  LOBYTE(v54[0]) = v31;
  v54[1] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if (v53)
  {
    goto LABEL_7;
  }

  v33 = (v1 + *(v2 + 20));
  if (!*v33)
  {
    goto LABEL_13;
  }

  v34 = *v33;

  v35 = sub_21BE07D30(1);

  if (v35)
  {
LABEL_7:
    sub_21BE261BC();
    v36 = sub_21BE26A2C();
    v37 = sub_21BE28FFC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_21BB35000, v36, v37, "All providers done", v38, 2u);
      MEMORY[0x21CF05C50](v38, -1, -1);
    }

    v29(v13, v8);
  }

  else
  {
    v39 = sub_21BE28DAC();
    v40 = v50;
    (*(*(v39 - 8) + 56))(v50, 1, 1, v39);
    sub_21BD4B2E4(v1, v4, type metadata accessor for FamilyChecklistView);
    sub_21BE28D7C();
    v41 = sub_21BE28D6C();
    v42 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D85700];
    *(v43 + 16) = v41;
    *(v43 + 24) = v44;
    sub_21BD48CF4(v4, v43 + v42);
    sub_21BBA932C(0, 0, v40, &unk_21BE461E0, v43);
  }

  v33 = (v1 + *(v2 + 20));
  if (*v33)
  {
    v45 = *v33;

    v46 = sub_21BE07D30(0);

    return v46 & 1;
  }

LABEL_13:
  v48 = v33[1];
  type metadata accessor for FamilyChecklistStore();
  sub_21BD4B0A4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore);
  result = sub_21BE2726C();
  __break(1u);
  return result;
}

uint64_t sub_21BD47864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for FamilyChecklistView();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = sub_21BE28D7C();
  v4[12] = sub_21BE28D6C();
  v12 = sub_21BE28D0C();
  v4[13] = v12;
  v4[14] = v11;

  return MEMORY[0x2822009F8](sub_21BD479F8, v12, v11);
}

uint64_t sub_21BD479F8()
{
  v1 = v0[10];
  sub_21BE261BC();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "Retrying checklist items", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v9 = v0[2];
  v8 = v0[3];

  (*(v6 + 8))(v5, v7);
  v10 = (v9 + *(v8 + 20));
  v11 = *v10;
  v0[15] = *v10;
  if (v11)
  {

    v12 = swift_task_alloc();
    v0[16] = v12;
    *v12 = v0;
    v12[1] = sub_21BD47BCC;

    return sub_21BE05F3C();
  }

  else
  {
    v14 = v10[1];
    type metadata accessor for FamilyChecklistStore();
    sub_21BD4B0A4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore);

    return sub_21BE2726C();
  }
}

uint64_t sub_21BD47BCC()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 128);
  v5 = *v1;

  v6 = *(v2 + 120);
  if (v0)
  {

    v7 = *(v3 + 104);
    v8 = *(v3 + 112);
    v9 = sub_21BD4B9C0;
  }

  else
  {

    v7 = *(v3 + 104);
    v8 = *(v3 + 112);
    v9 = sub_21BD47D10;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21BD47D10()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[2];

  v9 = sub_21BE28DAC();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_21BD4B2E4(v8, v4, type metadata accessor for FamilyChecklistView);
  v10 = sub_21BE28D6C();
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_21BD48CF4(v4, v12 + v11);
  sub_21BBA932C(0, 0, v5, &unk_21BE461F0, v12);

  v14 = v0[1];

  return v14();
}

uint64_t sub_21BD47E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = type metadata accessor for FamilyChecklistView();
  v4[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v7 = sub_21BE26A4C();
  v4[10] = v7;
  v8 = *(v7 - 8);
  v4[11] = v8;
  v9 = *(v8 + 64) + 15;
  v4[12] = swift_task_alloc();
  sub_21BE28D7C();
  v4[13] = sub_21BE28D6C();
  v11 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD47FA4, v11, v10);
}

uint64_t sub_21BD47FA4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = (v1 + *(v2 + 20));
  v4 = *v3;
  if (*v3)
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 72);
    v8 = *v3;

    v9 = sub_21BE07D30(1);

    v10 = v1 + *(v2 + 32);
    v11 = *v10;
    v12 = *(v10 + 8);
    *(v0 + 16) = v11;
    *(v0 + 24) = v12;
    *(v0 + 112) = v9 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2840C();
    sub_21BE261BC();
    sub_21BD4B2E4(v1, v7, type metadata accessor for FamilyChecklistView);
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FFC();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 72);
    if (v15)
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      v18 = v16 + *(v2 + 32);
      v19 = *v18;
      v20 = *(v18 + 8);
      *(v0 + 32) = v19;
      *(v0 + 40) = v20;
      sub_21BE283FC();
      v21 = *(v0 + 113);
      sub_21BD4B934(v16, type metadata accessor for FamilyChecklistView);
      *(v17 + 4) = v21;
      _os_log_impl(&dword_21BB35000, v13, v14, "Checklist item state: %{BOOL}d", v17, 8u);
      MEMORY[0x21CF05C50](v17, -1, -1);
    }

    else
    {
      sub_21BD4B934(*(v0 + 72), type metadata accessor for FamilyChecklistView);
    }

    v25 = *(v0 + 88);
    v24 = *(v0 + 96);
    v26 = *(v0 + 80);
    v28 = *(v0 + 56);
    v27 = *(v0 + 64);

    (*(v25 + 8))(v24, v26);
    v29 = *(v28 + *(v27 + 36) + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21BE26CAC();

    v30 = *(v0 + 48);
    if (!v30)
    {
      v30 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    type metadata accessor for ChecklistStoreCache();
    swift_allocObject();
    v31 = sub_21BE20540();
    v32 = *(v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75C0, &qword_21BE382F0);
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = sub_21BE0476C;
    v33[4] = 0;

    v34 = sub_21BBED570(v33);

    sub_21BDE5F04(v30, v34);

    v35 = sub_21BE28E8C();
    v36 = sub_21BE1F55C();
    if (v36)
    {
      v37 = v36;
      v43 = v31[2];
      v44 = v31[3];

      MEMORY[0x21CF03CA0](46, 0xE100000000000000);
      MEMORY[0x21CF03CA0](0x746E756F63, 0xE500000000000000);
      v38 = sub_21BE289CC();

      [v37 setValue:v35 forKey:{v38, v43, v44}];

      v35 = v38;
    }

    v39 = *(v0 + 96);
    v40 = *(v0 + 72);

    v41 = sub_21BE1F55C();
    [v41 synchronize];

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v22 = v3[1];
    type metadata accessor for FamilyChecklistStore();
    sub_21BD4B0A4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore);

    return sub_21BE2726C();
  }
}

uint64_t FamilyChecklistView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_21BE2762C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v41 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_21BE2791C();
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v39);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FamilyChecklistView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFF8, &qword_21BE45F00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v38 - v15);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB000, &unk_21BE45F08);
  v17 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v19 = v38 - v18;
  sub_21BD4B2E4(v38[1], v12, type metadata accessor for FamilyChecklistView);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = swift_allocObject();
  sub_21BD48CF4(v12, v21 + v20);
  v22 = *(v13 + 40);
  *(v16 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68C0, &qword_21BE4E940);
  swift_storeEnumTagMultiPayload();
  v23 = *(v13 + 44);
  *(v16 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for NavigationManager();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *v16 = NavigationManager.init(usesNavigationStack:path:)(1, MEMORY[0x277D84F90]);
  v16[1] = 0;
  v16[2] = sub_21BD48D58;
  v16[3] = v21;
  sub_21BE2790C();
  sub_21BB3B038(&qword_27CDBB008, &qword_27CDBAFF8, &qword_21BE45F00);
  v27 = v39;
  sub_21BE2820C();
  (*(v5 + 8))(v8, v27);
  sub_21BB3A4CC(v16, &qword_27CDBAFF8, &qword_21BE45F00);
  v28 = v41;
  sub_21BE2761C();
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB010, &qword_21BE45F88) + 36);
  (*(v2 + 16))(&v19[v29], v28, v1);
  v30 = *(v2 + 56);
  v30(&v19[v29], 0, 1, v1);
  KeyPath = swift_getKeyPath();
  v32 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB018, &unk_21BE45FC0) + 36)];
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB020, &qword_21BE4F0A0) + 28);
  (*(v2 + 32))(v32 + v33, v28, v1);
  v30(v32 + v33, 0, 1, v1);
  *v32 = KeyPath;
  v34 = sub_21BE276FC();
  v35 = &v19[*(v40 + 36)];
  *v35 = v34;
  v35[1] = sub_21BD4A688;
  v35[2] = 0;
  sub_21BE27B6C();
  v36 = [objc_opt_self() currentDevice];
  [v36 userInterfaceIdiom];

  sub_21BD4A978();
  sub_21BE27F0C();
  return sub_21BB3A4CC(v19, &qword_27CDBB000, &unk_21BE45F08);
}

uint64_t type metadata accessor for FamilyChecklistView()
{
  result = qword_27CDBB048;
  if (!qword_27CDBB048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BD48A30()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB0C8, &qword_21BE460B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB0D0, &qword_21BE460C0);
  sub_21BB3B038(&qword_27CDBB0D8, &qword_27CDBB0C8, &qword_21BE460B8);
  sub_21BB3B038(&qword_27CDBB0E0, &qword_27CDBB0C8, &qword_21BE460B8);
  sub_21BB3B038(&qword_27CDBB0E8, &qword_27CDBB0C8, &qword_21BE460B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB0F0, &qword_21BE460C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB0F8, &qword_21BE460D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB100, &qword_21BE460D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB108, &qword_21BE460E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB110, &qword_21BE460E8);
  sub_21BD4AF14();
  swift_getOpaqueTypeConformance2();
  sub_21BB41FA4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21BB3B038(&qword_27CDBB150, &qword_27CDBB0F8, &qword_21BE460D0);
  swift_getOpaqueTypeConformance2();
  sub_21BC177EC();
  return sub_21BE271AC();
}

uint64_t sub_21BD48CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyChecklistView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD48D58()
{
  v0 = *(*(type metadata accessor for FamilyChecklistView() - 8) + 80);

  return sub_21BD48A30();
}

uint64_t sub_21BD48DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_21BE2757C();
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v3);
  v58 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FamilyChecklistView();
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB110, &qword_21BE460E8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB108, &qword_21BE460E0);
  v53 = *(v52 - 8);
  v13 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB100, &qword_21BE460D8);
  v17 = *(v16 - 8);
  v54 = v16;
  v55 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB0F0, &qword_21BE460C8);
  v22 = *(v21 - 8);
  v56 = v21;
  v57 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v51 = &v50 - v24;
  v63 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB158, &unk_21BE46108);
  sub_21BB3B038(&qword_27CDBB160, &qword_27CDBB158, &unk_21BE46108);
  sub_21BE27D1C();
  v25 = a1;
  sub_21BD4B2E4(a1, v8, type metadata accessor for FamilyChecklistView);
  v26 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v27 = swift_allocObject();
  sub_21BD48CF4(v8, v27 + v26);
  v28 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB128, &qword_21BE460F0) + 36)];
  *v28 = 0;
  *(v28 + 1) = 0;
  *(v28 + 2) = sub_21BD4B08C;
  *(v28 + 3) = v27;
  type metadata accessor for NavigationManager();
  sub_21BD4B0A4(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  v29 = sub_21BE26E9C();
  LOBYTE(v26) = v30;
  LOBYTE(v68) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A10, &qword_21BE35CE0);
  sub_21BE283EC();
  v31 = v64;
  v32 = v65;
  v33 = &v12[*(v9 + 36)];
  *v33 = sub_21BD49D24;
  *(v33 + 1) = 0;
  *(v33 + 2) = v29;
  v33[24] = v26 & 1;
  v33[32] = v31;
  *(v33 + 5) = v32;
  v34 = sub_21BD4AF14();
  sub_21BE2804C();
  sub_21BB3A4CC(v12, &qword_27CDBB110, &qword_21BE460E8);
  v64 = sub_21BD4714C();
  v65 = v35;
  v68 = v9;
  v69 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_21BB41FA4();
  v38 = MEMORY[0x277D837D0];
  v39 = v52;
  sub_21BE27F9C();

  v40 = v15;
  v41 = v39;
  (*(v53 + 8))(v40, v39);
  v42 = v58;
  v43 = v59;
  v44 = v60;
  (*(v59 + 104))(v58, *MEMORY[0x277CDDDC0], v60);
  v64 = v41;
  v65 = v38;
  v66 = OpaqueTypeConformance2;
  v67 = v37;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v51;
  v47 = v54;
  sub_21BE280AC();
  (*(v43 + 8))(v42, v44);
  (*(v55 + 8))(v20, v47);
  v62 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB0F8, &qword_21BE460D0);
  v64 = v47;
  v65 = v45;
  swift_getOpaqueTypeConformance2();
  sub_21BB3B038(&qword_27CDBB150, &qword_27CDBB0F8, &qword_21BE460D0);
  v48 = v56;
  sub_21BE2817C();
  return (*(v57 + 8))(v46, v48);
}

uint64_t sub_21BD49518@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB170, &qword_21BE46140);
  v3 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v5 = &v56 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB178, &qword_21BE46148);
  v6 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v60 = &v56 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB180, &qword_21BE46150);
  v8 = *(*(v62 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v62);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v56 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB188, &qword_21BE46158);
  v12 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v14 = (&v56 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB190, &qword_21BE46160);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v64 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v66 = &v56 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB198, &qword_21BE46168);
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v56 - v26;
  type metadata accessor for FamilyNetworkMonitor();
  sub_21BD4B0A4(&qword_27CDBC320, type metadata accessor for FamilyNetworkMonitor);
  v28 = sub_21BE2727C();
  v30 = v29;
  if (sub_21BE2866C())
  {
    v31 = 82.0;
  }

  else
  {
    v31 = 74.0;
  }

  v32 = (a1 + *(type metadata accessor for FamilyChecklistView() + 28));
  v33 = *v32;
  v34 = v32[1];
  v67 = v33;
  v68 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F8, &qword_21BE35CD0);
  sub_21BE2841C();
  v35 = v69;
  v36 = v70;
  *&v69 = v28;
  *(&v69 + 1) = v30;
  *&v70 = 0x4014000000000000;
  *(&v70 + 1) = v31;
  v71 = v35;
  *&v72 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB1A0, &qword_21BE46170);
  sub_21BD4B34C();
  sub_21BE285EC();
  if (sub_21BD4730C())
  {
    sub_21BD46C64(&v69);
    v37 = v70;
    *v14 = v69;
    v14[1] = v37;
    v38 = v72;
    v14[2] = v71;
    v14[3] = v38;
    swift_storeEnumTagMultiPayload();
    sub_21BD4B42C();
    sub_21BD4B480();
    sub_21BE2784C();
  }

  else
  {
    sub_21BE26EEC();
    v39 = &v5[*(v57 + 52)];
    sub_21BE25D5C();
    sub_21BE2869C();
    sub_21BE2725C();
    v40 = v60;
    sub_21BBB7D84(v5, v60, &qword_27CDBB170, &qword_21BE46140);
    v41 = (v40 + *(v58 + 36));
    v42 = v74;
    v41[4] = v73;
    v41[5] = v42;
    v41[6] = v75;
    v43 = v70;
    *v41 = v69;
    v41[1] = v43;
    v44 = v72;
    v41[2] = v71;
    v41[3] = v44;
    v67 = sub_21BE282DC();
    v45 = sub_21BE2852C();
    v46 = v59;
    sub_21BBB7D84(v40, v59, &qword_27CDBB178, &qword_21BE46148);
    *(v46 + *(v62 + 36)) = v45;
    v47 = v61;
    sub_21BBB7D84(v46, v61, &qword_27CDBB180, &qword_21BE46150);
    sub_21BBA3854(v47, v14, &qword_27CDBB180, &qword_21BE46150);
    swift_storeEnumTagMultiPayload();
    sub_21BD4B42C();
    sub_21BD4B480();
    sub_21BE2784C();
    sub_21BB3A4CC(v47, &qword_27CDBB180, &qword_21BE46150);
  }

  v48 = v21[2];
  v48(v25, v27, v20);
  v63 = v27;
  v49 = v25;
  v50 = v66;
  v51 = v64;
  sub_21BBA3854(v66, v64, &qword_27CDBB190, &qword_21BE46160);
  v52 = v65;
  v48(v65, v49, v20);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB1E0, &qword_21BE46180);
  sub_21BBA3854(v51, &v52[*(v53 + 48)], &qword_27CDBB190, &qword_21BE46160);
  sub_21BB3A4CC(v50, &qword_27CDBB190, &qword_21BE46160);
  v54 = v21[1];
  v54(v63, v20);
  sub_21BB3A4CC(v51, &qword_27CDBB190, &qword_21BE46160);
  return (v54)(v49, v20);
}

uint64_t sub_21BD49C70(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for FamilyChecklistView() + 20));
  if (*v1)
  {
    v2 = *v1;

    sub_21BE02DB4();
  }

  else
  {
    v4 = v1[1];
    type metadata accessor for FamilyChecklistStore();
    sub_21BD4B0A4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore);
    result = sub_21BE2726C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BD49D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21BB3A35C(a1, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E8, &unk_21BE3A400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7F20, &unk_21BE46130);
  if (swift_dynamicCast())
  {
    sub_21BB3D104(v14, &v18);
    v3 = v20;
    v4 = v21;
    __swift_project_boxed_opaque_existential_1Tm(&v18, v20);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = *(AssociatedTypeWitness - 8);
    v7 = *(v6 + 64);
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v9 = v14 - v8;
    (*(v4 + 32))(v3, v4);
    swift_getAssociatedConformanceWitness();
    v10 = sub_21BBE7ECC(AssociatedTypeWitness);
    (*(v6 + 8))(v9, AssociatedTypeWitness);
    *&v14[0] = v10;
    BYTE8(v14[0]) = 0;
    sub_21BE2784C();
    v11 = v16;
    v12 = v17;
    result = __swift_destroy_boxed_opaque_existential_0Tm(&v18);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_21BB3A4CC(v14, &qword_27CDB7F28, &qword_21BE3A410);
    v16 = 0;
    v17 = 1;
    result = sub_21BE2784C();
    v11 = v18;
    v12 = v19;
  }

  *a2 = v11;
  *(a2 + 8) = v12;
  return result;
}

uint64_t sub_21BD49F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB168, &qword_21BE46118);
  v3 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v27 - v4;
  v5 = sub_21BE278CC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA270, &unk_21BE46120);
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v27);
  v10 = &v27 - v9;
  v11 = type metadata accessor for FamilyChecklistView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  done = type metadata accessor for DoneBarButton();
  v15 = done - 8;
  v16 = *(*(done - 8) + 64);
  MEMORY[0x28223BE20](done);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2789C();
  sub_21BD4B2E4(a1, &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FamilyChecklistView);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  sub_21BD48CF4(&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v21 = &v18[*(v15 + 28)];
  *v21 = sub_21BD4B250;
  v21[1] = v20;
  sub_21BE278BC();
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA298, &qword_21BE42DB8);
  sub_21BD0A404();
  sub_21BE26EDC();
  v22 = v28;
  v23 = *(v29 + 48);
  sub_21BD4B2E4(v18, v28, type metadata accessor for DoneBarButton);
  v24 = v22 + v23;
  v25 = v27;
  (*(v7 + 16))(v24, v10, v27);
  sub_21BE2772C();
  (*(v7 + 8))(v10, v25);
  return sub_21BD4B934(v18, type metadata accessor for DoneBarButton);
}

uint64_t sub_21BD4A308(uint64_t a1)
{
  v19 = sub_21BE2754C();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v18 - v8);
  v10 = sub_21BE26F5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BBA3854(a1, v9, &unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v15 = *v9;
    sub_21BE28FEC();
    v16 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_21BE26F4C();
  return (*(v11 + 8))(v14, v10);
}

double sub_21BD4A584@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21BD4714C();
  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  v9 = sub_21BE27D8C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_21BBC7C7C(v4, v6, v8 & 1);

  v16 = (a1 + *(type metadata accessor for FamilyChecklistView() + 28));
  v19 = *v16;
  v20 = v16[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F8, &qword_21BE35CD0);
  sub_21BE283FC();
  result = v18;
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = v18;
  return result;
}

uint64_t sub_21BD4A6B4@<X0>(uint64_t *a1@<X8>)
{
  sub_21BB3A35C(v1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E8, &unk_21BE3A400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB1E8, &qword_21BE46288);
  if (swift_dynamicCast())
  {
    sub_21BB3D104(v12, v15);
    v3 = v16;
    v4 = v17;
    __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = *(AssociatedTypeWitness - 8);
    v7 = *(v6 + 64);
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v9 = v12 - v8;
    (*(v4 + 24))(v3, v4);
    swift_getAssociatedConformanceWitness();
    v10 = sub_21BBE7ECC(AssociatedTypeWitness);
    (*(v6 + 8))(v9, AssociatedTypeWitness);
    result = __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    result = sub_21BB3A4CC(v12, &qword_27CDBB1F0, &unk_21BE46290);
    v10 = 0;
  }

  *a1 = v10;
  return result;
}

uint64_t sub_21BD4A8D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB0C0, &qword_21BE460B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  sub_21BBA3854(a1, &v7 - v4, &qword_27CDBB0C0, &qword_21BE460B0);
  return MEMORY[0x21CF02560](v5);
}

unint64_t sub_21BD4A978()
{
  result = qword_27CDBB028;
  if (!qword_27CDBB028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB000, &unk_21BE45F08);
    sub_21BD4AA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB028);
  }

  return result;
}

unint64_t sub_21BD4AA04()
{
  result = qword_27CDBB030;
  if (!qword_27CDBB030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB018, &unk_21BE45FC0);
    sub_21BD4AABC();
    sub_21BB3B038(&unk_27CDBC2D0, &qword_27CDBB020, &qword_21BE4F0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB030);
  }

  return result;
}

unint64_t sub_21BD4AABC()
{
  result = qword_27CDBB038;
  if (!qword_27CDBB038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB010, &qword_21BE45F88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBAFF8, &qword_21BE45F00);
    sub_21BE2791C();
    sub_21BB3B038(&qword_27CDBB008, &qword_27CDBAFF8, &qword_21BE45F00);
    swift_getOpaqueTypeConformance2();
    sub_21BB3B038(&unk_27CDBC2C0, &qword_27CDBB040, &qword_21BE45FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB038);
  }

  return result;
}

void sub_21BD4AC48()
{
  sub_21BB40410();
  if (v0 <= 0x3F)
  {
    sub_21BC41F08();
    if (v1 <= 0x3F)
    {
      sub_21BD4AD4C();
      if (v2 <= 0x3F)
      {
        sub_21BC09314(319, &qword_27CDB6958);
        if (v3 <= 0x3F)
        {
          sub_21BC09314(319, &qword_280BD6A00);
          if (v4 <= 0x3F)
          {
            sub_21BD16028();
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

void sub_21BD4AD4C()
{
  if (!qword_27CDBB058)
  {
    type metadata accessor for FamilyNetworkMonitor();
    sub_21BD4B0A4(&qword_27CDBC320, type metadata accessor for FamilyNetworkMonitor);
    v0 = sub_21BE2728C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBB058);
    }
  }
}

unint64_t sub_21BD4ADE0()
{
  result = qword_27CDBB070;
  if (!qword_27CDBB070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB070);
  }

  return result;
}

uint64_t sub_21BD4AE34(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_21BCE1FBC();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BD4AEB8()
{
  result = qword_27CDBB0A0;
  if (!qword_27CDBB0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB0A0);
  }

  return result;
}

unint64_t sub_21BD4AF14()
{
  result = qword_27CDBB118;
  if (!qword_27CDBB118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB110, &qword_21BE460E8);
    sub_21BD4AFCC();
    sub_21BB3B038(&qword_27CDBB140, &qword_27CDBB148, &qword_21BE46100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB118);
  }

  return result;
}

unint64_t sub_21BD4AFCC()
{
  result = qword_27CDBB120;
  if (!qword_27CDBB120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB128, &qword_21BE460F0);
    sub_21BB3B038(&qword_27CDBB130, &qword_27CDBB138, &qword_21BE460F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB120);
  }

  return result;
}

uint64_t sub_21BD4B0A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_22()
{
  v1 = type metadata accessor for FamilyChecklistView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21BE26F5C();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *(v4 + v1[5]);

  v8 = *(v4 + v1[6]);

  v9 = *(v4 + v1[7] + 8);

  v10 = *(v4 + v1[8] + 8);

  v11 = *(v4 + v1[9] + 8);

  return swift_deallocObject();
}

uint64_t sub_21BD4B268(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FamilyChecklistView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21BD4B2E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21BD4B34C()
{
  result = qword_27CDBB1A8;
  if (!qword_27CDBB1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB1A0, &qword_21BE46170);
    sub_21BD4B3D8();
    sub_21BC0ACFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB1A8);
  }

  return result;
}

unint64_t sub_21BD4B3D8()
{
  result = qword_27CDBC290;
  if (!qword_27CDBC290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC290);
  }

  return result;
}

unint64_t sub_21BD4B42C()
{
  result = qword_27CDBB1B0;
  if (!qword_27CDBB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB1B0);
  }

  return result;
}

unint64_t sub_21BD4B480()
{
  result = qword_27CDBB1B8;
  if (!qword_27CDBB1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB180, &qword_21BE46150);
    sub_21BD4B538();
    sub_21BB3B038(&qword_27CDBB1D0, &qword_27CDBB1D8, &qword_21BE46178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB1B8);
  }

  return result;
}

unint64_t sub_21BD4B538()
{
  result = qword_27CDBB1C0;
  if (!qword_27CDBB1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB178, &qword_21BE46148);
    sub_21BB3B038(&qword_27CDBB1C8, &qword_27CDBB170, &qword_21BE46140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB1C0);
  }

  return result;
}

uint64_t sub_21BD4B5F0(uint64_t a1)
{
  v4 = *(type metadata accessor for FamilyChecklistView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BD47864(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_28Tm()
{
  v1 = type metadata accessor for FamilyChecklistView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE26F5C();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[5]);

  v9 = *(v5 + v1[6]);

  v10 = *(v5 + v1[7] + 8);

  v11 = *(v5 + v1[8] + 8);

  v12 = *(v5 + v1[9] + 8);

  return swift_deallocObject();
}

uint64_t sub_21BD4B844(uint64_t a1)
{
  v4 = *(type metadata accessor for FamilyChecklistView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BD47E80(a1, v6, v7, v1 + v5);
}

uint64_t sub_21BD4B934(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id FACacheImageMarqueeOperation.init(familyCircle:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - v5;
  v7 = [objc_opt_self() mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = [objc_opt_self() defaultManager];
  v11 = [objc_allocWithZone(FAProfilePictureStore) initWithFamilyCircle_];
  v12 = [v10 URLsForDirectory:13 inDomains:1];
  v13 = sub_21BE25B9C();
  v14 = sub_21BE28C3C();

  if (*(v14 + 16))
  {
    v15 = *(v13 - 8);
    (*(v15 + 16))(v6, v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v13);

    (*(v15 + 56))(v6, 0, 1, v13);
    if (qword_280BD8A50 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v17 = sub_21BE289CC();
  v18 = [v16 initWithSuiteName_];

  if (!v18)
  {
    v18 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  }

  v19 = type metadata accessor for FACacheImageMarqueeOperation();
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR___FACacheImageMarqueeOperation_imageExtension];
  *v21 = 6778480;
  *(v21 + 1) = 0xE300000000000000;
  v22 = OBJC_IVAR___FACacheImageMarqueeOperation_pictureStore;
  *&v20[OBJC_IVAR___FACacheImageMarqueeOperation_pictureStore] = 0;
  *&v20[OBJC_IVAR___FACacheImageMarqueeOperation_familyCircle] = a1;
  *&v20[v22] = v11;
  *&v20[OBJC_IVAR___FACacheImageMarqueeOperation_userDefaults] = v18;
  *&v20[OBJC_IVAR___FACacheImageMarqueeOperation_fileManager] = v10;
  sub_21BBA3854(v6, &v20[OBJC_IVAR___FACacheImageMarqueeOperation_rootURL], &unk_27CDB57F0, &qword_21BE328A0);
  *&v20[OBJC_IVAR___FACacheImageMarqueeOperation_deviceScale] = v9;
  v27.receiver = v20;
  v27.super_class = v19;
  v23 = objc_msgSendSuper2(&v27, sel_init);
  sub_21BB3A4CC(v6, &unk_27CDB57F0, &qword_21BE328A0);
  swift_getObjectType();
  v24 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
  v25 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return v23;
}

uint64_t type metadata accessor for FACacheImageMarqueeOperation()
{
  result = qword_280BD6B20;
  if (!qword_280BD6B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BD4BE18(int a1)
{
  v2 = v1;
  v81 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB220, &qword_21BE46358);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = &v68 - v5;
  v6 = sub_21BE26E6C();
  v78 = *(v6 - 8);
  v7 = *(v78 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB228, &qword_21BE46360);
  v10 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v12 = &v68 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB230, &qword_21BE46368);
  v13 = *(*(v76 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v76);
  v77 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v80 = &v68 - v16;
  v82 = sub_21BE26A4C();
  v17 = *(v82 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v82);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v68 - v22;
  sub_21BE260CC();
  v24 = sub_21BE26A2C();
  v25 = sub_21BE28FFC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 67109120;
    *(v26 + 4) = v81 & 1;
    _os_log_impl(&dword_21BB35000, v24, v25, "Request to build mugshot for darkMode: %{BOOL}d", v26, 8u);
    MEMORY[0x21CF05C50](v26, -1, -1);
  }

  v27 = *(v17 + 8);
  v27(v23, v82);
  v28 = *(v2 + OBJC_IVAR___FACacheImageMarqueeOperation_pictureStore);
  if (!v28)
  {
    goto LABEL_11;
  }

  v29 = *(v2 + OBJC_IVAR___FACacheImageMarqueeOperation_familyCircle);
  if (!v29)
  {
    goto LABEL_11;
  }

  v69 = v21;
  v70 = v27;
  v30 = type metadata accessor for FamilyRowMarqueeViewModel();
  v73 = v2;
  v31 = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  v83[3] = v31;
  v83[4] = &off_282D8B0C8;
  v83[0] = v32;
  sub_21BB3A35C(v83, v84);
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BC2ACA4();
  v33 = v28;
  v34 = v29;
  v35 = v33;
  v71 = v34;
  v74 = v32;

  v72 = v35;
  v36 = sub_21BE270CC();
  v38 = v37;
  __swift_destroy_boxed_opaque_existential_0Tm(v83);
  *(&v85 + 1) = v36;
  v86 = v38;
  KeyPath = swift_getKeyPath();
  v40 = v78;
  v41 = *(v78 + 104);
  v42 = MEMORY[0x277CDF3C0];
  if ((v81 & 1) == 0)
  {
    v42 = MEMORY[0x277CDF3D0];
  }

  v43 = *v42;
  v41(v9, v43, v6);
  v44 = &v12[*(v75 + 36)];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB238, &qword_21BE463A0);
  (*(v40 + 32))(v44 + *(v45 + 28), v9, v6);
  *v44 = KeyPath;
  *(v12 + 6) = v86;
  v46 = v85;
  *(v12 + 1) = v84[1];
  *(v12 + 2) = v46;
  *v12 = v84[0];
  v47 = v79;
  v41(v79, v43, v6);
  (*(v40 + 56))(v47, 0, 1, v6);
  v48 = v80;
  sub_21BBB7D84(v47, &v80[*(v76 + 36)], &qword_27CDBB220, &qword_21BE46358);
  sub_21BBB7D84(v12, v48, &qword_27CDBB228, &qword_21BE46360);
  v49 = v77;
  sub_21BBA3854(v48, v77, &qword_27CDBB230, &qword_21BE46368);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB240, &qword_21BE463A8);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  MEMORY[0x21CF02150](v49);
  v53 = *(v73 + OBJC_IVAR___FACacheImageMarqueeOperation_deviceScale);
  sub_21BE26F9C();
  v54 = sub_21BE26F8C();
  if (!v54)
  {
    sub_21BB3A4CC(v48, &qword_27CDBB230, &qword_21BE46368);

    v27 = v70;
    v21 = v69;
LABEL_11:
    sub_21BE260CC();
    v63 = sub_21BE26A2C();
    v64 = sub_21BE28FFC();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = v27;
      v66 = swift_slowAlloc();
      *v66 = 67109120;
      *(v66 + 4) = v81 & 1;
      _os_log_impl(&dword_21BB35000, v63, v64, "Completed mugshot for darkMode: %{BOOL}d", v66, 8u);
      v67 = v66;
      v27 = v65;
      MEMORY[0x21CF05C50](v67, -1, -1);
    }

    v27(v21, v82);
    return 0;
  }

  v55 = v54;
  v56 = v71;
  v57 = v72;
  v58 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  v59 = UIImagePNGRepresentation(v58);
  if (v59)
  {
    v60 = v59;
    v61 = sub_21BE25BFC();

    sub_21BB3A4CC(v48, &qword_27CDBB230, &qword_21BE46368);
    return v61;
  }

  sub_21BB3A4CC(v48, &qword_27CDBB230, &qword_21BE46368);

  return 0;
}

uint64_t sub_21BD4C5D0(uint64_t a1)
{
  v2 = sub_21BE26E6C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21BE272EC();
}

uint64_t sub_21BD4C698()
{
  v83 = *MEMORY[0x277D85DE8];
  v1 = sub_21BE26A4C();
  v76 = *(v1 - 8);
  v2 = *(v76 + 64);
  MEMORY[0x28223BE20](v1);
  v77 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v66 - v6;
  v8 = sub_21BE25B9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v75 = &v66 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v66 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v66 - v19;
  sub_21BBA3854(v0 + OBJC_IVAR___FACacheImageMarqueeOperation_rootURL, v7, &unk_27CDB57F0, &qword_21BE328A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21BB3A4CC(v7, &unk_27CDB57F0, &qword_21BE328A0);
LABEL_29:
    v33 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v21 = *(v9 + 32);
  v74 = v9 + 32;
  v72 = v1;
  v73 = v21;
  v21(v20, v7, v8);
  v22 = v9;
  v23 = v0;
  v24 = *(v0 + OBJC_IVAR___FACacheImageMarqueeOperation_fileManager);
  v25 = sub_21BE25B2C();
  v81 = 0;
  v26 = [v24 contentsOfDirectoryAtURL:v25 includingPropertiesForKeys:0 options:0 error:&v81];

  v27 = v81;
  v66 = v20;
  if (!v26)
  {
    v46 = v20;
    v47 = v81;
    v48 = sub_21BE25A8C();

    swift_willThrow();
    v49 = v77;
    sub_21BE2614C();
    (*(v22 + 16))(v13, v46, v8);
    v50 = v48;
    v51 = sub_21BE26A2C();
    v52 = sub_21BE28FDC();

    v53 = v22;
    if (os_log_type_enabled(v51, v52))
    {
      v54 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v81 = v75;
      *v54 = 136315394;
      v55 = sub_21BE25AFC();
      v57 = v56;
      v58 = *(v53 + 8);
      v58(v13, v8);
      v59 = sub_21BB3D81C(v55, v57, &v81);

      *(v54 + 4) = v59;
      *(v54 + 12) = 2080;
      swift_getErrorValue();
      v60 = sub_21BE29A5C();
      v62 = sub_21BB3D81C(v60, v61, &v81);

      *(v54 + 14) = v62;
      _os_log_impl(&dword_21BB35000, v51, v52, "Error removing images from: %s, error: %s", v54, 0x16u);
      v63 = v75;
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v63, -1, -1);
      MEMORY[0x21CF05C50](v54, -1, -1);

      (*(v76 + 8))(v77, v72);
    }

    else
    {

      v58 = *(v22 + 8);
      v58(v13, v8);
      (*(v76 + 8))(v49, v72);
    }

    v58(v66, v8);
    goto LABEL_29;
  }

  v68 = v22;
  v28 = sub_21BE28C3C();
  v29 = v27;

  v30 = v8;
  v72 = *(v28 + 16);
  if (v72)
  {
    v31 = 0;
    v70 = (v23 + OBJC_IVAR___FACacheImageMarqueeOperation_imageExtension);
    v32 = v68;
    v69 = v68 + 16;
    v67 = (v68 + 8);
    v33 = MEMORY[0x277D84F90];
    v71 = v28;
    while (1)
    {
      if (v31 >= *(v28 + 16))
      {
        __break(1u);
      }

      v77 = ((*(v32 + 80) + 32) & ~*(v32 + 80));
      v76 = *(v32 + 72);
      (*(v32 + 16))(v18, &v77[v28 + v76 * v31], v30);
      if (sub_21BE25AEC() == *v70 && v34 == v70[1])
      {
      }

      else
      {
        v36 = sub_21BE2995C();

        if ((v36 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      v81 = sub_21BE25B1C();
      v82 = v37;
      sub_21BE264AC();
      v78 = sub_21BE2647C();
      v79 = v38;
      sub_21BBBF0E4();
      sub_21BBBF138();
      v39 = sub_21BE2896C();

      v32 = v68;

      if (v39 & 1) != 0 || (v81 = sub_21BE25B1C(), v82 = v40, v78 = sub_21BE2646C(), v79 = v41, v42 = sub_21BE2896C(), , , (v42))
      {
        v73(v75, v18, v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21BC59D74(0, *(v33 + 16) + 1, 1);
          v33 = v80;
        }

        v45 = *(v33 + 16);
        v44 = *(v33 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_21BC59D74(v44 > 1, v45 + 1, 1);
          v33 = v80;
        }

        *(v33 + 16) = v45 + 1;
        v73(&v77[v33 + v45 * v76], v75, v30);
        goto LABEL_7;
      }

LABEL_6:
      (*v67)(v18, v30);
LABEL_7:
      ++v31;
      v28 = v71;
      if (v72 == v31)
      {
        goto LABEL_26;
      }
    }
  }

  v33 = MEMORY[0x277D84F90];
  v32 = v68;
LABEL_26:
  (*(v32 + 8))(v66, v30);

LABEL_30:
  v64 = *MEMORY[0x277D85DE8];
  return v33;
}

id sub_21BD4CE9C()
{
  v1 = sub_21BE25B9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BD4C698();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v2 + 8);
    while (v8 < *(v6 + 16))
    {
      (*(v2 + 16))(v5, v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8, v1);
      sub_21BD4D13C(v5, v0);
      ++v8;
      (*v9)(v5, v1);
      if (v7 == v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);

    result = (*v9)(v5, v1);
    __break(1u);
  }

  else
  {
LABEL_5:

    v10 = *(v0 + OBJC_IVAR___FACacheImageMarqueeOperation_userDefaults);
    sub_21BE264AC();
    sub_21BE2647C();
    v11 = sub_21BE289CC();

    [v10 removeObjectForKey_];

    sub_21BE2646C();
    v12 = sub_21BE289CC();

    [v10 removeObjectForKey_];

    v18 = sub_21BB3A2A4(0, &qword_280BD8A28, 0x277CBEBD0);
    v19 = MEMORY[0x277D08080];
    v17[0] = v10;
    v13 = __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    v14 = v10;
    sub_21BE2649C();
    sub_21BE2920C();

    sub_21BE2648C();
    v15 = *v13;
    sub_21BE2920C();

    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    [v14 synchronize];
    return [objc_opt_self() broadcastFamilyMarqueeChangedNotification];
  }

  return result;
}

id sub_21BD4D13C(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v47 = *MEMORY[0x277D85DE8];
  v3 = sub_21BE25B9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_21BE26A4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v42 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v38[-v13];
  sub_21BE2614C();
  v15 = *(v4 + 16);
  v44 = a1;
  v15(v7, a1, v3);
  v16 = sub_21BE26A2C();
  v17 = sub_21BE28FFC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v41 = v9;
    v19 = v18;
    v40 = swift_slowAlloc();
    v45 = v40;
    *v19 = 136315394;
    *(v19 + 4) = sub_21BB3D81C(0xD000000000000021, 0x800000021BE5FC00, &v45);
    *(v19 + 12) = 2080;
    sub_21BC9B974();
    v20 = sub_21BE2992C();
    v39 = v17;
    v21 = v8;
    v23 = v22;
    (*(v4 + 8))(v7, v3);
    v24 = sub_21BB3D81C(v20, v23, &v45);
    v8 = v21;

    *(v19 + 14) = v24;
    _os_log_impl(&dword_21BB35000, v16, v39, "%s removing Image URL %s ", v19, 0x16u);
    v25 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v25, -1, -1);
    v26 = v19;
    v9 = v41;
    MEMORY[0x21CF05C50](v26, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v27 = *(v9 + 8);
  v27(v14, v8);
  v28 = *(v43 + OBJC_IVAR___FACacheImageMarqueeOperation_fileManager);
  v29 = sub_21BE25B2C();
  v45 = 0;
  v30 = [v28 removeItemAtURL:v29 error:&v45];

  if (v30)
  {
    result = v45;
  }

  else
  {
    v33 = v45;
    v34 = sub_21BE25A8C();

    swift_willThrow();
    v35 = v42;
    sub_21BE2614C();
    v45 = 0;
    v46 = 0xE000000000000000;
    v36 = v34;
    sub_21BE295EC();

    v45 = 0xD000000000000040;
    v46 = 0x800000021BE5FBB0;
    v37 = sub_21BE25AFC();
    MEMORY[0x21CF03CA0](v37);

    MEMORY[0x21CF03CA0](4203808, 0xE300000000000000);
    sub_21BC51D50(v34);

    result = (v27)(v35, v8);
  }

  v32 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_21BD4D5D4(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v58 = a2;
  v67 = *MEMORY[0x277D85DE8];
  v3 = sub_21BE26A4C();
  v60 = *(v3 - 8);
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v52 - v9;
  v11 = sub_21BE25B9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v56 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v52 - v19;
  sub_21BBA3854(v2 + OBJC_IVAR___FACacheImageMarqueeOperation_rootURL, v10, &unk_27CDB57F0, &qword_21BE328A0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21BB3A4CC(v10, &unk_27CDB57F0, &qword_21BE328A0);
LABEL_25:
    result = 0;
    goto LABEL_28;
  }

  v21 = v3;
  v54 = *(v12 + 32);
  v55 = v12 + 32;
  v54(v20, v10, v11);
  v22 = v2;
  v23 = *(v2 + OBJC_IVAR___FACacheImageMarqueeOperation_fileManager);
  v24 = sub_21BE25B2C();
  v65[0] = 0;
  v25 = [v23 contentsOfDirectoryAtURL:v24 includingPropertiesForKeys:0 options:0 error:v65];

  v26 = v65[0];
  v61 = v12;
  v62 = v11;
  if (!v25)
  {
    v43 = v20;
    v44 = v65[0];
    v45 = sub_21BE25A8C();

    swift_willThrow();
    sub_21BE2614C();
    v46 = sub_21BE26A2C();
    v47 = sub_21BE28FDC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_21BB35000, v46, v47, "FACacheImageMarquee Operation checkCache failed", v48, 2u);
      MEMORY[0x21CF05C50](v48, -1, -1);
    }

    (*(v60 + 8))(v6, v21);
    (*(v61 + 8))(v43, v62);
    goto LABEL_25;
  }

  v52 = v20;
  v27 = sub_21BE28C3C();
  v28 = v26;

  v60 = *(v27 + 16);
  if (v60)
  {
    v29 = 0;
    v30 = (v22 + OBJC_IVAR___FACacheImageMarqueeOperation_imageExtension);
    v59 = v61 + 16;
    v53 = (v61 + 8);
    v31 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v29 >= *(v27 + 16))
      {
        __break(1u);
      }

      v32 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v33 = *(v61 + 72);
      (*(v61 + 16))(v18, v27 + v32 + v33 * v29, v11);
      if (sub_21BE25AEC() == *v30 && v34 == v30[1])
      {
      }

      else
      {
        v36 = sub_21BE2995C();

        if ((v36 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      v65[0] = sub_21BE25B1C();
      v65[1] = v37;
      v63 = v57;
      v64 = v58;
      sub_21BBBF0E4();
      sub_21BBBF138();
      v11 = v62;
      v38 = sub_21BE2896C();

      if (v38)
      {
        v54(v56, v18, v11);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21BC59D74(0, *(v31 + 16) + 1, 1);
          v31 = v66;
        }

        v41 = *(v31 + 16);
        v40 = *(v31 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_21BC59D74(v40 > 1, v41 + 1, 1);
          v31 = v66;
        }

        *(v31 + 16) = v41 + 1;
        v42 = v31 + v32 + v41 * v33;
        v11 = v62;
        v54(v42, v56, v62);
        goto LABEL_7;
      }

LABEL_6:
      (*v53)(v18, v11);
LABEL_7:
      if (v60 == ++v29)
      {
        goto LABEL_27;
      }
    }
  }

  v31 = MEMORY[0x277D84F90];
LABEL_27:
  (*(v61 + 8))(v52, v11);

  v50 = *(v31 + 16);

  result = v50 != 0;
LABEL_28:
  v51 = *MEMORY[0x277D85DE8];
  return result;
}