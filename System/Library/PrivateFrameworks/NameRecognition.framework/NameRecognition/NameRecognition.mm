void *sub_25AE3E25C()
{
  v1 = v0;
  v0[3] = 0xD00000000000003CLL;
  v0[4] = 0x800000025AEA7BE0;
  v0[5] = 0xD000000000000034;
  v0[6] = 0x800000025AEA7C20;
  v2 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v3 = sub_25AEA2178();
  v4 = [v2 initWithBundleIdentifier_];

  v1[2] = v4;
  v42 = MEMORY[0x277D84F90];
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v5 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v6 = qword_27FA22788;
    v7 = qword_27FA22788;
  }

  else
  {
    v7 = [objc_opt_self() mainBundle];
    v6 = 0;
  }

  v41 = v6;
  sub_25AEA0CC8();

  sub_25AEA2278();
  v8 = sub_25AEA2178();
  v9 = objc_opt_self();
  v10 = [v9 iconWithSystemImageName_];

  v11 = v10;
  v12 = sub_25AEA2178();
  v13 = sub_25AEA2178();

  v14 = objc_opt_self();
  v15 = [v14 actionWithIdentifier:v12 title:v13 options:0 icon:v11];

  v16 = v15;
  MEMORY[0x25F859DF0]();
  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v39 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_25AEA2318();
  }

  sub_25AEA2338();
  if (AXIsInternalInstall())
  {
    v17 = sub_25AEA2178();
    v18 = [v9 iconWithSystemImageName_];

    v19 = v41;
    if (!v5)
    {
      v19 = [objc_opt_self() mainBundle];
    }

    v20 = v41;
    sub_25AEA0CC8();

    sub_25AEA2278();
    v21 = v18;
    v22 = sub_25AEA2178();
    v23 = sub_25AEA2178();

    v24 = [v14 actionWithIdentifier:v22 title:v23 options:0 icon:{v21, 0xE000000000000000}];

    v25 = v24;
    MEMORY[0x25F859DF0]();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v40 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_25AEA2318();
    }

    sub_25AEA2338();
  }

  v26 = v1[3];
  v27 = v1[4];
  v28 = sub_25AEA2178();
  sub_25AE4167C(0, &qword_27FA1D2A0, 0x277CE1F80);
  v29 = sub_25AEA22E8();

  v30 = sub_25AEA22E8();
  v31 = [objc_opt_self() categoryWithIdentifier:v28 actions:v29 intentIdentifiers:v30 options:0];

  v32 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2A8, &qword_25AEA3E90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25AEA3530;
  *(inited + 32) = v31;
  v34 = v32;
  v35 = v31;
  sub_25AE9EDA0(inited);
  swift_setDeallocating();
  v36 = *(inited + 16);
  swift_arrayDestroy();
  sub_25AE4167C(0, &qword_27FA1D2B0, 0x277CE1F98);
  sub_25AE416C4();
  v37 = sub_25AEA23E8();

  [v34 setNotificationCategories_];

  return v1;
}

void sub_25AE3E874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a4;
  v52 = a5;
  v50 = a3;
  v7 = sub_25AEA0E48();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  MEMORY[0x28223BE20](v7);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() soundWithAlertType_];
  v58 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2C0, &qword_25AEA35C0);
  v11 = swift_allocObject();
  v48 = xmmword_25AEA3540;
  *(v11 + 16) = xmmword_25AEA3540;
  *(v11 + 56) = MEMORY[0x277D837D0];
  v12 = sub_25AE4172C();
  *(v11 + 64) = v12;
  v49 = a1;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  v13 = qword_27FA1D250;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_27FA22788;
  v56 = v10;
  if (qword_27FA22788)
  {
    v15 = qword_27FA22788;
    v16 = qword_27FA22788;
  }

  else
  {
    v16 = [objc_opt_self() mainBundle];
    v15 = 0;
  }

  v17 = v15;
  sub_25AEA0CC8();

  sub_25AEA21B8();

  v18 = sub_25AEA2178();

  [v58 setTitle_];

  v19 = swift_allocObject();
  *(v19 + 16) = v48;
  v20 = MEMORY[0x277D837D0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = v12;
  v21 = v49;
  *(v19 + 32) = v49;
  *(v19 + 40) = a2;
  if (v14)
  {

    v22 = v17;
  }

  else
  {
    v23 = objc_opt_self();

    v22 = [v23 mainBundle];
  }

  v24 = v56;
  v25 = v17;
  sub_25AEA0CC8();

  sub_25AEA21B8();

  v26 = sub_25AEA2178();

  v27 = v58;
  [v58 setBody_];

  [v27 setSound_];
  [v27 setInterruptionLevel_];
  v28 = v57;
  v29 = *(v57 + 24);
  v30 = *(v57 + 32);
  v31 = sub_25AEA2178();
  [v27 setCategoryIdentifier_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2D0, &qword_25AEA35C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25AEA3550;
  v64 = 0xD000000000000011;
  v65 = 0x800000025AEA7DB0;
  sub_25AEA2608();
  *(inited + 96) = v20;
  *(inited + 72) = v21;
  *(inited + 80) = a2;
  v64 = 0xD000000000000017;
  v65 = 0x800000025AEA7DD0;

  sub_25AEA2608();
  *(inited + 168) = v20;
  v33 = v51;
  *(inited + 144) = v50;
  *(inited + 152) = v33;

  sub_25AE6FDCC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E170, &unk_25AEA35D0);
  swift_arrayDestroy();
  v34 = sub_25AEA2128();

  [v27 setUserInfo_];

  v35 = AXIsInternalInstall();
  v36 = v52;
  if (v35 && v52)
  {
    *&v62 = 0x7479426F69647561;
    *(&v62 + 1) = 0xEA00000000007365;

    sub_25AEA2608();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2D8, &unk_25AEA7830);
    v63 = v37;
    *&v62 = v36;
    v38 = [v58 userInfo];
    v39 = sub_25AEA2138();

    v61 = v39;
    if (v37)
    {
      sub_25AE417EC(&v62, v60);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v39;
      sub_25AE40948(v60, &v64, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      sub_25AE41938(&v62, &qword_27FA1D2E0, &qword_25AEA35E0);
      sub_25AE3F988(&v64, v60);
      sub_25AE41938(v60, &qword_27FA1D2E0, &qword_25AEA35E0);
    }

    sub_25AE41798(&v64);
    v41 = sub_25AEA2128();

    [v58 setUserInfo_];
  }

  v42 = v53;
  sub_25AEA0E38();
  sub_25AEA0E08();
  (*(v54 + 8))(v42, v55);
  v43 = v58;
  v44 = sub_25AEA2178();

  v45 = [objc_opt_self() requestWithIdentifier:v44 content:v43 trigger:0 destinations:15];

  v46 = *(v28 + 16);
  v68 = sub_25AE3F054;
  v69 = 0;
  v64 = MEMORY[0x277D85DD0];
  v65 = 1107296256;
  v66 = sub_25AE3F18C;
  v67 = &block_descriptor;
  v47 = _Block_copy(&v64);
  [v46 addNotificationRequest:v45 withCompletionHandler:v47];
  _Block_release(v47);
}

void sub_25AE3F054(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    NRLogError(_:additionalMessage:)(a1, 0xD00000000000001BLL, 0x800000025AEA7E10);
    v3 = a1;
  }

  else
  {
    if (qword_27FA1D248 != -1)
    {
      swift_once();
    }

    v4 = sub_25AEA12C8();
    __swift_project_value_buffer(v4, qword_27FA1DF50);
    oslog = sub_25AEA12A8();
    v5 = sub_25AEA24A8();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_25AE3C000, oslog, v5, "Notification successfully delivered", v6, 2u);
      MEMORY[0x25F85AB80](v6, -1, -1);
    }

    v3 = oslog;
  }
}

