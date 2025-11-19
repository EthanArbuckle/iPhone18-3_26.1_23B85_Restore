uint64_t sub_2297266B0(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 identifier];
        v38 = sub_22A4DD5EC();
        v40 = v39;

        v41 = [v36 identifier];
        v42 = sub_22A4DD5EC();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = (v31 - 8);
        }

        else
        {
          v46 = sub_22A4DE60C();

          v4 = (v31 - 8);
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 identifier];
        v18 = sub_22A4DD5EC();
        v20 = v19;

        v21 = [v16 identifier];
        v22 = sub_22A4DD5EC();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = sub_22A4DE60C();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * ((v54 - v13) / 8));
  }

  return 1;
}

uint64_t sub_229726A9C(uint64_t a1)
{
  v2 = a1;
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v23 = v4;
    v24 = v1;
    v22[1] = v22;
    MEMORY[0x28223BE20](a1);
    v6 = v22 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    v25 = 0;
    v7 = 0;
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v2 + 56);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v4 = v12 | (v7 << 6);
      v15 = *(*(v2 + 48) + 8 * v4);
      v16 = [v15 audioDestination];

      if (v16)
      {
      }

      else
      {
        *&v6[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v25++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_22966F34C(v6, v23, v25, v2);
          goto LABEL_18;
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_17;
      }

      v14 = *(v2 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v20 = swift_slowAlloc();
  v21 = sub_229726FD0(v20, v4, v2);

  MEMORY[0x22AAD4E50](v20, -1, -1);
  result = v21;
LABEL_18:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_229726D04(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v19 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    v15 = [v14 audioDestination];

    if (v15)
    {
    }

    else
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
LABEL_16:

        sub_22966F34C(a1, a2, v19, a3);
        return;
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

    if (v4 >= v9)
    {
      goto LABEL_16;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_229726E64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_22966F34C(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_229726FD0(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_229726D04(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_229727048(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_229726E64(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t sub_2297270D8()
{
  result = qword_27D87E4D0;
  if (!qword_27D87E4D0)
  {
    sub_229562F68(255, &qword_281401920, off_278666038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E4D0);
  }

  return result;
}

unint64_t sub_229727140()
{
  result = qword_27D880230;
  if (!qword_27D880230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D880228, &unk_22A5810C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880230);
  }

  return result;
}

void sub_2297271A4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = [objc_opt_self() policyWithEntitlements_];
  v11 = [v0 msgDispatcher];
  if (v11)
  {
    v12 = v11;
    sub_2297A46D4();
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCCC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_229538000, v13, v14, "Registering NetworkInfo message handlers", v15, 2u);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    v16 = *MEMORY[0x277CCFFC8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
    v17 = swift_allocObject();
    v29 = xmmword_22A576190;
    *(v17 + 16) = xmmword_22A576190;
    *(v17 + 32) = v10;
    sub_229562F68(0, qword_281401B40, 0x277D0F838);
    v18 = v10;
    v19 = sub_22A4DD81C();

    [v12 registerForMessage:v16 receiver:v1 policies:v19 selector:sel_handleGetPrimaryResidentNetworkInfoWithMessage_];

    v20 = *MEMORY[0x277CCFFA8];
    v21 = swift_allocObject();
    *(v21 + 16) = v29;
    *(v21 + 32) = v18;
    v22 = sub_22A4DD81C();

    [v12 registerForMessage:v20 receiver:v1 policies:v22 selector:sel_handleWiFiInfoFetchWithMessage_];

    v23 = *MEMORY[0x277CCFF60];
    v24 = swift_allocObject();
    *(v24 + 16) = v29;
    *(v24 + 32) = v18;
    v25 = sub_22A4DD81C();

    [v12 registerForMessage:v23 receiver:v1 policies:v25 selector:sel_handleNetworkInfoFetchWithMessage_];
  }

  else
  {
    sub_2297A46D4();
    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCCC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_229538000, v26, v27, "Message dispatcher is nil", v28, 2u);
      MEMORY[0x22AAD4E50](v28, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v7, v2);
  }
}

void sub_2297275D8(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - v10;
  sub_2297A46D4();
  v12 = sub_22A4DD05C();
  v13 = sub_22A4DDCCC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_229538000, v12, v13, "Handling get primary resident network info message", v14, 2u);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  v15 = *(v5 + 8);
  v15(v11, v4);
  v16 = [v2 backingStore];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 context];
    v19 = swift_allocObject();
    *(v19 + 16) = v2;
    *(v19 + 24) = a1;
    aBlock[4] = sub_22972EC10;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_51;
    v20 = _Block_copy(aBlock);
    v21 = v2;
    v22 = a1;

    [v18 performBlock_];
    _Block_release(v20);
  }

  else
  {
    sub_2297A46D4();
    v23 = sub_22A4DD05C();
    v24 = sub_22A4DDCEC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_229538000, v23, v24, "backingStore is nil", v25, 2u);
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    v15(v9, v4);
  }
}

void sub_2297278DC(void *a1, void *a2)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = objc_opt_self();
  v10 = [a1 uuid];
  sub_22A4DB79C();

  v11 = sub_22A4DB77C();
  (*(v5 + 8))(v8, v4);
  v12 = [v9 findHomeWithModelID_];

  if (!v12)
  {
    v17 = [objc_opt_self() hmErrorWithCode_];
    v18 = sub_22A4DB3DC();

    [a2 respondWithError_];
    goto LABEL_24;
  }

  v13 = [v12 primaryWiFiSSID];
  if (v13)
  {
    v14 = v13;
    sub_22A4DD5EC();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v19 = [v12 primaryWiFiRequiresPassword];
  if (!v19)
  {
    v21 = 0;
    if (!v16)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v20 = v19;
  v21 = [v19 BOOLValue];

  if (v16)
  {
LABEL_8:
    v22 = objc_allocWithZone(MEMORY[0x277CD1AC8]);
    v23 = sub_22A4DD5AC();

    v16 = [v22 initWithSSID:v23 requiresPassword:v21];
  }

LABEL_9:
  v24 = [v12 primaryIPv4NetworkSignature];
  if (v24)
  {
    v25 = v24;
    v26 = sub_22A4DB62C();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xF000000000000000;
  }

  v29 = [v12 primaryIPv6NetworkSignature];
  if (v29)
  {
    v30 = v29;
    v31 = sub_22A4DB62C();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0xF000000000000000;
  }

  v34 = v16;
  if (v28 >> 60 == 15)
  {
    v35 = 0;
  }

  else
  {
    v35 = sub_22A4DB61C();
    sub_229590D18(v26, v28);
  }

  if (v33 >> 60 == 15)
  {
    v36 = 0;
  }

  else
  {
    v36 = sub_22A4DB61C();
    sub_229590D18(v31, v33);
  }

  v18 = [objc_allocWithZone(MEMORY[0x277CD1AA0]) initWithIpv4Addresses:0 ipv6Addresses:0 ipv4NetworkSignature:0 ipv6NetworkSignature:0 binaryIPv4NetworkSignature:v35 binaryIPv6NetworkSignature:v36 routerIPV4:0 routerIPV6:0 wiFiInfo:v34];

  v37 = encodeRootObjectForXPC(v18);
  v38 = sub_22A4DB62C();
  v40 = v39;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  v42 = *MEMORY[0x277CD0440];
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 72) = MEMORY[0x277CC9318];
  *(inited + 40) = v43;
  *(inited + 48) = v38;
  *(inited + 56) = v40;
  sub_22956C148(v38, v40);
  sub_22956AC5C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v44 = sub_22A4DD47C();

  [a2 respondWithPayload_];

  sub_2295798D4(v38, v40);
  swift_unknownObjectRelease();

LABEL_24:
}

void sub_229727DF0(void *a1)
{
  swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 homeManager];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  v10 = [v8 idsServerBag];

  if (!v10)
  {
    __break(1u);
    return;
  }

  v11 = [v10 fetchHomeWiFiInfosMessageDisable];

  if (!v11)
  {

    sub_2297280B0(a1, sub_229728038, 0);
  }

  else
  {
LABEL_4:
    sub_2297A46D4();
    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDCEC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_229538000, v12, v13, "Responding with error to HMHomeFetchWiFiInfoMessage as it is disabled in IDS", v14, 2u);
      MEMORY[0x22AAD4E50](v14, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    v15 = [objc_opt_self() hmErrorWithCode_];
    v16 = sub_22A4DB3DC();

    [a1 respondWithError_];
  }
}

id sub_229728038()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_22A4DB77C();
  v2 = [v0 isRapportDeviceDiscoveredWithIdentifier_];

  return v2;
}

void sub_2297280B0(void *a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v161 = a3;
  v162 = a2;
  v175 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_22A4DB7DC();
  v163 = *(v6 - 8);
  v7 = *(v163 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v155 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v157 = &v151 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v165 = &v151 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v151 - v14;
  v173 = sub_22A4DD07C();
  v16 = *(v173 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v173);
  v20 = &v151 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v168 = &v151 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v166 = &v151 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v158 = &v151 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v154 = &v151 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v156 = &v151 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v159 = &v151 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v160 = &v151 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v167 = &v151 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v151 - v37;
  v170 = [v4 wifiManager];
  v39 = [v170 currentNetworkAssociation];
  v171 = v39;
  v164 = v6;
  if (v39)
  {
    v40 = [v39 SSID];
    v41 = sub_22A4DD5EC();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v172 = ObjectType;
  sub_2297A46D4();
  v44 = sub_22A4DD05C();
  v45 = sub_22A4DDCCC();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_229538000, v44, v45, "Setting up the WiFi info fetch metric tracker", v46, 2u);
    MEMORY[0x22AAD4E50](v46, -1, -1);
  }

  v48 = v16 + 8;
  v47 = *(v16 + 8);
  v49 = v173;
  v174 = v47;
  v47(v38, v173);
  v50 = [v4 uuid];
  sub_22A4DB79C();
  v51 = [v4 logEventSubmitter];
  if (!v51)
  {
    __break(1u);
    return;
  }

  v52 = v51;

  MetricEventTrackerCMa = _s35HomeWiFiInfoFetchMetricEventTrackerCMa();
  v54 = *(MetricEventTrackerCMa + 48);
  v55 = *(MetricEventTrackerCMa + 52);
  swift_allocObject();

  v56 = sub_22972A364(v15, v52, v41, v43);
  v57 = [v175 messagePayload];
  if (!v57)
  {
    goto LABEL_30;
  }

  v58 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v59 = sub_22A4DD49C();

  v60 = *MEMORY[0x277CCFFC0];
  v61 = sub_22A4DD5EC();
  if (!*(v59 + 16))
  {
LABEL_27:

    goto LABEL_30;
  }

  v153 = v48;
  v169 = v56;
  v63 = sub_229543DBC(v61, v62);
  v65 = v64;

  if ((v65 & 1) == 0)
  {

    goto LABEL_30;
  }

  sub_2295404B0(*(v59 + 56) + 32 * v63, aBlock);

  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:

    sub_2297A46D4();
    v80 = sub_22A4DD05C();
    v81 = sub_22A4DDCEC();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_229538000, v80, v81, "No valid timeout specified in message payload", v82, 2u);
      MEMORY[0x22AAD4E50](v82, -1, -1);
    }

    v174(v20, v49);
    v83 = [objc_opt_self() hmErrorWithCode_];
    v84 = sub_22A4DB3DC();

    [v175 respondWithError_];

LABEL_33:

    return;
  }

  v66 = v177;
  [v177 doubleValue];
  if (v67 <= 0.0 || (v68 = v67, v67 < 2.22044605e-16))
  {

    v85 = v168;
    sub_2297A46D4();
    v86 = sub_22A4DD05C();
    v87 = sub_22A4DDCEC();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_229538000, v86, v87, "Remote message timeout cannot be 0 or negative", v88, 2u);
      MEMORY[0x22AAD4E50](v88, -1, -1);
    }

    v174(v85, v49);
    v89 = [objc_opt_self() hmErrorWithCode_];
    v84 = sub_22A4DB3DC();

    [v175 respondWithError_];

    goto LABEL_33;
  }

  v69 = v167;
  sub_2297A46D4();
  v70 = sub_22A4DD05C();
  v71 = sub_22A4DDCCC();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 134217984;
    *(v72 + 4) = v68;
    _os_log_impl(&dword_229538000, v70, v71, "Handling home WiFi info fetch with timeout: %f", v72, 0xCu);
    MEMORY[0x22AAD4E50](v72, -1, -1);
  }

  v174(v69, v49);
  v73 = [v4 appleMediaAccessories];
  sub_229562F68(0, &qword_281401920, off_278666038);
  v74 = sub_22A4DD83C();

  v152 = v66;
  if (v74 >> 62)
  {
LABEL_56:
    v75 = sub_22A4DE0EC();
    if (v75)
    {
      goto LABEL_17;
    }

LABEL_57:

    v146 = v166;
    sub_2297A46D4();
    v147 = sub_22A4DD05C();
    v148 = sub_22A4DDCEC();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      *v149 = 0;
      _os_log_impl(&dword_229538000, v147, v148, "No accessory found for primary resident", v149, 2u);
      MEMORY[0x22AAD4E50](v149, -1, -1);
    }

    v174(v146, v173);
    v120 = [objc_opt_self() hmErrorWithCode_];
    v150 = sub_22A4DB3DC();
    [v175 respondWithError_];

    v122 = sub_22A4DB3DC();
    sub_22972A4D0(v122);

    v123 = v152;
LABEL_60:

    return;
  }

  v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v75)
  {
    goto LABEL_57;
  }

LABEL_17:
  v76 = 0;
  v20 = 0;
  v49 = v74 & 0xC000000000000001;
  while (1)
  {
    if (v49)
    {
      v77 = MEMORY[0x22AAD13F0](v76, v74);
      v78 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {
      if (v76 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_56;
      }

      v77 = *(v74 + 8 * v76 + 32);
      v78 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        goto LABEL_26;
      }
    }

    aBlock[0] = v77;
    v79 = v77;
    if (sub_22972C360(aBlock, v4))
    {
      break;
    }

    ++v76;
    if (v78 == v75)
    {
      goto LABEL_57;
    }
  }

  v168 = v79;
  v90 = [v79 idsIdentifier];
  v91 = v173;
  if (!v90)
  {
    v116 = v158;
    sub_2297A46D4();
    v117 = sub_22A4DD05C();
    v118 = sub_22A4DDCEC();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_229538000, v117, v118, "Primary resident accessory does not have IDS identifier", v119, 2u);
      MEMORY[0x22AAD4E50](v119, -1, -1);
    }

    v174(v116, v91);
    v120 = [objc_opt_self() hmErrorWithCode_];
    v121 = sub_22A4DB3DC();
    [v175 respondWithError_];

    v122 = sub_22A4DB3DC();
    sub_22972A4D0(v122);

    v123 = v168;
    goto LABEL_60;
  }

  v92 = v165;
  v93 = v90;
  sub_22A4DB79C();

  v94 = v160;
  sub_2297A46D4();
  v95 = sub_22A4DD05C();
  v96 = sub_22A4DDCCC();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_229538000, v95, v96, "Checking primary resident device Rapport reachability", v97, 2u);
    MEMORY[0x22AAD4E50](v97, -1, -1);
  }

  v174(v94, v91);
  v98 = v162(v92);
  v99 = v164;
  if (v98)
  {
    v100 = v159;
    sub_2297A46D4();
    v101 = v163;
    v102 = v157;
    (*(v163 + 16))(v157, v92, v99);
    v103 = sub_22A4DD05C();
    v104 = sub_22A4DDCCC();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = v101;
      v107 = swift_slowAlloc();
      aBlock[0] = v107;
      *v105 = 136315138;
      sub_22953E218(&qword_281403860, MEMORY[0x277CC95F0]);
      v108 = sub_22A4DE5CC();
      v109 = v102;
      v111 = v110;
      v112 = *(v106 + 8);
      v113 = v99;
      v112(v109, v99);
      v114 = sub_2295A3E30(v108, v111, aBlock);

      *(v105 + 4) = v114;
      _os_log_impl(&dword_229538000, v103, v104, "Primary resident with IDS identifier: %s is reachable via Rapport", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v107);
      MEMORY[0x22AAD4E50](v107, -1, -1);
      MEMORY[0x22AAD4E50](v105, -1, -1);

      v115 = v159;
    }

    else
    {

      v112 = *(v101 + 8);
      v113 = v99;
      v112(v102, v99);
      v115 = v100;
    }

    v174(v115, v173);
    [v175 respondWithSuccess];
    sub_22972A664();

    v112(v165, v113);
  }

  else
  {
    v124 = [v4 homeManager];
    if (v124)
    {
      v125 = v124;
      v126 = v156;
      sub_2297A46D4();
      v127 = sub_22A4DD05C();
      v128 = sub_22A4DDCCC();
      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        *v129 = 0;
        _os_log_impl(&dword_229538000, v127, v128, "Performing remote fetch from the primary resident ...", v129, 2u);
        v130 = v129;
        v126 = v156;
        MEMORY[0x22AAD4E50](v130, -1, -1);
      }

      v174(v126, v91);
      v131 = [v168 uuid];
      v132 = v155;
      sub_22A4DB79C();

      v133 = sub_22A4DB77C();
      v174 = *(v163 + 8);
      v174(v132, v99);
      v134 = swift_allocObject();
      v135 = v175;
      v134[2] = v4;
      v134[3] = v135;
      v136 = v172;
      v134[4] = v169;
      v134[5] = v136;
      aBlock[4] = sub_22972EB50;
      aBlock[5] = v134;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_229582E94;
      aBlock[3] = &block_descriptor_39;
      v137 = _Block_copy(aBlock);

      v138 = v4;
      v139 = v135;

      [v125 fetchSetupDiagnosticStateWithOptions:1 accessoryUUID:v133 remoteMessageTimeout:1 remoteMessageRestriction:v137 completion:v68];

      _Block_release(v137);

      v174(v92, v99);
    }

    else
    {
      v140 = v154;
      sub_2297A46D4();
      v141 = sub_22A4DD05C();
      v142 = sub_22A4DDCEC();
      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        *v143 = 0;
        _os_log_impl(&dword_229538000, v141, v142, "homeManager is nil", v143, 2u);
        MEMORY[0x22AAD4E50](v143, -1, -1);
      }

      v174(v140, v91);
      v144 = [objc_opt_self() hmErrorWithCode_];
      v145 = sub_22A4DB3DC();

      [v175 respondWithError_];

      (*(v163 + 8))(v92, v99);
    }
  }
}

uint64_t sub_229729420(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v46 = a5;
  v47 = a6;
  v45 = a2;
  v49 = sub_22A4DD26C();
  v52 = *(v49 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22A4DD29C();
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = *(v50 + 64);
  MEMORY[0x28223BE20](v11);
  v42 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - v19;
  v44 = &v41 - v19;
  v43 = [a3 workQueue];
  aBlock[0] = a1;
  v21 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8802C0, &qword_22A57C008);
  MEMORY[0x22AACEC10](aBlock, v22);
  v23 = *(v15 + 16);
  v24 = v20;
  v25 = v14;
  v41 = v14;
  v23(v18, v24, v14);
  v26 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v27 = (v16 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = a3;
  *(v29 + 24) = a4;
  (*(v15 + 32))(v29 + v26, v18, v25);
  v31 = v45;
  v30 = v46;
  *(v29 + v27) = v45;
  *(v29 + v28) = v30;
  *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v47;
  aBlock[4] = sub_22972EB5C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_45;
  v32 = _Block_copy(aBlock);
  v33 = a3;
  v34 = a4;
  v35 = v31;

  v36 = v42;
  sub_22A4DD28C();
  v53 = MEMORY[0x277D84F90];
  sub_22953E218(&qword_281401CF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_22953E5DC();
  v38 = v48;
  v37 = v49;
  sub_22A4DE03C();
  v39 = v43;
  MEMORY[0x22AAD0F80](0, v36, v38, v32);
  _Block_release(v32);

  (*(v52 + 8))(v38, v37);
  (*(v50 + 8))(v36, v51);
  (*(v15 + 8))(v44, v41);
}

void sub_229729880(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2297A46D4();
  v13 = sub_22A4DD05C();
  v14 = sub_22A4DDCCC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21[0] = a4;
    v16 = a5;
    v17 = v15;
    *v15 = 0;
    _os_log_impl(&dword_229538000, v13, v14, "Received response from the remote fetch", v15, 2u);
    v18 = v17;
    a5 = v16;
    a4 = v21[0];
    MEMORY[0x22AAD4E50](v18, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160);
  sub_22A4DBA4C();
  v19 = v21[3];
  if (a4)
  {
    v21[2] = a4;
    v20 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_229562F68(0, &qword_281401778, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      a4 = v21[1];
    }

    else
    {
      a4 = 0;
    }
  }

  sub_229729AB4(a2, v19, a4, a5);
}

void sub_229729AB4(void *a1, void *a2, void *a3, uint64_t a4)
{
  v74 = a1;
  v75 = a4;
  swift_getObjectType();
  v7 = sub_22A4DD07C();
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = *(v72 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v70 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v71 = &v70 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v70 - v17;
  v19 = sub_22A4DD2FC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v23 = [v4 workQueue];
  (*(v20 + 104))(v23, *MEMORY[0x277D85200], v19);
  v24 = sub_22A4DD31C();
  (*(v20 + 8))(v23, v19);
  if (v24)
  {
    if (a3)
    {
      v25 = a3;
      sub_2297A46D4();
      v26 = v25;
      v27 = sub_22A4DD05C();
      v28 = sub_22A4DDCEC();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        *(v29 + 4) = v26;
        *v30 = a3;
        v31 = v26;
        _os_log_impl(&dword_229538000, v27, v28, "Fetch from the primary resident resulting an error: %@", v29, 0xCu);
        sub_22953EAE4(v30, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v30, -1, -1);
        MEMORY[0x22AAD4E50](v29, -1, -1);
      }

      (*(v72 + 8))(v18, v73);
      v32 = v26;
      v33 = sub_22A4DB3DC();

      [v74 respondWithError_];
      v34 = v32;
      sub_22972A804(a3);
      v35 = v34;
LABEL_23:

      return;
    }

    if (!a2)
    {
      sub_2297A46D4();
      v45 = sub_22A4DD05C();
      v46 = sub_22A4DDCEC();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        *(v47 + 4) = 0;
        *v48 = 0;
        _os_log_impl(&dword_229538000, v45, v46, "No diagnostic info included in fetched response: %@", v47, 0xCu);
        sub_22953EAE4(v48, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v48, -1, -1);
        MEMORY[0x22AAD4E50](v47, -1, -1);
      }

      (*(v72 + 8))(v11, v73);
      v34 = [objc_opt_self() hmErrorWithCode_];
      v49 = sub_22A4DB3DC();
      [v74 respondWithError_];

      v35 = sub_22A4DB3DC();
      sub_22972A9B4(v35);
      goto LABEL_23;
    }

    v36 = a2;
    v37 = [v36 appleMediaAccessoryDiagnosticInfo];
    if (v37)
    {
      v38 = v37;
      v35 = [v37 wifiInfo];

      if (v35)
      {
        v39 = [v35 networkSSID];
        if (v39)
        {
          v40 = v39;
          v41 = sub_22A4DD5EC();
          v43 = v42;

          if ([v35 hasRequiresPassword])
          {
            v44 = [v35 requiresPassword];
          }

          else
          {
            v44 = 1;
          }

          v55 = v71;
          v56 = sub_22A4DD8AC();
          sub_2297A46D4();

          v57 = sub_22A4DD05C();
          v58 = sub_22A4DDCCC();

          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v71 = v56;
            v61 = v60;
            v76 = v60;
            *v59 = 136315394;
            *(v59 + 4) = sub_2295A3E30(v41, v43, &v76);
            *(v59 + 12) = 1024;
            *(v59 + 14) = v44;
            _os_log_impl(&dword_229538000, v57, v58, "Responding to the fetch request with WiFi SSID: %s requiresPassword: %{BOOL}d", v59, 0x12u);
            __swift_destroy_boxed_opaque_existential_0(v61);
            v62 = v61;
            v56 = v71;
            MEMORY[0x22AAD4E50](v62, -1, -1);
            MEMORY[0x22AAD4E50](v59, -1, -1);
          }

          (*(v72 + 8))(v55, v73);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22A5761A0;
          v64 = *MEMORY[0x277CCFFB8];
          *(inited + 32) = sub_22A4DD5EC();
          *(inited + 72) = MEMORY[0x277D837D0];
          *(inited + 40) = v65;
          *(inited + 48) = v41;
          *(inited + 56) = v43;
          v66 = *MEMORY[0x277CCFFB0];
          *(inited + 80) = sub_22A4DD5EC();
          *(inited + 88) = v67;
          *(inited + 120) = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
          *(inited + 96) = v56;

          v68 = v56;
          sub_22956AC5C(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
          swift_arrayDestroy();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
          v69 = sub_22A4DD47C();

          [v74 respondWithPayload:v69 error:0];

          sub_22972AB64(v41, v43);

          v34 = v36;
          goto LABEL_23;
        }
      }
    }

    sub_2297A46D4();
    v50 = sub_22A4DD05C();
    v51 = sub_22A4DDCEC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_229538000, v50, v51, "No primary resident WiFi SSID included in fetched diagnostic info", v52, 2u);
      MEMORY[0x22AAD4E50](v52, -1, -1);
    }

    (*(v72 + 8))(v14, v73);
    v53 = [objc_opt_self() hmErrorWithCode_];
    v54 = sub_22A4DB3DC();
    [v74 respondWithError_];

    v34 = sub_22A4DB3DC();
    sub_22972A9B4(v34);

    v35 = v36;
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_22972A364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_homeUUID;
  v10 = sub_22A4DB7DC();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v4 + v9, a1, v10);
  *(v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_logEventSubmitter) = a2;
  v12 = (v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_currentNetworkSSID);
  *v12 = a3;
  v12[1] = a4;
  HMFUptime();
  v14 = v13;
  (*(v11 + 8))(a1, v10);
  *(v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_startTime) = v14;
  *(v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentAccessoryExist) = 0;
  *(v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentRapportDiscoverable) = 0;
  *(v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchSucceeded) = 0;
  *(v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasWiFiInfo) = 0;
  *(v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasSSID) = 0;
  *(v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasSameSSIDAsController) = 0;
  *(v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_currentSSIDExist) = 0;
  *(v4 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchDurationInMS) = 0;
  return v4;
}

