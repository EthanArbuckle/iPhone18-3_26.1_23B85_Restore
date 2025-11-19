id sub_25167C1A8()
{
  _s8SentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F453578 = result;
  return result;
}

id static NSBundle.healthDomainsUI.getter()
{
  if (qword_27F453570 != -1)
  {
    swift_once();
  }

  v1 = qword_27F453578;

  return v1;
}

void *DomainUI.__allocating_init(domain:primaryColor:backgroundColor:reportHeroImage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *DomainUI.init(domain:primaryColor:backgroundColor:reportHeroImage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t DomainUI.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DomainUI.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t ConstellationUI.constellation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25167D188();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id ConstellationUI.primaryColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConstellationUI() + 20));

  return v1;
}

uint64_t type metadata accessor for ConstellationUI()
{
  result = qword_27F453580;
  if (!qword_27F453580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ConstellationUI.backgroundColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConstellationUI() + 24));

  return v1;
}

id ConstellationUI.reportHeroImage.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConstellationUI() + 28));

  return v1;
}

int *ConstellationUI.init(constellation:primaryColor:backgroundColor:reportHeroImage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25167D188();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for ConstellationUI();
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t sub_25167C5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25167D188();
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

uint64_t sub_25167C6AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25167D188();
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

uint64_t sub_25167C764()
{
  result = sub_25167D188();
  if (v1 <= 0x3F)
  {
    result = sub_25167C820(319, &qword_27F453590, 0x277D75348);
    if (v2 <= 0x3F)
    {
      result = sub_25167C820(319, &qword_27F453598, 0x277D755B8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25167C820(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t BuiltinDomainUIRegistry.__allocating_init(underlyingRegistry:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_25167C908(a1, v2 + 16);
  return v2;
}

uint64_t sub_25167C908(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t BuiltinDomainUIRegistry.domain(for:)()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_25167D1A8();

  return 0;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t BuiltinDomainUIRegistry.measure(for:)()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_25167D1B8();
  sub_25167CC0C(v3, &qword_27F4535A0, sub_25167CA38);
  return 0;
}

unint64_t sub_25167CA38()
{
  result = qword_27F4535A8;
  if (!qword_27F4535A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F4535A8);
  }

  return result;
}

uint64_t BuiltinDomainUIRegistry.constellation(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D10C10];
  sub_25167CBB8(0, &qword_27F4535B0, MEMORY[0x277D10C10]);
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v11 - v6;
  v8 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_25167D198();
  sub_25167CC0C(v7, &qword_27F4535B0, v3);
  v9 = type metadata accessor for ConstellationUI();
  return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
}

void sub_25167CBB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25167D1C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25167CC0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_25167CBB8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t BuiltinDomainUIRegistry.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_25167CD0C()
{
  v1 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  sub_25167D1A8();

  return 0;
}

uint64_t sub_25167CD64()
{
  v1 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  sub_25167D1B8();
  sub_25167CC0C(v3, &qword_27F4535A0, sub_25167CA38);
  return 0;
}

uint64_t sub_25167CDE8@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D10C10];
  sub_25167CBB8(0, &qword_27F4535B0, MEMORY[0x277D10C10]);
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v11 - v6;
  v8 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), *(*v1 + 40));
  sub_25167D198();
  sub_25167CC0C(v7, &qword_27F4535B0, v3);
  v9 = type metadata accessor for ConstellationUI();
  return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
}

uint64_t sub_25167CF64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *MeasureUI.__allocating_init(measure:primaryColor:backgroundColor:reportHeroImage:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_25167C908(a1, (v8 + 2));
  v8[7] = a2;
  v8[8] = a3;
  v8[9] = a4;
  return v8;
}

void *MeasureUI.init(measure:primaryColor:backgroundColor:reportHeroImage:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25167C908(a1, (v4 + 2));
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
  return v4;
}

uint64_t MeasureUI.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t MeasureUI.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}