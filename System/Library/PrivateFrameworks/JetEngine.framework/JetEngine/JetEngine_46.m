id sub_1AB3FDDF4(id a1, void *a2, void *a3)
{
  v5 = a2;
  sub_1AB23EA88(v5, &v22);
  countAndFlagsBits = v22._countAndFlagsBits;
  if (LOBYTE(v22._countAndFlagsBits) == 2)
  {
    sub_1AB0C3EF0();
    swift_allocError();
    v8 = v7;
    v9 = v5;
    v10 = 0x6C416F7470797243;
    v11 = 0xEF6D687469726F67;
    v12 = v8;
LABEL_8:
    JSError.init(badValue:expected:)(v9, v10, v11, v12);
    swift_willThrow();
    return a1;
  }

  if (([a3 isString] & 1) == 0)
  {
    sub_1AB0C3EF0();
    swift_allocError();
    a1 = v21;
    v9 = a3;
    v10 = 0x676E69727473;
    v12 = a1;
    v11 = 0xE600000000000000;
    goto LABEL_8;
  }

  LOBYTE(v22._countAndFlagsBits) = countAndFlagsBits & 1;
  result = [a3 toString];
  if (result)
  {
    v14 = result;
    v15 = sub_1AB460544();
    v17 = v16;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    v19 = CryptoAlgorithm.makeDigest(fromContentsOf:)(v18);

    v22 = v19;

    v20 = sub_1AB461F94();
    a1 = [objc_opt_self() valueWithObject:v20 inContext:a1];
    result = swift_unknownObjectRelease();
    if (a1)
    {

      return a1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB3FE0FC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1AB460774();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1AC59BA90](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1AB3FE178@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1AB0683DC(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1AB45F464();
      swift_allocObject();
      v8 = sub_1AB45F404();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1AB45F7E4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_1AB3FE240(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1AB017254(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1AB017254(v6, v5);
    *v3 = xmmword_1AB4DA6A0;
    sub_1AB017254(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1AB45F414() && __OFSUB__(v6, sub_1AB45F444()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1AB45F464();
      swift_allocObject();
      v13 = sub_1AB45F3F4();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_1AB3FE650(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1AB017254(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1AB4DA6A0;
    sub_1AB017254(0, 0xC000000000000000);
    sub_1AB45F774();
    result = sub_1AB3FE650(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

void *sub_1AB3FE5E4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1AB3FE650(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1AB45F414();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1AB45F444();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1AB45F434();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1AB3FE704@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = sub_1AB4615E4();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1AB3FE754(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB3FE774(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1AB45F464();
  swift_allocObject();
  result = sub_1AB45F404();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1AB45F7E4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1AB3FE7F0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1AB45F464();
  swift_allocObject();
  result = sub_1AB45F404();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1AB3FE874(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1AB45F464();
      swift_allocObject();
      sub_1AB45F424();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1AB45F7E4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1AB3FE914(void *a1, void *a2)
{
  v4 = [objc_opt_self() currentContext];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1AB3FDDF4(v4, a1, a2);

    return v6;
  }

  else
  {
    result = sub_1AB461884();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB3FEA80(void *a1)
{
  v2 = [objc_opt_self() currentContext];
  if (v2)
  {
    v3 = v2;
    if ([a1 isString] && (v4 = objc_msgSend(a1, sel_toString)) != 0)
    {
      v5 = v4;
      v6 = sub_1AB460544();
      v8 = v7;

      v9 = sub_1AB3FD8B0(v6, v8);
      v11 = v10;
      sub_1AB45F844();
      sub_1AB017254(v9, v11);
      v12 = sub_1AB461F94();
      v13 = [objc_opt_self() valueWithObject:v12 inContext:v3];
      swift_unknownObjectRelease();
      if (v13)
      {

        return v13;
      }
    }

    else
    {
      sub_1AB0C3EF0();
      v14 = swift_allocError();
      JSError.init(badValue:expected:)(a1, 0x676E69727473, 0xE600000000000000, v15);
      swift_willThrow();
      v16 = v14;
      v17 = [v3 exceptionHandler];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1AB23E418(v14, v3);
        (v18)[2](v18, v3, v19);
        _Block_release(v18);
      }

      v20 = [objc_opt_self() valueWithUndefinedInContext_];
      if (v20)
      {
        v13 = v20;

        return v13;
      }

      __break(1u);
    }

    __break(1u);
  }

  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB3FED00(void *a1)
{
  v2 = sub_1AB4605C4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = [objc_opt_self() currentContext];
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = v3;
  if ([a1 isString] && (v5 = objc_msgSend(a1, sel_toString)) != 0)
  {
    v6 = v5;
    sub_1AB460544();

    v7 = sub_1AB45F7D4();
    if (v8 >> 60 != 15)
    {
      v9 = v7;
      v10 = v8;
      sub_1AB460594();
      sub_1AB460564();
      if (v11)
      {

        v12 = sub_1AB461F94();
        v13 = [objc_opt_self() valueWithObject:v12 inContext:v4];
        swift_unknownObjectRelease();
        if (v13)
        {

          sub_1AB03BD58(v9, v10);
LABEL_15:

          return v13;
        }

        goto LABEL_19;
      }

      sub_1AB03BD58(v9, v10);
    }

    v21 = [objc_opt_self() valueWithNullInContext_];
    if (v21)
    {
      v13 = v21;
      goto LABEL_15;
    }
  }

  else
  {
    sub_1AB0C3EF0();
    v14 = swift_allocError();
    JSError.init(badValue:expected:)(a1, 0x676E69727473, 0xE600000000000000, v15);
    swift_willThrow();
    v16 = v14;
    v17 = [v4 exceptionHandler];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1AB23E418(v14, v4);
      (v18)[2](v18, v4, v19);
      _Block_release(v18);
    }

    v20 = [objc_opt_self() valueWithUndefinedInContext_];
    if (v20)
    {
      v13 = v20;

      return v13;
    }

    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB3FF034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CF78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1AB3FF09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1AB3FE5E4(sub_1AB3FF104, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1AB3FF124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AB0B9254(a1, v6);
  v7 = a2;

  return Models.AlertAction.Button.init(deserializing:using:)(v6, &v7, a3);
}

__n128 Models.AlertAction.Button.init(title:role:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  result = *a5;
  v7 = *(a5 + 16);
  *(a6 + 32) = *a5;
  *(a6 + 48) = v7;
  *(a6 + 64) = *(a5 + 32);
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  return result;
}

__n128 Models.AlertAction.Button.init(title:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 32) = *a3;
  *(a4 + 48) = v5;
  *(a4 + 64) = *(a3 + 32);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  return result;
}

uint64_t Models.AlertAction.Button.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, v22);
  sub_1AB014A58(v22, v19, &qword_1EB436BA0);
  v6 = v20;
  if (!v20)
  {

    sub_1AB066D84(v22);
    sub_1AB014AC0(v19, &qword_1EB436BA0);
LABEL_9:
    sub_1AB163664();
    swift_allocError();
    *v18 = xmmword_1AB4F97B0;
    *(v18 + 16) = 0x20000001F20189D0uLL;
    *(v18 + 24) = 0;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  v7 = v21;
  __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  v8 = (*(v7 + 24))(v6, v7);
  v10 = v9;
  sub_1AB066D84(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  if (!v10)
  {

    goto LABEL_9;
  }

  *a3 = v8;
  a3[1] = v10;
  JSONObject.subscript.getter(0x6E6F69746361, 0xE600000000000000, v22);
  v19[0] = v5;
  static AnyActionTypes.tryToMakeInstance(byDeserializing:using:)(v22, v19, (a3 + 4));
  sub_1AB066D84(v22);

  JSONObject.subscript.getter(1701605234, 0xE400000000000000, v22);
  sub_1AB014A58(v22, v19, &qword_1EB436BA0);
  v11 = v20;
  if (v20)
  {
    v12 = v21;
    __swift_project_boxed_opaque_existential_1Tm(v19, v20);
    v13 = (*(v12 + 24))(v11, v12);
    v15 = v14;
    sub_1AB066D84(a1);
    sub_1AB066D84(v22);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v19);
    if (v15)
    {
      v17 = v13;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    sub_1AB066D84(a1);
    sub_1AB066D84(v22);
    result = sub_1AB014AC0(v19, &qword_1EB436BA0);
    v17 = 0;
    v15 = 0;
  }

  a3[2] = v17;
  a3[3] = v15;
  return result;
}

uint64_t Models.AlertAction.Button.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Models.AlertAction.Button.role.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Models.AlertAction.Severity.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1AB4619B4();

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

uint64_t Models.AlertAction.Severity.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C61636974697263;
  }

  else
  {
    return 0x74616D726F666E69;
  }
}

uint64_t sub_1AB3FF5E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C61636974697263;
  }

  else
  {
    v3 = 0x74616D726F666E69;
  }

  if (v2)
  {
    v4 = 0xED00006C616E6F69;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C61636974697263;
  }

  else
  {
    v5 = 0x74616D726F666E69;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xED00006C616E6F69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AB461DA4();
  }

  return v8 & 1;
}

uint64_t sub_1AB3FF69C()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB3FF72C()
{
  sub_1AB460684();
}

uint64_t sub_1AB3FF7A8()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB3FF834@<X0>(char *a1@<X8>)
{
  v2 = sub_1AB4619B4();

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

void sub_1AB3FF894(uint64_t *a1@<X8>)
{
  v2 = 0x74616D726F666E69;
  if (*v1)
  {
    v2 = 0x6C61636974697263;
  }

  v3 = 0xED00006C616E6F69;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

__n128 Models.AlertAction.init(actionMetrics:severity:icon:title:message:buttons:)@<Q0>(_OWORD *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = *a1;
  v9 = *(a3 + 48);
  *(a9 + 56) = *(a3 + 32);
  *(a9 + 72) = v9;
  *(a9 + 88) = *(a3 + 64);
  result = *a3;
  v11 = *(a3 + 16);
  *(a9 + 24) = *a3;
  *(a9 + 16) = *a2;
  v12 = *(a3 + 80);
  *(a9 + 40) = v11;
  *(a9 + 104) = v12;
  *(a9 + 112) = a4;
  *(a9 + 120) = a5;
  *(a9 + 128) = a6;
  *(a9 + 136) = a7;
  *(a9 + 144) = a8;
  return result;
}

uint64_t Models.AlertAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x736E6F74747562, 0xE700000000000000, v45);
  sub_1AB014A58(v45, v47, &qword_1EB436BA0);
  v7 = v48;
  if (!v48)
  {
    sub_1AB066D84(v45);

    sub_1AB014AC0(v47, &qword_1EB436BA0);
    v50 = 0u;
    v51 = 0u;
    v52 = 0;
LABEL_13:
    sub_1AB014AC0(&v50, &qword_1EB437EF8);
    sub_1AB163664();
    swift_allocError();
    *v17 = xmmword_1AB4F97C0;
    *(v17 + 16) = 0x20000001F20188C0uLL;
    *(v17 + 24) = 0;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  v8 = v49;
  __swift_project_boxed_opaque_existential_1Tm(v47, v48);
  (*(v8 + 152))(&v50, v7, v8);
  sub_1AB066D84(v45);
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  if (!*(&v51 + 1))
  {

    goto LABEL_13;
  }

  v53[0] = v50;
  v53[1] = v51;
  v54 = v52;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, v45);

  JSONObject.subscript.getter(1635017060, 0xE400000000000000, &v50);

  v9 = sub_1AB37F7F4(&v50, v6);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, &v50);
  v42[0] = v6;
  ScalarDictionary.init(tryDeserializing:using:)(&v50, v42, v47);
  sub_1AB066D84(v45);
  v55 = v47[0];
  JSONObject.subscript.getter(0x7974697265766573, 0xE800000000000000, v45);
  sub_1AB014A58(v45, &v50, &qword_1EB436BA0);
  v10 = *(&v51 + 1);
  if (*(&v51 + 1))
  {
    v11 = v52;
    __swift_project_boxed_opaque_existential_1Tm(&v50, *(&v51 + 1));
    (*(v11 + 24))(v10, v11);
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1Tm(&v50);
    if (v13)
    {
      v14 = sub_1AB4619B4();

      sub_1AB066D84(v45);
      if (v14 == 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_17;
    }

    sub_1AB066D84(v45);
  }

  else
  {
    sub_1AB066D84(v45);
    sub_1AB014AC0(&v50, &qword_1EB436BA0);
  }

  v16 = 2;
LABEL_17:
  JSONObject.subscript.getter(1852793705, 0xE400000000000000, &v50);
  v47[0] = v6;

  MediaArtwork.init(deserializing:using:)(&v50, v47, v45);
  if (v3)
  {

    sub_1AB066D84(a1);
    return sub_1AB06A37C(v53);
  }

  else
  {
    v38 = v16;
    JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, &v50);
    sub_1AB014A58(&v50, v47, &qword_1EB436BA0);
    v19 = v48;
    if (v48)
    {
      v20 = v49;
      __swift_project_boxed_opaque_existential_1Tm(v47, v48);
      v37 = (*(v20 + 24))(v19, v20);
      v40 = v21;
      sub_1AB066D84(&v50);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
    }

    else
    {
      sub_1AB066D84(&v50);
      sub_1AB014AC0(v47, &qword_1EB436BA0);
      v37 = 0;
      v40 = 0;
    }

    JSONObject.subscript.getter(0x6567617373656DLL, 0xE700000000000000, v47);
    sub_1AB014A58(v47, v42, &qword_1EB436BA0);
    v22 = v43;
    v41 = v9;
    if (v43)
    {
      v23 = v44;
      __swift_project_boxed_opaque_existential_1Tm(v42, v43);
      v36 = (*(v23 + 24))(v22, v23);
      v39 = v24;
      sub_1AB066D84(v47);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
    }

    else
    {
      sub_1AB066D84(v47);
      sub_1AB014AC0(v42, &qword_1EB436BA0);
      v36 = 0;
      v39 = 0;
    }

    v25 = sub_1AB06A28C(v53, v42);
    MEMORY[0x1EEE9AC00](v25);
    v35[2] = v6;
    v26 = v43;
    v27 = v44;
    __swift_project_boxed_opaque_existential_1Tm(v42, v43);
    v28 = (*(v27 + 48))(sub_1AB400058, v35, &type metadata for Models.AlertAction.Button, v26, v27);

    sub_1AB066D84(a1);
    sub_1AB06A37C(v53);
    result = sub_1AB06A37C(v42);
    v29 = v45[3];
    *(a3 + 56) = v45[2];
    *(a3 + 72) = v29;
    *(a3 + 88) = v45[4];
    v30 = v45[1];
    *(a3 + 24) = v45[0];
    v31 = v55;
    *a3 = v41;
    *(a3 + 8) = v31;
    *(a3 + 16) = v38;
    v32 = v46;
    *(a3 + 40) = v30;
    v33 = v37;
    *(a3 + 104) = v32;
    *(a3 + 112) = v33;
    v34 = v36;
    *(a3 + 120) = v40;
    *(a3 + 128) = v34;
    *(a3 + 136) = v39;
    *(a3 + 144) = v28;
  }

  return result;
}

uint64_t Models.AlertAction.actionMetrics.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

double Models.AlertAction.icon.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1AB014A58(v1 + 24, v6, &qword_1EB43BCF0);
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  return result;
}

uint64_t Models.AlertAction.title.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t Models.AlertAction.message.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t sub_1AB4001E4()
{
  v1 = *v0;
  v2 = 0x654D6E6F69746361;
  v3 = 0x656C746974;
  v4 = 0x6567617373656DLL;
  if (v1 != 4)
  {
    v4 = 0x736E6F74747562;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7974697265766573;
  if (v1 != 1)
  {
    v5 = 1852793705;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AB4002A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB4020AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB4002C8(uint64_t a1)
{
  v2 = sub_1AB4010DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB400304(uint64_t a1)
{
  v2 = sub_1AB4010DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB400408()
{
  v1 = 0x6E6F69746361;
  if (*v0 != 1)
  {
    v1 = 1701605234;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1AB400454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB4022AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB40047C(uint64_t a1)
{
  v2 = sub_1AB400808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB4004B8(uint64_t a1)
{
  v2 = sub_1AB400808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.AlertAction.Button.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CF88);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v8 = sub_1AB400808();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v14[2] = v8;
  LOBYTE(v16[0]) = 0;
  v18[0] = sub_1AB461A84();
  v18[1] = v10;
  v14[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CF98);
  v22 = 2;
  sub_1AB40085C();
  sub_1AB461A54();
  v11 = *(&v16[0] + 1);
  v12 = *&v16[0];
  if (*(&v16[0] + 1) == 1)
  {
    v12 = 0;
    v11 = 0;
  }

  v18[2] = v12;
  v18[3] = v11;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v13 = sub_1AB462214();
  sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v13);

  v22 = 1;
  decodeActionModel<A, B>(using:container:forKey:)(v16);
  (*(v5 + 8))(v7, v4);
  v19 = v16[0];
  v20 = v16[1];
  v21 = v17;
  sub_1AB4009B8(v18, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1AB4009F0(v18);
}

unint64_t sub_1AB400808()
{
  result = qword_1EB43CF90;
  if (!qword_1EB43CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CF90);
  }

  return result;
}

unint64_t sub_1AB40085C()
{
  result = qword_1EB43CFA0;
  if (!qword_1EB43CFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43CF98);
    sub_1AB4008E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CFA0);
  }

  return result;
}

unint64_t sub_1AB4008E0()
{
  result = qword_1EB43CFA8;
  if (!qword_1EB43CFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43CFB0);
    sub_1AB400964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CFA8);
  }

  return result;
}

unint64_t sub_1AB400964()
{
  result = qword_1EB43CFB8;
  if (!qword_1EB43CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CFB8);
  }

  return result;
}

uint64_t Models.AlertAction.Button.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CFC0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v7 = sub_1AB400808();
  sub_1AB462274();
  LOBYTE(v13) = 0;
  v8 = v12;
  sub_1AB461BB4();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11 = v7;
  v12 = v4;
  v13 = *(v1 + 16);
  v14 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CFB0);
  sub_1AB400CA0();
  sub_1AB461BF4();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v10 = sub_1AB462264();
  sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v10);

  LOBYTE(v13) = 1;
  encodeActionModel<A, B>(_:using:container:forKey:)(v1 + 32);
  return (*(v12 + 8))(v6, v3);
}

unint64_t sub_1AB400CA0()
{
  result = qword_1EB43CFC8;
  if (!qword_1EB43CFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43CFB0);
    sub_1AB400D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CFC8);
  }

  return result;
}

unint64_t sub_1AB400D24()
{
  result = qword_1EB43CFD0;
  if (!qword_1EB43CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CFD0);
  }

  return result;
}

uint64_t Models.AlertAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CFD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB4010DC();
  sub_1AB462274();
  v9 = *(v3 + 8);
  *&v13 = *v3;
  *(&v13 + 1) = v9;
  v12 = 0;
  sub_1AB24CA70();

  sub_1AB461BF4();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v13) = *(v3 + 16);
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CFE8);
    sub_1AB401130();
    sub_1AB461BF4();
    LOBYTE(v13) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BCF0);
    sub_1AB4019D4(&qword_1EB43D010);
    sub_1AB461BF4();
    v13 = *(v3 + 112);
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B938);
    sub_1AB37DC30();
    sub_1AB461BF4();
    v13 = *(v3 + 128);
    v12 = 4;
    sub_1AB461BF4();
    *&v13 = *(v3 + 144);
    v12 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D018);
    sub_1AB40128C();
    sub_1AB461BF4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1AB4010DC()
{
  result = qword_1EB43CFE0;
  if (!qword_1EB43CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CFE0);
  }

  return result;
}

