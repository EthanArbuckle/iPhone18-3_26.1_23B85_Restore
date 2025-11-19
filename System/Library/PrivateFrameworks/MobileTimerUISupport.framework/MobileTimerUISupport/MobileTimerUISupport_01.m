uint64_t AssetCatalogColor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25A10C090();
}

uint64_t AssetCatalogColor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25A10C3E0();
  sub_25A10C090();
  return sub_25A10C410();
}

uint64_t AssetCatalogColor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3720, &qword_25A10E920);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A10510C();
  sub_25A10C420();
  if (!v2)
  {
    v11 = sub_25A10C2D0();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25A103A50()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25A103AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x25F84C6E0](*v4, v4[1]);
  MEMORY[0x25F84C6E0](47, 0xE100000000000000);
  MEMORY[0x25F84C6E0](a3, a4);
  if (qword_27F9F31E0 != -1)
  {
    swift_once();
  }

  v7 = qword_27F9F36E0;
  v8 = qword_27F9F36E0;

  return MEMORY[0x282133540](0x2F73726F6C6F43, 0xE700000000000000, v7);
}

uint64_t sub_25A103BC8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25A10C3E0();
  sub_25A10C090();
  return sub_25A10C410();
}

uint64_t sub_25A103C14()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25A10C090();
}

uint64_t sub_25A103C1C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25A10C3E0();
  sub_25A10C090();
  return sub_25A10C410();
}

uint64_t sub_25A103C7C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3710, &qword_25A10E918);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A10510C();
  sub_25A10C430();
  sub_25A10C310();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_25A103DB8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25A10C390();
  }
}

MobileTimerUISupport::SolidClockFaceColor __swiftcall SolidClockFaceColor.init(_:)(UIColor a1)
{
  v3 = v1;
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = 0.0;
  v12[0] = 0;
  v9 = 0.0;
  v10 = 0.0;
  [(objc_class *)a1.super.isa getRed:v12 green:&v11 blue:&v10 alpha:&v9];

  v5 = v11;
  v4 = *v12;
  v7 = v9;
  v6 = v10;
  *v3 = v12[0];
  *(v3 + 8) = v5;
  *(v3 + 16) = v6;
  *(v3 + 24) = v7;
  v8 = *MEMORY[0x277D85DE8];
  result.alpha = v7;
  result.blue = v6;
  result.green = v5;
  result.red = v4;
  return result;
}

MobileTimerUISupport::SolidClockFaceColor __swiftcall SolidClockFaceColor.init(red:green:blue:alpha:)(Swift::Double red, Swift::Double green, Swift::Double blue, Swift::Double alpha)
{
  *v4 = red;
  v4[1] = green;
  v4[2] = blue;
  v4[3] = alpha;
  result.alpha = alpha;
  result.blue = blue;
  result.green = green;
  result.red = red;
  return result;
}

uint64_t sub_25A103F28()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
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

uint64_t sub_25A103F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25A105C6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25A103FBC(uint64_t a1)
{
  v2 = sub_25A105160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A103FF8(uint64_t a1)
{
  v2 = sub_25A105160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SolidClockFaceColor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3728, &qword_25A10E928);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-v7];
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A105160();
  sub_25A10C430();
  v15[15] = 0;
  sub_25A10C320();
  if (!v2)
  {
    v15[14] = 1;
    sub_25A10C320();
    v15[13] = 2;
    sub_25A10C320();
    v15[12] = 3;
    sub_25A10C320();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t SolidClockFaceColor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x25F84CA10](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x25F84CA10](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x25F84CA10](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x25F84CA10](*&v7);
}

uint64_t SolidClockFaceColor.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_25A10C3E0();
  SolidClockFaceColor.hash(into:)();
  return sub_25A10C410();
}

