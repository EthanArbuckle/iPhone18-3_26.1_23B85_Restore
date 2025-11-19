uint64_t sub_2580384C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEF)
  {
    *(result + 16) = 0;
    *result = a2 - 240;
    *(result + 8) = 0;
    if (a3 >= 0xF0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF0)
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

uint64_t sub_258038508(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x10)
  {
    *result = a2 - 16;
    *(result + 8) = 0;
    LOBYTE(a2) = 16;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_258038534(unint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 200;
      break;
    case 2:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 201;
      break;
    case 3:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 202;
      break;
    case 4:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 203;
      break;
    case 5:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 204;
      break;
    case 6:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 205;
      break;
    case 7:
      sub_25804A3B0();
      MEMORY[0x259C76670](0xD00000000000003ALL, 0x80000002580515D0);
      MEMORY[0x259C76670](a1, a2);
      result = 206;
      break;
    case 8:
      sub_25804A3B0();
      MEMORY[0x259C76670](0xD000000000000032, 0x8000000258051590);
      MEMORY[0x259C76670](a1, a2);
      result = 207;
      break;
    case 9:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 300;
      break;
    case 10:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 301;
      break;
    case 11:
      sub_25804A3B0();
      MEMORY[0x259C76670](0xD000000000000042, 0x80000002580514E0);
      MEMORY[0x259C76670](a1, a2);
      result = 400;
      break;
    case 12:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 405;
      break;
    case 13:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 401;
      break;
    case 14:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 402;
      break;
    case 15:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 403;
      break;
    case 16:
      if (a1 > 1)
      {
        v6 = a1 ^ 2 | a2;
        v7 = 101;
        v8 = 404;
      }

      else
      {
        v6 = a1 | a2;
        v7 = 1;
        v8 = 102;
      }

      if (v6)
      {
        result = v8;
      }

      else
      {
        result = v7;
      }

      break;
    default:
      sub_25804A3B0();

      MEMORY[0x259C76670](a1, a2);
      result = 100;
      break;
  }

  return result;
}

uint64_t sub_258038BF0(uint64_t a1)
{
  v2 = sub_258038D90();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_258038C2C(uint64_t a1)
{
  v2 = sub_258038D90();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_258038C94()
{
  v1 = sub_258038534(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

unint64_t sub_258038CCC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA0, &qword_25804EED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25804B660;
  v5 = *MEMORY[0x277CCA068];
  *(inited + 32) = sub_25804A110();
  *(inited + 40) = v6;
  sub_258038534(v1, v2, v3);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v9 = sub_258036B88(inited);
  swift_setDeallocating();
  sub_258038DE4(inited + 32);
  return v9;
}

unint64_t sub_258038D90()
{
  result = qword_27F915C80;
  if (!qword_27F915C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915C80);
  }

  return result;
}

uint64_t sub_258038DE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA8, &qword_25804EEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258038E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_258041D84(a3, v27 - v11);
  v13 = sub_25804A270();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_257FDAB84(v12, &qword_27F915AF8, &qword_25804FCD0);
  }

  else
  {
    sub_25804A260();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25804A230();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_25804A130() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_257FDAB84(a3, &qword_27F915AF8, &qword_25804FCD0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_257FDAB84(a3, &qword_27F915AF8, &qword_25804FCD0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t static ManagedAppsPublicXPCProtocolError.publicError(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  if (v10 == 11)
  {
    sub_258039248(v8, v9, 0xBu);
    v4 = MEMORY[0x277D25A98];
    goto LABEL_11;
  }

  if (v10 == 12)
  {
    sub_258039248(v8, v9, 0xCu);
LABEL_9:
    v4 = MEMORY[0x277D25AB0];
    goto LABEL_11;
  }

  if (v10 == 16 && __PAIR128__((v8 != 0) + v9 - 1, v8 - 1) < 2)
  {
    goto LABEL_9;
  }

  sub_258039248(v8, v9, v10);
LABEL_7:
  v4 = MEMORY[0x277D25AA0];
LABEL_11:
  v5 = *v4;
  v6 = sub_258049C50();
  return (*(*(v6 - 8) + 104))(a2, v5, v6);
}

uint64_t sub_258039248(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFu)
  {
  }

  return result;
}

uint64_t sub_258039260(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;

  v6 = sub_25804A100();
  v7 = [a2 valueForEntitlement_];

  if (v7)
  {
    sub_25804A350();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (*(&v35 + 1))
  {
    sub_2580432A4(0, &qword_27F915CB0, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      if ([v33 BOOLValue])
      {
        if (qword_27F915188 != -1)
        {
          swift_once();
        }

        v8 = sub_258049D30();
        __swift_project_value_buffer(v8, qword_27F919E48);
        v9 = sub_258049D10();
        v10 = sub_25804A2C0();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_257FD4000, v9, v10, "Caller entitled for app configuration operations", v11, 2u);
          MEMORY[0x259C77210](v11, -1, -1);
        }

        *(v4 + 32) = 1;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_257FDAB84(&v36, &qword_27F915AC8, &unk_25804EC30);
  }

  v12 = sub_25804A100();
  v13 = [a2 valueForEntitlement_];

  if (v13)
  {
    sub_25804A350();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (*(&v35 + 1))
  {
    sub_2580432A4(0, &qword_27F915CB0, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      if ([v33 BOOLValue])
      {
        if (qword_27F915188 != -1)
        {
          swift_once();
        }

        v14 = sub_258049D30();
        __swift_project_value_buffer(v14, qword_27F919E48);
        v15 = sub_258049D10();
        v16 = sub_25804A2C0();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_257FD4000, v15, v16, "Caller entitled for internal operations", v17, 2u);
          MEMORY[0x259C77210](v17, -1, -1);
        }

        *(v4 + 33) = 1;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_257FDAB84(&v36, &qword_27F915AC8, &unk_25804EC30);
  }

  [a2 auditToken];
  v18 = sub_258039828(v36, *(&v36 + 1), v37, *(&v37 + 1));
  v19 = *(v4 + 40);
  *(v4 + 40) = v18;

  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v20 = sub_258049D30();
  __swift_project_value_buffer(v20, qword_27F919E48);

  v21 = sub_258049D10();
  v22 = sub_25804A2C0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v36 = v24;
    *v23 = 136315138;
    v25 = *(v4 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915CA8, &qword_25804F8E8);
    v26 = sub_25804A120();
    v28 = sub_258032C5C(v26, v27, &v36);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_257FD4000, v21, v22, "Client code identity: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x259C77210](v24, -1, -1);
    MEMORY[0x259C77210](v23, -1, -1);
  }

  if (*(v4 + 40) || (*(v4 + 32) & 1) != 0 || (*(v4 + 33) & 1) != 0)
  {
  }

  else
  {
    v30 = sub_258049D10();
    v31 = sub_25804A2D0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_257FD4000, v30, v31, "Failed to get code identity for un-entitled caller", v32, 2u);
      MEMORY[0x259C77210](v32, -1, -1);
    }
  }

  return v4;
}

id sub_258039828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v41[1] = *MEMORY[0x277D85DE8];
  if (*(v4 + 33))
  {
    sub_2580432A4(0, &qword_27F915CA0, 0x277D03500);
    sub_25804A310();
    v11 = v10;
    sub_25804A300();
    if (v11 && v12)
    {
      v13 = objc_allocWithZone(MEMORY[0x277D034C8]);
      v14 = sub_25804A100();

      v15 = sub_25804A100();

      v16 = sub_25804A100();
      v17 = [v13 initWithCodeSigningID:v14 teamID:v15 path:v16];

      result = v17;
      if (*(v5 + 33))
      {
        goto LABEL_22;
      }
    }

    else
    {

      result = 0;
      if (*(v4 + 33))
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v37 = a1;
    v38 = a2;
    v39 = a3;
    v40 = a4;
    result = [objc_opt_self() codeIdentityForAuditToken_];
    if (*(v4 + 33))
    {
      goto LABEL_22;
    }
  }

  if ((*(v5 + 32) & 1) == 0 && !result)
  {
    sub_2580432A4(0, &qword_27F915CA0, 0x277D03500);
    v19 = sub_25804A320();
    result = 0;
    if (v19)
    {
      v37 = a1;
      v38 = a2;
      v39 = a3;
      v40 = a4;
      v20 = [objc_opt_self() bundleIDFromAuditToken_];
      if (v20)
      {
        v21 = v20;
        v22 = sub_25804A110();
        v24 = v23;

        sub_25804A300();
        if (v24 && v25)
        {
          if (qword_27F915188 != -1)
          {
            swift_once();
          }

          v26 = sub_258049D30();
          __swift_project_value_buffer(v26, qword_27F919E48);

          v27 = sub_258049D10();
          v28 = sub_25804A2B0();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v41[0] = v30;
            *v29 = 136315138;
            *(v29 + 4) = sub_258032C5C(v22, v24, v41);
            _os_log_impl(&dword_257FD4000, v27, v28, "Overriding code identity for %s", v29, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v30);
            MEMORY[0x259C77210](v30, -1, -1);
            MEMORY[0x259C77210](v29, -1, -1);
          }

          v31 = objc_allocWithZone(MEMORY[0x277D034C8]);
          v32 = sub_25804A100();

          v33 = sub_25804A100();

          v34 = sub_25804A100();
          v35 = [v31 initWithCodeSigningID:v32 teamID:v33 path:v34];

          result = v35;
          goto LABEL_22;
        }
      }

      else
      {
        sub_25804A300();
      }

      result = 0;
    }
  }

LABEL_22:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_258039C20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_258039C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_258049D00();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258039D48, 0, 0);
}

uint64_t sub_258039D48()
{
  sub_2580432A4(0, &qword_27F915C98, 0x277D03550);
  sub_25804A2F0();
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  sub_258049CC0();
  v4 = *(v2 + 24);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_258039ED4;
  v6 = *(v0 + 64);

  return ManagedAppsServer.getConfigDetailsData(clientIdentity:)(v6);
}

uint64_t sub_258039ED4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 72);
  v8 = *v3;
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = v2;

  if (v2)
  {
    v6 = sub_25803A178;
  }

  else
  {
    v6 = sub_258039FEC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_258039FEC()
{
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  __swift_project_value_buffer(v1, qword_27F919E48);
  v2 = sub_258049D10();
  v3 = sub_25804A2C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_257FD4000, v2, v3, "getConfigDetailsData has data", v4, 2u);
    MEMORY[0x259C77210](v4, -1, -1);
  }

  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[4];

  sub_257FECD7C(v6, v5);
  v11(v6, v5, 0);
  sub_257FDAAB4(v6, v5);
  sub_257FDAAB4(v6, v5);
  (*(v8 + 8))(v7, v10);
  v12 = v0[8];

  v13 = v0[1];

  return v13();
}

