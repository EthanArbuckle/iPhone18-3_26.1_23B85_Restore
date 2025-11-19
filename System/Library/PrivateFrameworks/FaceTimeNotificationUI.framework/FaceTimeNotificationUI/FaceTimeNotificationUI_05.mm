uint64_t sub_24AA9A39C(uint64_t a1)
{
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v2 = sub_24AAB3A84();
  __swift_project_value_buffer(v2, qword_27EF919D8);
  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24AA0F000, v3, v4, "did tap live translation button", v5, 2u);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  v6 = (a1 + *(type metadata accessor for TranslationButton(0) + 32));
  v8 = *v6;
  v9 = *(v6 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87280, &qword_24AABDAC0);
  return sub_24AAB4B74();
}

uint64_t sub_24AA9A4CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TranslationButton(0) + 28);
  v4 = (v3 + *(type metadata accessor for TranslationControl(0) + 24));
  v5 = *v4;
  v6 = v4[1];

  v7 = sub_24AAB4AC4();
  v8 = sub_24AAB45D4();
  result = swift_getKeyPath();
  *a2 = v7;
  a2[1] = result;
  a2[2] = v8;
  return result;
}

uint64_t sub_24AA9A550(uint64_t a1)
{
  v1[2] = a1;
  sub_24AAB50C4();
  v1[3] = sub_24AAB50B4();
  v3 = sub_24AAB5094();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_24AA9A5E8, v3, v2);
}

uint64_t sub_24AA9A5E8()
{
  v1 = **(v0 + 16);
  v2 = *(MEMORY[0x277CFBA68] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_24AA3B77C;

  return MEMORY[0x28214EAE8]();
}

__n128 sub_24AA9A680@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24AAB2CD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = type metadata accessor for TranslationButton(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87458, &qword_24AABD730);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  (*(v5 + 56))(v25 - v12, 1, 1, v4);
  v13 = *a1;
  sub_24AA9B188(a1, v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_24AA9B1F0(v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);

  sub_24AAB2CC4();
  sub_24AAB3004();
  KeyPath = swift_getKeyPath();
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87520, &unk_24AABDAD0) + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CA8, &qword_24AABC270) + 28);
  v19 = *MEMORY[0x277CDF3C0];
  v20 = sub_24AAB3CE4();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = KeyPath;
  sub_24AAB4D44();
  sub_24AAB3F24();
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87500, &qword_24AABDAC8) + 36);
  v22 = v25[5];
  *(v21 + 64) = v25[4];
  *(v21 + 80) = v22;
  *(v21 + 96) = v25[6];
  v23 = v25[1];
  *v21 = v25[0];
  *(v21 + 16) = v23;
  result = v25[3];
  *(v21 + 32) = v25[2];
  *(v21 + 48) = result;
  return result;
}

uint64_t sub_24AA9A9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  (*(a3 + 8))();
  v5 = (a3 + *(type metadata accessor for TranslationButton(0) + 32));
  v7 = *v5;
  v8 = *(v5 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87280, &qword_24AABDAC0);
  return sub_24AAB4B74();
}

uint64_t sub_24AA9AACC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_24AA99118(v4);
}

uint64_t sub_24AA9AAF8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 48);
  *(v1 + 48) = *(v0 + 24);
}

uint64_t sub_24AA9AB64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AA9ABAC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
}

uint64_t sub_24AA9ABFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AAB2B84();
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24AA9ACD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24AAB2B84();
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AA9ADA8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for TranslationControl(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_24AA9AE68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TranslationControl(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24AA9AF0C()
{
  sub_24AAB31F4();
  if (v0 <= 0x3F)
  {
    sub_24AA55CA0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TranslationControl(319);
      if (v2 <= 0x3F)
      {
        sub_24AA91B0C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24AA9B010(uint64_t a1)
{
  result = sub_24AA98F48(&qword_27EF874D0, type metadata accessor for TranslationControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA9B068(uint64_t a1)
{
  result = sub_24AA98F48(&qword_27EF874D8, type metadata accessor for TranslationControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA9B0C0(void *a1)
{
  a1[1] = sub_24AA98F48(&qword_27EF874E0, type metadata accessor for TranslationControl);
  a1[2] = sub_24AA98F48(&qword_27EF874E8, type metadata accessor for TranslationControl);
  result = sub_24AA98F48(&qword_27EF874F0, type metadata accessor for TranslationControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA9B188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA9B1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA9B254()
{
  v1 = *(type metadata accessor for TranslationButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24AA9A39C(v2);
}

uint64_t objectdestroy_40Tm()
{
  v1 = type metadata accessor for TranslationButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 16);

  v7 = v0 + v3 + *(v1 + 28);
  sub_24AA15ED0(*v7, *(v7 + 8), *(v7 + 16));
  v8 = type metadata accessor for TranslationControl(0);
  v9 = v8[5];
  v10 = sub_24AAB2B84();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = *(v7 + v8[6] + 8);

  v12 = (v7 + v8[7]);
  v13 = *v12;

  v14 = v12[1];

  if (v12[3])
  {
    v15 = v12[2];

    v16 = v12[3];
  }

  v17 = *(v0 + v3 + *(v1 + 32) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AA9B444()
{
  v2 = *(type metadata accessor for TranslationButton(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AA43DBC;

  return sub_24AA9A550(v0 + v3);
}

double sub_24AA9B510@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TranslationButton(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  *&result = sub_24AA9A680(v4, a1).n128_u64[0];
  return result;
}

unint64_t sub_24AA9B580()
{
  result = qword_27EF87508;
  if (!qword_27EF87508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF874F8, &qword_24AABDA08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE0, &unk_24AAB6300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE8, &qword_24AAB85F0);
    sub_24AA14EE0();
    sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0);
    swift_getOpaqueTypeConformance2();
    sub_24AA98F48(&qword_27EF84C80, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87508);
  }

  return result;
}

unint64_t sub_24AA9B6D8()
{
  result = qword_27EF87510;
  if (!qword_27EF87510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87500, &qword_24AABDAC8);
    sub_24AA9B764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87510);
  }

  return result;
}

unint64_t sub_24AA9B764()
{
  result = qword_27EF87518;
  if (!qword_27EF87518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87520, &unk_24AABDAD0);
    sub_24AA98F48(&qword_27EF87528, MEMORY[0x277CFBA28]);
    sub_24AA16A68(&unk_27EF86FE0, &qword_27EF86CA8, &qword_24AABC270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87518);
  }

  return result;
}

uint64_t sub_24AA9B84C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TranslationButton(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24AA9A9C8(a1, a2, v6);
}

uint64_t sub_24AA9B8DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v20 = *a1;
  v21 = v4;
  v22 = v5;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v17 = *a2;
  v18 = v6;
  v19 = v7;
  sub_24AA15F10(v20, v4, v5);
  sub_24AA15F10(v17, v6, v7);
  v8 = _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(&v20, &v17);
  sub_24AA15ED0(v17, v18, v19);
  sub_24AA15ED0(v20, v21, v22);
  if (v8 & 1) != 0 && (v9 = type metadata accessor for TranslationControl(0), (MEMORY[0x24C2233A0](a1 + v9[5], a2 + v9[5])) && ((v10 = v9[6], v11 = *(a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v11 == *v13) && v12 == v13[1] || (sub_24AAB5474()) && (v14 = v9[7], sub_24AAAA8E0(*(a1 + v14), *(a1 + v14 + 8), *(a1 + v14 + 16), *(a1 + v14 + 24), *(a2 + v14), *(a2 + v14 + 8), *(a2 + v14 + 16), *(a2 + v14 + 24))) && *(a1 + v9[8]) == *(a2 + v9[8]))
  {
    v15 = *(a1 + v9[9]) ^ *(a2 + v9[9]) ^ 1;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_24AA9BA24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF874F8, &qword_24AABDA08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87500, &qword_24AABDAC8);
  sub_24AA9B580();
  sub_24AA9B6D8();
  return swift_getOpaqueTypeConformance2();
}

double VideoPreviewView.init(aspectRatio:contentMode:callCenter:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24AAB4B54();
  result = v11;
  *(a5 + 24) = v11;
  *(a5 + 32) = v12;
  *(a5 + 16) = a2 & 1;
  *(a5 + 17) = a3 & 1;
  *a5 = a4;
  *(a5 + 8) = a1;
  return result;
}

uint64_t VideoPreviewView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87530, &qword_24AABDB40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87538, &qword_24AABDB48);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87540, &qword_24AABDB50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = v1[1];
  v38 = *v1;
  v39 = v14;
  v40 = *(v1 + 4);
  v15 = sub_24AAB4A24();
  v16 = sub_24AAB4D44();
  v33 = v17;
  v34 = v16;
  v18 = swift_allocObject();
  v19 = v1[1];
  *(v18 + 16) = *v1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(v1 + 4);
  if (v39)
  {
    v37 = *(v1 + 24);
    sub_24AA9BF7C(&v38, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87548, &qword_24AABDB58);
    sub_24AAB4B64();
    v20 = v36[0];
  }

  else
  {
    v20 = *(&v38 + 1);
    sub_24AA9BF7C(&v38, v36);
  }

  v21 = BYTE1(v39);
  LOBYTE(v37) = 0;
  v22 = [objc_opt_self() defaultCenter];
  v23 = *MEMORY[0x277D6F140];
  v24 = &v5[*(v2 + 52)];
  sub_24AAB51D4();

  v25 = swift_allocObject();
  v26 = v39;
  *(v25 + 16) = v38;
  *(v25 + 32) = v26;
  *(v25 + 48) = v40;
  *v5 = v15;
  *(v5 + 1) = sub_24AA9BF74;
  v27 = v33;
  v28 = v34;
  *(v5 + 2) = v18;
  *(v5 + 3) = v28;
  *(v5 + 4) = v27;
  *(v5 + 5) = v20;
  v5[48] = 0;
  v5[49] = v21;
  v29 = &v5[*(v2 + 56)];
  *v29 = sub_24AA9C224;
  v29[1] = v25;
  sub_24AA1A25C(v5, v9, &qword_27EF87530, &qword_24AABDB40);
  v30 = &v9[*(v6 + 36)];
  *v30 = sub_24AA9C22C;
  v30[1] = 0;
  v30[2] = 0;
  v30[3] = 0;
  sub_24AA1A25C(v9, v13, &qword_27EF87538, &qword_24AABDB48);
  v31 = &v13[*(v10 + 36)];
  *v31 = 0;
  *(v31 + 1) = 0;
  *(v31 + 2) = sub_24AA9C248;
  *(v31 + 3) = 0;
  sub_24AA1A25C(v13, v35, &qword_27EF87540, &qword_24AABDB50);
  return sub_24AA9BF7C(&v38, v36);
}

double sub_24AA9BED4@<D0>(id *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_24AAB3DD4();
  sub_24AAB3DD4();
  sub_24AAB4D44();
  sub_24AAB3D54();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  result = *&v9;
  *(a2 + 40) = v9;
  return result;
}

void sub_24AA9BFB4(uint64_t a1, uint64_t a2)
{
  v3 = [*a2 videoDeviceController];
  [v3 localVideoLandscapeAspectRatio];
  v5 = v4;
  v7 = v6;

  if (v7 < v5)
  {
    v5 = v7;
  }

  if (v5 != 0.0)
  {
    v19 = *(a2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87548, &qword_24AABDB58);
    sub_24AAB4B74();
    if (qword_27EF84C68 != -1)
    {
      swift_once();
    }

    v8 = sub_24AAB3A84();
    __swift_project_value_buffer(v8, qword_27EF919D8);
    v9 = sub_24AAB3A64();
    v10 = sub_24AAB5144();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v19 = v12;
      *v11 = 136315394;
      v13 = sub_24AAB4F44();
      v15 = sub_24AA406B4(v13, v14, &v19);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = sub_24AAB4F44();
      v18 = sub_24AA406B4(v16, v17, &v19);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_24AA0F000, v9, v10, "Resizing video preview with ratio %s / %s.", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v12, -1, -1);
      MEMORY[0x24C226630](v11, -1, -1);
    }
  }
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_24AA9C22C()
{
  v0 = qword_27EF919F0;
  if (__OFADD__(qword_27EF919F0, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_27EF919F0;
    sub_24AA9C67C(v0);
  }
}

void sub_24AA9C248()
{
  v0 = qword_27EF919F0;
  if (__OFSUB__(qword_27EF919F0, 1))
  {
    __break(1u);
  }

  else
  {
    --qword_27EF919F0;
    sub_24AA9C67C(v0);
  }
}

uint64_t sub_24AA9C308(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24AA9C38C()
{
  result = qword_27EF87560;
  if (!qword_27EF87560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87530, &qword_24AABDB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87560);
  }

  return result;
}

id sub_24AA9C400()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v3 = [v1 videoDeviceController];
  v4 = [v2 layer];
  [v3 setLocalFrontLayer_];

  v5 = [v1 videoDeviceController];
  [v5 setCurrentVideoOrientation_];

  return v2;
}

uint64_t sub_24AA9C4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA9C628();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24AA9C544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA9C628();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24AA9C5A8()
{
  sub_24AA9C628();
  sub_24AAB4284();
  __break(1u);
}

unint64_t sub_24AA9C5D4()
{
  result = qword_27EF87568;
  if (!qword_27EF87568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87568);
  }

  return result;
}

unint64_t sub_24AA9C628()
{
  result = qword_27EF87570;
  if (!qword_27EF87570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87570);
  }

  return result;
}

void sub_24AA9C67C(uint64_t a1)
{
  if (qword_27EF919F0 == a1)
  {
    return;
  }

  v1 = [objc_opt_self() sharedInstance];
  v16 = [v1 videoDeviceController];

  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v2 = sub_24AAB3A84();
  __swift_project_value_buffer(v2, qword_27EF919D8);
  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = qword_27EF919F0;
    _os_log_impl(&dword_24AA0F000, v3, v4, "VideoPreviewView: activeCount = %ld", v5, 0xCu);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  if (!qword_27EF919F0)
  {
    v13 = sub_24AAB3A64();
    v14 = sub_24AAB5144();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24AA0F000, v13, v14, "VideoPreviewView: stopping preview.", v15, 2u);
      MEMORY[0x24C226630](v15, -1, -1);
    }

    [v16 stopPreview];
    v9 = sub_24AAB3A64();
    v10 = sub_24AAB5144();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_18;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "VideoPreviewView: preview stopped.";
    goto LABEL_17;
  }

  if (qword_27EF919F0 >= 1 && ([v16 isPreviewRunning] & 1) == 0)
  {
    v6 = sub_24AAB3A64();
    v7 = sub_24AAB5144();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24AA0F000, v6, v7, "VideoPreviewView: starting preview.", v8, 2u);
      MEMORY[0x24C226630](v8, -1, -1);
    }

    [v16 startPreview];
    v9 = sub_24AAB3A64();
    v10 = sub_24AAB5144();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_18;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "VideoPreviewView: preview started.";
LABEL_17:
    _os_log_impl(&dword_24AA0F000, v9, v10, v12, v11, 2u);
    MEMORY[0x24C226630](v11, -1, -1);
LABEL_18:
  }
}

Swift::Void __swiftcall CallScreeningViewModel.update(_:)(Swift::Bool a1)
{
  v2 = v1;
  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87588, &unk_24AABDDB8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v119 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v118 = &v107 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855C0, &unk_24AAB7270);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v117 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v116 = &v107 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87590, &unk_24AABDDC8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v113 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v123 = &v107 - v18;
  v19 = sub_24AAB2AF4();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v114 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_24AAB2AA4();
  v115 = *(v124 - 8);
  v22 = *(v115 + 64);
  MEMORY[0x28223BE20](v124);
  v122 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85868, &qword_24AAB7940);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v112 = &v107 - v26;
  v27 = sub_24AAB2CD4();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v111 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_24AAB4ED4();
  v110 = *(v120 - 8);
  v30 = *(v110 + 64);
  v31 = MEMORY[0x28223BE20](v120);
  v33 = &v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v109 = &v107 - v34;
  v128 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_logger;
  v35 = sub_24AAB3A64();
  v36 = sub_24AAB5144();
  v37 = os_log_type_enabled(v35, v36);
  LODWORD(v121) = v3;
  v108 = v33;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v130[0] = v39;
    *v38 = 136315906;
    *(v38 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, v130);
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_24AA406B4(0x5F28657461647075, 0xEA0000000000293ALL, v130);
    *(v38 + 22) = 2048;
    *(v38 + 24) = 140;
    *(v38 + 32) = 1024;
    *(v38 + 34) = v3;
    _os_log_impl(&dword_24AA0F000, v35, v36, "[%s:%s:%ld] Update called, initialUpdate: %{BOOL}d", v38, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v39, -1, -1);
    MEMORY[0x24C226630](v38, -1, -1);
  }

  v40 = v2;
  v42 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call);
  v41 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call + 8);
  ObjectType = swift_getObjectType();
  v130[0] = v42;
  v44 = *(v41 + 8);
  if (sub_24AAB34D4() & 1) == 0 || (sub_24AAB3944())
  {
    v45 = sub_24AAB3954();
    v129 = 0;
    v46 = v45 == 4;
    goto LABEL_6;
  }

  v65 = sub_24AAB39F4();
  v46 = sub_24AAB3954() == 4;
  if (v65 != 1)
  {
    v129 = 0;
    goto LABEL_6;
  }

  v130[0] = v42;
  v66 = sub_24AAB3524();
  v129 = 1;
  LODWORD(v127) = 1;
  if (v66 != 1)
  {
LABEL_6:
    v130[0] = v42;
    LODWORD(v127) = sub_24AAB3524() == 2;
  }

  v125 = v44;
  v47 = sub_24AAB3A64();
  v48 = sub_24AAB5144();
  v49 = os_log_type_enabled(v47, v48);
  v126 = ObjectType;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v130[0] = v51;
    *v50 = 136316674;
    *(v50 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, v130);
    *(v50 + 12) = 2080;
    *(v50 + 14) = sub_24AA406B4(0x5F28657461647075, 0xEA0000000000293ALL, v130);
    *(v50 + 22) = 2048;
    *(v50 + 24) = 150;
    *(v50 + 32) = 1024;
    v52 = v129;
    *(v50 + 34) = v129;
    *(v50 + 38) = 1024;
    *(v50 + 40) = v52;
    *(v50 + 44) = 1024;
    *(v50 + 46) = v46;
    *(v50 + 50) = 1024;
    *(v50 + 52) = v127;
    _os_log_impl(&dword_24AA0F000, v47, v48, "[%s:%s:%ld] callIsScreening: %{BOOL}d, showTranscripts: %{BOOL}d, isRinging: %{BOOL}d, receptionistIsScreening: %{BOOL}d", v50, 0x38u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v51, -1, -1);
    MEMORY[0x24C226630](v50, -1, -1);

    v53 = 0;
  }

  else
  {

    v53 = 0;
    v52 = v129;
  }

  v54 = &qword_27EF87000;
  v55 = v40;
  if (v52 && ((v130[0] = v42, sub_24AAB3524() == 1) || (v130[0] = v42, sub_24AAB3524() == 2)))
  {
    v56 = v109;
    sub_24AAB4E84();
    v57 = v110;
    v58 = v120;
    (*(v110 + 16))(v108, v56, v120);
    if (qword_27EF84C50 != -1)
    {
      swift_once();
    }

    v59 = qword_27EF919A8;
    sub_24AAB2CC4();
    v60 = sub_24AAB4F14();
    v62 = v61;
    (*(v57 + 8))(v56, v58);
    sub_24AAA2D0C(v60, v62);
    LODWORD(v58) = v129;
    v54 = &qword_27EF87000;
  }

  else
  {
    v63 = (v40 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel);
    if (*(v40 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel + 8))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v107 - 3) = 0;
      v105 = 0;
      *(&v107 - 4) = v40;
      v130[0] = v40;
      sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
      v55 = v40;
      sub_24AAB2CE4();
    }

    else
    {
      *v63 = 0;
      v63[1] = 0;
    }

    LODWORD(v58) = v129;
  }

  swift_getKeyPath();
  v67 = v54[175];
  v130[0] = v55;
  v68 = sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  if (v58 != *(v55 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__isShowingTranscripts))
  {
    v69 = sub_24AAB3A64();
    v70 = sub_24AAB5144();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v120 = 0;
      v73 = v68;
      v74 = v72;
      v130[0] = v72;
      *v71 = 136315906;
      *(v71 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, v130);
      *(v71 + 12) = 2080;
      *(v71 + 14) = sub_24AA406B4(0x5F28657461647075, 0xEA0000000000293ALL, v130);
      *(v71 + 22) = 2048;
      *(v71 + 24) = 159;
      *(v71 + 32) = 1024;
      *(v71 + 34) = v58;
      _os_log_impl(&dword_24AA0F000, v69, v70, "[%s:%s:%ld] Update transcripts state: %{BOOL}d", v71, 0x26u);
      swift_arrayDestroy();
      v75 = v74;
      v68 = v73;
      v53 = v120;
      MEMORY[0x24C226630](v75, -1, -1);
      MEMORY[0x24C226630](v71, -1, -1);
    }

    if (!v58)
    {
      v76 = *(v55 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_transcriptViewController);
      *(v55 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_transcriptViewController) = 0;
    }

    v77 = MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
    MEMORY[0x28223BE20](v77);
    v105 = v55;
    LOBYTE(v106) = v58;
    sub_24AAB3E24();
  }

  swift_getKeyPath();
  v130[0] = v55;
  sub_24AAB2CF4();

  v78 = v127;
  if (!((*(v55 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity) == 0) | v127 & 1))
  {
    CallScreeningViewModel.clearActivity()();
  }

  if (v58 & v121 & v78)
  {
    v127 = v68;
    v79 = sub_24AAB3A64();
    v80 = sub_24AAB5144();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v130[0] = v82;
      *v81 = 136315650;
      *(v81 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, v130);
      *(v81 + 12) = 2080;
      *(v81 + 14) = sub_24AA406B4(0x5F28657461647075, 0xEA0000000000293ALL, v130);
      *(v81 + 22) = 2048;
      *(v81 + 24) = 174;
      _os_log_impl(&dword_24AA0F000, v79, v80, "[%s:%s:%ld] Setting up call screening activity", v81, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v82, -1, -1);
      MEMORY[0x24C226630](v81, -1, -1);
    }

    v128 = v67;
    v120 = v53;
    sub_24AAB2FA4();
    v83 = sub_24AAB2BD4();
    (*(*(v83 - 8) + 56))(v112, 1, 1, v83);
    swift_allocObject();
    swift_weakInit();
    v121 = sub_24AAB2F94();
    v125 = v55;
    if (qword_27EF84C58 != -1)
    {
      swift_once();
    }

    v111 = *algn_27EF919B8;
    v112 = qword_27EF919B0;
    v110 = qword_27EF919C0;
    v105 = 0xE000000000000000;
    sub_24AAB2AD4();
    sub_24AAB2AE4();
    sub_24AAB2AB4();
    v84 = v123;
    sub_24AAB3074();
    v108 = sub_24AAB3084();
    v85 = *(v108 - 8);
    v107 = *(v85 + 56);
    v109 = (v85 + 56);
    v107(v84, 0, 1, v108);
    v130[0] = v42;
    sub_24AAB34C4();
    sub_24AAB2AE4();
    v86 = v116;
    sub_24AAB2AB4();
    v115 = *(v115 + 56);
    (v115)(v86, 0, 1, v124);
    v87 = *MEMORY[0x277CFBA50];
    v88 = sub_24AAB3134();
    v89 = *(v88 - 8);
    v90 = v118;
    (*(v89 + 104))(v118, v87, v88);
    v91 = *(v89 + 56);
    v91(v90, 0, 1, v88);
    v92 = v119;
    v91(v119, 1, 1, v88);
    v107(v113, 1, 1, v108);
    v93 = sub_24AAB2FC4();
    v94 = *(v93 + 48);
    v95 = *(v93 + 52);
    swift_allocObject();
    v126 = sub_24AAB2FB4();
    v105 = 0xE000000000000000;
    sub_24AAB2AD4();
    sub_24AAB2AE4();
    sub_24AAB2AB4();
    v96 = v124;
    v97 = v115;
    (v115)(v86, 0, 1, v124);
    v97(v117, 1, 1, v96);
    v91(v90, 1, 1, v88);
    v91(v92, 1, 1, v88);
    v98 = sub_24AAB2FF4();
    v99 = *(v98 + 48);
    v100 = *(v98 + 52);
    swift_allocObject();
    v101 = sub_24AAB2FE4();
    v102 = swift_getKeyPath();
    MEMORY[0x28223BE20](v102);
    v104 = v125;
    v103 = v126;
    v58 = v121;
    *(&v107 - 4) = v125;
    *(&v107 - 3) = v58;
    v105 = v103;
    v106 = v101;
    v130[0] = v104;
    sub_24AAB2CE4();

    LOBYTE(v58) = v129;
  }

  CallScreeningViewModel.updateBlockButtonVisibility(with:)(v58);
}