void sub_22972A4D0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentAccessoryExist) = 0;
  sub_229541CB0(v4, &off_283CE2D28);
  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDCCC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_229538000, v10, v11, "Primary resident accessory does not exist", v12, 2u);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  sub_22972AD7C(a1);
}

void sub_22972A664()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentAccessoryExist) = 1;
  *(v1 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentRapportDiscoverable) = 1;
  sub_229541CB0(v2, &off_283CE2D28);
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_229538000, v8, v9, "Primary resident is rapport visible", v10, 2u);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  sub_22972AD7C(0);
}

void sub_22972A804(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentAccessoryExist) = 1;
  *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentRapportDiscoverable) = 0;
  *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchSucceeded) = 0;
  sub_229541CB0(v4, &off_283CE2D28);
  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDCCC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_229538000, v10, v11, "Fetch failed without response", v12, 2u);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  sub_22972AD7C(a1);
}

void sub_22972A9B4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentAccessoryExist) = 1;
  *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentRapportDiscoverable) = 0;
  *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasWiFiInfo) = 0;
  sub_229541CB0(v4, &off_283CE2D28);
  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDCCC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_229538000, v10, v11, "Response has invalid WiFi info", v12, 2u);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  sub_22972AD7C(a1);
}

void sub_22972AB64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentAccessoryExist) = 1;
  *(v3 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentRapportDiscoverable) = 0;
  *(v3 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasWiFiInfo) = 1;
  v12 = *(v3 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_currentNetworkSSID);
  v13 = *(v3 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_currentNetworkSSID + 8);
  *(v3 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_currentSSIDExist) = v13 != 0;
  if (v13)
  {
    if (v12 == a1 && v13 == a2)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_22A4DE60C();
    }
  }

  else
  {
    v15 = 0;
  }

  *(v3 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasSameSSIDAsController) = v15 & 1;
  sub_229541CB0(v6, &off_283CE2D28);
  v16 = sub_22A4DD05C();
  v17 = sub_22A4DDCCC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_229538000, v16, v17, "Response has valid WiFi info", v18, 2u);
    MEMORY[0x22AAD4E50](v18, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  sub_22972AD7C(0);
}

void sub_22972AD7C(uint64_t a1)
{
  v2 = v1;
  v73 = a1;
  v54 = *v1;
  v3 = sub_22A4DD07C();
  v70 = *(v3 - 1);
  v71 = v3;
  v4 = *(v70 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DB7DC();
  v74 = v6;
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  HMFUptime();
  v12 = v11 - *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_startTime);
  v69 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchDurationInMS;
  *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchDurationInMS) = v12;
  v68 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentAccessoryExist;
  LODWORD(v72) = *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentAccessoryExist);
  v67 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentRapportDiscoverable;
  v13 = *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_primaryResidentRapportDiscoverable);
  v65 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchSucceeded;
  v14 = *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchSucceeded);
  v64 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasWiFiInfo;
  v15 = *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasWiFiInfo);
  v63 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasSSID;
  v16 = *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasSSID);
  v61 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasSameSSIDAsController;
  v17 = *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_fetchedResponseHasSameSSIDAsController);
  v57 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_currentSSIDExist;
  v18 = *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_currentSSIDExist);
  v19 = v7[2];
  v56 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_homeUUID;
  v59 = v7 + 2;
  v58 = v19;
  v19(v10, v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_homeUUID, v6);
  v79 = &type metadata for Metric.Setup.PrimaryResidentWiFiInfosFetch;
  v80 = &off_283CE5B80;
  LOBYTE(v77) = v72;
  BYTE1(v77) = v13;
  BYTE2(v77) = v14;
  BYTE3(v77) = v15;
  BYTE4(v77) = v16;
  BYTE5(v77) = v17;
  BYTE6(v77) = v18;
  v78 = v12;
  v20 = type metadata accessor for Metric.LogEventAdaptor();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_name];
  *v22 = 0xD00000000000002DLL;
  *(v22 + 1) = 0x800000022A594560;
  v60 = 0x800000022A594560;
  sub_22957F1C4(&v77, &v21[OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_event]);
  *&v21[OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_coreAnalyticsEventOptions] = 2;
  v23 = sub_22A4DB77C();
  v76.receiver = v21;
  v76.super_class = v20;
  v62 = v20;
  v24 = objc_msgSendSuper2(&v76, sel_initWithHomeUUID_, v23);

  v25 = v7[1];
  v72 = v10;
  v26 = v10;
  v27 = v53;
  v55 = v25;
  v25(v26, v74);
  __swift_destroy_boxed_opaque_existential_0(&v77);
  v66 = v24;
  sub_2297CDA58();
  sub_229541CB0(v54, &off_283CE2D28);

  v28 = sub_22A4DD05C();
  v29 = sub_22A4DDCCC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v77 = v31;
    *v30 = 136315138;
    sub_229562F68(0, &qword_281401760, 0x277D82BB8);
    v32 = sub_22A4DD4AC();
    v34 = v33;

    v35 = sub_2295A3E30(v32, v34, &v77);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_229538000, v28, v29, "Submitting metric log event: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AAD4E50](v31, -1, -1);
    MEMORY[0x22AAD4E50](v30, -1, -1);
  }

  else
  {
  }

  (*(v70 + 8))(v27, v71);
  v71 = *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_logEventSubmitter);
  v36 = *(v2 + v68);
  v37 = *(v2 + v67);
  v38 = *(v2 + v65);
  v39 = *(v2 + v64);
  v40 = *(v2 + v63);
  v41 = *(v2 + v61);
  v42 = *(v2 + v57);
  v43 = *(v2 + v69);
  v44 = v2 + v56;
  v45 = v72;
  v46 = v74;
  v58(v72, v44, v74);
  v79 = &type metadata for Metric.Setup.PrimaryResidentWiFiInfosFetch;
  v80 = &off_283CE5B80;
  LOBYTE(v77) = v36;
  BYTE1(v77) = v37;
  BYTE2(v77) = v38;
  BYTE3(v77) = v39;
  BYTE4(v77) = v40;
  BYTE5(v77) = v41;
  BYTE6(v77) = v42;
  v78 = v43;
  v47 = v62;
  v48 = objc_allocWithZone(v62);
  v49 = &v48[OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_name];
  *v49 = 0xD00000000000002DLL;
  *(v49 + 1) = v60;
  sub_22957F1C4(&v77, &v48[OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_event]);
  *&v48[OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_coreAnalyticsEventOptions] = 2;
  v50 = sub_22A4DB77C();
  v75.receiver = v48;
  v75.super_class = v47;
  v51 = objc_msgSendSuper2(&v75, sel_initWithHomeUUID_, v50);

  v55(v45, v46);
  __swift_destroy_boxed_opaque_existential_0(&v77);
  if (v73)
  {
    v52 = sub_22A4DB3DC();
  }

  else
  {
    v52 = 0;
  }

  [v71 submitLogEvent:v51 error:v52];
}

uint64_t sub_22972B420()
{
  v1 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_homeUUID;
  v2 = sub_22A4DB7DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_logEventSubmitter);
  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_73012FE8AC56C4A293325838CCBABF8F35HomeWiFiInfoFetchMetricEventTracker_currentNetworkSSID + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s35HomeWiFiInfoFetchMetricEventTrackerCMa()
{
  result = qword_27D8802A8;
  if (!qword_27D8802A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22972B534()
{
  result = sub_22A4DB7DC();
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

void sub_22972B618(id a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DB7DC();
  v117 = *(v4 - 8);
  v5 = *(v117 + 64);
  MEMORY[0x28223BE20](v4);
  v116 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_22A4DD07C();
  v7 = *(v122 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v122);
  v11 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v110 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v121 = &v110 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v120 = &v110 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v115 = &v110 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v119 = &v110 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v118 = &v110 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v110 - v25;
  v27 = [a1 messagePayload];
  if (!v27)
  {
    goto LABEL_29;
  }

  v28 = v27;
  v111 = v4;
  v112 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v29 = sub_22A4DD49C();

  v30 = *MEMORY[0x277CCFF70];
  v31 = sub_22A4DD5EC();
  if (!*(v29 + 16))
  {
LABEL_26:

LABEL_29:
    v36 = v7;
    goto LABEL_30;
  }

  v113 = a1;
  v114 = ObjectType;
  v33 = sub_229543DBC(v31, v32);
  v35 = v34;

  if ((v35 & 1) == 0)
  {

    goto LABEL_28;
  }

  sub_2295404B0(*(v29 + 56) + 32 * v33, aBlock);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    a1 = v113;
    goto LABEL_29;
  }

  a1 = v113;
  v36 = v7;
  if (v124 != 1)
  {
LABEL_30:
    sub_2297A46D4();
    v60 = sub_22A4DD05C();
    v61 = sub_22A4DDCEC();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_229538000, v60, v61, "Invalid target specified in message payload", v62, 2u);
      MEMORY[0x22AAD4E50](v62, -1, -1);
    }

    (v36[1])(v11, v122);
    v63 = [objc_opt_self() hmErrorWithCode_];
LABEL_33:
    v64 = v63;
    v65 = sub_22A4DB3DC();

    [a1 respondWithError_];
    goto LABEL_34;
  }

  v37 = [v113 messagePayload];
  if (!v37)
  {
LABEL_38:
    sub_2297A46D4();
    v66 = sub_22A4DD05C();
    v67 = sub_22A4DDCEC();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_229538000, v66, v67, "No valid timeout specified in message payload", v68, 2u);
      MEMORY[0x22AAD4E50](v68, -1, -1);
    }

    (v7[1])(v14, v122);
    v63 = [objc_opt_self() hmErrorWithCode_];
    goto LABEL_33;
  }

  v38 = v37;
  v39 = sub_22A4DD49C();

  v40 = *MEMORY[0x277CCFF78];
  v41 = sub_22A4DD5EC();
  if (!*(v39 + 16))
  {

    goto LABEL_38;
  }

  v43 = sub_229543DBC(v41, v42);
  v45 = v44;

  if ((v45 & 1) == 0)
  {

    goto LABEL_37;
  }

  sub_2295404B0(*(v39 + 56) + 32 * v43, aBlock);

  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:
    a1 = v113;
    goto LABEL_38;
  }

  v46 = v124;
  [v124 doubleValue];
  v48 = v113;
  if (v47 <= 0.0 || (v49 = v47, v47 < 2.22044605e-16))
  {
    v69 = v121;
    sub_2297A46D4();
    v70 = sub_22A4DD05C();
    v71 = sub_22A4DDCEC();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v122;
    if (v72)
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_229538000, v70, v71, "Remote message timeout cannot be 0 or negative", v74, 2u);
      MEMORY[0x22AAD4E50](v74, -1, -1);
    }

    (v36[1])(v69, v73);
    v75 = [objc_opt_self() hmErrorWithCode_];
    v65 = sub_22A4DB3DC();

    [v48 respondWithError_];
    goto LABEL_34;
  }

  v121 = v46;
  sub_2297A46D4();
  v50 = sub_22A4DD05C();
  v51 = sub_22A4DDCCC();
  v52 = os_log_type_enabled(v50, v51);
  a1 = v122;
  if (v52)
  {
    v53 = swift_slowAlloc();
    *v53 = 134217984;
    *(v53 + 4) = v49;
    _os_log_impl(&dword_229538000, v50, v51, "Handling home network info fetch with timeout: %f", v53, 0xCu);
    MEMORY[0x22AAD4E50](v53, -1, -1);
  }

  v54 = v7[1];
  v54(v26, a1);
  v55 = [v112 appleMediaAccessories];
  sub_229562F68(0, &qword_281401920, off_278666038);
  v56 = sub_22A4DD83C();

  v110 = v54;
  if (!(v56 >> 62))
  {
    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57)
    {
      goto LABEL_16;
    }

LABEL_55:

    v105 = v120;
    sub_2297A46D4();
    v106 = sub_22A4DD05C();
    v107 = sub_22A4DDCEC();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      _os_log_impl(&dword_229538000, v106, v107, "No accessory found for primary resident", v108, 2u);
      MEMORY[0x22AAD4E50](v108, -1, -1);
    }

    v110(v105, a1);
    v109 = [objc_opt_self() hmErrorWithCode_];
    v65 = sub_22A4DB3DC();
    [v113 respondWithError_];

    goto LABEL_34;
  }

LABEL_54:
  v57 = sub_22A4DE0EC();
  if (!v57)
  {
    goto LABEL_55;
  }

LABEL_16:
  v11 = 0;
  while (1)
  {
    if ((v56 & 0xC000000000000001) != 0)
    {
      v58 = MEMORY[0x22AAD13F0](v11, v56);
      v59 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
      if (v11 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_54;
      }

      v58 = *(v56 + 8 * v11 + 32);
      v59 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        goto LABEL_25;
      }
    }

    aBlock[0] = v58;
    v7 = v58;
    if (sub_22972C360(aBlock, v112))
    {
      break;
    }

    ++v11;
    if (v59 == v57)
    {
      goto LABEL_55;
    }
  }

  v76 = v118;
  sub_2297A46D4();
  v77 = sub_22A4DD05C();
  v78 = sub_22A4DDCCC();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_229538000, v77, v78, "Checking primary resident device Rapport reachability", v79, 2u);
    MEMORY[0x22AAD4E50](v79, -1, -1);
  }

  v80 = v110;
  v110(v76, a1);
  v81 = [v112 homeManager];
  v82 = v111;
  v83 = v119;
  if (v81)
  {
    v84 = v81;
    sub_2297A46D4();
    v85 = sub_22A4DD05C();
    v86 = sub_22A4DDCCC();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_229538000, v85, v86, "Performing remote fetch from the primary resident ...", v87, 2u);
      v88 = v87;
      v82 = v111;
      MEMORY[0x22AAD4E50](v88, -1, -1);
    }

    v80(v83, a1);
    v89 = v7;
    v90 = [v7 uuid];
    v91 = v116;
    sub_22A4DB79C();

    v92 = sub_22A4DB77C();
    (*(v117 + 8))(v91, v82);
    v93 = sub_22A4DD81C();
    v65 = sub_22A4DD81C();
    v94 = swift_allocObject();
    v96 = v112;
    v95 = v113;
    v94[2] = v112;
    v94[3] = v95;
    v94[4] = v114;
    aBlock[4] = sub_22972EA9C;
    aBlock[5] = v94;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_229582E94;
    aBlock[3] = &block_descriptor_26;
    v97 = _Block_copy(aBlock);
    v98 = v96;
    v99 = v95;

    [v84 fetchDiagnosticStateWithOptions:1 accessoryUUID:v92 additionalFetchKeys:v93 filteringKeyPaths:v65 remoteMessageTimeout:9 remoteMessageRestriction:v97 completion:v49];
    _Block_release(v97);
  }

  else
  {
    v100 = v115;
    sub_2297A46D4();
    v101 = sub_22A4DD05C();
    v102 = sub_22A4DDCEC();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_229538000, v101, v102, "homeManager is nil", v103, 2u);
      MEMORY[0x22AAD4E50](v103, -1, -1);
    }

    v80(v100, a1);
    v104 = [objc_opt_self() hmErrorWithCode_];
    v65 = sub_22A4DB3DC();

    [v113 respondWithError_];
  }

LABEL_34:
}

uint64_t sub_22972C360(void **a1, void *a2)
{
  v56 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA0, &qword_22A57A158);
  v4 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v57 = v51 - v5;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v51 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v58 = v51 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = v51 - v21;
  v23 = *a1;
  v24 = [v23 idsIdentifier];
  if (v24)
  {
    v25 = v24;
    v53 = v15;
    v54 = v2;
    sub_22A4DB79C();

    v26 = v7[4];
    v51[1] = v7 + 4;
    v52 = v26;
    v26(v22, v10, v6);
    v27 = v7[7];
    v27(v22, 0, 1, v6);
    sub_22953EAE4(v22, &unk_27D87D2A0, &unk_22A578BD0);
    v28 = v56;
    v29 = [v56 primaryResident];
    if (v29)
    {
      v51[0] = v10;

      v30 = [v23 idsIdentifier];
      if (v30)
      {
        v31 = v18;
        v32 = v58;
        v33 = v30;
        sub_22A4DB79C();

        v34 = v32;
        v18 = v31;
        v35 = 0;
      }

      else
      {
        v35 = 1;
        v34 = v58;
      }

      v37 = 1;
      v27(v34, v35, 1, v6);
      v38 = [v28 primaryResident];
      if (v38)
      {
        v39 = v38;
        v40 = [v38 messageAddress];

        if (v40)
        {
          v41 = [v40 idsIdentifier];

          sub_22A4DB79C();
          v37 = 0;
        }

        else
        {
          v37 = 1;
        }
      }

      v27(v18, v37, 1, v6);
      v42 = *(v55 + 48);
      v43 = v58;
      v44 = v57;
      sub_2295F2274(v58, v57);
      sub_2295F2274(v18, v44 + v42);
      v45 = v7[6];
      if (v45(v44, 1, v6) == 1)
      {
        sub_22953EAE4(v18, &unk_27D87D2A0, &unk_22A578BD0);
        v46 = v57;
        sub_22953EAE4(v43, &unk_27D87D2A0, &unk_22A578BD0);
        if (v45(v46 + v42, 1, v6) == 1)
        {
          sub_22953EAE4(v46, &unk_27D87D2A0, &unk_22A578BD0);
          v36 = 1;
          return v36 & 1;
        }
      }

      else
      {
        v47 = v53;
        sub_2295F2274(v44, v53);
        if (v45(v44 + v42, 1, v6) != 1)
        {
          v48 = v51[0];
          v52(v51[0], v44 + v42, v6);
          sub_22953E218(&qword_281403870, MEMORY[0x277CC95F0]);
          v36 = sub_22A4DD58C();
          v49 = v7[1];
          v49(v48, v6);
          sub_22953EAE4(v18, &unk_27D87D2A0, &unk_22A578BD0);
          sub_22953EAE4(v58, &unk_27D87D2A0, &unk_22A578BD0);
          v49(v47, v6);
          sub_22953EAE4(v44, &unk_27D87D2A0, &unk_22A578BD0);
          return v36 & 1;
        }

        sub_22953EAE4(v18, &unk_27D87D2A0, &unk_22A578BD0);
        v46 = v57;
        sub_22953EAE4(v58, &unk_27D87D2A0, &unk_22A578BD0);
        (v7[1])(v47, v6);
      }

      sub_22953EAE4(v46, &qword_27D87DBA0, &qword_22A57A158);
      v36 = 0;
      return v36 & 1;
    }

    v36 = 0;
  }

  else
  {
    (v7[7])(v22, 1, 1, v6);
    sub_22953EAE4(v22, &unk_27D87D2A0, &unk_22A578BD0);
    v36 = 0;
  }

  return v36 & 1;
}