uint64_t sub_25803A178()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[12];
  v3 = v0[4];
  v2 = v0[5];
  sub_258049C50();
  sub_258042A24();
  v4 = swift_allocError();
  static ManagedAppsPublicXPCProtocolError.publicError(_:)(v1, v5);
  v3(0, 0xF000000000000000, v4);

  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

void sub_25803A270(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_2580499A0();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_258049A40();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_25803A308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_258049D00();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25803A3CC, 0, 0);
}

uint64_t sub_25803A3CC()
{
  sub_2580432A4(0, &qword_27F915C98, 0x277D03550);
  sub_25804A2F0();
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  sub_258049CC0();
  v4 = *(v2 + 24);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_25803A550;
  v6 = *(v0 + 64);

  return sub_258021900(1, v6);
}

uint64_t sub_25803A550(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v7 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = sub_2580432EC;
  }

  else
  {
    v5 = sub_25803A664;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25803A664()
{
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E48);

  v3 = sub_258049D10();
  v4 = sub_25804A2C0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_257FD4000, v3, v4, "getPasswordIdentifiers: %ld", v7, 0xCu);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  else
  {
    v8 = *(v0 + 80);
  }

  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  (*(v0 + 32))(*(v0 + 80), 0);

  (*(v10 + 8))(v9, v12);
  v13 = *(v0 + 64);

  v14 = *(v0 + 8);

  return v14();
}

void sub_25803A818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_25804A1E0();
    if (a2)
    {
LABEL_3:
      v6 = sub_2580499A0();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_25803A8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v14;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_258049D00();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25803A980, 0, 0);
}

uint64_t sub_25803A980()
{
  sub_2580432A4(0, &qword_27F915C98, 0x277D03550);
  sub_25804A2F0();
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  sub_258049CC0();
  v4 = *(v2 + 24);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_25803AB10;
  v6 = *(v0 + 80);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);

  return ManagedAppsServer.getPassword(with:clientIdentity:)(v8, v7, v6);
}

uint64_t sub_25803AB10(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v9 = sub_25803ACF4;
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v9 = sub_25803AC44;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_25803AC44()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  (*(v0 + 48))(*(v0 + 112), *(v0 + 104), 0);

  (*(v2 + 8))(v1, v4);
  v5 = *(v0 + 80);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25803ACF4()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[12];
  v3 = v0[6];
  v2 = v0[7];
  sub_258049C50();
  sub_258042A24();
  v4 = swift_allocError();
  static ManagedAppsPublicXPCProtocolError.publicError(_:)(v1, v5);
  v3(0, 0, v4);

  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

void sub_25803ADEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_25804A100();
    if (a3)
    {
LABEL_3:
      v7 = sub_2580499A0();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_25803AE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_258049D00();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25803AF40, 0, 0);
}

uint64_t sub_25803AF40()
{
  sub_2580432A4(0, &qword_27F915C98, 0x277D03550);
  sub_25804A2F0();
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  sub_258049CC0();
  v4 = *(v2 + 24);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_25803B0C4;
  v6 = *(v0 + 64);

  return sub_258021900(2, v6);
}

uint64_t sub_25803B0C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v7 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = sub_2580432EC;
  }

  else
  {
    v5 = sub_25803B1D8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25803B1D8()
{
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E48);

  v3 = sub_258049D10();
  v4 = sub_25804A2C0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_257FD4000, v3, v4, "getCertificateIdentifiers: %ld", v7, 0xCu);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  else
  {
    v8 = *(v0 + 80);
  }

  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  (*(v0 + 32))(*(v0 + 80), 0);

  (*(v10 + 8))(v9, v12);
  v13 = *(v0 + 64);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_25803B38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v14;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_258049D00();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25803B45C, 0, 0);
}

uint64_t sub_25803B45C()
{
  sub_2580432A4(0, &qword_27F915C98, 0x277D03550);
  sub_25804A2F0();
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  sub_258049CC0();
  v4 = *(v2 + 24);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_25803B5EC;
  v6 = *(v0 + 80);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);

  return ManagedAppsServer.getCertificate(with:clientIdentity:)(v8, v7, v6);
}

uint64_t sub_25803B5EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = sub_25803B814;
  }

  else
  {
    *(v4 + 104) = a1;
    v7 = sub_25803B714;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25803B714()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = SecCertificateCopyData(v1);
  v8 = sub_258049A60();
  v10 = v9;

  sub_257FECD7C(v8, v10);
  v6(v8, v10, 0);
  sub_257FDAAB4(v8, v10);

  sub_257FDAAB4(v8, v10);
  (*(v3 + 8))(v2, v5);
  v11 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t sub_25803B814()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[12];
  v3 = v0[6];
  v2 = v0[7];
  sub_258049C50();
  sub_258042A24();
  v4 = swift_allocError();
  static ManagedAppsPublicXPCProtocolError.publicError(_:)(v1, v5);
  v3(0, 0xF000000000000000, v4);

  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_25803B90C(uint64_t a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, uint64_t, uint64_t, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = sub_25804A110();
  v10 = v9;
  _Block_copy(v7);

  a5(v8, v10, a1, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_25803B9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_258049D00();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25803BA78, 0, 0);
}

uint64_t sub_25803BA78()
{
  sub_2580432A4(0, &qword_27F915C98, 0x277D03550);
  sub_25804A2F0();
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  sub_258049CC0();
  v4 = *(v2 + 24);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_25803BBFC;
  v6 = *(v0 + 64);

  return sub_258021900(3, v6);
}

uint64_t sub_25803BBFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v7 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = sub_25803BEAC;
  }

  else
  {
    v5 = sub_25803BD10;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25803BD10()
{
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E48);

  v3 = sub_258049D10();
  v4 = sub_25804A2C0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_257FD4000, v3, v4, "getIdentityIdentifiers: %ld", v7, 0xCu);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  else
  {
    v8 = *(v0 + 80);
  }

  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  (*(v0 + 32))(*(v0 + 80), 0);

  (*(v10 + 8))(v9, v12);
  v13 = *(v0 + 64);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_25803BEAC()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[11];
  v3 = v0[4];
  v2 = v0[5];
  sub_258049C50();
  sub_258042A24();
  v4 = swift_allocError();
  static ManagedAppsPublicXPCProtocolError.publicError(_:)(v1, v5);
  v3(0, v4);

  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_25803BFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v14;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_258049D00();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25803C070, 0, 0);
}

uint64_t sub_25803C070()
{
  sub_2580432A4(0, &qword_27F915C98, 0x277D03550);
  sub_25804A2F0();
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  sub_258049CC0();
  v4 = *(v2 + 24);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_25803C1FC;
  v6 = *(v0 + 80);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);

  return ManagedAppsServer.getIdentityProxyEndpoint(with:clientIdentity:)(v8, v7, v6);
}

uint64_t sub_25803C1FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = sub_25803C3E4;
  }

  else
  {
    *(v4 + 104) = a1;
    v7 = sub_25803C324;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25803C324()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = v1;
  v6(v1, 0);

  (*(v3 + 8))(v2, v5);
  v8 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t sub_25803C3E4()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[12];
  v3 = v0[6];
  v2 = v0[7];
  sub_258049C50();
  sub_258042A24();
  v4 = swift_allocError();
  static ManagedAppsPublicXPCProtocolError.publicError(_:)(v1, v5);
  v3(0, v4);

  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_25803C4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v14;
  v8[8] = v15;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_258049D00();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v11 = *(v10 + 64) + 15;
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25803C5AC, 0, 0);
}

uint64_t sub_25803C5AC()
{
  sub_2580432A4(0, &qword_27F915C98, 0x277D03550);
  sub_25804A2F0();
  v1 = *(v0 + 88);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  sub_258049CC0();
  v4 = *(v2 + 24);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_25803C738;
  v6 = *(v0 + 88);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);

  return ManagedAppsServer.reportConfigDetailsState(code:reason:clientIdentity:)(v9, v7, v8, v6);
}

uint64_t sub_25803C738()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_25803C8E4;
  }

  else
  {
    v3 = sub_25803C84C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25803C84C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  (*(v0 + 56))(0);
  (*(v2 + 8))(v1, v4);
  v5 = *(v0 + 88);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25803C8E4()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[13];
  v3 = v0[7];
  v2 = v0[8];
  sub_258049C50();
  sub_258042A24();
  v4 = swift_allocError();
  static ManagedAppsPublicXPCProtocolError.publicError(_:)(v1, v5);
  v3(v4);

  v6 = v0[11];

  v7 = v0[1];

  return v7();
}

void sub_25803CA70(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_2580499A0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_25803CB44(int a1, int a2, void *aBlock, uint64_t a4, void (*a5)(uint64_t, void *))
{
  v7 = _Block_copy(aBlock);
  _Block_copy(v7);

  sub_258040584(v8, v7, a4, a5);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_25803CBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v11;
  *(v8 + 56) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return MEMORY[0x2822009F8](sub_25803CBFC, 0, 0);
}

uint64_t sub_25803CBFC()
{
  v1 = *(v0[2] + 24);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_25803CCA4;
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];

  return ManagedAppsServer.setAppConfig(recordID:appConfigRecord:persona:)(v7, v5, v6, v3, v4);
}