uint64_t CallScreeningViewModel.__allocating_init(call:callCenter:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  sub_24AA16768(a3, v13);
  if (qword_27EF84C60 != -1)
  {
    swift_once();
  }

  v8 = qword_27EF87140;
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v11 = sub_24AAA7274(a1, a2, v13, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v11;
}

uint64_t sub_24AA9DD34(uint64_t a1)
{
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CE4();
  sub_24AA16D74(a1);
}

double sub_24AA9DE08@<D0>(uint64_t a1@<X8>)
{

  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315906;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v19);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0xD000000000000017, 0x800000024AAD35F0, &v19);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 288;
    *(v5 + 32) = 2080;
    swift_getKeyPath();
    sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
    sub_24AAB2CF4();

    v18 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__shouldShowBlockButtonForUnknownCallerWhileScreening);
    v7 = sub_24AAB4F44();
    v9 = sub_24AA406B4(v7, v8, &v19);

    *(v5 + 34) = v9;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] trailingControlRecipe called, shouldShowBlockButtonForUnknownCallerWhileScreening: %s", v5, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  swift_getKeyPath();
  v19 = v1;
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__shouldShowBlockButtonForUnknownCallerWhileScreening) == 1)
  {
    v10 = type metadata accessor for BlockControl(0);
    *(a1 + 24) = v10;
    *(a1 + 32) = sub_24AAA7FFC(&qword_27EF867F8, type metadata accessor for BlockControl);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
    *boxed_opaque_existential_1Tm = xmmword_24AABDD40;
    *(boxed_opaque_existential_1Tm + 16) = 2;
    v12 = boxed_opaque_existential_1Tm + v10[5];
    sub_24AAB2B24();
    v13 = (boxed_opaque_existential_1Tm + v10[6]);
    if (qword_27EF84C70 != -1)
    {
      swift_once();
    }

    v14 = unk_27EF91A00;
    v15 = qword_27EF91A08;
    v16 = unk_27EF91A10;
    *v13 = qword_27EF919F8;
    v13[1] = v14;
    v13[2] = v15;
    v13[3] = v16;
    *(boxed_opaque_existential_1Tm + v10[7]) = 0;
    *(boxed_opaque_existential_1Tm + v10[8]) = 0;
    *(a1 + 80) = 2;

    sub_24AA1B750(v15, v16);
  }

  else
  {
    result = 0.0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 80) = -1;
  }

  return result;
}

void sub_24AA9E1C4(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v157 = a3;
  v7 = type metadata accessor for CustomViewControl(0);
  v8 = *(*(v7 - 1) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v155 = &v152 - v13;
  MEMORY[0x28223BE20](v12);
  v154 = &v152 - v14;
  v15 = sub_24AAB3A64();
  v16 = sub_24AAB5144();
  v17 = os_log_type_enabled(v15, v16);
  v156 = a2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v159 = v19;
    *v18 = 136316162;
    *(v18 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v159);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_24AA406B4(0xD00000000000001ALL, 0x800000024AAD3510, &v159);
    *(v18 + 22) = 2048;
    *(v18 + 24) = 66;
    *(v18 + 32) = 1024;
    *(v18 + 34) = a1;
    *(v18 + 38) = 1024;
    *(v18 + 40) = a2 & 1;
    _os_log_impl(&dword_24AA0F000, v15, v16, "[%s:%s:%ld] Control recipe for state: %d, disabled: %{BOOL}d", v18, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v19, -1, -1);
    MEMORY[0x24C226630](v18, -1, -1);
  }

  v21 = *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call);
  v20 = *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call + 8);
  swift_getObjectType();
  v159 = v21;
  v22 = *(v20 + 8);
  if (sub_24AAB3574())
  {
    goto LABEL_4;
  }

  if (a1 != 4)
  {
    if (a1 == 6)
    {
      v158 = v21;
      sub_24AAB35B4();
      if (v160)
      {
        v24 = v161;

        v25 = v157;
        if (v24)
        {
          v26 = type metadata accessor for DialControl(0);
          *(v25 + 24) = v26;
          *(v25 + 32) = sub_24AAA7FFC(&qword_27EF854B0, type metadata accessor for DialControl);
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v25);
          *boxed_opaque_existential_1Tm = xmmword_24AAB6E00;
          *(boxed_opaque_existential_1Tm + 16) = 2;
          v28 = boxed_opaque_existential_1Tm + v26[5];
          sub_24AAB2B24();
          v29 = (boxed_opaque_existential_1Tm + v26[6]);
          *v29 = 0x69662E656E6F6870;
          v29[1] = 0xEA00000000006C6CLL;
          v30 = (boxed_opaque_existential_1Tm + v26[7]);
          v31 = sub_24AAB4A34();
          v32 = sub_24AAB4A44();
          *v30 = v31;
          v30[1] = v32;
          v30[2] = 0;
          v30[3] = 0;
          *(boxed_opaque_existential_1Tm + v26[8]) = 0;
          *(boxed_opaque_existential_1Tm + v26[9]) = 0;
          v33 = type metadata accessor for CancelDialControl(0);
          *(v25 + 64) = v33;
          *(v25 + 72) = sub_24AAA7FFC(&qword_27EF854B8, type metadata accessor for CancelDialControl);
          v34 = __swift_allocate_boxed_opaque_existential_1Tm((v25 + 40));
          *v34 = xmmword_24AAB6E10;
          *(v34 + 16) = 2;
          v35 = v34 + v33[5];
          sub_24AAB2B24();
          v36 = (v34 + v33[6]);
          *v36 = 0x796C7069746C756DLL;
          v36[1] = 0xE800000000000000;
          v37 = (v34 + v33[7]);
          if (qword_27EF84C70 != -1)
          {
            swift_once();
          }

          v38 = unk_27EF91A00;
          v39 = qword_27EF91A08;
          v40 = unk_27EF91A10;
          *v37 = qword_27EF919F8;
          v37[1] = v38;
          v37[2] = v39;
          v37[3] = v40;
          *(v34 + v33[8]) = 0;
          *(v34 + v33[9]) = 0;
          *(v25 + 80) = 3;

          sub_24AA1B750(v39, v40);
          return;
        }
      }

      else
      {
        v25 = v157;
      }

      *(v25 + 48) = 0u;
      *(v25 + 64) = 0u;
      *(v25 + 16) = 0u;
      *(v25 + 32) = 0u;
      *v25 = 0u;
      *(v25 + 80) = -1;
      return;
    }

    goto LABEL_13;
  }

  v159 = v21;
  if (sub_24AAB34D4())
  {
LABEL_13:
    swift_getKeyPath();
    v159 = v4;
    sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
    sub_24AAB2CF4();

    if (*(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__isShowingTranscripts) == 1)
    {
      if ([*(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_featureFlags) receptionistEnabled])
      {
        v41 = &v11[v7[6]];
        sub_24AAB2B24();
        v42 = qword_27EF84C70;

        if (v42 != -1)
        {
          swift_once();
        }

        v43 = qword_27EF919F8;
        v44 = unk_27EF91A00;
        v46 = qword_27EF91A08;
        v45 = unk_27EF91A10;
        v155 = unk_27EF91A10;
        v11[v7[8]] = 0;
        v11[v7[9]] = 0;
        *v11 = xmmword_24AAB7080;
        v11[16] = 2;
        *(v11 + 3) = 0;
        *(v11 + 4) = 0xE000000000000000;
        v47 = &v11[v7[7]];
        *v47 = v43;
        v47[1] = v44;
        v47[2] = v46;
        v47[3] = v45;
        v48 = &v11[v7[10]];
        strcpy(v48, "TYPE_TO_SPEAK");
        *(v48 + 7) = -4864;
        v49 = &v11[v7[11]];
        *v49 = sub_24AAA8398;
        v49[1] = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85860, &unk_24AAB7930);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_24AAB6FC0;
        v51 = type metadata accessor for StopLiveVoicemailControl(0);
        *(v50 + 56) = v51;
        *(v50 + 64) = sub_24AAA7FFC(&qword_27EF87660, type metadata accessor for StopLiveVoicemailControl);
        v52 = __swift_allocate_boxed_opaque_existential_1Tm((v50 + 32));
        *v52 = xmmword_24AABDD80;
        *(v52 + 16) = 2;
        v154 = v51[5];

        v53 = v155;
        sub_24AA1B750(v46, v155);

        sub_24AA1B750(v46, v53);
        sub_24AAB2B24();
        v54 = (v52 + v51[6]);
        *v54 = 0x6B72616D78;
        v54[1] = 0xE500000000000000;
        v55 = (v52 + v51[7]);
        *v55 = v43;
        v55[1] = v44;
        v55[2] = v46;
        v55[3] = v53;
        *(v52 + v51[8]) = 0;
        *(v52 + v51[9]) = 0;
        *(v50 + 96) = v7;
        *(v50 + 104) = sub_24AAA7FFC(&qword_27EF85680, type metadata accessor for CustomViewControl);
        v56 = __swift_allocate_boxed_opaque_existential_1Tm((v50 + 72));
        sub_24AAA8CC4(v11, v56, type metadata accessor for CustomViewControl);
        v57 = type metadata accessor for AcceptControl(0);
        *(v50 + 136) = v57;
        *(v50 + 144) = sub_24AAA7FFC(&qword_27EF85840, type metadata accessor for AcceptControl);
        v58 = __swift_allocate_boxed_opaque_existential_1Tm((v50 + 112));
        *v58 = 0;
        v58[1] = 0;
        v58[2] = 0;
        *(v58 + 24) = 2;
        v59 = v58 + v57[6];
        sub_24AAB2B24();
        v60 = (v58 + v57[7]);
        v61 = sub_24AAB4A34();
        v62 = sub_24AAB4A44();
        *v60 = v61;
        v60[1] = v62;
        v60[2] = 0;
        v60[3] = 0;
        *(v58 + v57[8]) = v156 & 1;
        *(v58 + v57[9]) = 0;
        *(v58 + v57[10]) = 1;
        sub_24AA15D0C(v11);
        goto LABEL_36;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85860, &unk_24AAB7930);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_24AAB7D10;
      v87 = type metadata accessor for StopLiveVoicemailControl(0);
      *(v50 + 56) = v87;
      *(v50 + 64) = sub_24AAA7FFC(&qword_27EF87660, type metadata accessor for StopLiveVoicemailControl);
      v88 = __swift_allocate_boxed_opaque_existential_1Tm((v50 + 32));
      *v88 = xmmword_24AABDD80;
      *(v88 + 16) = 2;
      v89 = v88 + v87[5];
      sub_24AAB2B24();
      v90 = (v88 + v87[6]);
      *v90 = 0x6B72616D78;
      v90[1] = 0xE500000000000000;
      v91 = (v88 + v87[7]);
      if (qword_27EF84C70 != -1)
      {
        swift_once();
      }

      v92 = unk_27EF91A00;
      v93 = qword_27EF91A08;
      v94 = unk_27EF91A10;
      *v91 = qword_27EF919F8;
      v91[1] = v92;
      v91[2] = v93;
      v91[3] = v94;
      *(v88 + v87[8]) = 0;
      *(v88 + v87[9]) = 0;
      v95 = type metadata accessor for AcceptControl(0);
      *(v50 + 96) = v95;
      *(v50 + 104) = sub_24AAA7FFC(&qword_27EF85840, type metadata accessor for AcceptControl);
      v96 = __swift_allocate_boxed_opaque_existential_1Tm((v50 + 72));
      *v96 = 0;
      v96[1] = 0;
      v96[2] = 0;
      *(v96 + 24) = 2;
      v97 = v95[6];

      sub_24AA1B750(v93, v94);
      sub_24AAB2B24();
      v98 = (v96 + v95[7]);
      v99 = sub_24AAB4A34();
      v100 = sub_24AAB4A44();
      *v98 = v99;
      v98[1] = v100;
      v98[2] = 0;
      v98[3] = 0;
      *(v96 + v95[8]) = v156 & 1;
      *(v96 + v95[9]) = 0;
      v101 = v95[10];
LABEL_35:
      *(v96 + v101) = 1;
LABEL_36:
      v128 = v157;
      *v157 = v50;
      *(v128 + 80) = 0;
      return;
    }

    v63 = sub_24AAB3A64();
    v64 = sub_24AAB5144();
    v65 = os_log_type_enabled(v63, v64);
    v66 = v157;
    if (v65)
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v159 = v68;
      *v67 = 136315650;
      *(v67 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v159);
      *(v67 + 12) = 2080;
      *(v67 + 14) = sub_24AA406B4(0xD00000000000001ALL, 0x800000024AAD3510, &v159);
      *(v67 + 22) = 2048;
      *(v67 + 24) = 122;
      _os_log_impl(&dword_24AA0F000, v63, v64, "[%s:%s:%ld] is showing transcripts is false, not returning a control.", v67, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v68, -1, -1);
      MEMORY[0x24C226630](v67, -1, -1);
    }

    *(v66 + 48) = 0u;
    *(v66 + 64) = 0u;
    *(v66 + 16) = 0u;
    *(v66 + 32) = 0u;
    *v66 = 0u;
    *(v66 + 80) = -1;
    return;
  }

  if ((sub_24AAA15EC() & 1) == 0)
  {
    if ((sub_24AAA1CF0() & 1) == 0)
    {
LABEL_4:
      v23 = v157;
      *(v157 + 48) = 0u;
      *(v23 + 64) = 0u;
      *(v23 + 16) = 0u;
      *(v23 + 32) = 0u;
      *v23 = 0u;
      *(v23 + 80) = -1;
      return;
    }

    v155 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85860, &unk_24AAB7930);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_24AABDD50;
    v102 = type metadata accessor for LiveVoicemailControl(0);
    *(v50 + 56) = v102;
    *(v50 + 64) = sub_24AAA7FFC(&qword_27EF87668, type metadata accessor for LiveVoicemailControl);
    v103 = __swift_allocate_boxed_opaque_existential_1Tm((v50 + 32));
    *v103 = xmmword_24AABDD60;
    *(v103 + 16) = 2;
    v104 = v103 + v102[5];
    sub_24AAB2B24();
    v105 = v103 + v102[6];
    strcpy(v105, "recordingtape");
    *(v105 + 7) = -4864;
    v106 = (v103 + v102[7]);
    if (qword_27EF84C70 != -1)
    {
      swift_once();
    }

    v107 = qword_27EF919F8;
    v108 = unk_27EF91A00;
    v109 = qword_27EF91A08;
    v110 = unk_27EF91A10;
    *v106 = qword_27EF919F8;
    v106[1] = v108;
    v106[2] = v109;
    v106[3] = v110;
    *(v103 + v102[8]) = 0;
    *(v103 + v102[9]) = 0;
    v111 = type metadata accessor for DeclineWithMessageControl(0);
    *(v50 + 96) = v111;
    *(v50 + 104) = sub_24AAA7FFC(&qword_27EF87670, type metadata accessor for DeclineWithMessageControl);
    v112 = __swift_allocate_boxed_opaque_existential_1Tm((v50 + 72));
    *v112 = xmmword_24AAB9980;
    *(v112 + 16) = 2;
    v113 = v111[5];
    v154 = "LIVE_VOICEMAIL_CONTROL";

    sub_24AA1B750(v109, v110);

    sub_24AA1B750(v109, v110);
    sub_24AAB2B24();
    v114 = v112 + v111[6];
    strcpy(v114, "message.fill");
    v114[13] = 0;
    *(v114 + 7) = -5120;
    v115 = (v112 + v111[7]);
    *v115 = v107;
    v115[1] = v108;
    v115[2] = v109;
    v115[3] = v110;
    *(v112 + v111[8]) = 0;
    *(v112 + v111[9]) = 0;
    v116 = type metadata accessor for DeclineControl(0);
    *(v50 + 136) = v116;
    *(v50 + 144) = sub_24AAA7FFC(&qword_27EF87678, type metadata accessor for DeclineControl);
    v117 = __swift_allocate_boxed_opaque_existential_1Tm((v50 + 112));
    *v117 = xmmword_24AAB6FB0;
    *(v117 + 16) = 2;
    v118 = v117 + v116[5];
    sub_24AAB2B24();
    v119 = (v117 + v116[6]);
    *v119 = 0x6F642E656E6F6870;
    v119[1] = 0xEF6C6C69662E6E77;
    v120 = (v117 + v116[7]);
    v121 = sub_24AAB49F4();
    v122 = sub_24AAB4A44();
    *v120 = v121;
    v120[1] = v122;
    v120[2] = 0;
    v120[3] = 0;
    *(v117 + v116[8]) = 0;
    *(v117 + v116[9]) = 0;
    v159 = v21;
    LOBYTE(v116) = sub_24AAB3574();
    v123 = type metadata accessor for AcceptControl(0);
    *(v50 + 176) = v123;
    *(v50 + 184) = sub_24AAA7FFC(&qword_27EF85840, type metadata accessor for AcceptControl);
    v96 = __swift_allocate_boxed_opaque_existential_1Tm((v50 + 152));
    *v96 = v116 & 1;
    v96[1] = 0;
    v96[2] = 0;
    *(v96 + 24) = 2;
    v124 = v96 + v123[6];
    sub_24AAB2B24();
    v125 = (v96 + v123[7]);
    v126 = sub_24AAB4A34();
    v127 = sub_24AAB4A44();
    *v125 = v126;
    v125[1] = v127;
    v125[2] = 0;
    v125[3] = 0;
    *(v96 + v123[8]) = v156 & 1;
    *(v96 + v123[9]) = 0;
    v101 = v123[10];
    goto LABEL_35;
  }

  v69 = v154;
  v70 = v154 + v7[6];
  sub_24AAB2B24();
  v71 = qword_27EF84C70;

  if (v71 != -1)
  {
    swift_once();
  }

  v73 = qword_27EF919F8;
  v72 = unk_27EF91A00;
  v74 = qword_27EF91A08;
  v75 = unk_27EF91A10;
  *(v69 + v7[8]) = 0;
  *(v69 + v7[9]) = 0;
  *v69 = xmmword_24AABDD70;
  *(v69 + 16) = 1;
  *(v69 + 24) = 0;
  *(v69 + 32) = 0xE000000000000000;
  v76 = (v69 + v7[7]);
  *v76 = v73;
  v76[1] = v72;
  v76[2] = v74;
  v76[3] = v75;
  v77 = (v69 + v7[10]);
  *v77 = 0x5045525F4556494CLL;
  v77[1] = 0xEA0000000000594CLL;
  v78 = (v69 + v7[11]);
  *v78 = sub_24AAA83A0;
  v78[1] = v4;
  v79 = v7[6];

  sub_24AA1B750(v74, v75);

  sub_24AA1B750(v74, v75);
  v80 = v155;
  sub_24AAB2B24();
  *(v80 + v7[8]) = 0;
  *(v80 + v7[9]) = 0;
  *v80 = 0xD00000000000001ALL;
  *(v80 + 8) = 0x800000024AAD3590;
  *(v80 + 16) = 1;
  *(v80 + 24) = 0;
  *(v80 + 32) = 0xE000000000000000;
  v81 = (v80 + v7[7]);
  v152 = v73;
  v153 = v74;
  *v81 = v73;
  v81[1] = v72;
  v82 = v72;
  v81[2] = v74;
  v81[3] = v75;
  v83 = v75;
  v84 = v80 + v7[10];
  strcpy(v84, "INCOMING_MORE");
  *(v84 + 14) = -4864;
  v85 = (v80 + v7[11]);
  *v85 = sub_24AAA1B24;
  v85[1] = 0;
  if (sub_24AAA1CF0())
  {
    v160 = v7;
    v161 = sub_24AAA7FFC(&qword_27EF85680, type metadata accessor for CustomViewControl);
    v86 = __swift_allocate_boxed_opaque_existential_1Tm(&v159);
    sub_24AAA8CC4(v80, v86, type metadata accessor for CustomViewControl);
  }

  else
  {
    v129 = type metadata accessor for DeclineWithMessageControl(0);
    v160 = v129;
    v161 = sub_24AAA7FFC(&qword_27EF87670, type metadata accessor for DeclineWithMessageControl);
    v130 = __swift_allocate_boxed_opaque_existential_1Tm(&v159);
    *v130 = xmmword_24AAB9980;
    *(v130 + 16) = 2;
    v131 = v130 + v129[5];
    sub_24AAB2B24();
    v132 = v130 + v129[6];
    strcpy(v132, "message.fill");
    v132[13] = 0;
    *(v132 + 7) = -5120;
    v133 = (v130 + v129[7]);
    v134 = v153;
    *v133 = v152;
    v133[1] = v82;
    v133[2] = v134;
    v133[3] = v83;
    *(v130 + v129[8]) = 0;
    *(v130 + v129[9]) = 0;

    sub_24AA1B750(v134, v83);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85860, &unk_24AAB7930);
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_24AABDD50;
  *(v135 + 56) = v7;
  *(v135 + 64) = sub_24AAA7FFC(&qword_27EF85680, type metadata accessor for CustomViewControl);
  v136 = __swift_allocate_boxed_opaque_existential_1Tm((v135 + 32));
  v137 = v154;
  sub_24AAA8CC4(v154, v136, type metadata accessor for CustomViewControl);
  sub_24AA16768(&v159, v135 + 72);
  v138 = type metadata accessor for DeclineControl(0);
  *(v135 + 136) = v138;
  *(v135 + 144) = sub_24AAA7FFC(&qword_27EF87678, type metadata accessor for DeclineControl);
  v139 = __swift_allocate_boxed_opaque_existential_1Tm((v135 + 112));
  *v139 = xmmword_24AAB6FB0;
  *(v139 + 16) = 2;
  v140 = v139 + v138[5];
  sub_24AAB2B24();
  v141 = (v139 + v138[6]);
  *v141 = 0x6F642E656E6F6870;
  v141[1] = 0xEF6C6C69662E6E77;
  v142 = (v139 + v138[7]);
  v143 = sub_24AAB49F4();
  v144 = sub_24AAB4A44();
  *v142 = v143;
  v142[1] = v144;
  v142[2] = 0;
  v142[3] = 0;
  *(v139 + v138[8]) = 0;
  *(v139 + v138[9]) = 0;
  v158 = v21;
  LOBYTE(v138) = sub_24AAB3574();
  v145 = type metadata accessor for AcceptControl(0);
  *(v135 + 176) = v145;
  *(v135 + 184) = sub_24AAA7FFC(&qword_27EF85840, type metadata accessor for AcceptControl);
  v146 = __swift_allocate_boxed_opaque_existential_1Tm((v135 + 152));
  *v146 = v138 & 1;
  v146[1] = 0;
  v146[2] = 0;
  *(v146 + 24) = 2;
  v147 = v146 + v145[6];
  sub_24AAB2B24();
  v148 = (v146 + v145[7]);
  v149 = sub_24AAB4A34();
  v150 = sub_24AAB4A44();
  *v148 = v149;
  v148[1] = v150;
  v148[2] = 0;
  v148[3] = 0;
  *(v146 + v145[8]) = v156 & 1;
  *(v146 + v145[9]) = 0;
  *(v146 + v145[10]) = 1;
  sub_24AA15D0C(v155);
  sub_24AA15D0C(v137);
  v151 = v157;
  *v157 = v135;
  *(v151 + 80) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(&v159);
}

