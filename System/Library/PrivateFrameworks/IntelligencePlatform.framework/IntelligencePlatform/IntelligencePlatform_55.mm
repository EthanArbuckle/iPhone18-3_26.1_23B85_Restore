void sub_1ABE85A28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1ABF23BD4();
  v5 = [a3 encodeAsIDsFrom_];

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v6 = sub_1ABF240D4();

  v7 = sub_1ABAAB7C8(v6);
  if (v7)
  {
    v8 = v7;
    v16 = MEMORY[0x1E69E7CC0];
    sub_1ABADDE7C(0, v7 & ~(v7 >> 63), 0);
    if ((v8 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = sub_1ABA7D0EC();
          v11 = MEMORY[0x1AC5AA170](v10);
        }

        else
        {
          v11 = *(v6 + 8 * v9 + 32);
        }

        v12 = v11;
        v13 = [v11 integerValue];

        if (v13 < 0xFFFFFFFF80000000)
        {
          break;
        }

        if (v13 > 0x7FFFFFFF)
        {
          goto LABEL_15;
        }

        v15 = *(v16 + 16);
        v14 = *(v16 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1ABADDE7C((v14 > 1), v15 + 1, 1);
        }

        ++v9;
        *(v16 + 16) = v15 + 1;
        *(v16 + 4 * v15 + 32) = v13;
        if (v8 == v9)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

uint64_t sub_1ABE85BD0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = sub_1ABAD219C(&qword_1EB4DB968, &qword_1ABF707E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for MorphunTokenizer(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1ABF21944();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(*a3)
  {
    case 1:
      v28 = sub_1ABF23C84();
      goto LABEL_14;
    case 2:

      return a1;
    case 3:
      v28 = sub_1ABE85170();
      goto LABEL_14;
    case 4:
      v48 = a1;
      v49 = a2;
      sub_1ABAE28EC();
      v28 = sub_1ABF24894();
      goto LABEL_14;
    case 5:
      v48 = 0x203E534F423CLL;
      v49 = 0xE600000000000000;
      MEMORY[0x1AC5A9410](a1, a2);
      MEMORY[0x1AC5A9410](0x3E534F453C20, 0xE600000000000000);
      return v48;
    case 6:
      sub_1ABE84F48(a1, a2);
LABEL_14:
      a1 = v28;
      break;
    case 7:
      v29 = type metadata accessor for TextPreprocessor();
      sub_1ABE8647C(v3 + *(v29 + 20), v10);
      if (sub_1ABA7E1E0(v10, 1, v11) == 1)
      {
        sub_1ABE864EC(v10);
        sub_1ABB32C5C();
        swift_allocError();
        *v30 = 0xD000000000000039;
        *(v30 + 8) = 0x80000001ABF94B90;
        *(v30 + 16) = 7;
        swift_willThrow();
      }

      else
      {
        sub_1ABE86554(v10, v14);
        v32 = objc_autoreleasePoolPush();
        v33 = objc_autoreleasePoolPush();
        v34 = *v14;
        v35 = v50;
        v36 = sub_1ABF22F34();
        if (v35)
        {
          objc_autoreleasePoolPop(v33);
        }

        else
        {
          MEMORY[0x1EEE9AC00](v36);
          *(&v46 - 2) = v14;
          sub_1ABAAA034();
          v45 = v44;

          objc_autoreleasePoolPop(v33);
          v48 = v45;
          sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
          sub_1ABAAA5C0();
          a1 = sub_1ABF23B54();
        }

        objc_autoreleasePoolPop(v32);
        sub_1ABBA294C(v14);
      }

      break;
    default:
      v47 = v17;
      sub_1ABE84B98(a1, a2);
      if (qword_1ED86BA08 != -1)
      {
        swift_once();
      }

      sub_1ABE84CFC(qword_1ED87C3E0);

      v20 = v50;
      sub_1ABBE6A60();
      sub_1ABBE6748(0, 0xE000000000000000, v21, v22);
      v23 = 0;
      v25 = v24;

      v26 = objc_allocWithZone(MEMORY[0x1E696AB60]);
      v27 = sub_1ABE862F4(32);
      if (v20)
      {
      }

      else
      {
        v37 = v27;
        if (v27)
        {
          v38 = sub_1ABF23BD4();
          v39 = MEMORY[0x1AC5A94A0](0, v25);
          v40 = sub_1ABF23BD4();
          v41 = [v37 stringByReplacingMatchesInString:v38 options:0 range:0 withTemplate:{v39, v40}];

          v23 = sub_1ABF23C04();
          v43 = v42;

          v25 = v43;
        }
      }

      v48 = v23;
      v49 = v25;
      sub_1ABF21914();
      sub_1ABAE28EC();
      a1 = sub_1ABF248A4();
      (*(v47 + 8))(v19, v15);

      break;
  }

  return a1;
}

unint64_t sub_1ABE86184()
{
  sub_1ABAFF390(0, &qword_1EB4DB960, 0x1E69CA938);

  sub_1ABA7D0EC();
  v0 = sub_1ABE86280();
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    sub_1ABF24AB4();

    v2 = sub_1ABA7D0EC();
    MEMORY[0x1AC5A9410](v2);

    v1 = 0x80000001ABF94B00;
    sub_1ABB32C5C();
    sub_1ABA7BD00();
    *v3 = 0xD000000000000024;
    *(v3 + 8) = 0x80000001ABF94B00;
    *(v3 + 16) = 6;
    swift_willThrow();
  }

  return v1;
}

id sub_1ABE86280()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1ABF23BD4();

  v2 = [v0 initWithModelPath_];

  return v2;
}

id sub_1ABE862F4(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [v1 initWithTypes:a1 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1ABE863A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1ABF23BD4();
  v7 = [a4 pathForResource:v6 ofType:a3];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_1ABF23C04();

  return v8;
}

uint64_t type metadata accessor for TextPreprocessor()
{
  result = qword_1ED86D778;
  if (!qword_1ED86D778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ABE8647C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DB968, &qword_1ABF707E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE864EC(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DB968, &qword_1ABF707E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABE86554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MorphunTokenizer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE86668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DB968, &qword_1ABF707E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1ABE86700()
{
  sub_1ABE8677C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1ABE8677C()
{
  if (!qword_1ED86D788[0])
  {
    type metadata accessor for MorphunTokenizer(255);
    v0 = sub_1ABF247E4();
    if (!v1)
    {
      atomic_store(v0, qword_1ED86D788);
    }
  }
}

void *TransportationActivityEventType.init(modeOfTransportationEntityClass:)@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_69;
  }

  v5 = result[1];
  v6 = result[2];
  v7 = result[3];
  v8 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x5E8), *(_Records_GDEntityClass_records + 0x5F0), *(_Records_GDEntityClass_records + 0x5F8), &v81);
  sub_1ABA7BB78(v8, v9, v10, v11, v12, v13, v14, v15, v74, v81, v82, v83);
  v16 = v16 && v2 == v7;
  if (v16)
  {
    v17 = 0;
LABEL_9:

    goto LABEL_10;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v3)
  {
    v17 = 0;
LABEL_10:

LABEL_11:
    *a2 = v17;
    return result;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_69:
    __break(1u);
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v18 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x5D0), *(_Records_GDEntityClass_records + 0x5D8), *(_Records_GDEntityClass_records + 0x5E0), &v81);
  sub_1ABA7BB78(v18, v19, v20, v21, v22, v23, v24, v25, v75, v81, v82, v83);
  if (v16 && v2 == v7)
  {
    v17 = 1;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v3)
  {
    v17 = 1;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_70;
  }

  v27 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x600), *(_Records_GDEntityClass_records + 0x608), *(_Records_GDEntityClass_records + 0x610), &v81);
  sub_1ABA7BB78(v27, v28, v29, v30, v31, v32, v33, v34, v76, v81, v82, v83);
  if (v16 && v2 == v7)
  {
    v17 = 2;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v3)
  {
    v17 = 2;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_71;
  }

  v36 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x648), *(_Records_GDEntityClass_records + 0x650), *(_Records_GDEntityClass_records + 0x658), &v81);
  sub_1ABA7BB78(v36, v37, v38, v39, v40, v41, v42, v43, v77, v81, v82, v83);
  if (v16 && v2 == v7)
  {
    v17 = 3;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v3)
  {
    v17 = 3;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_72;
  }

  v45 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x618), *(_Records_GDEntityClass_records + 0x620), *(_Records_GDEntityClass_records + 0x628), &v81);
  sub_1ABA7BB78(v45, v46, v47, v48, v49, v50, v51, v52, v78, v81, v82, v83);
  if (v16 && v2 == v7)
  {
    v17 = 4;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v3)
  {
    v17 = 4;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_73;
  }

  v54 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x630), *(_Records_GDEntityClass_records + 0x638), *(_Records_GDEntityClass_records + 0x640), &v81);
  sub_1ABA7BB78(v54, v55, v56, v57, v58, v59, v60, v61, v79, v81, v82, v83);
  if (v16 && v2 == v7)
  {
    v17 = 5;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v3)
  {
    v17 = 5;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_74;
  }

  v63 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x678), *(_Records_GDEntityClass_records + 0x680), *(_Records_GDEntityClass_records + 0x688), &v81);
  sub_1ABA7BB78(v63, v64, v65, v66, v67, v68, v69, v70, v80, v81, v82, v83);
  if (v16 && v2 == v7)
  {
    v17 = 6;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v3)
  {
    v17 = 6;
    goto LABEL_10;
  }

  if (_Records_GDEntityClass_records)
  {
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x660), *(_Records_GDEntityClass_records + 0x668), *(_Records_GDEntityClass_records + 0x670), &v81);
    v17 = 7;
    if (v83 != v6 || v84 != v7)
    {
      v73 = sub_1ABA83534();

      if (v73)
      {
        v17 = 7;
      }

      else
      {
        v17 = 8;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_75:
  __break(1u);
  return result;
}

void TransportationActivityEventType.modeOfTransportationEntityClass.getter(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_24;
      }

      v3 = *(_Records_GDEntityClass_records + 0x5D8);
      v4 = *(_Records_GDEntityClass_records + 0x5E0);
      v5 = *(_Records_GDEntityClass_records + 0x5D0);
      goto LABEL_18;
    case 2:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_20;
      }

      v3 = *(_Records_GDEntityClass_records + 0x608);
      v4 = *(_Records_GDEntityClass_records + 0x610);
      v5 = *(_Records_GDEntityClass_records + 0x600);
      goto LABEL_18;
    case 3:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_21;
      }

      v3 = *(_Records_GDEntityClass_records + 0x650);
      v4 = *(_Records_GDEntityClass_records + 0x658);
      v5 = *(_Records_GDEntityClass_records + 0x648);
      goto LABEL_18;
    case 4:
      if (_Records_GDEntityClass_records)
      {
        v3 = *(_Records_GDEntityClass_records + 0x620);
        v4 = *(_Records_GDEntityClass_records + 0x628);
        v5 = *(_Records_GDEntityClass_records + 0x618);
LABEL_18:
        sub_1ABA8882C(v5, v3, v4, v10);
        v6 = v10[1];
        v7 = v10[2];
        v8 = v10[3];
        v9 = v11;
        *a1 = v10[0];
        *(a1 + 8) = v6;
        *(a1 + 16) = v7;
        *(a1 + 24) = v8;
        *(a1 + 32) = v9;
      }

      else
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      return;
    case 5:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_25;
      }

      v3 = *(_Records_GDEntityClass_records + 0x638);
      v4 = *(_Records_GDEntityClass_records + 0x640);
      v5 = *(_Records_GDEntityClass_records + 0x630);
      goto LABEL_18;
    case 6:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_26;
      }

      v3 = *(_Records_GDEntityClass_records + 0x680);
      v4 = *(_Records_GDEntityClass_records + 0x688);
      v5 = *(_Records_GDEntityClass_records + 0x678);
      goto LABEL_18;
    case 7:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_22;
      }

      v3 = *(_Records_GDEntityClass_records + 0x668);
      v4 = *(_Records_GDEntityClass_records + 0x670);
      v5 = *(_Records_GDEntityClass_records + 0x660);
      goto LABEL_18;
    default:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_23;
      }

      v3 = *(_Records_GDEntityClass_records + 0x5F0);
      v4 = *(_Records_GDEntityClass_records + 0x5F8);
      v5 = *(_Records_GDEntityClass_records + 0x5E8);
      goto LABEL_18;
  }
}

uint64_t sub_1ABE86D34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746F6F466E6FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C6369686576 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69626F6D6F747561 && a2 == 0xEA0000000000656CLL;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1885956211 && a2 == 0xE400000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656E616C70 && a2 == 0xE500000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C6379636962 && a2 == 0xE700000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x69746F6D6F636F6CLL && a2 == 0xEF6E696172546576;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 7566690 && a2 == 0xE300000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1ABF25054();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABE86FB4(char a1)
{
  result = 0x746F6F466E6FLL;
  switch(a1)
  {
    case 1:
      v3 = 1768449398;
      goto LABEL_8;
    case 2:
      result = 0x69626F6D6F747561;
      break;
    case 3:
      result = 1885956211;
      break;
    case 4:
      result = 0x656E616C70;
      break;
    case 5:
      v3 = 2036558178;
LABEL_8:
      result = v3 | 0x656C6300000000;
      break;
    case 6:
      result = 0x69746F6D6F636F6CLL;
      break;
    case 7:
      result = 7566690;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE87088(uint64_t a1)
{
  v2 = sub_1ABE87D24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE870C4(uint64_t a1)
{
  v2 = sub_1ABE87D24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE87100(uint64_t a1)
{
  v2 = sub_1ABE87C28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE8713C(uint64_t a1)
{
  v2 = sub_1ABE87C28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE87178(uint64_t a1)
{
  v2 = sub_1ABE87B80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE871B4(uint64_t a1)
{
  v2 = sub_1ABE87B80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE871F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE86D34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE87220(uint64_t a1)
{
  v2 = sub_1ABE87B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE8725C(uint64_t a1)
{
  v2 = sub_1ABE87B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE87298(uint64_t a1)
{
  v2 = sub_1ABE87BD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE872D4(uint64_t a1)
{
  v2 = sub_1ABE87BD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE87310(uint64_t a1)
{
  v2 = sub_1ABE87DCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE8734C(uint64_t a1)
{
  v2 = sub_1ABE87DCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE87388(uint64_t a1)
{
  v2 = sub_1ABE87C7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE873C4(uint64_t a1)
{
  v2 = sub_1ABE87C7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE87400(uint64_t a1)
{
  v2 = sub_1ABE87CD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE8743C(uint64_t a1)
{
  v2 = sub_1ABE87CD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE87478(uint64_t a1)
{
  v2 = sub_1ABE87D78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE874B4(uint64_t a1)
{
  v2 = sub_1ABE87D78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransportationActivityEventType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1ABAD219C(&qword_1EB4DB970, &qword_1ABF70810);
  v5 = sub_1ABA7BB64(v4);
  v91 = v6;
  v92 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  v90 = v10;
  v11 = sub_1ABAD219C(&qword_1EB4DB978, &qword_1ABF70818);
  v12 = sub_1ABA7BB64(v11);
  v88 = v13;
  v89 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7FBE0();
  v87 = v17;
  v18 = sub_1ABAD219C(&qword_1EB4DB980, &qword_1ABF70820);
  v19 = sub_1ABA7BB64(v18);
  v85 = v20;
  v86 = v19;
  v22 = *(v21 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7FBE0();
  v84 = v24;
  v25 = sub_1ABAD219C(&qword_1EB4DB988, &qword_1ABF70828);
  v26 = sub_1ABA7BB64(v25);
  v82 = v27;
  v83 = v26;
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7FBE0();
  v81 = v31;
  v32 = sub_1ABAD219C(&qword_1EB4DB990, &qword_1ABF70830);
  v33 = sub_1ABA7BB64(v32);
  v79 = v34;
  v80 = v33;
  v36 = *(v35 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7FBE0();
  v78 = v38;
  v39 = sub_1ABAD219C(&qword_1EB4DB998, &qword_1ABF70838);
  v40 = sub_1ABA7BB64(v39);
  v76 = v41;
  v77 = v40;
  v43 = *(v42 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v44);
  sub_1ABA7FBE0();
  v75 = v45;
  v74 = sub_1ABAD219C(&qword_1EB4DB9A0, &qword_1ABF70840);
  sub_1ABA7BB64(v74);
  v73 = v46;
  v48 = *(v47 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v72 - v50;
  v52 = sub_1ABAD219C(&qword_1EB4DB9A8, &qword_1ABF70848);
  sub_1ABA7BB64(v52);
  v72 = v53;
  v55 = *(v54 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v72 - v57;
  v93 = sub_1ABAD219C(&qword_1EB4DB9B0, &qword_1ABF70850);
  sub_1ABA7BB64(v93);
  v60 = v59;
  v62 = *(v61 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v72 - v64;
  v66 = *v2;
  v67 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE87B2C();
  sub_1ABF252E4();
  switch(v66)
  {
    case 1:
      v95 = 1;
      sub_1ABE87D78();
      sub_1ABA7C860();
      (*(v73 + 8))(v51, v74);
      return (*(v60 + 8))(v65, v60);
    case 2:
      v96 = 2;
      sub_1ABE87D24();
      v68 = v75;
      sub_1ABA7E0C0();
      v70 = v76;
      v69 = v77;
      goto LABEL_10;
    case 3:
      v97 = 3;
      sub_1ABE87CD0();
      v68 = v78;
      sub_1ABA7E0C0();
      v70 = v79;
      v69 = v80;
      goto LABEL_10;
    case 4:
      v98 = 4;
      sub_1ABE87C7C();
      v68 = v81;
      sub_1ABA7E0C0();
      v70 = v82;
      v69 = v83;
      goto LABEL_10;
    case 5:
      v99 = 5;
      sub_1ABE87C28();
      v68 = v84;
      sub_1ABA7E0C0();
      v70 = v85;
      v69 = v86;
      goto LABEL_10;
    case 6:
      v100 = 6;
      sub_1ABE87BD4();
      v68 = v87;
      sub_1ABA7E0C0();
      v70 = v88;
      v69 = v89;
      goto LABEL_10;
    case 7:
      v101 = 7;
      sub_1ABE87B80();
      v68 = v90;
      sub_1ABA7E0C0();
      v70 = v91;
      v69 = v92;
LABEL_10:
      (*(v70 + 8))(v68, v69);
      break;
    default:
      v94 = 0;
      sub_1ABE87DCC();
      sub_1ABA7C860();
      (*(v72 + 8))(v58, v52);
      break;
  }

  return (*(v60 + 8))(v65, v60);
}

unint64_t sub_1ABE87B2C()
{
  result = qword_1EB4DB9B8;
  if (!qword_1EB4DB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB9B8);
  }

  return result;
}

unint64_t sub_1ABE87B80()
{
  result = qword_1EB4DB9C0;
  if (!qword_1EB4DB9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB9C0);
  }

  return result;
}

unint64_t sub_1ABE87BD4()
{
  result = qword_1EB4DB9C8;
  if (!qword_1EB4DB9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB9C8);
  }

  return result;
}

unint64_t sub_1ABE87C28()
{
  result = qword_1EB4DB9D0;
  if (!qword_1EB4DB9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB9D0);
  }

  return result;
}

unint64_t sub_1ABE87C7C()
{
  result = qword_1EB4DB9D8;
  if (!qword_1EB4DB9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB9D8);
  }

  return result;
}

unint64_t sub_1ABE87CD0()
{
  result = qword_1EB4DB9E0;
  if (!qword_1EB4DB9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB9E0);
  }

  return result;
}

unint64_t sub_1ABE87D24()
{
  result = qword_1EB4DB9E8;
  if (!qword_1EB4DB9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB9E8);
  }

  return result;
}

unint64_t sub_1ABE87D78()
{
  result = qword_1EB4DB9F0;
  if (!qword_1EB4DB9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB9F0);
  }

  return result;
}

unint64_t sub_1ABE87DCC()
{
  result = qword_1EB4DB9F8;
  if (!qword_1EB4DB9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB9F8);
  }

  return result;
}

uint64_t TransportationActivityEventType.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t TransportationActivityEventType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v111 = a2;
  v3 = sub_1ABAD219C(&qword_1EB4DBA00, &qword_1ABF70858);
  v4 = sub_1ABA7BB64(v3);
  v106 = v5;
  v107 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7FBE0();
  v114 = v9;
  v10 = sub_1ABAD219C(&qword_1EB4DBA08, &qword_1ABF70860);
  v11 = sub_1ABA7BB64(v10);
  v104 = v12;
  v105 = v11;
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7FBE0();
  v110 = v16;
  v17 = sub_1ABAD219C(&qword_1EB4DBA10, &qword_1ABF70868);
  v18 = sub_1ABA7BB64(v17);
  v102 = v19;
  v103 = v18;
  v21 = *(v20 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7FBE0();
  v113 = v23;
  v24 = sub_1ABAD219C(&qword_1EB4DBA18, &qword_1ABF70870);
  v100 = sub_1ABA7BB64(v24);
  v101 = v25;
  v27 = *(v26 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7FBE0();
  v109 = v29;
  v96 = sub_1ABAD219C(&qword_1EB4DBA20, &qword_1ABF70878);
  sub_1ABA7BB64(v96);
  v99 = v30;
  v32 = *(v31 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7FBE0();
  v108 = v34;
  v35 = sub_1ABAD219C(&qword_1EB4DBA28, &qword_1ABF70880);
  v36 = sub_1ABA7BB64(v35);
  v97 = v37;
  v98 = v36;
  v39 = *(v38 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA7FBE0();
  v112 = v41;
  v95 = sub_1ABAD219C(&qword_1EB4DBA30, &qword_1ABF70888);
  sub_1ABA7BB64(v95);
  v94 = v42;
  v44 = *(v43 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v88 - v46;
  v48 = sub_1ABAD219C(&qword_1EB4DBA38, &qword_1ABF70890);
  sub_1ABA7BB64(v48);
  v93 = v49;
  v51 = *(v50 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v88 - v53;
  v55 = sub_1ABAD219C(&qword_1EB4DBA40, &unk_1ABF70898);
  sub_1ABA7BB64(v55);
  v57 = v56;
  v59 = *(v58 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v60);
  v61 = a1[3];
  v62 = a1[4];
  v115 = a1;
  sub_1ABA93E20(a1, v61);
  sub_1ABE87B2C();
  v63 = v116;
  sub_1ABF252C4();
  if (v63)
  {
    goto LABEL_8;
  }

  v91 = v54;
  v90 = v48;
  v92 = v47;
  v64 = v112;
  v116 = v57;
  v65 = sub_1ABF24EA4();
  result = sub_1ABAD4EA4(v65, 0);
  if (v68 == v69 >> 1)
  {
LABEL_7:
    v78 = sub_1ABF24B44();
    swift_allocError();
    v80 = v79;
    v81 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v80 = &type metadata for TransportationActivityEventType;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v78 - 8) + 104))(v80, *MEMORY[0x1E69E6AF8], v78);
    swift_willThrow();
    swift_unknownObjectRelease();
    v82 = sub_1ABA81D30();
    v83(v82);
LABEL_8:
    v84 = v115;
    return sub_1ABA84B54(v84);
  }

  v88 = 0;
  if (v68 < (v69 >> 1))
  {
    v89 = *(v67 + v68);
    sub_1ABAD4E90(v68 + 1);
    v71 = v70;
    v73 = v72;
    swift_unknownObjectRelease();
    if (v71 == v73 >> 1)
    {
      v74 = v111;
      switch(v89)
      {
        case 1:
          v118 = 1;
          sub_1ABE87D78();
          sub_1ABA7FA50();
          swift_unknownObjectRelease();
          v75 = sub_1ABA90498();
          v77 = &v126;
          goto LABEL_15;
        case 2:
          v119 = 2;
          sub_1ABE87D24();
          sub_1ABA7EC1C();
          swift_unknownObjectRelease();
          (*(v97 + 8))(v64, v98);
          goto LABEL_20;
        case 3:
          v120 = 3;
          sub_1ABE87CD0();
          sub_1ABA7FA50();
          swift_unknownObjectRelease();
          v75 = sub_1ABA90498();
          v85 = v96;
          break;
        case 4:
          v121 = 4;
          sub_1ABE87C7C();
          sub_1ABA7FA50();
          swift_unknownObjectRelease();
          goto LABEL_18;
        case 5:
          v122 = 5;
          sub_1ABE87C28();
          sub_1ABA7EC1C();
          swift_unknownObjectRelease();
          goto LABEL_18;
        case 6:
          v123 = 6;
          sub_1ABE87BD4();
          sub_1ABA7FA50();
          swift_unknownObjectRelease();
          goto LABEL_18;
        case 7:
          v124 = 7;
          sub_1ABE87B80();
          sub_1ABA7FA50();
          swift_unknownObjectRelease();
LABEL_18:
          v75 = sub_1ABA90498();
          break;
        default:
          v117 = 0;
          sub_1ABE87DCC();
          sub_1ABA7FA50();
          swift_unknownObjectRelease();
          v75 = sub_1ABA90498();
          v77 = &v125;
LABEL_15:
          v85 = *(v77 - 32);
          break;
      }

      v76(v75, v85);
LABEL_20:
      v86 = sub_1ABA81D30();
      v87(v86);
      v84 = v115;
      *v74 = v89;
      return sub_1ABA84B54(v84);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1ABE88770()
{
  result = qword_1EB4DBA48;
  if (!qword_1EB4DBA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA48);
  }

  return result;
}

_BYTE *sub_1ABE887D4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE88934()
{
  result = qword_1EB4DBA50;
  if (!qword_1EB4DBA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA50);
  }

  return result;
}

unint64_t sub_1ABE8898C()
{
  result = qword_1EB4DBA58;
  if (!qword_1EB4DBA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA58);
  }

  return result;
}

unint64_t sub_1ABE889E4()
{
  result = qword_1EB4DBA60;
  if (!qword_1EB4DBA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA60);
  }

  return result;
}

unint64_t sub_1ABE88A3C()
{
  result = qword_1EB4DBA68;
  if (!qword_1EB4DBA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA68);
  }

  return result;
}

unint64_t sub_1ABE88A94()
{
  result = qword_1EB4DBA70;
  if (!qword_1EB4DBA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA70);
  }

  return result;
}

unint64_t sub_1ABE88AEC()
{
  result = qword_1EB4DBA78;
  if (!qword_1EB4DBA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA78);
  }

  return result;
}

unint64_t sub_1ABE88B44()
{
  result = qword_1EB4DBA80;
  if (!qword_1EB4DBA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA80);
  }

  return result;
}

unint64_t sub_1ABE88B9C()
{
  result = qword_1EB4DBA88;
  if (!qword_1EB4DBA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA88);
  }

  return result;
}

unint64_t sub_1ABE88BF4()
{
  result = qword_1EB4DBA90;
  if (!qword_1EB4DBA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA90);
  }

  return result;
}

unint64_t sub_1ABE88C4C()
{
  result = qword_1EB4DBA98;
  if (!qword_1EB4DBA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBA98);
  }

  return result;
}

unint64_t sub_1ABE88CA4()
{
  result = qword_1EB4DBAA0;
  if (!qword_1EB4DBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBAA0);
  }

  return result;
}

unint64_t sub_1ABE88CFC()
{
  result = qword_1EB4DBAA8;
  if (!qword_1EB4DBAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBAA8);
  }

  return result;
}

unint64_t sub_1ABE88D54()
{
  result = qword_1EB4DBAB0;
  if (!qword_1EB4DBAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBAB0);
  }

  return result;
}

unint64_t sub_1ABE88DAC()
{
  result = qword_1EB4DBAB8;
  if (!qword_1EB4DBAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBAB8);
  }

  return result;
}

unint64_t sub_1ABE88E04()
{
  result = qword_1EB4DBAC0;
  if (!qword_1EB4DBAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBAC0);
  }

  return result;
}

unint64_t sub_1ABE88E5C()
{
  result = qword_1EB4DBAC8;
  if (!qword_1EB4DBAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBAC8);
  }

  return result;
}

unint64_t sub_1ABE88EB4()
{
  result = qword_1EB4DBAD0;
  if (!qword_1EB4DBAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBAD0);
  }

  return result;
}

unint64_t sub_1ABE88F0C()
{
  result = qword_1EB4DBAD8;
  if (!qword_1EB4DBAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBAD8);
  }

  return result;
}

unint64_t sub_1ABE88F64()
{
  result = qword_1EB4DBAE0;
  if (!qword_1EB4DBAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBAE0);
  }

  return result;
}