unint64_t sub_1AB401130()
{
  result = qword_1EB43CFF0;
  if (!qword_1EB43CFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43CFE8);
    sub_1AB4011B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CFF0);
  }

  return result;
}

unint64_t sub_1AB4011B4()
{
  result = qword_1EB43CFF8;
  if (!qword_1EB43CFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D000);
    sub_1AB401238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43CFF8);
  }

  return result;
}

unint64_t sub_1AB401238()
{
  result = qword_1EB43D008;
  if (!qword_1EB43D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D008);
  }

  return result;
}

unint64_t sub_1AB40128C()
{
  result = qword_1EB43D020;
  if (!qword_1EB43D020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D018);
    sub_1AB401310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D020);
  }

  return result;
}

unint64_t sub_1AB401310()
{
  result = qword_1EB43D028;
  if (!qword_1EB43D028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D030);
    sub_1AB401394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D028);
  }

  return result;
}

unint64_t sub_1AB401394()
{
  result = qword_1EB43D038;
  if (!qword_1EB43D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D038);
  }

  return result;
}

uint64_t Models.AlertAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D040);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  v21 = 2;
  v9 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v9);
  sub_1AB4010DC();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  v12 = a2;
  v19 = 0;
  sub_1AB24CE74();
  sub_1AB461AC4();
  v20 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CFE8);
  v19 = 1;
  sub_1AB401878();
  sub_1AB461AC4();
  v21 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BCF0);
  v19 = 2;
  sub_1AB4019D4(&qword_1EB43BCF8);
  sub_1AB461AC4();
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v22 = v13;
  v23 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B938);
  v19 = 3;
  sub_1AB37DF54();
  sub_1AB461AC4();
  v28 = v13;
  v19 = 4;
  sub_1AB461AC4();
  v29 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D018);
  v19 = 5;
  sub_1AB401A40();
  sub_1AB461AC4();
  (*(v6 + 8))(v8, v5);
  v30 = v13;
  sub_1AB401B9C(&v20, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return sub_1AB401BD4(&v20);
}