uint64_t sub_22972C988(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v38 = a2;
  v39 = a5;
  v41 = sub_22A4DD26C();
  v44 = *(v41 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DD29C();
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v36 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  v37 = [a3 workQueue];
  aBlock[0] = a1;
  v20 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8802C0, &qword_22A57C008);
  MEMORY[0x22AACEC10](aBlock, v21);
  (*(v14 + 16))(v17, v19, v13);
  v22 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  (*(v14 + 32))(v24 + v22, v17, v13);
  v26 = v38;
  v25 = v39;
  *(v24 + v23) = v38;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v25;
  aBlock[4] = sub_22972EAA8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_33_0;
  v27 = _Block_copy(aBlock);
  v28 = a3;
  v29 = a4;
  v30 = v26;
  v31 = v36;
  sub_22A4DD28C();
  v45 = MEMORY[0x277D84F90];
  sub_22953E218(&qword_281401CF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_22953E5DC();
  v33 = v40;
  v32 = v41;
  sub_22A4DE03C();
  v34 = v37;
  MEMORY[0x22AAD0F80](0, v31, v33, v27);
  _Block_release(v27);

  (*(v44 + 8))(v33, v32);
  (*(v42 + 8))(v31, v43);
  (*(v14 + 8))(v19, v13);
}

void sub_22972CDC0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2297A46D4();
  v11 = sub_22A4DD05C();
  v12 = sub_22A4DDCCC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_229538000, v11, v12, "Received response from the remote fetch", v13, 2u);
    MEMORY[0x22AAD4E50](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160);
  sub_22A4DBA4C();
  v14 = v16[3];
  if (a4)
  {
    v16[2] = a4;
    v15 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_229562F68(0, &qword_281401778, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      a4 = v16[1];
    }

    else
    {
      a4 = 0;
    }
  }

  sub_22972CFC4(a2, v14, a4);
}

void sub_22972CFC4(void *a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_22A4DD07C();
  v216 = *(v8 - 8);
  v217 = v8;
  v9 = *(v216 + 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v189 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v213 = &v189 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v215 = &v189 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v214 = &v189 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v189 - v19;
  v21 = sub_22A4DD2FC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = (&v189 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v25 = [v3 workQueue];
  (*(v22 + 104))(v25, *MEMORY[0x277D85200], v21);
  v26 = sub_22A4DD31C();
  v28 = *(v22 + 8);
  v27 = v22 + 8;
  v28(v25, v21);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_53;
  }

  if (a3)
  {
    v29 = a3;
    sub_2297A46D4();
    v30 = v29;
    v31 = sub_22A4DD05C();
    v32 = sub_22A4DDCEC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v30;
      *v34 = a3;
      v35 = v30;
      _os_log_impl(&dword_229538000, v31, v32, "Fetch from the primary resident resulting an error: %@", v33, 0xCu);
      sub_22953EAE4(v34, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v33, -1, -1);
    }

    (*(v216 + 1))(v20, v217);
    v36 = v30;
    v37 = sub_22A4DB3DC();

LABEL_33:
    [a1 respondWithError_];

    return;
  }

  if (!a2)
  {
LABEL_30:
    sub_2297A46D4();
    v55 = sub_22A4DD05C();
    v56 = sub_22A4DDCEC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_229538000, v55, v56, "No network info or network service info included in fetched diagnostic info", v57, 2u);
      MEMORY[0x22AAD4E50](v57, -1, -1);
    }

    (*(v216 + 1))(v12, v217);
    v36 = [objc_opt_self() hmErrorWithCode_];
    v37 = sub_22A4DB3DC();
    goto LABEL_33;
  }

  v27 = a2;
  v38 = [v27 appleMediaAccessoryDiagnosticInfo];
  if (!v38)
  {
    goto LABEL_29;
  }

  v39 = v38;
  v40 = [v38 networkInfos];

  if (!v40 || (v219 = 0, sub_229562F68(0, &unk_27D8802D0, 0x277CD1718), sub_22A4DD82C(), v40, (v212 = v219) == 0))
  {
LABEL_29:

    goto LABEL_30;
  }

  v41 = [v27 appleMediaAccessoryDiagnosticInfo];
  if (!v41)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  v42 = v41;
  v43 = [v41 networkServiceInfos];

  if (!v43 || (v219 = 0, sub_229562F68(0, &unk_27D87D7A0, 0x277CD1720), sub_22A4DD82C(), v43, (v211 = v219) == 0))
  {

    goto LABEL_29;
  }

  a3 = MEMORY[0x277D84F90];
  v219 = MEMORY[0x277D84F90];
  v26 = v212 & 0xFFFFFFFFFFFFFF8;
  if (v212 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
  {
    v209 = ObjectType;
    v199 = a1;
    v204 = v27;
    if (!i)
    {
      break;
    }

    v208 = v26;
    v218 = a3;
    v26 = &v218;
    sub_229583A60(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v45 = 0;
    v46 = v218;
    v210 = v212 & 0xC000000000000001;
    while (1)
    {
      v47 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v210)
      {
        v48 = MEMORY[0x22AAD13F0](v45, v212);
      }

      else
      {
        if (v45 >= *(v208 + 16))
        {
          goto LABEL_55;
        }

        v48 = *(v212 + 8 * v45 + 32);
      }

      ObjectType = v48;
      v49 = [v48 ifaceName];
      if (!v49)
      {
        goto LABEL_145;
      }

      v26 = v49;
      a1 = sub_22A4DD5EC();
      v51 = v50;

      v218 = v46;
      v27 = *(v46 + 16);
      v52 = *(v46 + 24);
      v53 = (v27 + 1);
      if (v27 >= v52 >> 1)
      {
        v26 = &v218;
        sub_229583A60((v52 > 1), v27 + 1, 1);
        v53 = (v27 + 1);
        v46 = v218;
      }

      *(v46 + 16) = v53;
      v54 = (v46 + 24 * v27);
      v54[4] = a1;
      v54[5] = v51;
      v54[6] = ObjectType;
      ++v45;
      if (v47 == i)
      {
        v27 = v204;
        goto LABEL_36;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  if (a3[2])
  {
    v58 = a3[2];
LABEL_36:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8802E0, &qword_22A581170);
    v59 = sub_22A4DE40C();
    ObjectType = v209;
  }

  else
  {
    v59 = MEMORY[0x277D84F98];
  }

  v218 = v59;

  v61 = 0;
  sub_22972E6F0(v60, 1, &v218, sub_229898AC8, sub_229894964);

  v207 = v218;
  v62 = v211 & 0xFFFFFFFFFFFFFF8;
  if (!(v211 >> 62))
  {
    v63 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v63)
    {
      goto LABEL_59;
    }

    goto LABEL_39;
  }

  v63 = sub_22A4DE0EC();
  if (v63)
  {
LABEL_39:
    v208 = v62;
    v206 = 0;
    v218 = a3;
    v26 = &v218;
    sub_229583A20(0, v63 & ~(v63 >> 63), 0);
    if (v63 < 0)
    {
      goto LABEL_144;
    }

    v64 = 0;
    a3 = v218;
    v210 = v211 & 0xC000000000000001;
    while (1)
    {
      v65 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_54;
      }

      if (v210)
      {
        v66 = MEMORY[0x22AAD13F0](v64, v211);
      }

      else
      {
        if (v64 >= *(v208 + 16))
        {
          goto LABEL_56;
        }

        v66 = *(v211 + 8 * v64 + 32);
      }

      ObjectType = v66;
      v67 = [v66 ifaceName];
      if (!v67)
      {
        goto LABEL_146;
      }

      v26 = v67;
      v68 = sub_22A4DD5EC();
      a1 = v69;

      v218 = a3;
      v27 = a3[2];
      v70 = a3[3];
      if (v27 >= v70 >> 1)
      {
        v26 = &v218;
        sub_229583A20((v70 > 1), v27 + 1, 1);
        a3 = v218;
      }

      a3[2] = v27 + 1;
      v71 = &a3[3 * v27];
      v71[4] = v68;
      v71[5] = a1;
      v71[6] = ObjectType;
      ++v64;
      if (v65 == v63)
      {
        v27 = v204;
        v61 = v206;
        goto LABEL_60;
      }
    }
  }

LABEL_59:
  if (a3[2])
  {
LABEL_60:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8820F0, &qword_22A581178);
    v72 = sub_22A4DE40C();
  }

  else
  {
    v72 = MEMORY[0x277D84F98];
  }

  v218 = v72;

  sub_22972E6F0(v73, 1, &v218, sub_229898AB4, sub_229894950);
  v74 = v215;
  if (!v61)
  {

    v75 = v27;
    v76 = v218;
    v77 = [v75 appleMediaAccessoryDiagnosticInfo];
    v201 = [v77 wifiInfo];

    v78 = v207 + 64;
    v79 = 1 << *(v207 + 32);
    v80 = -1;
    if (v79 < 64)
    {
      v80 = ~(-1 << v79);
    }

    v81 = v80 & *(v207 + 64);
    v82 = (v79 + 63) >> 6;
    v83 = v216 + 8;

    v84 = 0;
    v200 = MEMORY[0x277D84F90];
    *&v85 = 136315138;
    v205 = v85;
    v203 = v83;
    v206 = v76;
    v210 = v78;
    v208 = v82;
LABEL_65:
    v86 = v84;
    while (v81)
    {
      v84 = v86;
LABEL_74:
      v87 = __clz(__rbit64(v81));
      v81 &= v81 - 1;
      v88 = v87 | (v84 << 6);
      v89 = (*(v207 + 48) + 16 * v88);
      v91 = *v89;
      v90 = v89[1];
      v92 = *(*(v207 + 56) + 8 * v88);
      v93 = v76;
      v94 = *(v76 + 16);

      v216 = v92;
      if (v94 && (v95 = sub_229543DBC(v91, v90), (v96 & 1) != 0))
      {
        v202 = *(*(v93 + 56) + 8 * v95);
        v97 = [v216 macAddress];
        if (v97)
        {
          v76 = v93;
          v113 = v97;
          sub_22A4DD5EC();
          v200 = v114;

          v115 = v202;
          v116 = [v202 ipv4Addresses];
          if (v116)
          {
            v218 = 0;
            v117 = v116;
            sub_22A4DD82C();

            v118 = v218;
          }

          else
          {
            v118 = 0;
          }

          v119 = [v115 ipv6Addresses];
          if (v119)
          {
            v218 = 0;
            v120 = v119;
            sub_22A4DD82C();

            v121 = v218;
          }

          else
          {
            v121 = 0;
          }

          v122 = [v115 networkSignatureV4];
          if (v122)
          {
            v123 = v122;
            v193 = sub_22A4DD5EC();
            v198 = v124;
          }

          else
          {
            v193 = 0;
            v198 = 0;
          }

          v125 = [v115 networkSignatureV6];
          if (v125)
          {
            v126 = v125;
            v192 = sub_22A4DD5EC();
            v197 = v127;
          }

          else
          {
            v192 = 0;
            v197 = 0;
          }

          v128 = [v115 routerIPv4];
          if (v128)
          {
            v129 = v128;
            v191 = sub_22A4DD5EC();
            v196 = v130;
          }

          else
          {
            v191 = 0;
            v196 = 0;
          }

          v131 = [v115 routerIPv6];
          if (v131)
          {
            v132 = v131;
            v190 = sub_22A4DD5EC();
            v195 = v133;
          }

          else
          {
            v190 = 0;
            v195 = 0;
          }

          if (v201)
          {
            v189 = v121;
            v194 = v118;
            v134 = v201;
            v135 = [v134 macAddress];
            if (!v135)
            {
              goto LABEL_148;
            }

            v136 = v135;

            sub_22A4DD5EC();

            v137 = sub_22A4DD65C();
            v139 = v138;

            v140 = sub_22A4DD65C();
            v142 = v141;

            if (v137 == v140 && v139 == v142)
            {

              v121 = v189;
              goto LABEL_108;
            }

            v143 = sub_22A4DE60C();

            v121 = v189;
            if (v143)
            {
LABEL_108:
              v144 = [v134 networkSSID];
              if (v144)
              {
                v145 = v144;
                sub_22A4DD5EC();
                v147 = v146;

                v148 = [v134 requiresPassword];
                if (v147)
                {
                  v149 = sub_22A4DD5AC();

                  goto LABEL_113;
                }
              }

              else
              {
                v148 = [v134 requiresPassword];
              }

              v149 = 0;
LABEL_113:
              v150 = [objc_allocWithZone(MEMORY[0x277CD1AC8]) initWithSSID:v149 requiresPassword:v148];

              v200 = v150;
            }

            else
            {

              v200 = 0;
            }

            v118 = v194;
          }

          else
          {

            v200 = 0;
          }

          if (v118)
          {
            v194 = sub_22A4DD81C();
          }

          else
          {
            v194 = 0;
          }

          v151 = v198;
          if (v121)
          {
            v198 = sub_22A4DD81C();
          }

          else
          {
            v198 = 0;
          }

          v152 = v196;
          v153 = v195;
          if (v151)
          {
            v196 = sub_22A4DD5AC();
          }

          else
          {
            v196 = 0;
          }

          if (v197)
          {
            v195 = sub_22A4DD5AC();
          }

          else
          {
            v195 = 0;
          }

          if (v152)
          {
            v154 = sub_22A4DD5AC();
          }

          else
          {
            v154 = 0;
          }

          if (v153)
          {
            v155 = sub_22A4DD5AC();
          }

          else
          {
            v155 = 0;
          }

          v156 = objc_allocWithZone(MEMORY[0x277CD1AA0]);
          v157 = v200;
          v188 = v154;
          v158 = v194;
          v159 = v198;
          v160 = v196;
          v161 = v154;
          v162 = v195;
          v197 = [v156 initWithIpv4Addresses:v194 ipv6Addresses:v198 ipv4NetworkSignature:v196 ipv6NetworkSignature:v195 binaryIPv4NetworkSignature:0 binaryIPv6NetworkSignature:0 routerIPV4:v188 routerIPV6:v155 wiFiInfo:v200];

          v163 = v197;
          MEMORY[0x22AAD09E0]();
          if (*((v219 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v219 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v164 = *((v219 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_22A4DD85C();
          }

          sub_22A4DD87C();

          v200 = v219;
          v74 = v215;
          v83 = v203;
          v78 = v210;
          v82 = v208;
          goto LABEL_65;
        }

        v98 = v214;
        sub_2297A46D4();

        v99 = sub_22A4DD05C();
        v100 = sub_22A4DDCEC();

        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v218 = v102;
          *v101 = v205;
          v103 = sub_2295A3E30(v91, v90, &v218);

          *(v101 + 4) = v103;
          _os_log_impl(&dword_229538000, v99, v100, "No mac address for %s, skipping", v101, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v102);
          v104 = v102;
          v83 = v203;
          MEMORY[0x22AAD4E50](v104, -1, -1);
          v105 = v101;
          v74 = v215;
          MEMORY[0x22AAD4E50](v105, -1, -1);
        }

        else
        {
        }

        (*v83)(v98, v217);
      }

      else
      {
        sub_2297A46D4();

        v106 = sub_22A4DD05C();
        v107 = sub_22A4DDCEC();

        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v218 = v109;
          *v108 = v205;
          v110 = sub_2295A3E30(v91, v90, &v218);

          *(v108 + 4) = v110;
          _os_log_impl(&dword_229538000, v106, v107, "No network service info for %s, skipping", v108, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v109);
          v111 = v109;
          v83 = v203;
          MEMORY[0x22AAD4E50](v111, -1, -1);
          v112 = v108;
          v74 = v215;
          MEMORY[0x22AAD4E50](v112, -1, -1);
        }

        else
        {
        }

        (*v83)(v74, v217);
      }

      v86 = v84;
      v76 = v206;
      v78 = v210;
      v82 = v208;
    }

    while (1)
    {
      v84 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        __break(1u);
        goto LABEL_143;
      }

      if (v84 >= v82)
      {
        break;
      }

      v81 = *(v78 + 8 * v84);
      ++v86;
      if (v81)
      {
        goto LABEL_74;
      }
    }

    v165 = v213;
    sub_2297A46D4();
    v166 = sub_22A4DD05C();
    v167 = sub_22A4DDCCC();
    if (os_log_type_enabled(v166, v167))
    {
      v168 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v218 = v169;
      *v168 = v205;
      v170 = sub_229562F68(0, &qword_27D8802F0, 0x277CD1AA0);

      v172 = MEMORY[0x22AAD0A20](v171, v170);
      v173 = v83;
      v175 = v174;

      v176 = sub_2295A3E30(v172, v175, &v218);

      *(v168 + 4) = v176;
      _os_log_impl(&dword_229538000, v166, v167, "Responding to the fetch request with %s", v168, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v169);
      MEMORY[0x22AAD4E50](v169, -1, -1);
      MEMORY[0x22AAD4E50](v168, -1, -1);

      (*v173)(v165, v217);
    }

    else
    {

      (*v83)(v165, v217);
    }

    v177 = v199;
    v178 = v204;
    sub_229562F68(0, &qword_27D8802F0, 0x277CD1AA0);

    v179 = sub_22A4DD81C();

    v180 = encodeRootObjectForXPC(v179);

    v181 = sub_22A4DB62C();
    v183 = v182;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    v185 = *MEMORY[0x277CCFF68];
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 40) = v186;
    *(inited + 48) = v181;
    *(inited + 56) = v183;
    sub_22956C148(v181, v183);
    sub_22956AC5C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v187 = sub_22A4DD47C();

    [v177 respondWithPayload:v187 error:0];

    sub_2295798D4(v181, v183);

    return;
  }

LABEL_149:
  swift_unexpectedError();
  __break(1u);
}

void sub_22972E6F0(void *a1, char a2, void *a3, void (*a4)(void), void (*a5)(uint64_t, uint64_t))
{
  v44 = a1[2];
  if (!v44)
  {
    goto LABEL_21;
  }

  LOBYTE(v8) = a2;
  v10 = a1[4];
  v9 = a1[5];
  v11 = a1[6];
  v12 = *a3;

  v13 = v11;
  v14 = sub_229543DBC(v10, v9);
  v16 = v12[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v20) = v15;
  if (v12[3] < v19)
  {
    a5(v19, v8 & 1);
    v21 = *a3;
    v14 = sub_229543DBC(v10, v9);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v14 = sub_22A4DE67C();
    __break(1u);
  }

  if (v8)
  {
LABEL_7:
    if (v20)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v25 = v14;
  a4();
  v14 = v25;
  if (v20)
  {
LABEL_8:
    v23 = swift_allocError();
    swift_willThrow();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v26 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  v27 = (v26[6] + 16 * v14);
  *v27 = v10;
  v27[1] = v9;
  *(v26[7] + 8 * v14) = v13;
  v28 = v26[2];
  v18 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A590BE0);
    sub_22A4DE31C();
    MEMORY[0x22AAD08C0](39, 0xE100000000000000);
    sub_22A4DE39C();
    __break(1u);
    return;
  }

  v26[2] = v29;
  if (v44 != 1)
  {
    v8 = (a1 + 9);
    v20 = 1;
    while (v20 < a1[2])
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v30 = *v8;
      v31 = *a3;

      v13 = v30;
      v32 = sub_229543DBC(v10, v9);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v18 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v18)
      {
        goto LABEL_23;
      }

      a4 = v33;
      if (v31[3] < v36)
      {
        a5(v36, 1);
        v37 = *a3;
        v32 = sub_229543DBC(v10, v9);
        if ((a4 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (a4)
      {
        goto LABEL_8;
      }

      v39 = *a3;
      *(*a3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v10;
      v40[1] = v9;
      *(v39[7] + 8 * v32) = v13;
      v41 = v39[2];
      v18 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v18)
      {
        goto LABEL_24;
      }

      ++v20;
      v39[2] = v42;
      v8 += 3;
      if (v44 == v20)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_22972EAA8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  sub_22972CDC0(v6, v7, v0 + v2, v4);
}

void sub_22972EB5C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_229729880(v5, v6, v0 + v2, v7, v8);
}

uint64_t sub_22972EC38()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8802F8);
  __swift_project_value_buffer(v0, qword_27D8802F8);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_22972ECCC()
{
  v15 = v0;
  if (qword_27D87BA68 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8802F8);

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    sub_22A4DB7DC();
    sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0]);
    v8 = sub_22A4DE5CC();
    v10 = sub_2295A3E30(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_229538000, v3, v4, "[%s] Configuring energy guidance server", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AAD4E50](v7, -1, -1);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  *(v0 + 24) = v11;
  *v11 = v0;
  v11[1] = sub_22972EEE8;
  v12 = *(v0 + 16);

  return sub_22972EFE0();
}

uint64_t sub_22972EEE8()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22972EFE0()
{
  *(v1 + 96) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  *(v1 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22972F07C, v0, 0);
}

uint64_t sub_22972F07C()
{
  v15 = v0;
  if (*(v0[12] + 128))
  {
    if (qword_27D87BA68 != -1)
    {
      swift_once();
      v13 = v0[12];
    }

    v1 = sub_22A4DD07C();
    __swift_project_value_buffer(v1, qword_27D8802F8);

    v2 = sub_22A4DD05C();
    v3 = sub_22A4DDCEC();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[12];
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v6;
      *v5 = 136315138;
      sub_22A4DB7DC();
      sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0]);
      v7 = sub_22A4DE5CC();
      v9 = sub_2295A3E30(v7, v8, &v14);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_229538000, v2, v3, "[%s] Matter service is already configured", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AAD4E50](v6, -1, -1);
      MEMORY[0x22AAD4E50](v5, -1, -1);
    }

    v10 = v0[13];

    v11 = v0[1];

    return v11();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22972F2B8, 0, 0);
  }
}

uint64_t sub_22972F2B8()
{
  *(v0 + 80) = &_s44AlvaradoGuidanceProviderServiceSpecificationVN;
  *(v0 + 88) = &off_283CE0330;
  _s7ServiceCMa();
  v1 = swift_allocObject();
  *(v0 + 112) = v1;
  __swift_mutable_project_boxed_opaque_existential_0(v0 + 56, &_s44AlvaradoGuidanceProviderServiceSpecificationVN);
  *(v0 + 40) = &_s44AlvaradoGuidanceProviderServiceSpecificationVN;
  *(v0 + 48) = &off_283CE0330;
  swift_defaultActor_initialize();
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 112) = 0xD000000000000018;
  *(v1 + 120) = 0x800000022A591820;
  sub_229557188((v0 + 16), v1 + 128);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_22972F3D8;
  v3 = *(v0 + 96);

  return sub_229731338();
}

uint64_t sub_22972F3D8()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22972F4E8, v2, 0);
}

uint64_t sub_22972F4E8()
{
  v1 = *(v0 + 96);
  sub_2297316E0(*(v0 + 112));
  v2 = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_22972F58C, v2, 0);
}