uint64_t CallScreeningViewModel.startScreening(manualScreening:receptionist:)(char a1, char a2)
{
  *(v3 + 144) = v2;
  *(v3 + 194) = a2;
  *(v3 + 193) = a1;
  sub_24AAB50C4();
  *(v3 + 152) = sub_24AAB50B4();
  v5 = sub_24AAB5094();
  *(v3 + 160) = v5;
  *(v3 + 168) = v4;

  return MEMORY[0x2822009F8](sub_24AA9F8B8, v5, v4);
}

uint64_t sub_24AA9F8B8()
{
  v17 = v0;
  v1 = *(v0 + 144);
  *(v0 + 176) = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_logger;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v16);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD00000000000002DLL, 0x800000024AAD31F0, &v16);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 230;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Entering screening state", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v6 = *(v0 + 144);
  v7 = *(v0 + 194);
  v8 = *(v6 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_answeringMachine);
  v9 = *(v0 + 193);
  v10 = (v6 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call);
  v11 = *v10;
  v12 = v10[1];
  swift_getObjectType();
  sub_24AAB39A4();
  v13 = sub_24AAB4EE4();
  *(v0 + 184) = v13;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 192;
  *(v0 + 24) = sub_24AA9FB68;
  v14 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF875C8, &unk_24AABDEA8);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24AAA43B8;
  *(v0 + 104) = &block_descriptor_3;
  *(v0 + 112) = v14;
  [v8 screenCallWithUUID:v13 manualScreening:v9 receptionist:v7 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24AA9FB68()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24AA9FC70, v2, v1);
}

uint64_t sub_24AA9FC70()
{
  v13 = v0;
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);

  v5 = *(v0 + 192);

  v6 = sub_24AAB3A64();
  v7 = sub_24AAB5144();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v12);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_24AA406B4(0xD00000000000002DLL, 0x800000024AAD31F0, &v12);
    *(v8 + 22) = 2048;
    *(v8 + 24) = 232;
    _os_log_impl(&dword_24AA0F000, v6, v7, "[%s:%s:%ld] Entered screening state", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v9, -1, -1);
    MEMORY[0x24C226630](v8, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10(v5);
}

uint64_t CallScreeningViewModel.updateAnswerRequest(_:)(uint64_t a1)
{

  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();

  v5 = &qword_27EF87000;
  if (os_log_type_enabled(v3, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315906;
    *(v6 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v19);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_24AA406B4(0xD000000000000017, 0x800000024AAD3220, &v19);
    *(v6 + 22) = 2048;
    *(v6 + 24) = 265;
    *(v6 + 32) = 2080;
    swift_getKeyPath();
    sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
    sub_24AAB2CF4();

    v18 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__isShowingTranscripts);
    v8 = sub_24AAB4F44();
    v10 = sub_24AA406B4(v8, v9, &v19);

    *(v6 + 34) = v10;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] updateAnswerRequest called, isShowingTranscripts: %s", v6, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v7, -1, -1);
    v11 = v6;
    v5 = &qword_27EF87000;
    MEMORY[0x24C226630](v11, -1, -1);
  }

  swift_getKeyPath();
  v19 = v1;
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  if (*(v1 + v5[176]) == 1)
  {
    v13 = sub_24AAB3A64();
    v14 = sub_24AAB5144();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v19);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_24AA406B4(0xD000000000000017, 0x800000024AAD3220, &v19);
      *(v15 + 22) = 2048;
      *(v15 + 24) = 268;
      _os_log_impl(&dword_24AA0F000, v13, v14, "[%s:%s:%ld] Connecting to call from LVM state", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v16, -1, -1);
      MEMORY[0x24C226630](v15, -1, -1);
    }

    v17 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    return sub_24AAB3474();
  }

  return result;
}

Swift::Void __swiftcall CallScreeningViewModel.sendToLiveVoicemail()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_24AAB3A64();
  v7 = sub_24AAB5144();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v15);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_24AA406B4(0xD000000000000015, 0x800000024AAD1EF0, &v15);
    *(v8 + 22) = 2048;
    *(v8 + 24) = 237;
    _os_log_impl(&dword_24AA0F000, v6, v7, "[%s:%s:%ld] sendToLiveVoicemail", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v9, -1, -1);
    MEMORY[0x24C226630](v8, -1, -1);
  }

  v10 = sub_24AAB50F4();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_24AAB50C4();

  v11 = sub_24AAB50B4();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v1;
  sub_24AA333D4(0, 0, v5, &unk_24AABDEC0, v12);
}

Swift::Void __swiftcall CallScreeningViewModel.declineWithReminder()()
{
  oslog = sub_24AAB3A64();
  v0 = sub_24AAB5144();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v4 = v2;
    *v1 = 136315650;
    *(v1 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v4);
    *(v1 + 12) = 2080;
    *(v1 + 14) = sub_24AA406B4(0xD000000000000015, 0x800000024AAD3240, &v4);
    *(v1 + 22) = 2048;
    *(v1 + 24) = 245;
    _os_log_impl(&dword_24AA0F000, oslog, v0, "[%s:%s:%ld] declineWithReminder", v1, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v2, -1, -1);
    MEMORY[0x24C226630](v1, -1, -1);
  }
}

Swift::Void __swiftcall CallScreeningViewModel.stopLiveVoicemail()()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v10);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000013, 0x800000024AAD1F10, &v10);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 249;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] stopLiveVoicemail", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_callCenter + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_callCenter), *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_callCenter + 24));
  v7 = v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call;
  v8 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call);
  v9 = *(v7 + 8);
  swift_getObjectType();
  sub_24AAB3374();
}

Swift::Void __swiftcall CallScreeningViewModel.block()()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v21);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0x29286B636F6C62, 0xE700000000000000, &v21);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 254;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] block", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call);
  v7 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call + 8);
  swift_getObjectType();
  v21 = v6;
  v8 = *(v7 + 8);
  v9 = sub_24AAB3564();
  if (!v9)
  {
    v12 = sub_24AAB3A64();
    v18 = sub_24AAB5144();
    if (os_log_type_enabled(v12, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136315650;
      *(v19 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v21);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_24AA406B4(0x29286B636F6C62, 0xE700000000000000, &v21);
      *(v19 + 22) = 2048;
      *(v19 + 24) = 259;
      _os_log_impl(&dword_24AA0F000, v12, v18, "[%s:%s:%ld] Failed to block call handle, still proceeding to end voicemail", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v20, -1, -1);
      MEMORY[0x24C226630](v19, -1, -1);
    }

    goto LABEL_9;
  }

  v10 = v9;
  [v9 block];
  v11 = v10;
  v12 = sub_24AAB3A64();
  v13 = sub_24AAB5144();

  if (!os_log_type_enabled(v12, v13))
  {

LABEL_9:
    goto LABEL_10;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v21 = v16;
  *v14 = 136315906;
  *(v14 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v21);
  *(v14 + 12) = 2080;
  *(v14 + 14) = sub_24AA406B4(0x29286B636F6C62, 0xE700000000000000, &v21);
  *(v14 + 22) = 2048;
  *(v14 + 24) = 257;
  *(v14 + 32) = 2112;
  *(v14 + 34) = v11;
  *v15 = v10;
  v17 = v11;
  _os_log_impl(&dword_24AA0F000, v12, v13, "[%s:%s:%ld] Successfully blocked %@, proceeding to end voicemail", v14, 0x2Au);
  sub_24AA169C4(v15, &qword_27EF857E8, &qword_24AAB78C0);
  MEMORY[0x24C226630](v15, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x24C226630](v16, -1, -1);
  MEMORY[0x24C226630](v14, -1, -1);

LABEL_10:
  CallScreeningViewModel.stopLiveVoicemail()();
}

uint64_t CallScreeningViewModel.statusLabel.getter()
{
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel);
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel + 8);

  return v1;
}

id CallScreeningViewModel.transcriptView()@<X0>(void *a1@<X8>)
{
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v7);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD3260, &v7);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 283;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Creating transcript view", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  result = sub_24AAA347C();
  *a1 = result;
  return result;
}

uint64_t CallScreeningViewModel.activity.getter()
{
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v1 = v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity;
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity);
  v3 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity + 8);
  v4 = *(v1 + 16);
  sub_24AA80F1C(v2);
  return v2;
}

uint64_t CallScreeningViewModel.receptionistReplyStarted.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__receptionistReplyStarted;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_24AAA0FB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__receptionistReplyStarted;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t CallScreeningViewModel.receptionistReplyStarted.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__receptionistReplyStarted;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
    sub_24AAB2CE4();
  }

  return result;
}

uint64_t sub_24AAA11CC(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__receptionistReplyStarted;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*CallScreeningViewModel.receptionistReplyStarted.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  swift_beginAccess();
  return sub_24AAA1370;
}

uint64_t CallScreeningViewModel.__allocating_init(call:callCenter:answeringMachine:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = sub_24AAA7274(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v11;
}

uint64_t CallScreeningViewModel.init(call:callCenter:answeringMachine:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = sub_24AAA7274(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_24AAA14E8(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
    sub_24AAB2CE4();
  }

  return result;
}

uint64_t sub_24AAA15EC()
{
  result = [*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_featureFlags) receptionistEnabled];
  if (result)
  {
    if (sub_24AAA1CF0() & 1) != 0 && (sub_24AAA1CF0() & 1) != 0 && (v2 = v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call, v4 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call), v3 = *(v2 + 8), swift_getObjectType(), (sub_24AAB3984()) && (sub_24AAB3A14() & 1) == 0)
    {
      v5 = *(v3 + 8);
      sub_24AAB3514();
      result = v6 != 0;
      if (v6)
      {

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24AAA16B4()
{
  v0 = type metadata accessor for LiveReplyButton(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  swift_weakInit();
  *v3 = xmmword_24AAB7080;
  v3[16] = 2;
  v5 = type metadata accessor for LiveReplyControl(0);
  v6 = v5[5];

  sub_24AAB2B24();
  v7 = &v3[v5[6]];
  *v7 = 0xD00000000000001CLL;
  *(v7 + 1) = 0x800000024AAD35B0;
  v8 = v5[7];
  if (qword_27EF84C70 != -1)
  {
    swift_once();
  }

  v9 = &v3[v8];
  v10 = qword_27EF919F8;
  v11 = unk_27EF91A00;
  v12 = qword_27EF91A08;
  v13 = unk_27EF91A10;

  sub_24AA1B750(v12, v13);

  *v9 = v10;
  v9[1] = v11;
  v9[2] = v12;
  v9[3] = v13;
  v3[v5[8]] = 0;
  v3[v5[9]] = 0;
  v14 = &v3[*(v0 + 20)];
  *v14 = sub_24AAA8410;
  v14[1] = v4;
  sub_24AAA7FFC(&qword_27EF87688, type metadata accessor for LiveReplyButton);
  return sub_24AAB4BD4();
}

uint64_t sub_24AAA18BC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24AAA1914();
  }

  return result;
}

uint64_t sub_24AAA1914()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11[0] = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, v11);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000011, 0x800000024AAD35D0, v11);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 342;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] didTapLiveReply", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  swift_getKeyPath();
  v11[0] = v1;
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v6 = v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__onLiveReplyTap;
  result = swift_beginAccess();
  v8 = *v6;
  if (*v6)
  {
    v9 = *(v6 + 8);

    v8(v10);
    return sub_24AA16D74(v8);
  }

  return result;
}

uint64_t sub_24AAA1B24()
{
  v0 = type metadata accessor for IncomingCallMoreMenuView(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v3 = xmmword_24AAB7080;
  v3[16] = 2;
  v4 = type metadata accessor for IncomingCallMoreMenuControl(0);
  v5 = v4[5];
  sub_24AAB2B24();
  v6 = &v3[v4[6]];
  *v6 = 0x73697370696C6C65;
  *(v6 + 1) = 0xE800000000000000;
  v7 = v4[7];
  if (qword_27EF84C70 != -1)
  {
    swift_once();
  }

  v8 = &v3[v7];
  v9 = unk_27EF91A00;
  v10 = qword_27EF91A08;
  v11 = unk_27EF91A10;
  *v8 = qword_27EF919F8;
  *(v8 + 1) = v9;
  *(v8 + 2) = v10;
  *(v8 + 3) = v11;
  v3[v4[8]] = 0;
  v3[v4[9]] = 0;
  v12 = &v3[*(v0 + 20)];
  *v12 = swift_getKeyPath();
  *(v12 + 1) = 0;
  v12[16] = 0;

  sub_24AA1B750(v10, v11);
  sub_24AAA7FFC(&qword_27EF87680, type metadata accessor for IncomingCallMoreMenuView);
  return sub_24AAB4BD4();
}

uint64_t sub_24AAA1CF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_featureFlags);
  v2 = TUCallScreeningEnabled();
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call);
    v3 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call + 8);
    swift_getObjectType();
    v5 = *(v3 + 8);
    if ((sub_24AAB3574() & 1) != 0 || (sub_24AAB3864() & 1) == 0)
    {
      LOBYTE(v2) = 0;
    }

    else
    {
      LOBYTE(v2) = sub_24AAB39B4();
    }
  }

  return v2 & 1;
}

uint64_t sub_24AAA1D98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallScreeningTextField();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CustomViewControl(0);
  v9 = *(v8 + 24);
  v10 = v4[5];
  v11 = sub_24AAB2B84();
  (*(*(v11 - 8) + 16))(&v7[v10], a1 + v9, v11);
  v12 = (a1 + *(v8 + 28));
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];

  sub_24AA1B750(v15, v16);
  v17 = sub_24AAB3C94();
  v19 = v18;
  v21 = v20;
  *v7 = a2;
  v22 = &v7[v4[6]];
  *v22 = v13;
  *(v22 + 1) = v14;
  *(v22 + 2) = v15;
  *(v22 + 3) = v16;
  v23 = &v7[v4[7]];
  v27[1] = 0;
  v27[2] = 0xE000000000000000;

  sub_24AAB4B54();
  v24 = v29;
  *v23 = v28;
  *(v23 + 2) = v24;
  v25 = &v7[v4[8]];
  *v25 = v17 & 1;
  *(v25 + 1) = v19;
  v25[16] = v21 & 1;
  sub_24AAA7FFC(&qword_27EF87690, type metadata accessor for CallScreeningTextField);
  return sub_24AAB4BD4();
}

uint64_t sub_24AAA1F80@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v4 = (v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__prepareToShowCall);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_24AAA93CC;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_24AA16D2C(v5);
}

uint64_t sub_24AAA208C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24AAA9390;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AA16D2C(v3);
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CE4();
  sub_24AA16D74(v6);
}

void (*CallScreeningViewModel.prepareToShowCall.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  swift_beginAccess();
  return sub_24AAA2350;
}

uint64_t sub_24AAA2370@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v4 = (v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__onLiveReplyTap);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_24AAA93CC;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_24AA16D2C(v5);
}

uint64_t sub_24AAA247C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24AAA9390;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AA16D2C(v3);
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CE4();
  sub_24AA16D74(v6);
}

void (*CallScreeningViewModel.onLiveReplyTap.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  swift_beginAccess();
  return sub_24AAA2740;
}

uint64_t sub_24AAA2760(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  sub_24AA16D2C(v6);
  return v6;
}

uint64_t sub_24AAA282C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v4 = (v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__onReceptionistViewTap);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_24AA68374;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_24AA16D2C(v5);
}

uint64_t sub_24AAA2938(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24AAA807C;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AA16D2C(v3);
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CE4();
  sub_24AA16D74(v6);
}

uint64_t sub_24AAA2AB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a2;
  v6[1] = a3;
  sub_24AA16D2C(a2);
  return sub_24AA16D74(v7);
}

void (*CallScreeningViewModel.onReceptionistViewTap.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  swift_beginAccess();
  return sub_24AAA2C7C;
}

void sub_24AAA2C88(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_24AAB2D04();

  free(v1);
}

uint64_t sub_24AAA2D0C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel);
  v6 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel + 8);
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel + 8);
      if (sub_24AAB5474())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
    sub_24AAB2CE4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_24AAA2E88(uint64_t result, char a2)
{
  if (*(result + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__isShowingTranscripts) == (a2 & 1))
  {
    *(result + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__isShowingTranscripts) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
    sub_24AAB2CE4();
  }

  return result;
}

Swift::Void __swiftcall CallScreeningViewModel.clearActivity()()
{
  v0 = sub_24AAB3A64();
  v1 = sub_24AAB5144();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v4[0] = v3;
    *v2 = 136315650;
    *(v2 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, v4);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_24AA406B4(0x7463417261656C63, 0xEF29287974697669, v4);
    *(v2 + 22) = 2048;
    *(v2 + 24) = 213;
    _os_log_impl(&dword_24AA0F000, v0, v1, "[%s:%s:%ld] Clearing activity", v2, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v3, -1, -1);
    MEMORY[0x24C226630](v2, -1, -1);
  }

  MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
  sub_24AAB3E24();
}

