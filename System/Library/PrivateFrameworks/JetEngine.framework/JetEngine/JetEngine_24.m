uint64_t sub_1AB1DE09C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AB0165C4(v2, v5);
  return ScalarDictionary.Value.init(rawValue:)(v5, a1);
}

void sub_1AB1DE0FC(void *a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  if (a2 != 2)
  {
    goto LABEL_5;
  }

  v5 = sub_1AB460514();
  v6 = [a1 valueForProperty_];

  if (v6)
  {
    if (sub_1AB356FBC() == 6)
    {
      sub_1AB0C3EF0();
      v7 = swift_allocError();
      v9 = v8;
      v10 = v6;
      JSError.init(badValue:expected:)(v10, 1313821514, 0xE400000000000000, v9);
      swift_willThrow();

LABEL_5:
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }

    v11 = v6;
    v12 = sub_1AB1DF338(v11);
    v14 = v13;
    *(a3 + 24) = &type metadata for DirectValue;
    *(a3 + 32) = &off_1F1FFB710;

    *a3 = v12;
    *(a3 + 8) = v14;
  }

  else
  {
    __break(1u);
  }
}

void sub_1AB1DE218(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1AB460514();
  v5 = [a3 hasProperty_];

  if (v5)
  {
    v6 = sub_1AB460514();
    v7 = [a3 valueForProperty_];

    if (v7)
    {
      sub_1AB356FBC();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1AB1DE2D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 isString])
  {
    result = sub_1AB29FB48();
    if (v5)
    {
      *(a2 + 24) = MEMORY[0x1E69E6158];
      *a2 = result;
      *(a2 + 8) = v5;
      return result;
    }
  }

  else if ([a1 isNumber])
  {
    result = [a1 toNumber];
    if (result)
    {
      v6 = result;
      result = sub_1AB016760(0, &qword_1ED4D1940);
      *(a2 + 24) = result;
      *a2 = v6;
      return result;
    }
  }

  else
  {
    if ([a1 isArray])
    {
      goto LABEL_8;
    }

    if ([a1 isBoolean])
    {
      result = [a1 toBool];
      *(a2 + 24) = MEMORY[0x1E69E6370];
      *a2 = result;
      return result;
    }

    if ([a1 isNull])
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      result = sub_1AB016760(0, &qword_1ED4D1D80);
      *(a2 + 24) = result;
      *a2 = v7;
      return result;
    }

    result = JSValue.isJSONObject.getter();
    if (result)
    {
LABEL_8:
      sub_1AB0890D8(a1, v13);
      sub_1AB014A58(v13, v10, &qword_1EB436BA0);
      v8 = v11;
      if (v11)
      {
        v9 = v12;
        __swift_project_boxed_opaque_existential_1Tm(v10, v11);
        (*(v9 + 120))(v8, v9);
        sub_1AB066D84(v13);
        return __swift_destroy_boxed_opaque_existential_1Tm(v10);
      }

      sub_1AB066D84(v13);
      result = sub_1AB014AC0(v10, &qword_1EB436BA0);
    }
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id sub_1AB1DE708(void *a1)
{
  v1 = a1;
  if (![v1 isString])
  {

    return 0;
  }

  result = [v1 context];
  if (result)
  {
    v3 = result;
    v4 = [result JSGlobalContextRef];

    v5 = JSValueToStringCopy(v4, [v1 JSValueRef], 0);
    if (v5)
    {
      v6 = v5;

      v7 = sub_1AB158D50(v6);
      JSStringRelease(v6);
      return v7;
    }

    sub_1AB0C3EF0();
    v8 = swift_allocError();
    JSError.init(badValue:expected:)(v1, 0x676E69727453, 0xE600000000000000, v9);
    swift_willThrow();
    v10 = [v1 toString];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1AB460544();

      return v12;
    }

    return 0;
  }

  __break(1u);
  return result;
}

id sub_1AB1DE878(void *a1)
{
  if ([a1 isNumber])
  {
    return [a1 toInt32];
  }

  if (![a1 isNumber])
  {
    return 0;
  }

  result = [a1 toNumber];
  if (result)
  {
    v3 = result;
    v4 = [result integerValue];

    return v4;
  }

  return result;
}

id sub_1AB1DE91C(void *a1)
{
  if ([a1 isNumber])
  {
    return [a1 toUInt32];
  }

  if (![a1 isNumber])
  {
    return 0;
  }

  result = [a1 toNumber];
  if (result)
  {
    v3 = result;
    v4 = [result unsignedIntegerValue];

    return v4;
  }

  return result;
}

id sub_1AB1DE9C0(void *a1)
{
  if ([a1 isNumber])
  {
    [a1 toDouble];
    return v2;
  }

  else if ([a1 isNumber])
  {
    result = [a1 toNumber];
    if (result)
    {
      v4 = result;
      [result doubleValue];
      v6 = v5;

      return v6;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1AB1DEA6C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  if (([v3 isString] & 1) == 0)
  {
    if ([v3 isNumber])
    {

      if ([v3 isNumber])
      {
        v13 = [v3 toNumber];
      }

      else
      {
        v13 = 0;
      }

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4383C0);
      v27[0] = v13;
      goto LABEL_24;
    }

    if ([v3 isArray])
    {

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437EF8);
      v14 = swift_allocObject();
      v27[0] = v14;
      if ([v3 isArray])
      {
        JSValue.array.getter();
        v16 = v15;
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4383B8);
        v18 = &off_1F2000AF8;
        v19 = sub_1AB384D5C;
      }

      else
      {
        v16 = 0;
        v19 = 0;
        v17 = 0;
        v18 = 0;
      }

      v14[2] = v16;
      v14[3] = v19;
      v14[4] = 0;
      v14[5] = v17;
    }

    else
    {
      if ([v3 isBoolean])
      {

        v20 = [v3 toBool];
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4383B0);
        LOBYTE(v27[0]) = v20;
        goto LABEL_24;
      }

      if ([v3 isNull] || (JSValue.isJSONObject.getter() & 1) == 0)
      {

        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = -1;
        return;
      }

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BC0);
      v14 = swift_allocObject();
      v27[0] = v14;
      if ([v3 isObject])
      {
        v18 = &off_1F20155B8;
        v26 = &type metadata for DirectDictionary;
      }

      else
      {

        v3 = 0;
        v26 = 0;
        v18 = 0;
        v14[3] = 0;
        v14[4] = 0;
      }

      v14[2] = v3;
      v14[5] = v26;
    }

    v14[6] = v18;
    goto LABEL_24;
  }

  v4 = v3;
  if (![v4 isString])
  {

LABEL_10:
    v10 = 0;
    v12 = 0;
    goto LABEL_11;
  }

  v5 = [v4 context];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 JSGlobalContextRef];

  v8 = JSValueToStringCopy(v7, [v4 JSValueRef], 0);
  if (!v8)
  {
    sub_1AB0C3EF0();
    v21 = swift_allocError();
    JSError.init(badValue:expected:)(v4, 0x676E69727453, 0xE600000000000000, v22);
    swift_willThrow();
    v23 = [v4 toString];
    if (v23)
    {
      v24 = v23;
      v10 = sub_1AB460544();
      v12 = v25;

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = v8;

  v10 = sub_1AB158D50(v9);
  v12 = v11;
  JSStringRelease(v9);
LABEL_11:
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AC0);
  v27[0] = v10;
  v27[1] = v12;
LABEL_24:
  ScalarDictionary.Value.init(rawValue:)(v27, a2);
}

id sub_1AB1DEE4C()
{
  v1 = *v0;
  if ([*v0 isNumber])
  {
    return [v1 toNumber];
  }

  else
  {
    return 0;
  }
}

id sub_1AB1DEEF8(uint64_t a1, uint64_t a2, const char **a3)
{
  v5 = *v3;
  if (![v5 isNumber])
  {
    return 0;
  }

  result = [v5 toNumber];
  if (result)
  {
    v7 = *a3;
    v8 = result;
    v9 = [result v7];

    return v9;
  }

  return result;
}

unint64_t sub_1AB1DEF74()
{
  v1 = *v0;
  if ([*v0 isNumber] && (v2 = objc_msgSend(v1, sel_toNumber)) != 0)
  {
    v3 = v2;
    [v2 floatValue];
    v5 = v4;

    v6 = 0;
    v7 = v5;
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  return v7 | (v6 << 32);
}

uint64_t sub_1AB1DF0D0()
{
  v1 = *v0;
  if ([*v0 isNull])
  {
    return 1;
  }

  else
  {
    return [v1 isUndefined];
  }
}

uint64_t sub_1AB1DF140@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 toDate];
  if (v3)
  {
    v4 = v3;
    sub_1AB45F984();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1AB45F9B4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1AB1DF1E4@<X0>(void *a1@<X8>)
{
  if ([*v1 isArray])
  {
    JSValue.array.getter();
    v4 = v3;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4383B8);
    v6 = &off_1F2000AF8;
    v7 = sub_1AB384D5C;
  }

  else
  {
    v4 = 0;
    v7 = 0;
    result = 0;
    v6 = 0;
  }

  *a1 = v4;
  a1[1] = v7;
  a1[2] = 0;
  a1[3] = result;
  a1[4] = v6;
  return result;
}

void sub_1AB1DF270(void *a1@<X8>)
{
  v3 = *v1;
  if ([v3 isObject])
  {
    v4 = &off_1F20155B8;
    v5 = &type metadata for DirectDictionary;
  }

  else
  {

    v3 = 0;
    v5 = 0;
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v5;
  a1[4] = v4;
}

void *sub_1AB1DF308()
{
  v1 = *v0;
  v2 = v1;
  return v1;
}

id sub_1AB1DF338(void *a1)
{
  v1 = a1;
  if (![v1 isString] && (objc_msgSend(v1, sel_isNumber) & 1) == 0 && !objc_msgSend(v1, sel_isArray) && !objc_msgSend(v1, sel_isBoolean) && !objc_msgSend(v1, sel_isNull))
  {
    JSValue.isJSONObject.getter();
  }

  return v1;
}

uint64_t sub_1AB1DF418(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1AB1DF460(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB1DF4C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4383C8);
  swift_allocObject();
  result = sub_1AB4622D4();
  qword_1EB4332C0 = result;
  return result;
}

JetEngine::JSTimeoutError __swiftcall JSTimeoutError.init(requestDescription:timeoutInterval:)(Swift::String requestDescription, Swift::Double timeoutInterval)
{
  v3 = v2;
  *(v2 + 8) = requestDescription;
  *(v2 + 24) = timeoutInterval;
  v4 = sub_1AB1DF66C();
  *v3 = v4 & 1;
  result.timeoutInterval = v7;
  result.requestDescription._object = v6;
  result.requestDescription._countAndFlagsBits = v5;
  result._likelyHadNetworkConnection = v4;
  return result;
}

uint64_t JSTimeoutError.requestDescription.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t JSTimeoutError.errorDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x2074736575716552, 0xED00006020726F66);
  MEMORY[0x1AC59BA20](v1, v2);
  MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB502440);
  sub_1AB460E04();
  MEMORY[0x1AC59BA20](115, 0xE100000000000000);
  return 0;
}

NSObject *sub_1AB1DF66C()
{
  if (qword_1EB4332C8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AB4622E4();
  v1 = v4;
  if (v4)
  {
    v4(&v4, v0);
    sub_1AB0177B8(v1);
    return v4;
  }

  result = nw_path_create_default_evaluator();
  if (result)
  {
    result = nw_path_evaluator_copy_path();
    if (result)
    {
      status = nw_path_get_status(result);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return (((status - 1) & 0xFFFFFFFD) == 0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1AB1DF74C()
{
  result = qword_1EB433930;
  if (!qword_1EB433930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433930);
  }

  return result;
}

uint64_t sub_1AB1DF7A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1AB1DF7E8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1AB1DF838()
{
  MEMORY[0x1AC59F020](*(v0 + 32), -1, -1);
  v1 = *(v0 + 40);
  if (v1)
  {
    MEMORY[0x1AC59F020](v1, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_1AB1DF8C0()
{
  v2 = v0;
  result = swift_beginAccess();
  if (!v0[16])
  {
    v4 = v0[9];
    v5 = v0[10];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 6, v4);
    result = (*(v5 + 8))(v4, v5);
    if (result)
    {
      v6 = v0[9];
      v7 = v0[10];
      __swift_project_boxed_opaque_existential_1Tm(v0 + 6, v6);
      v8 = v0[4];
      result = (*(v7 + 32))(v8, 0x80000, v6, v7);
      if (!v1)
      {
        v0[16] = result;
        v9 = result;
        result = swift_beginAccess();
        v2[17] = v8;
        v10 = v2[20];
        v11 = __OFADD__(v10, v9);
        v12 = v10 + v9;
        if (v11)
        {
          __break(1u);
        }

        else
        {
          v2[20] = v12;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AB1DF9CC(void (*a1)(uint64_t, double))
{
  v2 = v1;
  v54 = *MEMORY[0x1E69E9840];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = [objc_allocWithZone(JEBrotliEncoder) init];
  if (!v8)
  {
    sub_1AB1DFF7C();
    swift_allocError();
    *v30 = 4;
    return swift_willThrow();
  }

  v9 = v8;
  [v8 setQuality_];
  if ((v7 & 1) == 0)
  {
    if (v5 < 0)
    {
      goto LABEL_35;
    }

    if (HIDWORD(v5))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    [v9 setSizeHint_];
  }

  sub_1AB01494C(v2, v53);
  sub_1AB01494C(v2 + 40, v52);
  v10 = v7;
  v48 = 0;
  v50 = 0;
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  sub_1AB0149B0(v53, v41);
  sub_1AB0149B0(v52, v44);
  v47 = 0;
  swift_beginAccess();
  v48 = v11;
  v49 = 0x80000;
  swift_beginAccess();
  v38 = v12;
  v50 = v12;
  v51 = 0;
  swift_beginAccess();
  v13 = 0;
  v37 = v10;
  v14 = v10 | (a1 == 0);
  v15 = v5;
  while (1)
  {
    if (!v47)
    {
      v18 = v42;
      v17 = v43;
      __swift_project_boxed_opaque_existential_1Tm(v41, v42);
      if ((*(v17 + 8))(v18, v17))
      {
        v19 = v42;
        v20 = v43;
        __swift_project_boxed_opaque_existential_1Tm(v41, v42);
        v21 = (*(v20 + 32))(v11, 0x80000, v19, v20);
        if (v40)
        {
          break;
        }

        v47 = v21;
        v48 = v11;
        v22 = __OFADD__(v13, v21);
        v13 += v21;
        if (v22)
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v51 = v13;
      }
    }

    v23 = v42;
    v24 = v43;
    __swift_project_boxed_opaque_existential_1Tm(v41, v42);
    if ((*(v24 + 8))(v23, v24))
    {
      v25 = 0;
    }

    else
    {
      v25 = 2;
    }

    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v26 = [v9 compressStreamWithOperation:v25 availableIn:&v47 nextIn:&v48 availableOut:&v49 nextOut:&v50];
    swift_endAccess();
    swift_endAccess();
    swift_endAccess();
    v27 = swift_endAccess();
    if ((v26 & 1) == 0)
    {
      sub_1AB31D6E0(0xD000000000000031, 0x80000001AB502600);
      sub_1AB1DFF7C();
      swift_allocError();
      *v32 = 3;
      swift_willThrow();

      MEMORY[0x1AC59F020](v11, -1, -1);
      v33 = v38;
LABEL_32:
      MEMORY[0x1AC59F020](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      return __swift_destroy_boxed_opaque_existential_1Tm(v44);
    }

    if ((v14 & 1) == 0)
    {
      a1(v27, v13 / v15);
    }

    if (v49)
    {
      goto LABEL_8;
    }

    v28 = v45;
    v29 = v46;
    __swift_project_boxed_opaque_existential_1Tm(v44, v45);
    (*(v29 + 16))(v38, 0x80000, v28, v29);
    if (v40)
    {
      break;
    }

    v49 = 0x80000;
    v50 = v38;
LABEL_8:
    v16 = [v9 isFinished];
    if (v16)
    {
      v34 = 0x80000 - v49;
      if (!__OFSUB__(0x80000, v49))
      {
        if (v34 >= 1)
        {
          v35 = v45;
          v36 = v46;
          __swift_project_boxed_opaque_existential_1Tm(v44, v45);
          v16 = (*(v36 + 16))(v38, v34, v35, v36);
          if (v40)
          {
LABEL_31:

            MEMORY[0x1AC59F020](v11, -1, -1);
            v33 = v38;
            goto LABEL_32;
          }

          v49 = 0x80000;
          v50 = v38;
        }

        if (v37)
        {
          if (a1)
          {
            a1(v16, 1.0);
          }
        }

        goto LABEL_31;
      }

LABEL_37:
      __break(1u);
    }
  }

  MEMORY[0x1AC59F020](v11, -1, -1);
  MEMORY[0x1AC59F020](v38, -1, -1);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  return __swift_destroy_boxed_opaque_existential_1Tm(v44);
}

unint64_t sub_1AB1DFF7C()
{
  result = qword_1EB4383D0;
  if (!qword_1EB4383D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4383D0);
  }

  return result;
}

void *sub_1AB1DFFD0()
{
  v55 = *MEMORY[0x1E69E9840];
  v46 = [objc_allocWithZone(JEBrotliDecoder) init];
  if (!v46)
  {
    sub_1AB1DFF7C();
    swift_allocError();
    *v13 = 4;
    return swift_willThrow();
  }

  sub_1AB01494C(v0, v54);
  sub_1AB01494C(v0 + 40, v53);
  type metadata accessor for BrotliCursor();
  inited = swift_initStackObject();
  inited[8].i64[1] = 0;
  v3 = &inited[8].i8[8];
  inited[9].i64[1] = 0;
  v4 = &inited[9].i64[1];
  inited[1] = vdupq_n_s64(0x80000uLL);
  v5 = swift_slowAlloc();
  inited[2].i64[0] = v5;
  v6 = swift_slowAlloc();
  inited[2].i64[1] = v6;
  sub_1AB0149B0(v54, inited[3].i64);
  sub_1AB0149B0(v53, &inited[5].i64[1]);
  inited[8].i64[0] = 0;
  v7 = inited + 8;
  swift_beginAccess();
  inited[8].i64[1] = v5;
  inited[9].i64[0] = 0x80000;
  v8 = inited + 9;
  swift_beginAccess();
  inited[9].i64[1] = v6;
  inited[10].i64[0] = 0;
  sub_1AB1DF8C0();
  v9 = v1;
  if (v1)
  {

    swift_setDeallocating();
    MEMORY[0x1AC59F020](inited[2].i64[0], -1, -1);
    v10 = inited[2].i64[1];
    if (v10)
    {
      MEMORY[0x1AC59F020](v10, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(inited[3].i64);
    v11 = &inited[5].i64[1];
    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  v44 = &inited[8].i8[8];
  v45 = inited;
  while (1)
  {
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v14 = [v46 decompressStreamWithAvailableIn:v7 nextIn:v3 availableOut:v8 nextOut:v4];
    swift_endAccess();
    swift_endAccess();
    swift_endAccess();
    swift_endAccess();
    if (v14 != 1 && v14 != 3)
    {
      break;
    }

    v16 = 0x80000 - v8->i64[0];
    if (__OFSUB__(0x80000, v8->i64[0]))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    if (v16 >= 1)
    {
      v17 = v9;
      sub_1AB01494C((v45 + 11), &v47);
      v18 = v49;
      v19 = v50;
      __swift_project_boxed_opaque_existential_1Tm(&v47, v49);
      v20 = v45[5];
      if (!v20)
      {
        goto LABEL_41;
      }

      v21 = *(v19 + 16);
      v22 = v45[5];
      v23 = v16;
      goto LABEL_28;
    }

LABEL_25:
    if (v8->i64[0])
    {
      goto LABEL_29;
    }

    v17 = v9;
    sub_1AB01494C((v45 + 11), &v47);
    v18 = v49;
    v19 = v50;
    result = __swift_project_boxed_opaque_existential_1Tm(&v47, v49);
    v20 = v45[5];
    if (!v20)
    {
      __break(1u);
      return result;
    }

    v21 = *(v19 + 16);
    v22 = v45[5];
    v23 = 0x80000;
LABEL_28:
    v21(v22, v23, v18, v19);
    v9 = v17;
    __swift_destroy_boxed_opaque_existential_1Tm(&v47);
    v8->i64[0] = 0x80000;
    *v4 = v20;
    v3 = v44;
LABEL_29:
    if (qword_1F1FF35F8 != v14 && qword_1F1FF3600 != v14)
    {
      goto LABEL_33;
    }
  }

  if (v14 != 2)
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB502640);
    v51 = v14;
    type metadata accessor for JEBrotliDecoderResult(0);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](58, 0xE100000000000000);
    v51 = v14;
    v33 = sub_1AB461C44();
    MEMORY[0x1AC59BA20](v33);

    sub_1AB31D6E0(v47, v48);

    sub_1AB1DFF7C();
    swift_allocError();
    *v34 = 2;
    swift_willThrow();
LABEL_33:

    swift_setDeallocating();
    MEMORY[0x1AC59F020](v45[4], -1, -1);
    v35 = v45[5];
    if (v35)
    {
      MEMORY[0x1AC59F020](v35, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v45 + 6));
    return __swift_destroy_boxed_opaque_existential_1Tm((v45 + 11));
  }

  if (v7->i64[0])
  {
    goto LABEL_25;
  }

  v43 = v9;
  v24 = v45[9];
  v25 = v45[10];
  __swift_project_boxed_opaque_existential_1Tm(v45 + 6, v24);
  if ((*(v25 + 8))(v24, v25))
  {
    v26 = v45[9];
    v27 = v45[10];
    __swift_project_boxed_opaque_existential_1Tm(v45 + 6, v26);
    v28 = v45[4];
    v29 = (*(v27 + 32))(v28, 0x80000, v26, v27);
    v9 = v43;
    v45[16] = v29;
    v45[17] = v28;
    v30 = v45[20];
    v31 = __OFADD__(v30, v29);
    v32 = v30 + v29;
    if (v31)
    {
      goto LABEL_40;
    }

    v45[20] = v32;
  }

  else
  {
    v29 = v7->i64[0];
    v9 = v43;
  }

  if (v29)
  {
    goto LABEL_25;
  }

  v47 = 0;
  v48 = 0xE000000000000000;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD00000000000006FLL, 0x80000001AB502680);
  v51 = v45[20];
  v36 = sub_1AB461C44();
  MEMORY[0x1AC59BA20](v36);

  MEMORY[0x1AC59BA20](543584032, 0xE400000000000000);
  v37 = v45[9];
  v38 = v45[10];
  __swift_project_boxed_opaque_existential_1Tm(v45 + 6, v37);
  v51 = (*(v38 + 16))(v37, v38);
  v52 = v39 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4383D8);
  v40 = sub_1AB4605E4();
  MEMORY[0x1AC59BA20](v40);

  MEMORY[0x1AC59BA20](0x2E736574796220, 0xE700000000000000);
  sub_1AB31D6E0(v47, v48);

  sub_1AB1DFF7C();
  swift_allocError();
  *v41 = 2;
  swift_willThrow();

  swift_setDeallocating();
  MEMORY[0x1AC59F020](v45[4], -1, -1);
  v42 = v45[5];
  if (v42)
  {
    MEMORY[0x1AC59F020](v42, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v45 + 6));
  v11 = (v45 + 11);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t CustomIntentDispatcher.dispatcher<A, B>(for:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[4] = a7;
  v8[5] = v7;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AB1E07C0, 0, 0);
}

uint64_t sub_1AB1E07C0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v3[3] = v4;
  v3[4] = *(v1 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v2, v4);
  v6 = v0[1];

  return v6();
}

uint64_t CustomIntentDispatcher.dispatch<A>(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[13] = a7;
  v8[14] = v7;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v10 = sub_1AB461354();
  v8[16] = v10;
  v8[17] = *(v10 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = *(AssociatedTypeWitness - 8);
  v8[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB1E09B0, 0, 0);
}

uint64_t sub_1AB1E09B0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  (*(*(v0 + 104) + 40))(*(v0 + 88));
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v4);
  static StaticIntent._unwrapData<A>(of:)(v3, v4, v5, v1);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v6 = *(v0 + 112);
    v7 = *(v0 + 72);
    v18 = *(v0 + 96);
    v19 = *(v0 + 80);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    v8 = swift_task_alloc();
    *(v0 + 168) = v8;
    *(v8 + 16) = v19;
    *(v8 + 32) = v18;
    *(v8 + 48) = v0 + 16;
    *(v8 + 56) = v6;
    *(v8 + 64) = v7;
    v9 = swift_task_alloc();
    *(v0 + 176) = v9;
    *v9 = v0;
    v9[1] = sub_1AB1E0BDC;
    v10 = *(v0 + 120);
    v11 = *(v0 + 56);

    return sub_1AB0407C0(v11, &unk_1AB4DC578, v8, v10);
  }

  else
  {
    v13 = *(v0 + 160);
    v14 = *(v0 + 120);
    v15 = *(v0 + 56);
    v16 = *(*(v0 + 152) + 32);
    v16(v13, *(v0 + 144), v14);
    v16(v15, v13, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1AB1E0BDC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1AB1E0D74;
  }

  else
  {

    v2 = sub_1AB1E0CF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB1E0CF8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB1E0D74()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB1E0DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB1E0E20, 0, 0);
}

uint64_t sub_1AB1E0E20()
{
  v13 = v0[8];
  v1 = v0[3];
  v3 = v1[3];
  v2 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  v12 = (*(v13 + 16) + **(v13 + 16));
  v5 = swift_task_alloc();
  v0[10] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v5 = v0;
  v5[1] = sub_1AB1E0F9C;
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[2];

  return v12(v10, v4, v8, AssociatedTypeWitness, v3, v2, v9, v7);
}

uint64_t sub_1AB1E0F9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AB1E1090(uint64_t a1)
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
  v11[1] = sub_1AB027554;

  return sub_1AB1E0DF4(a1, v8, v9, v10, v4, v5, v6, v7);
}

uint64_t sub_1AB1E116C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1AB027460;

  return CustomIntentDispatcher.dispatcher<A, B>(for:asPartOf:)(a1, v10, v11, a7, v12, v13, &protocol witness table for _IntentReplayDispatcher);
}

uint64_t sub_1AB1E121C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1AB027554;

  return CustomIntentDispatcher.dispatch<A>(_:objectGraph:)(a1, a2, a3, a6, a4, &protocol witness table for _IntentReplayDispatcher, a5);
}

uint64_t dispatch thunk of CustomIntentDispatcher.perform<A, B>(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 16) + **(a8 + 16));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1AB027460;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t BaseObjectGraph.inject<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB027460;

  return BaseObjectGraph._inject<A>(_:)(a1, a2, a3, a4);
}

uint64_t JSError.init(message:line:column:sourceURL:constructorName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = 0;
  *(a9 + 72) = 0;
  *(a9 + 80) = 0;
  *(a9 + 88) = a10;
  *(a9 + 96) = a11;
  return result;
}

void sub_1AB1E1568(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  if (swift_dynamicCast())
  {

    v33[0] = v35;
    v33[1] = v36;
    v33[2] = v37;
    v33[3] = v38;
    v33[4] = v39;
    v33[5] = v40;
    v5 = v41;
    v34 = v41;
    v6 = *(&v35 + 1);
    v31 = v36;
    v32 = v35;
    v7 = BYTE8(v36);
    v8 = BYTE8(v37);
    v9 = *(&v38 + 1);
    v29 = v38;
    v30 = v37;
    v11 = *(&v39 + 1);
    v10 = v39;
    v12 = *(&v40 + 1);
    v13 = v40;
    v14 = v40;

    sub_1AB1A9E68(v33);
    v16 = v29;
    v15 = v30;
    v17 = v31;
  }

  else
  {
    v18 = sub_1AB45F584();
    v19 = [v18 domain];

    v20 = sub_1AB460544();
    v22 = v21;

    v23 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v35 = v23;
    sub_1AB1D5558(v20, v22, 3, 0xD000000000000017, 0x80000001AB502720, isUniquelyReferenced_nonNull_native);

    v25 = sub_1AB45F584();
    v26 = [v25 code];

    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB1D5558(v26, 0, 2, 0xD000000000000015, 0x80000001AB502740, v27);
    v10 = v23;

    swift_getErrorValue();
    v32 = sub_1AB462024();
    v6 = v28;

    v17 = 0;
    v15 = 0;
    v16 = 0;
    v9 = 0;
    v11 = 0;
    v13 = 0;
    v12 = 0;
    v5 = 0;
    v7 = 1;
    v8 = 1;
  }

  *a2 = v32;
  *(a2 + 8) = v6;
  *(a2 + 16) = v17;
  *(a2 + 24) = v7;
  *(a2 + 32) = v15;
  *(a2 + 40) = v8;
  *(a2 + 48) = v16;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  *(a2 + 80) = v13;
  *(a2 + 88) = v12;
  *(a2 + 96) = v5;
}

id sub_1AB1E1808()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1AB0C5760(0xD000000000000022, 0x80000001AB502780, 0);
  qword_1EB434510 = result;
  return result;
}

uint64_t JSError.init(message:line:column:sourceURL:constructorName:userInfo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v12 = *a12;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v12;
  *(a9 + 72) = 0;
  *(a9 + 80) = 0;
  *(a9 + 88) = a10;
  *(a9 + 96) = a11;
  return result;
}

uint64_t JSError.message.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t JSError.sourceURL.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t JSError.constructorName.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t JSError.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v34 - v2;
  v4 = sub_1AB45F764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  if (!*(v0 + 56))
  {
    goto LABEL_9;
  }

  v40 = *(v0 + 8);
  v41 = v8;
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  sub_1AB45F714();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1AB014AC0(v3, &unk_1EB4395B0);
LABEL_8:
    v8 = v41;
LABEL_9:

    return v8;
  }

  v39 = v13;
  (*(v5 + 32))(v7, v3, v4);
  if (v10)
  {
    (*(v5 + 8))(v7, v4);
    goto LABEL_8;
  }

  v42 = v9;
  v14 = sub_1AB461C44();
  v16 = v15;
  if (v12)
  {
    (*(v5 + 8))(v7, v4);

    goto LABEL_8;
  }

  v38 = v14;
  v42 = v11;
  v18 = sub_1AB461C44();
  v20 = v19;
  v21 = v7;
  v22 = sub_1AB45F644();
  v24 = v23;
  if (qword_1EB434508 != -1)
  {
    v33 = v22;
    swift_once();
    v22 = v33;
  }

  v25 = qword_1EB434510;
  if (!qword_1EB434510)
  {
    goto LABEL_20;
  }

  v37 = v22;
  v26 = sub_1AB460514();
  result = sub_1AB460694();
  if ((result & 0x8000000000000000) == 0)
  {
    v27 = [v25 firstMatchInString:v26 options:0 range:{0, result}];

    if (v27)
    {
      v36 = v18;
      v28 = sub_1AB460514();
      v35 = v27;
      [v27 rangeWithName_];

      sub_1AB460FD4();
      if ((v29 & 1) == 0)
      {

        v30 = sub_1AB4607E4();
        v31 = MEMORY[0x1AC59B960](v30);
        v24 = v32;

        v22 = v31;
        v18 = v36;
        goto LABEL_20;
      }

      v18 = v36;
    }

    v22 = v37;
LABEL_20:
    v42 = v22;
    v43 = v24;
    MEMORY[0x1AC59BA20](91, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v38, v16);

    MEMORY[0x1AC59BA20](58, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v18, v20);

    MEMORY[0x1AC59BA20](8285, 0xE200000000000000);
    MEMORY[0x1AC59BA20](v41, v40);
    v8 = v42;
    (*(v5 + 8))(v21, v4);
    return v8;
  }

  __break(1u);
  return result;
}