void sub_25AE3F18C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_25AE3F1F8(char a1, void *a2)
{
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v4 = sub_25AEA12C8();
  __swift_project_value_buffer(v4, qword_27FA1DF50);
  v5 = a2;
  oslog = sub_25AEA12A8();
  v6 = sub_25AEA24A8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136315650;
    if (a2)
    {
      v10 = 546086370;
    }

    else
    {
      v10 = 0;
    }

    if (a2)
    {
      v11 = 0xA400000000000000;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    v12 = sub_25AE65D2C(v10, v11, &v17);

    *(v7 + 4) = v12;
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    *(v7 + 18) = 2112;
    if (a2)
    {
      v13 = a2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = v14;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *(v7 + 20) = v14;
    *v8 = v15;
    _os_log_impl(&dword_25AE3C000, oslog, v6, "%sRequested authorization to show notification for Name Recognition: %{BOOL}d - Error: %@", v7, 0x1Cu);
    sub_25AE41938(v8, &qword_27FA1D2F0, &unk_25AEA35F0);
    MEMORY[0x25F85AB80](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x25F85AB80](v9, -1, -1);
    MEMORY[0x25F85AB80](v7, -1, -1);
  }
}

uint64_t sub_25AE3F3F8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_25AE3F478(uint64_t a1, id *a2)
{
  result = sub_25AEA2188();
  *a2 = 0;
  return result;
}

uint64_t sub_25AE3F4F0(uint64_t a1, id *a2)
{
  v3 = sub_25AEA2198();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25AE3F570@<X0>(uint64_t *a1@<X8>)
{
  sub_25AEA21A8();
  v2 = sub_25AEA2178();

  *a1 = v2;
  return result;
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

uint64_t sub_25AE3F610@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_25AEA21A8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_25AE3F63C(uint64_t a1)
{
  v2 = sub_25AE41998(&qword_27FA1D350, type metadata accessor for FileAttributeKey);
  v3 = sub_25AE41998(&qword_27FA1D358, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25AE3F6F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25AEA2178();

  *a2 = v5;
  return result;
}

uint64_t sub_25AE3F740(uint64_t a1)
{
  v2 = sub_25AE41998(&qword_27FA1D340, type metadata accessor for FileProtectionType);
  v3 = sub_25AE41998(&qword_27FA1D348, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25AE3F7FC()
{
  v1 = *v0;
  v2 = sub_25AEA21A8();
  v3 = MEMORY[0x25F859D80](v2);

  return v3;
}

uint64_t sub_25AE3F838()
{
  v1 = *v0;
  sub_25AEA21A8();
  sub_25AEA21F8();
}

uint64_t sub_25AE3F88C()
{
  v1 = *v0;
  sub_25AEA21A8();
  sub_25AEA28B8();
  sub_25AEA21F8();
  v2 = sub_25AEA28D8();

  return v2;
}

uint64_t sub_25AE3F900(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_25AEA21A8();
  v6 = v5;
  if (v4 == sub_25AEA21A8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25AEA2828();
  }

  return v9 & 1;
}

double sub_25AE3F988@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_25AE6F6C8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25AE40FF0();
      v11 = v13;
    }

    sub_25AE41798(*(v11 + 48) + 40 * v8);
    sub_25AE417EC((*(v11 + 56) + 32 * v8), a2);
    sub_25AE40484(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_25AE3FA2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2E8, &qword_25AEA35E8);
  result = sub_25AEA2768();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_25AE417EC((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_25AE417FC(v24, &v38);
        sub_25AE418A4(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_25AEA25E8();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_25AE417EC(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_25AE3FCE4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25AEA0EB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E230, &qword_25AEA58E0);
  v43 = a2;
  result = sub_25AEA2768();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v22 = v7;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v45 = *(v22 + 72);
      v29 = v28 + v45 * v27;
      if (v43)
      {
        (*v44)(v46, v29, v47);
      }

      else
      {
        (*v41)(v46, v29, v47);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_25AE41998(&qword_27FA1D2F8, MEMORY[0x277CC9788]);
      result = sub_25AEA2148();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v14 + 48) + v45 * v23, v46, v47);
      *(*(v14 + 56) + 8 * v23) = v30;
      ++*(v14 + 16);
      v22 = v42;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_25AE400A8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25AEA0EB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1E240, &qword_25AEA3600);
  v43 = a2;
  result = sub_25AEA2768();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_25AE41998(&qword_27FA1D2F8, MEMORY[0x277CC9788]);
      result = sub_25AEA2148();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_25AE40484(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25AEA2588() + 1) & ~v5;
    do
    {
      sub_25AE417FC(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_25AEA25E8();
      result = sub_25AE41798(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25AE40628(int64_t a1, uint64_t a2)
{
  v43 = sub_25AEA0EB8();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_25AEA2588();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_25AE41998(&qword_27FA1D2F8, MEMORY[0x277CC9788]);
      v26 = sub_25AEA2148();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

_OWORD *sub_25AE40948(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_25AE6F6C8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_25AE40FF0();
      goto LABEL_7;
    }

    sub_25AE3FA2C(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_25AE6F6C8(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_25AE417FC(a2, v22);
      return sub_25AE40E04(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_25AEA2858();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_25AE417EC(a1, v17);
}

uint64_t sub_25AE40A94(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_25AEA0EB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_25AE6F8F0(a1);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
  }

  else
  {
    v19 = v14;
    v20 = v13[3];
    if (v20 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v21 = *v4;
      if (v19)
      {
LABEL_8:
        *(v21[7] + 8 * v15) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v20 >= result && (a2 & 1) == 0)
    {
      result = sub_25AE41194();
      goto LABEL_7;
    }

    sub_25AE3FCE4(result, a2 & 1);
    v22 = *v4;
    result = sub_25AE6F8F0(a1);
    if ((v19 & 1) == (v23 & 1))
    {
      v15 = result;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v12, a1, v8);
      return sub_25AE40E80(v15, v12, v21, a3);
    }
  }

  result = sub_25AEA2858();
  __break(1u);
  return result;
}

void sub_25AE40C38(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25AEA0EB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_25AE6F8F0(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_25AE41408();
      goto LABEL_7;
    }

    sub_25AE400A8(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_25AE6F8F0(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_25AE40F38(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_25AEA2858();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

_OWORD *sub_25AE40E04(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_25AE417EC(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_25AE40E80(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_25AEA0EB8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_25AE40F38(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25AEA0EB8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_25AE40FF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2E8, &qword_25AEA35E8);
  v2 = *v0;
  v3 = sub_25AEA2758();
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
        v18 = 40 * v17;
        sub_25AE417FC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_25AE418A4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_25AE417EC(v22, (*(v4 + 56) + v17));
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

void *sub_25AE41194()
{
  v1 = v0;
  v30 = sub_25AEA0EB8();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E230, &qword_25AEA58E0);
  v4 = *v0;
  v5 = sub_25AEA2758();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; *(*(v24 + 56) + 8 * v18) = v23)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v32;
      v20 = *(v32 + 72) * v18;
      v21 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 48) + v20, v30);
      v23 = *(*(v4 + 56) + 8 * v18);
      v24 = v31;
      result = (*(v19 + 32))(*(v31 + 48) + v20, v21, v22);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_25AE41408()
{
  v1 = v0;
  v32 = sub_25AEA0EB8();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1E240, &qword_25AEA3600);
  v4 = *v0;
  v5 = sub_25AEA2758();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_25AE4167C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_25AE416C4()
{
  result = qword_27FA1D2B8;
  if (!qword_27FA1D2B8)
  {
    sub_25AE4167C(255, &qword_27FA1D2B0, 0x277CE1F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D2B8);
  }

  return result;
}

unint64_t sub_25AE4172C()
{
  result = qword_27FA1D2C8;
  if (!qword_27FA1D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D2C8);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_25AE417EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
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

uint64_t sub_25AE418A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
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

uint64_t sub_25AE41938(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25AE41998(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25AE41A08(uint64_t a1, unint64_t *a2)
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

uint64_t NameRecognitionServiceMessageID.init(axNRMessageID:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v3 = result - 16;
  if ((result - 10000) >= 3)
  {
    v3 = 11;
  }

  if (a2)
  {
    v3 = 11;
  }

  *a3 = v3;
  return result;
}

NameRecognition::NameRecognitionServiceMessageID_optional __swiftcall NameRecognitionServiceMessageID.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 0xB)
  {
    v2 = 11;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_25AE41C8C()
{
  result = qword_27FA1D360;
  if (!qword_27FA1D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D360);
  }

  return result;
}

uint64_t sub_25AE41CE0()
{
  v1 = *v0;
  sub_25AEA28B8();
  MEMORY[0x25F85A3E0](v1 + 1);
  return sub_25AEA28D8();
}

uint64_t sub_25AE41D58()
{
  v1 = *v0;
  sub_25AEA28B8();
  MEMORY[0x25F85A3E0](v1 + 1);
  return sub_25AEA28D8();
}

uint64_t getEnumTagSinglePayload for NameRecognitionServiceMessageID(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NameRecognitionServiceMessageID(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25AE41F28(_BYTE *a1, uint64_t a2)
{
  *(v3 + 192) = a2;
  *(v3 + 200) = v2;
  *(v3 + 224) = *a1;
  return MEMORY[0x2822009F8](sub_25AE41F50, 0, 0);
}

uint64_t sub_25AE41F50()
{
  if (*(v0 + 192))
  {
    v1 = sub_25AEA2128();
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 208) = v1;
  v2 = *(v0 + 224);
  v3 = *(v0 + 200);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_25AE420B8;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D368, &qword_25AEA3A58);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_25AE425A4;
  *(v0 + 104) = &block_descriptor_0;
  *(v0 + 112) = v4;
  [v3 sendAsynchronousMessage:v1 withIdentifier:v2 + 1 targetAccessQueue:0 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_25AE420B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_25AE42534;
  }

  else
  {
    v3 = sub_25AE421C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25AE421C8()
{
  v1 = *(v0 + 144);

  *(v0 + 176) = 0x726F727265;
  *(v0 + 184) = 0xE500000000000000;
  sub_25AEA2608();
  if (*(v1 + 16) && (v2 = sub_25AE6F6C8(v0 + 80), (v3 & 1) != 0))
  {
    sub_25AE418A4(*(v1 + 56) + 32 * v2, v0 + 144);
    sub_25AE41798(v0 + 80);
    if (swift_dynamicCast())
    {

      v4 = *(v0 + 176);
      v5 = *(v0 + 184);
      v6 = sub_25AEA0B08();
      v7 = *(v6 + 48);
      v8 = *(v6 + 52);
      swift_allocObject();
      sub_25AEA0AF8();
      sub_25AE42700();
      sub_25AEA0AE8();
      v18 = *(v0 + 80);
      v20 = *(v0 + 88);
      v19 = *(v0 + 96);
      sub_25AE426AC();
      v21 = swift_allocError();
      *v22 = v18;
      *(v22 + 8) = v20;
      *(v22 + 16) = v19;

      NRLogError(_:additionalMessage:)(v21, 0, 0);

      swift_allocError();
      *v23 = v18;
      *(v23 + 8) = v20;
      *(v23 + 16) = v19;
      swift_willThrow();

      sub_25AE42754(v4, v5);
LABEL_14:
      v24 = *(v0 + 8);

      return v24();
    }
  }

  else
  {
    sub_25AE41798(v0 + 80);
  }

  *(v0 + 176) = 0x726F727265;
  *(v0 + 184) = 0xE500000000000000;
  sub_25AEA2608();
  if (*(v1 + 16) && (v9 = sub_25AE6F6C8(v0 + 80), (v10 & 1) != 0))
  {
    sub_25AE418A4(*(v1 + 56) + 32 * v9, v0 + 144);
    sub_25AE41798(v0 + 80);
    if (swift_dynamicCast())
    {

      v12 = *(v0 + 176);
      v11 = *(v0 + 184);
      sub_25AE426AC();
      v13 = swift_allocError();
      *v14 = 8;
      *(v14 + 8) = v12;
      *(v14 + 16) = v11;

      NRLogError(_:additionalMessage:)(v13, 0, 0);

      swift_allocError();
      *v15 = 8;
      *(v15 + 8) = v12;
      *(v15 + 16) = v11;
      swift_willThrow();
      goto LABEL_14;
    }
  }

  else
  {
    sub_25AE41798(v0 + 80);
  }

  v16 = *(v0 + 8);

  return v16(v1);
}

uint64_t sub_25AE42534()
{
  v1 = v0[26];
  v2 = v0[27];
  swift_willThrow();

  v3 = v0[27];
  v4 = v0[1];

  return v4();
}

uint64_t sub_25AE425A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_25AEA2138();

    return MEMORY[0x282200950](v4);
  }
}

unint64_t sub_25AE426AC()
{
  result = qword_27FA1D930;
  if (!qword_27FA1D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D930);
  }

  return result;
}

unint64_t sub_25AE42700()
{
  result = qword_27FA1D370;
  if (!qword_27FA1D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D370);
  }

  return result;
}

uint64_t sub_25AE42754(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_25AE427EC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3A0, &qword_25AEA6370);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v37 - v5;
  v7 = sub_25AEA1178();
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v44 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25AEA0E48();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v37 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v21 = [a1 identifier];
  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = v21;
  sub_25AEA0E28();

  (*(v11 + 32))(v20, v18, v10);
  v23 = [a1 audioSourceRawValue];
  if (!v23)
  {
LABEL_7:
    (*(v11 + 8))(v20, v10);
LABEL_8:
    sub_25AE426AC();
    swift_allocError();
    *v34 = 7;
    *(v34 + 8) = 0xD00000000000002DLL;
    *(v34 + 16) = 0x800000025AEA7F40;
    swift_willThrow();

    return;
  }

  v24 = v23;
  v40 = sub_25AEA21A8();
  v26 = v25;

  v27 = [a1 audioData];
  if (!v27)
  {

    goto LABEL_7;
  }

  v41 = v26;
  v39 = v6;
  v28 = v27;
  v29 = sub_25AEA0DE8();
  v31 = v30;

  v32 = v45;
  v33 = sub_25AE6461C(v29, v31);
  if (v32)
  {
    (*(v11 + 8))(v20, v10);
    sub_25AE42754(v29, v31);
  }

  else
  {
    v37 = v33;
    v38 = v29;
    v45 = v31;
    (*(v11 + 16))(v15, v20, v10);
    v35 = v39;
    sub_25AEA1158();
    v36 = v42;
    v40 = *(v42 + 48);
    v41 = v42 + 48;
    if (v40(v35, 1, v7) == 1)
    {
      (*(v36 + 104))(v44, *MEMORY[0x277D79820], v7);
      if (v40(v35, 1, v7) != 1)
      {
        sub_25AE43FA8(v35);
      }
    }

    else
    {
      (*(v36 + 32))(v44, v35, v7);
    }

    sub_25AEA10F8();
    sub_25AE42754(v38, v45);

    (*(v11 + 8))(v20, v10);
  }
}

void sub_25AE42C58(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v4 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v86 = &v77 - v5;
  v6 = sub_25AEA1108();
  v7 = *(v6 - 8);
  v91 = v6;
  v92 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25AEA0EB8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25AEA0D18();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v77 - v21;
  v23 = sub_25AEA0E48();
  v89 = *(v23 - 8);
  v90 = v23;
  v24 = *(v89 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v82 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v77 - v27;
  v29 = [a1 identifier];
  if (!v29)
  {
LABEL_31:
    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    sub_25AEA2688();
    v97 = v95;
    MEMORY[0x25F859D40](0xD00000000000001DLL, 0x800000025AEA7E60);
    v50 = [a1 identifier];
    if (v50)
    {
      v51 = v86;
      v52 = v50;
      sub_25AEA0E28();

      v53 = 0;
    }

    else
    {
      v53 = 1;
      v51 = v86;
    }

    (*(v89 + 56))(v51, v53, 1, v90);
    v54 = sub_25AEA21D8();
    MEMORY[0x25F859D40](v54);

    MEMORY[0x25F859D40](0xD000000000000026, 0x800000025AEA7E80);
    v55 = [a1 humanReadableName];
    if (v55)
    {
      v56 = v55;
      v57 = sub_25AEA21A8();
      v59 = v58;
    }

    else
    {
      v57 = 0;
      v59 = 0;
    }

    *&v95 = v57;
    *(&v95 + 1) = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D388, &qword_25AEA5220);
    v60 = sub_25AEA21D8();
    MEMORY[0x25F859D40](v60);

    MEMORY[0x25F859D40](0xD000000000000029, 0x800000025AEA7EB0);
    v61 = [a1 collectedEnrollments];
    if (v61)
    {
      v62 = v61;
      v84 = v16;
      v85 = a1;
      v63 = MEMORY[0x277D84F90];
      v98 = MEMORY[0x277D84F90];
      sub_25AEA24F8();
      sub_25AE43F60(&qword_27FA1D390, MEMORY[0x277CC9178]);
      sub_25AEA2548();
      while (v96)
      {
        sub_25AE417EC(&v95, v93);
        type metadata accessor for CollectedEnrollment();
        if ((swift_dynamicCast() & 1) != 0 && v94)
        {
          MEMORY[0x25F859DF0]();
          if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v64 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_25AEA2318();
          }

          sub_25AEA2338();
          v63 = v98;
        }

        sub_25AEA2548();
      }

      (*(v84 + 8))(v20, v15);
      a1 = v85;
    }

    else
    {
      v63 = 0;
    }

    *&v95 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D398, &unk_25AEA3A70);
    v65 = sub_25AEA21D8();
    MEMORY[0x25F859D40](v65);

    MEMORY[0x25F859D40](0xD000000000000025, 0x800000025AEA7EE0);
    v66 = [a1 localeIdentifier];
    if (v66)
    {
      v67 = v66;
      v68 = sub_25AEA21A8();
      v70 = v69;
    }

    else
    {
      v68 = 0;
      v70 = 0;
    }

    *&v95 = v68;
    *(&v95 + 1) = v70;
    v71 = sub_25AEA21D8();
    MEMORY[0x25F859D40](v71);

    v72 = v97;
    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    sub_25AEA2688();

    *&v95 = 0xD00000000000002DLL;
    *(&v95 + 1) = 0x800000025AEA7F10;
    MEMORY[0x25F859D40](v72, *(&v72 + 1));

    v73 = v95;
    sub_25AE426AC();
    swift_allocError();
    *v74 = 7;
    *(v74 + 8) = v73;
    swift_willThrow();

    return;
  }

  v80 = v14;
  v30 = v29;
  sub_25AEA0E28();

  v31 = [a1 humanReadableName];
  if (!v31)
  {
    (*(v89 + 8))(v28, v90);
    goto LABEL_31;
  }

  v81 = v28;
  v32 = v31;
  v79 = sub_25AEA21A8();
  v34 = v33;

  v35 = [a1 collectedEnrollments];
  if (!v35)
  {

    (*(v89 + 8))(v81, v90);
    goto LABEL_31;
  }

  v77 = v34;
  v88 = v10;
  v84 = v16;
  v85 = a1;
  v36 = MEMORY[0x277D84F90];
  *&v97 = MEMORY[0x277D84F90];
  v78 = v35;
  sub_25AEA24F8();
  sub_25AE43F60(&qword_27FA1D390, MEMORY[0x277CC9178]);
  sub_25AEA2548();
  while (v96)
  {
    while (1)
    {
      sub_25AE417EC(&v95, v93);
      type metadata accessor for CollectedEnrollment();
      if (swift_dynamicCast())
      {
        if (v98)
        {
          break;
        }
      }

      sub_25AEA2548();
      if (!v96)
      {
        goto LABEL_14;
      }
    }

    MEMORY[0x25F859DF0]();
    if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v37 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_25AEA2318();
    }

    sub_25AEA2338();
    v36 = v97;
    sub_25AEA2548();
  }

LABEL_14:

  v16 = v84;
  (*(v84 + 8))(v22, v15);
  a1 = v85;
  v38 = [v85 localeIdentifier];
  if (!v38)
  {
    (*(v89 + 8))(v81, v90);

    goto LABEL_31;
  }

  v39 = v38;
  v78 = sub_25AEA21A8();
  v84 = v40;

  if (v36 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25AEA25B8())
  {
    v42 = v88;
    v43 = v81;
    if (!i)
    {
      break;
    }

    *&v95 = MEMORY[0x277D84F90];
    sub_25AE8D6E4(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return;
    }

    v44 = 0;
    v45 = v95;
    v46 = v36 & 0xC000000000000001;
    v86 = (v36 & 0xFFFFFFFFFFFFFF8);
    v87 = v36;
    v36 = v92 + 32;
    while (1)
    {
      v47 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v46)
      {
        v48 = MEMORY[0x25F85A1C0](v44, v87);
      }

      else
      {
        if (v44 >= *(v86 + 2))
        {
          goto LABEL_57;
        }

        v48 = *(v87 + 8 * v44 + 32);
      }

      sub_25AE427EC(v48, v42);
      if (v2)
      {
        (*(v89 + 8))(v81, v90);

        return;
      }

      *&v95 = v45;
      a1 = *(v45 + 16);
      v49 = *(v45 + 24);
      if (a1 >= v49 >> 1)
      {
        sub_25AE8D6E4(v49 > 1, a1 + 1, 1);
        v45 = v95;
      }

      *(v45 + 16) = a1 + 1;
      v42 = v88;
      (*(v92 + 32))(v45 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * a1, v88, v91);
      ++v44;
      if (v47 == i)
      {

        a1 = v85;
        v43 = v81;
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

LABEL_55:
  v76 = v89;
  v75 = v90;
  (*(v89 + 16))(v82, v43, v90);
  sub_25AEA0E58();
  sub_25AEA10B8();

  (*(v76 + 8))(v43, v75);
}

size_t sub_25AE43800(void (*a1)(id *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v21 = sub_25AEA10C8();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25AEA25B8())
  {
    v10 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v10;
    }

    v27 = MEMORY[0x277D84F90];
    result = sub_25AE8D728(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v12 = 0;
    v10 = v27;
    v19 = i;
    v20 = a3 & 0xC000000000000001;
    v18[0] = a3 & 0xFFFFFFFFFFFFFF8;
    v18[1] = v6 + 32;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v20)
      {
        v14 = MEMORY[0x25F85A1C0](v12, a3);
      }

      else
      {
        if (v12 >= *(v18[0] + 16))
        {
          goto LABEL_19;
        }

        v14 = *(a3 + 8 * v12 + 32);
      }

      v15 = v14;
      v26 = v14;
      v22(&v26, &v25);
      if (v4)
      {

        return v10;
      }

      v4 = 0;

      v27 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_25AE8D728(v16 > 1, v17 + 1, 1);
        v10 = v27;
      }

      *(v10 + 16) = v17 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, v24, v21);
      ++v12;
      if (v13 == v19)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_25AE43A48@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v5 = sub_25AEA0EB8();
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v42 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  sub_25AEA2478();
  v15 = MEMORY[0x25F859F80]();
  v16 = *MEMORY[0x277CE7928];
  swift_beginAccess();
  v17 = *&v15[v16];

  v18 = sub_25AEA2448();
  v47 = v17;
  if (v18)
  {
    sub_25AEA2438();
    v19 = v48;
  }

  else
  {
    v20 = sub_25AEA0E88();
    if (v20[2])
    {
      v21 = v20[4];
      v22 = v20[5];

      v19 = v48;
    }

    else
    {

      sub_25AEA2438();
      sub_25AEA0E68();
      v19 = v48;
      (*(v48 + 8))(v12, v5);
    }

    sub_25AEA0E58();
  }

  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v23 = sub_25AEA12C8();
  __swift_project_value_buffer(v23, qword_27FA1DF50);
  (*(v19 + 16))(v9, v14, v5);
  v24 = v9;
  v25 = sub_25AEA12A8();
  v26 = sub_25AEA24A8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v44 = v2;
    v28 = v27;
    v29 = swift_slowAlloc();
    v45 = a1;
    v43 = v29;
    v49 = v29;
    *v28 = 136315138;
    sub_25AE43F60(&qword_27FA1D378, MEMORY[0x277CC9788]);
    v30 = sub_25AEA27F8();
    v31 = v14;
    v32 = v5;
    v34 = v33;
    v35 = *(v48 + 8);
    v35(v24, v32);
    v36 = sub_25AE65D2C(v30, v34, &v49);
    v5 = v32;
    v37 = v35;
    v14 = v31;

    *(v28 + 4) = v36;
    _os_log_impl(&dword_25AE3C000, v25, v26, "VANRUserConfiguration's name configs will use locale %s", v28, 0xCu);
    v38 = v43;
    __swift_destroy_boxed_opaque_existential_0(v43);
    a1 = v45;
    MEMORY[0x25F85AB80](v38, -1, -1);
    v39 = v28;
    v3 = v44;
    MEMORY[0x25F85AB80](v39, -1, -1);
  }

  else
  {

    v37 = *(v19 + 8);
    v40 = v37(v24, v5);
  }

  MEMORY[0x28223BE20](v40);
  *(&v42 - 2) = v14;
  sub_25AE43800(sub_25AE43F40, (&v42 - 4), a1);

  if (!v3)
  {
    sub_25AEA10D8();
  }

  return v37(v14, v5);
}

void sub_25AE43EB4(void **a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *a1;
  sub_25AEA0E68();
  v7 = sub_25AEA2178();

  [v6 setLocaleIdentifier_];

  sub_25AE42C58(v6, a3);
  if (v3)
  {
    *a2 = v3;
  }
}

uint64_t sub_25AE43F60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25AE43FA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3A0, &qword_25AEA6370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25AE4401C(uint64_t a1, int a2)
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

uint64_t sub_25AE44064(uint64_t result, int a2, int a3)
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

uint64_t sub_25AE440D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a4;
  v62 = a5;
  v56 = a3;
  v63 = a1;
  v6 = sub_25AEA1238();
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  (MEMORY[0x28223BE20])();
  v53 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3A8, &qword_25AEA3B18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v57 = v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3B0, &unk_25AEA3B20);
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v58 = v49 - v13;
  v14 = objc_opt_self();
  v15 = [v14 currentDevice];
  [v15 userInterfaceIdiom];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2C0, &qword_25AEA35C0);
  v16 = swift_allocObject();
  v50 = xmmword_25AEA3540;
  *(v16 + 16) = xmmword_25AEA3540;
  swift_getKeyPath();
  swift_getKeyPath();
  v64 = a2;
  sub_25AEA1478();

  v17 = v65;
  v18 = v66;
  *(v16 + 56) = MEMORY[0x277D837D0];
  v19 = sub_25AE4172C();
  *(v16 + 64) = v19;
  if (v18)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0;
  }

  v21 = 0xE000000000000000;
  if (v18)
  {
    v21 = v18;
  }

  *(v16 + 32) = v20;
  *(v16 + 40) = v21;
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v22 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v23 = qword_27FA22788;
    v24 = qword_27FA22788;
  }

  else
  {
    v24 = [objc_opt_self() mainBundle];
    v23 = 0;
  }

  v25 = v23;
  sub_25AEA0CC8();

  v26 = sub_25AEA21B8();
  v51 = v27;
  v52 = v26;

  v28 = [v14 currentDevice];
  [v28 userInterfaceIdiom];

  v29 = swift_allocObject();
  *(v29 + 16) = v50;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  v30 = v65;
  v31 = v66;
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 64) = v19;
  if (!v31)
  {
    v30 = 0;
    v31 = 0xE000000000000000;
  }

  *(v29 + 32) = v30;
  *(v29 + 40) = v31;
  v32 = v25;
  if (!v22)
  {
    v32 = [objc_opt_self() mainBundle];
  }

  v33 = v25;
  sub_25AEA0CC8();

  *&v50 = sub_25AEA21B8();
  v49[1] = v34;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3B8, &unk_25AEA4000);
  v35 = v54;
  v36 = *(v54 + 72);
  v37 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_25AEA3550;
  sub_25AEA1228();
  sub_25AEA1208();
  v65 = v38;
  sub_25AE47980(&qword_27FA1D3C0, MEMORY[0x277CE7670]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3C8, &qword_25AEA3B80);
  sub_25AE47F60(&qword_27FA1D3D0, &qword_27FA1D3C8, &qword_25AEA3B80);
  v39 = v53;
  v40 = v55;
  sub_25AEA2578();
  sub_25AEA1F38();
  v41 = (*(v35 + 8))(v39, v40);
  v55 = v49;
  v42 = MEMORY[0x28223BE20](v41);
  LOBYTE(v39) = v56 & 1;
  v43 = v61;
  MEMORY[0x28223BE20](v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3D8, &qword_25AEA3B88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3E0, &qword_25AEA3B90);
  sub_25AE46E58();
  sub_25AE47F60(&qword_27FA1D400, &qword_27FA1D3E0, &qword_25AEA3B90);
  v44 = v58;
  sub_25AEA11F8();
  v68 = v39;
  v69 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  sub_25AEA1E98();
  LODWORD(v57) = v67;
  v45 = swift_allocObject();
  v46 = v64;
  *(v45 + 16) = v63;
  *(v45 + 24) = v46;
  *(v45 + 32) = v39;
  *(v45 + 40) = v43;
  type metadata accessor for ErrorView();
  sub_25AE47F60(&qword_27FA1D410, &qword_27FA1D3B0, &unk_25AEA3B20);
  sub_25AE47980(&qword_27FA1D418, type metadata accessor for ErrorView);

  v47 = v60;
  sub_25AEA1CF8();

  return (*(v59 + 8))(v44, v47);
}

double sub_25AE44A30@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_25AEA1988();

  sub_25AE472F4(0, v6);

  *&v5[23] = v6[1];
  *&v5[39] = v6[2];
  *&v5[55] = v6[3];
  v5[71] = v7;
  *&v5[7] = v6[0];
  v3 = sub_25AEA1AE8();
  *(a1 + 33) = *&v5[16];
  *(a1 + 49) = *&v5[32];
  *(a1 + 65) = *&v5[48];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 81) = *&v5[64];
  *(a1 + 17) = *v5;
  *(a1 + 96) = v3;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1;
  return result;
}

uint64_t sub_25AE44AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *a5 = 1;
  a5[1] = sub_25AE46FA8;
  a5[2] = v10;
}

double sub_25AE44B94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_25AEA1988();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  sub_25AE44CC0(a1, a2, a3, a4, &v16);
  v31 = v22;
  v32 = v23;
  v33 = v24;
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v25 = v16;
  v26 = v17;
  v34[6] = v22;
  v34[7] = v23;
  v34[8] = v24;
  v34[2] = v18;
  v34[3] = v19;
  v34[4] = v20;
  v34[5] = v21;
  v34[0] = v16;
  v34[1] = v17;
  sub_25AE479E0(&v25, &v15, &qword_27FA1D428, &qword_25AEA3BE0);
  sub_25AE41938(v34, &qword_27FA1D428, &qword_25AEA3BE0);
  v10 = v29;
  *(a5 + 104) = v30;
  v11 = v32;
  *(a5 + 120) = v31;
  *(a5 + 136) = v11;
  *(a5 + 152) = v33;
  v12 = v25;
  *(a5 + 40) = v26;
  result = *&v27;
  v14 = v28;
  *(a5 + 56) = v27;
  *(a5 + 72) = v14;
  *(a5 + 88) = v10;
  *(a5 + 24) = v12;
  return result;
}

