uint64_t sub_2544D7FAC()
{
  v1 = v0;
  v2 = _s12RegistrationVMa();
  if (*(v0 + v2[8]) == 4)
  {
    v3 = 7104878;
    v4 = 0xE300000000000000;
  }

  else
  {
    sub_25454C1D4();
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  sub_25454C154();
  MEMORY[0x259C0EE40](540697705, 0xE400000000000000);
  v5 = sub_254549364();
  MEMORY[0x259C0EE40](v5);

  MEMORY[0x259C0EE40](0x6172656D6163202CLL, 0xEC000000203A4449);
  v6 = v0 + v2[5];
  v7 = sub_254549364();
  MEMORY[0x259C0EE40](v7);

  MEMORY[0x259C0EE40](0x203A65646F6D202CLL, 0xE800000000000000);
  v8 = v2[6];
  sub_254549B54();
  sub_2544D8BD8();
  v9 = sub_25454C304();
  MEMORY[0x259C0EE40](v9);

  MEMORY[0x259C0EE40](0x3A656E656373202CLL, 0xE900000000000020);
  if (*(v1 + v2[7]))
  {
    v10 = 0x697463416576696CLL;
  }

  else
  {
    v10 = 7368801;
  }

  if (*(v1 + v2[7]))
  {
    v11 = 0xEC00000079746976;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x259C0EE40](v10, v11);

  MEMORY[0x259C0EE40](0x697461636F6C202CLL, 0xEC000000203A6E6FLL);
  MEMORY[0x259C0EE40](v3, v4);

  return 0;
}

uint64_t CameraViewRegistrar.Location.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_25454C224();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t CameraViewRegistrar.Location.rawValue.getter()
{
  v1 = 0x636961736F6DLL;
  v2 = 0x736C6961746564;
  if (*v0 != 2)
  {
    v2 = 0x7075727265746E69;
  }

  if (*v0)
  {
    v1 = 1684632167;
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

unint64_t sub_2544D82CC()
{
  result = qword_27F5FB958;
  if (!qword_27F5FB958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB958);
  }

  return result;
}

uint64_t sub_2544D8320()
{
  v1 = *v0;
  sub_25454C3E4();
  sub_25454BD14();

  return sub_25454C434();
}

uint64_t sub_2544D83E0()
{
  *v0;
  *v0;
  *v0;
  sub_25454BD14();
}

uint64_t sub_2544D848C()
{
  v1 = *v0;
  sub_25454C3E4();
  sub_25454BD14();

  return sub_25454C434();
}

uint64_t sub_2544D8548@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CameraViewRegistrar.Location.init(rawValue:)(a1);
}

void sub_2544D8554(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x636961736F6DLL;
  v4 = 0xE700000000000000;
  v5 = 0x736C6961746564;
  if (*v1 != 2)
  {
    v5 = 0x7075727265746E69;
    v4 = 0xEC0000006E6F6974;
  }

  if (*v1)
  {
    v3 = 1684632167;
    v2 = 0xE400000000000000;
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

uint64_t _s8LocationOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8LocationOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2544D8734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_254549394();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_254549B54();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 2)
      {
        return v14 - 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_2544D8850(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_254549394();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_254549B54();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t _s12RegistrationVMa()
{
  result = qword_27F5FB960;
  if (!qword_27F5FB960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2544D89A4()
{
  sub_254549394();
  if (v0 <= 0x3F)
  {
    sub_254549B54();
    if (v1 <= 0x3F)
    {
      sub_2544D8A48();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2544D8A48()
{
  if (!qword_27F5FB4B8)
  {
    v0 = sub_25454C054();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FB4B8);
    }
  }
}

uint64_t sub_2544D8A98(uint64_t a1, uint64_t a2)
{
  if ((sub_254549374() & 1) == 0)
  {
    return 0;
  }

  v4 = _s12RegistrationVMa();
  v5 = v4[5];
  if ((sub_254549374() & 1) == 0 || (MEMORY[0x259C0CC40](a1 + v4[6], a2 + v4[6]) & 1) == 0)
  {
    return 0;
  }

  v6 = v4[7];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7)
  {
    v9 = 0x697463416576696CLL;
  }

  else
  {
    v9 = 7368801;
  }

  if (v7)
  {
    v10 = 0xEC00000079746976;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v8)
  {
    v11 = 0x697463416576696CLL;
  }

  else
  {
    v11 = 7368801;
  }

  if (v8)
  {
    v12 = 0xEC00000079746976;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {

LABEL_23:
    v15 = v4[8];
    v16 = *(a1 + v15);
    v17 = *(a2 + v15);
    if (v16 == 4)
    {
      if (v17 != 4)
      {
        return 0;
      }
    }

    else if (v17 == 4 || (sub_2544D7D08(v16, v17) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  v14 = sub_25454C334();

  if (v14)
  {
    goto LABEL_23;
  }

  return 0;
}

unint64_t sub_2544D8BD8()
{
  result = qword_27F5FB970;
  if (!qword_27F5FB970)
  {
    sub_254549B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB970);
  }

  return result;
}

uint64_t EmptyNearbyAccessoriesModifier.init(cameraProfileID:showToggleableAccessoriesOnly:isPresented:)(uint64_t a1)
{

  return sub_2544D8C78(a1);
}

uint64_t sub_2544D8C78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB018, &qword_25454EE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EmptyNearbyAccessoriesModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB978, &qword_25454EE78);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_2544D8D58(uint64_t a1)
{

  return sub_2544D8C78(a1);
}

unint64_t sub_2544D8DA0(uint64_t a1)
{
  result = sub_2544D8DC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2544D8DC8()
{
  result = qword_27F5FB980;
  if (!qword_27F5FB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB980);
  }

  return result;
}

uint64_t sub_2544D8E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB978, &qword_25454EE78);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_2544D8ED8()
{
  result = qword_27F5FB988;
  if (!qword_27F5FB988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB978, &qword_25454EE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB988);
  }

  return result;
}

uint64_t SnapshotFormatStyle.discreteInput(after:)()
{
  v0 = sub_25454C544();
  if (v0 > 0x12B)
  {
    if (v0 - 300 >= 0xCE4)
    {
      v3 = v0 - 3600;
      result = sub_25454C544();
      v2 = 3600;
      if (v3 >= 0x14370)
      {
        v2 = 86400;
      }
    }

    else
    {
      result = sub_25454C544();
      v2 = 300;
    }
  }

  else
  {
    result = sub_25454C544();
    v2 = 60;
  }

  v4 = result / v2 + 1;
  if ((v4 * v2) >> 64 == (v4 * v2) >> 63)
  {
    return 1000000000000000000 * v4 * v2;
  }

  __break(1u);
  return result;
}

uint64_t SnapshotFormatStyle.format(_:)()
{
  v0 = sub_2545493C4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_25454BC64();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_25454C544();
  if (v4 >= 0x12C)
  {
    if (v4 - 300 < 0xCE4)
    {
      v7 = 5 * (sub_25454C544() / 300);
      v8 = 1;
LABEL_15:
      sub_2544D92A4(v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB990, "ܡ");
      v12 = swift_allocObject();
      v13 = MEMORY[0x277D84A28];
      *(v12 + 16) = xmmword_25454D8F0;
      v14 = MEMORY[0x277D84A90];
      *(v12 + 56) = v13;
      *(v12 + 64) = v14;
      *(v12 + 32) = v7;
      v15 = sub_25454BC94();

      return v15;
    }

    v11 = v4 - 3600;
    v9 = sub_25454C544();
    if (v11 < 0x14370)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }

    v10 = 86400;
    if (v11 < 0x14370)
    {
      v10 = 3600;
    }

LABEL_14:
    v7 = v9 / v10;
    goto LABEL_15;
  }

  if (sub_25454C544() >= 0x3C)
  {
    v9 = sub_25454C544();
    v8 = 0;
    v10 = 60;
    goto LABEL_14;
  }

  sub_25454BC54();
  sub_2544C56A4();
  if (!sub_25454C024())
  {
    v5 = [objc_opt_self() mainBundle];
  }

  sub_2545493B4();
  return sub_25454BCA4();
}

uint64_t sub_2544D92A4(unsigned __int8 a1)
{
  v2 = sub_2545493C4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_25454BC64();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  if (a1 >= 2u)
  {
    if (a1 == 2)
    {
      sub_25454BC54();
      sub_2544C56A4();
      if (!sub_25454C024())
      {
        v9 = [objc_opt_self() mainBundle];
      }
    }

    else
    {
      sub_25454BC54();
      sub_2544C56A4();
      if (!sub_25454C024())
      {
        v10 = [objc_opt_self() mainBundle];
      }
    }
  }

  else
  {
    sub_25454BC54();
    sub_2544C56A4();
    if (!sub_25454C024())
    {
      v8 = [objc_opt_self() mainBundle];
    }
  }

  sub_2545493B4();
  return sub_25454BCA4();
}

uint64_t sub_2544D9534@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2544D9570(uint64_t a1)
{
  v2 = sub_2544D9A04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2544D95AC(uint64_t a1)
{
  v2 = sub_2544D9A04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SnapshotFormatStyle.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB998, &qword_25454EF38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2544D9A04();
  sub_25454C454();
  return (*(v3 + 8))(v6, v2);
}

void sub_2544D9760(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_2544D9770@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SnapshotFormatStyle.discreteInput(after:)();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_2544D97D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  result = a4(*a1, a1[1], a2, a3);
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8 & 1;
  return result;
}

uint64_t sub_2544D981C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SnapshotFormatStyle.format(_:)();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_2544D9878(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB998, &qword_25454EF38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2544D9A04();
  sub_25454C454();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_2544D9A04()
{
  result = qword_27F5FB9A0;
  if (!qword_27F5FB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB9A0);
  }

  return result;
}

unint64_t sub_2544D9A5C()
{
  result = qword_27F5FB9A8;
  if (!qword_27F5FB9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB9A8);
  }

  return result;
}

unint64_t sub_2544D9AB4()
{
  result = qword_27F5FB9B0;
  if (!qword_27F5FB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB9B0);
  }

  return result;
}

unint64_t sub_2544D9B0C()
{
  result = qword_27F5FB9B8;
  if (!qword_27F5FB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB9B8);
  }

  return result;
}

unint64_t sub_2544D9B64()
{
  result = qword_27F5FB9C0;
  if (!qword_27F5FB9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB9C0);
  }

  return result;
}

unint64_t sub_2544D9BBC()
{
  result = qword_27F5FB9C8;
  if (!qword_27F5FB9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB9C8);
  }

  return result;
}

unint64_t sub_2544D9C34()
{
  result = qword_27F5FB9D0;
  if (!qword_27F5FB9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB9D0);
  }

  return result;
}

unint64_t sub_2544D9C8C()
{
  result = qword_27F5FB9D8;
  if (!qword_27F5FB9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB9D8);
  }

  return result;
}

uint64_t sub_2544D9D1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25454AD34();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_25454AD44();
}

uint64_t sub_2544D9E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25454AD34();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_25454AD44();
}

uint64_t View.setCameraEntityProvider(snapshot:camera:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v79 = a2;
  v88 = a5;
  v8 = *(a3 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v69 - v13;
  v15 = sub_25454A184();
  v73 = *(v15 - 8);
  v16 = *(v73 + 64);
  MEMORY[0x28223BE20](v15);
  v71 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2544DAD14(&qword_27F5FB9E0, MEMORY[0x277D15088]);
  v92 = a3;
  v93 = v15;
  v86 = v15;
  v87 = a4;
  v94 = a4;
  v95 = v18;
  v85 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = *(OpaqueTypeMetadata2 - 8);
  v20 = *(v74 + 64);
  v21 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v72 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v70 = &v69 - v23;
  v24 = sub_254549394();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_254549D04();
  v77 = *(v29 - 8);
  v78 = v29;
  v30 = *(v77 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v76 = &v69 - v34;
  v84 = OpaqueTypeMetadata2;
  v89 = a3;
  v35 = sub_25454AD54();
  v81 = *(v35 - 8);
  v82 = v35;
  v36 = *(v81 + 64);
  MEMORY[0x28223BE20](v35);
  v80 = &v69 - v37;
  v75 = a1;
  v38 = sub_254549834();
  sub_254549B84();
  if (*(v38 + 16) && (v39 = sub_2544DA750(v28), (v40 & 1) != 0))
  {
    v41 = v78;
    v42 = v77;
    v43 = *(v77 + 16);
    v43(v33, *(v38 + 56) + *(v77 + 72) * v39, v78);
    (*(v25 + 8))(v28, v24);

    v44 = v42;
    v45 = *(v42 + 32);
    v46 = v76;
    v45(v76, v33, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB9E8, &qword_25454F160);
    v47 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_25454D8F0;
    v43((v48 + v47), v46, v41);
    v92 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB9F0, &qword_25454F168);
    sub_2544DA7E8();
    sub_2544DAD14(&qword_27F5FB118, MEMORY[0x277D16548]);
    v49 = v71;
    sub_25454BF04();

    v50 = v72;
    v51 = v89;
    v53 = v86;
    v52 = v87;
    v54 = v85;
    sub_25454B284();
    (*(v73 + 8))(v49, v53);
    v92 = v51;
    v93 = v53;
    v94 = v52;
    v95 = v54;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v55 = v74;
    v56 = *(v74 + 16);
    v57 = v70;
    v58 = v84;
    v56(v70, v50, v84);
    v59 = *(v55 + 8);
    v59(v50, v58);
    v56(v50, v57, v58);
    v60 = v80;
    v61 = v89;
    sub_2544D9D1C(v50, v58);
    v59(v50, v58);
    v62 = v57;
    v63 = v61;
    v59(v62, v58);
    (*(v77 + 8))(v76, v78);
  }

  else
  {

    (*(v25 + 8))(v28, v24);
    v64 = v8[2];
    v63 = v89;
    v64(v14, OpaqueTypeConformance2, v89);
    v64(v12, v14, v63);
    v53 = v86;
    v52 = v87;
    v92 = v63;
    v93 = v86;
    v54 = v85;
    v94 = v87;
    v95 = v85;
    swift_getOpaqueTypeConformance2();
    v60 = v80;
    sub_2544D9E14(v12, v84, v63);
    v65 = v8[1];
    v65(v12, v63);
    v65(v14, v63);
  }

  v92 = v63;
  v93 = v53;
  v94 = v52;
  v95 = v54;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = v52;
  v66 = v82;
  swift_getWitnessTable();
  v67 = v81;
  (*(v81 + 16))(v88, v60, v66);
  return (*(v67 + 8))(v60, v66);
}

unint64_t sub_2544DA750(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_254549394();
  sub_2544DAD14(&qword_27F5FB028, MEMORY[0x277CC95F0]);
  v5 = sub_25454BBE4();

  return sub_2544DAA2C(a1, v5);
}

unint64_t sub_2544DA7E8()
{
  result = qword_27F5FB9F8;
  if (!qword_27F5FB9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB9F0, &qword_25454F168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB9F8);
  }

  return result;
}

uint64_t sub_2544DA84C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_25454A184();
  sub_2544DAD14(&qword_27F5FB9E0, MEMORY[0x277D15088]);
  swift_getOpaqueTypeMetadata2();
  sub_25454AD54();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

unint64_t sub_2544DA948(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25454C3E4();
  sub_25454BD14();
  v6 = sub_25454C434();

  return sub_2544DABEC(a1, a2, v6);
}

unint64_t sub_2544DA9C0(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_25454C3E4();
  MEMORY[0x259C0F4F0](a1);
  v4 = sub_25454C434();

  return sub_2544DACA4(a1, v4);
}

unint64_t sub_2544DAA2C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_254549394();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_2544DAD14(&qword_27F5FB0A8, MEMORY[0x277CC95F0]);
      v16 = sub_25454BC44();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_2544DABEC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25454C334())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2544DACA4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_2544DAD14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DigitalClockText.body.getter@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA00, &qword_25454F170);
  v1 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v41 = v35 - v2;
  v3 = sub_25454ABE4();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v38 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA08, &qword_25454F178);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA10, &qword_25454F180);
  v35[1] = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v35 - v12;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA18, &qword_25454F188);
  v14 = *(*(v37 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v37);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v36 = v35 - v18;
  sub_2545493D4();
  v19 = sub_2545493E4();
  (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
  v20 = sub_25454B204();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  KeyPath = swift_getKeyPath();
  v28 = &v13[*(v10 + 36)];
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA20, &qword_25454F1C0) + 28);
  v30 = *MEMORY[0x277CE0B28];
  v31 = sub_25454B1C4();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  *v28 = swift_getKeyPath();
  *v13 = v20;
  *(v13 + 1) = v22;
  v13[16] = v24 & 1;
  *(v13 + 3) = v26;
  *(v13 + 4) = KeyPath;
  *(v13 + 5) = 1;
  v13[48] = 0;
  v32 = v38;
  sub_25454ABC4();
  sub_2544DB36C();
  sub_25454B4A4();
  (*(v39 + 8))(v32, v40);
  sub_2544AE150(v13, &qword_27F5FBA10, &qword_25454F180);
  v33 = v36;
  sub_25454A704();
  sub_2544AE150(v17, &qword_27F5FBA18, &qword_25454F188);
  sub_2544DB508(v33, v41);
  swift_storeEnumTagMultiPayload();
  sub_2544DB578();
  sub_25454AD44();
  return sub_2544AE150(v33, &qword_27F5FBA18, &qword_25454F188);
}

uint64_t sub_2544DB1B4@<X0>(uint64_t a1@<X8>)
{
  result = sub_25454AA44();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2544DB1E8@<X0>(uint64_t a1@<X8>)
{
  result = sub_25454AA44();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2544DB21C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_25454AA54();
}

uint64_t sub_2544DB24C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_25454AA54();
}

uint64_t sub_2544DB2A0(uint64_t a1)
{
  v2 = sub_25454B1C4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25454A884();
}

unint64_t sub_2544DB36C()
{
  result = qword_27F5FBA28;
  if (!qword_27F5FBA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBA10, &qword_25454F180);
    sub_2544DB410();
    sub_2544DB4B4(&qword_27F5FBA50, &qword_27F5FBA20, &qword_25454F1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBA28);
  }

  return result;
}

unint64_t sub_2544DB410()
{
  result = qword_27F5FBA30;
  if (!qword_27F5FBA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBA38, &qword_254554820);
    sub_2544DB4B4(&qword_27F5FBA40, &qword_27F5FBA48, &qword_25454F200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBA30);
  }

  return result;
}

uint64_t sub_2544DB4B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2544DB508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA18, &qword_25454F188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2544DB578()
{
  result = qword_27F5FBA58;
  if (!qword_27F5FBA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBA18, &qword_25454F188);
    sub_2544DB36C();
    sub_2544DB604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBA58);
  }

  return result;
}

unint64_t sub_2544DB604()
{
  result = qword_27F5FB340;
  if (!qword_27F5FB340)
  {
    sub_25454AEC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB340);
  }

  return result;
}

unint64_t sub_2544DB68C()
{
  result = qword_27F5FBA60;
  if (!qword_27F5FBA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBA68, &qword_25454F278);
    sub_2544DB578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBA60);
  }

  return result;
}

uint64_t static FormatStyle<>.clockFace.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F5FACA0 != -1)
  {
    swift_once();
  }

  v2 = sub_254549304();
  v3 = __swift_project_value_buffer(v2, qword_27F604AE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2544DB7B8()
{
  v0 = sub_254549304();
  __swift_allocate_value_buffer(v0, qword_27F604AE8);
  v1 = __swift_project_value_buffer(v0, qword_27F604AE8);
  return sub_2544DB804(v1);
}

uint64_t sub_2544DB804@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v32 = sub_2545492C4();
  v30 = *(v32 - 8);
  v1 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_254549294();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2545492A4();
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v27);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2545493C4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_2545493E4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_254549304();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v27 - v23;
  MEMORY[0x259C0C220](v22);
  sub_2545493D4();
  sub_2545492F4();
  sub_2545493A4();
  sub_2545492D4();
  sub_254549284();
  sub_254549274();
  (*(v28 + 8))(v7, v29);
  sub_254549264();
  (*(v8 + 8))(v11, v27);
  sub_2545492B4();
  sub_2545492E4();
  (*(v30 + 8))(v3, v32);
  v25 = *(v17 + 8);
  v25(v21, v16);
  return (v25)(v24, v16);
}

uint64_t Font.init(softNumericMediumSize:)(CGFloat a1)
{
  v2 = sub_25454BC74();
  CTFontCreateWithNameAndOptions(v2, a1, 0, 0x20000uLL);

  return sub_25454B174();
}

uint64_t Font.init(softNumericBoldSize:)(CGFloat a1)
{
  v2 = sub_25454BC74();
  CTFontCreateWithNameAndOptions(v2, a1, 0, 0x20000uLL);

  return sub_25454B174();
}

uint64_t static Font.softMonospaced(size:weight:)()
{
  v0 = sub_25454B0F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25454AFB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454AFA4();
  sub_25454B094();
  (*(v6 + 8))(v9, v5);
  sub_25454AFE4();

  (*(v1 + 104))(v4, *MEMORY[0x277CE0A10], v0);
  v10 = sub_25454B114();

  (*(v1 + 8))(v4, v0);
  return v10;
}

uint64_t View.clockFaceFont(size:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, CGFloat a3@<D0>)
{
  v26 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB390, &qword_25454FBC0);
  v5 = sub_25454A714();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBA70, &qword_254553BF0);
  v9 = sub_25454A714();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v17 = sub_25454BC74();
  CTFontCreateWithNameAndOptions(v17, a3, 0, 0x20000uLL);

  sub_25454B174();
  sub_25454AFE4();

  sub_25454B4F4();

  v18 = sub_2544DB4B4(&qword_27F5FB388, &qword_27F5FB390, &qword_25454FBC0);
  v29 = a1;
  v30 = v18;
  WitnessTable = swift_getWitnessTable();
  sub_25454B3D4();
  (*(v25 + 8))(v8, v5);
  v20 = sub_2544DB4B4(&qword_27F5FBA78, &qword_27F5FBA70, &qword_254553BF0);
  v27 = WitnessTable;
  v28 = v20;
  v21 = swift_getWitnessTable();
  sub_2544DAD5C(v14, v9, v21);
  v22 = *(v10 + 8);
  v22(v14, v9);
  sub_2544DAD5C(v16, v9, v21);
  return (v22)(v16, v9);
}

uint64_t sub_2544DC190(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB390, &qword_25454FBC0);
  sub_25454A714();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBA70, &qword_254553BF0);
  sub_25454A714();
  sub_2544DB4B4(&qword_27F5FB388, &qword_27F5FB390, &qword_25454FBC0);
  swift_getWitnessTable();
  sub_2544DB4B4(&qword_27F5FBA78, &qword_27F5FBA70, &qword_254553BF0);
  return swift_getWitnessTable();
}

uint64_t DynamicServiceColor.init(_:accented:unreachable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 16);
  v26 = a1;
  v10(a5);
  v25 = a2;
  sub_2544DC694(a2, &v29);
  if (v30)
  {
    sub_2544DC71C(&v29, v27);
    sub_25454BE14();
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v11 = v28;
    v12 = __swift_project_boxed_opaque_existential_1(v27, v28);
    v13 = *(*(v11 - 8) + 64);
    MEMORY[0x28223BE20](v12);
    (*(v15 + 16))(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = sub_25454A554();

    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for DynamicServiceColor();
  *(a5 + *(v17 + 36)) = v16;
  sub_2544DC694(a3, &v29);
  if (v30)
  {
    sub_2544DC71C(&v29, v27);
    sub_25454BE14();
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v18 = v28;
    v19 = __swift_project_boxed_opaque_existential_1(v27, v28);
    v20 = *(*(v18 - 8) + 64);
    MEMORY[0x28223BE20](v19);
    (*(v22 + 16))(&v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = sub_25454A554();
    sub_2544AE150(a3, &qword_27F5FBA80, &unk_25454F290);
    sub_2544AE150(v25, &qword_27F5FBA80, &unk_25454F290);
    (*(v9 + 8))(v26, a4);

    result = __swift_destroy_boxed_opaque_existential_0(v27);
  }

  else
  {
    sub_2544AE150(a3, &qword_27F5FBA80, &unk_25454F290);
    sub_2544AE150(v25, &qword_27F5FBA80, &unk_25454F290);
    result = (*(v9 + 8))(v26, a4);
    v23 = 0;
  }

  *(a5 + *(v17 + 40)) = v23;
  return result;
}

uint64_t sub_2544DC694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA80, &unk_25454F290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544DC71C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t DynamicServiceColor.resolve(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a1;
  v49 = a3;
  v5 = sub_254549ED4();
  v47 = *(v5 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v5);
  v46 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA88, &unk_25454FB20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - v10;
  v12 = sub_254549854();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 40);
  v18 = *(v3 + v17);
  if (v18)
  {
    v19 = v16;
    v20 = v13;
    v21 = *(a2 + 16);
    v22 = *(a2 + 24);
    v23 = *(v3 + v17);

    result = sub_2545498C4();
    if ((result & 1) == 0)
    {
      goto LABEL_13;
    }

    v13 = v20;
    v16 = v19;
  }

  v18 = *(v3 + *(a2 + 36));
  if (v18)
  {
    v39 = v16;
    v40 = v13;
    v25 = sub_25454BBA4();
    v42 = &v38;
    v43 = v12;
    v26 = *(v25 - 8);
    v27 = *(v26 + 64);
    MEMORY[0x28223BE20](v25);
    v44 = v5;
    v45 = v3;

    v28 = sub_25454AA04();
    v41 = &v38;
    MEMORY[0x28223BE20](v28);
    v29 = &v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25454BB94();
    LOBYTE(v27) = sub_25454BB74();
    v30 = *(v26 + 8);
    v30(v29, v25);
    result = (v30)(v29, v25);
    v12 = v43;
    v5 = v44;
    if (v27)
    {
      goto LABEL_13;
    }

    v16 = v39;
    v13 = v40;
  }

  v31 = *(a2 + 16);
  v32 = *(a2 + 24);
  sub_2545498E4();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2544AE150(v11, &qword_27F5FBA88, &unk_25454FB20);
LABEL_12:
    v37 = TileInfoBearer.resolvedForegroundColor.getter(v31);
    v18 = sub_2544DCEDC(v37, v48);

    goto LABEL_13;
  }

  (*(v13 + 32))(v16, v11, v12);
  v33 = v46;
  v34 = v47;
  (*(v47 + 104))(v46, *MEMORY[0x277D169F0], v5);
  v35 = v13;
  v36 = MEMORY[0x259C0CFE0](v16, v33);
  (*(v34 + 8))(v33, v5);
  if (!v36)
  {
    (*(v35 + 8))(v16, v12);
    goto LABEL_12;
  }

  v18 = sub_2544DCEDC(v36, v48);

  result = (*(v35 + 8))(v16, v12);
LABEL_13:
  *v49 = v18;
  return result;
}