unint64_t JSError.errorCode.getter()
{
  v1 = *(v0 + 64);
  if (v1 && *(v1 + 16) && (v2 = sub_1AB014DB4(0xD000000000000015, 0x80000001AB502740), (v3 & 1) != 0) && (v4 = (*(v1 + 56) + 24 * v2), v4[16] == 2))
  {
    return *v4;
  }

  else
  {
    return 0x8000000000000000;
  }
}

uint64_t JSError.errorUserInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v72 - v2;
  v5 = *v0;
  v4 = v0[1];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = MEMORY[0x1E69E7CC8];
  v87 = MEMORY[0x1E69E7CC8];
  if (!v8)
  {
LABEL_46:
    if (v7)
    {
      v63 = sub_1AB460544();
      v65 = v64;
      sub_1AB45F714();
      v66 = sub_1AB45F764();
      v67 = *(v66 - 8);
      if ((*(v67 + 48))(v3, 1, v66) == 1)
      {
        sub_1AB014AC0(v3, &unk_1EB4395B0);
        sub_1AB09AE18(v63, v65, &v85);

        sub_1AB014AC0(&v85, &unk_1EB437E60);
        return v87;
      }

      else
      {
        *(&v86[0] + 1) = v66;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v85);
        (*(v67 + 32))(boxed_opaque_existential_0, v3, v66);
        sub_1AB014B78(&v85, &v82);
        v69 = v87;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v80 = v69;
        sub_1AB01AE18(&v82, v63, v65, isUniquelyReferenced_nonNull_native);

        return v80;
      }
    }

    return v9;
  }

  v10 = *(v8 + 16);
  v78 = 0x80000001AB502720;
  v75 = v3;
  v74 = v6;
  v73 = v7;
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = sub_1AB014DB4(0xD000000000000017, 0x80000001AB502720);
  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

  v13 = *(v8 + 56) + 24 * v11;
  if (*(v13 + 16) != 3)
  {
LABEL_9:
    v76 = MEMORY[0x1E69E7CC8];
    goto LABEL_12;
  }

  v14 = *(v8 + 16);
  v76 = MEMORY[0x1E69E7CC8];
  if (v14)
  {
    v16 = *v13;
    v15 = *(v13 + 8);

    v17 = sub_1AB014DB4(0xD000000000000015, 0x80000001AB502740);
    if (v18)
    {
      v19 = *(v8 + 56) + 24 * v17;
      if (*(v19 + 16) == 2)
      {
        v72 = *v19;
        v77 = sub_1AB460544();
        v21 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AB4D4720;
        *(inited + 32) = sub_1AB460544();
        *(inited + 72) = MEMORY[0x1E69E6158];
        *(inited + 40) = v23;
        *(inited + 48) = v5;
        *(inited + 56) = v4;

        sub_1AB01B220(inited);
        swift_setDeallocating();
        sub_1AB014AC0(inited + 32, &qword_1EB439AA0);
        v24 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v25 = sub_1AB460514();
        sub_1AB16DB5C(v16, v15, 3);
        v26 = sub_1AB4602D4();

        v27 = [v24 initWithDomain:v25 code:v72 userInfo:v26];

        *(&v86[0] + 1) = sub_1AB016760(0, &qword_1EB4353A0);
        *&v85 = v27;
        sub_1AB014B78(&v85, &v82);
        v28 = MEMORY[0x1E69E7CC8];
        v29 = swift_isUniquelyReferenced_nonNull_native();
        *&v80 = v28;
        sub_1AB01AE18(&v82, v77, v21, v29);

        v76 = v80;
        v87 = v80;
        goto LABEL_12;
      }
    }

    sub_1AB16DB5C(v16, v15, 3);
LABEL_11:
    v76 = MEMORY[0x1E69E7CC8];
  }

LABEL_12:
  v30 = -1 << *(v8 + 32);
  if (-v30 < 64)
  {
    v31 = ~(-1 << -v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & *(v8 + 64);
  v72 = -1 << *(v8 + 32);
  v33 = (63 - v30) >> 6;
  v77 = 0x80000001AB502740;

  v34 = 0;
  while (1)
  {
    v35 = v34;
    v36 = v32;
    v37 = v34;
    if (!v32)
    {
      break;
    }

LABEL_26:
    v32 = (v36 - 1) & v36;
    v40 = __clz(__rbit64(v36)) | (v37 << 6);
    v41 = (*(v8 + 48) + 16 * v40);
    v43 = *v41;
    v42 = v41[1];
    v44 = *(v8 + 56) + 24 * v40;
    LOBYTE(v41) = *(v44 + 16);
    *&v82 = v43;
    *(&v82 + 1) = v42;
    v80 = *v44;
    v81 = v41;

    ScalarDictionary.Value.rawValue.getter(&v83);
    v34 = v37;
LABEL_27:
    v85 = v82;
    v86[0] = v83;
    v86[1] = v84;
    v45 = *(&v82 + 1);
    if (!*(&v82 + 1))
    {
      v9 = v76;
      v87 = v76;
      sub_1AB0309A4();
      v3 = v75;
      v7 = v73;
      goto LABEL_46;
    }

    v46 = v85;
    sub_1AB014B78(v86, &v82);
    if (v46 == 0xD000000000000017 && v78 == v45 || (sub_1AB461DA4() & 1) != 0 || v46 == 0xD000000000000015 && v77 == v45 || (sub_1AB461DA4() & 1) != 0)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v82);
    }

    else
    {
      sub_1AB0165C4(&v82, &v80);
      v47 = v76;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v79 = v47;
      v49 = sub_1AB014DB4(v46, v45);
      v51 = v47[2];
      v52 = (v50 & 1) == 0;
      v53 = __OFADD__(v51, v52);
      v54 = v51 + v52;
      if (v53)
      {
        goto LABEL_52;
      }

      if (v47[3] >= v54)
      {
        if (v48)
        {
          goto LABEL_40;
        }

        v76 = v49;
        v58 = v50;
        sub_1AB0676CC();
        v49 = v76;
        if ((v58 & 1) == 0)
        {
          goto LABEL_43;
        }

LABEL_41:
        v56 = v49;

        v76 = v79;
        v57 = (v79[7] + 32 * v56);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        sub_1AB014B78(&v80, v57);
        __swift_destroy_boxed_opaque_existential_1Tm(&v82);
      }

      else
      {
        LODWORD(v76) = v50;
        sub_1AB01AF68(v54, v48);
        v49 = sub_1AB014DB4(v46, v45);
        v55 = v50 & 1;
        LOBYTE(v50) = v76;
        if ((v76 & 1) != v55)
        {
          goto LABEL_54;
        }

LABEL_40:
        if (v50)
        {
          goto LABEL_41;
        }

LABEL_43:
        v59 = v79;
        v79[(v49 >> 6) + 8] |= 1 << v49;
        v60 = (v59[6] + 16 * v49);
        *v60 = v46;
        v60[1] = v45;
        sub_1AB014B78(&v80, (v59[7] + 32 * v49));
        __swift_destroy_boxed_opaque_existential_1Tm(&v82);
        v61 = v59[2];
        v53 = __OFADD__(v61, 1);
        v62 = v61 + 1;
        if (v53)
        {
          goto LABEL_53;
        }

        v76 = v59;
        v59[2] = v62;
      }
    }
  }

  if (v33 <= v34 + 1)
  {
    v38 = v34 + 1;
  }

  else
  {
    v38 = v33;
  }

  v34 = v38 - 1;
  v39 = v35;
  while (1)
  {
    v37 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v37 >= v33)
    {
      v32 = 0;
      v83 = 0u;
      v84 = 0u;
      v82 = 0u;
      goto LABEL_27;
    }

    v36 = *(v8 + 64 + 8 * v37);
    ++v39;
    if (v36)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