uint64_t SolidClockFaceColor.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3738, &qword_25A10E930);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A105160();
  sub_25A10C420();
  if (!v2)
  {
    v24 = 0;
    sub_25A10C2E0();
    v12 = v11;
    v23 = 1;
    sub_25A10C2E0();
    v14 = v13;
    v22 = 2;
    sub_25A10C2E0();
    v17 = v16;
    v21 = 3;
    sub_25A10C2E0();
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v17;
    a2[3] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25A1044DC()
{
  v2 = *v0;
  v3 = v0[1];
  sub_25A10C3E0();
  SolidClockFaceColor.hash(into:)();
  return sub_25A10C410();
}

uint64_t sub_25A10452C()
{
  v2 = *v0;
  v3 = v0[1];
  sub_25A10C3E0();
  SolidClockFaceColor.hash(into:)();
  return sub_25A10C410();
}

uint64_t UIColor.cpStringValue.getter()
{
  v26[1] = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26[0] = 0;
  v23 = 0;
  v24 = 0;
  [v0 getRed:v26 green:&v25 blue:&v24 alpha:&v23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F36E8, &qword_25A10E900);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25A10D820;
  v2 = v26[0];
  v3 = MEMORY[0x277D85048];
  *(v1 + 56) = MEMORY[0x277D85048];
  v4 = sub_25A1051B4();
  *(v1 + 64) = v4;
  *(v1 + 32) = v2;
  v5 = sub_25A10C070();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25A10D820;
  v7 = v25;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 32) = v7;
  v8 = sub_25A10C070();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25A10D820;
  v12 = v24;
  *(v11 + 56) = v3;
  *(v11 + 64) = v4;
  *(v11 + 32) = v12;
  v13 = sub_25A10C070();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25A10D820;
  v17 = v23;
  *(v16 + 56) = v3;
  *(v16 + 64) = v4;
  *(v16 + 32) = v17;
  v18 = sub_25A10C070();
  v20 = v19;
  MEMORY[0x25F84C6E0](44, 0xE100000000000000);
  MEMORY[0x25F84C6E0](v8, v10);

  MEMORY[0x25F84C6E0](44, 0xE100000000000000);
  MEMORY[0x25F84C6E0](v13, v15);

  MEMORY[0x25F84C6E0](44, 0xE100000000000000);
  MEMORY[0x25F84C6E0](v18, v20);

  result = v5;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void *static UIColor.cpColor(from:)(uint64_t a1, uint64_t a2)
{
  sub_25A0FC29C();
  v4 = sub_25A10C1D0();
  if (v4[2] != 4)
  {

    sub_25A10C210();
    MEMORY[0x25F84C6E0](0xD00000000000001CLL, 0x800000025A10FE20);
    MEMORY[0x25F84C6E0](a1, a2);
    v9 = "Cannot convert stringValue '";
    v10 = 0xD00000000000002ELL;
    goto LABEL_6;
  }

  v5 = v4[4];
  v6 = v4[5];
  v7 = v4;

  v8 = sub_25A104F18(v5, v6);

  if (!v8)
  {
    goto LABEL_3;
  }

  result = v7;
  if (0.0 > 1.0)
  {
    goto LABEL_3;
  }

  if (v7[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  v13 = v7[6];
  v14 = v7[7];

  v15 = sub_25A104F18(v13, v14);

  if (!v15)
  {
    goto LABEL_3;
  }

  result = v7;
  if (0.0 > 1.0)
  {
    goto LABEL_3;
  }

  if (v7[2] < 3uLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v7[8];
  v17 = v7[9];

  v18 = sub_25A104F18(v16, v17);

  if (!v18 || (result = v7, 0.0 > 1.0))
  {
LABEL_3:

LABEL_4:
    sub_25A10C210();
    MEMORY[0x25F84C6E0](0xD00000000000001CLL, 0x800000025A10FE20);
    MEMORY[0x25F84C6E0](a1, a2);
    v9 = "cuse components count is wrong";
    v10 = 0xD00000000000001BLL;
LABEL_6:
    MEMORY[0x25F84C6E0](v10, v9 | 0x8000000000000000);
    sub_25A105208();
    swift_allocError();
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    return swift_willThrow();
  }

  if (v7[2] >= 4uLL)
  {
    v19 = v7[10];
    v20 = result[11];

    v21 = sub_25A104F18(v19, v20);

    if (v21 && 0.0 <= 1.0)
    {
      return [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.0 alpha:{0.0, 44, 0xE100000000000000}];
    }

    goto LABEL_4;
  }

LABEL_20:
  __break(1u);
  return result;
}

id sub_25A104BA4(uint64_t a1, void *a2)
{
  type metadata accessor for RedModeTrait();
  sub_25A105E48();
  if (sub_25A10C190())
  {
    return sub_25A104C5C();
  }

  return a2;
}

uint64_t sub_25A104C1C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_25A104C5C()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = 0.0;
  v6[0] = 0.0;
  [v0 getHue:0 saturation:0 brightness:v6 alpha:&v5];
  v1 = v5 * v6[0] * 0.5 + 0.5;
  if (v1 > 1.0)
  {
    v1 = 1.0;
  }

  if (v1 < 0.0)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = v1;
  }

  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v2 green:0.0 blue:0.0 alpha:1.0];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_25A104D6C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_25A104DEC(char *a1, int64_t a2, char a3)
{
  result = sub_25A104E0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25A104E0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F37F8, &qword_25A10F1E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL sub_25A104F18(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtof_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_25A10C200();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t _s20MobileTimerUISupport21DynamicClockFaceColorV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))))
  {
    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3])))) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_25A105064()
{
  result = qword_27F9F36F8;
  if (!qword_27F9F36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F36F8);
  }

  return result;
}