uint64_t sub_22972F58C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = *(v3 + 128);
  *(v3 + 128) = v1;

  v5 = sub_22A4DD9DC();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v1;

  sub_229568A2C(0, 0, v2, &unk_22A5812D8, v6);

  sub_22953EAE4(v2, &unk_27D87D8F0, &qword_22A578D70);
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_22972F6F0()
{
  v28 = v0;
  if (qword_27D87BA68 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8802F8);

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136315138;
    sub_22A4DB7DC();
    sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0]);
    v8 = sub_22A4DE5CC();
    v10 = sub_2295A3E30(v8, v9, &v27);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_229538000, v3, v4, "[%s] Unconfiguring energy guidance server", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AAD4E50](v7, -1, -1);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  v11 = v0[5];
  v12 = OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_notificationHandlerTasks;
  swift_beginAccess();
  v13 = *(v11 + v12);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = *(v11 + v12);

    v16 = 32;
    do
    {
      v17 = *(v13 + v16);

      sub_22A4DDA7C();

      v16 += 8;
      --v14;
    }

    while (v14);

    v18 = *(v11 + v12);
  }

  v19 = v0[5];
  *(v11 + v12) = MEMORY[0x277D84F90];

  v20 = OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherTask;
  v0[6] = OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherTask;
  v21 = *(v19 + v20);
  v0[7] = v21;
  if (v21)
  {

    sub_22A4DDA7C();
    v22 = *(MEMORY[0x277D857E0] + 4);
    v23 = swift_task_alloc();
    v0[8] = v23;
    *v23 = v0;
    v23[1] = sub_22972FA7C;

    return MEMORY[0x282200460]();
  }

  else
  {
    __swift_project_boxed_opaque_existential_0((v0[5] + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherFactory), *(v0[5] + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherFactory + 24));
    v24 = off_283CE3F68[0];
    type metadata accessor for GuidancePublisherFactory();
    v24();
    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_22972FA7C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22972FB8C, v2, 0);
}

uint64_t sub_22972FB8C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = *(v3 + v2);
  *(v3 + v2) = 0;

  __swift_project_boxed_opaque_existential_0((v0[5] + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherFactory), *(v0[5] + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherFactory + 24));
  v5 = off_283CE3F68[0];
  type metadata accessor for GuidancePublisherFactory();
  v5();
  v6 = v0[1];

  return v6();
}

uint64_t sub_22972FC48()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  v3 = *(v0 + 136);
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_homeSPIClientIdentifier;
  v5 = sub_22A4DB7DC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherFactory));
  v6 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherTask);

  MEMORY[0x22AAD4F90](v0 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_home);
  v7 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_notificationHandlerTasks);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22972FD10()
{
  sub_22972FC48();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22972FD64()
{
  result = sub_22A4DB7DC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_22972FE58(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = sub_22A4DC6EC();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();
  v7 = sub_22A4DC56C();
  v2[6] = v7;
  v8 = *(v7 - 8);
  v2[7] = v8;
  v9 = *(v8 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22972FF78, a2, 0);
}

uint64_t sub_22972FF78()
{
  v58 = v0;
  if (qword_27D87BA68 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v1 = v0[2];
    v2 = sub_22A4DD07C();
    __swift_project_value_buffer(v2, qword_27D8802F8);

    v3 = sub_22A4DD05C();
    v4 = sub_22A4DDCCC();

    v56 = v0;
    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[2];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v57 = v7;
      *v6 = 136315138;
      sub_22A4DB7DC();
      sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0]);
      v8 = sub_22A4DE5CC();
      v10 = sub_2295A3E30(v8, v9, &v57);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_229538000, v3, v4, "[%s] Starting energy guidance server", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x22AAD4E50](v7, -1, -1);
      MEMORY[0x22AAD4E50](v6, -1, -1);
    }

    v11 = v0[2];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = sub_2297308F4();
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    v15 = v0[2];

    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCCC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[2];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v57 = v20;
      *v19 = 136315394;
      sub_22A4DB7DC();
      sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0]);
      v21 = sub_22A4DE5CC();
      v23 = sub_2295A3E30(v21, v22, &v57);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v24 = sub_229690ADC();
      v25 = MEMORY[0x22AAD0A20](v14, v24);
      v27 = sub_2295A3E30(v25, v26, &v57);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_229538000, v16, v17, "[%s] Adding access for accessories: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v20, -1, -1);
      MEMORY[0x22AAD4E50](v19, -1, -1);
    }

    v28 = *(v0[2] + 128);
    v0[9] = v28;
    if (!v28)
    {

      v45 = swift_task_alloc();
      v0[12] = v45;
      *v45 = v0;
      v45[1] = sub_2297307C4;
      v46 = v0[2];

      return sub_229730A90();
    }

    v29 = v14 >> 62 ? sub_22A4DE0EC() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v29)
    {
      break;
    }

    v30 = 0;
    v54 = v14 & 0xFFFFFFFFFFFFFF8;
    v55 = v14 & 0xC000000000000001;
    v50 = (v0[4] + 32);
    v49 = *MEMORY[0x277D17190];
    v51 = v0[7];
    v31 = MEMORY[0x277D84F90];
    v52 = v29;
    v53 = v14;
    while (1)
    {
      if (v55)
      {
        v32 = MEMORY[0x22AAD13F0](v30, v14);
      }

      else
      {
        if (v30 >= *(v54 + 16))
        {
          goto LABEL_33;
        }

        v32 = *(v14 + 8 * v30 + 32);
      }

      v33 = v32;
      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      v35 = v0[8];
      v37 = v0[5];
      v36 = v0[6];
      v38 = v0[3];
      v39 = [v32 matterNodeID];
      [v39 unsignedLongLongValue];

      sub_22A4DC6DC();
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880350, &qword_22A581330) + 48);
      (*v50)(v35, v37, v38);
      *(v35 + v40) = 1;
      (*(v51 + 104))(v35, v49, v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_22958B7AC(0, v31[2] + 1, 1, v31);
      }

      v14 = v53;
      v42 = v31[2];
      v41 = v31[3];
      v0 = v56;
      if (v42 >= v41 >> 1)
      {
        v31 = sub_22958B7AC(v41 > 1, v42 + 1, 1, v31);
      }

      v43 = v56[8];
      v44 = v56[6];
      v31[2] = v42 + 1;
      (*(v51 + 32))(v31 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v42, v43, v44);
      ++v30;
      if (v34 == v52)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  v31 = MEMORY[0x277D84F90];
LABEL_29:
  v0[10] = v31;

  v48 = swift_task_alloc();
  v0[11] = v48;
  *v48 = v0;
  v48[1] = sub_229730644;

  return sub_2297463B0(v31);
}

uint64_t sub_229730644()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *v0;

  v6 = swift_task_alloc();
  *(v1 + 96) = v6;
  *v6 = v5;
  v6[1] = sub_2297307C4;
  v7 = *(v1 + 16);

  return sub_229730A90();
}

uint64_t sub_2297307C4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 40);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2297308F4()
{
  v1 = [v0 hapAccessories];
  sub_229690ADC();
  v2 = sub_22A4DD83C();

  v13 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AAD13F0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 supportsCleanEnergyAutomation];
      v9 = [v8 BOOLValue];

      if (v9)
      {
        sub_22A4DE27C();
        v10 = *(v13 + 16);
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        v11 = v13;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_18:

  return v11;
}

uint64_t sub_229730A90()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880358, &qword_22A581340);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v1[6] = *(v4 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229730BA8, v0, 0);
}

uint64_t sub_229730BA8()
{
  v45 = v0;
  v1 = v0[2];
  if (*(v1 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherTask) || *(v1 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_isConfiguringPublisher) == 1)
  {
    if (qword_27D87BA68 != -1)
    {
      swift_once();
      v39 = v0[2];
    }

    v2 = sub_22A4DD07C();
    __swift_project_value_buffer(v2, qword_27D8802F8);

    v3 = sub_22A4DD05C();
    v4 = sub_22A4DDCEC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[2];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v44 = v7;
      *v6 = 136315138;
      sub_22A4DB7DC();
      sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0]);
      v8 = sub_22A4DE5CC();
      v10 = sub_2295A3E30(v8, v9, &v44);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_229538000, v3, v4, "[%s] EnergyGuidanceProvider is already set", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x22AAD4E50](v7, -1, -1);
      MEMORY[0x22AAD4E50](v6, -1, -1);
    }
  }

  else
  {
    v42 = OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherTask;
    v43 = OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_isConfiguringPublisher;
    v16 = v0[8];
    *(v1 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_isConfiguringPublisher) = 1;
    v17 = *__swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherFactory), *(v1 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherFactory + 24));
    sub_2297811D0((v1 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_homeSPIClientIdentifier), v16);
    if (qword_27D87BA68 != -1)
    {
      swift_once();
    }

    v18 = v0[2];
    v19 = sub_22A4DD07C();
    __swift_project_value_buffer(v19, qword_27D8802F8);

    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCCC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v44 = v23;
      *v22 = 136315138;
      sub_22A4DB7DC();
      sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0]);
      v24 = sub_22A4DE5CC();
      v26 = sub_2295A3E30(v24, v25, &v44);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_229538000, v20, v21, "[%s] Starting task to fetch guidance", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AAD4E50](v23, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);
    }

    v28 = v0[7];
    v27 = v0[8];
    v29 = v0[5];
    v40 = v27;
    v41 = v0[6];
    v30 = v0[3];
    v31 = v0[4];
    v32 = v0[2];
    sub_22A4DD98C();
    v33 = sub_22A4DD9DC();
    (*(*(v33 - 8) + 56))(v30, 0, 1, v33);
    v34 = swift_allocObject();
    swift_weakInit();
    (*(v29 + 16))(v28, v27, v31);
    v35 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    (*(v29 + 32))(v36 + v35, v28, v31);
    *(v36 + ((v41 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
    v37 = sub_229568A2C(0, 0, v30, &unk_22A581350, v36);
    sub_22953EAE4(v30, &unk_27D87D8F0, &qword_22A578D70);
    (*(v29 + 8))(v40, v31);
    v38 = *(v1 + v42);
    *(v1 + v42) = v37;

    *(v1 + v43) = 0;
  }

  v12 = v0[7];
  v11 = v0[8];
  v13 = v0[3];

  v14 = v0[1];

  return v14();
}

uint64_t sub_22973110C()
{
  v15 = v0;
  if (qword_27D87BA68 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8802F8);

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    sub_22A4DB7DC();
    sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0]);
    v8 = sub_22A4DE5CC();
    v10 = sub_2295A3E30(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_229538000, v3, v4, "[%s] Stopping energy guidance server", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AAD4E50](v7, -1, -1);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  v11 = *(v0 + 16);
  if (*(v11 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherTask))
  {
    *(v11 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherTask) = 0;
    sub_22A4DDA7C();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_229731358()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_notificationHandlerTasks;
  v3 = swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {
    __break(1u);
    return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = v0[5];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v13 = v0[5];
    v14 = Strong;
    v15 = [Strong notificationCenter];
    v16 = sub_22A4DDE5C();
    v0[7] = v16;

    v17 = sub_229737E14(&qword_27D880370, type metadata accessor for DefaultEnergyGuidanceServerV2);
    v18 = swift_task_alloc();
    v0[8] = v18;
    v18[2] = v13;
    v18[3] = v16;
    v18[4] = v14;
    v19 = *(MEMORY[0x277D859E0] + 4);
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_229731550;
    v8 = sub_229737E5C;
    v7 = 0x800000022A58FDB0;
    v10 = MEMORY[0x277D84F78] + 8;
    v4 = v13;
    v5 = v17;
    v6 = 0xD00000000000001FLL;
    v9 = v18;

    return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_229731550()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22973167C, v3, 0);
}

uint64_t sub_22973167C()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2297316E0(void *a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = a1[24];
  v4 = a1[25];
  a1[24] = &unk_22A5812E8;
  a1[25] = v2;

  sub_2295571A0(v3);

  v5 = swift_allocObject();
  swift_weakInit();
  v7 = a1[26];
  v6 = a1[27];
  a1[26] = &unk_22A5812F8;
  a1[27] = v5;

  sub_2295571A0(v7);
}

uint64_t sub_2297317EC()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_229738B38;

    return sub_2297318D4();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2297318F4()
{
  v18 = v0;
  if (qword_27D87BA68 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8802F8);

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    sub_22A4DB7DC();
    sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0]);
    v8 = sub_22A4DE5CC();
    v10 = sub_2295A3E30(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_229538000, v3, v4, "[%s] MatterService handling preparation", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AAD4E50](v7, -1, -1);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  v11 = *(*(v0 + 16) + 112);
  v12 = *(MEMORY[0x277D0EF78] + 4);
  v16 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v13 = swift_task_alloc();
  *(v0 + 24) = v13;
  *v13 = v0;
  v13[1] = sub_229731B4C;
  v14 = *(v0 + 16);

  return v16();
}

void sub_229731B4C()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 16);

    MEMORY[0x2822009F8](sub_229580884, v5, 0);
  }
}

uint64_t sub_229731C80(char a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 64) = a1;
  return MEMORY[0x2822009F8](sub_229731CA4, 0, 0);
}

uint64_t sub_229731CA4()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_229731D94;
    v4 = *(v0 + 64);

    return sub_229731EA4(v4);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_229731D94()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_229731EA4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 33) = a1;
  return MEMORY[0x2822009F8](sub_229731EC8, v1, 0);
}

uint64_t sub_229731EC8()
{
  v23 = v0;
  if (qword_27D87BA68 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8802F8);

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = *(v0 + 33);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315394;
    sub_22A4DB7DC();
    sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0]);
    v9 = sub_22A4DE5CC();
    v11 = sub_2295A3E30(v9, v10, &v22);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v0 + 32) = v6;
    v12 = sub_22A4DD64C();
    v14 = sub_2295A3E30(v12, v13, &v22);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_229538000, v3, v4, "[%s] MatterService handling state update: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  if (*(v0 + 33))
  {
    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(*(v0 + 16) + 112);
    v18 = *(MEMORY[0x277D0EF78] + 4);
    v21 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
    v19 = swift_task_alloc();
    *(v0 + 24) = v19;
    *v19 = v0;
    v19[1] = sub_2297321BC;
    v20 = *(v0 + 16);

    return v21();
  }
}

void sub_2297321BC()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 16);

    MEMORY[0x2822009F8](sub_229738B3C, v5, 0);
  }
}

uint64_t sub_2297322F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_229732310, 0, 0);
}

uint64_t sub_229732310()
{
  v1 = *(v0[2] + 136);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_2297323AC;
  v3 = v0[3];

  return sub_229773D98(v3);
}

uint64_t sub_2297323AC()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2297324A8, 0, 0);
}

uint64_t sub_2297324A8()
{
  v14 = v0;
  if (qword_27D87BA68 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8802F8);

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    sub_22A4DB7DC();
    sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0]);
    v8 = sub_22A4DE5CC();
    v10 = sub_2295A3E30(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_229538000, v3, v4, "[%s] Configured Matter service", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AAD4E50](v7, -1, -1);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22973268C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880360, &qword_22A581358);
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v8 = *(v7 + 64) + 15;
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229732758, 0, 0);
}

uint64_t sub_229732758()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880358, &qword_22A581340);
  sub_22A4DDA3C();
  swift_beginAccess();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_229732840;
  v6 = v0[22];
  v7 = v0[20];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v7);
}

uint64_t sub_229732840()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22973293C, 0, 0);
}

uint64_t sub_22973293C()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 152);
    sub_229557188((v0 + 16), v0 + 56);
    Strong = swift_weakLoadStrong();
    *(v0 + 192) = Strong;
    if (!Strong)
    {
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      goto LABEL_11;
    }

    v3 = Strong;
    if (sub_22A4DDAAC())
    {
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

LABEL_11:
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      goto LABEL_12;
    }

    *(v0 + 200) = *(v3 + 112);
    v8 = swift_task_alloc();
    *(v0 + 208) = v8;
    *(v8 + 16) = v3;
    *(v8 + 24) = v0 + 56;
    v9 = *(MEMORY[0x277D0EF78] + 4);
    v12 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);

    v10 = swift_task_alloc();
    *(v0 + 216) = v10;
    *v10 = v0;
    v10[1] = sub_229732B7C;

    return v12();
  }

  else
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    if ((sub_22A4DDAAC() & 1) != 0 || (v4 = *(v0 + 152), swift_beginAccess(), v5 = swift_weakLoadStrong(), (*(v0 + 224) = v5) == 0))
    {
LABEL_12:
      v6 = *(v0 + 176);

      v7 = *(v0 + 8);

      return v7();
    }

    return MEMORY[0x2822009F8](sub_229732D78, v5, 0);
  }
}

void sub_229732B7C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 200);
    v6 = *(v2 + 208);

    MEMORY[0x2822009F8](sub_229732CC0, 0, 0);
  }
}

uint64_t sub_229732CC0()
{
  v1 = v0[24];

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = *(MEMORY[0x277D85798] + 4);
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_229732840;
  v4 = v0[22];
  v5 = v0[20];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_229732D78()
{
  v1 = v0[28];
  if (*(v1 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherTask))
  {
    *(v1 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherTask) = 0;
    sub_22A4DDA7C();
  }

  v2 = v0[22];

  v3 = v0[1];

  return v3();
}

uint64_t sub_229732E28(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22953ED8C;

  return sub_2297369F0(v5, a2);
}

uint64_t sub_229732ED0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8803E8, &qword_22A5815F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_229738260();
  sub_22A4DE80C();
  v18 = 0;
  sub_22A4DC70C();
  sub_229737E14(&qword_27D8803F0, MEMORY[0x277D171F8]);
  sub_22A4DE59C();
  if (!v2)
  {
    v11 = type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct(0);
    v12 = *(v11 + 20);
    v17 = 1;
    sub_22A4DE59C();
    v13 = *(v3 + *(v11 + 24));
    v16 = 2;
    sub_22A4DE56C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2297330C8()
{
  v1 = v0;
  sub_22A4DE77C();
  sub_22A4DC70C();
  sub_229737E14(&qword_27D8803F8, MEMORY[0x277D171F8]);
  sub_22A4DD4FC();
  v2 = type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct(0);
  v3 = v0 + *(v2 + 20);
  sub_22A4DD4FC();
  v4 = *(v1 + *(v2 + 24));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x22AAD1980](*&v4);
  return sub_22A4DE7BC();
}

uint64_t sub_2297331AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v34 = sub_22A4DC70C();
  v32 = *(v34 - 8);
  v4 = *(v32 + 64);
  v5 = MEMORY[0x28223BE20](v34);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8803D0, &qword_22A5815E8);
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_229738260();
  sub_22A4DE7FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v29 = v16;
  v30 = a1;
  v28 = v13;
  v39 = 0;
  sub_229737E14(&qword_27D8803E0, MEMORY[0x277D171F8]);
  v18 = v33;
  v19 = v34;
  sub_22A4DE4EC();
  v33 = *(v32 + 32);
  (v33)(v29, v18, v19);
  v38 = 1;
  v20 = v7;
  sub_22A4DE4EC();
  v22 = v28;
  v21 = v29;
  (v33)(&v29[*(v28 + 20)], v20, v19);
  v37 = 2;
  sub_22A4DE4BC();
  v23 = v21;
  v24 = v30;
  v26 = v25;
  (*(v35 + 8))(v12, v36);
  *(v23 + *(v22 + 24)) = v26;
  sub_2297382B4(v23, v31);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return sub_229738318(v23);
}

uint64_t *sub_2297335CC@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2297335E4()
{
  v1 = 0x656D6954646E65;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D69547472617473;
  }
}

uint64_t sub_229733640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_229738490(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_229733674@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_229733688(uint64_t a1)
{
  v2 = sub_229738260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2297336C4(uint64_t a1)
{
  v2 = sub_229738260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_229733734(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_22A4DC70C();
  sub_229737E14(&qword_27D8803F8, MEMORY[0x277D171F8]);
  sub_22A4DD4FC();
  v5 = v2 + *(a2 + 20);
  sub_22A4DD4FC();
  v6 = *(v4 + *(a2 + 24));
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return MEMORY[0x22AAD1980](*&v6);
}

uint64_t sub_2297337F8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_22A4DE77C();
  sub_22A4DC70C();
  sub_229737E14(&qword_27D8803F8, MEMORY[0x277D171F8]);
  sub_22A4DD4FC();
  v5 = v2 + *(a2 + 20);
  sub_22A4DD4FC();
  v6 = *(v4 + *(a2 + 24));
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x22AAD1980](*&v6);
  return sub_22A4DE7BC();
}

uint64_t sub_2297338D4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v16 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8803A0, &qword_22A5815D8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2297381B8();
  sub_22A4DE80C();
  v17 = a2;
  v18 = a3;
  v19 = 0;
  sub_22956C148(a2, a3);
  sub_22973820C();
  sub_22A4DE59C();
  sub_2295798D4(v17, v18);
  if (!v4)
  {
    v17 = v16;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8803B8, &qword_22A5815E0);
    sub_229738864(&qword_27D8803C0, &qword_27D8803C8);
    sub_22A4DE59C();
  }

  return (*(v9 + 8))(v12, v8);
}

void *sub_229733AD4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_229733AF4()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0x44496C616E676973;
  }

  *v0;
  return result;
}

uint64_t sub_229733B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44496C616E676973 && a2 == 0xE800000000000000;
  if (v6 || (sub_22A4DE60C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022A594700 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22A4DE60C();

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

uint64_t sub_229733C18@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_229733C34(uint64_t a1)
{
  v2 = sub_2297381B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_229733C70(uint64_t a1)
{
  v2 = sub_2297381B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_229733CAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2297385AC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_229733CFC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22A4DE77C();
  sub_22A4DB63C();
  sub_229735AE4(v5, v3);
  return sub_22A4DE7BC();
}

uint64_t sub_229733D60(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_22A4DB63C();

  return sub_229735AE4(a1, v5);
}

uint64_t sub_229733DA4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22A4DE77C();
  sub_22A4DB63C();
  sub_229735AE4(v5, v3);
  return sub_22A4DE7BC();
}

uint64_t sub_229733E04(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if ((sub_2297B7550(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_2296AF240(v2, v3);
}

uint64_t sub_229733E68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v32 = a3;
  v33 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v31 - v13;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = sub_22A4DD9DC();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v10, a1, v6);
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v7 + 32))(v20 + v17, v10, v6);
  v21 = v33;
  *(v20 + v18) = v32;
  *(v20 + v19) = v16;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;

  v22 = v21;
  v23 = v31;
  v24 = sub_22957F3C0(0, 0, v14, &unk_22A581380, v20);
  v25 = OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_notificationHandlerTasks;
  swift_beginAccess();
  v26 = *(v23 + v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + v25) = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_22958A8B4(0, v26[2] + 1, 1, v26);
    *(v23 + v25) = v26;
  }

  v29 = v26[2];
  v28 = v26[3];
  if (v29 >= v28 >> 1)
  {
    v26 = sub_22958A8B4((v28 > 1), v29 + 1, 1, v26);
  }

  v26[2] = v29 + 1;
  v26[v29 + 4] = v24;
  *(v23 + v25) = v26;
  return swift_endAccess();
}