uint64_t TrialAssetManager.__allocating_init(refreshPolicy:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() clientWithIdentifier_];
  sub_1ABA8FE90();
  swift_allocObject();
  return sub_1ABE8D260(v2, v1);
}

uint64_t TrialAssetManager.asset(for:in:assetType:downloadOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5, _WORD *a6)
{
  *(v7 + 32) = a3;
  *(v7 + 40) = v6;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v11 = type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo(0);
  sub_1ABA7AB80(v11);
  v13 = *(v12 + 64);
  *(v7 + 48) = sub_1ABA96BDC();
  *(v7 + 56) = swift_task_alloc();
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 109) = *a4;
  *(v7 + 110) = *a5;
  *(v7 + 104) = *a6;
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABE892CC()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_1ABA7BBC0();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABE893C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = v8;
  v9 = *(v8 + 96);
  v10 = *(v8 + 56);
  v11 = *(v8 + 40);
  TrialAssetManager.locallyAvailableAsset(for:in:assetType:)(*(v8 + 24), *(v8 + 32), &v41, &v42, a5, a6, a7, a8, v39, *v40, *&v40[4], *(v8 + 109), *(v8 + 110), v43, v44, v45, v46, v47, v48, v49, v8, v51, v52);
  if (v9)
  {
    v12 = *(v8 + 72);
    sub_1ABA8FC98();
LABEL_5:
    sub_1ABE8F604(v13, v14);
    v29 = *(v8 + 64);
    v28 = *(v8 + 72);
    v31 = *(v8 + 48);
    v30 = *(v8 + 56);

    sub_1ABA7BBE0();
    goto LABEL_6;
  }

  v15 = *(v8 + 80);
  v17 = *(v8 + 48);
  v16 = *(v8 + 56);
  sub_1ABA7E0E4();
  sub_1ABE8F5A8(v18, v17, v19);
  v20 = sub_1ABA7E1E0(v17, 1, v15);
  v21 = *(v8 + 72);
  v22 = *(v8 + 48);
  v23 = *(v8 + 56);
  if (v20 == 1)
  {
    v24 = *(v8 + 109);
    v26 = *(v8 + 24);
    v25 = *(v8 + 32);
    sub_1ABE8F604(*(v8 + 48), type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo);
    sub_1ABE8E6F4();
    sub_1ABA7D104();
    swift_allocError();
    *v27 = v26;
    *(v27 + 8) = v25;
    *(v27 + 16) = v24 | 0x80;
    swift_willThrow();

    sub_1ABE8F604(v23, type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo);
    v13 = v21;
    v14 = type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo;
    goto LABEL_5;
  }

  v34 = *(v8 + 16);
  sub_1ABE8F604(*(v8 + 56), type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo);
  sub_1ABE8F604(v21, type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo);
  sub_1ABE8E748(v22, v34);
  v36 = *(v8 + 64);
  v35 = *(v8 + 72);
  v38 = *(v8 + 48);
  v37 = *(v8 + 56);

  sub_1ABA7BBE0();
LABEL_6:

  return v32();
}

uint64_t sub_1ABE895B0()
{
  v1 = v0[9];
  sub_1ABA8FC98();
  sub_1ABE8F604(v2, v3);
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];

  sub_1ABA7BBE0();

  return v9();
}