unint64_t sub_25A1050B8()
{
  result = qword_27F9F3700;
  if (!qword_27F9F3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3700);
  }

  return result;
}

unint64_t sub_25A10510C()
{
  result = qword_27F9F3718;
  if (!qword_27F9F3718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3718);
  }

  return result;
}

unint64_t sub_25A105160()
{
  result = qword_27F9F3730;
  if (!qword_27F9F3730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3730);
  }

  return result;
}

unint64_t sub_25A1051B4()
{
  result = qword_27F9F3740;
  if (!qword_27F9F3740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3740);
  }

  return result;
}

unint64_t sub_25A105208()
{
  result = qword_27F9F3748;
  if (!qword_27F9F3748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3748);
  }

  return result;
}

unint64_t sub_25A105260()
{
  result = qword_27F9F3750;
  if (!qword_27F9F3750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3750);
  }

  return result;
}

unint64_t sub_25A1052F4()
{
  result = qword_27F9F3758;
  if (!qword_27F9F3758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3758);
  }

  return result;
}

unint64_t sub_25A105348()
{
  result = qword_27F9F3760;
  if (!qword_27F9F3760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3760);
  }

  return result;
}

unint64_t sub_25A1053A0()
{
  result = qword_27F9F3768;
  if (!qword_27F9F3768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3768);
  }

  return result;
}

unint64_t sub_25A105434()
{
  result = qword_27F9F3770;
  if (!qword_27F9F3770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3770);
  }

  return result;
}

unint64_t sub_25A105488()
{
  result = qword_27F9F3778;
  if (!qword_27F9F3778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3778);
  }

  return result;
}

unint64_t sub_25A1054E0()
{
  result = qword_27F9F3780;
  if (!qword_27F9F3780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3780);
  }

  return result;
}

uint64_t sub_25A105574(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_25A1055C8()
{
  result = qword_27F9F3788;
  if (!qword_27F9F3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3788);
  }

  return result;
}

unint64_t sub_25A105620()
{
  result = qword_27F9F3790;
  if (!qword_27F9F3790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3790);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25A10574C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25A10576C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25A1057D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25A1057F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_25A10587C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25A1058C8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_25A105958()
{
  result = qword_27F9F3798;
  if (!qword_27F9F3798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3798);
  }

  return result;
}

unint64_t sub_25A1059B0()
{
  result = qword_27F9F37A0;
  if (!qword_27F9F37A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F37A0);
  }

  return result;
}

unint64_t sub_25A105A08()
{
  result = qword_27F9F37A8;
  if (!qword_27F9F37A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F37A8);
  }

  return result;
}

unint64_t sub_25A105A60()
{
  result = qword_27F9F37B0;
  if (!qword_27F9F37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F37B0);
  }

  return result;
}

unint64_t sub_25A105AB8()
{
  result = qword_27F9F37B8;
  if (!qword_27F9F37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F37B8);
  }

  return result;
}

unint64_t sub_25A105B10()
{
  result = qword_27F9F37C0;
  if (!qword_27F9F37C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F37C0);
  }

  return result;
}

unint64_t sub_25A105B68()
{
  result = qword_27F9F37C8;
  if (!qword_27F9F37C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F37C8);
  }

  return result;
}

unint64_t sub_25A105BC0()
{
  result = qword_27F9F37D0;
  if (!qword_27F9F37D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F37D0);
  }

  return result;
}

unint64_t sub_25A105C18()
{
  result = qword_27F9F37D8;
  if (!qword_27F9F37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F37D8);
  }

  return result;
}

uint64_t sub_25A105C6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_25A10C390() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_25A10C390() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_25A10C390() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25A10C390();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

_BYTE *sub_25A105DC8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_25A105E48()
{
  result = qword_27F9F37E0;
  if (!qword_27F9F37E0)
  {
    type metadata accessor for RedModeTrait();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F37E0);
  }

  return result;
}

unint64_t sub_25A105E9C()
{
  result = qword_27F9F37F0;
  if (!qword_27F9F37F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9F37E8, &qword_25A10F1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F37F0);
  }

  return result;
}