uint64_t sub_25AE44CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = sub_25AEA1958();
  v35 = v11;
  v36 = v10;
  v13 = v12;
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  KeyPath = swift_getKeyPath();
  v18 = v13 & 1;
  v19 = a4;

  v20 = sub_25AEA1958();
  v33 = v21;
  v34 = v20;
  v23 = v22;
  v32 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  *(v25 + 32) = a3;
  *(v25 + 40) = v19;
  v26 = swift_getKeyPath();
  LOBYTE(v57) = 0;
  *&v38 = KeyPath;
  BYTE8(v38) = 0;
  *&v39 = v36;
  *(&v39 + 1) = v35;
  LOBYTE(v40) = v18;
  *(&v40 + 1) = v15;
  LOBYTE(v41) = 0;
  *(&v41 + 1) = sub_25AE46FB8;
  v42 = v16;
  *v37 = v16;
  *&v43 = v26;
  BYTE8(v43) = 0;
  *&v44 = v34;
  *(&v44 + 1) = v33;
  LOBYTE(v45) = v23 & 1;
  *(&v45 + 1) = v32;
  LOBYTE(v46) = 1;
  *(&v46 + 1) = sub_25AE4700C;
  v47 = v25;
  *&v37[8] = v43;
  *&v37[72] = v25;
  *&v37[56] = v46;
  *&v37[40] = v45;
  *&v37[24] = v44;
  v27 = v38;
  v28 = v39;
  v29 = v41;
  a5[2] = v40;
  a5[3] = v29;
  *a5 = v27;
  a5[1] = v28;
  a5[7] = *&v37[48];
  a5[8] = *&v37[64];
  a5[5] = *&v37[16];
  a5[6] = *&v37[32];
  a5[4] = *v37;
  v48 = v26;
  v49 = 0;
  v50 = v34;
  v51 = v33;
  v52 = v23 & 1;
  v53 = v32;
  v54 = 1;
  v55 = sub_25AE4700C;
  v56 = v25;

  sub_25AE47030(&v38, &v57);
  sub_25AE47030(&v43, &v57);
  sub_25AE4708C(&v48);
  v57 = KeyPath;
  v58 = 0;
  v59 = v36;
  v60 = v35;
  v61 = v18;
  v62 = v15;
  v63 = 0;
  v64 = sub_25AE46FB8;
  v65 = v16;
  return sub_25AE4708C(&v57);
}

uint64_t sub_25AE44F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v9 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v10 = qword_27FA22788;
    v11 = qword_27FA22788;
  }

  else
  {
    v11 = [objc_opt_self() mainBundle];
    v10 = 0;
  }

  v12 = v10;
  sub_25AEA0CC8();

  v29 = sub_25AEA2278();
  v14 = v13;
  v15 = v12;
  if (!v9)
  {
    v15 = [objc_opt_self() mainBundle];
  }

  v16 = v12;
  sub_25AEA0CC8();

  v17 = sub_25AEA2278();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3 & 1;
  *(v20 + 40) = a4;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3 & 1;
  *(v21 + 40) = a4;
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for ErrorView();
  v23 = (a5 + v22[5]);
  *v23 = v29;
  v23[1] = v14;
  v24 = (a5 + v22[6]);
  *v24 = v17;
  v24[1] = v19;
  *(a5 + v22[7]) = 0;
  v25 = (a5 + v22[8]);
  *v25 = sub_25AE46F24;
  v25[1] = v20;
  v26 = (a5 + v22[9]);
  *v26 = sub_25AE46F4C;
  v26[1] = v21;
  v27 = (a5 + v22[10]);
  *v27 = 0;
  v27[1] = 0;
  swift_retain_n();
  return swift_retain_n();
}

uint64_t sub_25AE45228(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v16 - v9;
  v11 = sub_25AEA2388();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_25AEA2368();

  v12 = sub_25AEA2358();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 48) = a3;
  *(v13 + 56) = a4;
  sub_25AE82E98(0, 0, v10, &unk_25AEA3C28, v13);
}

uint64_t sub_25AE45370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 105) = a6;
  *(v7 + 32) = a5;
  *(v7 + 40) = a7;
  *(v7 + 48) = sub_25AEA2368();
  *(v7 + 56) = sub_25AEA2358();
  v9 = sub_25AEA2348();
  *(v7 + 64) = v9;
  *(v7 + 72) = v8;

  return MEMORY[0x2822009F8](sub_25AE45410, v9, v8);
}

uint64_t sub_25AE45410()
{
  v1 = v0[6];
  v0[10] = sub_25AEA2358();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_25AE454AC;
  v3 = v0[4];

  return sub_25AE7C6D8();
}

uint64_t sub_25AE454AC()
{
  v2 = v0;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 96) = v2;

  v7 = sub_25AEA2348();
  if (v2)
  {
    v8 = sub_25AE456D8;
  }

  else
  {
    v8 = sub_25AE45608;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_25AE45608()
{
  v1 = v0[10];
  v2 = v0[4];

  sub_25AE7B0F0(4);
  v3 = v0[8];
  v4 = v0[9];

  return MEMORY[0x2822009F8](sub_25AE45678, v3, v4);
}

uint64_t sub_25AE45678()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25AE456D8()
{
  v1 = v0[10];

  v2 = v0[8];
  v3 = v0[9];

  return MEMORY[0x2822009F8](sub_25AE4573C, v2, v3);
}

uint64_t sub_25AE4573C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 105);

  *(v0 + 16) = v4;
  *(v0 + 24) = v3;
  *(v0 + 104) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  sub_25AEA1E88();
  NRLogError(_:additionalMessage:)(v1, 0, 0);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25AE45828()
{
  v1 = *v0;
  sub_25AEA28B8();
  MEMORY[0x25F85A3E0](v1);
  return sub_25AEA28D8();
}

uint64_t sub_25AE4589C()
{
  v1 = *v0;
  sub_25AEA28B8();
  MEMORY[0x25F85A3E0](v1);
  return sub_25AEA28D8();
}

uint64_t sub_25AE458E0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_25AEA1908();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D440, &qword_25AEA3CD8);
  sub_25AE45BA8(v1, a1 + *(v3 + 44));
  v4 = sub_25AEA1AC8();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D448, &qword_25AEA3CE0) + 36);
  *v5 = v4;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  sub_25AEA1FB8();
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D450, &qword_25AEA3CE8) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D458, &qword_25AEA3CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D460, &qword_25AEA3CF8);
  sub_25AE47F60(&qword_27FA1D468, &qword_27FA1D458, &qword_25AEA3CF0);
  sub_25AE47F60(&qword_27FA1D470, &qword_27FA1D460, &qword_25AEA3CF8);
  sub_25AEA1FC8();
  v7 = sub_25AEA1FE8();
  v9 = v8;
  v10 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D478, &qword_25AEA3D00) + 36));
  *v10 = v7;
  v10[1] = v9;
  v11 = swift_allocObject();
  v12 = *(v1 + 48);
  *(v11 + 48) = *(v1 + 32);
  *(v11 + 64) = v12;
  *(v11 + 80) = *(v1 + 64);
  v13 = *(v1 + 16);
  *(v11 + 16) = *v1;
  *(v11 + 32) = v13;
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D480, &qword_25AEA3D08) + 36));
  *v14 = sub_25AE47648;
  v14[1] = v11;
  v14[2] = 0;
  v14[3] = 0;
  v15 = swift_allocObject();
  v16 = *(v1 + 48);
  *(v15 + 48) = *(v1 + 32);
  *(v15 + 64) = v16;
  *(v15 + 80) = *(v1 + 64);
  v17 = *(v1 + 16);
  *(v15 + 16) = *v1;
  *(v15 + 32) = v17;
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D488, &qword_25AEA3D10) + 36));
  *v18 = 0;
  v18[1] = 0;
  v18[2] = sub_25AE47650;
  v18[3] = v15;
  sub_25AE47658(v1, v20);
  return sub_25AE47658(v1, v20);
}

uint64_t sub_25AE45BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D4B8, &qword_25AEA3D40);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = sub_25AEA1998();
  v26 = v12;
  LOBYTE(v32[0]) = 1;
  sub_25AE45EB4(a1, v29);
  *&v28[7] = v29[0];
  *&v28[23] = v29[1];
  *&v28[39] = v29[2];
  *&v28[55] = v29[3];
  v13 = v32[0];
  v14 = swift_allocObject();
  v15 = *(a1 + 48);
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(a1 + 64);
  v16 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v16;
  v27 = a1;
  sub_25AE47658(a1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D4C0, &qword_25AEA3D48);
  sub_25AE47754();
  sub_25AEA1EB8();
  v17 = v5[2];
  v17(v9, v11, v4);
  v30[0] = v12;
  v30[1] = 0;
  v31[0] = v13;
  *&v31[1] = *v28;
  *&v31[17] = *&v28[16];
  *&v31[33] = *&v28[32];
  *&v31[49] = *&v28[48];
  v18 = *&v28[63];
  *&v31[64] = *&v28[63];
  v19 = *v31;
  *a2 = v12;
  *(a2 + 16) = v19;
  v20 = *&v31[16];
  v21 = *&v31[48];
  *(a2 + 48) = *&v31[32];
  *(a2 + 64) = v21;
  *(a2 + 32) = v20;
  *(a2 + 80) = v18;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D518, &qword_25AEA3D70);
  v17((a2 + *(v22 + 64)), v9, v4);
  sub_25AE479E0(v30, v32, &qword_27FA1D520, &qword_25AEA3D78);
  v23 = v5[1];
  v23(v11, v4);
  v23(v9, v4);
  v32[0] = v26;
  v32[1] = 0;
  v33 = v13;
  v35 = *&v28[16];
  v36 = *&v28[32];
  *v37 = *&v28[48];
  *&v37[15] = *&v28[63];
  v34 = *v28;
  return sub_25AE41938(v32, &qword_27FA1D520, &qword_25AEA3D78);
}

uint64_t sub_25AE45EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25AEA1948();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_25AEA1938();
  sub_25AEA1928();
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  sub_25AEA1918();
  sub_25AEA1928();
  sub_25AEA1968();
  v8 = sub_25AEA1BB8();
  v10 = v9;
  v12 = v11;
  sub_25AEA1B08();
  v13 = sub_25AEA1B68();
  v32 = v14;
  v33 = v13;
  v31 = v15;
  v34 = v16;
  sub_25AE479D0(v8, v10, v12 & 1);

  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v17 = qword_27FA22788;
  v18 = sub_25AEA1BB8();
  v20 = v19;
  v22 = v21;
  sub_25AEA1DE8();
  v23 = sub_25AEA1B88();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_25AE479D0(v18, v20, v22 & 1);

  *a2 = v33;
  *(a2 + 8) = v32;
  *(a2 + 16) = v31 & 1;
  *(a2 + 24) = v34;
  *(a2 + 32) = v23;
  *(a2 + 40) = v25;
  *(a2 + 48) = v27 & 1;
  *(a2 + 56) = v29;
  sub_25AE47B08(v33, v32, v31 & 1);

  sub_25AE47B08(v23, v25, v27 & 1);

  sub_25AE479D0(v23, v25, v27 & 1);

  sub_25AE479D0(v33, v32, v31 & 1);
}

void sub_25AE461A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D538, &qword_25AEA3DC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  sub_25AEA1E78();
  v11 = *(a1 + 8);
  if (v22 == 1)
  {
    v12 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager;
    v13 = *(v11 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager);
    if (v13)
    {
      v14 = v13;
      sub_25AE5109C();

      v13 = *(v11 + v12);
    }

    *(v11 + v12) = 0;

    sub_25AE79B04();
  }

  else
  {
    v15 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_ttsTempEnrolment;
    swift_beginAccess();
    sub_25AE479E0(v11 + v15, v5, &qword_27FA1D538, &qword_25AEA3DC0);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_25AE41938(v5, &qword_27FA1D538, &qword_25AEA3DC0);
    }

    else
    {
      sub_25AE47A48(v5, v10);
      sub_25AE7F854();
      v16 = *(v11 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager);
      if (v16)
      {
        v17 = *&v10[*(v6 + 20)];
        v18 = v16;
        v19 = sub_25AEA0E08();
        sub_25AE50A44(v17, v19, v20);
      }

      sub_25AE47AAC(v10);
    }
  }
}

uint64_t sub_25AE463F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[2] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D528, &qword_25AEA3D80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D530, &qword_25AEA3D88);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v26 - v9;
  v27 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  sub_25AEA1E78();
  sub_25AEA1958();
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  v32 = *(a1 + 16);
  sub_25AEA1E78();
  if (v31)
  {
    v11 = 1886352499;
  }

  else
  {
    v11 = 2036427888;
  }

  MEMORY[0x25F859D40](v11, 0xE400000000000000);

  MEMORY[0x25F859D40](0x2E656C637269632ELL, 0xEC0000006C6C6966);
  sub_25AEA1E08();
  sub_25AEA19C8();
  v12 = sub_25AEA19D8();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  v13 = sub_25AEA1E38();

  sub_25AE41938(v10, &qword_27FA1D530, &qword_25AEA3D88);
  v14 = sub_25AEA1D98();
  v15 = sub_25AEA1DA8();
  v16 = sub_25AEA1AF8();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = sub_25AEA1B28();
  sub_25AE41938(v6, &qword_27FA1D528, &qword_25AEA3D80);
  KeyPath = swift_getKeyPath();
  v26[1] = v13;
  *&v27 = v13;
  *(&v27 + 1) = v14;
  v28 = v15;
  v29 = KeyPath;
  v30 = v17;
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v19 = qword_27FA22788;
  v20 = sub_25AEA1BB8();
  v22 = v21;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D4D8, &qword_25AEA3D50);
  sub_25AE47810();
  sub_25AEA1C98();
  sub_25AE479D0(v20, v22, v24 & 1);
}

uint64_t sub_25AE467E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D498, &unk_25AEA3D20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1D960, &unk_25AEA44A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - v10;
  v12 = *(a1 + 8);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D4A0, &qword_25AEA3D30);
  sub_25AEA1448();
  swift_endAccess();
  sub_25AE47F60(&unk_27FA1D970, &qword_27FA1D498, &unk_25AEA3D20);
  sub_25AE47690();
  sub_25AEA14A8();
  (*(v3 + 8))(v6, v2);
  v13 = swift_allocObject();
  v14 = *(a1 + 48);
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(a1 + 64);
  v15 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v15;
  sub_25AE47658(a1, v19);
  sub_25AE47F60(&qword_27FA1D980, &unk_27FA1D960, &unk_25AEA44A0);
  v16 = sub_25AEA14B8();

  (*(v8 + 8))(v11, v7);
  v19[0] = *(a1 + 32);
  v18[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D490, &qword_25AEA3D18);
  return sub_25AEA1E88();
}

uint64_t sub_25AE46AC0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v5 = *(a2 + 16);
  v6 = v5;
  v7 = *(&v5 + 1);
  sub_25AE479E0(&v7, v4, &qword_27FA1D4B0, &qword_25AEA3D38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  sub_25AEA1E78();
  if ((v2 == 4) != v4[0])
  {
    v5 = v6;
    v4[0] = v2 == 4;
    sub_25AEA1E88();
  }

  return sub_25AE41938(&v6, &qword_27FA1D408, &qword_25AEA3BA0);
}

uint64_t sub_25AE46B94(uint64_t a1)
{
  v3 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D490, &qword_25AEA3D18);
  result = sub_25AEA1E78();
  if (v2)
  {
    sub_25AEA1408();
  }

  return result;
}

uint64_t sub_25AE46BF4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CE0118];
  v3 = sub_25AEA1978();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = [objc_opt_self() secondarySystemFillColor];
  v5 = sub_25AEA1D68();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D458, &qword_25AEA3CF0);
  *(a1 + *(result + 52)) = v5;
  *(a1 + *(result + 56)) = 256;
  return result;
}

uint64_t sub_25AE46CAC@<X0>(char *a1@<X8>)
{
  v2 = *(sub_25AEA1798() + 20);
  v3 = *MEMORY[0x277CE0118];
  v4 = sub_25AEA1978();
  (*(*(v4 - 8) + 104))(&a1[v2], v3, v4);
  __asm { FMOV            V0.2D, #15.0 }

  *a1 = _Q0;
  v10 = [objc_opt_self() secondarySystemFillColor];
  v11 = sub_25AEA1D68();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D460, &qword_25AEA3CF8);
  *&a1[*(result + 52)] = v11;
  *&a1[*(result + 56)] = 256;
  return result;
}