void JSError.jsRepresentation(in:)(void *a1@<X0>, void *a2@<X8>)
{
  v29 = *v2;
  v4 = *(v2 + 2);
  v41 = *(v2 + 24);
  *(&v31 + 1) = *(v2 + 25);
  HIDWORD(v31) = *(v2 + 7);
  v5 = *(v2 + 4);
  v40 = *(v2 + 40);
  *&v34[3] = *(v2 + 11);
  *v34 = *(v2 + 41);
  v6 = *(v2 + 6);
  v7 = *(v2 + 7);
  v8 = *(v2 + 8);
  v39 = *(v2 + 88);
  v38 = *(v2 + 72);
  v30 = v4;
  LOBYTE(v31) = v41;
  v32 = v5;
  v33 = v40;
  v35 = v6;
  v36 = v7;
  v37 = v8;
  sub_1AB0C3EF0();
  sub_1AB462024();
  v9 = sub_1AB460514();

  v10 = objc_opt_self();
  v11 = [v10 valueWithNewErrorFromMessage:v9 inContext:a1];

  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = &unk_1E794B000;
  if ((v41 & 1) == 0)
  {
    if (v4 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v4 <= 0x7FFFFFFF)
    {
      v13 = [v10 valueWithInt32:v4 inContext:a1];
      if (!v13)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v14 = v13;
      v15 = sub_1AB460514();
      [v11 setValue:v14 forProperty:v15];

      v12 = &unk_1E794B000;
      goto LABEL_7;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_7:
  if (v40)
  {
    goto LABEL_12;
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
    goto LABEL_22;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = [v10 valueWithInt32:v5 inContext:a1];
  if (!v16)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = sub_1AB460514();
  [v11 v12[386]];

LABEL_12:
  if (v7)
  {
    *&v29 = v6;
    *(&v29 + 1) = v7;

    v19 = [v10 valueWithObject:sub_1AB461F94() inContext:a1];
    swift_unknownObjectRelease();
    if (v19)
    {
      v20 = v19;
      v21 = sub_1AB460514();
      [v11 v12[386]];

      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_15:
  if (v8)
  {
    ScalarDictionary.jsRepresentation(in:)(a1, &v29);
    if (v28)
    {

      return;
    }

    v22 = v31;
    v23 = v32;
    __swift_project_boxed_opaque_existential_1Tm(&v29, v31);
    v24 = (*(v23 + 16))(a1, v22, v23);
    __swift_destroy_boxed_opaque_existential_1Tm(&v29);
    v25 = v24;
    v26 = sub_1AB460514();
    [v11 v12[386]];
  }

  a2[3] = sub_1AB016760(0, &qword_1ED4D1B98);
  a2[4] = &protocol witness table for JSValue;
  *a2 = v11;
}

uint64_t sub_1AB1E2C50(uint64_t a1)
{
  v2 = sub_1AB1E3284();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1AB1E2C8C(uint64_t a1)
{
  v2 = sub_1AB1E3284();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

char **sub_1AB1E2CCC(void *a1)
{
  JSError.jsRepresentation(in:)(a1, &v26);
  if (v1)
  {
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v5 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1AB4D4720;
    v29 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v7._countAndFlagsBits = 0x69747265766E6F43;
    v7._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4383E0);
    v25[0] = &type metadata for JSError;
    sub_1AB014A58(v25, v24, &unk_1EB437E60);
    v26 = 0u;
    v27 = 0u;
    sub_1AB0169C4(v24, &v26);
    LOBYTE(v28) = 0;
    v8 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AB0168A8(0, *(v8 + 2) + 1, 1, v8);
    }

    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_1AB0168A8((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    v11 = &v8[40 * v10];
    v12 = v26;
    v13 = v27;
    v11[64] = v28;
    *(v11 + 2) = v12;
    *(v11 + 3) = v13;
    v29 = v8;
    sub_1AB014AC0(v25, &unk_1EB437E60);
    v14._object = 0x80000001AB4FFFA0;
    v23 = &v29;
    v14._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    *(v6 + 32) = v29;
    v15 = sub_1AB461094();
    if (os_log_type_enabled(v5, v15))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v16 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v16[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v16 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v18 = swift_allocObject();
      *(v18 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v26 = v6;
      *(&v26 + 1) = sub_1AB01A8D8;
      *&v27 = v18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v23 = sub_1AB460484();
      v20 = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = sub_1AB016854();
      *(v21 + 32) = v23;
      *(v21 + 40) = v20;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
    v3 = *(&v27 + 1);
    v4 = v28;
    __swift_project_boxed_opaque_existential_1Tm(&v26, *(&v27 + 1));
    v23 = (*(v4 + 16))(a1, v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(&v26);
  }

  return v23;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1AB1E3108(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1AB1E3150(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_1AB1E31C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AB1E3220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1AB1E3284()
{
  result = qword_1EB4344F8;
  if (!qword_1EB4344F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4344F8);
  }

  return result;
}

uint64_t BasicImpressionsTracker.__allocating_init(threshold:queueName:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4383E8);
  swift_allocObject();
  v7 = sub_1AB03356C();
  *(v6 + 40) = a2;
  *(v6 + 48) = v7;
  *(v6 + 24) = a3;
  *(v6 + 32) = a1;
  v8 = type metadata accessor for ImpressionsTracking.AppearanceJournal();
  v9 = sub_1AB059040();
  *(v6 + 16) = MEMORY[0x1AC59B670](20, &type metadata for ImpressionMetrics.ID, v8, v9);
  return v6;
}

uint64_t BasicImpressionsTracker.init(threshold:queueName:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4383E8);
  swift_allocObject();
  v8 = sub_1AB03356C();
  *(v3 + 40) = a2;
  *(v3 + 48) = v8;
  *(v3 + 24) = a3;
  *(v3 + 32) = a1;
  v9 = type metadata accessor for ImpressionsTracking.AppearanceJournal();
  v10 = sub_1AB059040();
  *(v4 + 16) = MEMORY[0x1AC59B670](20, &type metadata for ImpressionMetrics.ID, v9, v10);
  return v4;
}

uint64_t BasicImpressionsTracker.queueName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t BasicImpressionsTracker.elementDidEnterView(_:on:with:)(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v6 = a1[1];
  v21 = *a1;
  v22 = v6;
  v23 = a1[2];
  v7 = *(a1 + 7);
  v24 = *(a1 + 6);
  v8 = *(a3 + 2);
  v9 = *(a3 + 24);
  swift_beginAccess();
  if (*(*(v3 + 16) + 16) && (sub_1AB077384(&v21), (v10 & 1) != 0))
  {
    swift_endAccess();
    swift_retain_n();
  }

  else
  {
    swift_endAccess();
    type metadata accessor for ImpressionsTracking.AppearanceJournal();
    v11 = swift_allocObject();
    *(v11 + 88) = 0u;
    *(v11 + 104) = 0u;
    *(v11 + 120) = 0u;
    *(v11 + 136) = 0;
    *(v11 + 144) = 1;
    v12 = v22;
    *(v11 + 16) = v21;
    *(v11 + 32) = v12;
    *(v11 + 48) = v23;
    *(v11 + 64) = v24;
    *(v11 + 72) = v7;
    *(v11 + 80) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    sub_1AB077970(&v21, &v15);
    swift_retain_n();
    sub_1AB077970(&v21, &v15);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v15 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    sub_1AB078820(v11, &v21, isUniquelyReferenced_nonNull_native);
    sub_1AB1B0358(&v21);
    *(v3 + 16) = v15;
    swift_endAccess();
  }

  v15 = *a3;
  v16 = v8;
  v17 = v9;
  v18 = *(a3 + 25);
  v19 = *(a3 + 41);
  *v20 = *(a3 + 57);
  *&v20[15] = *(a3 + 9);
  sub_1AB228D48(a2, v8, v9 & 1, &v15);
}

uint64_t BasicImpressionsTracker.elementDidEnterView(_:on:at:with:)(__int128 *a1, uint64_t a2, void *a3, char a4, _OWORD *a5)
{
  v10 = a1[1];
  v20 = *a1;
  v21 = v10;
  v22 = a1[2];
  v11 = *(a1 + 7);
  v23 = *(a1 + 6);
  swift_beginAccess();
  if (*(*(v5 + 16) + 16) && (sub_1AB077384(&v20), (v12 & 1) != 0))
  {
    swift_endAccess();
    swift_retain_n();
  }

  else
  {
    swift_endAccess();
    type metadata accessor for ImpressionsTracking.AppearanceJournal();
    v13 = swift_allocObject();
    *(v13 + 88) = 0u;
    *(v13 + 104) = 0u;
    *(v13 + 120) = 0u;
    *(v13 + 136) = 0;
    *(v13 + 144) = 1;
    v14 = v21;
    *(v13 + 16) = v20;
    *(v13 + 32) = v14;
    *(v13 + 48) = v22;
    *(v13 + 64) = v23;
    *(v13 + 72) = v11;
    *(v13 + 80) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    sub_1AB077970(&v20, v19);
    swift_retain_n();
    sub_1AB077970(&v20, v19);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v19[0] = *(v5 + 16);
    *(v5 + 16) = 0x8000000000000000;
    sub_1AB078820(v13, &v20, isUniquelyReferenced_nonNull_native);
    sub_1AB1B0358(&v20);
    *(v5 + 16) = *&v19[0];
    swift_endAccess();
  }

  v16 = a5[3];
  v19[2] = a5[2];
  v19[3] = v16;
  v19[4] = a5[4];
  v17 = a5[1];
  v19[0] = *a5;
  v19[1] = v17;
  sub_1AB228D48(a2, a3, a4 & 1, v19);
}

uint64_t sub_1AB1E388C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, __int128 *))
{
  if (qword_1EB435E28 != -1)
  {
    swift_once();
  }

  v12[2] = xmmword_1EB43D608;
  v12[3] = unk_1EB43D618;
  v12[4] = xmmword_1EB43D628;
  v12[0] = xmmword_1EB43D5E8;
  v12[1] = *&qword_1EB43D5F8;
  v9 = xmmword_1EB43D608;
  v10 = unk_1EB43D618;
  v11 = xmmword_1EB43D628;
  v7 = xmmword_1EB43D5E8;
  v8 = *&qword_1EB43D5F8;
  sub_1AB0786FC(v12, v13);
  a3(a1, a2, &v7);
  v13[2] = v9;
  v13[3] = v10;
  v13[4] = v11;
  v13[0] = v7;
  v13[1] = v8;
  return sub_1AB079CF0(v13);
}

uint64_t BasicImpressionsTracker.elementDidLeaveView(_:on:with:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v6;
  v12[2] = *(a1 + 32);
  v13 = *(a1 + 48);
  swift_beginAccess();
  if (!*(*(v3 + 16) + 16))
  {
    return swift_endAccess();
  }

  sub_1AB077384(v12);
  if ((v7 & 1) == 0)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  v8 = a3[3];
  v11[2] = a3[2];
  v11[3] = v8;
  v11[4] = a3[4];
  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;

  sub_1AB2292C0(a2, v11);
}

uint64_t BasicImpressionsTracker.snapshotOnScreenImpressions(in:on:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  v23 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  sub_1AB1AD250(*(*(v2 + 2) + 16));
  v5 = *(v2 + 2);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = *(*(v5 + 56) + ((v11 << 9) | (8 * v13)));
    result = swift_beginAccess();
    v15 = *(v14 + 80);
    v16 = *(v15 + 16);
    if (!v16 || (*(v15 + 32 * v16) & 1) == 0)
    {
      v17 = swift_retain_n();
      MEMORY[0x1AC59BC60](v17);
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AB460994();
      }

      sub_1AB4609E4();
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      v18 = *(v2 + 4);
      v19 = *(v2 + 5);
      v20 = v2[3];
      v22 = v4;
      v21 = sub_1AB45BD64(v18, v19, v23, &v22, a2, MEMORY[0x1E69E7CC0], 1, v20);

      sub_1AB0CEEA8(v21, 1);
      return v21;
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t BasicImpressionsTracker.consumeImpressions(in:on:)(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(v2 + 4);
  v6 = *(v2 + 5);
  swift_beginAccess();
  v7 = *(v2 + 2);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v14 = v4;
  v9 = sub_1AB1AFFBC(v8, 0);
  v10 = sub_1AB1AF6B8(&v15, v9 + 4, v8, v7);

  result = sub_1AB0309A4();
  if (v10 == v8)
  {
    v4 = v14;
LABEL_5:
    v12 = v2[3];
    LOBYTE(v15) = v4;
    v13 = sub_1AB45BD64(v5, v6, v9, &v15, a2, MEMORY[0x1E69E7CC0], 0, v12);

    sub_1AB0CEEA8(v13, 0);
    *(v2 + 2) = MEMORY[0x1E69E7CC8];

    return v13;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall BasicImpressionsTracker.removeAllImpressions()()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
}

uint64_t BasicImpressionsTracker.deinit()
{

  return v0;
}

uint64_t BasicImpressionsTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AB1E3E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, __int128 *))
{
  if (qword_1EB435E28 != -1)
  {
    swift_once();
  }

  v14[2] = xmmword_1EB43D608;
  v14[3] = unk_1EB43D618;
  v14[4] = xmmword_1EB43D628;
  v14[0] = xmmword_1EB43D5E8;
  v14[1] = *&qword_1EB43D5F8;
  v11 = xmmword_1EB43D608;
  v12 = unk_1EB43D618;
  v13 = xmmword_1EB43D628;
  v9 = xmmword_1EB43D5E8;
  v10 = *&qword_1EB43D5F8;
  sub_1AB0786FC(v14, v15);
  a5(a1, a2, &v9);
  v15[2] = v11;
  v15[3] = v12;
  v15[4] = v13;
  v15[0] = v9;
  v15[1] = v10;
  return sub_1AB079CF0(v15);
}

uint64_t sub_1AB1E3F40()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
}

uint64_t BasicImpressionsTracker.getCurrentImpressions(in:on:)(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(v2 + 4);
  v6 = *(v2 + 5);
  swift_beginAccess();
  v7 = *(v2 + 2);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v14 = v4;
  v9 = sub_1AB1AFFBC(v8, 0);
  v10 = sub_1AB1AF6B8(&v15, v9 + 4, v8, v7);

  result = sub_1AB0309A4();
  if (v10 == v8)
  {
    v4 = v14;
LABEL_5:
    v12 = v2[3];
    LOBYTE(v15) = v4;
    v13 = sub_1AB45BD64(v5, v6, v9, &v15, a2, MEMORY[0x1E69E7CC0], 0, v12);

    sub_1AB0CEEA8(v13, 0);
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1E40EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4383F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AB1E41A0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14[-v9 - 8];
  sub_1AB01494C(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438488);
  swift_dynamicCast();
  v11 = (*(v5 + 32))(v10, a2, v6, v5);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return v11;
}

uint64_t sub_1AB1E4388(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  if (*v1)
  {
    v4 = *(a1 + 16);

    if ((sub_1AB24EC54(v4) & 1) == 0)
    {
      v6[4] = &type metadata for MetricsFieldsContext;
      v6[0] = &type metadata for MetricsFieldsContext;
      v6[1] = v3;
      v2 = (*(*v2 + 184))(v6);
      sub_1AB01667C(v6);
      return v2;
    }
  }

  return v2;
}

uint64_t ActionDispatcher.PerformError.hashValue.getter()
{
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](0);
  return sub_1AB462104();
}

uint64_t ActionDispatcher.next.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return sub_1AB1E5EFC(v3, v4, v5);
}

double sub_1AB1E44FC@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v8 = *a1;
  v9 = v3;
  ActionDispatcher.next.getter(&v6);
  v4 = v7;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_1AB1E4550(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  *&v4 = *a1;
  *(&v4 + 1) = v1;
  v5 = v2;
  sub_1AB1E5EFC(v4, v1, v2);
  return ActionDispatcher.next.setter(&v4);
}

uint64_t ActionDispatcher.next.setter(__int128 *a1)
{
  v5 = *a1;
  v2 = *(a1 + 2);
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *(v3 + 32) = v2;

  *(v1 + 8) = v3;
  return result;
}

void (*ActionDispatcher.next.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  v3 = *(v1 + 8);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  sub_1AB1E5EFC(v4, v5, v6);
  return sub_1AB1E4658;
}

void sub_1AB1E4658(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if (a2)
  {
    sub_1AB1E5EFC(*a1, v2, v4);
    v6 = swift_allocObject();
    v6[2] = v3;
    v6[3] = v2;
    v6[4] = v4;

    *(v5 + 8) = v6;

    sub_1AB1E5F48(v3, v2, v4);
  }

  else
  {
    v7 = swift_allocObject();
    v7[2] = v3;
    v7[3] = v2;
    v7[4] = v4;

    *(v5 + 8) = v7;
  }
}

uint64_t ActionDispatcher.withNext(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = v2[2];
  *a2 = *v2;
  a2[2] = v4;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = v4;

  sub_1AB1E5EFC(v5, v6, v7);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v7;

  a2[1] = v9;
  return result;
}

void *ActionDispatcher.targetQueue.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t ActionDispatcher.withTargetQueue(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = a1;
  v5 = a1;
}

BOOL ActionDispatcher._hasImplementation(forType:)()
{
  type metadata accessor for ActionImplementationBox();
  sub_1AB014B20();
  sub_1AB460414();
  if (v1)
  {
  }

  return v1 != 0;
}

uint64_t ActionDispatcher.removeImplementation(forType:)()
{
  type metadata accessor for ActionImplementationBox();
  sub_1AB014B20();
  sub_1AB4603C4();
  sub_1AB460314();
}

uint64_t ActionDispatcher.removingImplementation(forType:)@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  v5 = v4;

  return ActionDispatcher.removeImplementation(forType:)();
}

Swift::Void __swiftcall ActionDispatcher.removeAllImplementations()()
{
  type metadata accessor for ActionImplementationBox();
  sub_1AB014B20();
  sub_1AB4603C4();

  sub_1AB4603B4();
}

void ActionDispatcher.removingAllImplementations()(void *a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  v5 = v4;

  ActionDispatcher.removeAllImplementations()();
}

uint64_t ActionDispatcher.adding(contentsOf:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[1];
  v6 = v2[2];
  *a2 = *v2;
  a2[1] = v5;
  a2[2] = v6;
  v7 = v6;

  return ActionDispatcher.add(contentsOf:)(a1);
}

__darwin_time_t ActionDispatcher.perform(_:withMetrics:asPartOf:)(void *a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v78 = sub_1AB460224();
  v9 = *(v78 - 1);
  MEMORY[0x1EEE9AC00](v78);
  v11 = (&v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *v4;
  v13 = v4[1];
  v79 = *a2;
  v80 = v12;
  v14 = v4[2];
  static MonotonicTime.now.getter(&v81);
  v15 = v81;
  if (qword_1ED4D0050 != -1)
  {
    swift_once();
  }

  v16 = off_1EB434B78;
  os_unfair_lock_lock(off_1EB434B78 + 8);
  *(v16 + 1) = v15;
  os_unfair_lock_unlock(v16 + 8);
  if (BaseObjectGraph._hasDependency<A>(_:)(a4, a4))
  {
    goto LABEL_19;
  }

  v74 = v13;
  if (qword_1EB435D30 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v77 = qword_1EB43A238;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1AB4D9850;
    v88 = sub_1AB0168A8(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    v87 = MEMORY[0x1E69E6158];
    DynamicType = 0xD000000000000020;
    v86 = 0x80000001AB502900;
    sub_1AB01522C(&DynamicType, v84);
    v81 = 0u;
    v82 = 0u;
    sub_1AB0169C4(v84, &v81);
    v83 = 0;
    v19 = v88;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    if (v22 >= v21 >> 1)
    {
      v19 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v19);
    }

    *(v19 + 2) = v22 + 1;
    v23 = &v19[40 * v22];
    v24 = v81;
    v25 = v82;
    v23[64] = v83;
    *(v23 + 2) = v24;
    *(v23 + 3) = v25;
    v88 = v19;
    sub_1AB014AC0(&DynamicType, &unk_1EB437E60);
    v26._countAndFlagsBits = 0xD00000000000002CLL;
    v26._object = 0x80000001AB502930;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    *(v17 + 32) = v88;
    v88 = sub_1AB0168A8(0, 20, 0, MEMORY[0x1E69E7CC0]);
    v27._countAndFlagsBits = 1612738153;
    v27._object = 0xE400000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    v28 = (*(*a3 + 128))();
    v87 = MEMORY[0x1E69E6158];
    DynamicType = v28;
    v86 = v29;
    sub_1AB01522C(&DynamicType, v84);
    v81 = 0u;
    v82 = 0u;
    sub_1AB0169C4(v84, &v81);
    v83 = 2;
    v30 = v88;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
      v88 = v30;
    }

    v73 = v9;
    v32 = *(v30 + 2);
    v31 = *(v30 + 3);
    if (v32 >= v31 >> 1)
    {
      v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
    }

    *(v30 + 2) = v32 + 1;
    v33 = &v30[40 * v32];
    v34 = v81;
    v35 = v82;
    v33[64] = v83;
    *(v33 + 2) = v34;
    *(v33 + 3) = v35;
    v88 = v30;
    sub_1AB014AC0(&DynamicType, &unk_1EB437E60);
    v36._countAndFlagsBits = 0x7463656A626F2060;
    v36._object = 0xEF2E687061726720;
    LogMessage.StringInterpolation.appendLiteral(_:)(v36);
    *(v17 + 40) = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v37 = swift_allocObject();
    v76 = xmmword_1AB4D4720;
    *(v37 + 16) = xmmword_1AB4D4720;
    v38 = MEMORY[0x1E69E6158];
    *(&v82 + 1) = MEMORY[0x1E69E6158];
    *&v81 = 0xD00000000000003ALL;
    *(&v81 + 1) = 0x80000001AB502960;
    *(v37 + 48) = 0u;
    *(v37 + 32) = 0u;
    sub_1AB0169C4(&v81, v37 + 32);
    *(v37 + 64) = 0;
    *(v17 + 48) = v37;
    v39 = swift_allocObject();
    *(v39 + 16) = v76;
    *(&v82 + 1) = v38;
    *&v81 = 0xD00000000000001ALL;
    *(&v81 + 1) = 0x80000001AB5029A0;
    *(v39 + 48) = 0u;
    *(v39 + 32) = 0u;
    sub_1AB0169C4(&v81, v39 + 32);
    *(v39 + 64) = 0;
    *(v17 + 56) = v39;
    v40 = sub_1AB461094();
    if (os_log_type_enabled(v77, v40))
    {
      break;
    }

    a1 = v75;
    v13 = v74;
    v9 = v73;
    if (!v14)
    {
      goto LABEL_21;
    }

LABEL_20:
    *v11 = v14;
    v48 = v78;
    (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v78);
    v49 = v14;
    v50 = sub_1AB460244();
    v51 = *(v9 + 8);
    v9 += 8;
    v51(v11, v48);
    if (v50)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v41 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v41[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v41 + 5);
  v9 = v73;
  if (os_unfair_lock_opaque_low == 2)
  {
    LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
  }

  v43 = swift_allocObject();
  *(v43 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
  *&v81 = v17;
  *(&v81 + 1) = sub_1AB01A8D8;
  *&v82 = v43;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
  sub_1AB016A34();
  v44 = sub_1AB460484();
  v46 = v45;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
  v47 = swift_allocObject();
  *(v47 + 16) = v76;
  *(v47 + 56) = MEMORY[0x1E69E6158];
  *(v47 + 64) = sub_1AB016854();
  *(v47 + 32) = v44;
  *(v47 + 40) = v46;
  sub_1AB45FF14();

  a1 = v75;
  v13 = v74;
LABEL_19:
  if (v14)
  {
    goto LABEL_20;
  }

LABEL_21:
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v52 = *(a4 + 16);
  type metadata accessor for ActionImplementationBox();
  sub_1AB014B20();
  sub_1AB460414();
  v53 = v81;
  if (v81)
  {
    v54 = v79;
    *&v81 = v79;
    sub_1AB1E5F9C(a1, &v81, a3);
    *&v81 = v54;
    type metadata accessor for ActionDispatcher.MetricsBehavior();
    v60 = sub_1AB1E4388(a3);
    v61 = v13[2];
    v62 = v13[3];
    v63 = v13[4];
    v64 = sub_1AB1E5EFC(v61, v62, v63);
    if (v61)
    {
      v79 = &v72;
      MEMORY[0x1EEE9AC00](v64);
      *(&v72 - 4) = v53;
      *(&v72 - 3) = a1;
      *(&v72 - 2) = v60;
      v78 = *(*v60 + 104);
      v80 = a3;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB438400);
      (v78)(&DynamicType, sub_1AB1E6698, &v72 - 6, v65);
      sub_1AB01494C(a1, &v81);
      v66 = swift_allocObject();
      v66[2] = v52;
      v66[3] = v61;
      v66[4] = v62;
      v66[5] = v63;
      sub_1AB0149B0(&v81, (v66 + 6));
      v66[11] = v80;
      sub_1AB1E5EFC(v61, v62, v63);

      v67 = sub_1AB1E5D70(sub_1AB1E64AC, v66);

      sub_1AB1E5F48(v61, v62, v63);

      return v67;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v64);
      *(&v72 - 4) = v53;
      *(&v72 - 3) = a1;
      *(&v72 - 2) = v60;
      v70 = *(*v60 + 104);

      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB438400);
      v70(&v81, sub_1AB1E6430, &v72 - 6, v71);

      return v81;
    }
  }

  else
  {
    v55 = v13[2];
    v56 = v13[3];
    v57 = v13[4];
    sub_1AB1E5EFC(v55, v56, v57);
    if (v55)
    {
      *&v81 = v55;
      *(&v81 + 1) = v56;
      *&v82 = v57;
      DynamicType = v79;
      v58 = ActionDispatcher.perform(_:withMetrics:asPartOf:)(a1, &DynamicType, a3, a4);
      sub_1AB1E5F48(v55, v56, v57);
      return v58;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB438400);
      v68 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
      v69 = swift_allocObject();
      result = v68;
      *(v69 + 16) = 0;
      *(v68 + 16) = v69;
      *(v68 + 24) = 1;
      *(v68 + 32) = 1;
    }
  }

  return result;
}

uint64_t sub_1AB1E5654(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a1 == 1)
  {
    v12[1] = a2;
    v12[2] = a3;
    v12[3] = a4;
    v12[0] = 0;
    v8 = type metadata accessor for ActionDispatcher();
    return ActionDispatcher.perform(_:withMetrics:asPartOf:)(a5, v12, a6, v8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB438400);
    v10 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v11 = swift_allocObject();
    result = v10;
    *(v11 + 16) = 0;
    *(v10 + 16) = v11;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
  }

  return result;
}

uint64_t ActionDispatcher.debugDescription.getter(uint64_t a1)
{
  v3 = *(v1 + 8);
  type metadata accessor for ActionImplementationBox();
  sub_1AB014B20();
  v4 = sub_1AB460374();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1AC59BB90](&v19, v4, WitnessTable);
  sub_1AB461604();
  swift_getWitnessTable();
  sub_1AB461984();

  sub_1AB461804();
  swift_getWitnessTable();
  sub_1AB0273A8();
  v6 = sub_1AB460894();
  v8 = v7;

  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  sub_1AB1E5EFC(v9, v10, v11);
  if (v9)
  {
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v12 = ActionDispatcher.debugDescription.getter(a1);
    v14 = v13;
    sub_1AB1E5F48(v9, v10, v11);
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1AB4615D4();
  v15 = sub_1AB462314();
  v17 = v16;

  v20 = v15;
  v21 = v17;
  MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB5029C0);
  MEMORY[0x1AC59BA20](v6, v8);

  MEMORY[0x1AC59BA20](0x3A7478656E202C5DLL, 0xE900000000000020);
  MEMORY[0x1AC59BA20](v12, v14);

  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return v20;
}

uint64_t sub_1AB1E59E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AB462314();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ActionDispatcher.perform(_:withMetrics:asPartOf:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 176) = a4;
  *(v6 + 184) = a5;
  *(v6 + 160) = a1;
  *(v6 + 168) = a2;
  *(v6 + 192) = *a3;
  *(v6 + 200) = *v5;
  *(v6 + 216) = *(v5 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1AB1E5A58, 0, 0);
}

uint64_t sub_1AB1E5A58()
{
  v6 = v0;
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[22];
  v5 = v0[24];
  v0[28] = ActionDispatcher.perform(_:withMetrics:asPartOf:)(v2, &v5, v3, v1);

  return MEMORY[0x1EEE6DFA0](sub_1AB1E5AE4, 0, 0);
}

uint64_t sub_1AB1E5AE4()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 153;
  v0[3] = sub_1AB1E5BB0;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB1965A4(v2);
  sub_1AB014AC0(v2, &unk_1EB437930);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB1E5BB0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 232) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB1E5D0C, 0, 0);
  }

  else
  {
    v4 = *(v1 + 160);

    *v4 = *(v1 + 153);
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_1AB1E5D0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB1E5D70(uint64_t a1, uint64_t a2)
{
  v13 = &type metadata for SyncTaskScheduler;
  v14 = &protocol witness table for SyncTaskScheduler;
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  *(v4 + 32) = 0;
  sub_1AB01494C(v12, v11);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v4;
  sub_1AB0149B0(v11, (v7 + 5));
  v9[0] = sub_1AB1E667C;
  v9[1] = v7;
  v9[2] = sub_1AB1E6690;
  v9[3] = v4;
  sub_1AB01494C(v12, v10);
  v10[40] = 0;
  swift_retain_n();

  sub_1AB1965A4(v9);

  sub_1AB014AC0(v9, &unk_1EB437930);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v4;
}

uint64_t sub_1AB1E5EFC(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    v3 = a3;
  }

  return result;
}

