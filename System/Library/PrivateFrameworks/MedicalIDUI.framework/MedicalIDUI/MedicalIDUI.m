uint64_t sub_25878D4B0()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  sub_25878D5AC();
  *v4 = v0;
  v4[1] = sub_25878DBF0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x496C61636964656DLL, 0xED00006174614444, sub_25878D8EC, v2, v5);
}

void sub_25878D5AC()
{
  if (!qword_280C0DE10)
  {
    sub_25878D604();
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0DE10);
    }
  }
}

unint64_t sub_25878D604()
{
  result = qword_280C0DE18;
  if (!qword_280C0DE18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C0DE18);
  }

  return result;
}

void sub_25878D650()
{
  if (!qword_280C0DE30)
  {
    sub_25878D5AC();
    sub_25878D8F4();
    v0 = sub_2588BDA58();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0DE30);
    }
  }
}

void sub_25878D6C0(uint64_t a1, void *a2)
{
  sub_25878D650();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  (*(v6 + 32))(v9 + v8, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_25878DB00;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25878D9F8;
  aBlock[3] = &block_descriptor_4;
  v10 = _Block_copy(aBlock);

  [a2 fetchMedicalIDDataWithCompletion_];
  _Block_release(v10);
}

uint64_t sub_25878D864()
{
  sub_25878D650();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_25878D8F4()
{
  result = qword_280C0DDB0;
  if (!qword_280C0DDB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280C0DDB0);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25878D9F8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_25878DA84(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    sub_25878D650();
    return sub_2588BDA38();
  }

  else
  {
    sub_25878D650();
    v5 = a1;
    return sub_2588BDA48();
  }
}

uint64_t sub_25878DB00(void *a1, void *a2)
{
  sub_25878D650();
  v5 = *(*(v4 - 8) + 80);

  return sub_25878DA84(a1, a2);
}

uint64_t sub_25878DBF0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_258847AC8;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_25878DD0C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25878DD28(void *a1, void *a2)
{
  v5 = type metadata accessor for SuggestedEmergencyContactFetcher.CNContactStoreAuthorizationChecker();
  v6 = swift_allocObject();
  Request = type metadata accessor for SuggestedEmergencyContactFetcher.FamilyCircleFetchRequest();
  v8 = swift_allocObject();
  type metadata accessor for SuggestedEmergencyContactFetcher();
  v9 = swift_allocObject();
  v9[5] = v5;
  v9[6] = &protocol witness table for SuggestedEmergencyContactFetcher.CNContactStoreAuthorizationChecker;
  v9[2] = v6;
  v9[10] = Request;
  v9[11] = &protocol witness table for SuggestedEmergencyContactFetcher.FamilyCircleFetchRequest;
  v9[7] = v8;
  *(v2 + 16) = v9;
  sub_25878E034();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  v11 = MEMORY[0x277D84F90];
  *(v2 + 32) = v10;
  *(v2 + 40) = v11;
  *(v2 + 56) = 0;
  sub_25878E42C(0, &qword_280C0DDB8, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2588C4C00;
  v13 = objc_opt_self();
  *(v12 + 32) = [v13 descriptorForRequiredKeysForStyle_];
  v14 = [v13 descriptorForRequiredKeysForStyle_];
  v15 = *MEMORY[0x277CBCF90];
  *(v12 + 40) = v14;
  *(v12 + 48) = v15;
  v16 = *MEMORY[0x277CBD028];
  v17 = *MEMORY[0x277CBD158];
  *(v12 + 56) = *MEMORY[0x277CBD028];
  *(v12 + 64) = v17;
  v18 = *MEMORY[0x277CBD098];
  v19 = *MEMORY[0x277CBD160];
  *(v12 + 72) = *MEMORY[0x277CBD098];
  *(v12 + 80) = v19;
  *(v12 + 88) = v17;
  *(v2 + 64) = v12;
  *(v2 + 48) = a1;
  *(v2 + 24) = a2;
  v20 = v17;
  v21 = v15;
  v22 = v16;
  v23 = v18;
  v24 = v19;
  v25 = a1;
  v26 = a2;
  sub_25878E4CC();
  return v2;
}

uint64_t MedicalIDEmergencyContactProvider.init(medicalIDStore:healthStore:contactStore:)(void *a1, void *a2, void *a3)
{
  v6 = sub_25878DD28(a2, a3);

  return v6;
}

void sub_25878DFCC()
{
  if (!qword_280C0DE40)
  {
    sub_25878E130(255, &unk_280C0DDF0, 0x277CBDA58);
    v0 = sub_2588BDA08();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0DE40);
    }
  }
}

void sub_25878E034()
{
  if (!qword_280C0DDE0)
  {
    sub_25878E0CC(255, &qword_280C0DE38, sub_25878DFCC, MEMORY[0x277D83D88]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_2588BDE18();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0DDE0);
    }
  }
}

void sub_25878E0CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25878E130(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_25878E1A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25878E1F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25878E240(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25878E290(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25878E2E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_25878E334(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25878E384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_25878E3D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_25878E42C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25878E47C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_25878E4CC()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = *(v4 + 8);

  if (v5(v3, v4))
  {
    v6 = v1[10];
    v7 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v6);
    v8 = swift_allocObject();
    *(v8 + 16) = sub_2587907C8;
    *(v8 + 24) = v2;
    v9 = *(v7 + 8);

    v9(sub_258790798, v8, v6, v7);
  }

  else
  {
    sub_2587907F8();
  }
}

uint64_t sub_25878E604()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_25878E63C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

BOOL sub_25878E6E0()
{
  v1 = *v0;
  v2 = [objc_opt_self() authorizationStatusForEntityType_];
  if (v2 != 3)
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v3 = sub_2588BBC98();
    __swift_project_value_buffer(v3, qword_27F969938);
    v4 = sub_2588BBC78();
    v5 = sub_2588BDBD8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      v8 = sub_2588BE0E8();
      v10 = sub_258790224(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_25878B000, v4, v5, "%s MedicalID is unauthorized for fetching contacts and cannot get family circle contacts", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x259C8DBE0](v7, -1, -1);
      MEMORY[0x259C8DBE0](v6, -1, -1);
    }
  }

  return v2 == 3;
}

void sub_25878E8A8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v5;
  v9[4] = sub_25878FAC0;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_25878D9F8;
  v9[3] = &block_descriptor_5;
  v8 = _Block_copy(v9);

  [v6 startRequestWithCompletionHandler_];
  _Block_release(v8);
}

uint64_t sub_25878E9D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t MedicalIDEmergencyContactProvider.medicalIDEmergencyContacts(for:)(void *a1)
{
  sub_25878EA48(a1);
  swift_beginAccess();
  v2 = *(v1 + 40);
}

void sub_25878EA48(void *a1)
{
  v1 = a1;
  v2 = [a1 emergencyContacts];
  if (v2)
  {
    v3 = v2;
    sub_25878E130(0, &qword_280C0DE00, 0x277CCDDA0);
    v4 = sub_2588BD9B8();

    if (v4 >> 62)
    {
      goto LABEL_25;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      while (1)
      {
        *&v59[0] = MEMORY[0x277D84F90];

        v6 = v59;
        sub_25878F0B0(0, v5 & ~(v5 >> 63), 0);
        if (v5 < 0)
        {
          break;
        }

        v50 = v1;
        v7 = *&v59[0];
        v57 = v4 & 0xC000000000000001;
        v56 = objc_opt_self();
        v8 = 0;
        v52 = v4;
        v53 = v4 & 0xFFFFFFFFFFFFFF8;
        v51 = *MEMORY[0x277CBD098];
        v55 = v5 - 1;
        if ((v4 & 0xC000000000000001) != 0)
        {
LABEL_6:
          v9 = MEMORY[0x259C8CF80](v8, v4);
          goto LABEL_10;
        }

        while ((v8 & 0x8000000000000000) == 0)
        {
          if (v8 >= *(v53 + 16))
          {
            goto LABEL_24;
          }

          v9 = *(v4 + 8 * v8 + 32);
LABEL_10:
          v10 = v9;
          if ([v56 authorizationStatusForEntityType_] == 3 && (v11 = sub_25878F230(v10)) != 0)
          {
            v12 = v11;
            sub_25883FBF8(v10, v11);
            v14 = v13;
            if (v13)
            {
              v15 = v51;
              v16 = v12;
              v17 = sub_2588BD868();

              v14 = [objc_opt_self() contactPropertyWithContact:v16 propertyKey:v15 identifier:v17];

              v4 = v52;
            }

            v18 = [objc_opt_self() emergencyContactWithContact:v12 property:v14];
            v19 = v14;
            v20 = sub_258790C74();
            v21 = [v18 name];
            [v20 setName_];

            v22 = [v18 nameContactIdentifier];
            [v20 setNameContactIdentifier_];

            v23 = [v18 phoneNumberPropertyID];
            [v20 setPhoneNumberPropertyID_];

            v24 = [v18 phoneNumberLabel];
            [v20 setPhoneNumberLabel_];

            v25 = [v18 phoneNumber];
            [v20 setPhoneNumber_];

            v26 = v12;
            MedicalIDEmergencyContact.init(hkEmergencyContact:contact:)(v20, v12, &v68);
          }

          else
          {
            MedicalIDEmergencyContact.init(hkEmergencyContact:contact:)(v10, 0, &v68);
          }

          v62 = v70;
          v63 = v71;
          v66 = v74;
          v67 = v75;
          v64 = v72;
          v65 = v73;
          v60 = v68;
          v61 = v69;
          *&v59[0] = v7;
          v1 = *(v7 + 16);
          v27 = *(v7 + 24);
          if (v1 >= v27 >> 1)
          {
            sub_25878F0B0((v27 > 1), v1 + 1, 1);
            v7 = *&v59[0];
          }

          *(v7 + 16) = v1 + 1;
          v28 = (v7 + (v1 << 7));
          v29 = v60;
          v30 = v61;
          v31 = v63;
          v28[4] = v62;
          v28[5] = v31;
          v28[2] = v29;
          v28[3] = v30;
          v32 = v64;
          v33 = v65;
          v34 = v67;
          v28[8] = v66;
          v28[9] = v34;
          v28[6] = v32;
          v28[7] = v33;
          if (v55 == v8)
          {

            v1 = v50;
            goto LABEL_27;
          }

          ++v8;
          if (v57)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v5 = sub_2588BDD68();
        if (!v5)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_38:
      v6 = sub_2587F0300(0, *(v6 + 2) + 1, 1, v6);
      *(v54 + 40) = v6;
      goto LABEL_33;
    }

LABEL_26:

    v7 = MEMORY[0x277D84F90];
LABEL_27:
    v36 = sub_258790DD8(1, v7);

    swift_beginAccess();
    v37 = *(v54 + 40);
    *(v54 + 40) = v36;
  }

  else
  {
    swift_beginAccess();
    v35 = *(v54 + 40);
    *(v54 + 40) = MEMORY[0x277D84F90];
  }

  if (*(v54 + 56))
  {
    return;
  }

  if (![v1 isEmpty])
  {
    return;
  }

  v38 = [*(v54 + 48) profileIdentifier];
  v39 = [v38 type];

  if (v39 != 3)
  {
    return;
  }

  sub_25883D048(&v60);
  v72 = v64;
  v73 = v65;
  v74 = v66;
  v75 = v67;
  v68 = v60;
  v69 = v61;
  v70 = v62;
  v71 = v63;
  if (sub_2587DF798(&v68) == 1)
  {
    return;
  }

  swift_beginAccess();
  v6 = *(v54 + 40);
  v59[4] = v64;
  v59[5] = v65;
  v59[6] = v66;
  v59[7] = v67;
  v59[0] = v60;
  v59[1] = v61;
  v59[2] = v62;
  v59[3] = v63;
  sub_2587914E8(v59, v58);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v54 + 40) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_33:
  v42 = *(v6 + 2);
  v41 = *(v6 + 3);
  if (v42 >= v41 >> 1)
  {
    v6 = sub_2587F0300((v41 > 1), v42 + 1, 1, v6);
  }

  *(v6 + 2) = v42 + 1;
  v43 = &v6[128 * v42];
  v44 = v68;
  v45 = v69;
  v46 = v71;
  *(v43 + 4) = v70;
  *(v43 + 5) = v46;
  *(v43 + 2) = v44;
  *(v43 + 3) = v45;
  v47 = v72;
  v48 = v73;
  v49 = v75;
  *(v43 + 8) = v74;
  *(v43 + 9) = v49;
  *(v43 + 6) = v47;
  *(v43 + 7) = v48;
  *(v54 + 40) = v6;
  swift_endAccess();
  sub_25883FAAC(&v60);
  *(v54 + 56) = 1;
}

char *sub_25878F0B0(char *a1, int64_t a2, char a3)
{
  result = sub_25878F0D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25878F0D0(char *result, int64_t a2, char a3, char *a4)
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

void sub_25878F1E0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2588BDF88();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

id sub_25878F230(void *a1)
{
  v3 = [a1 nameContactIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = *(v1 + 24);
    v6 = *(v1 + 64);
    sub_25878FA5C();
    v7 = sub_2588BD9A8();
    v8 = [v5 contactForIdentifier:v4 keysToFetch:v7];

    if (v8)
    {
      v9 = [v8 phoneNumbers];
      sub_25878E130(0, &qword_27F961820, 0x277CBDB20);
      v10 = sub_2588BD9B8();

      if (v10 >> 62)
      {
        v11 = sub_2588BDD68();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v11)
      {
        return v8;
      }
    }
  }

  v12 = [a1 phoneNumber];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = sub_2588BD8A8();
  v16 = v15;

  v8 = sub_25878F420(v14, v16);

  if (v8)
  {
    v17 = [v8 phoneNumbers];
    sub_25878E130(0, &qword_27F961820, 0x277CBDB20);
    v18 = sub_2588BD9B8();

    v19 = v18 >> 62 ? sub_2588BDD68() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v19)
    {

      return 0;
    }
  }

  return v8;
}

id sub_25878F420(uint64_t a1, uint64_t a2)
{
  v17[0] = a1;
  v17[1] = a2;
  v2 = sub_2588BB708();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_2588BB6E8();
  MEMORY[0x28223BE20](v5);
  v6 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BB6F8();
  v7 = *(v3 + 8);
  v7(v6, v2);
  sub_25878F648();
  v8 = MEMORY[0x277D837D0];
  v9 = sub_2588BDCF8();
  v7(v6, v2);
  v17[0] = v9;
  sub_25878E42C(0, &qword_280C0DE60, v8, MEMORY[0x277D83940]);
  sub_25878F69C();
  sub_2588BD7A8();

  v10 = objc_opt_self();
  v11 = objc_allocWithZone(MEMORY[0x277CBDB70]);
  v12 = sub_2588BD868();

  v13 = [v11 initWithStringValue_];

  v14 = [v10 predicateForContactsMatchingPhoneNumber_];
  v15 = sub_25878F718(v14);

  return v15;
}

unint64_t sub_25878F648()
{
  result = qword_280C0DF00;
  if (!qword_280C0DF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0DF00);
  }

  return result;
}