uint64_t DynamicServiceColor.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[3] = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2544DD17C();
  v25[1] = v7;
  v25[0] = swift_getWitnessTable();
  v25[6] = MEMORY[0x277CE14A8];
  v25[7] = a1;
  v25[8] = v7;
  v25[9] = v25[0];
  v8 = sub_25454A434();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - v11;
  v13 = sub_25454A714();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v25 - v19;
  (*(v3 + 16))(v6, v25[2], a1);
  sub_25454A424();
  WitnessTable = swift_getWitnessTable();
  sub_25454B3C4();
  (*(v9 + 8))(v12, v8);
  v25[4] = WitnessTable;
  v25[5] = MEMORY[0x277CE0770];
  v22 = swift_getWitnessTable();
  sub_2544DAD5C(v18, v13, v22);
  v23 = *(v14 + 8);
  v23(v18, v13);
  sub_2544DAD5C(v20, v13, v22);
  return (v23)(v20, v13);
}

uint64_t sub_2544DCEDC(unint64_t a1, uint64_t a2)
{
  v4 = sub_25454A454();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25454AA94();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454B674();
  v14 = sub_25454B634();

  if (v14 & 1) != 0 || (sub_25454B654(), v15 = sub_25454B634(), , (v15))
  {
    (*(v10 + 16))(v13, a2, v9);
    sub_2544DD740();
    sub_25454AAA4();
    v16 = MEMORY[0x277CDF3D0];
    if (!v27)
    {
      v16 = MEMORY[0x277CDF3C0];
    }

    (*(v5 + 104))(v8, *v16, v4);
    sub_25454A844();
    sub_25454B6A4();
    sub_25454B6B4();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v27 = __PAIR64__(v20, v18);
    v28 = v22;
    v29 = v24;
    v25 = sub_25454A554();
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v27 = a1;

    return sub_25454A554();
  }

  return v25;
}

unint64_t sub_2544DD17C()
{
  result = qword_27F5FBA90[0];
  if (!qword_27F5FBA90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5FBA90);
  }

  return result;
}

void sub_2544DD260(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_2544DD60C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2544DD2E8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_2544DD434(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFE)
      {
        v19 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v19 = a2;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_2544DD60C()
{
  if (!qword_27F5FBB18)
  {
    v0 = sub_25454C054();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FBB18);
    }
  }
}

uint64_t sub_2544DD668(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for DynamicServiceColor();
  sub_2544DD17C();
  swift_getWitnessTable();
  sub_25454A434();
  sub_25454A714();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_2544DD740()
{
  result = qword_27F5FBB20;
  if (!qword_27F5FBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBB20);
  }

  return result;
}

uint64_t DynamicToggleColor.init(off:on:accentedOn:accentedOff:isActive:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v44 = a5;
  v46 = a4;
  v10 = a1[3];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  (*(v14 + 16))(&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_25454A554();
  sub_2544DC694(a2, &v47);
  if (v48)
  {
    sub_2544DC71C(&v47, v49);
    v15 = v50;
    v16 = __swift_project_boxed_opaque_existential_1(v49, v50);
    v17 = *(*(v15 - 8) + 64);
    MEMORY[0x28223BE20](v16);
    (*(v19 + 16))(&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = sub_25454A554();
    __swift_destroy_boxed_opaque_existential_0(v49);
  }

  else
  {
    sub_2544DDC9C(&v47);
    v21 = a1[3];
    v22 = __swift_project_boxed_opaque_existential_1(a1, v21);
    v23 = *(*(v21 - 8) + 64);
    MEMORY[0x28223BE20](v22);
    (*(v25 + 16))(&v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = sub_25454A554();
  }

  sub_2544DC694(a3, &v47);
  if (v48)
  {
    sub_2544DC71C(&v47, v49);
    v26 = v50;
    v27 = __swift_project_boxed_opaque_existential_1(v49, v50);
    v28 = *(*(v26 - 8) + 64);
    MEMORY[0x28223BE20](v27);
    (*(v30 + 16))(&v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    v31 = sub_25454A554();
    __swift_destroy_boxed_opaque_existential_0(v49);
  }

  else
  {
    sub_2544DDC9C(&v47);
    v31 = 0;
  }

  v32 = v46;
  sub_2544DC694(v46, &v47);
  if (v48)
  {
    sub_2544DC71C(&v47, v49);
    v33 = v32;
    v34 = v50;
    v35 = __swift_project_boxed_opaque_existential_1(v49, v50);
    v43 = v20;
    v36 = *(*(v34 - 8) + 64);
    MEMORY[0x28223BE20](v35);
    (*(v38 + 16))(&v43 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    v39 = sub_25454A554();
    sub_2544DDC9C(v33);
    sub_2544DDC9C(a3);
    sub_2544DDC9C(a2);
    v20 = v43;
    __swift_destroy_boxed_opaque_existential_0(v49);
  }

  else
  {
    sub_2544DDC9C(v32);
    sub_2544DDC9C(a3);
    sub_2544DDC9C(a2);
    sub_2544DDC9C(&v47);
    v39 = 0;
  }

  v40 = v44 & 1;
  v41 = v45;
  *a6 = v20;
  *(a6 + 8) = v41;
  *(a6 + 16) = v31;
  *(a6 + 24) = v39;
  *(a6 + 32) = v40;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2544DDC9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA80, &unk_25454F290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DynamicToggleColor.resolve(in:)@<X0>(void *a1@<X8>)
{
  if (*(v1 + 32) == 1)
  {
    v2 = *v1;
    v3 = v1[2];
    if (!v3)
    {
      goto LABEL_9;
    }

    v19 = a1;
    v4 = sub_25454BBA4();
    v18 = &v18;
    v5 = *(v4 - 8);
    v6 = *(v5 + 64);
    MEMORY[0x28223BE20](v4);
    v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;

    v8 = sub_25454AA04();
    MEMORY[0x28223BE20](v8);
    sub_25454BB94();
    v9 = sub_25454BB74();
    v10 = *(v5 + 8);
    v10(&v18 - v7, v4);
    result = (v10)(&v18 - v7, v4);
  }

  else
  {
    v2 = v1[1];
    v3 = v1[3];
    if (!v3)
    {
      goto LABEL_9;
    }

    v19 = a1;
    v12 = sub_25454BBA4();
    v18 = &v18;
    v13 = *(v12 - 8);
    v14 = *(v13 + 64);
    MEMORY[0x28223BE20](v12);
    v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;

    v16 = sub_25454AA04();
    MEMORY[0x28223BE20](v16);
    sub_25454BB94();
    v9 = sub_25454BB74();
    v17 = *(v13 + 8);
    v17(&v18 - v15, v12);
    result = (v17)(&v18 - v15, v12);
  }

  if (v9)
  {
    *v19 = v3;
    return result;
  }

  a1 = v19;
LABEL_9:
  *a1 = v2;
}

uint64_t DynamicToggleColor.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 33) = 256;
  *(a1 + 35) = 0;
}

uint64_t sub_2544DE058@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 33) = 256;
  *(a1 + 35) = 0;
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

uint64_t sub_2544DE0DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_2544DE124(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2544DE188()
{
  result = qword_27F5FBB28;
  if (!qword_27F5FBB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBB30, &qword_25454F478);
    sub_2544DE214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBB28);
  }

  return result;
}

unint64_t sub_2544DE214()
{
  result = qword_27F5FBB38;
  if (!qword_27F5FBB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBB40, &unk_25454F480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBB38);
  }

  return result;
}

uint64_t MicaImage.body.getter()
{
  v1 = *v0;
  v2 = type metadata accessor for MicaImage.CAPackageViewLayer();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v1;

  return MEMORY[0x282130A98](v2, sub_2544DE4EC, v3, v2);
}

void sub_2544DE330(void *a1, void *a2)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a2 rootLayer];
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v7 = [v6 disableActions];
    [v6 setDisableActions_];
    [a1 setAllowsGroupOpacity_];
    [a1 setAllowsGroupBlending_];
    v8 = v5;
    sub_2544DE510(v5);
    sub_2544DE5A8();
    [v6 setDisableActions_];
  }

  else
  {
  }
}

uint64_t sub_2544DE4B4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_2544DE510(void *a1)
{
  v2 = OBJC_IVAR____TtCV7HomeUI29MicaImageP33_268EDE8465BB49740E8AD9859354D22018CAPackageViewLayer_packageLayer;
  v6 = *&v1[OBJC_IVAR____TtCV7HomeUI29MicaImageP33_268EDE8465BB49740E8AD9859354D22018CAPackageViewLayer_packageLayer];
  *&v1[OBJC_IVAR____TtCV7HomeUI29MicaImageP33_268EDE8465BB49740E8AD9859354D22018CAPackageViewLayer_packageLayer] = a1;
  v3 = a1;
  [v6 removeFromSuperlayer];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSublayer_];
  }
}

void sub_2544DE5A8()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_layoutSublayers);
  v1 = *&v0[OBJC_IVAR____TtCV7HomeUI29MicaImageP33_268EDE8465BB49740E8AD9859354D22018CAPackageViewLayer_packageLayer];
  if (v1)
  {
    v2 = v1;
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    [v0 bounds];
    v8 = v7 / v4;
    [v0 bounds];
    if (v9 / v6 < v8)
    {
      v8 = v9 / v6;
    }

    [v2 setGeometryFlipped_];
    v10 = *(MEMORY[0x277CD9DE8] + 80);
    *&v15.m31 = *(MEMORY[0x277CD9DE8] + 64);
    *&v15.m33 = v10;
    v11 = *(MEMORY[0x277CD9DE8] + 112);
    *&v15.m41 = *(MEMORY[0x277CD9DE8] + 96);
    *&v15.m43 = v11;
    v12 = *(MEMORY[0x277CD9DE8] + 16);
    *&v15.m11 = *MEMORY[0x277CD9DE8];
    *&v15.m13 = v12;
    v13 = *(MEMORY[0x277CD9DE8] + 48);
    *&v15.m21 = *(MEMORY[0x277CD9DE8] + 32);
    *&v15.m23 = v13;
    [v2 setTransform_];
    CATransform3DMakeScale(&v15, v8, v8, 1.0);
    [v2 setTransform_];
    [v0 bounds];
    MidX = CGRectGetMidX(v17);
    [v0 bounds];
    [v2 setPosition_];
  }
}

id sub_2544DE8C4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2544DE90C()
{
  v1 = *v0;
  v2 = type metadata accessor for MicaImage.CAPackageViewLayer();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v1;

  return MEMORY[0x282130A98](v2, sub_2544DEA98, v3, v2);
}

uint64_t sub_2544DE998(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2544DE9E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2544DEA30()
{
  result = qword_27F5FBB50;
  if (!qword_27F5FBB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBB58, "ƞ");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBB50);
  }

  return result;
}

uint64_t sub_2544DED6C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB60, &qword_25454F580);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB68, &qword_25454F588);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2544DEEBC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB60, &qword_25454F580);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB68, &qword_25454F588);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for AccessoryDetailsIconPickerView()
{
  result = qword_27F5FBB70;
  if (!qword_27F5FBB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2544DF044()
{
  sub_2544DF190(319, &qword_27F5FBB80, MEMORY[0x277D15460], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2544C3A1C();
    if (v1 <= 0x3F)
    {
      sub_2544DF190(319, &qword_27F5FBB88, MEMORY[0x277D15460], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_2544DF190(319, &qword_27F5FBB90, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2544DF190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2544DF210@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25454AA94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC50, &qword_25454F680);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for AccessoryDetailsIconPickerView();
  sub_2544AE240(v1 + *(v12 + 32), v11, &qword_27F5FBC50, &qword_25454F680);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_25454A584();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_25454BF84();
    v16 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2544DF418@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v2 = sub_25454B9D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB98, &qword_25454F600);
  v7 = *(sub_25454B9E4() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25454D890;
  v24 = xmmword_25454F570;
  *v6 = xmmword_25454F570;
  v11 = *MEMORY[0x277CDF108];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  sub_25454B9F4();
  *v6 = v24;
  v12(v6, v11, v2);
  sub_25454B9F4();
  *v6 = v24;
  v12(v6, v11, v2);
  sub_25454B9F4();
  *v6 = v24;
  v12(v6, v11, v2);
  sub_25454B9F4();
  v25 = v10;
  v26 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBBA0, &qword_25454F608);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBBA8, &qword_25454F610);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBBB0, &qword_25454F618);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBBB8, &qword_25454F620);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBBC0, &qword_25454F628);
  v17 = sub_2544AE1F0(&qword_27F5FBBC8, &qword_27F5FBBC0, &qword_25454F628);
  v18 = sub_2544AECF0();
  v27 = v16;
  v28 = MEMORY[0x277D837D0];
  v29 = v17;
  v30 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v15;
  v28 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = sub_2544AE1F0(&qword_27F5FBBD0, &qword_27F5FBBB0, &qword_25454F618);
  v27 = v13;
  v28 = v14;
  v29 = v20;
  v30 = v21;
  swift_getOpaqueTypeConformance2();
  sub_25454A724();
}

uint64_t sub_2544DF81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v5 = sub_25454AAC4();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v5);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBBC0, &qword_25454F628);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBBB8, &qword_25454F620);
  v36 = *(v39 - 8);
  v13 = *(v36 + 64);
  MEMORY[0x28223BE20](v39);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBBA8, &qword_25454F610);
  v40 = *(v16 - 8);
  v41 = v16;
  v17 = *(v40 + 64);
  MEMORY[0x28223BE20](v16);
  v38 = &v33 - v18;
  sub_25454BE14();
  v37 = sub_25454BE04();
  sub_25454BDB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v33 - 2) = a1;
  *(&v33 - 1) = a2;
  sub_25454AF04();
  v34 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBBD8, &qword_25454F630);
  sub_2544AE1F0(&qword_27F5FBBE0, &qword_27F5FBBD8, &qword_25454F630);
  sub_25454A3C4();
  v45 = sub_25454BCF4();
  v46 = v20;
  v21 = sub_2544AE1F0(&qword_27F5FBBC8, &qword_27F5FBBC0, &qword_25454F628);
  v22 = sub_2544AECF0();
  v23 = MEMORY[0x277D837D0];
  sub_25454B3B4();

  (*(v9 + 8))(v12, v8);
  v25 = v42;
  v24 = v43;
  v26 = v35;
  (*(v42 + 104))(v35, *MEMORY[0x277CDDDC0], v43);
  v45 = v8;
  v46 = v23;
  v47 = v21;
  v48 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v38;
  v28 = v39;
  sub_25454B4E4();
  (*(v25 + 8))(v26, v24);
  v30 = (*(v36 + 8))(v15, v28);
  MEMORY[0x28223BE20](v30);
  *(&v33 - 2) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBBB0, &qword_25454F618);
  v45 = v28;
  v46 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_2544AE1F0(&qword_27F5FBBD0, &qword_27F5FBBB0, &qword_25454F618);
  v31 = v41;
  sub_25454B554();
  (*(v40 + 8))(v29, v31);
}

uint64_t sub_2544DFDC0()
{
  v0 = sub_25454ADC4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);

  sub_25454AC14();
  sub_2544E2A6C(&qword_27F5FBC60, MEMORY[0x277CE0428]);
  sub_25454C584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC68, &qword_25454F6C0);
  sub_2544E24C8();
  sub_25454BAD4();
}

uint64_t sub_2544DFFA8(void *a1)
{
  v2 = type metadata accessor for AccessoryDetailsIconPickerView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8[1] = *a1;
  swift_getKeyPath();
  sub_2544E2294(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2544E22FC(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC88, &unk_25454F6F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC80, &unk_25454F6C8);
  sub_2544AE1F0(&qword_27F5FBC90, &qword_27F5FBC88, &unk_25454F6F0);
  sub_2544E2A6C(&qword_27F5FBC98, MEMORY[0x277D15460]);
  sub_2544AE1F0(&qword_27F5FBC78, &qword_27F5FBC80, &unk_25454F6C8);
  sub_25454B974();
}

uint64_t sub_2544E022C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v20 = a1;
  v21 = a3;
  v3 = sub_254549744();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = type metadata accessor for AccessoryDetailsIconPickerView();
  v17 = *(v6 - 8);
  v7 = *(v17 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v18 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = v19;
  sub_2544E2294(v19, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v20;
  (*(v4 + 16))(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v3);
  v11 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v12 = (v7 + *(v4 + 80) + v11) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_2544E22FC(v8, v13 + v11);
  v14 = (*(v4 + 32))(v13 + v12, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  MEMORY[0x28223BE20](v14);
  *(&v16 - 2) = v9;
  *(&v16 - 1) = v10;
  type metadata accessor for SelectableIconView();
  sub_2544E2A6C(&qword_27F5FBCA0, type metadata accessor for SelectableIconView);
  sub_25454B7F4();
}

uint64_t sub_2544E0508(uint64_t a1, uint64_t a2)
{
  v3 = sub_254549744();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(v4 + 16);
  v11(v10, a2, v3);
  v12 = *(type metadata accessor for AccessoryDetailsIconPickerView() + 28);
  v11(v8, v10, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB60, &qword_25454F580);
  sub_25454B7B4();
  (*(v4 + 8))(v10, v3);
}

uint64_t sub_2544E06CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCA8, &unk_254550680);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = v37 - v8;
  v9 = sub_254549744();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v41 = v13;
  v42 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v37 - v14;
  sub_25454BE14();
  v44 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *(type metadata accessor for AccessoryDetailsIconPickerView() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB60, &qword_25454F580);
  sub_25454B7A4();
  sub_2544E2A6C(&qword_27F5FBCB0, MEMORY[0x277D15460]);
  sub_25454BD94();
  v43 = a2;
  sub_25454BD94();
  v45 = a1;
  if (v47 == v50 && v48 == v51)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_25454C334();
  }

  (*(v10 + 8))(v15, v9);

  v18 = sub_25454BE04();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = MEMORY[0x277D85700];
  *(v19 + 24) = MEMORY[0x277D85700];
  *(v19 + 32) = v17 & 1;
  v21 = sub_25454BE04();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v20;
  sub_25454B944();
  v39 = v48;
  v40 = v47;
  v38 = v49;
  v23 = sub_254549F04();
  v24 = *(v23 - 8);
  v37[0] = *(v24 + 56);
  v37[1] = v24 + 56;
  (v37[0])(v46, 1, 1, v23);
  v25 = v42;
  (*(v10 + 16))(v42, v43, v9);
  v26 = sub_25454BE04();
  v27 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v20;
  (*(v10 + 32))(v28 + v27, v25, v9);
  v29 = sub_25454BE04();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = v20;
  v31 = type metadata accessor for SelectableIconView();
  v32 = v31[5];
  sub_25454B944();
  v33 = *(v45 + 24);
  v34 = v31[6];
  (v37[0])(a3 + v34, 1, 1, v23);
  *(a3 + v31[9]) = 0x4030000000000000;
  *(a3 + v31[10]) = 0x4048000000000000;
  v35 = v39;
  *a3 = v40;
  *(a3 + 8) = v35;
  *(a3 + 16) = v38;

  sub_2544E2C78(v46, a3 + v34);

  *(a3 + v31[7]) = v33;
  *(a3 + v31[8]) = 1;
  return result;
}

uint64_t sub_2544E0BBC@<X0>(char a1@<W2>, _BYTE *a2@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = a1 & 1;
  return result;
}

uint64_t sub_2544E0C58()
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_2544E0CE8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_254549744();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
}

uint64_t sub_2544E0DC4()
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_2544E0E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBBE8, &qword_25454F638);
  v3 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v32 = v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBBF0, &qword_25454F640);
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v29 = v28 - v7;
  v8 = sub_25454AD84();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBBF8, &qword_25454F648);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - v16;
  sub_25454BE14();
  v28[1] = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = sub_25454AD64();
  MEMORY[0x28223BE20](v18);
  LOBYTE(v28[-2]) = 1;
  v28[-1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC00, &qword_25454F650);
  sub_2544E20EC();
  sub_25454A494();
  v19 = sub_25454AD74();
  MEMORY[0x28223BE20](v19);
  LOBYTE(v28[-2]) = 1;
  v28[-1] = a1;
  sub_25454A494();
  sub_25454B604();
  sub_2544AE1F0(&qword_27F5FBC40, &qword_27F5FBBF8, &qword_25454F648);
  v20 = v29;
  sub_25454A6A4();

  v21 = *(v11 + 8);
  v21(v15, v10);
  v22 = v32;
  v23 = *(v33 + 48);
  (*(v11 + 16))(v32, v17, v10);
  v24 = v30;
  v25 = &v22[v23];
  v26 = v31;
  (*(v30 + 16))(v25, v20, v31);
  sub_25454AC54();
  (*(v24 + 8))(v20, v26);
  v21(v17, v10);
}

uint64_t sub_2544E12B0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v35 = a1;
  v41 = a3;
  v3 = sub_25454A384();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC38, &qword_25454F670);
  v34 = *(v40 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v40);
  v9 = &v34 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC48, &qword_25454F678);
  v10 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v12 = &v34 - v11;
  v13 = type metadata accessor for AccessoryDetailsIconPickerView();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC18, &qword_25454F658);
  v16 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC00, &qword_25454F650);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v34 - v21;
  sub_25454BE14();
  v37 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v35)
  {
    sub_25454A364();
    sub_2544E2294(v36, &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v24 = swift_allocObject();
    sub_2544E22FC(&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    MEMORY[0x259C0E900](v6, sub_2544E244C, v24);
    v25 = v34;
    v26 = v40;
    (*(v34 + 16))(v12, v9, v40);
    swift_storeEnumTagMultiPayload();
    sub_2544E21A4();
    sub_2544AE1F0(&qword_27F5FBC30, &qword_27F5FBC38, &qword_25454F670);
    sub_25454AD44();
    (*(v25 + 8))(v9, v26);
  }

  else
  {
    v42 = sub_25454BCF4();
    v43 = v27;
    sub_2544E2294(v36, &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v29 = swift_allocObject();
    sub_2544E22FC(&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    sub_2544AECF0();
    sub_25454B814();
    v30 = sub_25454B684();
    KeyPath = swift_getKeyPath();
    v32 = &v18[*(v39 + 36)];
    *v32 = KeyPath;
    v32[1] = v30;
    sub_2544AE240(v18, v12, &qword_27F5FBC18, &qword_25454F658);
    swift_storeEnumTagMultiPayload();
    sub_2544E21A4();
    sub_2544AE1F0(&qword_27F5FBC30, &qword_27F5FBC38, &qword_25454F670);
    sub_25454AD44();
    sub_2544AE150(v18, &qword_27F5FBC18, &qword_25454F658);
  }

  sub_2544E2368(v22, v41);
}

uint64_t sub_2544E17FC()
{
  v0 = sub_25454A584();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2544DF210(v4);
  sub_25454A574();
  (*(v1 + 8))(v4, v0);
}

uint64_t sub_2544E1944@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v35 = a1;
  v41 = a3;
  v3 = sub_25454A384();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC38, &qword_25454F670);
  v34 = *(v40 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v40);
  v9 = &v34 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC48, &qword_25454F678);
  v10 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v12 = &v34 - v11;
  v13 = type metadata accessor for AccessoryDetailsIconPickerView();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC18, &qword_25454F658);
  v16 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC00, &qword_25454F650);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v34 - v21;
  sub_25454BE14();
  v37 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v35)
  {
    sub_25454A374();
    sub_2544E2294(v36, &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v24 = swift_allocObject();
    sub_2544E22FC(&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    MEMORY[0x259C0E900](v6, sub_2544E2360, v24);
    v25 = v34;
    v26 = v40;
    (*(v34 + 16))(v12, v9, v40);
    swift_storeEnumTagMultiPayload();
    sub_2544E21A4();
    sub_2544AE1F0(&qword_27F5FBC30, &qword_27F5FBC38, &qword_25454F670);
    sub_25454AD44();
    (*(v25 + 8))(v9, v26);
  }

  else
  {
    v42 = sub_25454BCF4();
    v43 = v27;
    sub_2544E2294(v36, &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v29 = swift_allocObject();
    sub_2544E22FC(&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    sub_2544AECF0();
    sub_25454B814();
    v30 = sub_25454B684();
    KeyPath = swift_getKeyPath();
    v32 = &v18[*(v39 + 36)];
    *v32 = KeyPath;
    v32[1] = v30;
    sub_2544AE240(v18, v12, &qword_27F5FBC18, &qword_25454F658);
    swift_storeEnumTagMultiPayload();
    sub_2544E21A4();
    sub_2544AE1F0(&qword_27F5FBC30, &qword_27F5FBC38, &qword_25454F670);
    sub_25454AD44();
    sub_2544AE150(v18, &qword_27F5FBC18, &qword_25454F658);
  }

  sub_2544E2368(v22, v41);
}

uint64_t sub_2544E1E90(uint64_t a1)
{
  v2 = sub_25454A584();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC58, &qword_254550350);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  v13 = *(type metadata accessor for AccessoryDetailsIconPickerView() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB60, &qword_25454F580);
  sub_25454B7A4();
  v14 = sub_254549744();
  (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  v12(v10);
  sub_2544AE150(v10, &qword_27F5FBC58, &qword_254550350);
  sub_2544DF210(v6);
  sub_25454A574();
  (*(v3 + 8))(v6, v2);
}

uint64_t sub_2544E20D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2544DFDC0();
}

unint64_t sub_2544E20EC()
{
  result = qword_27F5FBC08;
  if (!qword_27F5FBC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBC00, &qword_25454F650);
    sub_2544E21A4();
    sub_2544AE1F0(&qword_27F5FBC30, &qword_27F5FBC38, &qword_25454F670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBC08);
  }

  return result;
}

unint64_t sub_2544E21A4()
{
  result = qword_27F5FBC10;
  if (!qword_27F5FBC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBC18, &qword_25454F658);
    sub_2544AE1F0(&qword_27F5FBC20, &qword_27F5FBC28, &unk_25454F660);
    sub_2544AE1F0(&qword_27F5FB5E8, &qword_27F5FB5F0, &qword_25454E670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBC10);
  }

  return result;
}

uint64_t sub_2544E2294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryDetailsIconPickerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544E22FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryDetailsIconPickerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544E2368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC00, &qword_25454F650);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2544E24C8()
{
  result = qword_27F5FBC70;
  if (!qword_27F5FBC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBC68, &qword_25454F6C0);
    sub_2544AE1F0(&qword_27F5FBC78, &qword_27F5FBC80, &unk_25454F6C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBC70);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for AccessoryDetailsIconPickerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 24);

  v9 = v0 + v3 + v1[9];
  v10 = sub_254549744();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB60, &qword_25454F580) + 28));

  v12 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC50, &qword_25454F680);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_25454A584();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2544E270C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccessoryDetailsIconPickerView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2544E022C(a1, v6, a2);
}