uint64_t sub_229734188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_22A4DB21C();
  v7[15] = v8;
  v9 = *(v8 - 8);
  v7[16] = v9;
  v10 = *(v9 + 64) + 15;
  v7[17] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50) - 8) + 64) + 15;
  v7[18] = swift_task_alloc();
  v12 = sub_22A4DDE4C();
  v7[19] = v12;
  v13 = *(v12 - 8);
  v7[20] = v13;
  v14 = *(v13 + 64) + 15;
  v7[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297342E0, 0, 0);
}

uint64_t sub_2297342E0()
{
  v1 = v0[21];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  sub_22A4DD8FC();

  sub_22A4DDE3C();
  swift_beginAccess();
  v5 = sub_229737E14(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_229734410;
  v8 = v0[21];
  v9 = v0[18];
  v10 = v0[19];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_229734410()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_2297349FC;
  }

  else
  {
    v3 = sub_229734524;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229734540()
{
  v35 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_10:
    v13 = v0[17];
    (*(v0[20] + 8))(v0[21], v0[19]);

    v14 = v0[1];

    return v14();
  }

  (*(v3 + 32))(v0[17], v1, v2);
  if (qword_27D87BA68 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  v0[24] = __swift_project_value_buffer(v4, qword_27D8802F8);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCDC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v34);
    _os_log_impl(&dword_229538000, v5, v6, "%s - Received supports clean energy automation updated notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v9 = v0[13];
  Strong = swift_weakLoadStrong();
  v0[25] = Strong;
  if (!Strong)
  {
LABEL_9:
    (*(v0[16] + 8))(v0[17], v0[15]);
    v12 = v0[18];
    goto LABEL_10;
  }

  v11 = Strong;
  if (sub_22A4DDAAC())
  {

    goto LABEL_9;
  }

  v16 = v0[17];
  sub_22A4DB1FC();
  if (v0[5])
  {
    sub_229690ADC();
    if (swift_dynamicCast())
    {
      v0[26] = v0[10];

      return MEMORY[0x2822009F8](sub_229734A88, v11, 0);
    }
  }

  else
  {
    sub_22953EAE4((v0 + 2), &unk_27D87DE60, &unk_22A57A960);
  }

  v17 = v0[24];
  v18 = sub_22A4DD05C();
  v19 = sub_22A4DDCCC();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[25];
  v23 = v0[16];
  v22 = v0[17];
  v24 = v0[15];
  if (v20)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v34 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v34);
    _os_log_impl(&dword_229538000, v18, v19, "%s - Matter service is not available", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x22AAD4E50](v26, -1, -1);
    MEMORY[0x22AAD4E50](v25, -1, -1);
  }

  else
  {
    v27 = v0[25];
  }

  (*(v23 + 8))(v22, v24);
  v28 = sub_229737E14(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
  v29 = *(MEMORY[0x277D856D0] + 4);
  v30 = swift_task_alloc();
  v0[22] = v30;
  *v30 = v0;
  v30[1] = sub_229734410;
  v31 = v0[21];
  v32 = v0[18];
  v33 = v0[19];

  return MEMORY[0x282200308](v32, v33, v28);
}

uint64_t sub_2297349FC()
{
  *(v0 + 72) = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_229734A88()
{
  *(v0 + 216) = *(*(v0 + 200) + 128);

  return MEMORY[0x2822009F8](sub_229734AFC, 0, 0);
}

uint64_t sub_229734AFC()
{
  v25 = v0;
  v1 = v0[27];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[28] = v2;
    *v2 = v0;
    v2[1] = sub_229734D88;
    v4 = v0[25];
    v3 = v0[26];
    v5 = v0[14];

    return sub_229734FA8(v1, v3, v5);
  }

  else
  {

    v7 = v0[24];
    v8 = sub_22A4DD05C();
    v9 = sub_22A4DDCCC();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[25];
    v13 = v0[16];
    v12 = v0[17];
    v14 = v0[15];
    if (v10)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v24);
      _os_log_impl(&dword_229538000, v8, v9, "%s - Matter service is not available", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AAD4E50](v16, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }

    else
    {
      v17 = v0[25];
    }

    (*(v13 + 8))(v12, v14);
    v18 = sub_229737E14(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
    v19 = *(MEMORY[0x277D856D0] + 4);
    v20 = swift_task_alloc();
    v0[22] = v20;
    *v20 = v0;
    v20[1] = sub_229734410;
    v21 = v0[21];
    v22 = v0[18];
    v23 = v0[19];

    return MEMORY[0x282200308](v22, v23, v18);
  }
}

uint64_t sub_229734D88()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229734E84, 0, 0);
}

uint64_t sub_229734E84()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);

  (*(v4 + 8))(v3, v5);
  v6 = sub_229737E14(&qword_27D87DBC0, MEMORY[0x277CC9D68]);
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_229734410;
  v9 = *(v0 + 168);
  v10 = *(v0 + 144);
  v11 = *(v0 + 152);

  return MEMORY[0x282200308](v10, v11, v6);
}

uint64_t sub_229734FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v6 = sub_22A4DC6EC();
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v8 = *(v7 + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880378, &qword_22A581398) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v10 = sub_22A4DC56C();
  v4[13] = v10;
  v11 = *(v10 - 8);
  v4[14] = v11;
  v12 = *(v11 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229735110, a1, 0);
}

uint64_t sub_229735110()
{
  v1 = v0[5];
  swift_beginAccess();
  if (*(v1 + 168))
  {
    v2 = *(v0[5] + 176);
    v3 = *(v1 + 168);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v4 = sub_22A4DC5CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v0[17] = v4;
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_229735214;
  v6 = v0[5];

  return sub_229746624(v4);
}

uint64_t sub_229735214()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 64);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_229735340, v3, 0);
}

uint64_t sub_229735340()
{
  v1 = v0[8];
  v2 = *(v1 + 128);
  v0[19] = v2;
  if (v2)
  {
    v3 = v0[7];

    v4 = sub_2297308F4();
    v5 = v4;
    if (v4 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v7 = 0;
      v8 = v0[14];
      v42 = v5 & 0xFFFFFFFFFFFFFF8;
      v43 = v5 & 0xC000000000000001;
      v39 = (v0[10] + 32);
      v37 = (v8 + 56);
      v38 = (v8 + 104);
      v33 = v8;
      v35 = (v8 + 32);
      v36 = (v8 + 48);
      v44 = MEMORY[0x277D84F90];
      v34 = *MEMORY[0x277D17190];
      v40 = i;
      v41 = v5;
      while (1)
      {
        if (v43)
        {
          v10 = MEMORY[0x22AAD13F0](v7, v5);
        }

        else
        {
          if (v7 >= *(v42 + 16))
          {
            goto LABEL_22;
          }

          v10 = *(v5 + 8 * v7 + 32);
        }

        v11 = v10;
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v14 = v0[12];
        v13 = v0[13];
        v15 = v0[11];
        v16 = v0[9];
        v17 = [v10 matterNodeID];
        [v17 unsignedLongLongValue];

        sub_22A4DC6DC();
        v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880350, &qword_22A581330) + 48);
        (*v39)(v14, v15, v16);
        *(v14 + v18) = 1;
        (*v38)(v14, v34, v13);
        (*v37)(v14, 0, 1, v13);

        if ((*v36)(v14, 1, v13) == 1)
        {
          sub_22953EAE4(v0[12], &qword_27D880378, &qword_22A581398);
          v9 = v40;
          v5 = v41;
        }

        else
        {
          v19 = v0[15];
          v20 = v0[16];
          v21 = v0[13];
          v22 = *v35;
          (*v35)(v20, v0[12], v21);
          v22(v19, v20, v21);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_22958B7AC(0, v44[2] + 1, 1, v44);
          }

          v24 = v44[2];
          v23 = v44[3];
          v9 = v40;
          if (v24 >= v23 >> 1)
          {
            v44 = sub_22958B7AC(v23 > 1, v24 + 1, 1, v44);
          }

          v25 = v0[15];
          v26 = v0[13];
          v44[2] = v24 + 1;
          v22(v44 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24, v25, v26);
          v5 = v41;
        }

        ++v7;
        if (v12 == v9)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v44 = MEMORY[0x277D84F90];
LABEL_25:
    v0[20] = v44;

    v32 = swift_task_alloc();
    v0[21] = v32;
    *v32 = v0;
    v32[1] = sub_22973578C;

    return sub_2297463B0(v44);
  }

  else
  {
    v27 = *(v1 + 136);
    v28 = swift_task_alloc();
    v0[22] = v28;
    *v28 = v0;
    v28[1] = sub_229735978;
    v30 = v0[5];
    v29 = v0[6];

    return sub_229777054(v30, v29);
  }
}

uint64_t sub_22973578C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 64);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_2297358DC, v4, 0);
}

uint64_t sub_2297358DC()
{
  v1 = *(v0[8] + 136);
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_229735978;
  v4 = v0[5];
  v3 = v0[6];

  return sub_229777054(v4, v3);
}

uint64_t sub_229735978()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 88);
  v8 = *v0;

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_229735AE4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x22AAD1960](v8);
  if (v8)
  {
    v10 = *(v3 + 20);
    v11 = *(v3 + 24);
    v12 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_2297382B4(v12, v7);
      sub_22A4DC70C();
      sub_229737E14(&qword_27D8803F8, MEMORY[0x277D171F8]);
      sub_22A4DD4FC();
      sub_22A4DD4FC();
      v14 = *&v7[v11];
      if (v14 == 0.0)
      {
        v14 = 0.0;
      }

      MEMORY[0x22AAD1980](*&v14);
      result = sub_229738318(v7);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_229735C80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2297322F0(a1, v4, v5, v7, v6);
}

uint64_t sub_229735D40()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_229586D38;

  return sub_2297317CC(v0);
}

uint64_t sub_229735DD0(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229586D38;

  return sub_229731C80(a1, v1);
}

uint64_t sub_229735E68(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229586D38;

  return sub_2297310F0(a1, v1);
}

uint64_t sub_229735F04(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229586D38;

  return sub_22972FE58(a1, v1);
}

uint64_t sub_229735FA0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880358, &qword_22A581340) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_22973268C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2297360CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229569B30;

  return sub_229732E28(a1, v5, v4);
}

uint64_t sub_229736178(uint64_t a1)
{
  v2 = sub_22A4DB74C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v93 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_22A4DB19C();
  v96 = *(v92 - 8);
  v5 = *(v96 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_22A4DD41C();
  v7 = *(v91 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v91);
  v89 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v88 = &v76 - v11;
  v12 = type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct(0);
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = *(v86 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v94 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v95 = &v76 - v16;
  v17 = sub_22A4DB7DC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22A4DD44C();
  v99 = v22;
  v100 = &off_283CE4900;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v98);
  (*(*(v22 - 8) + 32))(boxed_opaque_existential_1, a1, v22);
  __swift_project_boxed_opaque_existential_0(v98, v99);
  sub_22A4DD3AC();
  v24 = sub_22A4DB77C();
  (*(v18 + 8))(v21, v17);
  v25 = [v24 hmf_bytesAsData];
  v26 = sub_22A4DB62C();
  v28 = v27;

  __swift_project_boxed_opaque_existential_0(v98, v99);
  v29 = *(sub_22A4DD42C() + 16);

  __swift_project_boxed_opaque_existential_0(v98, v99);
  result = sub_22A4DD42C();
  v31 = result;
  v32 = *(result + 16);
  if (v29 < 0x19)
  {
    if (!v32)
    {

      goto LABEL_14;
    }

    v78 = v28;
    v79 = v26;
    v80 = v24;
    v97 = MEMORY[0x277D84F90];
    sub_229583AA0(0, v32, 0);
    v84 = *(v7 + 16);
    v57 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v77 = v31;
    v58 = (v31 + v57);
    v83 = *(v7 + 72);
    v59 = v97;
    v82 = (v96 + 8);
    v85 = v7 + 16;
    v81 = (v7 + 8);
    v60 = v94;
    do
    {
      v95 = v32;
      v96 = v59;
      v61 = v88;
      v94 = v58;
      v62 = v91;
      v63 = v84;
      v84(v88, v58, v91);
      v64 = v89;
      v63(v89, v61, v62);
      v65 = v90;
      sub_22A4DD40C();
      sub_22A4DB18C();
      v66 = *v82;
      v67 = v92;
      (*v82)(v65, v92);
      sub_22A4DC71C();
      sub_22A4DD40C();
      sub_22A4DB16C();
      v66(v65, v67);
      v68 = v87;
      v69 = v60 + *(v87 + 20);
      sub_22A4DC71C();
      sub_22A4DD3FC();
      v71 = v70;
      v72 = *v81;
      v73 = v64;
      v59 = v96;
      (*v81)(v73, v62);
      v72(v61, v62);
      *(v60 + *(v68 + 24)) = v71;
      v97 = v59;
      v75 = *(v59 + 16);
      v74 = *(v59 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_229583AA0(v74 > 1, v75 + 1, 1);
        v59 = v97;
      }

      *(v59 + 16) = v75 + 1;
      sub_229737DB0(v60, v59 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v75);
      v58 = &v94[v83];
      v32 = (v95 - 1);
    }

    while (v95 != 1);
LABEL_13:

    v26 = v79;
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0(v98);
    return v26;
  }

  if (v32 >= 0x18)
  {
    v78 = v28;
    v79 = v26;
    v80 = v24;
    v33 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v77 = result;
    v34 = result + v33;
    v97 = MEMORY[0x277D84F90];
    v35 = 24;
    sub_229583AA0(0, 24, 0);
    v36 = v34;
    v38 = *(v7 + 16);
    v37 = v7 + 16;
    v84 = v38;
    v83 = *(v37 + 56);
    v39 = v97;
    v82 = (v96 + 8);
    v85 = v37;
    v81 = (v37 - 8);
    v40 = v95;
    v41 = v88;
    v42 = (v96 + 8);
    do
    {
      v94 = v36;
      v95 = v35;
      v96 = v39;
      v43 = v91;
      v44 = v84;
      (v84)(v41);
      v45 = v89;
      v44(v89, v41, v43);
      v46 = v90;
      sub_22A4DD40C();
      sub_22A4DB18C();
      v47 = *v42;
      v48 = v92;
      (*v42)(v46, v92);
      sub_22A4DC71C();
      sub_22A4DD40C();
      sub_22A4DB16C();
      v47(v46, v48);
      v49 = v87;
      v50 = v40 + *(v87 + 20);
      sub_22A4DC71C();
      sub_22A4DD3FC();
      v52 = v51;
      v53 = *v81;
      v54 = v45;
      v39 = v96;
      (*v81)(v54, v43);
      v53(v41, v43);
      *(v40 + *(v49 + 24)) = v52;
      v97 = v39;
      v56 = *(v39 + 16);
      v55 = *(v39 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_229583AA0(v55 > 1, v56 + 1, 1);
        v39 = v97;
      }

      *(v39 + 16) = v56 + 1;
      sub_229737DB0(v40, v39 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v56);
      v36 = &v94[v83];
      v35 = (v95 - 1);
    }

    while (v95 != 1);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_2297369F0(uint64_t a1, uint64_t a2)
{
  v2[29] = a2;
  v5 = sub_22A4DD44C();
  v2[5] = v5;
  v2[6] = &off_283CE4900;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1, v5);

  return MEMORY[0x2822009F8](sub_229736AB4, a2, 0);
}

uint64_t sub_229736AB4()
{
  v15 = v0;
  v1 = *(v0[29] + 128);
  v0[30] = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_229736D00, v1, 0);
  }

  else
  {
    if (qword_27D87BA68 != -1)
    {
      swift_once();
      v12 = v0[29];
    }

    v2 = sub_22A4DD07C();
    __swift_project_value_buffer(v2, qword_27D8802F8);

    v3 = sub_22A4DD05C();
    v4 = sub_22A4DDCEC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[29];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315138;
      sub_22A4DB7DC();
      sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0]);
      v8 = sub_22A4DE5CC();
      v10 = sub_2295A3E30(v8, v9, &v14);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_229538000, v3, v4, "[%s] MatterService is nil! Cannot publish guidance", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x22AAD4E50](v7, -1, -1);
      MEMORY[0x22AAD4E50](v6, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_229736D00()
{
  v1 = v0[30];
  swift_beginAccess();
  v2 = *(v1 + 168);
  v0[31] = v2;
  if (v2)
  {
    v3 = v0[29];
    v0[32] = *(v0[30] + 176);
    swift_unknownObjectRetain();
    v4 = sub_229736FB0;
    v5 = v3;
  }

  else
  {
    v5 = v0[29];
    v4 = sub_229736DB0;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_229736DB0()
{
  v16 = v0;
  if (qword_27D87BA68 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8802F8);

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCEC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[30];
  if (v5)
  {
    v7 = v0[29];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    sub_22A4DB7DC();
    sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0]);
    v10 = sub_22A4DE5CC();
    v12 = sub_2295A3E30(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_229538000, v3, v4, "[%s] AlvaradoGuidanceProvider is nil! Cannot publish guidance", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v13 = v0[1];

  return v13();
}

uint64_t sub_229736FB0()
{
  v77 = v0;
  v1 = v0[31];
  swift_getObjectType();
  if (qword_27D87BA20 != -1)
  {
    swift_once();
    v71 = v0[31];
  }

  v2 = v0[32];
  v3 = sub_22A4DCC4C();
  __swift_project_value_buffer(v3, qword_27D8AB8F0);
  v4 = sub_22A4DC5FC();
  swift_unknownObjectRelease();
  if (!v4)
  {
    if (qword_27D87BA68 != -1)
    {
      swift_once();
    }

    v31 = v0[29];
    v32 = sub_22A4DD07C();
    __swift_project_value_buffer(v32, qword_27D8802F8);

    v33 = sub_22A4DD05C();
    v34 = sub_22A4DDCEC();

    v35 = os_log_type_enabled(v33, v34);
    v36 = v0[30];
    if (v35)
    {
      v37 = v0[29];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v76[0] = v39;
      *v38 = 136315138;
      sub_22A4DB7DC();
      sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0]);
      v40 = sub_22A4DE5CC();
      v42 = sub_2295A3E30(v40, v41, v76);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_229538000, v33, v34, "[%s] AlvaradoGuidanceProvider is nil! Cannot publish guidance", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AAD4E50](v39, -1, -1);
      MEMORY[0x22AAD4E50](v38, -1, -1);
    }

    goto LABEL_29;
  }

  v5 = v0[32];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getObjectType();
  if (qword_27D87BA28 != -1)
  {
    swift_once();
  }

  v6 = sub_22A4DCDAC();
  __swift_project_value_buffer(v6, qword_27D8AB908);
  if (!sub_22A4DC5AC())
  {
    if (qword_27D87BA68 != -1)
    {
      swift_once();
    }

    v43 = v0[29];
    v44 = sub_22A4DD07C();
    __swift_project_value_buffer(v44, qword_27D8802F8);

    v45 = sub_22A4DD05C();
    v46 = sub_22A4DDCEC();

    v47 = os_log_type_enabled(v45, v46);
    v48 = v0[30];
    if (v47)
    {
      v49 = v0[29];
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v76[0] = v51;
      *v50 = 136315138;
      sub_22A4DB7DC();
      sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0]);
      v52 = sub_22A4DE5CC();
      v54 = sub_2295A3E30(v52, v53, v76);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_229538000, v45, v46, "[%s] GuidanceSignalForecast attribute is nil! Cannot publish guidance", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x22AAD4E50](v51, -1, -1);
      MEMORY[0x22AAD4E50](v50, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_29:

    goto LABEL_30;
  }

  sub_22957F1C4((v0 + 2), (v0 + 7));
  v7 = v0[10];
  v8 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 7), v7);
  v9 = *(v7 - 8);
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  (*(v9 + 16))(v11, v8, v7);
  v12 = sub_229736178(v11);
  v14 = v13;
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v17 = *(v16 + 16);
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v18 = *(sub_22A4DD42C() + 16);

  v19 = &OBJC_IVAR___HMCRedirectorChange__context;
  if (v17 != v18)
  {
    if (qword_27D87BA68 != -1)
    {
      swift_once();
    }

    v20 = v0[29];
    v21 = sub_22A4DD07C();
    __swift_project_value_buffer(v21, qword_27D8802F8);
    sub_22957F1C4((v0 + 2), (v0 + 12));
    sub_22956C148(v12, v14);

    sub_22956C148(v12, v14);

    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCDC();

    if (os_log_type_enabled(v22, v23))
    {
      v74 = v23;
      v24 = v0[29];
      v25 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v76[0] = v73;
      *v25 = 136315650;
      sub_22A4DB7DC();
      sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0]);
      v19 = &OBJC_IVAR___HMCRedirectorChange__context;
      v26 = sub_22A4DE5CC();
      v28 = sub_2295A3E30(v26, v27, v76);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2048;
      v29 = *(v16 + 16);
      sub_2295798D4(v12, v14);

      *(v25 + 14) = v29;
      sub_2295798D4(v12, v14);

      *(v25 + 22) = 2048;
      __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
      v30 = *(sub_22A4DD42C() + 16);

      __swift_destroy_boxed_opaque_existential_0(v0 + 12);
      *(v25 + 24) = v30;
      _os_log_impl(&dword_229538000, v22, v74, "[%s] Guidance signal is too large to publish. Truncated to %ld values. Original size: %ld", v25, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x22AAD4E50](v73, -1, -1);
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v0 + 12);
      sub_2295798D4(v12, v14);

      sub_2295798D4(v12, v14);
    }
  }

  if (*(v19 + 333) != -1)
  {
    swift_once();
  }

  v55 = v0[29];
  v56 = sub_22A4DD07C();
  __swift_project_value_buffer(v56, qword_27D8802F8);

  sub_22956C148(v12, v14);

  v57 = sub_22A4DD05C();
  v58 = sub_22A4DDCCC();

  sub_2295798D4(v12, v14);

  if (os_log_type_enabled(v57, v58))
  {
    v59 = v0[29];
    v75 = v12;
    v60 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v76[0] = v72;
    *v60 = 136315394;
    sub_22A4DB7DC();
    sub_229737E14(&qword_281403860, MEMORY[0x277CC95F0]);
    v61 = sub_22A4DE5CC();
    v63 = sub_2295A3E30(v61, v62, v76);

    *(v60 + 4) = v63;
    *(v60 + 12) = 2080;
    v0[26] = v75;
    v0[27] = v14;
    v0[28] = v16;
    sub_22956C148(v75, v14);

    v64 = sub_22A4DD64C();
    v66 = sub_2295A3E30(v64, v65, v76);

    *(v60 + 14) = v66;
    _os_log_impl(&dword_229538000, v57, v58, "[%s] Setting guidance signal forecast: %s", v60, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v72, -1, -1);
    v67 = v60;
    v12 = v75;
    MEMORY[0x22AAD4E50](v67, -1, -1);
  }

  v0[20] = v12;
  v0[21] = v14;
  v0[22] = v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_229737D3C();
  sub_22A4DC60C();
  v70 = v0[30];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_2295798D4(v12, v14);