void TrialAssetManager.locallyAvailableAsset(for:in:assetType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v99 = v35;
  v36 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  sub_1ABA7AB80(v36);
  v38 = *(v37 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v39);
  v96 = &v89 - v40;
  v41 = sub_1ABF21C24();
  v42 = sub_1ABA7BB64(v41);
  v92 = v43;
  v93 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v47 = &v89 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1ABF21CF4();
  v49 = sub_1ABA7BB64(v48);
  v94 = v50;
  v95 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v54 = &v89 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *v30;
  v56 = *v28;
  LOBYTE(v100[0]) = *v30;
  *&v97 = v23;
  v57 = sub_1ABE8D664(v34, v32, v100);
  if (!v57)
  {
    sub_1ABE8E6F4();
    sub_1ABA7D104();
    swift_allocError();
    *v67 = v34;
    *(v67 + 8) = v32;
    *(v67 + 16) = v55;
    swift_willThrow();

LABEL_24:
    sub_1ABA7BC90();
    return;
  }

  v58 = v57;
  v91 = v24;
  if (v56)
  {
    v59 = [v57 directoryValue];
    if (v59)
    {
      v90 = sub_1ABE8F458(v59);
      *&v98 = v60;
      v61 = [v58 directoryValue];
      if (v61)
      {
        v62 = v61;
        v63 = [v61 requiresDownload];

        if (!v63)
        {
          goto LABEL_6;
        }

LABEL_14:

        v73 = type metadata accessor for TrialAssetManager.Asset(0);
        sub_1ABA7B9B4(v99, 1, 1, v73);
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v68 = [v57 fileValue];
  if (!v68)
  {
    goto LABEL_26;
  }

  v90 = sub_1ABE8F458(v68);
  *&v98 = v69;
  v70 = [v58 fileValue];
  if (v70)
  {
    v71 = v70;
    v72 = [v70 requiresDownload];

    if ((v72 & 1) == 0)
    {
LABEL_6:
      if (v98)
      {
        v64 = [v58 metadata];
        if (!v64 || (v65 = v64, *&v100[0] = 0, sub_1ABF23964(), v65, (v66 = *&v100[0]) == 0))
        {
          if (qword_1ED871B38 != -1)
          {
            sub_1ABA7DE3C();
            swift_once();
          }

          v74 = sub_1ABF237F4();
          sub_1ABA7AA24(v74, qword_1ED871B40);
          v75 = sub_1ABF237D4();
          v76 = sub_1ABF24664();
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            *v77 = 0;
            _os_log_impl(&dword_1ABA78000, v75, v76, "level.metadata is not [String: String]", v77, 2u);
            MEMORY[0x1AC5AB8B0](v77, -1, -1);
          }

          v66 = sub_1ABF239C4();
        }

        v78 = MEMORY[0x1E6968F58];
        if (!v56)
        {
          v78 = MEMORY[0x1E6968F68];
        }

        (*(v92 + 104))(v47, *v78, v93);
        v79 = v95;
        v80 = sub_1ABAA2078();
        sub_1ABA7B9B4(v80, v81, 1, v79);
        sub_1ABF21CD4();
        a13 = v55;
        TrialAssetManager.experimentIdentifiers(for:)(&a13, v100);

        v82 = v101;
        v83 = *(v94 + 32);
        v97 = v100[1];
        v98 = v100[0];
        v84 = v99;
        v83(v99, v54, v79);
        v85 = type metadata accessor for TrialAssetManager.Asset(0);
        *(v84 + *(v85 + 20)) = v66;
        v86 = v84 + *(v85 + 24);
        v87 = v97;
        *v86 = v98;
        *(v86 + 16) = v87;
        *(v86 + 32) = v82;
        sub_1ABA7B9B4(v84, 0, 1, v85);
      }

      else
      {
        sub_1ABE8E6F4();
        sub_1ABA7D104();
        swift_allocError();
        *v88 = v34;
        *(v88 + 8) = v32;
        *(v88 + 16) = v55 | 0x40;
        swift_willThrow();
      }

      goto LABEL_24;
    }

    goto LABEL_14;
  }

LABEL_28:
  __break(1u);
}

uint64_t TrialAssetManager.assets(for:in:downloadOptions:)(uint64_t a1, _BYTE *a2, _WORD *a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v7 = sub_1ABAD219C(&qword_1EB4DBB00, &qword_1ABF34A00);
  *(v4 + 32) = v7;
  v8 = *(v7 - 8);
  *(v4 + 40) = v8;
  v9 = *(v8 + 64);
  *(v4 + 48) = sub_1ABA96BDC();
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v10 = type metadata accessor for TrialAssetManager.Asset(0);
  *(v4 + 112) = v10;
  sub_1ABA7AB80(v10);
  v12 = *(v11 + 64);
  *(v4 + 120) = sub_1ABA96BDC();
  *(v4 + 128) = swift_task_alloc();
  v13 = type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo(0);
  sub_1ABA7AB80(v13);
  v15 = *(v14 + 64);
  *(v4 + 136) = sub_1ABA96BDC();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 221) = *a2;
  *(v4 + 216) = *a3;
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

void sub_1ABE89D00()
{
  v127 = v0;
  v1 = v0;
  v2 = v0[4];
  v116 = v0[5];
  v3 = v0[2];
  v124 = sub_1ABF239C4();
  v113 = sub_1ABF239C4();
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;
  v120 = v3;

  v9 = 0;
  v122 = v0;
  v118 = v8;
  v115 = v4;
  while (1)
  {
    v1[21] = v113;
    v1[22] = v124;
    v1[23] = v124;
    if (!v7)
    {
      break;
    }

LABEL_9:
    v11 = v1[20];
    v12 = v1[3];
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = v13 | (v9 << 6);
    v15 = (*(v120 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v120 + 56) + v14);
    HIBYTE(v125) = *(v1 + 221);
    LOBYTE(v126) = v18;

    TrialAssetManager.locallyAvailableAsset(for:in:assetType:)(v16, v17, &v125 + 7, &v126, v19, v20, v21, v22, v110, v111, SWORD2(v111), SBYTE6(v111), HIBYTE(v111), v112, v113, v115, v116, v118, v120, v122, v124, v125, v126);
    v111 = v17;
    v112 = v16;
    v24 = v1[19];
    v23 = v1[20];
    v25 = v1[14];
    sub_1ABA7E0E4();
    sub_1ABE8F5A8(v26, v24, v27);
    v28 = sub_1ABAA2078();
    if (sub_1ABA7E1E0(v28, v29, v25) == 1)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v126 = v114;
      v73 = sub_1ABA94FC8(v16, v17);
      if (__OFADD__(*(v114 + 16), (v74 & 1) == 0))
      {
        goto LABEL_42;
      }

      v75 = v73;
      v76 = v74;
      sub_1ABAD219C(&qword_1EB4DBB10, &qword_1ABF710C0);
      if (sub_1ABF24C64())
      {
        v77 = sub_1ABA94FC8(v112, v17);
        if ((v76 & 1) != (v78 & 1))
        {
LABEL_36:
          sub_1ABAB5E0C();

          sub_1ABF25104();
          return;
        }

        v75 = v77;
        v8 = v118;
      }

      else
      {
        v8 = v118;
      }

      v1 = v122;
      v69 = v122[20];
      if (v76)
      {

        v113 = v126;
        *(v126[7] + v75) = v18;
        goto LABEL_19;
      }

      v79 = v126;
      sub_1ABA7E6B4(&v126[v75 >> 6]);
      v80 = (v79[6] + 16 * v75);
      *v80 = v112;
      v80[1] = v81;
      *(v79[7] + v75) = v18;
      sub_1ABA8FC98();
      sub_1ABE8F604(v69, v82);
      v83 = v79[2];
      v38 = __OFADD__(v83, 1);
      v84 = v83 + 1;
      if (v38)
      {
        goto LABEL_43;
      }

      v113 = v79;
      v79[2] = v84;
    }

    else
    {
      v31 = v1[12];
      v30 = v1[13];
      v32 = v1[4];
      sub_1ABE8E748(v1[19], v1[16]);
      v33 = sub_1ABA81D44();
      sub_1ABE8F5A8(v33, v30, v34);
      swift_storeEnumTagMultiPayload();
      sub_1ABE8F4C8(v30, v31);
      swift_isUniquelyReferenced_nonNull_native();
      v126 = v124;
      sub_1ABA94FC8(v112, v111);
      v35 = v124[2];
      sub_1ABAA5B0C();
      if (v38)
      {
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        return;
      }

      v39 = v36;
      v40 = v37;
      sub_1ABAD219C(&qword_1EB4DBB08, &qword_1ABF710B8);
      v41 = sub_1ABF24C64();
      v124 = v126;
      if (v41)
      {
        v49 = sub_1ABA94FC8(v112, v111);
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_36;
        }

        v39 = v49;
      }

      v1 = v122;
      v8 = v118;
      if (v40)
      {
        v50 = v124[7];
        sub_1ABA976CC(v122[12], v42, v43, v44, v45, v46, v47, v48, v110, v111, v112, v114, v115, v116);
        sub_1ABE8F538(v53, v51 + v52 * v39);
      }

      else
      {
        sub_1ABA7E6B4(&v124[v39 >> 6]);
        v54 = (v124[6] + 16 * v39);
        *v54 = v112;
        v54[1] = v111;
        v55 = v124[7];
        sub_1ABA976CC(v56, v57, v58, v59, v60, v61, v62, v63, v110, v111, v112, v114, v115, v116);
        sub_1ABE8F4C8(v66, v64 + v65 * v39);
        v67 = v124[2];
        v38 = __OFADD__(v67, 1);
        v68 = v67 + 1;
        if (v38)
        {
          goto LABEL_41;
        }

        v124[2] = v68;
      }

      v69 = v122[20];
      v70 = v122[16];
      sub_1ABA904A4();
      sub_1ABE8F604(v71, v72);
LABEL_19:
      sub_1ABE8F604(v69, type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      __break(1u);
      __break(1u);
      goto LABEL_40;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  v85 = v1[2];

  if (!*(v113 + 16))
  {

    v97 = v1[19];
    v96 = v1[20];
    v99 = v1[17];
    v98 = v1[18];
    v101 = v1[15];
    v100 = v1[16];
    v103 = v1[12];
    v102 = v1[13];
    v104 = v1;
    v105 = v1[11];
    v117 = v104[10];
    v119 = v104[9];
    v121 = v104[8];
    v123 = v104[7];
    v106 = v104[6];

    sub_1ABA82A20();
    sub_1ABAB5E0C();

    __asm { BRAA            X2, X16 }
  }

  v86 = *(v1 + 108);
  v87 = *(v1 + 221);

  v89 = sub_1ABE8AFAC(v88);
  *(v1 + 220) = v87;
  v1[24] = v89;
  *(v1 + 109) = v86;
  v90 = swift_task_alloc();
  v1[25] = v90;
  *v90 = v1;
  v90[1] = sub_1ABE8A460;
  v91 = v1[3];
  sub_1ABAA2E64();
  sub_1ABAB5E0C();

  TrialAssetManager.downloadOnDemandAssets(for:in:downloadOptions:)(v92, v93, v94);
}

uint64_t sub_1ABE8A460()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D4E0();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  v3[26] = v0;

  if (v0)
  {
    v9 = v3[23];
    v10 = v3[24];
    v11 = v3[21];
  }

  else
  {
    v12 = v3[24];
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

void sub_1ABE8A580()
{
  v132 = v0;
  v1 = 0;
  v2 = *(v0 + 176);
  v3 = *(v0 + 168);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v120 = v5;
  v123 = *(v0 + 168);
  v7 = -1;
  v8 = -1 << *(v123 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  LODWORD(v114) = *(v0 + 221) | 0xFFFFFF80;
  v11 = *(v0 + 208);
  v12 = *(v0 + 184);
  v117 = v10;
  if ((v7 & v4) != 0)
  {
LABEL_8:
    while (1)
    {
      v14 = *(v0 + 144);
      v15 = *(v0 + 24);
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = v16 | (v1 << 6);
      v18 = (*(v123 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      LOBYTE(v17) = *(*(v123 + 56) + v17);
      HIBYTE(v130) = *(v0 + 221);
      LOBYTE(v131[0]) = v17;

      TrialAssetManager.locallyAvailableAsset(for:in:assetType:)(v19, v20, &v130 + 7, v131, v21, v22, v23, v24, v112, v114, SWORD2(v114), SBYTE6(v114), HIBYTE(v114), v117, v120, v123, v19, v130, v131[0], v131[1], v131[2], v131[3], v131[4]);
      if (v11)
      {
        break;
      }

      v27 = *(v0 + 136);
      v26 = *(v0 + 144);
      v28 = *(v0 + 112);
      sub_1ABA7E0E4();
      sub_1ABE8F5A8(v29, v27, v30);
      v31 = sub_1ABAA2078();
      if (sub_1ABA7E1E0(v31, v32, v28) == 1)
      {
        v33 = *(v0 + 144);
        sub_1ABE8F604(*(v0 + 136), type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo);
        sub_1ABE8E6F4();
        sub_1ABA7D104();
        v25 = swift_allocError();
        *v34 = v126;
        *(v34 + 8) = v20;
        *(v34 + 16) = v115;
        swift_willThrow();

        sub_1ABE8F604(v33, type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo);
        goto LABEL_12;
      }

      v64 = *(v0 + 80);
      v63 = *(v0 + 88);
      v65 = *(v0 + 32);
      sub_1ABE8E748(*(v0 + 136), *(v0 + 120));
      v66 = sub_1ABA81D44();
      sub_1ABE8F5A8(v66, v63, v67);
      swift_storeEnumTagMultiPayload();
      sub_1ABE8F4C8(v63, v64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v131[0] = v2;
      sub_1ABAA3AD0(isUniquelyReferenced_nonNull_native, v69, v70, v71, v72, v73, v74, v75, v113, v115, v118, v121, v124, v126);
      v76 = v2[2];
      sub_1ABAA5B0C();
      if (v61)
      {
        goto LABEL_40;
      }

      v79 = v77;
      v80 = v78;
      sub_1ABAD219C(&qword_1EB4DBB08, &qword_1ABF710B8);
      v81 = sub_1ABF24C64();
      v2 = v131[0];
      if (v81)
      {
        v89 = sub_1ABAA3AD0(v81, v82, v83, v84, v85, v86, v87, v88, v112, v114, v117, v120, v123, v128);
        if ((v80 & 1) != (v90 & 1))
        {
LABEL_34:

          sub_1ABF25104();
          return;
        }

        v79 = v89;
      }

      v91 = *(v0 + 80);
      v92 = *(v0 + 40);
      if (v80)
      {
        sub_1ABE8F538(v91, v2[7] + *(v92 + 72) * v79);
      }

      else
      {
        v2[(v79 >> 6) + 8] |= 1 << v79;
        v93 = (v2[6] + 16 * v79);
        *v93 = v128;
        v93[1] = v20;
        sub_1ABE8F4C8(v91, v2[7] + *(v92 + 72) * v79);
        v94 = v2[2];
        v61 = __OFADD__(v94, 1);
        v95 = v94 + 1;
        if (v61)
        {
          goto LABEL_41;
        }

        v2[2] = v95;
      }

      v96 = *(v0 + 144);
      v97 = *(v0 + 120);
      sub_1ABA904A4();
      sub_1ABE8F604(v98, v99);
      sub_1ABA8FC98();
      sub_1ABE8F604(v96, v100);
LABEL_29:
      v11 = 0;
      v12 = v2;
      v10 = v117;
      v5 = v120;
      if (!v9)
      {
        goto LABEL_4;
      }
    }

    v25 = v11;
LABEL_12:
    v35 = *(v0 + 48);
    v36 = *(v0 + 56);
    v37 = *(v0 + 32);
    *v36 = v25;
    swift_storeEnumTagMultiPayload();
    sub_1ABE8F4C8(v36, v35);
    v38 = v25;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v131[0] = v2;
    v47 = sub_1ABAA3AD0(v39, v40, v41, v42, v43, v44, v45, v46, v113, v115, v118, v121, v124, v126);
    if (__OFADD__(v2[2], (v48 & 1) == 0))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return;
    }

    v49 = v47;
    v50 = v48;
    sub_1ABAD219C(&qword_1EB4DBB08, &qword_1ABF710B8);
    if (sub_1ABF24C64())
    {
      v51 = sub_1ABA94FC8(v127, v20);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_34;
      }

      v49 = v51;
    }

    v54 = *(v0 + 40);
    v53 = *(v0 + 48);
    if (v50)
    {

      v2 = v131[0];
      v55 = sub_1ABA95998();
      sub_1ABE8F538(v55, v56);
    }

    else
    {
      v2 = v131[0];
      sub_1ABA7E6B4(v131[0] + 8 * (v49 >> 6));
      v57 = (v2[6] + 16 * v49);
      *v57 = v127;
      v57[1] = v20;
      v58 = sub_1ABA95998();
      sub_1ABE8F4C8(v58, v59);

      v60 = v2[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_39;
      }

      v2[2] = v62;
    }

    goto LABEL_29;
  }

  while (1)
  {
LABEL_4:
    v13 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v13);
    ++v1;
    if (v9)
    {
      v1 = v13;
      goto LABEL_8;
    }
  }

  v101 = *(v0 + 168);

  v103 = *(v0 + 152);
  v102 = *(v0 + 160);
  v105 = *(v0 + 136);
  v104 = *(v0 + 144);
  v107 = *(v0 + 120);
  v106 = *(v0 + 128);
  v109 = *(v0 + 96);
  v108 = *(v0 + 104);
  v110 = *(v0 + 88);
  v116 = *(v0 + 80);
  v119 = *(v0 + 72);
  v122 = *(v0 + 64);
  v125 = *(v0 + 56);
  v129 = *(v0 + 48);

  sub_1ABA82A20();

  v111(v12);
}

uint64_t sub_1ABE8AAC8()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[12];
  v7 = v0[13];
  v10 = v0[10];
  v9 = v0[11];
  v14 = v0[9];
  v15 = v0[8];
  v16 = v0[7];
  v17 = v0[6];

  sub_1ABA7BBE0();
  v12 = v0[26];

  return v11();
}

IntelligencePlatform::TrialNamespace_optional __swiftcall TrialNamespace.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1ABE8AC38(uint64_t a1)
{
  sub_1ABA8E0FC(a1);
  v3 = sub_1ABB668FC();
  v8 = MEMORY[0x1AC5A9A10](v2, &type metadata for EntityIdentifier, v3);
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_1ABB180F8(&v7, *(v1 + v5));
      v5 += 8;
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {
    sub_1ABA7D1BC();
  }

  return v2;
}

void sub_1ABE8ACC8(uint64_t a1)
{
  sub_1ABA8E0FC(a1);
  v6 = sub_1ABAE4254();
  MEMORY[0x1AC5A9A10](v2, &type metadata for EntityPredicate, v6);
  sub_1ABAA2740();
  while (1)
  {
    if (v4 == v3)
    {

      return;
    }

    sub_1ABAA2428();
    if (v7)
    {
      break;
    }

    v8 = *(v1 + v5 + 16);
    v10[0] = *(v1 + v5);
    v10[1] = v8;
    v11 = *(v1 + v5 + 32);
    ++v3;
    sub_1ABAFF1DC(v10, &v9);
    sub_1ABB181BC(&v9, v10);

    v5 += 40;
  }

  __break(1u);
}

void sub_1ABE8AD8C(uint64_t a1)
{
  sub_1ABA8E0FC(a1);
  v3 = sub_1ABE90534();
  v4 = 0;
  v10 = MEMORY[0x1AC5A9A10](v2, &type metadata for KnosisFact, v3);
  v5 = *(v1 + 16);
  for (i = 32; ; i += 144)
  {
    if (v5 == v4)
    {

      return;
    }

    sub_1ABAA2428();
    if (v7)
    {
      break;
    }

    memcpy(__dst, (v1 + i), sizeof(__dst));
    ++v4;
    sub_1ABAE42A8(__dst, v9);
    sub_1ABB182BC();
    memcpy(v9, __src, sizeof(v9));
    sub_1ABAE4304(v9);
  }

  __break(1u);
}

uint64_t sub_1ABE8AE5C(uint64_t a1)
{
  result = MEMORY[0x1AC5A9A10](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1ABB1840C(v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE8AFAC(uint64_t a1)
{
  result = MEMORY[0x1AC5A9A10](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1ABB1840C(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1ABE8B0FC(uint64_t a1)
{
  sub_1ABA8E0FC(a1);
  v6 = sub_1ABBD8A8C();
  MEMORY[0x1AC5A9A10](v2, &type metadata for EntityClass, v6);
  sub_1ABAA2740();
  while (1)
  {
    if (v4 == v3)
    {

      return;
    }

    sub_1ABAA2428();
    if (v7)
    {
      break;
    }

    v8 = *(v1 + v5 + 16);
    v10[0] = *(v1 + v5);
    v10[1] = v8;
    v11 = *(v1 + v5 + 32);
    ++v3;
    sub_1ABAFF06C(v10, &v9);
    sub_1ABB18C34(&v9, v10);

    v5 += 40;
  }

  __break(1u);
}

void sub_1ABE8B1C0(uint64_t a1)
{
  sub_1ABA8E0FC(a1);
  v3 = sub_1ABB5D228();
  v4 = 0;
  v10 = MEMORY[0x1AC5A9A10](v2, &type metadata for ViewService.DefaultResolverInteractionsView.CandidateID, v3);
  v5 = *(v1 + 16);
  for (i = 32; ; i += 72)
  {
    if (v5 == v4)
    {

      return;
    }

    sub_1ABAA2428();
    if (v7)
    {
      break;
    }

    memcpy(__dst, (v1 + i), 0x41uLL);
    ++v4;
    sub_1ABB24348(__dst, v9);
    sub_1ABB19000(v8, __dst);
    memcpy(v9, v8, 0x41uLL);
    sub_1ABB243A4(v9);
  }

  __break(1u);
}

uint64_t sub_1ABE8B290(uint64_t a1)
{
  v2 = sub_1ABB5D228();
  result = MEMORY[0x1AC5A9A10](0, &type metadata for ViewService.DefaultResolverInteractionsView.CandidateID, v2);
  v4 = 0;
  v12 = result;
  while (1)
  {
    v8 = *(a1 + 16);
    if (v4 == v8)
    {

      return v12;
    }

    if (v4 >= v8)
    {
      break;
    }

    v9 = *(a1 + 32 + 8 * v4);

    ++v4;
    if (v9)
    {
      v5 = 0;
      for (i = (v9 + 32); ; i += 72)
      {
        v7 = *(v9 + 16);
        if (v5 == v7)
        {
          break;
        }

        if (v5 >= v7)
        {
          __break(1u);
          goto LABEL_12;
        }

        memcpy(__dst, i, 0x41uLL);
        ++v5;
        sub_1ABB24348(__dst, v11);
        sub_1ABB19000(v10, __dst);
        memcpy(v11, v10, 0x41uLL);
        result = sub_1ABB243A4(v11);
      }
    }
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1ABE8B3B8(uint64_t a1)
{
  result = MEMORY[0x1AC5A9A10](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 56) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1ABB1840C(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE8B508(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  v13 = MEMORY[0x1AC5A9A10](v7, a3, v8);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 32;
    do
    {
      a4(&v12, *(a1 + v10++));
      --v9;
    }

    while (v9);

    return v13;
  }

  else
  {
    sub_1ABA7D1BC();
  }

  return a3;
}

uint64_t sub_1ABE8B5B0(uint64_t a1)
{
  sub_1ABA8E0FC(a1);
  v3 = sub_1ABD7B978();
  result = MEMORY[0x1AC5A9A10](v2, &type metadata for IntentArg, v3);
  v5 = 0;
  v12 = result;
  v6 = *(v1 + 16);
  for (i = (v1 + 56); ; i += 4)
  {
    if (v6 == v5)
    {

      return v12;
    }

    if (v5 >= *(v1 + 16))
    {
      break;
    }

    ++v5;
    v9 = *(i - 1);
    v8 = *i;
    v11 = *(i - 3);
    v10 = *(i - 2);

    sub_1ABB1988C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE8B698(uint64_t a1)
{
  v7 = MEMORY[0x1AC5A9A10](*(a1 + 16), MEMORY[0x1E69E7360], MEMORY[0x1E69E7370]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      v5 = *(a1 + v4);
      sub_1ABB19AF4();
      v4 += 8;
      --v3;
    }

    while (v3);

    return v7;
  }

  else
  {
    sub_1ABA7D1BC();
  }

  return v1;
}

id sub_1ABE8B74C()
{
  v1 = sub_1ABF23BD4();
  v2 = sub_1ABF23BD4();
  v3 = [v0 levelForFactor:v1 withNamespaceName:v2];

  return v3;
}

uint64_t sub_1ABE8B7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = *v7;
  v8[8] = a7;
  v8[9] = v9;
  return MEMORY[0x1EEE6DFA0](sub_1ABE8B7F4, 0, 0);
}

void sub_1ABE8B7F4()
{
  sub_1ABA7BBF8();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1ABE8B8B0;
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];
  v10 = v0[8];

  JUMPOUT(0x1ABE8B9A4);
}

uint64_t sub_1ABE8B8B0()
{
  sub_1ABA7BBF8();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_1ABA7BBC0();
  *v7 = v6;

  sub_1ABA82A20();
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t sub_1ABE8B9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12 = v9;
  v13 = v9 + 10;
  v14 = sub_1ABF240C4();
  v12[18] = v14;
  v15 = sub_1ABF23BD4();
  v12[19] = v15;
  if (a8)
  {
    v12[14] = a8;
    v12[15] = v21;
    v12[10] = MEMORY[0x1E69E9820];
    v12[11] = 1107296256;
    v12[12] = sub_1ABE8BD20;
    v12[13] = &unk_1F20A04A8;
    a8 = _Block_copy(v13);
    v16 = v12[15];
  }

  v12[20] = a8;
  v12[2] = v12;
  v12[7] = v12 + 21;
  v12[3] = sub_1ABE8BB9C;
  v17 = swift_continuation_init();
  v12[17] = sub_1ABAD219C(&unk_1EB4DBBC8, &qword_1ABF71B88);
  v12[10] = MEMORY[0x1E69E9820];
  v12[11] = 1107296256;
  v12[12] = sub_1ABE8BD74;
  v12[13] = &unk_1F20A0480;
  v12[14] = v17;
  [v8 downloadLevelsForFactors:v14 withNamespace:v15 queue:a6 options:a7 progress:a8 completion:v13];

  return MEMORY[0x1EEE6DEC8](v12 + 2);
}

uint64_t sub_1ABE8BB9C()
{
  v1 = *v0;
  sub_1ABA7D4E0();
  *v4 = v2;
  v5 = *v0;
  *v4 = *v0;
  v6 = *(v3 + 160);
  v7 = *(v3 + 152);
  v8 = *(v3 + 144);
  if (*(v3 + 48))
  {
    v9 = *(v3 + 48);
    swift_willThrow();
    _Block_release(v6);

    v10 = *(v5 + 8);
    v11 = 0;
  }

  else
  {
    v12 = *(v2 + 168);
    _Block_release(*(v3 + 160));

    v10 = *(v5 + 8);
    v11 = v12;
  }

  return v10(v11);
}

uint64_t sub_1ABE8BD20(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1ABE8BD74(uint64_t a1, char a2, void *a3)
{
  v5 = sub_1ABA93E20((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_1ABE8BDF8(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_1ABE8BE64(v9, a2);
  }
}

uint64_t sub_1ABE8BDF8(uint64_t a1, uint64_t a2)
{
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

id sub_1ABE8BEA8()
{
  v1 = sub_1ABF23BD4();
  v2 = [v0 experimentIdentifiersWithNamespaceName_];

  return v2;
}

id sub_1ABE8BF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1ABF23BD4();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1ABE8C034;
  v13[3] = &unk_1F20748C8;
  v10 = _Block_copy(v13);

  v11 = [v5 addUpdateHandlerForNamespaceName:v9 queue:a3 usingBlock:v10];

  _Block_release(v10);

  return v11;
}

uint64_t sub_1ABE8C034(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

unint64_t TrialNamespace.rawValue.getter()
{
  result = 0x4E4F435F4452454ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      sub_1ABAA1DC0();
      result = v4 + 9;
      break;
    case 3:
      sub_1ABAA1DC0();
      result = v3 + 1;
      break;
    case 4:
      sub_1ABAA1DC0();
      result = v6 - 3;
      break;
    case 5:
      sub_1ABAA1DC0();
      result = v7 + 15;
      break;
    case 6:
      sub_1ABAA1DC0();
      result = v5 - 2;
      break;
    case 7:
      result = 0xD00000000000001FLL;
      break;
    case 8:
      return result;
    default:
      sub_1ABAA1DC0();
      result = v2 + 3;
      break;
  }

  return result;
}

unint64_t sub_1ABE8C250@<X0>(unint64_t *a1@<X8>)
{
  result = TrialNamespace.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TrialAssetManager.RefreshPolicy.AutoRefreshForAllRequestedNamespacesInfo.AutoRefreshContent.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t TrialAssetManager.RefreshPolicy.AutoRefreshForAllRequestedNamespacesInfo.AutoRefreshContent.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_1ABA7D544();

  return swift_deallocClassInstance();
}

uint64_t TrialAssetManager.RefreshPolicy.AutoRefreshForAllRequestedNamespacesInfo.updateHandlers.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(*(v1 + 16) + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t sub_1ABE8C3CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABE8C3F8();
}

uint64_t sub_1ABE8C3F8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1ABE90344(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1ABE8C458(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  *(*a1 + 16) = a2;
}

uint64_t TrialAssetManager.RefreshPolicy.AutoRefreshForAllRequestedNamespacesInfo.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t TrialAssetManager.RefreshPolicy.AutoRefreshForAllRequestedNamespacesInfo.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_1ABA7D544();

  return swift_deallocClassInstance();
}

id sub_1ABE8C4F4()
{
  v1 = v0;
  v2 = sub_1ABF246D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1ABF246C4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1ABF238C4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = *(v0 + 56);
  if (v11)
  {
    v12 = *(v0 + 56);
  }

  else
  {
    v13 = sub_1ABAFF390(0, &qword_1EB4CF7B0, 0x1E69E9610);
    v18[1] = "v20@?0B8@NSError12";
    v18[2] = v13;
    sub_1ABF23894();
    v18[3] = MEMORY[0x1E69E7CC0];
    v18[0] = sub_1ABE90488();
    sub_1ABAD219C(&qword_1EB4D5BB8, &unk_1ABF4D7C0);
    sub_1ABAB47C4(&qword_1EB4CE700, &qword_1EB4D5BB8, &unk_1ABF4D7C0);
    sub_1ABF24964();
    (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v2);
    v14 = sub_1ABF246F4();
    v15 = *(v0 + 56);
    *(v1 + 56) = v14;
    v12 = v14;

    v11 = 0;
  }

  v16 = v11;
  return v12;
}

id sub_1ABE8C764()
{
  v1 = v0;
  v2 = sub_1ABF246D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1ABF246C4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1ABF238C4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = *(v0 + 64);
  if (v11)
  {
    v12 = *(v0 + 64);
  }

  else
  {
    v13 = sub_1ABAFF390(0, &qword_1EB4CF7B0, 0x1E69E9610);
    v18[1] = "setManager.downloadLevelsQueue";
    v18[2] = v13;
    sub_1ABF23894();
    v18[3] = MEMORY[0x1E69E7CC0];
    v18[0] = sub_1ABE90488();
    sub_1ABAD219C(&qword_1EB4D5BB8, &unk_1ABF4D7C0);
    sub_1ABAB47C4(&qword_1EB4CE700, &qword_1EB4D5BB8, &unk_1ABF4D7C0);
    sub_1ABF24964();
    (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v2);
    v14 = sub_1ABF246F4();
    v15 = *(v0 + 64);
    *(v1 + 64) = v14;
    v12 = v14;

    v11 = 0;
  }

  v16 = v11;
  return v12;
}

uint64_t sub_1ABE8C9D4()
{
  sub_1ABA84B54((v0 + 16));

  return v0;
}

uint64_t sub_1ABE8CA04()
{
  sub_1ABE8C9D4();

  return swift_deallocClassInstance();
}

void sub_1ABE8CA34(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 24));
  sub_1ABA93E64(*(v3 + 16) + 16, a1);

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t TrialAssetManager.ExperimentIdentifiers.experimentId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1ABA7D000();
}

uint64_t TrialAssetManager.ExperimentIdentifiers.treatmentId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_1ABA7D000();
}

void sub_1ABE8CAE4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 experimentId];
    v5 = sub_1ABF23C04();
    v7 = v6;

    v8 = [v3 deploymentId];
    v9 = [v3 treatmentId];
    v10 = sub_1ABF23C04();
    v12 = v11;

    v13 = v8;
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v13 = 0;
    v10 = 0;
    v12 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v13;
  a2[3] = v10;
  a2[4] = v12;
}

uint64_t static TrialAssetManager.ExperimentIdentifiers.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v5)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_1ABF25054();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v5)
    {
      return result;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  sub_1ABA7D000();

  return sub_1ABF25054();
}

uint64_t sub_1ABE8CC90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D697265707865 && a2 == 0xEC0000006449746ELL;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D796F6C706564 && a2 == 0xEC0000006449746ELL;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E656D7461657274 && a2 == 0xEB00000000644974)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABE8CDB0(char a1)
{
  if (!a1)
  {
    return 0x656D697265707865;
  }

  if (a1 == 1)
  {
    return 0x656D796F6C706564;
  }

  return 0x6E656D7461657274;
}

uint64_t sub_1ABE8CE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE8CC90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE8CE44(uint64_t a1)
{
  v2 = sub_1ABE8F65C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE8CE80(uint64_t a1)
{
  v2 = sub_1ABE8F65C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TrialAssetManager.ExperimentIdentifiers.encode(to:)()
{
  sub_1ABA7BCA8();
  v18 = v1;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DBB18, &qword_1ABF710D0);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  v13 = *v0;
  v12 = v0[1];
  v19 = *(v0 + 4);
  v14 = v0[3];
  v17[1] = v0[4];
  v17[2] = v14;
  v15 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABE8F65C();
  sub_1ABF252E4();
  v16 = v18;
  sub_1ABF24F34();
  if (!v16)
  {
    sub_1ABA7BF34();
    sub_1ABF24F94();
    sub_1ABA7BF34();
    sub_1ABF24F34();
  }

  (*(v6 + 8))(v11, v4);
  sub_1ABA7BC90();
}

void TrialAssetManager.ExperimentIdentifiers.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4DBB28, &qword_1ABF710D8);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABE8F65C();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    sub_1ABA97E20();
    v14 = sub_1ABF24E14();
    v16 = v15;
    sub_1ABA97E20();
    v23 = sub_1ABF24E74();
    sub_1ABA97E20();
    v17 = sub_1ABF24E14();
    v19 = v18;
    v20 = *(v7 + 8);
    v22 = v17;
    v20(v12, v5);
    *v4 = v14;
    *(v4 + 8) = v16;
    *(v4 + 16) = v23;
    *(v4 + 24) = v22;
    *(v4 + 32) = v19;

    sub_1ABA84B54(v2);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABE8D260(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TrialAssetManager.InfoToMakeSendable();
  v5 = swift_allocObject();
  v5[5] = sub_1ABAFF390(0, qword_1ED8665E0, 0x1E69DB518);
  v5[6] = &off_1F2076550;
  v5[2] = a1;
  v5[7] = 0;
  v5[8] = 0;
  sub_1ABAD219C(&qword_1EB4DBBE8, &qword_1ABF71B98);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  *(v2 + 16) = a2;
  *(v2 + 24) = v6;
  return v2;
}

Swift::Void __swiftcall TrialAssetManager.refresh()()
{
  sub_1ABE8CA34(v4);
  v0 = v4[4];
  sub_1ABA93E20(v4, v4[3]);
  v1 = *(v0 + 32);
  v2 = sub_1ABA7D1BC();
  v3(v2, v0);
  sub_1ABA84B54(v4);
}

uint64_t TrialAssetManager.experimentIdentifiers(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1ABE8CA34(v17);
  v4 = v18;
  v5 = v19;
  sub_1ABA93E20(v17, v18);
  v6 = 0xEB00000000474946;
  v7 = 0x4E4F435F4452454ELL;
  switch(v3)
  {
    case 1:
      v7 = 0xD00000000000001FLL;
      v10 = "BEHAVIORAL_UNDERSTANDING_ANCHOR";
      goto LABEL_10;
    case 2:
      sub_1ABA7C880();
      v7 = v11 + 9;
      break;
    case 3:
      sub_1ABA7C880();
      v7 = v9 + 1;
      break;
    case 4:
      sub_1ABA7C880();
      v7 = v13 - 3;
      break;
    case 5:
      sub_1ABA7C880();
      v7 = v14 + 15;
      break;
    case 6:
      sub_1ABA7C880();
      v7 = v12 - 2;
      break;
    case 7:
      v7 = 0xD00000000000001FLL;
      v10 = "KNOWLEDGE_CONSTRUCTION_LOCATION";
LABEL_10:
      v6 = (v10 - 32) | 0x8000000000000000;
      break;
    case 8:
      break;
    default:
      sub_1ABA7C880();
      v7 = v8 + 3;
      break;
  }

  v15 = (*(v5 + 24))(v7, v6, v4, v5);

  sub_1ABE8CAE4(v15, a2);
  return sub_1ABA84B54(v17);
}

uint64_t TrialAssetManager.AssetType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x726F746365726964;
  }

  else
  {
    result = 1701603686;
  }

  *v0;
  return result;
}

uint64_t sub_1ABE8D580@<X0>(uint64_t *a1@<X8>)
{
  result = TrialAssetManager.AssetType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABE8D664(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v7 = *a3;
  sub_1ABE8CA34(v23);
  v8 = v24;
  v9 = v25;
  sub_1ABA93E20(v23, v24);
  v10 = 0xEB00000000474946;
  v11 = 0x4E4F435F4452454ELL;
  switch(v7)
  {
    case 1:
      v11 = 0xD00000000000001FLL;
      v12 = "BEHAVIORAL_UNDERSTANDING_ANCHOR";
      goto LABEL_10;
    case 2:
      v10 = 0x80000001ABF7EC70;
      v11 = 0xD000000000000028;
      break;
    case 3:
      v10 = 0x80000001ABF7ECA0;
      v11 = 0xD000000000000020;
      break;
    case 4:
      v10 = 0x80000001ABF7ECD0;
      v11 = 0xD00000000000001CLL;
      break;
    case 5:
      v10 = 0x80000001ABF7ECF0;
      v11 = 0xD00000000000002ELL;
      break;
    case 6:
      v10 = 0x80000001ABF7ED20;
      v11 = 0xD00000000000001DLL;
      break;
    case 7:
      v11 = 0xD00000000000001FLL;
      v12 = "KNOWLEDGE_CONSTRUCTION_LOCATION";
LABEL_10:
      v10 = (v12 - 32) | 0x8000000000000000;
      break;
    case 8:
      break;
    default:
      v10 = 0x80000001ABF7EC20;
      v11 = 0xD000000000000022;
      break;
  }

  v13 = (*(v9 + 8))(a1, a2, v11, v10, v8, v9);

  sub_1ABA84B54(v23);
  if (v13)
  {
    v14 = *(v3 + 16);
    if (v14)
    {
      v15 = *(v14 + 16);
      v16 = *(v4 + 16);

      os_unfair_lock_lock((v15 + 24));
      v17 = *(*(v15 + 16) + 16);

      os_unfair_lock_unlock((v15 + 24));
      v18 = sub_1ABAD5260(v7, v17);

      if (v18)
      {
      }

      else
      {
        LOBYTE(v23[0]) = v7;
        v19 = swift_allocObject();
        swift_weakInit();

        TrialAssetManager.addUpdateHandler(for:using:)(v23, sub_1ABE90588, v19);

        v20 = *(v14 + 16);
        os_unfair_lock_lock((v20 + 24));
        v21 = *(*(v20 + 16) + 16);

        os_unfair_lock_unlock((v20 + 24));
        swift_isUniquelyReferenced_nonNull_native();
        v23[0] = v21;
        sub_1ABAFAFA0();
        sub_1ABE8C3F8();
      }
    }
  }

  return v13;
}

uint64_t sub_1ABE8D954()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    TrialAssetManager.refresh()();
  }

  return result;
}

uint64_t TrialAssetManager.addUpdateHandler(for:using:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  sub_1ABE8CA34(v25);
  v7 = v26;
  v8 = v27;
  sub_1ABA93E20(v25, v26);
  v9 = 0xEB00000000474946;
  v10 = 0x4E4F435F4452454ELL;
  switch(v6)
  {
    case 1:
      v10 = 0xD00000000000001FLL;
      v13 = "BEHAVIORAL_UNDERSTANDING_ANCHOR";
      goto LABEL_10;
    case 2:
      sub_1ABA812A4();
      v10 = v14 + 9;
      break;
    case 3:
      sub_1ABA812A4();
      v10 = v12 + 1;
      break;
    case 4:
      sub_1ABA812A4();
      v10 = v16 - 3;
      break;
    case 5:
      sub_1ABA812A4();
      v10 = v17 + 15;
      break;
    case 6:
      sub_1ABA812A4();
      v10 = v15 - 2;
      break;
    case 7:
      v10 = 0xD00000000000001FLL;
      v13 = "KNOWLEDGE_CONSTRUCTION_LOCATION";
LABEL_10:
      v9 = (v13 - 32) | 0x8000000000000000;
      break;
    case 8:
      break;
    default:
      sub_1ABA812A4();
      v10 = v11 + 3;
      break;
  }

  v18 = *(v3 + 24);
  os_unfair_lock_lock((v18 + 24));
  v19 = *(v18 + 16);
  v20 = sub_1ABE8C764();
  os_unfair_lock_unlock((v18 + 24));
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  v22 = *(v8 + 40);

  v23 = v22(v10, v9, v20, sub_1ABE8F6B0, v21, v7, v8);

  sub_1ABA84B54(v25);
  type metadata accessor for TrialAssetManager.NamespaceUpdateNotificationToken();
  sub_1ABA7D028();
  result = swift_allocObject();
  *(result + 16) = v23;
  return result;
}

uint64_t sub_1ABE8DBD4@<X0>(char *a1@<X8>)
{
  v2 = sub_1ABF24D84();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t TrialAssetManager.DownloadOptions.DiscretionaryNetworkBehavior.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6974657263736964;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

unint64_t sub_1ABE8DC8C@<X0>(unint64_t *a1@<X8>)
{
  result = TrialAssetManager.DownloadOptions.DiscretionaryNetworkBehavior.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static TrialAssetManager.DownloadOptions.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_1ABAD094C(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABE8DDBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001ABF94E80 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001ABF94EA0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1ABE8DE90(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1ABE8DECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE8DDBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE8DEF4(uint64_t a1)
{
  v2 = sub_1ABE8F6B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE8DF30(uint64_t a1)
{
  v2 = sub_1ABE8F6B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TrialAssetManager.DownloadOptions.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v30 = sub_1ABAD219C(&qword_1EB4DBB30, &qword_1ABF710E0);
  sub_1ABA7BB64(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  v38 = *v24;
  a10 = v24[1];
  v39 = v29[4];
  sub_1ABA93E20(v29, v29[3]);
  sub_1ABE8F6B8();
  sub_1ABF252E4();
  a14 = 0;
  sub_1ABA7BF34();
  sub_1ABF24F44();
  if (!v25)
  {
    a13 = a10;
    a12 = 1;
    sub_1ABE8F70C();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  (*(v32 + 8))(v37, v30);
  sub_1ABA7BC90();
}

uint64_t TrialAssetManager.DownloadOptions.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1ABF25254();
  sub_1ABA829A0();
  sub_1ABF23D34();
}

uint64_t TrialAssetManager.DownloadOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1ABF25234();
  sub_1ABF25254();
  sub_1ABA829A0();
  sub_1ABF23D34();

  return sub_1ABF25294();
}

void TrialAssetManager.DownloadOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_1ABA7BCA8();
  v14 = v13;
  v16 = v15;
  v17 = sub_1ABAD219C(&qword_1EB4DBB48, &unk_1ABF710E8);
  sub_1ABA7BB64(v17);
  v19 = *(v18 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  v21 = v14[4];
  sub_1ABA93E20(v14, v14[3]);
  sub_1ABE8F6B8();
  sub_1ABF252C4();
  if (!v12)
  {
    v22 = sub_1ABF24E24();
    sub_1ABE8F760();
    sub_1ABF24E64();
    v23 = sub_1ABA7BFF0();
    v24(v23);
    *v16 = v22 & 1;
    v16[1] = a12;
  }

  sub_1ABA84B54(v14);
  sub_1ABA7BC90();
}

uint64_t sub_1ABE8E3C8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1ABF25234();
  sub_1ABF25254();
  sub_1ABF23D34();

  return sub_1ABF25294();
}

uint64_t TrialAssetManager.downloadOnDemandAsset(for:in:downloadOptions:)(uint64_t a1, uint64_t a2, _BYTE *a3, _WORD *a4)
{
  *(v5 + 72) = a2;
  *(v5 + 80) = v4;
  *(v5 + 64) = a1;
  *(v5 + 117) = *a3;
  *(v5 + 112) = *a4;
  return sub_1ABA8C014();
}

uint64_t sub_1ABE8E498()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 117);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  *(inited + 32) = v4;
  *(inited + 40) = v3;

  sub_1ABB2C7F4();
  *(v0 + 116) = v2;
  *(v0 + 88) = v6;
  *(v0 + 114) = v1;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_1ABE8E59C;
  v8 = *(v0 + 80);
  v9 = sub_1ABAA2E64();

  return TrialAssetManager.downloadOnDemandAssets(for:in:downloadOptions:)(v9, v10, v11);
}

uint64_t sub_1ABE8E59C()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *(v4 + 88);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v9 + 104) = v0;

  if (!v0)
  {
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABE8E6D0()
{
  sub_1ABA7BBE0();
  v1 = *(v0 + 104);
  return v2();
}

unint64_t sub_1ABE8E6F4()
{
  result = qword_1EB4DBAF0;
  if (!qword_1EB4DBAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBAF0);
  }

  return result;
}

uint64_t sub_1ABE8E748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrialAssetManager.Asset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TrialAssetManager.downloadOnDemandAssets(for:in:downloadOptions:)(uint64_t a1, _BYTE *a2, _WORD *a3)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = v3;
  *(v4 + 130) = *a2;
  *(v4 + 128) = *a3;
  return sub_1ABA8C014();
}

void sub_1ABE8E7D0()
{
  v1 = *(v0 + 130);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_1ABE8CA34(v0 + 16);
  v4 = *(v0 + 48);
  sub_1ABA93E20((v0 + 16), *(v0 + 40));

  *(v0 + 72) = sub_1ABB4558C(v5);
  v6 = 0xEB00000000474946;
  switch(v1)
  {
    case 1:
      v7 = "BEHAVIORAL_UNDERSTANDING_ANCHOR";
      goto LABEL_5;
    case 7:
      v7 = "KNOWLEDGE_CONSTRUCTION_LOCATION";
LABEL_5:
      v6 = (v7 - 32) | 0x8000000000000000;
      break;
    case 8:
      break;
    default:
      sub_1ABA93A68();
      break;
  }

  *(v0 + 80) = v6;
  v8 = *(v0 + 128);
  v9 = *(*(v0 + 64) + 24);
  os_unfair_lock_lock((v9 + 24));
  v10 = *(v9 + 16);
  *(v0 + 88) = sub_1ABE8C4F4();
  os_unfair_lock_unlock((v9 + 24));
  if (v8 == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E69DB528]) initWithAllowsCellular:*(v0 + 128) & 1 discretionaryBehavior:(*(v0 + 128) >> 7) & 2];
  }

  *(v0 + 96) = v11;
  v12 = *(v0 + 56);
  sub_1ABA7D028();
  v13 = swift_allocObject();
  *(v0 + 104) = v13;
  *(v13 + 16) = v12;
  v14 = *(v4 + 16);

  v17 = v14 + *v14;
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v0 + 112) = v16;
  *v16 = v0;
  v16[1] = sub_1ABE8EAE4;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1ABE8EAE4()
{
  v2 = *v1;
  sub_1ABA7D4E0();
  *v4 = v3;
  v5 = v2[14];
  v6 = v2[12];
  *v4 = *v1;
  *(v3 + 120) = v0;

  v7 = v2[13];
  v8 = v2[11];
  v9 = v2[10];
  v10 = v2[9];

  if (v0)
  {
  }

  else
  {
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABE8ECA8()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 64);
  sub_1ABA84B54((v0 + 16));
  TrialAssetManager.refresh()();
  sub_1ABA7BBE0();

  return v2();
}

uint64_t sub_1ABE8ED0C()
{
  sub_1ABA7BBF8();
  sub_1ABA84B54((v0 + 16));
  sub_1ABA7BBE0();
  v2 = *(v0 + 120);

  return v1();
}

void sub_1ABE8ED68(uint64_t a1)
{
  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v2 = sub_1ABF237F4();
  sub_1ABA7AA24(v2, qword_1ED871B40);

  oslog = sub_1ABF237D4();
  v3 = sub_1ABF24644();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315394;
    v6 = sub_1ABF243A4();
    v8 = sub_1ABADD6D8(v6, v7, &v10);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2048;
    *(v4 + 14) = a1;
    _os_log_impl(&dword_1ABA78000, oslog, v3, "Downloading asset for %s: %ld", v4, 0x16u);
    sub_1ABA84B54(v5);
    MEMORY[0x1AC5AB8B0](v5, -1, -1);
    MEMORY[0x1AC5AB8B0](v4, -1, -1);
  }
}