uint64_t sub_2544E278C()
{
  v1 = (type metadata accessor for AccessoryDetailsIconPickerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v20 = *(*v1 + 64);
  v4 = sub_254549744();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v19 = *(v5 + 64);
  v7 = v0 + v3;
  v8 = *(v0 + v3);

  v9 = *(v0 + v3 + 16);

  v10 = *(v0 + v3 + 24);

  v11 = v0 + v3 + v1[9];
  v12 = *(v5 + 8);
  v12(v11, v4);
  v13 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB60, &qword_25454F580) + 28));

  v14 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC50, &qword_25454F680);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_25454A584();
    (*(*(v15 - 8) + 8))(v7 + v14, v15);
  }

  else
  {
    v16 = *(v7 + v14);
  }

  v17 = (v3 + v20 + v6) & ~v6;
  v12(v0 + v17, v4);

  return MEMORY[0x2821FE8E8](v0, v17 + v19, v2 | v6 | 7);
}

uint64_t sub_2544E2998()
{
  v1 = *(type metadata accessor for AccessoryDetailsIconPickerView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_254549744() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2544E0508(v0 + v2, v5);
}

uint64_t sub_2544E2A6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2544E2AB4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2544E2AEC@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2544E0BBC(*(v1 + 32), a1);
}

uint64_t sub_2544E2AF8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2544E2B30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2544E0C58();
}

uint64_t sub_2544E2B38()
{
  v1 = sub_254549744();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2544E2BFC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_254549744() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2544E0CE8(v6, a1);
}

uint64_t sub_2544E2C70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2544E0DC4();
}

uint64_t sub_2544E2C78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCA8, &unk_254550680);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544E2D40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2544AE240(*a1, a2, &qword_27F5FC090, &qword_25454FCF8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC440, &qword_254550008);
  v5 = v4[12];
  v6 = a1[1];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC070, &qword_25454FCD8);
  (*(*(v7 - 8) + 16))(a2 + v5, v6, v7);
  v8 = v4[16];
  v9 = a1[2];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC060, &qword_25454FCC8);
  (*(*(v10 - 8) + 16))(a2 + v8, v9, v10);
  sub_2544AE240(a1[3], a2 + v4[20], &qword_27F5FC058, &qword_25454FCC0);
  v11 = v4[24];
  v12 = a1[4];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC048, &qword_25454FCB0);
  (*(*(v13 - 8) + 16))(a2 + v11, v12, v13);
  sub_2544AE240(a1[5], a2 + v4[28], &qword_27F5FC040, &qword_25454FCA8);
  sub_254505BFC(a1[6], a2 + v4[32], type metadata accessor for WalletKeyUWBApproachAngleSection);
  v14 = v4[36];
  v15 = a1[7];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC020, &qword_25454FC88);
  (*(*(v16 - 8) + 16))(a2 + v14, v15, v16);
  v17 = v4[40];
  v18 = a1[8];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC018, &qword_25454FC80);
  (*(*(v19 - 8) + 16))(a2 + v17, v18, v19);
  sub_2544AE240(a1[9], a2 + v4[44], &qword_27F5FC010, &qword_25454FC78);
  sub_2544AE240(a1[10], a2 + v4[48], &qword_27F5FC008, &qword_25454FC70);
  sub_2544AE240(a1[11], a2 + v4[52], &qword_27F5FBFF8, &qword_25454FC60);
  sub_2544AE240(a1[12], a2 + v4[56], &qword_27F5FBFF8, &qword_25454FC60);
  sub_2544AE240(a1[13], a2 + v4[60], &qword_27F5FBFE8, &qword_25454FC50);
  sub_2544AE240(a1[14], a2 + v4[64], &qword_27F5FBFC8, &qword_25454FC30);
  return sub_2544AE240(a1[15], a2 + v4[68], &qword_27F5FBFB8, &qword_25454FC20);
}

uint64_t sub_2544E307C(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_25454BB04();
}

uint64_t sub_2544E324C(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v18 = MEMORY[0x277D84F90];
  sub_2544D57B8(0, v4, 0);
  v5 = v18;
  v7 = *(sub_254549784() - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    a1(v17, v8);
    if (v3)
    {
      break;
    }

    v11 = v17[0];
    v10 = v17[1];
    v18 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_2544D57B8((v12 > 1), v13 + 1, 1);
      v5 = v18;
    }

    *(v5 + 16) = v13 + 1;
    v14 = v5 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    v8 += v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t AccessoryDetailsView.init(accessoryDetails:auxileryViewDelegate:navigationController:dismiss:useLegacyNavBar:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v76 = a6;
  v78 = a7;
  v12 = type metadata accessor for AccessoryDetailsView(0);
  v13 = *(*(v12 - 1) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(v14 + 28);
  swift_unknownObjectWeakInit();
  v17 = &v16[v12[9]];
  LOBYTE(v80[0]) = 0;
  sub_25454B794();
  v18 = *(&v81 + 1);
  *v17 = v81;
  *(v17 + 1) = v18;
  v19 = &v16[v12[10]];
  LOBYTE(v80[0]) = 0;
  sub_25454B794();
  v20 = *(&v81 + 1);
  *v19 = v81;
  *(v19 + 1) = v20;
  v21 = &v16[v12[11]];
  LOBYTE(v80[0]) = 0;
  sub_25454B794();
  v22 = *(&v81 + 1);
  *v21 = v81;
  *(v21 + 1) = v22;
  v23 = &v16[v12[12]];
  LOBYTE(v80[0]) = 0;
  sub_25454B794();
  v24 = *(&v81 + 1);
  *v23 = v81;
  *(v23 + 1) = v24;
  v25 = &v16[v12[13]];
  LOBYTE(v80[0]) = 0;
  sub_25454B794();
  v26 = *(&v81 + 1);
  *v25 = v81;
  *(v25 + 1) = v26;
  v27 = &v16[v12[14]];
  LOBYTE(v80[0]) = 0;
  sub_25454B794();
  v28 = *(&v81 + 1);
  *v27 = v81;
  *(v27 + 1) = v28;
  v29 = &v16[v12[15]];
  LOBYTE(v80[0]) = 0;
  sub_25454B794();
  v30 = *(&v81 + 1);
  *v29 = v81;
  *(v29 + 1) = v30;
  v31 = &v16[v12[16]];
  LOBYTE(v80[0]) = 0;
  sub_25454B794();
  v32 = *(&v81 + 1);
  *v31 = v81;
  *(v31 + 1) = v32;
  v33 = &v16[v12[17]];
  v80[0] = 0;
  v80[1] = 0xE000000000000000;
  sub_25454B794();
  v34 = v82;
  *v33 = v81;
  *(v33 + 2) = v34;
  v35 = v12[19];
  v83 = 0;
  v81 = 0u;
  v82 = 0u;
  sub_2544AE240(&v81, v80, &qword_27F5FBCC8, &qword_25454F720);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCC8, &qword_25454F720);
  v74 = v35;
  sub_25454B794();
  sub_2544AE150(&v81, &qword_27F5FBCC8, &qword_25454F720);
  v36 = &v16[v12[21]];
  v80[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD0, &qword_25454F728);
  sub_25454B794();
  v37 = *(&v81 + 1);
  *v36 = v81;
  *(v36 + 1) = v37;
  if (qword_27F5FACE0 != -1)
  {
    swift_once();
  }

  v38 = sub_25454A2E4();
  __swift_project_value_buffer(v38, qword_27F5FD410);
  v39 = sub_25454A2C4();
  v40 = sub_25454BF94();
  v41 = os_log_type_enabled(v39, v40);
  v79 = a1;
  v77 = a5;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = a3;
    v44 = a4;
    v45 = swift_slowAlloc();
    *&v81 = v45;
    *v42 = 136315394;
    *(v42 + 4) = sub_254502AAC(0xD000000000000022, 0x80000002545555B0, &v81);
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_254502AAC(0xD000000000000059, 0x80000002545555E0, &v81);
    _os_log_impl(&dword_2544A5000, v39, v40, "(%s:%s) - Creating AccessoryDetailsView", v42, 0x16u);
    swift_arrayDestroy();
    v46 = v45;
    a4 = v44;
    a3 = v43;
    MEMORY[0x259C0FDF0](v46, -1, -1);
    v47 = v42;
    a1 = v79;
    MEMORY[0x259C0FDF0](v47, -1, -1);
  }

  v48 = sub_254549AB4();
  v71 = *(v48 - 8);
  v49 = *(v71 + 16);
  v72 = v48;
  v49(v16, a1);
  *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730) + 28)] = 0;
  sub_2545029C0(a2, &v81);
  v50 = v12[5];
  sub_2545029C0(&v81, v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCE0, &qword_25454F738);
  sub_25454B794();
  __swift_destroy_boxed_opaque_existential_0(&v81);
  swift_unknownObjectWeakAssign();
  v16[v12[8]] = v76 & 1;
  v70 = a4;
  if (a3)
  {
    v51 = swift_allocObject();
    *(v51 + 16) = a3;
    v52 = &v16[v12[6]];
    *v52 = sub_254502A6C;
    v52[1] = v51;
  }

  else
  {
    v53 = &v16[v12[6]];
    v54 = v77;
    *v53 = a4;
    v53[1] = v54;
    sub_2545029B0(a4);
  }

  v55 = a3;
  v57 = a2[3];
  v56 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v57);
  v58 = *(v56 + 80);
  v59 = v55;
  v58(&v81, v57, v56);
  v60 = v12[18];
  sub_2545029C0(&v81, v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCE8, &qword_25454F740);
  sub_25454B794();
  __swift_destroy_boxed_opaque_existential_0(&v81);
  v61 = a2[3];
  v62 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v61);
  (*(v62 + 152))(&v81, v61, v62);
  sub_2544AE150(&v16[v74], &qword_27F5FBCF0, &qword_25454F748);
  sub_2544AE240(&v81, v80, &qword_27F5FBCC8, &qword_25454F720);
  sub_25454B794();
  sub_2544AE150(&v81, &qword_27F5FBCC8, &qword_25454F720);
  v63 = a2[3];
  v64 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v63);
  v65 = (*(v64 + 144))(v63, v64);
  v66 = &v16[v12[20]];
  v80[0] = v65;
  sub_25454B794();
  sub_254502A24(v70);

  (*(v71 + 8))(v79, v72);
  v67 = *(&v81 + 1);
  *v66 = v81;
  *(v66 + 1) = v67;
  sub_254505BFC(v16, v78, type metadata accessor for AccessoryDetailsView);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return sub_254505C64(v16, type metadata accessor for AccessoryDetailsView);
}

uint64_t AccessoryDetailsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryDetailsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_254549AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  v12 = sub_254549964();
  (*(v8 + 8))(v11, v7);
  v20 = v2;
  v21 = v12 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCF8, &qword_25454F750);
  sub_254503060();
  sub_25454A724();
  sub_254505BFC(v2, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AccessoryDetailsView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_254507518(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13, type metadata accessor for AccessoryDetailsView);
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBD48, &qword_25454F778) + 36));
  *v15 = sub_2545031FC;
  v15[1] = v14;
  v15[2] = 0;
  v15[3] = 0;
  sub_254505BFC(v2, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AccessoryDetailsView);
  v16 = swift_allocObject();
  sub_254507518(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v13, type metadata accessor for AccessoryDetailsView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBD50, &qword_25454F780);
  v18 = (a1 + *(result + 36));
  *v18 = 0;
  v18[1] = 0;
  v18[2] = sub_254503458;
  v18[3] = v16;
  return result;
}

uint64_t sub_2544E3E24@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v26) = a2;
  v5 = type metadata accessor for AccessoryDetailsView(0);
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25454BE14();
  v28 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = sub_25454AC14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_254505BFC(a1, &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AccessoryDetailsView);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = v9 + v7;
  v11 = swift_allocObject();
  sub_254507518(v8, v11 + v9, type metadata accessor for AccessoryDetailsView);
  *(v11 + v10) = v26 & 1;

  v12 = [objc_opt_self() secondarySystemBackgroundColor];
  v26 = sub_25454B5F4();
  v25 = sub_25454AF14();
  v13 = v5[7];
  v14 = (a1 + v5[6]);
  v15 = *v14;
  v16 = v14[1];
  LOBYTE(v9) = *(a1 + v5[8]);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_2545029B0(v15);
  v18 = sub_25454AB04();
  v19 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCF8, &qword_25454F750) + 36);
  v20 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBD40, &qword_25454F770) + 44);
  *v20 = v18;
  *(v20 + 8) = 0;
  *(v20 + 16) = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBF00, &unk_25454FB30);
  sub_2544FD2E4(a1, v20 + *(v21 + 44));

  *v19 = v15;
  *(v19 + 8) = v16;
  *(v19 + 16) = v9;
  *(v19 + 24) = Strong;
  v23 = v26;
  *a3 = v27;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = sub_254504A34;
  *(a3 + 32) = v11;
  *(a3 + 40) = v23;
  *(a3 + 48) = v25;
  return result;
}

uint64_t sub_2544E4124(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_25454ADB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454AE54();
  sub_25454A5A4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = (*(v6 + 8))(v9, v5);
  MEMORY[0x28223BE20](v18);
  *(&v20 - 6) = a2;
  *(&v20 - 40) = a3 & 1;
  *(&v20 - 4) = v11;
  *(&v20 - 3) = v13;
  *(&v20 - 2) = v15;
  *(&v20 - 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFA0, &qword_25454FC10);
  sub_2544AE1F0(&qword_27F5FBFA8, &qword_27F5FBFA0, &qword_25454FC10);
  sub_25454B184();
}

uint64_t sub_2544E4354@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v551 = a2;
  v563 = a1;
  v505 = a3;
  v511 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFB0, &qword_25454FC18);
  v515 = *(v511 - 8);
  v11 = *(v515 + 64);
  MEMORY[0x28223BE20](v511);
  v481 = v437 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFB8, &qword_25454FC20);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v506 = v437 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v504 = v437 - v17;
  v502 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFC0, &qword_25454FC28);
  v501 = *(v502 - 8);
  v18 = *(v501 + 64);
  MEMORY[0x28223BE20](v502);
  v480 = v437 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFC8, &qword_25454FC30);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v537 = v437 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v503 = v437 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFD0, &qword_25454FC38);
  v499 = *(v25 - 8);
  v500 = v25;
  v26 = *(v499 + 64);
  MEMORY[0x28223BE20](v25);
  v468 = v437 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFD8, &unk_25454FC40);
  v466 = *(v28 - 8);
  v467 = v28;
  v29 = *(v466 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v465 = v437 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v464 = v437 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFE0, &unk_254550CD0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v497 = v437 - v35;
  v510 = sub_254549D94();
  v509 = *(v510 - 8);
  v36 = *(v509 + 64);
  MEMORY[0x28223BE20](v510);
  v479 = v437 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFE8, &qword_25454FC50);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v536 = v437 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v538 = v437 - v42;
  v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFF0, &qword_25454FC58);
  v516 = *(v517 - 8);
  v43 = *(v516 + 64);
  MEMORY[0x28223BE20](v517);
  v508 = v437 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFF8, &qword_25454FC60);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v535 = v437 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v534 = v437 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v530 = v437 - v52;
  MEMORY[0x28223BE20](v51);
  v529 = v437 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC000, &qword_25454FC68);
  v495 = *(v54 - 8);
  v496 = v54;
  v55 = *(v495 + 64);
  MEMORY[0x28223BE20](v54);
  v478 = v437 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC008, &qword_25454FC70);
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v57 - 8);
  v533 = v437 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v549 = v437 - v61;
  v493 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC010, &qword_25454FC78));
  v62 = *(*(*&v493 - 8) + 64);
  v63 = MEMORY[0x28223BE20](*&v493);
  v532 = v437 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v548 = v437 - v65;
  v550 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC018, &qword_25454FC80);
  v561 = *(v550 - 8);
  v66 = *(v561 + 64);
  v67 = MEMORY[0x28223BE20](v550);
  v531 = v437 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v547 = v437 - v69;
  v555 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC020, &qword_25454FC88);
  v562 = *(v555 - 8);
  v70 = v562[8];
  v71 = MEMORY[0x28223BE20](v555);
  v477 = v437 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x28223BE20](v71);
  v540 = v437 - v74;
  MEMORY[0x28223BE20](v73);
  v546 = v437 - v75;
  v76 = type metadata accessor for WalletKeyUWBApproachAngleSection(0);
  v77 = *(*(v76 - 8) + 64);
  v78 = MEMORY[0x28223BE20](v76 - 8);
  v528 = v437 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v545 = v437 - v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC028, &qword_25454FC90);
  v454 = *(v81 - 8);
  v455 = v81;
  v82 = *(v454 + 64);
  MEMORY[0x28223BE20](v81);
  v443 = v437 - v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC030, &qword_25454FC98);
  v491 = *(v84 - 8);
  v492 = v84;
  v85 = *(v491 + 64);
  MEMORY[0x28223BE20](v84);
  v453 = v437 - v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC038, &qword_25454FCA0);
  v88 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87 - 8);
  v463 = v437 - v89;
  v90 = sub_25454A124();
  v470 = *(v90 - 8);
  v471 = v90;
  v91 = *(v470 + 64);
  MEMORY[0x28223BE20](v90);
  v469 = v437 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_254549634();
  v475 = *(v93 - 8);
  v476 = v93;
  v94 = *(v475 + 64);
  MEMORY[0x28223BE20](v93);
  v474 = v437 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC040, &qword_25454FCA8);
  v97 = *(*(v96 - 8) + 64);
  v98 = MEMORY[0x28223BE20](v96 - 8);
  v527 = v437 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v98);
  v544 = v437 - v100;
  v526 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC048, &qword_25454FCB0);
  v560 = *(v526 - 8);
  v101 = *(v560 + 64);
  v102 = MEMORY[0x28223BE20](v526);
  v525 = v437 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v102);
  v543 = v437 - v104;
  v513 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC050, &qword_25454FCB8));
  v512 = *(*&v513 - 8);
  v105 = *(*&v512 + 64);
  MEMORY[0x28223BE20](*&v513);
  v473 = v437 - v106;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC058, &qword_25454FCC0);
  v108 = *(*(v107 - 8) + 64);
  v109 = MEMORY[0x28223BE20](v107 - 8);
  v524 = v437 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v109);
  v554 = v437 - v111;
  v523 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC060, &qword_25454FCC8);
  v559 = *(v523 - 8);
  v112 = *(v559 + 64);
  v113 = MEMORY[0x28223BE20](v523);
  v522 = v437 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v113);
  v542 = v437 - v115;
  v490 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC068, &qword_25454FCD0);
  v116 = *(*(v490 - 8) + 64);
  MEMORY[0x28223BE20](v490);
  v489 = v437 - v117;
  v521 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC070, &qword_25454FCD8);
  v520 = *(v521 - 8);
  v118 = *(v520 + 64);
  v119 = MEMORY[0x28223BE20](v521);
  v519 = v437 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v119);
  v541 = v437 - v121;
  updated = type metadata accessor for SoftwareUpdateStatusView(0);
  v122 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v452 = v437 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC078, &qword_25454FCE0);
  v460 = *(v124 - 8);
  v461 = v124;
  v125 = *(v460 + 64);
  MEMORY[0x28223BE20](v124);
  v449 = v437 - v126;
  v458 = sub_254549DC4();
  v472 = *(v458 - 8);
  v127 = v472[8];
  v128 = MEMORY[0x28223BE20](v458);
  v448 = v437 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = MEMORY[0x28223BE20](v128);
  v457 = v437 - v131;
  MEMORY[0x28223BE20](v130);
  v483 = v437 - v132;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC080, &qword_25454FCE8);
  v487 = *(v133 - 8);
  v488 = v133;
  v134 = *(v487 + 64);
  MEMORY[0x28223BE20](v133);
  v459 = v437 - v135;
  v136 = sub_254549DA4();
  v137 = *(v136 - 8);
  v138 = *(v137 + 64);
  MEMORY[0x28223BE20](v136);
  v140 = v437 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_25454A0F4();
  v142 = *(v141 - 8);
  v484 = v141;
  v485 = v142;
  v143 = *(v142 + 64);
  v144 = MEMORY[0x28223BE20](v141);
  v447 = v437 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = MEMORY[0x28223BE20](v144);
  v446 = v437 - v147;
  v148 = MEMORY[0x28223BE20](v146);
  v451 = v437 - v149;
  MEMORY[0x28223BE20](v148);
  v482 = v437 - v150;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC088, &qword_25454FCF0);
  v152 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151 - 8);
  v154 = v437 - v153;
  v556 = sub_254549AB4();
  v507 = *(v556 - 8);
  v155 = *(*&v507 + 64);
  v156 = MEMORY[0x28223BE20](v556);
  v494 = v437 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = MEMORY[0x28223BE20](v156);
  v462 = v437 - v159;
  v160 = MEMORY[0x28223BE20](v158);
  v445 = v437 - v161;
  v162 = MEMORY[0x28223BE20](v160);
  v444 = v437 - v163;
  v164 = MEMORY[0x28223BE20](v162);
  v450 = v437 - v165;
  v166 = MEMORY[0x28223BE20](v164);
  v539 = v437 - v167;
  MEMORY[0x28223BE20](v166);
  v169 = v437 - v168;
  v170 = sub_254549DD4();
  v171 = *(v170 - 8);
  v172 = *(v171 + 64);
  MEMORY[0x28223BE20](v170);
  v486 = v437 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC090, &qword_25454FCF8);
  v175 = *(*(v174 - 8) + 64);
  v176 = MEMORY[0x28223BE20](v174 - 8);
  v518 = v437 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v176);
  v552 = v437 - v178;
  v179 = sub_25454BE14();
  v498 = sub_25454BE04();
  v514 = v179;
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v558 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549994();
  v180 = *(*&v507 + 8);
  v553 = *&v507 + 8;
  v557 = v180;
  v180(v169, v556);
  if ((*(v171 + 48))(v154, 1, v170) == 1)
  {
    sub_2544AE150(v154, &qword_27F5FC088, &qword_25454FCF0);
LABEL_10:
    v200 = 1;
    v201 = v563;
    v196 = v556;
    goto LABEL_13;
  }

  v181 = v486;
  (*(v171 + 32))(v486, v154, v170);
  sub_254549DB4();
  if ((*(v137 + 88))(v140, v136) != *MEMORY[0x277D165F0])
  {
    (*(v171 + 8))(v181, v170);
    (*(v137 + 8))(v140, v136);
    goto LABEL_10;
  }

  v440 = v171;
  v441 = v170;
  (*(v137 + 96))(v140, v136);
  v182 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC2B8, &qword_25454FE70) + 48);
  (*(v485 + 32))(v482, v140, v484);
  v183 = v472;
  v185 = v472 + 1;
  v184 = v472[1];
  v186 = &v140[v182];
  v187 = v458;
  v184(v186, v458);
  v188 = v539;
  sub_25454B7A4();
  v189 = v483;
  sub_254549954();
  v557(v188, v556);
  v190 = *MEMORY[0x277D16630];
  v191 = v457;
  v439 = v183[13];
  v439(v457, v190, v187);
  sub_254504430(&qword_27F5FC2C0, MEMORY[0x277D16648]);
  LOBYTE(v182) = sub_25454BC44();
  v184(v191, v187);
  v442 = v185;
  v184(v189, v187);
  if (v182)
  {
    goto LABEL_8;
  }

  v192 = v184;
  sub_25454B7A4();
  v193 = v483;
  sub_254549954();
  v557(v188, v556);
  v439(v191, *MEMORY[0x277D16620], v187);
  v194 = sub_25454BC44();
  v184(v191, v187);
  v184(v193, v187);
  if (v194)
  {
LABEL_8:
    (*(v485 + 8))(v482, v484);
    (*(v440 + 8))(v486, v441);
    v195 = 1;
    v196 = v556;
    v198 = v460;
    v197 = v461;
    v199 = v459;
  }

  else
  {
    v438 = *(v485 + 16);
    v202 = v451;
    v438(v451, v482, v484);
    sub_25454B7A4();
    sub_254549954();
    v557(v188, v556);
    sub_25454B7A4();
    v203 = *(updated + 32);
    v204 = updated;
    v205 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    *&v452[v203] = v205;
    v439 = v192;
    v206 = v446;
    v207 = v202;
    v208 = v484;
    v209 = v438;
    v438(v446, v207, v484);
    v437[1] = *(v204 + 24);
    v209(v447, v206, v208);
    v438 = v205;
    sub_25454B794();
    v210 = *(v485 + 8);
    v485 += 8;
    v447 = v210;
    (v210)(v206, v208);
    v211 = v472[2];
    v211(v191, v483, v187);
    v212 = updated;
    v213 = *(updated + 28);
    v211(v448, v191, v187);
    v214 = v452;
    sub_25454B794();
    (v439)(v191, v187);
    v215 = *(*&v507 + 16);
    v216 = v444;
    v217 = v450;
    v218 = v556;
    v215(v444, v450, v556);
    v215(v445, v216, v218);
    sub_25454B794();
    v219 = v557;
    v557(v216, v218);
    v220 = &v214[*(v212 + 20)];
    v221 = v214;
    LOBYTE(v564[0]) = 0;
    sub_25454B794();
    v222 = *(&v571[0] + 1);
    *v220 = v571[0];
    *(v220 + 1) = v222;
    v223 = v438;
    [v438 setDateStyle_];
    [v223 setTimeStyle_];

    v224 = v217;
    v196 = v218;
    v219(v224, v218);
    (v439)(v483, v187);
    v225 = v484;
    v226 = v447;
    (v447)(v451, v484);
    sub_25454A4D4();
    sub_254504430(&qword_27F5FC2C8, type metadata accessor for SoftwareUpdateStatusView);
    v227 = v449;
    sub_25454B3E4();
    sub_254505C64(v221, type metadata accessor for SoftwareUpdateStatusView);
    v226(v482, v225);
    (*(v440 + 8))(v486, v441);
    v199 = v459;
    v198 = v460;
    v228 = v461;
    (*(v460 + 32))(v459, v227, v461);
    v197 = v228;
    v195 = 0;
  }

  (*(v198 + 56))(v199, v195, 1, v197);
  sub_2544B14E8(v199, v552, &qword_27F5FC080, &qword_25454FCE8);
  v200 = 0;
  v201 = v563;