uint64_t sub_25AE46DA4@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 64);
  v3 = *v1;
  v4 = v1[1];
  return sub_25AE458E0(a1);
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

double sub_25AE46E38@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_25AE44A30(a1);
}

unint64_t sub_25AE46E58()
{
  result = qword_27FA1D3E8;
  if (!qword_27FA1D3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D3D8, &qword_25AEA3B88);
    sub_25AE47F60(&qword_27FA1D3F0, &qword_27FA1D3F8, &qword_25AEA3B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D3E8);
  }

  return result;
}

uint64_t sub_25AE46F4C()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_dismissEnrollmentFlow;
  v2 = *v1;
  v3 = *(v1 + 8);

  v2(v4);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25AE470E0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25AE47128(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25AE47200;

  return sub_25AE45370(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_25AE47200()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25AE472F4@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  sub_25AEA1E68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D430, &qword_25AEA3C30);
  sub_25AEA1E68();
  type metadata accessor for EnrollmentCoordinator(0);
  sub_25AE47980(&qword_27FA1D438, type metadata accessor for EnrollmentCoordinator);

  v3 = sub_25AEA16D8();
  v5 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  v7 = v10;
  v8 = v11;
  if (!v11)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = a1 & 1;
  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_25AE4748C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_25AE474D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AE47538()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D3B0, &unk_25AEA3B20);
  type metadata accessor for ErrorView();
  sub_25AE47F60(&qword_27FA1D410, &qword_27FA1D3B0, &unk_25AEA3B20);
  sub_25AE47980(&qword_27FA1D418, type metadata accessor for ErrorView);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25AE47690()
{
  result = qword_27FA1D4A8;
  if (!qword_27FA1D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D4A8);
  }

  return result;
}

uint64_t objectdestroy_37Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

unint64_t sub_25AE47754()
{
  result = qword_27FA1D4C8;
  if (!qword_27FA1D4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D4C0, &qword_25AEA3D48);
    sub_25AE47810();
    sub_25AE47980(&qword_27FA1D510, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D4C8);
  }

  return result;
}

unint64_t sub_25AE47810()
{
  result = qword_27FA1D4D0;
  if (!qword_27FA1D4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D4D8, &qword_25AEA3D50);
    sub_25AE478C8();
    sub_25AE47F60(&qword_27FA1D500, &qword_27FA1D508, &qword_25AEA3D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D4D0);
  }

  return result;
}

unint64_t sub_25AE478C8()
{
  result = qword_27FA1D4E0;
  if (!qword_27FA1D4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D4E8, &qword_25AEA3D58);
    sub_25AE47F60(&qword_27FA1D4F0, &qword_27FA1D4F8, &qword_25AEA3D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D4E0);
  }

  return result;
}

uint64_t sub_25AE47980(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25AE479D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25AE479E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25AE47A48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE47AAC(uint64_t a1)
{
  v2 = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AE47B08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t getEnumTagSinglePayload for AudioReviewCell.AudioReviewType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AudioReviewCell.AudioReviewType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25AE47CB8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_25AE47D6C()
{
  result = qword_27FA1D550;
  if (!qword_27FA1D550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D450, &qword_25AEA3CE8);
    sub_25AE47E24();
    sub_25AE47F60(&qword_27FA1D580, &qword_27FA1D478, &qword_25AEA3D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D550);
  }

  return result;
}

unint64_t sub_25AE47E24()
{
  result = qword_27FA1D558;
  if (!qword_27FA1D558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D560, &qword_25AEA3DD8);
    sub_25AE47EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D558);
  }

  return result;
}

unint64_t sub_25AE47EA8()
{
  result = qword_27FA1D568;
  if (!qword_27FA1D568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D448, &qword_25AEA3CE0);
    sub_25AE47F60(&qword_27FA1D570, &qword_27FA1D578, qword_25AEA3DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D568);
  }

  return result;
}

uint64_t sub_25AE47F60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_25AE47FAC()
{
  result = qword_27FA1D588;
  if (!qword_27FA1D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D588);
  }

  return result;
}

uint64_t sub_25AE4802C()
{
  v0 = sub_25AEA0DB8();
  __swift_allocate_value_buffer(v0, qword_27FA1D590);
  __swift_project_value_buffer(v0, qword_27FA1D590);
  if (qword_27FA1D258 != -1)
  {
    swift_once();
  }

  swift_bridgeObjectRetain_n();
  MEMORY[0x25F859D40](0xD00000000000001DLL, 0x800000025AEA8390);

  sub_25AEA0D58();
}

void sub_25AE4811C()
{
  if ((byte_27FA1D5A8 & 1) == 0)
  {
    byte_27FA1D5A8 = AXDeviceIsUnlocked();
  }

  if (AXDeviceIsUnlocked() && (swift_getKeyPath(), swift_getKeyPath(), sub_25AEA1478(), , , (v8[0] & 1) == 0))
  {
    v5 = *(v0 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_persistentContainer);
    v6 = swift_allocObject();
    swift_weakInit();
    v8[4] = sub_25AE49E18;
    v8[5] = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_25AE4991C;
    v8[3] = &block_descriptor_1;
    v7 = _Block_copy(v8);

    [v5 loadPersistentStoresWithCompletionHandler_];
    _Block_release(v7);
  }

  else
  {
    if (qword_27FA1D248 != -1)
    {
      swift_once();
    }

    v1 = sub_25AEA12C8();
    __swift_project_value_buffer(v1, qword_27FA1DF50);
    v2 = sub_25AEA12A8();
    v3 = sub_25AEA24A8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_25AE3C000, v2, v3, "Enrollment Store persistent stores are not ready to be loaded yet", v4, 2u);
      MEMORY[0x25F85AB80](v4, -1, -1);
    }
  }
}

uint64_t sub_25AE48348()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  return v1;
}

id *sub_25AE483B4()
{
  v70 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1D950, &unk_25AEA4490);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v65 - v6;
  v8 = sub_25AEA0DB8();
  v9 = *(v8 - 8);
  v71 = v8;
  v72 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v66 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v65 - v15;
  v17 = OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService__persistantStoreIsReadyToBeLoaded;
  v74 = 0;
  sub_25AEA1438();
  v68 = v13;
  v69 = v17;
  v18 = *(v13 + 32);
  v19 = &v17[v0];
  v20 = v0;
  v18(v19, v16, v12);
  v21 = OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService__persistentStoreLoadedSuccessfully;
  v73 = 0;
  sub_25AEA1438();
  v67 = v21;
  v18(v20 + v21, v16, v12);
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v22 = qword_27FA22788;
  if (!qword_27FA22788)
  {
    (*(v72 + 56))(v7, 1, 1, v71);
LABEL_9:
    sub_25AE41938(v7, &unk_27FA1D950, &unk_25AEA4490);
    sub_25AE426AC();
    swift_allocError();
    *v29 = 1;
    *(v29 + 8) = 0xD000000000000019;
    *(v29 + 16) = 0x800000025AEA8280;
    swift_willThrow();
LABEL_10:
    v30 = 0;
LABEL_11:
    v31 = *(v68 + 8);
    v31(&v69[v20], v12);
    v31(v20 + v67, v12);
    if (v30)
    {
    }

    v32 = *(*v20 + 12);
    v33 = *(*v20 + 26);
    swift_deallocPartialClassInstance();
    return v20;
  }

  v65[1] = "onfiguration with identifier ";
  v23 = sub_25AEA2178();
  v24 = sub_25AEA2178();
  v25 = [v22 URLForResource:v23 withExtension:v24];

  v26 = v71;
  if (v25)
  {
    sub_25AEA0D88();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v72;
  (*(v72 + 56))(v5, v27, 1, v26);
  sub_25AE49BE4(v5, v7, &unk_27FA1D950, &unk_25AEA4490);
  if ((*(v28 + 48))(v7, 1, v26) == 1)
  {
    goto LABEL_9;
  }

  v35 = v66;
  (*(v28 + 32))(v66, v7, v26);
  v36 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v37 = sub_25AEA0D78();
  v38 = [v36 initWithContentsOfURL_];

  if (!v38)
  {
    sub_25AE426AC();
    swift_allocError();
    *v41 = 1;
    *(v41 + 8) = 0xD000000000000019;
    *(v41 + 16) = 0x800000025AEA82A0;
    swift_willThrow();
    (*(v28 + 8))(v35, v26);
    goto LABEL_10;
  }

  *(v20 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_managedObjectModel) = v38;
  v39 = v38;
  v40 = v65[2];
  sub_25AE6A498();
  if (v40)
  {
    (*(v28 + 8))(v66, v26);

    v30 = 1;
    goto LABEL_11;
  }

  v42 = objc_allocWithZone(MEMORY[0x277CBE498]);
  v43 = sub_25AEA2178();
  v44 = [v42 initWithContainerIdentifier_];

  v45 = sub_25AEA2178();
  [v44 setApsConnectionMachServiceName_];

  [v44 setUseDeviceToDeviceEncryption_];
  v46 = [objc_allocWithZone(MEMORY[0x277CBC230]) init];
  [v46 setUseZoneWidePCS_];
  v70 = v46;
  [v44 setContainerOptions_];
  if (qword_27FA1D220 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v26, qword_27FA1D590);
  v47 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
  v48 = sub_25AEA0D78();
  v49 = [v47 initWithURL_];

  [v49 setType_];
  sub_25AE4167C(0, &qword_27FA1D5F8, 0x277CCABB0);
  v50 = sub_25AEA2508();
  [v49 setOption:v50 forKey:*MEMORY[0x277CBE210]];

  v51 = sub_25AEA2508();
  [v49 setOption:v51 forKey:*MEMORY[0x277CBE270]];

  [v49 setCloudKitContainerOptions_];
  v52 = objc_allocWithZone(MEMORY[0x277CBE470]);
  v53 = v39;
  v54 = sub_25AEA2178();
  v55 = [v52 initWithName:v54 managedObjectModel:v53];

  v56 = OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_persistentContainer;
  *(v20 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_persistentContainer) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2A8, &qword_25AEA3E90);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_25AEA3530;
  *(v57 + 32) = v49;
  sub_25AE4167C(0, &qword_27FA1D600, 0x277CBE4E0);
  v69 = v44;
  v58 = v55;
  v59 = v49;
  v60 = sub_25AEA22E8();

  [v58 setPersistentStoreDescriptions_];

  v61 = [*(v20 + v56) viewContext];
  *(v20 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_mainContext) = v61;
  [v61 setAutomaticallyMergesChangesFromParent_];
  [*(v20 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_mainContext) setMergePolicy_];
  v62 = [objc_opt_self() defaultCenter];
  [v62 addObserver:v20 selector:sel_handleRemoteChanges_ name:*MEMORY[0x277CBE260] object:0];

  v63 = CFNotificationCenterGetDarwinNotifyCenter();
  v64 = AXkMobileKeyBagLockStatusNotificationID();
  CFNotificationCenterAddObserver(v63, v20, sub_25AE49A20, v64, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  sub_25AE4811C();
  (*(v72 + 8))(v66, v26);
  return v20;
}

uint64_t sub_25AE48D88()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService__persistantStoreIsReadyToBeLoaded;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService__persistentStoreLoadedSuccessfully, v3);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CoreDataDatabaseService()
{
  result = qword_27FA1D5D8;
  if (!qword_27FA1D5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_25AE48F1C(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v48 = a1;
  v49 = a2;
  v5 = sub_25AEA0E48();
  v54 = *(v5 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v17 = sub_25AEA2178();
  v18 = [v16 initWithEntityName_];

  v19 = *(v2 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_mainContext);
  type metadata accessor for NameConfiguration();
  v20 = sub_25AEA24E8();
  if (v3)
  {
  }

  else
  {
    v21 = v54;
    v58 = v15;
    v47 = v8;
    v55 = v5;
    v42 = 0;
    v43 = v18;
    if (v20 >> 62)
    {
      goto LABEL_28;
    }

    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = 0xD000000000000011;
    v23 = v20;
    while (1)
    {
      v24 = v58;
      if (!v22)
      {
        break;
      }

      v25 = 0;
      v53 = v23 & 0xFFFFFFFFFFFFFF8;
      v54 = v23 & 0xC000000000000001;
      v51 = (v21 + 48);
      v52 = (v21 + 56);
      v44 = (v21 + 8);
      v45 = (v21 + 16);
      v50 = v22;
      v46 = v23;
      while (1)
      {
        if (v54)
        {
          v20 = MEMORY[0x25F85A1C0](v25, v23);
        }

        else
        {
          if (v25 >= *(v53 + 16))
          {
            goto LABEL_27;
          }

          v20 = *(v23 + 8 * v25 + 32);
        }

        v4 = v20;
        v26 = v25 + 1;
        v27 = v55;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v28 = [v20 identifier];
        if (v28)
        {
          v29 = v28;
          sub_25AEA0E28();

          v30 = 0;
        }

        else
        {
          v30 = 1;
        }

        (*v52)(v13, v30, 1, v27);
        v21 = v24;
        sub_25AE49BE4(v13, v24, &qword_27FA1D380, &unk_25AEA3E80);
        if ((*v51)(v24, 1, v27))
        {
          sub_25AE41938(v24, &qword_27FA1D380, &unk_25AEA3E80);
        }

        else
        {
          v31 = v47;
          (*v45)(v47, v24, v27);
          sub_25AE41938(v24, &qword_27FA1D380, &unk_25AEA3E80);
          v21 = v31;
          v32 = sub_25AEA0E08();
          v33 = v27;
          v34 = v32;
          v36 = v35;
          (*v44)(v21, v33);
          if (v34 == v48 && v36 == v49)
          {

            goto LABEL_24;
          }

          v37 = sub_25AEA2828();

          v23 = v46;
          if (v37)
          {

LABEL_24:

            return v4;
          }
        }

        ++v25;
        v4 = 0xD000000000000011;
        v24 = v58;
        if (v26 == v50)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v23 = v20;
      v20 = sub_25AEA25B8();
      v22 = v20;
      v4 = 0xD000000000000011;
    }

LABEL_22:

    v56 = 0;
    v57 = 0xE000000000000000;
    sub_25AEA2688();

    v56 = 0xD00000000000002DLL;
    v57 = 0x800000025AEA8230;
    MEMORY[0x25F859D40](v48, v49);
    v38 = v56;
    v39 = v57;
    sub_25AE426AC();
    swift_allocError();
    *v40 = 1;
    *(v40 + 8) = v38;
    *(v40 + 16) = v39;
    swift_willThrow();
  }

  return v4;
}

id sub_25AE493E4()
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (!AXDeviceIsUnlocked())
  {
    sub_25AE426AC();
    swift_allocError();
    *v3 = 2;
    *(v3 + 8) = 0xD000000000000010;
    *(v3 + 16) = 0x800000025AEA81F0;
    goto LABEL_6;
  }

  v1 = *(v0 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_mainContext);
  result = [v1 hasChanges];
  if (result)
  {
    v6[0] = 0;
    if ([v1 save_])
    {
      result = v6[0];
      goto LABEL_7;
    }

    v5 = v6[0];
    sub_25AEA0D08();

LABEL_6:
    result = swift_willThrow();
  }

LABEL_7:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25AE49500()
{
  v2 = v0;
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_25AEA2178();
  v5 = [v3 initWithEntityName_];

  v6 = *(v2 + OBJC_IVAR____TtC15NameRecognition23CoreDataDatabaseService_mainContext);
  type metadata accessor for NameConfiguration();
  v7 = sub_25AEA24E8();
  if (v1)
  {
  }

  else
  {
    v8 = v7;
    if (v7 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25AEA25B8())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x25F85A1C0](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        [v6 deleteObject_];

        ++v10;
        if (v13 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:

    sub_25AE493E4();
  }
}

void sub_25AE496A0(void *a1, id a2)
{
  if (a2)
  {
    v4 = a2;
    sub_25AEA2688();
    MEMORY[0x25F859D40](0xD000000000000022, 0x800000025AEA8360);
    v5 = [a1 description];
    v6 = sub_25AEA21A8();
    v8 = v7;

    MEMORY[0x25F859D40](v6, v8);

    MEMORY[0x25F859D40](0x3A726F727245203ALL, 0xE900000000000020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
    sub_25AEA2738();
    sub_25AE426AC();
    v9 = swift_allocError();
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0xE000000000000000;
    NRLogError(_:additionalMessage:)(v9, 0, 0);
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_25AEA1488();
    }

    if (qword_27FA1D248 != -1)
    {
      swift_once();
    }

    v11 = sub_25AEA12C8();
    __swift_project_value_buffer(v11, qword_27FA1DF50);
    v12 = sub_25AEA12A8();
    v13 = sub_25AEA24A8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_25AE3C000, v12, v13, "Successuflly loaded persistant store.", v14, 2u);
      MEMORY[0x25F85AB80](v14, -1, -1);
    }
  }
}

void sub_25AE4991C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

void sub_25AE499A8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  sub_25AE4811C();
}

void sub_25AE49AF0()
{
  sub_25AE49B94();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_25AE49B94()
{
  if (!qword_27FA1D5E8)
  {
    v0 = sub_25AEA1498();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA1D5E8);
    }
  }
}

uint64_t sub_25AE49BE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25AE49C4C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t sub_25AE49CC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  *a2 = v5;
  return result;
}

void sub_25AE49D3C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  sub_25AE4811C();
}

uint64_t sub_25AE49DE0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25AE49E38(uint64_t a1)
{
  result = AXDeviceIsUnlocked();
  if (result && a1 && (byte_27FA1D5A8 & 1) == 0)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_25AEA1478();

    if ((v4[0] & 1) == 0)
    {
      v4[4] = sub_25AE49FAC;
      v4[5] = a1;
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 1107296256;
      v4[2] = sub_25AE93330;
      v4[3] = &block_descriptor_13;
      v3 = _Block_copy(v4);

      AXPerformBlockOnMainThread();
      _Block_release(v3);
      if ((byte_27FA1D5A8 & 1) == 0)
      {
        byte_27FA1D5A8 = AXDeviceIsUnlocked();
      }

      AXDeviceIsUnlocked();
    }
  }

  return result;
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