uint64_t sub_25803CCA4()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_25803CE20;
  }

  else
  {
    v3 = sub_25803CDB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25803CDB8()
{
  v1 = *(v0 + 72);
  (*(v0 + 64))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25803CE20()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v1;
  v3(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25803CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_25803CFC0, 0, 0);
}

uint64_t sub_25803CFC0()
{
  v1 = *(v0[2] + 24);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_25803D060;
  v4 = v0[3];
  v3 = v0[4];

  return ManagedAppsServer.removeAppConfig(recordID:)(v4, v3);
}

uint64_t sub_25803D060()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_25803D1DC;
  }

  else
  {
    v3 = sub_25803D174;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25803D174()
{
  v1 = *(v0 + 48);
  (*(v0 + 40))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25803D1DC()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v1;
  v3(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25803D2A4(uint64_t a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = _Block_copy(aBlock);
  v14 = sub_25804A110();
  v16 = v15;
  _Block_copy(v13);

  sub_258041158(v14, v16, a1, v13, a5, a6, a7, a8);
  _Block_release(v13);
  _Block_release(v13);
}

uint64_t sub_25803D36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_25803D3A0, 0, 0);
}

uint64_t sub_25803D3A0()
{
  v1 = *(v0[2] + 24);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_25803D444;
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];

  return ManagedAppsServer.updateAppBundleID(for:bundleID:)(v6, v5, v3, v4);
}

uint64_t sub_25803D444()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_25803D5C0;
  }

  else
  {
    v3 = sub_25803D558;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25803D558()
{
  v1 = *(v0 + 64);
  (*(v0 + 56))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25803D5C0()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v1;
  v3(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25803D710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_25803D744, 0, 0);
}

uint64_t sub_25803D744()
{
  v1 = *(v0[2] + 24);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_25803D7E8;
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];

  return ManagedAppsServer.updateAppCodeIdentity(for:appCodeIdentity:extensionCodeIdentities:)(v6, v5, v3, v4);
}

uint64_t sub_25803D7E8()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_258043374;
  }

  else
  {
    v3 = sub_25804337C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25803D9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_25803DA10, 0, 0);
}

uint64_t sub_25803DA10()
{
  v1 = *(v0[2] + 24);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_25803DAB0;
  v4 = v0[3];
  v3 = v0[4];

  return sub_25802AA3C(v4, v3, 1);
}

uint64_t sub_25803DAB0()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_258043378;
  }

  else
  {
    v3 = sub_258043380;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25803DC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_25803DC28, 0, 0);
}

uint64_t sub_25803DC28()
{
  v1 = *(v0[2] + 24);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_25803DAB0;
  v4 = v0[3];
  v3 = v0[4];

  return ManagedAppsServer.disableAppConfig(for:)(v4, v3);
}

uint64_t sub_25803DD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_25803DD2C, 0, 0);
}

uint64_t sub_25803DD2C()
{
  v1 = *(v0[2] + 24);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_25803DAB0;
  v4 = v0[3];
  v3 = v0[4];

  return ManagedAppsServer.completeRemovalOfAppConfig(for:)(v4, v3);
}

uint64_t sub_25803DE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_25803DE2C, 0, 0);
}

uint64_t sub_25803DE2C()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_25803DEC4;

  return ManagedAppsServer.getAllAppConfigState()();
}

uint64_t sub_25803DEC4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_25803E074;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_25803DFEC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25803DFEC()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v1;
  v3(v1, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25803E074()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v1;
  v3(0, v1);

  v5 = v0[1];

  return v5();
}

void sub_25803E11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2580499A0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_25803E18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_25803E230;

  return sub_2580378A4();
}

uint64_t sub_25803E230()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_25803E3AC;
  }

  else
  {
    v3 = sub_25803E344;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25803E344()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25803E3AC()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25803E474(int a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  _Block_copy(v11);

  sub_2580419C0(v12, v11, a4, a5, a6, a7);
  _Block_release(v11);
  _Block_release(v11);
}

uint64_t sub_25803E508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_25803E52C, 0, 0);
}

uint64_t sub_25803E52C()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_25803E5C4;

  return ManagedAppsServer.dumpDatabase()();
}

uint64_t sub_25803E5C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_25803E764;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_25803E6EC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25803E6EC()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))(*(v0 + 56), 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25803E764()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v1;
  v3(0, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25803E80C(int a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

void sub_25803E880(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AB0, &qword_25804E958);
    v5 = sub_25804A0D0();
  }

  if (a2)
  {
    v6 = sub_2580499A0();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_25803E938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_25803E95C, 0, 0);
}

uint64_t sub_25803E95C()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_25803E9F4;

  return ManagedAppsServer.eraseDatabase()();
}

uint64_t sub_25803E9F4()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_25803EB70;
  }

  else
  {
    v3 = sub_25803EB08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25803EB08()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25803EB70()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v1;
  v3(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25803EC38(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25803ED30;

  return v7(a1);
}

uint64_t sub_25803ED30()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25803EE28(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = sub_25804A270();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v11[5] = a1;
    v11[6] = sub_258043368;
    v11[7] = v8;
    _Block_copy(a2);
    v12 = v9;

    sub_258038E50(0, 0, v7, &unk_25804F8D8, v11);
  }

  else
  {
    _Block_copy(a2);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v14 = sub_258049D30();
    __swift_project_value_buffer(v14, qword_27F919E48);
    v15 = sub_258049D10();
    v16 = sub_25804A2D0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_257FD4000, v15, v16, "getConfigDetailsData called by invalid client", v17, 2u);
      MEMORY[0x259C77210](v17, -1, -1);
    }

    v18 = sub_258049C50();
    sub_258042A24();
    v19 = swift_allocError();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D25AA0], v18);
    v21 = sub_2580499A0();
    (a2)[2](a2, 0, v21);
  }
}

uint64_t sub_25803F118(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = sub_25804A270();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v11[5] = a1;
    v11[6] = sub_258043370;
    v11[7] = v8;
    _Block_copy(a2);
    v12 = v9;

    sub_258038E50(0, 0, v7, &unk_25804F8C8, v11);
  }

  else
  {
    _Block_copy(a2);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v14 = sub_258049D30();
    __swift_project_value_buffer(v14, qword_27F919E48);
    v15 = sub_258049D10();
    v16 = sub_25804A2D0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_257FD4000, v15, v16, "getPasswordIdentifiers called by invalid client", v17, 2u);
      MEMORY[0x259C77210](v17, -1, -1);
    }

    v18 = sub_258049C50();
    sub_258042A24();
    v19 = swift_allocError();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D25AA0], v18);
    v21 = sub_2580499A0();
    (a2)[2](a2, 0, v21);
  }
}

uint64_t sub_25803F408(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  v13 = *(a3 + 40);
  if (v13)
  {
    v14 = sub_25804A270();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;
    v15[5] = a3;
    v15[6] = a1;
    v15[7] = a2;
    v15[8] = sub_258042F60;
    v15[9] = v12;
    _Block_copy(a4);
    v16 = v13;

    sub_258038E50(0, 0, v11, &unk_25804F8B8, v15);
  }

  else
  {
    _Block_copy(a4);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v18 = sub_258049D30();
    __swift_project_value_buffer(v18, qword_27F919E48);
    v19 = sub_258049D10();
    v20 = sub_25804A2D0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_257FD4000, v19, v20, "getPassword called by invalid client", v21, 2u);
      MEMORY[0x259C77210](v21, -1, -1);
    }

    v22 = sub_258049C50();
    sub_258042A24();
    v23 = swift_allocError();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D25AA0], v22);
    v25 = sub_2580499A0();
    (a4)[2](a4, 0, v25);
  }
}

uint64_t sub_25803F718(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = sub_25804A270();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v11[5] = a1;
    v11[6] = sub_258043370;
    v11[7] = v8;
    _Block_copy(a2);
    v12 = v9;

    sub_258038E50(0, 0, v7, &unk_25804F8A8, v11);
  }

  else
  {
    _Block_copy(a2);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v14 = sub_258049D30();
    __swift_project_value_buffer(v14, qword_27F919E48);
    v15 = sub_258049D10();
    v16 = sub_25804A2D0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_257FD4000, v15, v16, "getCertificateIdentifiers called by invalid client", v17, 2u);
      MEMORY[0x259C77210](v17, -1, -1);
    }

    v18 = sub_258049C50();
    sub_258042A24();
    v19 = swift_allocError();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D25AA0], v18);
    v21 = sub_2580499A0();
    (a2)[2](a2, 0, v21);
  }
}

uint64_t sub_25803FA08(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  v13 = *(a3 + 40);
  if (v13)
  {
    v14 = sub_25804A270();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;
    v15[5] = a3;
    v15[6] = a1;
    v15[7] = a2;
    v15[8] = sub_258042D98;
    v15[9] = v12;
    _Block_copy(a4);
    v16 = v13;

    sub_258038E50(0, 0, v11, &unk_25804F898, v15);
  }

  else
  {
    _Block_copy(a4);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v18 = sub_258049D30();
    __swift_project_value_buffer(v18, qword_27F919E48);
    v19 = sub_258049D10();
    v20 = sub_25804A2D0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_257FD4000, v19, v20, "getCertificate called by invalid client", v21, 2u);
      MEMORY[0x259C77210](v21, -1, -1);
    }

    v22 = sub_258049C50();
    sub_258042A24();
    v23 = swift_allocError();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D25AA0], v22);
    v25 = sub_2580499A0();
    (a4)[2](a4, 0, v25);
  }
}