uint64_t sub_24AAA3160(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_24AAB50F4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_24AAB50C4();

  v7 = sub_24AAB50B4();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a1;
  sub_24AA336CC(0, 0, v5, &unk_24AABE0A0, v8);
}

uint64_t sub_24AAA3284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  sub_24AAB50C4();
  v4[10] = sub_24AAB50B4();
  v6 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AAA331C, v6, v5);
}

uint64_t sub_24AAA331C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v4 = Strong;
  swift_getKeyPath();
  *(v0 + 40) = v4;
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v5 = v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__onReceptionistViewTap;
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 8);
  sub_24AA16D2C(v7);

  if (v7)
  {
    v7(v8);
    sub_24AA16D74(v7);
    v9 = 0;
  }

  else
  {
LABEL_4:
    v9 = 1;
  }

  **(v0 + 64) = v9;
  v10 = *(v0 + 8);

  return v10();
}

id sub_24AAA347C()
{
  v1 = v0;
  v2 = sub_24AAB3A84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BE0, &qword_24AAB8710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87630, &qword_24AABE080);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v14 = v54 - v13;
  v15 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_transcriptViewController;
  v16 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_transcriptViewController);
  if (v16)
  {
    v17 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_transcriptViewController);
  }

  else
  {
    v57 = v12;
    v59 = v2;
    v60 = v11;
    v62 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_logger;
    v18 = sub_24AAB3A64();
    v19 = sub_24AAB5144();
    v20 = os_log_type_enabled(v18, v19);
    v58 = v3;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v64 = v22;
      *v21 = 136315650;
      *(v21 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v64);
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_24AA406B4(0xD000000000000028, 0x800000024AAD34E0, &v64);
      *(v21 + 22) = 2048;
      *(v21 + 24) = 364;
      _os_log_impl(&dword_24AA0F000, v18, v19, "[%s:%s:%ld] Create transcript view", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v22, -1, -1);
      MEMORY[0x24C226630](v21, -1, -1);
    }

    v23 = [objc_allocWithZone(MEMORY[0x277CFCA40]) init];
    v24 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_featureFlags);
    if (([v24 receptionistEnabled] & 1) != 0 || objc_msgSend(v24, sel_LVMEverywhere))
    {
      v61 = v15;
      v25 = [v23 makeViewComposer];
      v26 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call);
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (v27)
      {
        swift_unknownObjectRetain();
      }

      v28 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_isLiveReply;
      v29 = [v25 composeWithCall:v27 createTextField:0 liveReply:*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_isLiveReply)];

      swift_unknownObjectRelease();
      *(v1 + v28) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87638, &qword_24AABE088);
      v30 = swift_dynamicCastClass();
      v31 = v29;
      if (v30)
      {
        v32 = sub_24AAB2F74();
        v33 = sub_24AAB2FD4();
        v54[1] = v33;

        v64 = v33;
        v34 = [objc_opt_self() mainRunLoop];
        v63 = v34;
        v35 = sub_24AAB5234();
        (*(*(v35 - 8) + 56))(v8, 1, 1, v35);
        v56 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87640, &qword_24AABE090);
        v55 = v23;
        sub_24AA442A0(0, &qword_27EF862E8, 0x277CBEB88);
        sub_24AA16A68(&qword_27EF87648, &qword_27EF87640, &qword_24AABE090);
        sub_24AA68274();
        sub_24AAB3C14();
        sub_24AA169C4(v8, &qword_27EF85BE0, &qword_24AAB8710);

        v36 = swift_allocObject();
        swift_weakInit();
        v38 = v58;
        v37 = v59;
        (*(v58 + 16))(v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + v62, v59);
        v39 = (*(v38 + 80) + 16) & ~*(v38 + 80);
        v40 = swift_allocObject();
        (*(v38 + 32))(v40 + v39, v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v37);
        v31 = v56;
        *(v40 + ((v4 + v39 + 7) & 0xFFFFFFFFFFFFFFF8)) = v36;
        sub_24AA16A68(&qword_27EF87650, &qword_27EF87630, &qword_24AABE080);
        v41 = v60;
        v42 = sub_24AAB3C44();

        (*(v57 + 8))(v14, v41);
        v43 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_userInputStateCancellable);
        *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_userInputStateCancellable) = v42;

        v15 = v61;
      }

      else
      {
        v44 = sub_24AAB3A64();
        v45 = sub_24AAB5124();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v63 = v31;
          v64 = v47;
          *v46 = 136315138;
          sub_24AA442A0(0, &qword_27EF85918, 0x277D75D28);
          v31 = v31;
          v48 = sub_24AAB4F44();
          v50 = sub_24AA406B4(v48, v49, &v64);

          *(v46 + 4) = v50;
          _os_log_impl(&dword_24AA0F000, v44, v45, "CallScreeningViewModel failed to create controller of type CallScreeningViewController and instead got %s", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v47);
          MEMORY[0x24C226630](v47, -1, -1);
          MEMORY[0x24C226630](v46, -1, -1);
        }

        v15 = v61;
      }
    }

    else
    {
      v31 = [objc_msgSend(v23 makeViewComposer)];

      swift_unknownObjectRelease();
    }

    v51 = *(v1 + v15);
    *(v1 + v15) = v31;
    v17 = v31;

    v16 = 0;
  }

  v52 = v16;
  return v17;
}

Swift::Void __swiftcall CallScreeningViewModel.updateBlockButtonVisibility(with:)(Swift::Bool with)
{
  v2 = v1;
  if (with)
  {
    v3 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call);
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      swift_unknownObjectRetain();
      v6 = [v5 contactIdentifiers];
      if (v6)
      {

        swift_unknownObjectRelease();
        goto LABEL_5;
      }

      swift_unknownObjectRelease();
    }

    v8 = (v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__shouldShowBlockButtonForUnknownCallerWhileScreening);
    v7 = 1;
    if (*(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__shouldShowBlockButtonForUnknownCallerWhileScreening) != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

LABEL_5:
  v7 = 0;
  v8 = (v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__shouldShowBlockButtonForUnknownCallerWhileScreening);
  if (*(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__shouldShowBlockButtonForUnknownCallerWhileScreening))
  {
LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v14 = v2;
    sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
    sub_24AAB2CE4();

    goto LABEL_10;
  }

LABEL_9:
  *v8 = v7;
LABEL_10:

  v10 = sub_24AAB3A64();
  v11 = sub_24AAB5144();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = v13;
    *v12 = 136315906;
    *(v12 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v14);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_24AA406B4(0xD000000000000022, 0x800000024AAD3280, &v14);
    *(v12 + 22) = 2048;
    *(v12 + 24) = 203;
    *(v12 + 32) = 1024;
    swift_getKeyPath();
    sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
    sub_24AAB2CF4();

    *(v12 + 34) = *v8;

    _os_log_impl(&dword_24AA0F000, v10, v11, "[%s:%s:%ld] shouldShowBlockButtonForUnknownCallerWhileScreening set to %{BOOL}d", v12, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v13, -1, -1);
    MEMORY[0x24C226630](v12, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24AAA3FBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v4 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity);
  v5 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity + 8);
  v6 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity + 16);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_24AA80F1C(v4);
}

uint64_t sub_24AAA407C(__int128 *a1, uint64_t *a2)
{
  v5 = *a1;
  v2 = *(a1 + 2);
  v3 = *a2;
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CE4();
}

uint64_t sub_24AAA415C()
{
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CE4();
}

uint64_t sub_24AAA4234@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v4 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel);
  a2[1] = v4;
}

uint64_t sub_24AAA42EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_24AAA2D0C(v2, v3);
}

uint64_t CallScreeningViewModel.supportAutomaticScreening.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call);
  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call + 8);
  swift_getObjectType();
  v3 = *(v1 + 8);
  if ((sub_24AAB3574() & 1) != 0 || (sub_24AAB3864() & 1) == 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_24AAB39B4();
  }

  return v4 & 1;
}

uint64_t sub_24AAA43B8(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_24AAA4414(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_24AAB50C4();
  v1[4] = sub_24AAB50B4();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_24AAA44CC;

  return CallScreeningViewModel.startScreening(manualScreening:receptionist:)(1, 0);
}

uint64_t sub_24AAA44CC(char a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 48) = a1;

  v6 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AAA4610, v6, v5);
}

uint64_t sub_24AAA4610()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  *v3 = v1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24AAA4690(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  return *(v2 + *a2);
}

uint64_t sub_24AAA4744@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  *a3 = *(v5 + *a2);
  return result;
}

Swift::Void __swiftcall CallScreeningViewModel.startReceptionistReply()()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v7);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD32B0, &v7);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 297;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] start receiptionist reply", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_callCenter + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_callCenter), *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_callCenter + 24));
  sub_24AAB32F4();
}

Swift::Void __swiftcall CallScreeningViewModel.sendReceptionistReply(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;

  v5 = sub_24AAB3A64();
  v6 = sub_24AAB5144();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315906;
    *(v7 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v10);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_24AA406B4(0xD000000000000019, 0x800000024AAD32D0, &v10);
    *(v7 + 22) = 2048;
    *(v7 + 24) = 302;
    *(v7 + 32) = 2080;
    *(v7 + 34) = sub_24AA406B4(countAndFlagsBits, object, &v10);
    _os_log_impl(&dword_24AA0F000, v5, v6, "[%s:%s:%ld] send receiptionist reply: %s", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v8, -1, -1);
    MEMORY[0x24C226630](v7, -1, -1);
  }

  v9 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_callCenter + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_callCenter), *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_callCenter + 24));
  sub_24AAB32E4();
}

uint64_t CallScreeningViewModel.startLiveReply()()
{
  v1[2] = v0;
  sub_24AAB50C4();
  v1[3] = sub_24AAB50B4();
  v3 = sub_24AAB5094();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_24AAA4C1C, v3, v2);
}

uint64_t sub_24AAA4C1C()
{
  v10 = v0;
  v1 = v0[2];
  v0[6] = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_logger;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v9);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD32F0, &v9);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 347;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] startLiveReply called", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  *(v0[2] + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_isLiveReply) = 1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_24AAA4E04;
  v7 = v0[2];

  return CallScreeningViewModel.startScreening(manualScreening:receptionist:)(1, 1);
}

uint64_t sub_24AAA4E04(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = a1;

  v4 = *(v2 + 40);
  v5 = *(v2 + 32);

  return MEMORY[0x2822009F8](sub_24AAA4F2C, v5, v4);
}

uint64_t sub_24AAA4F2C()
{
  v13 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  v5 = sub_24AAB3A64();
  if (v1)
  {
    v6 = sub_24AAB5144();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_7;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v12);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD32F0, &v12);
    *(v7 + 22) = 2048;
    *(v7 + 24) = 353;
    v9 = "[%s:%s:%ld] Successfully started live reply screening";
  }

  else
  {
    v6 = sub_24AAB5124();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_7;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v12);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD32F0, &v12);
    *(v7 + 22) = 2048;
    *(v7 + 24) = 351;
    v9 = "[%s:%s:%ld] Unable to start screening the call.";
  }

  _os_log_impl(&dword_24AA0F000, v5, v6, v9, v7, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x24C226630](v8, -1, -1);
  MEMORY[0x24C226630](v7, -1, -1);
LABEL_7:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24AAA5188(uint64_t a1)
{
  v2 = sub_24AAB3214();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v25[-v8];
  (*(v3 + 16))(&v25[-v8], a1, v2);
  v10 = sub_24AAB3A64();
  v11 = sub_24AAB5144();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v28 = v7;
    v13 = v12;
    v27 = swift_slowAlloc();
    v30[0] = v27;
    *v13 = 136315906;
    *(v13 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, v30);
    v26 = v11;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_24AA406B4(0xD000000000000028, 0x800000024AAD34E0, v30);
    *(v13 + 22) = 2048;
    *(v13 + 24) = 376;
    *(v13 + 32) = 2080;
    sub_24AAA7FFC(&qword_27EF87658, MEMORY[0x277CFBA78]);
    v14 = sub_24AAB5444();
    v16 = v15;
    v17 = *(v3 + 8);
    v17(v9, v2);
    v18 = sub_24AA406B4(v14, v16, v30);

    *(v13 + 34) = v18;
    _os_log_impl(&dword_24AA0F000, v10, v26, "[%s:%s:%ld] CallScreeningViewModel receiving userInputUpdate %s", v13, 0x2Au);
    v19 = v27;
    swift_arrayDestroy();
    MEMORY[0x24C226630](v19, -1, -1);
    v20 = v13;
    v7 = v28;
    MEMORY[0x24C226630](v20, -1, -1);
  }

  else
  {

    v17 = *(v3 + 8);
    v17(v9, v2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    (*(v3 + 104))(v7, *MEMORY[0x277CFBA70], v2);
    v23 = sub_24AAB3204() & 1;
    v17(v7, v2);
    if (v23 == *(v22 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__typeToSpeakEnabled))
    {
      *(v22 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__typeToSpeakEnabled) = v23;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *&v25[-16] = v22;
      v25[-8] = v23;
      v29 = v22;
      sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
      sub_24AAB2CE4();
    }
  }

  return result;
}

uint64_t CallScreeningViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_logger;
  v2 = sub_24AAB3A84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__prepareToShowCall + 8);
  sub_24AA16D74(*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__prepareToShowCall));
  v4 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__onLiveReplyTap + 8);
  sub_24AA16D74(*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__onLiveReplyTap));
  v5 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__onReceptionistViewTap + 8);
  sub_24AA16D74(*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__onReceptionistViewTap));
  v6 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity + 8);
  v7 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity + 16);
  sub_24AAA7E34(*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity));
  v8 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel + 8);

  v9 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_answeringMachine);
  swift_unknownObjectRelease();
  v10 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_callCenter));
  v11 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_userInputStateCancellable);

  v12 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel___observationRegistrar;
  v13 = sub_24AAB2D34();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  return v0;
}

uint64_t CallScreeningViewModel.__deallocating_deinit()
{
  CallScreeningViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24AAA5790@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE8, &qword_24AAB85F0);
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - v5;
  v7 = type metadata accessor for LiveReplyButton(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85B78, &qword_24AAB85F8);
  v10 = *(v35 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v35);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85B80, &qword_24AAB8600);
  v36 = *(v14 - 8);
  v37 = v14;
  v15 = *(v36 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  sub_24AAA8CC4(v2, &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveReplyButton);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_24AAA9064(&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for LiveReplyButton);
  v39 = v2;
  sub_24AAB4BB4();
  v20 = type metadata accessor for LiveReplyControl(0);
  v21 = *(v20 + 28);
  if (*(v2 + *(v20 + 36)) == 1 && (v22 = *(v2 + v21 + 24)) != 0)
  {
    v23 = *(v2 + v21 + 16);
  }

  else
  {
    v24 = (v2 + v21);
    v23 = *v24;
    v22 = v24[1];
  }

  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v25 = v3[9];
  *&v6[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DF0, &qword_24AAB6650);
  swift_storeEnumTagMultiPayload();
  v26 = &v6[v3[10]];
  *v26 = v23;
  *(v26 + 1) = v22;
  v27 = &v6[v3[12]];
  *v27 = vdupq_n_s64(0x4041800000000000uLL);
  v27[1].i8[0] = 0;
  v28 = &v6[v3[13]];
  sub_24AA16A68(&qword_27EF85B90, &qword_27EF85B78, &qword_24AAB85F8);
  sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0);
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v29 = v35;
  sub_24AAB47E4();
  sub_24AA169C4(v6, &qword_27EF84CE8, &qword_24AAB85F0);
  (*(v10 + 8))(v13, v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85B88, &qword_24AAB8608);
  v31 = v38;
  v32 = (v38 + *(v30 + 36));
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84D18, &qword_24AABDA10) + 28);
  sub_24AAB3F44();
  *v32 = swift_getKeyPath();
  return (*(v36 + 32))(v31, v17, v37);
}

void sub_24AAA5C3C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for LiveReplyControl(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = [objc_opt_self() preferredFontForTextStyle_];
  v7 = [objc_opt_self() configurationWithFont_];

  v8 = sub_24AAB4EE4();
  v9 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v9)
  {
    v10 = [v9 imageWithRenderingMode_];

    *a2 = sub_24AAB4AB4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24AAA5E20@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE8, &qword_24AAB85F0);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87748, &qword_24AABE400);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87750, &unk_24AABE408);
  v32 = *(v10 - 8);
  v33 = v10;
  v11 = *(v32 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v36 = v1;
  v35 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EB8, &unk_24AAB8780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87758, &unk_24AABE418);
  sub_24AA15964();
  sub_24AA16A68(&qword_27EF87760, &qword_27EF87758, &unk_24AABE418);
  sub_24AAB4624();
  v14 = type metadata accessor for IncomingCallMoreMenuControl(0);
  v15 = *(v14 + 28);
  if (*(v1 + *(v14 + 36)) == 1 && (v16 = *(v1 + v15 + 24)) != 0)
  {
    v17 = *(v1 + v15 + 16);
  }

  else
  {
    v18 = (v1 + v15);
    v17 = *v18;
    v16 = v18[1];
  }

  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v19 = v2[9];
  *&v5[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DF0, &qword_24AAB6650);
  swift_storeEnumTagMultiPayload();
  v20 = &v5[v2[10]];
  *v20 = v17;
  *(v20 + 1) = v16;
  v21 = &v5[v2[12]];
  *v21 = vdupq_n_s64(0x4041800000000000uLL);
  v21[1].i8[0] = 0;
  v22 = &v5[v2[13]];
  sub_24AA16A68(&qword_27EF87768, &qword_27EF87748, &qword_24AABE400);
  sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v23 = v31;
  sub_24AAB47E4();
  sub_24AA169C4(v5, &qword_27EF84CE8, &qword_24AAB85F0);
  (*(v30 + 8))(v9, v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87770, &unk_24AABE490);
  v25 = v34;
  v26 = (v34 + *(v24 + 36));
  v27 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84D18, &qword_24AABDA10) + 28);
  sub_24AAB3F44();
  *v26 = swift_getKeyPath();
  return (*(v32 + 32))(v25, v13, v33);
}

uint64_t sub_24AAA6260@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v72 = a1;
  v70 = a2;
  v2 = type metadata accessor for IncomingCallMoreMenuView(0);
  v65 = *(v2 - 8);
  v3 = *(v65 + 8);
  MEMORY[0x28223BE20](v2 - 8);
  v71 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24AAB2CD4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24AAB4ED4();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87778, &qword_24AABE500);
  v69 = *(v16 - 8);
  v17 = *(v69 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v68 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v67 = v55 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v66 = v55 - v23;
  MEMORY[0x28223BE20](v22);
  v73 = v55 - v24;
  sub_24AAB4E84();
  v25 = v13;
  v64 = v9[2];
  v59 = v9 + 2;
  v64(v13, v15, v8);
  if (qword_27EF84C50 != -1)
  {
    swift_once();
  }

  v26 = qword_27EF919A8;
  v27 = qword_27EF919A8;
  v63 = v26;
  v28 = v27;
  sub_24AAB2CC4();
  v29 = v28;
  v60 = v25;
  v30 = sub_24AAB4F14();
  v32 = v31;
  v33 = v9[1];
  v57 = v9 + 1;
  v58 = v7;
  v62 = v33;
  v33(v15, v8);
  v61 = type metadata accessor for IncomingCallMoreMenuView;
  v34 = v71;
  sub_24AAA8CC4(v72, v71, type metadata accessor for IncomingCallMoreMenuView);
  v56 = v8;
  v35 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v36 = swift_allocObject();
  v65 = type metadata accessor for IncomingCallMoreMenuView;
  v37 = sub_24AAA9064(v34, v36 + v35, type metadata accessor for IncomingCallMoreMenuView);
  v55[1] = v55;
  v74 = v30;
  v75 = v32;
  MEMORY[0x28223BE20](v37);
  v55[-4] = &v74;
  strcpy(&v55[-3], "message.fill");
  BYTE5(v55[-2]) = 0;
  HIWORD(v55[-2]) = -5120;
  v55[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87780, &qword_24AABE508);
  sub_24AA16A68(&qword_27EF87788, &qword_27EF87780, &qword_24AABE508);
  sub_24AAB4BB4();

  sub_24AAB4E84();
  v38 = v56;
  v64(v60, v15, v56);
  sub_24AAB2CC4();
  v39 = sub_24AAB4F14();
  v41 = v40;
  v62(v15, v38);
  v42 = v71;
  sub_24AAA8CC4(v72, v71, v61);
  v43 = swift_allocObject();
  v44 = sub_24AAA9064(v42, v43 + v35, v65);
  v74 = v39;
  v75 = v41;
  MEMORY[0x28223BE20](v44);
  v55[-4] = &v74;
  strcpy(&v55[-3], "recordingtape");
  HIWORD(v55[-2]) = -4864;
  v45 = v66;
  sub_24AAB4BB4();

  v46 = v69;
  v47 = *(v69 + 16);
  v48 = v67;
  v49 = v73;
  v47(v67, v73, v16);
  v50 = v68;
  v47(v68, v45, v16);
  v51 = v70;
  v47(v70, v48, v16);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87790, qword_24AABE510);
  v47(&v51[*(v52 + 48)], v50, v16);
  v53 = *(v46 + 8);
  v53(v45, v16);
  v53(v49, v16);
  v53(v50, v16);
  return (v53)(v48, v16);
}