unint64_t sub_25878F69C()
{
  result = qword_280C0DE50;
  if (!qword_280C0DE50)
  {
    sub_25878E42C(255, &qword_280C0DE60, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0DE50);
  }

  return result;
}

id sub_25878F718(uint64_t a1)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[3];
  v5 = v1[8];
  sub_25878FA5C();
  v6 = sub_2588BD9A8();
  v29[0] = 0;
  v7 = [v4 unifiedContactsMatchingPredicate:a1 keysToFetch:v6 error:v29];

  v8 = v29[0];
  if (!v7)
  {
    v14 = v29[0];
    v9 = sub_2588BB878();

    swift_willThrow();
    if (qword_27F95D170 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  sub_25878E130(0, &unk_280C0DDF0, 0x277CBDA58);
  v9 = sub_2588BD9B8();
  v10 = v8;

  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:

LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  if (!sub_2588BDD68())
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x259C8CF80](0, v9);
    goto LABEL_7;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_18:
    swift_once();
LABEL_9:
    v15 = sub_2588BBC98();
    __swift_project_value_buffer(v15, qword_27F969938);
    v16 = v9;
    v17 = sub_2588BBC78();
    v18 = sub_2588BDBD8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29[0] = v20;
      *v19 = 136315394;
      v21 = sub_2588BE0E8();
      v23 = sub_258790224(v21, v22, v29);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v24 = v9;
      sub_25878D8F4();
      v25 = sub_2588BD8D8();
      v27 = sub_258790224(v25, v26, v29);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_25878B000, v17, v18, "%s Contact Fetch Error: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v20, -1, -1);
      MEMORY[0x259C8DBE0](v19, -1, -1);
    }

    else
    {
    }

    goto LABEL_14;
  }

  v11 = *(v9 + 32);
LABEL_7:
  v12 = v11;

  result = v12;
LABEL_15:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_25878FA5C()
{
  result = qword_280C0DE20;
  if (!qword_280C0DE20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280C0DE20);
  }

  return result;
}

uint64_t sub_25878FAC0(void *a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_25878FACC(a1, a2, *(v2 + 16));
}

uint64_t sub_25878FACC(void *a1, id a2, void (*a3)(void *))
{
  v4 = &qword_27F95D000;
  if (!a2)
  {
LABEL_5:
    if (a1)
    {
      goto LABEL_6;
    }

LABEL_31:
    if (v4[46] == -1)
    {
LABEL_32:
      v48 = sub_2588BBC98();
      __swift_project_value_buffer(v48, qword_27F969938);
      v49 = sub_2588BBC78();
      v50 = sub_2588BDBF8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v66 = v52;
        *v51 = 136315138;
        v53 = sub_2588BE0E8();
        v55 = sub_258790224(v53, v54, &v66);

        *(v51 + 4) = v55;
        _os_log_impl(&dword_25878B000, v49, v50, "%s there was no familyCircle fetched", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        MEMORY[0x259C8DBE0](v52, -1, -1);
        MEMORY[0x259C8DBE0](v51, -1, -1);
      }

      v56 = 0;
      goto LABEL_45;
    }

LABEL_47:
    swift_once();
    goto LABEL_32;
  }

  isUniquelyReferenced_nonNull_native = a2;
  v6 = a2;
  if (qword_27F95D170 != -1)
  {
LABEL_39:
    swift_once();
  }

  v7 = sub_2588BBC98();
  __swift_project_value_buffer(v7, qword_27F969938);
  v8 = isUniquelyReferenced_nonNull_native;
  v9 = sub_2588BBC78();
  v10 = sub_2588BDBD8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v66 = v12;
    *v11 = 136315394;
    v13 = sub_2588BE0E8();
    v15 = sub_258790224(v13, v14, &v66);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v16 = sub_2588BDFD8();
    v18 = sub_258790224(v16, v17, &v66);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_25878B000, v9, v10, "%s Failed to fetch family circle with error %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C8DBE0](v12, -1, -1);
    MEMORY[0x259C8DBE0](v11, -1, -1);

    goto LABEL_5;
  }

  if (!a1)
  {
    goto LABEL_31;
  }

LABEL_6:
  v19 = a1;
  v20 = sub_2588637B4(MEMORY[0x277D84F90]);
  v60 = v19;
  v21 = [v19 members];
  sub_25878E130(0, &qword_280C0DE28, 0x277D08268);
  v22 = sub_2588BD9B8();

  if (v22 >> 62)
  {
    v23 = sub_2588BDD68();
    if (v23)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
LABEL_41:

    v57 = v20[2];
    if (!v57)
    {

      v56 = MEMORY[0x277D84F90];
      goto LABEL_45;
    }

    v56 = sub_25886AB68(v20[2], 0);
    v58 = sub_25886B388(&v66, v56 + 4, v57, v20);

    sub_2587921E0();
    if (v58 == v57)
    {

LABEL_45:
      a3(v56);
    }

    __break(1u);
    goto LABEL_47;
  }

LABEL_8:
  v24 = 0;
  v25 = v22 & 0xC000000000000001;
  v64 = v22;
  v65 = v22 & 0xFFFFFFFFFFFFFF8;
  isUniquelyReferenced_nonNull_native = &off_2798A7000;
  v62 = v22 & 0xC000000000000001;
  v63 = v23;
  while (1)
  {
    if (v25)
    {
      v26 = MEMORY[0x259C8CF80](v24, v22);
    }

    else
    {
      if (v24 >= *(v65 + 16))
      {
        goto LABEL_36;
      }

      v26 = *(v22 + 8 * v24 + 32);
    }

    v27 = v26;
    a1 = (v24 + 1);
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (([v26 *(isUniquelyReferenced_nonNull_native + 3272)] & 1) == 0)
    {
      v28 = [v27 contact];
      if (v28)
      {
        break;
      }
    }

LABEL_10:
    ++v24;
    if (a1 == v23)
    {
      goto LABEL_41;
    }
  }

  v29 = v28;
  v30 = [v28 identifier];
  v31 = sub_2588BD8A8();
  v4 = v32;

  v33 = v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = v20;
  v35 = sub_258869E40(v31, v4);
  v36 = v20[2];
  v37 = (v34 & 1) == 0;
  v38 = v36 + v37;
  if (__OFADD__(v36, v37))
  {
    goto LABEL_37;
  }

  v39 = v34;
  if (v20[3] >= v38)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v34 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_25886AE90();
      if ((v39 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_26;
  }

  sub_25886ABF8(v38, isUniquelyReferenced_nonNull_native);
  v40 = sub_258869E40(v31, v4);
  if ((v39 & 1) == (v41 & 1))
  {
    v35 = v40;
    if ((v39 & 1) == 0)
    {
LABEL_22:
      v20 = v66;
      v66[(v35 >> 6) + 8] |= 1 << v35;
      v42 = (v20[6] + 16 * v35);
      *v42 = v31;
      v42[1] = v4;
      *(v20[7] + 8 * v35) = v33;

      v43 = v20[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_38;
      }

      v20[2] = v45;
      goto LABEL_27;
    }

LABEL_26:

    v20 = v66;
    v46 = v66[7];
    v47 = *(v46 + 8 * v35);
    *(v46 + 8 * v35) = v33;

LABEL_27:
    v23 = v63;
    v22 = v64;
    v25 = v62;
    isUniquelyReferenced_nonNull_native = 0x2798A7000;
    goto LABEL_10;
  }

  result = sub_2588BDFC8();
  __break(1u);
  return result;
}

uint64_t sub_25879010C()
{
  v0 = sub_2588BBC98();
  __swift_allocate_value_buffer(v0, qword_27F969938);
  __swift_project_value_buffer(v0, qword_27F969938);
  return sub_2588BBC88();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_258790224(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2587902F0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_258790448(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2587902F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2587904A4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2588BDE28();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_258790448(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2587904A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2587904F0(a1, a2);
  sub_2587906AC(&unk_2869BC9C0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2587904F0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_258790620(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2588BDE28();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2588BD948();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_258790620(v10, 0);
        result = sub_2588BDDD8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_258790620(uint64_t a1, uint64_t a2)
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

  sub_25878E1F0(0, &qword_27F95DC20, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2587906AC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2587C8448(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2587907A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2587907F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 32);

    MEMORY[0x28223BE20](v2);
    os_unfair_lock_lock((v1 + 24));
    sub_2587908BC((v1 + 16));
    os_unfair_lock_unlock((v1 + 24));
  }

  return result;
}

uint64_t sub_2587908BC(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
}

void MedicalIDEmergencyContact.init(hkEmergencyContact:contact:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_258790C74();
  v6 = MEMORY[0x277D837D0];
  v7 = sub_2588BD9A8();
  v8 = HKUIJoinStringsForAutomationIdentifier();

  if (v8)
  {
    v58 = sub_2588BD8A8();
    v10 = v9;
  }

  else
  {
    v10 = 0x80000002588C8A90;
    v58 = 0xD000000000000011;
  }

  v11 = [v5 name];
  if (v11)
  {
    v12 = v11;
    sub_2588BD8A8();

    sub_258790D88();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2588BFF50;
    *(v13 + 32) = v58;
    *(v13 + 40) = v10;
    v10 = 0xE000000000000000;
    v48 = sub_25878F648();
    v49 = v48;
    v46 = v6;
    v47 = v48;
    v14 = sub_2588BDD08();
    v16 = v15;

    *(v13 + 48) = v14;
    *(v13 + 56) = v16;
    v17 = sub_2588BD9A8();

    v18 = HKUIJoinStringsForAutomationIdentifier();

    if (v18)
    {
      v58 = sub_2588BD8A8();
      v10 = v19;
    }

    else
    {
      v58 = 0;
    }
  }

  v20 = [v5 name];
  if (v20)
  {
    v21 = v20;
    v22 = sub_2588BD8A8();
    v55 = v23;
    v56 = v22;
  }

  else
  {
    v55 = 0;
    v56 = 0;
  }

  v24 = [v5 nameContactIdentifier];
  if (v24)
  {
    v25 = v24;
    v26 = sub_2588BD8A8();
    v53 = v27;
    v54 = v26;
  }

  else
  {
    v53 = 0;
    v54 = 0;
  }

  v28 = [v5 phoneNumberLabel];
  if (v28)
  {
    v29 = v28;
    v30 = sub_2588BD8A8();
    v51 = v31;
    v52 = v30;
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v32 = [v5 phoneNumber];
  if (v32)
  {
    v33 = v32;
    v50 = sub_2588BD8A8();
    v35 = v34;
  }

  else
  {
    v50 = 0;
    v35 = 0;
  }

  v36 = v10;
  v37 = [v5 phoneNumberContactIdentifier];
  if (v37)
  {
    v38 = v37;
    v39 = sub_2588BD8A8();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v42 = [v5 relationship];

  if (v42)
  {
    v43 = sub_2588BD8A8();
    v45 = v44;
  }

  else
  {

    v43 = 0;
    v45 = 0;
  }

  *a3 = v56;
  a3[1] = v55;
  a3[2] = v54;
  a3[3] = v53;
  a3[4] = v52;
  a3[5] = v51;
  a3[6] = v50;
  a3[7] = v35;
  a3[8] = v39;
  a3[9] = v41;
  a3[10] = v43;
  a3[11] = v45;
  a3[12] = v5;
  a3[13] = a2;
  a3[14] = v58;
  a3[15] = v36;
}

uint64_t sub_258790C74()
{
  swift_getObjectType();
  [v0 copy];
  sub_2588BDD38();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    return v2;
  }

  sub_2588BDDF8();
  sub_2588BE0E8();

  MEMORY[0x259C8CAA0](0xD00000000000002ALL, 0x80000002588CB760);
  result = sub_2588BDED8();
  __break(1u);
  return result;
}

void sub_258790D88()
{
  if (!qword_280C0DDD0)
  {
    v0 = sub_2588BDF88();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0DDD0);
    }
  }
}

char *sub_258790DD8(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 16);
    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v67 = MEMORY[0x277D84F90];
      sub_2587912F0(0, v3, 0);
      v5 = 0;
      v4 = v67;
      v6 = (a2 + 32);
      v7 = v3 - 1;
      while (1)
      {
        v8 = v6[5];
        v53 = v6[4];
        v54 = v8;
        v9 = v6[7];
        v55 = v6[6];
        v56 = v9;
        v10 = v6[1];
        v50[0] = *v6;
        v50[1] = v10;
        v11 = v6[3];
        v51 = v6[2];
        v52 = v11;
        v57 = v50[0];
        v58 = v10;
        v59 = v51;
        v60 = v11;
        v61 = v53;
        v62 = v8;
        v63 = v55;
        v64 = v9;
        sub_2587914E8(v50, &v66);
        v67 = v4;
        v13 = *(v4 + 2);
        v12 = *(v4 + 3);
        if (v13 >= v12 >> 1)
        {
          sub_2587912F0((v12 > 1), v13 + 1, 1);
          v4 = v67;
        }

        *(v4 + 2) = v13 + 1;
        v14 = &v4[136 * v13];
        v15 = v57;
        v16 = v58;
        v17 = v60;
        *(v14 + 4) = v59;
        *(v14 + 5) = v17;
        *(v14 + 2) = v15;
        *(v14 + 3) = v16;
        v18 = v61;
        v19 = v62;
        v20 = v64;
        *(v14 + 8) = v63;
        *(v14 + 9) = v20;
        *(v14 + 6) = v18;
        *(v14 + 7) = v19;
        *(v14 + 20) = v5;
        if (v7 == v5)
        {
          break;
        }

        v6 += 8;
        ++v5;
      }
    }

    goto LABEL_11;
  }

  v22 = sub_25883FB2C(v21);

  v23 = *(v22 + 16);
  if (!v23)
  {
LABEL_14:

    return MEMORY[0x277D84F90];
  }

  v4 = sub_25886AAE0(*(v22 + 16), 0);
  v24 = sub_25886B1F4(&v57, v4 + 32, v23, v22);
  sub_2587921E0();
  if (v24 != v23)
  {
    __break(1u);
LABEL_11:
    v25 = sub_258791544(v4);

    v26 = *(v25 + 16);
    v27 = MEMORY[0x277D84F90];
    if (v26)
    {
      v28 = sub_258791F54(*(v25 + 16), 0);
      v29 = sub_258792030(&v57, v28 + 32, v26, v25);

      sub_2587921E0();
      if (v29 != v26)
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    *&v57 = v28;
    sub_2587921E8(&v57);

    v30 = v57;
    v31 = *(v57 + 16);
    if (!v31)
    {

      return MEMORY[0x277D84F90];
    }

    v66 = v27;
    sub_25878F0B0(0, v31, 0);
    v4 = v66;
    v32 = v31 - 1;
    for (i = 32; ; i += 136)
    {
      v57 = *(v30 + i);
      v34 = *(v30 + i + 16);
      v35 = *(v30 + i + 32);
      v36 = *(v30 + i + 64);
      v60 = *(v30 + i + 48);
      v61 = v36;
      v58 = v34;
      v59 = v35;
      v37 = *(v30 + i + 80);
      v38 = *(v30 + i + 96);
      v39 = *(v30 + i + 112);
      v65 = *(v30 + i + 128);
      v63 = v38;
      v64 = v39;
      v62 = v37;
      sub_258791754(&v57, v50);
      v66 = v4;
      v41 = *(v4 + 2);
      v40 = *(v4 + 3);
      if (v41 >= v40 >> 1)
      {
        sub_25878F0B0((v40 > 1), v41 + 1, 1);
        v4 = v66;
      }

      *(v4 + 2) = v41 + 1;
      v42 = &v4[128 * v41];
      v43 = v57;
      v44 = v58;
      v45 = v60;
      *(v42 + 4) = v59;
      *(v42 + 5) = v45;
      *(v42 + 2) = v43;
      *(v42 + 3) = v44;
      v46 = v61;
      v47 = v62;
      v48 = v64;
      *(v42 + 8) = v63;
      *(v42 + 9) = v48;
      *(v42 + 6) = v46;
      *(v42 + 7) = v47;
      if (!v32)
      {
        break;
      }

      --v32;
    }
  }

  return v4;
}

void sub_258791134()
{
  if (!qword_280C0DE68)
  {
    sub_258791374();
    v0 = _s14OrderedElementVMa();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0DE68);
    }
  }
}