uint64_t sub_25803FD18(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = sub_25804A270();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v11[5] = a1;
    v11[6] = sub_258042CB8;
    v11[7] = v8;
    _Block_copy(a2);
    v12 = v9;

    sub_258038E50(0, 0, v7, &unk_25804F888, v11);
  }

  else
  {
    _Block_copy(a2);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v14 = sub_258049D30();
    __swift_project_value_buffer(v14, qword_27F919E48);
    v15 = sub_258049D10();
    v16 = sub_25804A2D0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_257FD4000, v15, v16, "getIdentityIdentifiers called by invalid client", v17, 2u);
      MEMORY[0x259C77210](v17, -1, -1);
    }

    v18 = sub_258049C50();
    sub_258042A24();
    v19 = swift_allocError();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D25AA0], v18);
    v21 = sub_2580499A0();
    (a2)[2](a2, 0, v21);
  }
}

uint64_t sub_258040008(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  v13 = *(a3 + 40);
  if (v13)
  {
    v14 = sub_25804A270();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;
    v15[5] = a3;
    v15[6] = a1;
    v15[7] = a2;
    v15[8] = sub_25804336C;
    v15[9] = v12;
    _Block_copy(a4);
    v16 = v13;

    sub_258038E50(0, 0, v11, &unk_25804F878, v15);
  }

  else
  {
    _Block_copy(a4);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v18 = sub_258049D30();
    __swift_project_value_buffer(v18, qword_27F919E48);
    v19 = sub_258049D10();
    v20 = sub_25804A2D0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_257FD4000, v19, v20, "getIdentity called by invalid client", v21, 2u);
      MEMORY[0x259C77210](v21, -1, -1);
    }

    v22 = sub_258049C50();
    sub_258042A24();
    v23 = swift_allocError();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D25AA0], v22);
    v25 = sub_2580499A0();
    (a4)[2](a4, 0, v25);
  }
}

uint64_t sub_258040318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  v15 = *(a4 + 40);
  if (v15)
  {
    v16 = sub_25804A270();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v15;
    v17[5] = a4;
    v17[6] = a1;
    v17[7] = a2;
    v17[8] = a3;
    v17[9] = sub_258043384;
    v17[10] = v14;
    _Block_copy(a5);

    v18 = v15;

    sub_258038E50(0, 0, v13, &unk_25804F868, v17);
  }

  else
  {
    v20 = sub_258049C50();
    sub_258042A24();
    v21 = swift_allocError();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D25AA0], v20);
    _Block_copy(a5);
    v23 = sub_2580499A0();
    (a5)[2](a5, v23);
  }
}

void sub_258040584(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void *))
{
  v8 = sub_258049D00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 40);
  if (v13)
  {
    sub_2580432A4(0, &qword_27F915C98, 0x277D03550);
    v14 = v13;
    sub_25804A2F0();
    v19 = v14;
    sub_258049CC0();
    v20 = sub_258049CD0();
    a4(a3, v20);

    v21 = sub_25804A100();
    (*(a2 + 16))(a2, v21, 0);

    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v15 = sub_258049C50();
    sub_258042A24();
    v16 = swift_allocError();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D25AA0], v15);
    v18 = sub_2580499A0();
    (*(a2 + 16))(a2, 0, v18);
  }
}

uint64_t sub_258040840(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void))
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a7;
  if (*(a6 + 32) == 1)
  {
    v19 = sub_25804A270();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = a6;
    v20[5] = a1;
    v20[6] = a2;
    v20[7] = a3;
    v20[8] = a4;
    v20[9] = a5;
    v20[10] = sub_258043384;
    v20[11] = v18;
    _Block_copy(a7);

    v21 = a3;
    sub_258038E50(0, 0, v17, &unk_25804F858, v20);
  }

  else
  {
    _Block_copy(a7);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v23 = sub_258049D30();
    __swift_project_value_buffer(v23, qword_27F919E48);
    v24 = sub_258049D10();
    v25 = sub_25804A2D0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_257FD4000, v24, v25, "Client doesn't have app config entitlement", v26, 2u);
      MEMORY[0x259C77210](v26, -1, -1);
    }

    sub_258036E5C();
    v27 = swift_allocError();
    *v28 = 0xD000000000000037;
    *(v28 + 8) = 0x8000000258051980;
    *(v28 + 16) = 0;
    v29 = sub_2580499A0();
    (a7)[2](a7, v29);
  }
}

uint64_t sub_258040B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v27 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  if (*(a5 + 32) == 1)
  {
    v17 = sub_25804A270();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = a5;
    v18[5] = a1;
    v18[6] = a2;
    v18[7] = a3;
    v18[8] = a4;
    v18[9] = sub_258043384;
    v18[10] = v16;
    _Block_copy(a6);

    sub_258038E50(0, 0, v15, &unk_25804F838, v18);
  }

  else
  {
    _Block_copy(a6);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v20 = sub_258049D30();
    __swift_project_value_buffer(v20, qword_27F919E48);
    v21 = sub_258049D10();
    v22 = sub_25804A2D0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_257FD4000, v21, v22, "Client doesn't have app config entitlement", v23, 2u);
      MEMORY[0x259C77210](v23, -1, -1);
    }

    sub_258036E5C();
    v24 = swift_allocError();
    *v25 = 0xD000000000000037;
    *(v25 + 8) = 0x8000000258051980;
    *(v25 + 16) = 0;
    v26 = sub_2580499A0();
    (a6)[2](a6, v26);
  }
}

uint64_t sub_258040E50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  if (*(a5 + 32) == 1)
  {
    v17 = sub_25804A270();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = a5;
    v18[5] = a1;
    v18[6] = a2;
    v18[7] = a3;
    v18[8] = a4;
    v18[9] = sub_258043384;
    v18[10] = v16;
    _Block_copy(a6);

    v19 = a3;

    sub_258038E50(0, 0, v15, &unk_25804F828, v18);
  }

  else
  {
    _Block_copy(a6);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v21 = sub_258049D30();
    __swift_project_value_buffer(v21, qword_27F919E48);
    v22 = sub_258049D10();
    v23 = sub_25804A2D0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_257FD4000, v22, v23, "Client doesn't have app config entitlement", v24, 2u);
      MEMORY[0x259C77210](v24, -1, -1);
    }

    sub_258036E5C();
    v25 = swift_allocError();
    *v26 = 0xD000000000000037;
    *(v26 + 8) = 0x8000000258051980;
    *(v26 + 16) = 0;
    v27 = sub_2580499A0();
    (a6)[2](a6, v27);
  }
}

uint64_t sub_258041158(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v29 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  if (*(a3 + 32) == 1)
  {
    v19 = sub_25804A270();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = a3;
    v20[5] = a1;
    v20[6] = a2;
    v20[7] = a7;
    v20[8] = v18;
    _Block_copy(a4);

    sub_258038E50(0, 0, v17, a8, v20);
  }

  else
  {
    _Block_copy(a4);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v22 = sub_258049D30();
    __swift_project_value_buffer(v22, qword_27F919E48);
    v23 = sub_258049D10();
    v24 = sub_25804A2D0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_257FD4000, v23, v24, "Client doesn't have app config entitlement", v25, 2u);
      MEMORY[0x259C77210](v25, -1, -1);
    }

    sub_258036E5C();
    v26 = swift_allocError();
    *v27 = 0xD000000000000037;
    *(v27 + 8) = 0x8000000258051980;
    *(v27 + 16) = 0;
    v28 = sub_2580499A0();
    (a4)[2](a4, v28);
  }
}

uint64_t sub_258041430(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  if (*(a1 + 32) == 1)
  {
    v9 = sub_25804A270();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a1;
    v10[5] = sub_258042134;
    v10[6] = v8;
    _Block_copy(a2);

    sub_258038E50(0, 0, v7, &unk_25804F7E8, v10);
  }

  else
  {
    _Block_copy(a2);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v12 = sub_258049D30();
    __swift_project_value_buffer(v12, qword_27F919E48);
    v13 = sub_258049D10();
    v14 = sub_25804A2D0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_257FD4000, v13, v14, "Client doesn't have app config entitlement", v15, 2u);
      MEMORY[0x259C77210](v15, -1, -1);
    }

    sub_258036E5C();
    v16 = swift_allocError();
    *v17 = 0xD000000000000037;
    *(v17 + 8) = 0x8000000258051980;
    *(v17 + 16) = 0;
    v18 = sub_2580499A0();
    (a2)[2](a2, 0, v18);
  }
}

uint64_t sub_2580416F8(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  if (*(a1 + 33) == 1)
  {
    v9 = sub_25804A270();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a1;
    v10[5] = sub_258041F9C;
    v10[6] = v8;
    _Block_copy(a2);

    sub_258038E50(0, 0, v7, &unk_25804F7C0, v10);
  }

  else
  {
    _Block_copy(a2);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v12 = sub_258049D30();
    __swift_project_value_buffer(v12, qword_27F919E48);
    v13 = sub_258049D10();
    v14 = sub_25804A2D0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_257FD4000, v13, v14, "Client doesn't have internal entitlement", v15, 2u);
      MEMORY[0x259C77210](v15, -1, -1);
    }

    sub_258036E5C();
    v16 = swift_allocError();
    *v17 = 0xD000000000000036;
    *(v17 + 8) = 0x8000000258051940;
    *(v17 + 16) = 0;
    v18 = sub_2580499A0();
    (a2)[2](a2, 0, v18);
  }
}

uint64_t sub_2580419C0(uint64_t a1, void (**a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  if (*(a1 + 33) == 1)
  {
    v15 = sub_25804A270();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a1;
    v16[5] = a5;
    v16[6] = v14;
    _Block_copy(a2);

    sub_258038E50(0, 0, v13, a6, v16);
  }

  else
  {
    _Block_copy(a2);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v18 = sub_258049D30();
    __swift_project_value_buffer(v18, qword_27F919E48);
    v19 = sub_258049D10();
    v20 = sub_25804A2D0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_257FD4000, v19, v20, "Client doesn't have internal entitlement", v21, 2u);
      MEMORY[0x259C77210](v21, -1, -1);
    }

    sub_258036E5C();
    v22 = swift_allocError();
    *v23 = 0xD000000000000036;
    *(v23 + 8) = 0x8000000258051940;
    *(v23 + 16) = 0;
    v24 = sub_2580499A0();
    (a2)[2](a2, v24);
  }
}