void sub_1AB1E5F48(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t sub_1AB1E5F9C(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = result;
    v6 = qword_1EB4359B0;

    if (v6 != -1)
    {
      swift_once();
    }

    *&v27[0] = a3;
    type metadata accessor for BaseObjectGraph();

    swift_task_localValuePush();
    sub_1AB12F164(*(a3 + 16), &v28);
    swift_task_localValuePop();
    if (v28)
    {
      v41[10] = v38;
      v41[11] = v39;
      v42 = v40;
      v41[6] = v34;
      v41[7] = v35;
      v41[8] = v36;
      v41[9] = v37;
      v41[2] = v30;
      v41[3] = v31;
      v41[4] = v32;
      v41[5] = v33;
      v41[0] = v28;
      v41[1] = v29;
      v7 = v5[3];
      v8 = v5[4];
      __swift_project_boxed_opaque_existential_1Tm(v5, v7);
      (*(v8 + 8))(&v28, v7, v8);
      v9 = v28;
      *(&v29 + 1) = &type metadata for ScalarDictionary;
      *&v28 = *(&v28 + 1);
      sub_1AB014B78(&v28, v27);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1AB01AE18(v27, 0xD000000000000021, 0x80000001AB502A10, isUniquelyReferenced_nonNull_native);

      if (*(v3 + 16) && (v11 = sub_1AB014DB4(0xD00000000000001ELL, 0x80000001AB501090), (v12 & 1) != 0))
      {
        sub_1AB0165C4(*(v3 + 56) + 32 * v11, &v28);
        sub_1AB014AC0(&v28, &unk_1EB437E60);
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
        sub_1AB014AC0(&v28, &unk_1EB437E60);
        *&v28 = a3;

        swift_task_localValuePush();
        v13 = sub_1AB12ECA0(*(a3 + 16));
        swift_task_localValuePop();
        if (v13)
        {
          v14 = v9;
          v15 = *(v13 + 240);
          os_unfair_lock_lock((v15 + 48));
          v17 = *(v15 + 16);
          v16 = *(v15 + 24);
          sub_1AB0CADDC(v17);
          os_unfair_lock_unlock((v15 + 48));
          if (v17)
          {

            sub_1AB0CAE64(v17);
            v9 = v14;
            if (v16)
            {
              *(&v29 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
              *&v28 = v16;
              sub_1AB014B78(&v28, v27);
              v18 = swift_isUniquelyReferenced_nonNull_native();
              sub_1AB01AE18(v27, 0xD00000000000001ELL, 0x80000001AB501090, v18);
            }

            else
            {
            }
          }

          else
          {

            v9 = v14;
          }
        }
      }

      v19 = *(v9 + 16);
      if (v19)
      {
        v20 = (v9 + 72);
        do
        {
          v21 = *(v20 - 5);
          v22 = *(v20 - 4);
          v23 = *(v20 - 24);
          v24 = *(v20 - 2);
          v25 = *(v20 - 1);
          v26 = *v20;
          v20 += 6;
          *&v28 = v21;
          *(&v28 + 1) = v22;
          LOBYTE(v29) = v23;
          *(&v29 + 1) = v24;
          *&v30 = v25;
          *(&v30 + 1) = v26;
          *&v27[0] = v3;

          MetricsPipeline.process(_:using:)(&v28, v27);

          --v19;
        }

        while (v19);
      }

      sub_1AB056154(v41);
    }

    else
    {

      sub_1AB014AC0(&v28, &unk_1EB438490);
      type metadata accessor for ActionDispatcher.PerformError();
      swift_getWitnessTable();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1AB1E6448@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(v1 + 16) + 88))(*(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

uint64_t sub_1AB1E64F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for StartUpPerformanceEvent.RawCheckpoint(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StartUpPerformanceEvent.RawCheckpoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1AB1E65D8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1AB1E65F0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1AB1E6628()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB1E66B0(id *a1)
{
  v9 = *a1;
  v1 = [*a1 allObjects];
  v2 = sub_1AB460954();

  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1AB4618F4())
  {
    v4 = i - 1;
    if (__OFSUB__(i, 1))
    {
LABEL_14:
      __break(1u);
    }

    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1AC59C990](v4, v2);
        goto LABEL_9;
      }

      if ((v4 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v5 = *(v2 + 32 + 8 * v4);
      swift_unknownObjectRetain();
LABEL_9:
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4384F0);
      v6 = sub_1AB461F94();
      swift_unknownObjectRelease();
      if (v5 == v6)
      {
        [v9 removeObject_];
      }

      swift_unknownObjectRelease_n();
      if (!v4)
      {
      }

      if (__OFSUB__(v4--, 1))
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_1AB1E6854(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 128) = a2;
  *(v3 + 112) = v2;
  *(v3 + 120) = a1;
  *(v3 + 201) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1AB1E6978, 0, 0);
}

uint64_t sub_1AB1E6978()
{
  if (*(v0 + 201))
  {
    v1 = 0x404E000000000000;
  }

  else
  {
    v1 = *(v0 + 120);
  }

  v2 = *(v0 + 176);
  if (qword_1ED4D01B0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 136);
  v4 = qword_1ED4D3E40;
  v5 = *algn_1ED4D3E48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AB4D47F0;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  *(v6 + 48) = 0x6E65725F65676170;
  *(v6 + 56) = 0xEB00000000726564;
  *(v0 + 16) = v6;
  *(v0 + 24) = sub_1AB027C78;
  *(v0 + 32) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  v7 = sub_1AB460484();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AB4D47F0;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  *(v10 + 48) = 0x646563726F467369;
  *(v10 + 56) = 0xE800000000000000;
  *(v0 + 40) = v10;
  *(v0 + 48) = sub_1AB027C78;
  *(v0 + 56) = 0;

  v11 = sub_1AB460484();
  v13 = v12;

  *v3 = v11;
  v3[1] = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AB4D47F0;
  *(v14 + 32) = v7;
  *(v14 + 40) = v9;
  *(v14 + 48) = 0xD000000000000011;
  *(v14 + 56) = 0x80000001AB4FFFF0;
  *(v0 + 64) = v14;
  *(v0 + 72) = sub_1AB027C78;
  *(v0 + 80) = 0;
  v15 = sub_1AB460484();
  v17 = v16;

  v3[2] = v15;
  v3[3] = v17;
  v3[4] = v2;
  v3[5] = v1;
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1AB1E6C10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v70 = a2;
  v71 = a1;
  v66 = sub_1AB4601B4();
  v69 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AB4601F4();
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PageRenderEvent();
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1AB4601C4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438530);
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 120) = 0;
  v16 = v13;
  v59 = sub_1AB016760(0, &qword_1ED4D2060);
  (*(v10 + 104))(v12, *MEMORY[0x1E69E7FA0], v9);
  v57 = sub_1AB461164();
  (*(v10 + 8))(v12, v9);
  sub_1AB1EE4FC(v3, &v77);
  v64 = type metadata accessor for PageRenderEvent;
  v60 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB072850(v71, v60, type metadata accessor for PageRenderEvent);
  v17 = (*(v63 + 80) + 257) & ~*(v63 + 80);
  v62 = *(v63 + 80);
  v63 = v8 + 7;
  v18 = swift_allocObject();
  v19 = v90;
  v20 = v91;
  v21 = v88;
  *(v18 + 208) = v89;
  *(v18 + 224) = v19;
  *(v18 + 240) = v20;
  v22 = v86;
  v23 = v87;
  v24 = v84;
  *(v18 + 144) = v85;
  *(v18 + 160) = v22;
  *(v18 + 176) = v23;
  *(v18 + 192) = v21;
  v25 = v82;
  v26 = v83;
  *(v18 + 80) = v81;
  *(v18 + 96) = v25;
  *(v18 + 256) = v92;
  *(v18 + 112) = v26;
  *(v18 + 128) = v24;
  v27 = v78;
  *(v18 + 16) = v77;
  *(v18 + 32) = v27;
  v28 = v80;
  *(v18 + 48) = v79;
  *(v18 + 64) = v28;
  sub_1AB0746C0(v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  *(v18 + ((v8 + 7 + v17) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v75 = sub_1AB1EE534;
  v76 = v18;
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 1107296256;
  v73[2] = sub_1AB01D528;
  v74 = &block_descriptor_82;
  v29 = _Block_copy(v73);
  v56[1] = v16;

  v30 = v61;
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v72 = MEMORY[0x1E69E7CC0];
  sub_1AB0727E8(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01561C(&qword_1ED4D1FB0, &qword_1EB438540);
  v31 = v65;
  v32 = v66;
  sub_1AB4614E4();
  v33 = v57;
  MEMORY[0x1AC59C480](0, v30, v31, v29);
  _Block_release(v29);

  (*(v69 + 8))(v31, v32);
  (*(v67 + 8))(v30, v68);

  v34 = sub_1AB461124();
  sub_1AB1EE4FC(v58, &v77);
  v35 = swift_allocObject();
  v36 = v90;
  v37 = v91;
  v38 = v88;
  *(v35 + 208) = v89;
  *(v35 + 224) = v36;
  *(v35 + 240) = v37;
  v39 = v86;
  v40 = v87;
  v41 = v84;
  *(v35 + 144) = v85;
  *(v35 + 160) = v39;
  *(v35 + 176) = v40;
  *(v35 + 192) = v38;
  v42 = v82;
  v43 = v83;
  *(v35 + 80) = v81;
  *(v35 + 96) = v42;
  *(v35 + 256) = v92;
  *(v35 + 112) = v43;
  *(v35 + 128) = v41;
  v44 = v78;
  *(v35 + 16) = v77;
  *(v35 + 32) = v44;
  v45 = v80;
  *(v35 + 48) = v79;
  *(v35 + 64) = v45;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1AB1EE5C4;
  *(v46 + 24) = v35;
  sub_1AB1EDB9C(v34, sub_1AB1EE5CC, v46);

  v47 = v71;
  v48 = v60;
  v49 = v64;
  sub_1AB072850(v71, v60, v64);
  v50 = (v62 + 16) & ~v62;
  v51 = (v63 + v50) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  sub_1AB0746C0(v48, v52 + v50);
  v53 = v70;
  *(v52 + v51) = v70;
  sub_1AB072850(v47, v48, v49);
  v54 = swift_allocObject();
  sub_1AB0746C0(v48, v54 + v50);
  *(v54 + v51) = v53;
  v74 = &type metadata for SyncTaskScheduler;
  v75 = &protocol witness table for SyncTaskScheduler;
  *&v77 = sub_1AB1EE5F8;
  *(&v77 + 1) = v52;
  *&v78 = sub_1AB1EE7A0;
  *(&v78 + 1) = v54;
  sub_1AB01494C(v73, &v79);
  BYTE8(v81) = 0;
  swift_retain_n();

  sub_1AB0800FC(&v77);

  sub_1AB014AC0(&v77, &unk_1EB437970);
  return __swift_destroy_boxed_opaque_existential_1Tm(v73);
}

uint64_t sub_1AB1E7388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PageRenderEvent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  v12 = sub_1AB460BE4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1AB1EE4FC(a1, v24);
  sub_1AB072850(a2, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PageRenderEvent);
  v13 = (*(v7 + 80) + 273) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v15 = v24[13];
  *(v14 + 224) = v24[12];
  *(v14 + 240) = v15;
  *(v14 + 256) = v24[14];
  *(v14 + 272) = v25;
  v16 = v24[9];
  *(v14 + 160) = v24[8];
  *(v14 + 176) = v16;
  v17 = v24[11];
  *(v14 + 192) = v24[10];
  *(v14 + 208) = v17;
  v18 = v24[5];
  *(v14 + 96) = v24[4];
  *(v14 + 112) = v18;
  v19 = v24[7];
  *(v14 + 128) = v24[6];
  *(v14 + 144) = v19;
  v20 = v24[1];
  *(v14 + 32) = v24[0];
  *(v14 + 48) = v20;
  v21 = v24[3];
  *(v14 + 64) = v24[2];
  *(v14 + 80) = v21;
  sub_1AB0746C0(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *(v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  sub_1AB2313A4(0, 0, v11, &unk_1AB4DCF88, v14);
}

uint64_t sub_1AB1E75E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[39] = a5;
  v6[40] = a6;
  v6[38] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AB1E7608, 0, 0);
}

uint64_t sub_1AB1E7630()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_1AB1E76FC;
  v0[18] = swift_continuation_init();
  v2 = (v0 + 18);
  *(v2 + 72) = 1;
  sub_1AB196BA4(v2);
  sub_1AB014AC0(v2, &qword_1EB439FD0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB1E76FC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB1E7B54;
  }

  else
  {
    *(v1 + 344) = *(v1 + 224);
    *(v1 + 352) = *(v1 + 232);
    *(v1 + 368) = *(v1 + 248);
    *(v1 + 376) = *(v1 + 256);
    v3 = sub_1AB1E783C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB1E783C()
{
  v19 = v0;
  if (MetricsSamplingLottery.shouldCollect.getter())
  {
    *(v0 + 392) = *(*(v0 + 304) + 232);

    return MEMORY[0x1EEE6DFA0](sub_1AB1E7BC4, 0, 0);
  }

  else
  {

    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 312);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AB4D4720;
    v17 = sub_1AB0168A8(0, 41, 0, MEMORY[0x1E69E7CC0]);
    v3._object = 0x80000001AB502C60;
    v3._countAndFlagsBits = 0xD000000000000028;
    LogMessage.StringInterpolation.appendLiteral(_:)(v3);
    v4 = (v1 + *(type metadata accessor for PageRenderEvent() + 24));
    v5 = *v4;
    v6 = v4[1];
    *(v0 + 248) = MEMORY[0x1E69E6158];
    *(v0 + 224) = v5;
    *(v0 + 232) = v6;
    sub_1AB014A58(v0 + 224, v0 + 272, &unk_1EB437E60);
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;

    sub_1AB0169C4(v0 + 272, v0 + 144);
    *(v0 + 176) = 2;
    v7 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AB0168A8(0, *(v17 + 2) + 1, 1, v17);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[40 * v9];
    v11 = *(v0 + 144);
    v12 = *(v0 + 160);
    v10[64] = *(v0 + 176);
    *(v10 + 2) = v11;
    *(v10 + 3) = v12;
    sub_1AB014AC0(v0 + 224, &unk_1EB437E60);
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    *(v2 + 32) = v7;
    v18 = 3;
    OSLogger.log(contentsOf:withLevel:)(v2, &v18);

    sub_1AB1EE990();
    v14 = swift_allocError();
    sub_1AB2A4D0C(v14);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1AB1E7B54()
{
  v1 = *(v0 + 336);
  sub_1AB2A4D0C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB1E7BC4()
{
  v1 = v0 + 10;
  v0[10] = v0;
  v0[15] = v0 + 28;
  v0[11] = sub_1AB1E7C90;
  v0[18] = swift_continuation_init();
  v2 = (v0 + 18);
  *(v2 + 72) = 1;
  sub_1AB196A00(v2);
  sub_1AB014AC0(v2, &unk_1EB437910);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB1E7C90()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 400) = v2;
  if (v2)
  {

    swift_willThrow();
    v3 = sub_1AB1E8270;
  }

  else
  {
    *(v1 + 217) = *(v1 + 224);
    v3 = sub_1AB1E7DC8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB1E7DC8()
{
  v47 = v0;
  if (*(v0 + 217))
  {
    goto LABEL_14;
  }

  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v1 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v1[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v1 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    goto LABEL_13;
  }

  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  if (qword_1EB434630 != -1)
  {
    swift_once();
  }

  v3 = sub_1AB026D00(qword_1EB434638, unk_1EB434640);
  if (v3 != 2)
  {
    if (v3)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_13:
  if ([objc_opt_self() diagnosticsSubmissionAllowed])
  {
LABEL_14:
    v4 = *(v0 + 304);
    v5 = *v4;
    v6 = *(v4 + 8);
    v34 = *(v4 + 209);
    static MonotonicTime.now.getter(&v35);
    v36 = v35;
    sub_1AB2D6B40(v5, v6, &v34, &v36.tv_sec, v29);
    v7 = *(v0 + 360);
    v8 = *(v0 + 368);
    v9 = *(v0 + 352);
    *&v37 = *(v0 + 344);
    *(&v37 + 1) = v9;
    v38 = v7;
    v39 = v8;
    v40 = *(v0 + 376);
    v41 = v29[0];
    v42 = v29[1];
    v43 = v30;
    v44 = v31;
    v45 = v32;
    v46 = v33;
    sub_1AB431E9C(&v37);

    goto LABEL_23;
  }

LABEL_16:

  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 312);
  v11 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AB4D4720;
  v29[0] = sub_1AB0168A8(0, 43, 0, MEMORY[0x1E69E7CC0]);
  v13._object = 0x80000001AB502C90;
  v13._countAndFlagsBits = 0xD00000000000002ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  v14 = (v10 + *(type metadata accessor for PageRenderEvent() + 24));
  v15 = *v14;
  v16 = v14[1];
  *(v0 + 248) = MEMORY[0x1E69E6158];
  *(v0 + 224) = v15;
  *(v0 + 232) = v16;
  sub_1AB014A58(v0 + 224, v0 + 272, &unk_1EB437E60);
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;

  sub_1AB0169C4(v0 + 272, v0 + 144);
  *(v0 + 176) = 2;
  v17 = v29[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1AB0168A8(0, *(v29[0] + 2) + 1, 1, v29[0]);
    v29[0] = v17;
  }

  v19 = *(v17 + 2);
  v18 = *(v17 + 3);
  v20 = v19 + 1;
  if (v19 >= v18 >> 1)
  {
    v28 = sub_1AB0168A8((v18 > 1), v19 + 1, 1, v17);
    v20 = v19 + 1;
    v17 = v28;
  }

  *(v17 + 2) = v20;
  v21 = &v17[40 * v19];
  v22 = *(v0 + 144);
  v23 = *(v0 + 160);
  v21[64] = *(v0 + 176);
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  sub_1AB014AC0(v0 + 224, &unk_1EB437E60);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  *(v12 + 32) = v17;
  v29[0] = v11;
  LOBYTE(v36.tv_sec) = 3;
  OSLogger.log(contentsOf:withLevel:)(v12, &v36);

  sub_1AB1EE990();
  v25 = swift_allocError();
  sub_1AB2A4D0C(v25);

LABEL_23:
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1AB1E8270()
{
  v1 = *(v0 + 400);
  sub_1AB2A4D0C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB1E82E0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a2[1];
  v20 = *a2;
  v11 = *(a2 + 16);
  v21 = *(a2 + 3);
  v12 = a2[5];
  v13 = *(a3 + 216);
  *&v24 = &type metadata for MetricsSamplingLottery;
  v14 = swift_allocObject();
  *&v22 = v14;
  v14[2] = v5;
  v14[3] = v4;
  v14[4] = v7;
  v14[5] = v6;
  v14[6] = v8;
  v14[7] = v9;
  sub_1AB014B78(&v22, v27);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v13;
  sub_1AB01AE18(v27, 0xD00000000000002ALL, 0x80000001AB502C00, isUniquelyReferenced_nonNull_native);
  v16 = v26;

  if (*(a3 + 240) == 1)
  {
    *&v24 = MEMORY[0x1E69E6370];
    LOBYTE(v22) = 1;
    sub_1AB014B78(&v22, v27);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v16;
    sub_1AB01AE18(v27, 0xD00000000000002BLL, 0x80000001AB502C30, v17);
    v16 = v26;
  }

  *&v22 = v20;
  *(&v22 + 1) = v10;
  v23 = v11;
  v24 = v21;
  v25 = v12;
  *&v27[0] = v16;
  v18 = MetricsPipeline.process(_:using:)(&v22, v27);

  return v18;
}

uint64_t sub_1AB1E8498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438548);
  MEMORY[0x1EEE9AC00](v28);
  v5 = &v27 - v4;
  v6 = sub_1AB460134();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for PageRenderEvent() + 24);
  v29 = a2;
  v11 = (a2 + v10);
  v13 = *v11;
  v12 = v11[1];
  v14 = (*(v7 + 104))(v9, *MEMORY[0x1E6977AC8], v6);
  if (qword_1EB434B88 != -1)
  {
    v14 = swift_once();
  }

  v15 = qword_1EB46C200;
  MEMORY[0x1EEE9AC00](v14);
  *(&v27 - 4) = v13;
  *(&v27 - 3) = v12;
  *(&v27 - 2) = v9;
  os_unfair_lock_lock(v15 + 10);
  sub_1AB1EEC78(&v15[4]);
  os_unfair_lock_unlock(v15 + 10);
  (*(v7 + 8))(v9, v6);
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v16 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AB4D4720;
  v36 = sub_1AB0168A8(0, 26, 0, MEMORY[0x1E69E7CC0]);
  v18._object = 0x80000001AB502BE0;
  v18._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  v35[3] = MEMORY[0x1E69E6158];
  v35[0] = v13;
  v35[1] = v12;
  sub_1AB014A58(v35, v31, &unk_1EB437E60);
  v32 = 0u;
  v33 = 0u;

  sub_1AB0169C4(v31, &v32);
  v34 = 2;
  v19 = v36;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
    v36 = v19;
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[40 * v21];
  v23 = v32;
  v24 = v33;
  v22[64] = v34;
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  v36 = v19;
  sub_1AB014AC0(v35, &unk_1EB437E60);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v17 + 32) = v36;
  *&v32 = v16;
  LOBYTE(v35[0]) = 3;
  OSLogger.log(contentsOf:withLevel:)(v17, v35);

  sub_1AB072850(v29, v5, type metadata accessor for PageRenderEvent);
  swift_storeEnumTagMultiPayload();
  sub_1AB385B5C(v5);
  return sub_1AB014AC0(v5, &qword_1EB438548);
}

uint64_t sub_1AB1E88AC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438548);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v51 - v7);
  v9 = sub_1AB460134();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v51 - v14;
  *&v59 = a1;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  if (swift_dynamicCast())
  {
    v17 = (a2 + *(type metadata accessor for PageRenderEvent() + 24));
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(v10 + 104))(v13, *MEMORY[0x1E6977AD0], v9);
    if (qword_1EB434B88 != -1)
    {
      v20 = swift_once();
    }

    v21 = qword_1EB46C200;
    MEMORY[0x1EEE9AC00](v20);
    *(&v51 - 4) = v18;
    *(&v51 - 3) = v19;
    *(&v51 - 2) = v13;
    os_unfair_lock_lock(v21 + 10);
    sub_1AB1EEC78(&v21[4]);
    os_unfair_lock_unlock(v21 + 10);
    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    v55 = a3;
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v51 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1AB4D47F0;
    v64 = sub_1AB0168A8(0, 35, 0, MEMORY[0x1E69E7CC0]);
    v24._object = 0x80000001AB502BB0;
    v24._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    v25 = (a2 + *(type metadata accessor for PageRenderEvent() + 24));
    v26 = *v25;
    v27 = v25[1];
    v63 = MEMORY[0x1E69E6158];
    v53 = v26;
    v62[0] = v26;
    v62[1] = v27;
    sub_1AB014A58(v62, v58, &unk_1EB437E60);
    v59 = 0u;
    v60 = 0u;
    v52 = v27;

    sub_1AB0169C4(v58, &v59);
    v61 = 2;
    v28 = v64;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
      v64 = v28;
    }

    v31 = *(v28 + 2);
    v30 = *(v28 + 3);
    if (v31 >= v30 >> 1)
    {
      v28 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v28);
    }

    *(v28 + 2) = v31 + 1;
    v32 = &v28[40 * v31];
    v33 = v59;
    v34 = v60;
    v32[64] = v61;
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    v64 = v28;
    sub_1AB014AC0(v62, &unk_1EB437E60);
    v35._countAndFlagsBits = 44;
    v35._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    *(v23 + 32) = v64;
    v64 = sub_1AB0168A8(0, 9, 0, MEMORY[0x1E69E7CC0]);
    v36._countAndFlagsBits = 0x203A6E6F73616572;
    v36._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v36);
    swift_getErrorValue();
    v37 = v56;
    v38 = v57;
    v63 = v57;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v62);
    (*(*(v38 - 8) + 16))(boxed_opaque_existential_0, v37, v38);
    sub_1AB014A58(v62, v58, &unk_1EB437E60);
    v59 = 0u;
    v60 = 0u;
    sub_1AB0169C4(v58, &v59);
    v61 = 0;
    v40 = v64;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_1AB0168A8(0, *(v40 + 2) + 1, 1, v40);
      v64 = v40;
    }

    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    if (v42 >= v41 >> 1)
    {
      v40 = sub_1AB0168A8((v41 > 1), v42 + 1, 1, v40);
    }

    *(v40 + 2) = v42 + 1;
    v43 = &v40[40 * v42];
    v44 = v59;
    v45 = v60;
    v43[64] = v61;
    *(v43 + 2) = v44;
    *(v43 + 3) = v45;
    v64 = v40;
    sub_1AB014AC0(v62, &unk_1EB437E60);
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v46);
    *(v23 + 40) = v64;
    *&v59 = v51;
    LOBYTE(v62[0]) = 0;
    OSLogger.log(contentsOf:withLevel:)(v23, v62);

    v47 = (*(v10 + 104))(v15, *MEMORY[0x1E6977AC0], v9);
    if (qword_1EB434B88 != -1)
    {
      v47 = swift_once();
    }

    v48 = qword_1EB46C200;
    MEMORY[0x1EEE9AC00](v47);
    v49 = v52;
    *(&v51 - 4) = v53;
    *(&v51 - 3) = v49;
    *(&v51 - 2) = v15;
    os_unfair_lock_lock(v48 + 10);
    sub_1AB1EE83C(&v48[4]);
    os_unfair_lock_unlock(v48 + 10);
    (*(v10 + 8))(v15, v9);
    *v8 = a1;
    swift_storeEnumTagMultiPayload();
    v50 = a1;
    sub_1AB385B5C(v8);
    return sub_1AB014AC0(v8, &qword_1EB438548);
  }
}

__n128 PageRenderMetricsPresenter.Configuration.init(eventID:topic:pipeline:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 226) = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  v6 = *(a5 + 176);
  *(a6 + 192) = *(a5 + 160);
  *(a6 + 208) = v6;
  *(a6 + 224) = *(a5 + 192);
  v7 = *(a5 + 112);
  *(a6 + 128) = *(a5 + 96);
  *(a6 + 144) = v7;
  v8 = *(a5 + 144);
  *(a6 + 160) = *(a5 + 128);
  *(a6 + 176) = v8;
  v9 = *(a5 + 48);
  *(a6 + 64) = *(a5 + 32);
  *(a6 + 80) = v9;
  v10 = *(a5 + 80);
  *(a6 + 96) = *(a5 + 64);
  *(a6 + 112) = v10;
  result = *(a5 + 16);
  *(a6 + 32) = *a5;
  *(a6 + 48) = result;
  *(a6 + 225) = 2;
  *(a6 + 232) = 0;
  *(a6 + 240) = 0;
  *(a6 + 248) = 1;
  return result;
}

uint64_t PageRenderMetricsPresenter.Configuration.withClientIdOmitted()@<X0>(uint64_t a1@<X8>)
{
  result = sub_1AB06FCE4(v1, a1);
  *(a1 + 226) = 1;
  return result;
}