uint64_t sub_25AE4A080()
{
  v10 = *(v0 + 16);
  v13 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D6B0, &unk_25AEA40C0);
  sub_25AEA1E78();

  v1 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v1 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
    v11 = *(v0 + 16);
    v14 = *(v0 + 32);
    sub_25AEA1E78();
    v2 = sub_25AEA2208();

    if (*(v0 + 80) >= v2)
    {
      v3 = *(v0 + 8);
      v12 = *(v0 + 16);
      v15 = *(v0 + 32);
      sub_25AEA1E78();
      v4 = *(v3 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_currentEnrolledNames);
      if (v4)
      {
        v5 = *(v3 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_currentEnrolledNames);

        v6 = sub_25AE4DFE4(v8, v9, v4);

        LOBYTE(v1) = v6 ^ 1;
      }

      else
      {

        LOBYTE(v1) = 1;
      }
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

uint64_t sub_25AE4A1D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = sub_25AEA1238();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3A8, &qword_25AEA3B18);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v47[4] = v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D620, &qword_25AEA3FF0);
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v11);
  v48 = v47 - v13;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D628, &qword_25AEA3FF8);
  v14 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v52 = v47 - v15;
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v16 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v17 = qword_27FA22788;
    v18 = qword_27FA22788;
  }

  else
  {
    v18 = [objc_opt_self() mainBundle];
    v17 = 0;
  }

  v19 = v17;
  v20 = sub_25AEA0CC8();
  v22 = v21;

  v54 = v20;
  v55 = v22;
  v47[3] = sub_25AEA2278();
  v47[2] = v23;
  v24 = v19;
  if (!v16)
  {
    v24 = [objc_opt_self() mainBundle];
  }

  v25 = v19;
  v26 = sub_25AEA0CC8();
  v28 = v27;

  v54 = v26;
  v55 = v28;
  v47[1] = sub_25AEA2278();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3B8, &unk_25AEA4000);
  v29 = *(v4 + 72);
  v30 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_25AEA3F30;
  sub_25AEA1228();
  sub_25AEA1208();
  sub_25AEA1218();
  v54 = v31;
  sub_25AE4F5B8(&qword_27FA1D3C0, MEMORY[0x277CE7670]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3C8, &qword_25AEA3B80);
  sub_25AE47F60(&qword_27FA1D3D0, &qword_27FA1D3C8, &qword_25AEA3B80);
  sub_25AEA2578();
  sub_25AEA1F38();
  v32 = (*(v4 + 8))(v7, v3);
  MEMORY[0x28223BE20](v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D630, &qword_25AEA4010);
  sub_25AE4DD40();
  v33 = v48;
  v34 = sub_25AEA11F8();
  MEMORY[0x28223BE20](v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D650, &qword_25AEA4020);
  sub_25AE47F60(&qword_27FA1D658, &qword_27FA1D620, &qword_25AEA3FF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D660, &unk_25AEA4028);
  v36 = sub_25AE47F60(&qword_27FA1D668, &qword_27FA1D660, &unk_25AEA4028);
  v54 = v35;
  v55 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v52;
  v38 = v50;
  sub_25AEA1D28();
  (*(v49 + 8))(v33, v38);
  v39 = swift_allocObject();
  v40 = *(v2 + 48);
  *(v39 + 48) = *(v2 + 32);
  *(v39 + 64) = v40;
  *(v39 + 80) = *(v2 + 64);
  *(v39 + 96) = *(v2 + 80);
  v41 = *(v2 + 16);
  *(v39 + 16) = *v2;
  *(v39 + 32) = v41;
  v42 = (v37 + *(v51 + 36));
  *v42 = sub_25AE4DE04;
  v42[1] = v39;
  v42[2] = 0;
  v42[3] = 0;
  v56 = *(v2 + 40);
  sub_25AE4DE0C(v2, &v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  sub_25AEA1E98();
  v43 = swift_allocObject();
  v44 = *(v2 + 48);
  *(v43 + 48) = *(v2 + 32);
  *(v43 + 64) = v44;
  *(v43 + 80) = *(v2 + 64);
  *(v43 + 96) = *(v2 + 80);
  v45 = *(v2 + 16);
  *(v43 + 16) = *v2;
  *(v43 + 32) = v45;
  sub_25AE4DE0C(v2, &v54);
  type metadata accessor for ErrorView();
  sub_25AE4DE4C();
  sub_25AE4F5B8(&qword_27FA1D418, type metadata accessor for ErrorView);
  sub_25AEA1CF8();

  return sub_25AE41938(v37, &qword_27FA1D628, &qword_25AEA3FF8);
}

double sub_25AE4AA58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_25AEA1988();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D6C8, &qword_25AEA4130);
  sub_25AE4AAF0(a1, (a2 + *(v4 + 44)));
  LOBYTE(a1) = sub_25AEA1AE8();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D630, &qword_25AEA4010) + 36);
  *v5 = a1;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_25AE4AAF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v95 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D6D0, &qword_25AEA4138);
  v100 = *(v3 - 8);
  v101 = v3;
  v4 = v100[8];
  v5 = MEMORY[0x28223BE20](v3);
  v99 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v102 = &v90 - v7;
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v8 = qword_27FA22788;
  v92 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v9 = qword_27FA22788;
  }

  else
  {
    v8 = [objc_opt_self() mainBundle];
    v9 = 0;
  }

  v91 = v9;
  v10 = sub_25AEA0CC8();
  v12 = v11;

  *&v111 = v10;
  *(&v111 + 1) = v12;
  v13 = sub_25AEA2278();
  v15 = v14;
  v117 = *(a1 + 16);
  v118 = *(a1 + 32);
  v105 = *(a1 + 16);
  *&v106 = *(a1 + 32);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D6B0, &unk_25AEA40C0);
  sub_25AEA1E98();
  v98 = v111;
  v17 = v112;
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  v21 = swift_allocObject();
  v22 = *(a1 + 48);
  *(v21 + 48) = *(a1 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(a1 + 64);
  *(v21 + 96) = *(a1 + 80);
  v23 = *(a1 + 16);
  *(v21 + 16) = *a1;
  *(v21 + 32) = v23;
  *&v105 = v13;
  *(&v105 + 1) = v15;
  v106 = v98;
  v107 = v17;
  LOBYTE(v108) = v18;
  *(&v108 + 1) = v19;
  LOBYTE(v109) = v20;
  *(&v109 + 1) = sub_25AE4E95C;
  v110 = v21;
  v103 = v117;
  v104 = v118;

  sub_25AE4DE0C(a1, &v111);
  sub_25AEA1E78();
  v103 = v111;
  v24 = swift_allocObject();
  v25 = *(a1 + 48);
  *(v24 + 48) = *(a1 + 32);
  *(v24 + 64) = v25;
  *(v24 + 80) = *(a1 + 64);
  *(v24 + 96) = *(a1 + 80);
  v26 = *(a1 + 16);
  *(v24 + 16) = *a1;
  *(v24 + 32) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_25AE4E9EC;
  *(v27 + 24) = v24;
  sub_25AE4DE0C(a1, &v111);
  sub_25AE4EA88();
  sub_25AEA1D38();

  v113 = v107;
  v114 = v108;
  v115 = v109;
  v116 = v110;
  v111 = v105;
  v112 = v106;
  sub_25AE4EADC(&v111);
  v105 = v117;
  *&v106 = v118;
  v94 = v16;
  sub_25AEA1E78();
  v28 = sub_25AEA2208();

  v29 = 0;
  v30 = 0;
  v31 = 0;
  v96 = 0;
  if (*(a1 + 80) < v28)
  {
    sub_25AEA1958();
    v32 = v91;
    v33 = sub_25AEA1BB8();
    v35 = v34;
    v37 = v36;
    sub_25AEA1D88();
    v38 = sub_25AEA1B78();
    *&v98 = v39;
    v41 = v40;

    sub_25AE479D0(v33, v35, v37 & 1);

    sub_25AEA1B38();
    v42 = v41;
    v43 = v98;
    v29 = sub_25AEA1B98();
    v30 = v44;
    LODWORD(v97) = v45;
    v47 = v46;

    sub_25AE479D0(v38, v43, v42 & 1);

    v31 = v97 & 1;
    sub_25AE47B08(v29, v30, v97 & 1);
    v96 = v47;
  }

  v97 = v31;
  v48 = *(a1 + 8);
  v105 = v117;
  *&v106 = v118;
  sub_25AEA1E78();
  v49 = *(&v103 + 1);
  v50 = *(v48 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_currentEnrolledNames);
  v93 = v29;
  *&v98 = v30;
  if (!v50)
  {

    goto LABEL_12;
  }

  v51 = v103;

  LOBYTE(v51) = sub_25AE4DFE4(v51, v49, v50);

  if ((v51 & 1) == 0)
  {
LABEL_12:
    v94 = 0;
    v71 = 0;
    v73 = 0;
    v74 = 0;
    goto LABEL_13;
  }

  sub_25AEA1958();
  v52 = v91;
  v53 = sub_25AEA1BB8();
  v55 = v54;
  v57 = v56;
  sub_25AEA1D88();
  v58 = sub_25AEA1B78();
  v60 = v59;
  v62 = v61;

  sub_25AE479D0(v53, v55, v57 & 1);

  sub_25AEA1B38();
  v63 = v60;
  v64 = sub_25AEA1B98();
  v66 = v65;
  v68 = v67;
  v70 = v69;

  sub_25AE479D0(v58, v63, v62 & 1);

  v94 = v64;
  v71 = v66;
  v72 = v66;
  v73 = v68 & 1;
  sub_25AE47B08(v64, v72, v68 & 1);
  v74 = v70;

LABEL_13:
  v75 = v99;
  v76 = v100[2];
  v77 = v101;
  v76(v99, v102, v101);
  v78 = v95;
  v76(v95, v75, v77);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D6E0, &qword_25AEA4140);
  v80 = &v78[*(v79 + 48)];
  v81 = v93;
  v82 = v97;
  v83 = v98;
  *v80 = v93;
  v80[1] = v83;
  v84 = v96;
  v80[2] = v82;
  v80[3] = v84;
  v85 = &v78[*(v79 + 64)];
  sub_25AE4EB0C(v81, v83, v82, v84);
  v86 = v94;
  sub_25AE4EB0C(v94, v71, v73, v74);
  sub_25AE4EB50(v81, v83, v82, v84);
  sub_25AE4EB50(v86, v71, v73, v74);
  *v85 = v86;
  v85[1] = v71;
  v85[2] = v73;
  v85[3] = v74;
  v87 = v101;
  v88 = v100[1];
  v88(v102, v101);
  sub_25AE4EB50(v86, v71, v73, v74);
  sub_25AE4EB50(v81, v98, v97, v84);
  return (v88)(v99, v87);
}

uint64_t sub_25AE4B370(uint64_t a1)
{
  v2 = sub_25AEA1A28();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D660, &unk_25AEA4028);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_25AEA1A08();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D680, &qword_25AEA4078);
  sub_25AE4E590();
  sub_25AEA1618();
  v9 = sub_25AE47F60(&qword_27FA1D668, &qword_27FA1D660, &unk_25AEA4028);
  MEMORY[0x25F859550](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25AE4B528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = *(a1 + 80);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  sub_25AE4DE0C(a1, v11);
  sub_25AEA1EB8();
  LOBYTE(a1) = sub_25AE4A080();
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = (a1 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D680, &qword_25AEA4078);
  v10 = (a2 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = sub_25AE4E714;
  v10[2] = v8;
  return result;
}

uint64_t sub_25AE4B658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17[-v7 - 8];
  v9 = sub_25AEA2388();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_25AEA2368();
  sub_25AE4DE0C(a1, v17);
  v10 = sub_25AEA2358();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  v13 = *(a1 + 48);
  *(v11 + 64) = *(a1 + 32);
  *(v11 + 80) = v13;
  *(v11 + 96) = *(a1 + 64);
  *(v11 + 112) = *(a1 + 80);
  v14 = *(a1 + 16);
  *(v11 + 32) = *a1;
  *(v11 + 48) = v14;
  sub_25AE82E98(0, 0, v8, a3, v11);
}

uint64_t sub_25AE4B79C@<X0>(uint64_t a1@<X8>)
{
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA22788;
  result = sub_25AEA1BB8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_25AE4B870(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D678, &qword_25AEA4070);
  sub_25AEA1548();
  sub_25AE80F8C();
}

uint64_t sub_25AE4B8D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v4 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v5 = qword_27FA22788;
    v6 = qword_27FA22788;
  }

  else
  {
    v6 = [objc_opt_self() mainBundle];
    v5 = 0;
  }

  v7 = v5;
  v8 = sub_25AEA0CC8();
  v10 = v9;

  v35 = v8;
  v36 = v10;
  v11 = sub_25AEA2278();
  v13 = v12;
  v14 = v7;
  if (!v4)
  {
    v14 = [objc_opt_self() mainBundle];
  }

  v15 = v7;
  v16 = sub_25AEA0CC8();
  v18 = v17;

  v35 = v16;
  v36 = v18;
  v19 = sub_25AEA2278();
  v21 = v20;
  v22 = swift_allocObject();
  v23 = *(a1 + 48);
  *(v22 + 48) = *(a1 + 32);
  *(v22 + 64) = v23;
  *(v22 + 80) = *(a1 + 64);
  *(v22 + 96) = *(a1 + 80);
  v24 = *(a1 + 16);
  *(v22 + 16) = *a1;
  *(v22 + 32) = v24;
  v25 = swift_allocObject();
  v26 = *(a1 + 48);
  *(v25 + 48) = *(a1 + 32);
  *(v25 + 64) = v26;
  *(v25 + 80) = *(a1 + 64);
  *(v25 + 96) = *(a1 + 80);
  v27 = *(a1 + 16);
  *(v25 + 16) = *a1;
  *(v25 + 32) = v27;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  swift_storeEnumTagMultiPayload();
  v28 = type metadata accessor for ErrorView();
  v29 = (a2 + v28[5]);
  *v29 = v11;
  v29[1] = v13;
  v30 = (a2 + v28[6]);
  *v30 = v19;
  v30[1] = v21;
  *(a2 + v28[7]) = 0;
  v31 = (a2 + v28[8]);
  *v31 = sub_25AE46F24;
  v31[1] = v22;
  v32 = (a2 + v28[9]);
  *v32 = sub_25AE46F4C;
  v32[1] = v25;
  v33 = (a2 + v28[10]);
  *v33 = 0;
  v33[1] = 0;
  sub_25AE4DE0C(a1, &v35);
  return sub_25AE4DE0C(a1, &v35);
}

uint64_t sub_25AE4BBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[36] = a4;
  v5 = sub_25AEA0B88();
  v4[37] = v5;
  v6 = *(v5 - 8);
  v4[38] = v6;
  v7 = *(v6 + 64) + 15;
  v4[39] = swift_task_alloc();
  sub_25AEA2368();
  v4[40] = sub_25AEA2358();
  v9 = sub_25AEA2348();
  v4[41] = v9;
  v4[42] = v8;

  return MEMORY[0x2822009F8](sub_25AE4BCCC, v9, v8);
}

uint64_t sub_25AE4BCCC()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  *(v0 + 128) = *(v3 + 16);
  v5 = *(v3 + 32);
  *(v0 + 112) = *(v3 + 16);
  *(v0 + 272) = v5;
  *(v0 + 16) = *(v3 + 16);
  *(v0 + 32) = v5;
  sub_25AE4E7E0(v0 + 112, v0 + 160);
  sub_25AE4E83C(v0 + 272, v0 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D6B0, &unk_25AEA40C0);
  sub_25AEA1E78();
  v6 = *(v0 + 152);
  *(v0 + 176) = *(v0 + 144);
  *(v0 + 184) = v6;
  sub_25AEA0B48();
  sub_25AE4E8AC();
  v7 = sub_25AEA2558();
  v9 = v8;
  (*(v2 + 8))(v1, v4);

  *(v0 + 192) = v7;
  *(v0 + 40) = *(v0 + 128);
  *(v0 + 56) = v5;
  *(v0 + 200) = v9;
  sub_25AEA1E88();
  sub_25AE4E900(v0 + 112);
  sub_25AE41938(v0 + 272, &qword_27FA1D6B8, &qword_25AEA40E0);
  if (sub_25AE4A080())
  {
    *(v0 + 344) = *(*(v0 + 288) + 8);
    *(v0 + 64) = *(v0 + 128);
    *(v0 + 80) = v5;

    sub_25AEA1E78();
    v10 = *(v0 + 208);
    v11 = *(v0 + 216);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 224) = v10;
    *(v0 + 232) = v11;
    sub_25AEA1488();
    *(v0 + 88) = *(v0 + 128);
    *(v0 + 104) = v5;
    sub_25AEA1E78();
    v13 = *(v0 + 240);
    v12 = *(v0 + 248);
    *(v0 + 352) = v12;
    v14 = swift_task_alloc();
    *(v0 + 360) = v14;
    *v14 = v0;
    v14[1] = sub_25AE4BF74;

    return sub_25AE7B6EC(v13, v12);
  }

  else
  {
    v16 = *(v0 + 320);

    v17 = *(v0 + 312);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_25AE4BF74()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v9 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = v2[41];
    v5 = v2[42];
    v6 = sub_25AE4C100;
  }

  else
  {
    v7 = v2[44];

    v4 = v2[41];
    v5 = v2[42];
    v6 = sub_25AE4C090;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_25AE4C090()
{
  v1 = v0[43];
  v2 = v0[40];

  sub_25AE7AE1C();
  v3 = v0[39];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25AE4C100()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);
  v3 = *(v0 + 320);
  v4 = *(v0 + 288);

  *(v0 + 256) = *(v4 + 40);
  *(v0 + 376) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  sub_25AEA1E88();
  NRLogError(_:additionalMessage:)(v1, 0, 0);

  v5 = *(v0 + 312);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25AE4C1D0@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 10);
  v3 = *v1;
  v4 = v1[1];
  return sub_25AE4A1D0(a1);
}

uint64_t sub_25AE4C21C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D6F0, &qword_25AEA4208);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v27[-v6];
  *v7 = sub_25AEA1908();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D6F8, &qword_25AEA4210);
  sub_25AE4C51C(v2, &v7[*(v8 + 44)]);
  v9 = sub_25AEA1AC8();
  v10 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D700, &unk_25AEA4218) + 36)];
  *v10 = v9;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  v10[40] = 1;
  v11 = &v7[*(v4 + 36)];
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_25AEA1978();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  v14 = [objc_opt_self() tertiarySystemFillColor];
  v15 = sub_25AEA1D68();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D458, &qword_25AEA3CF0);
  *&v11[*(v16 + 52)] = v15;
  *&v11[*(v16 + 56)] = 256;
  v17 = sub_25AEA1FE8();
  v19 = v18;
  v20 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D708, &qword_25AEA4228) + 36)];
  *v20 = v17;
  v20[1] = v19;
  v21 = swift_allocObject();
  v22 = *(v2 + 48);
  *(v21 + 48) = *(v2 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(v2 + 64);
  *(v21 + 96) = *(v2 + 80);
  v23 = *(v2 + 16);
  *(v21 + 16) = *v2;
  *(v21 + 32) = v23;
  sub_25AE4EED8(v2, &v28);
  sub_25AE4EF10();
  sub_25AEA1C58();

  sub_25AE41938(v7, &qword_27FA1D6F0, &qword_25AEA4208);
  LOBYTE(v4) = sub_25AEA1AE8();
  v24 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D738, &qword_25AEA4238) + 36);
  *v24 = v4;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  *(v24 + 40) = 1;
  v28 = *(v2 + 48);
  v29 = *(v2 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D678, &qword_25AEA4070);
  sub_25AEA1538();
  LOBYTE(v4) = v27[15];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D740, &qword_25AEA4240);
  v26 = a1 + *(result + 36);
  *v26 = 0;
  *(v26 + 8) = v4;
  return result;
}