uint64_t TrialAssetManager.Asset.url.getter()
{
  v0 = sub_1ABF21CF4();
  sub_1ABA7BBB0(v0);
  v2 = *(v1 + 16);
  v3 = sub_1ABA7D000();

  return v4(v3);
}

uint64_t TrialAssetManager.Asset.metadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for TrialAssetManager.Asset(0) + 20));
}

uint64_t TrialAssetManager.Asset.experimentIdentifiers.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TrialAssetManager.Asset(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_1ABAFC95C(v4, v5);
}

uint64_t TrialAssetManager.NamespaceUpdateNotificationToken.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t TrialAssetManager.NamespaceUpdateNotificationToken.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1ABA7D544();

  return swift_deallocClassInstance();
}

void sub_1ABE8F038(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 namespaceName];
  v5 = sub_1ABF23C04();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  TrialNamespace.init(rawValue:)(v8);
  v9 = v23;
  if (v23 == 9)
  {
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7DE3C();
      swift_once();
    }

    v10 = sub_1ABF237F4();
    sub_1ABA7AA24(v10, qword_1ED871B40);
    swift_unknownObjectRetain();
    v11 = sub_1ABF237D4();
    v12 = sub_1ABF24674();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315138;
      v15 = [a1 namespaceName];
      v16 = sub_1ABF23C04();
      v18 = v17;

      v19 = sub_1ABADD6D8(v16, v18, &v22);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_1ABA78000, v11, v12, "TrialAssetmanager: NamespaceUpdateInfo: init: unknown namespaceName %s", v13, 0xCu);
      sub_1ABA84B54(v14);
      MEMORY[0x1AC5AB8B0](v14, -1, -1);
      MEMORY[0x1AC5AB8B0](v13, -1, -1);
    }

    swift_unknownObjectRelease();

    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v20 = [a1 token];
    swift_unknownObjectRelease();
    type metadata accessor for TrialAssetManager.NamespaceUpdateNotificationToken();
    sub_1ABA7D028();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *a2 = v9;
    a2[1] = v21;
  }
}

void sub_1ABE8F244(uint64_t a1, void (*a2)(void *))
{
  v3 = swift_unknownObjectRetain();
  sub_1ABE8F038(v3, v8);
  if (v8[1])
  {
    a2(v8);
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v4 = sub_1ABF237F4();
    sub_1ABA7AA24(v4, qword_1ED871B40);
    oslog = sub_1ABF237D4();
    v5 = sub_1ABF24664();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1ABA78000, oslog, v5, "TrialAssetmanager: addUpdateHandler: cannot construct triNamespaceUpdate", v6, 2u);
      MEMORY[0x1AC5AB8B0](v6, -1, -1);
    }
  }
}

uint64_t TrialAssetManager.removeUpdateHandler(for:)(uint64_t a1)
{
  sub_1ABE8CA34(v5);
  v2 = v6;
  v3 = v7;
  sub_1ABA93E20(v5, v6);
  (*(v3 + 48))(*(a1 + 16), v2, v3);
  return sub_1ABA84B54(v5);
}

uint64_t TrialAssetManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t TrialAssetManager.__deallocating_deinit()
{
  TrialAssetManager.deinit();
  sub_1ABA8FE90();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABE8F458(void *a1)
{
  v2 = [a1 path];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1ABF23C04();

  return v3;
}

uint64_t sub_1ABE8F4C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DBB00, &qword_1ABF34A00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE8F538(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DBB00, &qword_1ABF34A00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE8F5A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1ABA7BBB0(v4);
  v6 = *(v5 + 16);
  v7 = sub_1ABA7D000();
  v8(v7);
  return a2;
}

uint64_t sub_1ABE8F604(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1ABE8F65C()
{
  result = qword_1EB4DBB20;
  if (!qword_1EB4DBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB20);
  }

  return result;
}

unint64_t sub_1ABE8F6B8()
{
  result = qword_1EB4DBB38;
  if (!qword_1EB4DBB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB38);
  }

  return result;
}

unint64_t sub_1ABE8F70C()
{
  result = qword_1EB4DBB40;
  if (!qword_1EB4DBB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB40);
  }

  return result;
}

unint64_t sub_1ABE8F760()
{
  result = qword_1EB4DBB50;
  if (!qword_1EB4DBB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB50);
  }

  return result;
}

unint64_t sub_1ABE8F7C0()
{
  result = qword_1ED870320;
  if (!qword_1ED870320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870320);
  }

  return result;
}

unint64_t sub_1ABE8F85C()
{
  result = qword_1EB4DBB68;
  if (!qword_1EB4DBB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB68);
  }

  return result;
}

unint64_t sub_1ABE8F8B4()
{
  result = qword_1EB4DBB70;
  if (!qword_1EB4DBB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB70);
  }

  return result;
}