unint64_t sub_25A105FB8(unint64_t result, double a2, double a3, double a4)
{
  if ((*(v4 + 32) & 1) != 0 || (*(v4 + 48) & 1) != 0 || (*(v4 + 72) & 1) != 0 || (*(v4 + 24) == result ? (v5 = *(v4 + 40) == a2) : (v5 = 0), v5 ? (v6 = *(v4 + 56) == a3) : (v6 = 0), v6 ? (v7 = *(v4 + 64) == a4) : (v7 = 0), !v7))
  {
    *(v4 + 24) = result;
    *(v4 + 32) = 0;
    *(v4 + 40) = a2;
    *(v4 + 48) = 0;
    *(v4 + 56) = a3;
    *(v4 + 64) = a4;
    *(v4 + 72) = 0;
    v8 = sub_25A1060EC(result);
    v9 = *(v4 + 16);
    *(v4 + 16) = v8;
  }

  return result;
}

uint64_t sub_25A106044()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 73, 7);
}

uint64_t sub_25A1060AC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _TickPaths();
  result = sub_25A10BAD0();
  *a1 = result;
  return result;
}

unint64_t sub_25A1060EC(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (!result)
    {
      return MEMORY[0x277D84F90];
    }

    v2 = 0;
    v7 = result;
    v3 = MEMORY[0x277D84F90];
    do
    {
      sub_25A10BDF0();
      __sincos_stret(v2 / v7 * 360.0 * 0.0174532925);
      sub_25A10BDD0();
      sub_25A10BDE0();
      sub_25A10BDC0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_25A0F9CAC(0, *(v3 + 2) + 1, 1, v3);
      }

      v5 = *(v3 + 2);
      v4 = *(v3 + 3);
      if (v5 >= v4 >> 1)
      {
        v3 = sub_25A0F9CAC((v4 > 1), v5 + 1, 1, v3);
      }

      ++v2;
      *(v3 + 2) = v5 + 1;
      v6 = &v3[40 * v5];
      *(v6 + 2) = v8;
      *(v6 + 3) = v9;
      v6[64] = v10;
    }

    while (v1 != v2);
    return v3;
  }

  return result;
}

uint64_t sub_25A1062A8()
{
  swift_getKeyPath();
  sub_25A106D58();
  sub_25A10BA50();

  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_25A106330@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A106D58();
  sub_25A10BA50();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_25A1063C0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);

  v5 = sub_25A10AB3C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 24);
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25A106D58();
    sub_25A10BA40();
  }
}

uint64_t sub_25A1064D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  *(a1 + 24) = a2;
}

uint64_t sub_25A106540()
{
  swift_getKeyPath();
  sub_25A106D58();
  sub_25A10BA50();

  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_25A1065C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A106D58();
  sub_25A10BA50();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_25A106658(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);

  v5 = sub_25A10AE10(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 32);
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25A106D58();
    sub_25A10BA40();
  }
}

uint64_t sub_25A106770(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  *(a1 + 32) = a2;
}

uint64_t sub_25A1067D8()
{
  swift_getKeyPath();
  sub_25A106D58();
  sub_25A10BA50();

  return *(v0 + 72);
}

uint64_t sub_25A106848@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A106D58();
  sub_25A10BA50();

  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_25A1068C0(uint64_t result)
{
  if (*(v1 + 72) == (result & 1))
  {
    *(v1 + 72) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25A106D58();
    sub_25A10BA40();
  }

  return result;
}

uint64_t sub_25A1069A0()
{
  swift_getKeyPath();
  sub_25A106D58();
  sub_25A10BA50();

  swift_beginAccess();
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *(v0 + 32);
    }

    result = sub_25A10C2A0();
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((*(v0 + 72) ^ (result != 0)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25A10BA40();
  }

  else
  {
    *(v0 + 72) = result != 0;
  }

  return result;
}

uint64_t sub_25A106B00()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = OBJC_IVAR____TtC20MobileTimerUISupport20TimerObservableModel___observationRegistrar;
  v6 = sub_25A10BA70();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_25A106B98()
{
  sub_25A106B00();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for TimerObservableModel()
{
  result = qword_27F9F3808;
  if (!qword_27F9F3808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25A106C44()
{
  result = sub_25A10BA70();
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

unint64_t sub_25A106D58()
{
  result = qword_27F9F3818;
  if (!qword_27F9F3818)
  {
    type metadata accessor for TimerObservableModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F3818);
  }

  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_25A106E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3858, &qword_25A10F600);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_25A10A450(a3, v27 - v11);
  v13 = sub_25A10C170();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_25A10A3E8(v12);
  }

  else
  {
    sub_25A10C160();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25A10C130();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_25A10C080() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3860, &qword_25A10F628);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      return v24;
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

  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3860, &qword_25A10F628);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_25A107140()
{
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3880, type metadata accessor for ObservableAlarmViewModel);
  sub_25A10BA50();

  v1 = *(v0 + 24);
}