uint64_t sub_25AE4C51C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v169 = a2;
  v131 = sub_25AEA1788();
  v130 = *(v131 - 8);
  v3 = *(v130 + 64);
  MEMORY[0x28223BE20](v131);
  v129 = v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D748, &qword_25AEA4248);
  v121 = *(v123 - 8);
  v5 = *(v121 + 64);
  MEMORY[0x28223BE20](v123);
  v120 = v119 - v6;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D750, &qword_25AEA4250);
  v7 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v124 = v119 - v8;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D758, &qword_25AEA4258);
  v127 = *(v128 - 8);
  v9 = *(v127 + 64);
  MEMORY[0x28223BE20](v128);
  v125 = v119 - v10;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D760, &qword_25AEA4260);
  v166 = *(v167 - 8);
  v11 = *(v166 + 64);
  MEMORY[0x28223BE20](v167);
  v122 = v119 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D768, &qword_25AEA4268);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v168 = v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v165 = v119 - v17;
  v161 = sub_25AEA1728();
  v160 = *(v161 - 8);
  v18 = *(v160 + 64);
  MEMORY[0x28223BE20](v161);
  v159 = v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D770, &qword_25AEA4270);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v158 = v119 - v22;
  v157 = sub_25AEA1608();
  v156 = *(v157 - 8);
  v23 = *(v156 + 64);
  MEMORY[0x28223BE20](v157);
  v155 = v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_25AEA19B8();
  v151 = *(v149 - 8);
  v25 = *(v151 + 64);
  MEMORY[0x28223BE20](v149);
  v139 = v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D778, &qword_25AEA4278);
  v136 = *(v27 - 8);
  v28 = *(v136 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = v119 - v29;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D780, &qword_25AEA4280);
  v141 = *(v140 - 8);
  v31 = *(v141 + 64);
  MEMORY[0x28223BE20](v140);
  v132 = v119 - v32;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D788, &qword_25AEA4288);
  v143 = *(v142 - 8);
  v33 = *(v143 + 64);
  MEMORY[0x28223BE20](v142);
  v133 = v119 - v34;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D790, &qword_25AEA4290);
  v146 = *(v145 - 8);
  v35 = *(v146 + 64);
  MEMORY[0x28223BE20](v145);
  v134 = v119 - v36;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D798, &qword_25AEA4298);
  v148 = *(v147 - 8);
  v37 = *(v148 + 64);
  MEMORY[0x28223BE20](v147);
  v135 = v119 - v38;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D7A0, &qword_25AEA42A0);
  v154 = *(v152 - 8);
  v39 = *(v154 + 64);
  MEMORY[0x28223BE20](v152);
  v137 = v119 - v40;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D7A8, &qword_25AEA42A8);
  v41 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v144 = v119 - v42;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D7B0, &qword_25AEA42B0);
  v163 = *(v164 - 8);
  v43 = *(v163 + 64);
  v44 = MEMORY[0x28223BE20](v164);
  v162 = v119 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v138 = v119 - v46;
  v47 = *a1;
  v48 = *(a1 + 8);
  v49 = *(a1 + 32);
  v173 = *(a1 + 16);
  v174 = v49;
  v50 = *(a1 + 32);
  v170 = *(a1 + 16);
  v171 = v50;

  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D7B8, &qword_25AEA42B8);
  sub_25AEA1F28();
  *&v170 = v47;
  *(&v170 + 1) = v48;
  v119[1] = sub_25AE4E8AC();
  sub_25AEA2048();
  v170 = *(a1 + 48);
  LOBYTE(v171) = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D678, &qword_25AEA4070);
  sub_25AEA1558();
  v51 = sub_25AE47F60(&qword_27FA1D7C0, &qword_27FA1D778, &qword_25AEA4278);
  v52 = v132;
  sub_25AEA1D08();

  (*(v136 + 8))(v30, v27);
  v53 = v139;
  sub_25AEA19A8();
  *&v170 = v27;
  *(&v170 + 1) = v51;
  v54 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = sub_25AE4F5B8(&qword_27FA1D7C8, MEMORY[0x277CDDF20]);
  v57 = v133;
  v58 = v53;
  v59 = v140;
  v60 = v149;
  sub_25AEA1C78();
  (*(v151 + 8))(v58, v60);
  (*(v141 + 8))(v52, v59);
  *&v170 = v59;
  *(&v170 + 1) = v60;
  *&v171 = OpaqueTypeConformance2;
  *(&v171 + 1) = v56;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v134;
  v63 = v142;
  MEMORY[0x25F8597D0](1, v142, v61);
  (*(v143 + 8))(v57, v63);
  v64 = v155;
  sub_25AEA15F8();
  *&v170 = v63;
  *(&v170 + 1) = v61;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v135;
  v67 = v145;
  sub_25AEA1C38();
  (*(v156 + 8))(v64, v157);
  (*(v146 + 8))(v62, v67);
  *&v170 = v67;
  *(&v170 + 1) = v65;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v137;
  v70 = v147;
  sub_25AEA1C48();
  v71 = v70;
  (*(v148 + 8))(v66, v70);
  v72 = v158;
  sub_25AEA1A78();
  v73 = sub_25AEA1A88();
  (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
  *&v170 = v71;
  *(&v170 + 1) = v68;
  swift_getOpaqueTypeConformance2();
  v74 = v144;
  v75 = v152;
  sub_25AEA1CD8();
  sub_25AE41938(v72, &qword_27FA1D770, &qword_25AEA4270);
  (*(v154 + 8))(v69, v75);
  KeyPath = swift_getKeyPath();
  v77 = v74 + *(v150 + 36);
  *v77 = KeyPath;
  *(v77 + 8) = 0;
  v78 = swift_allocObject();
  v79 = *(a1 + 48);
  *(v78 + 48) = *(a1 + 32);
  *(v78 + 64) = v79;
  *(v78 + 80) = *(a1 + 64);
  *(v78 + 96) = *(a1 + 80);
  v80 = *(a1 + 16);
  *(v78 + 16) = *a1;
  *(v78 + 32) = v80;
  sub_25AE4EED8(a1, &v170);
  v81 = v159;
  sub_25AEA1718();
  sub_25AE4F0FC();
  v82 = v138;
  sub_25AEA1D48();

  (*(v160 + 8))(v81, v161);
  sub_25AE41938(v74, &qword_27FA1D7A8, &qword_25AEA42A8);
  v170 = v173;
  v171 = v174;
  MEMORY[0x25F859A10](v172, v153);
  v84 = v172[0];
  v83 = v172[1];

  v85 = HIBYTE(v83) & 0xF;
  if ((v83 & 0x2000000000000000) == 0)
  {
    v85 = v84 & 0xFFFFFFFFFFFFLL;
  }

  if (v85)
  {
    v86 = swift_allocObject();
    v87 = *(a1 + 48);
    *(v86 + 48) = *(a1 + 32);
    *(v86 + 64) = v87;
    *(v86 + 80) = *(a1 + 64);
    *(v86 + 96) = *(a1 + 80);
    v88 = *(a1 + 16);
    *(v86 + 16) = *a1;
    *(v86 + 32) = v88;
    sub_25AE4EED8(a1, &v170);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D7E8, &qword_25AEA42F8);
    sub_25AE4F418();
    v89 = v120;
    sub_25AEA1EB8();
    if (qword_27FA1D250 != -1)
    {
      swift_once();
    }

    v90 = qword_27FA22788;
    if (qword_27FA22788)
    {
      v91 = qword_27FA22788;
    }

    else
    {
      v91 = [objc_opt_self() mainBundle];
      v90 = 0;
    }

    v95 = v90;
    v96 = sub_25AEA0CC8();
    v98 = v97;

    *&v170 = v96;
    *(&v170 + 1) = v98;
    *&v170 = sub_25AEA2278();
    *(&v170 + 1) = v99;
    sub_25AE47F60(&qword_27FA1D808, &qword_27FA1D748, &qword_25AEA4248);
    v100 = v124;
    v101 = v123;
    sub_25AEA1CA8();

    (*(v121 + 8))(v89, v101);
    v102 = v129;
    sub_25AEA1778();
    v103 = sub_25AE4F4D0();
    v104 = sub_25AE4F5B8(&qword_27FA1D818, MEMORY[0x277CDDB18]);
    v105 = v125;
    v106 = v126;
    v107 = v131;
    sub_25AEA1C18();
    (*(v130 + 8))(v102, v107);
    sub_25AE41938(v100, &qword_27FA1D750, &qword_25AEA4250);
    *&v170 = v106;
    *(&v170 + 1) = v107;
    *&v171 = v103;
    *(&v171 + 1) = v104;
    swift_getOpaqueTypeConformance2();
    v108 = v122;
    v109 = v128;
    sub_25AEA1D58();
    (*(v127 + 8))(v105, v109);
    v93 = v166;
    v94 = v165;
    v92 = v167;
    (*(v166 + 32))(v165, v108, v167);
    v54 = 0;
  }

  else
  {
    v92 = v167;
    v93 = v166;
    v94 = v165;
  }

  (*(v93 + 56))(v94, v54, 1, v92);
  v110 = v163;
  v111 = *(v163 + 16);
  v112 = v162;
  v113 = v164;
  v111(v162, v82, v164);
  v114 = v168;
  sub_25AE4F600(v94, v168);
  v115 = v169;
  v111(v169, v112, v113);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D820, &qword_25AEA4308);
  sub_25AE4F600(v114, &v115[*(v116 + 48)]);
  sub_25AE41938(v94, &qword_27FA1D768, &qword_25AEA4268);
  v117 = *(v110 + 8);
  v117(v82, v113);
  sub_25AE41938(v114, &qword_27FA1D768, &qword_25AEA4268);
  return (v117)(v112, v113);
}

uint64_t sub_25AE4D9B0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v5 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D7B8, &qword_25AEA42B8);
  sub_25AEA1F08();
  v4 = *(a1 + 48);
  LOBYTE(v5) = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D678, &qword_25AEA4070);
  return sub_25AEA1548();
}

uint64_t sub_25AE4DA48@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25AEA1E08();
  v3 = sub_25AEA1DE8();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_25AE4DAAC@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 10);
  v3 = *v1;
  v4 = v1[1];
  return sub_25AE4C21C(a1);
}

uint64_t sub_25AE4DAF8()
{
  v0 = sub_25AEA0B88();
  __swift_allocate_value_buffer(v0, qword_27FA1D608);
  __swift_project_value_buffer(v0, qword_27FA1D608);
  sub_25AEA0B68();
  return sub_25AEA0B58();
}

uint64_t sub_25AE4DB58(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = 0;
    v20 = a2 & 0xFFFFFFFFFFFFFFLL;
    v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_25AEA2678();
        v9 = v8;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v19[0] = a1;
          v19[1] = v20;
          v7 = v19 + v5;
        }

        else
        {
          v6 = v18;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v6 = sub_25AEA26E8();
          }

          v7 = (v6 + v5);
        }

        v10 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v13 = (__clz(v10 ^ 0xFF) - 24);
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v15 = ((v10 & 0xF) << 12) | ((v7[1] & 0x3F) << 6) | v7[2] & 0x3Fu;
            v9 = 3;
          }

          else
          {
            v16 = ((v10 & 0xF) << 18) | ((v7[1] & 0x3F) << 12) | ((v7[2] & 0x3F) << 6) | v7[3] & 0x3Fu;
            v9 = 4;
          }

          goto LABEL_15;
        }

        if (v13 == 1)
        {
LABEL_14:
          v9 = 1;
        }

        else
        {
          v14 = v7[1] & 0x3F | ((v10 & 0x1F) << 6);
          v9 = 2;
        }
      }

LABEL_15:
      if (qword_27FA1D228 != -1)
      {
        swift_once();
      }

      v11 = sub_25AEA0B88();
      __swift_project_value_buffer(v11, qword_27FA1D608);
      v12 = sub_25AEA0B78();
      if ((v12 & 1) == 0)
      {
        v5 += v9;
        if (v5 < v2)
        {
          continue;
        }
      }

      return v12 & 1;
    }
  }

  v12 = 0;
  return v12 & 1;
}

unint64_t sub_25AE4DD40()
{
  result = qword_27FA1D638;
  if (!qword_27FA1D638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D630, &qword_25AEA4010);
    sub_25AE47F60(&qword_27FA1D640, &qword_27FA1D648, &qword_25AEA4018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D638);
  }

  return result;
}

unint64_t sub_25AE4DE4C()
{
  result = qword_27FA1D670;
  if (!qword_27FA1D670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D628, &qword_25AEA3FF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D620, &qword_25AEA3FF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D650, &qword_25AEA4020);
    sub_25AE47F60(&qword_27FA1D658, &qword_27FA1D620, &qword_25AEA3FF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D660, &unk_25AEA4028);
    sub_25AE47F60(&qword_27FA1D668, &qword_27FA1D660, &unk_25AEA4028);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D670);
  }

  return result;
}

uint64_t sub_25AE4DFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_25AEA28B8();
  sub_25AEA21F8();
  v7 = sub_25AEA28D8();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_25AEA2828() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_25AE4E0DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_25AEA0EB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_25AE4F5B8(&qword_27FA1D2F8, MEMORY[0x277CC9788]), v9 = sub_25AEA2148(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_25AE4F5B8(&qword_27FA1E220, MEMORY[0x277CC9788]);
      v17 = sub_25AEA2168();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_25AE4E2F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AEA18B8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AE4E364@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AEA17D8();
  *a1 = result;
  return result;
}

uint64_t sub_25AE4E390(uint64_t *a1)
{
  v1 = *a1;

  return sub_25AEA17E8();
}

uint64_t sub_25AE4E3BC()
{
  sub_25AE4EB94();

  sub_25AEA2428();
  v1 = sub_25AEA2238();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    do
    {
      if (sub_25AE4DB58(v3, v4))
      {
        MEMORY[0x25F859D30](v3, v4);
      }

      v3 = sub_25AEA2238();
      v4 = v5;
    }

    while (v5);
  }

  sub_25AE4E8AC();
  sub_25AEA2568();

  v7 = *(v0 + 16);
  v8 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D6B0, &unk_25AEA40C0);
  return sub_25AEA1E88();
}

unint64_t sub_25AE4E590()
{
  result = qword_27FA1D688;
  if (!qword_27FA1D688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D680, &qword_25AEA4078);
    sub_25AE47F60(&qword_27FA1D690, &qword_27FA1D698, &qword_25AEA4080);
    sub_25AE47F60(&qword_27FA1D6A0, &qword_27FA1D6A8, &qword_25AEA4088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D688);
  }

  return result;
}

uint64_t sub_25AE4E6AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AEA18B8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AE4E730(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25AE4F874;

  return sub_25AE4BBD8(a1, v4, v5, v1 + 32);
}

uint64_t sub_25AE4E83C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D6B8, &qword_25AEA40E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25AE4E8AC()
{
  result = qword_27FA1D6C0;
  if (!qword_27FA1D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D6C0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_25AE4EA18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AE4EA50(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], *a2, a2[1]);
}

unint64_t sub_25AE4EA88()
{
  result = qword_27FA1D6D8;
  if (!qword_27FA1D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D6D8);
  }

  return result;
}

uint64_t sub_25AE4EB0C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_25AE47B08(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_25AE4EB50(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_25AE479D0(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_25AE4EB94()
{
  result = qword_27FA1D6E8;
  if (!qword_27FA1D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D6E8);
  }

  return result;
}

uint64_t objectdestroy_22Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_25AE4EC48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25AE47200;

  return sub_25AE4BBD8(a1, v4, v5, v1 + 32);
}

uint64_t sub_25AE4ECF8(uint64_t a1, int a2)
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

uint64_t sub_25AE4ED40(uint64_t result, int a2, int a3)
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

uint64_t sub_25AE4EDA4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D628, &qword_25AEA3FF8);
  type metadata accessor for ErrorView();
  sub_25AE4DE4C();
  sub_25AE4F5B8(&qword_27FA1D418, type metadata accessor for ErrorView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25AE4EE78()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D678, &qword_25AEA4070);
  return sub_25AEA1548();
}

unint64_t sub_25AE4EF10()
{
  result = qword_27FA1D710;
  if (!qword_27FA1D710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D6F0, &qword_25AEA4208);
    sub_25AE4EFC8();
    sub_25AE47F60(&qword_27FA1D730, &qword_27FA1D708, &qword_25AEA4228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D710);
  }

  return result;
}

unint64_t sub_25AE4EFC8()
{
  result = qword_27FA1D718;
  if (!qword_27FA1D718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D700, &unk_25AEA4218);
    sub_25AE47F60(&qword_27FA1D720, &qword_27FA1D728, &qword_25AEA4230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D718);
  }

  return result;
}

uint64_t sub_25AE4F080@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AEA1818();
  *a1 = result;
  return result;
}

uint64_t sub_25AE4F0D4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  return v1();
}

unint64_t sub_25AE4F0FC()
{
  result = qword_27FA1D7D0;
  if (!qword_27FA1D7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D7A8, &qword_25AEA42A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D7A0, &qword_25AEA42A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D798, &qword_25AEA4298);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D790, &qword_25AEA4290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D788, &qword_25AEA4288);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D780, &qword_25AEA4280);
    sub_25AEA19B8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D778, &qword_25AEA4278);
    sub_25AE47F60(&qword_27FA1D7C0, &qword_27FA1D778, &qword_25AEA4278);
    swift_getOpaqueTypeConformance2();
    sub_25AE4F5B8(&qword_27FA1D7C8, MEMORY[0x277CDDF20]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25AE47F60(&qword_27FA1D7D8, &qword_27FA1D7E0, &qword_25AEA42F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D7D0);
  }

  return result;
}

uint64_t objectdestroy_55Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