LABEL_30:
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v68 = v0[1];

  return v68();
}

unint64_t sub_229737D3C()
{
  result = qword_27D880368;
  if (!qword_27D880368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880368);
  }

  return result;
}

uint64_t sub_229737DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_229737E14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_229737E68(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_229586D38;

  return sub_229734188(a1, v9, v10, v1 + v6, v11, v12, v13);
}

uint64_t sub_229737FE8()
{
  result = sub_22A4DC70C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t sub_229738080(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2297380C8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_22973811C()
{
  result = qword_27D880390;
  if (!qword_27D880390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880390);
  }

  return result;
}

unint64_t sub_2297381B8()
{
  result = qword_27D8803A8;
  if (!qword_27D8803A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8803A8);
  }

  return result;
}

unint64_t sub_22973820C()
{
  result = qword_27D8803B0;
  if (!qword_27D8803B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8803B0);
  }

  return result;
}

unint64_t sub_229738260()
{
  result = qword_27D8803D8;
  if (!qword_27D8803D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8803D8);
  }

  return result;
}

uint64_t sub_2297382B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_229738318(uint64_t a1)
{
  v2 = type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_229738374(uint64_t a1, uint64_t a2)
{
  sub_22A4DC70C();
  sub_229737E14(&qword_27D87EE18, MEMORY[0x277D171F8]);
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  if (v8 != v7)
  {
    return 0;
  }

  v4 = type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct(0);
  v5 = *(v4 + 20);
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
}

uint64_t sub_229738490(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_22A4DE60C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000 || (sub_22A4DE60C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22A4DE60C();

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

uint64_t sub_2297385AC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880400, &qword_22A5815F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v8);
  sub_2297381B8();
  sub_22A4DE7FC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v12 = 0;
    sub_229738810();
    sub_22A4DE4EC();
    v8 = v13;
    v10 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8803B8, &qword_22A5815E0);
    v12 = 1;
    sub_229738864(&qword_27D880410, &qword_27D880418);
    sub_22A4DE4EC();
    (*(v4 + 8))(v7, v3);
    sub_22956C148(v8, v10);

    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_2295798D4(v8, v10);
  }

  return v8;
}

unint64_t sub_229738810()
{
  result = qword_27D880408;
  if (!qword_27D880408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880408);
  }

  return result;
}

uint64_t sub_229738864(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8803B8, &qword_22A5815E0);
    sub_229737E14(a2, type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_229738928()
{
  result = qword_27D880420;
  if (!qword_27D880420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880420);
  }

  return result;
}

unint64_t sub_229738984()
{
  result = qword_27D880428;
  if (!qword_27D880428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880428);
  }

  return result;
}

unint64_t sub_2297389DC()
{
  result = qword_27D880430;
  if (!qword_27D880430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880430);
  }

  return result;
}

unint64_t sub_229738A34()
{
  result = qword_27D880438;
  if (!qword_27D880438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880438);
  }

  return result;
}

unint64_t sub_229738A8C()
{
  result = qword_27D880440;
  if (!qword_27D880440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880440);
  }

  return result;
}

unint64_t sub_229738AE4()
{
  result = qword_27D880448;
  if (!qword_27D880448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880448);
  }

  return result;
}

void sub_229738B40()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v101 = sub_22A4DD26C();
  v94 = *(v101 - 8);
  v2 = *(v94 + 64);
  MEMORY[0x28223BE20](v101);
  v100 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_22A4DD29C();
  v93 = *(v99 - 8);
  v4 = *(v93 + 64);
  MEMORY[0x28223BE20](v99);
  v98 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_22A4DD07C();
  v6 = *(v102 - 1);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v102);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v91 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v91 - v15;
  MEMORY[0x28223BE20](v14);
  v95 = &v91 - v17;
  v18 = sub_22A4DD2FC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v22 = [v1 workQueue];
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v23 = sub_22A4DD31C();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    goto LABEL_48;
  }

  if (![v1 isAllowedToEnableAdaptiveTemperatureAutomations])
  {
    sub_2297A46D4();
    v38 = v1;
    v39 = sub_22A4DD05C();
    v40 = sub_22A4DDCEC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = v6;
      v43 = swift_slowAlloc();
      v106[0] = v43;
      *v41 = 136315394;
      aBlock = 91;
      v104 = 0xE100000000000000;
      v44 = [v38 logIdentifier];
      v45 = sub_22A4DD5EC();
      v47 = v46;

      MEMORY[0x22AAD08C0](v45, v47);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v48 = sub_2295A3E30(aBlock, v104, v106);

      *(v41 + 4) = v48;
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_2295A3E30(0xD000000000000038, 0x800000022A594A90, v106);
      _os_log_impl(&dword_229538000, v39, v40, "[%s %s] Enablement is not yet allowed", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v43, -1, -1);
      MEMORY[0x22AAD4E50](v41, -1, -1);

      (*(v42 + 8))(v10, v102);
    }

    else
    {

      (*(v6 + 8))(v10, v102);
    }

    return;
  }

  if (([v1 isOwnerUser] & 1) == 0 && !objc_msgSend(v1, sel_isAdminUser))
  {
    v49 = v6;
    sub_2297A46D4();
    v50 = v1;
    v51 = sub_22A4DD05C();
    v52 = sub_22A4DDCCC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v106[0] = v54;
      *v53 = 136315394;
      aBlock = 91;
      v104 = 0xE100000000000000;
      v55 = [v50 logIdentifier];
      v56 = sub_22A4DD5EC();
      v58 = v57;

      MEMORY[0x22AAD08C0](v56, v58);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v59 = sub_2295A3E30(aBlock, v104, v106);

      *(v53 + 4) = v59;
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_2295A3E30(0xD000000000000038, 0x800000022A594A90, v106);
      _os_log_impl(&dword_229538000, v51, v52, "[%s %s] Enablement is only handled by owner or admin user", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v54, -1, -1);
      MEMORY[0x22AAD4E50](v53, -1, -1);
    }

    (*(v49 + 8))(v13, v102);
    return;
  }

  v24 = [v1 homeManager];
  if (!v24)
  {
LABEL_28:
    v60 = v6;
    sub_2297A46D4();
    v61 = v1;
    v62 = sub_22A4DD05C();
    v63 = sub_22A4DDCCC();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v106[0] = v65;
      *v64 = 136315394;
      aBlock = 91;
      v104 = 0xE100000000000000;
      v66 = [v61 logIdentifier];
      v67 = sub_22A4DD5EC();
      v69 = v68;

      MEMORY[0x22AAD08C0](v67, v69);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v70 = sub_2295A3E30(aBlock, v104, v106);

      *(v64 + 4) = v70;
      *(v64 + 12) = 2080;
      *(v64 + 14) = sub_2295A3E30(0xD000000000000038, 0x800000022A594A90, v106);
      _os_log_impl(&dword_229538000, v62, v63, "[%s %s] Enablement is only handled after home graph has loaded", v64, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v65, -1, -1);
      MEMORY[0x22AAD4E50](v64, -1, -1);
    }

    (*(v60 + 8))(v16, v102);
    return;
  }

  v25 = v24;
  if (![v24 hasLoadedData])
  {

    goto LABEL_28;
  }

  v92 = v25;
  v26 = [v1 hapAccessories];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  v16 = sub_22A4DD83C();

  aBlock = MEMORY[0x277D84F90];
  if (v16 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
  {
    v28 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v91 = v1;
    v97 = v6;
    v29 = 0;
    v6 = v16 & 0xFFFFFFFFFFFFFF8;
    v30 = &selRef_applicationProxyForIdentifier_;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x22AAD13F0](v29, v16);
      }

      else
      {
        if (v29 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v31 = *(v16 + 8 * v29 + 32);
      }

      v32 = v31;
      v1 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v33 = [v31 supportsAdaptiveTemperatureAutomations];
      v34 = [v33 v30[444]];

      if (!v34 || (v35 = [v32 hasOnboardedForAdaptiveTemperatureAutomations], v36 = objc_msgSend(v35, v30[444]), v35, (v36 & 1) != 0))
      {
      }

      else
      {
        sub_22A4DE27C();
        v37 = *(aBlock + 16);
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
      }

      ++v29;
      v30 = &selRef_applicationProxyForIdentifier_;
      if (v1 == i)
      {
        v28 = aBlock;
        v6 = v97;
        v1 = v91;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

LABEL_32:

  if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
  {
    v97 = sub_22A4DE0EC();
    if (v97)
    {
      goto LABEL_35;
    }

LABEL_51:

    v79 = v95;
    sub_2297A46D4();
    v80 = v1;
    v81 = sub_22A4DD05C();
    v82 = sub_22A4DDCCC();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = v6;
      v85 = swift_slowAlloc();
      v106[0] = v85;
      *v83 = 136315394;
      aBlock = 91;
      v104 = 0xE100000000000000;
      v86 = [v80 logIdentifier];
      v87 = sub_22A4DD5EC();
      v89 = v88;

      MEMORY[0x22AAD08C0](v87, v89);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v90 = sub_2295A3E30(aBlock, v104, v106);

      *(v83 + 4) = v90;
      *(v83 + 12) = 2080;
      *(v83 + 14) = sub_2295A3E30(0xD000000000000038, 0x800000022A594A90, v106);
      _os_log_impl(&dword_229538000, v81, v82, "[%s %s] Found no eligible accessories to onboard", v83, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v85, -1, -1);
      MEMORY[0x22AAD4E50](v83, -1, -1);

      (*(v84 + 8))(v79, v102);
    }

    else
    {

      (*(v6 + 8))(v79, v102);
    }

    return;
  }

  v97 = *(v28 + 16);
  if (!v97)
  {
    goto LABEL_51;
  }

LABEL_35:
  v71 = 0;
  v95 = v105;
  ObjectType = v28 & 0xC000000000000001;
  v93 += 8;
  v94 += 8;
  while (ObjectType)
  {
    v73 = MEMORY[0x22AAD13F0](v71, v28);
    v72 = MEMORY[0x277D84F90];
    v1 = (v71 + 1);
    if (__OFADD__(v71, 1))
    {
      goto LABEL_43;
    }

LABEL_39:
    v74 = [v73 workQueue];
    v75 = swift_allocObject();
    *(v75 + 16) = v73;
    v105[2] = sub_229746344;
    v105[3] = v75;
    aBlock = MEMORY[0x277D85DD0];
    v104 = 1107296256;
    v105[0] = sub_22953E640;
    v105[1] = &block_descriptor_53_1;
    v76 = _Block_copy(&aBlock);
    v102 = v73;
    v6 = v98;
    sub_22A4DD28C();
    v106[0] = v72;
    v16 = sub_229746354(&qword_281401CF0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    sub_22953E5DC();
    v78 = v100;
    v77 = v101;
    sub_22A4DE03C();
    MEMORY[0x22AAD0F80](0, v6, v78, v76);
    _Block_release(v76);

    (*v94)(v78, v77);
    (*v93)(v6, v99);

    ++v71;
    if (v1 == v97)
    {
      goto LABEL_44;
    }
  }

  v72 = MEMORY[0x277D84F90];
  if (v71 >= *(v28 + 16))
  {
    goto LABEL_47;
  }

  v73 = *(v28 + 8 * v71 + 32);
  v1 = (v71 + 1);
  if (!__OFADD__(v71, 1))
  {
    goto LABEL_39;
  }

LABEL_43:
  __break(1u);
LABEL_44:
}

uint64_t sub_229739994(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229739A88, 0, 0);
}

uint64_t sub_229739A88()
{
  v119 = v0;
  v1 = v0[5];
  v109 = v0;
  if (!sub_22973A7D0())
  {
    v17 = v0[9];
    v19 = v0[5];
    v18 = v0[6];
    sub_2297A46D4();
    v20 = v19;
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCCC();

    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[8];
    v24 = v0[9];
    v26 = v0[7];
    if (v23)
    {
      v112 = v0[9];
      v27 = v0[5];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 136315394;
      v116 = v29;
      v117 = 91;
      v118 = 0xE100000000000000;
      v30 = [v27 logIdentifier];
      v31 = sub_22A4DD5EC();
      v33 = v32;

      MEMORY[0x22AAD08C0](v31, v33);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v34 = sub_2295A3E30(91, 0xE100000000000000, &v116);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A594A40, &v116);
      _os_log_impl(&dword_229538000, v21, v22, "%s %s YES - No accessories with adaptive temperature automations enabled", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v29, -1, -1);
      MEMORY[0x22AAD4E50](v28, -1, -1);

      (*(v25 + 8))(v112, v26);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
    }

    v36 = v0[11];
    v35 = v0[12];
    v38 = v0[9];
    v37 = v0[10];

    v39 = v0[1];
    goto LABEL_40;
  }

  if (!v0[4])
  {
    v60 = v0[10];
    v62 = v0[5];
    v61 = v0[6];
    sub_2297A46D4();
    v63 = v62;
    v64 = sub_22A4DD05C();
    v65 = sub_22A4DDCEC();

    v66 = os_log_type_enabled(v64, v65);
    v67 = v0[10];
    v69 = v0[7];
    v68 = v0[8];
    if (v66)
    {
      v114 = v0[10];
      v70 = v0[5];
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = 136315394;
      v116 = v72;
      v117 = 91;
      v118 = 0xE100000000000000;
      v73 = [v70 logIdentifier];
      v74 = sub_22A4DD5EC();
      v76 = v75;

      MEMORY[0x22AAD08C0](v74, v76);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v77 = sub_2295A3E30(91, 0xE100000000000000, &v116);

      *(v71 + 4) = v77;
      *(v71 + 12) = 2080;
      *(v71 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A594A40, &v116);
      _os_log_impl(&dword_229538000, v64, v65, "%s %s NO - missing query controller, could not verify invited account capabilities", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v72, -1, -1);
      MEMORY[0x22AAD4E50](v71, -1, -1);

      (*(v68 + 8))(v114, v69);
    }

    else
    {

      (*(v68 + 8))(v67, v69);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
    goto LABEL_39;
  }

  v2 = v0[3];
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v107 = v0[4];
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  v3 = sub_22A4DE0EC();
  if (!v3)
  {
LABEL_35:
    v85 = v0[11];
    v86 = v0[5];
    v87 = v0[6];
    swift_unknownObjectRetain();
    sub_2297A46D4();
    v88 = v86;
    v89 = sub_22A4DD05C();
    v90 = sub_22A4DDCEC();

    v91 = os_log_type_enabled(v89, v90);
    v92 = v0[11];
    v93 = v0[7];
    v94 = v0[8];
    if (v91)
    {
      v115 = v0[7];
      v95 = v0[5];
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v96 = 136315394;
      v116 = v97;
      v117 = 91;
      v118 = 0xE100000000000000;
      v98 = [v95 logIdentifier];
      v99 = sub_22A4DD5EC();
      v101 = v100;

      MEMORY[0x22AAD08C0](v99, v101);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v102 = sub_2295A3E30(v117, v118, &v116);

      *(v96 + 4) = v102;
      *(v96 + 12) = 2080;
      *(v96 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A594A40, &v116);
      _os_log_impl(&dword_229538000, v89, v90, "%s %s NO - missing invitations, could not verify invited account capabilities", v96, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v97, -1, -1);
      MEMORY[0x22AAD4E50](v96, -1, -1);

      (*(v94 + 8))(v92, v115);
    }

    else
    {

      (*(v94 + 8))(v92, v93);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_39:
    v104 = v109[11];
    v103 = v109[12];
    v106 = v109[9];
    v105 = v109[10];

    v39 = v109[1];
LABEL_40:

    return v39();
  }

LABEL_5:
  v111 = v2 & 0xC000000000000001;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  v5 = v0[3] + 32;
  swift_unknownObjectRetain();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v108 = v3;
  do
  {
    if (v111)
    {
      v9 = MEMORY[0x22AAD13F0](v6, v0[3]);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_33;
      }

      v9 = *(v5 + 8 * v6);
    }

    v10 = v9;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v12 = v0[5];
    v13 = v0[6];
    v116 = v9;
    sub_22973A8FC(&v116, v12, &v117);

    v2 = v118;
    if (v118)
    {
      v14 = v117;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_22958A53C(0, *(v7 + 2) + 1, 1, v7);
      }

      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      if (v16 >= v15 >> 1)
      {
        v7 = sub_22958A53C((v15 > 1), v16 + 1, 1, v7);
      }

      *(v7 + 2) = v16 + 1;
      v8 = &v7[16 * v16];
      *(v8 + 4) = v14;
      *(v8 + 5) = v2;
      v3 = v108;
      v0 = v109;
    }

    ++v6;
  }

  while (v11 != v3);
  v40 = v0[12];
  v41 = v0[5];
  v42 = v0[6];
  sub_2297A46D4();
  v43 = v41;

  v44 = sub_22A4DD05C();
  v45 = sub_22A4DDCCC();

  v46 = os_log_type_enabled(v44, v45);
  v47 = v0[12];
  v48 = v0[7];
  v49 = v0[8];
  if (v46)
  {
    v113 = v0[7];
    v50 = v0[5];
    v51 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *v51 = 136315650;
    v116 = v110;
    v117 = 91;
    v118 = 0xE100000000000000;
    v52 = [v50 logIdentifier];
    v53 = sub_22A4DD5EC();
    v55 = v54;

    MEMORY[0x22AAD08C0](v53, v55);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v56 = sub_2295A3E30(v117, v118, &v116);

    *(v51 + 4) = v56;
    *(v51 + 12) = 2080;
    *(v51 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A594A40, &v116);
    *(v51 + 22) = 2080;
    v0[2] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    v57 = sub_22A4DBA6C();
    v59 = sub_2295A3E30(v57, v58, &v116);

    *(v51 + 24) = v59;
    _os_log_impl(&dword_229538000, v44, v45, "%s %s Verifying capabilities of invited account(s): %s", v51, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v110, -1, -1);
    MEMORY[0x22AAD4E50](v51, -1, -1);

    (*(v49 + 8))(v47, v113);
  }

  else
  {

    (*(v49 + 8))(v47, v48);
  }

  v78 = v0[5];
  ObjectType = swift_getObjectType();
  v80 = sub_229869FC0(v7);
  v0[13] = v80;

  v81 = [objc_opt_self() refreshIDInfo];
  v0[14] = v81;
  v82 = [v78 workQueue];
  v0[15] = v82;
  v83 = swift_task_alloc();
  v0[16] = v83;
  *v83 = v0;
  v83[1] = sub_22973A560;

  return sub_22973AF24(v80, v81, v82, ObjectType);
}

uint64_t sub_22973A560()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_22973A724;
  }

  else
  {
    v5 = *(v2 + 112);
    v6 = *(v2 + 104);

    v4 = sub_22973A694;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22973A694()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_22973A724()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);
  v3 = *(v0 + 32);

  swift_unknownObjectRelease();
  v4 = *(v0 + 136);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);

  v9 = *(v0 + 8);

  return v9();
}

BOOL sub_22973A7D0()
{
  v1 = [v0 hapAccessories];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  v2 = sub_22A4DD83C();

  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_22A4DE0EC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x22AAD13F0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 isAdaptiveTemperatureAutomationsEnabled];

    v4 = v5 + 1;
  }

  while (!v8);

  return v3 != v5;
}

void sub_22973A8FC(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22A4DD07C();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v54 - v12;
  v14 = *a1;
  v15 = [v14 user];
  if (!v15)
  {
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [v15 accountHandle];

  if (v17)
  {
    v18 = [v17 type];
    if (v18 == 2)
    {
      v19 = [v17 value];
      if (!v19)
      {
        sub_22A4DD5EC();
        v19 = sub_22A4DD5AC();
      }

      v20 = IDSCopyIDForPhoneNumber();
      goto LABEL_14;
    }

    if (v18 == 1)
    {
      v19 = [v17 value];
      if (!v19)
      {
        sub_22A4DD5EC();
        v19 = sub_22A4DD5AC();
      }

      v20 = MEMORY[0x22AAD2AB0](v19);
LABEL_14:
      v35 = v20;

      if (v35)
      {
        v36 = sub_22A4DD5EC();
        v38 = v37;
      }

      else
      {

        v36 = 0;
        v38 = 0;
      }

      *a3 = v36;
      a3[1] = v38;
      return;
    }

    v56 = v3;
    sub_2297A46D4();
    v39 = a2;
    v40 = v17;
    v41 = sub_22A4DD05C();
    v42 = sub_22A4DDCEC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v57 = a3;
      v44 = v43;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v62 = v55;
      *v44 = 136315650;
      v60 = 91;
      v61 = 0xE100000000000000;
      v45 = [v39 logIdentifier];
      v46 = sub_22A4DD5EC();
      v48 = v47;

      MEMORY[0x22AAD08C0](v46, v48);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v49 = sub_2295A3E30(v60, v61, &v62);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A594A40, &v62);
      *(v44 + 22) = 2112;
      *(v44 + 24) = v40;
      v50 = v54;
      *v54 = v17;
      v51 = v40;
      _os_log_impl(&dword_229538000, v41, v42, "%s %s Ignoring handle with unsupported type: %@", v44, 0x20u);
      sub_22953EAE4(v50, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v50, -1, -1);
      v52 = v55;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v52, -1, -1);
      v53 = v44;
      a3 = v57;
      MEMORY[0x22AAD4E50](v53, -1, -1);
    }

    else
    {
    }

    (*(v58 + 8))(v13, v59);
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v57 = a3;
    sub_2297A46D4();
    v21 = a2;
    v22 = v14;
    v23 = sub_22A4DD05C();
    v24 = sub_22A4DDCEC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v62 = v56;
      *v25 = 136315650;
      v60 = 91;
      v61 = 0xE100000000000000;
      v26 = [v21 logIdentifier];
      v27 = sub_22A4DD5EC();
      v29 = v28;

      MEMORY[0x22AAD08C0](v27, v29);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v30 = sub_2295A3E30(v60, v61, &v62);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A594A40, &v62);
      *(v25 + 22) = 2112;
      *(v25 + 24) = v22;
      v31 = v55;
      *v55 = v22;
      v32 = v22;
      _os_log_impl(&dword_229538000, v23, v24, "%s %s Ignoring invitation with missing handle: %@", v25, 0x20u);
      sub_22953EAE4(v31, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v31, -1, -1);
      v33 = v56;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v33, -1, -1);
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    (*(v58 + 8))(v11, v59);
    v34 = v57;
    *v57 = 0;
    v34[1] = 0;
  }
}

uint64_t sub_22973AF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22973AF4C, 0, 0);
}