unint64_t sub_1ABE8F90C()
{
  result = qword_1EB4DBB78;
  if (!qword_1EB4DBB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrialNamespace(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABE8FB14()
{
  v0 = type metadata accessor for TrialAssetManager.Asset(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1ABE8FB88(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xE && *(a1 + 17))
    {
      v2 = *a1 + 13;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 2) & 0xC | (*(a1 + 16) >> 6)) ^ 0xF;
      if (v2 >= 0xD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1ABE8FBD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *(result + 16) = 0;
    *result = a2 - 14;
    *(result + 8) = 0;
    if (a3 >= 0xE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 16 * (((-a2 >> 2) & 3) - 4 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrialAssetManager.DownloadOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TrialAssetManager.DownloadOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1ABE8FE0C()
{
  sub_1ABF21CF4();
  if (v0 <= 0x3F)
  {
    sub_1ABE8FEA8();
    if (v1 <= 0x3F)
    {
      sub_1ABE8FF04();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1ABE8FEA8()
{
  if (!qword_1EB4CF840[0])
  {
    v0 = sub_1ABF23A44();
    if (!v1)
    {
      atomic_store(v0, qword_1EB4CF840);
    }
  }
}

void sub_1ABE8FF04()
{
  if (!qword_1EB4CFE78)
  {
    v0 = sub_1ABF247E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4CFE78);
    }
  }
}

_BYTE *sub_1ABE8FF7C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrialAssetManager.ExperimentIdentifiers.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE90138()
{
  result = qword_1EB4DBB80;
  if (!qword_1EB4DBB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB80);
  }

  return result;
}

unint64_t sub_1ABE90190()
{
  result = qword_1EB4DBB88;
  if (!qword_1EB4DBB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB88);
  }

  return result;
}

unint64_t sub_1ABE901E8()
{
  result = qword_1EB4DBB90;
  if (!qword_1EB4DBB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB90);
  }

  return result;
}

unint64_t sub_1ABE90240()
{
  result = qword_1EB4DBB98;
  if (!qword_1EB4DBB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB98);
  }

  return result;
}

unint64_t sub_1ABE90298()
{
  result = qword_1EB4DBBA0;
  if (!qword_1EB4DBBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBBA0);
  }

  return result;
}

unint64_t sub_1ABE902F0()
{
  result = qword_1EB4DBBA8;
  if (!qword_1EB4DBBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBBA8);
  }

  return result;
}

unint64_t sub_1ABE90360()
{
  result = qword_1EB4DBBB0;
  if (!qword_1EB4DBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBBB0);
  }

  return result;
}

unint64_t sub_1ABE903B4()
{
  result = qword_1EB4DBBB8;
  if (!qword_1EB4DBBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBBB8);
  }

  return result;
}

unint64_t sub_1ABE90408()
{
  result = qword_1EB4DBBC0;
  if (!qword_1EB4DBBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBBC0);
  }

  return result;
}

unint64_t sub_1ABE90488()
{
  result = qword_1EB4CE680;
  if (!qword_1EB4CE680)
  {
    sub_1ABF246C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE680);
  }

  return result;
}

unint64_t sub_1ABE904E0()
{
  result = qword_1EB4DBBE0;
  if (!qword_1EB4DBBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBBE0);
  }

  return result;
}

unint64_t sub_1ABE90534()
{
  result = qword_1EB4CF700;
  if (!qword_1EB4CF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF700);
  }

  return result;
}

uint64_t sub_1ABE9059C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 1;
  }

  v2 = (a1 + 32);
  while (1)
  {
    v4 = *v2++;
    v3 = v4;
    if (v4)
    {
      if (*(v3 + 16))
      {
        break;
      }
    }

    if (!--v1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1ABE905D0()
{
  v0 = sub_1ABC79FD0();
  memcpy(v2, (v0 + 16), sizeof(v2));
  *(v0 + 16) = 0x656C70697274;
  *(v0 + 24) = 0xE600000000000000;
  *(v0 + 32) = &unk_1F208E7D8;
  *(v0 + 40) = 115;
  *(v0 + 48) = 0xE100000000000000;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xD000000000000014;
  *(v0 + 72) = 0x80000001ABF94FE0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1ABAE4AA8(v2);

  return v0;
}

uint64_t sub_1ABE90684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (((1 << *(a6 + 64)) & 0x1FA) == 0)
  {
    goto LABEL_30;
  }

  sub_1ABA7C6D8();
  if (*(a6 + 32))
  {
    v10 = sub_1ABAE305C(115, 0xE100000000000000);
    if (!v10)
    {
      swift_endAccess();
      goto LABEL_10;
    }

    swift_endAccess();
    swift_beginAccess();
    v11 = *(v10 + 16);

    if (*(v11 + 16))
    {
      v10 = sub_1ABE8AE5C(v11);
      goto LABEL_10;
    }
  }

  else
  {
    swift_endAccess();
  }

  v10 = 0;
LABEL_10:
  sub_1ABA7C6D8();
  if (!*(a6 + 32))
  {
    swift_endAccess();
LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v12 = sub_1ABAE305C(112, 0xE100000000000000);
  if (!v12)
  {
    swift_endAccess();
    goto LABEL_18;
  }

  swift_endAccess();
  swift_beginAccess();
  v13 = *(v12 + 16);

  if (!*(v13 + 16))
  {

    goto LABEL_17;
  }

  v12 = sub_1ABE8AE5C(v13);
LABEL_18:
  sub_1ABA7C6D8();
  if (!*(a6 + 32) || (v14 = sub_1ABAE305C(111, 0xE100000000000000)) == 0)
  {
    swift_endAccess();
LABEL_23:
    v17 = 0;
    goto LABEL_24;
  }

  v15 = v14;
  swift_endAccess();
  swift_beginAccess();
  v16 = *(v15 + 16);

  if (!*(v16 + 16))
  {

    goto LABEL_23;
  }

  v17 = sub_1ABE8AE5C(v16);
LABEL_24:
  sub_1ABAD219C(&qword_1EB4D63B8, &qword_1ABF673F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1ABF3BFC0;
  *(v18 + 32) = v10;
  *(v18 + 40) = v12;
  *(v18 + 48) = v17;
  v19 = sub_1ABE9059C(v18);
  swift_setDeallocating();

  sub_1ABB4DB48();
  if ((v19 & 1) == 0)
  {
    v25 = a2 + *(type metadata accessor for QueryContext() + 32);
    v27 = *(v25 + 88);
    v28 = *(v25 + 104);
    v29 = 32;
    if (v27 >> 1 != 0xFFFFFFFF || (*(v25 + 104) & 0x1E) != 0)
    {
      v36 = *(v25 + 96);
      memcpy(__dst, v25, sizeof(__dst));
      v41 = v27;
      v42 = v36;
      v43 = v28;
      *&__src[0] = 0;
      *(&__src[0] + 1) = v10;
      *&__src[1] = 0;
      *(&__src[1] + 1) = v12;
      *&__src[2] = 0;
      *(&__src[2] + 1) = v17;
      *(&__src[5] + 1) = 0;
      memset(&__src[3], 0, 32);
      BYTE8(__src[6]) = 32;
      v55 = 1;
      sub_1ABE3A1C8();
      if (v6)
      {
        memcpy(v38, __src, 0x69uLL);
        sub_1ABAE4B6C(v38);
        return v24 & 1;
      }

      memcpy(v38, __src, 0x69uLL);
      sub_1ABAE4B6C(v38);
      v30 = v44;
      v10 = v45;
      v31 = v46;
      v12 = v47;
      v32 = v48;
      v17 = v49;
      v33 = v50;
      v34 = v51;
      v35 = v52;
      v26 = v53;
      v29 = v54;
    }

    else
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0uLL;
      v34 = 0uLL;
      v35 = 0uLL;
    }

    *a1 = v30;
    *(a1 + 8) = v10;
    *(a1 + 16) = v31;
    *(a1 + 24) = v12;
    *(a1 + 32) = v32;
    *(a1 + 40) = v17;
    *(a1 + 48) = v33;
    *(a1 + 64) = v34;
    *(a1 + 80) = v35;
    *(a1 + 96) = v26;
    v24 = 1;
    *(a1 + 104) = v29;
    return v24 & 1;
  }

  if (qword_1ED86E458 != -1)
  {
    swift_once();
  }

  v20 = sub_1ABF237F4();
  sub_1ABA7AA24(v20, qword_1ED86E460);
  v21 = sub_1ABF237D4();
  v22 = sub_1ABF24664();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1ABA78000, v21, v22, "Triple operator has all empty params", v23, 2u);
    MEMORY[0x1AC5AB8B0](v23, -1, -1);
  }

LABEL_30:
  v24 = 0;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = xmmword_1ABF34940;
  *(a1 + 104) = 0;
  return v24 & 1;
}

uint64_t sub_1ABE90B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v43 = *(a3 + 16);
  if (v43)
  {
    v3 = 0;
    v42 = a3 + 32;
    v45 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      memcpy(__dst, (v42 + 88 * v3), 0x58uLL);
      v5 = __dst[3];
      v4 = __dst[4];
      if (__dst[7])
      {
        v6 = __dst[6];
      }

      else
      {
        v6 = 0;
      }

      if (__dst[7])
      {
        v7 = __dst[7];
      }

      else
      {
        v7 = 0xE000000000000000;
      }

      v8 = __dst[8];
      if (!__dst[9])
      {
        v8 = 0;
      }

      v47 = v8;
      v48 = v6;
      v9 = __dst[9] ? __dst[9] : 0xE000000000000000;
      sub_1ABB242A4(__dst, v53);

      v10 = sub_1ABE713BC();
      v11 = sub_1ABE713BC();
      v12 = sub_1ABE713BC();
      v49 = v12;
      if (!*(v10 + 16))
      {
        break;
      }

      v46 = v3;
      v53[0] = v5;
      v53[1] = v4;
      MEMORY[0x1EEE9AC00](v12);
      sub_1ABA8FCB0();
      v14 = sub_1ABB2F764(sub_1ABB342A0, v13, v10);

      if (v14)
      {
        v3 = v46;
        goto LABEL_18;
      }

      sub_1ABB24250(__dst);
      v3 = v46;
LABEL_44:
      if (++v3 == v43)
      {
        goto LABEL_47;
      }
    }

LABEL_18:
    if (*(v11 + 16))
    {
      v53[0] = v48;
      v53[1] = v7;
      MEMORY[0x1EEE9AC00](v15);
      sub_1ABA8FCB0();
      v17 = sub_1ABB2F764(sub_1ABC7A930, v16, v11);

      if (!v17)
      {

        goto LABEL_42;
      }
    }

    else
    {
    }

    v19 = v49;
    if (!*(v49 + 16))
    {

LABEL_34:

LABEL_35:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = *(v45 + 16);
        sub_1ABAD8758();
        v45 = v35;
      }

      v31 = *(v45 + 16);
      if (v31 >= *(v45 + 24) >> 1)
      {
        sub_1ABAD8758();
        v45 = v36;
      }

      v32 = v45;
      *(v45 + 16) = v31 + 1;
      memcpy((v32 + 88 * v31 + 32), __dst, 0x58uLL);
      goto LABEL_44;
    }

    v53[0] = v47;
    v53[1] = v9;
    MEMORY[0x1EEE9AC00](v18);
    sub_1ABA8FCB0();
    v21 = sub_1ABB2F764(sub_1ABC7A930, v20, v19);

    if (v21)
    {
      goto LABEL_34;
    }

    v22 = __dst[10];
    v23 = *(__dst[10] + 16);
    if (v23)
    {
      v52 = MEMORY[0x1E69E7CC0];
      sub_1ABADDE1C(0, v23, 0);
      v24 = v52;
      v25 = (v22 + 32);
      for (i = v23 - 1; ; --i)
      {
        v27 = memcpy(v53, v25, sizeof(v53));
        if (v53[9])
        {
          v51[0] = v53[8];
          v51[1] = v53[9];
          MEMORY[0x1EEE9AC00](v27);
          v41[2] = v51;
          sub_1ABB242A4(v53, &v50);
          sub_1ABB2F764(sub_1ABC7A930, v41, v19);
          sub_1ABB24250(v53);
        }

        v52 = v24;
        v29 = *(v24 + 16);
        v28 = *(v24 + 24);
        v30 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          sub_1ABADDE1C((v28 > 1), v29 + 1, 1);
          v24 = v52;
        }

        *(v24 + 16) = v30;
        if (!i)
        {
          break;
        }

        v25 += 88;
      }

      v33 = *(v24 + 16);

      if (v33)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    }

LABEL_42:

LABEL_43:
    sub_1ABB24250(__dst);
    goto LABEL_44;
  }

  v45 = MEMORY[0x1E69E7CC0];
LABEL_47:
  type metadata accessor for ResultGraph();
  v37 = swift_allocObject();
  v38 = MEMORY[0x1E69E7CC0];
  *(v37 + 16) = sub_1ABF239C4();
  *(v37 + 24) = v38;
  LOBYTE(__dst[0]) = 0;
  v39 = v45;
  sub_1ABE489A8(v45, __dst);
  return v39;
}

uint64_t sub_1ABE91010(uint64_t *a1, uint64_t (*a2)(void, void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[6] = v6;
  return a2(sub_1ABE91BD0, v8);
}

uint64_t sub_1ABE9106C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = *(v2 + 4);
  result = sub_1ABE91150(*a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABE910E8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t, void *))
{
  v6 = a1;
  v7 = MEMORY[0x1E69E7CC0];
  v5[2] = &v7;
  a3(&v6, a2, v5);
  if (v3)
  {
  }

  return sub_1ABA80BE4();
}

uint64_t sub_1ABE91150(uint64_t a1)
{
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = *(v1 + 4);
  v5[0] = a1;
  v5[1] = MEMORY[0x1E69E7CC0];
  ViewService.SportsSchedulesView.enumerateTriples(for:block:)(v5);
  if (v2)
  {
  }

  return sub_1ABA80BE4();
}

uint64_t TripleEnumeratorProtocol<>.triples(for:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  v11 = sub_1ABF24154();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = &v11;
  v10 = v6;
  (*(a3 + 16))(&v10, sub_1ABE91A34, v9, a2, a3);
  if (v3)
  {
  }

  return sub_1ABA80BE4();
}

uint64_t sub_1ABE912A8()
{
  sub_1ABA7E0FC();
  v2 = sub_1ABE6E990();
  result = sub_1ABA7FA74(v2);
  if (!v1)
  {
    *v0 = result;
  }

  return result;
}

uint64_t TripleEnumeratorProtocol<>.triples<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  sub_1ABF241F4();
  swift_getTupleTypeMetadata2();
  v14 = sub_1ABF24154();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = &v14;
  (*(a4 + 24))(a1, sub_1ABE91A58, v13, a3, a5, a2, a4);
  if (v5)
  {
  }

  return sub_1ABA80BE4();
}

uint64_t sub_1ABE91404@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = *v2;
  sub_1ABA8FCC8();
  result = sub_1ABE910E8(v7, v8, SubgraphView.enumerateTriples(for:block:));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABE91498@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  result = sub_1ABE910E8(*a1, sub_1ABE91C20, SubgraphFilteredView.enumerateTriples(for:block:));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABE9153C()
{
  sub_1ABA7E0FC();
  v4 = sub_1ABE91AD0(v2, v3);
  result = sub_1ABA7FA74(v4);
  if (!v1)
  {
    *v0 = result;
  }

  return result;
}

uint64_t sub_1ABE91588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a4;
  v8[2] = a5;
  v8[3] = a6;
  v8[4] = a7;
  v8[5] = a1;
  v8[6] = a2;
  return (*(a7 + 16))(&v9, sub_1ABE91BF4, v8, a5, a7);
}

uint64_t sub_1ABE915F8(const void *a1, uint64_t *a2)
{
  sub_1ABB345D8(a1, &v7);
  sub_1ABB4DC50();
  v4 = *(*a2 + 16);
  sub_1ABB4E054(v4);
  v5 = *a2;
  *(v5 + 16) = v4 + 1;
  memcpy((v5 + 112 * v4 + 32), a1, 0x70uLL);
  return 1;
}

uint64_t sub_1ABE91678(const void *a1, uint64_t *a2)
{
  sub_1ABE57A98(a1, v7);
  sub_1ABB4DC80();
  v4 = *(*a2 + 16);
  sub_1ABB4E084(v4);
  v5 = *a2;
  *(v5 + 16) = v4 + 1;
  memcpy((v5 + 120 * v4 + 32), a1, 0x78uLL);
  return 1;
}

uint64_t sub_1ABE916F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v10 + 16))(&v12 - v9, a1, AssociatedTypeWitness, v8);
  sub_1ABF241F4();
  sub_1ABF241A4();
  return 1;
}

uint64_t sub_1ABE917F8(uint64_t *a1, void (*a2)(uint64_t (*)(uint64_t a1), _BYTE *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v15 = *(a7 + 8);
  swift_getAssociatedTypeWitness();
  v25 = sub_1ABF24154();
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = &v25;
  a2(sub_1ABE91BA8, v17);
  if (v8)
  {
  }

  else
  {
    v23 = v14;
    v24 = v25;
    sub_1ABF241F4();
    swift_getTupleTypeMetadata2();
    sub_1ABF241F4();
    sub_1ABF241A4();
  }

  return 1;
}

uint64_t sub_1ABE91934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v11 + 16))(&v13 - v10, a1, AssociatedTypeWitness, v9);
  sub_1ABF241F4();
  sub_1ABF241A4();
  return 1;
}

uint64_t sub_1ABE91AD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ABE91BF4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1() & 1;
}

uint64_t *TripleProviderProtocol.context()(uint64_t a1)
{
  sub_1ABA7BD7C();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  v10 = v9 - v8;
  type metadata accessor for GraphObjectContext();
  (*(v4 + 16))(v10, v1, a1);
  return GraphObjectContext.__allocating_init<>(_:)(v10);
}

uint64_t *TripleProviderProtocol.context<A>(objectMapping:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1ABA7BD7C();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v15 = v14 - v13;
  sub_1ABA7BD7C();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7BC58();
  v23 = v22 - v21;
  type metadata accessor for GraphObjectContext();
  (*(v17 + 16))(v23, v4, a2);
  (*(v9 + 16))(v15, a1, a3);
  return GraphObjectContext.__allocating_init(_:objectMapping:)(v23, v15);
}

uint64_t sub_1ABE91F04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v18 - v13;
  v19 = *a1;
  v15 = (*(a3 + 72))(&v19, a2, a3);
  if (!v5)
  {
    MEMORY[0x1EEE9AC00](v15);
    *(&v18 - 4) = a2;
    *(&v18 - 3) = a3;
    *(&v18 - 2) = a4;
    swift_getAssociatedConformanceWitness();
    v16 = sub_1ABF23F24();
    v4 = sub_1ABE8AC38(v16);
    (*(v11 + 8))(v14, AssociatedTypeWitness);
  }

  return v4;
}

uint64_t sub_1ABE920D0@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 40);
  v4 = swift_checkMetadataState();
  v5 = v3(v4, AssociatedConformanceWitness);
  v7 = v6;
  if ((sub_1ABF23E64() & 1) == 0)
  {

    goto LABEL_5;
  }

  result = EntityIdentifier.init(_:)(v5, v7, &v11);
  if (v12 == 1)
  {
LABEL_5:
    v10 = 0;
    v9 = 1;
    goto LABEL_6;
  }

  v9 = 0;
  v10 = v11;
LABEL_6:
  *a1 = v10;
  *(a1 + 8) = v9;
  return result;
}

uint64_t sub_1ABE921F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1ABE920D0(a1);
}

uint64_t sub_1ABE92240(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  v17 = *a1;
  (*(a3 + 48))(a2, a3);
  if (!v5)
  {
    v30 = v10;
    v18 = (*(v10 + 16))(v14, v16, AssociatedTypeWitness);
    v29 = &v28;
    v19 = MEMORY[0x1EEE9AC00](v18);
    *(&v28 - 4) = a2;
    *(&v28 - 3) = a3;
    v20 = v31;
    *(&v28 - 2) = v31;
    *(&v28 - 1) = v17;
    MEMORY[0x1EEE9AC00](v19);
    *(&v28 - 6) = a2;
    *(&v28 - 5) = a3;
    *(&v28 - 4) = v20;
    *(&v28 - 3) = sub_1ABE92650;
    *(&v28 - 2) = v21;
    swift_getAssociatedConformanceWitness();
    v22 = sub_1ABF23F94();
    v29 = &v28;
    v32 = v22;
    MEMORY[0x1EEE9AC00](v22);
    *(&v28 - 4) = a2;
    *(&v28 - 3) = a3;
    *(&v28 - 2) = v20;
    swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata2();
    v23 = sub_1ABF241F4();
    WitnessTable = swift_getWitnessTable();
    v26 = sub_1ABB66290(sub_1ABE92984, (&v28 - 6), v23, &type metadata for EntityIdentifier, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v25);

    v4 = sub_1ABE8AC38(v26);
    (*(v30 + 8))(v16, AssociatedTypeWitness);
  }

  return v4;
}

uint64_t sub_1ABE92594()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1ABF23FE4() & 1;
}

uint64_t sub_1ABE92650()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  return sub_1ABE92594();
}

uint64_t sub_1ABE9265C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 40);
  v7 = swift_checkMetadataState();
  v8 = v6(v7, AssociatedConformanceWitness);
  v10 = v9;
  if (v8 == EntityIdentifier.stringValue.getter() && v10 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1ABF25054();
  }

  return v13 & 1;
}

uint64_t sub_1ABE92778(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_1ABE92810(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  return sub_1ABE92778(a1, *(v1 + 40)) & 1;
}

uint64_t sub_1ABE92838@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = &v12 - v7;
  (*(v9 + 16))(&v12 - v7, a1, TupleTypeMetadata2);
  v10 = *(TupleTypeMetadata2 + 48);
  *a2 = *v8;
  return (*(*(AssociatedTypeWitness - 8) + 8))(&v8[v10], AssociatedTypeWitness);
}

uint64_t sub_1ABE92984@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1ABE92838(a1, a2);
}

uint64_t static TriplesQuery.Clause.matchStrings(subjectMatchType:subjects:predicateMatchType:predicates:objectMatchType:objects:relationshipIdMatchType:relationshipIds:relationshipPredicateMatchType:relationshipPredicates:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 *a10, uint64_t a11)
{
  v11 = *a3;
  v12 = *a5;
  v13 = *a7;
  v14 = *a10;
  *a9 = *a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v11;
  *(a9 + 24) = a4;
  *(a9 + 32) = v12;
  *(a9 + 40) = a6;
  *(a9 + 48) = v13;
  *(a9 + 56) = a8;
  *(a9 + 64) = v14;
  *(a9 + 72) = a11;
  *(a9 + 88) = 0;
  *(a9 + 104) = 32;
}