uint64_t PageRenderMetricsPresenter.Configuration.withActivityContext(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  result = sub_1AB06FCE4(v4, a4);
  *(a4 + 232) = a1;
  *(a4 + 240) = a2;
  *(a4 + 248) = a3 & 1;
  return result;
}

uint64_t sub_1AB1E9084@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1AB460514();
  v3 = NSClassFromString(v2);

  if (!v3 || ((ObjCClassMetadata = swift_getObjCClassMetadata(), (v5 = swift_conformsToProtocol2()) != 0) ? (v6 = ObjCClassMetadata == 0) : (v6 = 1), v6))
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AB4D47F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1AB4D4720;
    v10 = MEMORY[0x1E69E6158];
    v18 = MEMORY[0x1E69E6158];
    v16 = 0xD000000000000049;
    v17 = 0x80000001AB502B20;
    *(v9 + 48) = 0u;
    *(v9 + 32) = 0u;
    sub_1AB0169C4(&v16, v9 + 32);
    *(v9 + 64) = 0;
    *(v8 + 32) = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AB4D4720;
    v18 = v10;
    v16 = 0xD00000000000003ALL;
    v17 = 0x80000001AB502B70;
    *(v11 + 48) = 0u;
    *(v11 + 32) = 0u;
    sub_1AB0169C4(&v16, v11 + 32);
    *(v11 + 64) = 0;
    *(v8 + 40) = v11;
    v16 = v7;
    v15 = 3;
    OSLogger.log(contentsOf:withLevel:)(v8, &v15);

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v12 = *(v5 + 8);
    *(a1 + 24) = ObjCClassMetadata;
    *(a1 + 32) = v5;
    v13 = v5;
    __swift_allocate_boxed_opaque_existential_0(a1);
    return v12(ObjCClassMetadata, v13);
  }

  return result;
}

void sub_1AB1E92C4()
{
  v0 = sub_1AB460514();
  v1 = NSClassFromString(v0);

  if (!v1 || ((ObjCClassMetadata = swift_getObjCClassMetadata(), (v3 = swift_conformsToProtocol2()) != 0) ? (v4 = ObjCClassMetadata == 0) : (v4 = 1), v4))
  {
    qword_1EB432538 = 0;
    xmmword_1EB432518 = 0u;
    *algn_1EB432528 = 0u;
  }

  else
  {
    v5 = *(v3 + 8);
    qword_1EB432530 = ObjCClassMetadata;
    qword_1EB432538 = v3;
    v6 = v3;
    __swift_allocate_boxed_opaque_existential_0(&xmmword_1EB432518);
    v5(ObjCClassMetadata, v6);
  }
}

uint64_t sub_1AB1E9398()
{
  result = sub_1AB460514();
  qword_1EB4345F0 = result;
  return result;
}

id static PageRenderMetricsPresenter.pageEndNotification.getter()
{
  if (qword_1EB4345E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB4345F0;

  return v1;
}

uint64_t PageRenderMetricsPresenter.__allocating_init(eventID:topic:pipeline:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  PageRenderMetricsPresenter.init(eventID:topic:pipeline:)(a1, a2, a3, a4, a5);
  return v10;
}

void sub_1AB1E949C()
{
  v1 = *(v0 + 32);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1AB1EEC90(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t PageRenderMetricsPresenter.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PageRenderMetricsPresenter.init(configuration:)(a1);
  return v2;
}

uint64_t sub_1AB1E95A4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1AB1E949C();
  }

  return result;
}

uint64_t PageRenderMetricsPresenter.deinit()
{
  if (qword_1EB434678 != -1)
  {
    swift_once();
  }

  v1 = *(*(qword_1EB46C1F8 + OBJC_IVAR____TtC9JetEngine24ScenePhaseChangeObserver_multicastDelegate) + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB1E66B0((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  v2 = *(v0 + 32);
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v2 + v4));
  sub_1AB1E9730(v2 + v3);
  os_unfair_lock_unlock((v2 + v4));

  return v0;
}

uint64_t sub_1AB1E9730(uint64_t a1)
{
  v2 = type metadata accessor for PageRenderMetricsPresenter.State();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB072850(a1, v4, type metadata accessor for PageRenderMetricsPresenter.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1AB073CB0(v4, type metadata accessor for PageRenderMetricsPresenter.State);
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384C8);
  v7 = *&v4[*(v6 + 64) + 8];
  sub_1AB074218(&v4[*(v6 + 48)]);
  sub_1AB073CB0(v4, type metadata accessor for PageRenderEvent);
  swift_getObjectType();
  sub_1AB4611E4();
  if (v7)
  {
    sub_1AB4611F4();
  }

  return swift_unknownObjectRelease();
}

uint64_t PageRenderMetricsPresenter.__deallocating_deinit()
{
  PageRenderMetricsPresenter.deinit();

  return swift_deallocClassInstance();
}

id sub_1AB1E98BC()
{
  result = [objc_allocWithZone(_JEAtomicFlag) initWithInitialValue_];
  qword_1ED4CFEC8 = result;
  return result;
}

uint64_t (*PageRenderMetricsPresenter.isAccessibilityEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 24);
  *a1 = v3;
  *(a1 + 8) = [(_JEAtomicFlag *)v3 currentValue];
  return sub_1AB1E996C;
}

void PageRenderMetricsPresenter.event.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PageRenderMetricsPresenter.State();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 32);
  v7 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  sub_1AB072850(v6 + v7, v5, type metadata accessor for PageRenderMetricsPresenter.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1AB0746C0(v5, a1);
  }

  else
  {
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384C8) + 48);
    swift_unknownObjectRelease();
    sub_1AB0746C0(v5, a1);
    sub_1AB074218(&v5[v9]);
  }

  os_unfair_lock_unlock((v6 + v8));
}

Swift::Void __swiftcall PageRenderMetricsPresenter.setPageRequestTime(_:)(JetEngine::MonotonicTime a1)
{
  v2 = *(v1 + 32);
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_1AB1E9B6C(v2 + v3);

  os_unfair_lock_unlock((v2 + v4));
}

void sub_1AB1E9B6C(uint64_t a1)
{
  v2 = type metadata accessor for PageRenderMetricsPresenter.State();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB072850(a1, v4, type metadata accessor for PageRenderMetricsPresenter.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1AB073CB0(v4, type metadata accessor for PageRenderMetricsPresenter.State);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384C8);
    v6 = *(v5 + 48);
    v7 = v4[*(v5 + 64)];
    swift_unknownObjectRelease();
    sub_1AB074218(&v4[v6]);
    sub_1AB073CB0(v4, type metadata accessor for PageRenderEvent);
    if (v7 == 1)
    {
      sub_1AB40D678("JetEngine/PageRenderMetricsPresenter.swift", 0x2AuLL, 2, 0x247uLL);
    }

    static MonotonicTime.now.getter(&v11);
    tv_sec = v11.tv_sec;
    tv_nsec = v11.tv_nsec;
    if (qword_1ED4D0050 != -1)
    {
      swift_once();
    }

    v10 = off_1EB434B78;
    os_unfair_lock_lock(off_1EB434B78 + 8);
    *(v10 + 2) = tv_sec;
    *(v10 + 3) = tv_nsec;
    os_unfair_lock_unlock(v10 + 8);
  }
}

uint64_t sub_1AB1E9D20(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v57 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v50 = &v43 - v9;
  v10 = type metadata accessor for PageRenderMetricsPresenter.State();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PageRenderEvent();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB072850(a1, v12, type metadata accessor for PageRenderMetricsPresenter.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for PageRenderMetricsPresenter.State;
    v17 = v12;
    return sub_1AB073CB0(v17, v16);
  }

  v47 = a4;
  v49 = v4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384C8);
  v19 = &v12[v18[12]];
  v20 = *&v12[v18[16] + 8];
  v48 = *&v12[v18[20]];
  sub_1AB0746C0(v12, v15);
  v21 = *(v19 + 13);
  v55[12] = *(v19 + 12);
  v55[13] = v21;
  v55[14] = *(v19 + 14);
  v56 = v19[240];
  v22 = *(v19 + 9);
  v55[8] = *(v19 + 8);
  v55[9] = v22;
  v23 = *(v19 + 11);
  v55[10] = *(v19 + 10);
  v55[11] = v23;
  v24 = *(v19 + 5);
  v55[4] = *(v19 + 4);
  v55[5] = v24;
  v25 = *(v19 + 7);
  v55[6] = *(v19 + 6);
  v55[7] = v25;
  v26 = *(v19 + 1);
  v55[0] = *v19;
  v55[1] = v26;
  v27 = *(v19 + 3);
  v55[2] = *(v19 + 2);
  v55[3] = v27;
  if (!v20)
  {
    sub_1AB073CB0(a1, type metadata accessor for PageRenderMetricsPresenter.State);
    if (qword_1ED4CFFD0 != -1)
    {
      swift_once();
    }

    v51[2] = xmmword_1ED4D3D58;
    v52 = byte_1ED4D3D68;
    v53 = qword_1ED4D3D70;
    v54 = byte_1ED4D3D78;
    v30 = &v15[*(v13 + 24)];
    v31 = *v30;
    v32 = v30[1];
    static MonotonicTime.now.getter(v51);
    v33 = *(v57 + 16);
    tv_sec = v51[0].tv_sec;
    tv_nsec = v51[0].tv_nsec;
    v28 = v47;
    if (qword_1ED4D1F88 != -1)
    {
      v45 = v51[0].tv_nsec;
      v46 = v33;
      v44 = v51[0].tv_sec;
      swift_once();
      tv_sec = v44;
      tv_nsec = v45;
      v33 = v46;
    }

    MonotonicTime.init(timeInterval:)(tv_nsec / *&qword_1ED4D1F90 + tv_sec - v33);
    v51[0] = v51[1];
    PageRenderField<>.callAsFunction(for:at:)(v31, v32, &v51[0].tv_sec);
    v36 = [objc_opt_self() defaultCenter];
    if (qword_1EB4345E0 != -1)
    {
      swift_once();
    }

    v29 = v57;
    [v36 postNotificationName:qword_1EB4345F0 object:v57];

    goto LABEL_13;
  }

  if (a3)
  {
    sub_1AB073CB0(a1, type metadata accessor for PageRenderMetricsPresenter.State);
    swift_getObjectType();
    sub_1AB4611E4();
    sub_1AB4611F4();
    v28 = v47;
    v29 = v57;
LABEL_13:
    sub_1AB1E6C10(v15, *(v29 + 40));
    sub_1AB072850(v15, a1, type metadata accessor for PageRenderEvent);
    swift_storeEnumTagMultiPayload();
    if ([(_JEAtomicFlag *)*(v29 + 24) currentValue])
    {
      v37 = sub_1AB460BE4();
      v38 = v50;
      (*(*(v37 - 8) + 56))(v50, 1, 1, v37);
      sub_1AB460BA4();
      v39 = sub_1AB460B94();
      v40 = swift_allocObject();
      v41 = MEMORY[0x1E69E85E0];
      v40[2] = v39;
      v40[3] = v41;
      v40[4] = v28;
      sub_1AB2310D0(0, 0, v38, &unk_1AB4DCF30, v40);
      swift_unknownObjectRelease();

      sub_1AB074218(v55);
    }

    else
    {
      sub_1AB074218(v55);
      swift_unknownObjectRelease();
    }

    v16 = type metadata accessor for PageRenderEvent;
    v17 = v15;
    return sub_1AB073CB0(v17, v16);
  }

  sub_1AB074218(v55);
  swift_unknownObjectRelease();
  return sub_1AB073CB0(v15, type metadata accessor for PageRenderEvent);
}

uint64_t sub_1AB1EA2A4(uint64_t a1)
{
  *(v1 + 56) = a1;
  sub_1AB460BA4();
  *(v1 + 64) = sub_1AB460B94();
  v3 = sub_1AB460AE4();

  return MEMORY[0x1EEE6DFA0](sub_1AB1EA33C, v3, v2);
}

uint64_t sub_1AB1EA33C()
{

  if (qword_1ED4CFED0 != -1)
  {
    swift_once();
  }

  sub_1AB014A58(&unk_1EB434600, v0 + 16, &unk_1EB438510);
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    (*(v2 + 24))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  else
  {
    sub_1AB014AC0(v0 + 16, &unk_1EB438510);
  }

  **(v0 + 56) = v1 == 0;
  v3 = *(v0 + 8);

  return v3();
}

void PageRenderMetricsPresenter.end(_:)()
{
  v1 = *(v0 + 32);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1AB1EDDEC(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void sub_1AB1EA50C(uint64_t a1, uint64_t a2, char **a3)
{
  v95 = *a3;
  v6 = sub_1AB460194();
  v100 = *(v6 - 8);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v99 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v98 = &v90 - v9;
  v105 = sub_1AB460214();
  v97 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v96 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v90 - v12;
  v13 = type metadata accessor for PageRenderMetricsPresenter.State();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PageRenderEvent();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = a1;
  sub_1AB072850(a1, v15, type metadata accessor for PageRenderMetricsPresenter.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = type metadata accessor for PageRenderMetricsPresenter.State;
    v20 = v15;
LABEL_66:
    sub_1AB073CB0(v20, v19);
    return;
  }

  v103 = v3;
  v93 = v13;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384C8);
  v22 = &v15[v21[12]];
  v23 = &v15[v21[16]];
  v92 = *v23;
  v24 = *(v23 + 1);
  v108 = *(v23 + 2);
  v109 = v24;
  v107 = *(v23 + 3);
  v91 = v21;
  v102 = *&v15[v21[20]];
  sub_1AB0746C0(v15, v18);
  v25 = *(v22 + 11);
  v128 = *(v22 + 10);
  v129 = v25;
  v130 = *(v22 + 12);
  v26 = *(v22 + 26);
  v106 = *(v22 + 27);
  v131 = v26;
  v27 = *(v22 + 7);
  v124 = *(v22 + 6);
  v125 = v27;
  v28 = *(v22 + 9);
  v126 = *(v22 + 8);
  v127 = v28;
  v29 = *(v22 + 3);
  v120 = *(v22 + 2);
  v121 = v29;
  v30 = *(v22 + 5);
  v122 = *(v22 + 4);
  v123 = v30;
  v31 = *(v22 + 1);
  v118 = *v22;
  v119 = v31;
  v116 = *(v22 + 14);
  v117 = v22[240];
  v32 = *a2;
  v33 = *(a2 + 8);
  v34 = *(a2 + 32);
  v94 = v16;
  if (v34 <= 1)
  {
    if (v34)
    {
      sub_1AB073CB0(v132, type metadata accessor for PageRenderMetricsPresenter.State);
      v45 = v102;
      v46 = v103;
      if (qword_1EB4338A0 != -1)
      {
        swift_once();
      }

      v112 = xmmword_1EB46BF00;
      v113 = byte_1EB46BF10;
      v114 = qword_1EB46BF18;
      v115 = byte_1EB46BF20;
      v48 = &v18[*(v16 + 24)];
      v49 = *v48;
      v50 = v48[1];
      static MonotonicTime.now.getter(v110);
      v111 = v110[0];
      PageRenderField<>.callAsFunction(_:for:at:)(v32, v49, v50, &v111.tv_sec);
      tv_sec = v106;
      v47 = v109;
      if (!v109)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v35 = *(a2 + 13) | (*(a2 + 15) << 16);
      v36 = *(a2 + 9);
      sub_1AB073CB0(v132, type metadata accessor for PageRenderMetricsPresenter.State);
      v37 = (v36 << 8) | (v35 << 40);
      if (v37 | v33)
      {
        v38 = v37 | v33;
      }

      else
      {
        v38 = MEMORY[0x1E69E7CC8];
      }

      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
      *&v112 = v38;
      sub_1AB014B78(&v112, v110);

      v39 = v106;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111.tv_sec = v39;
      sub_1AB01AE18(v110, 0xD00000000000001ELL, 0x80000001AB501090, isUniquelyReferenced_nonNull_native);
      tv_sec = v111.tv_sec;

      if (qword_1ED4CFFE8 != -1)
      {
        swift_once();
      }

      v112 = xmmword_1ED4D3DA8;
      v113 = byte_1ED4D3DB8;
      v114 = qword_1ED4D3DC0;
      v115 = byte_1ED4D3DC8;
      v42 = &v18[*(v94 + 24)];
      v43 = *v42;
      v44 = v42[1];
      static MonotonicTime.now.getter(v110);
      v111 = v110[0];
      PageRenderField<>.callAsFunction(for:at:)(v43, v44, &v111.tv_sec);
      v45 = v102;
      v46 = v103;
      v47 = v109;
      if (!v109)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_38;
  }

  if (v34 == 2)
  {
    if ((v32 & 1) == 0)
    {
LABEL_14:
      v45 = v102;
      v46 = v103;
      tv_sec = v106;
LABEL_35:
      sub_1AB073CB0(v132, type metadata accessor for PageRenderMetricsPresenter.State);
      if (v108)
      {
        if (v108 == 1)
        {
          if (qword_1ED4CFFC8 != -1)
          {
            swift_once();
          }

          v112 = xmmword_1ED4D3D30;
          v113 = byte_1ED4D3D40;
          v114 = qword_1ED4D3D48;
          v115 = byte_1ED4D3D50;
          v71 = &v18[*(v94 + 24)];
          v72 = *v71;
          v73 = v71[1];
          static MonotonicTime.now.getter(v110);
          v111 = v110[0];
          PageRenderField<>.endTime(for:at:)(v72, v73, &v111.tv_sec);
          v108 = 0;
          v47 = v109;
          if (!v109)
          {
            goto LABEL_48;
          }
        }

        else
        {
          --v108;
          v47 = v109;
          if (!v109)
          {
LABEL_48:
            if (qword_1EB433A00 != -1)
            {
              swift_once();
            }

            v54 = v94;
            v55 = v45;
            if (byte_1EB432CF0)
            {
              goto LABEL_64;
            }

            if (qword_1EB435DE8 != -1)
            {
              swift_once();
            }

            if (byte_1EB43D0E1)
            {
              goto LABEL_64;
            }

            v74 = 739;
            goto LABEL_63;
          }
        }

LABEL_38:
        v61 = v47 - 1;
        if (v61)
        {
          v109 = v61;
          v55 = v45;
        }

        else
        {
          ObjectType = swift_getObjectType();
          v103 = v46;
          v106 = tv_sec;
          v94 = ObjectType;
          v63 = v96;
          sub_1AB460204();
          v64 = v104;
          sub_1AB460234();
          v95 = v18;
          v109 = *(v97 + 8);
          (v109)(v63, v105);
          v65 = v100;
          v66 = v101;
          v67 = *(v100 + 104);
          v68 = v98;
          v67(v98, *MEMORY[0x1E69E7F40], v101);
          v69 = v99;
          *v99 = 0;
          v67(v69, *MEMORY[0x1E69E7F28], v66);
          v55 = v102;
          MEMORY[0x1AC59C5B0](v64, v68, v69, v94);
          v70 = *(v65 + 8);
          v70(v69, v66);
          v70(v68, v66);
          (v109)(v104, v105);
          v18 = v95;
          tv_sec = v106;
          sub_1AB4611F4();
          v109 = 0;
        }

        goto LABEL_65;
      }

      if (qword_1EB433A00 != -1)
      {
        swift_once();
      }

      v54 = v94;
      v55 = v45;
      if (byte_1EB432CF0)
      {
        v108 = 0;
        goto LABEL_64;
      }

      if (qword_1EB435DE8 != -1)
      {
        swift_once();
      }

      v108 = 0;
      if (byte_1EB43D0E1)
      {
        goto LABEL_64;
      }

      v74 = 735;
      goto LABEL_63;
    }
  }

  else
  {
    if (qword_1EB4338A0 != -1)
    {
      swift_once();
    }

    v112 = xmmword_1EB46BF00;
    v113 = byte_1EB46BF10;
    v114 = qword_1EB46BF18;
    v115 = byte_1EB46BF20;
    v51 = &v18[*(v16 + 24)];
    v52 = *v51;
    v53 = v51[1];
    static MonotonicTime.now.getter(v110);
    v111 = v110[0];
    PageRenderField<>.callAsFunction(_:for:at:)(v32, v52, v53, &v111.tv_sec);
    if ((v33 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v54 = v94;
  if (!v107)
  {
    sub_1AB073CB0(v132, type metadata accessor for PageRenderMetricsPresenter.State);
    v55 = v102;
    tv_sec = v106;
    if (qword_1EB433A00 != -1)
    {
      swift_once();
    }

    if (byte_1EB432CF0)
    {
      v107 = 0;
LABEL_64:
      sub_1AB1603E0();
      v75 = swift_allocError();
      *v76 = xmmword_1AB4DCB20;
      *(v76 + 16) = 5;
      swift_willThrow();
      v77 = *(v54 + 20);

      *&v18[v77] = v75;
LABEL_65:
      v78 = v132;
      v79 = v132 + v91[12];
      v80 = v132 + v91[16];
      v81 = v91[20];
      sub_1AB072850(v18, v132, type metadata accessor for PageRenderEvent);
      v82 = v129;
      *(v79 + 160) = v128;
      *(v79 + 176) = v82;
      *(v79 + 192) = v130;
      v83 = v131;
      v84 = v125;
      *(v79 + 96) = v124;
      *(v79 + 112) = v84;
      v85 = v127;
      *(v79 + 128) = v126;
      *(v79 + 144) = v85;
      v86 = v121;
      *(v79 + 32) = v120;
      *(v79 + 48) = v86;
      v87 = v123;
      *(v79 + 64) = v122;
      *(v79 + 80) = v87;
      v88 = v119;
      *v79 = v118;
      *(v79 + 16) = v88;
      *(v79 + 208) = v83;
      *(v79 + 216) = tv_sec;
      *(v79 + 224) = v116;
      *(v79 + 240) = v117;
      *v80 = v92;
      v89 = v108;
      *(v80 + 8) = v109;
      *(v80 + 16) = v89;
      *(v80 + 24) = v107;
      *(v78 + v81) = v55;
      swift_storeEnumTagMultiPayload();
      v19 = type metadata accessor for PageRenderEvent;
      v20 = v18;
      goto LABEL_66;
    }

    if (qword_1EB435DE8 != -1)
    {
      swift_once();
    }

    v107 = 0;
    if (byte_1EB43D0E1)
    {
      goto LABEL_64;
    }

    v74 = 726;
LABEL_63:
    sub_1AB40DC60("JetEngine/PageRenderMetricsPresenter.swift", 0x2AuLL, 2, v74);
    goto LABEL_64;
  }

  v45 = v102;
  tv_sec = v106;
  if (v107 != 1)
  {
    --v107;
    v46 = v103;
    goto LABEL_35;
  }

  v56 = v103;
  if (qword_1ED4CFFE0 != -1)
  {
    swift_once();
  }

  v112 = xmmword_1ED4D3D80;
  v113 = byte_1ED4D3D90;
  v114 = qword_1ED4D3D98;
  v115 = byte_1ED4D3DA0;
  v57 = &v18[*(v54 + 24)];
  v58 = *v57;
  v59 = v57[1];
  static MonotonicTime.now.getter(v110);
  v111 = v110[0];
  PageRenderField<>.callAsFunction(for:at:)(v58, v59, &v111.tv_sec);
  if (qword_1EB4345C8 != -1)
  {
    swift_once();
  }

  v60 = off_1EB4345D8;
  os_unfair_lock_lock(off_1EB4345D8 + 5);
  sub_1AB1EC500(v60 + 16);
  if (!v56)
  {
    v46 = 0;
    os_unfair_lock_unlock(v60 + 5);
    v107 = 0;
    goto LABEL_35;
  }

  os_unfair_lock_unlock(v60 + 5);
  __break(1u);
}

Swift::Void __swiftcall PageRenderMetricsPresenter.processNetworkPerformanceMetrics(_:for:)(Swift::OpaquePointer _, JetEngine::PageIntentInstrumentationType a2)
{
  v3 = a2;
  rawValue = _._rawValue;
  v4 = type metadata accessor for PageRenderMetricsPresenter.State();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for PageIntentInstrumentation();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  v16 = *v3;
  v17 = *(v2 + 32);
  v18 = *(*v17 + *MEMORY[0x1E69E6B68] + 16);
  v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v17 + v19));
  if (v16)
  {
    sub_1AB072850(v17 + v18, v6, type metadata accessor for PageRenderMetricsPresenter.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1AB0746C0(v6, v12);
    }

    else
    {
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384C8) + 48);
      swift_unknownObjectRelease();
      sub_1AB0746C0(v6, v12);
      sub_1AB074218(&v6[v20]);
    }

    os_unfair_lock_unlock((v17 + v19));
    swift_storeEnumTagMultiPayload();
    v15 = v12;
  }

  else
  {
    sub_1AB072850(v17 + v18, v9, type metadata accessor for PageRenderMetricsPresenter.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1AB0746C0(v9, v15);
    }

    else
    {
      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384C8) + 48);
      swift_unknownObjectRelease();
      sub_1AB0746C0(v9, v15);
      sub_1AB074218(&v9[v21]);
    }

    os_unfair_lock_unlock((v17 + v19));
    swift_storeEnumTagMultiPayload();
  }

  sub_1AB0C741C(rawValue);
  sub_1AB073CB0(v15, type metadata accessor for PageIntentInstrumentation);
}

