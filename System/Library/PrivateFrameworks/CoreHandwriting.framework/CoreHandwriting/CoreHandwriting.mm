id sub_18366D128()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1EA84CE48;
  v7 = qword_1EA84CE48;
  if (!qword_1EA84CE48)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_183740778;
    v3[3] = &unk_1E6DDD2E0;
    v3[4] = &v4;
    sub_183740778(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18366D1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CHCalculateWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CHCalculateWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CHCalculateWrapper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CHCalculateWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CHCalculateWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18366E00C(uint64_t a1, id *a2)
{
  result = sub_1839BD0DC();
  *a2 = 0;
  return result;
}

uint64_t sub_18366E084(uint64_t a1, id *a2)
{
  v3 = sub_1839BD0EC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_18366E104@<X0>(uint64_t *a1@<X8>)
{
  sub_1839BD0FC();
  v2 = sub_1839BD0CC();

  *a1 = v2;
  return result;
}

uint64_t sub_18366E148()
{
  v0 = sub_1839BD0FC();
  v1 = MEMORY[0x1865E4C30](v0);

  return v1;
}

uint64_t sub_18366E184()
{
  sub_1839BD0FC();
  sub_1839BD11C();
}

uint64_t sub_18366E1D8()
{
  sub_1839BD0FC();
  sub_1839BD24C();
  sub_1839BD11C();
  v0 = sub_1839BD26C();

  return v0;
}

uint64_t sub_18366E24C()
{
  v0 = sub_1839BD0FC();
  v2 = v1;
  if (v0 == sub_1839BD0FC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1839BD21C();
  }

  return v5 & 1;
}

uint64_t sub_18366E2D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1839BD0CC();

  *a1 = v2;
  return result;
}

uint64_t sub_18366E31C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1839BD0FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18366E348(uint64_t a1)
{
  v2 = sub_18366EFDC(&qword_1EA84BAE8);
  v3 = sub_18366EFDC(&qword_1EA84BAF0);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_18366E3E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_18366ED74(&qword_1EA84BAC8);
    v3 = sub_1839BD1EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_18366EE70(v4, &v11);
      v5 = v11;
      result = sub_1836724C4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_18366EEE0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_18366E4E8()
{
  sub_1839BCEDC();
  MEMORY[0x1EEE9AC00]();
  v0 = sub_1839BD03C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18366ED74(&qword_1EA84BAB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1839CD1A0;
  v5 = *MEMORY[0x1E6992250];
  *(inited + 32) = *MEMORY[0x1E6992250];
  v6 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v7 = v5;
  v8 = [v6 initWithUnsignedInteger_];
  *(inited + 64) = sub_18366EDBC();
  *(inited + 40) = v8;
  sub_18366E3E0(inited);
  swift_setDeallocating();
  sub_18366EE08(inited + 32);
  (*(v1 + 104))(v3, *MEMORY[0x1E6992100], v0);
  sub_1839BCECC();
  sub_1839BD08C();
  swift_allocObject();
  sub_1839BD09C();
  sub_1839BD07C();
  v9 = sub_1839BD02C();

  return v9;
}

BOOL sub_18366E718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18366ED74(&qword_1EA84BAB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1839CD1B0;
  v5 = *MEMORY[0x1E6992250];
  *(inited + 32) = *MEMORY[0x1E6992250];
  v6 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v7 = v5;
  v8 = [v6 initWithUnsignedInteger_];
  v9 = sub_18366EDBC();
  *(inited + 40) = v8;
  v10 = *MEMORY[0x1E6992260];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = sub_18366ED74(&qword_1EA84BAD0);
  *(inited + 80) = a3;
  v12 = *MEMORY[0x1E6992220];
  *(inited + 104) = v11;
  *(inited + 112) = v12;
  v13 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v14 = v10;

  v15 = v12;
  *(inited + 120) = [v13 initWithBool_];
  v16 = *MEMORY[0x1E6992248];
  *(inited + 144) = v9;
  *(inited + 152) = v16;
  v17 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v18 = v16;
  v19 = [v17 initWithBool_];
  *(inited + 184) = v9;
  *(inited + 160) = v19;
  sub_18366E3E0(inited);
  swift_setDeallocating();
  sub_18366ED74(&qword_1EA84BAC0);
  swift_arrayDestroy();
  v20 = sub_1839BD0AC();

  v21 = [v20 inputValueAndUnit];

  if (v21)
  {
  }

  return v21 != 0;
}

uint64_t sub_18366E90C()
{
  sub_1839BCEDC();
  MEMORY[0x1EEE9AC00]();
  v0 = sub_1839BD03C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18366ED74(&qword_1EA84BAB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1839CD1A0;
  v5 = *MEMORY[0x1E6992250];
  *(inited + 32) = *MEMORY[0x1E6992250];
  v6 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v7 = v5;
  v8 = [v6 initWithUnsignedInteger_];
  *(inited + 64) = sub_18366EDBC();
  *(inited + 40) = v8;
  sub_18366E3E0(inited);
  swift_setDeallocating();
  sub_18366EE08(inited + 32);
  (*(v1 + 104))(v3, *MEMORY[0x1E6992100], v0);
  sub_1839BCECC();
  sub_1839BD08C();
  swift_allocObject();
  v9 = sub_1839BD09C();
  v10 = sub_1839BD05C();
  if (!v10)
  {
    goto LABEL_4;
  }

  result = sub_1839BD05C();
  if (!result)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_1839BCE2C();

  v14 = [v13 code];
  if (v14 > -2000)
  {

    return 0;
  }

  else
  {
LABEL_4:
    sub_1839BD06C();
    v15 = sub_1839BD01C();

    if (v15 >> 62)
    {
      goto LABEL_24;
    }

    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      do
      {
        v28 = v9;
        v17 = 0;
        v9 = v15 & 0xC000000000000001;
        v26 = v15 + 32;
        v27 = v15 & 0xFFFFFFFFFFFFFF8;
        v29 = v15 & 0xC000000000000001;
        v30 = v16;
        while (2)
        {
          if (v9)
          {
            MEMORY[0x1865E4C90](v17, v15);
            v18 = __OFADD__(v17++, 1);
            if (!v18)
            {
              goto LABEL_13;
            }
          }

          else
          {
            if (v17 >= *(v27 + 16))
            {
              __break(1u);
              goto LABEL_28;
            }

            v18 = __OFADD__(v17++, 1);
            if (!v18)
            {
LABEL_13:
              v19 = sub_1839BD04C();
              v20 = 0;
              v21 = *(v19 + 16);
              while (v21 != v20)
              {
                if (v20 >= *(v19 + 16))
                {
                  __break(1u);
                  goto LABEL_23;
                }

                v9 = v20 + 1;
                v22 = *(v19 + 8 * v20 + 32);
                v23 = v22;
                v24 = sub_1839BCE2C();
                v25 = [v24 code];

                v20 = v9;
                if (v25 != -1003)
                {

                  return 0;
                }
              }

              v9 = v29;
              if (v17 != v30)
              {
                continue;
              }

              goto LABEL_25;
            }
          }

          break;
        }

LABEL_23:
        __break(1u);
LABEL_24:
        result = sub_1839BD1BC();
        v16 = result;
      }

      while (result);
    }

LABEL_25:

    return 1;
  }
}

uint64_t sub_18366ED74(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_18366EDBC()
{
  result = qword_1EA84BAB8;
  if (!qword_1EA84BAB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA84BAB8);
  }

  return result;
}

uint64_t sub_18366EE08(uint64_t a1)
{
  v2 = sub_18366ED74(&qword_1EA84BAC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18366EE70(uint64_t a1, uint64_t a2)
{
  v4 = sub_18366ED74(&qword_1EA84BAC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_18366EEE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void type metadata accessor for CalculateKey()
{
  if (!qword_1EA84BAA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EA84BAA0);
    }
  }
}

uint64_t sub_18366EFDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalculateKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_18366F034@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_18366F06C()
{
  v1 = *v0;
  sub_1839BD24C();
  MEMORY[0x1865E4D50](v1);
  return sub_1839BD26C();
}

uint64_t sub_18366F0B4()
{
  v1 = *v0;
  sub_1839BD24C();
  MEMORY[0x1865E4D50](v1);
  return sub_1839BD26C();
}

unint64_t sub_18366F0F8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_183672D4C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id CHModelCatalog.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CHModelCatalog.init()()
{
  sub_1839BCFFC();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CHModelCatalog();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_18366F264()
{
  v0 = [objc_opt_self() sharedManager];
  v1 = [v0 assetDeliveryReady];

  v2 = sub_1839BCFEC();
  v3 = sub_1839BD15C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v1;
    _os_log_impl(&dword_18366B000, v2, v3, "Asset delivery ready: %{BOOL}d", v4, 8u);
    MEMORY[0x1865E6CA0](v4, -1, -1);
  }

  return v1;
}

uint64_t sub_18366F37C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a1;
  v79 = sub_1839BCFDC();
  v78 = *(v79 - 8);
  (MEMORY[0x1EEE9AC00])();
  v77 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1839BCE9C();
  v7 = *(v6 - 8);
  v8 = (MEMORY[0x1EEE9AC00])();
  v82 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v75 - v10;
  v85 = sub_1839BCF8C();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1839BCFBC();
  v88 = *(v89 - 8);
  v12 = MEMORY[0x1EEE9AC00](v89);
  v80 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v86 = &v75 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v75 - v16;
  v18 = sub_18366ED74(&qword_1EA84BB20);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v75 - v19;
  v21 = sub_18366ED74(&qword_1EA84BB28);
  v91 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v81 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v90 = &v75 - v24;
  v96 = OBJC_IVAR___CHModelCatalog_logger;
  v25 = sub_1839BCFEC();
  v26 = sub_1839BD15C();
  v27 = os_log_type_enabled(v25, v26);
  v94 = a2;
  if (v27)
  {
    v92 = v7;
    v93 = a3;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v101[0] = v29;
    *v28 = 136315138;
    v87 = v17;
    if (a2 >= 2)
    {
      if (a2 == 2)
      {
        v30 = v21;
        v31 = v6;
        v32 = 0xE400000000000000;
        v33 = 1634363514;
      }

      else
      {
        if (v94 != 3)
        {
          *&v98 = v94;
          goto LABEL_20;
        }

        v30 = v21;
        v31 = v6;
        v32 = 0xE200000000000000;
        v33 = 28523;
      }
    }

    else
    {
      v30 = v21;
      v31 = v6;
      v32 = 0xE700000000000000;
      v33 = 0x636972656E6567;
    }

    v34 = sub_183671F1C(v33, v32, v101);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_18366B000, v25, v26, "Trying to getAsset for variant (%s)", v28, 0xCu);
    sub_183673298(v29);
    MEMORY[0x1865E6CA0](v29, -1, -1);
    MEMORY[0x1865E6CA0](v28, -1, -1);

    v7 = v92;
    a3 = v93;
    v6 = v31;
    v21 = v30;
    a2 = v94;
  }

  else
  {
  }

  if (v95)
  {
    v97 = v95;
    goto LABEL_20;
  }

  if (a2 >= 4)
  {
    while (1)
    {
      v97 = a2;
LABEL_20:
      sub_1839BD22C();
      __break(1u);
    }
  }

  sub_1839BCEFC();
  v92 = v7;
  v93 = a3;
  v95 = v6;

  sub_183673178(&v98, v101);
  sub_183673190(v101, v101[3]);
  sub_1839BCF9C();
  v35 = v91;
  (*(v91 + 56))(v20, 0, 1, v21);
  v36 = v90;
  (*(v35 + 32))(v90, v20, v21);
  sub_183673234(v101, &v98);
  v37 = *(v35 + 16);
  v38 = v81;
  v37(v81, v36, v21);
  v39 = sub_1839BCFEC();
  v40 = sub_1839BD15C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v89 = v37;
    v42 = v41;
    v43 = swift_slowAlloc();
    v96 = v21;
    v88 = v43;
    v97 = v43;
    *v42 = 136315394;
    sub_183673190(&v98, *(&v99 + 1));
    v44 = sub_1839BCF3C();
    v46 = v45;
    sub_183673298(&v98);
    v47 = sub_183671F1C(v44, v46, &v97);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    v48 = v77;
    v49 = sub_1839BCF2C();
    v50 = v76;
    MEMORY[0x1865E4AC0](v49);
    (*(v78 + 8))(v48, v79);
    sub_183673390();
    v51 = v95;
    v52 = sub_1839BD20C();
    v54 = v53;
    v55 = v38;
    v56 = v92;
    (*(v92 + 8))(v50, v51);
    v94 = *(v91 + 8);
    v94(v55, v96);
    v57 = sub_183671F1C(v52, v54, &v97);

    *(v42 + 14) = v57;
    _os_log_impl(&dword_18366B000, v39, v40, "Found asset %s at %s", v42, 0x16u);
    v58 = v88;
    swift_arrayDestroy();
    v21 = v96;
    MEMORY[0x1865E6CA0](v58, -1, -1);
    v59 = v42;
    v37 = v89;
    MEMORY[0x1865E6CA0](v59, -1, -1);
  }

  else
  {

    v94 = *(v35 + 8);
    v94(v38, v21);
    sub_183673298(&v98);
    v56 = v92;
  }

  *(&v99 + 1) = v21;
  v100 = sub_1836732E4();
  v60 = sub_183673448(&v98);
  v61 = v21;
  v37(v60, v90, v21);
  sub_183673190(&v98, *(&v99 + 1));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v65 = &v75 - v64;
  sub_1839BCF1C();
  swift_getAssociatedConformanceWitness();
  v66 = v82;
  sub_1839BCF6C();
  v67 = v66;
  (*(v63 + 8))(v65, AssociatedTypeWitness);
  v68 = (v56 + 56);
  if (sub_1839BCE4C())
  {
    v69 = *(v56 + 32);
    v70 = v93;
    v71 = v95;
    v69(v93, v67, v95);
    v72 = 0;
  }

  else
  {
    v73 = *(v56 + 8);
    v71 = v95;
    v73(v67, v95);
    v72 = 1;
    v70 = v93;
  }

  (*v68)(v70, v72, 1, v71);
  v94(v90, v61);
  sub_183673298(&v98);
  return sub_183673298(v101);
}

uint64_t sub_183670294(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v89 = a1;
  v5 = sub_1839BCF5C();
  v78 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v77 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1839BCFDC();
  v7 = *(v91 - 1);
  MEMORY[0x1EEE9AC00](v91);
  v72 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1839BCE9C();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v71 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1839BCF8C();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1839BCFBC();
  v80 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v75 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v84 = &v66 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v66 - v16;
  v17 = sub_18366ED74(&qword_1EA84BB20);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v87 = &v66 - v18;
  v19 = sub_18366ED74(&qword_1EA84BB28);
  v88 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v76 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v79 = &v66 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v85 = &v66 - v24;
  v90 = OBJC_IVAR___CHModelCatalog_logger;
  v25 = sub_1839BCFEC();
  v26 = sub_1839BD15C();
  v27 = a2;
  if (os_log_type_enabled(v25, v26))
  {
    v67 = v7;
    v69 = v11;
    v70 = a3;
    v68 = v19;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v95[0] = v29;
    *v28 = 136315138;
    v30 = a2 == 2;
    if (a2 >= 2)
    {
      v31 = v91;
      if (v30)
      {
        v32 = 0xE400000000000000;
        v33 = 1634363514;
      }

      else
      {
        if (v27 != 3)
        {
          *&v93 = v27;
          goto LABEL_18;
        }

        v32 = 0xE200000000000000;
        v33 = 28523;
      }
    }

    else
    {
      v31 = v91;
      v32 = 0xE700000000000000;
      v33 = 0x636972656E6567;
    }

    v34 = sub_183671F1C(v33, v32, v95);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_18366B000, v25, v26, "Trying to getAsset for variant (%s)", v28, 0xCu);
    sub_183673298(v29);
    MEMORY[0x1865E6CA0](v29, -1, -1);
    MEMORY[0x1865E6CA0](v28, -1, -1);

    v19 = v68;
    v7 = v67;
  }

  else
  {

    v31 = v91;
  }

  if (v89)
  {
    v92 = v89;
    goto LABEL_18;
  }

  v35 = v27;
  if (v27 >= 4)
  {
    while (1)
    {
      v92 = v35;
LABEL_18:
      sub_1839BD22C();
      __break(1u);
    }
  }

  sub_1839BCEFC();

  sub_183673178(&v93, v95);
  sub_183673190(v95, v95[3]);
  v36 = v87;
  sub_1839BCF9C();
  v37 = v88;
  (*(v88 + 56))(v36, 0, 1, v19);
  v38 = v85;
  (*(v37 + 32))(v85, v36, v19);
  sub_183673234(v95, &v93);
  v39 = v79;
  v91 = *(v37 + 16);
  (v91)(v79, v38, v19);
  v40 = sub_1839BCFEC();
  v41 = v19;
  v42 = sub_1839BD15C();
  if (os_log_type_enabled(v40, v42))
  {
    v43 = v37;
    v44 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v90 = v5;
    v92 = v89;
    *v44 = 136315394;
    LODWORD(v87) = v42;
    sub_183673190(&v93, *(&v94 + 1));
    v45 = sub_1839BCF3C();
    v47 = v46;
    sub_183673298(&v93);
    v48 = sub_183671F1C(v45, v47, &v92);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    v49 = v72;
    v50 = sub_1839BCF2C();
    v51 = v41;
    v52 = v71;
    MEMORY[0x1865E4AC0](v50);
    (*(v7 + 8))(v49, v31);
    sub_183673390();
    v53 = v74;
    v54 = sub_1839BD20C();
    v56 = v55;
    (*(v73 + 8))(v52, v53);
    v57 = *(v43 + 8);
    v41 = v51;
    v57(v79, v51);
    v58 = sub_183671F1C(v54, v56, &v92);

    *(v44 + 14) = v58;
    _os_log_impl(&dword_18366B000, v40, v87, "Found asset %s at %s", v44, 0x16u);
    v59 = v89;
    swift_arrayDestroy();
    v5 = v90;
    MEMORY[0x1865E6CA0](v59, -1, -1);
    MEMORY[0x1865E6CA0](v44, -1, -1);
  }

  else
  {

    v57 = *(v37 + 8);
    v57(v39, v19);
    sub_183673298(&v93);
  }

  v60 = v41;
  v61 = v76;
  v62 = v85;
  (v91)(v76, v85, v60);
  sub_1836732E4();
  v63 = v77;
  sub_1839BCF0C();
  v64 = sub_1839BCF4C();
  (*(v78 + 8))(v63, v5);
  v57(v62, v60);
  v57(v61, v60);
  sub_183673298(v95);
  return v64;
}

uint64_t sub_1836711E8(uint64_t a1, unint64_t a2)
{
  v75[4] = *MEMORY[0x1E69E9840];
  v71 = sub_1839BCE5C();
  v4 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1839BCE9C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v69 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v67 = &v67 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v67 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v67 - v16;
  v18 = sub_18366ED74(&qword_1EA84BAF8);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v67 - v22;
  v68 = a1;
  v70 = a2;
  sub_18366F37C(a1, a2, &v67 - v22);
  v72 = v23;
  v24 = v7;
  v25 = v8;
  sub_183672DA8(v23, v21);
  if ((*(v8 + 48))(v21, 1, v24) != 1)
  {
    (*(v8 + 32))(v17, v21, v24);
    strcpy(v75, "metadata.json");
    HIWORD(v75[1]) = -4864;
    v33 = v71;
    (*(v4 + 104))(v6, *MEMORY[0x1E6968F70], v71);
    sub_183672E18();
    sub_1839BCE8C();
    (*(v4 + 8))(v6, v33);
    v34 = v17;
    v35 = sub_1839BCEAC();
    v37 = v36;
    v38 = objc_opt_self();
    v71 = v37;
    v39 = sub_1839BCEBC();
    v75[0] = 0;
    v40 = [v38 JSONObjectWithData:v39 options:0 error:v75];

    if (v40)
    {
      v41 = v75[0];
      sub_1839BD17C();
      swift_unknownObjectRelease();
      sub_18366ED74(&qword_1EA84BB08);
      v42 = swift_dynamicCast();
      v43 = v67;
      if (v42)
      {
        v44 = v74;
        v45 = sub_1839BCE6C();
        v47 = v46;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v75[0] = v44;
        sub_183672A4C(v45, v47, 0xD000000000000010, 0x80000001839DADA0, isUniquelyReferenced_nonNull_native);
        sub_183672E6C(v35, v71);
        v49 = v75[0];
        v50 = *(v25 + 8);
        v50(v15, v24);
        v50(v34, v24);
        sub_1836731D4(v72, &qword_1EA84BAF8);
        return v49;
      }
    }

    else
    {
      v52 = v75[0];
      v53 = sub_1839BCE3C();

      swift_willThrow();
      v43 = v67;
    }

    (*(v25 + 16))(v43, v15, v24);
    v54 = sub_1839BCFEC();
    v55 = sub_1839BD16C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v70 = v15;
      v57 = v56;
      v58 = swift_slowAlloc();
      v73 = v34;
      v59 = v58;
      v75[0] = v58;
      *v57 = 136315138;
      v60 = sub_1839BCE6C();
      v62 = v61;
      v63 = *(v25 + 8);
      v63(v43, v24);
      v64 = sub_183671F1C(v60, v62, v75);

      *(v57 + 4) = v64;
      _os_log_impl(&dword_18366B000, v54, v55, "Failed to serialize JSON from data for file with path: %s", v57, 0xCu);
      sub_183673298(v59);
      MEMORY[0x1865E6CA0](v59, -1, -1);
      MEMORY[0x1865E6CA0](v57, -1, -1);
      sub_183672E6C(v35, v71);

      v63(v70, v24);
      v63(v73, v24);
    }

    else
    {
      sub_183672E6C(v35, v71);

      v65 = *(v25 + 8);
      v65(v43, v24);
      v65(v15, v24);
      v65(v34, v24);
    }

    goto LABEL_19;
  }

  sub_1836731D4(v21, &qword_1EA84BAF8);
  v26 = sub_1839BCFEC();
  v27 = sub_1839BD16C();
  if (!os_log_type_enabled(v26, v27))
  {
LABEL_18:

LABEL_19:
    sub_1836731D4(v72, &qword_1EA84BAF8);
    return 0;
  }

  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v75[0] = v29;
  *v28 = 136315394;
  if (v68)
  {
    v74 = v68;
  }

  else
  {
    v30 = v29;
    *(v28 + 4) = sub_183671F1C(0xD000000000000014, 0x80000001839DAD80, v75);
    *(v28 + 12) = 2080;
    if (v70 < 2)
    {
      v31 = 0x636972656E6567;
      v32 = 0xE700000000000000;
LABEL_17:
      v66 = sub_183671F1C(v31, v32, v75);

      *(v28 + 14) = v66;
      _os_log_impl(&dword_18366B000, v26, v27, "Failed to fetch model url for %s with variant: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865E6CA0](v30, -1, -1);
      MEMORY[0x1865E6CA0](v28, -1, -1);
      goto LABEL_18;
    }

    if (v70 == 2)
    {
      v32 = 0xE400000000000000;
      v31 = 1634363514;
      goto LABEL_17;
    }

    if (v70 == 3)
    {
      v32 = 0xE200000000000000;
      v31 = 28523;
      goto LABEL_17;
    }

    v74 = v70;
  }

  result = sub_1839BD22C();
  __break(1u);
  return result;
}

id CHModelCatalog.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CHModelCatalog();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_183671F1C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_183671FE8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1836733E8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_183673298(v11);
  return v7;
}