LABEL_13:
  v229 = 1;
  v230 = (*(v487 + 56))(v552, v200, 1, v488);
  MEMORY[0x28223BE20](v230);
  sub_2544EAE04(v201, v489);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC098, &qword_25454FD00);
  sub_254505818(&qword_27F5FC0A0, &qword_27F5FC068, &qword_25454FCD0, sub_254505074);
  sub_25450558C();
  v231 = sub_25454B994();
  MEMORY[0x28223BE20](v231);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC180, &qword_25454FD78);
  sub_2545056D8();
  sub_25454B9A4();
  v232 = v539;
  sub_25454B7A4();
  v233 = sub_254549A04();
  v234 = (v557)(v232, v196);
  v235 = v196;
  if (v233)
  {
    MEMORY[0x28223BE20](v234);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC28, &unk_25454F660);
    sub_2544AE1F0(&qword_27F5FBC20, &qword_27F5FBC28, &unk_25454F660);
    v236 = v473;
    sub_25454B9A4();
    (*(*&v512 + 32))(v554, v236, COERCE_DOUBLE(*&v513));
    v229 = 0;
  }

  v237 = (*(*&v512 + 56))(v554, v229, 1, COERCE_DOUBLE(*&v513));
  MEMORY[0x28223BE20](v237);
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v238 = v551;
  if (v551)
  {
    *&v571[0] = sub_25454BCF4();
    *(&v571[0] + 1) = v239;
    sub_2544AECF0();
    v240 = sub_25454B274();
    v242 = v241;
    v244 = v243;
    v246 = v245;

    v247 = v244 & 1;
  }

  else
  {

    v240 = 0;
    v242 = 0;
    v247 = 0;
    v246 = 0;
  }

  *&v571[0] = v240;
  *(&v571[0] + 1) = v242;
  *&v571[1] = v247;
  *(&v571[1] + 1) = v246;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1A0, &qword_25454FD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1A8, &qword_25454FD90);
  sub_2544AE1F0(&qword_27F5FC1B0, &qword_27F5FC1A0, &qword_25454FD88);
  sub_254505794();
  sub_25454B9B4();
  v248 = v517;
  if ((v238 & 1) == 0)
  {
    goto LABEL_24;
  }

  v250 = v474;
  v249 = v475;
  v251 = v476;
  (*(v475 + 104))(v474, *MEMORY[0x277D15280], v476);
  sub_254504430(&qword_27F5FC2A0, MEMORY[0x277D15298]);
  v252 = sub_254549564();
  (*(v249 + 8))(v250, v251);
  if ((v252 & 1) == 0)
  {
    goto LABEL_24;
  }

  v253 = v462;
  sub_25454B7A4();
  v254 = v463;
  sub_2545499C4();
  v255 = v253;
  v256 = v557;
  v557(v255, v235);
  v258 = v470;
  v257 = v471;
  if ((*(v470 + 48))(v254, 1, v471) == 1)
  {
    sub_2544AE150(v254, &qword_27F5FC038, &qword_25454FCA0);
LABEL_24:
    (*(v491 + 56))(v544, 1, 1, v492);
    v259 = v558;
    goto LABEL_25;
  }

  (*(v258 + 32))(v469, v254, v257);
  if (sub_25454A104() & 1) != 0 && (sub_25454A114() & 1) != 0 && (v365 = v539, sub_25454B7A4(), v366 = sub_254549914(), v367 = v256(v365, v235), (v366))
  {
    MEMORY[0x28223BE20](v367);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC2A8, &unk_25454FE60);
    sub_2544AE1F0(&qword_27F5FC2B0, &qword_27F5FC2A8, &unk_25454FE60);
    v368 = v443;
    v257 = v471;
    sub_25454B9A4();
    v258 = v470;
    v370 = v453;
    v369 = v454;
    v371 = v455;
    (*(v454 + 32))(v453, v368, v455);
    v372 = v371;
    v373 = 0;
    v259 = v558;
  }

  else
  {
    v373 = 1;
    v259 = v558;
    v369 = v454;
    v372 = v455;
    v370 = v453;
  }

  (*(v369 + 56))(v370, v373, 1, v372);
  v374 = v544;
  sub_2544B14E8(v370, v544, &qword_27F5FC030, &qword_25454FC98);
  (*(v491 + 56))(v374, 0, 1, v492);
  (*(v258 + 8))(v469, v257);
LABEL_25:
  v260 = v545;
  v261 = sub_25454B7A4();
  *(v260 + v259[7]) = 0;
  MEMORY[0x28223BE20](v261);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1C0, &qword_25454FD98);
  sub_254505818(&qword_27F5FC1C8, &qword_27F5FC1C0, &qword_25454FD98, sub_254505894);
  v262 = sub_25454B9A4();
  MEMORY[0x28223BE20](v262);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC220, &qword_25454FDD0);
  sub_254505B34();
  sub_25454B9A4();
  v263 = v548;
  sub_25454B7A4();
  v264 = type metadata accessor for AutoRelockTimePickerView();
  v265 = v263 + *(v264 + 20);
  LOBYTE(v564[0]) = 0;
  sub_25454B794();
  v266 = *(&v571[0] + 1);
  *v265 = v571[0];
  *(v265 + 8) = v266;
  v267 = v263 + *(v264 + 24);
  LOBYTE(v564[0]) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC240, &qword_25454FDE0);
  sub_25454B794();
  v268 = *(&v571[0] + 1);
  *v267 = v571[0];
  *(v267 + 8) = v268;
  *(v263 + v259[7]) = 0;
  KeyPath = swift_getKeyPath();
  v270 = swift_allocObject();
  *(v270 + 16) = (v238 & 1) == 0;
  v271 = (v263 + *(*&v493 + 36));
  *v271 = KeyPath;
  v271[1] = sub_2544C8E8C;
  v271[2] = v270;
  if (v238)
  {
    v272 = type metadata accessor for AccessoryDetailsView(0);
    v273 = *(v272 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
    sub_25454B7A4();
    v274 = *(&v583 + 1);
    v275 = v584;
    __swift_project_boxed_opaque_existential_1(&v582, *(&v583 + 1));
    v492 = (*(v275 + 72))(v274, v275);
    v493 = a4;
    v607.origin.x = a4;
    v507 = a5;
    v607.origin.y = a5;
    v512 = a6;
    v607.size.width = a6;
    v513 = a7;
    v607.size.height = a7;
    CGRectGetWidth(v607);
    v276 = *(v272 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC288, &qword_25454FE48);
    sub_25454B7A4();
    v277 = *(&v571[1] + 1);
    v278 = *&v571[2];
    __swift_project_boxed_opaque_existential_1(v571, *(&v571[1] + 1));
    (*(v278 + 16))(v277, v278);
    __swift_destroy_boxed_opaque_existential_0(v571);
    sub_25454BA34();
    sub_25454A784();
    __swift_destroy_boxed_opaque_existential_0(&v582);
    v279 = sub_25454AF24();
    LOBYTE(v278) = v279;
    LODWORD(v491) = v279;
    sub_25454A394();
    v281 = v280;
    v283 = v282;
    v285 = v284;
    v287 = v286;
    v581 = 0;
    v288 = sub_25454AF34();
    v289 = v288;
    LODWORD(v490) = v288;
    v290 = sub_25454A394();
    v292 = v291;
    v294 = v293;
    v296 = v295;
    v298 = v297;
    LOBYTE(v604[0]) = 0;
    MEMORY[0x28223BE20](v290);
    v299 = v540;
    sub_25454B9A4();
    v300 = v562;
    v301 = v562[2];
    v302 = v477;
    v303 = v555;
    v301(v477, v299, v555);
    *&v564[0] = v492;
    *(&v564[6] + 8) = v599;
    *(&v564[3] + 8) = v596;
    *(&v564[4] + 8) = v597;
    *(&v564[5] + 8) = v598;
    *(v564 + 8) = v593;
    *(&v564[1] + 8) = v594;
    *(&v564[2] + 8) = v595;
    BYTE8(v564[7]) = v278;
    *&v565 = v281;
    *(&v565 + 1) = v283;
    *&v566 = v285;
    *(&v566 + 1) = v287;
    LOBYTE(v567) = 0;
    BYTE8(v567) = v289;
    *&v568 = v292;
    *(&v568 + 1) = v294;
    *&v569 = v296;
    *(&v569 + 1) = v298;
    v570 = 0;
    v304 = v492;
    v305 = v478;
    v478[208] = 0;
    v306 = v564[3];
    *(v305 + 2) = v564[2];
    *(v305 + 3) = v306;
    v307 = v564[5];
    *(v305 + 4) = v564[4];
    *(v305 + 5) = v307;
    v308 = v564[1];
    *v305 = v564[0];
    *(v305 + 1) = v308;
    v309 = v568;
    *(v305 + 10) = v567;
    *(v305 + 11) = v309;
    *(v305 + 12) = v569;
    v310 = v564[6];
    v311 = v564[7];
    v312 = v566;
    *(v305 + 8) = v565;
    *(v305 + 9) = v312;
    *(v305 + 6) = v310;
    *(v305 + 7) = v311;
    v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC290, &qword_25454FE50);
    v301(&v305[*(v313 + 48)], v302, v303);
    sub_2544AE240(v564, v571, &qword_27F5FC298, &qword_25454FE58);
    v314 = v300[1];
    v314(v299, v303);
    v314(v302, v303);
    *(&v571[3] + 8) = v596;
    *(&v571[4] + 8) = v597;
    *(&v571[5] + 8) = v598;
    *(&v571[6] + 8) = v599;
    *(v571 + 8) = v593;
    *(&v571[1] + 8) = v594;
    *&v571[0] = v304;
    *(&v571[2] + 8) = v595;
    BYTE8(v571[7]) = v491;
    *&v572 = v281;
    *(&v572 + 1) = v283;
    *&v573 = v285;
    *(&v573 + 1) = v287;
    v574 = 0;
    v575 = v490;
    v576 = v292;
    v577 = v294;
    v578 = v296;
    v579 = v298;
    v580 = 0;
    sub_2544AE150(v571, &qword_27F5FC298, &qword_25454FE58);
    v315 = v549;
    sub_2544B14E8(v305, v549, &qword_27F5FC000, &qword_25454FC68);
    (*(v495 + 56))(v315, 0, 1, v496);
    a7 = v513;
    a6 = v512;
    a5 = v507;
    a4 = v493;
    v248 = v517;
  }

  else
  {
    (*(v495 + 56))(v549, 1, 1, v496);
  }

  v512 = COERCE_DOUBLE(type metadata accessor for AccessoryDetailsView(0));
  *&v316 = *(*&v512 + 20);
  v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v317 = *(&v571[1] + 1);
  v318 = *&v571[2];
  __swift_project_boxed_opaque_existential_1(v571, *(&v571[1] + 1));
  v319 = (*(v318 + 56))(v317, v318);
  v320 = __swift_destroy_boxed_opaque_existential_0(v571);
  if (v319 < 2)
  {
    v324 = 1;
    v323 = v529;
    v322 = v516;
  }

  else
  {
    MEMORY[0x28223BE20](v320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1D8, &qword_25454FDA0);
    sub_254505894();
    v321 = v508;
    sub_25454B9A4();
    v322 = v516;
    v323 = v529;
    (*(v516 + 32))(v529, v321, v248);
    v324 = 0;
  }

  v325 = *(v322 + 56);
  v325(v323, v324, 1, v248);
  sub_25454B7A4();
  v326 = *(&v571[1] + 1);
  v327 = *&v571[2];
  __swift_project_boxed_opaque_existential_1(v571, *(&v571[1] + 1));
  v328 = (*(v327 + 96))(v326, v327);
  v513 = v316;
  if (v328)
  {
    v329 = __swift_destroy_boxed_opaque_existential_0(v571);
LABEL_34:
    MEMORY[0x28223BE20](v329);
    v333 = v563;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1D8, &qword_25454FDA0);
    sub_254505894();
    v334 = v508;
    sub_25454B9A4();
    v335 = v530;
    (*(v516 + 32))(v530, v334, v248);
    v336 = 0;
    goto LABEL_36;
  }

  sub_25454B7A4();
  v330 = *(&v564[1] + 1);
  v331 = *&v564[2];
  __swift_project_boxed_opaque_existential_1(v564, *(&v564[1] + 1));
  v332 = (*(v331 + 88))(v330, v331);
  __swift_destroy_boxed_opaque_existential_0(v564);
  v329 = __swift_destroy_boxed_opaque_existential_0(v571);
  if (v332)
  {
    goto LABEL_34;
  }

  v336 = 1;
  v333 = v563;
  v335 = v530;
LABEL_36:
  v325(v335, v336, 1, v248);
  v337 = v494;
  sub_25454B7A4();
  v338 = v497;
  sub_254549984();
  v339 = v337;
  v340 = v556;
  v557(v339, v556);
  v341 = v509;
  v342 = v510;
  if ((*(v509 + 48))(v338, 1, v510) == 1)
  {
    sub_2544AE150(v338, &qword_27F5FBFE0, &unk_254550CD0);
    v343 = v511;
    v344 = v538;
LABEL_40:
    (*(v499 + 56))(v344, 1, 1, v500);
    v347 = v539;
    goto LABEL_56;
  }

  v345 = v479;
  (*(v341 + 32))(v479, v338, v342);
  v346 = sub_2544F1A00();
  v343 = v511;
  v344 = v538;
  if (v346)
  {
    (*(v341 + 8))(v345, v342);
    goto LABEL_40;
  }

  v348 = v512;
  v349 = *(*&v512 + 76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCF0, &qword_25454F748);
  sub_25454B7A4();
  if (*(&v571[1] + 1))
  {
    sub_2544DC71C(v571, v604);
    v350 = v605;
    v351 = v606;
    __swift_project_boxed_opaque_existential_1(v604, v605);
    if ((*(v351 + 32))(v350, v351))
    {
      v352 = &v333[*(*&v348 + 80)];
      v354 = *v352;
      v353 = *(v352 + 1);
      *&v571[0] = v354;
      *(&v571[0] + 1) = v353;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC280, &qword_25454FE40);
      sub_25454B7A4();
      v355 = *&v564[0];
      v608.origin.x = a4;
      v608.origin.y = a5;
      v608.size.width = a6;
      v608.size.height = a7;
      v356 = CGRectGetWidth(v608) + -30.0;
      v609.origin.x = a4;
      v609.origin.y = a5;
      v609.size.width = a6;
      v609.size.height = a7;
      Width = CGRectGetWidth(v609);
      sub_25454BA34();
      if (v356 > Width)
      {
        sub_25454BF84();
        v358 = sub_25454AED4();
        sub_25454A1E4();
      }

      sub_25454A784();
      v359 = sub_25454AF74();
      sub_25454A394();
      *(&v564[3] + 8) = v596;
      *(&v564[4] + 8) = v597;
      *(&v564[5] + 8) = v598;
      *(&v564[6] + 8) = v599;
      *(v564 + 8) = v593;
      *(&v564[1] + 8) = v594;
      LOBYTE(v582) = 0;
      *&v564[0] = v355;
      *(&v564[2] + 8) = v595;
      BYTE8(v564[7]) = v359;
      *&v565 = v360;
      *(&v565 + 1) = v361;
      *&v566 = v362;
      *(&v566 + 1) = v363;
      LOBYTE(v567) = 0;
      nullsub_1(v564);
      v364 = __swift_destroy_boxed_opaque_existential_0(v604);
      v572 = v565;
      v573 = v566;
      v574 = v567;
      v571[4] = v564[4];
      v571[5] = v564[5];
      v571[7] = v564[7];
      v571[6] = v564[6];
      v571[0] = v564[0];
      v571[1] = v564[1];
      v571[3] = v564[3];
      v571[2] = v564[2];
      goto LABEL_55;
    }

    __swift_destroy_boxed_opaque_existential_0(v604);
  }

  else
  {
    sub_2544AE150(v571, &qword_27F5FBCC8, &qword_25454F720);
  }

  sub_254505CCC(v571);
LABEL_55:
  MEMORY[0x28223BE20](v364);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC260, &qword_25454FE28);
  sub_2544AE1F0(&qword_27F5FC268, &qword_27F5FC260, &qword_25454FE28);
  v375 = v464;
  sub_25454B9A4();
  v590 = v572;
  v591 = v573;
  v592 = v574;
  v586 = v571[4];
  v587 = v571[5];
  v589 = v571[7];
  v588 = v571[6];
  v582 = v571[0];
  v583 = v571[1];
  v585 = v571[3];
  v584 = v571[2];
  v377 = v466;
  v376 = v467;
  v378 = *(v466 + 16);
  v379 = v345;
  v380 = v465;
  v378(v465, v375, v467);
  v381 = v591;
  v601 = v590;
  v602 = v591;
  v382 = v586;
  v383 = v587;
  v597 = v586;
  v598 = v587;
  v384 = v589;
  v385 = v588;
  v600 = v589;
  v599 = v588;
  v386 = v582;
  v387 = v583;
  v593 = v582;
  v594 = v583;
  v388 = v585;
  v389 = v584;
  v596 = v585;
  v595 = v584;
  v390 = v468;
  *(v468 + 8) = v590;
  *(v390 + 144) = v381;
  *(v390 + 64) = v382;
  *(v390 + 80) = v383;
  *(v390 + 96) = v385;
  *(v390 + 112) = v384;
  *v390 = v386;
  *(v390 + 16) = v387;
  v603 = v592;
  *(v390 + 160) = v592;
  *(v390 + 32) = v389;
  *(v390 + 48) = v388;
  v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC270, &qword_25454FE30);
  v378((v390 + *(v391 + 48)), v380, v376);
  sub_2544AE240(&v593, v564, &qword_27F5FC278, &qword_25454FE38);
  v392 = *(v377 + 8);
  v392(v375, v376);
  (*(v509 + 8))(v379, v510);
  v392(v380, v376);
  v565 = v590;
  v566 = v591;
  LOBYTE(v567) = v592;
  v564[4] = v586;
  v564[5] = v587;
  v564[7] = v589;
  v564[6] = v588;
  v564[0] = v582;
  v564[1] = v583;
  v564[3] = v585;
  v564[2] = v584;
  sub_2544AE150(v564, &qword_27F5FC278, &qword_25454FE38);
  v393 = v538;
  sub_2544B14E8(v390, v538, &qword_27F5FBFD0, &qword_25454FC38);
  (*(v499 + 56))(v393, 0, 1, v500);
  v340 = v556;
  v347 = v539;
  v343 = v511;
LABEL_56:
  sub_25454B7A4();
  v394 = sub_2545499A4();
  v557(v347, v340);
  if (v394)
  {
    *&v564[0] = sub_25454BCF4();
    *(&v564[0] + 1) = v395;
    sub_25454BE04();
    sub_25454BDB4();
    isCurrentExecutor = swift_task_isCurrentExecutor();
    v397 = v503;
    if ((isCurrentExecutor & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_25454B7A4();
    v398 = *(&v571[1] + 1);
    v399 = *&v571[2];
    __swift_project_boxed_opaque_existential_1(v571, *(&v571[1] + 1));
    v400 = (*(v399 + 40))(v398, v399);
    __swift_destroy_boxed_opaque_existential_0(v571);

    *&v571[0] = v400;
    sub_2544AECF0();
    v401 = v480;
    sub_25454A684();
    v402 = v501;
    v403 = v502;
    (*(v501 + 32))(v397, v401, v502);
    v404 = 0;
  }

  else
  {
    v404 = 1;
    v403 = v502;
    v402 = v501;
    v397 = v503;
  }

  v405 = 1;
  v406 = (*(v402 + 56))(v397, v404, 1, v403);
  v407 = v504;
  if (v551)
  {
    MEMORY[0x28223BE20](v406);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC250, &qword_25454FE20);
    sub_2544AE1F0(&qword_27F5FC258, &qword_27F5FC250, &qword_25454FE20);
    v408 = v481;
    sub_25454B9A4();
    (*(v515 + 32))(v407, v408, v343);
    v405 = 0;
  }

  (*(v515 + 56))(v407, v405, 1, v343);
  v409 = v518;
  sub_2544AE240(v552, v518, &qword_27F5FC090, &qword_25454FCF8);
  *&v571[0] = v409;
  v410 = v519;
  (*(v520 + 16))(v519, v541, v521);
  *(&v571[0] + 1) = v410;
  v411 = v522;
  (*(v559 + 16))(v522, v542, v523);
  *&v571[1] = v411;
  v412 = v524;
  sub_2544AE240(v554, v524, &qword_27F5FC058, &qword_25454FCC0);
  *(&v571[1] + 1) = v412;
  v413 = v525;
  (*(v560 + 16))(v525, v543, v526);
  *&v571[2] = v413;
  v414 = v527;
  sub_2544AE240(v544, v527, &qword_27F5FC040, &qword_25454FCA8);
  *(&v571[2] + 1) = v414;
  v415 = v528;
  sub_254505BFC(v545, v528, type metadata accessor for WalletKeyUWBApproachAngleSection);
  *&v571[3] = v415;
  v416 = v540;
  (v562[2])(v540, v546, v555);
  *(&v571[3] + 1) = v416;
  v417 = v531;
  (*(v561 + 16))(v531, v547, v550);
  *&v571[4] = v417;
  v418 = v532;
  sub_2544AE240(v548, v532, &qword_27F5FC010, &qword_25454FC78);
  *(&v571[4] + 1) = v418;
  v419 = v533;
  sub_2544AE240(v549, v533, &qword_27F5FC008, &qword_25454FC70);
  *&v571[5] = v419;
  v420 = v529;
  v421 = v534;
  sub_2544AE240(v529, v534, &qword_27F5FBFF8, &qword_25454FC60);
  *(&v571[5] + 1) = v421;
  v422 = v530;
  v423 = v535;
  sub_2544AE240(v530, v535, &qword_27F5FBFF8, &qword_25454FC60);
  *&v571[6] = v423;
  v424 = v538;
  v425 = v536;
  sub_2544AE240(v538, v536, &qword_27F5FBFE8, &qword_25454FC50);
  *(&v571[6] + 1) = v425;
  v426 = v537;
  sub_2544AE240(v397, v537, &qword_27F5FBFC8, &qword_25454FC30);
  *&v571[7] = v426;
  v427 = v506;
  sub_2544AE240(v407, v506, &qword_27F5FBFB8, &qword_25454FC20);
  *(&v571[7] + 1) = v427;
  sub_2544E2D40(v571, v505);
  sub_2544AE150(v407, &qword_27F5FBFB8, &qword_25454FC20);
  sub_2544AE150(v397, &qword_27F5FBFC8, &qword_25454FC30);
  sub_2544AE150(v424, &qword_27F5FBFE8, &qword_25454FC50);
  sub_2544AE150(v422, &qword_27F5FBFF8, &qword_25454FC60);
  sub_2544AE150(v420, &qword_27F5FBFF8, &qword_25454FC60);
  sub_2544AE150(v549, &qword_27F5FC008, &qword_25454FC70);
  sub_2544AE150(v548, &qword_27F5FC010, &qword_25454FC78);
  v428 = *(v561 + 8);
  v561 += 8;
  v563 = v428;
  (v428)(v547, v550);
  v429 = v562[1];
  ++v562;
  v558 = v429;
  (v429)(v546, v555);
  sub_254505C64(v545, type metadata accessor for WalletKeyUWBApproachAngleSection);
  sub_2544AE150(v544, &qword_27F5FC040, &qword_25454FCA8);
  v430 = *(v560 + 8);
  v560 += 8;
  v557 = v430;
  v431 = v526;
  v430(v543, v526);
  sub_2544AE150(v554, &qword_27F5FC058, &qword_25454FCC0);
  v432 = *(v559 + 8);
  v559 += 8;
  v433 = v523;
  v432(v542, v523);
  v434 = *(v520 + 8);
  v435 = v521;
  v434(v541, v521);
  sub_2544AE150(v552, &qword_27F5FC090, &qword_25454FCF8);
  sub_2544AE150(v427, &qword_27F5FBFB8, &qword_25454FC20);
  sub_2544AE150(v537, &qword_27F5FBFC8, &qword_25454FC30);
  sub_2544AE150(v536, &qword_27F5FBFE8, &qword_25454FC50);
  sub_2544AE150(v535, &qword_27F5FBFF8, &qword_25454FC60);
  sub_2544AE150(v534, &qword_27F5FBFF8, &qword_25454FC60);
  sub_2544AE150(v533, &qword_27F5FC008, &qword_25454FC70);
  sub_2544AE150(v532, &qword_27F5FC010, &qword_25454FC78);
  (v563)(v531, v550);
  (v558)(v540, v555);
  sub_254505C64(v528, type metadata accessor for WalletKeyUWBApproachAngleSection);
  sub_2544AE150(v527, &qword_27F5FC040, &qword_25454FCA8);
  v557(v525, v431);
  sub_2544AE150(v524, &qword_27F5FC058, &qword_25454FCC0);
  v432(v522, v433);
  v434(v519, v435);
  sub_2544AE150(v518, &qword_27F5FC090, &qword_25454FCF8);
}