Swift::Void __swiftcall PageRenderMetricsPresenter.setPagePreloadStatus(_:)(JetEngine::PagePreloadStatus a1)
{
  v2 = *(v1 + 32);
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_1AB1EDE08(v2 + v3);
  os_unfair_lock_unlock((v2 + v4));
}

uint64_t sub_1AB1EB4E4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for PageRenderMetricsPresenter.State();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PageRenderEvent();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB072850(a1, v8, type metadata accessor for PageRenderMetricsPresenter.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for PageRenderMetricsPresenter.State;
    v13 = v8;
  }

  else
  {
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384C8) + 48);
    swift_unknownObjectRelease();
    sub_1AB0746C0(v8, v11);
    sub_1AB074218(&v8[v14]);
    if (qword_1EB435DC0 != -1)
    {
      swift_once();
    }

    v20 = byte_1EB46C340;
    v19[1] = xmmword_1EB46C320;
    v19[2] = *&byte_1EB46C330;
    v15 = &v11[*(v9 + 24)];
    v16 = *v15;
    v17 = v15[1];
    static MonotonicTime.now.getter(v19);
    sub_1AB1EB6E8(a2, a3, v16, v17, v19[0].tv_sec, v19[0].tv_nsec);
    v12 = type metadata accessor for PageRenderEvent;
    v13 = v11;
  }

  return sub_1AB073CB0(v13, v12);
}

uint64_t sub_1AB1EB6E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a2;
  v12 = sub_1AB45FF84();
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED4D0060 != -1)
  {
    swift_once();
  }

  v14 = qword_1ED4D3E38;
  v15 = *v6;
  v38 = *(v6 + 8);
  v39 = a5;
  v16 = *(v6 + 16);
  *&v47 = a3;
  *(&v47 + 1) = a4;
  *&v48 = a5;
  *(&v48 + 1) = a6;
  *&v49 = v15;
  *(&v49 + 1) = v38;
  LOBYTE(v50) = v16;
  v35 = a1;
  *(&v50 + 1) = a1;
  v51 = v42;
  *&v52[4] = v42;
  v52[0] = v47;
  v52[1] = v48;
  v52[2] = v49;
  v52[3] = v50;
  sub_1AB1EE9E4(v52);
  v17 = memcpy(v46, v52, sizeof(v46));
  v18 = *(v14 + 16);
  MEMORY[0x1EEE9AC00](v17);
  *(&v34 - 2) = v46;

  os_unfair_lock_lock(v18 + 8);
  sub_1AB1EEC60(v18 + 16);
  os_unfair_lock_unlock(v18 + 8);
  sub_1AB014AC0(&v47, &unk_1EB438560);
  v41 = v15;
  v19 = sub_1AB461614();
  v20 = v39;
  v44 = v39;
  v45 = a6;
  sub_1AB299E24(v19, v21, a3, a4, &v44);

  if (qword_1ED4D0058 != -1)
  {
    swift_once();
  }

  v22 = sub_1AB45FFC4();
  __swift_project_value_buffer(v22, qword_1ED4D3E20);
  MEMORY[0x1AC59BAE0](a3, a4);
  v23 = v40;
  sub_1AB45FF94();
  sub_1AB1EEAE0();
  sub_1AB3201E4();
  sub_1AB0177B8(v24);
  swift_bridgeObjectRetain_n();

  v25 = sub_1AB45FFA4();
  LODWORD(v38) = sub_1AB461244();
  result = sub_1AB461314();
  if ((result & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
LABEL_17:

    return (*(v36 + 8))(v23, v37);
  }

  if ((v16 & 1) == 0)
  {

    if (v41)
    {
      v27 = a6;
LABEL_14:
      v28 = a4;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43 = v30;
      v44 = v20;
      *v29 = 134218754;
      v45 = v27;
      sub_1AB35DE9C();
      *(v29 + 4) = v31;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_1AB030D2C(a3, v28, &v43);
      *(v29 + 22) = 2048;
      if (qword_1ED4D1F88 != -1)
      {
        swift_once();
      }

      *(v29 + 24) = v27 / *&qword_1ED4D1F90 + v20;
      *(v29 + 32) = 2080;
      v32 = sub_1AB030D2C(v35, v42, &v43);

      *(v29 + 34) = v32;
      v33 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v25, v38, v33, v41, "%{signpost.description:event_time}lluid=%s, instant=%f, value=%s", v29, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v30, -1, -1);
      MEMORY[0x1AC59F020](v29, -1, -1);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v41 >> 32)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v41 & 0xFFFFF800) != 0xD800)
  {
    if (v41 >> 16 <= 0x10)
    {
      v27 = a6;

      v41 = &v44;
      goto LABEL_14;
    }

    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1AB1EBBE0(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1AB45FF84();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1ED4D0060 != -1)
  {
    swift_once();
  }

  v42 = qword_1ED4D3E38;
  v43 = v13;
  v38 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v14 = 0x6669636570736E75;
      v15 = 0xEB00000000646569;
    }

    else
    {
      v14 = 0xD000000000000012;
      v15 = 0x80000001AB4FE3A0;
    }
  }

  else
  {
    v14 = 0x657373696D736964;
    v15 = 0xE900000000000064;
    if (a1)
    {
      v14 = 0x756F72676B636162;
      v15 = 0xEA0000000000646ELL;
    }
  }

  v16 = *v5;
  v41 = *(v5 + 8);
  v17 = *(v5 + 16);
  *&v48 = a2;
  *(&v48 + 1) = a3;
  *&v49 = a4;
  *(&v49 + 1) = a5;
  *&v50 = v16;
  *(&v50 + 1) = v41;
  LOBYTE(v51) = v17;
  *(&v51 + 1) = v14;
  v52 = v15;
  *&v53[4] = v15;
  v53[0] = v48;
  v53[1] = v49;
  v53[2] = v50;
  v53[3] = v51;
  sub_1AB1EE9E4(v53);
  v44 = a2;
  v18 = memcpy(v54, v53, sizeof(v54));
  v19 = *(v42 + 16);
  MEMORY[0x1EEE9AC00](v18);
  *&v37[-16] = v54;

  os_unfair_lock_lock(v19 + 8);
  sub_1AB1EEAC4(v19 + 16);
  v20 = v44;
  os_unfair_lock_unlock(v19 + 8);
  sub_1AB014AC0(&v48, &unk_1EB438560);
  v21 = v16;
  v22 = sub_1AB461614();
  v46 = a4;
  v47 = a5;
  sub_1AB299E24(v22, v23, v20, a3, &v46);

  if (qword_1ED4D0058 != -1)
  {
    swift_once();
  }

  v24 = sub_1AB45FFC4();
  __swift_project_value_buffer(v24, qword_1ED4D3E20);
  MEMORY[0x1AC59BAE0](v20, a3);
  v25 = v43;
  sub_1AB45FF94();
  sub_1AB1EEAE0();
  sub_1AB3201E4();
  sub_1AB0177B8(v26);

  v27 = sub_1AB45FFA4();
  v28 = sub_1AB461244();
  result = sub_1AB461314();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  LODWORD(v42) = v28;
  if ((v17 & 1) == 0)
  {

    if (!v21)
    {
      __break(1u);
LABEL_15:

      return (*(v39 + 8))(v25, v40);
    }

LABEL_20:
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v45 = v31;
    v46 = a4;
    *v30 = 134218754;
    v47 = a5;
    sub_1AB35DE9C();
    *(v30 + 4) = v32;
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_1AB030D2C(v44, a3, &v45);
    *(v30 + 22) = 2048;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    *(v30 + 24) = a5 / *&qword_1ED4D1F90 + a4;
    *(v30 + 32) = 2080;
    v33 = 0xE900000000000064;
    if (v38 > 1u)
    {
      if (v38 == 2)
      {
        v34 = 0x6669636570736E75;
        v33 = 0xEB00000000646569;
      }

      else
      {
        v34 = 0xD000000000000012;
        v33 = 0x80000001AB4FE3A0;
      }
    }

    else if (v38)
    {
      v34 = 0x756F72676B636162;
      v33 = 0xEA0000000000646ELL;
    }

    else
    {
      v34 = 0x657373696D736964;
    }

    v35 = sub_1AB030D2C(v34, v33, &v45);

    *(v30 + 34) = v35;
    v36 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v27, v42, v36, v21, "%{signpost.description:event_time}lluid=%s, instant=%f, value=%s", v30, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1AC59F020](v31, -1, -1);
    MEMORY[0x1AC59F020](v30, -1, -1);

    return (*(v39 + 8))(v25, v40);
  }

  if (v21 >> 32)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if ((v21 & 0xFFFFF800) != 0xD800)
  {
    if (v21 >> 16 <= 0x10)
    {

      v21 = &v46;
      goto LABEL_20;
    }

    goto LABEL_32;
  }

LABEL_33:
  __break(1u);
  return result;
}

Swift::Void __swiftcall PageRenderMetricsPresenter.updateContext(merging:)(JetEngine::MetricsFieldsContext merging)
{
  v2 = *(v1 + 32);
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_1AB1EDE24(v2 + v3);
  os_unfair_lock_unlock((v2 + v4));
}

uint64_t sub_1AB1EC214(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PageRenderMetricsPresenter.State();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PageRenderEvent();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB072850(a1, v7, type metadata accessor for PageRenderMetricsPresenter.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1AB073CB0(v7, type metadata accessor for PageRenderMetricsPresenter.State);
  }

  sub_1AB073CB0(a1, type metadata accessor for PageRenderMetricsPresenter.State);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384C8);
  v13 = &v7[v12[12]];
  v14 = &v7[v12[16]];
  v36 = *v14;
  v15 = *(v14 + 1);
  v34 = *(v14 + 2);
  v35 = v15;
  v16 = *(v14 + 3);
  v32 = *&v7[v12[20]];
  v33 = v16;
  sub_1AB0746C0(v7, v10);
  v17 = *(v13 + 13);
  v38[12] = *(v13 + 12);
  v39 = v17;
  v40 = *(v13 + 14);
  v41 = v13[240];
  v18 = *(v13 + 9);
  v38[8] = *(v13 + 8);
  v38[9] = v18;
  v19 = *(v13 + 11);
  v38[10] = *(v13 + 10);
  v38[11] = v19;
  v20 = *(v13 + 5);
  v38[4] = *(v13 + 4);
  v38[5] = v20;
  v21 = *(v13 + 7);
  v38[6] = *(v13 + 6);
  v38[7] = v21;
  v22 = *(v13 + 1);
  v38[0] = *v13;
  v38[1] = v22;
  v23 = *(v13 + 3);
  v38[2] = *(v13 + 2);
  v38[3] = v23;
  sub_1AB1EE4FC(v38, v37);
  v24 = *(&v39 + 1);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = v24;
  sub_1AB264208(a2, sub_1AB06BA1C, 0, isUniquelyReferenced_nonNull_native, &v42);

  if (v2)
  {

    __break(1u);
  }

  else
  {
    sub_1AB074218(v38);
    v26 = v42;

    v37[27] = v26;
    v27 = v12[12];
    v28 = a1 + v12[16];
    v29 = v12[20];
    sub_1AB0746C0(v10, a1);
    sub_1AB1EE4FC(v37, a1 + v27);
    *v28 = v36;
    v30 = v34;
    *(v28 + 8) = v35;
    *(v28 + 16) = v30;
    v31 = v32;
    *(v28 + 24) = v33;
    *(a1 + v29) = v31;
    swift_storeEnumTagMultiPayload();
    return sub_1AB074218(v37);
  }

  return result;
}

void sub_1AB1EC500(_BYTE *a1)
{
  if (*a1 == 1)
  {
    if (qword_1EB432540 != -1)
    {
      swift_once();
    }

    v2 = qword_1EB432550;
    os_unfair_lock_lock((qword_1EB432550 + 20));
    sub_1AB1EC5A8((v2 + 16));
    if (v1)
    {
      os_unfair_lock_unlock((v2 + 20));
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v2 + 20));
    }
  }
}

_BYTE *sub_1AB1EC5A8(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    v1 = result;
    if (qword_1EB432508 != -1)
    {
      swift_once();
    }

    sub_1AB014A58(&xmmword_1EB432518, &v13, &qword_1EB438570);
    if (v14)
    {
      sub_1AB0149B0(&v13, &v15);
      v2 = v17;
      v3 = v18;
      __swift_project_boxed_opaque_existential_1Tm(&v15, v17);
      (*(v3 + 16))(v2, v3);
      *v1 = 1;
      if (qword_1ED4D1FC0 != -1)
      {
        swift_once();
      }

      v4 = qword_1ED4D1FC8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1AB4D4720;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1AB4D4720;
      v14 = MEMORY[0x1E69E6158];
      *&v13 = 0xD000000000000034;
      *(&v13 + 1) = 0x80000001AB502D80;
      *(v6 + 48) = 0u;
      *(v6 + 32) = 0u;
      sub_1AB0169C4(&v13, v6 + 32);
      *(v6 + 64) = 0;
      *(v5 + 32) = v6;
      *&v13 = v4;
      v12 = 3;
      OSLogger.log(contentsOf:withLevel:)(v5, &v12);

      return __swift_destroy_boxed_opaque_existential_1Tm(&v15);
    }

    else
    {
      sub_1AB014AC0(&v13, &qword_1EB438570);
      if (qword_1ED4D1FC0 != -1)
      {
        swift_once();
      }

      v7 = qword_1ED4D1FC8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1AB4D47F0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1AB4D4720;
      v10 = MEMORY[0x1E69E6158];
      v17 = MEMORY[0x1E69E6158];
      v15 = 0xD000000000000044;
      v16 = 0x80000001AB502CF0;
      *(v9 + 48) = 0u;
      *(v9 + 32) = 0u;
      sub_1AB0169C4(&v15, v9 + 32);
      *(v9 + 64) = 0;
      *(v8 + 32) = v9;
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1AB4D4720;
      v17 = v10;
      v15 = 0xD000000000000031;
      v16 = 0x80000001AB502D40;
      *(v11 + 48) = 0u;
      *(v11 + 32) = 0u;
      sub_1AB0169C4(&v15, v11 + 32);
      *(v11 + 64) = 0;
      *(v8 + 40) = v11;
      v15 = v7;
      LOBYTE(v13) = 3;
      OSLogger.log(contentsOf:withLevel:)(v8, &v13);
    }
  }

  return result;
}

Swift::Void __swiftcall PageRenderMetricsPresenter.viewDidAppear()()
{
  v1 = *(v0 + 32);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1AB1EDE40(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1AB1EC9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v56 - v7;
  v9 = type metadata accessor for PageRenderMetricsPresenter.State();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PageRenderEvent();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB072850(a1, v11, type metadata accessor for PageRenderMetricsPresenter.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1AB073CB0(v11, type metadata accessor for PageRenderMetricsPresenter.State);
  }

  v57 = v8;
  v58 = a3;
  v63 = v3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384C8);
  v17 = &v11[v16[12]];
  v18 = &v11[v16[16]];
  v19 = *v18;
  v20 = *(v18 + 1);
  v61 = *(v18 + 2);
  v62 = v20;
  v21 = *(v18 + 3);
  v59 = *&v11[v16[20]];
  v60 = v21;
  sub_1AB0746C0(v11, v14);
  v22 = *(v17 + 13);
  v82 = *(v17 + 12);
  v83 = v22;
  v84 = *(v17 + 14);
  v85 = v17[240];
  v23 = *(v17 + 9);
  v78 = *(v17 + 8);
  v79 = v23;
  v24 = *(v17 + 11);
  v80 = *(v17 + 10);
  v81 = v24;
  v25 = *(v17 + 5);
  v74 = *(v17 + 4);
  v75 = v25;
  v26 = *(v17 + 7);
  v76 = *(v17 + 6);
  v77 = v26;
  v27 = *(v17 + 1);
  v70 = *v17;
  v71 = v27;
  v28 = *(v17 + 3);
  v72 = *(v17 + 2);
  v73 = v28;
  if (v19)
  {
    sub_1AB073CB0(a1, type metadata accessor for PageRenderMetricsPresenter.State);
    if (qword_1ED4CFE40 != -1)
    {
      swift_once();
    }

    v66 = xmmword_1ED4D3CF0;
    v67 = byte_1ED4D3D00;
    v68 = qword_1ED4D3D08;
    v69 = byte_1ED4D3D10;
    v29 = &v14[*(v12 + 24)];
    v30 = *v29;
    v31 = v29[1];
    static MonotonicTime.now.getter(&v65);
    v64 = v65;
    PageRenderField<>.callAsFunction(for:at:)(v30, v31, &v64);
  }

  else
  {
    v56 = v9;
    if (qword_1ED4D0030 != -1)
    {
      swift_once();
    }

    v66 = xmmword_1ED4D3DD0;
    v67 = byte_1ED4D3DE0;
    v68 = qword_1ED4D3DE8;
    v69 = byte_1ED4D3DF0;
    v32 = &v14[*(v12 + 24)];
    v33 = *v32;
    v34 = v32[1];
    if (qword_1ED4D0050 != -1)
    {
      swift_once();
    }

    v35 = off_1EB434B78;
    os_unfair_lock_lock(off_1EB434B78 + 8);
    v36 = *(v35 + 2);
    v37 = *(v35 + 3);
    os_unfair_lock_unlock(v35 + 8);
    sub_1AB073CB0(a1, type metadata accessor for PageRenderMetricsPresenter.State);
    *&v65 = v36;
    *(&v65 + 1) = v37;
    PageRenderField<>.callAsFunction(for:at:)(v33, v34, &v65);
    if (qword_1ED4D0040 != -1)
    {
      swift_once();
    }

    v66 = xmmword_1ED4D3DF8;
    v67 = byte_1ED4D3E08;
    v68 = qword_1ED4D3E10;
    v69 = byte_1ED4D3E18;
    static MonotonicTime.now.getter(&v65);
    v64 = v65;
    PageRenderField<>.callAsFunction(for:at:)(v33, v34, &v64);
    if (qword_1ED4CFEB8 != -1)
    {
      swift_once();
    }

    v38 = qword_1ED4CFEC8;
    if (([(_JEAtomicFlag *)qword_1ED4CFEC8 currentValue]& 1) == 0)
    {
      if (qword_1EB433E28 != -1)
      {
        swift_once();
      }

      v66 = xmmword_1EB46C110;
      v67 = byte_1EB46C120;
      v68 = qword_1EB46C128;
      v69 = byte_1EB46C130;
      static MonotonicTime.now.getter(&v65);
      v64 = v65;
      PageRenderField<>.callAsFunction(_:for:at:)(1, v33, v34, &v64);
      [(_JEAtomicFlag *)v38 setCurrentValue:?];
    }

    if ([(_JEAtomicFlag *)*(v86 + 24) currentValue])
    {
      v39 = sub_1AB460BE4();
      v40 = v57;
      (*(*(v39 - 8) + 56))(v57, 1, 1, v39);
      sub_1AB460BA4();
      v41 = sub_1AB460B94();
      v42 = swift_allocObject();
      v43 = MEMORY[0x1E69E85E0];
      v42[2] = v41;
      v42[3] = v43;
      v42[4] = v58;
      sub_1AB2310D0(0, 0, v40, &unk_1AB4DCFA0, v42);
    }
  }

  v44 = a1 + v16[12];
  v45 = a1 + v16[16];
  v46 = v16[20];
  sub_1AB072850(v14, a1, type metadata accessor for PageRenderEvent);
  v47 = v83;
  *(v44 + 192) = v82;
  *(v44 + 208) = v47;
  *(v44 + 224) = v84;
  *(v44 + 240) = v85;
  v48 = v79;
  *(v44 + 128) = v78;
  *(v44 + 144) = v48;
  v49 = v81;
  *(v44 + 160) = v80;
  *(v44 + 176) = v49;
  v50 = v75;
  *(v44 + 64) = v74;
  *(v44 + 80) = v50;
  v51 = v77;
  *(v44 + 96) = v76;
  *(v44 + 112) = v51;
  v52 = v71;
  *v44 = v70;
  *(v44 + 16) = v52;
  v53 = v73;
  *(v44 + 32) = v72;
  *(v44 + 48) = v53;
  *v45 = 1;
  v54 = v61;
  *(v45 + 8) = v62;
  *(v45 + 16) = v54;
  v55 = v59;
  *(v45 + 24) = v60;
  *(a1 + v46) = v55;
  swift_storeEnumTagMultiPayload();
  return sub_1AB073CB0(v14, type metadata accessor for PageRenderEvent);
}

uint64_t sub_1AB1ED080(uint64_t a1)
{
  *(v1 + 56) = a1;
  sub_1AB460BA4();
  *(v1 + 64) = sub_1AB460B94();
  v3 = sub_1AB460AE4();

  return MEMORY[0x1EEE6DFA0](sub_1AB1ED118, v3, v2);
}

uint64_t sub_1AB1ED118()
{

  if (qword_1ED4CFED0 != -1)
  {
    swift_once();
  }

  sub_1AB014A58(&unk_1EB434600, v0 + 16, &unk_1EB438510);
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    (*(v2 + 16))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  else
  {
    sub_1AB014AC0(v0 + 16, &unk_1EB438510);
  }

  **(v0 + 56) = v1 == 0;
  v3 = *(v0 + 8);

  return v3();
}

Swift::Void __swiftcall PageRenderMetricsPresenter.viewWillDisappear(forReason:)(JetEngine::ViewWillDisappearReason forReason)
{
  v1 = *(forReason.rawValue._countAndFlagsBits + 8);
  v2[0] = *forReason.rawValue._countAndFlagsBits;
  v2[1] = v1;
  sub_1AB1ED268(v2);
}

void sub_1AB1ED268(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 32);
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_1AB1EE408(v4 + v5);
  os_unfair_lock_unlock((v4 + v6));
  if (v2 == 0xD000000000000019 && 0x80000001AB502AB0 == v3 || (v7 = sub_1AB461DA4(), (v7 & 1) != 0) || (v7 = 0x7369447465656873, v2 == 0x7369447465656873) && v3 == 0xEE0064657373696DLL || (v7 = sub_1AB461DA4(), (v7 & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](v7);
    os_unfair_lock_lock((v4 + v6));
    sub_1AB1EE424(v4 + v5);
    os_unfair_lock_unlock((v4 + v6));
  }
}