uint64_t sub_24AAA69C0(uint64_t a1, __n128 a2)
{
  v13 = a2;
  v3 = sub_24AAB4094();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for IncomingCallMoreMenuView(0) + 20);
  v10 = *v8;
  v9 = *(v8 + 8);
  if (*(v8 + 16) == 1)
  {
  }

  else
  {

    sub_24AAB5134();
    v11 = sub_24AAB44B4();
    sub_24AAB3A54();

    sub_24AAB4084();
    swift_getAtKeyPath();
    sub_24AA15934();
    (*(v4 + 8))(v7, v3);
    v10 = v14.n128_u64[0];
  }

  v14 = v13;
  v15 = 2;
  v10(&v14);
}

uint64_t sub_24AAA6B58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IncomingCallMoreMenuControl(0) + 24));
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_24AAB4AC4();
  v7 = sub_24AAB45C4();
  result = swift_getKeyPath();
  *a2 = v6;
  a2[1] = result;
  a2[2] = v7;
  return result;
}

uint64_t sub_24AAA6BE8(uint64_t a1, uint64_t (*a2)(void))
{
  v17 = *v2;
  v18 = *(v2 + 16);
  CallAction.hash(into:)(a1);
  v4 = a2(0);
  v5 = v4[5];
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (v6)
  {
    sub_24AAB5514();
    sub_24AAB4F64();
  }

  else
  {
    sub_24AAB5514();
  }

  v7 = (v2 + v4[6]);
  v8 = *v7;
  v9 = v7[1];
  sub_24AAB4F64();
  v10 = (v2 + v4[7]);
  v11 = v10[1];
  v13 = v10[2];
  v12 = v10[3];
  if (*v10)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (v12)
  {
    sub_24AAB5514();
    if (v13)
    {
      MEMORY[0x24C225D50](0);
      sub_24AAB4A04();
    }

    else
    {
      MEMORY[0x24C225D50](1);
    }

    sub_24AAB4A04();
  }

  else
  {
    sub_24AAB5514();
  }

  v14 = *(v2 + v4[8]);
  sub_24AAB5514();
  v15 = *(v2 + v4[9]);
  return sub_24AAB5514();
}

uint64_t sub_24AAA6DD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_24AAB54F4();
  sub_24AAA6BE8(v5, a3);
  return sub_24AAB5524();
}

uint64_t sub_24AAA6E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_24AAB54F4();
  sub_24AAA6BE8(v6, a4);
  return sub_24AAB5524();
}

uint64_t sub_24AAA6ED0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24AAA6F7C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AAA6FD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_24AAA2D0C(v2, v3);
}

void sub_24AAA7030(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_24AAA70A4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_24AA15894();

  return sub_24AAB4B34();
}

uint64_t sub_24AAA7124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v22 = *a1;
  v23 = v6;
  v24 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v19 = *a2;
  v20 = v8;
  v21 = v9;
  sub_24AA15F10(v22, v6, v7);
  sub_24AA15F10(v19, v8, v9);
  v10 = _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(&v22, &v19);
  sub_24AA15ED0(v19, v20, v21);
  sub_24AA15ED0(v22, v23, v24);
  if (v10 & 1) != 0 && (v11 = a3(0), (MEMORY[0x24C2233A0](a1 + v11[5], a2 + v11[5])) && ((v12 = v11[6], v13 = *(a1 + v12), v14 = *(a1 + v12 + 8), v15 = (a2 + v12), v13 == *v15) && v14 == v15[1] || (sub_24AAB5474()) && (v16 = v11[7], sub_24AAAA8E0(*(a1 + v16), *(a1 + v16 + 8), *(a1 + v16 + 16), *(a1 + v16 + 24), *(a2 + v16), *(a2 + v16 + 8), *(a2 + v16 + 16), *(a2 + v16 + 24))) && *(a1 + v11[8]) == *(a2 + v11[8]))
  {
    v17 = *(a1 + v11[9]) ^ *(a2 + v11[9]) ^ 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_24AAA7274(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v32 = a2;
  v33 = a4;
  v8 = sub_24AAB3A84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_logger;
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_27EF919D8);
  v15 = *(v9 + 16);
  v15(v5 + v13, v14, v8);
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__isShowingTranscripts) = 0;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__receptionistReplyStarted) = 0;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__shouldShowBlockButtonForUnknownCallerWhileScreening) = 0;
  v16 = (v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__prepareToShowCall);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__onLiveReplyTap);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__onReceptionistViewTap);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity);
  v19[1] = 0;
  v19[2] = 0;
  *v19 = 0;
  v20 = (v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel);
  *v20 = 0;
  v20[1] = 0;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__typeToSpeakEnabled) = 0;
  v21 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_featureFlags;
  *(v5 + v21) = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_isLiveReply) = 0;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_userInputStateCancellable) = 0;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_transcriptViewController) = 0;
  sub_24AAB2D24();
  v15(v12, v5 + v13, v8);
  v22 = sub_24AAB3A64();
  v23 = sub_24AAB5144();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34 = v25;
    *v24 = 136315650;
    *(v24 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v34);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_24AA406B4(0xD000000000000027, 0x800000024AAD34B0, &v34);
    *(v24 + 22) = 2048;
    *(v24 + 24) = 40;
    _os_log_impl(&dword_24AA0F000, v22, v23, "[%s:%s:%ld] Initializing CallScreeningViewModel", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v25, -1, -1);
    MEMORY[0x24C226630](v24, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v26 = (v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call);
  v27 = v32;
  *v26 = a1;
  v26[1] = v27;
  sub_24AA16768(a3, v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_callCenter);
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_answeringMachine) = v33;
  v28 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v29 = sub_24AAB3304();
  [v29 setWantsToScreenCalls_];
  [v29 save];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v5;
}

uint64_t _s22FaceTimeNotificationUI22CallScreeningViewModelC16changesPublisher7Combine03AnyJ0Vyyts5NeverOGvg_0()
{
  v0 = sub_24AAB51C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85A20, &qword_24AAB80C0);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v13);
  v39 = &v37 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85A28, &unk_24AABE070);
  v18 = *(v17 - 8);
  v41 = v17;
  v42 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v40 = &v37 - v20;
  v21 = objc_opt_self();
  v22 = [v21 defaultCenter];
  v23 = *MEMORY[0x277D6F020];
  sub_24AAB51D4();

  v24 = [v21 &selRef_handle + 5];
  v25 = *MEMORY[0x277D6F028];
  sub_24AAB51D4();

  sub_24AAA7FFC(&qword_27EF856F0, MEMORY[0x277CC9DB0]);
  sub_24AAB3C04();
  v26 = *(v1 + 8);
  v26(v5, v0);
  v26(v7, v0);
  v27 = [v21 defaultCenter];
  v28 = *MEMORY[0x277D6F030];
  sub_24AAB51D4();

  sub_24AAB3B04();
  v26(v7, v0);
  v29 = *(v38 + 8);
  v29(v12, v8);
  v30 = [v21 defaultCenter];
  v31 = *MEMORY[0x277D6EFF0];
  sub_24AAB51D4();

  v32 = v39;
  sub_24AAB3B04();
  v26(v7, v0);
  v29(v15, v8);
  sub_24AA16A68(&qword_27EF85A30, &qword_27EF85A20, &qword_24AAB80C0);
  v33 = v40;
  sub_24AAB3BF4();
  v29(v32, v8);
  sub_24AA16A68(&qword_27EF85A38, &qword_27EF85A28, &unk_24AABE070);
  v34 = v41;
  v35 = sub_24AAB3BE4();
  (*(v42 + 8))(v33, v34);
  return v35;
}

uint64_t sub_24AAA7C24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA43DBC;

  return sub_24AAA4414(a1);
}

uint64_t sub_24AAA7D04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__receptionistReplyStarted;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_24AAA7E34(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24AAA7E88()
{
  result = sub_24AAB3A84();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_24AAB2D34();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24AAA7FFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AAA8044()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AAA807C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24AAA80A4()
{
  v1 = sub_24AAB3A84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AAA8140(uint64_t a1)
{
  v3 = *(sub_24AAB3A84() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24AAA5188(a1);
}

uint64_t objectdestroy_22Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AAA821C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA44FD0;

  return sub_24AAA3284(a1, v4, v5, v6);
}

uint64_t sub_24AAA82D0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = (v0[2] + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = v1;
  v4[1] = v2;
  v4[2] = v3;
  sub_24AA80F1C(v1);
  return sub_24AAA7E34(v5);
}

uint64_t sub_24AAA834C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_24AAA847C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LiveReplyControl(0);
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

uint64_t sub_24AAA854C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LiveReplyControl(0);
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

uint64_t sub_24AAA866C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IncomingCallMoreMenuControl(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
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

uint64_t sub_24AAA873C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IncomingCallMoreMenuControl(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

uint64_t sub_24AAA8824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_24AAA88B4()
{
  if (!qword_27EF876D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF876E0, &qword_24AABE150);
    v0 = sub_24AAB3CF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF876D8);
    }
  }
}

uint64_t sub_24AAA8960(uint64_t a1)
{
  result = sub_24AAA7FFC(&qword_27EF876F0, type metadata accessor for IncomingCallMoreMenuControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AAA89B8(uint64_t a1)
{
  result = sub_24AAA7FFC(&qword_27EF876F8, type metadata accessor for IncomingCallMoreMenuControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AAA8A10(void *a1)
{
  a1[1] = sub_24AAA7FFC(&qword_27EF87700, type metadata accessor for IncomingCallMoreMenuControl);
  a1[2] = sub_24AAA7FFC(&qword_27EF87708, type metadata accessor for IncomingCallMoreMenuControl);
  result = sub_24AAA7FFC(&qword_27EF87710, type metadata accessor for IncomingCallMoreMenuControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AAA8B04(uint64_t a1)
{
  result = sub_24AAA7FFC(&qword_27EF87720, type metadata accessor for LiveReplyControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AAA8B5C(uint64_t a1)
{
  result = sub_24AAA7FFC(&qword_27EF87728, type metadata accessor for LiveReplyControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AAA8BB4(void *a1)
{
  a1[1] = sub_24AAA7FFC(&qword_27EF87730, type metadata accessor for LiveReplyControl);
  a1[2] = sub_24AAA7FFC(&qword_27EF87738, type metadata accessor for LiveReplyControl);
  result = sub_24AAA7FFC(&qword_27EF87740, type metadata accessor for LiveReplyControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AAA8CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AAA8D3C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_24AAA70A4(*(v0 + 16));
}

uint64_t objectdestroy_140Tm()
{
  v1 = type metadata accessor for IncomingCallMoreMenuView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_24AA15ED0(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v5 = type metadata accessor for IncomingCallMoreMenuControl(0);
  v6 = v5[5];
  v7 = sub_24AAB2B84();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);
  v8 = *(v0 + v4 + v5[6] + 8);

  v9 = (v0 + v4 + v5[7]);
  v10 = *v9;

  v11 = v9[1];

  if (v9[3])
  {
    v12 = v9[2];

    v13 = v9[3];
  }

  v14 = v0 + v4 + *(v1 + 20);
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  sub_24AA15934();

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_24AAA8F10()
{
  v1 = type metadata accessor for LiveReplyButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_24AA15ED0(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v5 = type metadata accessor for LiveReplyControl(0);
  v6 = v5[5];
  v7 = sub_24AAB2B84();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);
  v8 = *(v0 + v4 + v5[6] + 8);

  v9 = (v0 + v4 + v5[7]);
  v10 = *v9;

  v11 = v9[1];

  if (v9[3])
  {
    v12 = v9[2];

    v13 = v9[3];
  }

  v14 = *(v0 + v4 + *(v1 + 20) + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_24AAA9064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AAA90CC()
{
  v1 = type metadata accessor for LiveReplyButton(0);
  v2 = v0 + *(v1 + 20) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_24AAA9144()
{
  result = qword_27EF87798;
  if (!qword_27EF87798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87770, &unk_24AABE490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87748, &qword_24AABE400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE8, &qword_24AAB85F0);
    sub_24AA16A68(&qword_27EF87768, &qword_27EF87748, &qword_24AABE400);
    sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0);
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF84D10, &qword_27EF84D18, &qword_24AABDA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87798);
  }

  return result;
}

uint64_t sub_24AAA9470(uint64_t a1, int a2)
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

uint64_t sub_24AAA94B8(uint64_t result, int a2, int a3)
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

uint64_t sub_24AAA9504(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 40))();
  v5 = *(a2 + 24);
  if ((v4 & 1) == 0 || (v5(a1, a2), v7 = v6, v9 = v8, sub_24AA1B750(v6, v8), , , sub_24AAA9AC8(v7, v9), !v9))
  {
    v7 = v5(a1, a2);
    sub_24AAA9AC8(v10, v11);
  }

  return v7;
}

uint64_t sub_24AAA95E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (!a5)
  {
    return sub_24AAB5514();
  }

  sub_24AAB5514();
  if (a4)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  return sub_24AAB4A04();
}

uint64_t sub_24AAA96BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24AAB54F4();
  if (a1)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (a4)
  {
    sub_24AAB5514();
    if (a3)
    {
      MEMORY[0x24C225D50](0);
      sub_24AAB4A04();
    }

    else
    {
      MEMORY[0x24C225D50](1);
    }

    sub_24AAB4A04();
  }

  else
  {
    sub_24AAB5514();
  }

  return sub_24AAB5524();
}

uint64_t sub_24AAA9798()
{
  v1 = *v0;
  sub_24AAB54F4();
  if (v1)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  return sub_24AAB5524();
}

uint64_t sub_24AAA97FC()
{
  if (!*v0)
  {
    return MEMORY[0x24C225D50](1);
  }

  MEMORY[0x24C225D50](0);

  return sub_24AAB4A04();
}

uint64_t sub_24AAA986C()
{
  v1 = *v0;
  sub_24AAB54F4();
  if (v1)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  return sub_24AAB5524();
}

uint64_t sub_24AAA98CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return sub_24AAB49E4();
  }
}

uint64_t sub_24AAA98F8()
{
  v2 = *v0;
  v1 = v0[1];
  sub_24AAB54F4();
  if (v2)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  return sub_24AAB5524();
}

uint64_t sub_24AAA9970()
{
  v1 = v0[1];
  if (*v0)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  return sub_24AAB4A04();
}

uint64_t sub_24AAA99E0()
{
  v2 = *v0;
  v1 = v0[1];
  sub_24AAB54F4();
  if (v2)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  return sub_24AAB5524();
}

uint64_t sub_24AAA9A54(void *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (!*a1)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!v4 || (sub_24AAB49E4() & 1) == 0)
  {
    return 0;
  }

LABEL_4:

  return sub_24AAB49E4();
}

uint64_t sub_24AAA9AC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24AAA9B0C()
{
  v0 = sub_24AAB4A44();
  v1 = sub_24AAB4A44();
  result = sub_24AAB4A14();
  qword_27EF919F8 = 0;
  unk_27EF91A00 = v0;
  qword_27EF91A08 = v1;
  unk_27EF91A10 = result;
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

uint64_t sub_24AAA9B58(uint64_t a1, int a2)
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

uint64_t sub_24AAA9BA0(uint64_t result, int a2, int a3)
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

uint64_t sub_24AAA9BFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 17))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 16) >> 1) & 0x3E | (*(a1 + 16) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24AAA9C50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 16) = 0;
    *result = a2 - 63;
    *(result + 8) = 0;
    if (a3 >= 0x3F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_24AAA9CEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AAA9D78(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata accessor for MenuItem()
{
  result = qword_27EF877A0;
  if (!qword_27EF877A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AAA9E50()
{
  sub_24AAA9EA8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_24AAA9EA8()
{
  if (!qword_27EF877B0)
  {
    sub_24AAB2B84();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27EF877B0);
    }
  }
}

uint64_t sub_24AAA9F1C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_24AAA9F6C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24AAA9FC0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_24AAA9FD8(void *result, int a2)
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

unint64_t sub_24AAAA00C()
{
  result = qword_27EF877B8;
  if (!qword_27EF877B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF877B8);
  }

  return result;
}

uint64_t sub_24AAAA078()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24AAB54F4();
  if (v2)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (v3)
  {
    sub_24AAB5514();
    if (v4)
    {
      MEMORY[0x24C225D50](0);
      sub_24AAB4A04();
    }

    else
    {
      MEMORY[0x24C225D50](1);
    }

    sub_24AAB4A04();
  }

  else
  {
    sub_24AAB5514();
  }

  return sub_24AAB5524();
}

uint64_t sub_24AAAA164()
{
  v1 = sub_24AAB2B84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = type metadata accessor for MenuItem();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AA15E0C(v0, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    return MEMORY[0x24C225D50](0);
  }

  sub_24AA15EC0(*&v12[*(v13 + 48)], *&v12[*(v13 + 48) + 8], v12[*(v13 + 48) + 16]);
  (*(v2 + 32))(v8, v12, v1);
  (*(v2 + 16))(v6, v8, v1);
  sub_24AAB4F24();
  sub_24AAB4F64();

  return (*(v2 + 8))(v8, v1);
}

uint64_t sub_24AAAA380()
{
  v1 = v0;
  v2 = sub_24AAB2B84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = type metadata accessor for MenuItem();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AAB54F4();
  sub_24AA15E0C(v1, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    MEMORY[0x24C225D50](0);
  }

  else
  {
    sub_24AA15EC0(*&v13[*(v14 + 48)], *&v13[*(v14 + 48) + 8], v13[*(v14 + 48) + 16]);
    (*(v3 + 32))(v9, v13, v2);
    (*(v3 + 16))(v7, v9, v2);
    sub_24AAB4F24();
    sub_24AAB4F64();

    (*(v3 + 8))(v9, v2);
  }

  return sub_24AAB5524();
}

uint64_t sub_24AAAA5B4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_24AAB2B84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  v14 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AAB54F4();
  sub_24AA15E0C(v4, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
  {
    MEMORY[0x24C225D50](0);
  }

  else
  {
    sub_24AA15EC0(*&v16[*(v17 + 48)], *&v16[*(v17 + 48) + 8], v16[*(v17 + 48) + 16]);
    (*(v6 + 32))(v13, v16, v5);
    (*(v6 + 16))(v10, v13, v5);
    sub_24AAB4F24();
    sub_24AAB4F64();

    (*(v6 + 8))(v13, v5);
  }

  return sub_24AAB5524();
}

unint64_t sub_24AAAA830()
{
  result = qword_27EF877C0;
  if (!qword_27EF877C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF877C0);
  }

  return result;
}

unint64_t sub_24AAAA888()
{
  result = qword_27EF877C8;
  if (!qword_27EF877C8)
  {
    type metadata accessor for MenuItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF877C8);
  }

  return result;
}

BOOL sub_24AAAA8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (!a5 || (sub_24AAB49E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if ((sub_24AAB49E4() & 1) == 0)
  {
    return 0;
  }

  if (!a4)
  {
    return !a8;
  }

  if (!a8)
  {
    return 0;
  }

  if (a3)
  {
    if (!a7)
    {
      return 0;
    }

    if (sub_24AAB49E4())
    {
      goto LABEL_19;
    }

LABEL_17:

    return 0;
  }

  if (a7)
  {
    sub_24AA1B750(a7, a8);
    goto LABEL_17;
  }

LABEL_19:
  v12 = sub_24AAB49E4();

  return (v12 & 1) != 0;
}

uint64_t sub_24AAAA9FC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24AAB2B84();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24AAAAABC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24AAB2B84();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CallScreeningTextField()
{
  result = qword_27EF877D0;
  if (!qword_27EF877D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AAAABAC()
{
  type metadata accessor for CallScreeningViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_24AAB2B84();
    if (v1 <= 0x3F)
    {
      sub_24AAAAC68();
      if (v2 <= 0x3F)
      {
        sub_24AA5EB90();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24AAAAC68()
{
  if (!qword_27EF877E0)
  {
    v0 = sub_24AAB4B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF877E0);
    }
  }
}

uint64_t sub_24AAAACD4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v113 = a1;
  v3 = sub_24AAB3E74();
  v114 = *(v3 - 8);
  v115 = v3;
  v4 = *(v114 + 64);
  MEMORY[0x28223BE20](v3);
  v112 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CallScreeningTextField();
  v109 = *(v6 - 1);
  v7 = *(v109 + 64);
  MEMORY[0x28223BE20](v6);
  v110 = v8;
  v111 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24AAB2CD4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v108 = sub_24AAB2B34();
  v11 = *(v108 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v108);
  v14 = (&v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_24AAB4ED4();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_24AAB2B84();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D80, &qword_24AAB8BE8);
  v19 = *(v90 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v90);
  v22 = &v87 - v21;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF877E8, &qword_24AABE990);
  v96 = *(v97 - 8);
  v23 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v89 = &v87 - v24;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF877F0, &qword_24AABE998);
  v25 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v98 = &v87 - v26;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF877F8, &qword_24AABE9A0);
  v27 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v100 = &v87 - v28;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87800, &qword_24AABE9A8);
  v102 = *(v103 - 8);
  v29 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v101 = &v87 - v30;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87808, &qword_24AABE9B0);
  v31 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v104 = &v87 - v32;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87810, &qword_24AABE9B8);
  v106 = *(v107 - 8);
  v33 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v116 = &v87 - v34;
  v35 = v1 + v6[5];
  sub_24AAB2B14();
  *v14 = type metadata accessor for BundleClass();
  (*(v11 + 104))(v14, *MEMORY[0x277CC9120], v108);
  sub_24AAB2CC4();
  sub_24AAB2B94();
  v36 = sub_24AAB4F24();
  v38 = v37;
  v39 = (v2 + v6[7]);
  v40 = *v39;
  v41 = v39[1];
  v42 = v39[2];
  v95 = v40;
  v121 = v40;
  v122 = v41;
  v94 = v41;
  v93 = v42;
  v123 = v42;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D60, &unk_24AABE9C0);
  sub_24AAB4B84();
  v117 = v36;
  v118 = v38;
  sub_24AA15894();
  sub_24AAB4DF4();
  v108 = v6;
  v43 = v6[6];
  v44 = v89;
  v45 = v2;
  v46 = (v2 + v43);
  v48 = *v46;
  v47 = v46[1];
  v117 = v48;
  v118 = v47;
  sub_24AA16A68(&qword_27EF85D78, &qword_27EF85D80, &qword_24AAB8BE8);
  sub_24AAAC078();
  v49 = v90;
  sub_24AAB4834();
  (*(v19 + 8))(v22, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DE8, &qword_24AABC4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AAB7D10;
  LOBYTE(v49) = sub_24AAB4504();
  *(inited + 32) = v49;
  v51 = sub_24AAB4524();
  *(inited + 33) = v51;
  v52 = sub_24AAB4514();
  sub_24AAB4514();
  if (sub_24AAB4514() != v49)
  {
    v52 = sub_24AAB4514();
  }

  sub_24AAB4514();
  if (sub_24AAB4514() != v51)
  {
    v52 = sub_24AAB4514();
  }

  sub_24AAB3C54();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = v98;
  (*(v96 + 32))(v98, v44, v97);
  v62 = v61 + *(v91 + 36);
  *v62 = v52;
  *(v62 + 8) = v54;
  *(v62 + 16) = v56;
  *(v62 + 24) = v58;
  *(v62 + 32) = v60;
  *(v62 + 40) = 0;
  v63 = *v2;
  swift_getKeyPath();
  v97 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel___observationRegistrar;
  v117 = v63;
  sub_24AAAC0D4();
  sub_24AAB2CF4();

  v64 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__typeToSpeakEnabled;
  v65 = *(v63 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__typeToSpeakEnabled);
  KeyPath = swift_getKeyPath();
  v67 = swift_allocObject();
  *(v67 + 16) = (v65 & 1) == 0;
  v68 = v100;
  sub_24AAAC144(v61, v100);
  v69 = (v68 + *(v99 + 36));
  *v69 = KeyPath;
  v69[1] = sub_24AA56AD0;
  v69[2] = v67;
  v70 = v45 + *(v108 + 32);
  v88 = v45;
  v71 = *v70;
  v72 = *(v70 + 8);
  LOBYTE(v70) = *(v70 + 16);
  LOBYTE(v117) = v71;
  v118 = v72;
  LOBYTE(v119) = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E70, &qword_24AAB8CF0);
  sub_24AAB3C84();
  sub_24AAAC1B4();
  v73 = v101;
  sub_24AAB48F4();

  sub_24AA169C4(v68, &qword_27EF877F8, &qword_24AABE9A0);
  swift_getKeyPath();
  v117 = v63;
  sub_24AAB2CF4();

  if (*(v63 + v64))
  {
    v74 = 1.0;
  }

  else
  {
    v74 = 0.0;
  }

  v75 = v104;
  (*(v102 + 32))(v104, v73, v103);
  v76 = v105;
  *(v75 + *(v105 + 36)) = v74;
  v117 = v95;
  v118 = v94;
  v119 = v93;
  sub_24AAB4B64();
  v117 = v121;
  v118 = v122;
  v77 = v45;
  v78 = v111;
  sub_24AAAC37C(v77, v111);
  v79 = (*(v109 + 80) + 16) & ~*(v109 + 80);
  v80 = swift_allocObject();
  sub_24AAAC3E0(v78, v80 + v79);
  v81 = sub_24AAAC4C4();
  sub_24AAB4954();

  sub_24AA169C4(v75, &qword_27EF87808, &qword_24AABE9B0);
  sub_24AAAC37C(v88, v78);
  v82 = swift_allocObject();
  sub_24AAAC3E0(v78, v82 + v79);
  v83 = v112;
  sub_24AAB3E64();
  v117 = v76;
  v118 = MEMORY[0x277D837D0];
  v119 = v81;
  v120 = MEMORY[0x277D837F8];
  swift_getOpaqueTypeConformance2();
  v84 = v107;
  v85 = v116;
  sub_24AAB4964();

  (*(v114 + 8))(v83, v115);
  return (*(v106 + 8))(v85, v84);
}