unint64_t sub_1AB401878()
{
  result = qword_1EB43D048;
  if (!qword_1EB43D048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43CFE8);
    sub_1AB4018FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D048);
  }

  return result;
}

unint64_t sub_1AB4018FC()
{
  result = qword_1EB43D050;
  if (!qword_1EB43D050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D000);
    sub_1AB401980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D050);
  }

  return result;
}

unint64_t sub_1AB401980()
{
  result = qword_1EB43D058;
  if (!qword_1EB43D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D058);
  }

  return result;
}

uint64_t sub_1AB4019D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43BCF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AB401A40()
{
  result = qword_1EB43D060;
  if (!qword_1EB43D060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D018);
    sub_1AB401AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D060);
  }

  return result;
}

unint64_t sub_1AB401AC4()
{
  result = qword_1EB43D068;
  if (!qword_1EB43D068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D030);
    sub_1AB401B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D068);
  }

  return result;
}

unint64_t sub_1AB401B48()
{
  result = qword_1EB43D070;
  if (!qword_1EB43D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D070);
  }

  return result;
}

__n128 Models.AlertAction.init(actionMetrics:title:message:buttons:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, __n128 *a7@<X8>)
{
  v16 = &_s12_EmptySourceVN;
  v17 = &off_1EE764AB0;
  MediaArtwork.init(_:)(&v15, &a7[1].n128_i64[1]);
  result = *a1;
  *a7 = *a1;
  a7[1].n128_u8[0] = 2;
  a7[7].n128_u64[0] = a2;
  a7[7].n128_u64[1] = a3;
  a7[8].n128_u64[0] = a4;
  a7[8].n128_u64[1] = a5;
  a7[9].n128_u64[0] = a6;
  return result;
}

unint64_t sub_1AB401CCC()
{
  result = qword_1EB43D078;
  if (!qword_1EB43D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D078);
  }

  return result;
}

unint64_t sub_1AB401D24()
{
  result = qword_1EB43D080;
  if (!qword_1EB43D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D080);
  }

  return result;
}

uint64_t sub_1AB401D78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1AB401DC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine11ActionModel_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1AB401EA0()
{
  result = qword_1EB43D088;
  if (!qword_1EB43D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D088);
  }

  return result;
}

unint64_t sub_1AB401EF8()
{
  result = qword_1EB43D090;
  if (!qword_1EB43D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D090);
  }

  return result;
}

unint64_t sub_1AB401F50()
{
  result = qword_1EB43D098;
  if (!qword_1EB43D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D098);
  }

  return result;
}

unint64_t sub_1AB401FA8()
{
  result = qword_1EB43D0A0;
  if (!qword_1EB43D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D0A0);
  }

  return result;
}

unint64_t sub_1AB402000()
{
  result = qword_1EB43D0A8;
  if (!qword_1EB43D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D0A8);
  }

  return result;
}

unint64_t sub_1AB402058()
{
  result = qword_1EB43D0B0;
  if (!qword_1EB43D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D0B0);
  }

  return result;
}

uint64_t sub_1AB4020AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974697265766573 && a2 == 0xE800000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E6F74747562 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1AB461DA4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1AB4022AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AB461DA4();

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

unint64_t sub_1AB402418()
{
  result = qword_1EB43D0B8;
  if (!qword_1EB43D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D0B8);
  }

  return result;
}

unint64_t sub_1AB40246C()
{
  result = qword_1EB43D0C0;
  if (!qword_1EB43D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D0C0);
  }

  return result;
}

unint64_t MetricsError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 2)
  {
    if (!*(v0 + 16))
    {
      v14 = 0;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x7320746F6E6E6143, 0xED00002074726174);
      MEMORY[0x1AC59BA20](v1, v2);
      v4 = " without starting it first";
      v5 = 0xD00000000000002ALL;
      goto LABEL_9;
    }

    if (v3 == 1)
    {
      sub_1AB4615D4();

      v14 = 0x6520746F6E6E6143;
      MEMORY[0x1AC59BA20](v1, v2);
      v4 = "No end(s) found for ";
      v5 = 0xD00000000000001ALL;
LABEL_9:
      v7 = v4 | 0x8000000000000000;
LABEL_11:
      MEMORY[0x1AC59BA20](v5, v7);
      return v14;
    }

    sub_1AB4615D4();

    v6 = 0xD000000000000014;
LABEL_13:
    v14 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FB0);
    sub_1AB402858();
    sub_1AB0273A8();
    v9 = sub_1AB460894();
    MEMORY[0x1AC59BA20](v9);

    return v14;
  }

  if (v3 == 3)
  {
    sub_1AB4615D4();

    v14 = 0xD000000000000010;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FB0);
    sub_1AB402858();
    sub_1AB0273A8();
    v8 = sub_1AB460894();
    MEMORY[0x1AC59BA20](v8);

    v5 = 0x73696D2065726120;
    v7 = 0xEC000000676E6973;
    goto LABEL_11;
  }

  if (v3 == 4)
  {
    sub_1AB4615D4();

    v6 = 0xD00000000000001CLL;
    goto LABEL_13;
  }

  if (v1 <= 1)
  {
    v11 = v1 | v2;
    v12 = 0xD000000000000031;
    v13 = 0xD00000000000002ELL;
  }

  else
  {
    v11 = v1 ^ 2 | v2;
    v12 = 0xD00000000000003FLL;
    v13 = 0xD00000000000004ELL;
    if (!(v1 ^ 3 | v2))
    {
      v13 = 0xD00000000000002BLL;
    }
  }

  if (v11)
  {
    return v13;
  }

  else
  {
    return v12;
  }
}