uint64_t sub_25A1071E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3880, type metadata accessor for ObservableAlarmViewModel);
  sub_25A10BA50();

  *a2 = *(v3 + 24);
}

uint64_t sub_25A107290(uint64_t a1)
{
  v3 = *(v1 + 24);

  v5 = sub_25A10B060(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 24);
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25A10A9A4(&qword_27F9F3880, type metadata accessor for ObservableAlarmViewModel);
    sub_25A10BA40();
  }
}

uint64_t sub_25A1073E4()
{
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3880, type metadata accessor for ObservableAlarmViewModel);
  sub_25A10BA50();

  v1 = *(v0 + 32);
}

uint64_t sub_25A107488@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3880, type metadata accessor for ObservableAlarmViewModel);
  sub_25A10BA50();

  *a2 = *(v3 + 32);
}

uint64_t sub_25A107534(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  if (!v4)
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25A10A9A4(&qword_27F9F3880, type metadata accessor for ObservableAlarmViewModel);
    sub_25A10BA40();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);

  sub_25A10BA50();

  v5 = *(v4 + 88);
  swift_getKeyPath();
  v6 = v5;
  sub_25A10BA50();

  v7 = *(a1 + 88);
  v8 = [v6 isEqualToAlarm_];

  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + 32);
LABEL_7:
  *(v2 + 32) = a1;
}

uint64_t sub_25A107758(uint64_t a1)
{
  v1[7] = a1;
  sub_25A10C150();
  v1[8] = sub_25A10C140();
  v3 = sub_25A10C130();
  v1[9] = v3;
  v1[10] = v2;

  return MEMORY[0x2822009F8](sub_25A1077F0, v3, v2);
}

uint64_t sub_25A1077F0()
{
  v1 = *(*(v0 + 56) + 16);
  v2 = *(MEMORY[0x277D29770] + 4);
  v5 = (*MEMORY[0x277D29770] + MEMORY[0x277D29770]);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_25A10789C;

  return v5(0);
}

uint64_t sub_25A10789C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v7 = *(v3 + 80);
  v8 = *(v3 + 72);
  if (v1)
  {
    v9 = sub_25A107E94;
  }

  else
  {
    v9 = sub_25A1079E0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_25A1079E0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);

  if (v1 >> 62)
  {
LABEL_28:
    if (v44[12] < 0)
    {
      v38 = v44[12];
    }

    v3 = sub_25A10C2A0();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v49 = MEMORY[0x277D84F90];
    result = sub_25A10C250();
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    v41 = v44[12] + 32;
    v42 = v1 & 0xC000000000000001;
    v43 = v3;
    do
    {
      if (v42)
      {
        v23 = MEMORY[0x25F84C830](v6, v44[12]);
      }

      else
      {
        v23 = *(v41 + 8 * v6);
      }

      v24 = v23;
      v25 = [v23 alarmIDString];
      v26 = sub_25A10C060();
      v47 = v27;
      v48 = v26;

      v46 = [v24 hour];
      v45 = [v24 minute];
      v28 = [v24 repeatSchedule];
      v29 = [v24 title];
      if (v29)
      {
        v7 = v29;
        v8 = sub_25A10C060();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0;
      }

      ++v6;
      v11 = [v24 sound];
      v12 = [v24 isEnabled];
      v13 = [v24 allowsSnooze];
      [v24 mutableCopy];
      sub_25A10C1F0();
      swift_unknownObjectRelease();
      sub_25A0F2468(0, &qword_27F9F3868, 0x277D296F0);
      swift_dynamicCast();
      v14 = v44[6];
      v15 = type metadata accessor for AlarmModel(0);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      v18 = swift_allocObject();
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      sub_25A10BA60();
      *(v18 + 16) = v48;
      *(v18 + 24) = v47;
      *(v18 + 32) = v46;
      *(v18 + 40) = v45;
      *(v18 + 48) = v28;
      v19 = *(v18 + 64);

      *(v18 + 56) = v8;
      *(v18 + 64) = v10;
      *(v18 + 72) = v11;
      *(v18 + 80) = v12;
      *(v18 + 81) = v13;
      *(v18 + 88) = v14;
      v20 = v11;
      v21 = v14;

      sub_25A10BA30();

      sub_25A10C230();
      v22 = *(v49 + 16);
      sub_25A10C260();
      sub_25A10C270();
      sub_25A10C240();
    }

    while (v43 != v6);
    v30 = v44[12];

    v1 = v49;
    v4 = MEMORY[0x277D84F90];
  }

  else
  {
    v31 = v44[12];

    v1 = MEMORY[0x277D84F90];
  }

  if (v1 >> 62)
  {
    v32 = sub_25A10C2A0();
    if (v32)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v32 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
LABEL_17:
      v33 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x25F84C830](v33, v1);
          v35 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            v37 = v4;
            goto LABEL_33;
          }
        }

        else
        {
          if (v33 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_28;
          }

          v34 = *(v1 + 8 * v33 + 32);

          v35 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_25;
          }
        }

        sub_25A10C230();
        v36 = *(v4 + 16);
        sub_25A10C260();
        sub_25A10C270();
        sub_25A10C240();
        ++v33;
        if (v35 == v32)
        {
          goto LABEL_26;
        }
      }
    }
  }

  v37 = MEMORY[0x277D84F90];