void *sub_258791190(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_258791310(0, &qword_280C0DDC0, sub_258791134, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[17 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 136 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_258791134();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2587912F0(void *a1, int64_t a2, char a3)
{
  result = sub_258791190(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_258791310(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258791374()
{
  result = qword_280C0E1D0;
  if (!qword_280C0E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0E1D0);
  }

  return result;
}

unint64_t sub_2587913CC()
{
  result = qword_280C0E1C8;
  if (!qword_280C0E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0E1C8);
  }

  return result;
}

uint64_t sub_258791470(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_258791544(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_2587916D4(0, &qword_280C0DE68, _s14OrderedElementVMa);
  v4 = v3;
  v5 = sub_258791660();
  result = MEMORY[0x259C8CC60](v2, v4, v5);
  v16 = result;
  if (v2)
  {
    v7 = a1 + 32;
    do
    {
      v8 = *(v7 + 112);
      v17[6] = *(v7 + 96);
      v17[7] = v8;
      v18 = *(v7 + 128);
      v9 = *(v7 + 48);
      v17[2] = *(v7 + 32);
      v17[3] = v9;
      v10 = *(v7 + 80);
      v17[4] = *(v7 + 64);
      v17[5] = v10;
      v11 = *(v7 + 16);
      v17[0] = *v7;
      v17[1] = v11;
      sub_258791754(v17, v14);
      sub_2587917D4(v12, v17);
      v14[6] = v12[6];
      v14[7] = v12[7];
      v15 = v13;
      v14[2] = v12[2];
      v14[3] = v12[3];
      v14[4] = v12[4];
      v14[5] = v12[5];
      v14[0] = v12[0];
      v14[1] = v12[1];
      sub_258791C20(v14);
      v7 += 136;
      --v2;
    }

    while (v2);
    return v16;
  }

  return result;
}

unint64_t sub_258791660()
{
  result = qword_280C0DE78;
  if (!qword_280C0DE78)
  {
    sub_2587916D4(255, &qword_280C0DE68, _s14OrderedElementVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0DE78);
  }

  return result;
}

void sub_2587916D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_258791374();
    v7 = a3(a1, &type metadata for MedicalIDEmergencyContact, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_258791754(uint64_t a1, uint64_t a2)
{
  sub_2587916D4(0, &qword_280C0DE68, _s14OrderedElementVMa);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587917D4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2588BE038();
  v7 = *(a2 + 112);
  v63 = *(a2 + 96);
  v64 = v7;
  v65 = *(a2 + 128);
  v8 = *(a2 + 48);
  v59 = *(a2 + 32);
  v60 = v8;
  v9 = *(a2 + 80);
  v61 = *(a2 + 64);
  v62 = v9;
  v10 = *(a2 + 16);
  v57 = *a2;
  v58 = v10;
  MedicalIDEmergencyContact.hash(into:)();
  v11 = sub_2588BE078();
  v12 = -1 << *(v5 + 32);
  v13 = v11 & ~v12;
  if ((*(v5 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = *(v5 + 48) + 136 * v13;
      v57 = *v15;
      v16 = *(v15 + 48);
      v17 = *(v15 + 64);
      v18 = *(v15 + 32);
      v58 = *(v15 + 16);
      v59 = v18;
      v60 = v16;
      v61 = v17;
      v19 = *(v15 + 80);
      v20 = *(v15 + 96);
      v21 = *(v15 + 112);
      v65 = *(v15 + 128);
      v63 = v20;
      v64 = v21;
      v62 = v19;
      sub_2588BE038();
      v54 = v63;
      v55 = v64;
      v56 = v65;
      v50 = v59;
      v51 = v60;
      v52 = v61;
      v53 = v62;
      v48 = v57;
      v49 = v58;
      sub_258791754(&v57, v47);
      MedicalIDEmergencyContact.hash(into:)();
      v22 = sub_2588BE078();
      sub_2588BE038();
      v23 = *(a2 + 112);
      v54 = *(a2 + 96);
      v55 = v23;
      v56 = *(a2 + 128);
      v24 = *(a2 + 48);
      v50 = *(a2 + 32);
      v51 = v24;
      v25 = *(a2 + 80);
      v52 = *(a2 + 64);
      v53 = v25;
      v26 = *(a2 + 16);
      v48 = *a2;
      v49 = v26;
      MedicalIDEmergencyContact.hash(into:)();
      v27 = sub_2588BE078();
      sub_258791C20(&v57);
      if (v22 == v27)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v5 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_258791C20(a2);
    v35 = *(v5 + 48) + 136 * v13;
    v36 = *(v35 + 80);
    v37 = *(v35 + 96);
    v38 = *(v35 + 112);
    v56 = *(v35 + 128);
    v54 = v37;
    v55 = v38;
    v53 = v36;
    v40 = *(v35 + 16);
    v39 = *(v35 + 32);
    v41 = *(v35 + 64);
    v51 = *(v35 + 48);
    v52 = v41;
    v48 = *v35;
    v49 = v40;
    v50 = v39;
    v42 = *(v35 + 112);
    *(a1 + 96) = *(v35 + 96);
    *(a1 + 112) = v42;
    *(a1 + 128) = *(v35 + 128);
    v43 = *(v35 + 48);
    *(a1 + 32) = *(v35 + 32);
    *(a1 + 48) = v43;
    v44 = *(v35 + 80);
    *(a1 + 64) = *(v35 + 64);
    *(a1 + 80) = v44;
    v45 = *(v35 + 16);
    *a1 = *v35;
    *(a1 + 16) = v45;
    sub_258791754(&v48, v47);
    return 0;
  }

  else
  {
LABEL_5:
    v28 = *v46;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v48 = *v46;
    sub_258791754(a2, &v57);
    sub_258791C98(a2, v13, isUniquelyReferenced_nonNull_native);
    *v46 = v48;
    v30 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v30;
    *(a1 + 128) = *(a2 + 128);
    v31 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v31;
    v32 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v32;
    v33 = *(a2 + 16);
    result = 1;
    *a1 = *a2;
    *(a1 + 16) = v33;
  }

  return result;
}

uint64_t MedicalIDEmergencyContact.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[7];
  v11 = v0[8];
  v7 = v0[9];
  v12 = v0[10];
  v8 = v0[11];
  if (v0[1])
  {
    v9 = *v0;
    sub_2588BE058();
    sub_2588BD908();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_2588BE058();
    if (v2)
    {
LABEL_3:
      sub_2588BE058();
      sub_2588BD908();
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  sub_2588BE058();
  if (v5)
  {
LABEL_4:
    sub_2588BE058();
    sub_2588BD908();
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_2588BE058();
  if (v6)
  {
LABEL_5:
    sub_2588BE058();
    sub_2588BD908();
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_14:
    sub_2588BE058();
    if (v8)
    {
      goto LABEL_7;
    }

    return sub_2588BE058();
  }

LABEL_13:
  sub_2588BE058();
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_2588BE058();
  sub_2588BD908();
  if (!v8)
  {
    return sub_2588BE058();
  }

LABEL_7:
  sub_2588BE058();

  return sub_2588BD908();
}

uint64_t sub_258791C20(uint64_t a1)
{
  sub_2587916D4(0, &qword_280C0DE68, _s14OrderedElementVMa);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258791C98(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25883E8AC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_25883F0A0();
      goto LABEL_12;
    }

    sub_25883F630(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_2588BE038();
  v11 = *(v6 + 112);
  v55 = *(v6 + 96);
  v56 = v11;
  v57 = *(v6 + 128);
  v12 = *(v6 + 48);
  v51 = *(v6 + 32);
  v52 = v12;
  v13 = *(v6 + 80);
  v53 = *(v6 + 64);
  v54 = v13;
  v14 = *(v6 + 16);
  v49 = *v6;
  v50 = v14;
  MedicalIDEmergencyContact.hash(into:)();
  result = sub_2588BE078();
  v15 = -1 << *(v9 + 32);
  a2 = result & ~v15;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    sub_2587916D4(0, &qword_280C0DE68, _s14OrderedElementVMa);
    do
    {
      v17 = *(v9 + 48) + 136 * a2;
      v49 = *v17;
      v18 = *(v17 + 48);
      v19 = *(v17 + 64);
      v20 = *(v17 + 32);
      v50 = *(v17 + 16);
      v51 = v20;
      v52 = v18;
      v53 = v19;
      v21 = *(v17 + 80);
      v22 = *(v17 + 96);
      v23 = *(v17 + 112);
      v57 = *(v17 + 128);
      v55 = v22;
      v56 = v23;
      v54 = v21;
      sub_2588BE038();
      v46 = v55;
      v47 = v56;
      v48 = v57;
      v42 = v51;
      v43 = v52;
      v44 = v53;
      v45 = v54;
      v40 = v49;
      v41 = v50;
      sub_258791754(&v49, v39);
      MedicalIDEmergencyContact.hash(into:)();
      v24 = sub_2588BE078();
      sub_2588BE038();
      v25 = *(v6 + 112);
      v46 = *(v6 + 96);
      v47 = v25;
      v48 = *(v6 + 128);
      v26 = *(v6 + 48);
      v42 = *(v6 + 32);
      v43 = v26;
      v27 = *(v6 + 80);
      v44 = *(v6 + 64);
      v45 = v27;
      v28 = *(v6 + 16);
      v40 = *v6;
      v41 = v28;
      MedicalIDEmergencyContact.hash(into:)();
      v29 = sub_2588BE078();
      result = sub_258791C20(&v49);
      if (v24 == v29)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v30 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v31 = *(v30 + 48) + 136 * a2;
  v32 = *(v6 + 48);
  *(v31 + 32) = *(v6 + 32);
  *(v31 + 48) = v32;
  *(v31 + 128) = *(v6 + 128);
  v33 = *(v6 + 112);
  *(v31 + 96) = *(v6 + 96);
  *(v31 + 112) = v33;
  v34 = *(v6 + 80);
  *(v31 + 64) = *(v6 + 64);
  *(v31 + 80) = v34;
  v35 = *(v6 + 16);
  *v31 = *v6;
  *(v31 + 16) = v35;
  v36 = *(v30 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (!v37)
  {
    *(v30 + 16) = v38;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2588BDFB8();
  __break(1u);
  return result;
}

void *sub_258791F54(uint64_t a1, uint64_t a2)
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

  sub_258791FD8();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x7878787878787879) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 6) + (v7 >> 63));
  return result;
}

void sub_258791FD8()
{
  if (!qword_280C0DDC0)
  {
    sub_258791134();
    v0 = sub_2588BDF88();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0DDC0);
    }
  }
}

void *sub_258792030(void *result, char *__dst, uint64_t a3, uint64_t a4)
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
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 136 * (v17 | (v12 << 6)));
      v29[0] = *v18;
      v19 = v18[4];
      v21 = v18[1];
      v20 = v18[2];
      v29[3] = v18[3];
      v29[4] = v19;
      v29[1] = v21;
      v29[2] = v20;
      v23 = v18[6];
      v22 = v18[7];
      v24 = v18[5];
      v30 = *(v18 + 16);
      v29[6] = v23;
      v29[7] = v22;
      v29[5] = v24;
      memmove(v11, v18, 0x88uLL);
      if (v14 == v10)
      {
        sub_258791754(v29, v28);
        goto LABEL_23;
      }

      v11 += 136;
      sub_258791754(v29, v28);
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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2587921E8(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25883FA34(v2);
  }

  v3 = v2[2];
  v41[0] = (v2 + 4);
  v41[1] = v3;
  result = sub_2588BDF68();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 20;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (v12[17] >= *v12)
          {
            break;
          }

          v13 = v12 - 16;
          v32 = *(v12 + 1);
          v14 = *(v12 + 3);
          v15 = *(v12 + 5);
          v16 = *(v12 + 9);
          v35 = *(v12 + 7);
          v36 = v16;
          v33 = v14;
          v34 = v15;
          v17 = *(v12 + 11);
          v18 = *(v12 + 13);
          v19 = *(v12 + 15);
          v40 = v12[17];
          v38 = v18;
          v39 = v19;
          v37 = v17;
          v20 = *(v12 - 3);
          *(v12 + 9) = *(v12 - 4);
          v21 = *(v12 - 6);
          *(v12 + 7) = *(v12 - 5);
          *(v12 + 5) = v21;
          v22 = *(v12 - 8);
          *(v12 + 3) = *(v12 - 7);
          v12[17] = *v12;
          v23 = *(v12 - 2);
          *(v12 + 15) = *(v12 - 1);
          *(v12 + 13) = v23;
          *(v12 + 11) = v20;
          *(v12 + 1) = v22;
          *v13 = v32;
          v24 = v33;
          v25 = v34;
          v26 = v36;
          v13[3] = v35;
          v13[4] = v26;
          v13[1] = v24;
          v13[2] = v25;
          v27 = v37;
          v28 = v38;
          v29 = v39;
          *v12 = v40;
          v13[6] = v28;
          v13[7] = v29;
          v13[5] = v27;
          v12 -= 17;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 17;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_2587916D4(0, &qword_280C0DE68, _s14OrderedElementVMa);
      v7 = sub_2588BD9E8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v32 = v7 + 32;
    *(&v32 + 1) = v6;
    sub_25883D7B0(&v32, v31, v41, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t MedicalIDEmergencyContactProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t SuggestedEmergencyContactFetcher.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_258792498(uint64_t *a1)
{
  v1 = *a1;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_2588BC198();
  }

  else
  {
    sub_2588BC0A8();
  }

  return sub_2588BC1E8();
}

uint64_t sub_258792500(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_2588BC198();
    sub_2588BC1E8();
    sub_2587A7414();
  }

  else
  {
    sub_2588BC0A8();
    sub_2588BC1E8();
    sub_2587AA928(&qword_27F95D1A0, MEMORY[0x277CDD8B0]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_2587925F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_2588BC928();

    return sub_2588BC1E8();
  }

  else
  {
    sub_2588BC2D8();
    swift_getWitnessTable();
    sub_2588BC8A8();
    sub_2588BC1E8();
    sub_2588BDCE8();
    swift_getWitnessTable();
    sub_2588BC2D8();
    swift_getWitnessTable();
    sub_2588BC8A8();
    return sub_2588BC1E8();
  }
}

uint64_t sub_258792758(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_2588BC928();
    sub_2588BC1E8();
  }

  else
  {
    sub_2588BC2D8();
    swift_getWitnessTable();
    sub_2588BC8A8();
    sub_2588BC1E8();
    sub_2588BDCE8();
    swift_getWitnessTable();
    sub_2588BC2D8();
    swift_getWitnessTable();
    sub_2588BC8A8();
    sub_2588BC1E8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_25879296C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2587929A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2588BD8A8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2587929D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_258792A08()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_258792A90()
{
  v1 = sub_2588BC248();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_258792B1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = sub_2588BBD28();
  *a2 = v5;
  return result;
}

uint64_t sub_258792B5C(id *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  sub_2587AE658(*a1);
  return sub_2588BBD38();
}

uint64_t sub_258792B9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_258792BD4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_258792C0C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_258792C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDPregnancyViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2587B1718(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_258792DC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDPregnancyViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    sub_2587B1718(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_258792F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2588BB9F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_2587B2F14(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2587930BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2588BB9F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    sub_2587B2F14(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_25879321C()
{

  return swift_deallocObject();
}

uint64_t sub_258793254()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_258793294()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2587932E4(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for MedicalIDData();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_17:
    v17 = *(v10 + 48);

    return v17(&a1[v11], a2, v9);
  }

  v12 = sub_2588BBB48();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_17;
  }

  v13 = sub_2588BBAC8();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_17;
  }

  v14 = type metadata accessor for MedicalIDBiometricsViewModel();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_17;
  }

  v15 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[10];
    goto LABEL_17;
  }

  v16 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[11];
    goto LABEL_17;
  }

  v18 = type metadata accessor for MedicalIDPregnancyViewModel();
  v19 = *(*(v18 - 8) + 48);
  v20 = &a1[a3[12]];

  return v19(v20, a2, v18);
}

char *sub_258793570(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for MedicalIDData();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_15:
    v17 = *(v10 + 56);

    return v17(&v5[v11], a2, a2, v9);
  }

  v12 = sub_2588BBB48();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_15;
  }

  v13 = sub_2588BBAC8();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_15;
  }

  v14 = type metadata accessor for MedicalIDBiometricsViewModel();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_15;
  }

  v15 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[10];
    goto LABEL_15;
  }

  v16 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[11];
    goto LABEL_15;
  }

  v18 = type metadata accessor for MedicalIDPregnancyViewModel();
  v19 = *(*(v18 - 8) + 56);
  v20 = &v5[a4[12]];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_258793804(uint64_t *a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for MedicalIDDataViewModel();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  sub_2587C4E34(0, &qword_27F95DAB8, MEMORY[0x28220C230], MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  sub_2587C4E34(0, &qword_27F95DAC0, MEMORY[0x28220C1A0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  sub_2587C4E34(0, &qword_27F95DAC8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[9];

  return v17(v18, a2, v16);
}

char *sub_258793A30(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for MedicalIDDataViewModel();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  sub_2587C4E34(0, &qword_27F95DAB8, MEMORY[0x28220C230], MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  sub_2587C4E34(0, &qword_27F95DAC0, MEMORY[0x28220C1A0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  sub_2587C4E34(0, &qword_27F95DAC8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = &v5[a4[9]];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_258793C6C()
{
  sub_2587A7460(0);
  v2 = v1 - 8;
  v122 = *(*(v1 - 8) + 80);
  v3 = (v122 + 16) & ~v122;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for MedicalIDDataContentView();
  v6 = *(*(v5 - 8) + 80);
  v7 = v3 + v4 + v6;
  v123 = *(*(v5 - 8) + 64);
  v8 = v0 + v3;
  sub_2587A74F0();
  (*(*(v9 - 8) + 8))(v0 + v3, v9);
  sub_2587A74A8(0);
  v11 = v0 + v3 + *(v10 + 36);
  v12 = *(v11 + 8);

  v13 = *(v11 + 24);

  v14 = v8 + *(v2 + 44);
  v15 = type metadata accessor for MedicalIDNavigationBarViewModifier();
  v16 = v15[5];
  sub_2587C4E34(0, &qword_27F95DB20, MEMORY[0x28220C1A0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_2588BBAC8();
    (*(*(v17 - 8) + 8))(v14 + v16, v17);
  }

  else
  {
    v18 = *(v14 + v16);
  }

  v19 = v7 & ~v6;

  v20 = v15[8];
  sub_2587C4E34(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_2588BC038();
    (*(*(v21 - 8) + 8))(v14 + v20, v21);
  }

  else
  {
    v22 = *(v14 + v20);
  }

  v23 = *(v14 + v15[9]);

  v24 = *(v0 + v19);

  v124 = v5;
  v121 = v0 + v19;
  v25 = (v0 + v19 + *(v5 + 20));

  v26 = type metadata accessor for MedicalIDDataViewModel();
  v27 = v25 + v26[5];
  v28 = *(v27 + 1);

  v29 = *(v27 + 2);

  v30 = *(v27 + 4);

  v31 = *(v27 + 6);

  v32 = *(v27 + 8);

  v33 = *(v27 + 10);

  v34 = type metadata accessor for MedicalIDData();
  v35 = v34[13];
  v36 = sub_2588BB9B8();
  v132 = *(v36 - 8);
  v37 = *(v132 + 48);
  if (!v37(&v27[v35], 1, v36))
  {
    (*(v132 + 8))(&v27[v35], v36);
  }

  v38 = v34[14];
  if (!v37(&v27[v38], 1, v36))
  {
    (*(v132 + 8))(&v27[v38], v36);
  }

  v39 = *&v27[v34[15] + 8];

  v40 = &v27[v34[18]];
  v41 = v40[1];
  if (v41 >> 60 != 15)
  {
    sub_2587C2610(*v40, v41);
  }

  v42 = v34[19];
  v43 = sub_2588BB818();
  v125 = *(v43 - 8);
  v128 = *(v125 + 48);
  if (!v128(&v27[v42], 1, v43))
  {
    (*(v125 + 8))(&v27[v42], v43);
  }

  v44 = v34[21];
  if (!v37(&v27[v44], 1, v36))
  {
    (*(v132 + 8))(&v27[v44], v36);
  }

  v45 = v26[6];
  v46 = sub_2588BBB48();
  v126 = *(*(v46 - 8) + 8);
  v127 = v46;
  v126(v25 + v45);

  v47 = v26[8];
  v48 = sub_2588BBAC8();
  v131 = *(*(v48 - 8) + 8);
  v131(v25 + v47, v48);
  v129 = v26;
  v130 = v25;
  v49 = v25 + v26[9];
  v50 = *(v49 + 1);

  v51 = type metadata accessor for MedicalIDBiometricsViewModel();
  v52 = &v49[v51[5]];
  v53 = *(v52 + 1);

  v54 = *(v52 + 2);

  v55 = *(v52 + 4);

  v56 = *(v52 + 6);

  v57 = *(v52 + 8);

  v58 = *(v52 + 10);

  v59 = v34[13];
  if (!v37(&v52[v59], 1, v36))
  {
    (*(v132 + 8))(&v52[v59], v36);
  }

  v60 = v34[14];
  if (!v37(&v52[v60], 1, v36))
  {
    (*(v132 + 8))(&v52[v60], v36);
  }

  v61 = *&v52[v34[15] + 8];

  v62 = &v52[v34[18]];
  v63 = v62[1];
  if (v63 >> 60 != 15)
  {
    sub_2587C2610(*v62, v63);
  }

  v64 = v34[19];
  if (!v128(&v52[v64], 1, v43))
  {
    (*(v125 + 8))(&v52[v64], v43);
  }

  v65 = v34[21];
  if (!v37(&v52[v65], 1, v36))
  {
    (*(v132 + 8))(&v52[v65], v36);
  }

  v131(&v49[v51[6]], v48);
  v66 = &v49[v51[7]];
  v131(v66, v48);

  v67 = &v49[v51[8]];
  v131(v67, v48);
  v68 = type metadata accessor for MedicalIDWeightFormatter();

  v69 = v130 + v129[10];
  v70 = *(v69 + 1);

  v71 = *(v69 + 2);

  v72 = *(v69 + 4);

  v73 = *(v69 + 6);

  v74 = *(v69 + 8);

  v75 = *(v69 + 10);

  v76 = v34[13];
  if (!v37(&v69[v76], 1, v36))
  {
    (*(v132 + 8))(&v69[v76], v36);
  }

  v77 = v34[14];
  if (!v37(&v69[v77], 1, v36))
  {
    (*(v132 + 8))(&v69[v77], v36);
  }

  v78 = *&v69[v34[15] + 8];

  v79 = &v69[v34[18]];
  v80 = v79[1];
  if (v80 >> 60 != 15)
  {
    sub_2587C2610(*v79, v80);
  }

  v81 = v34[19];
  if (!v128(&v69[v81], 1, v43))
  {
    (*(v125 + 8))(&v69[v81], v43);
  }

  v82 = v34[21];
  if (!v37(&v69[v82], 1, v36))
  {
    (*(v132 + 8))(&v69[v82], v36);
  }

  v83 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  (v126)(&v69[v83[5]], v127);
  v131(&v69[v83[6]], v48);

  v84 = *&v69[v83[9] + 8];

  v85 = (v130 + v129[11]);

  v86 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  (v126)(v85 + *(v86 + 20), v127);
  v131(v85 + *(v86 + 24), v48);
  v87 = v130 + v129[12];
  v88 = *(v87 + 1);

  v89 = type metadata accessor for MedicalIDPregnancyViewModel();
  v90 = &v87[v89[5]];
  v91 = *(v90 + 1);

  v92 = *(v90 + 2);

  v93 = *(v90 + 4);

  v94 = *(v90 + 6);

  v95 = *(v90 + 8);

  v96 = *(v90 + 10);

  v97 = v34[13];
  if (!v37(&v90[v97], 1, v36))
  {
    (*(v132 + 8))(&v90[v97], v36);
  }

  v98 = v34[14];
  if (!v37(&v90[v98], 1, v36))
  {
    (*(v132 + 8))(&v90[v98], v36);
  }

  v99 = *&v90[v34[15] + 8];

  v100 = &v90[v34[18]];
  v101 = v100[1];
  if (v101 >> 60 != 15)
  {
    sub_2587C2610(*v100, v101);
  }

  v102 = v34[19];
  if (!v128(&v90[v102], 1, v43))
  {
    (*(v125 + 8))(&v90[v102], v43);
  }

  v103 = v34[21];
  if (!v37(&v90[v103], 1, v36))
  {
    (*(v132 + 8))(&v90[v103], v36);
  }

  (v126)(&v87[v89[6]], v127);
  v131(&v87[v89[7]], v48);
  v104 = *&v87[v89[8]];

  v105 = v89[9];
  if (!v37(&v87[v105], 1, v36))
  {
    (*(v132 + 8))(&v87[v105], v36);
  }

  v106 = v124[7];
  sub_2587C4E34(0, &qword_27F95DB18, MEMORY[0x28220C230], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v126)(v121 + v106, v127);
  }

  else
  {
    v107 = *(v121 + v106);
  }

  v108 = v124[8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v131((v121 + v108), v48);
  }

  else
  {
    v109 = *(v121 + v108);
  }

  v110 = v124[9];
  sub_2587C4E34(0, &qword_27F95DB28, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v111 = sub_2588BBF18();
    (*(*(v111 - 8) + 8))(v121 + v110, v111);
  }

  else
  {
    v112 = *(v121 + v110);
  }

  v113 = (v121 + v124[10]);
  v114 = *v113;

  v115 = v113[1];

  v116 = *(v121 + v124[11] + 8);

  v117 = *(v121 + v124[12] + 8);

  v118 = *(v121 + v124[13] + 8);

  v119 = *(v121 + v124[14] + 8);

  return swift_deallocObject();
}

uint64_t sub_258794AA8(uint64_t a1, uint64_t a2)
{
  sub_2587A7460(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258794B10()
{
  v1 = type metadata accessor for MedicalIDDataContentView();
  v105 = *(*(v1 - 1) + 80);
  v103 = *(*(v1 - 1) + 64);
  v2 = sub_2588BC248();
  v107 = *(v2 - 8);
  v108 = v2;
  v102 = *(v107 + 80);
  v106 = *(v107 + 64);
  v110 = v0;
  v104 = (v105 + 16) & ~v105;
  v3 = (v0 + v104);
  v4 = *v3;

  v109 = v1;
  v101 = v3;
  v5 = &v3[v1[5]];

  v6 = type metadata accessor for MedicalIDDataViewModel();
  v7 = v5 + v6[5];
  v8 = *(v7 + 1);

  v9 = *(v7 + 2);

  v10 = *(v7 + 4);

  v11 = *(v7 + 6);

  v12 = *(v7 + 8);

  v13 = *(v7 + 10);

  v14 = type metadata accessor for MedicalIDData();
  v15 = v14[13];
  v16 = sub_2588BB9B8();
  v118 = *(v16 - 8);
  v17 = *(v118 + 48);
  if (!v17(&v7[v15], 1, v16))
  {
    (*(v118 + 8))(&v7[v15], v16);
  }

  v18 = v14[14];
  if (!v17(&v7[v18], 1, v16))
  {
    (*(v118 + 8))(&v7[v18], v16);
  }

  v19 = *&v7[v14[15] + 8];

  v20 = &v7[v14[18]];
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_2587C2610(*v20, v21);
  }

  v22 = v14[19];
  v23 = sub_2588BB818();
  v111 = *(v23 - 8);
  v114 = *(v111 + 48);
  if (!v114(&v7[v22], 1, v23))
  {
    (*(v111 + 8))(&v7[v22], v23);
  }

  v24 = v14[21];
  if (!v17(&v7[v24], 1, v16))
  {
    (*(v118 + 8))(&v7[v24], v16);
  }

  v25 = v6[6];
  v26 = sub_2588BBB48();
  v112 = *(*(v26 - 8) + 8);
  v113 = v26;
  v112(v5 + v25);

  v27 = v6[8];
  v28 = sub_2588BBAC8();
  v117 = *(*(v28 - 8) + 8);
  v117(v5 + v27, v28);
  v115 = v6;
  v116 = v5;
  v29 = v5 + v6[9];
  v30 = *(v29 + 1);

  v31 = type metadata accessor for MedicalIDBiometricsViewModel();
  v32 = &v29[v31[5]];
  v33 = *(v32 + 1);

  v34 = *(v32 + 2);

  v35 = *(v32 + 4);

  v36 = *(v32 + 6);

  v37 = *(v32 + 8);

  v38 = *(v32 + 10);

  v39 = v14[13];
  if (!v17(&v32[v39], 1, v16))
  {
    (*(v118 + 8))(&v32[v39], v16);
  }

  v40 = v14[14];
  if (!v17(&v32[v40], 1, v16))
  {
    (*(v118 + 8))(&v32[v40], v16);
  }

  v41 = *&v32[v14[15] + 8];

  v42 = &v32[v14[18]];
  v43 = v42[1];
  if (v43 >> 60 != 15)
  {
    sub_2587C2610(*v42, v43);
  }

  v44 = v14[19];
  if (!v114(&v32[v44], 1, v23))
  {
    (*(v111 + 8))(&v32[v44], v23);
  }

  v45 = v14[21];
  if (!v17(&v32[v45], 1, v16))
  {
    (*(v118 + 8))(&v32[v45], v16);
  }

  v117(&v29[v31[6]], v28);
  v46 = &v29[v31[7]];
  v117(v46, v28);

  v47 = &v29[v31[8]];
  v117(v47, v28);
  v48 = type metadata accessor for MedicalIDWeightFormatter();

  v49 = v116 + v115[10];
  v50 = *(v49 + 1);

  v51 = *(v49 + 2);

  v52 = *(v49 + 4);

  v53 = *(v49 + 6);

  v54 = *(v49 + 8);

  v55 = *(v49 + 10);

  v56 = v14[13];
  if (!v17(&v49[v56], 1, v16))
  {
    (*(v118 + 8))(&v49[v56], v16);
  }

  v57 = v14[14];
  if (!v17(&v49[v57], 1, v16))
  {
    (*(v118 + 8))(&v49[v57], v16);
  }

  v58 = *&v49[v14[15] + 8];

  v59 = &v49[v14[18]];
  v60 = v59[1];
  if (v60 >> 60 != 15)
  {
    sub_2587C2610(*v59, v60);
  }

  v61 = v14[19];
  if (!v114(&v49[v61], 1, v23))
  {
    (*(v111 + 8))(&v49[v61], v23);
  }

  v62 = v14[21];
  if (!v17(&v49[v62], 1, v16))
  {
    (*(v118 + 8))(&v49[v62], v16);
  }

  v63 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  (v112)(&v49[v63[5]], v113);
  v117(&v49[v63[6]], v28);

  v64 = *&v49[v63[9] + 8];

  v65 = (v116 + v115[11]);

  v66 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  (v112)(v65 + *(v66 + 20), v113);
  v117(v65 + *(v66 + 24), v28);
  v67 = v116 + v115[12];
  v68 = *(v67 + 1);

  v69 = type metadata accessor for MedicalIDPregnancyViewModel();
  v70 = &v67[v69[5]];
  v71 = *(v70 + 1);

  v72 = *(v70 + 2);

  v73 = *(v70 + 4);

  v74 = *(v70 + 6);

  v75 = *(v70 + 8);

  v76 = *(v70 + 10);

  v77 = v14[13];
  if (!v17(&v70[v77], 1, v16))
  {
    (*(v118 + 8))(&v70[v77], v16);
  }

  v78 = v14[14];
  if (!v17(&v70[v78], 1, v16))
  {
    (*(v118 + 8))(&v70[v78], v16);
  }

  v79 = *&v70[v14[15] + 8];

  v80 = &v70[v14[18]];
  v81 = v80[1];
  if (v81 >> 60 != 15)
  {
    sub_2587C2610(*v80, v81);
  }

  v82 = v14[19];
  if (!v114(&v70[v82], 1, v23))
  {
    (*(v111 + 8))(&v70[v82], v23);
  }

  v83 = v14[21];
  if (!v17(&v70[v83], 1, v16))
  {
    (*(v118 + 8))(&v70[v83], v16);
  }

  (v112)(&v67[v69[6]], v113);
  v117(&v67[v69[7]], v28);
  v84 = *&v67[v69[8]];

  v85 = v69[9];
  if (!v17(&v67[v85], 1, v16))
  {
    (*(v118 + 8))(&v67[v85], v16);
  }

  v86 = v1[7];
  sub_2587C4E34(0, &qword_27F95DB18, MEMORY[0x28220C230], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v112)(&v101[v86], v113);
  }

  else
  {
    v87 = *&v101[v86];
  }

  v88 = v109[8];
  sub_2587C4E34(0, &qword_27F95DB20, MEMORY[0x28220C1A0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v117(&v101[v88], v28);
  }

  else
  {
    v89 = *&v101[v88];
  }

  v90 = v109[9];
  sub_2587C4E34(0, &qword_27F95DB28, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v91 = sub_2588BBF18();
    (*(*(v91 - 8) + 8))(&v101[v90], v91);
  }

  else
  {
    v92 = *&v101[v90];
  }

  v93 = &v101[v109[10]];
  v94 = *v93;

  v95 = v93[1];

  v96 = *&v101[v109[11] + 8];

  v97 = *&v101[v109[12] + 8];

  v98 = *&v101[v109[13] + 8];

  v99 = *&v101[v109[14] + 8];

  (*(v107 + 8))(v110 + ((v104 + v103 + v102) & ~v102), v108);

  return swift_deallocObject();
}

uint64_t sub_2587957D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_25879589C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2587C5D94(v4);
}

uint64_t sub_2587958C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDData();
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

uint64_t sub_258795984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDData();
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

uint64_t sub_258795A60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  sub_2587CC6E8(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[7];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[10]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    sub_2587CC500(0, &qword_27F95DAB8, MEMORY[0x28220C228], MEMORY[0x277CDF468]);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[11];
      goto LABEL_5;
    }

    sub_2587CC500(0, &qword_27F95DAC0, MEMORY[0x28220C148], MEMORY[0x277CDF468]);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[12];
      goto LABEL_5;
    }

    sub_2587CC500(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v19 = v18;
    v20 = *(*(v18 - 8) + 48);
    v21 = a1 + a3[13];

    return v20(v21, a2, v19);
  }
}

void sub_258795CDC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_2587CC6E8(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10]) = (a2 - 1);
    return;
  }

  sub_2587CC500(0, &qword_27F95DAB8, MEMORY[0x28220C228], MEMORY[0x277CDF468]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[11];
    goto LABEL_5;
  }

  sub_2587CC500(0, &qword_27F95DAC0, MEMORY[0x28220C148], MEMORY[0x277CDF468]);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[12];
    goto LABEL_5;
  }

  sub_2587CC500(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[13];

  v20(v21, a2, a2, v19);
}

double sub_258795F7C@<D0>(_OWORD *a1@<X8>)
{
  sub_2587AA634();
  sub_2588BC5A8();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_258795FE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_258796090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDDataViewModel();
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_258796150(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDDataViewModel();
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_258796274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2587D2BD4(0, &qword_27F95DAC0, MEMORY[0x28220C158], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_2587D2BD4(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2587963EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_2587D2BD4(0, &qword_27F95DAC0, MEMORY[0x28220C158], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_2587D2BD4(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_258796564()
{
  v1 = type metadata accessor for MedicalIDEditEmergencyContactsModalView(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  v4 = *v3;

  v5 = v3[2];

  if (v3[5])
  {

    v6 = v3[7];

    v7 = v3[8];

    v8 = v3[10];
  }

  v9 = v3[11];

  v10 = *(v1 + 32);
  sub_2587D2BD4(0, &qword_27F95DB20, MEMORY[0x28220C158], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2588BBAC8();
    (*(*(v11 - 8) + 8))(v3 + v10, v11);
  }

  else
  {
    v12 = *(v3 + v10);
  }

  v13 = *(v1 + 36);
  sub_2587D2BD4(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_2588BC038();
    (*(*(v14 - 8) + 8))(v3 + v13, v14);
  }

  else
  {
    v15 = *(v3 + v13);
  }

  return swift_deallocObject();
}

uint64_t sub_258796788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2587D2BD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_2587D2BD4(0, &qword_27F95DF90, MEMORY[0x277CDF0E0], MEMORY[0x277CE10B8]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

void sub_25879690C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2587D2BD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    sub_2587D2BD4(0, &qword_27F95DF90, MEMORY[0x277CDF0E0], MEMORY[0x277CE10B8]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_258796BC8()
{
  v1 = (type metadata accessor for MedicalIDEmergencyContactsEditView(0) - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2587D2BD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  (*(*(v4 - 8) + 8))(v3, v4);

  v5 = *(v3 + v1[8] + 8);

  v6 = v3 + v1[9];
  v7 = sub_2588BD568();
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_2587D2BD4(0, &qword_27F95DF90, MEMORY[0x277CDF0E0], MEMORY[0x277CE10B8]);
  v9 = *(v6 + *(v8 + 28));

  return swift_deallocObject();
}

uint64_t sub_258796D74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_258796DAC(uint64_t a1, uint64_t a2)
{
  sub_2587D5D94(0, &qword_27F95E010, sub_2587D6028, sub_2587D6558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258796E40(uint64_t a1)
{
  sub_2587D5D94(0, &qword_27F95E010, sub_2587D6028, sub_2587D6558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258796EE0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  v7 = *(v0 + 104);

  v8 = *(v0 + 120);

  v9 = *(v0 + 152);

  return swift_deallocObject();
}

uint64_t sub_258797040(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_2587DBED8(0, &qword_27F95DAB8, MEMORY[0x28220C240], MEMORY[0x277CDF468]);
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
      sub_2587DBED8(0, &qword_27F95DAC0, MEMORY[0x28220C198], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_2587971AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2587DBED8(0, &qword_27F95DAB8, MEMORY[0x28220C240], MEMORY[0x277CDF468]);
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
      sub_2587DBED8(0, &qword_27F95DAC0, MEMORY[0x28220C198], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_258797318()
{
  sub_2587DB484(255);
  sub_2587DBC18();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_258797378(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2588BC138();
  sub_2588BC208();
  sub_2588BC788();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_258797424(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_2587DD1C4(&v4);
}

uint64_t sub_258797460(__int128 *a1, uint64_t *a2)
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

uint64_t sub_258797550(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2587DE888(v2, v3);
}

uint64_t sub_258797594()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_2587975F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_258797660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDPersonalInfoViewModel();
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

uint64_t sub_25879771C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDPersonalInfoViewModel();
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

uint64_t sub_25879783C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDPersonalInfoViewModel();
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

uint64_t sub_2587978F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDPersonalInfoViewModel();
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

uint64_t sub_2587979BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t sub_258797A84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_258797B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2587E89C8(0, &qword_27F95E668, MEMORY[0x277CDE530], MEMORY[0x277CDF468]);
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

void sub_258797C88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2587E89C8(0, &qword_27F95E668, MEMORY[0x277CDE530], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_258797D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2587E8E94(0, &qword_27F95D880, MEMORY[0x28220BF30]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_2587E8E94(0, &qword_27F95DA80, MEMORY[0x28220B6D0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 76);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_258797ED8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_2587E8E94(0, &qword_27F95D880, MEMORY[0x28220BF30]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_2587E8E94(0, &qword_27F95DA80, MEMORY[0x28220B6D0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 76);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_258798050(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MedicalIDPregnancyViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }

  sub_2587CC6E8(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v15 = *(v14 - 8);
    v16 = a3[6];
LABEL_13:
    v9 = *(v15 + 48);
    v10 = a1 + v16;
    goto LABEL_14;
  }

  sub_2587ED574(0, &qword_27F95DAB8, MEMORY[0x28220C250], MEMORY[0x277CDF468]);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v15 = *(v17 - 8);
    v16 = a3[9];
    goto LABEL_13;
  }

  sub_2587ED574(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[10];

  return v20(v21, a2, v19);
}

uint64_t sub_258798270(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for MedicalIDPregnancyViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  sub_2587CC6E8(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_2587ED574(0, &qword_27F95DAB8, MEMORY[0x28220C250], MEMORY[0x277CDF468]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  sub_2587ED574(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  v18 = v17;
  v19 = *(*(v17 - 8) + 56);
  v20 = a1 + a4[10];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_2587984E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2587EEA60(v2, v3);
}

uint64_t sub_258798524(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2587EEEC8(v2, v3);
}

uint64_t sub_258798564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2588BBAC8();
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

uint64_t sub_258798620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2588BBAC8();
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

void sub_258798708(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_2587F4560(&v3);
}

uint64_t sub_258798744(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_2587F489C(&v4);
}

uint64_t sub_258798780(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_2587F3F40(&v4);
}

uint64_t sub_2587987BC(__int128 *a1, uint64_t *a2)
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
  sub_2587914E8(v10, &v9);
  return sub_2587F6790(a1);
}

uint64_t sub_258798850(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_2587FAAF8(0, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_258798930(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2587FAAF8(0, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_258798A0C(uint64_t a1, uint64_t a2)
{
  sub_2587F9CB8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258798A78()
{
  sub_2587FA5B4();
  sub_2587F9AFC(255);
  type metadata accessor for RelationshipPickerView();
  sub_2587FA688();
  sub_2587FA228(&qword_27F95E9B0, type metadata accessor for RelationshipPickerView);
  swift_getOpaqueTypeConformance2();
  sub_2587913CC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_258798B6C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_258798BBC()
{
  v1 = type metadata accessor for BasicAlertModel.Action();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = sub_2588BB9F8();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = *(v3 + v1[5] + 8);

  v6 = v1[6];
  v7 = sub_2588BBDE8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  v9 = (v3 + v1[7]);
  if (*v9)
  {
    v10 = v9[1];
  }

  return swift_deallocObject();
}

uint64_t sub_258798D48()
{
  sub_2587FC55C();
  sub_2587FC60C();
  sub_2587FC7CC(255, &qword_27F95D970);
  sub_2587FC940(&qword_27F95EA28, sub_2587FC55C);
  sub_25878F648();
  sub_2587FC818();
  sub_2587FC8C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_258798E38(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_2587FEFD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_258798F18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2587FEFD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_258798FFC()
{
  v1 = (type metadata accessor for NanoEmergencyContactAddNewView() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + v2 + 8);

  v6 = *(v0 + v2 + 16);

  v7 = *(v0 + v2 + 24);

  v8 = v1[8];
  sub_2587FEFD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);
  v10 = *(v0 + v2 + v1[9] + 8);

  v11 = *(v0 + v2 + v1[10] + 8);

  v12 = *(v0 + v2 + v1[11]);

  return swift_deallocObject();
}

uint64_t sub_258799170()
{
  sub_2587FEB98();
  sub_2587FE91C();
  type metadata accessor for RelationshipPickerView();
  sub_2587FEB50(&qword_27F95EAB0, sub_2587FE91C);
  sub_2587FEB50(&qword_27F95E9B0, type metadata accessor for RelationshipPickerView);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_258799288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258800A64(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_258799374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258800A64(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }
}

uint64_t sub_25879947C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_2588028C0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_25879955C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2588028C0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_25879963C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_258799680()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  v7 = *(v0 + 104);

  v8 = *(v0 + 120);

  v9 = *(v0 + 152);

  return swift_deallocObject();
}

uint64_t sub_258799708()
{
  sub_258801EB4();
  sub_258802924(255, &qword_27F95E110, MEMORY[0x277D83940]);
  sub_25880232C();
  sub_258802454();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2587997A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258799810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_258799880()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_2587998E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258799950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2587999C0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_258799A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258799A8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_258799AFC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_258799B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_258799C18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_258799CE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258799D4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_258799DBC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_258799E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_258799EE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_258799FA4()
{
  v1 = type metadata accessor for NanoOrganDonorEditView();
  v32 = *(*(v1 - 8) + 80);
  v31 = *(*(v1 - 8) + 64);
  v2 = v0 + ((v32 + 16) & ~v32);
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

  v29 = *(v2 + *(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_25879A340()
{
  v1 = type metadata accessor for NanoOrganDonorEditView();
  v33 = *(*(v1 - 8) + 80);
  v32 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  v3 = v0 + ((v33 + 32) & ~v33);
  v4 = *(v3 + 8);

  v5 = *(v3 + 16);

  v6 = *(v3 + 32);

  v7 = *(v3 + 48);

  v8 = *(v3 + 64);

  v9 = *(v3 + 80);

  v10 = type metadata accessor for MedicalIDData();
  v11 = v10[13];
  v12 = sub_2588BB9B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!v14(v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v3 + v11, v12);
  }

  v15 = v10[14];
  if (!v14(v3 + v15, 1, v12))
  {
    (*(v13 + 8))(v3 + v15, v12);
  }

  v16 = *(v3 + v10[15] + 8);

  v17 = (v3 + v10[18]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_2587C2610(*v17, v18);
  }

  v19 = v10[19];
  v20 = sub_2588BB818();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v3 + v19, 1, v20))
  {
    (*(v21 + 8))(v3 + v19, v20);
  }

  v22 = v10[21];
  if (!v14(v3 + v22, 1, v12))
  {
    (*(v13 + 8))(v3 + v22, v12);
  }

  v23 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v24 = v23[5];
  v25 = sub_2588BBB48();
  (*(*(v25 - 8) + 8))(v3 + v24, v25);
  v26 = v23[6];
  v27 = sub_2588BBAC8();
  (*(*(v27 - 8) + 8))(v3 + v26, v27);

  v28 = *(v3 + v23[9] + 8);

  v29 = *(v3 + *(v1 + 20) + 8);

  v30 = *(v3 + *(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_25879A734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDPregnancyViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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
    sub_258806D88(0, &qword_27F95DC50, sub_2587AFFC8, MEMORY[0x277CE10B8]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_25879A898(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDPregnancyViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    sub_258806D88(0, &qword_27F95DC50, sub_2587AFFC8, MEMORY[0x277CE10B8]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_25879A9F0()
{
  v1 = type metadata accessor for NanoPregnancyEditView();
  v39 = *(*(v1 - 8) + 80);
  v40 = v1;
  v38 = *(*(v1 - 8) + 64);
  v2 = v0 + ((v39 + 16) & ~v39);
  v3 = *(v2 + 8);

  v4 = type metadata accessor for MedicalIDPregnancyViewModel();
  v5 = v2 + v4[5];
  v6 = *(v5 + 8);

  v7 = *(v5 + 16);

  v8 = *(v5 + 32);

  v9 = *(v5 + 48);

  v10 = *(v5 + 64);

  v11 = *(v5 + 80);

  v12 = type metadata accessor for MedicalIDData();
  v13 = v12[13];
  v14 = sub_2588BB9B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (!v16(v5 + v13, 1, v14))
  {
    (*(v15 + 8))(v5 + v13, v14);
  }

  v17 = v12[14];
  if (!v16(v5 + v17, 1, v14))
  {
    (*(v15 + 8))(v5 + v17, v14);
  }

  v37 = v15;
  v18 = *(v5 + v12[15] + 8);

  v19 = (v5 + v12[18]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_2587C2610(*v19, v20);
  }

  v21 = v12[19];
  v22 = sub_2588BB818();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v5 + v21, 1, v22))
  {
    (*(v23 + 8))(v5 + v21, v22);
  }

  v24 = v12[21];
  if (!v16(v5 + v24, 1, v14))
  {
    (*(v37 + 8))(v5 + v24, v14);
  }

  v25 = v4[6];
  v26 = sub_2588BBB48();
  (*(*(v26 - 8) + 8))(v2 + v25, v26);
  v27 = v4[7];
  v28 = sub_2588BBAC8();
  (*(*(v28 - 8) + 8))(v2 + v27, v28);
  v29 = *(v2 + v4[8]);

  v30 = v4[9];
  if (!v16(v2 + v30, 1, v14))
  {
    (*(v37 + 8))(v2 + v30, v14);
  }

  v31 = *(v2 + v40[5] + 8);

  v32 = v2 + v40[6];
  if (!v16(v32, 1, v14))
  {
    (*(v37 + 8))(v32, v14);
  }

  sub_258806D88(0, &qword_27F95DC50, sub_2587AFFC8, MEMORY[0x277CE10B8]);
  v34 = *(v32 + *(v33 + 28));

  v35 = *(v2 + v40[7]);

  return swift_deallocObject();
}

uint64_t sub_25879AE48()
{
  v45 = type metadata accessor for NanoPregnancyEditView();
  v46 = *(*(v45 - 1) + 80);
  v40 = *(*(v45 - 1) + 64);
  sub_2587AFFC8(0);
  v2 = *(*(v1 - 8) + 80);
  v43 = *(*(v1 - 8) + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v47 = v0;
  v41 = (v46 + 32) & ~v46;
  v4 = v0 + v41;
  v5 = *(v0 + v41 + 8);

  v6 = type metadata accessor for MedicalIDPregnancyViewModel();
  v7 = v0 + v41 + v6[5];
  v8 = *(v7 + 8);

  v9 = *(v7 + 16);

  v10 = *(v7 + 32);

  v11 = *(v7 + 48);

  v12 = *(v7 + 64);

  v13 = *(v7 + 80);

  v14 = type metadata accessor for MedicalIDData();
  v15 = v14[13];
  v16 = sub_2588BB9B8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (!v18(v7 + v15, 1, v16))
  {
    (*(v17 + 8))(v7 + v15, v16);
  }

  v19 = v14[14];
  if (!v18(v7 + v19, 1, v16))
  {
    (*(v17 + 8))(v7 + v19, v16);
  }

  v42 = v17;
  v44 = v2;
  v20 = *(v7 + v14[15] + 8);

  v21 = (v7 + v14[18]);
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    sub_2587C2610(*v21, v22);
  }

  v23 = v14[19];
  v24 = sub_2588BB818();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v7 + v23, 1, v24))
  {
    (*(v25 + 8))(v7 + v23, v24);
  }

  v26 = v14[21];
  if (!v18(v7 + v26, 1, v16))
  {
    (*(v42 + 8))(v7 + v26, v16);
  }

  v27 = v6[6];
  v28 = sub_2588BBB48();
  (*(*(v28 - 8) + 8))(v4 + v27, v28);
  v29 = v6[7];
  v30 = sub_2588BBAC8();
  (*(*(v30 - 8) + 8))(v4 + v29, v30);
  v31 = *(v4 + v6[8]);

  v32 = v6[9];
  if (!v18(v4 + v32, 1, v16))
  {
    (*(v42 + 8))(v4 + v32, v16);
  }

  v33 = (v41 + v40 + v44) & ~v44;
  v34 = *(v4 + v45[5] + 8);

  v35 = v4 + v45[6];
  if (!v18(v35, 1, v16))
  {
    (*(v42 + 8))(v35, v16);
  }

  sub_258806D88(0, &qword_27F95DC50, sub_2587AFFC8, MEMORY[0x277CE10B8]);
  v37 = *(v35 + *(v36 + 28));

  v38 = *(v4 + v45[7]);

  if (!v18(v47 + v33, 1, v16))
  {
    (*(v42 + 8))(v47 + v33, v16);
  }

  return swift_deallocObject();
}

uint64_t sub_25879B3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25879B488(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_25879B544(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_25880BE98(0, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_25879B624(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_25880BE98(0, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_25879B6F8(uint64_t a1, uint64_t a2)
{
  sub_25880BE98(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25879B794(uint64_t a1, uint64_t a2)
{
  sub_25880BE98(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25879B87C()
{
  sub_25880AD60();
  sub_25880AE24(255);
  sub_25880A9A4();
  sub_25880C02C(&qword_27F95EC88, sub_25880A9A4);
  swift_getOpaqueTypeConformance2();
  sub_25880C02C(&qword_27F95ECF8, sub_25880AE24);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25879B9CC()
{
  v1 = *(type metadata accessor for NanoMultipleSpokenLanguagesView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  sub_25880BE98(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_25879BAD0()
{
  v1 = *(type metadata accessor for NanoMultipleSpokenLanguagesView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_25880BE98(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 40);

  return swift_deallocObject();
}

uint64_t sub_25879BC00()
{
  v1 = (type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + v2 + 8);

  v5 = *(v0 + v2 + 16);

  v6 = *(v0 + v2 + 32);

  v7 = (v0 + v2 + v1[9]);
  sub_25880BE98(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v7;

  if (EnumCaseMultiPayload == 1)
  {
    v10 = *(v7 + 1);

    sub_258804A60(0);
    v12 = *(v11 + 32);
    v13 = sub_2588BC298();
    (*(*(v13 - 8) + 8))(&v7[v12], v13);
  }

  v14 = (v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = v14[1];

  v16 = v14[3];

  v17 = v14[5];

  return swift_deallocObject();
}

uint64_t sub_25879BD90()
{
  v33 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageView(0);
  v34 = *(*(v33 - 8) + 80);
  v31 = *(*(v33 - 8) + 64);
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v32 = (v34 + 32) & ~v34;
  v2 = v0 + v32;
  v3 = *(v0 + v32 + 8);

  v4 = *(v0 + v32 + 16);

  v5 = *(v0 + v32 + 32);

  v6 = *(v0 + v32 + 48);

  v7 = *(v0 + v32 + 64);

  v8 = *(v0 + v32 + 80);

  v9 = type metadata accessor for MedicalIDData();
  v10 = v9[13];
  v11 = sub_2588BB9B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v0 + v32 + v10, 1, v11))
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

  v28 = *(v2 + *(v33 + 20));

  v29 = *(v0 + ((v31 + v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_25879C1E8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for NanoPickerView() - 8);
  v4 = *(*v3 + 64);
  v5 = (v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80)));
  v6 = v5[1];

  v7 = v5[2];

  v8 = v5[4];

  v9 = v5 + v3[13];
  v10 = *v9;

  v11 = *(v9 + 1);

  v12 = sub_2588BD488();
  (*(*(v2 - 8) + 8))(&v9[*(v12 + 32)], v2);
  v13 = v5 + v3[14];
  sub_258810D18(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  LODWORD(v3) = swift_getEnumCaseMultiPayload();
  v14 = *v13;

  if (v3 == 1)
  {
    v15 = *(v13 + 1);

    sub_258804A60(0);
    v17 = *(v16 + 32);
    v18 = sub_2588BC298();
    (*(*(v18 - 8) + 8))(&v13[v17], v18);
  }

  return swift_deallocObject();
}

uint64_t sub_25879C3C0(uint64_t a1, uint64_t a2)
{
  sub_258810BA0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25879C424(uint64_t a1)
{
  sub_258810BA0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25879C490(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2588BDA08();
  v3 = *(v2 + 16);
  swift_getAssociatedTypeWitness();
  sub_2588BDCE8();
  v5 = *(v2 + 8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_2588BD4D8();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_2588BD3B8();
  sub_2588BC1E8();
  sub_2588BC1E8();
  sub_2588BC1E8();
  sub_258810BA0();
  swift_getTupleTypeMetadata2();
  sub_2588BD658();
  return swift_getWitnessTable();
}

uint64_t sub_25879C6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258811084(0, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_25879C7C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258811084(0, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }
}

uint64_t sub_25879C8C0()
{
  v1 = type metadata accessor for NanoConfirmationDeleteView();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  sub_258811084(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(v0 + v2);

  if (EnumCaseMultiPayload == 1)
  {
    v8 = *(v5 + 8);

    sub_258804A60(0);
    v10 = *(v9 + 32);
    v11 = sub_2588BC298();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  v12 = *(v5 + *(v1 + 20));

  v13 = (v5 + *(v1 + 24));
  v14 = *v13;

  v15 = v13[1];

  return swift_deallocObject();
}

uint64_t sub_25879CA8C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 136);

  return swift_deallocObject();
}

uint64_t sub_25879CB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDDataViewModel();
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

uint64_t sub_25879CBD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDDataViewModel();
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

uint64_t sub_25879CC98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2588BC3E8();
  *a1 = result;
  return result;
}

uint64_t sub_25879CCC4(uint64_t *a1)
{
  v1 = *a1;

  return sub_2588BC3F8();
}

uint64_t sub_25879CCF0()
{
  sub_258815FBC();
  sub_258816784();
  sub_258816F8C(&qword_27F95F0C8, sub_258815FBC);
  sub_258816838();
  sub_258816F8C(&qword_27F95F0C0, sub_258816838);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25879CE40(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_258817194(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_25879CF20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258817194(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_25879D048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDDataViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_25881C0EC(0, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_25879D19C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDDataViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    sub_25881C0EC(0, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_25879D340()
{
  sub_25881B1D8();
  sub_25881ACE8();
  sub_25881B314();
  sub_25881C1B8(&qword_27F95F200, sub_25881ACE8);
  sub_25881B3C8();
  sub_25881C1B8(&qword_27F95F1F8, sub_25881B3C8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25879D498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDDataViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 8)
    {
      return v10 - 7;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25879D550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDDataViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 7;
  }

  return result;
}

uint64_t sub_25879D640()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25879D678(uint64_t *a1)
{
  v1 = *a1;
  sub_25881FDB0(255);
  sub_25881FD44(255, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
  sub_2588BC1E8();
  sub_25881FD44(255, &qword_27F95ECD0, &qword_27F95ECD8, MEMORY[0x277CE0F78]);
  sub_2588BC1E8();
  swift_getTupleTypeMetadata2();
  sub_2588BD658();

  return swift_getWitnessTable();
}

uint64_t sub_25879D7B8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_25879D804(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MedicalIDDataViewModel();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_25879D8B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MedicalIDDataViewModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25879D954@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2588BC488();
  *a1 = result;
  return result;
}

uint64_t sub_25879D980(uint64_t *a1)
{
  v1 = *a1;

  return sub_2588BC498();
}

uint64_t sub_25879D9AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2588BC458();
  *a1 = result;
  return result;
}

uint64_t sub_25879DA4C()
{

  return swift_deallocObject();
}

uint64_t sub_25879DA90()
{
  sub_2588267E8();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_25879DBFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_2587CC620(*a1, v3);
  return sub_25882E734(v2, v3);
}

uint64_t sub_25879DC40(uint64_t a1)
{
  sub_2588291A0(0, &qword_27F95F6B0, sub_2588290A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25879DCC0()
{
  sub_2588291A0(255, &qword_27F95F6B0, sub_2588290A8);
  sub_2587CC4B0();
  sub_25882BA28();
  sub_25882BB70();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25879DE24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2588BC568();
  *a1 = result;
  return result;
}

uint64_t sub_25879DE50(uint64_t *a1)
{
  v1 = *a1;

  return sub_2588BC578();
}

uint64_t sub_25879DE80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25879DEC4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_25879DF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDMedicalInfoViewModel();
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

uint64_t sub_25879E050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDMedicalInfoViewModel();
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

uint64_t sub_25879E10C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2588BBB48();
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
      v13 = sub_2588BBAC8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_25879E230(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_2588BBB48();
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
      v13 = sub_2588BBAC8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_25879E354()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_25879E3C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25879E42C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_258832768(v2, v3);
}

uint64_t sub_25879E49C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_258832118(v2, v3);
}

uint64_t sub_25879E518()
{
  v1 = sub_2588BCB08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_25879E5A0()
{
  sub_258837E84();
  sub_258837FA4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25879E5FC()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = type metadata accessor for MedicalIDEditModal();
  v4 = (*(*(v3 - 1) + 80) + 48) & ~*(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = &v0[v4];
  sub_25883A2CC(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2588BC038();
    (*(*(v8 - 8) + 8))(&v0[v4], v8);
  }

  else
  {
    v9 = *v7;
  }

  v10 = *&v7[v3[9] + 8];

  v11 = *&v7[v3[10] + 8];

  v12 = &v7[v3[11]];
  v13 = *v12;

  v14 = *(v12 + 1);

  if (*(v12 + 3))
  {

    v15 = *(v12 + 5);

    v16 = *(v12 + 6);

    v17 = *(v12 + 8);
  }

  (*(*(v2 - 8) + 8))(&v7[v3[12]], v2);
  v18 = *&v7[v3[13] + 8];

  return swift_deallocObject();
}

uint64_t sub_25879E7EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2588BC138();
  swift_getOpaqueTypeMetadata2();
  sub_25883A2CC(255, &qword_27F95FAB0, sub_25883A330, MEMORY[0x277CDDF58]);
  swift_getOpaqueTypeConformance2();
  sub_25883A504();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_2588BC208();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_25883A58C(255, &qword_27F95FAE0, MEMORY[0x277D839B0], MEMORY[0x277CE0898]);
  sub_2588BC1E8();
  sub_2588BC1E8();
  swift_getOpaqueTypeConformance2();
  sub_25883A5E8();
  swift_getWitnessTable();
  sub_2587FC5B8();
  return swift_getWitnessTable();
}

uint64_t sub_25879EA34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MedicalIDBiometricsViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_25883AC34(0, &qword_27F95FAF0, sub_25883AC00, MEMORY[0x277CE11F8]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    sub_25883AC34(0, &qword_27F95DAC0, MEMORY[0x28220C1A8], MEMORY[0x277CDF468]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[9];

    return v17(v18, a2, v16);
  }
}

void sub_25879EBFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MedicalIDBiometricsViewModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_25883AC34(0, &qword_27F95FAF0, sub_25883AC00, MEMORY[0x277CE11F8]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    sub_25883AC34(0, &qword_27F95DAC0, MEMORY[0x28220C1A8], MEMORY[0x277CDF468]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 56);
    v18 = a1 + a4[9];

    v17(v18, a2, a2, v16);
  }
}

uint64_t sub_25879EDC8()
{
  sub_25883C4AC();
  sub_25883C5EC();
  sub_25883C3FC();
  sub_2588BBAC8();
  sub_25883C328();
  sub_25883C3A8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_25883C6EC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25879EF14(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[5];
  sub_2588BD518();
  v7 = vextq_s8(*(a1 + 3), *(a1 + 3), 8uLL);
  swift_getWitnessTable();
  sub_2588BCD08();
  sub_258840D70(255, &qword_27F95D5F8, sub_2587AA704, MEMORY[0x277CE0860]);
  sub_2588BC1E8();
  swift_getWitnessTable();
  sub_258840DD4();
  swift_getWitnessTable();
  sub_2588BC2C8();
  return swift_getWitnessTable();
}

uint64_t sub_25879F060(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2588BB818();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25879F10C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2588BB818();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25879F1B0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_258847458(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[9] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_2588BB9B8();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[10];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  sub_2587AFFC8(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[11];
    goto LABEL_11;
  }

  sub_258847458(0, &qword_27F95E7E8, MEMORY[0x28220BF88], MEMORY[0x277CE10B8]);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[17];

  return v19(v20, a2, v18);
}

void sub_25879F3C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_258847458(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    v11(v12, a2, a2, v10);
    return;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 8) = (a2 - 1);
    return;
  }

  v13 = sub_2588BB9B8();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[10];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_2587AFFC8(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[11];
    goto LABEL_9;
  }

  sub_258847458(0, &qword_27F95E7E8, MEMORY[0x28220BF88], MEMORY[0x277CE10B8]);
  v18 = v17;
  v19 = *(*(v17 - 8) + 56);
  v20 = a1 + a4[17];

  v19(v20, a2, a2, v18);
}

uint64_t sub_25879F5E4(uint64_t *a1)
{
  v1 = *a1;
  sub_2587DFBD0();
  sub_258846410(255);
  sub_2588BC788();
  swift_getTupleTypeMetadata3();
  sub_2588BD658();
  swift_getWitnessTable();
  sub_2588BD368();
  sub_258846D18(255);
  sub_2588BC788();
  swift_getTupleTypeMetadata2();
  sub_2588BD658();
  swift_getWitnessTable();
  sub_2588BD408();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for MedicalIDAXLayoutView();
  sub_2588BC1E8();
  sub_258837EEC();
  sub_2588BC1E8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25884772C(qword_27F95FA28, sub_258837EEC);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_2587AFFC8(255);
  swift_getOpaqueTypeConformance2();
  sub_258846EB8();
  swift_getOpaqueTypeMetadata2();
  sub_2588BB9B8();
  swift_getOpaqueTypeConformance2();
  sub_258847538(&qword_27F95E768);
  swift_getOpaqueTypeMetadata2();
  sub_2588463DC(255);
  swift_getTupleTypeMetadata2();
  sub_2588BD658();
  return swift_getWitnessTable();
}

uint64_t sub_25879F974(uint64_t *a1)
{
  v1 = *a1;
  sub_258848A9C(255, &qword_27F95FE70, type metadata accessor for MedicalIDCellHeaderView, MEMORY[0x277D83D88]);
  swift_getTupleTypeMetadata2();
  sub_2588BD658();
  swift_getWitnessTable();
  sub_2588BD408();
  sub_2588BC1E8();
  swift_getWitnessTable();
  sub_258848828();
  return swift_getWitnessTable();
}

uint64_t sub_25879FA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
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
    v8 = type metadata accessor for MedicalIDMedicalInfoViewModel();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25879FB30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for MedicalIDMedicalInfoViewModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25879FBD0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_25879FC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25879FCF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25879FDB4(uint64_t a1, uint64_t a2)
{
  sub_25884BD4C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25879FE20()
{
  sub_25884BB34();
  type metadata accessor for MedicalIDSpokenLanguagePickerView();
  sub_25884C0B4(&qword_27F95FF60, sub_25884BB34);
  sub_25884C0B4(&qword_27F95FF68, type metadata accessor for MedicalIDSpokenLanguagePickerView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25879FF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2588BBAC8();
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

uint64_t sub_25879FFC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2588BBAC8();
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

uint64_t sub_2587A0080(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    sub_25884E588(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2587A0160(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_25884E588(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2587A029C(uint64_t a1, uint64_t a2)
{
  sub_2588535A8(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2587A0338(uint64_t a1, uint64_t a2)
{
  sub_2588535A8(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2587A03D8()
{
  v1 = *(type metadata accessor for MedicalIDLearnMoreNavigationView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  sub_2588535A8(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_2588BC038();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
    v5 = *(v0 + v2);
  }

  return swift_deallocObject();
}

uint64_t sub_2587A04FC()
{
  sub_2588522EC();
  sub_25885360C(&qword_27F960058, sub_2588522EC);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2587A0584()
{
  sub_258853348();
  sub_25885320C();
  sub_258853108();
  sub_258853054();
  sub_2588BC848();
  sub_258852C38();
  sub_25885360C(&qword_27F9600C8, sub_258852C38);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2587A0700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDPregnancyViewModel();
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

uint64_t sub_2587A07BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDPregnancyViewModel();
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

uint64_t sub_2587A08BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2588558E4(0, &qword_27F95E8B8, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2588BC1C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 52);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 56));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2587A09E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2588558E4(0, &qword_27F95E8B8, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2588BC1C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 56)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 52);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2587A0B10(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_2588BC788();
  v5 = *(a1 + 1);
  return swift_getWitnessTable();
}

uint64_t sub_2587A0B6C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2587EE1A8(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    sub_258855A40(0, &qword_27F95DAB8, MEMORY[0x28220C258], MEMORY[0x277CDF468]);
    v17 = v16;
    v18 = *(*(v16 - 8) + 48);
    v19 = a1 + a3[7];

    return v18(v19, a2, v17);
  }
}

void sub_2587A0D10(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_2587EE1A8(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    sub_258855A40(0, &qword_27F95DAB8, MEMORY[0x28220C258], MEMORY[0x277CDF468]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 56);
    v18 = a1 + a4[7];

    v17(v18, a2, a2, v16);
  }
}

uint64_t sub_2587A0EA8()
{
  v1 = type metadata accessor for EditDateOfBirthCellView();
  v42 = *(*(v1 - 8) + 80);
  v41 = *(*(v1 - 8) + 64);
  v2 = v0 + ((v42 + 16) & ~v42);
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

  v21 = v1;

  v22 = v9[21];
  if (!v13(v2 + v22, 1, v11))
  {
    (*(v12 + 8))(v2 + v22, v11);
  }

  v23 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v24 = v23[5];
  v25 = sub_2588BBB48();
  v26 = (*(v25 - 8) + 8);
  v40 = *v26;
  (*v26)(v2 + v24, v25);
  v27 = v23[6];
  v28 = sub_2588BBAC8();
  (*(*(v28 - 8) + 8))(v2 + v27, v28);

  v29 = *(v2 + v23[9] + 8);

  v30 = (v2 + v21[5]);
  v31 = *v30;

  v32 = *(v30 + 1);

  sub_2587EE1A8(0);
  v34 = *(v33 + 32);
  if (!v13(&v30[v34], 1, v11))
  {
    (*(v12 + 8))(&v30[v34], v11);
  }

  v35 = (v2 + v21[6]);
  if (*v35)
  {
    v36 = v35[1];
  }

  v37 = v21[7];
  sub_258855A40(0, &qword_27F95DB18, MEMORY[0x28220C258], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40(v2 + v37, v25);
  }

  else
  {
    v38 = *(v2 + v37);
  }

  return swift_deallocObject();
}

uint64_t sub_2587A1354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258857954(0, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2587A1434(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 96) = (a2 - 1);
  }

  else
  {
    sub_258857954(0, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2587A15C8(uint64_t a1)
{
  sub_25885AFE4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2587A1700()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_2587A1760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDSettingsViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2587A181C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDSettingsViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2587A1930()
{
  v1 = type metadata accessor for MedicalIDEditSettingsView();
  v34 = *(*(v1 - 1) + 80);
  v33 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  v3 = v0 + ((v34 + 32) & ~v34);
  v4 = *(v3 + 8);

  v5 = *(v3 + 16);

  v6 = *(v3 + 32);

  v7 = *(v3 + 48);

  v8 = *(v3 + 64);

  v9 = *(v3 + 80);

  v10 = type metadata accessor for MedicalIDData();
  v11 = v10[13];
  v12 = sub_2588BB9B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!v14(v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v3 + v11, v12);
  }

  v15 = v10[14];
  if (!v14(v3 + v15, 1, v12))
  {
    (*(v13 + 8))(v3 + v15, v12);
  }

  v16 = *(v3 + v10[15] + 8);

  v17 = (v3 + v10[18]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_2587C2610(*v17, v18);
  }

  v19 = v10[19];
  v20 = sub_2588BB818();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v3 + v19, 1, v20))
  {
    (*(v21 + 8))(v3 + v19, v20);
  }

  v22 = v10[21];
  if (!v14(v3 + v22, 1, v12))
  {
    (*(v13 + 8))(v3 + v22, v12);
  }

  v23 = type metadata accessor for MedicalIDSettingsViewModel(0);

  v24 = *(v3 + v23[6] + 8);

  v25 = *(v3 + v23[11] + 8);

  v26 = *(v3 + v1[5] + 8);

  v27 = *(v3 + v1[6] + 8);

  v28 = (v3 + v1[7]);
  v29 = *v28;

  v30 = v28[1];

  v31 = *(v3 + v1[9]);

  return swift_deallocObject();
}

uint64_t sub_2587A1CC8()
{
  sub_258861104();
  sub_2588615C4(255, &qword_27F95F468, MEMORY[0x277D839B0], MEMORY[0x277D83940]);
  sub_2588610DC(255);
  type metadata accessor for MedicalIDLearnMoreNavigationView();
  sub_2588611D8();
  sub_25886084C(&qword_27F95E780, type metadata accessor for MedicalIDLearnMoreNavigationView);
  swift_getOpaqueTypeConformance2();
  sub_2588221D4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2587A1DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDMedicalInfoViewModel();
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

uint64_t sub_2587A1EB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDMedicalInfoViewModel();
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

uint64_t sub_2587A1F74(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for MedicalIDData();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_2588BBB48();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = sub_2588BBAC8();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[9];

  return v17(v18, a2, v16);
}

uint64_t sub_2587A214C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for MedicalIDData();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2588BBB48();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = sub_2588BBAC8();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = v5 + a4[9];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2587A2324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25886A2BC(0, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_2587A2410(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_25886A2BC(0, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_2587A24FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2587A2544()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2587A2584(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_25886C4F4(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2587A2664(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_25886C4F4(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2587A2738()
{
  sub_25886BAF0();
  sub_25886C9D4(&qword_27F9608E8, sub_25886BAF0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2587A27CC(uint64_t a1, uint64_t a2)
{
  sub_25886C4F4(0, &qword_27F960860, sub_25886C634, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587A2860(uint64_t a1)
{
  sub_25886C4F4(0, &qword_27F960860, sub_25886C634, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2587A28EC(uint64_t a1, uint64_t a2)
{
  sub_2587A99C0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587A2960()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_2587A29C0()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  return swift_deallocObject();
}

uint64_t sub_2587A2A1C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_258874404(0, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2587A2AFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258874404(0, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2587A2BD4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  if (*(v0 + 80))
  {

    v4 = *(v0 + 96);

    v5 = *(v0 + 104);

    v6 = *(v0 + 120);
  }

  v7 = *(v0 + 128);

  return swift_deallocObject();
}

uint64_t sub_2587A2C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258878620(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
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
}

void sub_2587A2D60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258878620(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }
}

uint64_t sub_2587A2E5C()
{
  sub_258877AB4(255);
  sub_258878620(255, &qword_27F960B70, sub_258877E40, MEMORY[0x277CE14B8]);
  sub_258877F30();
  sub_25878F648();
  sub_258878314();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2587A2F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDMedicalInfoViewModel();
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

uint64_t sub_2587A3048(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDMedicalInfoViewModel();
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

id sub_2587A310C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_2587A3168()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_2587A31AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_25887FBA4(v4);
}

uint64_t sub_2587A31DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2587A3228(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  sub_2588BDA08();
  v4 = *(v3 + 8);
  swift_getOpaqueTypeMetadata2();
  sub_2588BCA98();
  sub_2588BC1E8();
  swift_getWitnessTable();
  sub_2588BD4D8();
  swift_getOpaqueTypeConformance2();
  sub_25888829C(&qword_27F95D9D8, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2588BD3B8();
  sub_2588BC1E8();
  sub_2588BC318();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_2588BB9F8();
  swift_getOpaqueTypeConformance2();
  sub_2587B2C84();
  sub_2588BD378();
  sub_2588BDCE8();
  swift_getTupleTypeMetadata2();
  sub_2588BD658();
  sub_2588BD238();
  sub_258837EEC();
  sub_2588BC1E8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25888829C(qword_27F95FA28, sub_258837EEC);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2587A35E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2588BC408();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2587A360C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2588BC418();
}

uint64_t sub_2587A365C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for MedicalIDData();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_2588BBAC8();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = type metadata accessor for MedicalIDHeightFormatter();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = type metadata accessor for MedicalIDWeightFormatter();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_2587A3810(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for MedicalIDData();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2588BBAC8();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = type metadata accessor for MedicalIDHeightFormatter();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = type metadata accessor for MedicalIDWeightFormatter();
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_2587A39CC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2587A3A0C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MedicalIDBiometricsViewModel();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[7]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[11];
      goto LABEL_5;
    }

    sub_258890F00(0, &qword_27F95DAC0, MEMORY[0x28220C188], MEMORY[0x277CDF468]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[14];

    return v17(v18, a2, v16);
  }
}

void sub_2587A3C20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MedicalIDBiometricsViewModel();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    v13(a1 + v11, a2, a2, v9);
    return;
  }

  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
    return;
  }

  sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_5;
  }

  sub_258890F00(0, &qword_27F95DAC0, MEMORY[0x28220C188], MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = a1 + a4[14];

  v17(v18, a2, a2, v16);
}

uint64_t sub_2587A3E40(uint64_t a1, uint64_t a2)
{
  sub_25889A230(0, &qword_27F961160, sub_25889A020, sub_25889A0FC, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587A3FBC(uint64_t a1)
{
  sub_25889D72C(0, &qword_27F9612C0, sub_25889D788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2587A404C(uint64_t *a1)
{
  v1 = *a1;
  sub_2588A0310();
  sub_2588BDCE8();
  swift_getTupleTypeMetadata2();
  sub_2588BD658();
  sub_25889F07C(255, &qword_27F960120, type metadata accessor for MedicalIDPregnancyStatusLabelView, MEMORY[0x277D83D88]);
  swift_getWitnessTable();
  sub_2587D68A0();
  sub_2588A03D0();
  type metadata accessor for EditingScrollView();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2587A41A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDDataViewModel();
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

uint64_t sub_2587A4264(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDDataViewModel();
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

uint64_t sub_2587A4378()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2587A4450(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MedicalIDBiometricsViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_2588A5E40(0, &qword_27F95DAC0, MEMORY[0x28220C180], MEMORY[0x277CDF468]);
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

  sub_2588A5E40(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[10]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    sub_2588A6034(0, &qword_27F9614E8, MEMORY[0x277CE10B8]);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[12];
      goto LABEL_7;
    }

    sub_2588A8960(0, &qword_27F961058, MEMORY[0x277CE10B8]);
    v19 = v18;
    v20 = *(*(v18 - 8) + 48);
    v21 = a1 + a3[13];

    return v20(v21, a2, v19);
  }
}

void sub_2587A46E0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MedicalIDBiometricsViewModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_2588A5E40(0, &qword_27F95DAC0, MEMORY[0x28220C180], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_2588A5E40(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10]) = (a2 - 1);
    return;
  }

  sub_2588A6034(0, &qword_27F9614E8, MEMORY[0x277CE10B8]);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[12];
    goto LABEL_7;
  }

  sub_2588A8960(0, &qword_27F961058, MEMORY[0x277CE10B8]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[13];

  v20(v21, a2, a2, v19);
}

uint64_t sub_2587A4A1C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2588ACDAC(0, &qword_27F95DAC0, MEMORY[0x28220C150], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    sub_2588ACDAC(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v14 = v13;
    v15 = *(*(v13 - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, v14);
  }
}

void sub_2587A4B98(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2588ACDAC(0, &qword_27F95DAC0, MEMORY[0x28220C150], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    sub_2588ACDAC(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v14 = v13;
    v15 = *(*(v13 - 8) + 56);
    v16 = a1 + a4[8];

    v15(v16, a2, a2, v14);
  }
}

uint64_t sub_2587A4D14()
{
  v1 = type metadata accessor for MedicalIDNavigationBarViewModifier();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = v1[5];
  sub_2588ACDAC(0, &qword_27F95DB20, MEMORY[0x28220C150], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2588BBAC8();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
    v6 = *(v3 + v4);
  }

  v7 = v1[8];
  sub_2588ACDAC(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2588BC038();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
    v9 = *(v3 + v7);
  }

  v10 = *(v3 + v1[9]);

  return swift_deallocObject();
}

uint64_t sub_2587A4F0C@<X0>(uint64_t a1@<X8>)
{
  result = sub_2588BC548();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2587A4F40(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_2588BC558();
}

uint64_t sub_2587A4FA0()
{
  sub_2588AC470();
  sub_2588AC5DC(255, &qword_27F961660, sub_2588AC880, sub_2588AC968);
  sub_2588AC328();
  sub_2588AC5DC(255, &qword_27F961628, sub_2588AC66C, sub_2588AC798);
  sub_2588AC3DC();
  sub_2588ACBF4(&qword_27F961618, sub_2588AC3DC);
  swift_getOpaqueTypeConformance2();
  sub_2588AC66C(255);
  sub_2588AC798();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_2588AC880(255);
  sub_2588AC968();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2587A5170@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2588BC528();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2587A51C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2588B04F0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
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

void sub_2587A52B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2588B04F0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_2587A53D0(uint64_t a1)
{
  sub_2588B158C(0, &qword_27F961740, sub_2588B1270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2587A546C()
{
  sub_2588B158C(255, &qword_27F961740, sub_2588B1270);
  sub_2588B185C(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  sub_2588B18AC();
  sub_2588B1C10();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2587A5544(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_2588B42E8(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_2587A5624(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2588B42E8(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}