uint64_t sub_2544E8134@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC168, &qword_25454FD68);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC098, &qword_25454FD00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v9 = sub_25454AB14();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC5C0, &qword_2545502A0);
  sub_2544E8408(a1, a2 & 1, &v9[*(v14 + 44)]);
  v15 = sub_25454AF44();
  sub_25454A394();
  v16 = &v9[*(v6 + 36)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBED0, &qword_25454FAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25454D8E0;
  v22 = sub_25454AF24();
  *(inited + 32) = v22;
  v23 = sub_25454AF34();
  *(inited + 33) = v23;
  v24 = sub_25454AF54();
  sub_25454AF54();
  if (sub_25454AF54() != v22)
  {
    v24 = sub_25454AF54();
  }

  sub_25454AF54();
  if (sub_25454AF54() != v23)
  {
    v24 = sub_25454AF54();
  }

  sub_25454A394();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_2544B14E8(v9, v13, &qword_27F5FC168, &qword_25454FD68);
  v33 = &v13[*(v10 + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  sub_2544B14E8(v13, a3, &qword_27F5FC098, &qword_25454FD00);
}

uint64_t sub_2544E8408@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v129 = a3;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC488, &qword_254550048);
  v5 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v116 = &v91 - v6;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC490, &qword_254550050);
  v7 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v114 = &v91 - v8;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC5C8, &qword_2545502A8);
  v119 = *(v121 - 8);
  v9 = *(v119 + 64);
  MEMORY[0x28223BE20](v121);
  v118 = &v91 - v10;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC5D0, &qword_2545502B0);
  v11 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v125 = &v91 - v12;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC5D8, &qword_2545502B8);
  v13 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v126 = &v91 - v14;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC5E0, &unk_2545502C0);
  v15 = *(*(v124 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v124);
  v128 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v122 = &v91 - v19;
  MEMORY[0x28223BE20](v18);
  v127 = &v91 - v20;
  v110 = sub_254549744();
  v109 = *(v110 - 8);
  v21 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v108 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_25454A0A4();
  v106 = *(v107 - 8);
  v23 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v105 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_254549AB4();
  v103 = *(v104 - 8);
  v25 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v100 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for AccessoryDetailsView(0);
  v27 = *(v95 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v95);
  v29 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC80, &unk_25454F6C8);
  v96 = *(v99 - 8);
  v30 = *(v96 + 64);
  MEMORY[0x28223BE20](v99);
  v32 = &v91 - v31;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC5E8, &qword_2545502D0);
  v101 = *(v102 - 8);
  v33 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v98 = &v91 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC5F0, &qword_2545502D8);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v113 = &v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v111 = &v91 - v39;
  sub_25454BE14();
  v112 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v94 = type metadata accessor for AccessoryDetailsView;
  sub_254505BFC(a1, &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetailsView);
  v40 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v41 = swift_allocObject();
  v92 = type metadata accessor for AccessoryDetailsView;
  v42 = sub_254507518(v29, v41 + v40, type metadata accessor for AccessoryDetailsView);
  *(v41 + v40 + v28) = a2 & 1;
  MEMORY[0x28223BE20](v42);
  type metadata accessor for SelectableIconView();
  v97 = a2;
  sub_254504430(&qword_27F5FBCA0, type metadata accessor for SelectableIconView);
  sub_25454B7F4();
  v43 = *(v95 + 44);
  v93 = a1;
  v44 = (a1 + v43);
  v45 = *v44;
  v46 = *(v44 + 1);
  LOBYTE(v134) = v45;
  v135 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7C4();
  sub_254505BFC(a1, v29, v94);
  v47 = swift_allocObject();
  sub_254507518(v29, v47 + v40, v92);
  v94 = type metadata accessor for AccessoryDetailsIconPickerView();
  v95 = sub_2544AE1F0(&qword_27F5FBC78, &qword_27F5FBC80, &unk_25454F6C8);
  v48 = sub_254504430(&qword_27F5FC5F8, type metadata accessor for AccessoryDetailsIconPickerView);
  v49 = v98;
  v50 = v99;
  sub_25454B524();

  (*(v96 + 8))(v32, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v51 = v100;
  sub_25454B7A4();
  v52 = v105;
  sub_254549AA4();
  (*(v103 + 8))(v51, v104);
  v53 = v108;
  sub_254549F44();
  (*(v106 + 8))(v52, v107);
  v54 = sub_254549714();
  v56 = v55;
  (*(v109 + 8))(v53, v110);
  v134 = v54;
  v135 = v56;
  v130 = v50;
  v131 = v94;
  v132 = v95;
  v133 = v48;
  swift_getOpaqueTypeConformance2();
  sub_2544AECF0();
  v57 = v111;
  v58 = v102;
  sub_25454B424();

  (*(v101 + 8))(v49, v58);
  sub_25454AB84();
  v59 = v114;
  sub_25454B7C4();
  swift_getKeyPath();
  v60 = v116;
  sub_25454B924();

  sub_2544AE150(v59, &qword_27F5FC490, &qword_254550050);
  swift_getKeyPath();
  sub_25454B924();

  sub_2544AE150(v60, &qword_27F5FC488, &qword_254550048);
  v61 = v118;
  sub_25454BAE4();
  sub_25454B054();
  sub_2544AE1F0(&qword_27F5FC600, &qword_27F5FC5C8, &qword_2545502A8);
  v62 = v125;
  v63 = v121;
  sub_25454B2D4();
  (*(v119 + 8))(v61, v63);
  LOBYTE(v58) = v97;
  LOBYTE(v61) = ~v97;
  KeyPath = swift_getKeyPath();
  v65 = swift_allocObject();
  *(v65 + 16) = (v58 & 1) == 0;
  v66 = &v62[*(v120 + 36)];
  *v66 = KeyPath;
  v66[1] = sub_254508108;
  v66[2] = v65;
  if (v61)
  {
    v67 = sub_25454B644();
  }

  else
  {
    v67 = sub_25454B6A4();
  }

  v68 = v67;
  v69 = swift_getKeyPath();
  v70 = v62;
  v71 = v126;
  sub_2544B14E8(v70, v126, &qword_27F5FC5D0, &qword_2545502B0);
  v72 = (v71 + *(v123 + 36));
  *v72 = v69;
  v72[1] = v68;
  LOBYTE(v68) = sub_25454AF44();
  sub_25454A394();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = v71;
  v82 = v122;
  sub_2544B14E8(v81, v122, &qword_27F5FC5D8, &qword_2545502B8);
  v83 = v82 + *(v124 + 36);
  *v83 = v68;
  *(v83 + 8) = v74;
  *(v83 + 16) = v76;
  *(v83 + 24) = v78;
  *(v83 + 32) = v80;
  *(v83 + 40) = 0;
  v84 = v127;
  sub_2544B14E8(v82, v127, &qword_27F5FC5E0, &unk_2545502C0);
  v85 = v113;
  sub_2544AE240(v57, v113, &qword_27F5FC5F0, &qword_2545502D8);
  v86 = v128;
  sub_2544AE240(v84, v128, &qword_27F5FC5E0, &unk_2545502C0);
  v87 = v129;
  sub_2544AE240(v85, v129, &qword_27F5FC5F0, &qword_2545502D8);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC608, &qword_254550310);
  sub_2544AE240(v86, v87 + *(v88 + 48), &qword_27F5FC5E0, &unk_2545502C0);
  v89 = v87 + *(v88 + 64);
  *v89 = 0;
  *(v89 + 8) = 1;
  sub_2544AE150(v84, &qword_27F5FC5E0, &unk_2545502C0);
  sub_2544AE150(v57, &qword_27F5FC5F0, &qword_2545502D8);
  sub_2544AE150(v86, &qword_27F5FC5E0, &unk_2545502C0);
  sub_2544AE150(v85, &qword_27F5FC5F0, &qword_2545502D8);
}

uint64_t sub_2544E9324(uint64_t a1, int a2)
{
  v20 = a2;
  v3 = sub_25454A0A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_254549AB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  (*(v9 + 8))(v12, v8);
  v13 = sub_25454A094();
  (*(v4 + 8))(v7, v3);
  v14 = *(v13 + 16);

  if (v14 && (v20 & 1) != 0)
  {
    v15 = (a1 + *(type metadata accessor for AccessoryDetailsView(0) + 44));
    v16 = *v15;
    v17 = *(v15 + 1);
    v22 = v16;
    v23 = v17;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
    sub_25454B7B4();
  }
}

uint64_t sub_2544E9590@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v71) = a2;
  v73 = a1;
  v82 = a3;
  v81 = type metadata accessor for SelectableIconView();
  v3 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v72 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC610, &qword_254550368);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v63 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC488, &qword_254550048);
  v8 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v79 = &v63 - v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC490, &qword_254550050);
  v10 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCA8, &unk_254550680);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v86 = &v63 - v14;
  v85 = sub_25454A0A4();
  v88 = *(v85 - 8);
  v15 = *(v88 + 64);
  v16 = MEMORY[0x28223BE20](v85);
  v78 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v74 = &v63 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v68 = &v63 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v63 - v22;
  v24 = sub_254549AB4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v70 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v69 = &v63 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v67 = &v63 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v63 - v33;
  sub_25454BE14();
  v77 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  v64 = *(v25 + 8);
  v84 = v24;
  v64(v34, v24);
  v63 = v25 + 8;
  v35 = sub_25454A094();
  v36 = v88 + 8;
  v83 = *(v88 + 8);
  v37 = v85;
  v83(v23, v85);
  v88 = v36;
  v38 = *(v35 + 16);

  LOBYTE(v36) = (v38 != 0) & v71;
  v39 = sub_25454BE04();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  v41 = MEMORY[0x277D85700];
  *(v40 + 24) = MEMORY[0x277D85700];
  *(v40 + 32) = v36;
  v42 = sub_25454BE04();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v41;
  sub_25454B944();
  v71 = v89;
  v66 = v90;
  v65 = v91;
  v44 = v67;
  sub_25454B7A4();
  v45 = v68;
  sub_254549AA4();
  v46 = v64;
  v64(v44, v84);
  sub_25454A064();
  v47 = v83;
  v83(v45, v37);
  v48 = v75;
  sub_25454B7C4();
  swift_getKeyPath();
  v49 = v79;
  sub_25454B924();

  sub_2544AE150(v48, &qword_27F5FC490, &qword_254550050);
  swift_getKeyPath();
  sub_25454B924();

  sub_2544AE150(v49, &qword_27F5FC488, &qword_254550048);
  v50 = v69;
  sub_25454B7A4();
  v51 = v74;
  sub_254549AA4();
  v52 = v50;
  v53 = v84;
  v46(v52, v84);
  v80 = sub_254549FD4();
  v54 = v85;
  v47(v51, v85);
  v55 = v70;
  sub_25454B7A4();
  v56 = v78;
  sub_254549AA4();
  v46(v55, v53);
  LOBYTE(v42) = sub_254549F94();
  v83(v56, v54);
  v57 = v81;
  v58 = *(v81 + 24);
  v59 = sub_254549F04();
  v60 = v72;
  (*(*(v59 - 8) + 56))(&v72[v58], 1, 1, v59);
  *(v60 + v57[9]) = 0x4030000000000000;
  *(v60 + v57[10]) = 0x4048000000000000;
  v61 = v66;
  *v60 = v71;
  *(v60 + 8) = v61;
  *(v60 + 16) = v65;
  sub_2544B14E8(v87, v60 + v57[5], &qword_27F5FC610, &qword_254550368);
  sub_2544E2C78(v86, v60 + v58);
  *(v60 + v57[7]) = v80;
  *(v60 + v57[8]) = (v42 == 2) | v42 & 1;
  sub_254507518(v60, v82, type metadata accessor for SelectableIconView);
}

uint64_t sub_2544E9DF8@<X0>(char a1@<W2>, _BYTE *a2@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = a1 & 1;
  return result;
}

uint64_t sub_2544E9E94()
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_2544E9F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_2544E9FF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v70 = a2;
  v3 = type metadata accessor for AccessoryDetailsView(0);
  v63 = *(v3 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = v5;
  v65 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_254549744();
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v67 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v66 = &v56 - v11;
  MEMORY[0x28223BE20](v10);
  v71 = &v56 - v12;
  v13 = sub_25454A0A4();
  v60 = *(v13 - 8);
  v61 = v13;
  v14 = *(v60 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v59 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v56 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v56 - v20;
  v22 = sub_254549AB4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v58 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v56 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v56 - v30;
  sub_25454BE14();
  v62 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  v32 = *(v23 + 8);
  v56 = v23 + 8;
  v32(v31, v22);
  v57 = sub_25454A094();
  v33 = *(v60 + 8);
  v34 = v21;
  v35 = v61;
  v33(v34, v61);
  sub_25454B7A4();
  sub_254549AA4();
  v32(v29, v22);
  sub_254549F44();
  v33(v19, v35);
  v36 = v58;
  sub_25454B7A4();
  v37 = v59;
  sub_254549AA4();
  v32(v36, v22);
  v38 = sub_254549FD4();
  v33(v37, v35);
  v39 = a1;
  v40 = v65;
  sub_254505BFC(v39, v65, type metadata accessor for AccessoryDetailsView);
  v41 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v42 = swift_allocObject();
  sub_254507518(v40, v42 + v41, type metadata accessor for AccessoryDetailsView);
  v43 = type metadata accessor for AccessoryDetailsIconPickerView();
  v44 = *(v43 + 32);
  KeyPath = swift_getKeyPath();
  v46 = v70;
  *(v70 + v44) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC50, &qword_25454F680);
  swift_storeEnumTagMultiPayload();
  v47 = v57;
  v46[2] = v42;
  v46[3] = v38;
  *v46 = v47;
  v46[1] = sub_254507A3C;
  v49 = v68;
  v48 = v69;
  v50 = *(v68 + 16);
  v51 = v66;
  v52 = v71;
  v50(v66, v71, v69);
  v53 = *(v43 + 28);
  v50(v67, v51, v48);
  sub_25454B794();
  v54 = *(v49 + 8);
  v54(v51, v48);
  v54(v52, v48);
}

uint64_t sub_2544EA5DC(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v33 = a2;
  v2 = type metadata accessor for AccessoryDetailsView(0);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32 - v6;
  v8 = sub_254549AB4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC58, &qword_254550350);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v32 - v12;
  v14 = sub_254549744();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - v20;
  sub_2544AE240(v32, v13, &qword_27F5FBC58, &qword_254550350);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2544AE150(v13, &qword_27F5FBC58, &qword_254550350);
    v22 = v33;
  }

  else
  {
    (*(v15 + 32))(v21, v13, v14);
    (*(v15 + 16))(v19, v21, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
    v32 = v7;
    v23 = v33;
    sub_25454B7A4();
    v24 = sub_254549A94();
    sub_254549F54();
    v24(v36, 0);
    sub_25454B7B4();
    (*(v15 + 8))(v21, v14);
    v22 = v23;
    v7 = v32;
  }

  v25 = sub_25454BE44();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  v26 = v35;
  sub_254505BFC(v22, v35, type metadata accessor for AccessoryDetailsView);
  sub_25454BE14();
  v27 = sub_25454BE04();
  v28 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D85700];
  *(v29 + 16) = v27;
  *(v29 + 24) = v30;
  sub_254507518(v26, v29 + v28, type metadata accessor for AccessoryDetailsView);
  sub_2544B5138(0, 0, v7, &unk_254550360, v29);
}

uint64_t sub_2544EAA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_25454A0A4();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_254549AB4();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_25454BE14();
  v4[9] = sub_25454BE04();
  v12 = sub_25454BDB4();
  v4[10] = v12;
  v4[11] = v11;

  return MEMORY[0x2822009F8](sub_2544EAB90, v12, v11);
}

uint64_t sub_2544EAB90()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  (*(v2 + 8))(v1, v3);
  v6 = *(MEMORY[0x277D16BF0] + 4);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_2544EAC80;
  v8 = v0[5];

  return MEMORY[0x282170B58]();
}

uint64_t sub_2544EAC80()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 88);
  v7 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_254508034, v7, v6);
}

uint64_t sub_2544EAE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC0E0, &qword_25454FD20);
  v3 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v89 = &v82 - v4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC0C8, &qword_25454FD18);
  v5 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v82 - v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC590, &qword_2545501E8);
  v91 = *(v93 - 8);
  v7 = *(v91 + 64);
  MEMORY[0x28223BE20](v93);
  v88 = &v82 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC0C0, &qword_25454FD10);
  v9 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v87 = &v82 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC0B0, &qword_25454FD08);
  v99 = *(v11 - 8);
  v100 = v11;
  v12 = *(v99 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v85 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v84 = &v82 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC088, &qword_25454FCF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v94 = &v82 - v18;
  v96 = sub_25454A0A4();
  v19 = *(v96 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v96);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_254549AB4();
  v23 = *(v95 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v95);
  v27 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v82 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC068, &qword_25454FCD0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v98 = &v82 - v32;
  sub_25454BE14();
  v97 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  v33 = *(v23 + 8);
  v34 = v29;
  v35 = v95;
  v33(v34, v95);
  v82 = sub_25454A034();
  v37 = v36;
  (*(v19 + 8))(v22, v96);
  if (!v37)
  {
    goto LABEL_7;
  }

  v38 = v37;
  sub_25454B7A4();
  v39 = v94;
  sub_254549994();
  v33(v27, v35);
  v40 = sub_254549DD4();
  v41 = (*(*(v40 - 8) + 48))(v39, 1, v40);
  sub_2544AE150(v39, &qword_27F5FC088, &qword_25454FCF0);
  if (v41 != 1)
  {

LABEL_7:
    v80 = v98;
    (*(v99 + 56))(v98, 1, 1, v100);
    goto LABEL_8;
  }

  v42 = sub_25454AC14();
  v112 = 1;
  sub_2544EB830(a1, v82, v38, &v103);
  v119 = v107;
  v120 = v108;
  v121 = v109;
  v122 = v110;
  v115 = v103;
  v116 = v104;
  v117 = v105;
  v118 = v106;
  v123[0] = v103;
  v123[1] = v104;
  v123[2] = v105;
  v123[3] = v106;
  v123[4] = v107;
  v123[5] = v108;
  v123[6] = v109;
  v124 = v110;
  sub_2544AE240(&v115, v102, &qword_27F5FC598, &qword_2545501F0);
  sub_2544AE150(v123, &qword_27F5FC598, &qword_2545501F0);

  *&v111[71] = v119;
  *&v111[87] = v120;
  *&v111[103] = v121;
  *&v111[7] = v115;
  *&v111[23] = v116;
  *&v111[39] = v117;
  v111[119] = v122;
  *&v111[55] = v118;
  v43 = v112;
  sub_25454BA54();
  sub_25454A784();
  *&v113[55] = v106;
  *&v113[71] = v107;
  *&v113[87] = v108;
  *&v113[103] = v109;
  *&v113[7] = v103;
  *&v113[23] = v104;
  *&v113[39] = v105;
  v44 = [objc_opt_self() labelColor];
  v45 = sub_25454B5F4();
  v46 = sub_25454AF34();
  sub_25454A394();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v114 = 0;
  v55 = v89;
  v56 = &v89[*(v83 + 36)];
  v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC130, &unk_25454FD50) + 28);
  v58 = sub_25454B214();
  (*(*(v58 - 8) + 56))(v56 + v57, 1, 1, v58);
  *v56 = swift_getKeyPath();
  v59 = *&v111[80];
  *(v55 + 81) = *&v111[64];
  *(v55 + 97) = v59;
  *(v55 + 113) = *&v111[96];
  v60 = *&v111[16];
  *(v55 + 17) = *v111;
  *(v55 + 33) = v60;
  v61 = *&v111[48];
  *(v55 + 49) = *&v111[32];
  *(v55 + 65) = v61;
  v62 = *&v113[80];
  *(v55 + 201) = *&v113[64];
  *(v55 + 217) = v62;
  *(v55 + 233) = *&v113[96];
  v63 = *&v113[16];
  *(v55 + 137) = *v113;
  *(v55 + 153) = v63;
  v64 = *&v113[48];
  *(v55 + 169) = *&v113[32];
  *v55 = v42;
  *(v55 + 8) = 0;
  *(v55 + 16) = v43;
  *(v55 + 129) = *&v111[112];
  v65 = *&v113[111];
  *(v55 + 185) = v64;
  *(v55 + 248) = v65;
  *(v55 + 256) = v45;
  *(v55 + 264) = v46;
  *(v55 + 268) = *(v102 + 3);
  *(v55 + 265) = v102[0];
  *(v55 + 272) = v48;
  *(v55 + 280) = v50;
  *(v55 + 288) = v52;
  *(v55 + 296) = v54;
  *(v55 + 304) = 0;
  v66 = sub_25454AF94();
  KeyPath = swift_getKeyPath();
  v68 = v90;
  sub_2544B14E8(v55, v90, &qword_27F5FC0E0, &qword_25454FD20);
  v69 = (v68 + *(v92 + 36));
  *v69 = KeyPath;
  v69[1] = v66;
  sub_25454B084();
  sub_254505220();
  v70 = v88;
  sub_25454B2D4();
  sub_2544AE150(v68, &qword_27F5FC0C8, &qword_25454FD18);
  v71 = swift_getKeyPath();
  v72 = v87;
  (*(v91 + 32))(v87, v70, v93);
  v73 = (v72 + *(v86 + 36));
  *v73 = v71;
  v73[1] = 0xC020000000000000;
  v74 = swift_getKeyPath();
  v75 = v85;
  sub_2544B14E8(v72, v85, &qword_27F5FC0C0, &qword_25454FD10);
  v76 = v100;
  v77 = v75 + *(v100 + 36);
  *v77 = v74;
  *(v77 + 8) = 1;
  v78 = v84;
  sub_2544B14E8(v75, v84, &qword_27F5FC0B0, &qword_25454FD08);
  v79 = v78;
  v80 = v98;
  sub_2544B14E8(v79, v98, &qword_27F5FC0B0, &qword_25454FD08);
  (*(v99 + 56))(v80, 0, 1, v76);
LABEL_8:
  sub_2544B14E8(v80, v101, &qword_27F5FC068, &qword_25454FCD0);
}

double sub_2544EB830@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v64 = a2;
  *(&v64 + 1) = a3;
  v67 = sub_25454A0A4();
  v6 = *(v67 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v67);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v57 - v10;
  v66 = sub_254549AB4();
  v12 = *(v66 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v66);
  v60 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v57 - v16;
  sub_25454BE14();
  v65 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v62 = a1;
  sub_25454B7A4();
  sub_254549AA4();
  v18 = *(v12 + 8);
  v18(v17, v66);
  v19 = sub_25454A014();
  v21 = v20;
  v22 = *(v6 + 8);
  v63 = v6 + 8;
  v22(v11, v67);
  if (v21)
  {
    v59 = a4;
    *&v102 = v19;
    *(&v102 + 1) = v21;
    v57 = sub_2544AECF0();
    v23 = sub_25454B274();
    v58 = v24;
    v26 = v25;
    v28 = v27;
    v29 = sub_25454AF34();
    v30 = sub_25454AF54();
    sub_25454AF54();
    if (sub_25454AF54() != v29)
    {
      v30 = sub_25454AF54();
    }

    sub_25454A394();
    v93 = v26 & 1;
    v92 = 0;
    *&v88 = v23;
    *(&v88 + 1) = v58;
    LOBYTE(v89) = v26 & 1;
    *(&v89 + 1) = v28;
    LOBYTE(v90) = v30;
    *(&v90 + 1) = v31;
    *&v91[0] = v32;
    *(&v91[0] + 1) = v33;
    *&v91[1] = v34;
    BYTE8(v91[1]) = 0;
    v35 = v60;
    sub_25454B7A4();
    v36 = v61;
    sub_254549AA4();
    v18(v35, v66);
    v37 = sub_254549FB4();
    v39 = v38;
    v22(v36, v67);
    v40 = v64;
    if (v39)
    {
      if (__PAIR128__(v39, v37) == v64)
      {

LABEL_11:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
LABEL_13:
        v70 = v90;
        v71[0] = v91[0];
        *(v71 + 9) = *(v91 + 9);
        v72[2] = v90;
        v73[0] = v91[0];
        *(v73 + 9) = *(v91 + 9);
        v68 = v88;
        v69 = v89;
        v72[0] = v88;
        v72[1] = v89;
        *(v75 + 9) = *(v91 + 9);
        v74[2] = v90;
        v75[0] = v91[0];
        v74[0] = v88;
        v74[1] = v89;
        *&v76 = v46;
        *(&v76 + 1) = v47;
        *&v77 = v48;
        *(&v77 + 1) = v49;
        v81 = v88;
        v82 = v89;
        v86 = v76;
        v87 = v77;
        v84 = v91[0];
        v85 = v75[1];
        v83 = v90;
        sub_2544AE240(&v88, &v102, &qword_27F5FBF58, &qword_25454FB98);
        sub_2544AE240(v72, &v102, &qword_27F5FBF58, &qword_25454FB98);
        sub_2544C9BDC(v46, v47, v48, v49);
        sub_2544C9C20(v46, v47, v48, v49);
        v78[2] = v70;
        v79[0] = v71[0];
        *(v79 + 9) = *(v71 + 9);
        v78[0] = v68;
        v78[1] = v69;
        sub_2544AE150(v78, &qword_27F5FBF58, &qword_25454FB98);
        v80 = 0;
        v106 = v85;
        v107 = v86;
        v108 = v87;
        v102 = v81;
        v103 = v82;
        v104 = v83;
        v105 = v84;
        v109 = 0;
        sub_2544AE240(v74, &v94, &qword_27F5FC5B8, &qword_254550298);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC5A8, &qword_254550290);
        sub_2544AE1F0(&qword_27F5FC5B0, &qword_27F5FC5A8, &qword_254550290);
        sub_25454AD44();
        sub_2544C9C20(v46, v47, v48, v49);
        sub_2544AE150(v74, &qword_27F5FC5B8, &qword_254550298);
        sub_2544AE150(&v88, &qword_27F5FBF58, &qword_25454FB98);

        v106 = v98;
        v107 = v99;
        v108 = v100;
        v109 = v101;
        v102 = v94;
        v103 = v95;
        v104 = v96;
        v105 = v97;
        a4 = v59;
        goto LABEL_14;
      }

      v45 = sub_25454C334();

      if (v45)
      {
        goto LABEL_11;
      }
    }

    v102 = v40;

    v46 = sub_25454B274();
    v47 = v50;
    v49 = v51;
    v48 = v52 & 1;
    sub_2544A8F00(v46, v50, v52 & 1);

    goto LABEL_13;
  }

  v102 = v64;
  sub_2544AECF0();

  v41 = sub_25454B274();
  LOBYTE(v81) = v42 & 1;
  LOBYTE(v74[0]) = 1;
  *&v102 = v41;
  *(&v102 + 1) = v43;
  LOBYTE(v103) = v42 & 1;
  *(&v103 + 1) = v44;
  v109 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC5A8, &qword_254550290);
  sub_2544AE1F0(&qword_27F5FC5B0, &qword_27F5FC5A8, &qword_254550290);
  sub_25454AD44();

  v106 = v98;
  v107 = v99;
  v108 = v100;
  v109 = v101;
  v102 = v94;
  v103 = v95;
  v104 = v96;
  v105 = v97;
LABEL_14:
  v53 = v107;
  *(a4 + 64) = v106;
  *(a4 + 80) = v53;
  *(a4 + 96) = v108;
  *(a4 + 112) = v109;
  v54 = v103;
  *a4 = v102;
  *(a4 + 16) = v54;
  result = *&v104;
  v56 = v105;
  *(a4 + 32) = v104;
  *(a4 + 48) = v56;
  return result;
}

void *sub_2544EBF78(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v37 = v2;
  v3 = sub_25454A0A4();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v31 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v29[-v7];
  v9 = sub_254549AB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v29[-v15];
  sub_25454BE14();
  v36 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  v33 = *(v10 + 8);
  v33(v16, v9);
  v17 = sub_254549FA4();
  v19 = v18;
  v32 = v1;
  v20 = *(v34 + 8);
  v21 = v8;
  v22 = v35;
  v20(v21, v35);
  if (v19)
  {

    sub_254507580(v49);
  }

  else
  {
    v34 = sub_25454AB14();
    v46[0] = 1;
    sub_2544EC5C8(v17, v49);
    memcpy(v47, v49, sizeof(v47));
    memcpy(v48, v49, sizeof(v48));
    sub_2544AE240(v47, v43, &qword_27F5FC568, &qword_2545501B8);
    sub_2544AE150(v48, &qword_27F5FC568, &qword_2545501B8);
    memcpy(&v45[7], v47, 0x130uLL);
    v30 = v46[0];
    sub_25454B7A4();
    v23 = v31;
    sub_254549AA4();
    v33(v14, v9);
    v24 = sub_254549FC4();
    v20(v23, v22);
    if (v24 == 2)
    {
      sub_254507588(v46);
    }

    else
    {
      sub_25454B7A4();
      sub_254549AA4();
      v33(v14, v9);
      sub_254549FC4();
      v20(v23, v22);
      sub_25454BCF4();
      v25 = sub_25454AB14();
      v41[0] = 1;
      sub_2544ECBA4(v49);
      memcpy(v42, v49, 0x130uLL);
      memcpy(v43, v49, 0x130uLL);
      sub_2544AE240(v42, v46, &qword_27F5FC568, &qword_2545501B8);
      sub_2544AE150(v43, &qword_27F5FC568, &qword_2545501B8);

      memcpy(&v44[7], v42, 0x130uLL);
      v49[0] = v25;
      v49[1] = 0;
      LOBYTE(v49[2]) = v41[0];
      memcpy(&v49[2] + 1, v44, 0x137uLL);
      nullsub_1(v49);
      memcpy(v46, v49, sizeof(v46));
    }

    memcpy(v41, v46, sizeof(v41));
    v26 = v34;
    v39[0] = v34;
    v39[1] = 0;
    v27 = v30;
    LOBYTE(v39[2]) = v30;
    memcpy(&v39[2] + 1, v45, 0x137uLL);
    memcpy(v38, v39, 0x148uLL);
    memcpy(v40, v46, sizeof(v40));
    memcpy(&v38[328], v46, 0x148uLL);
    sub_2544AE240(v39, v49, &qword_27F5FC570, &qword_2545501C0);
    sub_2544AE240(v40, v49, &qword_27F5FC578, &qword_2545501C8);
    sub_2544AE150(v41, &qword_27F5FC578, &qword_2545501C8);
    v42[0] = v26;
    v42[1] = 0;
    LOBYTE(v42[2]) = v27;
    memcpy(&v42[2] + 1, v45, 0x137uLL);
    sub_2544AE150(v42, &qword_27F5FC570, &qword_2545501C0);

    memcpy(v43, v38, sizeof(v43));
    nullsub_1(v43);
    memcpy(v49, v43, 0x290uLL);
  }

  return memcpy(v37, v49, 0x290uLL);
}