LABEL_33:
  v39 = v44[7];

  sub_25A107290(v37);
  v40 = v44[1];

  return v40();
}

uint64_t sub_25A107E94()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_25A107EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_25A107FA4;

  return sub_25A107758(a4);
}

uint64_t sub_25A107FA4()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {

    v3 = sub_25A10B904;
  }

  else
  {
    v3 = sub_25A1080C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25A1080E8()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtC20MobileTimerUISupport24ObservableAlarmViewModel___observationRegistrar;
  v5 = sub_25A10BA70();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_25A1081C4()
{
  result = sub_25A10BA70();
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

uint64_t sub_25A1082BC(void *a1)
{
  v1 = sub_25A10B400(a1);

  return sub_25A107534(v1);
}

uint64_t sub_25A108308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3858, &qword_25A10F600);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  v11 = sub_25A10C170();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v5;

  sub_25A106E8C(0, 0, v10, a5, v12);

  return sub_25A10A3E8(v10);
}

id sub_25A10840C()
{
  result = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
  qword_27F9F7088 = result;
  return result;
}

uint64_t sub_25A108440()
{
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();

  return *(v0 + 32);
}

uint64_t sub_25A1084E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_25A108588(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
    sub_25A10BA40();
  }

  return result;
}

uint64_t sub_25A10868C()
{
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();

  return *(v0 + 40);
}

uint64_t sub_25A10872C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_25A1087D4(uint64_t result)
{
  if (*(v1 + 40) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
    sub_25A10BA40();
  }

  return result;
}

uint64_t sub_25A1088D8()
{
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();

  return *(v0 + 48);
}

uint64_t sub_25A108978@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_25A108A20(uint64_t result)
{
  if (*(v1 + 48) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
    sub_25A10BA40();
  }

  return result;
}

uint64_t sub_25A108B24()
{
  swift_getKeyPath();
  v4 = v0;
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();

  v2 = *(v0 + 56);
  v1 = *(v4 + 64);

  return v2;
}

uint64_t sub_25A108BD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();

  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_25A108C80(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 56) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 64);
      if (sub_25A10C390())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
    sub_25A10BA40();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

id sub_25A108DF0()
{
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();

  v1 = *(v0 + 72);

  return v1;
}

id sub_25A108EA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();

  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void sub_25A108F58(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  sub_25A0F2468(0, &qword_27F9F3878, 0x277D29708);
  v5 = v4;
  v6 = sub_25A10C1A0();

  if (v6)
  {
    v7 = *(v2 + 72);
    *(v2 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
    sub_25A10BA40();
  }
}

uint64_t sub_25A1090C4()
{
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();

  return *(v0 + 80);
}

uint64_t sub_25A109164@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();

  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_25A10920C(uint64_t result)
{
  if (*(v1 + 80) == (result & 1))
  {
    *(v1 + 80) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
    sub_25A10BA40();
  }

  return result;
}

uint64_t sub_25A10931C()
{
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();

  return *(v0 + 81);
}

uint64_t sub_25A1093BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();

  *a2 = *(v3 + 81);
  return result;
}

uint64_t sub_25A109464(uint64_t result)
{
  if (*(v1 + 81) == (result & 1))
  {
    *(v1 + 81) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
    sub_25A10BA40();
  }

  return result;
}

id sub_25A109574()
{
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();

  v1 = *(v0 + 88);

  return v1;
}

id sub_25A109624@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();

  v4 = *(v3 + 88);
  *a2 = v4;

  return v4;
}