void sub_24AAAB9C4(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    v5 = *a2;
    v6 = a2[1];
    if ((sub_24AAB5474() & 1) == 0 && sub_24AAB4F74() >= 1)
    {
      v7 = *a3;
      swift_getKeyPath();
      sub_24AAAC0D4();
      sub_24AAB2CF4();

      v8 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__receptionistReplyStarted;
      swift_beginAccess();
      if ((*(v7 + v8) & 1) == 0)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_24AAB2CE4();

        CallScreeningViewModel.startReceptionistReply()();
      }
    }
  }
}

uint64_t sub_24AAABB3C(uint64_t *a1)
{
  v2 = (a1 + *(type metadata accessor for CallScreeningTextField() + 28));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D60, &unk_24AABE9C0);
  sub_24AAB4B64();
  if (v9 == __PAIR128__(0xE000000000000000, 0))
  {
  }

  v7 = sub_24AAB5474();

  if ((v7 & 1) == 0)
  {
    v8 = *a1;
    sub_24AAB4B64();
    CallScreeningViewModel.sendReceptionistReply(_:)(v9);

    return sub_24AAB4B74();
  }

  return result;
}

uint64_t sub_24AAABC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a1;
  v38 = a2;
  v39 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87838, &qword_24AABEAB8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87840, &qword_24AABEAC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87848, &qword_24AABEAC8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DE8, &qword_24AABC4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AAB7D10;
  v16 = sub_24AAB4504();
  *(inited + 32) = v16;
  v17 = sub_24AAB4524();
  *(inited + 33) = v17;
  v18 = sub_24AAB4514();
  sub_24AAB4514();
  if (sub_24AAB4514() != v16)
  {
    v18 = sub_24AAB4514();
  }

  sub_24AAB4514();
  if (sub_24AAB4514() != v17)
  {
    v18 = sub_24AAB4514();
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87850, &qword_24AABEAD0);
  (*(*(v19 - 8) + 16))(v6, v37, v19);
  v20 = &v6[*(v3 + 36)];
  *v20 = v18;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v20[40] = 1;
  sub_24AAB4D44();
  sub_24AAB3D54();
  sub_24AA1A25C(v6, v10, &qword_27EF87838, &qword_24AABEAB8);
  v21 = &v10[*(v7 + 36)];
  v22 = v41;
  *v21 = v40;
  *(v21 + 1) = v22;
  *(v21 + 2) = v42;
  v23 = &v14[*(v11 + 36)];
  *v23 = v38;
  v24 = type metadata accessor for ControlPlatter();
  v25 = *(v24 + 20);
  *&v23[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  swift_storeEnumTagMultiPayload();
  v26 = &v23[*(v24 + 24)];
  *v26 = swift_getKeyPath();
  v26[8] = 0;

  v27 = sub_24AAB4D44();
  v29 = v28;
  v30 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85298, &unk_24AAB8FE0) + 36)];
  *v30 = v27;
  v30[1] = v29;
  sub_24AA1A25C(v10, v14, &qword_27EF87840, &qword_24AABEAC0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87858, &qword_24AABEB40);
  v32 = v39;
  v33 = v39 + *(v31 + 36);
  v34 = *MEMORY[0x277CE0118];
  v35 = sub_24AAB4184();
  (*(*(v35 - 8) + 104))(v33, v34, v35);
  *(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87860, &qword_24AABEB48) + 36)) = 256;
  return sub_24AA1A25C(v14, v32, &qword_27EF87848, &qword_24AABEAC8);
}

unint64_t sub_24AAAC078()
{
  result = qword_27EF87818;
  if (!qword_27EF87818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87818);
  }

  return result;
}

unint64_t sub_24AAAC0D4()
{
  result = qword_27EF85610;
  if (!qword_27EF85610)
  {
    type metadata accessor for CallScreeningViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85610);
  }

  return result;
}

uint64_t sub_24AAAC144(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF877F0, &qword_24AABE998);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AAAC1B4()
{
  result = qword_27EF87820;
  if (!qword_27EF87820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF877F8, &qword_24AABE9A0);
    sub_24AAAC26C();
    sub_24AA16A68(&qword_27EF84E40, &qword_27EF84E48, &qword_24AAB8FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87820);
  }

  return result;
}

unint64_t sub_24AAAC26C()
{
  result = qword_27EF87828;
  if (!qword_27EF87828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF877F0, &qword_24AABE998);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85D80, &qword_24AAB8BE8);
    sub_24AA16A68(&qword_27EF85D78, &qword_27EF85D80, &qword_24AAB8BE8);
    sub_24AAAC078();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87828);
  }

  return result;
}

uint64_t sub_24AAAC37C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallScreeningTextField();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AAAC3E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallScreeningTextField();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24AAAC444(void *a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for CallScreeningTextField() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_24AAAB9C4(a1, a2, v6);
}

unint64_t sub_24AAAC4C4()
{
  result = qword_27EF87830;
  if (!qword_27EF87830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87808, &qword_24AABE9B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF877F8, &qword_24AABE9A0);
    sub_24AAAC1B4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87830);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for CallScreeningTextField();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[5];
  v8 = sub_24AAB2B84();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = (v0 + v3 + v1[6]);
  v10 = *v9;

  v11 = v9[1];

  if (v9[3])
  {
    v12 = v9[2];

    v13 = v9[3];
  }

  v14 = v5 + v1[7];
  v15 = *(v14 + 8);

  v16 = *(v14 + 16);

  v17 = *(v5 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AAAC6DC()
{
  v1 = *(type metadata accessor for CallScreeningTextField() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_24AAABB3C(v2);
}

uint64_t sub_24AAAC774()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87810, &qword_24AABE9B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87808, &qword_24AABE9B0);
  sub_24AAAC4C4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24AAAC858()
{
  result = qword_27EF87868;
  if (!qword_27EF87868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87858, &qword_24AABEB40);
    sub_24AAAC910();
    sub_24AA16A68(&qword_27EF87890, &qword_27EF87860, &qword_24AABEB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87868);
  }

  return result;
}

unint64_t sub_24AAAC910()
{
  result = qword_27EF87870;
  if (!qword_27EF87870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87848, &qword_24AABEAC8);
    sub_24AAAC9C8();
    sub_24AA16A68(&qword_27EF852F8, &qword_27EF85298, &unk_24AAB8FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87870);
  }

  return result;
}

unint64_t sub_24AAAC9C8()
{
  result = qword_27EF87878;
  if (!qword_27EF87878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87840, &qword_24AABEAC0);
    sub_24AAACA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87878);
  }

  return result;
}

unint64_t sub_24AAACA54()
{
  result = qword_27EF87880;
  if (!qword_27EF87880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87838, &qword_24AABEAB8);
    sub_24AA16A68(&qword_27EF87888, &qword_27EF87850, &qword_24AABEAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87880);
  }

  return result;
}

uint64_t CarPlayIncomingCallView.init(call:callCenter:onTap:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v74 = &v72 - v14;
  v75 = type metadata accessor for CallSubtitle(0);
  v15 = *(*(v75 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v75);
  v73 = (&v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v80 = &v72 - v19;
  MEMORY[0x28223BE20](v18);
  v85 = &v72 - v20;
  v21 = type metadata accessor for CallStatusViewModel(0);
  v22 = *(*(v21 - 1) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v82 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = (&v72 - v25);
  v93 = 4;
  type metadata accessor for TUCallStatus(0);
  sub_24AAB4B54();
  v27 = v87;
  *(a6 + 72) = v86;
  *(a6 + 80) = v27;
  LOBYTE(v93) = 0;
  sub_24AAB4B54();
  v28 = v87;
  *(a6 + 88) = v86;
  *(a6 + 96) = v28;
  v29 = type metadata accessor for CarPlayIncomingCallView();
  v30 = *(v29 + 40);
  sub_24AA165C8();
  sub_24AAB3CA4();
  v81 = v29;
  v31 = a6 + *(v29 + 44);
  *v31 = swift_getKeyPath();
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  v84 = a3;
  sub_24AA16768(a3, a6 + 16);
  *(a6 + 56) = a4;
  *(a6 + 64) = a5;
  ObjectType = swift_getObjectType();
  v33 = *(a2 + 8);
  v88 = ObjectType;
  v89 = v33;
  v86 = a1;
  swift_unknownObjectRetain_n();
  v83 = a5;

  v34 = sub_24AAB39F4();
  v35 = v34;
  if (v34 == 4 || v34 == 1)
  {
    sub_24AAB3504();
    v36 = v91;
    if (v91)
    {
      v37 = v92;
      v38 = v90;

      if (v37)
      {
        v78 = v38;
        v79 = v36;
        goto LABEL_8;
      }
    }
  }

  v78 = sub_24AA87578(&v86, v35, 0, ObjectType, v33);
  v79 = v39;
LABEL_8:
  v40 = sub_24AA86BC8(&v86, v35, 1, ObjectType);
  v41 = v85;
  v42 = v80;
  v77 = v40;
  v76 = v43;
  if (v35 > 2)
  {
    if ((v35 - 5) < 2)
    {
      sub_24AAB35B4();
      v45 = v95;
      if (v95)
      {
        v46 = v94;

        v47 = v46;
      }

      else
      {
        v57 = sub_24AAB34F4();
        if (v58)
        {
          v47 = v57;
        }

        else
        {
          v47 = 0;
        }

        if (v58)
        {
          v45 = v58;
        }

        else
        {
          v45 = 0xE000000000000000;
        }
      }

      v59 = v73;
      *v73 = v47;
      *(v59 + 8) = v45;
      swift_storeEnumTagMultiPayload();
      sub_24AAB0D18(v59, v42, type metadata accessor for CallSubtitle);
      goto LABEL_32;
    }

    if (v35 == 3)
    {
      *v42 = sub_24AAB34F4();
      *(v42 + 8) = v56;
    }

    else if (v35 == 4)
    {
      sub_24AA16768(&v86, v80);
      *(v42 + 40) = 4;
      *(v42 + 48) = sub_24AAB34F4();
      *(v42 + 56) = v44;
      *(v42 + 64) = 1;
    }

LABEL_22:
    swift_storeEnumTagMultiPayload();
LABEL_32:
    v55 = v84;
    goto LABEL_33;
  }

  if (v35 != 1)
  {
    goto LABEL_22;
  }

  v73 = a1;
  v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85600, &qword_24AAB72B0) + 48);
  *v42 = sub_24AAB34F4();
  *(v42 + 8) = v48;
  v49 = v74;
  sub_24AAB34E4();
  v50 = sub_24AAB2C54();
  v51 = *(v50 - 8);
  v52 = v49;
  v53 = *(v51 + 48);
  if (v53(v52, 1, v50) == 1)
  {
    sub_24AAB2C34();
    v54 = v53(v74, 1, v50);
    v55 = v84;
    v41 = v85;
    if (v54 != 1)
    {
      sub_24AA169C4(v74, &qword_27EF855E8, &unk_24AABCB40);
    }
  }

  else
  {
    (*(v51 + 32))(v42 + v72, v74, v50);
    v55 = v84;
    v41 = v85;
  }

  swift_storeEnumTagMultiPayload();
LABEL_33:
  sub_24AAB0D18(v42, v41, type metadata accessor for CallSubtitle);
  v60 = sub_24AAB3564();
  if (v60 && (v61 = v60, v62 = [v60 shouldHideContactWithLockState_], v61, v62))
  {
    v63 = MEMORY[0x277D84F90];
  }

  else
  {
    v63 = sub_24AA86F34(&v86, ObjectType);
  }

  v64 = sub_24AAB3554();
  v66 = v65;
  v67 = v79;
  *v26 = v78;
  v26[1] = v67;
  v68 = v76;
  v26[2] = v77;
  v26[3] = v68;
  sub_24AAB0D18(v41, v26 + v21[6], type metadata accessor for CallSubtitle);
  *(v26 + v21[7]) = v63;
  *(v26 + v21[8]) = 3;
  v69 = (v26 + v21[9]);
  *v69 = v64;
  v69[1] = v66;
  __swift_destroy_boxed_opaque_existential_1Tm(&v86);
  v70 = *(v81 + 36);
  sub_24AAB0CAC(v26, v82, type metadata accessor for CallStatusViewModel);
  sub_24AAB4B54();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  return sub_24AA1B69C(v26);
}

uint64_t type metadata accessor for CarPlayIncomingCallView()
{
  result = qword_27EF87920;
  if (!qword_27EF87920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AAAD2EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87AD8, qword_24AABEEA8);
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8);
  v46 = &v36 - v10;
  sub_24AA16768(a1, &v66);
  v11 = swift_allocObject();
  sub_24AA16AF4(&v66, v11 + 16);
  *(v11 + 56) = 0x4044000000000000;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;

  sub_24AAB4D44();
  sub_24AAB3D54();
  v86 = v81;
  v85 = v83;
  *&v66 = sub_24AAB2378;
  *(&v66 + 1) = v11;
  *&v67 = sub_24AA68374;
  *(&v67 + 1) = v12;
  *&v68 = v80;
  BYTE8(v68) = v81;
  *&v69 = v82;
  BYTE8(v69) = v83;
  v70 = v84;
  v13 = (v4 + *(type metadata accessor for CarPlayIncomingCallView() + 40));
  v14 = *v13;
  v41 = v13[1];
  v42 = v14;
  v40 = *(v13 + 16);
  v15 = v13[3];
  v38 = v13[4];
  v39 = v15;
  v37 = v13[5];
  HIDWORD(v36) = *(v13 + 48);
  *&v57 = v14;
  *(&v57 + 1) = v41;
  LOBYTE(v58) = v40;
  *(&v58 + 1) = v15;
  *&v59 = v38;
  *(&v59 + 1) = v37;
  LOBYTE(v60) = BYTE4(v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A08, &unk_24AABEDD8);
  sub_24AAB3C84();
  v57 = v47[0];
  v58 = v47[1];
  LOBYTE(v59) = v48;
  v17 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(*(v16 + 8) + 16))(&v49, v17);
  v78 = v49;
  v79 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A80, &qword_24AABEE78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87958, &unk_24AABEC88);
  sub_24AAB1EE0();
  sub_24AAB14E0();
  sub_24AAB48E4();
  sub_24AAB1B98(v78, *(&v78 + 1), v79);
  v18 = v58;
  LOBYTE(v17) = v59;

  sub_24AAB1B98(v18, *(&v18 + 1), v17);

  *&v66 = v42;
  *(&v66 + 1) = v41;
  LOBYTE(v67) = v40;
  *(&v67 + 1) = v39;
  *&v68 = v38;
  *(&v68 + 1) = v37;
  LOBYTE(v69) = BYTE4(v36);
  sub_24AAB3C64();
  v19 = v78;
  v20 = v79;
  v22 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  (*(*(v21 + 8) + 16))(&v76, v22);
  v23 = v76;
  v24 = v77;
  if (v20 == 255)
  {
    if (v77 == 255)
    {
      sub_24AAB1B98(v19, *(&v19 + 1), 255);
      v25 = 1;
      goto LABEL_8;
    }

LABEL_7:
    sub_24AAB1B98(v19, *(&v19 + 1), v20);
    sub_24AAB1B98(v23, *(&v23 + 1), v24);
    v25 = 0;
    goto LABEL_8;
  }

  v66 = v19;
  LOBYTE(v67) = v20;
  if (v77 == 255)
  {
    sub_24AAB1B84(v19, *(&v19 + 1), v20);
    sub_24AA15ED0(v19, *(&v19 + 1), v20);
    goto LABEL_7;
  }

  v57 = v76;
  LOBYTE(v58) = v77;
  sub_24AAB1B84(v19, *(&v19 + 1), v20);
  v25 = _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(&v66, &v57);
  sub_24AA15ED0(v57, *(&v57 + 1), v58);
  sub_24AA15ED0(v66, *(&v66 + 1), v67);
  sub_24AAB1B98(v19, *(&v19 + 1), v20);
LABEL_8:
  v26 = sub_24AAB4D44();
  v28 = v27;
  sub_24AAB098C(v25 & 1, &v49);
  v61 = v53;
  v62 = v54;
  v63 = v55;
  v57 = v49;
  v58 = v50;
  v59 = v51;
  v60 = v52;
  *&v64 = v56;
  *(&v64 + 1) = v26;
  v65 = v28;
  v29 = v45;
  (*(v43 + 32))(v45, v46, v44);
  v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A40, &qword_24AABEE18) + 36);
  v31 = v64;
  *(v30 + 96) = v63;
  *(v30 + 112) = v31;
  *(v30 + 128) = v65;
  v32 = v60;
  *(v30 + 32) = v59;
  *(v30 + 48) = v32;
  v33 = v62;
  *(v30 + 64) = v61;
  *(v30 + 80) = v33;
  v34 = v58;
  *v30 = v57;
  *(v30 + 16) = v34;
  v70 = v53;
  v71 = v54;
  v72 = v55;
  v66 = v49;
  v67 = v50;
  v68 = v51;
  v69 = v52;
  v73 = v56;
  v74 = v26;
  v75 = v28;
  sub_24AA1695C(&v57, v47, &qword_27EF87AA8, &qword_24AABEE88);
  return sub_24AA169C4(&v66, &qword_27EF87AA8, &qword_24AABEE88);
}

uint64_t sub_24AAAD86C@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  *(a2 + 48) = v5;
  *(a2 + 56) = *(v6 + 16);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((a2 + 24));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1Tm, v7, v5);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 64) = a3;
  return result;
}