uint64_t sub_2544EC5C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v3 = sub_2545493C4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB7C0, &qword_2545501E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = sub_25454AB74();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_25454BE14();
  v32 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v72 = sub_25454BCF4();
  v73 = v12;
  sub_2544AECF0();
  *&v33 = sub_25454B274();
  *(&v33 + 1) = v13;
  v15 = v14;
  v30 = v16;
  sub_25454BA64();
  sub_25454A784();
  v17 = v15 & 1;
  v96 = v15 & 1;
  sub_25454AB64();
  sub_25454AB54();
  *&v62 = a1;
  sub_2545493A4();
  sub_2544CDD1C();
  sub_254549114();
  sub_2544AE1F0(&qword_27F5FB7D0, &qword_27F5FB7C0, &qword_2545501E0);
  sub_25454C094();
  (*(v6 + 8))(v9, v5);
  sub_25454AB44();

  sub_25454AB54();
  sub_25454AB94();
  v18 = sub_25454B264();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_25454BA74();
  sub_25454A784();
  v22 &= 1u;
  v87 = v22;
  v25 = sub_25454B644();
  KeyPath = swift_getKeyPath();
  v53 = v33;
  LOBYTE(v54) = v17;
  *(&v54 + 1) = *v95;
  DWORD1(v54) = *&v95[3];
  v27 = v30;
  *(&v54 + 1) = v30;
  v59 = v92;
  v60 = v93;
  v61 = v94;
  v55 = v88;
  v56 = v89;
  v57 = v90;
  v58 = v91;
  v45[6] = v92;
  v45[7] = v93;
  v45[2] = v88;
  v45[3] = v89;
  v45[4] = v90;
  v45[5] = v91;
  v45[0] = v33;
  v45[1] = v54;
  *&v62 = v18;
  *(&v62 + 1) = v20;
  LOBYTE(v63) = v22;
  *(&v63 + 1) = *v86;
  DWORD1(v63) = *&v86[3];
  *(&v63 + 1) = v24;
  v68 = v50;
  v69 = v51;
  v70 = v52;
  v64 = v46;
  v65 = v47;
  v66 = v48;
  v67 = v49;
  *&v71 = KeyPath;
  *(&v71 + 1) = v25;
  v45[8] = v94;
  v45[9] = v62;
  v45[16] = v51;
  v45[17] = v52;
  v45[10] = v63;
  v45[11] = v46;
  v45[12] = v47;
  v45[13] = v48;
  v45[14] = v49;
  v45[15] = v50;
  v45[18] = v71;
  memcpy(v31, v45, 0x130uLL);
  v72 = v18;
  v73 = v20;
  v74 = v22;
  *v75 = *v86;
  *&v75[3] = *&v86[3];
  v76 = v24;
  v82 = v51;
  v83 = v52;
  v77 = v46;
  v78 = v47;
  v80 = v49;
  v81 = v50;
  v79 = v48;
  v84 = KeyPath;
  v85 = v25;
  sub_2544AE240(&v53, &v34, &qword_27F5FC580, &qword_2545501D0);
  sub_2544AE240(&v62, &v34, &qword_27F5FC588, &qword_2545501D8);
  sub_2544AE150(&v72, &qword_27F5FC588, &qword_2545501D8);
  v34 = v33;
  v35 = v17;
  *v36 = *v95;
  *&v36[3] = *&v95[3];
  v37 = v27;
  v42 = v92;
  v43 = v93;
  v44 = v94;
  v38 = v88;
  v39 = v89;
  v40 = v90;
  v41 = v91;
  sub_2544AE150(&v34, &qword_27F5FC580, &qword_2545501D0);
}

uint64_t sub_2544ECBA4@<X0>(void *a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454BCF4();
  sub_2544AECF0();
  v1 = sub_25454B274();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_25454BA64();
  sub_25454A784();
  v8 = v5 & 1;
  v78 = v5 & 1;

  v9 = sub_25454B274();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_25454BA74();
  sub_25454A784();
  v16 = v13 & 1;
  v77 = v13 & 1;
  v17 = sub_25454B644();
  KeyPath = swift_getKeyPath();
  *&v46 = v1;
  *(&v46 + 1) = v3;
  LOBYTE(v47) = v8;
  *(&v47 + 1) = v7;
  v52 = v43;
  v53 = v44;
  v54 = v45;
  v48 = v39;
  v49 = v40;
  v51 = v42;
  v50 = v41;
  __src[0] = v46;
  __src[1] = v47;
  __src[2] = v39;
  __src[3] = v40;
  __src[6] = v43;
  __src[7] = v44;
  __src[4] = v41;
  __src[5] = v42;
  *&v55 = v9;
  *(&v55 + 1) = v11;
  LOBYTE(v56) = v16;
  *(&v56 + 1) = v15;
  v61 = v36;
  v62 = v37;
  v63 = v38;
  v57 = v32;
  v58 = v33;
  v60 = v35;
  v59 = v34;
  *&v64 = KeyPath;
  *(&v64 + 1) = v17;
  __src[18] = v64;
  __src[8] = v45;
  __src[9] = v55;
  __src[12] = v33;
  __src[13] = v34;
  __src[10] = v56;
  __src[11] = v32;
  __src[16] = v37;
  __src[17] = v38;
  __src[14] = v35;
  __src[15] = v36;
  memcpy(a1, __src, 0x130uLL);
  v65[0] = v9;
  v65[1] = v11;
  v66 = v16;
  v67 = v15;
  v72 = v36;
  v73 = v37;
  v74 = v38;
  v68 = v32;
  v69 = v33;
  v71 = v35;
  v70 = v34;
  v75 = KeyPath;
  v76 = v17;
  sub_2544AE240(&v46, v21, &qword_27F5FC580, &qword_2545501D0);
  sub_2544AE240(&v55, v21, &qword_27F5FC588, &qword_2545501D8);
  sub_2544AE150(v65, &qword_27F5FC588, &qword_2545501D8);
  v21[0] = v1;
  v21[1] = v3;
  v22 = v8;
  v23 = v7;
  v28 = v43;
  v29 = v44;
  v30 = v45;
  v24 = v39;
  v25 = v40;
  v26 = v41;
  v27 = v42;
  sub_2544AE150(v21, &qword_27F5FC580, &qword_2545501D0);
}

uint64_t sub_2544ED094(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryDetailsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9[0] = sub_25454BCF4();
  v9[1] = v5;
  sub_254505BFC(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetailsView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_254507518(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for AccessoryDetailsView);
  sub_2544AECF0();
  sub_25454B814();
}

uint64_t sub_2544ED260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_254549AB4();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_25454A2E4();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_25454BE14();
  v4[9] = sub_25454BE04();
  v12 = sub_25454BDB4();
  v4[10] = v12;
  v4[11] = v11;

  return MEMORY[0x2822009F8](sub_2544ED3B0, v12, v11);
}

uint64_t sub_2544ED3B0()
{
  v17 = v0;
  v1 = v0[8];
  sub_25454A2A4();
  v2 = sub_25454A2C4();
  v3 = sub_25454BF94();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_254502AAC(0xD000000000000022, 0x80000002545555B0, &v16);
    _os_log_impl(&dword_2544A5000, v2, v3, "%s - User tapped Identify button.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x259C0FDF0](v9, -1, -1);
    MEMORY[0x259C0FDF0](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v10 = v0[5];
  v11 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  v12 = *(MEMORY[0x277D15DE8] + 4);
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_2544ED570;
  v14 = v0[5];

  return MEMORY[0x28216FC30]();
}

uint64_t sub_2544ED570()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 88);
  v7 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_2544ED6F4, v7, v6);
}

uint64_t sub_2544ED6F4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2544ED768@<X0>(int a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v258 = a2;
  v249 = a3;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC460, &qword_254550020);
  v246 = *(v247 - 8);
  v4 = *(v246 + 64);
  MEMORY[0x28223BE20](v247);
  v230 = v192 - v5;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC468, &qword_254550028);
  v6 = *(*(v225 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v225);
  v229 = v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v228 = v192 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v227 = v192 - v12;
  MEMORY[0x28223BE20](v11);
  v226 = v192 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC470, &qword_254550030);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v248 = v192 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v251 = v192 - v18;
  v197 = sub_25454AAC4();
  v196 = *(v197 - 8);
  v19 = *(v196 + 64);
  MEMORY[0x28223BE20](v197);
  v195 = v192 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC200, &qword_25454FDC0);
  v21 = *(*(v222 - 8) + 64);
  MEMORY[0x28223BE20](v222);
  v194 = v192 - v22;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC360, &qword_25454FEE8);
  v199 = *(v223 - 8);
  v23 = *(v199 + 64);
  MEMORY[0x28223BE20](v223);
  v198 = v192 - v24;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC368, &qword_25454FEF0);
  v25 = *(*(v217 - 8) + 64);
  MEMORY[0x28223BE20](v217);
  v219 = v192 - v26;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1E8, &qword_25454FDA8);
  v27 = *(*(v218 - 8) + 64);
  MEMORY[0x28223BE20](v218);
  v200 = v192 - v28;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1D8, &qword_25454FDA0);
  v238 = *(v239 - 8);
  v29 = *(v238 + 64);
  v30 = MEMORY[0x28223BE20](v239);
  v220 = v192 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v221 = v192 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1C0, &qword_25454FD98);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v245 = v192 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v257 = v192 - v37;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC478, &qword_254550038);
  v234 = *(v235 - 8);
  v38 = *(v234 + 64);
  MEMORY[0x28223BE20](v235);
  v233 = v192 - v39;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC28, &unk_25454F660);
  v211 = *(v212 - 8);
  v40 = *(v211 + 64);
  MEMORY[0x28223BE20](v212);
  v210 = v192 - v41;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC480, &qword_254550040);
  v214 = *(v215 - 8);
  v42 = *(v214 + 64);
  v43 = MEMORY[0x28223BE20](v215);
  v213 = v192 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v232 = v192 - v45;
  v207 = sub_25454A774();
  v206 = *(v207 - 8);
  v46 = *(v206 + 64);
  MEMORY[0x28223BE20](v207);
  v205 = v192 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC488, &qword_254550048);
  v48 = *(*(v241 - 8) + 64);
  MEMORY[0x28223BE20](v241);
  v240 = v192 - v49;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC490, &qword_254550050);
  v50 = *(*(v237 - 8) + 64);
  MEMORY[0x28223BE20](v237);
  v236 = v192 - v51;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC498, &qword_254550058);
  v203 = *(v204 - 8);
  v52 = *(v203 + 64);
  MEMORY[0x28223BE20](v204);
  v202 = v192 - v53;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC4A0, &qword_254550060);
  v208 = *(v209 - 8);
  v54 = *(v208 + 64);
  v55 = MEMORY[0x28223BE20](v209);
  v231 = v192 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v250 = v192 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC4A8, &qword_254550068);
  v59 = *(*(v58 - 8) + 64);
  v60 = MEMORY[0x28223BE20](v58 - 8);
  v254 = v192 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v256 = v192 - v62;
  v252 = type metadata accessor for AccessoryDetailsView(0);
  v63 = *(v252 - 8);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v252);
  v65 = v192 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC4B0, &qword_254550070);
  v243 = *(v244 - 8);
  v66 = *(v243 + 64);
  v67 = MEMORY[0x28223BE20](v244);
  v253 = v192 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v255 = v192 - v69;
  sub_25454BE14();
  v242 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v70 = v258;
  sub_254505BFC(v258, v192 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetailsView);
  v71 = *(v63 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = a1 & 1;
  v73 = sub_254507518(v192 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0), v72 + ((v71 + 17) & ~v71), type metadata accessor for AccessoryDetailsView);
  v201 = v64;
  MEMORY[0x28223BE20](v73);
  v216 = a1 & 1;
  LOBYTE(v190) = a1 & 1;
  v191 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC4B8, &qword_254550078);
  sub_2544AE1F0(&qword_27F5FC4C0, &qword_27F5FC4B8, &qword_254550078);
  sub_25454B7F4();
  v74 = v252;
  v75 = v70 + *(v252 + 36);
  v76 = *v75;
  v77 = *(v75 + 8);
  LOBYTE(v264) = v76;
  *(&v264 + 1) = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  v224 = a1;
  if (v260 == 1)
  {
    v193 = ~v71;
    v192[3] = sub_25454AB84();
    v192[2] = v78;
    v192[1] = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
    v80 = v236;
    v81 = v258;
    sub_25454B7C4();
    swift_getKeyPath();
    v82 = v240;
    sub_25454B924();

    sub_2544AE150(v80, &qword_27F5FC490, &qword_254550050);
    swift_getKeyPath();
    sub_25454B924();

    v83 = sub_2544AE150(v82, &qword_27F5FC488, &qword_254550048);
    v260 = v264;
    v261 = v265;
    v262 = v266;
    MEMORY[0x28223BE20](v83);
    v84 = v81;
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC4D8, &qword_254550150);
    v190 = sub_2544AE1F0(&qword_27F5FC4E0, &qword_27F5FC4D8, &qword_254550150);
    v188 = v85;
    v189 = MEMORY[0x277D837E0];
    v86 = v202;
    sub_25454B894();
    v87 = v205;
    sub_25454A764();
    sub_2544AE1F0(&qword_27F5FC4E8, &qword_27F5FC498, &qword_254550058);
    v88 = v204;
    v89 = v207;
    sub_25454B324();
    (*(v206 + 8))(v87, v89);
    (*(v203 + 8))(v86, v88);
    sub_254505BFC(v84, v65, type metadata accessor for AccessoryDetailsView);
    v90 = (v71 + 16) & v193;
    v91 = swift_allocObject();
    sub_254507518(v65, v91 + v90, type metadata accessor for AccessoryDetailsView);
    v92 = v210;
    sub_25454B7F4();
    v93 = v84 + *(v252 + 40);
    v94 = *v93;
    v95 = *(v93 + 8);
    LOBYTE(v260) = v94;
    *(&v260 + 1) = v95;
    sub_25454B7C4();
    LODWORD(v207) = v265;
    sub_254505BFC(v84, v65, type metadata accessor for AccessoryDetailsView);
    v96 = swift_allocObject();
    sub_254507518(v65, v96 + v90, type metadata accessor for AccessoryDetailsView);
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC4F0, &qword_254550158);
    v189 = sub_2544AE1F0(&qword_27F5FBC20, &qword_27F5FBC28, &unk_25454F660);
    v190 = sub_2544AE1F0(&qword_27F5FC4F8, &qword_27F5FC4F0, &qword_254550158);
    v188 = v97;
    v98 = v232;
    v99 = v212;
    sub_25454B524();

    (*(v211 + 8))(v92, v99);
    v100 = v208;
    v101 = *(v208 + 16);
    v102 = v231;
    v103 = v209;
    v101(v231, v250, v209);
    v104 = v214;
    v105 = *(v214 + 16);
    v106 = v213;
    v107 = v98;
    v108 = v215;
    v105(v213, v107, v215);
    v101(v233, v102, v103);
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC500, &qword_254550160);
    v110 = v233;
    v105(&v233[*(v109 + 48)], v106, v108);
    v111 = *(v104 + 8);
    v111(v232, v108);
    v112 = *(v100 + 8);
    v112(v250, v103);
    v113 = v108;
    v74 = v252;
    v111(v106, v113);
    v112(v231, v103);
    v115 = v256;
    sub_2544B14E8(v110, v256, &qword_27F5FC478, &qword_254550038);
    v114 = 0;
  }

  else
  {
    v114 = 1;
    v115 = v256;
  }

  v116 = 1;
  (*(v234 + 56))(v115, v114, 1, v235);
  v117 = *(v74 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v118 = v266;
  v119 = v267;
  __swift_project_boxed_opaque_existential_1(&v264, v266);
  LOBYTE(v118) = (*(v119 + 184))(v118, v119);
  __swift_destroy_boxed_opaque_existential_0(&v264);
  if (v118)
  {
    v120 = sub_25454BCF4();
    v122 = v121;
    sub_25454B7A4();
    v123 = v74;
    v124 = v266;
    v125 = v267;
    __swift_project_boxed_opaque_existential_1(&v264, v266);
    v126 = (*(v125 + 200))(v124, v125);
    v127 = *(v123 + 28);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_25454B7A4();
    v129 = v262;
    v130 = v263;
    __swift_project_boxed_opaque_existential_1(&v260, v262);
    v259 = (*(v130 + 192))(v129, v130);
    v131 = sub_25454C304();
    v133 = v132;
    __swift_destroy_boxed_opaque_existential_0(&v260);
    v134 = sub_25454B604();
    v135 = v134;
    if (Strong)
    {
      v136 = swift_allocObject();
      *(v136 + 16) = Strong;
      *(v136 + 24) = v126;
      MEMORY[0x28223BE20](v136);
      v250 = v126;
      v192[-6] = v120;
      v192[-5] = v122;
      LOBYTE(v188) = 0;
      v189 = v131;
      v190 = v133;
      v191 = v135;
      v137 = Strong;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC340, &qword_25454FED0);
      v252 = v135;
      sub_2544AE1F0(&qword_27F5FC348, &qword_27F5FC340, &qword_25454FED0);
      v138 = v200;
      sub_25454B7F4();

      KeyPath = swift_getKeyPath();
      v140 = swift_allocObject();
      *(v140 + 16) = 0;
      v141 = (v138 + *(v218 + 36));
      *v141 = KeyPath;
      v141[1] = sub_254508108;
      v141[2] = v140;
      sub_2544AE240(v138, v219, &qword_27F5FC1E8, &qword_25454FDA8);
      swift_storeEnumTagMultiPayload();
      sub_254505964();
      v142 = sub_254505A48();
      *&v260 = v222;
      *(&v260 + 1) = v142;
      swift_getOpaqueTypeConformance2();
      v143 = v220;
      sub_25454AD44();

      sub_2544AE150(v138, &qword_27F5FC1E8, &qword_25454FDA8);
    }

    else
    {
      *&v260 = v126;
      MEMORY[0x28223BE20](v134);
      v192[-6] = v131;
      v192[-5] = v133;
      v188 = v120;
      v189 = v122;
      LOBYTE(v190) = 0;
      v191 = v135;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC300, &qword_25454FEB8);
      sub_254506100();
      v144 = v194;
      sub_25454A674();

      v145 = swift_getKeyPath();
      v146 = swift_allocObject();
      *(v146 + 16) = 0;
      v147 = v222;
      v148 = (v144 + *(v222 + 36));
      *v148 = v145;
      v148[1] = sub_254508108;
      v148[2] = v146;
      v149 = v196;
      v150 = v195;
      v151 = v197;
      (*(v196 + 104))(v195, *MEMORY[0x277CDDDC0], v197);
      v152 = sub_254505A48();
      v153 = v198;
      sub_25454B4E4();
      (*(v149 + 8))(v150, v151);
      sub_2544AE150(v144, &qword_27F5FC200, &qword_25454FDC0);
      v154 = v199;
      v155 = v223;
      (*(v199 + 16))(v219, v153, v223);
      swift_storeEnumTagMultiPayload();
      sub_254505964();
      *&v260 = v147;
      *(&v260 + 1) = v152;
      swift_getOpaqueTypeConformance2();
      v143 = v220;
      sub_25454AD44();

      (*(v154 + 8))(v153, v155);
    }

    v156 = v143;
    v157 = v221;
    sub_2544B14E8(v156, v221, &qword_27F5FC1D8, &qword_25454FDA0);
    __swift_destroy_boxed_opaque_existential_0(&v264);
    sub_2544B14E8(v157, v257, &qword_27F5FC1D8, &qword_25454FDA0);
    v116 = 0;
  }

  v158 = 1;
  (*(v238 + 56))(v257, v116, 1, v239);
  if ((sub_2544F1A00() & 1) == 0)
  {
    v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
    v159 = v236;
    sub_25454B7C4();
    swift_getKeyPath();
    v160 = v240;
    sub_25454B924();

    sub_2544AE150(v159, &qword_27F5FC490, &qword_254550050);
    swift_getKeyPath();
    sub_25454B924();

    sub_2544AE150(v160, &qword_27F5FC488, &qword_254550048);
    MEMORY[0x28223BE20](v264);
    v161 = v216;
    LOBYTE(v190) = v216;
    v162 = v226;
    sub_25454B8B4();
    v163 = swift_getKeyPath();
    v164 = swift_allocObject();
    v165 = (v224 & 1) == 0;
    *(v164 + 16) = v165;
    v166 = v225;
    v167 = (v162 + *(v225 + 36));
    *v167 = v163;
    v167[1] = sub_254508108;
    v167[2] = v164;
    sub_25454B7C4();
    swift_getKeyPath();
    sub_25454B924();

    sub_2544AE150(v159, &qword_27F5FC490, &qword_254550050);
    swift_getKeyPath();
    sub_25454B924();

    sub_2544AE150(v160, &qword_27F5FC488, &qword_254550048);
    MEMORY[0x28223BE20](v264);
    LOBYTE(v190) = v161;
    v168 = v227;
    sub_25454B8B4();
    v169 = swift_getKeyPath();
    v170 = swift_allocObject();
    *(v170 + 16) = v165;
    v171 = (v168 + *(v166 + 36));
    *v171 = v169;
    v171[1] = sub_254508108;
    v171[2] = v170;
    v172 = v228;
    sub_2544AE240(v162, v228, &qword_27F5FC468, &qword_254550028);
    v173 = v229;
    sub_2544AE240(v168, v229, &qword_27F5FC468, &qword_254550028);
    v174 = v230;
    sub_2544AE240(v172, v230, &qword_27F5FC468, &qword_254550028);
    v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC4C8, &qword_254550110);
    sub_2544AE240(v173, v174 + *(v175 + 48), &qword_27F5FC468, &qword_254550028);
    sub_2544AE150(v168, &qword_27F5FC468, &qword_254550028);
    sub_2544AE150(v162, &qword_27F5FC468, &qword_254550028);
    sub_2544AE150(v173, &qword_27F5FC468, &qword_254550028);
    sub_2544AE150(v172, &qword_27F5FC468, &qword_254550028);
    sub_2544B14E8(v174, v251, &qword_27F5FC460, &qword_254550020);
    v158 = 0;
  }

  v176 = v251;
  (*(v246 + 56))(v251, v158, 1, v247);
  v177 = v243;
  v178 = *(v243 + 16);
  v179 = v253;
  v180 = v244;
  v178(v253, v255, v244);
  v181 = v254;
  sub_2544AE240(v256, v254, &qword_27F5FC4A8, &qword_254550068);
  v182 = v245;
  sub_2544AE240(v257, v245, &qword_27F5FC1C0, &qword_25454FD98);
  v183 = v248;
  sub_2544AE240(v176, v248, &qword_27F5FC470, &qword_254550030);
  v184 = v249;
  v178(v249, v179, v180);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC4D0, &qword_254550118);
  sub_2544AE240(v181, &v184[v185[12]], &qword_27F5FC4A8, &qword_254550068);
  sub_2544AE240(v182, &v184[v185[16]], &qword_27F5FC1C0, &qword_25454FD98);
  sub_2544AE240(v183, &v184[v185[20]], &qword_27F5FC470, &qword_254550030);
  sub_2544AE150(v176, &qword_27F5FC470, &qword_254550030);
  sub_2544AE150(v257, &qword_27F5FC1C0, &qword_25454FD98);
  sub_2544AE150(v256, &qword_27F5FC4A8, &qword_254550068);
  v186 = *(v177 + 8);
  v186(v255, v180);
  sub_2544AE150(v183, &qword_27F5FC470, &qword_254550030);
  sub_2544AE150(v182, &qword_27F5FC1C0, &qword_25454FD98);
  sub_2544AE150(v254, &qword_27F5FC4A8, &qword_254550068);
  v186(v253, v180);
}

uint64_t sub_2544EF7DC(char a1)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    MEMORY[0x28223BE20](isCurrentExecutor);
    sub_25454BA94();
    sub_25454A624();
  }

  else
  {
  }
}

uint64_t sub_2544EF910(uint64_t a1)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2544EFA78();
  v2 = type metadata accessor for AccessoryDetailsView(0);
  v3 = (a1 + *(v2 + 84));
  v8 = *v3;
  v9 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC540, &qword_2545501A0);
  sub_25454B7B4();
  v4 = (a1 + *(v2 + 36));
  v5 = *v4;
  v6 = *(v4 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  sub_25454B7B4();
}