unint64_t sub_25AE4F418()
{
  result = qword_27FA1D7F0;
  if (!qword_27FA1D7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D7E8, &qword_25AEA42F8);
    sub_25AE47F60(&qword_27FA1D7F8, &qword_27FA1D800, &qword_25AEA4300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D7F0);
  }

  return result;
}

unint64_t sub_25AE4F4D0()
{
  result = qword_27FA1D810;
  if (!qword_27FA1D810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D750, &qword_25AEA4250);
    sub_25AE47F60(&qword_27FA1D808, &qword_27FA1D748, &qword_25AEA4248);
    sub_25AE4F5B8(&qword_27FA1D510, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D810);
  }

  return result;
}

uint64_t sub_25AE4F5B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25AE4F600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D768, &qword_25AEA4268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE4F670@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AEA17D8();
  *a1 = result;
  return result;
}

uint64_t sub_25AE4F69C(uint64_t *a1)
{
  v1 = *a1;

  return sub_25AEA17E8();
}

unint64_t sub_25AE4F6CC()
{
  result = qword_27FA1D828;
  if (!qword_27FA1D828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D740, &qword_25AEA4240);
    sub_25AE4F784();
    sub_25AE47F60(&qword_27FA1D838, &unk_27FA1D840, &qword_25AEA4340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D828);
  }

  return result;
}

unint64_t sub_25AE4F784()
{
  result = qword_27FA1D830;
  if (!qword_27FA1D830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D738, &qword_25AEA4238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D6F0, &qword_25AEA4208);
    sub_25AE4EF10();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D830);
  }

  return result;
}

uint64_t sub_25AE4F87C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  return v1;
}

BOOL sub_25AE4F8F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 3;
  v5 = v3 == 4;
  v7 = v2 == v3 && (v3 - 5) < 0xFFFFFFFE;
  if (v2 == 4)
  {
    v7 = v5;
  }

  if (v2 == 3)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

id sub_25AE4F92C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D498, &unk_25AEA3D20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1D960, &unk_25AEA44A0);
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D4A0, &qword_25AEA3D30);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = OBJC_IVAR____TtC15NameRecognition12AudioManager__state;
  v36 = 0;
  sub_25AEA1438();
  (*(v12 + 32))(&v1[v16], v15, v11);
  *&v1[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioPlayer] = 0;
  *&v1[OBJC_IVAR____TtC15NameRecognition12AudioManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v17 = [objc_allocWithZone(MEMORY[0x277CB8388]) init];
  v18 = OBJC_IVAR____TtC15NameRecognition12AudioManager_audioEngine;
  *&v1[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioEngine] = v17;
  if (AXDeviceSupportsAudioSessionForIndependentRoute())
  {
    v19 = [objc_allocWithZone(MEMORY[0x277CB83F8]) initSessionForIndependentInputRoute];
    *&v1[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioSession] = v19;
    [*&v1[v18] setAudioSession_];
  }

  else
  {
    *&v1[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioSession] = [objc_opt_self() sharedInstance];
  }

  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v20 = sub_25AEA12C8();
  __swift_project_value_buffer(v20, qword_27FA1DF50);
  v21 = sub_25AEA12A8();
  v22 = sub_25AEA24A8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_25AE3C000, v21, v22, "Created audio session", v23, 2u);
    MEMORY[0x25F85AB80](v23, -1, -1);
  }

  v24 = [*&v1[v18] inputNode];
  *&v1[OBJC_IVAR____TtC15NameRecognition12AudioManager_inputNode] = v24;
  if (MEMORY[0x277D84F90] >> 62 && sub_25AEA25B8())
  {
    v25 = sub_25AE9F06C(MEMORY[0x277D84F90]);
  }

  else
  {
    v25 = MEMORY[0x277D84FA0];
  }

  *&v1[OBJC_IVAR____TtC15NameRecognition12AudioManager_cancellables] = v25;
  v26 = type metadata accessor for AudioManager();
  v37.receiver = v1;
  v37.super_class = v26;
  v27 = objc_msgSendSuper2(&v37, sel_init);
  sub_25AE51384();
  v28 = [objc_opt_self() defaultCenter];
  v29 = *MEMORY[0x277CB8068];
  v30 = [objc_opt_self() sharedInstance];
  [v28 addObserver:v27 selector:sel_handleAudioSessionInterruptionWithNotification_ name:v29 object:v30];

  swift_beginAccess();
  sub_25AEA1448();
  swift_endAccess();
  sub_25AE47F60(&unk_27FA1D970, &qword_27FA1D498, &unk_25AEA3D20);
  sub_25AE47690();
  sub_25AEA14A8();
  (*(v3 + 8))(v6, v2);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_25AE47F60(&qword_27FA1D980, &unk_27FA1D960, &unk_25AEA44A0);
  v31 = v35;
  sub_25AEA14B8();

  (*(v34 + 8))(v10, v31);
  swift_beginAccess();
  sub_25AEA13F8();
  swift_endAccess();

  return v27;
}

void sub_25AE4FF38(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong + OBJC_IVAR____TtC15NameRecognition12AudioManager_delegate;
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    v6 = *(v3 + 8);

    if (v5)
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 16))(v1, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }
}

id sub_25AE50008()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x277CB8068];
  v3 = [objc_opt_self() sharedInstance];
  [v1 removeObserver:v0 name:v2 object:v3];

  v5.receiver = v0;
  v5.super_class = type metadata accessor for AudioManager();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t type metadata accessor for AudioManager()
{
  result = qword_27FA1D888;
  if (!qword_27FA1D888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25AE502C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if (v4 == 3)
  {
    if (qword_27FA1D248 != -1)
    {
      swift_once();
    }

    v0 = sub_25AEA12C8();
    __swift_project_value_buffer(v0, qword_27FA1DF50);
    v1 = sub_25AEA12A8();
    v2 = sub_25AEA24A8();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_25AE3C000, v1, v2, "Name Recognition attempted to start listening but it is already actively listening", v3, 2u);
      MEMORY[0x25F85AB80](v3, -1, -1);
    }
  }

  else
  {
    sub_25AE5229C();
  }
}

void sub_25AE504C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if (v4 == 3)
  {
    sub_25AE529EC();
  }

  else
  {
    if (qword_27FA1D248 != -1)
    {
      swift_once();
    }

    v0 = sub_25AEA12C8();
    __swift_project_value_buffer(v0, qword_27FA1DF50);
    v1 = sub_25AEA12A8();
    v2 = sub_25AEA24A8();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_25AE3C000, v1, v2, "Name Recognition attempted to stop listening but it is not actively listening", v3, 2u);
      MEMORY[0x25F85AB80](v3, -1, -1);
    }
  }
}

uint64_t sub_25AE506C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if (v3 == 3)
  {
    [*&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioEngine] stop];
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v0;
    return sub_25AEA1488();
  }

  return result;
}

void sub_25AE50794()
{
  v20 = *MEMORY[0x277D85DE8];
  if ([*&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioSession] isActive])
  {
    v1 = *&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioEngine];
    v18 = 0;
    v2 = [v1 startAndReturnError_];
    v3 = v18;
    if (v2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v18) = 3;
      v4 = v3;
      v5 = v0;
      sub_25AEA1488();
    }

    else
    {
      v10 = v18;
      v11 = sub_25AEA0D08();

      swift_willThrow();
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_25AEA2688();
      MEMORY[0x25F859D40](0xD00000000000001CLL, 0x800000025AEA8830);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
      sub_25AEA2738();
      v12 = v18;
      v13 = v19;
      sub_25AE426AC();
      v14 = swift_allocError();
      *v15 = 0;
      *(v15 + 8) = v12;
      *(v15 + 16) = v13;
      NRLogError(_:additionalMessage:)(v14, 0, 0);
    }

    v16 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (qword_27FA1D248 != -1)
    {
      swift_once();
    }

    v6 = sub_25AEA12C8();
    __swift_project_value_buffer(v6, qword_27FA1DF50);
    oslog = sub_25AEA12A8();
    v7 = sub_25AEA24A8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_25AE3C000, oslog, v7, "Session is not active, ignoring resume call", v8, 2u);
      MEMORY[0x25F85AB80](v8, -1, -1);
    }

    v9 = *MEMORY[0x277D85DE8];
  }
}

void sub_25AE50A44(void *a1, void *a2, uint64_t a3)
{
  v58 = a2;
  v60 = a1;
  v64 = *MEMORY[0x277D85DE8];
  v5 = sub_25AEA0D38();
  v59 = *(v5 - 8);
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1D950, &unk_25AEA4490);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v53 - v11;
  v13 = sub_25AEA0DB8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v53 - v20;
  MEMORY[0x28223BE20](v19);
  v61 = &v53 - v22;
  v23 = *&v3[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioSession];
  v62 = 0;
  v24 = [v23 setActive:0 error:&v62];
  v25 = v62;
  if (!v24)
  {
    goto LABEL_6;
  }

  v57 = v14;
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 sharedInstance];
  v29 = *MEMORY[0x277CB8030];
  v30 = *MEMORY[0x277CB80A8];
  v62 = 0;
  LODWORD(v26) = [v28 setCategory:v29 mode:v30 options:0 error:&v62];

  v25 = v62;
  if (v26)
  {
    v56 = v13;
    v54 = v3;
    v31 = qword_27FA1D270;
    v32 = v62;
    if (v31 != -1)
    {
      swift_once();
    }

    v33 = qword_27FA1E0F8;
    v34 = qword_27FA1E100;
    v55 = qword_27FA1E0F8;
    v62 = v58;
    v63 = a3;

    MEMORY[0x25F859D40](1986098990, 0xE400000000000000);
    v36 = v62;
    v35 = v63;
    v62 = v33;
    v63 = v34;

    MEMORY[0x25F859D40](v36, v35);

    v38 = v56;
    v37 = v57;
    (*(v57 + 56))(v12, 1, 1, v56);
    (*(v59 + 104))(v8, *MEMORY[0x277CC91D8], v5);

    sub_25AEA0DA8();
    v39 = v61;
    sub_25AE6991C(v60, v21, v61);
    v43 = v21;
    v44 = *(v37 + 8);
    v44(v43, v38);

    (*(v37 + 16))(v18, v39, v38);
    v45 = objc_allocWithZone(MEMORY[0x277CB83D0]);
    v46 = sub_25AE52EB8(v18);
    v47 = v44;
    v48 = OBJC_IVAR____TtC15NameRecognition12AudioManager_audioPlayer;
    v49 = v54;
    v50 = *&v54[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioPlayer];
    *&v54[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioPlayer] = v46;
    v51 = v46;

    if (v51)
    {
      [v51 setDelegate_];
    }

    [*&v49[v48] prepareToPlay];
    [*&v49[v48] play];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v62) = 4;
    v52 = v49;
    sub_25AEA1488();
    v47(v39, v56);
  }

  else
  {
LABEL_6:
    v40 = v25;
    v41 = sub_25AEA0D08();

    swift_willThrow();
    NRLogError(_:additionalMessage:)(v41, 0, 0);
  }

  v42 = *MEMORY[0x277D85DE8];
}

void sub_25AE5109C()
{
  v21 = *MEMORY[0x277D85DE8];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if (v19 == 4)
  {
    v1 = *&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioPlayer];
    if (v1)
    {
      v2 = v1;
      if ([v2 isPlaying])
      {
        [v2 pause];
      }
    }

    v3 = *&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioSession];
    v19 = 0;
    v4 = [v3 setActive:0 error:&v19];
    v5 = v19;
    if (v4)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v19) = 1;
      v6 = v5;
      v7 = v0;
      sub_25AEA1488();
      if (qword_27FA1D248 != -1)
      {
        swift_once();
      }

      v8 = sub_25AEA12C8();
      __swift_project_value_buffer(v8, qword_27FA1DF50);
      v9 = sub_25AEA12A8();
      v10 = sub_25AEA24A8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_25AE3C000, v9, v10, "Name Recognition playable audio stopped successfully", v11, 2u);
        MEMORY[0x25F85AB80](v11, -1, -1);
      }
    }

    else
    {
      v12 = v19;
      v13 = sub_25AEA0D08();

      swift_willThrow();
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_25AEA2688();
      MEMORY[0x25F859D40](0xD000000000000018, 0x800000025AEA87D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
      sub_25AEA2738();
      v14 = v19;
      v15 = v20;
      sub_25AE426AC();
      v16 = swift_allocError();
      *v17 = 0;
      *(v17 + 8) = v14;
      *(v17 + 16) = v15;
      NRLogError(_:additionalMessage:)(v16, 0, 0);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_25AE51384()
{
  v90 = *MEMORY[0x277D85DE8];
  v1 = 0xD00000000000002ALL;
  v2 = AXDeviceSupportsAudioSessionForIndependentRoute();
  v3 = MEMORY[0x277CB8038];
  if (!v2)
  {
    v3 = MEMORY[0x277CB8028];
  }

  v4 = *v3;
  v5 = *(v0 + OBJC_IVAR____TtC15NameRecognition12AudioManager_audioSession);
  v6 = *MEMORY[0x277CB80A8];
  v88 = 0;
  v7 = 0x27FA1D000uLL;
  if ([v5 setCategory:v4 mode:v6 options:41 error:&v88])
  {
    v8 = qword_27FA1D248;
    v9 = v88;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_25AEA12C8();
    __swift_project_value_buffer(v10, qword_27FA1DF50);
    v11 = sub_25AEA12A8();
    v12 = sub_25AEA24A8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = v5;
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_25AE3C000, v11, v12, "Configuring audio session", v14, 2u);
      v15 = v14;
      v5 = v13;
      MEMORY[0x25F85AB80](v15, -1, -1);
    }
  }

  else
  {
    v16 = v88;
    v17 = v5;
    v18 = sub_25AEA0D08();

    swift_willThrow();
    v88 = 0;
    v89 = 0xE000000000000000;
    sub_25AEA2688();
    MEMORY[0x25F859D40](0xD00000000000003ALL, 0x800000025AEA8630);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
    sub_25AEA2738();
    v19 = v88;
    v20 = v89;
    sub_25AE426AC();
    v21 = swift_allocError();
    *v22 = 0;
    *(v22 + 8) = v19;
    *(v22 + 16) = v20;
    NRLogError(_:additionalMessage:)(v21, 0, 0);

    v23 = v18;
    v5 = v17;
  }

  v24 = [v5 availableInputs];
  if (!v24)
  {
    goto LABEL_59;
  }

  v25 = v24;
  sub_25AE4167C(0, &qword_27FA1D940, 0x277CB8408);
  v26 = sub_25AEA22F8();

  if (v26 >> 62)
  {
    goto LABEL_40;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_41:

    goto LABEL_59;
  }

LABEL_13:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x25F85A1C0](0, v26);
LABEL_16:
    v28 = v27;

    v29 = [v28 dataSources];
    if (!v29)
    {

      goto LABEL_59;
    }

    v26 = v29;
    v85 = v5;
    v86 = v28;
    sub_25AE4167C(0, &qword_27FA1D948, 0x277CB8400);
    v25 = sub_25AEA22F8();

    v88 = MEMORY[0x277D84F90];
    if (!(v25 >> 62))
    {
      v5 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_45;
      }

      goto LABEL_19;
    }

    goto LABEL_44;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v26 + 32);
    goto LABEL_16;
  }

  __break(1u);
LABEL_44:
  v5 = sub_25AEA25B8();
  if (v5)
  {
LABEL_19:
    v7 = 0;
    v1 = v25 & 0xFFFFFFFFFFFFFF8;
    v87 = *MEMORY[0x277CB8108];
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x25F85A1C0](v7, v25);
      }

      else
      {
        if (v7 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v30 = *(v25 + 8 * v7 + 32);
      }

      v31 = v30;
      v32 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        if (!sub_25AEA25B8())
        {
          goto LABEL_41;
        }

        goto LABEL_13;
      }

      v33 = [v30 orientation];
      if (v33)
      {
        v26 = v33;
        v34 = sub_25AEA21A8();
        v36 = v35;
        if (v34 == sub_25AEA21A8() && v36 == v37)
        {

LABEL_34:
          sub_25AEA26F8();
          v40 = *(v88 + 2);
          sub_25AEA2718();
          sub_25AEA2728();
          v26 = &v88;
          sub_25AEA2708();
          goto LABEL_21;
        }

        v39 = sub_25AEA2828();

        if (v39)
        {
          goto LABEL_34;
        }
      }

LABEL_21:
      ++v7;
      if (v32 == v5)
      {
        v41 = v88;
        v7 = 0x27FA1D000;
        v1 = 0xD00000000000002ALL;
        goto LABEL_46;
      }
    }
  }

LABEL_45:
  v41 = MEMORY[0x277D84F90];