uint64_t sub_1AB1ED420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PageRenderMetricsPresenter.State();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PageRenderEvent();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB072850(a1, v8, type metadata accessor for PageRenderMetricsPresenter.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for PageRenderMetricsPresenter.State;
    v13 = v8;
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384C8);
    v15 = *(v14 + 48);
    v16 = v8[*(v14 + 64)];
    swift_unknownObjectRelease();
    sub_1AB0746C0(v8, v11);
    sub_1AB074218(&v8[v15]);
    if (v16 == 1)
    {
      if (qword_1ED4CFE08 != -1)
      {
        swift_once();
      }

      v26 = xmmword_1ED4CFE10;
      LOBYTE(v27) = byte_1ED4CFE20;
      *(&v27 + 1) = qword_1ED4CFE28;
      v28 = byte_1ED4CFE30;
      v17 = &v11[*(v9 + 24)];
      v19 = *v17;
      v18 = v17[1];
      static MonotonicTime.now.getter(&v25);
      v24 = v25;
      PageRenderField<>.callAsFunction(for:at:)(v19, v18, &v24);
      if (a2 == 0xD000000000000019 && 0x80000001AB502AB0 == a3 || (sub_1AB461DA4() & 1) != 0 || a2 == 0x7369447465656873 && a3 == 0xEE0064657373696DLL || (sub_1AB461DA4() & 1) != 0)
      {
        if (qword_1EB433E68 != -1)
        {
          swift_once();
        }

        v26 = xmmword_1EB433E70;
        v27 = *&byte_1EB433E80;
        v28 = byte_1EB433E90;
        static MonotonicTime.now.getter(&v25);
        v21 = *(&v25 + 1);
        v20 = v25;
        v22 = 0;
      }

      else if (a2 == 0x756F72676B636162 && a3 == 0xEA0000000000646ELL || (sub_1AB461DA4() & 1) != 0)
      {
        if (qword_1EB433E68 != -1)
        {
          swift_once();
        }

        v26 = xmmword_1EB433E70;
        v27 = *&byte_1EB433E80;
        v28 = byte_1EB433E90;
        static MonotonicTime.now.getter(&v25);
        v21 = *(&v25 + 1);
        v20 = v25;
        v22 = 1;
      }

      else
      {
        if (qword_1EB433E68 != -1)
        {
          swift_once();
        }

        v26 = xmmword_1EB433E70;
        v27 = *&byte_1EB433E80;
        v28 = byte_1EB433E90;
        static MonotonicTime.now.getter(&v25);
        v21 = *(&v25 + 1);
        v20 = v25;
        v22 = 2;
      }

      sub_1AB1EBBE0(v22, v19, v18, v20, v21);
    }

    v12 = type metadata accessor for PageRenderEvent;
    v13 = v11;
  }

  return sub_1AB073CB0(v13, v12);
}

void sub_1AB1ED82C()
{
  v1 = *(v0 + 32);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1AB1EECB0(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void sub_1AB1ED8E8(uint64_t *a1)
{
  v1 = a1[1];
  v2[0] = *a1;
  v2[1] = v1;
  sub_1AB1ED268(v2);
}

Swift::Void __swiftcall PageRenderMetricsPresenter.didEnterBackground()()
{
  v0[0] = 0x756F72676B636162;
  v0[1] = 0xEA0000000000646ELL;
  sub_1AB1ED268(v0);
}

uint64_t PageRenderMetricsPresenter.eventID.getter()
{
  v1 = type metadata accessor for PageRenderMetricsPresenter.State();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PageRenderEvent();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 32);
  v8 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  sub_1AB072850(v7 + v8, v3, type metadata accessor for PageRenderMetricsPresenter.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1AB0746C0(v3, v6);
  }

  else
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384C8) + 48);
    swift_unknownObjectRelease();
    sub_1AB0746C0(v3, v6);
    sub_1AB074218(&v3[v10]);
  }

  os_unfair_lock_unlock((v7 + v9));
  v11 = *&v6[*(v4 + 24)];

  sub_1AB073CB0(v6, type metadata accessor for PageRenderEvent);
  return v11;
}

uint64_t sub_1AB1EDB44(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 64);
  v8 = *(a1 + 88);
  v11 = *a1;
  v12 = v5;
  v13 = v6;
  v9 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v9;
  v16 = v7 & 1;
  v17 = *(a1 + 72);
  v18 = v8;
  return sub_1AB3B6470(&v11, a2, a3, a4, a5);
}

uint64_t sub_1AB1EDB9C(void *a1, uint64_t a2, uint64_t a3)
{
  v15[3] = sub_1AB016760(0, &qword_1ED4D2060);
  v15[4] = &protocol witness table for OS_dispatch_queue;
  v15[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B58);
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  sub_1AB01494C(v15, v14);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v6;
  sub_1AB0149B0(v14, (v9 + 5));
  v12[0] = sub_1AB1EE85C;
  v12[1] = v9;
  v12[2] = sub_1AB1606E0;
  v12[3] = v6;
  sub_1AB01494C(v15, v13);
  v13[40] = 0;
  swift_retain_n();
  v10 = a1;

  sub_1AB196748(v12);

  sub_1AB014AC0(v12, &unk_1EB438550);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return v6;
}

uint64_t sub_1AB1EDD34(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027554;

  return sub_1AB072B44(a1, v1 + 16);
}

uint64_t getEnumTagSinglePayload for PageRenderMetricsPresenter.ActivityStart(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for PageRenderMetricsPresenter.ActivityStart(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1AB1EE02C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AB1EE074(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy249_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 233) = *(a2 + 233);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_1AB1EE120(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 249))
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

uint64_t sub_1AB1EE168(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 249) = 1;
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

    *(result + 249) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB1EE25C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AB1EE2B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy241_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_1AB1EE340(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 241))
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