void *sub_2544EFA78()
{
  v1 = v0;
  v62 = type metadata accessor for AccessoryDetailsView.RoomSuggestion(0);
  v61 = *(v62 - 8);
  v2 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v60 = v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_254549074();
  v69 = *(v59 - 8);
  v4 = v69[8];
  MEMORY[0x28223BE20](v59);
  v58 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25454A0A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_254549AB4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for AccessoryDetailsView(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v17 = v78;
  v18 = v79;
  __swift_project_boxed_opaque_existential_1(&v76, v78);
  v19 = (*(v18 + 24))(v17, v18);
  __swift_destroy_boxed_opaque_existential_0(&v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  (*(v12 + 8))(v15, v11);
  v20 = sub_254549F34();
  (*(v7 + 8))(v10, v6);
  v71 = v1;
  v21 = 0;
  v66 = sub_2544E324C(sub_2545074A0, v70, v20);

  v65 = *(v19 + 16);
  if (v65)
  {
    v23 = 0;
    v24 = *MEMORY[0x277CBE768];
    v63 = *MEMORY[0x277CBE758];
    v64 = v24;
    v57[1] = "HFAccessoryDetailsMultipleRooms";
    v57[0] = v69 + 1;
    v25 = (v19 + 40);
    v69 = MEMORY[0x277D84F90];
    v26 = MEMORY[0x277D837D0];
    v27 = v60;
    while (v23 < *(v19 + 16))
    {
      v28 = *v25;
      v68 = *(v25 - 1);
      v76 = v68;
      v77 = v28;
      v29 = sub_2544AECF0();

      v30 = sub_25454C064();
      if (v31)
      {
        v67 = v21;
        v32 = v19;
        v76 = v30;
        v77 = v31;
        sub_25454C064();
        v34 = v33;

        if (v34)
        {
          v35 = sub_25454BCC4();
          v37 = v36;

          v76 = v35;
          v77 = v37;
          sub_25454BCF4();
          v38 = sub_25454BCC4();
          v40 = v39;

          v74 = v38;
          v75 = v40;
          v72 = 0;
          v73 = 0xE000000000000000;
          v55 = v29;
          v56 = v29;
          v54[0] = v26;
          v54[1] = v29;
          v41 = sub_25454C084();
          v43 = v42;

          v27 = v60;

          v76 = v41;
          v77 = v43;
          v44 = v58;
          sub_254549064();
          v45 = sub_25454C074();
          v47 = v46;
          (*v57[0])(v44, v59);
        }

        else
        {
          v45 = 0;
          v47 = 0xE000000000000000;
        }

        v19 = v32;
        v21 = v67;
      }

      else
      {
        v45 = 0;
        v47 = 0xE000000000000000;
      }

      v76 = v45;
      v77 = v47;
      MEMORY[0x28223BE20](v30);
      v55 = &v76;
      v48 = sub_254504AD4(sub_2545074C0, v54, v66);

      if (v48)
      {

        v26 = MEMORY[0x277D837D0];
      }

      else
      {
        sub_254549384();
        v49 = (v27 + *(v62 + 20));
        *v49 = v68;
        v49[1] = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = MEMORY[0x277D837D0];
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v69 = sub_2544D38C8(0, v69[2] + 1, 1, v69);
        }

        v52 = v69[2];
        v51 = v69[3];
        if (v52 >= v51 >> 1)
        {
          v69 = sub_2544D38C8(v51 > 1, v52 + 1, 1, v69);
        }

        v53 = v69;
        v69[2] = v52 + 1;
        result = sub_254507518(v27, v53 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v52, type metadata accessor for AccessoryDetailsView.RoomSuggestion);
        if (v52 >= 2)
        {
          goto LABEL_20;
        }
      }

      ++v23;
      v25 += 2;
      if (v65 == v23)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v69 = MEMORY[0x277D84F90];
LABEL_20:

    return v69;
  }

  return result;
}

double sub_2544F0154@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_25454AB14();
  v19 = 1;
  sub_2544F02E4(a1 & 1, a2, &v12);
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v20 = v12;
  v21 = v13;
  v27 = v17;
  v26[2] = v14;
  v26[3] = v15;
  v26[4] = v16;
  v26[0] = v12;
  v26[1] = v13;
  sub_2544AE240(&v20, &v11, &qword_27F5FC560, &qword_2545501B0);
  sub_2544AE150(v26, &qword_27F5FC560, &qword_2545501B0);

  *&v18[71] = v24;
  *&v18[55] = v23;
  *&v18[39] = v22;
  *&v18[23] = v21;
  *&v18[7] = v20;
  v7 = *&v18[48];
  *(a3 + 49) = *&v18[32];
  *(a3 + 65) = v7;
  *(a3 + 81) = *&v18[64];
  result = *v18;
  v9 = *&v18[16];
  *(a3 + 17) = *v18;
  v18[87] = v25;
  v10 = v19;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 97) = *&v18[80];
  *(a3 + 33) = v9;
  return result;
}

uint64_t sub_2544F02E4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *&v51 = a2;
  v49 = a3;
  *&v55 = sub_25454A0A4();
  v4 = *(v55 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v55);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_254549AB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v56 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v63 = sub_25454BCF4();
  *(&v63 + 1) = v13;
  v47[2] = sub_2544AECF0();
  v14 = sub_25454B274();
  v16 = v15;
  v18 = v17;
  v50 = v4;
  if (a1)
  {
    sub_25454B6A4();
  }

  else
  {
    sub_25454B644();
  }

  v19 = sub_25454B1D4();
  v52 = v20;
  v53 = v19;
  v48 = v21;
  v54 = v22;

  sub_2544C9C64(v14, v16, v18 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  v23 = *(v9 + 8);
  v47[1] = v9 + 8;
  v23(v12, v8);
  v24 = sub_254549FF4();
  v25 = *(v50 + 8);
  v26 = v55;
  v25(v7, v55);
  if (v24)
  {
    *&v63 = sub_25454BCF4();
    *(&v63 + 1) = v27;
    v58 = sub_25454B274();
    v59 = v28;
    v60 = v29 & 1;
    v61 = v30;
    v62 = 0;
  }

  else
  {
    sub_25454B7A4();
    sub_254549AA4();
    v23(v12, v8);
    v31 = sub_25454A084();
    v33 = v32;
    v25(v7, v26);
    *&v63 = v31;
    *(&v63 + 1) = v33;
    v58 = sub_25454B274();
    v59 = v35;
    v60 = v34 & 1;
    v61 = v36;
    v62 = 1;
  }

  sub_25454AD44();
  v37 = v63;
  v38 = v64;
  v39 = v65;
  v51 = v63;
  v55 = v64;
  v40 = v48 & 1;
  LOBYTE(v63) = v48 & 1;
  LOBYTE(v58) = 1;
  v57 = v65;
  v42 = v52;
  v41 = v53;
  v43 = v49;
  *v49 = v53;
  v43[1] = v42;
  *(v43 + 16) = v40;
  v43[3] = v54;
  v43[4] = 0;
  *(v43 + 40) = 1;
  *(v43 + 3) = v37;
  *(v43 + 4) = v38;
  *(v43 + 80) = v39;
  sub_2544A8F00(v41, v42, v40);

  v44 = v51;
  v45 = v55;
  sub_25450740C(v51, *(&v51 + 1), v55);
  sub_254507448(v44, *(&v44 + 1), v45);
  sub_2544C9C64(v41, v42, v40);
}

uint64_t sub_2544F07A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC510, &qword_254550180);
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v50 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = v41 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC518, &qword_254550188);
  v42 = *(v44 - 8);
  v8 = *(v42 + 64);
  v9 = MEMORY[0x28223BE20](v44);
  v43 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = v41 - v11;
  v12 = sub_25454A0A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_254549AB4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v41[1] = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  (*(v18 + 8))(v21, v17);
  v22 = sub_254549F34();
  (*(v13 + 8))(v16, v12);
  v55 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC520, &qword_254550190);
  sub_254549394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC528, &qword_254550198);
  sub_2544AE1F0(&qword_27F5FC530, &qword_27F5FC520, &qword_254550190);
  v51 = MEMORY[0x277CE0BD8];
  v52 = MEMORY[0x277D837D0];
  v53 = MEMORY[0x277CE0BC8];
  v54 = MEMORY[0x277D837E0];
  swift_getOpaqueTypeConformance2();
  sub_254504430(&qword_27F5FC538, MEMORY[0x277D15488]);
  v23 = v48;
  sub_25454B984();
  v24 = (a1 + *(type metadata accessor for AccessoryDetailsView(0) + 84));
  v26 = *v24;
  v25 = v24[1];
  v51 = v26;
  v52 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC540, &qword_2545501A0);
  sub_25454B7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD0, &qword_25454F728);
  sub_2544AE1F0(&qword_27F5FC548, &qword_27F5FBCD0, &qword_25454F728);
  sub_254504430(&qword_27F5FC550, type metadata accessor for AccessoryDetailsView.RoomSuggestion);
  v27 = v49;
  sub_25454B984();
  v28 = v42;
  v29 = v43;
  v30 = *(v42 + 16);
  v31 = v44;
  v30(v43, v23, v44);
  v33 = v46;
  v32 = v47;
  v34 = *(v46 + 16);
  v34(v50, v27, v47);
  v35 = v45;
  v30(v45, v29, v31);
  v36 = &v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC558, &qword_2545501A8) + 48)];
  v37 = v50;
  v34(v36, v50, v32);
  v38 = *(v33 + 8);
  v38(v49, v32);
  v39 = *(v28 + 8);
  v39(v48, v31);
  v38(v37, v32);
  v39(v29, v31);
}

uint64_t sub_2544F0E1C@<X0>(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_254549774();
  sub_2544AECF0();
  v2 = sub_25454B274();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_254549774();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = 1;
}

uint64_t sub_2544F0F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25454AB74();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454AB64();
  sub_25454AB54();
  v6 = (a1 + *(type metadata accessor for AccessoryDetailsView.RoomSuggestion(0) + 20));
  v8 = *v6;
  v7 = v6[1];
  sub_25454AB44();
  sub_25454AB54();
  sub_25454BCF4();
  sub_25454AB44();

  sub_25454AB54();
  sub_25454AB94();
  *a2 = sub_25454B264();
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = v8;
  *(a2 + 40) = v7;
  *(a2 + 48) = 1;
}

uint64_t sub_2544F10E0(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryDetailsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(v2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v7 = v19;
  v8 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  sub_254505BFC(a1, &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AccessoryDetailsView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_254507518(v5, v10 + v9, type metadata accessor for AccessoryDetailsView);
  (*(v8 + 16))(sub_254507008, v10, v7, v8);

  __swift_destroy_boxed_opaque_existential_0(v18);
  v11 = a1 + *(v2 + 40);
  v13 = *(v11 + 8);
  LOBYTE(v18[0]) = *v11;
  v12 = v18[0];
  v18[1] = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  v15[16] = v12;
  v16 = v13;
  v15[15] = (v17 & 1) == 0;
  sub_25454B7B4();
}

uint64_t sub_2544F1358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryDetailsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0) - 8) + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v22 - v9;
  if (v8)
  {
    v11 = [v8 name];
    v12 = sub_25454BC84();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = sub_25454BE44();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  sub_254505BFC(a2, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetailsView);
  sub_25454BE14();
  v16 = sub_25454BE04();
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  sub_254507518(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for AccessoryDetailsView);
  v20 = (v18 + ((v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v12;
  v20[1] = v14;
  sub_2544B5138(0, 0, v10, &unk_254550178, v18);
}

uint64_t sub_2544F1598@<X0>(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454BCF4();
  sub_2544AECF0();
  v2 = sub_25454B274();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_2544F1688()
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC508, &qword_254550168);
  sub_2544AECF0();
  swift_getOpaqueTypeConformance2();
  sub_25454A724();
}

uint64_t sub_2544F17CC()
{
  v0 = sub_25454AAC4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(type metadata accessor for AccessoryDetailsView(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v6 = v12;
  v7 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v10[2] = (*(v7 + 8))(v6, v7);
  v10[0] = sub_25454BCF4();
  v10[1] = v8;
  (*(v1 + 104))(v4, *MEMORY[0x277CDDDC0], v0);
  sub_2544AECF0();
  sub_25454B454();
  (*(v1 + 8))(v4, v0);

  __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_2544F1A00()
{
  v0 = sub_2545497B4();
  v30 = *(v0 - 8);
  v31 = v0;
  v1 = *(v30 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - v5;
  v7 = sub_2545497D4();
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_254549AB4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_254549634();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v20, *MEMORY[0x277D15278], v16);
  sub_254504430(&qword_27F5FC2A0, MEMORY[0x277D15298]);
  v21 = sub_254549564();
  (*(v17 + 8))(v20, v16);
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
    sub_25454B7A4();
    sub_254549944();
    (*(v12 + 8))(v15, v11);
    sub_2545497C4();
    (*(v28 + 8))(v10, v29);
    v23 = v30;
    v22 = v31;
    (*(v30 + 104))(v4, *MEMORY[0x277D154B8], v31);
    v24 = sub_2545497A4();
    v25 = *(v23 + 8);
    v25(v4, v22);
    v25(v6, v22);
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_2544F1DA4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454BCF4();
  sub_2544AECF0();
  v4 = sub_25454B274();
  v6 = v5;
  v8 = v7;
  if (a1)
  {
    sub_25454B6A4();
  }

  else
  {
    sub_25454B644();
  }

  v9 = sub_25454B1D4();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_2544C9C64(v4, v6, v8 & 1);

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_2544F1F04@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454BCF4();
  sub_2544AECF0();
  v4 = sub_25454B274();
  v6 = v5;
  v8 = v7;
  if (a1)
  {
    sub_25454B6A4();
  }

  else
  {
    sub_25454B644();
  }

  v9 = sub_25454B1D4();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_2544C9C64(v4, v6, v8 & 1);

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_2544F2064@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v186 = a3;
  v159 = sub_25454AAC4();
  v157 = *(v159 - 8);
  v5 = *(v157 + 64);
  MEMORY[0x28223BE20](v159);
  v156 = v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC2D0, &qword_25454FE88);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v155 = v148 - v9;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC2D8, &qword_25454FE90);
  v160 = *(v178 - 8);
  v10 = *(v160 + 64);
  MEMORY[0x28223BE20](v178);
  v158 = v148 - v11;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC2E0, &qword_25454FE98);
  v12 = *(*(v179 - 8) + 64);
  MEMORY[0x28223BE20](v179);
  v181 = v148 - v13;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1E8, &qword_25454FDA8);
  v14 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180);
  v163 = v148 - v15;
  v176 = sub_25454A134();
  v175 = *(v176 - 8);
  v16 = *(v175 + 64);
  MEMORY[0x28223BE20](v176);
  v174 = v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_25454A124();
  v171 = *(v173 - 8);
  v18 = *(v171 + 64);
  MEMORY[0x28223BE20](v173);
  v172 = v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_25454A1D4();
  v168 = *(v169 - 8);
  v20 = *(v168 + 64);
  MEMORY[0x28223BE20](v169);
  v170 = v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25454A1C4();
  v191 = *(v22 - 8);
  v23 = *(v191 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v167 = v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v177 = v148 - v27;
  v162 = v28;
  MEMORY[0x28223BE20](v26);
  v184 = (v148 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC2E8, &qword_25454FEA0);
  v194 = *(v30 - 8);
  v31 = *(v194 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v154 = v148 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v153 = v148 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v166 = v148 - v37;
  MEMORY[0x28223BE20](v36);
  v165 = v148 - v38;
  v192 = sub_254549AB4();
  v39 = *(v192 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v192);
  v43 = v148 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = v148 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC2F0, &qword_25454FEA8);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v189 = v148 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v188 = v148 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v190 = v148 - v53;
  MEMORY[0x28223BE20](v52);
  v193 = v148 - v54;
  sub_25454BE14();
  v187 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  v55 = sub_254549A14();
  v57 = *(v39 + 8);
  v56 = v39 + 8;
  v182 = v57;
  v57(v45, v192);
  v185 = a1;
  v152 = a2;
  if (v55)
  {
    v150 = v56;
    v161 = v7;
    v58 = sub_25454BCF4();
    v149 = v59;
    (*(v168 + 104))(v170, *MEMORY[0x277D14FA0], v169);
    (*(v171 + 16))(v172, a2, v173);
    (*(v175 + 104))(v174, *MEMORY[0x277D16E38], v176);
    v60 = v184;
    sub_25454A1B4();
    v61 = *(type metadata accessor for AccessoryDetailsView(0) + 28);
    Strong = swift_unknownObjectWeakLoadStrong();
    v63 = sub_25454B644();
    v64 = v191;
    v65 = v177;
    v66 = (*(v191 + 16))(v177, v60, v22);
    v67 = v22;
    v164 = v22;
    v148[1] = v63;
    if (Strong)
    {
      v68 = (*(v64 + 80) + 24) & ~*(v64 + 80);
      v69 = swift_allocObject();
      *(v69 + 16) = Strong;
      v70 = (*(v64 + 32))(v69 + v68, v65, v67);
      MEMORY[0x28223BE20](v70);
      v71 = v149;
      v148[-6] = v58;
      v148[-5] = v71;
      LOBYTE(v148[-4]) = 0;
      v148[-3] = 0;
      v148[-2] = 0;
      v148[-1] = v63;
      v148[0] = Strong;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC340, &qword_25454FED0);
      v151 = v30;
      sub_2544AE1F0(&qword_27F5FC348, &qword_27F5FC340, &qword_25454FED0);
      v72 = v163;
      sub_25454B7F4();

      KeyPath = swift_getKeyPath();
      v74 = swift_allocObject();
      *(v74 + 16) = 0;
      v75 = v181;
      v76 = (v72 + *(v180 + 36));
      *v76 = KeyPath;
      v76[1] = sub_254508108;
      v76[2] = v74;
      sub_2544AE240(v72, v75, &qword_27F5FC1E8, &qword_25454FDA8);
      swift_storeEnumTagMultiPayload();
      sub_254505964();
      v77 = sub_2545061B8();
      v7 = v161;
      v195 = v161;
      v196 = v77;
      swift_getOpaqueTypeConformance2();
      v78 = v166;
      v30 = v151;
      sub_25454AD44();
      v79 = v148[0];

      sub_2544AE150(v72, &qword_27F5FC1E8, &qword_25454FDA8);
    }

    else
    {
      MEMORY[0x28223BE20](v66);
      v148[-6] = 0;
      v148[-5] = 0;
      v83 = v149;
      v148[-4] = v58;
      v148[-3] = v83;
      LOBYTE(v148[-2]) = 0;
      v148[-1] = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC300, &qword_25454FEB8);
      sub_254506100();
      sub_254504430(&qword_27F5FC320, MEMORY[0x277D14F90]);
      v84 = v155;
      sub_25454A674();

      v85 = swift_getKeyPath();
      v86 = swift_allocObject();
      *(v86 + 16) = 0;
      v7 = v161;
      v87 = (v84 + *(v161 + 36));
      *v87 = v85;
      v87[1] = sub_254508108;
      v87[2] = v86;
      v88 = v157;
      v89 = v156;
      v90 = v159;
      (*(v157 + 104))(v156, *MEMORY[0x277CDDDC0], v159);
      v91 = sub_2545061B8();
      v92 = v158;
      sub_25454B4E4();
      (*(v88 + 8))(v89, v90);
      sub_2544AE150(v84, &qword_27F5FC2D0, &qword_25454FE88);
      v93 = v160;
      v94 = v178;
      (*(v160 + 16))(v181, v92, v178);
      swift_storeEnumTagMultiPayload();
      sub_254505964();
      v195 = v7;
      v196 = v91;
      swift_getOpaqueTypeConformance2();
      v78 = v166;
      sub_25454AD44();

      (*(v93 + 8))(v92, v94);
    }

    v22 = v164;
    (*(v191 + 8))(v184, v164);
    v95 = v165;
    sub_2544B14E8(v78, v165, &qword_27F5FC2E8, &qword_25454FEA0);
    v81 = v193;
    sub_2544B14E8(v95, v193, &qword_27F5FC2E8, &qword_25454FEA0);
    v80 = 0;
    v82 = v194;
  }

  else
  {
    v80 = 1;
    v81 = v193;
    v82 = v194;
  }

  v98 = *(v82 + 56);
  v96 = v82 + 56;
  v97 = v98;
  v99 = 1;
  v98(v81, v80, 1, v30);
  sub_25454B7A4();
  v100 = sub_254549A44();
  v182(v43, v192);
  if (v100)
  {
    v194 = v96;
    v101 = type metadata accessor for AccessoryDetailsView(0);
    v102 = *(v101 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
    sub_25454B7A4();
    v103 = v197;
    v104 = v198;
    __swift_project_boxed_opaque_existential_1(&v195, v197);
    LOBYTE(v102) = (*(v104 + 136))(v103, v104);
    __swift_destroy_boxed_opaque_existential_0(&v195);
    if (v102)
    {
      v151 = v30;
      v105 = sub_25454BCF4();
      v192 = v106;
      (*(v168 + 104))(v170, *MEMORY[0x277D14F98], v169);
      (*(v171 + 16))(v172, v152, v173);
      (*(v175 + 104))(v174, *MEMORY[0x277D16E38], v176);
      v107 = v167;
      sub_25454A1B4();
      v108 = *(v101 + 28);
      v109 = swift_unknownObjectWeakLoadStrong();
      v110 = sub_25454B644();
      v111 = v191;
      v112 = v177;
      v113 = (*(v191 + 16))(v177, v107, v22);
      v114 = v22;
      v164 = v22;
      v185 = v110;
      if (v109)
      {
        v115 = (*(v111 + 80) + 24) & ~*(v111 + 80);
        v116 = swift_allocObject();
        *(v116 + 16) = v109;
        v117 = (*(v111 + 32))(v116 + v115, v112, v114);
        v183 = v148;
        MEMORY[0x28223BE20](v117);
        v118 = v192;
        v148[-6] = v105;
        v148[-5] = v118;
        LOBYTE(v148[-4]) = 0;
        v148[-3] = 0;
        v148[-2] = 0;
        v148[-1] = v110;
        v184 = v109;
        v161 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC340, &qword_25454FED0);
        v119 = v111;
        sub_2544AE1F0(&qword_27F5FC348, &qword_27F5FC340, &qword_25454FED0);
        v120 = v163;
        sub_25454B7F4();

        v121 = swift_getKeyPath();
        v122 = swift_allocObject();
        *(v122 + 16) = 0;
        v123 = v181;
        v124 = (v120 + *(v180 + 36));
        *v124 = v121;
        v124[1] = sub_254508108;
        v124[2] = v122;
        sub_2544AE240(v120, v123, &qword_27F5FC1E8, &qword_25454FDA8);
        swift_storeEnumTagMultiPayload();
        sub_254505964();
        v125 = sub_2545061B8();
        v195 = v161;
        v196 = v125;
        swift_getOpaqueTypeConformance2();
        v126 = v154;
        sub_25454AD44();
        v127 = v184;

        sub_2544AE150(v120, &qword_27F5FC1E8, &qword_25454FDA8);
      }

      else
      {
        v184 = v148;
        MEMORY[0x28223BE20](v113);
        v148[-6] = 0;
        v148[-5] = 0;
        v128 = v192;
        v148[-4] = v105;
        v148[-3] = v128;
        LOBYTE(v148[-2]) = 0;
        v148[-1] = v110;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC300, &qword_25454FEB8);
        sub_254506100();
        sub_254504430(&qword_27F5FC320, MEMORY[0x277D14F90]);
        v129 = v155;
        sub_25454A674();

        v130 = swift_getKeyPath();
        v131 = swift_allocObject();
        *(v131 + 16) = 0;
        v132 = (v129 + *(v7 + 36));
        *v132 = v130;
        v132[1] = sub_254508108;
        v132[2] = v131;
        v133 = v157;
        v134 = v156;
        v135 = v159;
        (*(v157 + 104))(v156, *MEMORY[0x277CDDDC0], v159);
        v136 = sub_2545061B8();
        v137 = v158;
        sub_25454B4E4();
        (*(v133 + 8))(v134, v135);
        sub_2544AE150(v129, &qword_27F5FC2D0, &qword_25454FE88);
        v138 = v160;
        v119 = v111;
        v139 = v178;
        (*(v160 + 16))(v181, v137, v178);
        swift_storeEnumTagMultiPayload();
        sub_254505964();
        v195 = v7;
        v196 = v136;
        swift_getOpaqueTypeConformance2();
        v126 = v154;
        sub_25454AD44();

        (*(v138 + 8))(v137, v139);
      }

      (*(v119 + 8))(v167, v164);
      v140 = v153;
      sub_2544B14E8(v126, v153, &qword_27F5FC2E8, &qword_25454FEA0);
      sub_2544B14E8(v140, v190, &qword_27F5FC2E8, &qword_25454FEA0);
      v99 = 0;
      v30 = v151;
    }

    else
    {
      v99 = 1;
    }
  }

  v141 = v190;
  v97(v190, v99, 1, v30);
  v142 = v193;
  v143 = v188;
  sub_2544AE240(v193, v188, &qword_27F5FC2F0, &qword_25454FEA8);
  v144 = v189;
  sub_2544AE240(v141, v189, &qword_27F5FC2F0, &qword_25454FEA8);
  v145 = v186;
  sub_2544AE240(v143, v186, &qword_27F5FC2F0, &qword_25454FEA8);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC2F8, &qword_25454FEB0);
  sub_2544AE240(v144, v145 + *(v146 + 48), &qword_27F5FC2F0, &qword_25454FEA8);
  sub_2544AE150(v141, &qword_27F5FC2F0, &qword_25454FEA8);
  sub_2544AE150(v142, &qword_27F5FC2F0, &qword_25454FEA8);
  sub_2544AE150(v144, &qword_27F5FC2F0, &qword_25454FEA8);
  sub_2544AE150(v143, &qword_27F5FC2F0, &qword_25454FEA8);
}