uint64_t sub_258041C78()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258041CBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257FDAFFC;

  return sub_25803E938(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_258041D84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258041DF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258041E2C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_257FDAFFC;

  return sub_25803EC38(a1, v5);
}

uint64_t sub_258041EE4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_257FD8590;

  return sub_25803EC38(a1, v5);
}

uint64_t sub_258041FA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257FDAFFC;

  return sub_25803E508(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25804206C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257FDAFFC;

  return sub_25803E18C(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_12Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_258042198(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257FDAFFC;

  return sub_25803DE08(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_258042260(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257FDAFFC;

  return sub_25803DD04(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_25804233C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257FDAFFC;

  return sub_25803DC00(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_258042418(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257FDAFFC;

  return sub_25803D9E8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2580424F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_258042554(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_257FDAFFC;

  return sub_25803D710(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_258042648()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2580426A0(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_257FDAFFC;

  return sub_25803D36C(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t objectdestroy_56Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2580427E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257FDAFFC;

  return sub_25803CF98(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2580428C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_258042924(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_257FDAFFC;

  return sub_25803CBC0(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_258042A24()
{
  result = qword_27F915C90;
  if (!qword_27F915C90)
  {
    sub_258049C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915C90);
  }

  return result;
}

uint64_t sub_258042A7C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_258042AD4(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_257FDAFFC;

  return sub_25803C4D8(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_258042BCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_257FD8590;

  return sub_25803BFA0(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_258042CC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_257FDAFFC;

  return sub_25803B9B4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_258042DA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_257FDAFFC;

  return sub_25803B38C(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_258042E8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_257FDAFFC;

  return sub_25803AE7C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_127Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_258042FC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_257FDAFFC;

  return sub_25803A8B0(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_2580430AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_257FDAFFC;

  return sub_25803A308(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_135Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2580431D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_257FDAFFC;

  return sub_258039C84(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2580432A4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

double ManagedAppsServiceProvider.__allocating_init(scope:server:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  result = 0.0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = a2;
  *(v4 + 56) = a1;
  return result;
}

uint64_t ManagedAppsServiceProvider.init(scope:server:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = a2;
  *(v2 + 56) = a1;
  return v2;
}

void sub_2580433E4()
{
  v1 = v0;
  v2 = v0[7];
  v3 = sub_258049B20();
  v4 = sub_258049B20();
  sub_258049B00();
  if (v3 == v4)
  {
    sub_258049AF0();
  }

  else
  {
    sub_258049AE0();
  }

  v5 = sub_258049B20();
  if (v5 == sub_258049B20())
  {
    sub_258049AD0();
  }

  else
  {
    sub_258049AC0();
  }

  v6 = v0[6];
  v7 = type metadata accessor for ManagedAppsServiceDelegate();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC15ManagedAppsCore26ManagedAppsServiceDelegate_scope] = v2;
  *&v8[OBJC_IVAR____TtC15ManagedAppsCore26ManagedAppsServiceDelegate_server] = v6;
  v8[OBJC_IVAR____TtC15ManagedAppsCore26ManagedAppsServiceDelegate_serviceType] = 0;
  v23.receiver = v8;
  v23.super_class = v7;

  v9 = objc_msgSendSuper2(&v23, sel_init);
  v10 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v11 = sub_25804A100();

  v12 = [v10 initWithMachServiceName_];

  [v12 setDelegate_];
  [v12 resume];
  v13 = objc_allocWithZone(v7);
  *&v13[OBJC_IVAR____TtC15ManagedAppsCore26ManagedAppsServiceDelegate_scope] = v2;
  *&v13[OBJC_IVAR____TtC15ManagedAppsCore26ManagedAppsServiceDelegate_server] = v6;
  v13[OBJC_IVAR____TtC15ManagedAppsCore26ManagedAppsServiceDelegate_serviceType] = 1;
  v22.receiver = v13;
  v22.super_class = v7;

  v14 = objc_msgSendSuper2(&v22, sel_init);
  v15 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v16 = sub_25804A100();

  v17 = [v15 initWithMachServiceName_];

  [v17 setDelegate_];
  [v17 resume];
  v18 = v1[2];
  v1[2] = v12;

  v19 = v1[3];
  v1[3] = v9;

  v20 = v1[4];
  v1[4] = v17;

  v21 = v1[5];
  v1[5] = v14;
}

uint64_t ManagedAppsServiceProvider.deinit()
{
  v1 = *(v0 + 48);

  return v0;
}

uint64_t ManagedAppsServiceProvider.__deallocating_deinit()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_258043768()
{
  v1 = v0;
  if (qword_27F915178 != -1)
  {
LABEL_16:
    swift_once();
  }

  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E18);

  v3 = sub_258049D10();
  v4 = sub_25804A2C0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v30[0] = v6;
    *v5 = 136315138;
    swift_beginAccess();
    v7 = *(v1 + 56);

    v8 = sub_25804A290();
    v10 = v9;

    v11 = sub_258032C5C(v8, v10, v30);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_257FD4000, v3, v4, "Sending notifications: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x259C77210](v6, -1, -1);
    MEMORY[0x259C77210](v5, -1, -1);
  }

  swift_beginAccess();
  v12 = *(v1 + 56);
  v27 = v1;
  sub_257FDA854(v1 + 16, v30);
  v13 = v12 + 56;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 56);
  v1 = (v14 + 63) >> 6;
  v28 = v12;
  swift_bridgeObjectRetain_n();
  v17 = 0;
  if (v16)
  {
    while (1)
    {
      v18 = v17;
LABEL_12:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v20 = (*(v28 + 48) + ((v18 << 10) | (16 * v19)));
      v21 = *v20;
      v22 = v20[1];
      v24 = v31;
      v23 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v29 = *(v23 + 8);

      v29(v21, v22, v24, v23);

      if (!v16)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v18 >= v1)
    {
      break;
    }

    v16 = *(v13 + 8 * v18);
    ++v17;
    if (v16)
    {
      v17 = v18;
      goto LABEL_12;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v30);

  v25 = *(v27 + 56);
  *(v27 + 56) = MEMORY[0x277D84FA0];
}

uint64_t sub_258043A60()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_258043AC4(char a1, void *a2)
{
  sub_25804A3B0();
  v4 = [a2 codeSigningID];
  v5 = sub_25804A110();

  MEMORY[0x259C76670](95, 0xE100000000000000);
  v6 = [a2 teamID];
  v7 = sub_25804A110();
  v9 = v8;

  MEMORY[0x259C76670](v7, v9);

  MEMORY[0x259C76670](95, 0xE100000000000000);
  if (a1)
  {
    if (a1 == 1)
    {
      v10 = 0x65446769666E6F63;
    }

    else
    {
      v10 = 0x704179636167656CLL;
    }

    if (a1 == 1)
    {
      v11 = 0xED0000736C696174;
    }

    else
    {
      v11 = 0xEF6769666E6F4370;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x259C76670](v10, v11);

  MEMORY[0x259C76670](0x6465676E6168635FLL, 0xE800000000000000);
  return v5;
}

uint64_t sub_258043C54(unsigned __int8 a1, void *a2)
{
  sub_25804A3B0();
  v4 = [a2 codeSigningID];
  v5 = sub_25804A110();

  MEMORY[0x259C76670](95, 0xE100000000000000);
  v6 = [a2 teamID];
  v7 = sub_25804A110();
  v9 = v8;

  MEMORY[0x259C76670](v7, v9);

  MEMORY[0x259C76670](95, 0xE100000000000000);
  v10 = 0xE700000000000000;
  v11 = 0x6E776F6E6B6E75;
  v12 = 0xEB00000000657461;
  v13 = 0x6369666974726563;
  if (a1 != 2)
  {
    v13 = 0x797469746E656469;
    v12 = 0xE800000000000000;
  }

  if (a1)
  {
    v11 = 0x64726F7773736170;
    v10 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  if (a1 <= 1u)
  {
    v15 = v10;
  }

  else
  {
    v15 = v12;
  }

  MEMORY[0x259C76670](v14, v15);

  MEMORY[0x259C76670](0x6465676E6168635FLL, 0xE800000000000000);
  return v5;
}

uint64_t sub_258043E14(uint64_t a1, unint64_t a2)
{
  if (qword_27F915178 != -1)
  {
    swift_once();
  }

  v4 = sub_258049D30();
  __swift_project_value_buffer(v4, qword_27F919E18);

  v5 = sub_258049D10();
  v6 = sub_25804A2C0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_258032C5C(a1, a2, &v11);
    _os_log_impl(&dword_257FD4000, v5, v6, "Posting Darwin notification: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v9 = sub_25804A130();
  notify_post((v9 + 32));
}

void sub_258043F88(uint64_t a1, unint64_t a2)
{
  if (qword_27F915178 != -1)
  {
    swift_once();
  }

  v4 = sub_258049D30();
  __swift_project_value_buffer(v4, qword_27F919E18);

  v5 = sub_258049D10();
  v6 = sub_25804A2C0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_258032C5C(a1, a2, &v11);
    _os_log_impl(&dword_257FD4000, v5, v6, "Posting DistributedNotificationCenter notification: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v9 = sub_25804A100();
  v10 = [objc_opt_self() defaultCenter];
  [v10 postNotificationName:v9 object:0];
}

uint64_t sub_258044130(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915540, &qword_25804BBB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = [a1 codeSigningID];
  v11 = sub_25804A110();
  v13 = v12;

  v25 = v11;
  v26 = v13;
  v27 = type metadata accessor for AppRecord(0);
  sub_258049A70();

  v14 = [a1 teamID];
  v15 = sub_25804A110();
  v17 = v16;

  v23 = v15;
  v24 = v17;
  sub_258049A70();

  v21 = v9;
  v22 = v7;
  sub_258049A70();
  v18 = *(v3 + 8);
  v18(v7, v2);
  return (v18)(v9, v2);
}

uint64_t sub_258044380@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v34 = a4;
  v37 = a2;
  v38 = a3;
  v39 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915CB8, &qword_25804F9D0);
  v7 = *(v6 - 8);
  v40 = v6;
  v41 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915548, &qword_25804BBB8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915CC0, &qword_25804F9D8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915CC8, &qword_25804F9E0);
  v21 = *(v20 - 8);
  v35 = v20;
  v36 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v32 - v23;
  v25 = *a1;
  sub_257FECB0C(&qword_27F915558, &qword_27F915548, &qword_25804BBB8);
  sub_258049990();
  swift_getKeyPath();
  sub_258049930();

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915CD0, &qword_25804FA10);
  type metadata accessor for AppCodeIdentityRecord(0);
  sub_257FECB0C(&qword_27F915CD8, &qword_27F915CC0, &qword_25804F9D8);
  sub_257FECB0C(&qword_27F915CE0, &qword_27F915CD0, &qword_25804FA10);
  sub_258049940();
  (*(v16 + 8))(v19, v15);
  v42 = v37;
  v43 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915528, &qword_25804BFA0);
  v26 = v33;
  sub_258049980();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915CE8, &qword_25804FA18);
  v28 = v39;
  v39[3] = v27;
  v28[4] = sub_258044A1C();
  __swift_allocate_boxed_opaque_existential_1(v28);
  sub_257FECB0C(&qword_27F915D18, &qword_27F915CC8, &qword_25804F9E0);
  sub_257FECB0C(&qword_27F915D20, &qword_27F915CB8, &qword_25804F9D0);
  sub_258012034(&qword_27F915D28);
  v29 = v35;
  v30 = v40;
  sub_258049920();
  (*(v41 + 8))(v26, v30);
  return (*(v36 + 8))(v24, v29);
}

uint64_t sub_2580448BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9154C8, &qword_25804BAF8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_257FECB0C(&qword_27F9154D8, &qword_27F9154C8, &qword_25804BAF8);
  sub_258049990();
  swift_getKeyPath();
  sub_258049930();

  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_258044A1C()
{
  result = qword_27F915CF0;
  if (!qword_27F915CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915CE8, &qword_25804FA18);
    sub_258044AA8();
    sub_258044C94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915CF0);
  }

  return result;
}

unint64_t sub_258044AA8()
{
  result = qword_27F915CF8;
  if (!qword_27F915CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915CC8, &qword_25804F9E0);
    sub_258044B34();
    sub_258044BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915CF8);
  }

  return result;
}

unint64_t sub_258044B34()
{
  result = qword_27F915D00;
  if (!qword_27F915D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915CC0, &qword_25804F9D8);
    sub_257FECB0C(&qword_27F915578, &qword_27F915548, &qword_25804BBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915D00);
  }

  return result;
}

unint64_t sub_258044BE4()
{
  result = qword_27F915D08;
  if (!qword_27F915D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915CD0, &qword_25804FA10);
    sub_257FECB0C(&qword_27F9154F8, &qword_27F9154C8, &qword_25804BAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915D08);
  }

  return result;
}

unint64_t sub_258044C94()
{
  result = qword_27F915D10;
  if (!qword_27F915D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915CB8, &qword_25804F9D0);
    sub_258012034(&qword_27F915520);
    sub_258012034(&qword_27F9159E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915D10);
  }

  return result;
}

uint64_t sub_258044D78(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915428, &qword_25804BA88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = [a1 codeSigningID];
  v11 = sub_25804A110();
  v13 = v12;

  v25 = v11;
  v26 = v13;
  v27 = type metadata accessor for ExtensionCodeIdentityRecord(0);
  sub_258049A70();

  v14 = [a1 teamID];
  v15 = sub_25804A110();
  v17 = v16;

  v23 = v15;
  v24 = v17;
  sub_258049A70();

  v21 = v9;
  v22 = v7;
  sub_258049A70();
  v18 = *(v3 + 8);
  v18(v7, v2);
  return (v18)(v9, v2);
}

uint64_t sub_258044FB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v26 = a4;
  v27 = a2;
  v28 = a3;
  v29 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915340, &qword_25804B890);
  v7 = *(v6 - 8);
  v30 = v6;
  v31 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915440, &qword_25804BA98);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915D80, &qword_25804FA88);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  v21 = *a1;
  sub_257FECB0C(&qword_27F915450, &qword_27F915440, &qword_25804BA98);
  sub_258049990();
  swift_getKeyPath();
  sub_258049930();

  (*(v12 + 8))(v15, v11);
  v32 = v27;
  v33 = v28;
  sub_258049980();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915D88, &qword_25804FAB8);
  v23 = v29;
  v29[3] = v22;
  v23[4] = sub_258045DCC();
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_257FECB0C(&qword_27F915DA0, &qword_27F915D80, &qword_25804FA88);
  sub_257FECB0C(&qword_27F915370, &qword_27F915340, &qword_25804B890);
  v24 = v30;
  sub_258049920();
  (*(v31 + 8))(v10, v24);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_258045340@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v33 = a2;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915548, &qword_25804BBB8);
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915DA8, &qword_25804FAE8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915DB0, &qword_25804FAF0);
  v14 = *(v13 - 8);
  v34 = v13;
  v35 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v31 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v29[2] = *a1;
  v30 = v29 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915540, &qword_25804BBB0);
  sub_258049980();
  v19 = sub_257FECB0C(&qword_27F915558, &qword_27F915548, &qword_25804BBB8);
  sub_258049990();
  v39 = v4;
  v40 = v7;
  sub_257FECB0C(&qword_27F915DB8, &qword_27F915DA8, &qword_25804FAE8);
  v38 = v19;
  sub_258049950();
  v20 = *(v9 + 8);
  v29[1] = v9 + 8;
  v20(v12, v8);
  v21 = *(v32 + 8);
  v21(v7, v4);
  sub_258049980();
  sub_258049990();
  v37 = v7;
  v22 = v31;
  sub_258049950();
  v20(v12, v8);
  v21(v7, v4);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915DC0, &qword_25804FAF8);
  v24 = v36;
  v36[3] = v23;
  v24[4] = sub_258045F10(&qword_27F915DC8, &qword_27F915DC0, &qword_25804FAF8, sub_258045F8C);
  __swift_allocate_boxed_opaque_existential_1(v24);
  sub_257FECB0C(&qword_27F915DF0, &qword_27F915DB0, &qword_25804FAF0);
  v25 = v30;
  v26 = v34;
  sub_258049970();
  v27 = *(v35 + 8);
  v27(v22, v26);
  return (v27)(v25, v26);
}