void sub_25A1096DC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 88);
  sub_25A0F2468(0, &qword_27F9F3868, 0x277D296F0);
  v5 = v4;
  v6 = sub_25A10C1A0();

  if (v6)
  {
    v7 = *(v2 + 88);
    *(v2 + 88) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
    sub_25A10BA40();
  }
}

uint64_t sub_25A109848()
{
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();

  swift_getKeyPath();
  sub_25A10BA50();

  swift_getKeyPath();
  sub_25A10BA50();

  swift_getKeyPath();
  sub_25A10BA50();

  swift_getKeyPath();
  sub_25A10BA50();

  swift_getKeyPath();
  sub_25A10BA50();

  swift_getKeyPath();
  sub_25A10BA50();
}

void sub_25A109A10(uint64_t a1, uint64_t a2)
{
  sub_25A109B0C();
  if (qword_27F9F31E8 != -1)
  {
    swift_once();
  }

  v3 = qword_27F9F7088;
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();
}

void sub_25A109B0C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();

  v2 = *(v0 + 88);
  swift_getKeyPath();
  v3 = v2;
  sub_25A10BA50();

  [v3 setHour_];

  swift_getKeyPath();
  sub_25A10BA50();

  v4 = *(v1 + 88);
  swift_getKeyPath();
  v5 = v4;
  sub_25A10BA50();

  [v5 setMinute_];

  swift_getKeyPath();
  sub_25A10BA50();

  v6 = *(v1 + 88);
  swift_getKeyPath();
  v7 = v6;
  sub_25A10BA50();

  [v7 setRepeatSchedule_];

  swift_getKeyPath();
  sub_25A10BA50();

  v8 = *(v1 + 88);
  swift_getKeyPath();
  v9 = v8;
  sub_25A10BA50();

  if (*(v1 + 64))
  {
    v10 = *(v1 + 56);
    v11 = *(v1 + 64);

    v12 = sub_25A10C050();
  }

  else
  {
    v12 = 0;
  }

  [v9 setTitle_];

  swift_getKeyPath();
  sub_25A10BA50();

  v13 = *(v1 + 88);
  swift_getKeyPath();
  v14 = v13;
  sub_25A10BA50();

  v15 = *(v1 + 72);
  [v14 setSound_];

  swift_getKeyPath();
  sub_25A10BA50();

  v16 = *(v1 + 88);
  swift_getKeyPath();
  v17 = v16;
  sub_25A10BA50();

  [v17 setEnabled_];

  swift_getKeyPath();
  sub_25A10BA50();

  v18 = *(v1 + 88);
  swift_getKeyPath();
  v19 = v18;
  sub_25A10BA50();

  [v19 setAllowsSnooze_];
}

uint64_t sub_25A109F64()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);

  v3 = OBJC_IVAR____TtC20MobileTimerUISupport10AlarmModel___observationRegistrar;
  v4 = sub_25A10BA70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_25A10A048(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25A10A080()
{
  result = sub_25A10BA70();
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

uint64_t sub_25A10A154@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_25A10A164()
{
  v2 = *v0;
  sub_25A10C3E0();
  type metadata accessor for AlarmModel(0);
  sub_25A10C010();
  return sub_25A10C410();
}

uint64_t sub_25A10A1C4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();

  v2 = *(v1 + 88);
  v3 = sub_25A10C1B0();

  return MEMORY[0x25F84CA00](v3);
}

uint64_t sub_25A10A288()
{
  sub_25A10C3E0();
  sub_25A10C010();
  return sub_25A10C410();
}

uint64_t sub_25A10A334(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25A10B8F8;

  return sub_25A107EF8(a1, v4, v5, v6);
}

uint64_t sub_25A10A3E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3858, &qword_25A10F600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25A10A450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F3858, &qword_25A10F600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25A10A4C0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25A10A5B4;

  return v6(v2 + 32);
}

uint64_t sub_25A10A5B4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_25A10A6C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25A10A700(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25A10B8F8;

  return sub_25A10A4C0(a1, v5);
}

uint64_t sub_25A10A7B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25A10A870;

  return sub_25A10A4C0(a1, v5);
}

uint64_t sub_25A10A870()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25A10A9A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25A10AA74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_25A108C80(v2, v3);
}