unint64_t sub_1AB402858()
{
  result = qword_1EB43D0C8;
  if (!qword_1EB43D0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB436FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D0C8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine12MetricsErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1AB4028E0(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

unsigned __int8 *sub_1AB402908(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 *md)
{
  data[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v12 = a4 >> 62;
      memset(data, 0, 14);
      if ((a4 >> 62) > 1)
      {
LABEL_20:
        LODWORD(v9) = 0;
        if (v12 != 2)
        {
          goto LABEL_30;
        }

        v16 = *(a3 + 16);
        v15 = *(a3 + 24);
        v9 = v15 - v16;
        if (!__OFSUB__(v15, v16))
        {
LABEL_26:
          if ((v9 & 0x8000000000000000) == 0)
          {
            if (HIDWORD(v9))
            {
              __break(1u);
              goto LABEL_29;
            }

LABEL_30:
            v11 = CC_SHA256(data, v9, md);
            sub_1AB017254(a3, a4);
            return v11;
          }

          goto LABEL_34;
        }

        __break(1u);
LABEL_24:
        if (__OFSUB__(HIDWORD(a3), a3))
        {
          goto LABEL_37;
        }

        v9 = HIDWORD(a3) - a3;
        goto LABEL_26;
      }

      if (v12)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    a1 = *(a1 + 16);
    v10 = a2 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (!v7)
    {
      data[0] = a1;
      LOWORD(data[1]) = a2;
      BYTE2(data[1]) = BYTE2(a2);
      BYTE3(data[1]) = BYTE3(a2);
      BYTE4(data[1]) = BYTE4(a2);
      v8 = a4 >> 62;
      BYTE5(data[1]) = BYTE5(a2);
      if ((a4 >> 62) > 1)
      {
        if (v8 != 2)
        {
LABEL_29:
          LODWORD(v9) = 0;
          goto LABEL_30;
        }

        v14 = *(a3 + 16);
        v13 = *(a3 + 24);
        v9 = v13 - v14;
        if (__OFSUB__(v13, v14))
        {
          goto LABEL_36;
        }

        goto LABEL_17;
      }

      if (v8)
      {
        if (__OFSUB__(HIDWORD(a3), a3))
        {
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
        }

        v9 = HIDWORD(a3) - a3;
LABEL_17:
        if ((v9 & 0x8000000000000000) == 0)
        {
          v12 = HIDWORD(v9);
          if (!HIDWORD(v9))
          {
            goto LABEL_30;
          }

          __break(1u);
          goto LABEL_20;
        }

LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_14:
      LODWORD(v9) = BYTE6(a4);
      goto LABEL_30;
    }

    if (a1 > a1 >> 32)
    {
      __break(1u);
      goto LABEL_33;
    }

    v10 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    a1 = a1;
  }

  v11 = sub_1AB4033B0(a1, v10, a3, a4, md);
  sub_1AB017254(a3, a4);
  return v11;
}

uint64_t sub_1AB402B18()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1AB460544();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D0E8);
  swift_allocObject();
  result = sub_1AB4622D4();
  qword_1EB433450 = result;
  return result;
}

uint64_t sub_1AB402BE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C540);
  swift_allocObject();
  result = sub_1AB4622D4();
  qword_1EB432CF8 = result;
  return result;
}

uint64_t sub_1AB402C40()
{
  v0 = sub_1AB1BF140(&unk_1F1FF2990);
  result = swift_arrayDestroy();
  qword_1EB432338 = v0;
  return result;
}

void sub_1AB402CB8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1AB460544();

    v2 = sub_1AB4605F4();
    v4 = v3;

    if (qword_1EB433A08 != -1)
    {
      swift_once();
    }

    v5 = sub_1AB05CF1C(v2, v4, qword_1EB433A10);
  }

  else
  {
    v5 = 0;
  }

  byte_1EB432CF0 = v5 & 1;
}

uint64_t sub_1AB402DD8()
{
  v0 = sub_1AB1BF140(&unk_1F1FF2930);
  result = swift_arrayDestroy();
  qword_1EB433A10 = v0;
  return result;
}

uint64_t sub_1AB402E74()
{
  v0 = sub_1AB1BF140(&unk_1F1FF4348);
  result = swift_arrayDestroy();
  qword_1EB432380 = v0;
  return result;
}

uint64_t sub_1AB402EEC(uint64_t a1, void *a2, uint64_t *a3, _BYTE *a4)
{
  if (*a2 != -1)
  {
    v8 = a3;
    swift_once();
    a3 = v8;
  }

  v5 = *a3;
  if (qword_1EB433460 != -1)
  {
    swift_once();
  }

  result = sub_1AB4622E4();
  if (v10)
  {
    v7 = sub_1AB05CF1C(v9, v10, v5);
  }

  else
  {
    v7 = 0;
  }

  *a4 = v7 & 1;
  return result;
}

uint64_t sub_1AB402FDC()
{
  v0 = sub_1AB1BF140(&unk_1F1FF4388);
  result = swift_arrayDestroy();
  qword_1EB432360 = v0;
  return result;
}

uint64_t sub_1AB403028()
{
  v0 = sub_1AB0550D0(&unk_1F1FF35A8);
  sub_1AB0589A8(&unk_1F1FF35C8);
  if (qword_1EB433460 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  if (v4)
  {
    v1 = sub_1AB05CF1C(v3, v4, v0);
  }

  else
  {
    v1 = 0;
  }

  byte_1EB432388 = v1 & 1;
  return result;
}

uint64_t sub_1AB4030F0()
{
  v0 = sub_1AB4605C4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AB1BF140(&unk_1F1FF36B8);
  swift_arrayDestroy();
  if (qword_1EB433460 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v5 = v18;
  if (v18)
  {
    swift_bridgeObjectRetain_n();
    sub_1AB4605A4();
    v6 = sub_1AB460554();
    v8 = v7;
    (*(v1 + 8))(v3, v0);
    if (v8 >> 60 == 15)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      v11 = swift_slowAlloc();
      sub_1AB017200(v6, v8);
      sub_1AB402908(v6, v8, v6, v8, v11);
      v12 = sub_1AB05AF50(v11, 32);
      v14 = v13;
      MEMORY[0x1AC59F020](v11, -1, -1);
      v9 = sub_1AB45F844();
      v10 = v15;
      sub_1AB017254(v12, v14);
      sub_1AB03BD58(v6, v8);
    }

    swift_bridgeObjectRelease_n();
    v5 = sub_1AB05CF1C(v9, v10, v4);
  }

  byte_1EB43D0E1 = v5 & 1;
  return result;
}

uint64_t sub_1AB403368(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

unsigned __int8 *sub_1AB4033B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5)
{
  v9 = sub_1AB45F414();
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = v9;
  v11 = sub_1AB45F444();
  if (__OFSUB__(a1, v11))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = (a1 - v11 + v10);
  result = sub_1AB45F434();
  if (v12)
  {
    v14 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v14 != 2)
      {
        goto LABEL_16;
      }

      v17 = *(a3 + 16);
      v16 = *(a3 + 24);
      v15 = v16 - v17;
      if (!__OFSUB__(v16, v17))
      {
LABEL_13:
        if ((v15 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v15))
          {
            return CC_SHA256(v12, v15, a5);
          }

          __break(1u);
LABEL_16:
          LODWORD(v15) = 0;
          return CC_SHA256(v12, v15, a5);
        }

        goto LABEL_19;
      }

      __break(1u);
    }

    else if (!v14)
    {
      LODWORD(v15) = BYTE6(a4);
      return CC_SHA256(v12, v15, a5);
    }

    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_20:
      __break(1u);
LABEL_21:
      result = sub_1AB45F434();
      goto LABEL_22;
    }

    v15 = HIDWORD(a3) - a3;
    goto LABEL_13;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t JSSource.init(_:file:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = *(type metadata accessor for JSSource() + 20);
  v10 = sub_1AB45F764();
  v11 = *(*(v10 - 8) + 56);
  v11(&a3[v9], 1, 1, v10);
  *a3 = a1;
  *(a3 + 1) = a2;
  sub_1AB45F634();

  v11(v8, 0, 1, v10);
  return sub_1AB04F3C8(v8, &a3[v9]);
}

uint64_t JSSource.code.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t JSSource.sourceURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JSSource() + 20);

  return sub_1AB03BC60(v3, a1);
}

uint64_t JSSource.sourceURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JSSource() + 20);

  return sub_1AB04F3C8(a1, v3);
}