uint64_t sub_2580457A8@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v33 = a2;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915440, &qword_25804BA98);
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915D30, &qword_25804FA70);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915D38, &qword_25804FA78);
  v14 = *(v13 - 8);
  v34 = v13;
  v35 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v31 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v29[2] = *a1;
  v30 = v29 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915428, &qword_25804BA88);
  sub_258049980();
  v19 = sub_257FECB0C(&qword_27F915450, &qword_27F915440, &qword_25804BA98);
  sub_258049990();
  v39 = v4;
  v40 = v7;
  sub_257FECB0C(&qword_27F915D40, &qword_27F915D30, &qword_25804FA70);
  v38 = v19;
  sub_258049950();
  v20 = *(v9 + 8);
  v29[1] = v9 + 8;
  v20(v12, v8);
  v21 = *(v32 + 8);
  v21(v7, v4);
  sub_258049980();
  sub_258049990();
  v37 = v7;
  v22 = v31;
  sub_258049950();
  v20(v12, v8);
  v21(v7, v4);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915D48, &qword_25804FA80);
  v24 = v36;
  v36[3] = v23;
  v24[4] = sub_258045F10(&qword_27F915D50, &qword_27F915D48, &qword_25804FA80, sub_258045C18);
  __swift_allocate_boxed_opaque_existential_1(v24);
  sub_257FECB0C(&qword_27F915D78, &qword_27F915D38, &qword_25804FA78);
  v25 = v30;
  v26 = v34;
  sub_258049970();
  v27 = *(v35 + 8);
  v27(v22, v26);
  return (v27)(v25, v26);
}

unint64_t sub_258045C18()
{
  result = qword_27F915D58;
  if (!qword_27F915D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915D38, &qword_25804FA78);
    sub_258045CD8();
    sub_257FECB0C(&qword_27F915470, &qword_27F915440, &qword_25804BA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915D58);
  }

  return result;
}

unint64_t sub_258045CD8()
{
  result = qword_27F915D60;
  if (!qword_27F915D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915D30, &qword_25804FA70);
    sub_257FECB0C(&qword_27F915D68, &qword_27F915428, &qword_25804BA88);
    sub_257FECB0C(&qword_27F915D70, &qword_27F915428, &qword_25804BA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915D60);
  }

  return result;
}

unint64_t sub_258045DCC()
{
  result = qword_27F915D90;
  if (!qword_27F915D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915D88, &qword_25804FAB8);
    sub_258045E58();
    sub_257FEB3A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915D90);
  }

  return result;
}

unint64_t sub_258045E58()
{
  result = qword_27F915D98;
  if (!qword_27F915D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915D80, &qword_25804FA88);
    sub_257FECB0C(&qword_27F915470, &qword_27F915440, &qword_25804BA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915D98);
  }

  return result;
}

uint64_t sub_258045F10(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_258045F8C()
{
  result = qword_27F915DD0;
  if (!qword_27F915DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915DB0, &qword_25804FAF0);
    sub_25804604C();
    sub_257FECB0C(&qword_27F915578, &qword_27F915548, &qword_25804BBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915DD0);
  }

  return result;
}