uint64_t static TriplesQuery.Clause.aggregate(logicFunction:clauses:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  *(a3 + 8) = a2;
  *(a3 + 88) = 0;
  *(a3 + 104) = 0;
  return sub_1ABD3C1AC();
}

uint64_t static TriplesQuery.Clause.match(subjectMatchType:subjects:subjectClauses:predicateMatchType:predicates:objectMatchType:objects:relationshipIdMatchType:relationshipIds:relationshipPredicateMatchType:relationshipPredicates:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 *a11, uint64_t a12)
{
  v12 = *a4;
  v13 = *a6;
  v14 = *a8;
  v15 = *a11;
  *a9 = *a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = v12;
  *(a9 + 32) = a5;
  *(a9 + 40) = v13;
  *(a9 + 48) = a7;
  *(a9 + 56) = v14;
  *(a9 + 64) = a10;
  *(a9 + 72) = v15;
  *(a9 + 88) = 0;
  *(a9 + 96) = 0;
  *(a9 + 80) = a12;
  *(a9 + 104) = 65;
}

uint64_t static TriplesQuery.Clause.join(joinCondition:clauses:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  *(a3 + 8) = a2;
  *(a3 + 88) = 0;
  *(a3 + 104) = -96;
  return sub_1ABD3C1AC();
}

uint64_t TriplesQuery.Clause.impl.getter()
{
  sub_1ABA7F968();
  memcpy(v0, v1, v2);
  sub_1ABA7F968();
  memcpy(v3, v4, v5);
  return sub_1ABE971E8(v8, v7);
}

void *TriplesQuery.Clause.impl.setter(const void *a1)
{
  sub_1ABA7F968();
  memcpy(v3, v4, v5);
  sub_1ABE10E28(&v7);
  return memcpy(v1, a1, 0x69uLL);
}

uint64_t TriplesQuery.Clause.TableCodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6469776F72 && a2 == 0xE500000000000000;
  if (v6 || (sub_1ABA7C038() & 1) != 0)
  {

    v8 = 0;
  }

  else
  {
    v9 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
    if (v9 || (sub_1ABA7C038() & 1) != 0)
    {

      v8 = 1;
    }

    else
    {
      v10 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
      if (v10 || (sub_1ABA7C038() & 1) != 0)
      {

        v8 = 2;
      }

      else
      {
        v12 = a1 == sub_1ABA8C830() && a2 == v11;
        if (v12 || (sub_1ABA7C038() & 1) != 0)
        {

          v8 = 3;
        }

        else
        {
          v13 = a1 == 0xD000000000000015 && 0x80000001ABF859E0 == a2;
          if (v13 || (sub_1ABA7C038() & 1) != 0)
          {

            v8 = 4;
          }

          else
          {
            v14 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
            if (v14 || (sub_1ABA7C038() & 1) != 0)
            {

              v8 = 5;
            }

            else
            {
              v15 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
              if (v15 || (sub_1ABA7C038() & 1) != 0)
              {

                v8 = 6;
              }

              else if (a1 == 0x73656372756F73 && a2 == 0xE700000000000000)
              {

                v8 = 7;
              }

              else
              {
                v17 = sub_1ABA7C038();

                if (v17)
                {
                  v8 = 7;
                }

                else
                {
                  v8 = 8;
                }
              }
            }
          }
        }
      }
    }
  }

  *a3 = v8;
  return result;
}