LABEL_46:

  if ((v41 & 0x8000000000000000) != 0 || (v41 & 0x4000000000000000) != 0)
  {
    v42 = v86;
    if (!sub_25AEA25B8())
    {
      goto LABEL_57;
    }

LABEL_49:
    if ((v41 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x25F85A1C0](0, v41);
    }

    else
    {
      if (!*(v41 + 16))
      {
        __break(1u);
      }

      v43 = *(v41 + 32);
    }

    v44 = v43;

    v88 = 0;
    v5 = v85;
    v45 = [v85 setPreferredInput:v42 error:&v88];
    v46 = v88;
    if (!v45 || (v88 = 0, v47 = v46, v48 = [v85 setInputDataSource:v44 error:&v88], v46 = v88, !v48))
    {
      v50 = v46;
      v51 = sub_25AEA0D08();

      swift_willThrow();
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_25AEA2688();
      MEMORY[0x25F859D40](0xD00000000000002ALL, 0x800000025AEA87A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
      sub_25AEA2738();
      v52 = v88;
      v53 = v89;
      sub_25AE426AC();
      v54 = swift_allocError();
      *v55 = 0;
      *(v55 + 8) = v52;
      *(v55 + 16) = v53;
      NRLogError(_:additionalMessage:)(v54, 0, 0);

      goto LABEL_58;
    }

    v49 = v88;
  }

  else
  {
    v42 = v86;
    if (*(v41 + 16))
    {
      goto LABEL_49;
    }

LABEL_57:

LABEL_58:
    v5 = v85;
  }

LABEL_59:
  v56 = sub_25AEA2178();
  v57 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v88 = 0;
  v58 = [v5 setMXSessionProperty:v56 value:v57 error:&v88];

  if (v58)
  {
    v59 = v88;
  }

  else
  {
    v60 = v88;
    v61 = sub_25AEA0D08();

    swift_willThrow();
    v88 = 0;
    v89 = 0xE000000000000000;
    sub_25AEA2688();
    MEMORY[0x25F859D40](v1 + 57, 0x800000025AEA86A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
    sub_25AEA2738();
    v62 = v88;
    v63 = v89;
    sub_25AE426AC();
    v64 = swift_allocError();
    *v65 = 0;
    *(v65 + 8) = v62;
    *(v65 + 16) = v63;
    NRLogError(_:additionalMessage:)(v64, 0, 0);
  }

  v88 = 0;
  if ([v5 setAllowHapticsAndSystemSoundsDuringRecording:1 error:&v88])
  {
    v66 = v88;
  }

  else
  {
    v67 = v88;
    v68 = sub_25AEA0D08();

    swift_willThrow();
    v88 = 0;
    v89 = 0xE000000000000000;
    sub_25AEA2688();
    MEMORY[0x25F859D40](v1 + 22, 0x800000025AEA8710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
    sub_25AEA2738();
    v69 = v88;
    v70 = v89;
    sub_25AE426AC();
    v71 = swift_allocError();
    *v72 = 0;
    *(v72 + 8) = v69;
    *(v72 + 16) = v70;
    NRLogError(_:additionalMessage:)(v71, 0, 0);
  }

  v88 = 0;
  if ([v5 setPrefersNoInterruptionsFromSystemAlerts:1 error:&v88])
  {
    v73 = v88;
  }

  else
  {
    v74 = v88;
    v75 = sub_25AEA0D08();

    swift_willThrow();
    v88 = 0;
    v89 = 0xE000000000000000;
    sub_25AEA2688();
    MEMORY[0x25F859D40](v1 + 21, 0x800000025AEA8760);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
    sub_25AEA2738();
    v76 = v88;
    v77 = v89;
    sub_25AE426AC();
    v78 = swift_allocError();
    *v79 = 0;
    *(v79 + 8) = v76;
    *(v79 + 16) = v77;
    NRLogError(_:additionalMessage:)(v78, 0, 0);
  }

  if (*(v7 + 584) != -1)
  {
    swift_once();
  }

  v80 = sub_25AEA12C8();
  __swift_project_value_buffer(v80, qword_27FA1DF50);
  v81 = sub_25AEA12A8();
  v82 = sub_25AEA24A8();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_25AE3C000, v81, v82, "Audio session configured", v83, 2u);
    MEMORY[0x25F85AB80](v83, -1, -1);
  }

  v84 = *MEMORY[0x277D85DE8];
}

void sub_25AE51E84()
{
  v0 = sub_25AEA0BA8();
  if (v0)
  {
    v1 = v0;
    v2 = *MEMORY[0x277CB8080];
    v13 = sub_25AEA21A8();
    sub_25AEA2608();
    if (*(v1 + 16) && (v3 = sub_25AE6F6C8(v14), (v4 & 1) != 0))
    {
      sub_25AE418A4(*(v1 + 56) + 32 * v3, v15);
      sub_25AE41798(v14);

      if (swift_dynamicCast())
      {
        if (v13)
        {
          if (v13 == 1)
          {
            if (qword_27FA1D248 != -1)
            {
              swift_once();
            }

            v5 = sub_25AEA12C8();
            __swift_project_value_buffer(v5, qword_27FA1DF50);
            v6 = sub_25AEA12A8();
            v7 = sub_25AEA24A8();
            if (os_log_type_enabled(v6, v7))
            {
              v8 = swift_slowAlloc();
              *v8 = 0;
              _os_log_impl(&dword_25AE3C000, v6, v7, "Name Recognition - Stopped listening due to interruption", v8, 2u);
              MEMORY[0x25F85AB80](v8, -1, -1);
            }

            sub_25AE504C4();
          }
        }

        else
        {
          if (qword_27FA1D248 != -1)
          {
            swift_once();
          }

          v9 = sub_25AEA12C8();
          __swift_project_value_buffer(v9, qword_27FA1DF50);
          v10 = sub_25AEA12A8();
          v11 = sub_25AEA24A8();
          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            *v12 = 0;
            _os_log_impl(&dword_25AE3C000, v10, v11, "Name Recognition - Interruption ended. Started listening again.", v12, 2u);
            MEMORY[0x25F85AB80](v12, -1, -1);
          }

          sub_25AE502C8();
        }
      }
    }

    else
    {

      sub_25AE41798(v14);
    }
  }
}

void sub_25AE521D8()
{
  sub_25AE52BD0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_25AE5229C()
{
  v42 = *MEMORY[0x277D85DE8];
  v1 = *&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioSession];
  aBlock = 0;
  if ([v1 setActive:1 error:&aBlock])
  {
    v2 = *&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioEngine];
    v3 = aBlock;
    v4 = [v2 attachedNodes];
    sub_25AE4167C(0, &qword_27FA1D920, 0x277CB83B8);
    sub_25AE5357C();
    v5 = sub_25AEA23F8();

    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = sub_25AEA25B8();
    }

    else
    {
      v6 = *(v5 + 16);
    }

    if (v6 >= 1)
    {
      [*&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_inputNode] removeTapOnBus_];
    }

    v8 = OBJC_IVAR____TtC15NameRecognition12AudioManager_inputNode;
    v9 = [*&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_inputNode] inputFormatForBus_];
    [v9 sampleRate];
    if (v10 > 0.0 && [v9 channelCount])
    {
      v35 = v2;
      if (qword_27FA1D248 != -1)
      {
        swift_once();
      }

      v11 = sub_25AEA12C8();
      __swift_project_value_buffer(v11, qword_27FA1DF50);
      v12 = v9;
      v13 = sub_25AEA12A8();
      v14 = sub_25AEA24A8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134218240;
        [v12 sampleRate];
        *(v15 + 4) = v16;
        *(v15 + 12) = 1024;
        *(v15 + 14) = [v12 channelCount];

        _os_log_impl(&dword_25AE3C000, v13, v14, "Using audio format with sampleRate=%f, channelCount=%u", v15, 0x12u);
        MEMORY[0x25F85AB80](v15, -1, -1);
      }

      else
      {

        v13 = v12;
      }

      v22 = *&v0[v8];
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v12;
      v40 = sub_25AE53624;
      v41 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_25AE52968;
      v39 = &block_descriptor_35;
      v25 = _Block_copy(&aBlock);
      v9 = v12;
      v26 = v22;

      [v26 installTapOnBus:0 bufferSize:0x2000 format:v9 block:v25];
      _Block_release(v25);

      aBlock = 0;
      v27 = [v35 startAndReturnError_];
      v28 = aBlock;
      if (v27)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(aBlock) = 3;
        v29 = v28;
        v30 = v0;
        sub_25AEA1488();
        v31 = sub_25AEA12A8();
        v32 = sub_25AEA24A8();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_25AE3C000, v31, v32, "Name Recognition Audio Engine started listening successfully", v33, 2u);
          MEMORY[0x25F85AB80](v33, -1, -1);
        }

        goto LABEL_16;
      }

      v34 = aBlock;
      sub_25AEA0D08();
    }

    else
    {
      aBlock = 0;
      v37 = 0xE000000000000000;
      sub_25AEA2688();
      MEMORY[0x25F859D40](0xD000000000000021, 0x800000025AEA85A0);
      [v9 sampleRate];
      sub_25AEA23C8();
      MEMORY[0x25F859D40](0x656E6E616863202CLL, 0xEF3D746E756F436CLL);
      [v9 channelCount];
      v17 = sub_25AEA27F8();
      MEMORY[0x25F859D40](v17);

      v18 = aBlock;
      v19 = v37;
      sub_25AE426AC();
      swift_allocError();
      *v20 = 0;
      *(v20 + 8) = v18;
      *(v20 + 16) = v19;
    }

    swift_willThrow();
LABEL_16:

    goto LABEL_17;
  }

  v7 = aBlock;
  sub_25AEA0D08();

  swift_willThrow();
LABEL_17:
  v21 = *MEMORY[0x277D85DE8];
}

void sub_25AE5284C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_25AE649DC();
    v6 = &v4[OBJC_IVAR____TtC15NameRecognition12AudioManager_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 1);
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(v5, [a2 hostTime], ObjectType, v7);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_25AE52968(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

void sub_25AE529EC()
{
  v12[1] = *MEMORY[0x277D85DE8];
  [*&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_inputNode] removeTapOnBus_];
  [*&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioEngine] stop];
  v1 = *&v0[OBJC_IVAR____TtC15NameRecognition12AudioManager_audioSession];
  v12[0] = 0;
  v2 = [v1 setActive:0 error:v12];
  v3 = v12[0];
  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v12[0]) = 1;
    v4 = v3;
    v5 = v0;
    sub_25AEA1488();
    if (qword_27FA1D248 != -1)
    {
      swift_once();
    }

    v6 = sub_25AEA12C8();
    __swift_project_value_buffer(v6, qword_27FA1DF50);
    v7 = sub_25AEA12A8();
    v8 = sub_25AEA24A8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25AE3C000, v7, v8, "Name Recognition Audio Engine stopped successfully", v9, 2u);
      MEMORY[0x25F85AB80](v9, -1, -1);
    }
  }

  else
  {
    v10 = v12[0];
    sub_25AEA0D08();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_25AE52BD0()
{
  if (!qword_27FA1D898)
  {
    v0 = sub_25AEA1498();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA1D898);
    }
  }
}

uint64_t sub_25AE52C20@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudioManager();
  result = sub_25AEA1428();
  *a1 = result;
  return result;
}

void sub_25AE52C60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_25AE5109C();
  }
}

uint64_t getEnumTagSinglePayload for AudioEngineState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioEngineState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_25AE52E78(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_25AE52E8C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

id sub_25AE52EB8(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_25AEA0D78();
  v14[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_25AEA0DB8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_25AEA0D08();

    swift_willThrow();
    v11 = sub_25AEA0DB8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_25AE53004@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  *a2 = v5;
  return result;
}

uint64_t sub_25AE53084(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_25AEA1488();
}

uint64_t sub_25AE530F4(char a1)
{
  v2 = sub_25AEA20C8();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25AEA20E8();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25AEA2108();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  if (a1)
  {
    v28 = &v26 - v17;
    sub_25AE4167C(0, &qword_27FA1D900, 0x277D85C78);
    v29 = sub_25AEA24C8();
    sub_25AEA20F8();
    sub_25AEA2118();
    v18 = *(v11 + 8);
    v30 = v11 + 8;
    v31 = v18;
    v18(v15, v10);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_25AE534FC;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25AE93330;
    aBlock[3] = &block_descriptor_2;
    v20 = _Block_copy(aBlock);

    sub_25AEA20D8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25AE5351C();
    v21 = v32;
    v27 = v10;
    v22 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D910, &qword_25AEA4DA0);
    v23 = v33;
    v26 = v6;
    sub_25AE47F60(&qword_27FA1D918, &qword_27FA1D910, &qword_25AEA4DA0);
    sub_25AEA2578();
    v25 = v28;
    v24 = v29;
    MEMORY[0x25F859FD0](v28, v22, v5, v20);
    _Block_release(v20);

    (*(v23 + 8))(v5, v2);
    (*(v21 + 8))(v22, v26);
    return v31(v25, v27);
  }

  return result;
}

uint64_t sub_25AE534C4()
{
  MEMORY[0x25F85AC20](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25AE5351C()
{
  result = qword_27FA1D908;
  if (!qword_27FA1D908)
  {
    sub_25AEA20C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D908);
  }

  return result;
}

unint64_t sub_25AE5357C()
{
  result = qword_27FA1D928;
  if (!qword_27FA1D928)
  {
    sub_25AE4167C(255, &qword_27FA1D920, 0x277CB83B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D928);
  }

  return result;
}

uint64_t sub_25AE535E4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25AE53624(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_25AE5284C(a1, a2);
}

uint64_t getEnumTagSinglePayload for AudioEngineState.IdleReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AudioEngineState.IdleReason(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25AE537B0()
{
  result = qword_27FA1D988;
  if (!qword_27FA1D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D988);
  }

  return result;
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

uint64_t sub_25AE5383C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_25AE53884(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_25AE53900@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_25AEA1288();
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25AEA1278();
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v22);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D698, &qword_25AEA4080);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = swift_allocObject();
  v14 = *(v2 + 48);
  *(v13 + 48) = *(v2 + 32);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(v2 + 64);
  v15 = *(v2 + 16);
  *(v13 + 16) = *v2;
  *(v13 + 32) = v15;
  v26 = v2;
  sub_25AE47030(v2, v27);
  sub_25AEA1EB8();
  if (*(v2 + 48))
  {
    sub_25AEA1598();
    v16 = v23;
    v17 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v18 = swift_allocObject();
    (*(v16 + 32))(v18 + v17, v5, v24);
    v19 = sub_25AE540A4;
  }

  else
  {
    sub_25AEA1588();
    v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v18 = swift_allocObject();
    (*(v6 + 32))(v18 + v20, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
    v19 = sub_25AE5433C;
  }

  v27[0] = v19;
  v27[1] = v18;
  sub_25AE540D0();
  sub_25AE54134();
  sub_25AEA1C28();

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_25AE53C50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25AEA18E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[2];
  v10 = a1[3];
  v11 = *(a1 + 32);
  v12 = a1[5];
  v13 = qword_27FA1D250;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_27FA22788;
  v15 = sub_25AEA1BB8();
  v17 = v16;
  v19 = v18;
  v31 = *a1;
  v32 = *(a1 + 8);
  if (v32 != 1)
  {

    sub_25AEA2498();
    v20 = sub_25AEA1A98();
    v30 = v4;
    v21 = v20;
    sub_25AEA1298();

    sub_25AEA18D8();
    swift_getAtKeyPath();
    sub_25AE54468(&v31);
    (*(v5 + 8))(v8, v30);
  }

  v22 = sub_25AEA1BA8();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_25AE479D0(v15, v17, v19 & 1);

  *a2 = v22;
  *(a2 + 8) = v24;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v28;
  return result;
}

uint64_t sub_25AE53EAC@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 8);
  v3 = *v1;
  v4 = v1[1];
  return sub_25AE53900(a1);
}

uint64_t sub_25AE53EF0()
{
  sub_25AE53F44(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_25AE53F44(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_25AE53F50()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  return v1();
}

uint64_t sub_25AE53F80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA08, &qword_25AEA4610);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_25AEA1288();
  sub_25AE543F0(&qword_27FA1DA10, MEMORY[0x277CE7708]);
  sub_25AEA15A8();
  swift_getOpaqueTypeConformance2();
  return sub_25AEA1EE8();
}

unint64_t sub_25AE540D0()
{
  result = qword_27FA1D690;
  if (!qword_27FA1D690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D698, &qword_25AEA4080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D690);
  }

  return result;
}

unint64_t sub_25AE54134()
{
  result = qword_27FA1D9F0;
  if (!qword_27FA1D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D9F0);
  }

  return result;
}

uint64_t sub_25AE54188()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D9F8, &qword_25AEA4608);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_25AEA1278();
  sub_25AE543F0(&qword_27FA1DA00, MEMORY[0x277CE76F0]);
  sub_25AEA15A8();
  swift_getOpaqueTypeConformance2();
  return sub_25AEA1EE8();
}

uint64_t objectdestroy_2Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_25AE54368(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_25AE543F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25AE54438@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_25AE54468(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA18, &qword_25AEA4618);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25AE544DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25AE54524(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_25AE54580()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D698, &qword_25AEA4080);
  sub_25AE540D0();
  sub_25AE54134();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25AE545FC()
{
  result = qword_27FA1DA20;
  if (!qword_27FA1DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DA20);
  }

  return result;
}

uint64_t sub_25AE54678()
{
  v0 = type metadata accessor for NRSettings();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_25AE55394();
  qword_27FA1DA28 = result;
  return result;
}

uint64_t static NRSettings.shared.getter()
{
  if (qword_27FA1D230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static NRSettings.shared.setter(uint64_t a1)
{
  if (qword_27FA1D230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FA1DA28 = a1;
}

uint64_t (*static NRSettings.shared.modify())()
{
  if (qword_27FA1D230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25AE5483C@<X0>(void *a1@<X8>)
{
  if (qword_27FA1D230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FA1DA28;
}

uint64_t sub_25AE548BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FA1D230;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FA1DA28 = v1;
}

uint64_t sub_25AE54944@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  *a2 = v5;
  return result;
}

void sub_25AE549C4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_25AE54A8C();
}

uint64_t sub_25AE549EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  return v1;
}

void sub_25AE54A64(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_25AE54A8C();
}

void sub_25AE54A8C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  sub_25AEA2478();
  v0 = MEMORY[0x25F859F80]();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  [v0 setNameRecognitionEnabled_];
}

void (*sub_25AE54B78(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  *(a1 + 8) = *(a1 + 9);
  return sub_25AE54C0C;
}

void sub_25AE54C0C(uint64_t *a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  *(a1 + 9) = v2;

  sub_25AEA1488();
  sub_25AEA2478();
  v4 = MEMORY[0x25F859F80]();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  [v4 setNameRecognitionEnabled_];
}

uint64_t sub_25AE54D14(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  return swift_endAccess();
}

uint64_t sub_25AE54D8C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_25AE54F10()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  return swift_endAccess();
}

uint64_t sub_25AE54F84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE550BC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition10NRSettings__isNameRecognitionEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE5522C;
}

void sub_25AE5522C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_25AEA1458();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_25AEA1458();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_25AE55394()
{
  v1 = v0;
  sub_25AEA2478();
  v2 = MEMORY[0x25F859F80]();
  v3 = [v2 isNameRecognitionEnabled];

  swift_beginAccess();
  v8 = v3;
  sub_25AEA1438();
  swift_endAccess();
  v4 = [objc_opt_self() sharedInstance];
  aBlock[4] = sub_25AE559B8;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25AE93330;
  aBlock[3] = &block_descriptor_3;
  v5 = _Block_copy(aBlock);

  [v4 registerUpdateBlock:v5 forRetrieveSelector:sub_25AEA0EE8() withListener:v1];
  _Block_release(v5);

  return v1;
}

void sub_25AE5550C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  sub_25AEA2478();
  v0 = MEMORY[0x25F859F80]();
  v1 = [v0 isNameRecognitionEnabled];

  if (v6 != v1)
  {
    v2 = MEMORY[0x25F859F80]();
    [v2 isNameRecognitionEnabled];

    swift_getKeyPath();
    swift_getKeyPath();

    v3 = sub_25AEA1488();
    v4 = MEMORY[0x25F859F80](v3);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_25AEA1478();

    [v4 setNameRecognitionEnabled_];
  }
}