unint64_t sub_25804604C()
{
  result = qword_27F915DD8;
  if (!qword_27F915DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915DA8, &qword_25804FAE8);
    sub_257FECB0C(&qword_27F915DE0, &qword_27F915540, &qword_25804BBB0);
    sub_257FECB0C(&qword_27F915DE8, &qword_27F915540, &qword_25804BBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915DD8);
  }

  return result;
}

uint64_t sub_258046138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[23] = a6;
  v7[24] = v6;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  v8 = sub_258049A20();
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v10 = *(v9 + 64) + 15;
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258046204, 0, 0);
}

uint64_t sub_258046204()
{
  v34 = v0;
  if (qword_27F915160 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v7 = sub_258049D30();
  __swift_project_value_buffer(v7, qword_27F919DD0);
  (*(v2 + 16))(v1, v4, v3);

  v8 = sub_258049D10();
  v9 = sub_25804A2C0();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[26];
  v11 = v0[27];
  v13 = v0[25];
  if (v10)
  {
    v31 = v0[20];
    v32 = v0[21];
    v14 = v0[18];
    v30 = v0[19];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315906;
    *(v15 + 4) = sub_258032C5C(0xD00000000000003FLL, 0x8000000258052020, &v33);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_258032C5C(v14, v30, &v33);
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_258032C5C(v31, v32, &v33);
    *(v15 + 32) = 2080;
    sub_258047CCC();
    v17 = sub_25804A550();
    v19 = v18;
    (*(v12 + 8))(v11, v13);
    v20 = sub_258032C5C(v17, v19, &v33);

    *(v15 + 34) = v20;
    _os_log_impl(&dword_257FD4000, v8, v9, "%s - resolving data asset: %s configurationIdentifier: %s to: %s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v16, -1, -1);
    MEMORY[0x259C77210](v15, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v21 = v0[23];
  v22 = sub_258049B20();
  v0[28] = v22;
  v23 = sub_258049B20();
  v0[29] = v23;
  v24 = v22 == v23;
  v25 = swift_task_alloc();
  v0[30] = v25;
  *v25 = v0;
  v25[1] = sub_25804650C;
  v26 = v0[24];
  v28 = v0[20];
  v27 = v0[21];

  return sub_2580474D4(v28, v27, v24);
}

uint64_t sub_25804650C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v5 = *v2;
  *(*v2 + 248) = a1;

  if (v1)
  {
    v6 = *(v3 + 216);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25804665C, 0, 0);
  }
}

uint64_t sub_25804665C()
{
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[19];
  v4 = objc_opt_self();
  v5 = sub_25804A100();
  v6 = [v4 newAssetKey_];
  v0[32] = v6;

  v7 = *(v1 + 24);
  v8 = [v6 assetIdentifier];
  if (!v8)
  {
    sub_25804A110();
    v8 = sub_25804A100();
  }

  v0[33] = v8;
  v9 = v0[31];
  v11 = v0[21];
  v10 = v0[22];
  v12 = v0[20];
  v13 = v0[28] == v0[29];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = sub_25804A100();
  v0[34] = v15;
  v16 = sub_2580499E0();
  v0[35] = v16;
  v0[2] = v0;
  v0[7] = v0 + 37;
  v0[3] = sub_258046874;
  v17 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915E10, &unk_25804FBB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_258046AC4;
  v0[13] = &block_descriptor_17;
  v0[14] = v17;
  [ObjCClassFromMetadata resolveDataAssetWithAssetIdentifier:v8 configurationIdentifier:v15 downloadURL:v16 subscriberStore:v9 scope:v13 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_258046874()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_258046A20;
  }

  else
  {
    v3 = sub_258046984;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258046984()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  v6 = v0[27];

  v7 = v0[1];

  return v7();
}

uint64_t sub_258046A20()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  swift_willThrow();

  v7 = v0[36];
  v8 = v0[27];

  v9 = v0[1];

  return v9();
}

uint64_t sub_258046AC4(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_258046B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[26] = a7;
  v8[27] = v7;
  v8[24] = a5;
  v8[25] = a6;
  v8[22] = a3;
  v8[23] = a4;
  v8[20] = a1;
  v8[21] = a2;
  return MEMORY[0x2822009F8](sub_258046BBC, 0, 0);
}

uint64_t sub_258046BBC()
{
  v25 = v0;
  if (qword_27F915160 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[21];
  v4 = sub_258049D30();
  __swift_project_value_buffer(v4, qword_27F919DD0);

  v5 = sub_258049D10();
  v6 = sub_25804A2C0();

  if (os_log_type_enabled(v5, v6))
  {
    v22 = v0[24];
    v23 = v0[25];
    v8 = v0[22];
    v7 = v0[23];
    v9 = v0[20];
    v10 = v0[21];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315906;
    *(v11 + 4) = sub_258032C5C(0xD000000000000040, 0x8000000258051FB0, &v24);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_258032C5C(v9, v10, &v24);
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_258032C5C(v8, v7, &v24);
    *(v11 + 32) = 2080;
    *(v11 + 34) = sub_258032C5C(v22, v23, &v24);
    _os_log_impl(&dword_257FD4000, v5, v6, "%s - resolving credential asset: %s configurationIdentifier: %s, accessGroup: %s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v12, -1, -1);
    MEMORY[0x259C77210](v11, -1, -1);
  }

  v13 = v0[26];
  v14 = sub_258049B20();
  v0[28] = v14;
  v15 = sub_258049B20();
  v0[29] = v15;
  v16 = v14 == v15;
  v17 = swift_task_alloc();
  v0[30] = v17;
  *v17 = v0;
  v17[1] = sub_258046E4C;
  v18 = v0[27];
  v20 = v0[22];
  v19 = v0[23];

  return sub_2580474D4(v20, v19, v16);
}

uint64_t sub_258046E4C(uint64_t a1)
{
  v3 = *(*v2 + 240);
  v4 = *v2;
  *(v4 + 248) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_258046F80, 0, 0);
  }
}

uint64_t sub_258046F80()
{
  v1 = v0[27];
  v2 = v0[20];
  v3 = v0[21];
  v4 = objc_opt_self();
  v5 = sub_25804A100();
  v6 = [v4 newAssetKey_];
  v0[32] = v6;

  v7 = *(v1 + 24);
  v8 = [v6 assetIdentifier];
  if (!v8)
  {
    sub_25804A110();
    v8 = sub_25804A100();
  }

  v0[33] = v8;
  v9 = v0[31];
  v11 = v0[24];
  v10 = v0[25];
  v13 = v0[22];
  v12 = v0[23];
  v19 = v0[28] == v0[29];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = sub_25804A100();
  v0[34] = v15;
  v16 = sub_25804A100();
  v0[35] = v16;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2580471A4;
  v17 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915E08, &qword_25804FBA8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2580473EC;
  v0[13] = &block_descriptor_12;
  v0[14] = v17;
  [ObjCClassFromMetadata resolveKeychainAssetWithAssetIdentifier:v8 configurationIdentifier:v15 accessGroup:v16 subscriberStore:v9 scope:v19 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2580471A4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_258047350;
  }

  else
  {
    v3 = sub_2580472B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2580472B4()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[31];

  v7 = v0[18];
  v6 = v0[19];

  v8 = v0[1];

  return v8(v7, v6);
}

uint64_t sub_258047350()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  swift_willThrow();

  v7 = v0[36];
  v8 = v0[1];

  return v8();
}

uint64_t sub_2580473EC(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_258049A60();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2580474D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  return MEMORY[0x2822009F8](sub_2580474F8, 0, 0);
}

uint64_t sub_2580474F8()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = objc_opt_self();
  v4 = sub_25804A100();
  v5 = [v3 newDeclarationKey_];
  v0[26] = v5;

  if ([v5 isValid])
  {
    v6 = [v5 storeIdentifier];
    if (!v6)
    {
      sub_25804A110();
      v6 = sub_25804A100();
    }

    v0[27] = v6;
    v7 = v0[25];
    v8 = sub_25804A110();
    v10 = v9;
    v0[28] = v8;
    v0[29] = v9;
    swift_beginAccess();
    if (*(*(v7 + 16) + 16) && (, sub_2580337E4(v8, v10), v12 = v11, , (v12 & 1) != 0))
    {

      v14 = *(v0[25] + 16);
      if (*(v14 + 16))
      {
        v15 = v0[28];
        v16 = v0[29];
        v17 = *(v0[25] + 16);

        v18 = sub_2580337E4(v15, v16);
        v20 = v19;

        if (v20)
        {
          v21 = v0[26];
          v22 = *(*(v14 + 56) + 8 * v18);

          v23 = v0[1];

          return v23(v22);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      v26 = v0[24];
      v27 = objc_opt_self();
      v0[2] = v0;
      v0[7] = v0 + 21;
      v0[3] = sub_258047848;
      v28 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915E00, &unk_25804FB98);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_258047B2C;
      v0[13] = &block_descriptor;
      v0[14] = v28;
      [v27 storeWithIdentifier:v6 scope:v26 completionHandler:v0 + 10];
      v13 = (v0 + 2);
    }

    return MEMORY[0x282200938](v13);
  }

  sub_258047C60();
  swift_allocError();
  swift_willThrow();

  v25 = v0[1];

  return v25();
}

uint64_t sub_258047848()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 240) = v3;
  if (v3)
  {
    v4 = *(v1 + 232);

    v5 = sub_258047AB4;
  }

  else
  {
    v5 = sub_258047960;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_258047960()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[25];
  v5 = v0[21];
  swift_beginAccess();

  v6 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_258035054(v5, v2, v1, isUniquelyReferenced_nonNull_native);

  *(v4 + 16) = v18;
  swift_endAccess();

  v8 = *(v0[25] + 16);
  if (!*(v8 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = v0[28];
  v10 = v0[29];
  v11 = *(v0[25] + 16);

  v12 = sub_2580337E4(v9, v10);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v15 = v0[26];
  v16 = *(*(v8 + 56) + 8 * v12);

  v17 = v0[1];

  v17(v16);
}

uint64_t sub_258047AB4()
{
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[27];
  swift_willThrow();

  v4 = v0[30];
  v5 = v0[1];

  return v5();
}

uint64_t sub_258047B2C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_258047C04()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_258047C60()
{
  result = qword_27F915DF8;
  if (!qword_27F915DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915DF8);
  }

  return result;
}

unint64_t sub_258047CCC()
{
  result = qword_27F915740;
  if (!qword_27F915740)
  {
    sub_258049A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915740);
  }

  return result;
}

unint64_t sub_258047D38()
{
  result = qword_27F915E18;
  if (!qword_27F915E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915E18);
  }

  return result;
}