unint64_t sub_183671FE8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1836720F4(a5, a6);
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
    result = sub_1839BD1AC();
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

uint64_t sub_1836720F4(uint64_t a1, unint64_t a2)
{
  v3 = sub_183672140(a1, a2);
  sub_183672270(&unk_1EF1BB2D0);
  return v3;
}

uint64_t sub_183672140(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_18367235C(v5, 0);
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

  result = sub_1839BD1AC();
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
        v10 = sub_1839BD12C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_18367235C(v10, 0);
        result = sub_1839BD18C();
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

uint64_t sub_183672270(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1836723D0(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_18367235C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_18366ED74(&qword_1EA84BB48);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1836723D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_18366ED74(&qword_1EA84BB48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1836724C4(uint64_t a1)
{
  sub_1839BD0FC();
  sub_1839BD24C();
  sub_1839BD11C();
  v2 = sub_1839BD26C();

  return sub_1836725D0(a1, v2);
}

unint64_t sub_183672558(uint64_t a1, uint64_t a2)
{
  sub_1839BD24C();
  sub_1839BD11C();
  v4 = sub_1839BD26C();

  return sub_1836726D4(a1, a2, v4);
}

unint64_t sub_1836725D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1839BD0FC();
      v8 = v7;
      if (v6 == sub_1839BD0FC() && v8 == v9)
      {
        break;
      }

      v11 = sub_1839BD21C();

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

unint64_t sub_1836726D4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1839BD21C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_18367278C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_18366ED74(&qword_1EA84BB40);
  v37 = a2;
  result = sub_1839BD1DC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1839BD24C();
      sub_1839BD11C();
      result = sub_1839BD26C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_183672A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_183672558(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_18367278C(v18, a5 & 1);
      v13 = sub_183672558(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1839BD23C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_183672BD4();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_183672BD4()
{
  v1 = v0;
  sub_18366ED74(&qword_1EA84BB40);
  v2 = *v0;
  v3 = sub_1839BD1CC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

unint64_t sub_183672D4C(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for CHModelCatalog()
{
  result = qword_1EA84BA80;
  if (!qword_1EA84BA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_183672DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_18366ED74(&qword_1EA84BAF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_183672E18()
{
  result = qword_1EA84BB00;
  if (!qword_1EA84BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA84BB00);
  }

  return result;
}

uint64_t sub_183672E6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_183672EC4()
{
  result = qword_1EA84BB10;
  if (!qword_1EA84BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA84BB10);
  }

  return result;
}

unint64_t sub_183672F1C()
{
  result = qword_1EA84BB18;
  if (!qword_1EA84BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA84BB18);
  }

  return result;
}

uint64_t sub_183672F98()
{
  result = sub_1839BD00C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_183673178(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_183673190(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1836731D4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_18366ED74(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_183673234(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_183673298(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1836732E4()
{
  result = qword_1EA84BA98;
  if (!qword_1EA84BA98)
  {
    sub_183673348(&qword_1EA84BB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA84BA98);
  }

  return result;
}

uint64_t sub_183673348(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_183673390()
{
  result = qword_1EA84BB38;
  if (!qword_1EA84BB38)
  {
    sub_1839BCE9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA84BB38);
  }

  return result;
}

uint64_t sub_1836733E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_183673448(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

__n128 sub_1836742A4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_1836742B4(uint64_t a1, void *a2)
{
  v276 = a2;
  v8 = objc_msgSend_string(v276, v3, v4, v5, v6, v7);
  v9 = sub_1837C1898(v8);

  objc_msgSend_score(v276, v10, v11, v12, v13, v14);
  *(*(*(a1 + 64) + 8) + 24) = log(v15) + *(*(*(a1 + 64) + 8) + 24);
  ++*(*(*(a1 + 72) + 8) + 24);
  ++*(*(*(a1 + 80) + 8) + 24);
  v21 = objc_msgSend_string(v276, v16, v17, v18, v19, v20);
  if (objc_msgSend_isEqualToString_(v21, v22, @"{", v23, v24, v25))
  {
    v31 = 1;
LABEL_3:

LABEL_6:
    *(*(*(a1 + 88) + 8) + 24) += v31;
    goto LABEL_7;
  }

  v36 = objc_msgSend_string(v276, v26, v27, v28, v29, v30);
  isEqualToString = objc_msgSend_isEqualToString_(v36, v37, @"[", v38, v39, v40);

  if (isEqualToString)
  {
    v31 = 1;
    goto LABEL_6;
  }

  v21 = objc_msgSend_string(v276, v32, v42, v33, v34, v35);
  if (objc_msgSend_isEqualToString_(v21, v261, @"}", v262, v263, v264))
  {
    v31 = -1;
    goto LABEL_3;
  }

  v270 = objc_msgSend_string(v276, v265, v266, v267, v268, v269);
  v275 = objc_msgSend_isEqualToString_(v270, v271, @"]", v272, v273, v274);

  if (v275)
  {
    v31 = -1;
    goto LABEL_6;
  }

LABEL_7:
  if (objc_msgSend_isEqualToString_(v9, v32, @" ", v33, v34, v35))
  {
    v48 = *(a1 + 32);
    v49 = objc_msgSend_strokeIndexes(v276, v43, v44, v45, v46, v47);
    objc_msgSend_addIndexes_(v48, v50, v49, v51, v52, v53);

    v54 = *(a1 + 40);
    v60 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v55, v56, v57, v58, v59);
    v65 = objc_msgSend_stringByTrimmingCharactersInSet_(v54, v61, v60, v62, v63, v64);
    v70 = objc_msgSend_textTranscriptionForLatex_(CHTokenizedMathResult, v66, v65, v67, v68, v69);

    v71 = *(*(a1 + 96) + 8);
    *(v71 + 24) = exp(*(v71 + 24) / *(*(*(a1 + 80) + 8) + 24));
    v72 = [CHTokenizedTextResultToken alloc];
    v78 = objc_msgSend_copy(*(a1 + 32), v73, v74, v75, v76, v77);
    v79 = *(*(*(a1 + 96) + 8) + 24);
    objc_msgSend_score(v276, v80, v81, v82, v83, v84);
    v86 = v85;
    v87 = *(*(*(a1 + 104) + 8) + 24);
    v88 = *(a1 + 48);
    v89 = *(*(*(a1 + 112) + 8) + 24);
    v95 = objc_msgSend_count(*(a1 + 32), v90, v91, v92, v93, v94);
    v97 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_(v72, v96, v70, v78, 0, v87, v88, v89, v79, v79, v79, v86, *(*(*(a1 + 120) + 8) + 48), *(*(*(a1 + 120) + 8) + 56), *(*(*(a1 + 120) + 8) + 64), *(*(*(a1 + 120) + 8) + 72), v95);

    objc_msgSend_addObject_(*(a1 + 56), v98, v97, v99, v100, v101);
    objc_msgSend_setString_(*(a1 + 40), v102, &stru_1EF1C0318, v103, v104, v105);
    objc_msgSend_removeAllIndexes(*(a1 + 32), v106, v107, v108, v109, v110);
    v111 = *(*(a1 + 120) + 8);
    v112 = *(MEMORY[0x1E695F050] + 16);
    *(v111 + 48) = *MEMORY[0x1E695F050];
    *(v111 + 64) = v112;
    *(*(*(a1 + 96) + 8) + 24) = 0;
    *(*(*(a1 + 80) + 8) + 24) = 0;
    *(*(*(a1 + 104) + 8) + 24) = 40;
  }

  else
  {
    v118 = v276;
    if (*(*(*(a1 + 88) + 8) + 24) || (*(*(*(a1 + 128) + 8) + 24) & 1) != 0 || (v119 = objc_msgSend_properties(v276, v276, v44, v45, v46, v47), v118 = v276, (v119 & 1) != 0) || (v120 = *(a1 + 136), v121 = *(*(*(a1 + 128) + 8) + 24), v122 = objc_msgSend_properties(v276, v276, v44, v45, v46, v47), hasTransitionProperties_currentProperty_properties = objc_msgSend_hasTransitionProperties_currentProperty_properties_(v120, v123, v121, v122, *(a1 + 144), v124), v118 = v276, !hasTransitionProperties_currentProperty_properties))
    {
      v220 = *(a1 + 40);
      v221 = objc_msgSend_string(v118, v118, v44, v45, v46, v47);
      objc_msgSend_appendString_(v220, v222, v221, v223, v224, v225);

      objc_msgSend_appendString_(*(a1 + 40), v226, @" ", v227, v228, v229);
      v230 = *(a1 + 32);
      v236 = objc_msgSend_strokeIndexes(v276, v231, v232, v233, v234, v235);
      objc_msgSend_addIndexes_(v230, v237, v236, v238, v239, v240);

      v241 = *(*(a1 + 120) + 8);
      v242 = v241[6];
      v243 = v241[7];
      v244 = v241[8];
      v245 = v241[9];
      objc_msgSend_bounds(v276, v246, v247, v248, v249, v250);
      v279.origin.x = v251;
      v279.origin.y = v252;
      v279.size.width = v253;
      v279.size.height = v254;
      v278.origin.x = v242;
      v278.origin.y = v243;
      v278.size.width = v244;
      v278.size.height = v245;
      *(*(*(a1 + 120) + 8) + 48) = CGRectUnion(v278, v279);
      objc_msgSend_score(v276, v255, v256, v257, v258, v259);
      *(*(*(a1 + 96) + 8) + 24) = log(v260) + *(*(*(a1 + 96) + 8) + 24);
    }

    else
    {
      v126 = *(a1 + 40);
      v127 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v276, v44, v45, v46, v47);
      v132 = objc_msgSend_stringByTrimmingCharactersInSet_(v126, v128, v127, v129, v130, v131);
      v137 = objc_msgSend_textTranscriptionForLatex_(CHTokenizedMathResult, v133, v132, v134, v135, v136);

      if ((objc_msgSend_isEqualToString_(v137, v138, &stru_1EF1C0318, v139, v140, v141) & 1) == 0)
      {
        v147 = *(*(a1 + 96) + 8);
        *(v147 + 24) = exp(*(v147 + 24) / *(*(*(a1 + 80) + 8) + 24));
        v148 = [CHTokenizedTextResultToken alloc];
        v154 = objc_msgSend_copy(*(a1 + 32), v149, v150, v151, v152, v153);
        v155 = *(*(*(a1 + 96) + 8) + 24);
        objc_msgSend_score(v276, v156, v157, v158, v159, v160);
        v162 = v161;
        v163 = *(*(*(a1 + 104) + 8) + 24);
        v164 = *(a1 + 48);
        v165 = *(*(*(a1 + 112) + 8) + 24);
        v171 = objc_msgSend_count(*(a1 + 32), v166, v167, v168, v169, v170);
        v173 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_(v148, v172, v137, v154, 0, v163, v164, v165, v155, v155, v155, v162, *(*(*(a1 + 120) + 8) + 48), *(*(*(a1 + 120) + 8) + 56), *(*(*(a1 + 120) + 8) + 64), *(*(*(a1 + 120) + 8) + 72), v171);

        objc_msgSend_addObject_(*(a1 + 56), v174, v173, v175, v176, v177);
      }

      v178 = *(a1 + 40);
      v179 = objc_msgSend_string(v276, v142, v143, v144, v145, v146);
      objc_msgSend_setString_(v178, v180, v179, v181, v182, v183);

      objc_msgSend_appendString_(*(a1 + 40), v184, @" ", v185, v186, v187);
      objc_msgSend_removeAllIndexes(*(a1 + 32), v188, v189, v190, v191, v192);
      v193 = *(a1 + 32);
      v199 = objc_msgSend_strokeIndexes(v276, v194, v195, v196, v197, v198);
      objc_msgSend_addIndexes_(v193, v200, v199, v201, v202, v203);

      objc_msgSend_bounds(v276, v204, v205, v206, v207, v208);
      v209 = *(*(a1 + 120) + 8);
      v209[6] = v210;
      v209[7] = v211;
      v209[8] = v212;
      v209[9] = v213;
      objc_msgSend_score(v276, v214, v215, v216, v217, v218);
      *(*(*(a1 + 96) + 8) + 24) = log(v219);
      *(*(*(a1 + 80) + 8) + 24) = 1;
      *(*(*(a1 + 104) + 8) + 24) = 8;
    }
  }

  *(*(*(a1 + 128) + 8) + 24) = objc_msgSend_properties(v276, v113, v114, v115, v116, v117);
}

void sub_183675368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, char *a36)
{
  MEMORY[0x1865E5EC0](v36, 0x10A0C409F3568C5);
  sub_183689748(&__p);
  sub_18368922C(&a35, a36);

  _Unwind_Resume(a1);
}

_BYTE *sub_183675458(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_183688FF0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_183675F80(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v13 = objc_msgSend_length(v6, v8, v9, v10, v11, v12);
  if (v13 <= objc_msgSend_length(v7, v14, v15, v16, v17, v18))
  {
    v25 = objc_msgSend_length(v6, v19, v20, v21, v22, v23);
    v24 = v25 < objc_msgSend_length(v7, v26, v27, v28, v29, v30);
  }

  else
  {
    v24 = -1;
  }

  return v24;
}

double sub_1836778A4(void *a1, void *a2)
{
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  v2 = a2[10];
  a1[9] = a2[9];
  result = 0.0;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  a1[10] = v2;
  a1[11] = a2[11];
  a2[10] = 0;
  a2[11] = 0;
  return result;
}

void sub_1836778E8(uint64_t a1, void *a2, uint64_t a3)
{
  v280 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v277 = a3;
  v11 = objc_msgSend_string(v5, v6, v7, v8, v9, v10);
  isEqualToString = objc_msgSend_isEqualToString_(v11, v12, @"("), v13, v14, v15;

  if (isEqualToString)
  {
    objc_msgSend_addObject_(*(a1 + 32), v17, v5, v19, v20, v21);
    v22 = *(*(a1 + 48) + 8);
    v23 = v22[8];
    v24 = v22[7];
    v25 = ((v23 - v24) << 6) - 1;
    if (v23 == v24)
    {
      v25 = 0;
    }

    v26 = v22[11] + v22[10];
    if (v25 != v26)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v27 = objc_msgSend_string(v5, v17, v18, v19, v20, v21);
  if (!objc_msgSend_isEqualToString_(v27, v28, @""), v29, v30, v31))
  {

LABEL_10:
    v60 = objc_msgSend_string(v5, v33, v34, v35, v36, v37);
    v65 = objc_msgSend_isEqualToString_(v60, v61, @"\\lfloor", v62, v63, v64);

    if (v65)
    {
      objc_msgSend_addObject_(*(a1 + 32), v66, v5, v68, v69, v70);
      v22 = *(*(a1 + 56) + 8);
      v71 = v22[8];
      v24 = v22[7];
      v72 = ((v71 - v24) << 6) - 1;
      if (v71 == v24)
      {
        v72 = 0;
      }

      v26 = v22[11] + v22[10];
      if (v72 != v26)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v73 = objc_msgSend_string(v5, v66, v67, v68, v69, v70);
      if (objc_msgSend_isEqualToString_(v73, v74, @"\\rfloor", v75, v76, v77))
      {
        v78 = *(*(*(a1 + 56) + 8) + 88);

        if (v78)
        {
          v84 = *(*(a1 + 56) + 8);
          v85 = v84[11] + v84[10] - 1;
          v40 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v79, *(*(v84[7] + ((v85 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v85 & 0x1FF)), v81, v82, v83);
          v89 = objc_msgSend_updatedToken_withString_(CHTokenizedMathResultToken, v86, v40, @"\\left\\lfloor", v87, v88);
          v90 = *(*(a1 + 56) + 8);
          v91 = v90[11] + v90[10] - 1;
          objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 32), v92, v89, *(*(v90[7] + ((v91 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v91 & 0x1FF)), v93, v94);

          v95 = *(a1 + 32);
          v99 = objc_msgSend_updatedToken_withString_(CHTokenizedMathResultToken, v96, v5, @"\\right\\rfloor", v97, v98);
          objc_msgSend_addObject_(v95, v100, v99, v101, v102, v103);

          v59 = *(a1 + 56);
          goto LABEL_18;
        }
      }

      else
      {
      }

      v111 = objc_msgSend_string(v5, v79, v80, v81, v82, v83);
      v116 = objc_msgSend_isEqualToString_(v111, v112, @"\\lceil", v113, v114, v115);

      if (!v116)
      {
        v124 = objc_msgSend_string(v5, v117, v118, v119, v120, v121);
        if (objc_msgSend_isEqualToString_(v124, v125, @"\\rceil", v126, v127, v128))
        {
          v129 = *(*(*(a1 + 64) + 8) + 88);

          if (v129)
          {
            v135 = *(*(a1 + 64) + 8);
            v136 = v135[11] + v135[10] - 1;
            v137 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v130, *(*(v135[7] + ((v136 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v136 & 0x1FF)), v132, v133, v134);
            v141 = objc_msgSend_updatedToken_withString_(CHTokenizedMathResultToken, v138, v137, @"\\left\\lceil", v139, v140);
            v142 = *(*(a1 + 64) + 8);
            v143 = v142[11] + v142[10] - 1;
            objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 32), v144, v141, *(*(v142[7] + ((v143 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v143 & 0x1FF)), v145, v146);

            v147 = *(a1 + 32);
            v151 = objc_msgSend_updatedToken_withString_(CHTokenizedMathResultToken, v148, v5, @"\\right\\rceil", v149, v150);
            objc_msgSend_addObject_(v147, v152, v151, v153, v154, v155);

            sub_183678458((*(*(a1 + 64) + 8) + 48));
            goto LABEL_30;
          }
        }

        else
        {
        }

        v156 = objc_msgSend_string(v5, v130, v131, v132, v133, v134);
        v161 = objc_msgSend_isEqualToString_(v156, v157, @"|", v158, v159, v160);

        if (!v161)
        {
          objc_msgSend_addObject_(*(a1 + 32), v162, v5, v163, v164, v165);
          goto LABEL_30;
        }

        v166 = *(*(a1 + 72) + 8);
        v167 = v166[11];
        if (v167 && *(*(v166[7] + (((v167 + v166[10] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v167 + v166[10] - 1) & 0x1FF)) < a3 - 1)
        {
          v172 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v162, @"\\left|", v163, v164, v165);
          v173 = *(*(a1 + 72) + 8);
          v174 = v173[11] + v173[10] - 1;
          v175 = *(*(v173[7] + ((v174 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v174 & 0x1FF)) + 1;
          if (v175 < a3)
          {
            do
            {
              v176 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v168, v175, v169, v170, v171);
              v182 = objc_msgSend_string(v176, v177, v178, v179, v180, v181);
              objc_msgSend_addObject_(v172, v183, v182, v184, v185, v186);

              ++v175;
            }

            while (a3 != v175);
          }

          objc_msgSend_addObject_(v172, v168, @"\\right|", v169, v170, v171);
          v191 = objc_msgSend_componentsJoinedByString_(v172, v187, @" ", v188, v189, v190);
          v192 = *(*(a1 + 40) + 8);
          v193 = v191;
          v199 = objc_msgSend_UTF8String(v193, v194, v195, v196, v197, v198);
          sub_183675458(__p, v199);
          sub_183879A1C(v192, __p, &v275);
          if (v279 < 0)
          {
            operator delete(*__p);
          }

          v200 = v276[0];
          if (v276[0])
          {
            v201 = v276;
            v202 = v276;
            v203 = v276[0];
            do
            {
              if (v203[8] >= 2)
              {
                v202 = v203;
              }

              v203 = *&v203[2 * (v203[8] < 2)];
            }

            while (v203);
            if (v202 == v276)
            {
              v211 = v276[0];
            }

            else if (v202[8] > 2)
            {
              v211 = v276[0];
            }

            else
            {
              v204 = v276;
              v205 = v276[0];
              do
              {
                if (v205[8] >= 5)
                {
                  v204 = v205;
                }

                v205 = *&v205[2 * (v205[8] < 5)];
              }

              while (v205);
              if (v204 == v276 || v204[8] >= 6)
              {
                v206 = v276;
                v207 = v276[0];
                do
                {
                  if (v207[8] >= 6)
                  {
                    v206 = v207;
                  }

                  v207 = *&v207[2 * (v207[8] < 6)];
                }

                while (v207);
                if (v206 == v276 || v206[8] >= 7)
                {
                  v208 = v276;
                  v209 = v276[0];
                  do
                  {
                    if (*(v209 + 8) >= 7)
                    {
                      v208 = v209;
                    }

                    v209 = v209[*(v209 + 8) < 7];
                  }

                  while (v209);
                  if (v208 == v276 || (v210 = *(v208 + 8), v211 = v276[0], v210 > 7))
                  {
                    sub_18368A374(&v275, v276[0]);

                    v212 = *(*(a1 + 72) + 8);
                    v213 = v212[11] + v212[10] - 1;
                    v218 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v214, *(*(v212[7] + ((v213 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v213 & 0x1FF)), v215, v216, v217);
                    v222 = objc_msgSend_updatedToken_withString_(CHTokenizedMathResultToken, v219, v218, @"\\left|", v220, v221);
                    v223 = *(*(a1 + 72) + 8);
                    v224 = v223[11] + v223[10] - 1;
                    objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 32), v225, v222, *(*(v223[7] + ((v224 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v224 & 0x1FF)), v226, v227);

                    v228 = [CHTokenizedMathResultToken alloc];
                    v234 = objc_msgSend_strokeIndexes(v5, v229, v230, v231, v232, v233);
                    objc_msgSend_score(v5, v235, v236, v237, v238, v239);
                    v241 = v240;
                    objc_msgSend_bounds(v5, v242, v243, v244, v245, v246);
                    v248 = v247;
                    v250 = v249;
                    v252 = v251;
                    v254 = v253;
                    v260 = objc_msgSend_maskedAlternative(v5, v255, v256, v257, v258, v259);
                    objc_msgSend_maskedAlternativeScore(v5, v261, v262, v263, v264, v265);
                    v268 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_maskedAlternative_maskedAlternativeScore_(v228, v266, @"\\right|", v234, 4096, v260, v241, v248, v250, v252, v254, v267);

                    objc_msgSend_addObject_(*(a1 + 32), v269, v268, v270, v271, v272);
                    sub_183678458((*(*(a1 + 72) + 8) + 48));

                    goto LABEL_30;
                  }
                }

                else
                {
                  v211 = v276[0];
                }
              }

              else
              {
                v211 = v276[0];
              }
            }

            do
            {
              v273 = v211[8];
              if ((v273 & 0x80000000) == 0)
              {
                v201 = v211;
              }

              v211 = *(v211 + ((v273 >> 28) & 8));
            }

            while (v211);
            if (v201 != v276 && v201[8] <= 0)
            {
              v274 = sub_183761FE4(1);
              if (os_log_type_enabled(v274, OS_LOG_TYPE_FAULT))
              {
                *__p = 138412290;
                *&__p[4] = v191;
                _os_log_impl(&dword_18366B000, v274, OS_LOG_TYPE_FAULT, "CHBracketsMatchingStep symbol out of codemap in latexHelper for %@", __p, 0xCu);
              }

              v200 = v276[0];
            }
          }

          sub_18368A374(&v275, v200);
        }

        objc_msgSend_addObject_(*(a1 + 32), v162, v5, v163, v164, v165);
        sub_183689B10((*(*(a1 + 72) + 8) + 48), &v277);
        goto LABEL_30;
      }

      objc_msgSend_addObject_(*(a1 + 32), v117, v5, v119, v120, v121);
      v22 = *(*(a1 + 64) + 8);
      v122 = v22[8];
      v24 = v22[7];
      v123 = ((v122 - v24) << 6) - 1;
      if (v122 == v24)
      {
        v123 = 0;
      }

      v26 = v22[11] + v22[10];
      if (v123 != v26)
      {
        goto LABEL_29;
      }
    }

LABEL_28:
    sub_183689B9C(v22 + 6);
    v24 = v22[7];
    v26 = v22[11] + v22[10];
LABEL_29:
    *(*(v24 + ((v26 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v26 & 0x1FF)) = a3;
    ++v22[11];
    goto LABEL_30;
  }

  v32 = *(*(*(a1 + 48) + 8) + 88);

  if (!v32)
  {
    goto LABEL_10;
  }

  v38 = *(*(a1 + 48) + 8);
  v39 = v38[11] + v38[10] - 1;
  v40 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v33, *(*(v38[7] + ((v39 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v39 & 0x1FF)), v35, v36, v37);
  v44 = objc_msgSend_updatedToken_withString_(CHTokenizedMathResultToken, v41, v40, @"\\left("), v42, v43;
  v45 = *(*(a1 + 48) + 8);
  v46 = v45[11] + v45[10] - 1;
  objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 32), v47, v44, *(*(v45[7] + ((v46 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v46 & 0x1FF)), v48, v49);

  v50 = *(a1 + 32);
  v54 = objc_msgSend_updatedToken_withString_(CHTokenizedMathResultToken, v51, v5, @"\\right"), v52, v53);
  objc_msgSend_addObject_(v50, v55, v54, v56, v57, v58);

  v59 = *(a1 + 48);
LABEL_18:
  v104 = *(v59 + 8);
  v106 = v104[7];
  v105 = v104[8];
  v107 = ((v105 - v106) << 6) - 1;
  v108 = v105 == v106;
  v110 = v104[10];
  v109 = v104[11];
  if (v108)
  {
    v107 = 0;
  }

  v104[11] = v109 - 1;
  if ((v107 - (v109 + v110) + 1) >= 0x400)
  {
    operator delete(*(v105 - 8));
    v104[8] -= 8;
  }

LABEL_30:
}

void sub_183678458(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = ((v1 - v2) << 6) - 1;
  v4 = v1 == v2;
  v6 = a1[4];
  v5 = a1[5];
  if (v4)
  {
    v3 = 0;
  }

  a1[5] = v5 - 1;
  if ((v3 - (v5 + v6) + 1) >= 0x400)
  {
    operator delete(*(v1 - 8));
    a1[2] -= 8;
  }
}

void sub_183678C88(uint64_t a1, void *a2, unint64_t a3)
{
  v49 = a2;
  if ((objc_msgSend_properties(v49, v5, v6, v7, v8, v9) & 0x2000) != 0)
  {
    objc_msgSend_addObject_(*(a1 + 32), v10, v49, v12, v13, v14);
  }

  else
  {
    if (!a3)
    {
      *(*(*(a1 + 40) + 8) + 24) = (objc_msgSend_properties(v49, v10, v11, v12, v13, v14) & 0x80) != 0;
    }

    if (!objc_msgSend_properties(v49, v10, v11, v12, v13, v14) || (objc_msgSend_properties(v49, v15, v16, v17, v18, v19) & 0x10) != 0 || (objc_msgSend_properties(v49, v15, v16, v17, v18, v19) & 4) != 0 && (objc_msgSend_string(v49, v15, v16, v17, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v20, v21, @"'", v22, v23, v24), v20, (isEqualToString & 1) != 0) || (objc_msgSend_properties(v49, v15, v16, v17, v18, v19) & 0x20) != 0 || *(*(*(a1 + 40) + 8) + 24) == 1 && (objc_msgSend_properties(v49, v15, v16, v17, v18, v19) & 0x40) != 0)
    {
      v31 = objc_msgSend_mutableCopy(v49, v15, v16, v17, v18, v19);
      v36 = v31;
      if (*(*(*(a1 + 48) + 8) + 24) == 1 && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0 || (v37 = *(a1 + 56), v37 == 0x7FFFFFFFFFFFFFFFLL) || v37 > a3 || *(a1 + 64) + v37 <= a3)
      {
        objc_msgSend_setProperties_(v31, v32, 64, v33, v34, v35);
      }

      else
      {
        objc_msgSend_setProperties_(v31, v32, 0x80000, v33, v34, v35);
      }

      v43 = *(a1 + 32);
      v44 = objc_msgSend_copy(v36, v38, v39, v40, v41, v42);
      objc_msgSend_addObject_(v43, v45, v44, v46, v47, v48);
    }

    else
    {
      objc_msgSend_addObject_(*(a1 + 32), v15, v49, v17, v18, v19);
    }

    *(*(*(a1 + 48) + 8) + 24) = (objc_msgSend_properties(v49, v26, v27, v28, v29, v30) & 2) != 0;
  }
}

void sub_183678F80(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = objc_msgSend_objectForKey_(*(a1 + 32), a2, qword_1EA84BB50, a4, a5, a6);
  if (v20)
  {
    v6 = objc_alloc(MEMORY[0x1E69922B8]);
    v11 = objc_msgSend_initWithLocales_(v6, v7, v20, v8, v9, v10);
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E69922B8]);
  }

  v12 = qword_1EA84C980;
  qword_1EA84C980 = v11;

  v18 = objc_msgSend_conversionVerbs(qword_1EA84C980, v13, v14, v15, v16, v17);
  v19 = qword_1EA84C970;
  qword_1EA84C970 = v18;
}

void sub_1836793CC(uint64_t a1, void *a2)
{
  v45 = a2;
  v8 = objc_msgSend_string(v45, v3, v4, v5, v6, v7);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"=", v10, v11, v12);

  *(*(*(a1 + 48) + 8) + 24) &= isEqualToString ^ 1;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v19 = objc_msgSend_mutableCopy(v45, v14, v15, v16, v17, v18);
    v25 = objc_msgSend_properties(v19, v20, v21, v22, v23, v24);
    objc_msgSend_setProperties_(v19, v26, v25 | 0x10, v27, v28, v29);
    objc_msgSend_addObject_(*(a1 + 32), v30, v19, v31, v32, v33);
    v34 = *(a1 + 40);
    v40 = objc_msgSend_copy(v19, v35, v36, v37, v38, v39);
    objc_msgSend_addObject_(v34, v41, v40, v42, v43, v44);
  }

  else
  {
    objc_msgSend_addObject_(*(a1 + 40), v14, v45, v16, v17, v18);
  }
}

void sub_1836794C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_183679988(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x1E695DFD8];
  v18 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], a2, a3, a4, a5, a6);
  v11 = objc_msgSend_componentsSeparatedByCharactersInSet_(@"0 1 2 3 4 5 6 7 8 9 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z a b c d e f g h i j k l m n o p q r s t u v w x y z ! } \\right \\right\\rfloor \\right\\rceil \\right| \\$ € £ ¥ ¢ ₺ ₴ ₽ ₩"), v7, v18, v8, v9, v10);
  v16 = objc_msgSend_setWithArray_(v6, v12, v11, v13, v14, v15);
  v17 = qword_1EA84DA88;
  qword_1EA84DA88 = v16;
}

void sub_183679A44(uint64_t a1, void *a2)
{
  v83 = a2;
  v8 = objc_msgSend_properties(v83, v3, v4, v5, v6, v7);
  v14 = objc_msgSend_properties(v83, v9, v10, v11, v12, v13);
  v20 = objc_msgSend_properties(v83, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_properties(v83, v21, v22, v23, v24, v25);
  v37 = objc_msgSend_properties(v83, v27, v28, v29, v30, v31);
  v38 = (v20 >> 19) & 1;
  v39 = v8 & 0x40;
  if (((v8 & 0x40) != 0 && *(*(*(a1 + 40) + 8) + 24) != 1 || v14 < 0 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0) && (*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && *(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v40 = [CHTokenizedMathResultToken alloc];
    v46 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v41, v42, v43, v44, v45);
    v49 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v40, v47, @"\\,", v46, 0x2000, v48, 1.0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));

    objc_msgSend_addObject_(*(a1 + 32), v50, v49, v51, v52, v53);
LABEL_15:

    goto LABEL_16;
  }

  if ((v26 & 0x2000) != 0)
  {
    v49 = objc_msgSend_string(v83, v32, v33, v34, v35, v36);
    if (objc_msgSend_isEqualToString_(v49, v67, @"\", v68, v69, v70))
    {
      v71 = *(*(*(a1 + 72) + 8) + 24);

      if (v71 != 1)
      {
        goto LABEL_16;
      }

      objc_msgSend_updatedToken_withString_(CHTokenizedMathResultToken, v32, v83, @"\\,", v35, v36);
      v83 = v49 = v83;
    }

    goto LABEL_15;
  }

  if (v38 != *(*(*(a1 + 56) + 8) + 24) && *(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v54 = [CHTokenizedMathResultToken alloc];
    v60 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v55, v56, v57, v58, v59);
    v49 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v54, v61, @"\", v60, 0x2000, v62, 1.0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));

    objc_msgSend_addObject_(*(a1 + 32), v63, v49, v64, v65, v66);
    goto LABEL_15;
  }

LABEL_16:
  objc_msgSend_addObject_(*(a1 + 32), v32, v83, v34, v35, v36);
  *(*(*(a1 + 40) + 8) + 24) = v39 >> 6;
  *(*(*(a1 + 48) + 8) + 24) = v14 < 0;
  *(*(*(a1 + 72) + 8) + 24) = (v37 & 2) != 0;
  *(*(*(a1 + 56) + 8) + 24) = v38;
  v72 = qword_1EA84DA88;
  v78 = objc_msgSend_string(v83, v73, v74, v75, v76, v77);
  *(*(*(a1 + 64) + 8) + 24) = objc_msgSend_containsObject_(v72, v79, v78, v80, v81, v82);
}

void sub_18367A28C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v35 = v3;
  v10 = objc_msgSend_string(v3, v5, v6, v7, v8, v9);
  LODWORD(v4) = objc_msgSend_containsObject_(v4, v11, v10, v12, v13, v14);

  if (v4)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = objc_msgSend_string(v35, v15, v16, v17, v18, v19);
    v26 = objc_msgSend_stringWithFormat_(v20, v22, @"\\text{%@}", v23, v24, v25, v21);

    v30 = objc_msgSend_updatedToken_withString_(CHTokenizedMathResultToken, v27, v35, v26, v28, v29);
    objc_msgSend_addObject_(*(a1 + 40), v31, v30, v32, v33, v34);
  }

  else
  {
    objc_msgSend_addObject_(*(a1 + 40), v15, v35, v17, v18, v19);
  }
}

void sub_18367AE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  _Block_object_dispose(&a21, 8);
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  v35 = *(v33 - 128);
  if (v35)
  {
    *(v33 - 120) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

__n128 sub_18367AFD4(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_18367AFF8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_18367B010(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v15 = a2;
  if ((objc_msgSend_properties(v15, v6, v7, v8, v9, v10) & 0x2000) != 0)
  {
    sub_18367B094(*(*(a1 + 40) + 8) + 48, a4);
  }

  objc_msgSend_addObject_(*(a1 + 32), v11, v15, v12, v13, v14);
}

void sub_18367B094(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_18368964C();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_183688F00();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

double sub_18367BB7C(void *a1, void *a2)
{
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  v2 = a2[10];
  a1[9] = a2[9];
  result = 0.0;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  a1[10] = v2;
  a1[11] = a2[11];
  a2[10] = 0;
  a2[11] = 0;
  return result;
}

uint64_t sub_18367BBC0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    v3 = *(a1 + 8);
    *(a1 + 40) = 0;
    v10 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 >> 9];
    v6 = (*v5 + 8 * (v4 & 0x1FF));
    v7 = *(v2 + (((*(a1 + 40) + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 40) + v4) & 0x1FF);
    if (v6 != v7)
    {
      do
      {
        v8 = *v6++;

        if (v6 - *v5 == 4096)
        {
          v9 = v5[1];
          ++v5;
          v6 = v9;
        }
      }

      while (v6 != v7);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 256;
    goto LABEL_15;
  }

  if (v10 == 2)
  {
    v11 = 512;
LABEL_15:
    *(a1 + 32) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 != v14)
    {
      *(a1 + 16) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_18367BD34(void *a1, void *a2)
{
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  v2 = a2[10];
  a1[9] = a2[9];
  result = 0.0;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  a1[10] = v2;
  a1[11] = a2[11];
  a2[10] = 0;
  a2[11] = 0;
  return result;
}

void sub_18367BD70(void *a1)
{
  v2 = a1[7];
  v3 = a1[8];
  if (v3 == v2)
  {
    v3 = a1[7];
    a1[11] = 0;
    v10 = 0;
  }

  else
  {
    v4 = a1[10];
    v5 = &v2[v4 >> 9];
    v6 = (*v5 + 8 * (v4 & 0x1FF));
    v7 = *(v2 + (((a1[11] + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[11] + v4) & 0x1FF);
    if (v6 != v7)
    {
      do
      {
        v8 = *v6++;

        if (v6 - *v5 == 4096)
        {
          v9 = v5[1];
          ++v5;
          v6 = v9;
        }
      }

      while (v6 != v7);
      v2 = a1[7];
      v3 = a1[8];
    }

    a1[11] = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = a1[8];
        v2 = (a1[7] + 8);
        a1[7] = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 256;
    goto LABEL_15;
  }

  if (v10 == 2)
  {
    v11 = 512;
LABEL_15:
    a1[10] = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = a1[7];
    v13 = a1[8];
    if (v13 != v14)
    {
      a1[8] = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v15 = a1[6];
  if (v15)
  {

    operator delete(v15);
  }
}

double sub_18367BF04(void *a1, void *a2)
{
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  v2 = a2[10];
  a1[9] = a2[9];
  result = 0.0;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  a1[10] = v2;
  a1[11] = a2[11];
  a2[10] = 0;
  a2[11] = 0;
  return result;
}

void sub_18367BF48(uint64_t a1, void *a2)
{
  v335 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = objc_msgSend_string(v3, v4, v5, v6, v7, v8);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v10, @"^", v11, v12, v13);

  if (isEqualToString)
  {
    v20 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v15, v3, v17, v18, v19);
    v21 = *(*(a1 + 48) + 8);
    v22 = v21[7];
    v23 = v21[8];
    v24 = ((v23 - v22) << 6) - 1;
    if (v23 == v22)
    {
      v24 = 0;
    }

    if (v24 == v21[11] + v21[10])
    {
      sub_18368A534(v21 + 6);
      v22 = v21[7];
      v23 = v21[8];
    }

    if (v23 == v22)
    {
      v26 = 0;
    }

    else
    {
      v25 = v21[11] + v21[10];
      v26 = (*(v22 + ((v25 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v25 & 0x1FF));
    }

    v324 = v20;
    *v26 = v324;
    ++v21[11];
    v107 = objc_msgSend_strokeIndexes(v3, v102, v103, v104, v105, v106);
    v325 = objc_msgSend_mutableCopy(v107, v108, v109, v110, v111, v112);

    v113 = *(*(a1 + 56) + 8);
    v115 = v113[7];
    v114 = v113[8];
    if (v114 == v115)
    {
      v116 = 0;
    }

    else
    {
      v116 = ((v114 - v115) << 6) - 1;
    }

    v117 = v113[10];
    if (v116 == v113[11] + v117)
    {
      v118 = v117 >= 0x200;
      v119 = v117 - 512;
      if (!v118)
      {
        v256 = v113[9];
        v257 = v113[6];
        if (v114 - v115 < (v256 - v257))
        {
          operator new();
        }

        if (v256 == v257)
        {
          v258 = 1;
        }

        else
        {
          v258 = (v256 - v257) >> 2;
        }

        if (!(v258 >> 61))
        {
          operator new();
        }

        sub_183688F00();
      }

      v113[10] = v119;
      __p[0] = *v115;
      v113[7] = v115 + 1;
      sub_18368AB74(v113 + 6, __p);
      v115 = v113[7];
      v114 = v113[8];
    }

    if (v114 == v115)
    {
      v298 = 0;
    }

    else
    {
      v297 = v113[11] + v113[10];
      v298 = *(v115 + ((v297 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v297 & 0x1FF);
    }

    v299 = v325;
    *v298 = v299;
    ++v113[11];
    v305 = objc_msgSend_string(v3, v300, v301, v302, v303, v304);
    v311 = objc_msgSend_mutableCopy(v305, v306, v307, v308, v309, v310);

    v312 = *(*(a1 + 64) + 8);
    v313 = v312[7];
    v314 = v312[8];
    v315 = ((v314 - v313) << 6) - 1;
    if (v314 == v313)
    {
      v315 = 0;
    }

    if (v315 == v312[11] + v312[10])
    {
      sub_18368AD08(v312 + 6);
      v313 = v312[7];
      v314 = v312[8];
    }

    if (v314 == v313)
    {
      v317 = 0;
    }

    else
    {
      v316 = v312[11] + v312[10];
      v317 = (*(v313 + ((v316 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v316 & 0x1FF));
    }

    v318 = v311;
    *v317 = v318;
    ++v312[11];
    v319 = *(*(a1 + 72) + 8);
    v320 = v319[8];
    v321 = v319[7];
    v322 = ((v320 - v321) << 6) - 1;
    if (v320 == v321)
    {
      v322 = 0;
    }

    v323 = v319[11] + v319[10];
    if (v322 == v323)
    {
      sub_183689B9C(v319 + 6);
      v321 = v319[7];
      v323 = v319[11] + v319[10];
    }

    *(*(v321 + ((v323 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v323 & 0x1FF)) = 0;
    ++v319[11];

    goto LABEL_101;
  }

  v27 = *(a1 + 48);
  v28 = *(v27 + 8);
  v29 = v28[11];
  if (v29)
  {
    if (objc_msgSend_count(*(*(v28[7] + (((v29 + v28[10] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v29 + v28[10] - 1) & 0x1FF)), v15, v16, v17, v18, v19) == 1)
    {
      v31 = objc_msgSend_string(v3, v15, v30, v17, v18, v19);
      v36 = objc_msgSend_isEqualToString_(v31, v32, @"{", v33, v34, v35);

      v27 = *(a1 + 48);
      if ((v36 & 1) == 0)
      {
        v37 = *(v27 + 8);
        v38 = v37[11] + v37[10] - 1;
        v39 = *(*(v37[7] + ((v38 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v38 & 0x1FF));
        v40 = *(*(a1 + 56) + 8);
        v41 = v40[11] + v40[10] - 1;
        v42 = *(*(v40[7] + ((v41 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v41 & 0x1FF));
        v43 = *(*(a1 + 64) + 8);
        v44 = v43[11] + v43[10] - 1;
        v45 = *(*(v43[7] + ((v44 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v44 & 0x1FF));
        v46 = *(*(a1 + 48) + 8);
        v47 = v46[11] + v46[10] - 1;

        v49 = v46[7];
        v48 = v46[8];
        v50 = v48 - v49;
        v51 = v48 == v49;
        v53 = v46[10];
        v52 = v46[11];
        v46[11] = v52 - 1;
        v54 = (v50 << 6) - 1;
        if (v51)
        {
          v54 = 0;
        }

        if ((v54 - (v52 + v53) + 1) >= 0x400)
        {
          operator delete(*(v48 - 8));
          v46[8] -= 8;
        }

        v55 = *(*(a1 + 56) + 8);
        v56 = v55[11] + v55[10] - 1;

        v58 = v55[7];
        v57 = v55[8];
        v59 = v57 - v58;
        v51 = v57 == v58;
        v61 = v55[10];
        v60 = v55[11];
        v55[11] = v60 - 1;
        v62 = (v59 << 6) - 1;
        if (v51)
        {
          v62 = 0;
        }

        if ((v62 - (v60 + v61) + 1) >= 0x400)
        {
          operator delete(*(v57 - 8));
          v55[8] -= 8;
        }

        v63 = *(*(a1 + 64) + 8);
        v64 = v63[11] + v63[10] - 1;

        v70 = v63[7];
        v69 = v63[8];
        v71 = v69 - v70;
        v51 = v69 == v70;
        v73 = v63[10];
        v72 = v63[11];
        v63[11] = v72 - 1;
        v74 = (v71 << 6) - 1;
        if (v51)
        {
          v74 = 0;
        }

        if ((v74 - (v72 + v73) + 1) >= 0x400)
        {
          operator delete(*(v69 - 8));
          v63[8] -= 8;
        }

        v75 = *(*(a1 + 72) + 8);
        v77 = v75[7];
        v76 = v75[8];
        v78 = ((v76 - v77) << 6) - 1;
        v51 = v76 == v77;
        v80 = v75[10];
        v79 = v75[11];
        if (v51)
        {
          v78 = 0;
        }

        v75[11] = v79 - 1;
        if ((v78 - (v79 + v80) + 1) >= 0x400)
        {
          operator delete(*(v76 - 8));
          v75[8] -= 8;
        }

        v81 = *(*(a1 + 48) + 8);
        v82 = v81[11];
        if (v82)
        {
          objc_msgSend_addObjectsFromArray_(*(*(v81[7] + (((v82 + v81[10] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v82 + v81[10] - 1) & 0x1FF)), v65, v39, v66, v67, v68);
          v83 = *(*(a1 + 56) + 8);
          v84 = v83[11] + v83[10] - 1;
          objc_msgSend_addIndexes_(*(*(v83[7] + ((v84 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v84 & 0x1FF)), v85, v42, v86, v87, v88);
          v89 = *(*(a1 + 64) + 8);
          v90 = v89[11] + v89[10] - 1;
          objc_msgSend_appendFormat_(*(*(v89[7] + ((v90 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v90 & 0x1FF)), v91, @" %@", v92, v93, v94, v45);
          v99 = *(*(a1 + 48) + 8);
          v100 = v99[11] + v99[10] - 1;
          v101 = (*(v99[7] + ((v100 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v100 & 0x1FF));
        }

        else
        {
          v259 = *(a1 + 32);
          v101 = (a1 + 32);
          objc_msgSend_addObjectsFromArray_(v259, v65, v39, v66, v67, v68);
        }

        objc_msgSend_addObject_(*v101, v95, v3, v96, v97, v98);

        goto LABEL_101;
      }
    }

    else
    {
      v27 = *(a1 + 48);
    }
  }

  v120 = *(v27 + 8);
  v121 = v120[11];
  if (v121)
  {
    objc_msgSend_addObject_(*(*(v120[7] + (((v121 + v120[10] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v121 + v120[10] - 1) & 0x1FF)), v15, v3, v17, v18, v19);
    v122 = *(*(a1 + 56) + 8);
    v123 = v122[11] + v122[10] - 1;
    v124 = *(*(v122[7] + ((v123 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v123 & 0x1FF));
    v130 = objc_msgSend_strokeIndexes(v3, v125, v126, v127, v128, v129);
    objc_msgSend_addIndexes_(v124, v131, v130, v132, v133, v134);

    v135 = *(*(a1 + 64) + 8);
    v136 = v135[11] + v135[10] - 1;
    v137 = *(*(v135[7] + ((v136 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v136 & 0x1FF));
    v143 = objc_msgSend_string(v3, v138, v139, v140, v141, v142);
    objc_msgSend_appendFormat_(v137, v144, @" %@", v145, v146, v147, v143);

    v153 = objc_msgSend_string(v3, v148, v149, v150, v151, v152);
    LODWORD(v137) = objc_msgSend_isEqualToString_(v153, v154, @"{", v155, v156, v157);

    if (v137)
    {
      v163 = *(*(a1 + 72) + 8);
      v164 = v163[11] + v163[10] - 1;
      v165 = *(v163[7] + ((v164 >> 6) & 0x3FFFFFFFFFFFFF8));
      ++*(v165 + 8 * (v164 & 0x1FF));
    }

    else
    {
      v166 = objc_msgSend_string(v3, v158, v159, v160, v161, v162);
      v171 = objc_msgSend_isEqualToString_(v166, v167, @"}", v168, v169, v170);

      if (v171)
      {
        v172 = *(*(a1 + 72) + 8);
        v173 = v172[11] + v172[10] - 1;
        v174 = *(v172[7] + ((v173 >> 6) & 0x3FFFFFFFFFFFFF8));
        --*(v174 + 8 * (v173 & 0x1FF));
        v175 = *(*(a1 + 72) + 8);
        v176 = v175[11] + v175[10] - 1;
        if (!*(*(v175[7] + ((v176 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v176 & 0x1FF)))
        {
          v177 = *(*(a1 + 48) + 8);
          v178 = v177[11] + v177[10] - 1;
          v179 = *(*(v177[7] + ((v178 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v178 & 0x1FF));
          v180 = *(*(a1 + 56) + 8);
          v181 = v180[11] + v180[10] - 1;
          v326 = *(*(v180[7] + ((v181 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v181 & 0x1FF));
          v182 = *(*(a1 + 64) + 8);
          v183 = v182[11] + v182[10] - 1;
          v184 = *(*(v182[7] + ((v183 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v183 & 0x1FF));
          v185 = *(*(a1 + 48) + 8);
          v186 = v185[11] + v185[10] - 1;

          v188 = v185[7];
          v187 = v185[8];
          v189 = v187 - v188;
          v51 = v187 == v188;
          v191 = v185[10];
          v190 = v185[11];
          v185[11] = v190 - 1;
          v192 = (v189 << 6) - 1;
          if (v51)
          {
            v192 = 0;
          }

          if ((v192 - (v190 + v191) + 1) >= 0x400)
          {
            operator delete(*(v187 - 8));
            v185[8] -= 8;
          }

          v193 = *(*(a1 + 56) + 8);
          v194 = v193[11] + v193[10] - 1;

          v196 = v193[7];
          v195 = v193[8];
          v197 = v195 - v196;
          v51 = v195 == v196;
          v199 = v193[10];
          v198 = v193[11];
          v193[11] = v198 - 1;
          v200 = (v197 << 6) - 1;
          if (v51)
          {
            v200 = 0;
          }

          if ((v200 - (v198 + v199) + 1) >= 0x400)
          {
            operator delete(*(v195 - 8));
            v193[8] -= 8;
          }

          v201 = *(*(a1 + 64) + 8);
          v202 = v201[11] + v201[10] - 1;

          v204 = v201[7];
          v203 = v201[8];
          v205 = v203 - v204;
          v51 = v203 == v204;
          v207 = v201[10];
          v206 = v201[11];
          v201[11] = v206 - 1;
          v208 = (v205 << 6) - 1;
          if (v51)
          {
            v208 = 0;
          }

          if ((v208 - (v206 + v207) + 1) >= 0x400)
          {
            operator delete(*(v203 - 8));
            v201[8] -= 8;
          }

          v209 = *(*(a1 + 72) + 8);
          v211 = v209[7];
          v210 = v209[8];
          v212 = ((v210 - v211) << 6) - 1;
          v51 = v210 == v211;
          v214 = v209[10];
          v213 = v209[11];
          if (v51)
          {
            v212 = 0;
          }

          v209[11] = v213 - 1;
          if ((v212 - (v213 + v214) + 1) >= 0x400)
          {
            operator delete(*(v210 - 8));
            v209[8] -= 8;
          }

          v215 = v179;
          v216 = v184;
          v225 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 40) + 8), v217, v216, v218, v219, v220);
          v226 = v216;
          v227 = v215;
          if (v225)
          {
            x = *MEMORY[0x1E695F050];
            y = *(MEMORY[0x1E695F050] + 8);
            width = *(MEMORY[0x1E695F050] + 16);
            height = *(MEMORY[0x1E695F050] + 24);
            v329 = 0u;
            v330 = 0u;
            v331 = 0u;
            v332 = 0u;
            v232 = v215;
            v240 = objc_msgSend_countByEnumeratingWithState_objects_count_(v232, v233, &v329, v334, 16, v234);
            if (v240)
            {
              v241 = *v330;
              v242 = 1.0;
              do
              {
                for (i = 0; i != v240; ++i)
                {
                  if (*v330 != v241)
                  {
                    objc_enumerationMutation(v232);
                  }

                  v244 = *(*(&v329 + 1) + 8 * i);
                  objc_msgSend_score(v244, v235, v236, v237, v238, v239);
                  v246 = v245;
                  objc_msgSend_bounds(v244, v247, v248, v249, v250, v251);
                  v338.origin.x = v252;
                  v338.origin.y = v253;
                  v338.size.width = v254;
                  v338.size.height = v255;
                  v336.origin.x = x;
                  v336.origin.y = y;
                  v336.size.width = width;
                  v336.size.height = height;
                  v337 = CGRectUnion(v336, v338);
                  x = v337.origin.x;
                  y = v337.origin.y;
                  width = v337.size.width;
                  height = v337.size.height;
                  v242 = v242 * v246;
                }

                v240 = objc_msgSend_countByEnumeratingWithState_objects_count_(v232, v235, &v329, v334, 16, v239);
              }

              while (v240);
            }

            else
            {
              v242 = 1.0;
            }

            v260 = *(a1 + 40);
            v261 = v225;
            v267 = objc_msgSend_UTF8String(v225, v262, v263, v264, v265, v266);
            sub_183675458(__p, v267);
            v268 = sub_18367D41C((v260 + 16), __p);
            if (v328 < 0)
            {
              operator delete(__p[0]);
            }

            v269 = [CHTokenizedMathResultToken alloc];
            v275 = objc_msgSend_copy(v326, v270, v271, v272, v273, v274);
            v278 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v269, v276, v225, v275, v268, v277, v242, x, y, width, height);

            v333 = v278;
            v282 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v279, &v333, 1, v280, v281);

            v226 = v225;
            v227 = v282;
          }

          v283 = *(*(a1 + 48) + 8);
          v284 = v283[11];
          if (v284)
          {
            objc_msgSend_addObjectsFromArray_(*(*(v283[7] + (((v284 + v283[10] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v284 + v283[10] - 1) & 0x1FF)), v221, v227, v222, v223, v224);
            v285 = *(*(a1 + 56) + 8);
            v286 = v285[11] + v285[10] - 1;
            objc_msgSend_addIndexes_(*(*(v285[7] + ((v286 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v286 & 0x1FF)), v287, v326, v288, v289, v290);
            v291 = *(*(a1 + 64) + 8);
            v292 = v291[11] + v291[10] - 1;
            objc_msgSend_appendFormat_(*(*(v291[7] + ((v292 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v292 & 0x1FF)), v293, @" %@", v294, v295, v296, v226);
          }

          else
          {
            objc_msgSend_addObjectsFromArray_(*(a1 + 32), v221, v227, v222, v223, v224);
          }
        }
      }
    }
  }

  else
  {
    objc_msgSend_addObject_(*(a1 + 32), v15, v3, v17, v18, v19);
  }

LABEL_101:
}

uint64_t sub_18367D41C(void *a1, void *a2)
{
  if (sub_183686288(a1, a2))
  {
    return 1;
  }

  if (sub_183686288(a1 + 5, a2))
  {
    return 2;
  }

  if (sub_183686288(a1 + 10, a2))
  {
    return 4;
  }

  if (sub_183686288(a1 + 15, a2))
  {
    return 8;
  }

  if (sub_183686288(a1 + 20, a2))
  {
    return 128;
  }

  if (sub_183686288(a1 + 25, a2))
  {
    return 0x200000;
  }

  if (sub_183686288(a1 + 30, a2))
  {
    return 32;
  }

  if (sub_183686288(a1 + 35, a2))
  {
    return 2048;
  }

  if (sub_183686288(a1 + 40, a2))
  {
    return 4096;
  }

  if (sub_183686288(a1 + 50, a2))
  {
    return 0x2000;
  }

  if (sub_183686288(a1 + 55, a2))
  {
    return 0x4000;
  }

  if (sub_183686288(a1 + 45, a2))
  {
    return 256;
  }

  if (sub_1836861FC(a2, "\\%"))
  {
    return 512;
  }

  if (sub_1836861FC(a2, "!"))
  {
    return 1024;
  }

  if (sub_1836861FC(a2, "\\frac"))
  {
    return 0x8000;
  }

  if (sub_1836861FC(a2, "\\sqrt"))
  {
    return 0x10000;
  }

  if (sub_1836861FC(a2, "\\hline"))
  {
    return 0x20000;
  }

  if (sub_1836861FC(a2, "="))
  {
    return 0x40000;
  }

  return 0;
}

void sub_18367DE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (v28)
  {
    operator delete(v28);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_18367E64C(uint64_t a1, void *a2)
{
  v22 = a2;
  v8 = objc_msgSend_string(v22, v3, v4, v5, v6, v7);
  v9 = sub_1837C14B0(v8);

  v14 = v22;
  if ((v9 & 1) == 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    v15 = *(*(a1 + 48) + 8);
    if (*(v15 + 24) == 1)
    {
      *(v15 + 24) = 1;
    }

    else
    {
      v16 = objc_msgSend_strokeIndexes(v22, v22, v10, v11, v12, v13);
      *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_count(v16, v17, v18, v19, v20, v21) == 0;

      v14 = v22;
    }
  }

  objc_msgSend_addObject_(*(a1 + 32), v14, v14, v11, v12, v13);
}

void sub_18367F634(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_18367FFA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18367FFBC(uint64_t a1, void *a2, uint64_t a3)
{
  v417 = *MEMORY[0x1E69E9840];
  v404 = a2;
  v9 = objc_msgSend_string(v404, v4, v5, v6, v7, v8);
  if (!objc_msgSend_isEqualToString_(v9, v10, @"_", v11, v12, v13))
  {

LABEL_10:
    v27 = *(*(a1 + 80) + 8);
    v28 = v27[11];
    if (v28)
    {
      v29 = v404;
      objc_msgSend_addObject_(*(*(v27[7] + (((v28 + v27[10] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v28 + v27[10] - 1) & 0x1FF)), v15, v404, v16, v17, v18);
      v30 = *(*(a1 + 104) + 8);
      v31 = v30[11] + v30[10] - 1;
      v32 = *(*(v30[7] + ((v31 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v31 & 0x1FF));
      v38 = objc_msgSend_string(v404, v33, v34, v35, v36, v37);
      objc_msgSend_appendFormat_(v32, v39, @"%@", v40, v41, v42, v38);

      v48 = objc_msgSend_string(v404, v43, v44, v45, v46, v47);
      LODWORD(v38) = objc_msgSend_isEqualToString_(v48, v49, @"{", v50, v51, v52);

      if (v38)
      {
        v58 = *(*(a1 + 112) + 8);
        v59 = v58[11] + v58[10] - 1;
        v60 = *(v58[7] + ((v59 >> 6) & 0x3FFFFFFFFFFFFF8));
        ++*(v60 + 8 * (v59 & 0x1FF));
      }

      else
      {
        v61 = objc_msgSend_string(v404, v53, v54, v55, v56, v57);
        isEqualToString = objc_msgSend_isEqualToString_(v61, v62, @"}", v63, v64, v65);

        if (isEqualToString)
        {
          v72 = *(*(a1 + 112) + 8);
          v73 = v72[11] + v72[10] - 1;
          v74 = *(v72[7] + ((v73 >> 6) & 0x3FFFFFFFFFFFFF8));
          --*(v74 + 8 * (v73 & 0x1FF));
          v75 = *(*(a1 + 112) + 8);
          v76 = v75[11] + v75[10] - 1;
          if (!*(*(v75[7] + ((v76 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v76 & 0x1FF)))
          {
            v77 = *(*(a1 + 88) + 8);
            v78 = v77[11] + v77[10] - 1;
            v79 = objc_msgSend_reverseObjectEnumerator(*(*(v77[7] + ((v78 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v78 & 0x1FF)), v67, v68, v69, v70, v71);
            v85 = objc_msgSend_allObjects(v79, v80, v81, v82, v83, v84);

            v86 = *(*(a1 + 80) + 8);
            v87 = v86[11] + v86[10] - 1;
            v398 = *(*(v86[7] + ((v87 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v87 & 0x1FF));
            v88 = *(*(a1 + 96) + 8);
            v89 = v88[11] + v88[10] - 1;
            v399 = *(*(v88[7] + ((v89 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v89 & 0x1FF));
            v90 = *(*(a1 + 104) + 8);
            v91 = v90[11] + v90[10] - 1;
            v400 = *(*(v90[7] + ((v91 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v91 & 0x1FF));
            v92 = *(*(a1 + 88) + 8);
            v93 = v92[11] + v92[10] - 1;

            v95 = v92[7];
            v94 = v92[8];
            v96 = v94 - v95;
            v97 = v94 == v95;
            v99 = v92[10];
            v98 = v92[11];
            v92[11] = v98 - 1;
            v100 = (v96 << 6) - 1;
            if (v97)
            {
              v100 = 0;
            }

            if ((v100 - (v98 + v99) + 1) >= 0x400)
            {
              operator delete(*(v94 - 8));
              v92[8] -= 8;
            }

            v101 = *(*(a1 + 80) + 8);
            v102 = v101[11] + v101[10] - 1;

            v104 = v101[7];
            v103 = v101[8];
            v105 = v103 - v104;
            v97 = v103 == v104;
            v107 = v101[10];
            v106 = v101[11];
            v101[11] = v106 - 1;
            v108 = (v105 << 6) - 1;
            if (v97)
            {
              v108 = 0;
            }

            if ((v108 - (v106 + v107) + 1) >= 0x400)
            {
              operator delete(*(v103 - 8));
              v101[8] -= 8;
            }

            v109 = *(*(a1 + 96) + 8);
            v110 = v109[11] + v109[10] - 1;

            v112 = v109[7];
            v111 = v109[8];
            v113 = v111 - v112;
            v97 = v111 == v112;
            v115 = v109[10];
            v114 = v109[11];
            v109[11] = v114 - 1;
            v116 = (v113 << 6) - 1;
            if (v97)
            {
              v116 = 0;
            }

            if ((v116 - (v114 + v115) + 1) >= 0x400)
            {
              operator delete(*(v111 - 8));
              v109[8] -= 8;
            }

            v117 = *(*(a1 + 104) + 8);
            v118 = v117[11] + v117[10] - 1;

            v124 = v117[7];
            v123 = v117[8];
            v125 = v123 - v124;
            v97 = v123 == v124;
            v127 = v117[10];
            v126 = v117[11];
            v117[11] = v126 - 1;
            v128 = (v125 << 6) - 1;
            if (v97)
            {
              v128 = 0;
            }

            if ((v128 - (v126 + v127) + 1) >= 0x400)
            {
              operator delete(*(v123 - 8));
              v117[8] -= 8;
            }

            v129 = *(*(a1 + 112) + 8);
            v131 = v129[7];
            v130 = v129[8];
            v132 = ((v130 - v131) << 6) - 1;
            v97 = v130 == v131;
            v134 = v129[10];
            v133 = v129[11];
            if (v97)
            {
              v132 = 0;
            }

            v129[11] = v133 - 1;
            if ((v132 - (v133 + v134) + 1) >= 0x400)
            {
              operator delete(*(v130 - 8));
              v129[8] -= 8;
            }

            v397 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v119, @"%@%@", v120, v121, v122, v399, v400);
            v29 = v404;
            v395 = objc_msgSend_componentsSeparatedByCharactersInSet_(v397, v135, *(a1 + 48), v136, v137, v138);
            v396 = objc_msgSend_componentsJoinedByString_(v395, v139, &stru_1EF1C0318, v140, v141, v142);
            v143 = objc_alloc_init(MEMORY[0x1E695DF70]);
            if (objc_msgSend_count(v85, v144, v145, v146, v147, v148) && (objc_msgSend_lastObject(v85, v149, v150, v151, v152, v153), v154 = objc_claimAutoreleasedReturnValue(), objc_msgSend_string(v154, v155, v156, v157, v158, v159), v160 = objc_claimAutoreleasedReturnValue(), v165 = objc_msgSend_isEqualToString_(v160, v161, @"\\log", v162, v163, v164), v160, v154, (v165 & 1) == 0))
            {
              v394 = objc_msgSend__trimSubscriptTokens_(*(a1 + 40), v149, v398, v151, v152, v153);
              v294 = objc_msgSend_declaredVariables(*(a1 + 56), v289, v290, v291, v292, v293);
              v299 = objc_msgSend_containsObject_(v294, v295, v396, v296, v297, v298);

              if (v299)
              {
                v411 = 0u;
                v412 = 0u;
                v409 = 0u;
                v410 = 0u;
                v304 = v85;
                v312 = objc_msgSend_countByEnumeratingWithState_objects_count_(v304, v305, &v409, v416, 16, v306);
                if (v312)
                {
                  v313 = *v410;
                  do
                  {
                    for (i = 0; i != v312; ++i)
                    {
                      if (*v410 != v313)
                      {
                        objc_enumerationMutation(v304);
                      }

                      v315 = objc_msgSend_mutableCopy(*(*(&v409 + 1) + 8 * i), v307, v308, v309, v310, v311);
                      objc_msgSend_setProperties_(v315, v316, 16, v317, v318, v319);
                      v325 = objc_msgSend_copy(v315, v320, v321, v322, v323, v324);
                      objc_msgSend_addObject_(v143, v326, v325, v327, v328, v329);
                    }

                    v312 = objc_msgSend_countByEnumeratingWithState_objects_count_(v304, v307, &v409, v416, 16, v311);
                  }

                  while (v312);
                }

                v407 = 0u;
                v408 = 0u;
                v405 = 0u;
                v406 = 0u;
                v330 = v394;
                v338 = objc_msgSend_countByEnumeratingWithState_objects_count_(v330, v331, &v405, v415, 16, v332);
                if (v338)
                {
                  v339 = *v406;
                  do
                  {
                    for (j = 0; j != v338; ++j)
                    {
                      if (*v406 != v339)
                      {
                        objc_enumerationMutation(v330);
                      }

                      v341 = objc_msgSend_mutableCopy(*(*(&v405 + 1) + 8 * j), v333, v334, v335, v336, v337);
                      objc_msgSend_setProperties_(v341, v342, 16, v343, v344, v345);
                      v351 = objc_msgSend_copy(v341, v346, v347, v348, v349, v350);
                      objc_msgSend_addObject_(v143, v352, v351, v353, v354, v355);
                    }

                    v338 = objc_msgSend_countByEnumeratingWithState_objects_count_(v330, v333, &v405, v415, 16, v337);
                  }

                  while (v338);
                }
              }

              else
              {
                objc_msgSend_addObjectsFromArray_(v143, v300, v85, v301, v302, v303);
                objc_msgSend_addObjectsFromArray_(v143, v356, v394, v357, v358, v359);
              }
            }

            else
            {
              objc_msgSend_addObjectsFromArray_(v143, v149, v85, v151, v152, v153);
              objc_msgSend_addObjectsFromArray_(v143, v166, v398, v167, v168, v169);
            }

            v360 = *(*(a1 + 80) + 8);
            v361 = v360[11];
            if (v361)
            {
              objc_msgSend_removeLastObject(*(*(v360[7] + (((v361 + v360[10] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v361 + v360[10] - 1) & 0x1FF)), v170, v171, v172, v173, v174);
              v362 = *(*(a1 + 80) + 8);
              v363 = v362[11] + v362[10] - 1;
              objc_msgSend_addObjectsFromArray_(*(*(v362[7] + ((v363 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v363 & 0x1FF)), v364, v143, v365, v366, v367);
              v368 = *(*(a1 + 104) + 8);
              v369 = v368[11] + v368[10] - 1;
              objc_msgSend_appendFormat_(*(*(v368[7] + ((v369 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v369 & 0x1FF)), v370, @"%@", v371, v372, v373, v397);
            }

            else
            {
              v374 = objc_msgSend_count(*(a1 + 64), v170, v171, v172, v173, v174);
              v380 = objc_msgSend_count(v85, v375, v376, v377, v378, v379);
              v386 = objc_msgSend_count(v85, v381, v382, v383, v384, v385);
              objc_msgSend_removeObjectsInRange_(*(a1 + 64), v387, v374 - v380, v386, v388, v389);
              objc_msgSend_addObjectsFromArray_(*(a1 + 64), v390, v143, v391, v392, v393);
            }
          }
        }
      }
    }

    else
    {
      v29 = v404;
      objc_msgSend_addObject_(*(a1 + 64), v15, v404, v16, v17, v18);
    }

    goto LABEL_76;
  }

  v14 = *(*(*(a1 + 72) + 8) + 40);

  if (!v14)
  {
    goto LABEL_10;
  }

  v19 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v15, v404, v16, v17, v18);
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = *(*(a1 + 80) + 8);
  v22 = v21[7];
  v23 = v21[8];
  v24 = ((v23 - v22) << 6) - 1;
  if (v23 == v22)
  {
    v24 = 0;
  }

  if (v24 == v21[11] + v21[10])
  {
    sub_18368A534(v21 + 6);
    v22 = v21[7];
    v23 = v21[8];
  }

  if (v23 == v22)
  {
    v26 = 0;
  }

  else
  {
    v25 = v21[11] + v21[10];
    v26 = (*(v22 + ((v25 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v25 & 0x1FF));
  }

  v401 = v19;
  *v26 = v401;
  ++v21[11];
  v179 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (a3 >= 1)
  {
    v180 = a3 + 1;
    while (1)
    {
      v181 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v175, v180 - 2, v176, v177, v178);
      v182 = *(a1 + 40);
      v188 = objc_msgSend_string(v181, v183, v184, v185, v186, v187);
      if (objc_msgSend_isAlphabetic_(v182, v189, v188, v190, v191, v192))
      {
        v198 = objc_msgSend_string(v181, v193, v194, v195, v196, v197);
        v204 = objc_msgSend_length(v198, v199, v200, v201, v202, v203) == 1;
      }

      else
      {
        v204 = 0;
      }

      if ((objc_msgSend_properties(v181, v205, v206, v207, v208, v209) & 0x100) == 0)
      {
        v215 = objc_msgSend_string(v181, v210, v211, v212, v213, v214);
        hasPrefix = objc_msgSend_hasPrefix_(v215, v216, @"\", v217, v218, v219);

        if (((v204 | hasPrefix) & 1) == 0)
        {
          break;
        }
      }

      objc_msgSend_addObject_(v20, v210, v181, v212, v213, v214);
      v226 = objc_msgSend_string(v181, v221, v222, v223, v224, v225);
      objc_msgSend_appendFormat_(v179, v227, @"%@", v228, v229, v230, v226);

      if (--v180 <= 1)
      {
        goto LABEL_50;
      }
    }
  }

LABEL_50:
  v231 = *(*(a1 + 88) + 8);
  v232 = v231[7];
  v233 = v231[8];
  v234 = ((v233 - v232) << 6) - 1;
  if (v233 == v232)
  {
    v234 = 0;
  }

  if (v234 == v231[11] + v231[10])
  {
    sub_18368A534(v231 + 6);
    v232 = v231[7];
    v233 = v231[8];
  }

  if (v233 == v232)
  {
    v236 = 0;
  }

  else
  {
    v235 = v231[11] + v231[10];
    v236 = (*(v232 + ((v235 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v235 & 0x1FF));
  }

  v237 = v20;
  *v236 = v237;
  ++v231[11];
  v238 = MEMORY[0x1E696AD60];
  v244 = objc_msgSend_length(v179, v239, v240, v241, v242, v243);
  v249 = objc_msgSend_stringWithCapacity_(v238, v245, v244, v246, v247, v248);
  v255 = objc_msgSend_length(v179, v250, v251, v252, v253, v254);
  v413[0] = MEMORY[0x1E69E9820];
  v413[1] = 3221225472;
  v413[2] = sub_183680F9C;
  v413[3] = &unk_1E6DDBF00;
  v256 = v249;
  v414 = v256;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v179, v257, 0, v255, 258, v413);
  v258 = *(*(a1 + 96) + 8);
  v259 = v258[7];
  v260 = v258[8];
  v261 = ((v260 - v259) << 6) - 1;
  if (v260 == v259)
  {
    v261 = 0;
  }

  if (v261 == v258[11] + v258[10])
  {
    sub_18368AD08(v258 + 6);
    v259 = v258[7];
    v260 = v258[8];
  }

  if (v260 == v259)
  {
    v263 = 0;
  }

  else
  {
    v262 = v258[11] + v258[10];
    v263 = (*(v259 + ((v262 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v262 & 0x1FF));
  }

  v264 = v256;
  *v263 = v264;
  ++v258[11];
  v270 = objc_msgSend_string(v404, v265, v266, v267, v268, v269);
  v276 = objc_msgSend_mutableCopy(v270, v271, v272, v273, v274, v275);

  v277 = *(*(a1 + 104) + 8);
  v278 = v277[7];
  v279 = v277[8];
  v280 = ((v279 - v278) << 6) - 1;
  if (v279 == v278)
  {
    v280 = 0;
  }

  if (v280 == v277[11] + v277[10])
  {
    sub_18368AD08(v277 + 6);
    v278 = v277[7];
    v279 = v277[8];
  }

  if (v279 == v278)
  {
    v282 = 0;
  }

  else
  {
    v281 = v277[11] + v277[10];
    v282 = (*(v278 + ((v281 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v281 & 0x1FF));
  }

  v283 = v276;
  *v282 = v283;
  ++v277[11];
  v284 = *(*(a1 + 112) + 8);
  v285 = v284[8];
  v286 = v284[7];
  v287 = ((v285 - v286) << 6) - 1;
  if (v285 == v286)
  {
    v287 = 0;
  }

  v288 = v284[11] + v284[10];
  if (v287 == v288)
  {
    sub_183689B9C(v284 + 6);
    v286 = v284[7];
    v288 = v284[11] + v284[10];
  }

  *(*(v286 + ((v288 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v288 & 0x1FF)) = 0;
  ++v284[11];

  v29 = v404;
LABEL_76:
  if ((a3 & 0x8000000000000000) == 0)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
  }
}

void sub_183681ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13)
{
  sub_18368A374(&a12, a13);

  _Unwind_Resume(a1);
}

void sub_183681EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_183682C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a53, 8);
  if (__p)
  {
    a60 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_183682F44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x1E695DFD8];
  v18 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], a2, a3, a4, a5, a6);
  v11 = objc_msgSend_componentsSeparatedByCharactersInSet_(@"^ _ \\frac \\sqrt", v7, v18, v8, v9, v10);
  v16 = objc_msgSend_setWithArray_(v6, v12, v11, v13, v14, v15);
  v17 = qword_1EA84DA98;
  qword_1EA84DA98 = v16;
}

__n128 sub_183683000(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_183683024(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_18368303C(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v147 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = qword_1EA84DA98;
  v11 = objc_msgSend_string(v4, v6, v7, v8, v9, v10);
  if ((objc_msgSend_containsObject_(v5, v12, v11, v13, v14, v15) & 1) == 0)
  {

LABEL_21:
    if (*(*(*(a1 + 40) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_34;
    }

    v115 = objc_msgSend_string(v4, v45, v46, v47, v48, v49);
    isEqualToString = objc_msgSend_isEqualToString_(v115, v116, @"{", v117, v118, v119);

    if (isEqualToString)
    {
      v126 = *(*(a1 + 72) + 8);
      v127 = *(v126 + 24) + 1;
LABEL_33:
      *(v126 + 24) = v127;
      goto LABEL_34;
    }

    v128 = objc_msgSend_string(v4, v121, v122, v123, v124, v125);
    v133 = objc_msgSend_isEqualToString_(v128, v129, @"}", v130, v131, v132);

    if (v133)
    {
      if (--*(*(*(a1 + 72) + 8) + 24))
      {
        goto LABEL_34;
      }

      if (++*(*(*(a1 + 56) + 8) + 24) != *(*(*(a1 + 64) + 8) + 24))
      {
        goto LABEL_34;
      }

      v126 = *(*(a1 + 40) + 8);
      v134 = *(v126 + 24);
      v135 = *a4 - v134;
      if (*a4 == v134)
      {
        goto LABEL_32;
      }

      v136 = *(*(a1 + 80) + 8);
      *&v141 = v134;
      *(&v141 + 1) = v135 + 1;
      sub_18368C3C8(v136 + 48, &v141);
      v137 = *(a1 + 40);
    }

    else
    {
      if (*(*(*(a1 + 48) + 8) + 24) + 1 != a3)
      {
        goto LABEL_34;
      }

      v137 = *(a1 + 40);
    }

    v126 = *(v137 + 8);
LABEL_32:
    v127 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_33;
  }

  v21 = objc_msgSend_result(*(a1 + 32), v16, v17, v18, v19, v20);
  v27 = objc_msgSend_tokenColumns(v21, v22, v23, v24, v25, v26);
  v32 = objc_msgSend_objectAtIndexedSubscript_(v27, v28, *a4, v29, v30, v31);
  v38 = objc_msgSend_tokenRows(v32, v33, v34, v35, v36, v37);
  v44 = objc_msgSend_count(v38, v39, v40, v41, v42, v43);

  if (v44 < 2)
  {
    goto LABEL_21;
  }

  v50 = objc_msgSend_result(*(a1 + 32), v45, v46, v47, v48, v49);
  v56 = objc_msgSend_tokenColumns(v50, v51, v52, v53, v54, v55);
  v61 = objc_msgSend_objectAtIndexedSubscript_(v56, v57, *a4, v58, v59, v60);

  for (i = 0; ; ++i)
  {
    v68 = objc_msgSend_tokenRows(v61, v62, v63, v64, v65, v66);
    v74 = i < objc_msgSend_count(v68, v69, v70, v71, v72, v73);

    if (!v74)
    {
      break;
    }

    if (i != a4[1])
    {
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v75 = objc_msgSend_tokenRows(v61, v62, v63, v64, v65, v66);
      v80 = objc_msgSend_objectAtIndexedSubscript_(v75, v76, i, v77, v78, v79);

      v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v81, &v142, v146, 16, v82);
      if (v88)
      {
        v89 = *v143;
        do
        {
          for (j = 0; j != v88; ++j)
          {
            if (*v143 != v89)
            {
              objc_enumerationMutation(v80);
            }

            v91 = objc_msgSend_string(*(*(&v142 + 1) + 8 * j), v83, v84, v85, v86, v87);
            v97 = objc_msgSend_string(v4, v92, v93, v94, v95, v96);
            v102 = objc_msgSend_isEqualToString_(v91, v98, v97, v99, v100, v101);

            if (v102)
            {

              goto LABEL_5;
            }
          }

          v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v83, &v142, v146, 16, v87);
        }

        while (v88);
      }

      *(*(*(a1 + 40) + 8) + 24) = *a4;
      *(*(*(a1 + 48) + 8) + 24) = a3;
      *(*(*(a1 + 56) + 8) + 24) = 0;
      v108 = objc_msgSend_string(v4, v103, v104, v105, v106, v107);
      v113 = objc_msgSend_isEqualToString_(v108, v109, @"\\frac", v110, v111, v112);
      v114 = 1;
      if (v113)
      {
        v114 = 2;
      }

      *(*(*(a1 + 64) + 8) + 24) = v114;

      break;
    }

LABEL_5:
    ;
  }

LABEL_34:
}

void sub_183684304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18)
{
  sub_18368A374(&a17, a18);

  _Unwind_Resume(a1);
}

void sub_183684DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, void *a55)
{
  operator delete(__p);
  sub_18368A374(&a54, a55);

  _Unwind_Resume(a1);
}

void sub_183685884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10, void *a11)
{
  sub_18368D56C(&a10, a11);

  _Unwind_Resume(a1);
}

void sub_183685DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  sub_18368D56C(v17 - 128, *(v17 - 120));

  _Unwind_Resume(a1);
}

void sub_183685EF0(uint64_t a1, void *a2)
{
  v18 = a2;
  objc_msgSend_addObject_(*(a1 + 32), v3, v18, v4, v5, v6);
  v12 = objc_msgSend_string(v18, v7, v8, v9, v10, v11);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v13, @"\\prime", v14, v15, v16);

  if (isEqualToString)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t sub_183685FAC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_18368608C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v10 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 >> 9];
    v6 = (*v5 + 8 * (v4 & 0x1FF));
    v7 = *(v2 + (((*(a1 + 40) + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 40) + v4) & 0x1FF);
    if (v6 != v7)
    {
      do
      {
        v8 = *v6++;

        if (v6 - *v5 == 4096)
        {
          v9 = v5[1];
          ++v5;
          v6 = v9;
        }
      }

      while (v6 != v7);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 256;
    goto LABEL_15;
  }

  if (v10 == 2)
  {
    v11 = 512;
LABEL_15:
    *(a1 + 32) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 != v14)
    {
      *(a1 + 16) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL sub_1836861FC(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_18368688C();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t **sub_183686288(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_183686440(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

unint64_t sub_183686440(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v23 = *(a2 + a3 - 48);
      v24 = *(a2 + a3 - 40);
      v25 = *(a2 + a3 - 24);
      v26 = *(a2 + a3 - 56);
      v27 = *(a2 + a3 - 16);
      v28 = *(a2 + a3 - 8);
      v29 = v26 + v27;
      v30 = 0x9DDFEA08EB382D69 * (v25 ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))));
      v31 = 0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47));
      v32 = *(a2 + a3 - 64) + a3;
      v33 = v23 + v26 + v32;
      v34 = __ROR8__(v33, 44) + v32;
      v35 = __ROR8__(v32 + v24 + v31, 21);
      v36 = v33 + v24;
      v37 = v34 + v35;
      v38 = v29 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v39 = v25 + v27 + v38;
      v40 = v39 + v28;
      v41 = __ROR8__(v39, 44) + v38 + __ROR8__(v38 + v24 + v28, 21);
      v43 = *a2;
      v42 = a2 + 4;
      v44 = v43 - 0x4B6D499041670D8DLL * v24;
      v45 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v46 = *(v42 - 3);
        v47 = v44 + v36 + v29 + v46;
        v48 = v42[2];
        v49 = v42[3];
        v50 = v42[1];
        v29 = v50 + v36 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v37 + v48, 42);
        v51 = v31 + v40;
        v52 = *(v42 - 2);
        v53 = *(v42 - 1);
        v54 = *(v42 - 4) - 0x4B6D499041670D8DLL * v37;
        v55 = v54 + v40 + v53;
        v56 = v54 + v46 + v52;
        v36 = v56 + v53;
        v57 = __ROR8__(v56, 44) + v54;
        v58 = (0xB492B66FBE98F273 * __ROR8__(v47, 37)) ^ v41;
        v44 = 0xB492B66FBE98F273 * __ROR8__(v51, 33);
        v37 = v57 + __ROR8__(v55 + v58, 21);
        v59 = v44 + v41 + *v42;
        v40 = v50 + v48 + v59 + v49;
        v41 = __ROR8__(v50 + v48 + v59, 44) + v59 + __ROR8__(v29 + v52 + v59 + v49, 21);
        v42 += 8;
        v31 = v58;
        v45 += 64;
      }

      while (v45);
      v60 = v58 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) ^ ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) >> 47));
      v61 = v44 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) >> 47));
    }

    else
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v16 = *(a2 + a3 - 24) + v14 + v6;
      v17 = 0xC3A5C85C97CB3127 * (v16 + *(a2 + a3 - 8) + v8 + v15) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + __ROR8__(*(a2 + a3 - 8) + v8 + v14, 52) + __ROR8__(v16, 31));
      return 0x9AE16A3B2F90404FLL * ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) ^ ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) >> 47));
    }
  }

  else if (a3 > 0x10)
  {
    v18 = a2[1];
    v19 = 0xB492B66FBE98F273 * *a2;
    v20 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v19 - v18, 43);
    v21 = v19 + a3 + __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
    v22 = 0x9DDFEA08EB382D69 * ((v20 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v21);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  }

  else if (a3 < 9)
  {
    if (a3 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a3)
      {
        v64 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v64 ^ (v64 >> 47));
      }
    }

    else
    {
      v62 = *(a2 + a3 - 4);
      v63 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v62);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) ^ ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) >> 47));
    }
  }

  else
  {
    v3 = *(a2 + a3 - 8);
    v4 = __ROR8__(v3 + a3, a3);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
  }

  return result;
}

void sub_1836868A4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_183686900(exception, a1);
  __cxa_throw(exception, off_1E6DDBD20, MEMORY[0x1E69E5280]);
}

std::logic_error *sub_183686900(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

uint64_t sub_183686934(uint64_t a1)
{
  v2 = *(a1 + 456);
  if (v2)
  {
    do
    {
      v27 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v27;
    }

    while (v27);
  }

  v3 = *(a1 + 440);
  *(a1 + 440) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 416);
  if (v4)
  {
    do
    {
      v28 = *v4;
      if (*(v4 + 39) < 0)
      {
        operator delete(v4[2]);
      }

      operator delete(v4);
      v4 = v28;
    }

    while (v28);
  }

  v5 = *(a1 + 400);
  *(a1 + 400) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 376);
  if (v6)
  {
    do
    {
      v29 = *v6;
      if (*(v6 + 39) < 0)
      {
        operator delete(v6[2]);
      }

      operator delete(v6);
      v6 = v29;
    }

    while (v29);
  }

  v7 = *(a1 + 360);
  *(a1 + 360) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 336);
  if (v8)
  {
    do
    {
      v30 = *v8;
      if (*(v8 + 39) < 0)
      {
        operator delete(v8[2]);
      }

      operator delete(v8);
      v8 = v30;
    }

    while (v30);
  }

  v9 = *(a1 + 320);
  *(a1 + 320) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(a1 + 296);
  if (v10)
  {
    do
    {
      v31 = *v10;
      if (*(v10 + 39) < 0)
      {
        operator delete(v10[2]);
      }

      operator delete(v10);
      v10 = v31;
    }

    while (v31);
  }

  v11 = *(a1 + 280);
  *(a1 + 280) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 256);
  if (v12)
  {
    do
    {
      v32 = *v12;
      if (*(v12 + 39) < 0)
      {
        operator delete(v12[2]);
      }

      operator delete(v12);
      v12 = v32;
    }

    while (v32);
  }

  v13 = *(a1 + 240);
  *(a1 + 240) = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = *(a1 + 216);
  if (v14)
  {
    do
    {
      v33 = *v14;
      if (*(v14 + 39) < 0)
      {
        operator delete(v14[2]);
      }

      operator delete(v14);
      v14 = v33;
    }

    while (v33);
  }

  v15 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = *(a1 + 176);
  if (v16)
  {
    do
    {
      v34 = *v16;
      if (*(v16 + 39) < 0)
      {
        operator delete(v16[2]);
      }

      operator delete(v16);
      v16 = v34;
    }

    while (v34);
  }

  v17 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *(a1 + 136);
  if (v18)
  {
    do
    {
      v35 = *v18;
      if (*(v18 + 39) < 0)
      {
        operator delete(v18[2]);
      }

      operator delete(v18);
      v18 = v35;
    }

    while (v35);
  }

  v19 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = *(a1 + 96);
  if (v20)
  {
    do
    {
      v36 = *v20;
      if (*(v20 + 39) < 0)
      {
        operator delete(v20[2]);
      }

      operator delete(v20);
      v20 = v36;
    }

    while (v36);
  }

  v21 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = *(a1 + 56);
  if (v22)
  {
    do
    {
      v37 = *v22;
      if (*(v22 + 39) < 0)
      {
        operator delete(v22[2]);
      }

      operator delete(v22);
      v22 = v37;
    }

    while (v37);
  }

  v23 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v23)
  {
    operator delete(v23);
  }

  v24 = *(a1 + 16);
  if (v24)
  {
    do
    {
      v38 = *v24;
      if (*(v24 + 39) < 0)
      {
        operator delete(v24[2]);
      }

      operator delete(v24);
      v24 = v38;
    }

    while (v38);
  }

  v25 = *a1;
  *a1 = 0;
  if (v25)
  {
    operator delete(v25);
  }

  return a1;
}

uint64_t sub_183686C60(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_183686CCC(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v4[0] = 32001;
  LOWORD(__p[0]) = 123;
  v5 = 1;
  LOBYTE(v4[1]) = 0;
  v7 = 1;
  LOWORD(v6[0]) = 91;
  v9 = 1;
  LOWORD(v8[0]) = 93;
  v11 = 1;
  strcpy(v10, "_");
  v13 = 1;
  strcpy(v12, "^");
  v15 = 1;
  strcpy(v14, "&");
  v17 = 14;
  strcpy(v16, "\\begin{matrix}");
  v19 = 12;
  strcpy(v18, "\\end{matrix}");
  v21 = 15;
  strcpy(v20, "\\begin{aligned}");
  v23 = 13;
  strcpy(v22, "\\end{aligned}");
  HIBYTE(v24[2]) = 16;
  strcpy(v24, "\\begin{array}{l}");
  HIBYTE(v25[2]) = 17;
  strcpy(v25, "\\begin{array}{lr}");
  v27 = 11;
  strcpy(v26, "\\end{array}");
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  sub_183688A78(a1, __p);
  sub_183688A78(a1, v4 + 1);
  sub_183688A78(a1, v6);
  sub_183688A78(a1, v8);
  sub_183688A78(a1, v10);
  sub_183688A78(a1, v12);
  sub_183688A78(a1, v14);
  sub_183688A78(a1, v16);
  sub_183688A78(a1, v18);
  sub_183688A78(a1, v20);
  sub_183688A78(a1, v22);
  sub_183688A78(a1, v24);
  sub_183688A78(a1, v25);
  sub_183688A78(a1, v26);
  if (v27 < 0)
  {
    operator delete(v26[0]);
    if ((SHIBYTE(v25[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SHIBYTE(v24[2]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_88;
    }
  }

  else if ((SHIBYTE(v25[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v25[0]);
  if ((SHIBYTE(v24[2]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_89;
  }

LABEL_88:
  operator delete(v24[0]);
  if ((v23 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_90;
  }

LABEL_89:
  operator delete(v22[0]);
  if ((v21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_91;
  }

LABEL_90:
  operator delete(v20[0]);
  if ((v19 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_92;
  }

LABEL_91:
  operator delete(v18[0]);
  if ((v17 & 0x80000000) == 0)
  {
LABEL_8:
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_93;
  }

LABEL_92:
  operator delete(v16[0]);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_9:
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_94;
  }

LABEL_93:
  operator delete(v14[0]);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_10:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_95;
  }

LABEL_94:
  operator delete(v12[0]);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_11:
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_96;
  }

LABEL_95:
  operator delete(v10[0]);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_12:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_97;
  }

LABEL_96:
  operator delete(v8[0]);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_98:
    operator delete(*(v4 + 1));
    if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_99;
  }

LABEL_97:
  operator delete(v6[0]);
  if (v5 < 0)
  {
    goto LABEL_98;
  }

LABEL_14:
  if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_99:
  operator delete(__p[0]);
LABEL_15:
  v4[0] = 12545;
  LOWORD(__p[0]) = 48;
  v5 = 1;
  LOBYTE(v4[1]) = 0;
  v7 = 1;
  LOWORD(v6[0]) = 50;
  v9 = 1;
  LOWORD(v8[0]) = 51;
  v11 = 1;
  strcpy(v10, "4");
  v13 = 1;
  strcpy(v12, "5");
  v15 = 1;
  strcpy(v14, "6");
  v17 = 1;
  strcpy(v16, "7");
  v19 = 1;
  strcpy(v18, "8");
  v21 = 1;
  *(a1 + 40) = 0u;
  strcpy(v20, "9");
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  sub_183688A78((a1 + 40), __p);
  sub_183688A78((a1 + 40), v4 + 1);
  sub_183688A78((a1 + 40), v6);
  sub_183688A78((a1 + 40), v8);
  sub_183688A78((a1 + 40), v10);
  sub_183688A78((a1 + 40), v12);
  sub_183688A78((a1 + 40), v14);
  sub_183688A78((a1 + 40), v16);
  sub_183688A78((a1 + 40), v18);
  sub_183688A78((a1 + 40), v20);
  if (v21 < 0)
  {
    operator delete(v20[0]);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_17:
      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_102;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v18[0]);
  if ((v17 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_103;
  }

LABEL_102:
  operator delete(v16[0]);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_19:
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_104;
  }

LABEL_103:
  operator delete(v14[0]);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_20:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_105;
  }

LABEL_104:
  operator delete(v12[0]);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_21:
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_106;
  }

LABEL_105:
  operator delete(v10[0]);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_22:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_107;
  }

LABEL_106:
  operator delete(v8[0]);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_108:
    operator delete(*(v4 + 1));
    if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_109;
  }

LABEL_107:
  operator delete(v6[0]);
  if (v5 < 0)
  {
    goto LABEL_108;
  }

LABEL_24:
  if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_109:
  operator delete(__p[0]);
LABEL_25:
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  v4[0] = 11265;
  LOWORD(__p[0]) = 46;
  v5 = 1;
  LOBYTE(v4[1]) = 0;
  v7 = 1;
  LOWORD(v6[0]) = 39;
  *(a1 + 112) = 1065353216;
  sub_183688A78((a1 + 80), __p);
  sub_183688A78((a1 + 80), v4 + 1);
  sub_183688A78((a1 + 80), v6);
  if ((v7 & 0x80000000) == 0)
  {
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_111:
    operator delete(*(v4 + 1));
    if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_112;
  }

  operator delete(v6[0]);
  if (v5 < 0)
  {
    goto LABEL_111;
  }

LABEL_27:
  if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

LABEL_112:
  operator delete(__p[0]);
LABEL_28:
  v4[0] = 11521;
  LOWORD(__p[0]) = 43;
  v5 = 1;
  LOBYTE(v4[1]) = 0;
  v7 = 6;
  strcpy(v6, "\\times");
  v9 = 4;
  strcpy(v8, "\\ast");
  v11 = 5;
  strcpy(v10, "\\cdot");
  v13 = 4;
  strcpy(v12, "\\div");
  v15 = 1;
  *(a1 + 120) = 0u;
  strcpy(v14, "/");
  v17 = 1;
  strcpy(v16, ":");
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1065353216;
  sub_183688A78((a1 + 120), __p);
  sub_183688A78((a1 + 120), v4 + 1);
  sub_183688A78((a1 + 120), v6);
  sub_183688A78((a1 + 120), v8);
  sub_183688A78((a1 + 120), v10);
  sub_183688A78((a1 + 120), v12);
  sub_183688A78((a1 + 120), v14);
  sub_183688A78((a1 + 120), v16);
  if (v17 < 0)
  {
    operator delete(v16[0]);
    if ((v15 & 0x80000000) == 0)
    {
LABEL_30:
      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_115;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

  operator delete(v14[0]);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_31:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_116;
  }

LABEL_115:
  operator delete(v12[0]);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_32:
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_117;
  }

LABEL_116:
  operator delete(v10[0]);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_33:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_118;
  }

LABEL_117:
  operator delete(v8[0]);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_119:
    operator delete(*(v4 + 1));
    if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_120;
  }

LABEL_118:
  operator delete(v6[0]);
  if (v5 < 0)
  {
    goto LABEL_119;
  }

LABEL_35:
  if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

LABEL_120:
  operator delete(__p[0]);
LABEL_36:
  LOBYTE(v4[0]) = 2;
  strcpy(__p, "\\$");
  v5 = 3;
  *(v4 + 1) = 11305698;
  v7 = 2;
  LOWORD(v6[0]) = -23614;
  BYTE2(v6[0]) = 0;
  v9 = 2;
  LOWORD(v8[0]) = -23102;
  BYTE2(v8[0]) = 0;
  v11 = 2;
  LOWORD(v10[0]) = -23870;
  BYTE2(v10[0]) = 0;
  v13 = 3;
  strcpy(v12, "₺");
  v15 = 3;
  LOWORD(v14[0]) = -32030;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  WORD1(v14[0]) = 180;
  v17 = 3;
  strcpy(v16, "₽");
  v19 = 3;
  strcpy(v18, "₩");
  *(a1 + 192) = 1065353216;
  sub_183688A78((a1 + 160), __p);
  sub_183688A78((a1 + 160), v4 + 1);
  sub_183688A78((a1 + 160), v6);
  sub_183688A78((a1 + 160), v8);
  sub_183688A78((a1 + 160), v10);
  sub_183688A78((a1 + 160), v12);
  sub_183688A78((a1 + 160), v14);
  sub_183688A78((a1 + 160), v16);
  sub_183688A78((a1 + 160), v18);
  if (v19 < 0)
  {
    operator delete(v18[0]);
    if ((v17 & 0x80000000) == 0)
    {
LABEL_38:
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_123;
    }
  }

  else if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  operator delete(v16[0]);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_39:
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_124;
  }

LABEL_123:
  operator delete(v14[0]);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_40:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_125;
  }

LABEL_124:
  operator delete(v12[0]);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_41:
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_126;
  }

LABEL_125:
  operator delete(v10[0]);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_42:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_127;
  }

LABEL_126:
  operator delete(v8[0]);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_43:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_128:
    operator delete(*(v4 + 1));
    if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_129;
  }

LABEL_127:
  operator delete(v6[0]);
  if (v5 < 0)
  {
    goto LABEL_128;
  }

LABEL_44:
  if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_129:
  operator delete(__p[0]);
LABEL_45:
  *(a1 + 200) = 0u;
  LOBYTE(v4[0]) = 2;
  strcpy(__p, "°");
  v5 = 2;
  strcpy(v4 + 1, "''");
  *(a1 + 216) = 0u;
  *(a1 + 232) = 1065353216;
  sub_183688A78((a1 + 200), __p);
  sub_183688A78((a1 + 200), v4 + 1);
  if (v5 < 0)
  {
    operator delete(*(v4 + 1));
    if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }
  }

  else if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

  operator delete(__p[0]);
LABEL_47:
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  v4[0] = 25859;
  LODWORD(__p[0]) = 6910044;
  v5 = 1;
  LOBYTE(v4[1]) = 0;
  *(a1 + 272) = 1065353216;
  sub_183688A78((a1 + 240), __p);
  sub_183688A78((a1 + 240), v4 + 1);
  if (v5 < 0)
  {
    operator delete(*(v4 + 1));
    if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }
  }

  else if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  operator delete(__p[0]);
LABEL_49:
  LOBYTE(v4[0]) = 1;
  LOWORD(__p[0]) = 40;
  v5 = 6;
  strcpy(v4 + 1, "\\left(");
  v7 = 1;
  LOWORD(v6[0]) = 124;
  v9 = 6;
  strcpy(v8, "\\left|");
  v11 = 6;
  strcpy(v10, "\\lceil");
  v13 = 11;
  strcpy(v12, "\\left\\lceil");
  v15 = 7;
  strcpy(v14, "\\lfloor");
  v17 = 12;
  strcpy(v16, "\\left\\lfloor");
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 1065353216;
  sub_183688A78((a1 + 280), __p);
  sub_183688A78((a1 + 280), v4 + 1);
  sub_183688A78((a1 + 280), v6);
  sub_183688A78((a1 + 280), v8);
  sub_183688A78((a1 + 280), v10);
  sub_183688A78((a1 + 280), v12);
  sub_183688A78((a1 + 280), v14);
  sub_183688A78((a1 + 280), v16);
  if (v17 < 0)
  {
    operator delete(v16[0]);
    if ((v15 & 0x80000000) == 0)
    {
LABEL_51:
      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_136;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_51;
  }

  operator delete(v14[0]);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_52:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_137;
  }

LABEL_136:
  operator delete(v12[0]);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_53:
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_138;
  }

LABEL_137:
  operator delete(v10[0]);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_54:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_139;
  }

LABEL_138:
  operator delete(v8[0]);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_55:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

LABEL_140:
    operator delete(*(v4 + 1));
    if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_141;
  }

LABEL_139:
  operator delete(v6[0]);
  if (v5 < 0)
  {
    goto LABEL_140;
  }

LABEL_56:
  if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

LABEL_141:
  operator delete(__p[0]);
LABEL_57:
  LOBYTE(v4[0]) = 1;
  LOWORD(__p[0]) = 41;
  v5 = 7;
  strcpy(v4 + 1, "\\right)");
  v7 = 7;
  strcpy(v6, "\\right|");
  v9 = 6;
  strcpy(v8, "\\rceil");
  v11 = 12;
  strcpy(v10, "\\right\\rceil");
  v13 = 7;
  strcpy(v12, "\\rfloor");
  v15 = 13;
  strcpy(v14, "\\right\\rfloor");
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 1065353216;
  sub_183688A78((a1 + 320), __p);
  sub_183688A78((a1 + 320), v4 + 1);
  sub_183688A78((a1 + 320), v6);
  sub_183688A78((a1 + 320), v8);
  sub_183688A78((a1 + 320), v10);
  sub_183688A78((a1 + 320), v12);
  sub_183688A78((a1 + 320), v14);
  if (v15 < 0)
  {
    operator delete(v14[0]);
    if ((v13 & 0x80000000) == 0)
    {
LABEL_59:
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_144;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_59;
  }

  operator delete(v12[0]);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_60:
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_145;
  }

LABEL_144:
  operator delete(v10[0]);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_61:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_146;
  }

LABEL_145:
  operator delete(v8[0]);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_62:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

LABEL_147:
    operator delete(*(v4 + 1));
    if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_148;
  }

LABEL_146:
  operator delete(v6[0]);
  if (v5 < 0)
  {
    goto LABEL_147;
  }

LABEL_63:
  if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
  {
    goto LABEL_64;
  }

LABEL_148:
  operator delete(__p[0]);
LABEL_64:
  LOBYTE(v4[0]) = 4;
  strcpy(__p, "\\sin");
  v5 = 4;
  strcpy(v4 + 1, "\\cos");
  v7 = 4;
  strcpy(v6, "\\tan");
  v9 = 4;
  strcpy(v8, "\\csc");
  v11 = 4;
  strcpy(v10, "\\sec");
  v13 = 4;
  strcpy(v12, "\\cot");
  v15 = 7;
  strcpy(v14, "\\arcsin");
  v17 = 7;
  strcpy(v16, "\\arccos");
  v19 = 7;
  strcpy(v18, "\\arctan");
  v21 = 4;
  strcpy(v20, "\\log");
  v23 = 3;
  strcpy(v22, "\\ln");
  HIBYTE(v24[2]) = 3;
  strcpy(v24, "\\lg");
  HIBYTE(v25[2]) = 5;
  strcpy(v25, "\\sinh");
  v27 = 5;
  strcpy(v26, "\\cosh");
  v29 = 5;
  strcpy(v28, "\\tanh");
  v31 = 5;
  strcpy(v30, "\\coth");
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 1065353216;
  sub_183688A78((a1 + 360), __p);
  sub_183688A78((a1 + 360), v4 + 1);
  sub_183688A78((a1 + 360), v6);
  sub_183688A78((a1 + 360), v8);
  sub_183688A78((a1 + 360), v10);
  sub_183688A78((a1 + 360), v12);
  sub_183688A78((a1 + 360), v14);
  sub_183688A78((a1 + 360), v16);
  sub_183688A78((a1 + 360), v18);
  sub_183688A78((a1 + 360), v20);
  sub_183688A78((a1 + 360), v22);
  sub_183688A78((a1 + 360), v24);
  sub_183688A78((a1 + 360), v25);
  sub_183688A78((a1 + 360), v26);
  sub_183688A78((a1 + 360), v28);
  sub_183688A78((a1 + 360), v30);
  if (v31 < 0)
  {
    operator delete(v30[0]);
    if ((v29 & 0x80000000) == 0)
    {
LABEL_66:
      if ((v27 & 0x80000000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_151;
    }
  }

  else if ((v29 & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

  operator delete(v28[0]);
  if ((v27 & 0x80000000) == 0)
  {
LABEL_67:
    if ((SHIBYTE(v25[2]) & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_152;
  }

LABEL_151:
  operator delete(v26[0]);
  if ((SHIBYTE(v25[2]) & 0x80000000) == 0)
  {
LABEL_68:
    if ((SHIBYTE(v24[2]) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_153;
  }

LABEL_152:
  operator delete(v25[0]);
  if ((SHIBYTE(v24[2]) & 0x80000000) == 0)
  {
LABEL_69:
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_154;
  }

LABEL_153:
  operator delete(v24[0]);
  if ((v23 & 0x80000000) == 0)
  {
LABEL_70:
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_155;
  }

LABEL_154:
  operator delete(v22[0]);
  if ((v21 & 0x80000000) == 0)
  {
LABEL_71:
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_156;
  }

LABEL_155:
  operator delete(v20[0]);
  if ((v19 & 0x80000000) == 0)
  {
LABEL_72:
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_157;
  }

LABEL_156:
  operator delete(v18[0]);
  if ((v17 & 0x80000000) == 0)
  {
LABEL_73:
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_158;
  }

LABEL_157:
  operator delete(v16[0]);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_74:
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_159;
  }

LABEL_158:
  operator delete(v14[0]);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_75:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_160;
  }

LABEL_159:
  operator delete(v12[0]);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_76:
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_161;
  }

LABEL_160:
  operator delete(v10[0]);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_77:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_162;
  }

LABEL_161:
  operator delete(v8[0]);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_78:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

LABEL_163:
    operator delete(*(v4 + 1));
    if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_164;
  }

LABEL_162:
  operator delete(v6[0]);
  if (v5 < 0)
  {
    goto LABEL_163;
  }

LABEL_79:
  if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
  {
    goto LABEL_80;
  }

LABEL_164:
  operator delete(__p[0]);
LABEL_80:
  LOBYTE(v4[0]) = 1;
  LOWORD(__p[0]) = 92;
  v5 = 2;
  strcpy(v4 + 1, "\\,");
  v7 = 2;
  strcpy(v6, "\\;");
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 1065353216;
  sub_183688A78((a1 + 400), __p);
  sub_183688A78((a1 + 400), v4 + 1);
  sub_183688A78((a1 + 400), v6);
  if ((v7 & 0x80000000) == 0)
  {
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_82;
    }

LABEL_166:
    operator delete(*(v4 + 1));
    if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_167;
  }

  operator delete(v6[0]);
  if (v5 < 0)
  {
    goto LABEL_166;
  }

LABEL_82:
  if ((SLOBYTE(v4[0]) & 0x80000000) == 0)
  {
    goto LABEL_83;
  }

LABEL_167:
  operator delete(__p[0]);
LABEL_83:
  LOBYTE(v4[0]) = 2;
  strcpy(__p, "\\\");
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 1065353216;
  sub_183688A78((a1 + 440), __p);
  if (SLOBYTE(v4[0]) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1836881DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_183686C60(v23);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_183686C60(v16 + 400);
  sub_183686C60(v24);
  sub_183686C60(v16 + 320);
  sub_183686C60(v22);
  sub_183686C60(v21);
  sub_183686C60(v20);
  sub_183686C60(v19);
  sub_183686C60(v18);
  sub_183686C60(a10);
  sub_183686C60(v17);
  sub_183686C60(v16);
  _Unwind_Resume(a1);
}

uint64_t **sub_183688A78(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_183686440(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_183688E6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183688E98(va);
  _Unwind_Resume(a1);
}

void sub_183688E80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183688E98(va);
  _Unwind_Resume(a1);
}

void *sub_183688E98(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void sub_183688F00()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void *sub_183688F34(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_183688FF0();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

void sub_183689008(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_183689064(exception, a1);
  __cxa_throw(exception, off_1E6DDBD18, MEMORY[0x1E69E5278]);
}

std::logic_error *sub_183689064(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void sub_183689098(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_183688F00();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_18368922C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_18368922C(a1, *a2);
    sub_18368922C(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void *sub_1836892B0(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void *sub_183689438(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 55) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 32));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t *sub_1836894A0(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

uint64_t sub_183689664(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****sub_1836896C4(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void ***sub_183689748(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_1836897BC(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_183689964(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183689438(va);
  _Unwind_Resume(a1);
}

uint64_t sub_183689978(uint64_t a1)
{
  v2 = *(a1 + 392);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 376);
  *(a1 + 376) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 352);
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(a1 + 336);
  *(a1 + 336) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 312);
  if (v8)
  {
    do
    {
      v9 = *v8;
      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v10 = *(a1 + 296);
  *(a1 + 296) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(a1 + 272);
  if (v11)
  {
    do
    {
      v12 = *v11;
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = *(a1 + 256);
  *(a1 + 256) = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = *(a1 + 232);
  if (v14)
  {
    do
    {
      v15 = *v14;
      operator delete(v14);
      v14 = v15;
    }

    while (v15);
  }

  v16 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = *(a1 + 192);
  if (v17)
  {
    do
    {
      v18 = *v17;
      operator delete(v17);
      v17 = v18;
    }

    while (v18);
  }

  v19 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = *(a1 + 152);
  if (v20)
  {
    do
    {
      v21 = *v20;
      operator delete(v20);
      v20 = v21;
    }

    while (v21);
  }

  v22 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v22)
  {
    operator delete(v22);
  }

  v23 = *(a1 + 112);
  if (v23)
  {
    do
    {
      v24 = *v23;
      operator delete(v23);
      v23 = v24;
    }

    while (v24);
  }

  v25 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v25)
  {
    operator delete(v25);
  }

  v26 = *(a1 + 72);
  if (v26)
  {
    do
    {
      v27 = *v26;
      operator delete(v26);
      v26 = v27;
    }

    while (v27);
  }

  v28 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  sub_18368922C(a1, *(a1 + 8));
  return a1;
}

void *sub_183689B10(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = sub_183689B9C(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *sub_183689B9C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_183688F00();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return sub_18368A1E8(a1, &v10);
}

void sub_18368A190(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_18368A1E8(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_183688F00();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

void sub_18368A374(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_18368A374(a1, *a2);
    sub_18368A374(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

char *sub_18368A3D8(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    sub_18368964C();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void *sub_18368A534(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_183688F00();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return sub_18368AB74(a1, &v10);
}

void sub_18368AB1C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_18368AB74(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_183688F00();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void *sub_18368AD08(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_183688F00();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return sub_18368AB74(a1, &v10);
}

void sub_18368B2F0(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_18368B348(uint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v81 = *(a2 - 1);
      v82 = *v10;
      if (*(**a3 + 8 * v81) < *(**a3 + 8 * *v10))
      {
        *v10 = v81;
        *(a2 - 1) = v82;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v99 = *a3;
      if ((a5 & 1) == 0)
      {
        if (v10 != a2)
        {
          v144 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v145 = *v99;
            do
            {
              v147 = *v9;
              v146 = v9[1];
              v9 = v144;
              if (*(v145 + 8 * v146) < *(v145 + 8 * v147))
              {
                do
                {
                  *v144 = v147;
                  v147 = *(v144 - 2);
                  --v144;
                }

                while (*(v145 + 8 * v146) < *(v145 + 8 * v147));
                *v144 = v146;
              }

              v144 = v9 + 1;
            }

            while (v9 + 1 != a2);
          }
        }

        return result;
      }

      if (v10 == a2)
      {
        return result;
      }

      v100 = v10 + 1;
      if (v10 + 1 == a2)
      {
        return result;
      }

      v101 = *v99;
      v102 = 8;
      v103 = v10;
      while (1)
      {
        v106 = *v103;
        v105 = v103[1];
        v103 = v100;
        if (*(v101 + 8 * v105) < *(v101 + 8 * v106))
        {
          v107 = v102;
          do
          {
            *(v10 + v107) = v106;
            v108 = v107 - 8;
            if (v107 == 8)
            {
              v104 = v10;
              goto LABEL_123;
            }

            v106 = *(v10 + v107 - 16);
            v107 -= 8;
          }

          while (*(v101 + 8 * v105) < *(v101 + 8 * v106));
          v104 = (v10 + v108);
LABEL_123:
          *v104 = v105;
        }

        v100 = v103 + 1;
        v102 += 8;
        if (v103 + 1 == a2)
        {
          return result;
        }
      }
    }

    if (!a4)
    {
      if (v10 == a2)
      {
        return result;
      }

      v109 = (v11 - 2) >> 1;
      v110 = *a3;
      v111 = v109;
      while (1)
      {
        if (v109 >= v111)
        {
          v113 = (2 * (v111 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
          v114 = &v10[v113];
          v115 = *v114;
          if (2 * (v111 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v11)
          {
            v116 = *v110;
            if (*(*v110 + 8 * v115) < *(*v110 + 8 * v114[1]))
            {
              v115 = v114[1];
              ++v114;
              v113 = 2 * (v111 & 0x1FFFFFFFFFFFFFFFLL) + 2;
            }

            v117 = &v10[v111];
            v118 = *v117;
            if (*(v116 + 8 * v115) < *(v116 + 8 * *v117))
            {
              goto LABEL_133;
            }

            do
            {
LABEL_143:
              v119 = v114;
              *v117 = v115;
              if (v109 < v113)
              {
                break;
              }

              v120 = (2 * (v113 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
              v114 = &v10[v120];
              v121 = 2 * v113 + 2;
              v115 = *v114;
              if (v121 < v11 && *(v116 + 8 * v115) < *(v116 + 8 * v114[1]))
              {
                v115 = v114[1];
                ++v114;
                v120 = v121;
              }

              v117 = v119;
              v113 = v120;
            }

            while (*(v116 + 8 * v115) >= *(v116 + 8 * v118));
            *v119 = v118;
            v110 = *a3;
            goto LABEL_133;
          }

          v116 = *v110;
          v117 = &v10[v111];
          v118 = *v117;
          if (*(*v110 + 8 * v115) >= *(*v110 + 8 * *v117))
          {
            goto LABEL_143;
          }
        }

LABEL_133:
        v112 = v111-- <= 0;
        if (v112)
        {
          do
          {
            v122 = 0;
            v123 = *v10;
            v124 = *a3;
            v125 = (v11 - 2) >> 1;
            v126 = v10;
            do
            {
              while (1)
              {
                v131 = &v126[v122];
                v130 = v131 + 1;
                v129 = v131[1];
                result = 2 * v122;
                v132 = (2 * v122) | 1;
                v122 = 2 * v122 + 2;
                if (v122 < v11)
                {
                  break;
                }

                v122 = v132;
                *v126 = v129;
                v126 = v131 + 1;
                if (v132 > v125)
                {
                  goto LABEL_157;
                }
              }

              v128 = v131[2];
              v127 = v131 + 2;
              result = v128;
              if (*(*v124 + 8 * v129) >= *(*v124 + 8 * v128))
              {
                v122 = v132;
              }

              else
              {
                v129 = result;
                v130 = v127;
              }

              *v126 = v129;
              v126 = v130;
            }

            while (v122 <= v125);
LABEL_157:
            if (v130 == --a2)
            {
              *v130 = v123;
            }

            else
            {
              *v130 = *a2;
              *a2 = v123;
              v133 = (v130 - v10 + 8) >> 3;
              v112 = v133 < 2;
              v134 = v133 - 2;
              if (!v112)
              {
                v135 = v134 >> 1;
                v136 = &v10[v135];
                v137 = *v136;
                v138 = *v130;
                v139 = **a3;
                if (*(v139 + 8 * *v136) < *(v139 + 8 * *v130))
                {
                  do
                  {
                    v140 = v136;
                    *v130 = v137;
                    if (!v135)
                    {
                      break;
                    }

                    v135 = (v135 - 1) >> 1;
                    v136 = &v10[v135];
                    v137 = *v136;
                    v130 = v140;
                  }

                  while (*(v139 + 8 * *v136) < *(v139 + 8 * v138));
                  *v140 = v138;
                }
              }
            }

            v112 = v11-- <= 2;
          }

          while (!v112);
          return result;
        }
      }
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = **a3;
    v15 = *(a2 - 1);
    v16 = *(v14 + 8 * v15);
    if (v11 < 0x81)
    {
      v20 = *v10;
      v21 = *v13;
      v22 = *(v14 + 8 * *v10);
      if (v22 < *(v14 + 8 * *v13))
      {
        if (v16 >= v22)
        {
          *v13 = v20;
          *v10 = v21;
          v34 = *(a2 - 1);
          if (*(v14 + 8 * v34) >= *(v14 + 8 * v21))
          {
            goto LABEL_38;
          }

          *v10 = v34;
        }

        else
        {
          *v13 = v15;
        }

        *(a2 - 1) = v21;
LABEL_38:
        --a4;
        v25 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v16 >= v22)
      {
        goto LABEL_38;
      }

      *v10 = v15;
      *(a2 - 1) = v20;
      v24 = *v13;
      if (*(v14 + 8 * *v10) >= *(v14 + 8 * *v13))
      {
        goto LABEL_38;
      }

      *v13 = *v10;
      *v10 = v24;
      --a4;
      v25 = v24;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      v52 = *(v14 + 8 * v25);
      if (*(v14 + 8 * *(v10 - 1)) < v52)
      {
        goto LABEL_62;
      }

      if (v52 >= *(v14 + 8 * *(a2 - 1)))
      {
        v71 = v10 + 1;
        do
        {
          v10 = v71;
          if (v71 >= a2)
          {
            break;
          }

          ++v71;
        }

        while (v52 >= *(v14 + 8 * *v10));
      }

      else
      {
        do
        {
          v70 = v10[1];
          ++v10;
        }

        while (v52 >= *(v14 + 8 * v70));
      }

      v72 = a2;
      if (v10 < a2)
      {
        v72 = a2;
        do
        {
          v73 = *--v72;
        }

        while (v52 < *(v14 + 8 * v73));
      }

      if (v10 < v72)
      {
        v74 = *v10;
        v75 = *v72;
        do
        {
          *v10 = v75;
          *v72 = v74;
          v76 = *(v14 + 8 * v25);
          do
          {
            v77 = v10[1];
            ++v10;
            v74 = v77;
          }

          while (v76 >= *(v14 + 8 * v77));
          do
          {
            v78 = *--v72;
            v75 = v78;
          }

          while (v76 < *(v14 + 8 * v78));
        }

        while (v10 < v72);
      }

      v79 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v79;
      }

      a5 = 0;
      *v79 = v25;
    }

    else
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(v14 + 8 * *v12);
      if (v19 >= *(v14 + 8 * *v10))
      {
        if (v16 < v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v23 = *v10;
          if (*(v14 + 8 * *v12) < *(v14 + 8 * *v10))
          {
            *v10 = *v12;
            *v12 = v23;
          }
        }
      }

      else
      {
        if (v16 >= v19)
        {
          *v10 = v17;
          *v12 = v18;
          v26 = *(a2 - 1);
          if (*(v14 + 8 * v26) >= *(v14 + 8 * v18))
          {
            goto LABEL_29;
          }

          *v12 = v26;
        }

        else
        {
          *v10 = v15;
        }

        *(a2 - 1) = v18;
      }

LABEL_29:
      v27 = v12 - 1;
      v28 = *(v12 - 1);
      v29 = v10[1];
      v30 = *(v14 + 8 * v28);
      v31 = *(a2 - 2);
      v32 = *(v14 + 8 * v31);
      if (v30 >= *(v14 + 8 * v29))
      {
        if (v32 < v30)
        {
          *v27 = v31;
          *(a2 - 2) = v28;
          v33 = v10[1];
          if (*(v14 + 8 * *v27) < *(v14 + 8 * v33))
          {
            v10[1] = *v27;
            *v27 = v33;
          }
        }
      }

      else
      {
        if (v32 >= v30)
        {
          v10[1] = v28;
          *v27 = v29;
          v35 = *(a2 - 2);
          if (*(v14 + 8 * v35) >= *(v14 + 8 * v29))
          {
            goto LABEL_43;
          }

          *v27 = v35;
        }

        else
        {
          v10[1] = v31;
        }

        *(a2 - 2) = v29;
      }

LABEL_43:
      v38 = v12[1];
      v36 = v12 + 1;
      v37 = v38;
      v39 = v10[2];
      v40 = *(v14 + 8 * v38);
      v41 = *(a2 - 3);
      v42 = *(v14 + 8 * v41);
      if (v40 >= *(v14 + 8 * v39))
      {
        if (v42 < v40)
        {
          *v36 = v41;
          *(a2 - 3) = v37;
          v43 = v10[2];
          if (*(v14 + 8 * *v36) < *(v14 + 8 * v43))
          {
            v10[2] = *v36;
            *v36 = v43;
          }
        }
      }

      else
      {
        if (v42 >= v40)
        {
          v10[2] = v37;
          *v36 = v39;
          v44 = *(a2 - 3);
          if (*(v14 + 8 * v44) >= *(v14 + 8 * v39))
          {
            goto LABEL_52;
          }

          *v36 = v44;
        }

        else
        {
          v10[2] = v41;
        }

        *(a2 - 3) = v39;
      }

LABEL_52:
      v45 = *v13;
      v46 = *v27;
      v47 = *(v14 + 8 * *v13);
      v48 = *v36;
      v49 = *(v14 + 8 * *v36);
      if (v47 >= *(v14 + 8 * *v27))
      {
        if (v49 >= v47)
        {
          goto LABEL_60;
        }

        *v13 = v48;
        *v36 = v45;
        v36 = v13;
        v45 = v46;
        if (*(v14 + 8 * v48) < *(v14 + 8 * v46))
        {
LABEL_59:
          *v27 = v48;
          *v36 = v46;
LABEL_60:
          v51 = *v10;
          *v10 = v45;
          *v13 = v51;
          --a4;
          v25 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v69 = *v10;
        *v10 = v48;
        *v13 = v69;
        --a4;
        v25 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v49 < v47)
      {
        goto LABEL_59;
      }

      *v27 = v45;
      *v13 = v46;
      v27 = v13;
      v45 = v48;
      if (*(v14 + 8 * v48) < *(v14 + 8 * v46))
      {
        goto LABEL_59;
      }

      v50 = *v10;
      *v10 = v46;
      *v13 = v50;
      --a4;
      v25 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v53 = 0;
      v54 = **a3;
      v55 = *(v54 + 8 * v25);
      do
      {
        v56 = v10[++v53];
      }

      while (*(v54 + 8 * v56) < v55);
      v57 = &v10[v53];
      v58 = a2;
      if (v53 == 1)
      {
        v58 = a2;
        do
        {
          if (v57 >= v58)
          {
            break;
          }

          v60 = *--v58;
        }

        while (*(v54 + 8 * v60) >= v55);
      }

      else
      {
        do
        {
          v59 = *--v58;
        }

        while (*(v54 + 8 * v59) >= v55);
      }

      if (v57 >= v58)
      {
        v67 = v57 - 1;
        if (v57 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v67;
        goto LABEL_80;
      }

      v61 = *v58;
      v62 = &v10[v53];
      v63 = v58;
      do
      {
        *v62 = v61;
        *v63 = v56;
        v64 = *(v54 + 8 * v25);
        do
        {
          v65 = v62[1];
          ++v62;
          v56 = v65;
        }

        while (*(v54 + 8 * v65) < v64);
        do
        {
          v66 = *--v63;
          v61 = v66;
        }

        while (*(v54 + 8 * v66) >= v64);
      }

      while (v62 < v63);
      v67 = v62 - 1;
      if (v62 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v67 = v25;
      if (v57 < v58)
      {
        goto LABEL_83;
      }

      v68 = sub_18368C048(v10, v67, *a3);
      v10 = v67 + 1;
      result = sub_18368C048(v67 + 1, a2, *a3);
      if (result)
      {
        a2 = v67;
        if (v68)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v68)
      {
LABEL_83:
        result = sub_18368B348(v9, v67, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v67 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v89 = v10 + 1;
      v90 = v10[1];
      v91 = v10 + 2;
      v92 = v10[2];
      v93 = **a3;
      v94 = *(v93 + 8 * v90);
      v95 = *v10;
      v96 = *(v93 + 8 * v92);
      if (v94 >= *(v93 + 8 * *v10))
      {
        if (v96 < v94)
        {
          *v89 = v92;
          *v91 = v90;
          v97 = v10;
          v98 = v10 + 1;
          result = v90;
          if (*(v93 + 8 * v92) < *(v93 + 8 * v95))
          {
            goto LABEL_168;
          }

          goto LABEL_169;
        }

LABEL_178:
        v90 = v92;
        v143 = *(a2 - 1);
        if (*(v93 + 8 * v143) >= *(v93 + 8 * v90))
        {
          return result;
        }
      }

      else
      {
        v97 = v10;
        v98 = v10 + 2;
        result = *v10;
        if (v96 >= v94)
        {
          *v10 = v90;
          v10[1] = v95;
          v97 = v10 + 1;
          v98 = v10 + 2;
          result = v95;
          if (*(v93 + 8 * v92) >= *(v93 + 8 * v95))
          {
            goto LABEL_178;
          }
        }

LABEL_168:
        *v97 = v92;
        *v98 = v95;
        v90 = result;
LABEL_169:
        v143 = *(a2 - 1);
        if (*(v93 + 8 * v143) >= *(v93 + 8 * v90))
        {
          return result;
        }
      }

      *v91 = v143;
      *(a2 - 1) = v90;
      v148 = *v91;
      v149 = *v89;
      if (*(v93 + 8 * v148) < *(v93 + 8 * v149))
      {
        v10[1] = v148;
        v10[2] = v149;
        v150 = *v10;
        if (*(v93 + 8 * v148) < *(v93 + 8 * *v10))
        {
          *v10 = v148;
          v10[1] = v150;
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v80 = **a3;

      return sub_18368BEA8(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, v80);
    }

    goto LABEL_10;
  }

  v83 = **a3;
  v84 = *v10;
  v85 = v10[1];
  v86 = *(v83 + 8 * v85);
  v87 = *(a2 - 1);
  v88 = *(v83 + 8 * v87);
  if (v86 < *(v83 + 8 * *v10))
  {
    if (v88 >= v86)
    {
      *v10 = v85;
      v10[1] = v84;
      v151 = *(a2 - 1);
      if (*(v83 + 8 * v151) >= *(v83 + 8 * v84))
      {
        return result;
      }

      v10[1] = v151;
    }

    else
    {
      *v10 = v87;
    }

    *(a2 - 1) = v84;
    return result;
  }

  if (v88 < v86)
  {
    v10[1] = v87;
    *(a2 - 1) = v85;
    v142 = *v10;
    v141 = v10[1];
    if (*(v83 + 8 * v141) < *(v83 + 8 * *v10))
    {
      *v10 = v141;
      v10[1] = v142;
    }
  }

  return result;
}

uint64_t *sub_18368BEA8(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 8 * *a2);
  v9 = *a3;
  v10 = *(a6 + 8 * *a3);
  if (v8 < *(a6 + 8 * *result))
  {
    if (v10 >= v8)
    {
      *result = v6;
      *a2 = v7;
      v6 = *a3;
      if (*(a6 + 8 * *a3) >= *(a6 + 8 * v7))
      {
        goto LABEL_11;
      }

      *a2 = v6;
    }

    else
    {
      *result = v9;
    }

    *a3 = v7;
    v6 = v7;
LABEL_11:
    v12 = *a4;
    if (*(a6 + 8 * *a4) >= *(a6 + 8 * v6))
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v10 >= v8)
  {
    v6 = *a3;
    v12 = *a4;
    if (*(a6 + 8 * *a4) >= *(a6 + 8 * *a3))
    {
      goto LABEL_16;
    }
  }

  else
  {
    *a2 = v9;
    *a3 = v6;
    v11 = *result;
    if (*(a6 + 8 * *a2) >= *(a6 + 8 * *result))
    {
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v11;
    v6 = *a3;
    v12 = *a4;
    if (*(a6 + 8 * *a4) >= *(a6 + 8 * *a3))
    {
      goto LABEL_16;
    }
  }

LABEL_12:
  *a3 = v12;
  *a4 = v6;
  v13 = *a2;
  if (*(a6 + 8 * *a3) < *(a6 + 8 * *a2))
  {
    *a2 = *a3;
    *a3 = v13;
    v14 = *result;
    if (*(a6 + 8 * *a2) < *(a6 + 8 * *result))
    {
      *result = *a2;
      *a2 = v14;
    }
  }

LABEL_16:
  v15 = *a4;
  if (*(a6 + 8 * *a5) < *(a6 + 8 * *a4))
  {
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    if (*(a6 + 8 * *a4) < *(a6 + 8 * *a3))
    {
      *a3 = *a4;
      *a4 = v16;
      v17 = *a2;
      if (*(a6 + 8 * *a3) < *(a6 + 8 * *a2))
      {
        *a2 = *a3;
        *a3 = v17;
        v18 = *result;
        if (*(a6 + 8 * *a2) < *(a6 + 8 * *result))
        {
          *result = *a2;
          *a2 = v18;
        }
      }
    }
  }

  return result;
}

BOOL sub_18368C048(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = *a3;
      v8 = *a1;
      v9 = a1[1];
      v10 = *(*a3 + 8 * v9);
      v11 = *(a2 - 1);
      v12 = *(*a3 + 8 * v11);
      if (v10 >= *(*a3 + 8 * *a1))
      {
        if (v12 >= v10)
        {
          return 1;
        }

        a1[1] = v11;
        *(a2 - 1) = v9;
        v36 = *a1;
        v35 = a1[1];
        if (*(v7 + 8 * v35) >= *(v7 + 8 * *a1))
        {
          return 1;
        }

        *a1 = v35;
        a1[1] = v36;
        return 1;
      }

      else if (v12 >= v10)
      {
        *a1 = v9;
        a1[1] = v8;
        v48 = *(a2 - 1);
        if (*(v7 + 8 * v48) >= *(v7 + 8 * v8))
        {
          return 1;
        }

        a1[1] = v48;
        *(a2 - 1) = v8;
        return 1;
      }

      else
      {
        *a1 = v11;
        *(a2 - 1) = v8;
        return 1;
      }
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_18368BEA8(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
        return 1;
      }

LABEL_14:
      v14 = a1 + 2;
      v13 = a1[2];
      v15 = a1[1];
      v16 = *a3;
      v17 = *(*a3 + 8 * v15);
      v18 = *a1;
      v19 = *(*a3 + 8 * v13);
      if (v17 >= *(*a3 + 8 * *a1))
      {
        if (v19 >= v17)
        {
          goto LABEL_28;
        }

        a1[1] = v13;
        *v14 = v15;
        v22 = *(v16 + 8 * v13);
        v23 = *(v16 + 8 * v18);
        v20 = a1;
        v21 = a1 + 1;
      }

      else
      {
        v20 = a1;
        v21 = a1 + 2;
        if (v19 < v17)
        {
LABEL_27:
          *v20 = v13;
          *v21 = v18;
          goto LABEL_28;
        }

        *a1 = v15;
        a1[1] = v18;
        v22 = *(v16 + 8 * v13);
        v23 = *(v16 + 8 * v18);
        v20 = a1 + 1;
        v21 = a1 + 2;
      }

      if (v22 < v23)
      {
        goto LABEL_27;
      }

LABEL_28:
      v37 = a1 + 3;
      if (a1 + 3 == a2)
      {
        return 1;
      }

      v38 = 0;
      for (i = 24; ; i += 8)
      {
        v40 = *v37;
        v41 = *v14;
        if (*(v16 + 8 * *v37) < *(v16 + 8 * v41))
        {
          break;
        }

LABEL_31:
        v14 = v37++;
        if (v37 == a2)
        {
          return 1;
        }
      }

      v42 = i;
      do
      {
        *(a1 + v42) = v41;
        v43 = v42 - 8;
        if (v42 == 8)
        {
          *a1 = v40;
          if (++v38 != 8)
          {
            goto LABEL_31;
          }

          return v37 + 1 == a2;
        }

        v41 = *(a1 + v42 - 16);
        v42 -= 8;
      }

      while (*(v16 + 8 * v40) < *(v16 + 8 * v41));
      *(a1 + v43) = v40;
      if (++v38 != 8)
      {
        goto LABEL_31;
      }

      return v37 + 1 == a2;
    }

    v24 = a1 + 1;
    v25 = a1[1];
    v26 = a1 + 2;
    v27 = a1[2];
    v28 = *a3;
    v29 = *(*a3 + 8 * v25);
    v30 = *a1;
    v31 = *(*a3 + 8 * v27);
    if (v29 >= *(*a3 + 8 * *a1))
    {
      if (v31 >= v29)
      {
        goto LABEL_43;
      }

      *v24 = v27;
      *v26 = v25;
      v32 = a1;
      v33 = a1 + 1;
      v34 = v25;
      if (*(v28 + 8 * v27) >= *(v28 + 8 * v30))
      {
LABEL_41:
        v44 = *(a2 - 1);
        if (*(v28 + 8 * v44) >= *(v28 + 8 * v25))
        {
          return 1;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v32 = a1;
      v33 = a1 + 2;
      v34 = *a1;
      if (v31 >= v29)
      {
        *a1 = v25;
        a1[1] = v30;
        v32 = a1 + 1;
        v33 = a1 + 2;
        v34 = v30;
        if (*(v28 + 8 * v27) >= *(v28 + 8 * v30))
        {
LABEL_43:
          v25 = v27;
          v44 = *(a2 - 1);
          if (*(v28 + 8 * v44) >= *(v28 + 8 * v25))
          {
            return 1;
          }

LABEL_44:
          *v26 = v44;
          *(a2 - 1) = v25;
          v45 = *v26;
          v46 = *v24;
          if (*(v28 + 8 * v45) >= *(v28 + 8 * v46))
          {
            return 1;
          }

          a1[1] = v45;
          a1[2] = v46;
          v47 = *a1;
          if (*(v28 + 8 * v45) >= *(v28 + 8 * *a1))
          {
            return 1;
          }

          *a1 = v45;
          a1[1] = v47;
          return 1;
        }
      }
    }

    *v32 = v27;
    *v33 = v30;
    v25 = v34;
    goto LABEL_41;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 != 2)
  {
    goto LABEL_14;
  }

  v5 = *(a2 - 1);
  v6 = *a1;
  if (*(*a3 + 8 * v5) >= *(*a3 + 8 * *a1))
  {
    return 1;
  }

  *a1 = v5;
  *(a2 - 1) = v6;
  return 1;
}

void sub_18368C3C8(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    sub_18368964C();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_183688F00();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

__n128 sub_18368C4E8(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 4;
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v60 = (v12 + 16);
        v61 = *(v12 + 16);
        v63 = a2[-1].n128_u64[0];
        v58 = a2 - 1;
        v62 = v63;
        if (v61 < *v12)
        {
          if (v62 >= v61)
          {
            v135 = *v12;
            *v12 = *v60;
            result = v135;
            *v60 = v135;
            if (v58->n128_u64[0] < *(v12 + 16))
            {
              result = *v60;
              *v60 = *v58;
              *v58 = result;
            }

            return result;
          }

LABEL_109:
          v131 = *v12;
          *v12 = *v58;
          result = v131;
          *v58 = v131;
          return result;
        }

        if (v62 >= v61)
        {
          return result;
        }

        result = *v60;
        *v60 = *v58;
        *v58 = result;
LABEL_190:
        if (*(v12 + 16) < *v12)
        {
          v137 = *v12;
          *v12 = *v60;
          result = v137;
          *v60 = v137;
        }

        return result;
      }

      if (v13 != 4)
      {
        if (v13 == 5)
        {

          result.n128_u64[0] = sub_18368D064(v12, (v12 + 16), (v12 + 32), (v12 + 48), a2[-1].n128_u64, result).n128_u64[0];
          return result;
        }

        goto LABEL_9;
      }

      v60 = (v12 + 16);
      v64 = *(v12 + 16);
      v65 = (v12 + 32);
      v66 = *(v12 + 32);
      if (v64 >= *v12)
      {
        if (v66 < v64)
        {
          result = *v60;
          *v60 = *v65;
          *v65 = result;
          if (*(v12 + 16) < *v12)
          {
            v134 = *v12;
            *v12 = *v60;
            result = v134;
            *v60 = v134;
          }
        }

        goto LABEL_187;
      }

      if (v66 >= v64)
      {
        v136 = *v12;
        *v12 = *v60;
        result = v136;
        *v60 = v136;
        if (v66 >= *(v12 + 16))
        {
          goto LABEL_187;
        }

        result = *v60;
        *v60 = *v65;
      }

      else
      {
        v132 = *v12;
        *v12 = *v65;
        result = v132;
      }

      *v65 = result;
LABEL_187:
      if (v9->n128_u64[0] >= v65->n128_u64[0])
      {
        return result;
      }

      result = *v65;
      *v65 = *v9;
      *v9 = result;
      if (v65->n128_u64[0] >= v60->n128_u64[0])
      {
        return result;
      }

      result = *v60;
      *v60 = *v65;
      *v65 = result;
      goto LABEL_190;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      v59 = a2[-1].n128_u64[0];
      v58 = a2 - 1;
      if (v59 >= *v12)
      {
        return result;
      }

      goto LABEL_109;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v67 = (v12 + 16);
      v69 = v12 == a2 || v67 == a2;
      if ((a4 & 1) == 0)
      {
        if (!v69)
        {
          do
          {
            v107 = v67;
            v108 = a1[1].n128_u64[0];
            if (v108 < a1->n128_u64[0])
            {
              v109 = a1[1].n128_u64[1];
              v110 = v107;
              do
              {
                result = v110[-1];
                *v110 = result;
                v111 = v110[-2].n128_u64[0];
                --v110;
              }

              while (v108 < v111);
              v110->n128_u64[0] = v108;
              v110->n128_u64[1] = v109;
            }

            v67 = v107 + 1;
            a1 = v107;
          }

          while (&v107[1] != a2);
        }

        return result;
      }

      if (v69)
      {
        return result;
      }

      v70 = 0;
      v71 = v12;
      while (1)
      {
        v73 = v67;
        v74 = v71[2];
        if (v74 < *v71)
        {
          v75 = v71[3];
          v76 = v70;
          do
          {
            result = *(v12 + v76);
            *(v12 + v76 + 16) = result;
            if (!v76)
            {
              v72 = v12;
              goto LABEL_123;
            }

            v77 = *(v12 + v76 - 16);
            v76 -= 16;
          }

          while (v74 < v77);
          v72 = (v12 + v76 + 16);
LABEL_123:
          *v72 = v74;
          v72[1] = v75;
        }

        v67 = v73 + 1;
        v70 += 16;
        v71 = v73;
        if (&v73[1] == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v14 = v12 + 16 * (v13 >> 1);
    v15 = v14;
    v16 = v9->n128_u64[0];
    if (v13 < 0x81)
    {
      v18 = *v12;
      if (*v12 < *v14)
      {
        if (v16 >= v18)
        {
          v120 = *v14;
          *v14 = *v12;
          result = v120;
          *v12 = v120;
          if (v9->n128_u64[0] >= *v12)
          {
            goto LABEL_37;
          }

          v113 = *v12;
          *v12 = *v9;
        }

        else
        {
          v113 = *v14;
          *v14 = *v9;
        }

        result = v113;
        *v9 = v113;
LABEL_37:
        --a3;
        v19 = *v12;
        if (a4)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v16 >= v18)
      {
        goto LABEL_37;
      }

      v116 = *v12;
      *v12 = *v9;
      result = v116;
      *v9 = v116;
      if (*v12 >= *v14)
      {
        goto LABEL_37;
      }

      v117 = *v14;
      *v14 = *v12;
      result = v117;
      *v12 = v117;
      --a3;
      v19 = *v12;
      if (a4)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v12 - 16) < v19)
      {
        goto LABEL_62;
      }

      if (v19 >= v9->n128_u64[0])
      {
        v51 = v12 + 16;
        do
        {
          v12 = v51;
          if (v51 >= a2)
          {
            break;
          }

          v51 += 16;
        }

        while (v19 >= *v12);
      }

      else
      {
        do
        {
          v50 = *(v12 + 16);
          v12 += 16;
        }

        while (v19 >= v50);
      }

      v52 = a2;
      if (v12 < a2)
      {
        v52 = a2;
        do
        {
          v53 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v19 < v53);
      }

      v54 = a1->n128_u64[1];
      while (v12 < v52)
      {
        v130 = *v12;
        *v12 = *v52;
        result = v130;
        *v52 = v130;
        do
        {
          v55 = *(v12 + 16);
          v12 += 16;
        }

        while (v19 >= v55);
        do
        {
          v56 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v19 < v56);
      }

      v57 = (v12 - 16);
      if ((v12 - 16) != a1)
      {
        result = *v57;
        *a1 = *v57;
      }

      a4 = 0;
      *(v12 - 16) = v19;
      *(v12 - 8) = v54;
    }

    else
    {
      v17 = *v14;
      if (*v14 >= *v12)
      {
        if (v16 < v17)
        {
          v114 = *v14;
          *v14 = *v9;
          *v9 = v114;
          if (*v14 < *v12)
          {
            v115 = *v12;
            *v12 = *v14;
            *v14 = v115;
          }
        }
      }

      else
      {
        if (v16 >= v17)
        {
          v118 = *v12;
          *v12 = *v14;
          *v14 = v118;
          if (v9->n128_u64[0] >= *v14)
          {
            goto LABEL_28;
          }

          v112 = *v14;
          *v14 = *v9;
        }

        else
        {
          v112 = *v12;
          *v12 = *v9;
        }

        *v9 = v112;
      }

LABEL_28:
      v20 = (v12 + 16);
      v21 = (v14 - 16);
      v22 = *(v14 - 16);
      v23 = v10->n128_u64[0];
      if (v22 >= *(v12 + 16))
      {
        if (v23 < v22)
        {
          v119 = *v21;
          *v21 = *v10;
          *v10 = v119;
          if (v21->n128_u64[0] < v20->n128_u64[0])
          {
            v25 = *v20;
            *v20 = *v21;
            *v21 = v25;
          }
        }
      }

      else
      {
        if (v23 >= v22)
        {
          v26 = *v20;
          *v20 = *v21;
          *v21 = v26;
          if (v10->n128_u64[0] >= v21->n128_u64[0])
          {
            goto LABEL_42;
          }

          v121 = *v21;
          *v21 = *v10;
          v24 = v121;
        }

        else
        {
          v24 = *v20;
          *v20 = *v10;
        }

        *v10 = v24;
      }

LABEL_42:
      v27 = (v12 + 32);
      v30 = *(v14 + 16);
      v28 = (v14 + 16);
      v29 = v30;
      v31 = v11->n128_u64[0];
      if (v30 >= *(v12 + 32))
      {
        if (v31 < v29)
        {
          v122 = *v28;
          *v28 = *v11;
          *v11 = v122;
          if (v28->n128_u64[0] < v27->n128_u64[0])
          {
            v33 = *v27;
            *v27 = *v28;
            *v28 = v33;
          }
        }
      }

      else
      {
        if (v31 >= v29)
        {
          v34 = *v27;
          *v27 = *v28;
          *v28 = v34;
          if (v11->n128_u64[0] >= v28->n128_u64[0])
          {
            goto LABEL_51;
          }

          v123 = *v28;
          *v28 = *v11;
          v32 = v123;
        }

        else
        {
          v32 = *v27;
          *v27 = *v11;
        }

        *v11 = v32;
      }

LABEL_51:
      v35 = *v15;
      v36 = v28->n128_u64[0];
      if (*v15 >= v21->n128_u64[0])
      {
        if (v36 < v35)
        {
          v125 = *v15;
          *v15 = *v28;
          *v28 = v125;
          if (*v15 < v21->n128_u64[0])
          {
            v126 = *v21;
            *v21 = *v15;
            *v15 = v126;
          }
        }
      }

      else
      {
        if (v36 >= v35)
        {
          v127 = *v21;
          *v21 = *v15;
          *v15 = v127;
          if (v28->n128_u64[0] >= *v15)
          {
            goto LABEL_60;
          }

          v124 = *v15;
          *v15 = *v28;
        }

        else
        {
          v124 = *v21;
          *v21 = *v28;
        }

        *v28 = v124;
      }

LABEL_60:
      v128 = *v12;
      *v12 = *v15;
      result = v128;
      *v15 = v128;
      --a3;
      v19 = *v12;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v37 = 0;
      v38 = *(v12 + 8);
      do
      {
        v39 = *(v12 + v37 + 16);
        v37 += 16;
      }

      while (v39 < v19);
      v40 = v12 + v37;
      v41 = a2;
      if (v37 == 16)
      {
        v41 = a2;
        do
        {
          if (v40 >= v41)
          {
            break;
          }

          v43 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v43 >= v19);
      }

      else
      {
        do
        {
          v42 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v42 >= v19);
      }

      v12 += v37;
      if (v40 < v41)
      {
        v44 = v41;
        do
        {
          v129 = *v12;
          *v12 = *v44;
          result = v129;
          *v44 = v129;
          do
          {
            v45 = *(v12 + 16);
            v12 += 16;
          }

          while (v45 < v19);
          do
          {
            v46 = v44[-1].n128_u64[0];
            --v44;
          }

          while (v46 >= v19);
        }

        while (v12 < v44);
      }

      v47 = (v12 - 16);
      if ((v12 - 16) != a1)
      {
        result = *v47;
        *a1 = *v47;
      }

      *(v12 - 16) = v19;
      *(v12 - 8) = v38;
      if (v40 < v41)
      {
LABEL_81:
        sub_18368C4E8(a1, v12 - 16, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v48 = sub_18368D1E8(a1, (v12 - 16), result);
        if (sub_18368D1E8(v12, a2, v49))
        {
          a2 = (v12 - 16);
          if (v48)
          {
            return result;
          }

          goto LABEL_1;
        }

        if (!v48)
        {
          goto LABEL_81;
        }
      }
    }
  }

  if (v12 == a2)
  {
    return result;
  }

  v78 = (v13 - 2) >> 1;
  v79 = v78;
  while (2)
  {
    if (v78 >= v79)
    {
      v81 = (2 * (v79 & 0xFFFFFFFFFFFFFFFLL)) | 1;
      v82 = (v12 + 16 * v81);
      if (2 * (v79 & 0xFFFFFFFFFFFFFFFLL) + 2 >= v13)
      {
        v85 = (v12 + 16 * v79);
        v86 = *v85;
        if (*v82 >= *v85)
        {
LABEL_143:
          v87 = v85[1];
          while (1)
          {
            v90 = v85;
            v85 = v82;
            *v90 = *v82;
            if (v78 < v81)
            {
              break;
            }

            v91 = (2 * (v81 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v82 = (v12 + 16 * v91);
            v81 = 2 * v81 + 2;
            if (v81 < v13)
            {
              v88 = *v82;
              v89 = v82[2];
              if (*v82 <= v89)
              {
                v88 = v82[2];
              }

              if (*v82 >= v89)
              {
                v81 = v91;
              }

              else
              {
                v82 += 2;
              }

              if (v88 < v86)
              {
                break;
              }
            }

            else
            {
              v81 = v91;
              if (*v82 < v86)
              {
                break;
              }
            }
          }

          *v85 = v86;
          v85[1] = v87;
        }
      }

      else
      {
        v83 = v82[2];
        v84 = *v82 >= v83;
        if (*v82 > v83)
        {
          v83 = *v82;
        }

        if (!v84)
        {
          v82 += 2;
          v81 = 2 * (v79 & 0xFFFFFFFFFFFFFFFLL) + 2;
        }

        v85 = (v12 + 16 * v79);
        v86 = *v85;
        if (v83 >= *v85)
        {
          goto LABEL_143;
        }
      }
    }

    v80 = v79-- <= 0;
    if (!v80)
    {
      continue;
    }

    break;
  }

  do
  {
    v92 = 0;
    v133 = *v12;
    v93 = (v13 - 2) >> 1;
    n128_u64 = v12;
    do
    {
      while (1)
      {
        v98 = &n128_u64[v92];
        v97 = v98 + 1;
        v99 = (2 * v92) | 1;
        v92 = 2 * v92 + 2;
        if (v92 < v13)
        {
          break;
        }

        v92 = v99;
        *n128_u64 = *v97;
        n128_u64 = v98[1].n128_u64;
        if (v99 > v93)
        {
          goto LABEL_163;
        }
      }

      v96 = v98[2].n128_u64[0];
      v95 = v98 + 2;
      if (v95[-1].n128_u64[0] >= v96)
      {
        v92 = v99;
      }

      else
      {
        v97 = v95;
      }

      *n128_u64 = *v97;
      n128_u64 = v97;
    }

    while (v92 <= v93);
LABEL_163:
    if (v97 == --a2)
    {
      result = v133;
      *v97 = v133;
    }

    else
    {
      *v97 = *a2;
      result = v133;
      *a2 = v133;
      v100 = (&v97[1] - v12) >> 4;
      v80 = v100 < 2;
      v101 = v100 - 2;
      if (!v80)
      {
        v102 = v101 >> 1;
        v103 = (v12 + 16 * v102);
        v104 = v97->n128_u64[0];
        if (v103->n128_u64[0] < v97->n128_u64[0])
        {
          v105 = v97->n128_u64[1];
          do
          {
            v106 = v97;
            v97 = v103;
            result = *v103;
            *v106 = *v103;
            if (!v102)
            {
              break;
            }

            v102 = (v102 - 1) >> 1;
            v103 = (v12 + 16 * v102);
          }

          while (v103->n128_u64[0] < v104);
          v97->n128_u64[0] = v104;
          v97->n128_u64[1] = v105;
        }
      }
    }

    v80 = v13-- <= 2;
  }

  while (!v80);
  return result;
}