uint64_t sub_2544F375C@<X0>(uint64_t a1@<X8>)
{
  v77 = sub_25454AAC4();
  v76 = *(v77 - 8);
  v2 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC200, &qword_25454FDC0);
  v4 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v74 = &v67 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC360, &qword_25454FEE8);
  v79 = *(v6 - 8);
  v7 = *(v79 + 64);
  MEMORY[0x28223BE20](v6);
  v78 = &v67 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC368, &qword_25454FEF0);
  v9 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v83 = &v67 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1E8, &qword_25454FDA8);
  v11 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v80 = &v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1D8, &qword_25454FDA0);
  v88 = *(v13 - 8);
  v89 = v13;
  v14 = *(v88 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v84 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v85 = &v67 - v17;
  v18 = sub_254549AB4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1C0, &qword_25454FD98);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v90 = &v67 - v25;
  sub_25454BE14();
  v87 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  v26 = sub_254549A34();
  v27 = *(v19 + 8);
  v27(v22, v18);
  v28 = v18;
  v29 = 1;
  if (v26)
  {
    v72 = v6;
    v73 = a1;
    v68 = v28;
    v70 = sub_25454BCF4();
    v71 = v30;
    v31 = type metadata accessor for AccessoryDetailsView(0);
    v32 = *(v31 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
    sub_25454B7A4();
    v34 = v94;
    v33 = v95;
    __swift_project_boxed_opaque_existential_1(v93, v94);
    v35 = (*(v33 + 128))(v34, v33);
    v36 = *(v31 + 28);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_25454B7A4();
    LOBYTE(v32) = sub_254549A54();
    v27(v22, v68);
    v38 = sub_25454B644();
    v39 = v38;
    v40 = (v32 & 1) == 0;
    v69 = v35;
    if (Strong)
    {
      v41 = swift_allocObject();
      *(v41 + 16) = Strong;
      *(v41 + 24) = v35;
      MEMORY[0x28223BE20](v41);
      v42 = v71;
      *(&v67 - 6) = v70;
      *(&v67 - 5) = v42;
      *(&v67 - 32) = v40;
      *(&v67 - 3) = 0;
      *(&v67 - 2) = 0;
      *(&v67 - 1) = v39;
      v43 = Strong;

      v79 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC340, &qword_25454FED0);
      sub_2544AE1F0(&qword_27F5FC348, &qword_27F5FC340, &qword_25454FED0);
      v44 = v80;
      sub_25454B7F4();

      KeyPath = swift_getKeyPath();
      v46 = swift_allocObject();
      *(v46 + 16) = v40;
      v47 = v83;
      v48 = (v44 + *(v82 + 36));
      *v48 = KeyPath;
      v48[1] = sub_254508108;
      v48[2] = v46;
      sub_2544AE240(v44, v47, &qword_27F5FC1E8, &qword_25454FDA8);
      swift_storeEnumTagMultiPayload();
      sub_254505964();
      v49 = sub_254505A48();
      v91 = v86;
      v92 = v49;
      swift_getOpaqueTypeConformance2();
      v50 = v84;
      sub_25454AD44();

      sub_2544AE150(v44, &qword_27F5FC1E8, &qword_25454FDA8);
    }

    else
    {
      v91 = v35;
      MEMORY[0x28223BE20](v38);
      *(&v67 - 6) = 0;
      *(&v67 - 5) = 0;
      v51 = v71;
      *(&v67 - 4) = v70;
      *(&v67 - 3) = v51;
      *(&v67 - 16) = v40;
      *(&v67 - 1) = v39;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC300, &qword_25454FEB8);
      sub_254506100();
      v52 = v74;
      sub_25454A674();

      v53 = swift_getKeyPath();
      v54 = swift_allocObject();
      *(v54 + 16) = v40;
      v55 = v86;
      v56 = (v52 + *(v86 + 36));
      *v56 = v53;
      v56[1] = sub_254508108;
      v56[2] = v54;
      v57 = v76;
      v58 = v75;
      v59 = v77;
      (*(v76 + 104))(v75, *MEMORY[0x277CDDDC0], v77);
      v60 = sub_254505A48();
      v61 = v78;
      sub_25454B4E4();
      (*(v57 + 8))(v58, v59);
      sub_2544AE150(v52, &qword_27F5FC200, &qword_25454FDC0);
      v62 = v79;
      v63 = v72;
      (*(v79 + 16))(v83, v61, v72);
      swift_storeEnumTagMultiPayload();
      sub_254505964();
      v91 = v55;
      v92 = v60;
      swift_getOpaqueTypeConformance2();
      v50 = v84;
      sub_25454AD44();

      (*(v62 + 8))(v61, v63);
    }

    v64 = v85;
    sub_2544B14E8(v50, v85, &qword_27F5FC1D8, &qword_25454FDA0);
    __swift_destroy_boxed_opaque_existential_0(v93);
    sub_2544B14E8(v64, v90, &qword_27F5FC1D8, &qword_25454FDA0);
    v29 = 0;
    a1 = v73;
  }

  v65 = v90;
  (*(v88 + 56))(v90, v29, 1, v89);
  sub_2544B14E8(v65, a1, &qword_27F5FC1C0, &qword_25454FD98);
}

uint64_t sub_2544F41E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v35 = a2;
  v2 = type metadata accessor for AccessoryDetailsView(0);
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC238, &qword_25454FDD8);
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v34);
  v32 = &v29 - v6;
  v7 = sub_254549AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC220, &qword_25454FDD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - v14;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v16 = v33;
  sub_25454B7A4();
  v17 = sub_254549904();
  (*(v8 + 8))(v11, v7);
  if ((v17 & 1) == 0)
  {
    goto LABEL_6;
  }

  v18 = *(v2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v19 = v37;
  v20 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  LOBYTE(v19) = (*(v20 + 160))(v19, v20);
  __swift_destroy_boxed_opaque_existential_0(v36);
  if (v19)
  {
    v21 = v31;
    sub_254505BFC(v16, v31, type metadata accessor for AccessoryDetailsView);
    v22 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v23 = swift_allocObject();
    sub_254507518(v21, v23 + v22, type metadata accessor for AccessoryDetailsView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC448, &qword_254550010);
    sub_2544AE1F0(&qword_27F5FC450, &qword_27F5FC448, &qword_254550010);
    v24 = v32;
    sub_25454B7F4();
    v25 = v34;
    (*(v4 + 32))(v15, v24, v34);
    v26 = v25;
    v27 = 0;
  }

  else
  {
LABEL_6:
    v27 = 1;
    v26 = v34;
  }

  (*(v4 + 56))(v15, v27, 1, v26);
  sub_2544B14E8(v15, v35, &qword_27F5FC220, &qword_25454FDD0);
}

uint64_t sub_2544F4670()
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = *(type metadata accessor for AccessoryDetailsView(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 120))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v4);
}

__n128 sub_2544F4768@<Q0>(__n128 *a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_25454AB14();
  sub_2544F483C(&v7);

  v3 = v7;
  v4 = v9;
  v5 = v10;
  result = v8;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = 0;
  a1[1].n128_u8[0] = 1;
  a1[1].n128_u64[1] = v3;
  a1[2] = result;
  a1[3].n128_u8[0] = v4;
  a1[3].n128_u64[1] = v5;
  return result;
}

uint64_t sub_2544F483C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC458, &qword_254550018);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v17 - v4;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454B734();
  v6 = *MEMORY[0x277CE1020];
  v7 = sub_25454B744();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v5, v6, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  v9 = sub_25454B724();

  sub_2544AE150(v5, &qword_27F5FC458, &qword_254550018);
  v17[0] = sub_25454BCF4();
  v17[1] = v10;
  sub_2544AECF0();
  v11 = sub_25454B274();
  v13 = v12;
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  LOBYTE(v8) = v14 & 1;
  *(a1 + 24) = v14 & 1;
  *(a1 + 32) = v15;

  sub_2544A8F00(v11, v13, v8);

  sub_2544C9C64(v11, v13, v8);
}

uint64_t sub_2544F4AAC@<X0>(uint64_t a1@<X8>)
{
  v78 = sub_25454AAC4();
  v77 = *(v78 - 8);
  v2 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v76 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC200, &qword_25454FDC0);
  v4 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v75 = &v75 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC360, &qword_25454FEE8);
  v80 = *(v6 - 8);
  v7 = *(v80 + 64);
  MEMORY[0x28223BE20](v6);
  v79 = &v75 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC368, &qword_25454FEF0);
  v9 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v88 = &v75 - v10;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1E8, &qword_25454FDA8);
  v11 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v81 = &v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1D8, &qword_25454FDA0);
  v94 = *(v13 - 8);
  v14 = *(v94 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v89 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v90 = &v75 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1C0, &qword_25454FD98);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v93 = &v75 - v20;
  sub_25454BE14();
  v92 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = type metadata accessor for AccessoryDetailsView(0);
  v22 = *(v21 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v23 = v101;
  v24 = v102;
  __swift_project_boxed_opaque_existential_1(v100, v101);
  v25 = (*(v24 + 176))(v23, v24);
  __swift_destroy_boxed_opaque_existential_0(v100);
  if (v25 <= 0 && (sub_25454B7A4(), v26 = v101, v27 = v102, __swift_project_boxed_opaque_existential_1(v100, v101), v28 = (*(v27 + 168))(v26, v27), __swift_destroy_boxed_opaque_existential_0(v100), v28 < 1))
  {
    v73 = 1;
    v72 = v93;
  }

  else
  {
    v83 = v13;
    v84 = v6;
    sub_25454B7A4();
    v29 = v101;
    v30 = v102;
    __swift_project_boxed_opaque_existential_1(v100, v101);
    (*(v30 + 168))(v29, v30);
    __swift_destroy_boxed_opaque_existential_0(v100);
    v82 = sub_25454BCF4();
    v32 = v31;

    sub_25454B7A4();
    v33 = v101;
    v34 = v102;
    __swift_project_boxed_opaque_existential_1(v100, v101);
    v35 = (*(v34 + 48))(v33, v34);
    v36 = *(v21 + 28);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_25454B7A4();
    v39 = v98;
    v38 = v99;
    __swift_project_boxed_opaque_existential_1(&v96, v98);
    v40 = (*(v38 + 168))(v39, v38);
    __swift_destroy_boxed_opaque_existential_0(&v96);
    sub_25454B7A4();
    v41 = v98;
    v42 = v99;
    __swift_project_boxed_opaque_existential_1(&v96, v98);
    if (v40 < 1)
    {
      v43 = (*(v42 + 176))(v41, v42);
    }

    else
    {
      v43 = (*(v42 + 168))(v41, v42);
    }

    v95 = v43;
    v44 = sub_25454C304();
    v46 = v45;
    __swift_destroy_boxed_opaque_existential_0(&v96);
    v85 = a1;
    v47 = sub_25454B644();
    v48 = v47;
    if (Strong)
    {
      v49 = swift_allocObject();
      *(v49 + 16) = Strong;
      *(v49 + 24) = v35;
      MEMORY[0x28223BE20](v49);
      *(&v75 - 6) = v82;
      *(&v75 - 5) = v32;
      *(&v75 - 32) = 0;
      *(&v75 - 3) = v44;
      *(&v75 - 2) = v46;
      *(&v75 - 1) = v48;
      v50 = Strong;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC340, &qword_25454FED0);
      v82 = v48;
      sub_2544AE1F0(&qword_27F5FC348, &qword_27F5FC340, &qword_25454FED0);
      v51 = v81;
      sub_25454B7F4();

      KeyPath = swift_getKeyPath();
      v53 = swift_allocObject();
      *(v53 + 16) = 0;
      v54 = v88;
      v55 = (v51 + *(v87 + 36));
      *v55 = KeyPath;
      v55[1] = sub_254508108;
      v55[2] = v53;
      sub_2544AE240(v51, v54, &qword_27F5FC1E8, &qword_25454FDA8);
      swift_storeEnumTagMultiPayload();
      sub_254505964();
      v56 = sub_254505A48();
      v96 = v91;
      v97 = v56;
      swift_getOpaqueTypeConformance2();
      v57 = v89;
      sub_25454AD44();

      sub_2544AE150(v51, &qword_27F5FC1E8, &qword_25454FDA8);
    }

    else
    {
      v96 = v35;
      MEMORY[0x28223BE20](v47);
      *(&v75 - 6) = v44;
      *(&v75 - 5) = v46;
      *(&v75 - 4) = v82;
      *(&v75 - 3) = v32;
      *(&v75 - 16) = 0;
      *(&v75 - 1) = v48;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC300, &qword_25454FEB8);
      sub_254506100();
      v58 = v75;
      sub_25454A674();

      v59 = swift_getKeyPath();
      v60 = swift_allocObject();
      *(v60 + 16) = 0;
      v61 = v91;
      v62 = (v58 + *(v91 + 36));
      *v62 = v59;
      v62[1] = sub_254508108;
      v62[2] = v60;
      v63 = v77;
      v64 = v76;
      v65 = v78;
      (*(v77 + 104))(v76, *MEMORY[0x277CDDDC0], v78);
      v66 = sub_254505A48();
      v67 = v79;
      sub_25454B4E4();
      (*(v63 + 8))(v64, v65);
      sub_2544AE150(v58, &qword_27F5FC200, &qword_25454FDC0);
      v68 = v80;
      v69 = v84;
      (*(v80 + 16))(v88, v67, v84);
      swift_storeEnumTagMultiPayload();
      sub_254505964();
      v96 = v61;
      v97 = v66;
      swift_getOpaqueTypeConformance2();
      v57 = v89;
      sub_25454AD44();

      (*(v68 + 8))(v67, v69);
    }

    v13 = v83;
    v70 = v90;
    sub_2544B14E8(v57, v90, &qword_27F5FC1D8, &qword_25454FDA0);
    __swift_destroy_boxed_opaque_existential_0(v100);
    v71 = v70;
    v72 = v93;
    sub_2544B14E8(v71, v93, &qword_27F5FC1D8, &qword_25454FDA0);
    v73 = 0;
    a1 = v85;
  }

  (*(v94 + 56))(v72, v73, 1, v13);
  sub_2544B14E8(v72, a1, &qword_27F5FC1C0, &qword_25454FD98);
}

uint64_t sub_2544F5674@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v57 = sub_25454AAC4();
  v56 = *(v57 - 8);
  v1 = *(v56 + 64);
  MEMORY[0x28223BE20](v57);
  v3 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC200, &qword_25454FDC0);
  v4 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v55 = &v55 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC360, &qword_25454FEE8);
  v59 = *(v67 - 8);
  v6 = *(v59 + 8);
  MEMORY[0x28223BE20](v67);
  v58 = &v55 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC368, &qword_25454FEF0);
  v8 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v63 = &v55 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1E8, &qword_25454FDA8);
  v10 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v60 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1D8, &qword_25454FDA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v65 = &v55 - v14;
  sub_25454BE14();
  v64 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = sub_25454BCF4();
  v17 = v16;
  v18 = type metadata accessor for AccessoryDetailsView(0);
  v19 = *(v18 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v20 = v75;
  v21 = v76;
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v22 = (*(v21 + 64))(v20, v21);
  v23 = *(v18 + 28);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_25454B7A4();
  v25 = v72;
  v26 = v73;
  __swift_project_boxed_opaque_existential_1(&v70, v72);
  v69 = (*(v26 + 56))(v25, v26);
  v27 = sub_25454C304();
  v29 = v28;
  __swift_destroy_boxed_opaque_existential_0(&v70);
  v30 = sub_25454B644();
  v31 = v30;
  if (Strong)
  {
    v32 = swift_allocObject();
    *(v32 + 16) = Strong;
    *(v32 + 24) = v22;
    MEMORY[0x28223BE20](v32);
    *(&v55 - 6) = v15;
    *(&v55 - 5) = v17;
    *(&v55 - 32) = 0;
    *(&v55 - 3) = v27;
    *(&v55 - 2) = v29;
    *(&v55 - 1) = v31;
    v33 = Strong;
    v59 = v31;
    v34 = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC340, &qword_25454FED0);
    sub_2544AE1F0(&qword_27F5FC348, &qword_27F5FC340, &qword_25454FED0);
    v35 = v60;
    sub_25454B7F4();

    KeyPath = swift_getKeyPath();
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v38 = v63;
    v39 = (v35 + *(v62 + 36));
    *v39 = KeyPath;
    v39[1] = sub_254508108;
    v39[2] = v37;
    sub_2544AE240(v35, v38, &qword_27F5FC1E8, &qword_25454FDA8);
    swift_storeEnumTagMultiPayload();
    sub_254505964();
    v40 = sub_254505A48();
    v70 = v66;
    v71 = v40;
    swift_getOpaqueTypeConformance2();
    v41 = v65;
    sub_25454AD44();

    sub_2544AE150(v35, &qword_27F5FC1E8, &qword_25454FDA8);
  }

  else
  {
    v70 = v22;
    MEMORY[0x28223BE20](v30);
    v42 = v3;
    *(&v55 - 6) = v27;
    *(&v55 - 5) = v29;
    *(&v55 - 4) = v15;
    *(&v55 - 3) = v17;
    *(&v55 - 16) = 0;
    *(&v55 - 1) = v31;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC300, &qword_25454FEB8);
    sub_254506100();
    v43 = v55;
    sub_25454A674();

    v44 = swift_getKeyPath();
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    v46 = v66;
    v47 = (v43 + *(v66 + 36));
    *v47 = v44;
    v47[1] = sub_254508108;
    v47[2] = v45;
    v48 = v56;
    v49 = v57;
    (*(v56 + 104))(v42, *MEMORY[0x277CDDDC0], v57);
    v50 = sub_254505A48();
    v51 = v58;
    sub_25454B4E4();
    (*(v48 + 8))(v42, v49);
    sub_2544AE150(v43, &qword_27F5FC200, &qword_25454FDC0);
    v52 = v59;
    v53 = v67;
    (*(v59 + 2))(v63, v51, v67);
    swift_storeEnumTagMultiPayload();
    sub_254505964();
    v70 = v46;
    v71 = v50;
    swift_getOpaqueTypeConformance2();
    v41 = v65;
    sub_25454AD44();

    (*(v52 + 1))(v51, v53);
  }

  sub_2544B14E8(v41, v68, &qword_27F5FC1D8, &qword_25454FDA0);
  __swift_destroy_boxed_opaque_existential_0(v74);
}

uint64_t sub_2544F5F18@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v1 = sub_25454AAC4();
  v56 = *(v1 - 8);
  v57 = v1;
  v2 = *(v56 + 64);
  MEMORY[0x28223BE20](v1);
  v55 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC200, &qword_25454FDC0);
  v4 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v6 = &v54 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC360, &qword_25454FEE8);
  v59 = *(v67 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v67);
  v58 = &v54 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC368, &qword_25454FEF0);
  v9 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v64 = &v54 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1E8, &qword_25454FDA8);
  v11 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1D8, &qword_25454FDA0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v65 = &v54 - v16;
  v17 = sub_254549AB4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v62 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549A24();
  (*(v18 + 8))(v21, v17);
  v22 = sub_25454BCF4();
  v24 = v23;
  v25 = type metadata accessor for AccessoryDetailsView(0);
  v26 = *(v25 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v27 = v71;
  v28 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v29 = (*(v28 + 104))(v27, v28);
  v30 = *(v25 + 28);
  Strong = swift_unknownObjectWeakLoadStrong();
  v32 = sub_25454B644();
  v33 = v32;
  if (Strong)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = Strong;
    *(v34 + 24) = v29;
    MEMORY[0x28223BE20](v34);
    *(&v54 - 6) = v22;
    *(&v54 - 5) = v24;
    *(&v54 - 32) = 0;
    *(&v54 - 3) = 0;
    *(&v54 - 2) = 0;
    *(&v54 - 1) = v33;
    v35 = Strong;

    v59 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC340, &qword_25454FED0);
    sub_2544AE1F0(&qword_27F5FC348, &qword_27F5FC340, &qword_25454FED0);
    sub_25454B7F4();

    KeyPath = swift_getKeyPath();
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v38 = v64;
    v39 = &v13[*(v63 + 36)];
    *v39 = KeyPath;
    v39[1] = sub_254508108;
    v39[2] = v37;
    sub_2544AE240(v13, v38, &qword_27F5FC1E8, &qword_25454FDA8);
    swift_storeEnumTagMultiPayload();
    sub_254505964();
    v40 = sub_254505A48();
    v68 = v66;
    v69 = v40;
    swift_getOpaqueTypeConformance2();
    v41 = v65;
    sub_25454AD44();

    sub_2544AE150(v13, &qword_27F5FC1E8, &qword_25454FDA8);
  }

  else
  {
    v68 = v29;
    MEMORY[0x28223BE20](v32);
    *(&v54 - 6) = 0;
    *(&v54 - 5) = 0;
    *(&v54 - 4) = v22;
    *(&v54 - 3) = v24;
    *(&v54 - 16) = 0;
    *(&v54 - 1) = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC300, &qword_25454FEB8);
    sub_254506100();
    sub_25454A674();

    v42 = swift_getKeyPath();
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    v44 = v66;
    v45 = &v6[*(v66 + 36)];
    *v45 = v42;
    v45[1] = sub_254508108;
    v45[2] = v43;
    v47 = v55;
    v46 = v56;
    v48 = v57;
    (*(v56 + 104))(v55, *MEMORY[0x277CDDDC0], v57);
    v49 = sub_254505A48();
    v50 = v58;
    sub_25454B4E4();
    (*(v46 + 8))(v47, v48);
    sub_2544AE150(v6, &qword_27F5FC200, &qword_25454FDC0);
    v51 = v59;
    v52 = v67;
    (*(v59 + 16))(v64, v50, v67);
    swift_storeEnumTagMultiPayload();
    sub_254505964();
    v68 = v44;
    v69 = v49;
    swift_getOpaqueTypeConformance2();
    v41 = v65;
    sub_25454AD44();

    (*(v51 + 8))(v50, v52);
  }

  sub_2544B14E8(v41, v60, &qword_27F5FC1D8, &qword_25454FDA0);
  __swift_destroy_boxed_opaque_existential_0(v70);
}

uint64_t sub_2544F67DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a1;
  v125 = a2;
  v129 = sub_25454A0A4();
  v114 = *(v129 - 8);
  v2 = *(v114 + 64);
  MEMORY[0x28223BE20](v129);
  OpaqueTypeConformance2 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3B8, &qword_25454FF40);
  v117 = *(v118 - 8);
  v4 = *(v117 + 64);
  MEMORY[0x28223BE20](v118);
  v132 = &v107 - v5;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3C0, &qword_25454FF48);
  v119 = *(v121 - 8);
  v6 = *(v119 + 64);
  MEMORY[0x28223BE20](v121);
  v133 = &v107 - v7;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3C8, &qword_25454FF50);
  v123 = *(v124 - 8);
  v8 = *(v123 + 64);
  v9 = MEMORY[0x28223BE20](v124);
  v122 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v120 = &v107 - v11;
  v136 = type metadata accessor for AccessoryDetailsView(0);
  v130 = *(v136 - 1);
  v12 = *(v130 + 64);
  MEMORY[0x28223BE20](v136);
  v131 = v13;
  v14 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC28, &unk_25454F660);
  v126 = *(v128 - 8);
  v15 = *(v126 + 64);
  MEMORY[0x28223BE20](v128);
  v135 = &v107 - v16;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3D0, &qword_25454FF58);
  v17 = *(v111 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v111);
  v109 = &v107 - v19;
  v20 = sub_254549AB4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v107 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFE0, &unk_254550CD0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v107 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3D8, &unk_25454FF60);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v116 = &v107 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v107 - v36;
  sub_25454BE14();
  v115 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549984();
  v38 = v27;
  v39 = *(v21 + 8);
  v112 = v20;
  v39(v38, v20);
  v40 = sub_254549D94();
  v41 = *(v40 - 8);
  v42 = (*(v41 + 48))(v31, 1, v40);
  v127 = v37;
  if (v42 == 1)
  {
    sub_2544AE150(v31, &qword_27F5FBFE0, &unk_254550CD0);
LABEL_7:
    v57 = 1;
    v56 = v111;
    goto LABEL_8;
  }

  v43 = sub_254549D84();
  (*(v41 + 8))(v31, v40);
  if ((v43 & 1) == 0)
  {
    goto LABEL_7;
  }

  v44 = v134;
  sub_254505BFC(v134, v14, type metadata accessor for AccessoryDetailsView);
  v45 = (*(v130 + 80) + 16) & ~*(v130 + 80);
  v46 = swift_allocObject();
  sub_254507518(v14, v46 + v45, type metadata accessor for AccessoryDetailsView);
  sub_25454B7F4();
  v47 = v44 + v136[13];
  v48 = *v47;
  v49 = *(v47 + 8);
  LOBYTE(v145) = v48;
  v146 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  v50 = sub_25454B7C4();
  v107 = &v107;
  MEMORY[0x28223BE20](v50);
  v37 = v127;
  sub_2544AE1F0(&qword_27F5FBC20, &qword_27F5FBC28, &unk_25454F660);
  v108 = v39;
  v51 = v109;
  v52 = v128;
  v53 = v135;
  sub_25454B504();

  (*(v126 + 8))(v53, v52);
  v54 = v51;
  v39 = v108;
  v55 = v111;
  (*(v17 + 32))(v37, v54, v111);
  v56 = v55;
  v57 = 0;
LABEL_8:
  (*(v17 + 56))(v37, v57, 1, v56);
  v58 = v134;
  sub_254505BFC(v134, v14, type metadata accessor for AccessoryDetailsView);
  v59 = (*(v130 + 80) + 16) & ~*(v130 + 80);
  v60 = swift_allocObject();
  sub_254507518(v14, v60 + v59, type metadata accessor for AccessoryDetailsView);
  sub_25454B7F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB990, "ܡ");
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_25454D8F0;
  sub_25454B7A4();
  v62 = OpaqueTypeConformance2;
  sub_254549AA4();
  v39(v25, v112);
  v63 = sub_25454A074();
  v65 = v64;
  (*(v114 + 8))(v62, v129);
  *(v61 + 56) = MEMORY[0x277D837D0];
  *(v61 + 64) = sub_25450649C();
  *(v61 + 32) = v63;
  *(v61 + 40) = v65;
  v66 = sub_25454BD04();
  v68 = v67;

  v145 = v66;
  v146 = v68;
  v69 = v58 + v136[14];
  v70 = *v69;
  v71 = *(v69 + 8);
  LOBYTE(v149) = v70;
  v150 = v71;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  v72 = sub_25454B7C4();
  MEMORY[0x28223BE20](v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3E8, &qword_25454FF78);
  v129 = sub_2544AE1F0(&qword_27F5FBC20, &qword_27F5FBC28, &unk_25454F660);
  v130 = sub_2544AECF0();
  v114 = sub_2545064F8();
  v74 = MEMORY[0x277D837D0];
  v75 = v128;
  v76 = v135;
  sub_25454B444();

  (*(v126 + 8))(v76, v75);
  v77 = v136;
  v135 = v136[5];
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v78 = v147;
  v79 = v148;
  __swift_project_boxed_opaque_existential_1(&v145, v147);
  v149 = (*(v79 + 248))(v78, v79);
  v150 = v80;
  v81 = v58 + v77[15];
  v82 = *v81;
  v83 = *(v81 + 8);
  v143 = v82;
  v144 = v83;
  v84 = sub_25454B7C4();
  v112 = &v107;
  MEMORY[0x28223BE20](v84);
  v137 = v75;
  v138 = v74;
  v139 = v73;
  v140 = v129;
  v141 = v130;
  v142 = v114;
  v114 = MEMORY[0x277CDE9D0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v85 = v118;
  v86 = v132;
  sub_25454B444();

  (*(v117 + 8))(v86, v85);
  __swift_destroy_boxed_opaque_existential_0(&v145);
  sub_25454B7A4();
  v87 = v147;
  v88 = v148;
  __swift_project_boxed_opaque_existential_1(&v145, v147);
  v149 = (*(v88 + 272))(v87, v88);
  v150 = v89;
  v90 = v58 + v136[16];
  v91 = *v90;
  v92 = *(v90 + 8);
  v143 = v91;
  v144 = v92;
  v93 = sub_25454B7C4();
  MEMORY[0x28223BE20](v93);
  v137 = v85;
  v138 = v74;
  v139 = v75;
  v140 = OpaqueTypeConformance2;
  v141 = v130;
  v142 = v129;
  swift_getOpaqueTypeConformance2();
  v94 = v120;
  v95 = v121;
  v96 = v133;
  sub_25454B444();

  (*(v119 + 8))(v96, v95);
  __swift_destroy_boxed_opaque_existential_0(&v145);
  v97 = v127;
  v98 = v116;
  sub_2544AE240(v127, v116, &qword_27F5FC3D8, &unk_25454FF60);
  v99 = v123;
  v100 = *(v123 + 16);
  v101 = v122;
  v102 = v124;
  v100(v122, v94, v124);
  v103 = v125;
  sub_2544AE240(v98, v125, &qword_27F5FC3D8, &unk_25454FF60);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC408, &qword_25454FF88);
  v100((v103 + *(v104 + 48)), v101, v102);
  v105 = *(v99 + 8);
  v105(v94, v102);
  sub_2544AE150(v97, &qword_27F5FC3D8, &unk_25454FF60);
  v105(v101, v102);
  sub_2544AE150(v98, &qword_27F5FC3D8, &unk_25454FF60);
}