uint64_t sub_258047D9C()
{
  v1 = v0;
  if (qword_27F915180 != -1)
  {
LABEL_16:
    swift_once();
  }

  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E30);
  v3 = sub_258049D10();
  v4 = sub_25804A2C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_257FD4000, v3, v4, "Invalidating all SecKeyProxy objects", v5, 2u);
    MEMORY[0x259C77210](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = *(v1 + 112);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = *(v1 + 112);

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_12:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      [*(*(v6 + 56) + ((v13 << 9) | (8 * v14))) invalidate];
      if (!v9)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_12;
    }
  }

  v15 = *(v1 + 120);
  *(v1 + 120) = 0;

  v16 = *(v1 + 112);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_258047F78()
{
  sub_258047D9C();

  return MEMORY[0x282200960](v0);
}

id sub_258047FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 112);
  if (*(v8 + 16))
  {

    v9 = sub_2580337E4(a1, a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      return v11;
    }
  }

  if (!*(v4 + 120))
  {
    v13 = objc_allocWithZone(MEMORY[0x277D03560]);
    v14 = sub_25804A100();
    v15 = [v13 initWithReason_];

    v16 = *(v4 + 120);
    *(v4 + 120) = v15;
  }

  v17 = [objc_allocWithZone(MEMORY[0x277CDBD80]) initWithIdentity_];
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v31 = sub_258048AB0;
  v32 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_2580484A4;
  v30 = &block_descriptor_0;
  v19 = _Block_copy(&aBlock);

  [v17 setClientConnectionHandler_];
  _Block_release(v19);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = v20;
  v31 = sub_258048B48;
  v32 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_2580484A4;
  v30 = &block_descriptor_19;
  v22 = _Block_copy(&aBlock);

  [v17 setClientDisconnectionHandler_];
  _Block_release(v22);
  swift_beginAccess();

  v23 = v17;
  v24 = *(v4 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v4 + 112);
  *(v4 + 112) = 0x8000000000000000;
  sub_258035334(v23, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v4 + 112) = v26;
  swift_endAccess();
  return v23;
}

void sub_2580482DC(char a1, uint64_t a2, unint64_t a3)
{
  if (qword_27F915180 != -1)
  {
    swift_once();
  }

  v6 = sub_258049D30();
  __swift_project_value_buffer(v6, qword_27F919E30);

  oslog = sub_258049D10();
  v7 = sub_25804A2C0();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    if (a1)
    {
      v10 = 0x7473726946;
    }

    else
    {
      v10 = 0x726568746F6E41;
    }

    if (a1)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    v12 = sub_258032C5C(v10, v11, &v14);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_258032C5C(a2, a3, &v14);
    _os_log_impl(&dword_257FD4000, oslog, v7, "%s client connected: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v9, -1, -1);
    MEMORY[0x259C77210](v8, -1, -1);
  }
}

uint64_t sub_2580484A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_2580484F8(int a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25[-1] - v8;
  if (qword_27F915180 != -1)
  {
    swift_once();
  }

  v10 = sub_258049D30();
  __swift_project_value_buffer(v10, qword_27F919E30);

  v11 = sub_258049D10();
  v12 = sub_25804A2C0();

  v13 = os_log_type_enabled(v11, v12);
  HIDWORD(v24) = a1;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25[0] = v15;
    *v14 = 136315394;
    if (a1)
    {
      v16 = 1953718604;
    }

    else
    {
      v16 = 0x726568746F6E41;
    }

    v17 = a2;
    if (a1)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE700000000000000;
    }

    v19 = sub_258032C5C(v16, v18, v25);
    a2 = v17;

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_258032C5C(v17, a3, v25);
    _os_log_impl(&dword_257FD4000, v11, v12, "%s client has disconnected: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v15, -1, -1);
    MEMORY[0x259C77210](v14, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((v24 & 0x100000000) != 0)
    {
      v21 = result;
      sub_25804A250();
      v22 = sub_25804A270();
      (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
      v23 = swift_allocObject();
      v23[2] = 0;
      v23[3] = 0;
      v23[4] = v21;
      v23[5] = a2;
      v23[6] = a3;

      sub_258038E50(0, 0, v9, &unk_25804FCE0, v23);
    }
  }

  return result;
}

uint64_t sub_2580487DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_258048800, a4, 0);
}

uint64_t sub_258048800()
{
  v1 = v0[2];
  sub_258048864(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

void sub_258048864(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_27F915180 != -1)
  {
    swift_once();
  }

  v6 = sub_258049D30();
  __swift_project_value_buffer(v6, qword_27F919E30);

  v7 = sub_258049D10();
  v8 = sub_25804A2C0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_258032C5C(a1, a2, &v17);
    _os_log_impl(&dword_257FD4000, v7, v8, "Invalidating and removing: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x259C77210](v10, -1, -1);
    MEMORY[0x259C77210](v9, -1, -1);
  }

  swift_beginAccess();
  v11 = *(v3 + 112);
  if (*(v11 + 16))
  {
    v12 = *(v3 + 112);

    v13 = sub_2580337E4(a1, a2);
    if (v14)
    {
      v15 = *(*(v11 + 56) + 8 * v13);

      [v15 invalidate];
    }

    else
    {
    }
  }

  swift_beginAccess();

  sub_25801C8F0(0, a1, a2);
  swift_endAccess();
  if (!*(*(v3 + 112) + 16))
  {
    v16 = *(v3 + 120);
    *(v3 + 120) = 0;
  }
}

uint64_t sub_258048A78()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_258048AD0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258048B08()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_258048B54()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_258048B9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257FD8590;

  return sub_2580487DC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_258048C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258048D10, v4, 0);
}

uint64_t sub_258048D10()
{
  v41 = v0;
  v1 = v0[18];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[14];
    v3 = v0[15];
    v5 = *(v1 + 112);

    v6 = sub_2580337E4(v4, v3);
    if (v7)
    {
      v8 = *(*(v2 + 56) + 8 * v6);

      if (qword_27F915188 != -1)
      {
        swift_once();
      }

      v9 = v0[15];
      v10 = sub_258049D30();
      __swift_project_value_buffer(v10, qword_27F919E48);

      v11 = sub_258049D10();
      v12 = sub_25804A2C0();

      if (os_log_type_enabled(v11, v12))
      {
        v14 = v0[14];
        v13 = v0[15];
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v40 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_258032C5C(v14, v13, &v40);
        _os_log_impl(&dword_257FD4000, v11, v12, "SerializedTask: Existing task %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x259C77210](v16, -1, -1);
        MEMORY[0x259C77210](v15, -1, -1);
      }

      goto LABEL_14;
    }
  }

  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v17 = v0[15];
  v18 = sub_258049D30();
  __swift_project_value_buffer(v18, qword_27F919E48);

  v19 = sub_258049D10();
  v20 = sub_25804A2C0();

  if (os_log_type_enabled(v19, v20))
  {
    v22 = v0[14];
    v21 = v0[15];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_258032C5C(v22, v21, &v40);
    _os_log_impl(&dword_257FD4000, v19, v20, "SerializedTask: New task %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x259C77210](v24, -1, -1);
    MEMORY[0x259C77210](v23, -1, -1);
  }

  v25 = v0[19];
  v27 = v0[16];
  v26 = v0[17];
  v29 = v0[14];
  v28 = v0[15];
  v30 = sub_25804A270();
  (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v27;
  v31[5] = v26;

  v8 = sub_25802E704(0, 0, v25, &unk_25804FD58, v31);
  swift_beginAccess();

  v32 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_258034ED8(v8, v29, v28, isUniquelyReferenced_nonNull_native);

  *(v1 + 112) = v40;
  swift_endAccess();
LABEL_14:
  v0[20] = v8;
  v34 = *(MEMORY[0x277D857C8] + 4);
  v35 = swift_task_alloc();
  v0[21] = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  *v35 = v0;
  v35[1] = sub_258049188;
  v37 = MEMORY[0x277D84950];
  v38 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v36, v8, v38, v36, v37);
}

uint64_t sub_258049188()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_258049490;
  }

  else
  {
    v6 = sub_2580492B4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2580492B4()
{
  v17 = v0;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E48);

  v3 = sub_258049D10();
  v4 = sub_25804A2C0();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_258032C5C(v6, v5, &v16);
    _os_log_impl(&dword_257FD4000, v3, v4, "SerializedTask: Completed task %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[18];
  v13 = v0[14];
  v12 = v0[15];
  swift_beginAccess();

  sub_25801C678(0, v13, v12);
  swift_endAccess();

  v14 = v0[1];

  return v14();
}

uint64_t sub_258049490()
{
  v18 = v0;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E48);

  v3 = sub_258049D10();
  v4 = sub_25804A2C0();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_258032C5C(v6, v5, &v17);
    _os_log_impl(&dword_257FD4000, v3, v4, "SerializedTask: Completed task %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[18];
  v13 = v0[14];
  v12 = v0[15];
  swift_beginAccess();

  sub_25801C678(0, v13, v12);
  swift_endAccess();

  v14 = v0[1];
  v15 = v0[22];

  return v14();
}

uint64_t sub_25804966C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_257FD8590;

  return v8();
}

uint64_t sub_258049754()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2580497B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2580497F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257FD8590;

  return sub_25804966C(a1, v4, v5, v7);
}