uint64_t JSSource.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _s9JetEngine8JSSourceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1AB45F764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438C48);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if (*a1 == *a2 && a1[1] == a2[1] || (v14 = 0, (sub_1AB461DA4() & 1) != 0))
  {
    v15 = *(type metadata accessor for JSSource() + 20);
    v16 = *(v11 + 48);
    sub_1AB03BC60(a1 + v15, v13);
    sub_1AB03BC60(a2 + v15, &v13[v16]);
    v17 = *(v5 + 48);
    if (v17(v13, 1, v4) == 1)
    {
      if (v17(&v13[v16], 1, v4) == 1)
      {
        sub_1AB014AC0(v13, &unk_1EB4395B0);
        v14 = 1;
        return v14 & 1;
      }
    }

    else
    {
      sub_1AB03BC60(v13, v10);
      if (v17(&v13[v16], 1, v4) != 1)
      {
        (*(v5 + 32))(v7, &v13[v16], v4);
        sub_1AB0B30F8();
        v14 = sub_1AB460504();
        v18 = *(v5 + 8);
        v18(v7, v4);
        v18(v10, v4);
        sub_1AB014AC0(v13, &unk_1EB4395B0);
        return v14 & 1;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_1AB014AC0(v13, &qword_1EB438C48);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t PathExpression.init(pattern:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v76 = a4;
  v9 = sub_1AB45EFB4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45EFC4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v15 = sub_1AB461614();
  v17 = sub_1AB404D24(v15, v16);

  v19 = *(v17 + 16);
  v20 = 0x1E696A000uLL;
  if (v19)
  {
    v69 = v14;
    v70 = v12;
    v71 = v11;
    v21 = 0;
    v81 = 12126;
    v82 = 0xE200000000000000;
    v22 = (v17 + 40);
    v77 = v17;
    v78 = v4;
    v83 = v19;
    while (v21 < *(v17 + 16))
    {
      v24 = *(v22 - 1);
      v23 = *v22;
      if (v24 != 47 || v23 != 0xE100000000000000)
      {
        result = sub_1AB461DA4();
        if ((result & 1) == 0)
        {

          if ((sub_1AB460794() & 1) == 0)
          {
            MEMORY[0x1AC59BA20](47, 0xE100000000000000);
          }

          if (v24 == 42 && v23 == 0xE100000000000000 || (sub_1AB461DA4() & 1) != 0)
          {

            result = MEMORY[0x1AC59BA20](0x292A5D2F5E5B28, 0xE700000000000000);
          }

          else if (sub_1AB460784() & 1) != 0 || (sub_1AB460794())
          {
            if ((sub_1AB460784() & 1) == 0 || (sub_1AB460794() & 1) == 0)
            {

              sub_1AB45EF74();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1AB4D47F0;
              *(inited + 32) = sub_1AB460544();
              *(inited + 40) = v58;
              v79 = 0;
              v80 = 0xE000000000000000;
              sub_1AB4615D4();
              MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB50E4C0);
              MEMORY[0x1AC59BA20](v24, v23);

              v59 = "Path pattern component ";
              v60 = 0xD00000000000001CLL;
LABEL_41:
              MEMORY[0x1AC59BA20](v60, v59 | 0x8000000000000000);
              v62 = v79;
              v63 = v80;
              *(inited + 72) = MEMORY[0x1E69E6158];
              *(inited + 48) = v62;
              *(inited + 56) = v63;
              *(inited + 80) = sub_1AB460544();
              *(inited + 88) = v64;
              *(inited + 120) = MEMORY[0x1E69E6A70];
              v65 = v73;
              *(inited + 96) = v72;
              *(inited + 104) = v65;
              *(inited + 112) = v74;
              sub_1AB01B220(inited);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
              swift_arrayDestroy();
              sub_1AB2CEA10();
              v66 = v69;
              v67 = v71;
              sub_1AB45F574();
              sub_1AB45EF64();
              (*(v70 + 8))(v66, v67);
              return swift_willThrow();
            }

            v26 = sub_1AB4050BC(1uLL, v24, v23);
            v28 = v27;

            result = sub_1AB4613C4();
            if (__OFSUB__(result, 1))
            {
              goto LABEL_43;
            }

            v29 = sub_1AB4613A4();
            if (v30)
            {
              v31 = v28;
            }

            else
            {
              v31 = v29;
            }

            result = objc_opt_self();
            if (v31 >> 14 < v26 >> 14)
            {
              goto LABEL_44;
            }

            v32 = result;
            v33 = sub_1AB4613E4();
            v35 = v34;
            v37 = v36;
            v39 = v38;

            MEMORY[0x1AC59B960](v33, v35, v37, v39);

            v40 = sub_1AB460514();

            v41 = [v32 escapedPatternForString_];

            v42 = sub_1AB460544();
            v44 = v43;

            v79 = 3948328;
            v80 = 0xE300000000000000;
            MEMORY[0x1AC59BA20](v42, v44);

            MEMORY[0x1AC59BA20](0x292A5D2F5E5B3ELL, 0xE700000000000000);
            MEMORY[0x1AC59BA20](v79, v80);

            v17 = v77;
            v5 = v78;
            v20 = 0x1E696A000;
          }

          else
          {
            if (sub_1AB460784() & 1) != 0 || (sub_1AB460794())
            {
              if ((sub_1AB460784() & 1) == 0 || (sub_1AB460794() & 1) == 0)
              {

                sub_1AB45EF74();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1AB4D47F0;
                *(inited + 32) = sub_1AB460544();
                *(inited + 40) = v61;
                v79 = 0;
                v80 = 0xE000000000000000;
                sub_1AB4615D4();
                MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB50E4C0);
                MEMORY[0x1AC59BA20](v24, v23);

                v59 = "";
                v60 = 0xD00000000000001BLL;
                goto LABEL_41;
              }

              MEMORY[0x1AC59BA20](v24, v23);
            }

            else
            {
              v45 = objc_opt_self();
              v46 = sub_1AB460514();

              v47 = [v45 escapedPatternForString_];

              v48 = sub_1AB460544();
              v50 = v49;

              MEMORY[0x1AC59BA20](v48, v50);
            }
          }

          v19 = v83;
        }
      }

      ++v21;
      v22 += 2;
      if (v19 == v21)
      {

        MEMORY[0x1AC59BA20](36, 0xE100000000000000);
        v51 = v81;
        v52 = v82;
        v53 = objc_allocWithZone(*(v20 + 3696));
        v54 = v51;
        v55 = v52;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {

    v56 = objc_allocWithZone(MEMORY[0x1E696AE70]);
    v54 = 10798;
    v55 = 0xE200000000000000;
LABEL_36:
    result = sub_1AB0C5760(v54, v55, 0);
    if (!v5)
    {
      *v76 = result;
    }
  }

  return result;
}

JetEngine::PathExpression::MatchResult_optional __swiftcall PathExpression.match(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = v1;
  v6 = *v2;
  v7 = sub_1AB460514();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437578);
  sub_1AB01561C(&qword_1EB437580, &qword_1EB437578);
  sub_1AB0273A8();
  v8 = sub_1AB4612F4();
  v10 = [v6 firstMatchInString:v7 options:0 range:{v8, v9}];

  if (v10)
  {
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  *v5 = v10;
  v5[1] = countAndFlagsBits;
  v5[2] = object;
  result.value.raw._object = v13;
  result.value.raw._countAndFlagsBits = v12;
  result.value.base.super.isa = v11;
  result.is_nil = v14;
  return result;
}

uint64_t PathExpression.MatchResult.raw.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

char *PathExpression.MatchResult.endIndex.getter()
{
  v1 = [*v0 numberOfRanges];
  v2 = __OFSUB__(v1, 1);
  result = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall PathExpression.MatchResult.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t PathExpression.MatchResult.subscript.getter(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *v1;
  v4 = [*v1 numberOfRanges];
  if (__OFSUB__(v4, 1))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 - 1 <= a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v3 rangeAtIndex_];
  sub_1AB460FD4();
  if ((v5 & 1) == 0)
  {
    v6 = sub_1AB4607E4();
    v7 = MEMORY[0x1AC59B960](v6);

    return v7;
  }

LABEL_9:
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t PathExpression.MatchResult.subscript.getter()
{
  v1 = *v0;
  v2 = sub_1AB460514();
  [v1 rangeWithName_];

  sub_1AB460FD4();
  if (v3)
  {
    return 0;
  }

  v5 = sub_1AB4607E4();
  v6 = MEMORY[0x1AC59B960](v5);

  return v6;
}

uint64_t PathExpression.MatchResult.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AB45EFB4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1AB45EFC4();
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = *(v2 + 8);
  v11 = *(v2 + 16);
  v24 = a2;
  v12 = sub_1AB460514();
  [v9 rangeWithName_];

  sub_1AB460FD4();
  if (v13)
  {
    sub_1AB45EF74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D47F0;
    *(inited + 32) = sub_1AB460544();
    *(inited + 40) = v15;
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1AB4615D4();

    v25 = 0xD000000000000019;
    v26 = 0x80000001AB50E500;
    MEMORY[0x1AC59BA20](a1, v24);
    MEMORY[0x1AC59BA20](0x6E697373696D2060, 0xE900000000000067);
    v16 = v25;
    v17 = v26;
    v18 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v16;
    *(inited + 56) = v17;
    *(inited + 80) = sub_1AB460544();
    *(inited + 88) = v19;
    *(inited + 120) = v18;
    *(inited + 96) = v10;
    *(inited + 104) = v11;

    sub_1AB01B220(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
    swift_arrayDestroy();
    sub_1AB2CEA10();
    sub_1AB45F574();
    sub_1AB45EF64();
    (*(v27 + 8))(v8, v6);
    return swift_willThrow();
  }

  else
  {
    v21 = sub_1AB4607E4();
    v22 = MEMORY[0x1AC59B960](v21);

    return v22;
  }
}

uint64_t PathExpression.MatchResult.debugDescription.getter()
{
  strcpy(v2, "MatchResult(");
  sub_1AB40516C();
  sub_1AB0273A8();
  v0 = sub_1AB460894();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return v2[0];
}

char *sub_1AB4049E0@<X0>(void *a1@<X8>)
{
  result = [*v1 numberOfRanges];
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    *a1 = result - 1;
  }

  return result;
}

uint64_t (*sub_1AB404A20(uint64_t *a1, uint64_t *a2))()
{
  matched = PathExpression.MatchResult.subscript.getter(*a2);
  a1[1] = v4;
  a1[2] = v4;
  *a1 = matched;
  return sub_1AB404A6C;
}

char *sub_1AB404A74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  result = [v6 numberOfRanges];
  v10 = (result - 1);
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v10 < v4)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  *a2 = v5;
  a2[1] = v4;
  v11 = v6;
}

char *sub_1AB404B0C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = 0;
  v6 = v3;

  result = [v6 numberOfRanges];
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    a1[4] = result - 1;
  }

  return result;
}