uint64_t TriplesQuery.Clause.TableCodingKeys.stringValue.getter()
{
  result = 0x6469776F72;
  switch(*v0)
  {
    case 1:
      result = 0x7463656A627573;
      break;
    case 2:
      result = 0x7461636964657270;
      break;
    case 3:
      result = sub_1ABA8C830();
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x7463656A626FLL;
      break;
    case 6:
      result = 0x6D617473656D6974;
      break;
    case 7:
      result = 0x73656372756F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE92F60(uint64_t a1)
{
  v2 = sub_1ABE9EC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE92F9C(uint64_t a1)
{
  v2 = sub_1ABE9EC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE92FF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7958113 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABE930C0(char a1)
{
  if (a1)
  {
    return 7958113;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_1ABE930E0(uint64_t a1)
{
  v2 = sub_1ABE972C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE9311C(uint64_t a1)
{
  v2 = sub_1ABE972C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE93158(uint64_t a1)
{
  v2 = sub_1ABE97274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE93194(uint64_t a1)
{
  v2 = sub_1ABE97274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE931F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE92FF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE93218(uint64_t a1)
{
  v2 = sub_1ABE97220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE93254(uint64_t a1)
{
  v2 = sub_1ABE97220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.Clause.AggregateLogicFunction.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DBBF0, &qword_1ABF71C90);
  v5 = sub_1ABA7BB64(v4);
  v32 = v6;
  v33 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  v31 = v10;
  v11 = sub_1ABAD219C(&qword_1EB4DBBF8, &qword_1ABF71C98);
  v12 = sub_1ABA7BB64(v11);
  v29 = v13;
  v30 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = sub_1ABAD219C(&qword_1EB4DBC00, &qword_1ABF71CA0);
  sub_1ABA7BB64(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA8176C();
  v25 = *v0;
  v26 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABE97220();
  sub_1ABF252E4();
  v27 = (v21 + 8);
  if (v25)
  {
    sub_1ABA8B6EC();
    sub_1ABE97274();
    v28 = v31;
    sub_1ABA827AC();
    sub_1ABF24EC4();
    (*(v32 + 8))(v28, v33);
  }

  else
  {
    sub_1ABE972C8();
    sub_1ABA827AC();
    sub_1ABF24EC4();
    (*(v29 + 8))(v18, v30);
  }

  (*v27)(v1, v19);
  sub_1ABA7BC90();
}

uint64_t TriplesQuery.Clause.AggregateLogicFunction.hashValue.getter()
{
  v1 = *v0;
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

void TriplesQuery.Clause.AggregateLogicFunction.init(from:)()
{
  sub_1ABA7BCA8();
  v55 = v1;
  v4 = v3;
  v52 = v5;
  v54 = sub_1ABAD219C(&qword_1EB4DBC10, &qword_1ABF71CA8);
  sub_1ABA7BB64(v54);
  v51 = v6;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7E5C0();
  v10 = sub_1ABAD219C(&qword_1EB4DBC18, &qword_1ABF71CB0);
  sub_1ABA7BB64(v10);
  v50 = v11;
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BCE0();
  v15 = sub_1ABAD219C(&qword_1EB4DBC20, &unk_1ABF71CB8);
  sub_1ABA7BB64(v15);
  v53 = v16;
  v18 = *(v17 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v47 - v20;
  v22 = v4[4];
  sub_1ABA88DCC(v4, v4[3]);
  sub_1ABE97220();
  v23 = v55;
  sub_1ABF252C4();
  if (v23)
  {
    goto LABEL_10;
  }

  v48 = v10;
  v49 = v2;
  v55 = v4;
  v24 = v54;
  v25 = sub_1ABF24EA4();
  v26 = sub_1ABAD4EA4(v25, 0);
  if (v28 == v27 >> 1)
  {
    v54 = v26;
LABEL_9:
    v42 = sub_1ABF24B44();
    swift_allocError();
    v44 = v43;
    v45 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v44 = &type metadata for TriplesQuery.Clause.AggregateLogicFunction;
    sub_1ABF24DA4();
    sub_1ABA835CC();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v53 + 8))(v21, v15);
    v4 = v55;
LABEL_10:
    sub_1ABA84B54(v4);
LABEL_11:
    sub_1ABA7BC90();
    return;
  }

  sub_1ABAB69AC();
  v47[1] = 0;
  if (v32 < (v31 >> 1))
  {
    v33 = *(v30 + v29);
    v34 = sub_1ABAD4E90(v29 + 1);
    v36 = v35;
    v38 = v37;
    swift_unknownObjectRelease();
    if (v36 == v38 >> 1)
    {
      if (v33)
      {
        sub_1ABA8B6EC();
        sub_1ABE97274();
        v39 = v0;
        sub_1ABA7E518();
        v40 = v52;
        v41 = v53;
        swift_unknownObjectRelease();
        (*(v51 + 8))(v39, v24);
      }

      else
      {
        sub_1ABE972C8();
        v46 = v49;
        sub_1ABA7E518();
        v40 = v52;
        v41 = v53;
        swift_unknownObjectRelease();
        (*(v50 + 8))(v46, v48);
      }

      (*(v41 + 8))(v21, v36);
      *v40 = v33;
      sub_1ABA84B54(v55);
      goto LABEL_11;
    }

    v54 = v34;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1ABE93980(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6469776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E6F6974616C6572 && a2 == 0xEE00644970696873)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1ABE93B28(char a1)
{
  result = 0x6469776F72;
  switch(a1)
  {
    case 1:
      result = 0x7463656A627573;
      break;
    case 2:
      result = 0x7463656A626FLL;
      break;
    case 3:
      result = 0x7461636964657270;
      break;
    case 4:
      result = 0x6E6F6974616C6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE93C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE93980(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE93C50(uint64_t a1)
{
  v2 = sub_1ABE9B280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE93C8C(uint64_t a1)
{
  v2 = sub_1ABE9B280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE93CC8(uint64_t a1)
{
  v2 = sub_1ABE9B37C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE93D04(uint64_t a1)
{
  v2 = sub_1ABE9B37C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE93D40(uint64_t a1)
{
  v2 = sub_1ABE9B328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE93D7C(uint64_t a1)
{
  v2 = sub_1ABE9B328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE93DB8(uint64_t a1)
{
  v2 = sub_1ABE9B2D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE93DF4(uint64_t a1)
{
  v2 = sub_1ABE9B2D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE93E30(uint64_t a1)
{
  v2 = sub_1ABE9B424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE93E6C(uint64_t a1)
{
  v2 = sub_1ABE9B424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE93EA8(uint64_t a1)
{
  v2 = sub_1ABE9B3D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE93EE4(uint64_t a1)
{
  v2 = sub_1ABE9B3D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.Clause.JoinCondition.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DBC28, &qword_1ABF71CC8);
  v5 = sub_1ABA7BB64(v4);
  v65 = v6;
  v66 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  v64 = v10;
  v11 = sub_1ABAD219C(&qword_1EB4DBC30, &qword_1ABF71CD0);
  v12 = sub_1ABA7BB64(v11);
  v62 = v13;
  v63 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7FBE0();
  v61 = v17;
  v18 = sub_1ABAD219C(&qword_1EB4DBC38, &qword_1ABF71CD8);
  v19 = sub_1ABA7BB64(v18);
  v59 = v20;
  v60 = v19;
  v22 = *(v21 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7FBE0();
  v58 = v24;
  v25 = sub_1ABAD219C(&qword_1EB4DBC40, &qword_1ABF71CE0);
  v26 = sub_1ABA7BB64(v25);
  v56 = v27;
  v57 = v26;
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7FBE0();
  v55 = v31;
  v32 = sub_1ABAD219C(&qword_1EB4DBC48, &qword_1ABF71CE8);
  v33 = sub_1ABA7BB64(v32);
  v53 = v34;
  v54 = v33;
  v36 = *(v35 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v52 - v38;
  v40 = sub_1ABAD219C(&qword_1EB4DBC50, &qword_1ABF71CF0);
  sub_1ABA7BB64(v40);
  v42 = v41;
  v44 = *(v43 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v45);
  sub_1ABA8176C();
  v46 = *v0;
  v47 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABE9B280();
  sub_1ABF252E4();
  v48 = (v42 + 8);
  switch(v46)
  {
    case 1:
      sub_1ABE9B3D0();
      v49 = v55;
      sub_1ABA827AC();
      sub_1ABF24EC4();
      v51 = v56;
      v50 = v57;
      goto LABEL_7;
    case 2:
      sub_1ABE9B37C();
      v49 = v58;
      sub_1ABA827AC();
      sub_1ABF24EC4();
      v51 = v59;
      v50 = v60;
      goto LABEL_7;
    case 3:
      sub_1ABE9B328();
      v49 = v61;
      sub_1ABA827AC();
      sub_1ABF24EC4();
      v51 = v62;
      v50 = v63;
      goto LABEL_7;
    case 4:
      sub_1ABA8B908();
      sub_1ABE9B2D4();
      v49 = v64;
      sub_1ABA827AC();
      sub_1ABF24EC4();
      v51 = v65;
      v50 = v66;
LABEL_7:
      (*(v51 + 8))(v49, v50);
      break;
    default:
      sub_1ABE9B424();
      sub_1ABA827AC();
      sub_1ABF24EC4();
      (*(v53 + 8))(v39, v54);
      break;
  }

  (*v48)(v1, v40);
  sub_1ABA7BC90();
}

void TriplesQuery.Clause.JoinCondition.init(from:)()
{
  sub_1ABA7BCA8();
  v5 = v4;
  v77 = v6;
  v7 = sub_1ABAD219C(&qword_1EB4DBC78, &qword_1ABF71CF8);
  v74 = sub_1ABA7BB64(v7);
  v75 = v8;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7FBE0();
  v80 = v12;
  v13 = sub_1ABAD219C(&qword_1EB4DBC80, &qword_1ABF71D00);
  v72 = sub_1ABA7BB64(v13);
  v73 = v14;
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7FBE0();
  v79 = v18;
  v19 = sub_1ABAD219C(&qword_1EB4DBC88, &qword_1ABF71D08);
  v20 = sub_1ABA7BB64(v19);
  v70 = v21;
  v71 = v20;
  v23 = *(v22 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7FBE0();
  v76 = v25;
  v26 = sub_1ABAD219C(&qword_1EB4DBC90, &qword_1ABF71D10);
  v27 = sub_1ABA7BB64(v26);
  v68 = v28;
  v69 = v27;
  v30 = *(v29 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA8176C();
  v32 = sub_1ABAD219C(&qword_1EB4DBC98, &qword_1ABF71D18);
  sub_1ABA7BB64(v32);
  v67 = v33;
  v35 = *(v34 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA7E338();
  v37 = sub_1ABAD219C(&qword_1EB4DBCA0, &unk_1ABF71D20);
  sub_1ABA7BB64(v37);
  v78 = v38;
  v40 = *(v39 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA7E5C0();
  v42 = v5[4];
  sub_1ABA88DCC(v5, v5[3]);
  sub_1ABE9B280();
  sub_1ABF252C4();
  if (v1)
  {
    goto LABEL_10;
  }

  v66 = v32;
  v43 = v79;
  v44 = v0;
  v45 = sub_1ABF24EA4();
  sub_1ABAD4EA4(v45, 0);
  if (v47 == v46 >> 1)
  {
    v48 = v78;
LABEL_9:
    v57 = sub_1ABF24B44();
    swift_allocError();
    v59 = v58;
    v60 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v59 = &type metadata for TriplesQuery.Clause.JoinCondition;
    sub_1ABF24DA4();
    sub_1ABA835CC();
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x1E69E6AF8], v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v48 + 8))(v44, v37);
LABEL_10:
    sub_1ABA84B54(v5);
LABEL_11:
    sub_1ABA8869C();
    sub_1ABA7BC90();
    return;
  }

  sub_1ABAB69AC();
  if (v52 < (v51 >> 1))
  {
    v65 = *(v50 + v49);
    sub_1ABAD4E90(v49 + 1);
    v54 = v53;
    v56 = v55;
    swift_unknownObjectRelease();
    if (v54 == v56 >> 1)
    {
      switch(v65)
      {
        case 1:
          sub_1ABE9B3D0();
          v43 = v3;
          sub_1ABA9070C();
          swift_unknownObjectRelease();
          v62 = v68;
          v61 = v69;
          goto LABEL_16;
        case 2:
          sub_1ABE9B37C();
          v43 = v76;
          sub_1ABA9070C();
          swift_unknownObjectRelease();
          v62 = v70;
          v61 = v71;
          goto LABEL_16;
        case 3:
          sub_1ABE9B328();
          sub_1ABA9070C();
          swift_unknownObjectRelease();
          v61 = v72;
          v62 = v73;
LABEL_16:
          (*(v62 + 8))(v43, v61);
          break;
        case 4:
          sub_1ABA8B908();
          sub_1ABE9B2D4();
          sub_1ABF24D94();
          swift_unknownObjectRelease();
          (*(v75 + 8))(v80, v74);
          break;
        default:
          sub_1ABE9B424();
          sub_1ABA9070C();
          swift_unknownObjectRelease();
          (*(v67 + 8))(v2, v66);
          break;
      }

      v63 = sub_1ABAA0224();
      v64(v63, v37);
      *v77 = v65;
      sub_1ABA84B54(v5);
      goto LABEL_11;
    }

    v48 = v78;
    v44 = v0;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t TriplesQuery.Clause.AggregateClause.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1ABA8B290();
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000014, 0x80000001ABF95000);
  sub_1ABA8B378();
  sub_1ABAB2C04();
  MEMORY[0x1AC5A9750](v2, &type metadata for TriplesQuery.Clause);
  sub_1ABA9F244();

  sub_1ABA7FD6C();
  return v4;
}

unint64_t TriplesQuery.Clause.ContainsClause.description.getter()
{
  v1 = v0[16];
  v2 = *(v0 + 3);
  v39 = v0[32];
  v3 = *(v0 + 5);
  v4 = *(v0 + 7);
  v5 = v0[64];
  v6 = *(v0 + 9);
  if (!*(v0 + 1))
  {
    v12 = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v37 = *(v0 + 5);
  v38 = v0[48];
  v7 = *(v0 + 7);
  v8 = *(v0 + 9);
  v9 = *v0;
  sub_1ABAA36A4();
  MEMORY[0x1AC5A9410](14963, 0xE200000000000000);
  sub_1ABA8BB60();
  v10 = sub_1ABF243A4();
  MEMORY[0x1AC5A9410](v10);

  sub_1ABAAA4F4();
  v12 = v11;
  if (*(v11 + 16) >= *(v11 + 24) >> 1)
  {
    sub_1ABA8EDD0();
    v12 = v28;
  }

  sub_1ABA90E38();
  *(v13 + 32) = v40;
  *(v13 + 40) = v41;
  v4 = v7;
  v3 = v37;
  if (v2)
  {
LABEL_7:
    sub_1ABAA36A4();
    MEMORY[0x1AC5A9410](14960, 0xE200000000000000);
    sub_1ABA8BB60();
    v14 = sub_1ABF243A4();
    MEMORY[0x1AC5A9410](v14);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA904BC();
      v12 = v29;
    }

    sub_1ABAA55BC();
    if (v15)
    {
      sub_1ABA8EDD0();
      v12 = v30;
    }

    sub_1ABA90E38();
    *(v16 + 32) = v40;
    *(v16 + 40) = v41;
  }

LABEL_12:
  if (v3)
  {
    sub_1ABAA36A4();
    MEMORY[0x1AC5A9410](14959, 0xE200000000000000);
    sub_1ABA8BB60();
    v17 = sub_1ABF243A4();
    MEMORY[0x1AC5A9410](v17);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA904BC();
      v12 = v31;
    }

    sub_1ABAA55BC();
    if (v15)
    {
      sub_1ABA8EDD0();
      v12 = v32;
    }

    sub_1ABA90E38();
    *(v18 + 32) = v40;
    *(v18 + 40) = v41;
  }

  if (v4)
  {
    sub_1ABAA36A4();
    MEMORY[0x1AC5A9410](14962, 0xE200000000000000);
    sub_1ABA8BB60();
    v19 = sub_1ABF243A4();
    MEMORY[0x1AC5A9410](v19);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA904BC();
      v12 = v33;
    }

    sub_1ABAA55BC();
    if (v15)
    {
      sub_1ABA8EDD0();
      v12 = v34;
    }

    sub_1ABA90E38();
    *(v20 + 32) = v40;
    *(v20 + 40) = v41;
  }

  if (v6)
  {
    sub_1ABAA36A4();
    MEMORY[0x1AC5A9410](3829874, 0xE300000000000000);
    sub_1ABA8BB60();
    v21 = sub_1ABF243A4();
    MEMORY[0x1AC5A9410](v21);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA904BC();
      v12 = v35;
    }

    v22 = *(v12 + 16);
    if (v22 >= *(v12 + 24) >> 1)
    {
      sub_1ABA8EDD0();
      v12 = v36;
    }

    *(v12 + 16) = v22 + 1;
    v23 = v12 + 16 * v22;
    *(v23 + 32) = v40;
    *(v23 + 40) = v41;
  }

  sub_1ABAA36A4();
  sub_1ABF24AB4();

  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABAAA5C0();
  v24 = sub_1ABF23B54();
  v26 = v25;

  MEMORY[0x1AC5A9410](v24, v26);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t TriplesQuery.Clause.MatchClause.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 4);
  v52 = v0[24];
  v53 = v0[40];
  v4 = *(v0 + 6);
  v54 = v0[56];
  v5 = *(v0 + 8);
  v6 = *(v0 + 10);
  if (!*(v0 + 1))
  {
    v14 = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v50 = *(v0 + 4);
  v51 = *(v0 + 6);
  v7 = *(v0 + 8);
  v8 = v0[72];
  v9 = *(v0 + 10);
  sub_1ABAA50C8();
  MEMORY[0x1AC5A9410](14963, 0xE200000000000000);
  sub_1ABAA0978();
  sub_1ABB668FC();
  v10 = sub_1ABF243A4();
  MEMORY[0x1AC5A9410](v10);

  v11 = v55[0];
  v12 = v55[1];
  sub_1ABAAA4F4();
  v14 = v13;
  v15 = *(v13 + 16);
  if (v15 >= *(v13 + 24) >> 1)
  {
    sub_1ABA8EDD0();
    v14 = v39;
  }

  *(v14 + 16) = v15 + 1;
  v16 = v14 + 16 * v15;
  *(v16 + 32) = v11;
  *(v16 + 40) = v12;
  v6 = v9;
  v5 = v7;
  v3 = v50;
  v4 = v51;
  if (v2)
  {
LABEL_7:
    sub_1ABAA50C8();
    MEMORY[0x1AC5A9410](14963, 0xE200000000000000);
    sub_1ABAA0978();
    v17 = MEMORY[0x1AC5A9750](v2, &type metadata for TriplesQuery.Clause);
    MEMORY[0x1AC5A9410](v17);

    v18 = v55[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA904BC();
      v14 = v40;
    }

    sub_1ABAA55BC();
    if (v19)
    {
      sub_1ABA8EDD0();
      v14 = v41;
    }

    sub_1ABA90E38();
    *(v20 + 32) = v55[0];
    *(v20 + 40) = v18;
  }

LABEL_12:
  if (v3)
  {
    sub_1ABAA50C8();
    MEMORY[0x1AC5A9410](14960, 0xE200000000000000);
    sub_1ABAA0978();
    sub_1ABAE4254();
    v21 = sub_1ABF243A4();
    MEMORY[0x1AC5A9410](v21);

    v22 = v55[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA904BC();
      v14 = v42;
    }

    sub_1ABAA55BC();
    if (v19)
    {
      sub_1ABA8EDD0();
      v14 = v43;
    }

    sub_1ABA90E38();
    *(v23 + 32) = v55[0];
    *(v23 + 40) = v22;
  }

  if (v4)
  {
    sub_1ABAA50C8();
    MEMORY[0x1AC5A9410](14959, 0xE200000000000000);
    sub_1ABAA0978();
    v24 = sub_1ABF243A4();
    MEMORY[0x1AC5A9410](v24);

    v25 = v55[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA904BC();
      v14 = v44;
    }

    sub_1ABAA55BC();
    if (v19)
    {
      sub_1ABA8EDD0();
      v14 = v45;
    }

    sub_1ABA90E38();
    *(v26 + 32) = v55[0];
    *(v26 + 40) = v25;
  }

  if (v5)
  {
    sub_1ABAA50C8();
    MEMORY[0x1AC5A9410](14962, 0xE200000000000000);
    sub_1ABAA0978();
    sub_1ABAAC184();
    v27 = sub_1ABF243A4();
    MEMORY[0x1AC5A9410](v27);

    v28 = v55[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA904BC();
      v14 = v46;
    }

    sub_1ABAA55BC();
    if (v19)
    {
      sub_1ABA8EDD0();
      v14 = v47;
    }

    sub_1ABA90E38();
    *(v29 + 32) = v55[0];
    *(v29 + 40) = v28;
  }

  if (v6)
  {
    sub_1ABAA50C8();
    MEMORY[0x1AC5A9410](3829874, 0xE300000000000000);
    sub_1ABAA0978();
    sub_1ABAE4254();
    v30 = sub_1ABF243A4();
    MEMORY[0x1AC5A9410](v30);

    v31 = v55[0];
    v32 = v55[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA904BC();
      v14 = v48;
    }

    v33 = *(v14 + 16);
    if (v33 >= *(v14 + 24) >> 1)
    {
      sub_1ABA8EDD0();
      v14 = v49;
    }

    *(v14 + 16) = v33 + 1;
    v34 = v14 + 16 * v33;
    *(v34 + 32) = v31;
    *(v34 + 40) = v32;
  }

  sub_1ABAA50C8();
  sub_1ABF24AB4();

  strcpy(v55, "<MatchClause ");
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABAAA5C0();
  v35 = sub_1ABF23B54();
  v37 = v36;

  MEMORY[0x1AC5A9410](v35, v37);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return v55[0];
}

uint64_t TriplesQuery.Clause.FullTextSearchClause.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1ABA8B290();
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000019, 0x80000001ABF95040);
  sub_1ABF243A4();
  sub_1ABA9F244();

  MEMORY[0x1AC5A9410](980709152, 0xE400000000000000);
  sub_1ABA8B378();
  sub_1ABA7FD6C();
  return v4;
}

unint64_t TriplesQuery.Clause.ComparisonClause.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  sub_1ABA8B290();
  sub_1ABF24AB4();

  sub_1ABF24314();
  sub_1ABA9F244();

  MEMORY[0x1AC5A9410](540699936, 0xE400000000000000);
  sub_1ABF23C74();
  sub_1ABA9F244();

  MEMORY[0x1AC5A9410](540697376, 0xE400000000000000);
  sub_1ABE9B478();
  sub_1ABF24FF4();
  sub_1ABA9F244();

  sub_1ABA7FD6C();
  return 0xD000000000000015;
}

uint64_t TriplesQuery.Clause.JoinClause.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1ABA8B290();
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0x616C436E696F4A3CLL, 0xEF3A63203A657375);
  sub_1ABA8B378();
  sub_1ABAB2C04();
  MEMORY[0x1AC5A9750](v2, &type metadata for TriplesQuery.Clause);
  sub_1ABA9F244();

  sub_1ABA7FD6C();
  return v4;
}

uint64_t sub_1ABE956C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461676572676761 && a2 == 0xE900000000000065;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x727453686374616DLL && a2 == 0xEC00000073676E69;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x686374616DLL && a2 == 0xE500000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x747865546C6C7566 && a2 == 0xEE00686372616553;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73697261706D6F63 && a2 == 0xEA00000000006E6FLL;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1852403562 && a2 == 0xE400000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 7105633 && a2 == 0xE300000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1ABF25054();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABE95910(char a1)
{
  result = 0x7461676572676761;
  switch(a1)
  {
    case 1:
      result = 0x727453686374616DLL;
      break;
    case 2:
      result = 0x686374616DLL;
      break;
    case 3:
      result = 0x747865546C6C7566;
      break;
    case 4:
      result = 0x73697261706D6F63;
      break;
    case 5:
      result = 1852403562;
      break;
    case 6:
      result = 7105633;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE959E4(uint64_t a1)
{
  v2 = sub_1ABE9B910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE95A20(uint64_t a1)
{
  v2 = sub_1ABE9B910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE95A5C(uint64_t a1)
{
  v2 = sub_1ABE9B520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE95A98(uint64_t a1)
{
  v2 = sub_1ABE9B520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE95ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE956C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE95B04(uint64_t a1)
{
  v2 = sub_1ABE9B4CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE95B40(uint64_t a1)
{
  v2 = sub_1ABE9B4CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE95B7C(uint64_t a1)
{
  v2 = sub_1ABE9B670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE95BB8(uint64_t a1)
{
  v2 = sub_1ABE9B670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE95BF4(uint64_t a1)
{
  v2 = sub_1ABE9B718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE95C30(uint64_t a1)
{
  v2 = sub_1ABE9B718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE95C6C(uint64_t a1)
{
  v2 = sub_1ABE9B5C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE95CA8(uint64_t a1)
{
  v2 = sub_1ABE9B5C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE95CE4(uint64_t a1)
{
  v2 = sub_1ABE9B7C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE95D20(uint64_t a1)
{
  v2 = sub_1ABE9B7C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE95D5C(uint64_t a1)
{
  v2 = sub_1ABE9B868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE95D98(uint64_t a1)
{
  v2 = sub_1ABE9B868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.Clause.Impl.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v23;
  a20 = v24;
  a10 = v21;
  v26 = v25;
  v96 = sub_1ABAD219C(&qword_1EB4DBCA8, &qword_1ABF71D30);
  sub_1ABA7BB64(v96);
  v95 = v27;
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v31);
  v94 = sub_1ABAD219C(&qword_1EB4DBCB0, &qword_1ABF71D38);
  sub_1ABA7BB64(v94);
  v93 = v32;
  v34 = *(v33 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v36);
  v92 = sub_1ABAD219C(&qword_1EB4DBCB8, &qword_1ABF71D40);
  sub_1ABA7BB64(v92);
  v91 = v37;
  v39 = *(v38 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v41);
  v90 = sub_1ABAD219C(&qword_1EB4DBCC0, &qword_1ABF71D48);
  sub_1ABA7BB64(v90);
  v89 = v42;
  v44 = *(v43 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v45);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v46);
  v88 = sub_1ABAD219C(&qword_1EB4DBCC8, &qword_1ABF71D50);
  sub_1ABA7BB64(v88);
  v87 = v47;
  v49 = *(v48 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v50);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v51);
  v86 = sub_1ABAD219C(&qword_1EB4DBCD0, &qword_1ABF71D58);
  sub_1ABA7BB64(v86);
  v85 = v52;
  v54 = *(v53 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v55);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v56);
  v57 = sub_1ABAD219C(&qword_1EB4DBCD8, &qword_1ABF71D60);
  sub_1ABA7BB64(v57);
  v84 = v58;
  v60 = *(v59 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v61);
  sub_1ABA7BCE0();
  v62 = sub_1ABAD219C(&qword_1EB4DBCE0, &qword_1ABF71D68);
  v108 = sub_1ABA7BB64(v62);
  v109 = v63;
  v65 = *(v64 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v81 - v67;
  v106 = *v20;
  v105 = v20[1];
  v69 = *(v20 + 2) | (*(v20 + 3) << 32);
  v70 = *(v20 + 2);
  v107 = *(v20 + 1);
  v71 = *(v20 + 4);
  v103 = *(v20 + 3);
  v104 = v70;
  v102 = v71;
  v72 = *(v20 + 6);
  v101 = *(v20 + 5);
  v100 = v72;
  v73 = *(v20 + 8);
  v99 = *(v20 + 7);
  v98 = v73;
  v74 = *(v20 + 10);
  v97 = *(v20 + 9);
  v83 = v74;
  v75 = *(v20 + 12);
  v82 = *(v20 + 11);
  v81 = v75;
  v76 = v20[104];
  v78 = v26[3];
  v77 = v26[4];
  sub_1ABA88DCC(v26, v78);
  sub_1ABE9B4CC();
  sub_1ABF252E4();
  switch(v76 >> 5)
  {
    case 1u:
      LOBYTE(v110) = 1;
      sub_1ABE9B868();
      sub_1ABA7EC3C(&v111);
      sub_1ABAA32E4();
      sub_1ABE9B8BC();
      sub_1ABA7AE84(&v113);
      v79 = &v112;
      break;
    case 2u:
      v57 = v76 & 0x1F;
      LOBYTE(v110) = 2;
      sub_1ABE9B7C0();
      sub_1ABA7EC3C(&v114);
      sub_1ABAA32E4();
      v120 = v83;
      v121 = v82;
      v122 = v81;
      v123 = v76 & 0x1F;
      sub_1ABE9B814();
      sub_1ABA7AE84(&v117);
      v79 = &v115;
      break;
    case 3u:
      v57 = v106 | (v105 << 8) | (v69 << 16);
      LOBYTE(v110) = 3;
      sub_1ABE9B718();
      sub_1ABA7EC3C(&v116);
      v110 = v57;
      LOBYTE(v111) = v107;
      sub_1ABE9B76C();
      sub_1ABA7AE84(&v119);
      v79 = &v118;
      break;
    case 4u:
      LOBYTE(v110) = 4;
      sub_1ABE9B670();
      sub_1ABA7EC3C(&v120);
      LOBYTE(v110) = v106 & 1;
      BYTE1(v110) = v105;
      v111 = v107;
      sub_1ABE9B6C4();
      sub_1ABA7AE84(&v122);
      v79 = &v121;
      break;
    case 5u:
      LOBYTE(v110) = 5;
      sub_1ABE9B5C8();
      sub_1ABA7EC3C(&v123);
      LOBYTE(v110) = v106;
      v111 = v107;
      sub_1ABE9B61C();
      sub_1ABA7AE84(&a9);
      v79 = &v124;
      break;
    case 6u:
      LOBYTE(v110) = 6;
      sub_1ABE9B520();
      sub_1ABA7EC3C(&a10);
      sub_1ABE9B574();
      v57 = v96;
      sub_1ABA97974();
      sub_1ABF24F84();
      v79 = &a11;
      break;
    default:
      LOBYTE(v110) = 0;
      sub_1ABE9B910();
      v77 = v108;
      v78 = v68;
      sub_1ABF24EC4();
      LOBYTE(v110) = v106 & 1;
      v111 = v107;
      sub_1ABE9B964();
      sub_1ABA97974();
      sub_1ABF24F84();
      v79 = &v110;
      break;
  }

  sub_1ABA9364C(v79);
  v80(v22, v57);
  (*(v109 + 8))(v78, v77);
  sub_1ABA7BC90();
}

void TriplesQuery.Clause.Impl.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v22;
  a20 = v23;
  a10 = v20;
  v25 = v24;
  v119 = v26;
  v114 = sub_1ABAD219C(&qword_1EB4DBD18, &qword_1ABF71D70);
  sub_1ABA7BB64(v114);
  v28 = *(v27 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7FBE0();
  v121 = v30;
  v118 = sub_1ABAD219C(&qword_1EB4DBD20, &qword_1ABF71D78);
  sub_1ABA7BB64(v118);
  v32 = *(v31 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7FBE0();
  v120 = v34;
  v117 = sub_1ABAD219C(&qword_1EB4DBD28, &qword_1ABF71D80);
  sub_1ABA7BB64(v117);
  v36 = *(v35 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7FBE0();
  v116 = sub_1ABAD219C(&qword_1EB4DBD30, &qword_1ABF71D88);
  sub_1ABA7BB64(v116);
  v39 = *(v38 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA7FBE0();
  v115 = sub_1ABAD219C(&qword_1EB4DBD38, &qword_1ABF71D90);
  sub_1ABA7BB64(v115);
  v42 = *(v41 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v43);
  sub_1ABA7FBE0();
  v113 = sub_1ABAD219C(&qword_1EB4DBD40, &qword_1ABF71D98);
  sub_1ABA7BB64(v113);
  v45 = *(v44 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v46);
  sub_1ABA7E5C0();
  v47 = sub_1ABAD219C(&qword_1EB4DBD48, &qword_1ABF71DA0);
  sub_1ABA7BB64(v47);
  v49 = *(v48 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v50);
  sub_1ABA7E338();
  v51 = sub_1ABAD219C(&qword_1EB4DBD50, &unk_1ABF71DA8);
  sub_1ABA7BB64(v51);
  v53 = v52;
  v55 = *(v54 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v56);
  sub_1ABA8176C();
  v57 = v25[4];
  v122 = v25;
  sub_1ABA88DCC(v25, v25[3]);
  sub_1ABE9B4CC();
  v58 = a10;
  sub_1ABF252C4();
  if (v58)
  {
    goto LABEL_10;
  }

  a10 = v53;
  v59 = sub_1ABF24EA4();
  sub_1ABAD4EA4(v59, 0);
  if (v61 == v60 >> 1)
  {
    v62 = a10;
LABEL_9:
    v73 = sub_1ABF24B44();
    swift_allocError();
    v75 = v74;
    v76 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v75 = &type metadata for TriplesQuery.Clause.Impl;
    sub_1ABF24DA4();
    sub_1ABA835CC();
    (*(*(v73 - 8) + 104))(v75, *MEMORY[0x1E69E6AF8], v73);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v62 + 8))(v21, v51);
LABEL_10:
    v77 = v122;
LABEL_11:
    sub_1ABA84B54(v77);
    sub_1ABA7BC90();
    return;
  }

  sub_1ABAB69AC();
  if (v66 < (v65 >> 1))
  {
    v67 = v21;
    v68 = *(v64 + v63);
    sub_1ABAD4E90(v63 + 1);
    v70 = v69;
    v72 = v71;
    swift_unknownObjectRelease();
    if (v70 == v72 >> 1)
    {
      switch(v68)
      {
        case 1:
          LOBYTE(v123) = 1;
          sub_1ABE9B868();
          sub_1ABAA42C0();
          sub_1ABE9BB5C();
          sub_1ABAA471C();
          sub_1ABE9ED08();
          swift_unknownObjectRelease();
          v103 = sub_1ABAA623C(&v131);
          v104(v103);
          v105 = sub_1ABA7FA9C();
          v106(v105);
          v99 = 0;
          v101 = v123;
          v102 = v124;
          v95 = v125;
          v96 = v126;
          v97 = v127;
          v100 = 32;
          *&v98 = v128;
          break;
        case 2:
          LOBYTE(v123) = 2;
          sub_1ABE9B7C0();
          sub_1ABAA42C0();
          sub_1ABE9BB08();
          sub_1ABAA471C();
          sub_1ABE9ED08();
          swift_unknownObjectRelease();
          v82 = sub_1ABAA623C(&a10);
          v83(v82);
          v84 = sub_1ABA7FA9C();
          v85(v84);
          v101 = v123;
          v102 = v124;
          v95 = v125;
          v96 = v126;
          v97 = v127;
          v98 = v128;
          v94 = v130;
          v99 = v129 & 1;
          v100 = v131 & 1 | 0x40;
          break;
        case 3:
          LOBYTE(v123) = 3;
          sub_1ABE9B718();
          sub_1ABAA42C0();
          sub_1ABE9BAB4();
          sub_1ABAA471C();
          sub_1ABE9ED08();
          swift_unknownObjectRelease();
          v86 = sub_1ABAA623C(&a12);
          v87(v86);
          v88 = sub_1ABA7FA9C();
          v89(v88);
          v99 = 0;
          v101 = v123;
          *&v102 = v124;
          v100 = 96;
          break;
        case 4:
          sub_1ABE9B670();
          sub_1ABAA42C0();
          sub_1ABE9BA60();
          sub_1ABAA471C();
          sub_1ABE9ED08();
          swift_unknownObjectRelease();
          v78 = sub_1ABAA623C(&a14);
          v79(v78);
          v80 = sub_1ABA7FA9C();
          v81(v80);
          v99 = 0;
          *&v102 = v124;
          v101 = (BYTE1(v123) << 8) | 4;
          v100 = 0x80;
          break;
        case 5:
          sub_1ABE9B5C8();
          sub_1ABAA3E30();
          sub_1ABE9BA0C();
          sub_1ABA8B55C();
          sub_1ABE9ED08();
          swift_unknownObjectRelease();
          sub_1ABA9364C(&a17);
          v107(v120, v118);
          v108 = sub_1ABA7FA9C();
          v109(v108);
          v99 = 0;
          v101 = 5;
          *&v102 = v124;
          v100 = -96;
          break;
        case 6:
          sub_1ABE9B520();
          sub_1ABAA3E30();
          sub_1ABE9B9B8();
          sub_1ABA8B55C();
          sub_1ABE9ED08();
          swift_unknownObjectRelease();
          sub_1ABA9364C(&a18);
          v110(v121, v114);
          v111 = sub_1ABA7FA9C();
          v112(v111);
          v99 = 0;
          v100 = -64;
          break;
        default:
          sub_1ABE9B910();
          sub_1ABAA42C0();
          sub_1ABE9BBB0();
          sub_1ABAA471C();
          sub_1ABE9ED08();
          swift_unknownObjectRelease();
          v90 = sub_1ABAA623C(&v130);
          v91(v90);
          v92 = sub_1ABA7FA9C();
          v93(v92);
          v99 = 0;
          v100 = 0;
          v101 = 0;
          *&v102 = v124;
          break;
      }

      v77 = v122;
      *v119 = v101;
      *(v119 + 8) = v102;
      *(v119 + 24) = v95;
      *(v119 + 40) = v96;
      *(v119 + 56) = v97;
      *(v119 + 72) = v98;
      *(v119 + 88) = v99;
      *(v119 + 96) = v94;
      *(v119 + 104) = v100;
      goto LABEL_11;
    }

    v62 = a10;
    v21 = v67;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1ABE97074@<X0>(void *__src@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, 0x69uLL);
  sub_1ABA7F968();
  memcpy(v6, v7, v8);
  sub_1ABAD219C(&qword_1EB4D10F8, &qword_1ABF33280);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1ABF34060;
  memcpy((v9 + 32), __src, 0x69uLL);
  sub_1ABA7F968();
  memcpy(v10, v11, v12);
  *a3 = a2;
  *(a3 + 8) = v9;
  *(a3 + 88) = 0;
  *(a3 + 104) = 0;
  sub_1ABE10DCC(__dst, v14);
  return sub_1ABE10DCC(v16, v14);
}

_BYTE *TriplesQuery.Clause.ContainsClause.init(subjectMatchType:subjects:predicateMatchType:predicates:objectMatchType:objects:relationshipIdMatchType:relationshipIds:relationshipPredicateMatchType:relationshipPredicates:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11)
{
  v11 = *a3;
  v12 = *a5;
  v13 = *a7;
  v14 = *a10;
  *a9 = *result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v11;
  *(a9 + 24) = a4;
  *(a9 + 32) = v12;
  *(a9 + 40) = a6;
  *(a9 + 48) = v13;
  *(a9 + 56) = a8;
  *(a9 + 64) = v14;
  *(a9 + 72) = a11;
  return result;
}

void TriplesQuery.Clause.MatchClause.init(subjectMatchType:subjects:subjectClauses:predicateMatchType:predicates:objectMatchType:objects:relationshipIdMatchType:relationshipIds:relationshipPredicateMatchType:relationshipPredicates:sourceMatchType:sources:)(uint64_t a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, char *a5@<X3>, uint64_t a6@<X4>, char *a7@<X5>, uint64_t a8@<X6>, char *a9@<X7>, uint64_t a10, char *a11, uint64_t a12, char *a13, uint64_t a14)
{
  v14 = *a2;
  v15 = *a5;
  v16 = *a7;
  v17 = *a9;
  v18 = *a11;
  v19 = *a13;
  *a1 = v14;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = v15;
  *(a1 + 32) = a6;
  *(a1 + 40) = v16;
  *(a1 + 48) = a8;
  *(a1 + 56) = v17;
  *(a1 + 64) = a10;
  *(a1 + 72) = v18;
  *(a1 + 80) = a12;
  *(a1 + 88) = v19;
  *(a1 + 96) = a14;
  sub_1ABAA0634(a1);
}

unint64_t sub_1ABE97220()
{
  result = qword_1EB4CF510;
  if (!qword_1EB4CF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF510);
  }

  return result;
}

unint64_t sub_1ABE97274()
{
  result = qword_1EB4DBC08;
  if (!qword_1EB4DBC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBC08);
  }

  return result;
}

unint64_t sub_1ABE972C8()
{
  result = qword_1EB4CF4F8;
  if (!qword_1EB4CF4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4F8);
  }

  return result;
}

uint64_t static TriplesQuery.Clause.fullTextSearch(objects:objectSearchType:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = a1;
  *(a3 + 8) = v3;
  *(a3 + 88) = 0;
  *(a3 + 104) = 96;
}

uint64_t TriplesQuery.Clause.FullTextSearchClause.init(objects:objectSearchType:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

void static TriplesQuery.Clause.comparison(column:matchType:value:)(uint64_t a1@<X8>, unsigned __int8 *a2@<X0>, unsigned __int8 *a3@<X1>, double a4@<D0>)
{
  *a1 = *a2 | (*a3 << 8);
  *(a1 + 8) = a4;
  *(a1 + 88) = 0;
  sub_1ABAA0634(a1);
}

_BYTE *TriplesQuery.Clause.ComparisonClause.init(column:matchType:value:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *a2;
  *a3 = *result;
  *(a3 + 1) = v4;
  *(a3 + 8) = a4;
  return result;
}

uint64_t TriplesQuery.Clause.description.getter()
{
  v3 = 0;
  v4 = 0xE000000000000000;
  MEMORY[0x1AC5A9410](60, 0xE100000000000000);
  memcpy(v2, v0, sizeof(v2));
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return v3;
}

uint64_t sub_1ABE97410(uint64_t a1)
{
  v2 = sub_1ABE9BC04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE9744C(uint64_t a1)
{
  v2 = sub_1ABE9BC04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.Clause.encode(to:)()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v2 = sub_1ABAD219C(&qword_1EB4DBD90, &qword_1ABF71DB8);
  sub_1ABA7BB64(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15[-v8 - 8];
  sub_1ABA7F968();
  memcpy(v10, v11, v12);
  v13 = v1[4];
  sub_1ABA88DCC(v1, v1[3]);
  sub_1ABE971E8(v17, v16);
  sub_1ABE9BC04();
  sub_1ABF252E4();
  memcpy(v16, v17, 0x69uLL);
  sub_1ABE9BC58();
  sub_1ABF24F84();
  memcpy(v15, v16, 0x69uLL);
  sub_1ABE4C0EC(v15);
  (*(v4 + 8))(v9, v2);
  sub_1ABA7BC90();
}

void TriplesQuery.Clause.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA95324();
  v3 = sub_1ABAD219C(&qword_1EB4DBD98, &qword_1ABF71DC0);
  sub_1ABA7BB64(v3);
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABE9BC04();
  sub_1ABA8387C();
  if (!v1)
  {
    sub_1ABE9BCAC();
    sub_1ABA827AC();
    sub_1ABA88658();
    sub_1ABF24E64();
    v7 = sub_1ABA7BFF0();
    v8(v7);
    memcpy(v2, v9, 0x69uLL);
  }

  sub_1ABA84B54(v0);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABE97778(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E75466369676F6CLL && a2 == 0xED00006E6F697463;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73657375616C63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABE97848(char a1)
{
  if (a1)
  {
    return 0x73657375616C63;
  }

  else
  {
    return 0x6E75466369676F6CLL;
  }
}

uint64_t sub_1ABE97894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE97778(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE978BC(uint64_t a1)
{
  v2 = sub_1ABE9BD00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE978F8(uint64_t a1)
{
  v2 = sub_1ABE9BD00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.Clause.AggregateClause.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DBDA8, &qword_1ABF71DC8);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7E338();
  v10 = *v0;
  v15 = *(v0 + 1);
  v11 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABE9BD00();
  sub_1ABA8D27C();
  sub_1ABE9BD54();
  sub_1ABA7BF34();
  sub_1ABF24F84();
  if (!v1)
  {
    sub_1ABAA0378();
    sub_1ABAD219C(&qword_1EB4DBDB0, &qword_1ABF71DD0);
    sub_1ABE9BDA8();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  v12 = *(v6 + 8);
  v13 = sub_1ABA7D0EC();
  v14(v13);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void TriplesQuery.Clause.AggregateClause.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1ABA7BCA8();
  sub_1ABA95324();
  v16 = sub_1ABAD219C(&qword_1EB4DBDB8, &qword_1ABF71DD8);
  sub_1ABA7BB64(v16);
  v18 = *(v17 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABE9BD00();
  sub_1ABA8387C();
  if (!v14)
  {
    sub_1ABE9BE80();
    sub_1ABA827AC();
    sub_1ABA88658();
    sub_1ABF24E64();
    sub_1ABAD219C(&qword_1EB4DBDB0, &qword_1ABF71DD0);
    sub_1ABE9BED4();
    sub_1ABAB53EC();
    sub_1ABF24E64();
    v20 = sub_1ABA7BFF0();
    v21(v20);
    *v15 = a13;
    *(v15 + 8) = v22;
  }

  sub_1ABA84B54(v13);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

uint64_t TriplesQuery.Clause.JoinClause.clauses.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t TriplesQuery.Clause.JoinClause.shortDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  MEMORY[0x1AC5A9410](3826492, 0xE300000000000000);
  sub_1ABA8B378();
  sub_1ABAB2C04();
  MEMORY[0x1AC5A9750](v2, &type metadata for TriplesQuery.Clause);
  sub_1ABA9F244();

  sub_1ABA7FD6C();
  return 0;
}

uint64_t sub_1ABE97D4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E6F436E696F6ALL && a2 == 0xED00006E6F697469;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73657375616C63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABE97E1C(char a1)
{
  if (a1)
  {
    return 0x73657375616C63;
  }

  else
  {
    return 0x646E6F436E696F6ALL;
  }
}

uint64_t sub_1ABE97E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE97D4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE97E90(uint64_t a1)
{
  v2 = sub_1ABE9BFAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE97ECC(uint64_t a1)
{
  v2 = sub_1ABE9BFAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.Clause.JoinClause.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DBDD8, &qword_1ABF71DE0);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7E338();
  v10 = *v0;
  v15 = *(v0 + 1);
  v11 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABE9BFAC();
  sub_1ABA8D27C();
  sub_1ABE9C000();
  sub_1ABA7BF34();
  sub_1ABF24F84();
  if (!v1)
  {
    sub_1ABAA0378();
    sub_1ABAD219C(&qword_1EB4DBDB0, &qword_1ABF71DD0);
    sub_1ABE9BDA8();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  v12 = *(v6 + 8);
  v13 = sub_1ABA7D0EC();
  v14(v13);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void TriplesQuery.Clause.JoinClause.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1ABA7BCA8();
  sub_1ABA95324();
  v16 = sub_1ABAD219C(&qword_1EB4DBDE0, &qword_1ABF71DE8);
  sub_1ABA7BB64(v16);
  v18 = *(v17 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABE9BFAC();
  sub_1ABA8387C();
  if (!v14)
  {
    sub_1ABE9C054();
    sub_1ABA827AC();
    sub_1ABA88658();
    sub_1ABF24E64();
    sub_1ABAD219C(&qword_1EB4DBDB0, &qword_1ABF71DD0);
    sub_1ABE9BED4();
    sub_1ABAB53EC();
    sub_1ABF24E64();
    v20 = sub_1ABA7BFF0();
    v21(v20);
    *v15 = a13;
    *(v15 + 8) = v22;
  }

  sub_1ABA84B54(v13);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

uint64_t TriplesQuery.Clause.ContainsClause.subjects.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t TriplesQuery.Clause.ContainsClause.predicates.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t TriplesQuery.Clause.ContainsClause.objects.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t TriplesQuery.Clause.ContainsClause.relationshipIds.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t TriplesQuery.Clause.ContainsClause.relationshipPredicates.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_1ABE984A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001ABF95080 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x737463656A627573 && a2 == 0xE800000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001ABF950A0 == a2;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7461636964657270 && a2 == 0xEA00000000007365;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x614D7463656A626FLL && a2 == 0xEF65707954686374;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x737463656A626FLL && a2 == 0xE700000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x80000001ABF950C0 == a2;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6F6974616C6572 && a2 == 0xEF73644970696873;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001ELL && 0x80000001ABF950E0 == a2;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000016 && 0x80000001ABF95100 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1ABF25054();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABE987C4(char a1)
{
  result = 0x737463656A627573;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x7461636964657270;
      break;
    case 4:
      result = 0x614D7463656A626FLL;
      break;
    case 5:
      result = 0x737463656A626FLL;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x6E6F6974616C6572;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1ABE98920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE984A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE98948(uint64_t a1)
{
  v2 = sub_1ABE9C0A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE98984(uint64_t a1)
{
  v2 = sub_1ABE9C0A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.Clause.ContainsClause.encode(to:)()
{
  sub_1ABA7BCA8();
  v29 = v1;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DBDF0, &unk_1ABF71DF0);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = *v0;
  v13 = *(v0 + 1);
  v31 = v0[16];
  v27 = *(v0 + 3);
  v28 = v13;
  v26 = v0[32];
  v25 = *(v0 + 5);
  v24 = v0[48];
  v23 = *(v0 + 7);
  v22 = v0[64];
  v14 = *(v0 + 9);
  v15 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABE9C0A8();
  sub_1ABF252E4();
  LOBYTE(v30) = v12;
  sub_1ABE9C0FC();
  sub_1ABA976D8();
  v16 = v29;
  sub_1ABF24F84();
  if (v16)
  {
    (*(v6 + 8))(v11, v4);
  }

  else
  {
    v17 = v27;
    v29 = v14;
    v30 = v28;
    sub_1ABA8B6EC();
    sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
    sub_1ABA997A8(&qword_1EB4CF7F8);
    sub_1ABA976D8();
    sub_1ABAB51C8();
    LOBYTE(v30) = v31;
    sub_1ABA976D8();
    v28 = v4;
    sub_1ABAA009C();
    v30 = v17;
    sub_1ABA94DCC();
    sub_1ABAB51C8();
    LOBYTE(v30) = v26;
    sub_1ABA8B908();
    sub_1ABA94DCC();
    sub_1ABAA009C();
    v30 = v25;
    sub_1ABA94DCC();
    sub_1ABAB51C8();
    LOBYTE(v30) = v24;
    sub_1ABA94DCC();
    sub_1ABAA009C();
    v30 = v23;
    sub_1ABA94DCC();
    sub_1ABAB51C8();
    LOBYTE(v30) = v22;
    sub_1ABA94DCC();
    sub_1ABAA009C();
    v19 = v28;
    v30 = v29;
    sub_1ABA976D8();
    sub_1ABAB51C8();
    v20 = sub_1ABAA0224();
    v18(v20, v19);
  }

  sub_1ABA7BC90();
}

void TriplesQuery.Clause.ContainsClause.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4DBDF8, &qword_1ABF71E00);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v11 = v2[3];
  v12 = v2[4];
  sub_1ABA88DCC(v2, v11);
  sub_1ABE9C0A8();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA93A7C();
    sub_1ABAB6840();
    sub_1ABA84B54(v2);
    LOBYTE(v31) = 0;
    *(&v31 + 1) = *v49;
    HIDWORD(v31) = *&v49[3];
    v32 = 0;
    v33 = v4;
    *v34 = *v48;
    *&v34[3] = *&v48[3];
    v35 = v11;
    v36 = v7;
    *v37 = *v47;
    *&v37[3] = *&v47[3];
    v38 = v12;
    v39 = v0;
    *&v40[3] = *&v46[3];
    *v40 = *v46;
    v41 = v2;
    v42 = v26;
    *&v43[3] = *&v45[3];
    *v43 = *v45;
    v44 = 0;
  }

  else
  {
    LOBYTE(v28[0]) = 0;
    sub_1ABE9C150();
    sub_1ABA7C894();
    sub_1ABF24E64();
    v25 = v31;
    sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
    sub_1ABA955CC(1);
    sub_1ABA84440(&unk_1ED86B980);
    sub_1ABA8E538();
    sub_1ABF24DF4();
    v24 = v31;
    sub_1ABA955CC(2);
    sub_1ABA7C894();
    sub_1ABF24E64();
    v23 = v4;
    sub_1ABA955CC(3);
    sub_1ABA8E538();
    sub_1ABF24DF4();
    sub_1ABA955CC(4);
    sub_1ABA7C894();
    sub_1ABF24E64();
    v22 = v31;
    sub_1ABA955CC(5);
    sub_1ABA8E538();
    sub_1ABF24DF4();
    v21 = v31;
    v13 = v31;
    sub_1ABA955CC(6);
    sub_1ABA7C894();
    sub_1ABF24E64();
    v20 = v31;
    v14 = v31;
    sub_1ABA955CC(7);
    sub_1ABA8E538();
    sub_1ABF24DF4();
    v19 = v31;
    sub_1ABA955CC(8);
    sub_1ABA7C894();
    sub_1ABF24E64();
    v27 = v31;
    v29 = 9;
    sub_1ABF24DF4();
    v15 = *(v7 + 8);
    v16 = sub_1ABA805B4();
    v17(v16);
    v18 = v30;
    LOBYTE(v28[0]) = v25;
    v28[1] = v24;
    LOBYTE(v28[2]) = v22;
    v28[3] = v21;
    LOBYTE(v28[4]) = v20;
    v28[5] = v13;
    LOBYTE(v28[6]) = v14;
    v28[7] = v19;
    LOBYTE(v28[8]) = v27;
    v28[9] = v30;
    memcpy(v23, v28, 0x50uLL);
    sub_1ABE9C1A4(v28, &v31);
    sub_1ABA84B54(v2);
    LOBYTE(v31) = v25;
    v32 = v24;
    v33 = v22;
    v35 = v21;
    v36 = v20;
    v38 = v13;
    v39 = v14;
    v41 = v19;
    v42 = v27;
    v44 = v18;
  }

  sub_1ABB420A4(&v31);
  sub_1ABA7BC90();
}

uint64_t sub_1ABE99340(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001ABF95080 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x737463656A627573 && a2 == 0xE800000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x437463656A627573 && a2 == 0xEE0073657375616CLL;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001ABF950A0 == a2;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7461636964657270 && a2 == 0xEA00000000007365;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x614D7463656A626FLL && a2 == 0xEF65707954686374;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x737463656A626FLL && a2 == 0xE700000000000000;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x80000001ABF950C0 == a2;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E6F6974616C6572 && a2 == 0xEF73644970696873;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001ELL && 0x80000001ABF950E0 == a2;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000016 && 0x80000001ABF95100 == a2;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x614D656372756F73 && a2 == 0xEF65707954686374;
                        if (v16 || (sub_1ABF25054() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x73656372756F73 && a2 == 0xE700000000000000)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1ABF25054();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABE99740(char a1)
{
  result = 0x737463656A627573;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x437463656A627573;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x7461636964657270;
      break;
    case 5:
      v3 = 0x7463656A626FLL;
      goto LABEL_11;
    case 6:
      result = 0x737463656A626FLL;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0x6E6F6974616C6572;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      v3 = 0x656372756F73;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x614D000000000000;
      break;
    case 12:
      result = 0x73656372756F73;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1ABE998E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE99340(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE99910(uint64_t a1)
{
  v2 = sub_1ABE9C1DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE9994C(uint64_t a1)
{
  v2 = sub_1ABE9C1DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.Clause.MatchClause.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4DBE08, &qword_1ABF71E08);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E338();
  v11 = *v0;
  v23 = *(v0 + 2);
  v24 = *(v0 + 1);
  v22 = v0[24];
  v25 = v0[40];
  v20 = *(v0 + 6);
  v21 = *(v0 + 4);
  v19 = v0[56];
  v18 = *(v0 + 8);
  v17 = v0[72];
  v16 = *(v0 + 10);
  v15 = v0[88];
  v14 = *(v0 + 12);
  v12 = v0[104];
  v13 = v4[4];
  sub_1ABA88DCC(v4, v4[3]);
  sub_1ABE9C1DC();
  sub_1ABF252E4();
  sub_1ABE9C0FC();
  sub_1ABA976D8();
  sub_1ABF24F84();
  if (!v1)
  {
    sub_1ABA8B6EC();
    sub_1ABAD219C(&unk_1EB4DB8E0, &unk_1ABF50A20);
    sub_1ABE9C230();
    sub_1ABA976D8();
    sub_1ABA82FCC();
    sub_1ABF24F14();
    sub_1ABAD219C(&qword_1EB4DBDB0, &qword_1ABF71DD0);
    sub_1ABE9BDA8();
    sub_1ABA976D8();
    sub_1ABA82FCC();
    sub_1ABF24F14();
    sub_1ABA976D8();
    sub_1ABA82FCC();
    sub_1ABF24F84();
    sub_1ABA8B908();
    sub_1ABAD219C(&qword_1EB4DA310, &qword_1ABF656F0);
    sub_1ABE9C2B4();
    sub_1ABA976D8();
    sub_1ABA82FCC();
    sub_1ABF24F14();
    sub_1ABA94DCC();
    sub_1ABA82FCC();
    sub_1ABF24F84();
    sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
    sub_1ABA997A8(&qword_1EB4CF7F8);
    sub_1ABA94DCC();
    sub_1ABA82FCC();
    sub_1ABF24F14();
    sub_1ABA94DCC();
    sub_1ABA82FCC();
    sub_1ABF24F84();
    sub_1ABAD219C(&qword_1EB4DBE20, &qword_1ABF71E10);
    sub_1ABE9C338();
    sub_1ABA94DCC();
    sub_1ABA82FCC();
    sub_1ABF24F14();
    sub_1ABA94DCC();
    sub_1ABA82FCC();
    sub_1ABF24F84();
    sub_1ABA976D8();
    sub_1ABA82FCC();
    sub_1ABF24F14();
    sub_1ABA94DCC();
    sub_1ABF24F84();
    sub_1ABF24F24();
  }

  (*(v7 + 8))(v2, v5);
  sub_1ABA7BC90();
}

void TriplesQuery.Clause.MatchClause.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v5 = v4;
  v25 = sub_1ABAD219C(&qword_1EB4DBE30, &qword_1ABF71E18);
  sub_1ABA7BB64(v25);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BCE0();
  v41 = 1;
  v9 = v3[4];
  v26 = v3;
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABE9C1DC();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA7E118();
    sub_1ABAB55B4();
    sub_1ABA84B54(v3);
    LOBYTE(v33) = 0;
    sub_1ABE9ED14();
    v34 = 0;
    v35 = 0;
    sub_1ABA9706C();
    v36 = v9;
    sub_1ABAB66A4();
    v37 = v5;
    v38 = v1;
    sub_1ABAA2A78();
    v39 = 0;
    v18 = v41;
  }

  else
  {
    sub_1ABE9C150();
    sub_1ABAB5E28();
    sub_1ABF24E64();
    v24 = v33;
    sub_1ABAD219C(&unk_1EB4DB8E0, &unk_1ABF50A20);
    sub_1ABE9C3BC();
    sub_1ABA81D60();
    sub_1ABF24DF4();
    v23 = v33;
    sub_1ABAD219C(&qword_1EB4DBDB0, &qword_1ABF71DD0);
    sub_1ABE9BED4();
    sub_1ABA81D60();
    sub_1ABF24DF4();
    v22 = v33;
    sub_1ABA8C484();
    sub_1ABF24E64();
    v21 = v33;
    sub_1ABAD219C(&qword_1EB4DA310, &qword_1ABF656F0);
    sub_1ABE9C440();
    sub_1ABAB5E28();
    sub_1ABAB53EC();
    sub_1ABF24DF4();
    sub_1ABA8C484();
    sub_1ABF24E64();
    v20 = v33;
    v10 = v33;
    sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
    sub_1ABA84440(&unk_1ED86B980);
    sub_1ABA81D60();
    sub_1ABF24DF4();
    v11 = v5;
    v12 = v33;
    sub_1ABA8C484();
    sub_1ABF24E64();
    v19 = v33;
    sub_1ABAD219C(&qword_1EB4DBE20, &qword_1ABF71E10);
    sub_1ABE9C4C4();
    sub_1ABA81D60();
    sub_1ABF24DF4();
    v28 = v33;
    sub_1ABA8C484();
    sub_1ABF24E64();
    v27 = v33;
    sub_1ABAB5E28();
    sub_1ABA97974();
    sub_1ABF24DF4();
    v30 = v33;
    v31[0] = 11;
    sub_1ABAB5E28();
    sub_1ABA97974();
    sub_1ABF24E64();
    v29 = v33;
    v32 = 12;
    sub_1ABA97974();
    v13 = sub_1ABF24E04();
    v15 = v14;
    v16 = sub_1ABAA2084();
    v17(v16);
    v41 = v15 & 1;
    v31[0] = v24;
    *&v31[8] = v23;
    *&v31[16] = v22;
    v31[24] = v21;
    *&v31[32] = v20;
    v31[40] = v10;
    *&v31[48] = v12;
    v31[56] = v19;
    *&v31[64] = v28;
    v31[72] = v27;
    *&v31[80] = v30;
    v31[88] = v29;
    *&v31[96] = v13;
    v31[104] = v15 & 1;
    memcpy(v11, v31, 0x69uLL);
    sub_1ABE9C548(v31, &v33);
    sub_1ABA84B54(v26);
    LOBYTE(v33) = v24;
    sub_1ABE9ED14();
    v34 = v23;
    v35 = v22;
    sub_1ABA9706C();
    v36 = v20;
    sub_1ABAB66A4();
    v37 = v12;
    v38 = v19;
    sub_1ABAA2A78();
    v39 = v13;
    v18 = v15 & 1;
  }

  v40 = v18;
  sub_1ABE47224(&v33);
  sub_1ABA7BC90();
}