uint64_t sub_1AB1EE388(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB1EE448(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027554;

  return sub_1AB1EA2A4(a1);
}

uint64_t sub_1AB1EE534()
{
  v1 = *(type metadata accessor for PageRenderEvent() - 8);
  v2 = (*(v1 + 80) + 257) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1AB1E7388(v0 + 16, v0 + v2, v3);
}

uint64_t sub_1AB1EE5F8(uint64_t a1)
{
  v3 = *(type metadata accessor for PageRenderEvent() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1AB1E8498(a1, v1 + v4, v5);
}

uint64_t objectdestroy_90Tm()
{
  v1 = (type metadata accessor for PageRenderEvent() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_1AB45F9B4();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1AB1EE7A0(void *a1)
{
  v3 = *(type metadata accessor for PageRenderEvent() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1AB1E88AC(a1, v1 + v4, v5);
}

uint64_t sub_1AB1EE86C(uint64_t a1)
{
  v4 = *(type metadata accessor for PageRenderEvent() - 8);
  v5 = (*(v4 + 80) + 273) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027554;

  return sub_1AB1E75E4(a1, v6, v7, v1 + 32, v1 + v5, v8);
}

unint64_t sub_1AB1EE990()
{
  result = qword_1EB433AD0;
  if (!qword_1EB433AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433AD0);
  }

  return result;
}

uint64_t sub_1AB1EE9E4(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0xA000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

unint64_t sub_1AB1EEAE0()
{
  result = qword_1EB4343F8;
  if (!qword_1EB4343F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4343F8);
  }

  return result;
}

uint64_t sub_1AB1EEB34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027460;

  return sub_1AB1ED080(a1);
}

unint64_t sub_1AB1EEC04()
{
  result = qword_1EB4385A8;
  if (!qword_1EB4385A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4385A8);
  }

  return result;
}

uint64_t JSBytecodeSource.init(fileURL:sourceURL:cacheURL:virtualMachine:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v35 = a3;
  v36 = a2;
  v37[1] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_1AB45F764();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  v18 = *(v11 + 16);
  v34 = a5;
  v18(a5, a1, v10, v15);
  v33 = a1;
  (v18)(v17, a1, v10);
  (v18)(v13, v36, v10);
  sub_1AB03BC60(v35, v9);
  v19 = v32;
  v32 = v17;
  v20 = sub_1AB45F654();
  v21 = sub_1AB45F654();
  v22 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v22 = sub_1AB45F654();
    (*(v11 + 8))(v9, v10);
  }

  v23 = objc_opt_self();
  v37[0] = 0;
  v24 = [v23 scriptOfType:0 memoryMappedFromASCIIFile:v20 withSourceURL:v21 andBytecodeCache:v22 inVirtualMachine:v19 error:v37];

  if (v24)
  {
    v25 = v37[0];

    sub_1AB03BCD0(v35);
    v26 = *(v11 + 8);
    v26(v36, v10);
    v26(v33, v10);
    v26(v13, v10);
    v26(v32, v10);
    result = type metadata accessor for JSBytecodeSource(0);
    v28 = v34;
    *(v34 + *(result + 20)) = v24;
    *(v28 + *(result + 24)) = v19;
  }

  else
  {
    v29 = v37[0];

    sub_1AB45F594();
    swift_willThrow();

    sub_1AB03BCD0(v35);
    v30 = *(v11 + 8);
    v30(v36, v10);
    v30(v33, v10);
    v30(v13, v10);
    v30(v32, v10);
    return (v30)(v34, v10);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSBytecodeSource.cacheBytecode()()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + *(type metadata accessor for JSBytecodeSource(0) + 20));
  v4[0] = 0;
  if ([v1 cacheBytecodeWithError_])
  {
    v2 = v4[0];
  }

  else
  {
    v3 = v4[0];
    sub_1AB45F594();

    swift_willThrow();
  }
}

uint64_t Unstable.JSBytecodeSource.init(fileURL:sourceURL:cacheURL:virtualMachine:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a4;
  v44 = a3;
  v45 = a2;
  v46 = a1;
  v40 = a5;
  v47[1] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = sub_1AB45F764();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v39 = type metadata accessor for JSBytecodeSource(0);
  MEMORY[0x1EEE9AC00](v39);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v38 = &v38 - v22;
  v23 = *(v12 + 16);
  v23(v17, v46, v11, v21);
  (v23)(v14, v45, v11);
  sub_1AB03BC60(v44, v10);
  v42 = v19;
  (v23)(v19, v17, v11);
  v43 = v10;
  sub_1AB03BC60(v10, v7);
  v24 = v41;
  v25 = sub_1AB45F654();
  v26 = sub_1AB45F654();
  v27 = 0;
  if ((*(v12 + 48))(v7, 1, v11) != 1)
  {
    v27 = sub_1AB45F654();
    (*(v12 + 8))(v7, v11);
  }

  v28 = objc_opt_self();
  v47[0] = 0;
  v29 = [v28 scriptOfType:0 memoryMappedFromASCIIFile:v25 withSourceURL:v26 andBytecodeCache:v27 inVirtualMachine:v24 error:v47];

  if (v29)
  {
    v30 = v47[0];

    sub_1AB03BCD0(v44);
    v31 = *(v12 + 8);
    v31(v45, v11);
    v31(v46, v11);
    sub_1AB03BCD0(v43);
    v31(v14, v11);
    v31(v17, v11);
    v33 = v38;
    v32 = v39;
    v34 = v42;
    *&v42[*(v39 + 20)] = v29;
    *(v34 + *(v32 + 24)) = v24;
    sub_1AB050024(v34, v33);
    return sub_1AB050024(v33, v40);
  }

  else
  {
    v36 = v47[0];

    sub_1AB45F594();
    swift_willThrow();

    sub_1AB03BCD0(v44);
    v37 = *(v12 + 8);
    v37(v45, v11);
    v37(v46, v11);
    sub_1AB03BCD0(v43);
    v37(v14, v11);
    v37(v17, v11);
    return (v37)(v42, v11);
  }
}

uint64_t sub_1AB1EF674()
{
  result = sub_1AB45F764();
  if (v1 <= 0x3F)
  {
    result = sub_1AB016760(319, &qword_1ED4D0470);
    if (v2 <= 0x3F)
    {
      result = sub_1AB016760(319, &qword_1ED4D0BF0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AB1EF778()
{
  result = type metadata accessor for JSBytecodeSource(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Device.osVersion.getter()
{
  v0 = JEGestaltGetSystemVersion();
  v1 = sub_1AB460544();

  return v1;
}

uint64_t Device.buildVersion.getter()
{
  v0 = JEGestaltGetBuildVersion();
  v1 = sub_1AB460544();

  return v1;
}

uint64_t Device.localizedModel.getter()
{
  v0 = JEGestaltGetDeviceModel();
  v1 = sub_1AB460544();

  return v1;
}

uint64_t Device.marketingName.getter()
{
  v0 = JEGestaltGetMarketingName();
  v1 = sub_1AB460544();

  return v1;
}

uint64_t Device.marketingShortName.getter()
{
  v0 = JEGestaltGetMarketingName();
  v1 = sub_1AB460544();

  return v1;
}

uint64_t Device.physicalModel.getter()
{
  v0 = JEGestaltGetProductType();
  v1 = sub_1AB460544();

  return v1;
}

uint64_t Device.deviceClass.getter()
{
  v0 = JEGestaltGetDeviceClass();
  v1 = sub_1AB460544();

  return v1;
}

uint64_t Device.marketingFamilyName.getter()
{
  v0 = JEGestaltGetMarketingDeviceFamilyName();
  v1 = sub_1AB460544();

  return v1;
}

id Device.totalSystemCapacity.getter()
{
  v0 = JEGestaltGetTotalSystemCapacity();
  v1 = [v0 integerValue];

  return v1;
}

id Device.totalSystemAvailable.getter()
{
  v0 = JEGestaltGetTotalSystemAvailable();
  v1 = [v0 integerValue];

  return v1;
}

id Device.totalDataCapacity.getter()
{
  v0 = JEGestaltGetTotalDataCapacity();
  v1 = [v0 integerValue];

  return v1;
}

id Device.totalDataAvailable.getter()
{
  v0 = JEGestaltGetTotalDataAvailable();
  v1 = [v0 integerValue];

  return v1;
}

id Device.totalDiskCapacity.getter()
{
  v0 = JEGestaltGetTotalDiskCapacity();
  v1 = [v0 integerValue];

  return v1;
}

uint64_t sub_1AB1EFC4C()
{
  v0 = sub_1AB460134();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E6977AC0], v0);
  sub_1AB460174();
  return (*(v1 + 8))(v3, v0);
}

uint64_t MetricsData.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  JSONObject.subscript.getter(0x73646C656966, 0xE600000000000000, v29);
  sub_1AB01EC0C(v29, v26);
  v6 = v27;
  if (!v27)
  {

    sub_1AB066D84(v29);
    sub_1AB014AC0(v26, &qword_1EB436BA0);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
LABEL_8:
    sub_1AB014AC0(&v32, &qword_1EB436BC0);
LABEL_9:
    sub_1AB163664();
    swift_allocError();
    *v15 = xmmword_1AB4DD110;
    *(v15 + 16) = 0x20000001F1FFC878uLL;
    *(v15 + 24) = 0;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  v7 = v28;
  __swift_project_boxed_opaque_existential_1Tm(v26, v27);
  (*(v7 + 160))(&v32, v6, v7);
  sub_1AB066D84(v29);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  v8 = *(&v33 + 1);
  if (!*(&v33 + 1))
  {

    goto LABEL_8;
  }

  v9 = v34;
  __swift_project_boxed_opaque_existential_1Tm(&v32, *(&v33 + 1));
  v10 = (*(v9 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v8, v9);
  sub_1AB07CDB0(&v32);
  if (!v10)
  {

    goto LABEL_9;
  }

  v35 = v10;
  JSONObject.subscript.getter(0x6369706F74, 0xE500000000000000, &v32);
  sub_1AB01EC0C(&v32, v29);
  v11 = v30;
  if (v30)
  {
    v12 = v31;
    __swift_project_boxed_opaque_existential_1Tm(v29, v30);
    v13 = (*(v12 + 24))(v11, v12);
    v24 = v14;
    v25 = v13;
    sub_1AB066D84(&v32);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    sub_1AB066D84(&v32);
    sub_1AB014AC0(v29, &qword_1EB436BA0);
    v24 = 0;
    v25 = 0;
  }

  JSONObject.subscript.getter(0x6C46646C756F6873, 0xEB00000000687375, &v32);
  sub_1AB01EC0C(&v32, v29);
  v17 = v30;
  if (v30)
  {
    v18 = v31;
    __swift_project_boxed_opaque_existential_1Tm(v29, v30);
    v19 = (*(v18 + 88))(v17, v18);
    sub_1AB066D84(&v32);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    sub_1AB066D84(&v32);
    sub_1AB014AC0(v29, &qword_1EB436BA0);
    v19 = 0;
  }

  JSONObject.subscript.getter(0x6E6964756C636E69, 0xEF73646C65694667, &v32);

  v20 = sub_1AB37F824(&v32, v5);
  v21 = sub_1AB1BEF60(v20);

  JSONObject.subscript.getter(0x6E6964756C637865, 0xEF73646C65694667, &v32);
  v22 = sub_1AB37F854(&v32, v5);
  v23 = sub_1AB1BEF94(v22);

  result = sub_1AB066D84(a1);
  *a3 = v25;
  *(a3 + 8) = v24;
  *(a3 + 16) = v19 & 1;
  *(a3 + 24) = v35;
  *(a3 + 32) = v21;
  *(a3 + 40) = v23;
  return result;
}

uint64_t MetricsData._isEqual(to:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v10 = *(v1 + 24);
  v9 = *(v1 + 32);
  v11 = *(v1 + 40);
  if (!v7)
  {
    if (v2)
    {
      return 0;
    }

LABEL_10:
    if (((v3 ^ v8) & 1) == 0)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v2)
  {
    return 0;
  }

  if (*v1 != *a1 || v7 != v2)
  {
    if ((sub_1AB461DA4() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (v3 != v8)
  {
    return 0;
  }

LABEL_11:
  if ((sub_1AB3B1A34(v10, v5, 3, 0) & 1) == 0 || (sub_1AB1BFDCC(v9, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_1AB1BFDCC(v11, v6);
}

uint64_t MetricsData.init(topic:shouldFlush:fields:includingFields:excludingFields:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t MetricsData.topic.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MetricsData.fields.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t MetricsData.includingFields.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t MetricsData.excludingFields.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t MetricsData.Configuration.init(defaultTopic:defaultIncludingFields:defaultExcludingFields:shouldFlush:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t static MetricsData.makeMetricsBackClickData(fields:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *a2;
  v30 = a2[2];
  v31 = a2[3];
  v29 = a2[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
  inited = swift_initStackObject();
  *(inited + 32) = 0x79546E6F69746361;
  v6 = MEMORY[0x1E69E6158];
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 72) = v6;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = 1801675106;
  *(inited + 56) = 0xE400000000000000;

  v7 = sub_1AB01B220(inited);
  swift_setDeallocating();
  sub_1AB014AC0(inited + 32, &qword_1EB439AA0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = a1;
  sub_1AB033AB8(v7, sub_1AB06BA1C, 0, isUniquelyReferenced_nonNull_native, &v32);

  v9 = v32;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1AB4D47F0;
  *(v10 + 32) = 0x6449746567726174;
  *(v10 + 40) = 0xE800000000000000;
  *(v10 + 48) = 1801675106;
  *(v10 + 56) = 0xE400000000000000;
  *(v10 + 72) = v6;
  *(v10 + 80) = 0x7954746567726174;
  *(v10 + 120) = v6;
  *(v10 + 88) = 0xEA00000000006570;
  *(v10 + 96) = 0x6E6F74747562;
  *(v10 + 104) = 0xE600000000000000;
  v11 = sub_1AB01B220(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
  swift_arrayDestroy();

  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = v9;
  sub_1AB033AB8(v11, sub_1AB06BA1C, 0, v12, &v32);

  v13 = v32;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1AB4D4720;
  *(v14 + 32) = 0x707954746E657665;
  v15 = v14 + 32;
  *(v14 + 72) = v6;
  *(v14 + 40) = 0xE900000000000065;
  *(v14 + 48) = 0x6B63696C63;
  *(v14 + 56) = 0xE500000000000000;
  v16 = sub_1AB01B220(v14);
  swift_setDeallocating();
  sub_1AB014AC0(v15, &qword_1EB439AA0);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v32 = v13;
  sub_1AB033AB8(v16, sub_1AB06BA1C, 0, v17, &v32);

  v18 = v32;
  v19 = sub_1AB1F3260(v9, v28);
  v21 = v20;
  if (v29)
  {
    v22 = v29(v9);
  }

  else
  {
    v22 = 0;
  }

  if (*(v30 + 16) && (v23 = sub_1AB0370A8(0x6B63696C63, 0xE500000000000000), (v24 & 1) != 0))
  {
    v25 = *(*(v30 + 56) + 8 * v23);

    if (!*(v31 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v25 = MEMORY[0x1E69E7CD0];
    if (!*(v31 + 16))
    {
LABEL_11:
      result = MEMORY[0x1E69E7CD0];
      goto LABEL_12;
    }
  }

  sub_1AB0370A8(0x6B63696C63, 0xE500000000000000);
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a3 = v19;
  *(a3 + 8) = v21;
  *(a3 + 16) = v22 & 1;
  *(a3 + 24) = v18;
  *(a3 + 32) = v25;
  *(a3 + 40) = result;
  return result;
}

uint64_t static MetricsData.makeMetricsPageData(fields:timingMetrics:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[4];
  v9 = *(a2 + 40);
  v10 = a2[6];
  v11 = *(a2 + 56);
  v12 = a2[8];
  v13 = *(a2 + 72);
  v40 = *a3;
  v42 = a3[2];
  v43 = a3[3];
  v41 = a3[4];

  v14 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  v47 = v14;
  if (v6)
  {
    v15 = v14;
    v46 = MEMORY[0x1E69E6158];
    *&v45 = v7;
    *(&v45 + 1) = v6;
    sub_1AB014B78(&v45, v44);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v44, 0xD000000000000014, 0x80000001AB4FE670, isUniquelyReferenced_nonNull_native);
    v47 = v15;
  }

  else
  {
    sub_1AB09AE18(0xD000000000000014, 0x80000001AB4FE670, &v45);
    sub_1AB014AC0(&v45, &unk_1EB437E60);
  }

  v17 = MEMORY[0x1E69E63B0];
  if (v9)
  {
    sub_1AB09AE18(0xD000000000000010, 0x80000001AB4FEC20, &v45);
    sub_1AB014AC0(&v45, &unk_1EB437E60);
  }

  else
  {
    v46 = MEMORY[0x1E69E63B0];
    *&v45 = v8;
    sub_1AB014B78(&v45, v44);
    v18 = v47;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v44, 0xD000000000000010, 0x80000001AB4FEC20, v19);
    v47 = v18;
  }

  if (v11)
  {
    sub_1AB09AE18(0xD000000000000011, 0x80000001AB4FEC40, &v45);
    sub_1AB014AC0(&v45, &unk_1EB437E60);
  }

  else
  {
    v46 = v17;
    *&v45 = v10;
    sub_1AB014B78(&v45, v44);
    v20 = v47;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v44, 0xD000000000000011, 0x80000001AB4FEC40, v21);
    v47 = v20;
  }

  if (v13)
  {
    sub_1AB09AE18(0x65736E6F70736572, 0xEF656D6954646E45, &v45);
    sub_1AB014AC0(&v45, &unk_1EB437E60);
    v22 = v47;
  }

  else
  {
    v46 = v17;
    *&v45 = v12;
    sub_1AB014B78(&v45, v44);
    v22 = v47;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v44, 0x65736E6F70736572, 0xEF656D6954646E45, v23);
  }

  v24 = swift_isUniquelyReferenced_nonNull_native();
  *&v45 = a1;
  sub_1AB033AB8(v22, sub_1AB06BA1C, 0, v24, &v45);

  v25 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = 0x707954746E657665;
  v27 = inited + 32;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 1701273968;
  *(inited + 56) = 0xE400000000000000;
  v28 = sub_1AB01B220(inited);
  swift_setDeallocating();
  sub_1AB014AC0(v27, &qword_1EB439AA0);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *&v45 = v25;
  sub_1AB033AB8(v28, sub_1AB06BA1C, 0, v29, &v45);

  v30 = v45;
  v31 = sub_1AB1F3260(a1, v40);
  v33 = v32;
  if (v41)
  {
    v34 = v41(a1);
  }

  else
  {
    v34 = 0;
  }

  if (*(v42 + 16) && (v35 = sub_1AB0370A8(1701273968, 0xE400000000000000), (v36 & 1) != 0))
  {
    v37 = *(*(v42 + 56) + 8 * v35);

    if (!*(v43 + 16))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v37 = MEMORY[0x1E69E7CD0];
    if (!*(v43 + 16))
    {
LABEL_23:
      result = MEMORY[0x1E69E7CD0];
      goto LABEL_24;
    }
  }

  sub_1AB0370A8(1701273968, 0xE400000000000000);
  if ((v38 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  *a4 = v31;
  *(a4 + 8) = v33;
  *(a4 + 16) = v34 & 1;
  *(a4 + 24) = v30;
  *(a4 + 32) = v37;
  *(a4 + 40) = result;
  return result;
}

uint64_t static MetricsData.makeMetricsSearchData(term:targetType:actionType:actionURL:fields:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11)
{
  v42 = *a11;
  v44 = a11[2];
  v45 = a11[3];
  v43 = a11[4];
  v18 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  v19 = MEMORY[0x1E69E6158];
  v48 = MEMORY[0x1E69E6158];
  *&v47 = a1;
  *(&v47 + 1) = a2;
  sub_1AB014B78(&v47, v46);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1AB01AE18(v46, 1836213620, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v48 = v19;
  *&v47 = a3;
  *(&v47 + 1) = a4;
  sub_1AB014B78(&v47, v46);

  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_1AB01AE18(v46, 0x7954746567726174, 0xEA00000000006570, v21);
  v48 = v19;
  *&v47 = a5;
  *(&v47 + 1) = a6;
  sub_1AB014B78(&v47, v46);

  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_1AB01AE18(v46, 0x79546E6F69746361, 0xEA00000000006570, v22);
  if (a8)
  {
    v48 = v19;
    *&v47 = a7;
    *(&v47 + 1) = a8;
    sub_1AB014B78(&v47, v46);

    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v46, 0x72556E6F69746361, 0xE90000000000006CLL, v23);
  }

  v24 = swift_isUniquelyReferenced_nonNull_native();
  *&v47 = a10;
  sub_1AB033AB8(v18, sub_1AB06BA1C, 0, v24, &v47);

  v25 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
  inited = swift_initStackObject();
  *(inited + 32) = 0x707954746E657665;
  v27 = inited + 32;
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 72) = v19;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 0x686372616573;
  *(inited + 56) = 0xE600000000000000;
  v28 = sub_1AB01B220(inited);
  swift_setDeallocating();
  sub_1AB014AC0(v27, &qword_1EB439AA0);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *&v47 = v25;
  sub_1AB033AB8(v28, sub_1AB06BA1C, 0, v29, &v47);

  v30 = v47;
  v31 = sub_1AB1F3260(a10, v42);
  v33 = v32;
  if (v43)
  {
    v34 = v43(a10);
  }

  else
  {
    v34 = 0;
  }

  if (*(v44 + 16) && (v35 = sub_1AB0370A8(0x686372616573, 0xE600000000000000), (v36 & 1) != 0))
  {
    v37 = *(*(v44 + 56) + 8 * v35);

    if (!*(v45 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v37 = MEMORY[0x1E69E7CD0];
    if (!*(v45 + 16))
    {
LABEL_13:
      result = MEMORY[0x1E69E7CD0];
      goto LABEL_14;
    }
  }

  sub_1AB0370A8(0x686372616573, 0xE600000000000000);
  if ((v38 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  *a9 = v31;
  *(a9 + 8) = v33;
  *(a9 + 16) = v34 & 1;
  *(a9 + 24) = v30;
  *(a9 + 32) = v37;
  *(a9 + 40) = result;
  return result;
}

uint64_t static MetricsData.makeMetricsImpressionsData(fields:configuration:impressionsEventVersion:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = *a2;
  v28 = a2[2];
  v29 = a2[3];
  v7 = a2[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6973736572706D69;
  *(inited + 16) = xmmword_1AB4D47F0;
  v9 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xEF65756575516E6FLL;
  strcpy((inited + 48), "data-metrics");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  *(inited + 72) = v9;
  strcpy((inited + 80), "eventVersion");
  *(inited + 120) = MEMORY[0x1E69E6530];
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = a3;
  v10 = sub_1AB01B220(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
  swift_arrayDestroy();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = a1;
  sub_1AB033AB8(v10, sub_1AB06BA1C, 0, isUniquelyReferenced_nonNull_native, &v30);

  v12 = v30;
  v13 = swift_initStackObject();
  *(v13 + 32) = 0x707954746E657665;
  v14 = v13 + 32;
  *(v13 + 16) = xmmword_1AB4D4720;
  *(v13 + 72) = v9;
  *(v13 + 40) = 0xE900000000000065;
  *(v13 + 48) = 0x6973736572706D69;
  *(v13 + 56) = 0xEB00000000736E6FLL;
  v15 = sub_1AB01B220(v13);
  swift_setDeallocating();
  sub_1AB014AC0(v14, &qword_1EB439AA0);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v30 = v12;
  sub_1AB033AB8(v15, sub_1AB06BA1C, 0, v16, &v30);

  v17 = v30;
  v18 = sub_1AB1F3260(a1, v27);
  v20 = v19;
  if (v7)
  {
    v21 = v7(a1);
  }

  else
  {
    v21 = 0;
  }

  if (*(v28 + 16) && (v22 = sub_1AB0370A8(0x6973736572706D69, 0xEB00000000736E6FLL), (v23 & 1) != 0))
  {
    v24 = *(*(v28 + 56) + 8 * v22);

    if (!*(v29 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v24 = MEMORY[0x1E69E7CD0];
    if (!*(v29 + 16))
    {
LABEL_11:
      result = MEMORY[0x1E69E7CD0];
      goto LABEL_12;
    }
  }

  sub_1AB0370A8(0x6973736572706D69, 0xEB00000000736E6FLL);
  if ((v25 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a4 = v18;
  *(a4 + 8) = v20;
  *(a4 + 16) = v21 & 1;
  *(a4 + 24) = v17;
  *(a4 + 32) = v24;
  *(a4 + 40) = result;
  return result;
}

uint64_t static MetricsData.makeMetricsMediaData(fields:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[2];
  v24 = *a2;
  v25 = a2[3];
  v6 = a2[4];
  v7 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = a1;
  sub_1AB033AB8(v7, sub_1AB06BA1C, 0, isUniquelyReferenced_nonNull_native, &v26);

  v9 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = 0x707954746E657665;
  v11 = inited + 32;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 0x616964656DLL;
  *(inited + 56) = 0xE500000000000000;
  v12 = sub_1AB01B220(inited);
  swift_setDeallocating();
  sub_1AB014AC0(v11, &qword_1EB439AA0);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v26 = v9;
  sub_1AB033AB8(v12, sub_1AB06BA1C, 0, v13, &v26);

  v14 = v26;
  v15 = sub_1AB1F3260(a1, v24);
  v17 = v16;
  if (v6)
  {
    v18 = v6(a1);
  }

  else
  {
    v18 = 0;
  }

  if (*(v5 + 16) && (v19 = sub_1AB0370A8(0x616964656DLL, 0xE500000000000000), (v20 & 1) != 0))
  {
    v21 = *(*(v5 + 56) + 8 * v19);

    if (!*(v25 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v21 = MEMORY[0x1E69E7CD0];
    if (!*(v25 + 16))
    {
LABEL_11:
      result = MEMORY[0x1E69E7CD0];
      goto LABEL_12;
    }
  }

  sub_1AB0370A8(0x616964656DLL, 0xE500000000000000);
  if ((v22 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = v18 & 1;
  *(a3 + 24) = v14;
  *(a3 + 32) = v21;
  *(a3 + 40) = result;
  return result;
}

uint64_t sub_1AB1F161C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v32 = *a6;
  v34 = a6[2];
  v35 = a6[3];
  v33 = a6[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D47F0;
  *(inited + 32) = 0x6449746567726174;
  v14 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = v14;
  *(inited + 80) = 0x7954746567726174;
  *(inited + 120) = v14;
  *(inited + 88) = 0xEA00000000006570;
  *(inited + 96) = a3;
  *(inited + 104) = a4;

  v15 = sub_1AB01B220(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
  swift_arrayDestroy();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = a5;
  sub_1AB033AB8(v15, sub_1AB06BA1C, 0, isUniquelyReferenced_nonNull_native, &v36);

  v17 = v36;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1AB4D4720;
  *(v18 + 32) = 0x707954746E657665;
  v19 = v18 + 32;
  *(v18 + 72) = v14;
  *(v18 + 40) = 0xE900000000000065;
  *(v18 + 48) = 0x6B63696C63;
  *(v18 + 56) = 0xE500000000000000;
  v20 = sub_1AB01B220(v18);
  swift_setDeallocating();
  sub_1AB014AC0(v19, &qword_1EB439AA0);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v17;
  sub_1AB033AB8(v20, sub_1AB06BA1C, 0, v21, &v36);

  v22 = v36;
  v23 = sub_1AB1F3260(a5, v32);
  v25 = v24;
  if (v33)
  {
    v26 = v33(a5);
  }

  else
  {
    v26 = 0;
  }

  if (*(v34 + 16) && (v27 = sub_1AB0370A8(0x6B63696C63, 0xE500000000000000), (v28 & 1) != 0))
  {
    v29 = *(*(v34 + 56) + 8 * v27);

    if (!*(v35 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v29 = MEMORY[0x1E69E7CD0];
    if (!*(v35 + 16))
    {
LABEL_11:
      result = MEMORY[0x1E69E7CD0];
      goto LABEL_12;
    }
  }

  sub_1AB0370A8(0x6B63696C63, 0xE500000000000000);
  if ((v30 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a7 = v23;
  *(a7 + 8) = v25;
  *(a7 + 16) = v26 & 1;
  *(a7 + 24) = v22;
  *(a7 + 32) = v29;
  *(a7 + 40) = result;
  return result;
}

uint64_t static MetricsData.makeMetricsPageRenderFields(timingMetrics:fields:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  v9 = a1[6];
  v10 = *(a1 + 56);
  v11 = a1[8];
  v12 = *(a1 + 73);
  v13 = a1[10];
  v36 = *(a1 + 72);
  v37 = *(a1 + 88);
  v14 = a1[12];
  v15 = MEMORY[0x1E69E6158];
  v38 = *(a1 + 104);
  *(&v41 + 1) = MEMORY[0x1E69E6158];
  *&v40 = 0x646E655265676170;
  *(&v40 + 1) = 0xEA00000000007265;
  sub_1AB014B78(&v40, v39);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1AB01AE18(v39, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v42 = a2;
  if (*(a2 + 16) && (v17 = sub_1AB014DB4(0x6C725565676170, 0xE700000000000000), (v18 & 1) != 0))
  {
    sub_1AB0165C4(*(a2 + 56) + 32 * v17, &v40);
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
    sub_1AB014AC0(&v40, &unk_1EB437E60);
    if (v5)
    {
      *(&v41 + 1) = v15;
      *&v40 = v6;
      *(&v40 + 1) = v5;
      sub_1AB014B78(&v40, v39);

      v19 = swift_isUniquelyReferenced_nonNull_native();
      sub_1AB01AE18(v39, 0x6C725565676170, 0xE700000000000000, v19);
      v42 = a2;
      goto LABEL_8;
    }

    sub_1AB09AE18(0x6C725565676170, 0xE700000000000000, &v40);
  }

  sub_1AB014AC0(&v40, &unk_1EB437E60);
LABEL_8:
  if (v3)
  {
    *(&v41 + 1) = v15;
    *&v40 = v4;
    *(&v40 + 1) = v3;
    sub_1AB014B78(&v40, v39);

    v20 = v42;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v39, 0xD000000000000014, 0x80000001AB4FE670, v21);
    v42 = v20;
  }

  else
  {
    sub_1AB09AE18(0xD000000000000014, 0x80000001AB4FE670, &v40);
    sub_1AB014AC0(&v40, &unk_1EB437E60);
  }

  v22 = MEMORY[0x1E69E63B0];
  if (v8)
  {
    sub_1AB09AE18(0xD000000000000018, 0x80000001AB502F80, &v40);
    sub_1AB014AC0(&v40, &unk_1EB437E60);
  }

  else
  {
    *(&v41 + 1) = MEMORY[0x1E69E63B0];
    *&v40 = v7;
    sub_1AB014B78(&v40, v39);
    v23 = v42;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v39, 0xD000000000000018, 0x80000001AB502F80, v24);
    v42 = v23;
  }

  if (v10)
  {
    sub_1AB09AE18(0xD000000000000019, 0x80000001AB502FA0, &v40);
    sub_1AB014AC0(&v40, &unk_1EB437E60);
  }

  else
  {
    *(&v41 + 1) = v22;
    *&v40 = v9;
    sub_1AB014B78(&v40, v39);
    v25 = v42;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v39, 0xD000000000000019, 0x80000001AB502FA0, v26);
    v42 = v25;
  }

  if (v36)
  {
    sub_1AB09AE18(0xD000000000000017, 0x80000001AB502FC0, &v40);
    sub_1AB014AC0(&v40, &unk_1EB437E60);
  }

  else
  {
    *(&v41 + 1) = v22;
    *&v40 = v11;
    sub_1AB014B78(&v40, v39);
    v27 = v42;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v39, 0xD000000000000017, 0x80000001AB502FC0, v28);
    v42 = v27;
  }

  if (v12 == 2)
  {
    sub_1AB09AE18(0xD000000000000019, 0x80000001AB502FE0, &v40);
    sub_1AB014AC0(&v40, &unk_1EB437E60);
  }

  else
  {
    *(&v41 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v40) = v12 & 1;
    sub_1AB014B78(&v40, v39);
    v29 = v42;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v39, 0xD000000000000019, 0x80000001AB502FE0, v30);
    v42 = v29;
  }

  if (v37)
  {
    sub_1AB09AE18(0xD00000000000001ALL, 0x80000001AB503000, &v40);
    sub_1AB014AC0(&v40, &unk_1EB437E60);
  }

  else
  {
    *(&v41 + 1) = v22;
    *&v40 = v13;
    sub_1AB014B78(&v40, v39);
    v31 = v42;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v39, 0xD00000000000001ALL, 0x80000001AB503000, v32);
    v42 = v31;
  }

  if (v38)
  {
    sub_1AB09AE18(0xD000000000000018, 0x80000001AB503020, &v40);
    sub_1AB014AC0(&v40, &unk_1EB437E60);
    return v42;
  }

  else
  {
    *(&v41 + 1) = v22;
    *&v40 = v14;
    sub_1AB014B78(&v40, v39);
    v34 = v42;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v39, 0xD000000000000018, 0x80000001AB503020, v35);
    return v34;
  }
}

uint64_t sub_1AB1F1F3C()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB1F202C()
{
  sub_1AB460684();
}

uint64_t sub_1AB1F2108()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB1F21F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB1F3214();
  *a1 = result;
  return result;
}

void sub_1AB1F2224(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6369706F74;
  v5 = 0xE600000000000000;
  v6 = 0x73646C656966;
  v7 = 0x6E6964756C636E69;
  if (v2 != 3)
  {
    v7 = 0x6E6964756C637865;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xEF73646C65694667;
  }

  if (*v1)
  {
    v4 = 0x6C46646C756F6873;
    v3 = 0xEB00000000687375;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1AB1F22D0()
{
  v1 = *v0;
  v2 = 0x6369706F74;
  v3 = 0x73646C656966;
  v4 = 0x6E6964756C636E69;
  if (v1 != 3)
  {
    v4 = 0x6E6964756C637865;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C46646C756F6873;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AB1F2378@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB1F3214();
  *a1 = result;
  return result;
}

uint64_t sub_1AB1F23AC(uint64_t a1)
{
  v2 = sub_1AB1F3308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB1F23E8(uint64_t a1)
{
  v2 = sub_1AB1F3308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MetricsData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4385C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB1F3308();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v33[0]) = 0;
  if (sub_1AB461AF4())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AC0);
    LOBYTE(v30) = 0;
    sub_1AB0C08E8(qword_1EB434E78);
    sub_1AB461AC4();
    v10 = v33[0];
    v34 = v33[1];
  }

  else
  {
    v34 = 0;
    v10 = 0;
  }

  LOBYTE(v33[0]) = 1;
  if (sub_1AB461AF4())
  {
    LOBYTE(v33[0]) = 1;
    v11 = sub_1AB461A94();
  }

  else
  {
    v11 = 0;
  }

  LOBYTE(v30) = 2;
  sub_1AB1BF694();
  sub_1AB461AC4();
  v25 = v10;
  sub_1AB01EC0C(v33, v27);
  v12 = v28;
  if (!v28)
  {
    sub_1AB014AC0(v27, &qword_1EB436BA0);
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    goto LABEL_15;
  }

  HIDWORD(v24) = v11;
  v13 = v29;
  __swift_project_boxed_opaque_existential_1Tm(v27, v28);
  (*(v13 + 160))(&v30, v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  v14 = *(&v31 + 1);
  if (!*(&v31 + 1))
  {
LABEL_15:
    sub_1AB014AC0(&v30, &qword_1EB436BC0);
    goto LABEL_16;
  }

  v15 = v32;
  __swift_project_boxed_opaque_existential_1Tm(&v30, *(&v31 + 1));
  v16 = (*(v15 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v14, v15);
  sub_1AB07CDB0(&v30);
  if (!v16)
  {
LABEL_16:
    v26 = sub_1AB4616B4();
    swift_allocError();
    v18 = v17;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938) + 48);
    *v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    v19 = sub_1AB4621E4();
    sub_1AB1F313C(2, v19, &type metadata for MetricsData.CodingKeys, sub_1AB1F3308);

    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](96, 0xE100000000000000);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0xD000000000000018, 0x80000001AB503040);
    sub_1AB461694();
    (*(*(v26 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8]);
    swift_willThrow();
    sub_1AB066D84(v33);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = v16;
  LOBYTE(v30) = 3;
  if (sub_1AB461AF4())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4385F8);
    LOBYTE(v27[0]) = 3;
    sub_1AB1F34B8();
    sub_1AB461AC4();
    v20 = sub_1AB1BEF60(v30);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CD0];
  }

  LOBYTE(v30) = 4;
  if (sub_1AB461AF4())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4385D0);
    LOBYTE(v27[0]) = 4;
    sub_1AB1F335C();
    sub_1AB461AC4();
    v21 = sub_1AB1BEF94(v30);

    sub_1AB066D84(v33);
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_1AB066D84(v33);
    (*(v6 + 8))(v8, v5);
    v21 = MEMORY[0x1E69E7CD0];
  }

  v22 = v26;
  v23 = v34;
  *a2 = v25;
  *(a2 + 8) = v23;
  *(a2 + 16) = BYTE4(v24) & 1;
  *(a2 + 24) = v22;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t MetricsData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438620);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = *v1;
  v8 = v1[1];
  LODWORD(v27) = *(v1 + 16);
  v9 = v1[3];
  v25 = v1[4];
  v26 = v9;
  v24 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB1F3308();

  sub_1AB462274();
  v30[0] = v7;
  v30[1] = v8;
  LOBYTE(v28) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AC0);
  sub_1AB0C08E8(&qword_1EB438628);
  v10 = v32;
  sub_1AB461BF4();
  if (v10)
  {

    return (*(v4 + 8))(v6, v3);
  }

  v12 = v25;
  v13 = v26;
  v14 = v4;

  LOBYTE(v30[0]) = 1;
  sub_1AB461BC4();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
  *&v28 = v13;
  v30[3] = &type metadata for FoundationValue;
  v31 = &off_1F1FFB5A8;
  v30[0] = swift_allocObject();
  sub_1AB014B78(&v28, (v30[0] + 16));
  LOBYTE(v28) = 2;
  sub_1AB1BF9A0();

  sub_1AB461BF4();
  sub_1AB066D84(v30);
  v15 = v4;
  v16 = *(v12 + 16);
  if (v16)
  {
    v17 = v12;
    v18 = sub_1AB1B006C(*(v12 + 16), 0);
    v32 = sub_1AB1B1164(v30, v18 + 4, v16, v17);
    v27 = v31;

    result = sub_1AB0309A4();
    if (v32 != v16)
    {
      __break(1u);
      goto LABEL_13;
    }

    v15 = v4;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v30[0] = v18;
  LOBYTE(v28) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4385F8);
  sub_1AB1F3614();
  sub_1AB461BF4();

  v19 = v6;
  v20 = v24;
  v21 = *(v24 + 16);
  if (!v21)
  {
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v22 = sub_1AB1B0058(*(v24 + 16), 0);
  v32 = sub_1AB1B1164(v30, v22 + 4, v21, v20);
  v27 = v31;

  result = sub_1AB0309A4();
  if (v32 == v21)
  {
    v15 = v14;
LABEL_11:
    v30[0] = v22;
    LOBYTE(v28) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4385D0);
    sub_1AB1F3770();
    sub_1AB461BF4();

    return (*(v15 + 8))(v19, v3);
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_1AB1F3034(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  sub_1AB179C90(a1, a2, a3 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a4 = sub_1AB0BBFF8(0, a4[2] + 1, 1, a4);
  }

  v9 = a4[2];
  v8 = a4[3];
  if (v9 >= v8 >> 1)
  {
    a4 = sub_1AB0BBFF8((v8 > 1), v9 + 1, 1, a4);
  }

  v13 = &type metadata for OpenCodingKey;
  v14 = sub_1AB179C3C();
  *&v11 = a1;
  *(&v11 + 1) = a2;
  v12 = a3 & 1;
  a4[2] = v9 + 1;
  sub_1AB0149B0(&v11, &a4[5 * v9 + 4]);
  return a4;
}

void *sub_1AB1F313C(char a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a2 = sub_1AB0BBFF8(0, a2[2] + 1, 1, a2);
  }

  v9 = a2[2];
  v8 = a2[3];
  if (v9 >= v8 >> 1)
  {
    a2 = sub_1AB0BBFF8((v8 > 1), v9 + 1, 1, a2);
  }

  v12 = a3;
  v13 = a4();
  LOBYTE(v11) = a1;
  a2[2] = v9 + 1;
  sub_1AB0149B0(&v11, &a2[5 * v9 + 4]);
  return a2;
}

uint64_t sub_1AB1F3214()
{
  v0 = sub_1AB4619B4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AB1F3260(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = sub_1AB014DB4(0x6369706F74, 0xE500000000000000);
    if (v5)
    {
      sub_1AB0165C4(*(a1 + 56) + 32 * v4, v8);
      if (swift_dynamicCast())
      {
        return v7;
      }
    }
  }

  return a2;
}

unint64_t sub_1AB1F3308()
{
  result = qword_1EB4385C8;
  if (!qword_1EB4385C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4385C8);
  }

  return result;
}

unint64_t sub_1AB1F335C()
{
  result = qword_1EB4385D8;
  if (!qword_1EB4385D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4385D0);
    sub_1AB1F33E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4385D8);
  }

  return result;
}

unint64_t sub_1AB1F33E0()
{
  result = qword_1EB4385E0;
  if (!qword_1EB4385E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4385E8);
    sub_1AB1F3464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4385E0);
  }

  return result;
}

unint64_t sub_1AB1F3464()
{
  result = qword_1EB4385F0;
  if (!qword_1EB4385F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4385F0);
  }

  return result;
}

unint64_t sub_1AB1F34B8()
{
  result = qword_1EB438600;
  if (!qword_1EB438600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4385F8);
    sub_1AB1F353C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438600);
  }

  return result;
}

unint64_t sub_1AB1F353C()
{
  result = qword_1EB438608;
  if (!qword_1EB438608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB438610);
    sub_1AB1F35C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438608);
  }

  return result;
}

unint64_t sub_1AB1F35C0()
{
  result = qword_1EB438618;
  if (!qword_1EB438618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438618);
  }

  return result;
}

unint64_t sub_1AB1F3614()
{
  result = qword_1EB438630;
  if (!qword_1EB438630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4385F8);
    sub_1AB1F3698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438630);
  }

  return result;
}

unint64_t sub_1AB1F3698()
{
  result = qword_1EB438638;
  if (!qword_1EB438638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB438610);
    sub_1AB1F371C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438638);
  }

  return result;
}

unint64_t sub_1AB1F371C()
{
  result = qword_1EB438640;
  if (!qword_1EB438640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438640);
  }

  return result;
}

unint64_t sub_1AB1F3770()
{
  result = qword_1EB438648;
  if (!qword_1EB438648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4385D0);
    sub_1AB1F37F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438648);
  }

  return result;
}

unint64_t sub_1AB1F37F4()
{
  result = qword_1EB438650;
  if (!qword_1EB438650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4385E8);
    sub_1AB1F3878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438650);
  }

  return result;
}

unint64_t sub_1AB1F3878()
{
  result = qword_1EB438658;
  if (!qword_1EB438658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438658);
  }

  return result;
}

uint64_t sub_1AB1F38CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1AB1F3914(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_SDySSypGSbIeggd_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AB1F3978(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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