uint64_t sub_22973AF4C()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_22973B04C;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000059, 0x800000022A5948F0, sub_22974603C, v2, v6);
}

uint64_t sub_22973B04C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_22973B168;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22973B168()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_22973B360(int a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  sub_229562F68(0, &unk_27D8805A0, off_2786662C8);
  v7 = sub_22A4DD83C();
  v4[5] = v7;
  swift_unknownObjectRetain();
  a4;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_22973B45C;

  return sub_229739994(v7, a2);
}

uint64_t sub_22973B45C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  swift_unknownObjectRelease();

  if (v0)
  {
    if (v5)
    {
      v9 = *(v2 + 32);
      v10 = sub_22A4DB3DC();

      (v9)[2](v9, v10);
      _Block_release(v9);
    }

    else
    {
    }
  }

  else if (v5)
  {
    v11 = *(v2 + 32);
    v11[2](v11, 0);
    _Block_release(v11);
  }

  v12 = *(v8 + 8);

  return v12();
}

void sub_22973B638()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v69 = sub_22A4DD07C();
  v3 = *(v69 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v69);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v67 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v67 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v67 - v14;
  v16 = [objc_msgSend(v1 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v16)
  {
    if ([v1 isCurrentDevicePrimaryResident])
    {
      v67 = ObjectType;
      sub_2297A46D4();
      v17 = v1;
      v18 = sub_22A4DD05C();
      v19 = sub_22A4DDCCC();

      v20 = os_log_type_enabled(v18, v19);
      v68 = v3;
      if (v20)
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 136315394;
        v70 = 91;
        v71 = 0xE100000000000000;
        v72 = v22;
        v23 = [v17 logIdentifier];
        v24 = sub_22A4DD5EC();
        v26 = v25;

        MEMORY[0x22AAD08C0](v24, v26);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v27 = sub_2295A3E30(v70, v71, &v72);

        *(v21 + 4) = v27;
        *(v21 + 12) = 2080;
        *(v21 + 14) = sub_2295A3E30(0xD00000000000004BLL, 0x800000022A5947D0, &v72);
        _os_log_impl(&dword_229538000, v18, v19, "%s %s Configuring", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v22, -1, -1);
        MEMORY[0x22AAD4E50](v21, -1, -1);

        v28 = v68;
      }

      else
      {

        v28 = v3;
      }

      v51 = *(v28 + 8);
      v51(v15, v69);
      v52 = [v17 notificationCenter];
      [v52 addObserver:v17 selector:sel_handleValenciaEnabledStateAttributeChanged_ name:@"HMDAccessoryValenciaStateEnabledAttributeChanged" object:0];

      v53 = [v17 notificationCenter];
      [v53 addObserver:v17 selector:sel_handleHomePresenceUpdate_ name:@"HMDHomePresenceUpdateNotification" object:0];

      v54 = [v17 notificationCenter];
      [v54 addObserver:v17 selector:sel_handleNotificationsForIsAllowedToEnableAdaptiveTemperatureAutomations_ name:@"HMDHomeUserAddedNotification" object:0];

      v55 = [v17 notificationCenter];
      [v55 addObserver:v17 selector:sel_handleNotificationsForIsAllowedToEnableAdaptiveTemperatureAutomations_ name:@"HMDHomeUserRemovedNotification" object:0];

      sub_2297A46D4();
      v56 = v17;
      v57 = sub_22A4DD05C();
      v58 = sub_22A4DDCCC();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v67 = v51;
        v61 = v60;
        *v59 = 136315394;
        v70 = 91;
        v71 = 0xE100000000000000;
        v72 = v60;
        v62 = [v56 logIdentifier];
        v63 = sub_22A4DD5EC();
        v65 = v64;

        MEMORY[0x22AAD08C0](v63, v65);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v66 = sub_2295A3E30(v70, v71, &v72);

        *(v59 + 4) = v66;
        *(v59 + 12) = 2080;
        *(v59 + 14) = sub_2295A3E30(0xD00000000000004BLL, 0x800000022A5947D0, &v72);
        _os_log_impl(&dword_229538000, v57, v58, "%s %s Handling primary resident change", v59, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v61, -1, -1);
        MEMORY[0x22AAD4E50](v59, -1, -1);

        v67(v13, v69);
      }

      else
      {

        v51(v13, v69);
      }

      sub_22973BF64();
    }

    else
    {
      sub_2297A46D4();
      v40 = v1;
      v41 = sub_22A4DD05C();
      v42 = sub_22A4DDCCC();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 136315394;
        v70 = 91;
        v71 = 0xE100000000000000;
        v72 = v44;
        v45 = v3;
        v46 = [v40 logIdentifier];
        v47 = sub_22A4DD5EC();
        v49 = v48;

        MEMORY[0x22AAD08C0](v47, v49);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v50 = sub_2295A3E30(v70, v71, &v72);

        *(v43 + 4) = v50;
        *(v43 + 12) = 2080;
        *(v43 + 14) = sub_2295A3E30(0xD00000000000004BLL, 0x800000022A5947D0, &v72);
        _os_log_impl(&dword_229538000, v41, v42, "%s %s Current device is not the primary resident", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v44, -1, -1);
        MEMORY[0x22AAD4E50](v43, -1, -1);

        (*(v45 + 8))(v10, v69);
      }

      else
      {

        (*(v3 + 8))(v10, v69);
      }
    }
  }

  else
  {
    sub_2297A46D4();
    v29 = v1;
    v30 = sub_22A4DD05C();
    v31 = sub_22A4DDCCC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 136315394;
      v70 = 91;
      v71 = 0xE100000000000000;
      v72 = v33;
      v34 = v3;
      v35 = [v29 logIdentifier];
      v36 = sub_22A4DD5EC();
      v38 = v37;

      MEMORY[0x22AAD08C0](v36, v38);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v39 = sub_2295A3E30(v70, v71, &v72);

      *(v32 + 4) = v39;
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_2295A3E30(0xD00000000000004BLL, 0x800000022A5947D0, &v72);
      _os_log_impl(&dword_229538000, v30, v31, "%s %s Not configuring adaptive temperature automation notifications because HomeAS features it not enabled", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v33, -1, -1);
      MEMORY[0x22AAD4E50](v32, -1, -1);

      (*(v34 + 8))(v7, v69);
    }

    else
    {

      (*(v3 + 8))(v7, v69);
    }
  }
}

void sub_22973BF64()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v76 - v5;
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v76 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v76 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v76 - v19;
  if (![v1 isCurrentDeviceConfirmedPrimaryResident])
  {
    sub_2297A46D4();
    v32 = v1;
    v33 = sub_22A4DD05C();
    v34 = sub_22A4DDCEC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 136315394;
      v78 = 91;
      v79 = 0xE100000000000000;
      v80 = v36;
      v37 = [v32 logIdentifier];
      v38 = sub_22A4DD5EC();
      v40 = v39;

      MEMORY[0x22AAD08C0](v38, v40);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v41 = sub_2295A3E30(v78, v79, &v80);

      *(v35 + 4) = v41;
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v80);
      _os_log_impl(&dword_229538000, v33, v34, "%s %s Not evaluating because current device is not primary resident", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v36, -1, -1);
      MEMORY[0x22AAD4E50](v35, -1, -1);
    }

    v42 = *(v8 + 8);
    v43 = v12;
    goto LABEL_20;
  }

  v21 = [v1 homeActivityStateManager];
  if (!v21)
  {
    sub_2297A46D4();
    v44 = v1;
    v45 = sub_22A4DD05C();
    v46 = sub_22A4DDCEC();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 136315394;
      v78 = 91;
      v79 = 0xE100000000000000;
      v80 = v48;
      v49 = [v44 logIdentifier];
      v50 = sub_22A4DD5EC();
      v52 = v51;

      MEMORY[0x22AAD08C0](v50, v52);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v53 = sub_2295A3E30(v78, v79, &v80);

      *(v47 + 4) = v53;
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v80);
      _os_log_impl(&dword_229538000, v45, v46, "%s %s Missing home activity state manager", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v48, -1, -1);
      MEMORY[0x22AAD4E50](v47, -1, -1);
    }

    v42 = *(v8 + 8);
    v43 = v15;
LABEL_20:
    v42(v43, v7);
    return;
  }

  v22 = v21;
  v23 = [v21 userActivityStatesDetails];
  if (!v23)
  {
    sub_2297A46D4();
    v54 = v1;
    v55 = sub_22A4DD05C();
    v56 = sub_22A4DDCEC();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 136315394;
      v78 = 91;
      v79 = 0xE100000000000000;
      v80 = v58;
      v59 = [v54 logIdentifier];
      v60 = sub_22A4DD5EC();
      v77 = v7;
      v62 = v61;

      MEMORY[0x22AAD08C0](v60, v62);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v63 = sub_2295A3E30(v78, v79, &v80);

      *(v57 + 4) = v63;
      *(v57 + 12) = 2080;
      *(v57 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v80);
      _os_log_impl(&dword_229538000, v55, v56, "%s %s Missing user activity state details", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v58, -1, -1);
      MEMORY[0x22AAD4E50](v57, -1, -1);

      (*(v8 + 8))(v18, v77);
      return;
    }

    v42 = *(v8 + 8);
    v43 = v18;
    goto LABEL_20;
  }

  v24 = v23;
  v25 = [v1 users];
  if (v25)
  {
    v26 = v25;
    sub_229562F68(0, &qword_281401790, off_278666348);
    v27 = sub_22A4DD83C();

    if (v27 >> 62)
    {
      v28 = sub_22A4DE0EC();
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v28)
    {
      v29 = sub_22A4DD9DC();
      (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
      v30 = swift_allocObject();
      v30[2] = 0;
      v30[3] = 0;
      v30[4] = v1;
      v30[5] = v24;
      v30[6] = ObjectType;
      v31 = v1;
      sub_22957F3C0(0, 0, v6, &unk_22A581908, v30);
    }

    else
    {
      sub_2297A46D4();
      v64 = v1;
      v65 = sub_22A4DD05C();
      v66 = sub_22A4DDCCC();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v76[0] = v68;
        *v67 = 136315394;
        v78 = 91;
        v79 = 0xE100000000000000;
        v80 = v68;
        v69 = [v64 logIdentifier];
        v70 = sub_22A4DD5EC();
        v76[1] = v64;
        v77 = v7;
        v71 = v70;
        v73 = v72;

        MEMORY[0x22AAD08C0](v71, v73);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v74 = sub_2295A3E30(v78, v79, &v80);

        *(v67 + 4) = v74;
        *(v67 + 12) = 2080;
        *(v67 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v80);
        _os_log_impl(&dword_229538000, v65, v66, "%s %s Evaluated false because there are no users in the home", v67, 0x16u);
        v75 = v76[0];
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v75, -1, -1);
        MEMORY[0x22AAD4E50](v67, -1, -1);

        (*(v8 + 8))(v20, v77);
      }

      else
      {

        (*(v8 + 8))(v20, v7);
      }

      sub_22973CDE8(0);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_22973C8B0()
{
  swift_getObjectType();
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  v9 = [objc_msgSend(v0 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_2297A46D4();
    v10 = v0;
    v11 = sub_22A4DD05C();
    v12 = sub_22A4DDCCC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 136315394;
      v35 = 91;
      v36 = 0xE100000000000000;
      v37 = v14;
      v15 = [v10 logIdentifier];
      v16 = sub_22A4DD5EC();
      v34 = v1;
      v18 = v17;

      MEMORY[0x22AAD08C0](v16, v18);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v19 = sub_2295A3E30(v35, v36, &v37);

      *(v13 + 4) = v19;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_2295A3E30(0xD000000000000049, 0x800000022A594780, &v37);
      _os_log_impl(&dword_229538000, v11, v12, "%s %s Unconfiguring", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v14, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);

      (*(v2 + 8))(v8, v34);
    }

    else
    {

      (*(v2 + 8))(v8, v1);
    }

    v30 = [v10 notificationCenter];
    [v30 removeObserver:v10 name:@"HMDAccessoryValenciaStateEnabledAttributeChanged" object:0];

    v31 = [v10 notificationCenter];
    [v31 removeObserver:v10 name:@"HMDHomePresenceUpdateNotification" object:0];

    v32 = [v10 notificationCenter];
    [v32 removeObserver:v10 name:@"HMDHomeUserAddedNotification" object:0];

    v33 = [v10 notificationCenter];
    [v33 removeObserver:v10 name:@"HMDHomeUserRemovedNotification" object:0];
  }

  else
  {
    sub_2297A46D4();
    v20 = v0;
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCCC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 136315394;
      v35 = 91;
      v36 = 0xE100000000000000;
      v37 = v24;
      v25 = [v20 logIdentifier];
      v26 = sub_22A4DD5EC();
      v28 = v27;

      MEMORY[0x22AAD08C0](v26, v28);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v29 = sub_2295A3E30(v35, v36, &v37);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_2295A3E30(0xD000000000000049, 0x800000022A594780, &v37);
      _os_log_impl(&dword_229538000, v21, v22, "%s %s Not configuring adaptive temperature automation notifications because HomeAS feature is not enabled", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
  }
}

id sub_22973CDE8(int a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v45 - v7;
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  if (([v2 isAllowedToEnableAdaptiveTemperatureAutomations] ^ a1))
  {
    result = [v2 swiftExtensions];
    if (result)
    {
      v18 = result;
      swift_getObjectType();
      result = swift_conformsToProtocol2();
      if (result)
      {
        v19 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_homeStorage;
        swift_beginAccess();
        sub_229564F88(v18 + v19, &v46, &unk_27D8804B0, &qword_22A581910);
        swift_unknownObjectRelease();
        if (v47)
        {
          sub_229557188(&v46, &v48);
          v20 = sub_22A4DD9DC();
          (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
          sub_22957F1C4(&v48, &v46);
          v21 = swift_allocObject();
          *(v21 + 16) = 0;
          *(v21 + 24) = 0;
          sub_229557188(&v46, v21 + 32);
          *(v21 + 72) = a1 & 1;
          *(v21 + 80) = v2;
          *(v21 + 88) = ObjectType;
          v22 = v2;
          sub_22957F3C0(0, 0, v8, &unk_22A581920, v21);

          return __swift_destroy_boxed_opaque_existential_0(&v48);
        }

        sub_22953EAE4(&v46, &unk_27D8804B0, &qword_22A581910);
        sub_2297A46D4();
        v35 = v2;
        v36 = sub_22A4DD05C();
        v37 = sub_22A4DDCEC();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *&v46 = v39;
          *v38 = 136315650;
          v48 = 91;
          v49 = 0xE100000000000000;
          v40 = [v35 logIdentifier];
          v41 = sub_22A4DD5EC();
          v45 = v9;
          v43 = v42;

          MEMORY[0x22AAD08C0](v41, v43);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v44 = sub_2295A3E30(v48, v49, &v46);

          *(v38 + 4) = v44;
          *(v38 + 12) = 2080;
          *(v38 + 14) = sub_2295A3E30(0xD000000000000037, 0x800000022A594860, &v46);
          *(v38 + 22) = 1024;
          *(v38 + 24) = a1 & 1;
          _os_log_impl(&dword_229538000, v36, v37, "%s %s Failed to save %{BOOL}d because home is missing storage", v38, 0x1Cu);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v39, -1, -1);
          MEMORY[0x22AAD4E50](v38, -1, -1);

          return (*(v10 + 8))(v14, v45);
        }

        v33 = *(v10 + 8);
        v34 = v14;
        return v33(v34, v9);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_2297A46D4();
  v23 = v2;
  v24 = sub_22A4DD05C();
  v25 = sub_22A4DDCCC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v46 = v27;
    *v26 = 136315650;
    v48 = 91;
    v49 = 0xE100000000000000;
    v28 = [v23 logIdentifier];
    v29 = sub_22A4DD5EC();
    v45 = v9;
    v31 = v30;

    MEMORY[0x22AAD08C0](v29, v31);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v32 = sub_2295A3E30(v48, v49, &v46);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_2295A3E30(0xD000000000000037, 0x800000022A594860, &v46);
    *(v26 + 22) = 1024;
    *(v26 + 24) = a1 & 1;
    _os_log_impl(&dword_229538000, v24, v25, "%s %s Not saving %{BOOL}d because it has not changed", v26, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v26, -1, -1);

    return (*(v10 + 8))(v16, v45);
  }

  v33 = *(v10 + 8);
  v34 = v16;
  return v33(v34, v9);
}

uint64_t sub_22973D400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = sub_22A4DB7DC();
  v6[15] = v7;
  v8 = *(v7 - 8);
  v6[16] = v8;
  v9 = *(v8 + 64) + 15;
  v6[17] = swift_task_alloc();
  v10 = sub_22A4DD07C();
  v6[18] = v10;
  v11 = *(v10 - 8);
  v6[19] = v11;
  v12 = *(v11 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22973D55C, 0, 0);
}

id sub_22973D55C()
{
  v191 = v1;
  result = [*(v1 + 96) users];
  if (!result)
  {
    __break(1u);
    goto LABEL_63;
  }

  v4 = result;
  *(v1 + 208) = sub_229562F68(0, &qword_281401790, off_278666348);
  v5 = sub_22A4DD83C();
  *(v1 + 216) = v5;

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v1 + 224) = v6;
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_42;
  }

  v6 = sub_22A4DE0EC();
  *(v1 + 224) = v6;
  if (!v6)
  {
LABEL_42:
    v2 = MEMORY[0x277D84F90];
LABEL_43:

    v0 = *(v2 + 2);
    result = [*(v1 + 96) users];
    if (result)
    {
      v109 = result;
      v110 = *(v1 + 208);
      v111 = sub_22A4DD83C();

      if (!(v111 >> 62))
      {
        v112 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_46:

        if (v0 == v112)
        {
          v113 = *(v2 + 2);
          v114 = v2 + 32;
          do
          {
            v115 = v113;
            if (!v113)
            {
              break;
            }

            v116 = *v114++;
            --v113;
          }

          while ((v116 & 1) != 0);
          v117 = *(v1 + 176);
          v118 = *(v1 + 112);
          v119 = *(v1 + 96);

          sub_2297A46D4();
          v120 = v119;
          v121 = sub_22A4DD05C();
          v122 = sub_22A4DDCCC();
          v123 = os_log_type_enabled(v121, v122);
          v124 = *(v1 + 176);
          v125 = *(v1 + 144);
          v126 = *(v1 + 152);
          v127 = *(v1 + 96);
          if (v123)
          {
            v128 = swift_slowAlloc();
            v186 = swift_slowAlloc();
            v188 = v186;
            *v128 = 136315906;
            v189 = 91;
            v190 = 0xE100000000000000;
            v181 = v124;
            v129 = [v127 logIdentifier];
            v130 = sub_22A4DD5EC();
            v177 = v125;
            v132 = v131;

            MEMORY[0x22AAD08C0](v130, v132);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v133 = sub_2295A3E30(v189, v190, &v188);

            *(v128 + 4) = v133;
            *(v128 + 12) = 2080;
            *(v128 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v188);
            *(v128 + 22) = 1024;
            LODWORD(v129) = [v127 isAllowedToEnableAdaptiveTemperatureAutomations];

            *(v128 + 24) = v129;
            *(v128 + 28) = 1024;
            *(v128 + 30) = v115 == 0;
            _os_log_impl(&dword_229538000, v121, v122, "%s %s Evaluated from %{BOOL}d to %{BOOL}d", v128, 0x22u);
            swift_arrayDestroy();
            MEMORY[0x22AAD4E50](v186, -1, -1);
            MEMORY[0x22AAD4E50](v128, -1, -1);

            (*(v126 + 8))(v181, v177);
          }

          else
          {

            (*(v126 + 8))(v124, v125);
          }

          v152 = *(v1 + 96);
          sub_22973CDE8(v115 == 0);
        }

        else
        {
          v134 = *(v1 + 168);
          v135 = *(v1 + 112);
          v136 = *(v1 + 96);

          sub_2297A46D4();
          v137 = v136;
          v138 = sub_22A4DD05C();
          v139 = sub_22A4DDCCC();
          v140 = os_log_type_enabled(v138, v139);
          v141 = *(v1 + 168);
          v142 = *(v1 + 144);
          v143 = *(v1 + 152);
          v144 = *(v1 + 96);
          if (v140)
          {
            v145 = swift_slowAlloc();
            v146 = swift_slowAlloc();
            v188 = v146;
            *v145 = 136315650;
            v189 = 91;
            v190 = 0xE100000000000000;
            v187 = v141;
            v147 = [v144 logIdentifier];
            v148 = sub_22A4DD5EC();
            v182 = v142;
            v150 = v149;

            MEMORY[0x22AAD08C0](v148, v150);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v151 = sub_2295A3E30(v189, v190, &v188);

            *(v145 + 4) = v151;
            *(v145 + 12) = 2080;
            *(v145 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v188);
            *(v145 + 22) = 1024;
            LODWORD(v147) = [v144 isAllowedToEnableAdaptiveTemperatureAutomations];

            *(v145 + 24) = v147;
            _os_log_impl(&dword_229538000, v138, v139, "%s %s Cannot determine qualification for all users - isAllowedToEnableAdaptiveTemperatureAutomations is %{BOOL}d and not changing", v145, 0x1Cu);
            swift_arrayDestroy();
            MEMORY[0x22AAD4E50](v146, -1, -1);
            MEMORY[0x22AAD4E50](v145, -1, -1);

            (*(v143 + 8))(v187, v182);
          }

          else
          {

            (*(v143 + 8))(v141, v142);
          }
        }

        v154 = *(v1 + 192);
        v153 = *(v1 + 200);
        v156 = *(v1 + 176);
        v155 = *(v1 + 184);
        v158 = *(v1 + 160);
        v157 = *(v1 + 168);
        v159 = *(v1 + 136);

        v160 = *(v1 + 8);

        return v160();
      }

LABEL_61:
      v112 = sub_22A4DE0EC();
      goto LABEL_46;
    }

LABEL_63:
    __break(1u);
    return result;
  }

LABEL_4:
  if (v6 < 1)
  {
    __break(1u);
    goto LABEL_61;
  }

  v7 = 0;
  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    *(v1 + 232) = v7;
    *(v1 + 240) = v2;
    v8 = *(v1 + 216);
    v9 = (v8 & 0xC000000000000001) != 0 ? MEMORY[0x22AAD13F0]() : *(v8 + 8 * v7 + 32);
    v10 = v9;
    *(v1 + 248) = v9;
    v11 = [*(v1 + 104) detailForUser_];
    if (!v11)
    {
      break;
    }

    v12 = v11;
    ObjectType = swift_getObjectType();
    if (([v12 isAtHome] & 1) == 0 && !objc_msgSend(v12, sel_isNotAtHome))
    {
      v82 = *(v1 + 184);
      v83 = *(v1 + 112);
      v84 = *(v1 + 96);
      sub_2297A46D4();
      v85 = v84;
      v86 = v10;
      v87 = sub_22A4DD05C();
      v88 = sub_22A4DDCCC();

      v89 = os_log_type_enabled(v87, v88);
      v90 = *(v1 + 184);
      v92 = *(v1 + 144);
      v91 = *(v1 + 152);
      if (v89)
      {
        v172 = *(v1 + 128);
        v166 = *(v1 + 136);
        v169 = *(v1 + 120);
        v185 = *(v1 + 184);
        v93 = *(v1 + 96);
        v175 = v88;
        v94 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        v189 = v180;
        *v94 = 136315650;
        *(v1 + 32) = 91;
        *(v1 + 40) = 0xE100000000000000;
        v95 = [v93 logIdentifier];
        v96 = sub_22A4DD5EC();
        v176 = v92;
        v98 = v97;

        MEMORY[0x22AAD08C0](v96, v98);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v99 = sub_2295A3E30(*(v1 + 32), *(v1 + 40), &v189);

        *(v94 + 4) = v99;
        *(v94 + 12) = 2080;
        *(v94 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v189);
        *(v94 + 22) = 2080;
        v100 = [v86 uuid];
        sub_22A4DB79C();

        sub_229746354(&qword_281403860, MEMORY[0x277CC95F0]);
        v101 = sub_22A4DE5CC();
        v103 = v102;
        (*(v172 + 8))(v166, v169);
        v104 = sub_2295A3E30(v101, v103, &v189);

        *(v94 + 24) = v104;
        _os_log_impl(&dword_229538000, v87, v175, "%s %s Presence is expired for user %s: checking if they have any qualifying devices", v94, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v180, -1, -1);
        MEMORY[0x22AAD4E50](v94, -1, -1);

        swift_unknownObjectRelease();
        (*(v91 + 8))(v185, v176);
      }

      else
      {
        swift_unknownObjectRelease();

        (*(v91 + 8))(v90, v92);
      }

      break;
    }

    v14 = [v12 deviceWhichUpdatedUserPresence];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 version];
      if (!v16)
      {
        goto LABEL_26;
      }

      v17 = v16;
      v18 = [objc_opt_self() version13_0];
      v19 = [v17 compare_];

      if (v19 == -1)
      {

LABEL_26:
        v184 = v2;
        v50 = *(v1 + 200);
        v51 = *(v1 + 112);
        v52 = *(v1 + 96);
        sub_2297A46D4();
        v53 = v52;
        v54 = v10;
        v55 = v15;
        v56 = sub_22A4DD05C();
        v57 = sub_22A4DDCCC();

        v58 = os_log_type_enabled(v56, v57);
        v59 = *(v1 + 200);
        v61 = *(v1 + 144);
        v60 = *(v1 + 152);
        if (v58)
        {
          v165 = v57;
          v62 = *(v1 + 128);
          v63 = *(v1 + 136);
          v161 = *(v1 + 120);
          v171 = *(v1 + 200);
          v64 = *(v1 + 96);
          v168 = *(v1 + 144);
          v65 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          v189 = v163;
          *v65 = 136315906;
          *(v1 + 64) = 91;
          *(v1 + 72) = 0xE100000000000000;
          v66 = [v64 logIdentifier];
          v179 = v54;
          v67 = sub_22A4DD5EC();
          v174 = v55;
          v69 = v68;

          MEMORY[0x22AAD08C0](v67, v69);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v70 = sub_2295A3E30(*(v1 + 64), *(v1 + 72), &v189);

          *(v65 + 4) = v70;
          *(v65 + 12) = 2080;
          *(v65 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v189);
          *(v65 + 22) = 2080;
          v71 = [v179 uuid];
          sub_22A4DB79C();

          sub_229746354(&qword_281403860, MEMORY[0x277CC95F0]);
          v72 = sub_22A4DE5CC();
          v74 = v73;
          (*(v62 + 8))(v63, v161);
          v75 = sub_2295A3E30(v72, v74, &v189);

          *(v65 + 24) = v75;
          *(v65 + 32) = 2080;
          v55 = v174;
          *(v1 + 88) = v174;
          sub_229562F68(0, &qword_27D87CEF0, off_278666100);
          v76 = sub_22A4DBA6C();
          v78 = sub_2295A3E30(v76, v77, &v189);

          *(v65 + 34) = v78;
          v54 = v179;
          _os_log_impl(&dword_229538000, v56, v165, "%s %s Unqualified user %s: sharing presence from unqualified device %s", v65, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v163, -1, -1);
          MEMORY[0x22AAD4E50](v65, -1, -1);

          (*(v60 + 8))(v171, v168);
        }

        else
        {

          (*(v60 + 8))(v59, v61);
        }

        v2 = v184;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_22958B0B0(0, *(v184 + 2) + 1, 1, v184);
        }

        v80 = *(v2 + 2);
        v79 = *(v2 + 3);
        if (v80 >= v79 >> 1)
        {
          v2 = sub_22958B0B0((v79 > 1), v80 + 1, 1, v2);
        }

        swift_unknownObjectRelease();
        *(v2 + 2) = v80 + 1;
        v2[v80 + 32] = 0;
        goto LABEL_8;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_22958B0B0(0, *(v2 + 2) + 1, 1, v2);
      }

      v21 = *(v2 + 2);
      v20 = *(v2 + 3);
      if (v21 >= v20 >> 1)
      {
        v2 = sub_22958B0B0((v20 > 1), v21 + 1, 1, v2);
      }

      swift_unknownObjectRelease();
      *(v2 + 2) = v21 + 1;
      v2[v21 + 32] = 1;
    }

    else
    {
      v183 = v2;
      v22 = *(v1 + 192);
      v23 = *(v1 + 112);
      v24 = *(v1 + 96);
      sub_2297A46D4();
      v25 = v24;
      v26 = v10;
      swift_unknownObjectRetain();
      v27 = sub_22A4DD05C();
      v28 = sub_22A4DDCCC();

      swift_unknownObjectRelease();
      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v1 + 192);
      v31 = *(v1 + 144);
      v32 = *(v1 + 152);
      if (v29)
      {
        v178 = *(v1 + 144);
        v33 = *(v1 + 136);
        v170 = v28;
        v162 = *(v1 + 120);
        v164 = *(v1 + 128);
        v173 = *(v1 + 192);
        v34 = *(v1 + 96);
        v35 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        v189 = v167;
        *v35 = 136315906;
        *(v1 + 48) = 91;
        *(v1 + 56) = 0xE100000000000000;
        v36 = [v34 logIdentifier];
        v161 = ObjectType;
        v37 = sub_22A4DD5EC();
        v38 = v26;
        v40 = v39;

        MEMORY[0x22AAD08C0](v37, v40);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v41 = sub_2295A3E30(*(v1 + 48), *(v1 + 56), &v189);

        *(v35 + 4) = v41;
        *(v35 + 12) = 2080;
        *(v35 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v189);
        *(v35 + 22) = 2080;
        v42 = [v38 uuid];
        sub_22A4DB79C();

        sub_229746354(&qword_281403860, MEMORY[0x277CC95F0]);
        v43 = sub_22A4DE5CC();
        v45 = v44;
        (*(v164 + 8))(v33, v162);
        v46 = sub_2295A3E30(v43, v45, &v189);

        *(v35 + 24) = v46;
        *(v35 + 32) = 2080;
        *(v1 + 80) = v12;
        v47 = sub_22A4DBA6C();
        v49 = sub_2295A3E30(v47, v48, &v189);

        *(v35 + 34) = v49;
        _os_log_impl(&dword_229538000, v27, v170, "%s %s Unqualified user %s: missing device %s", v35, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v167, -1, -1);
        MEMORY[0x22AAD4E50](v35, -1, -1);

        swift_unknownObjectRelease();
        (*(v32 + 8))(v173, v178);
      }

      else
      {

        swift_unknownObjectRelease();
        (*(v32 + 8))(v30, v31);
      }

      v2 = v183;
    }