uint64_t sub_25A10AB3C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_25A0F2468(0, &qword_27F9F3260, 0x277D82BB8);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v33 = a2 & 0xC000000000000001;
      v11 = 4;
      v32 = v5;
      while (1)
      {
        v12 = v11 - 4;
        v13 = v11 - 3;
        if (__OFADD__(v11 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x25F84C830](v11 - 4, v3);
          if (!v33)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v14 = *(v3 + 8 * v11);

          if (!v33)
          {
LABEL_24:
            if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v15 = *(a2 + 8 * v11);

            goto LABEL_26;
          }
        }

        v15 = MEMORY[0x25F84C830](v11 - 4, a2);
LABEL_26:
        v16 = *(v15 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel_mtTimer);
        v17 = *(v14 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel_mtTimer);
        v18 = v16;
        v19 = sub_25A10C1A0();

        if (v19)
        {
          ++v11;
          if (v13 != v32)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v3 + 32);
    v21 = (a2 + 32);
    v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v5 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      a2 = *v20;
      v34 = v20 + 1;
      v25 = *v21++;
      v3 = v25;
      v26 = *(*v20 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel_mtTimer);
      v27 = *(v25 + OBJC_IVAR____TtC20MobileTimerUISupport10TimerModel_mtTimer);

      v28 = v26;
      v29 = v27;
      v19 = sub_25A10C1A0();

      v31 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        v20 = v34;
        if (v31)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_25A10C2A0();
  }

  result = sub_25A10C2A0();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_25A10AE10(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_25A0F2468(0, &qword_27F9F3888, 0x277D29738);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x25F84C830](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x25F84C830](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_25A10C1A0();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_25A10C1A0();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_25A10C2A0();
  }

  result = sub_25A10C2A0();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_25A10B060(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_25A10C2A0();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v18 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v21 = a2 & 0xC000000000000001;
    v11 = 4;
    v19 = v5;
    v20 = a2;
    while (1)
    {
      v4 = v11 - 4;
      v12 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_25A10C2A0();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x25F84C830](v11 - 4, a1);
        if (v21)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v13 = *(a1 + 8 * v11);

        if (v21)
        {
LABEL_20:
          v14 = MEMORY[0x25F84C830](v11 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v4 >= *(v18 + 16))
      {
        goto LABEL_31;
      }

      v14 = *(a2 + 8 * v11);

LABEL_25:
      swift_getKeyPath();
      sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
      sub_25A10BA50();

      v15 = *(v13 + 88);
      swift_getKeyPath();
      v16 = v15;
      sub_25A10BA50();

      v17 = [v16 isEqualToAlarm_];

      if (v17)
      {
        ++v11;
        a2 = v20;
        if (v12 != v19)
        {
          continue;
        }
      }

      return v17;
    }
  }

  __break(1u);
  return result;
}

id sub_25A10B2EC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_25A10A9A4(&qword_27F9F3870, type metadata accessor for AlarmModel);
  sub_25A10BA50();

  v4 = *(a1 + 88);
  swift_getKeyPath();
  v5 = v4;
  sub_25A10BA50();

  v6 = [v5 isEqualToAlarm_];

  return v6;
}

uint64_t sub_25A10B400(void *a1)
{
  v2 = [a1 alarmIDString];
  v3 = sub_25A10C060();
  v24 = v4;
  v25 = v3;

  v23 = [a1 hour];
  v5 = [a1 minute];
  v6 = [a1 repeatSchedule];
  v7 = [a1 title];
  if (v7)
  {
    v8 = v7;
    v9 = sub_25A10C060();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [a1 sound];
  v13 = [a1 isEnabled];
  v14 = [a1 allowsSnooze];
  [a1 mutableCopy];
  sub_25A10C1F0();
  swift_unknownObjectRelease();
  sub_25A0F2468(0, &qword_27F9F3868, 0x277D296F0);
  swift_dynamicCast();
  v15 = type metadata accessor for AlarmModel(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  *(v18 + 56) = 0;
  *(v18 + 64) = 0;
  sub_25A10BA60();
  *(v18 + 16) = v25;
  *(v18 + 24) = v24;
  *(v18 + 32) = v23;
  *(v18 + 40) = v5;
  *(v18 + 48) = v6;
  v19 = *(v18 + 64);

  *(v18 + 56) = v9;
  *(v18 + 64) = v11;
  *(v18 + 72) = v12;
  *(v18 + 80) = v13;
  *(v18 + 81) = v14;
  *(v18 + 88) = v26;
  v20 = v12;
  v21 = v26;

  sub_25A10BA30();

  return v18;
}

uint64_t sub_25A10B66C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25A10A870;

  return sub_25A107EF8(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_25A10B760()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 88);
  *(v1 + 88) = v2;
  v4 = v2;
}

void sub_25A10B7B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
  v4 = v2;
}

uint64_t sub_25A10B818(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_25A107534(v4);
}

uint64_t sub_25A10B844()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
}

uint64_t sub_25A10B884(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_25A107290(v4);
}

uint64_t sub_25A10B8B0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}