uint64_t CarPlayIncomingCallView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v112 = a1;
  v3 = type metadata accessor for CarPlayIncomingCallView();
  v113 = *(v3 - 8);
  v117 = *(v113 + 8);
  MEMORY[0x28223BE20](v3 - 8);
  v104 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24AAB4384();
  v102 = *(v5 - 8);
  v6 = *(v102 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_24AAB4AA4();
  v99 = *(v100 - 1);
  v9 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v11 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87898, &qword_24AABEB98);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v97 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF878A0, &qword_24AABEBA0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v97 - v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF878A8, &qword_24AABEBA8);
  v21 = *(*(v101 - 1) + 64);
  MEMORY[0x28223BE20](v101);
  v23 = &v97 - v22;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF878B0, &qword_24AABEBB0);
  v107 = *(v108 - 8);
  v24 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v114 = &v97 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF878B8, &qword_24AABEBB8);
  v27 = *(v26 - 8);
  v103 = v26 - 8;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v115 = &v97 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF878C0, &qword_24AABEBC0);
  v31 = *(v30 - 8);
  v106 = v30 - 8;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v105 = &v97 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF878C8, &qword_24AABEBC8);
  v35 = *(v34 - 8);
  v109 = v34 - 8;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v116 = &v97 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF878D0, &qword_24AABEBD0);
  v39 = *(v38 - 8);
  v111 = v38 - 8;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v110 = &v97 - v41;
  *v15 = sub_24AAB4104();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF878D8, &qword_24AABEBD8);
  sub_24AAAE4A8(v2, &v15[*(v42 + 44)]);
  v43 = sub_24AAB44D4();
  sub_24AAB3C54();
  v44 = &v15[*(v12 + 36)];
  *v44 = v43;
  *(v44 + 1) = v45;
  *(v44 + 2) = v46;
  *(v44 + 3) = v47;
  *(v44 + 4) = v48;
  v44[40] = 0;
  sub_24AAB4A84();
  sub_24AAB4374();
  sub_24AAB0BF4();
  sub_24AAB1F98(&qword_27EF878F8, MEMORY[0x277CE0638]);
  sub_24AAB47F4();
  (*(v102 + 8))(v8, v5);
  (*(v99 + 8))(v11, v100);
  sub_24AA169C4(v15, &qword_27EF87898, &qword_24AABEB98);
  v49 = &v20[*(v17 + 44)];
  v50 = *MEMORY[0x277CE0118];
  v51 = sub_24AAB4184();
  (*(*(v51 - 8) + 104))(v49, v50, v51);
  *&v49[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87860, &qword_24AABEB48) + 36)] = 256;
  sub_24AAB4D44();
  sub_24AAB3F24();
  sub_24AA1A25C(v20, v23, &qword_27EF878A0, &qword_24AABEBA0);
  v52 = &v23[v101[9]];
  v53 = v123;
  *(v52 + 4) = v122;
  *(v52 + 5) = v53;
  *(v52 + 6) = v124;
  v54 = v119;
  *v52 = v118;
  *(v52 + 1) = v54;
  v55 = v121;
  *(v52 + 2) = v120;
  *(v52 + 3) = v55;
  v56 = v104;
  sub_24AAB0CAC(v2, v104, type metadata accessor for CarPlayIncomingCallView);
  v102 = *(v113 + 80);
  v57 = (v102 + 16) & ~v102;
  v58 = swift_allocObject();
  v113 = type metadata accessor for CarPlayIncomingCallView;
  sub_24AAB0D18(v56, v58 + v57, type metadata accessor for CarPlayIncomingCallView);
  sub_24AAB0DE4();
  sub_24AAB4814();

  sub_24AA169C4(v23, &qword_27EF878A8, &qword_24AABEBA8);
  v59 = objc_opt_self();
  v101 = v59;
  v60 = [v59 defaultCenter];
  v61 = *MEMORY[0x277D6EFF0];
  v62 = v103;
  v63 = v115;
  v64 = v115 + *(v103 + 60);
  sub_24AAB51D4();

  sub_24AAB0CAC(v2, v56, type metadata accessor for CarPlayIncomingCallView);
  v65 = swift_allocObject();
  v66 = v113;
  sub_24AAB0D18(v56, v65 + v57, v113);
  (*(v107 + 32))(v63, v114, v108);
  v67 = (v63 + *(v62 + 64));
  *v67 = sub_24AAB0FB4;
  v67[1] = v65;
  v68 = [v59 defaultCenter];
  v69 = *MEMORY[0x277D6F038];
  v70 = v106;
  v71 = v105;
  v72 = &v105[*(v106 + 60)];
  sub_24AAB51D4();

  v98 = v2;
  v100 = type metadata accessor for CarPlayIncomingCallView;
  sub_24AAB0CAC(v2, v56, type metadata accessor for CarPlayIncomingCallView);
  v73 = swift_allocObject();
  sub_24AAB0D18(v56, v73 + v57, v66);
  sub_24AA1A25C(v115, v71, &qword_27EF878B8, &qword_24AABEBB8);
  v74 = (v71 + *(v70 + 64));
  *v74 = sub_24AAB23E4;
  v74[1] = v73;
  v75 = v101;
  v76 = [v101 defaultCenter];
  v77 = *MEMORY[0x277D6F048];
  v78 = v109;
  v79 = v116;
  v80 = v116 + *(v109 + 60);
  sub_24AAB51D4();

  sub_24AAB0CAC(v2, v56, type metadata accessor for CarPlayIncomingCallView);
  v81 = swift_allocObject();
  v82 = v113;
  sub_24AAB0D18(v56, v81 + v57, v113);
  sub_24AA1A25C(v71, v79, &qword_27EF878C0, &qword_24AABEBC0);
  v83 = (v79 + *(v78 + 64));
  *v83 = sub_24AAB23E4;
  v83[1] = v81;
  v84 = [v75 defaultCenter];
  v85 = *MEMORY[0x277D6F0A0];
  v86 = v111;
  v87 = v110;
  v88 = &v110[*(v111 + 60)];
  sub_24AAB51D4();

  v89 = v98;
  v90 = v100;
  sub_24AAB0CAC(v98, v56, v100);
  v91 = swift_allocObject();
  sub_24AAB0D18(v56, v91 + v57, v82);
  sub_24AA1A25C(v116, v87, &qword_27EF878C8, &qword_24AABEBC8);
  v92 = (v87 + *(v86 + 64));
  *v92 = sub_24AAB1014;
  v92[1] = v91;
  sub_24AAB0CAC(v89, v56, v90);
  v93 = swift_allocObject();
  sub_24AAB0D18(v56, v93 + v57, v82);
  v94 = v112;
  sub_24AA1A25C(v87, v112, &qword_27EF878D0, &qword_24AABEBD0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87918, &qword_24AABEBF0);
  v96 = (v94 + *(result + 36));
  *v96 = sub_24AAB1084;
  v96[1] = v93;
  v96[2] = 0;
  v96[3] = 0;
  return result;
}

uint64_t sub_24AAAE4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a2;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A18, &qword_24AABEDF0);
  v3 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v132 = &v126 - v4;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A20, &qword_24AABEDF8);
  v5 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v127 = &v126 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A28, &qword_24AABEE00);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v131 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v134 = (&v126 - v11);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A30, &qword_24AABEE08);
  v12 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v144 = &v126 - v13;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A38, &qword_24AABEE10);
  v14 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142);
  v130 = &v126 - v15;
  v16 = type metadata accessor for CarPlayIncomingCallView();
  v17 = v16 - 8;
  v133 = *(v16 - 8);
  v18 = *(v133 + 8);
  MEMORY[0x28223BE20](v16);
  v149 = v19;
  v135 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A40, &qword_24AABEE18);
  v20 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v136 = &v126 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A48, &qword_24AABEE20);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v129 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v137 = &v126 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v138 = &v126 - v29;
  MEMORY[0x28223BE20](v28);
  v147 = (&v126 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A50, &unk_24AABEE28);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v143 = &v126 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v150 = &v126 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86EE8, &qword_24AABC7E0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v126 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A58, &qword_24AABEE38);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v140 = &v126 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v45 = &v126 - v44;
  v46 = *(v17 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87900, &qword_24AABEBE8);
  sub_24AAB4B84();
  LOBYTE(v159) = 0;
  sub_24AAB4C24();
  v47 = v166;
  v48 = v167;
  v49 = type metadata accessor for CallStatusView();
  *&v39[v49[9]] = 0;
  v50 = v49[10];
  *&v39[v50] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  swift_storeEnumTagMultiPayload();
  v51 = &v39[v49[5]];
  *v51 = v47;
  v51[16] = v48;
  v39[v49[6]] = 1;
  v39[v49[7]] = 0;
  *&v39[v49[8]] = 0x4044000000000000;
  v39[*(v36 + 36)] = 0;
  sub_24AAB1BB4();
  v139 = v45;
  sub_24AAB48B4();
  sub_24AA169C4(v39, &qword_27EF86EE8, &qword_24AABC7E0);
  sub_24AAB4D44();
  sub_24AAB3F24();
  *&v157[55] = v162;
  *&v157[71] = v163;
  *&v157[87] = v164;
  *&v157[103] = v165;
  *&v157[7] = v159;
  *&v157[23] = v160;
  v158 = 0;
  *&v157[39] = v161;
  v52 = *(a1 + 80);
  LODWORD(v166) = *(a1 + 72);
  *(&v166 + 1) = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A10, &qword_24AABEDE8);
  sub_24AAB4B64();
  if (LODWORD(v152[0]) == 4)
  {
    v53 = type metadata accessor for DeclineControl(0);
    *(&v167 + 1) = v53;
    *&v168 = sub_24AAB1F98(&qword_27EF87678, type metadata accessor for DeclineControl);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v166);
    *boxed_opaque_existential_1Tm = xmmword_24AAB6FB0;
    *(boxed_opaque_existential_1Tm + 16) = 2;
    v55 = boxed_opaque_existential_1Tm + v53[5];
    sub_24AAB2B24();
    v56 = (boxed_opaque_existential_1Tm + v53[6]);
    *v56 = 0x6F642E656E6F6870;
    v56[1] = 0xEF6C6C69662E6E77;
    v57 = (boxed_opaque_existential_1Tm + v53[7]);
    v58 = sub_24AAB49F4();
    v59 = sub_24AAB4A44();
    *v57 = v58;
    v57[1] = v59;
    v57[2] = 0;
    v57[3] = 0;
    *(boxed_opaque_existential_1Tm + v53[8]) = 0;
    *(boxed_opaque_existential_1Tm + v53[9]) = 0;
    v134 = type metadata accessor for CarPlayIncomingCallView;
    v60 = a1;
    v61 = a1;
    v62 = v135;
    sub_24AAB0CAC(v61, v135, type metadata accessor for CarPlayIncomingCallView);
    v63 = (*(v133 + 80) + 16) & ~*(v133 + 80);
    v64 = swift_allocObject();
    v133 = type metadata accessor for CarPlayIncomingCallView;
    sub_24AAB0D18(v62, v64 + v63, type metadata accessor for CarPlayIncomingCallView);
    v65 = v136;
    sub_24AAAD2EC(&v166, sub_24AAB23DC, v64, v136);

    __swift_destroy_boxed_opaque_existential_1Tm(&v166);
    v132 = sub_24AAB1DC0();
    sub_24AAB48B4();
    sub_24AA169C4(v65, &qword_27EF87A40, &qword_24AABEE18);
    sub_24AAB4D44();
    sub_24AAB3F24();
    *&v151[55] = v169;
    *&v151[71] = v170;
    *&v151[87] = v171;
    *&v151[103] = v172;
    *&v151[7] = v166;
    *&v151[23] = v167;
    v156 = 0;
    *&v151[39] = v168;
    v66 = type metadata accessor for AcceptControl(0);
    v153 = v66;
    v154 = sub_24AAB1F98(&qword_27EF85840, type metadata accessor for AcceptControl);
    v67 = __swift_allocate_boxed_opaque_existential_1Tm(v152);
    *v67 = 0;
    v67[1] = 0;
    v67[2] = 0;
    *(v67 + 24) = 2;
    v68 = v67 + v66[6];
    sub_24AAB2B24();
    v69 = (v67 + v66[7]);
    v70 = sub_24AAB4A34();
    v71 = sub_24AAB4A44();
    *v69 = v70;
    v69[1] = v71;
    v69[2] = 0;
    v69[3] = 0;
    *(v67 + v66[8]) = 0;
    *(v67 + v66[9]) = 0;
    *(v67 + v66[10]) = 1;
    sub_24AAB0CAC(v60, v62, v134);
    v72 = swift_allocObject();
    sub_24AAB0D18(v62, v72 + v63, v133);
    sub_24AAAD2EC(v152, sub_24AAB22E4, v72, v65);

    __swift_destroy_boxed_opaque_existential_1Tm(v152);
    v73 = v138;
    sub_24AAB48B4();
    sub_24AA169C4(v65, &qword_27EF87A40, &qword_24AABEE18);
    v74 = v137;
    sub_24AA1695C(v147, v137, &qword_27EF87A48, &qword_24AABEE20);
    v75 = v129;
    sub_24AA1695C(v73, v129, &qword_27EF87A48, &qword_24AABEE20);
    v76 = v130;
    sub_24AA1695C(v74, v130, &qword_27EF87A48, &qword_24AABEE20);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87AD0, &qword_24AABEEA0);
    v78 = v76 + *(v77 + 48);
    v79 = *&v151[80];
    *(v78 + 73) = *&v151[64];
    *(v78 + 89) = v79;
    *(v78 + 105) = *&v151[96];
    v80 = *&v151[16];
    *(v78 + 9) = *v151;
    *(v78 + 25) = v80;
    v81 = *&v151[48];
    *(v78 + 41) = *&v151[32];
    *v78 = 0x4034000000000000;
    *(v78 + 8) = 0;
    *(v78 + 120) = *&v151[111];
    *(v78 + 57) = v81;
    sub_24AA1695C(v75, v76 + *(v77 + 64), &qword_27EF87A48, &qword_24AABEE20);
    sub_24AA169C4(v75, &qword_27EF87A48, &qword_24AABEE20);
    sub_24AA169C4(v74, &qword_27EF87A48, &qword_24AABEE20);
    sub_24AA1695C(v76, v144, &qword_27EF87A38, &qword_24AABEE10);
    swift_storeEnumTagMultiPayload();
    sub_24AA16A68(&qword_27EF87AB8, &qword_27EF87A38, &qword_24AABEE10);
    sub_24AA16A68(&qword_27EF87AC0, &qword_27EF87A18, &qword_24AABEDF0);
    sub_24AAB42B4();
    sub_24AA169C4(v76, &qword_27EF87A38, &qword_24AABEE10);
    sub_24AA169C4(v73, &qword_27EF87A48, &qword_24AABEE20);
    v82 = v147;
    v83 = &qword_27EF87A48;
    v84 = &qword_24AABEE20;
  }

  else
  {
    LODWORD(v130) = *(a1 + 88);
    v85 = *(a1 + 96);
    LOBYTE(v166) = v130;
    *(&v166 + 1) = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87280, &qword_24AABDAC0);
    sub_24AAB4B64();
    v86 = v152[0];
    *(&v167 + 1) = &type metadata for MuteControl;
    *&v168 = sub_24AA44B08();
    v87 = swift_allocObject();
    *&v166 = v87;
    *(v87 + 16) = xmmword_24AAB7000;
    *(v87 + 32) = 2;
    strcpy((v87 + 40), "mic.slash.fill");
    *(v87 + 55) = -18;
    v88 = sub_24AAB4A44();
    v89 = sub_24AAB4A44();
    v90 = [objc_opt_self() systemRedColor];
    v91 = sub_24AAB49C4();
    *(v87 + 56) = 0;
    *(v87 + 64) = v88;
    *(v87 + 72) = v89;
    *(v87 + 80) = v91;
    *(v87 + 88) = 0;
    *(v87 + 89) = v86;
    v147 = type metadata accessor for CarPlayIncomingCallView;
    v126 = a1;
    v92 = v135;
    sub_24AAB0CAC(a1, v135, type metadata accessor for CarPlayIncomingCallView);
    v93 = (*(v133 + 80) + 16) & ~*(v133 + 80);
    v94 = swift_allocObject();
    v133 = type metadata accessor for CarPlayIncomingCallView;
    sub_24AAB0D18(v92, v94 + v93, type metadata accessor for CarPlayIncomingCallView);
    v95 = v127;
    sub_24AAAD2EC(&v166, sub_24AAB1CDC, v94, v127);

    __swift_destroy_boxed_opaque_existential_1Tm(&v166);
    LOBYTE(v166) = v130;
    *(&v166 + 1) = v85;
    sub_24AAB4B64();
    *(v95 + *(v128 + 52)) = v152[0];
    sub_24AA16A68(&qword_27EF87A70, &qword_27EF87A20, &qword_24AABEDF8);
    sub_24AAB48B4();
    sub_24AA169C4(v95, &qword_27EF87A20, &qword_24AABEDF8);
    sub_24AAB4D44();
    sub_24AAB3F24();
    *&v155[55] = v169;
    *&v155[71] = v170;
    *&v155[87] = v171;
    *&v155[103] = v172;
    *&v155[7] = v166;
    *&v155[23] = v167;
    v156 = 0;
    *&v155[39] = v168;
    v96 = type metadata accessor for DeclineControl(0);
    v153 = v96;
    v154 = sub_24AAB1F98(&qword_27EF87678, type metadata accessor for DeclineControl);
    v97 = __swift_allocate_boxed_opaque_existential_1Tm(v152);
    *v97 = xmmword_24AAB6FB0;
    *(v97 + 16) = 2;
    v98 = v97 + v96[5];
    sub_24AAB2B24();
    v99 = (v97 + v96[6]);
    *v99 = 0x6F642E656E6F6870;
    v99[1] = 0xEF6C6C69662E6E77;
    v100 = (v97 + v96[7]);
    v101 = sub_24AAB49F4();
    v102 = sub_24AAB4A44();
    *v100 = v101;
    v100[1] = v102;
    v100[2] = 0;
    v100[3] = 0;
    *(v97 + v96[8]) = 0;
    *(v97 + v96[9]) = 0;
    sub_24AAB0CAC(v126, v92, v147);
    v103 = swift_allocObject();
    sub_24AAB0D18(v92, v103 + v93, v133);
    v104 = v136;
    sub_24AAAD2EC(v152, sub_24AAB1D68, v103, v136);

    __swift_destroy_boxed_opaque_existential_1Tm(v152);
    sub_24AAB1DC0();
    v105 = v138;
    sub_24AAB48B4();
    sub_24AA169C4(v104, &qword_27EF87A40, &qword_24AABEE18);
    v106 = v134;
    v107 = v131;
    sub_24AA1695C(v134, v131, &qword_27EF87A28, &qword_24AABEE00);
    v108 = v137;
    sub_24AA1695C(v105, v137, &qword_27EF87A48, &qword_24AABEE20);
    v109 = v132;
    sub_24AA1695C(v107, v132, &qword_27EF87A28, &qword_24AABEE00);
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87AB0, &qword_24AABEE90);
    v111 = v109 + *(v110 + 48);
    v112 = *&v155[80];
    *(v111 + 73) = *&v155[64];
    *(v111 + 89) = v112;
    *(v111 + 105) = *&v155[96];
    v113 = *&v155[16];
    *(v111 + 9) = *v155;
    *(v111 + 25) = v113;
    v114 = *&v155[48];
    *(v111 + 41) = *&v155[32];
    *v111 = 0x4034000000000000;
    *(v111 + 8) = 0;
    *(v111 + 120) = *&v155[111];
    *(v111 + 57) = v114;
    sub_24AA1695C(v108, v109 + *(v110 + 64), &qword_27EF87A48, &qword_24AABEE20);
    sub_24AA169C4(v108, &qword_27EF87A48, &qword_24AABEE20);
    sub_24AA169C4(v107, &qword_27EF87A28, &qword_24AABEE00);
    sub_24AA1695C(v109, v144, &qword_27EF87A18, &qword_24AABEDF0);
    swift_storeEnumTagMultiPayload();
    sub_24AA16A68(&qword_27EF87AB8, &qword_27EF87A38, &qword_24AABEE10);
    sub_24AA16A68(&qword_27EF87AC0, &qword_27EF87A18, &qword_24AABEDF0);
    sub_24AAB42B4();
    sub_24AA169C4(v109, &qword_27EF87A18, &qword_24AABEDF0);
    sub_24AA169C4(v105, &qword_27EF87A48, &qword_24AABEE20);
    v82 = v106;
    v83 = &qword_27EF87A28;
    v84 = &qword_24AABEE00;
  }

  sub_24AA169C4(v82, v83, v84);
  v116 = v139;
  v115 = v140;
  sub_24AA1695C(v139, v140, &qword_27EF87A58, &qword_24AABEE38);
  v117 = v150;
  v118 = v143;
  sub_24AA1695C(v150, v143, &qword_27EF87A50, &unk_24AABEE28);
  v119 = v146;
  sub_24AA1695C(v115, v146, &qword_27EF87A58, &qword_24AABEE38);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87AC8, &qword_24AABEE98);
  v121 = v119 + *(v120 + 48);
  v122 = *&v157[80];
  *(v121 + 73) = *&v157[64];
  *(v121 + 89) = v122;
  *(v121 + 105) = *&v157[96];
  v123 = *&v157[16];
  *(v121 + 9) = *v157;
  *(v121 + 25) = v123;
  v124 = *&v157[48];
  *(v121 + 41) = *&v157[32];
  *v121 = 0x4024000000000000;
  *(v121 + 8) = 0;
  *(v121 + 120) = *&v157[111];
  *(v121 + 57) = v124;
  sub_24AA1695C(v118, v119 + *(v120 + 64), &qword_27EF87A50, &unk_24AABEE28);
  sub_24AA169C4(v117, &qword_27EF87A50, &unk_24AABEE28);
  sub_24AA169C4(v116, &qword_27EF87A58, &qword_24AABEE38);
  sub_24AA169C4(v118, &qword_27EF87A50, &unk_24AABEE28);
  return sub_24AA169C4(v115, &qword_27EF87A58, &qword_24AABEE38);
}