LABEL_8:
    v7 = *(v1 + 232) + 1;
    if (v7 == *(v1 + 224))
    {
      v81 = *(v1 + 216);
      goto LABEL_43;
    }
  }

  v105 = *(v1 + 96);
  v106 = [objc_msgSend(v105 dataSource)];
  *(v1 + 256) = v106;
  swift_unknownObjectRelease();
  v107 = [v105 workQueue];
  *(v1 + 264) = v107;
  v108 = swift_task_alloc();
  *(v1 + 272) = v108;
  *v108 = v1;
  v108[1] = sub_22973E734;

  return sub_229740E64(v106, v107);
}

uint64_t sub_22973E734()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_22973FA04;
  }

  else
  {
    v5 = *(v2 + 256);

    swift_unknownObjectRelease();
    v4 = sub_22973E858;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

id sub_22973E858()
{
  v192 = v0;
  v1 = *(v0 + 240);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 240);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_22958B0B0(0, *(v3 + 2) + 1, 1, *(v0 + 240));
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_22958B0B0((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v3[v5 + 32] = 1;
  v6 = *(v0 + 232) + 1;
  if (v6 == *(v0 + 224))
  {
LABEL_6:
    v7 = *(v0 + 216);

    v8 = *(v3 + 2);
    result = [*(v0 + 96) users];
    if (result)
    {
      v10 = result;
      v11 = *(v0 + 208);
      v12 = sub_22A4DD83C();

      if (v12 >> 62)
      {
        v13 = sub_22A4DE0EC();
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v8 == v13)
      {
        v14 = *(v3 + 2);
        v15 = v3 + 32;
        do
        {
          v16 = v14;
          if (!v14)
          {
            break;
          }

          v17 = *v15++;
          --v14;
        }

        while ((v17 & 1) != 0);
        v18 = *(v0 + 176);
        v19 = *(v0 + 112);
        v20 = *(v0 + 96);

        sub_2297A46D4();
        v21 = v20;
        v22 = sub_22A4DD05C();
        v23 = sub_22A4DDCCC();
        v24 = os_log_type_enabled(v22, v23);
        v25 = *(v0 + 176);
        v26 = *(v0 + 144);
        v27 = *(v0 + 152);
        v28 = *(v0 + 96);
        if (v24)
        {
          v29 = swift_slowAlloc();
          v185 = swift_slowAlloc();
          *v29 = 136315906;
          v189 = v185;
          v190 = 91;
          v191 = 0xE100000000000000;
          v180 = v25;
          v30 = [v28 logIdentifier];
          v31 = sub_22A4DD5EC();
          v175 = v26;
          v33 = v32;

          MEMORY[0x22AAD08C0](v31, v33);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v34 = sub_2295A3E30(v190, v191, &v189);

          *(v29 + 4) = v34;
          *(v29 + 12) = 2080;
          *(v29 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v189);
          *(v29 + 22) = 1024;
          LODWORD(v30) = [v28 isAllowedToEnableAdaptiveTemperatureAutomations];

          *(v29 + 24) = v30;
          *(v29 + 28) = 1024;
          *(v29 + 30) = v16 == 0;
          _os_log_impl(&dword_229538000, v22, v23, "%s %s Evaluated from %{BOOL}d to %{BOOL}d", v29, 0x22u);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v185, -1, -1);
          MEMORY[0x22AAD4E50](v29, -1, -1);

          (*(v27 + 8))(v180, v175);
        }

        else
        {

          (*(v27 + 8))(v25, v26);
        }

        v126 = *(v0 + 96);
        sub_22973CDE8(v16 == 0);
      }

      else
      {
        v108 = *(v0 + 168);
        v109 = *(v0 + 112);
        v110 = *(v0 + 96);

        sub_2297A46D4();
        v111 = v110;
        v112 = sub_22A4DD05C();
        v113 = sub_22A4DDCCC();
        v114 = os_log_type_enabled(v112, v113);
        v115 = *(v0 + 168);
        v116 = *(v0 + 144);
        v117 = *(v0 + 152);
        v118 = *(v0 + 96);
        if (v114)
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          *v119 = 136315650;
          v189 = v120;
          v190 = 91;
          v191 = 0xE100000000000000;
          v187 = v115;
          v121 = [v118 logIdentifier];
          v122 = sub_22A4DD5EC();
          v183 = v116;
          v124 = v123;

          MEMORY[0x22AAD08C0](v122, v124);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v125 = sub_2295A3E30(v190, v191, &v189);

          *(v119 + 4) = v125;
          *(v119 + 12) = 2080;
          *(v119 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v189);
          *(v119 + 22) = 1024;
          LODWORD(v121) = [v118 isAllowedToEnableAdaptiveTemperatureAutomations];

          *(v119 + 24) = v121;
          _os_log_impl(&dword_229538000, v112, v113, "%s %s Cannot determine qualification for all users - isAllowedToEnableAdaptiveTemperatureAutomations is %{BOOL}d and not changing", v119, 0x1Cu);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v120, -1, -1);
          MEMORY[0x22AAD4E50](v119, -1, -1);

          (*(v117 + 8))(v187, v183);
        }

        else
        {

          (*(v117 + 8))(v115, v116);
        }
      }

      v128 = *(v0 + 192);
      v127 = *(v0 + 200);
      v130 = *(v0 + 176);
      v129 = *(v0 + 184);
      v132 = *(v0 + 160);
      v131 = *(v0 + 168);
      v133 = *(v0 + 136);

      v134 = *(v0 + 8);

      return v134();
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v35 = &selRef_delayInSecs;
  v165 = v3;
  while (1)
  {
    *(v0 + 232) = v6;
    *(v0 + 240) = v3;
    v54 = *(v0 + 216);
    v55 = (v54 & 0xC000000000000001) != 0 ? MEMORY[0x22AAD13F0]() : *(v54 + 8 * v6 + 32);
    v56 = v55;
    *(v0 + 248) = v55;
    v57 = [*(v0 + 104) v35[191]];
    if (!v57)
    {
      break;
    }

    v58 = v57;
    swift_getObjectType();
    if (([v58 isAtHome] & 1) == 0 && !objc_msgSend(v58, sel_isNotAtHome))
    {
      v135 = *(v0 + 184);
      v136 = *(v0 + 112);
      v137 = *(v0 + 96);
      sub_2297A46D4();
      v138 = v137;
      v139 = v56;
      v140 = sub_22A4DD05C();
      v141 = sub_22A4DDCCC();

      v142 = os_log_type_enabled(v140, v141);
      v143 = *(v0 + 184);
      v145 = *(v0 + 144);
      v144 = *(v0 + 152);
      if (v142)
      {
        v184 = *(v0 + 184);
        v188 = *(v0 + 144);
        v146 = *(v0 + 136);
        v171 = *(v0 + 120);
        v174 = *(v0 + 128);
        v147 = *(v0 + 96);
        v148 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        v190 = v178;
        *v148 = 136315650;
        *(v0 + 32) = 91;
        *(v0 + 40) = 0xE100000000000000;
        v149 = [v147 logIdentifier];
        v150 = sub_22A4DD5EC();
        logb = v141;
        v152 = v151;

        MEMORY[0x22AAD08C0](v150, v152);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v153 = sub_2295A3E30(*(v0 + 32), *(v0 + 40), &v190);

        *(v148 + 4) = v153;
        *(v148 + 12) = 2080;
        *(v148 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v190);
        *(v148 + 22) = 2080;
        v154 = [v139 uuid];
        sub_22A4DB79C();

        sub_229746354(&qword_281403860, MEMORY[0x277CC95F0]);
        v155 = sub_22A4DE5CC();
        v157 = v156;
        (*(v174 + 8))(v146, v171);
        v158 = sub_2295A3E30(v155, v157, &v190);

        *(v148 + 24) = v158;
        _os_log_impl(&dword_229538000, v140, logb, "%s %s Presence is expired for user %s: checking if they have any qualifying devices", v148, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v178, -1, -1);
        MEMORY[0x22AAD4E50](v148, -1, -1);

        swift_unknownObjectRelease();
        (*(v144 + 8))(v184, v188);
      }

      else
      {
        swift_unknownObjectRelease();

        (*(v144 + 8))(v143, v145);
      }

      break;
    }

    v59 = [v58 deviceWhichUpdatedUserPresence];
    if (v59)
    {
      v70 = v59;
      v71 = [v59 version];
      if (v71)
      {
        v72 = v71;
        v73 = [objc_opt_self() version13_0];
        v74 = [v72 compare_];

        if (v74 != -1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_22958B0B0(0, *(v3 + 2) + 1, 1, v3);
          }

          v76 = *(v3 + 2);
          v75 = *(v3 + 3);
          v77 = v76 + 1;
          if (v76 >= v75 >> 1)
          {
            v3 = sub_22958B0B0((v75 > 1), v76 + 1, 1, v3);
          }

          v78 = 1;
          goto LABEL_43;
        }
      }

      v79 = *(v0 + 200);
      v80 = *(v0 + 112);
      v81 = *(v0 + 96);
      sub_2297A46D4();
      v82 = v81;
      v83 = v56;
      v84 = v70;
      v85 = sub_22A4DD05C();
      LOBYTE(v80) = sub_22A4DDCCC();

      v182 = v84;
      v186 = v80;
      v86 = os_log_type_enabled(v85, v80);
      v87 = *(v0 + 200);
      v89 = *(v0 + 144);
      v88 = *(v0 + 152);
      if (v86)
      {
        v163 = *(v0 + 136);
        v164 = *(v0 + 128);
        loga = v85;
        v90 = *(v0 + 120);
        v177 = *(v0 + 200);
        v91 = *(v0 + 96);
        v92 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        v190 = v170;
        *v92 = 136315906;
        *(v0 + 64) = 91;
        *(v0 + 72) = 0xE100000000000000;
        v93 = [v91 logIdentifier];
        v94 = sub_22A4DD5EC();
        v173 = v89;
        v96 = v95;

        v97 = v94;
        v3 = v165;
        MEMORY[0x22AAD08C0](v97, v96);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v98 = sub_2295A3E30(*(v0 + 64), *(v0 + 72), &v190);

        *(v92 + 4) = v98;
        *(v92 + 12) = 2080;
        *(v92 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v190);
        *(v92 + 22) = 2080;
        v99 = [v83 uuid];
        sub_22A4DB79C();

        sub_229746354(&qword_281403860, MEMORY[0x277CC95F0]);
        v100 = sub_22A4DE5CC();
        v102 = v101;
        (*(v164 + 8))(v163, v90);
        v103 = sub_2295A3E30(v100, v102, &v190);

        *(v92 + 24) = v103;
        *(v92 + 32) = 2080;
        *(v0 + 88) = v182;
        sub_229562F68(0, &qword_27D87CEF0, off_278666100);
        v104 = sub_22A4DBA6C();
        v106 = sub_2295A3E30(v104, v105, &v190);

        *(v92 + 34) = v106;
        _os_log_impl(&dword_229538000, loga, v186, "%s %s Unqualified user %s: sharing presence from unqualified device %s", v92, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v170, -1, -1);
        MEMORY[0x22AAD4E50](v92, -1, -1);

        (*(v88 + 8))(v177, v173);
      }

      else
      {

        (*(v88 + 8))(v87, v89);
      }

      v35 = &selRef_delayInSecs;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_22958B0B0(0, *(v3 + 2) + 1, 1, v3);
      }

      v76 = *(v3 + 2);
      v107 = *(v3 + 3);
      v77 = v76 + 1;
      if (v76 >= v107 >> 1)
      {
        v3 = sub_22958B0B0((v107 > 1), v76 + 1, 1, v3);
      }

      v78 = 0;
LABEL_43:

      swift_unknownObjectRelease();
      *(v3 + 2) = v77;
      v3[v76 + 32] = v78;
      v6 = *(v0 + 232) + 1;
      if (v6 == *(v0 + 224))
      {
        goto LABEL_6;
      }

      v165 = v3;
    }

    else
    {
      v60 = *(v0 + 192);
      v61 = *(v0 + 112);
      v62 = *(v0 + 96);
      sub_2297A46D4();
      v63 = v62;
      v64 = v56;
      swift_unknownObjectRetain();
      v65 = sub_22A4DD05C();
      LOBYTE(v61) = sub_22A4DDCCC();

      swift_unknownObjectRelease();
      v181 = v61;
      v66 = os_log_type_enabled(v65, v61);
      v67 = *(v0 + 192);
      v68 = *(v0 + 144);
      v69 = *(v0 + 152);
      if (v66)
      {
        v36 = *(v0 + 128);
        v37 = *(v0 + 136);
        log = *(v0 + 120);
        v176 = *(v0 + 192);
        v38 = *(v0 + 96);
        v172 = *(v0 + 144);
        v39 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        v190 = v169;
        *v39 = 136315906;
        *(v0 + 48) = 91;
        *(v0 + 56) = 0xE100000000000000;
        v40 = [v38 logIdentifier];
        v41 = sub_22A4DD5EC();
        v179 = v58;
        v43 = v42;

        MEMORY[0x22AAD08C0](v41, v43);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v44 = sub_2295A3E30(*(v0 + 48), *(v0 + 56), &v190);

        *(v39 + 4) = v44;
        *(v39 + 12) = 2080;
        *(v39 + 14) = sub_2295A3E30(0xD000000000000039, 0x800000022A594820, &v190);
        *(v39 + 22) = 2080;
        v45 = [v64 uuid];
        sub_22A4DB79C();

        sub_229746354(&qword_281403860, MEMORY[0x277CC95F0]);
        v46 = sub_22A4DE5CC();
        v48 = v47;
        v49 = v37;
        v3 = v165;
        (*(v36 + 8))(v49, log);
        v35 = &selRef_delayInSecs;
        v50 = sub_2295A3E30(v46, v48, &v190);

        *(v39 + 24) = v50;
        *(v39 + 32) = 2080;
        *(v0 + 80) = v179;
        v51 = sub_22A4DBA6C();
        v53 = sub_2295A3E30(v51, v52, &v190);

        *(v39 + 34) = v53;
        _os_log_impl(&dword_229538000, v65, v181, "%s %s Unqualified user %s: missing device %s", v39, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v169, -1, -1);
        MEMORY[0x22AAD4E50](v39, -1, -1);

        swift_unknownObjectRelease();
        (*(v69 + 8))(v176, v172);
      }

      else
      {

        swift_unknownObjectRelease();
        (*(v69 + 8))(v67, v68);
      }

      v6 = *(v0 + 232) + 1;
      if (v6 == *(v0 + 224))
      {
        goto LABEL_6;
      }
    }
  }

  v159 = *(v0 + 96);
  v160 = [objc_msgSend(v159 dataSource)];
  *(v0 + 256) = v160;
  swift_unknownObjectRelease();
  v161 = [v159 workQueue];
  *(v0 + 264) = v161;
  v162 = swift_task_alloc();
  *(v0 + 272) = v162;
  *v162 = v0;
  v162[1] = sub_22973E734;

  return sub_229740E64(v160, v161);
}