id sub_1AB404B74()
{
  result = [*v0 numberOfRanges];
  if (!__OFSUB__(result, 1))
  {
    return (result == 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB404BAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AB4052C0(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1AB404BE4()
{
  strcpy(v2, "MatchResult(");
  sub_1AB40516C();
  sub_1AB0273A8();
  v0 = sub_1AB460894();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return v2[0];
}

char *sub_1AB404C94()
{
  v1 = [*v0 numberOfRanges];
  v2 = __OFSUB__(v1, 1);
  result = v1 - 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void *sub_1AB404CCC()
{
  v1 = *v0;
  v2 = sub_1AB2BE90C(*v0, *(v0 + 8), *(v0 + 16));

  return v2;
}

uint64_t sub_1AB404D24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1AB45F764();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45F3E4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB45F3D4();
  sub_1AB45F3C4();

  MEMORY[0x1AC59A6B0](a1, a2);
  sub_1AB45F334();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1AB03BCD0(v6);
    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v15 = sub_1AB45F624();
    (*(v8 + 8))(v10, v7);
  }

  (*(v12 + 8))(v14, v11);
  return v15;
}

unint64_t PathExpression.debugDescription.getter()
{
  v1 = [*v0 pattern];
  v2 = sub_1AB460544();
  v4 = v3;

  MEMORY[0x1AC59BA20](v2, v4);

  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t sub_1AB40501C()
{
  v1 = [*v0 pattern];
  v2 = sub_1AB460544();
  v4 = v3;

  MEMORY[0x1AC59BA20](v2, v4);

  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t sub_1AB4050BC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1AB4606C4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1AB4607E4();
}

unint64_t sub_1AB40516C()
{
  result = qword_1EB43D0F0;
  if (!qword_1EB43D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D0F0);
  }

  return result;
}

uint64_t sub_1AB4052C0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t JSONObject.decode<A>(_:using:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;

  v2 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v4);
  JSONObject.decode<A>(_:withUserInfo:)(v2, v2);
}

uint64_t sub_1AB405430(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  sub_1AB03BD38(0, v2, 0);
  v3 = v1 + 56;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 56);
  v7 = (63 - v5) >> 6;
  v25 = v1;
  if (v2)
  {

    v9 = 0;
    v10 = 0;
    while (v6)
    {
LABEL_10:
      result = *(*(v1 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v6)))));
      if (!result)
      {
        goto LABEL_28;
      }

      result = sub_1AB462314();
      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      if (v14 >= v13 >> 1)
      {
        v23 = v12;
        v24 = result;
        sub_1AB03BD38((v13 > 1), v14 + 1, 1);
        v12 = v23;
        result = v24;
      }

      ++v9;
      v6 &= v6 - 1;
      *(v26 + 16) = v14 + 1;
      v15 = v26 + 16 * v14;
      *(v15 + 32) = result;
      *(v15 + 40) = v12;
      v1 = v25;
      if (v9 == v2)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v7)
      {
        goto LABEL_28;
      }

      v6 = *(v3 + 8 * v11);
      ++v10;
      if (v6)
      {
        v10 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

    v10 = 0;
LABEL_16:
    if (v6)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v16 >= v7)
      {

        return v26;
      }

      v6 = *(v3 + 8 * v16);
      ++v10;
      if (v6)
      {
        v10 = v16;
        do
        {
LABEL_21:
          result = sub_1AB462314();
          v19 = *(v26 + 16);
          v18 = *(v26 + 24);
          if (v19 >= v18 >> 1)
          {
            v21 = result;
            v22 = v17;
            sub_1AB03BD38((v18 > 1), v19 + 1, 1);
            v17 = v22;
            result = v21;
          }

          v6 &= v6 - 1;
          *(v26 + 16) = v19 + 1;
          v20 = v26 + 16 * v19;
          *(v20 + 32) = result;
          *(v20 + 40) = v17;
        }

        while (v6);
      }
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_1AB405670(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v47;
  if (v47)
  {
    sub_1AB4615D4();

    *&v47 = 0xD000000000000030;
    *(&v47 + 1) = 0x80000001AB50EC20;
    v9 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v9);

    v8(&v47);
    sub_1AB0177B8(v8);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    sub_1AB4615D4();

    *&v47 = 0xD000000000000030;
    *(&v47 + 1) = 0x80000001AB50EC20;
    v10 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v10);

    v11 = v47;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v47 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v47);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v47);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v53 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v52 = MEMORY[0x1E69E6A70];
      *&v50 = a1;
      *(&v50 + 1) = a2;
      v51 = a3;
      sub_1AB01522C(&v50, v46);
      v47 = 0u;
      v48 = 0u;
      sub_1AB0169C4(v46, &v47);
      v49 = 0;
      v23 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v53 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v47;
      v28 = v48;
      v26[64] = v49;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v53 = v23;
      sub_1AB0167A8(&v50);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v52 = MEMORY[0x1E69E6810];
      *&v50 = a4;
      sub_1AB01522C(&v50, v46);
      v47 = 0u;
      v48 = 0u;
      sub_1AB0169C4(v46, &v47);
      v49 = 0;
      v30 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v53 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v47;
      v35 = v48;
      v33[64] = v49;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v53 = v30;
      sub_1AB0167A8(&v50);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v47 = 0;
      *(&v47 + 1) = 0xE000000000000000;
      sub_1AB4615D4();

      *&v47 = 0xD000000000000030;
      *(&v47 + 1) = 0x80000001AB50EC20;
      v37 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v37);

      v52 = MEMORY[0x1E69E6158];
      v50 = v47;
      sub_1AB01522C(&v50, v46);
      v47 = 0u;
      v48 = 0u;
      sub_1AB0169C4(v46, &v47);
      v49 = 0;
      v38 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1AB0168A8(0, *(v38 + 2) + 1, 1, v38);
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1AB0168A8((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v47;
      v43 = v48;
      v41[64] = v49;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v53 = v38;
      sub_1AB0167A8(&v50);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v21 + 32) = v53;
      *&v47 = v20;
      LOBYTE(v50) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v50);
      goto LABEL_26;
    }

    sub_1AB4615D4();

    v45 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v45);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB405D94(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000022, 0x80000001AB50EB60);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0xD00000000000003BLL, 0x80000001AB50EB90);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000022, 0x80000001AB50EB60);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0xD00000000000003BLL, 0x80000001AB50EB90);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000022, 0x80000001AB50EB60);
      *&v48 = a5;
      sub_1AB461824();
      MEMORY[0x1AC59BA20](0xD00000000000003BLL, 0x80000001AB50EB90);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000022, 0x80000001AB50EB60);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0xD00000000000003BLL, 0x80000001AB50EB90);
    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB40658C(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000024;
    *(&v41 + 1) = 0x80000001AB50E9F0;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD000000000000024, 0x80000001AB50E9F0, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000024;
      v45 = 0x80000001AB50E9F0;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB406B74(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000080;
    *(&v41 + 1) = 0x80000001AB50EF40;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD000000000000080, 0x80000001AB50EF40, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000080;
      v45 = 0x80000001AB50EF40;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40715C(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD00000000000001ALL;
    *(&v41 + 1) = 0x80000001AB50EF20;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD00000000000001ALL, 0x80000001AB50EF20, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD00000000000001ALL;
      v45 = 0x80000001AB50EF20;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB407744(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000090;
    *(&v41 + 1) = 0x80000001AB50EDE0;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD000000000000090, 0x80000001AB50EDE0, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000090;
      v45 = 0x80000001AB50EDE0;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB407D2C(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000095;
    *(&v41 + 1) = 0x80000001AB50EE80;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD000000000000095, 0x80000001AB50EE80, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000095;
      v45 = 0x80000001AB50EE80;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB408314(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v43;
  if (v43)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD00000000000001ALL, 0x80000001AB50E890);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v8(&v43);
    sub_1AB0177B8(v8);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD00000000000001ALL, 0x80000001AB50E890);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v9 = v43;
    v10 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v11 = sub_1AB461324();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v43 = v13;
      *v12 = 136446722;
      v14 = sub_1AB461614();
      v16 = sub_1AB030D2C(v14, v15, &v43);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2050;
      *(v12 + 14) = a4;
      *(v12 + 22) = 2082;
      v17 = sub_1AB030D2C(v9, *(&v9 + 1), &v43);

      *(v12 + 24) = v17;
      _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v13, -1, -1);
      MEMORY[0x1AC59F020](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v18 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      v48 = MEMORY[0x1E69E6A70];
      *&v46 = a1;
      *(&v46 + 1) = a2;
      v47 = a3;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v21 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1AB0168A8(0, *(v21 + 2) + 1, 1, v21);
        v49 = v21;
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[40 * v23];
      v25 = v43;
      v26 = v44;
      v24[64] = v45;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      v49 = v21;
      sub_1AB0167A8(&v46);
      v27._countAndFlagsBits = 58;
      v27._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v48 = MEMORY[0x1E69E6810];
      *&v46 = a4;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v28 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
        v49 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v43;
      v33 = v44;
      v31[64] = v45;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v49 = v28;
      sub_1AB0167A8(&v46);
      v34._countAndFlagsBits = 0xD00000000000001BLL;
      v34._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
      MEMORY[0x1AC59BA20](0xD00000000000001ALL, 0x80000001AB50E890);
      MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

      v48 = MEMORY[0x1E69E6158];
      v46 = v43;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v35 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1AB0168A8(0, *(v35 + 2) + 1, 1, v35);
        v49 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1AB0168A8((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v43;
      v40 = v44;
      v38[64] = v45;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v49 = v35;
      sub_1AB0167A8(&v46);
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      *(v19 + 32) = v49;
      *&v43 = v18;
      LOBYTE(v46) = 0;
      OSLogger.log(contentsOf:withLevel:)(v19, &v46);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD00000000000001ALL, 0x80000001AB50E890);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB408B9C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v43;
  if (v43)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD00000000000001DLL, 0x80000001AB50E850);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v8(&v43);
    sub_1AB0177B8(v8);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD00000000000001DLL, 0x80000001AB50E850);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v9 = v43;
    v10 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v11 = sub_1AB461324();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v43 = v13;
      *v12 = 136446722;
      v14 = sub_1AB461614();
      v16 = sub_1AB030D2C(v14, v15, &v43);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2050;
      *(v12 + 14) = a4;
      *(v12 + 22) = 2082;
      v17 = sub_1AB030D2C(v9, *(&v9 + 1), &v43);

      *(v12 + 24) = v17;
      _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v13, -1, -1);
      MEMORY[0x1AC59F020](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v18 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      v48 = MEMORY[0x1E69E6A70];
      *&v46 = a1;
      *(&v46 + 1) = a2;
      v47 = a3;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v21 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1AB0168A8(0, *(v21 + 2) + 1, 1, v21);
        v49 = v21;
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[40 * v23];
      v25 = v43;
      v26 = v44;
      v24[64] = v45;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      v49 = v21;
      sub_1AB0167A8(&v46);
      v27._countAndFlagsBits = 58;
      v27._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v48 = MEMORY[0x1E69E6810];
      *&v46 = a4;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v28 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
        v49 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v43;
      v33 = v44;
      v31[64] = v45;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v49 = v28;
      sub_1AB0167A8(&v46);
      v34._countAndFlagsBits = 0xD00000000000001BLL;
      v34._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
      MEMORY[0x1AC59BA20](0xD00000000000001DLL, 0x80000001AB50E850);
      MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

      v48 = MEMORY[0x1E69E6158];
      v46 = v43;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v35 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1AB0168A8(0, *(v35 + 2) + 1, 1, v35);
        v49 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1AB0168A8((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v43;
      v40 = v44;
      v38[64] = v45;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v49 = v35;
      sub_1AB0167A8(&v46);
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      *(v19 + 32) = v49;
      *&v43 = v18;
      LOBYTE(v46) = 0;
      OSLogger.log(contentsOf:withLevel:)(v19, &v46);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD00000000000001DLL, 0x80000001AB50E850);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB409424(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v43;
  if (v43)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB50E820);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v8(&v43);
    sub_1AB0177B8(v8);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB50E820);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v9 = v43;
    v10 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v11 = sub_1AB461324();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v43 = v13;
      *v12 = 136446722;
      v14 = sub_1AB461614();
      v16 = sub_1AB030D2C(v14, v15, &v43);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2050;
      *(v12 + 14) = a4;
      *(v12 + 22) = 2082;
      v17 = sub_1AB030D2C(v9, *(&v9 + 1), &v43);

      *(v12 + 24) = v17;
      _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v13, -1, -1);
      MEMORY[0x1AC59F020](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v18 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      v48 = MEMORY[0x1E69E6A70];
      *&v46 = a1;
      *(&v46 + 1) = a2;
      v47 = a3;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v21 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1AB0168A8(0, *(v21 + 2) + 1, 1, v21);
        v49 = v21;
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[40 * v23];
      v25 = v43;
      v26 = v44;
      v24[64] = v45;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      v49 = v21;
      sub_1AB0167A8(&v46);
      v27._countAndFlagsBits = 58;
      v27._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v48 = MEMORY[0x1E69E6810];
      *&v46 = a4;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v28 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
        v49 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v43;
      v33 = v44;
      v31[64] = v45;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v49 = v28;
      sub_1AB0167A8(&v46);
      v34._countAndFlagsBits = 0xD00000000000001BLL;
      v34._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
      MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB50E820);
      MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

      v48 = MEMORY[0x1E69E6158];
      v46 = v43;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v35 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1AB0168A8(0, *(v35 + 2) + 1, 1, v35);
        v49 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1AB0168A8((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v43;
      v40 = v44;
      v38[64] = v45;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v49 = v35;
      sub_1AB0167A8(&v46);
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      *(v19 + 32) = v49;
      *&v43 = v18;
      LOBYTE(v46) = 0;
      OSLogger.log(contentsOf:withLevel:)(v19, &v46);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB50E820);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB409CAC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v43;
  if (v43)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB50E7F0);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v8(&v43);
    sub_1AB0177B8(v8);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB50E7F0);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v9 = v43;
    v10 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v11 = sub_1AB461324();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v43 = v13;
      *v12 = 136446722;
      v14 = sub_1AB461614();
      v16 = sub_1AB030D2C(v14, v15, &v43);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2050;
      *(v12 + 14) = a4;
      *(v12 + 22) = 2082;
      v17 = sub_1AB030D2C(v9, *(&v9 + 1), &v43);

      *(v12 + 24) = v17;
      _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v13, -1, -1);
      MEMORY[0x1AC59F020](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v18 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      v48 = MEMORY[0x1E69E6A70];
      *&v46 = a1;
      *(&v46 + 1) = a2;
      v47 = a3;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v21 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1AB0168A8(0, *(v21 + 2) + 1, 1, v21);
        v49 = v21;
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[40 * v23];
      v25 = v43;
      v26 = v44;
      v24[64] = v45;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      v49 = v21;
      sub_1AB0167A8(&v46);
      v27._countAndFlagsBits = 58;
      v27._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v48 = MEMORY[0x1E69E6810];
      *&v46 = a4;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v28 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
        v49 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v43;
      v33 = v44;
      v31[64] = v45;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v49 = v28;
      sub_1AB0167A8(&v46);
      v34._countAndFlagsBits = 0xD00000000000001BLL;
      v34._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
      MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB50E7F0);
      MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

      v48 = MEMORY[0x1E69E6158];
      v46 = v43;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v35 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1AB0168A8(0, *(v35 + 2) + 1, 1, v35);
        v49 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1AB0168A8((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v43;
      v40 = v44;
      v38[64] = v45;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v49 = v35;
      sub_1AB0167A8(&v46);
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      *(v19 + 32) = v49;
      *&v43 = v18;
      LOBYTE(v46) = 0;
      OSLogger.log(contentsOf:withLevel:)(v19, &v46);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB50E7F0);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB40A534(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v43;
  if (v43)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50E7B0);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v8(&v43);
    sub_1AB0177B8(v8);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50E7B0);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v9 = v43;
    v10 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v11 = sub_1AB461324();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v43 = v13;
      *v12 = 136446722;
      v14 = sub_1AB461614();
      v16 = sub_1AB030D2C(v14, v15, &v43);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2050;
      *(v12 + 14) = a4;
      *(v12 + 22) = 2082;
      v17 = sub_1AB030D2C(v9, *(&v9 + 1), &v43);

      *(v12 + 24) = v17;
      _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v13, -1, -1);
      MEMORY[0x1AC59F020](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v18 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      v48 = MEMORY[0x1E69E6A70];
      *&v46 = a1;
      *(&v46 + 1) = a2;
      v47 = a3;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v21 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1AB0168A8(0, *(v21 + 2) + 1, 1, v21);
        v49 = v21;
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[40 * v23];
      v25 = v43;
      v26 = v44;
      v24[64] = v45;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      v49 = v21;
      sub_1AB0167A8(&v46);
      v27._countAndFlagsBits = 58;
      v27._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v48 = MEMORY[0x1E69E6810];
      *&v46 = a4;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v28 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
        v49 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v43;
      v33 = v44;
      v31[64] = v45;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v49 = v28;
      sub_1AB0167A8(&v46);
      v34._countAndFlagsBits = 0xD00000000000001BLL;
      v34._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50E7B0);
      MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

      v48 = MEMORY[0x1E69E6158];
      v46 = v43;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v35 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1AB0168A8(0, *(v35 + 2) + 1, 1, v35);
        v49 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1AB0168A8((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v43;
      v40 = v44;
      v38[64] = v45;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v49 = v35;
      sub_1AB0167A8(&v46);
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      *(v19 + 32) = v49;
      *&v43 = v18;
      LOBYTE(v46) = 0;
      OSLogger.log(contentsOf:withLevel:)(v19, &v46);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50E7B0);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB40ADC8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v43;
  if (v43)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB50E870);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v8(&v43);
    sub_1AB0177B8(v8);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB50E870);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v9 = v43;
    v10 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v11 = sub_1AB461324();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v43 = v13;
      *v12 = 136446722;
      v14 = sub_1AB461614();
      v16 = sub_1AB030D2C(v14, v15, &v43);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2050;
      *(v12 + 14) = a4;
      *(v12 + 22) = 2082;
      v17 = sub_1AB030D2C(v9, *(&v9 + 1), &v43);

      *(v12 + 24) = v17;
      _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v13, -1, -1);
      MEMORY[0x1AC59F020](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v18 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      v48 = MEMORY[0x1E69E6A70];
      *&v46 = a1;
      *(&v46 + 1) = a2;
      v47 = a3;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v21 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1AB0168A8(0, *(v21 + 2) + 1, 1, v21);
        v49 = v21;
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[40 * v23];
      v25 = v43;
      v26 = v44;
      v24[64] = v45;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      v49 = v21;
      sub_1AB0167A8(&v46);
      v27._countAndFlagsBits = 58;
      v27._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v48 = MEMORY[0x1E69E6810];
      *&v46 = a4;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v28 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
        v49 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v43;
      v33 = v44;
      v31[64] = v45;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v49 = v28;
      sub_1AB0167A8(&v46);
      v34._countAndFlagsBits = 0xD00000000000001BLL;
      v34._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
      MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB50E870);
      MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

      v48 = MEMORY[0x1E69E6158];
      v46 = v43;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v35 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1AB0168A8(0, *(v35 + 2) + 1, 1, v35);
        v49 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1AB0168A8((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v43;
      v40 = v44;
      v38[64] = v45;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v49 = v35;
      sub_1AB0167A8(&v46);
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      *(v19 + 32) = v49;
      *&v43 = v18;
      LOBYTE(v46) = 0;
      OSLogger.log(contentsOf:withLevel:)(v19, &v46);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB50E870);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB40B650(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v43;
  if (v43)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB50E8B0);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v8(&v43);
    sub_1AB0177B8(v8);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB50E8B0);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    v9 = v43;
    v10 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v11 = sub_1AB461324();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v43 = v13;
      *v12 = 136446722;
      v14 = sub_1AB461614();
      v16 = sub_1AB030D2C(v14, v15, &v43);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2050;
      *(v12 + 14) = a4;
      *(v12 + 22) = 2082;
      v17 = sub_1AB030D2C(v9, *(&v9 + 1), &v43);

      *(v12 + 24) = v17;
      _os_log_impl(&dword_1AB012000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v13, -1, -1);
      MEMORY[0x1AC59F020](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v18 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1AB4D4720;
      v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      v48 = MEMORY[0x1E69E6A70];
      *&v46 = a1;
      *(&v46 + 1) = a2;
      v47 = a3;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v21 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1AB0168A8(0, *(v21 + 2) + 1, 1, v21);
        v49 = v21;
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[40 * v23];
      v25 = v43;
      v26 = v44;
      v24[64] = v45;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      v49 = v21;
      sub_1AB0167A8(&v46);
      v27._countAndFlagsBits = 58;
      v27._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v48 = MEMORY[0x1E69E6810];
      *&v46 = a4;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v28 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
        v49 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v43;
      v33 = v44;
      v31[64] = v45;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v49 = v28;
      sub_1AB0167A8(&v46);
      v34._countAndFlagsBits = 0xD00000000000001BLL;
      v34._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
      MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB50E8B0);
      MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

      v48 = MEMORY[0x1E69E6158];
      v46 = v43;
      sub_1AB01522C(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1AB0169C4(v42, &v43);
      v45 = 0;
      v35 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1AB0168A8(0, *(v35 + 2) + 1, 1, v35);
        v49 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1AB0168A8((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v43;
      v40 = v44;
      v38[64] = v45;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v49 = v35;
      sub_1AB0167A8(&v46);
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      *(v19 + 32) = v49;
      *&v43 = v18;
      LOBYTE(v46) = 0;
      OSLogger.log(contentsOf:withLevel:)(v19, &v46);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50DA50);
    MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB50E8B0);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50DA70);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50DAA0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB40BED8(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000022;
    *(&v41 + 1) = 0x80000001AB50EDB0;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD000000000000022, 0x80000001AB50EDB0, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000022;
      v45 = 0x80000001AB50EDB0;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40C4C0(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000034;
    *(&v41 + 1) = 0x80000001AB50EA20;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD000000000000034, 0x80000001AB50EA20, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000034;
      v45 = 0x80000001AB50EA20;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40CAA8(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000032;
    *(&v41 + 1) = 0x80000001AB50EA60;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD000000000000032, 0x80000001AB50EA60, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000032;
      v45 = 0x80000001AB50EA60;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40D090(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000027;
    *(&v41 + 1) = 0x80000001AB50EAA0;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD000000000000027, 0x80000001AB50EAA0, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000027;
      v45 = 0x80000001AB50EAA0;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40D678(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD00000000000003CLL;
    *(&v41 + 1) = 0x80000001AB50ED70;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD00000000000003CLL, 0x80000001AB50ED70, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD00000000000003CLL;
      v45 = 0x80000001AB50ED70;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40DC60(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000032;
    *(&v41 + 1) = 0x80000001AB50ED30;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD000000000000032, 0x80000001AB50ED30, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000032;
      v45 = 0x80000001AB50ED30;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40E248(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD00000000000005CLL;
    *(&v41 + 1) = 0x80000001AB50E720;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD00000000000005CLL, 0x80000001AB50E720, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD00000000000005CLL;
      v45 = 0x80000001AB50E720;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40E830(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000047;
    *(&v41 + 1) = 0x80000001AB50ECC0;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD000000000000047, 0x80000001AB50ECC0, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000047;
      v45 = 0x80000001AB50ECC0;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40EE18(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD00000000000002BLL;
    *(&v41 + 1) = 0x80000001AB50EC90;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD00000000000002BLL, 0x80000001AB50EC90, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD00000000000002BLL;
      v45 = 0x80000001AB50EC90;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40F400(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000047;
    *(&v41 + 1) = 0x80000001AB50EAD0;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD000000000000047, 0x80000001AB50EAD0, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000047;
      v45 = 0x80000001AB50EAD0;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40F9E8(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD00000000000002ALL;
    *(&v41 + 1) = 0x80000001AB50EC60;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD00000000000002ALL, 0x80000001AB50EC60, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD00000000000002ALL;
      v45 = 0x80000001AB50EC60;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB40FFD0(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD00000000000004CLL;
    *(&v41 + 1) = 0x80000001AB50EBD0;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD00000000000004CLL, 0x80000001AB50EBD0, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD00000000000004CLL;
      v45 = 0x80000001AB50EBD0;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB4105B8(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD00000000000003ALL;
    *(&v41 + 1) = 0x80000001AB50EB20;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD00000000000003ALL, 0x80000001AB50EB20, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD00000000000003ALL;
      v45 = 0x80000001AB50EB20;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB410BA0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v47;
  if (v47)
  {
    sub_1AB4615D4();

    *&v47 = 0xD00000000000001ELL;
    *(&v47 + 1) = 0x80000001AB50E9D0;
    v9 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v9);

    MEMORY[0x1AC59BA20](46, 0xE100000000000000);
    v8(&v47);
    sub_1AB0177B8(v8);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    sub_1AB4615D4();

    *&v47 = 0xD00000000000001ELL;
    *(&v47 + 1) = 0x80000001AB50E9D0;
    v10 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v10);

    MEMORY[0x1AC59BA20](46, 0xE100000000000000);
    v11 = v47;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v47 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v47);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v47);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v53 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v52 = MEMORY[0x1E69E6A70];
      *&v50 = a1;
      *(&v50 + 1) = a2;
      v51 = a3;
      sub_1AB01522C(&v50, v46);
      v47 = 0u;
      v48 = 0u;
      sub_1AB0169C4(v46, &v47);
      v49 = 0;
      v23 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v53 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v47;
      v28 = v48;
      v26[64] = v49;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v53 = v23;
      sub_1AB0167A8(&v50);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v52 = MEMORY[0x1E69E6810];
      *&v50 = a4;
      sub_1AB01522C(&v50, v46);
      v47 = 0u;
      v48 = 0u;
      sub_1AB0169C4(v46, &v47);
      v49 = 0;
      v30 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v53 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v47;
      v35 = v48;
      v33[64] = v49;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v53 = v30;
      sub_1AB0167A8(&v50);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v47 = 0;
      *(&v47 + 1) = 0xE000000000000000;
      sub_1AB4615D4();

      *&v47 = 0xD00000000000001ELL;
      *(&v47 + 1) = 0x80000001AB50E9D0;
      v37 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v37);

      MEMORY[0x1AC59BA20](46, 0xE100000000000000);
      v52 = MEMORY[0x1E69E6158];
      v50 = v47;
      sub_1AB01522C(&v50, v46);
      v47 = 0u;
      v48 = 0u;
      sub_1AB0169C4(v46, &v47);
      v49 = 0;
      v38 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1AB0168A8(0, *(v38 + 2) + 1, 1, v38);
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1AB0168A8((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v47;
      v43 = v48;
      v41[64] = v49;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v53 = v38;
      sub_1AB0167A8(&v50);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v21 + 32) = v53;
      *&v47 = v20;
      LOBYTE(v50) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v50);
      goto LABEL_26;
    }

    sub_1AB4615D4();

    v45 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v45);

    MEMORY[0x1AC59BA20](46, 0xE100000000000000);
    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB411304(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000019;
    *(&v41 + 1) = 0x80000001AB504180;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD000000000000019, 0x80000001AB504180, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000019;
      v45 = 0x80000001AB504180;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB4118EC(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD00000000000007FLL;
    *(&v41 + 1) = 0x80000001AB50E8D0;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD00000000000007FLL, 0x80000001AB50E8D0, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD00000000000007FLL;
      v45 = 0x80000001AB50E8D0;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB411ED4(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000029;
    *(&v41 + 1) = 0x80000001AB50E780;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD000000000000029, 0x80000001AB50E780, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000029;
      v45 = 0x80000001AB50E780;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB4124BC(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000079;
    *(&v41 + 1) = 0x80000001AB50E6A0;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD000000000000079, 0x80000001AB50E6A0, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000079;
      v45 = 0x80000001AB50E6A0;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void sub_1AB412AA4(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD00000000000002ALL;
    *(&v41 + 1) = 0x80000001AB50E670;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD00000000000002ALL, 0x80000001AB50E670, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD00000000000002ALL;
      v45 = 0x80000001AB50E670;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}