uint64_t sub_24AAAF934()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  swift_getObjectType();
  sub_24AAB38B4();
  v4 = *(v3 + 8);
  sub_24AAB3574();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  sub_24AAB3474();
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_24AAB33E4();
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_24AAAFA1C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_getObjectType();
  v3 = sub_24AAB38D4();
  *v4 = !*v4;
  return v3(&v6, 0);
}

uint64_t sub_24AAAFA90(uint64_t *a1)
{
  v2 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  v4 = *a1;
  v3 = a1[1];
  swift_getObjectType();
  return sub_24AAB3374();
}

uint64_t sub_24AAAFB00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v69 = v61 - v3;
  v71 = type metadata accessor for CallSubtitle(0);
  v4 = *(*(v71 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v71);
  v7 = (v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v61 - v9;
  MEMORY[0x28223BE20](v8);
  v70 = v61 - v11;
  v12 = type metadata accessor for CallStatusViewModel(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (v61 - v17);
  v19 = *v0;
  v20 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  result = sub_24AAB39F4();
  if (result == 5)
  {
    return result;
  }

  result = sub_24AAB39F4();
  if (result == 6)
  {
    return result;
  }

  v66 = v12;
  v67 = v16;
  v23 = sub_24AAB39F4();
  v24 = *(v0 + 72);
  v68 = v0;
  v25 = *(v0 + 80);
  LODWORD(v72[0]) = v24;
  v72[1] = v25;
  v76 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A10, &qword_24AABEDE8);
  sub_24AAB4B74();
  v72[3] = ObjectType;
  v26 = *(v20 + 8);
  v72[4] = v26;
  v72[0] = v19;
  v76 = v24;
  v77 = v25;
  swift_unknownObjectRetain();
  sub_24AAB4B64();
  v27 = v73;
  v28 = v10;
  if (v73 == 4 || v73 == 1)
  {
    sub_24AAB3504();
    v29 = v74;
    if (v74)
    {
      v30 = v75;
      v31 = v73;

      if (v30)
      {
        goto LABEL_9;
      }
    }
  }

  v31 = sub_24AA87578(v72, v27, 0, ObjectType, v26);
  v29 = v32;
LABEL_9:
  v33 = sub_24AA86BC8(v72, v27, 1, ObjectType);
  v34 = v66;
  v65 = v29;
  v64 = v31;
  v63 = v33;
  v62 = v35;
  if (v27 > 2)
  {
    if ((v27 - 5) < 2)
    {
      sub_24AAB35B4();
      v37 = v79;
      if (v79)
      {
        v38 = v78;
      }

      else
      {
        v48 = sub_24AAB34F4();
        if (v49)
        {
          v38 = v48;
        }

        else
        {
          v38 = 0;
        }

        if (v49)
        {
          v37 = v49;
        }

        else
        {
          v37 = 0xE000000000000000;
        }
      }

      v46 = v70;
      *v7 = v38;
      v7[1] = v37;
      swift_storeEnumTagMultiPayload();
      sub_24AAB0D18(v7, v28, type metadata accessor for CallSubtitle);
      goto LABEL_33;
    }

    if (v27 == 3)
    {
      *v28 = sub_24AAB34F4();
      *(v28 + 8) = v47;
    }

    else if (v27 == 4)
    {
      sub_24AA16768(v72, v28);
      *(v28 + 40) = 4;
      *(v28 + 48) = sub_24AAB34F4();
      *(v28 + 56) = v36;
      *(v28 + 64) = 1;
    }
  }

  else if (v27 == 1)
  {
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85600, &qword_24AAB72B0) + 48);
    *v28 = sub_24AAB34F4();
    *(v28 + 8) = v40;
    v41 = v69;
    v61[1] = v26;
    sub_24AAB34E4();
    v42 = sub_24AAB2C54();
    v43 = *(v42 - 8);
    v44 = *(v43 + 48);
    if (v44(v41, 1, v42) == 1)
    {
      sub_24AAB2C34();
      v45 = v44(v41, 1, v42);
      v46 = v70;
      if (v45 != 1)
      {
        sub_24AA169C4(v41, &qword_27EF855E8, &unk_24AABCB40);
      }
    }

    else
    {
      (*(v43 + 32))(v28 + v39, v41, v42);
      v46 = v70;
    }

    swift_storeEnumTagMultiPayload();
    goto LABEL_33;
  }

  swift_storeEnumTagMultiPayload();
  v46 = v70;
LABEL_33:
  sub_24AAB0D18(v28, v46, type metadata accessor for CallSubtitle);
  v50 = sub_24AAB3564();
  if (v50 && (v51 = v50, v52 = [v50 shouldHideContactWithLockState_], v51, v52))
  {
    v53 = MEMORY[0x277D84F90];
  }

  else
  {
    v53 = sub_24AA86F34(v72, ObjectType);
  }

  v54 = sub_24AAB3554();
  v56 = v55;
  v57 = v65;
  *v18 = v64;
  v18[1] = v57;
  v58 = v62;
  v18[2] = v63;
  v18[3] = v58;
  sub_24AAB0D18(v46, v18 + v34[6], type metadata accessor for CallSubtitle);
  *(v18 + v34[7]) = v53;
  *(v18 + v34[8]) = 3;
  v59 = (v18 + v34[9]);
  *v59 = v54;
  v59[1] = v56;
  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  v60 = *(type metadata accessor for CarPlayIncomingCallView() + 36);
  sub_24AAB0CAC(v18, v67, type metadata accessor for CallStatusViewModel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87900, &qword_24AABEBE8);
  sub_24AAB4B74();
  return sub_24AA1B69C(v18);
}

uint64_t sub_24AAB01CC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  swift_getObjectType();
  sub_24AAB38E4();
  v6 = *(a2 + 88);
  v7 = a2[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87280, &qword_24AABDAC0);
  return sub_24AAB4B74();
}

uint64_t sub_24AAB024C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v67 - v4;
  v69 = type metadata accessor for CallSubtitle(0);
  v6 = *(*(v69 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v69);
  v9 = (&v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v67 - v11;
  MEMORY[0x28223BE20](v10);
  v73 = &v67 - v13;
  v14 = type metadata accessor for CallStatusViewModel(0);
  v15 = *(*(v14 - 1) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v74 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = (&v67 - v18);
  v20 = *a1;
  v21 = a1[1];
  v75 = a1;
  ObjectType = swift_getObjectType();
  v82 = ObjectType;
  v23 = *(v21 + 8);
  v83 = v23;
  v79 = v20;
  swift_unknownObjectRetain();
  v24 = sub_24AAB39F4();
  v25 = v24;
  if (v24 == 4 || v24 == 1)
  {
    sub_24AAB3504();
    v26 = v87;
    if (v87)
    {
      v27 = v88;
      v76 = v86;

      if (v27)
      {
        goto LABEL_7;
      }
    }
  }

  v76 = sub_24AA87578(&v79, v25, 0, ObjectType, v23);
  v26 = v28;
LABEL_7:
  v29 = sub_24AA86BC8(&v79, v25, 1, ObjectType);
  v72 = v26;
  v71 = v29;
  v70 = v30;
  if (v25 > 2)
  {
    if ((v25 - 5) >= 2)
    {
      if (v25 == 3)
      {
        *v12 = sub_24AAB34F4();
        *(v12 + 1) = v40;
      }

      else if (v25 == 4)
      {
        sub_24AA16768(&v79, v12);
        *(v12 + 10) = 4;
        *(v12 + 6) = sub_24AAB34F4();
        *(v12 + 7) = v31;
        v12[64] = 1;
      }

      goto LABEL_21;
    }

    sub_24AAB35B4();
    v32 = v90;
    if (v90)
    {
      v33 = v89;
    }

    else
    {
      v41 = sub_24AAB34F4();
      if (v42)
      {
        v33 = v41;
      }

      else
      {
        v33 = 0;
      }

      if (v42)
      {
        v32 = v42;
      }

      else
      {
        v32 = 0xE000000000000000;
      }
    }

    v39 = v75;
    *v9 = v33;
    v9[1] = v32;
    swift_storeEnumTagMultiPayload();
    sub_24AAB0D18(v9, v12, type metadata accessor for CallSubtitle);
  }

  else
  {
    if (v25 != 1)
    {
LABEL_21:
      swift_storeEnumTagMultiPayload();
      v39 = v75;
      goto LABEL_31;
    }

    v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85600, &qword_24AAB72B0) + 48);
    *v12 = sub_24AAB34F4();
    *(v12 + 1) = v34;
    sub_24AAB34E4();
    v35 = sub_24AAB2C54();
    v36 = *(v35 - 8);
    v37 = *(v36 + 48);
    if (v37(v5, 1, v35) == 1)
    {
      sub_24AAB2C34();
      v38 = v37(v5, 1, v35);
      v39 = v75;
      if (v38 != 1)
      {
        sub_24AA169C4(v5, &qword_27EF855E8, &unk_24AABCB40);
      }
    }

    else
    {
      (*(v36 + 32))(&v12[v68], v5, v35);
      v39 = v75;
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_31:
  v43 = v73;
  sub_24AAB0D18(v12, v73, type metadata accessor for CallSubtitle);
  v44 = sub_24AAB3564();
  if (v44 && (v45 = v44, v46 = [v44 shouldHideContactWithLockState_], v45, v46))
  {
    v47 = MEMORY[0x277D84F90];
  }

  else
  {
    v47 = sub_24AA86F34(&v79, ObjectType);
  }

  v48 = sub_24AAB3554();
  v50 = v49;
  v51 = v72;
  *v19 = v76;
  v19[1] = v51;
  v52 = v70;
  v19[2] = v71;
  v19[3] = v52;
  sub_24AAB0D18(v43, v19 + v14[6], type metadata accessor for CallSubtitle);
  *(v19 + v14[7]) = v47;
  *(v19 + v14[8]) = 3;
  v53 = (v19 + v14[9]);
  *v53 = v48;
  v53[1] = v50;
  __swift_destroy_boxed_opaque_existential_1Tm(&v79);
  v54 = type metadata accessor for CarPlayIncomingCallView();
  v55 = *(v54 + 36);
  sub_24AAB0CAC(v19, v74, type metadata accessor for CallStatusViewModel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87900, &qword_24AABEBE8);
  sub_24AAB4B74();
  sub_24AA1B69C(v19);
  v56 = v39 + *(v54 + 40);
  v57 = *(v56 + 8);
  v58 = *(v56 + 24);
  v59 = *(v56 + 32);
  v60 = *(v56 + 40);
  v61 = *(v56 + 16);
  v62 = *(v56 + 48);
  v79 = *v56;
  v80 = v57;
  v81 = v61;
  v82 = v58;
  v83 = v59;
  v84 = v60;
  v85 = v62;
  v77 = xmmword_24AAB6FB0;
  v78 = 2;
  sub_24AAB1B84(v79, v57, v61);

  sub_24AAB1B84(v59, v60, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A08, &unk_24AABEDD8);
  sub_24AAB3C74();
  v63 = v83;
  v64 = v84;
  v65 = v85;
  sub_24AAB1B98(v79, v80, v81);

  return sub_24AAB1B98(v63, v64, v65);
}

uint64_t sub_24AAB098C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v3 = sub_24AAB4304();
    sub_24AAB3D04();
    v4 = v21;
    v5 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
    v9 = sub_24AAB4D44();
    v11 = v10;
    v12 = sub_24AAB44D4();
    result = sub_24AAB3C54();
    *(&v14 + 1) = v13;
    *(&v16 + 1) = v15;
    v17 = v12;
    v18 = 0x10000000000;
    v19 = 0x3FE999999999999ALL;
    v20 = v3;
  }

  else
  {
    v4 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v19 = 0;
    v17 = 0;
    v20 = 0;
    v18 = 0;
    v5 = 0;
    v14 = 0uLL;
    v16 = 0uLL;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v18 | v20;
  *(a2 + 48) = v9;
  *(a2 + 56) = v11;
  *(a2 + 64) = v19;
  *(a2 + 72) = v17;
  *(a2 + 80) = v14;
  *(a2 + 96) = v16;
  *(a2 + 112) = 0;
  return result;
}

uint64_t sub_24AAB0ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_24AAB0B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_24AAB0BB4()
{
  swift_getWitnessTable();
  sub_24AAB4284();
  __break(1u);
}

unint64_t sub_24AAB0BF4()
{
  result = qword_27EF878E0;
  if (!qword_27EF878E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87898, &qword_24AABEB98);
    sub_24AA16A68(&qword_27EF878E8, &qword_27EF878F0, &qword_24AABEBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF878E0);
  }

  return result;
}

uint64_t sub_24AAB0CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AAB0D18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AAB0D80()
{
  v1 = *(type metadata accessor for CarPlayIncomingCallView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 64);
  return (*(v2 + 56))();
}

unint64_t sub_24AAB0DE4()
{
  result = qword_27EF87908;
  if (!qword_27EF87908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF878A8, &qword_24AABEBA8);
    sub_24AAB0E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87908);
  }

  return result;
}

unint64_t sub_24AAB0E70()
{
  result = qword_27EF87910;
  if (!qword_27EF87910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF878A0, &qword_24AABEBA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87898, &qword_24AABEB98);
    sub_24AAB4384();
    sub_24AAB0BF4();
    sub_24AAB1F98(&qword_27EF878F8, MEMORY[0x277CE0638]);
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF87890, &qword_27EF87860, &qword_24AABEB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87910);
  }

  return result;
}

uint64_t sub_24AAB0FB8()
{
  v1 = *(type metadata accessor for CarPlayIncomingCallView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_24AAAFB00();
}

uint64_t sub_24AAB1014(uint64_t a1)
{
  v3 = *(type metadata accessor for CarPlayIncomingCallView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24AAB01CC(a1, v4);
}

uint64_t sub_24AAB10CC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87900, &qword_24AABEBE8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_24AAB119C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87900, &qword_24AABEBE8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24AAB124C()
{
  sub_24AAB13C0(319, &qword_27EF87930);
  if (v0 <= 0x3F)
  {
    sub_24AAB13C0(319, &qword_27EF87938);
    if (v1 <= 0x3F)
    {
      sub_24AA55CA0();
      if (v2 <= 0x3F)
      {
        sub_24AAB141C(319, &qword_27EF87940, type metadata accessor for TUCallStatus);
        if (v3 <= 0x3F)
        {
          sub_24AA91B0C();
          if (v4 <= 0x3F)
          {
            sub_24AAB141C(319, &qword_27EF87948, type metadata accessor for CallStatusViewModel);
            if (v5 <= 0x3F)
            {
              sub_24AAB1470();
              if (v6 <= 0x3F)
              {
                sub_24AAA88B4();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24AAB13C0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_24AAB141C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24AAB4B94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24AAB1470()
{
  if (!qword_27EF87950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87958, &unk_24AABEC88);
    sub_24AAB14E0();
    v0 = sub_24AAB3CB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF87950);
    }
  }
}

unint64_t sub_24AAB14E0()
{
  result = qword_27EF87960;
  if (!qword_27EF87960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87958, &unk_24AABEC88);
    sub_24AA165C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87960);
  }

  return result;
}

unint64_t sub_24AAB1568()
{
  result = qword_27EF87968;
  if (!qword_27EF87968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87918, &qword_24AABEBF0);
    sub_24AA16A68(qword_27EF87970, &qword_27EF878D0, &qword_24AABEBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87968);
  }

  return result;
}

uint64_t sub_24AAB1620()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24AAB165C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24AAB16A4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_24AAB1718(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(*(a5 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v10 = [objc_opt_self() buttonWithType_];
  sub_24AAB3EB4();
  a1();
  v11 = sub_24AAB3EA4();
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setUserInteractionEnabled_];
  v12 = v10;
  [v12 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87048, &qword_24AABD020);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24AABEB50;
  v14 = [v11 topAnchor];
  v15 = [v12 topAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v13 + 32) = v16;
  v17 = [v11 bottomAnchor];
  v18 = [v12 bottomAnchor];

  v19 = [v17 constraintEqualToAnchor_];
  *(v13 + 40) = v19;
  v20 = [v11 leadingAnchor];
  v21 = [v12 leadingAnchor];

  v22 = [v20 constraintEqualToAnchor_];
  *(v13 + 48) = v22;
  v23 = [v11 trailingAnchor];

  v24 = [v12 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v13 + 56) = v25;
  sub_24AA442A0(0, &qword_27EF879F8, 0x277CCAAD0);
  v26 = sub_24AAB5014();

  [v12 addConstraints_];

  sub_24AA442A0(0, &qword_27EF87A00, 0x277D750C8);
  v27 = swift_allocObject();
  v27[2] = a5;
  v27[3] = a6;
  v27[4] = a1;
  v27[5] = a2;
  v27[6] = a3;
  v27[7] = a4;

  v28 = sub_24AAB5224();
  [v12 addAction:v28 forControlEvents:64];

  return v12;
}

uint64_t sub_24AAB1B1C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AAB1B5C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_24AAB1B84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24AA15F10(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_24AAB1B98(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24AA15ED0(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_24AAB1BB4()
{
  result = qword_27EF87A60;
  if (!qword_27EF87A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86EE8, &qword_24AABC7E0);
    sub_24AAB1F98(&qword_27EF87A68, type metadata accessor for CallStatusView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87A60);
  }

  return result;
}

uint64_t sub_24AAB1C70()
{
  sub_24AA15ED0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  if (*(v0 + 80))
  {
    v4 = *(v0 + 72);

    v5 = *(v0 + 80);
  }

  return MEMORY[0x2821FE8E8](v0, 90, 7);
}

uint64_t sub_24AAB1CF4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CarPlayIncomingCallView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_24AAB1DC0()
{
  result = qword_27EF87A78;
  if (!qword_27EF87A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87A40, &qword_24AABEE18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87A80, &qword_24AABEE78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87958, &unk_24AABEC88);
    sub_24AAB1EE0();
    sub_24AAB14E0();
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF87AA0, &qword_27EF87AA8, &qword_24AABEE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87A78);
  }

  return result;
}

unint64_t sub_24AAB1EE0()
{
  result = qword_27EF87A88;
  if (!qword_27EF87A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87A80, &qword_24AABEE78);
    sub_24AA16A68(&qword_27EF87A90, &qword_27EF87A98, &qword_24AABEE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87A88);
  }

  return result;
}

uint64_t sub_24AAB1F98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for CarPlayIncomingCallView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v39 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = *(v0 + v3);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3 + 16));
  v6 = *(v0 + v3 + 64);

  v7 = *(v0 + v3 + 80);

  v8 = *(v0 + v3 + 96);

  v9 = v0 + v3 + v1[9];
  v10 = *(v9 + 8);

  v11 = *(v9 + 24);

  v12 = type metadata accessor for CallStatusViewModel(0);
  v13 = (v9 + v12[6]);
  type metadata accessor for CallSubtitle(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      v24 = v13[7];
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v15 = v13[1];

        v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85600, &qword_24AAB72B0) + 48);
        v17 = sub_24AAB2C54();
        (*(*(v17 - 8) + 8))(v13 + v16, v17);
      }

      goto LABEL_14;
    }

LABEL_11:
    v23 = v13[1];
LABEL_13:

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
  {
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v18 = v13[1];

    v38 = v0;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF870B0, &unk_24AABCB50) + 48);
    v20 = sub_24AAB2C54();
    v21 = *(v20 - 8);
    v37 = v19;
    v22 = v13 + v19;
    v0 = v38;
    if (!(*(v21 + 48))(v22, 1, v20))
    {
      (*(v21 + 8))(v13 + v37, v20);
    }
  }

LABEL_14:
  v25 = *(v9 + v12[7]);

  v26 = *(v9 + v12[9] + 8);

  v27 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87900, &qword_24AABEBE8) + 28));

  v28 = v4 + v1[10];
  v29 = *(v28 + 16);
  if (v29 != 255)
  {
    sub_24AA15ED0(*v28, *(v28 + 8), v29);
  }

  v30 = *(v28 + 24);

  v31 = *(v28 + 48);
  if (v31 != 255)
  {
    sub_24AA15ED0(*(v28 + 32), *(v28 + 40), v31);
  }

  v32 = (v4 + v1[11]);
  v33 = *v32;
  v34 = v32[1];
  v35 = *(v32 + 16);
  sub_24AA15934();

  return MEMORY[0x2821FE8E8](v0, v3 + v39, v2 | 7);
}

uint64_t sub_24AAB22E4()
{
  v1 = *(type metadata accessor for CarPlayIncomingCallView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_24AAAF934();
}

uint64_t sub_24AAB2340()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AAB2384()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_27EF91948 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_27EF9193C > a2)
  {
    return 1;
  }

  if (dword_27EF9193C < a2)
  {
    return 0;
  }

  return dword_27EF91940 >= a3;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27EF91950 == -1)
  {
    if (qword_27EF91958)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27EF91958)
    {
      goto LABEL_3;
    }
  }

  if (qword_27EF91948 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27EF9193C > a3)
      {
        goto LABEL_11;
      }

      if (dword_27EF9193C >= a3)
      {
        result = dword_27EF91940 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27EF91958;
  if (qword_27EF91958)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27EF91958 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x24C225F30](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27EF9193C, &dword_27EF91940);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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

  v25 = *MEMORY[0x277D85DE8];
  return result;
}