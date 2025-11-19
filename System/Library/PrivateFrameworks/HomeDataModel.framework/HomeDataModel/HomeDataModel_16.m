uint64_t RGBColor.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644F08, &qword_1D1E78298);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18384B4();
  sub_1D1E692FC();
  if (!v2)
  {
    v16 = 0;
    sub_1D183855C();
    sub_1D1E68D7C();
    v11 = v17;
    v16 = 1;
    sub_1D1E68D7C();
    v13 = v17;
    v16 = 2;
    sub_1D1E68D7C();
    (*(v6 + 8))(v9, v5);
    v14 = v17;
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D183840C()
{
  result = qword_1EC644EE0;
  if (!qword_1EC644EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644EE0);
  }

  return result;
}

unint64_t sub_1D1838460()
{
  result = qword_1EC644EE8;
  if (!qword_1EC644EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644EE8);
  }

  return result;
}

unint64_t sub_1D18384B4()
{
  result = qword_1EC644EF8;
  if (!qword_1EC644EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644EF8);
  }

  return result;
}

unint64_t sub_1D1838508()
{
  result = qword_1EC644F00;
  if (!qword_1EC644F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F00);
  }

  return result;
}

unint64_t sub_1D183855C()
{
  result = qword_1EC644F10;
  if (!qword_1EC644F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F10);
  }

  return result;
}

__n128 sub_1D18385E0@<Q0>(uint64_t *a1@<X8>)
{
  v6 = *v1;
  v3 = v1[1].n128_u64[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643480, &qword_1D1E71900);
  v4 = swift_allocObject();
  result = v6;
  *(v4 + 16) = xmmword_1D1E6F900;
  *(v4 + 32) = v6;
  *(v4 + 48) = v3;
  *a1 = v4;
  return result;
}

uint64_t ColorPickerFavorite.color.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 24);
  *(a1 + 24) = v5;
  return sub_1D178062C(v2, v3, v4, v5);
}

__n128 ColorPickerFavorite.color.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_1D1780640(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  result = v5;
  *v1 = v5;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t ColorPickerFavorite.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ColorPickerFavorite() + 24);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ColorPickerFavorite()
{
  result = qword_1EE07C6C8;
  if (!qword_1EE07C6C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ColorPickerFavorite.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ColorPickerFavorite() + 24);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

__n128 ColorPickerFavorite.init(color:brightness:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>, double a3@<D0>)
{
  v9 = *a1;
  v5 = a1[1].n128_u64[0];
  v6 = a1[1].n128_u8[8];
  v7 = a2 + *(type metadata accessor for ColorPickerFavorite() + 24);
  sub_1D1E66A6C();
  result = v9;
  *a2 = v9;
  a2[1].n128_u64[0] = v5;
  a2[1].n128_u8[8] = v6;
  a2[2].n128_f64[0] = a3;
  return result;
}

uint64_t ColorPickerFavorite.description.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EBA530);
  v5 = *v0;
  v6 = *(v0 + 2);
  v7 = *(v0 + 24);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](3826208, 0xE300000000000000);
  v1 = *(v0 + 4);
  sub_1D1E6811C();
  MEMORY[0x1D3890F70](979659040, 0xE400000000000000);
  v2 = *(type metadata accessor for ColorPickerFavorite() + 24);
  sub_1D1E66A7C();
  sub_1D1839808(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v3 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v3);

  return 0;
}

uint64_t sub_1D1838A80()
{
  v1 = 0x656E746867697262;
  if (*v0 != 1)
  {
    v1 = 25705;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

uint64_t sub_1D1838AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D183A3C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1838AF8(uint64_t a1)
{
  v2 = sub_1D1839534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1838B34(uint64_t a1)
{
  v2 = sub_1D1839534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ColorPickerFavorite.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644F18, &qword_1D1E782A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1839534();
  sub_1D1E6930C();
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v18 = *v3;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v17[15] = 0;
  sub_1D178062C(v18, v11, v12, v13);
  sub_1D1836FB0();
  sub_1D1E68F1C();
  sub_1D1780640(v18, v19, v20, v21);
  if (!v2)
  {
    v14 = *(v3 + 32);
    LOBYTE(v18) = 1;
    sub_1D1E68EEC();
    v15 = *(type metadata accessor for ColorPickerFavorite() + 24);
    LOBYTE(v18) = 2;
    sub_1D1E66A7C();
    sub_1D1839808(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ColorPickerFavorite.hash(into:)(uint64_t a1)
{
  v5 = *v1;
  v6 = *(v1 + 2);
  v7 = *(v1 + 24);
  LightbulbColor.hash(into:)(a1);
  v2 = *(v1 + 4);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1D3892890](*&v2);
  v3 = *(type metadata accessor for ColorPickerFavorite() + 24);
  sub_1D1E66A7C();
  sub_1D1839808(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  return sub_1D1E676EC();
}

uint64_t ColorPickerFavorite.hashValue.getter()
{
  sub_1D1E6920C();
  v4 = *v0;
  v5 = *(v0 + 2);
  v6 = *(v0 + 24);
  LightbulbColor.hash(into:)(v7);
  v1 = *(v0 + 4);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1D3892890](*&v1);
  v2 = *(type metadata accessor for ColorPickerFavorite() + 24);
  sub_1D1E66A7C();
  sub_1D1839808(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t ColorPickerFavorite.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_1D1E66A7C();
  v28 = *(v30 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644F28, &qword_1D1E782A8);
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v10 = &v25 - v9;
  v11 = type metadata accessor for ColorPickerFavorite();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v13 + 32);
  sub_1D1E66A6C();
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1839534();
  sub_1D1E692FC();
  if (v2)
  {
    v19 = v30;
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v28 + 8))(&v15[v29], v19);
  }

  else
  {
    v17 = v7;
    v34 = 0;
    sub_1D183840C();
    v18 = v27;
    sub_1D1E68D7C();
    v20 = v32;
    v21 = v33;
    *v15 = v31;
    *(v15 + 2) = v20;
    v15[24] = v21;
    LOBYTE(v31) = 1;
    sub_1D1E68D4C();
    v22 = v30;
    *(v15 + 4) = v23;
    LOBYTE(v31) = 2;
    sub_1D1839808(&qword_1EC644B20, MEMORY[0x1E69695A8]);
    sub_1D1E68D7C();
    (*(v17 + 8))(v10, v18);
    (*(v28 + 40))(&v15[v29], v6, v22);
    sub_1D1839588(v15, v26);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D18395EC(v15);
  }
}

uint64_t sub_1D18392E4(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  v7 = *v2;
  v8 = *(v2 + 2);
  v9 = *(v2 + 24);
  LightbulbColor.hash(into:)(v10);
  v4 = *(v2 + 4);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1D3892890](*&v4);
  v5 = *(a2 + 24);
  sub_1D1E66A7C();
  sub_1D1839808(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t _s13HomeDataModel19ColorPickerFavoriteV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v17[0] = v4;
  v17[1] = v5;
  v17[2] = v6;
  v18 = v7;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v15[0] = *a2;
  v8 = v15[0];
  v15[1] = v9;
  v15[2] = v10;
  v16 = v11;
  sub_1D178062C(v4, v5, v6, v7);
  sub_1D178062C(v15[0], v9, v10, v11);
  v14 = static LightbulbColor.== infix(_:_:)(v17, v15);
  sub_1D1780640(v8, v9, v10, v11);
  sub_1D1780640(v4, v5, v6, v7);
  if ((v14 & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v12 = *(type metadata accessor for ColorPickerFavorite() + 24);

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

unint64_t sub_1D1839534()
{
  result = qword_1EC644F20;
  if (!qword_1EC644F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F20);
  }

  return result;
}

uint64_t sub_1D1839588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorPickerFavorite();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D18395EC(uint64_t a1)
{
  v2 = type metadata accessor for ColorPickerFavorite();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D183964C()
{
  result = qword_1EC644F30;
  if (!qword_1EC644F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F30);
  }

  return result;
}

unint64_t sub_1D18396A4()
{
  result = qword_1EC644F38;
  if (!qword_1EC644F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F38);
  }

  return result;
}

unint64_t sub_1D18396FC()
{
  result = qword_1EC644F40;
  if (!qword_1EC644F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644F48, &qword_1D1E78420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F40);
  }

  return result;
}

uint64_t sub_1D1839808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D183985C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1D18398A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D1839934()
{
  result = sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D1839A2C()
{
  result = qword_1EC644F58;
  if (!qword_1EC644F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F58);
  }

  return result;
}

unint64_t sub_1D1839A84()
{
  result = qword_1EC644F60;
  if (!qword_1EC644F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F60);
  }

  return result;
}

unint64_t sub_1D1839ADC()
{
  result = qword_1EC644F68;
  if (!qword_1EC644F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F68);
  }

  return result;
}

unint64_t sub_1D1839B34()
{
  result = qword_1EC644F70;
  if (!qword_1EC644F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F70);
  }

  return result;
}

unint64_t sub_1D1839B8C()
{
  result = qword_1EC644F78;
  if (!qword_1EC644F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F78);
  }

  return result;
}

unint64_t sub_1D1839BE4()
{
  result = qword_1EC644F80;
  if (!qword_1EC644F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F80);
  }

  return result;
}

unint64_t sub_1D1839C3C()
{
  result = qword_1EC644F88;
  if (!qword_1EC644F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F88);
  }

  return result;
}

unint64_t sub_1D1839C94()
{
  result = qword_1EC644F90;
  if (!qword_1EC644F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F90);
  }

  return result;
}

unint64_t sub_1D1839CEC()
{
  result = qword_1EC644F98;
  if (!qword_1EC644F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F98);
  }

  return result;
}

unint64_t sub_1D1839D44()
{
  result = qword_1EC644FA0;
  if (!qword_1EC644FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FA0);
  }

  return result;
}

unint64_t sub_1D1839D9C()
{
  result = qword_1EC644FA8;
  if (!qword_1EC644FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FA8);
  }

  return result;
}

unint64_t sub_1D1839DF4()
{
  result = qword_1EC644FB0;
  if (!qword_1EC644FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FB0);
  }

  return result;
}

unint64_t sub_1D1839E4C()
{
  result = qword_1EC644FB8;
  if (!qword_1EC644FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FB8);
  }

  return result;
}

unint64_t sub_1D1839EA4()
{
  result = qword_1EC644FC0;
  if (!qword_1EC644FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FC0);
  }

  return result;
}

unint64_t sub_1D1839EFC()
{
  result = qword_1EC644FC8;
  if (!qword_1EC644FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FC8);
  }

  return result;
}

unint64_t sub_1D1839F54()
{
  result = qword_1EC644FD0;
  if (!qword_1EC644FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FD0);
  }

  return result;
}

unint64_t sub_1D1839FAC()
{
  result = qword_1EC644FD8;
  if (!qword_1EC644FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FD8);
  }

  return result;
}

unint64_t sub_1D183A004()
{
  result = qword_1EC644FE0;
  if (!qword_1EC644FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FE0);
  }

  return result;
}

unint64_t sub_1D183A05C()
{
  result = qword_1EC644FE8;
  if (!qword_1EC644FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FE8);
  }

  return result;
}

unint64_t sub_1D183A0B4()
{
  result = qword_1EC644FF0;
  if (!qword_1EC644FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FF0);
  }

  return result;
}

unint64_t sub_1D183A10C()
{
  result = qword_1EC644FF8;
  if (!qword_1EC644FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FF8);
  }

  return result;
}

uint64_t sub_1D183A160(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 4343634 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 5657416 && a2 == 0xE300000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74617265706D6554 && a2 == 0xEB00000000657275 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6576697470616461 && a2 == 0xED0000746867694CLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D183A2D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 114 && a2 == 0xE100000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 103 && a2 == 0xE100000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 98 && a2 == 0xE100000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D183A3C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E746867697262 && a2 == 0xEA00000000007373 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

__n128 static LightsSummarizer.lightsSummary(from:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D183A9B8(a1, v5);
  v3 = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_1D183A528(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = 0xD00000000000001BLL;
    v3 = 0x80000001D1EBA5A0;

    return static String.hfLocalized(_:)(v4, v3);
  }

  if (a2 == a1)
  {
    v3 = 0x80000001D1EBA580;
    v4 = 0xD00000000000001ALL;

    return static String.hfLocalized(_:)(v4, v3);
  }

  static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EBA550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1D1E739C0;
  v9 = MEMORY[0x1E69E65A8];
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  *(v7 + 32) = a1;
  v10 = sub_1D1E6784C();

  return v10;
}

uint64_t sub_1D183A63C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D1E73A90;
  if (qword_1EC642198 != -1)
  {
    swift_once();
  }

  v1 = unk_1EC645010;
  v2 = qword_1EC645018;
  v3 = unk_1EC645020;
  v4 = qword_1EC645028;
  *(v0 + 32) = qword_1EC645008;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  v5 = qword_1EC6421A0;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = *algn_1EC645038;
  v7 = qword_1EC645040;
  v8 = unk_1EC645048;
  v9 = qword_1EC645050;
  *(v0 + 72) = qword_1EC645030;
  *(v0 + 80) = v6;
  *(v0 + 88) = v7;
  *(v0 + 96) = v8;
  *(v0 + 104) = v9;
  qword_1EC645000 = v0;
}

uint64_t static LightsSummarizer.allLightsSummaryFetchSpecifications.getter()
{
  if (qword_1EC642190 != -1)
  {
    swift_once();
  }
}

void sub_1D183A7E0()
{
  qword_1EC645008 = 0x6C7562746867694CLL;
  unk_1EC645010 = 0xEA00000000007362;
  qword_1EC645018 = &unk_1F4D624A0;
  unk_1EC645020 = MEMORY[0x1E69E7CC0];
  qword_1EC645028 = &unk_1F4D624C8;
}

uint64_t static LightsSummarizer.lightbulbsFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC642198 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EC645010;
  v2 = qword_1EC645018;
  v3 = unk_1EC645020;
  v4 = qword_1EC645028;
  *a1 = qword_1EC645008;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1D183A8CC()
{
  qword_1EC645030 = 0xD00000000000001CLL;
  *algn_1EC645038 = 0x80000001D1EBA5C0;
  qword_1EC645040 = &unk_1F4D624F0;
  unk_1EC645048 = MEMORY[0x1E69E7CC0];
  qword_1EC645050 = &unk_1F4D62518;
}

uint64_t static LightsSummarizer.lightbulbSwitchesAndOutletsFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC6421A0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1EC645038;
  v2 = qword_1EC645040;
  v3 = unk_1EC645048;
  v4 = qword_1EC645050;
  *a1 = qword_1EC645030;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

uint64_t sub_1D183A9B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = MEMORY[0x1E69E7CD0];
  v11 = MEMORY[0x1E69E7CD0];
  if (qword_1EC642190 != -1)
  {
    swift_once();
  }

  v4 = sub_1D1828A0C(qword_1EC645000, 0, 0, 0, a1);
  v5 = sub_1D1B4E030(MEMORY[0x1E69E7CD0], v4, &v10, &v11);

  v6 = v10;
  result = sub_1D183A528(*(v5 + 16), *(v10 + 16));
  v8 = v11;
  *a2 = v5;
  a2[1] = v8;
  a2[2] = v6;
  a2[3] = result;
  a2[4] = v9;
  return result;
}

unint64_t static SecuritySummarizer.garageDoorIcon(_:)(uint64_t a1, char a2)
{
  result = 0xD000000000000010;
  if (a2)
  {
    return 0xD00000000000002ELL;
  }

  if (a1 > 1)
  {
    if ((a1 - 2) < 2)
    {
      return result;
    }

    return 0xD00000000000002ELL;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000012;
    }

    return 0xD00000000000002ELL;
  }

  return result;
}

uint64_t static SecuritySummarizer.garageDoorString(_:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xD000000000000025;
  if (a1 <= 1)
  {
    if (!a1)
    {
      v7 = "ValueDoorStateClosed";
      v5 = 0xD000000000000022;
      return static String.hfLocalized(_:)(v5, v7 | 0x8000000000000000);
    }

    if (a1 == 1)
    {
      v7 = "ValueDoorStateOpening";
      v5 = 0xD000000000000024;
      return static String.hfLocalized(_:)(v5, v7 | 0x8000000000000000);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v6 = "HFCharacteristicValueDoorStateOpening";
        goto LABEL_13;
      case 3:
        v6 = "HFCharacteristicValueDoorStateClosing";
        goto LABEL_13;
      case 4:
        v6 = "HFCharacteristicValueDoorStateStopped";
LABEL_13:
        v7 = (v6 - 32);
        return static String.hfLocalized(_:)(v5, v7 | 0x8000000000000000);
    }
  }

  return v4;
}

unint64_t static SecuritySummarizer.doorIcon(isSecure:)(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t static SecuritySummarizer.doorString(isSecure:)()
{
  v0 = sub_1D1E66ADC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1D1E677DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D1E6776C();
  sub_1D1E66ACC();
  return sub_1D1E6787C();
}

unint64_t static SecuritySummarizer.windowIcon(isSecure:)(char a1)
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

uint64_t static SecuritySummarizer.windowString(isSecure:)()
{
  v0 = sub_1D1E66ADC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1D1E677DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D1E6776C();
  sub_1D1E66ACC();
  return sub_1D1E6787C();
}

uint64_t static SecuritySummarizer.lockIcon(_:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0xD000000000000022;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0xD000000000000027;
    }

    return 0xD000000000000022;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      return 0x6C69662E6B636F6CLL;
    }

    return 0xD000000000000022;
  }

  return 0x65706F2E6B636F6CLL;
}

unint64_t sub_1D183AFD0()
{
  v1 = *v0;
  v2 = 0x617261476E65706FLL;
  v3 = 0x6F707365726E6F6ELL;
  if (v1 != 6)
  {
    v3 = 1701736302;
  }

  v4 = 0x646E69576E65706FLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x726F6F446E65706FLL;
  if (v1 != 2)
  {
    v5 = 0x64656B636F6C6E75;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D183B0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1845480(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D183B120(uint64_t a1)
{
  v2 = sub_1D1844998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183B15C(uint64_t a1)
{
  v2 = sub_1D1844998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D183B198(uint64_t a1)
{
  v2 = sub_1D1844A94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183B1D4(uint64_t a1)
{
  v2 = sub_1D1844A94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D183B210(uint64_t a1)
{
  v2 = sub_1D18449EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183B24C(uint64_t a1)
{
  v2 = sub_1D18449EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D183B288(uint64_t a1)
{
  v2 = sub_1D1844A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183B2C4(uint64_t a1)
{
  v2 = sub_1D1844A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D183B300(uint64_t a1)
{
  v2 = sub_1D1844B90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183B33C(uint64_t a1)
{
  v2 = sub_1D1844B90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D183B378(uint64_t a1)
{
  v2 = sub_1D1844BE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183B3B4(uint64_t a1)
{
  v2 = sub_1D1844BE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D183B3F0(uint64_t a1)
{
  v2 = sub_1D1844AE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183B42C(uint64_t a1)
{
  v2 = sub_1D1844AE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D183B468(uint64_t a1)
{
  v2 = sub_1D1844C38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183B4A4(uint64_t a1)
{
  v2 = sub_1D1844C38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D183B4E0(uint64_t a1)
{
  v2 = sub_1D1844B3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183B51C(uint64_t a1)
{
  v2 = sub_1D1844B3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SecurityIssue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645150, &qword_1D1E78E90);
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645158, &qword_1D1E78E98);
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645160, &qword_1D1E78EA0);
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645168, &qword_1D1E78EA8);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645170, &qword_1D1E78EB0);
  v50 = *(v15 - 8);
  v51 = v15;
  v16 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v43 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645178, &qword_1D1E78EB8);
  v47 = *(v18 - 8);
  v48 = v18;
  v19 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v46 = &v43 - v20;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645180, &qword_1D1E78EC0);
  v44 = *(v45 - 8);
  v21 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v23 = &v43 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645188, &qword_1D1E78EC8);
  v43 = *(v24 - 8);
  v25 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v43 - v26;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645190, &qword_1D1E78ED0);
  v28 = *(v64 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v30 = *v1;
  v32 = a1[3];
  v31 = a1[4];
  v33 = a1;
  v35 = &v43 - v34;
  __swift_project_boxed_opaque_existential_1(v33, v32);
  sub_1D1844998();
  sub_1D1E6930C();
  v36 = (v28 + 8);
  if (v30 > 3)
  {
    if (v30 > 5)
    {
      if (v30 == 6)
      {
        v71 = 6;
        sub_1D1844A40();
        v38 = v58;
        v37 = v64;
        sub_1D1E68DFC();
        v40 = v59;
        v39 = v60;
      }

      else
      {
        v72 = 7;
        sub_1D18449EC();
        v38 = v61;
        v37 = v64;
        sub_1D1E68DFC();
        v40 = v62;
        v39 = v63;
      }
    }

    else if (v30 == 4)
    {
      v69 = 4;
      sub_1D1844AE8();
      v38 = v52;
      v37 = v64;
      sub_1D1E68DFC();
      v40 = v53;
      v39 = v54;
    }

    else
    {
      v70 = 5;
      sub_1D1844A94();
      v38 = v55;
      v37 = v64;
      sub_1D1E68DFC();
      v40 = v56;
      v39 = v57;
    }

    goto LABEL_16;
  }

  if (v30 > 1)
  {
    if (v30 == 2)
    {
      v67 = 2;
      sub_1D1844B90();
      v38 = v46;
      v37 = v64;
      sub_1D1E68DFC();
      v40 = v47;
      v39 = v48;
    }

    else
    {
      v68 = 3;
      sub_1D1844B3C();
      v38 = v49;
      v37 = v64;
      sub_1D1E68DFC();
      v40 = v50;
      v39 = v51;
    }

LABEL_16:
    (*(v40 + 8))(v38, v39);
    return (*v36)(v35, v37);
  }

  if (v30)
  {
    v66 = 1;
    sub_1D1844BE4();
    v41 = v64;
    sub_1D1E68DFC();
    (*(v44 + 8))(v23, v45);
    return (*v36)(v35, v41);
  }

  v65 = 0;
  sub_1D1844C38();
  v37 = v64;
  sub_1D1E68DFC();
  (*(v43 + 8))(v27, v24);
  return (*v36)(v35, v37);
}

uint64_t SecurityIssue.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t SecurityIssue.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6451E0, &qword_1D1E78ED8);
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v68 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6451E8, &qword_1D1E78EE0);
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v93 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6451F0, &qword_1D1E78EE8);
  v82 = *(v9 - 8);
  v83 = v9;
  v10 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6451F8, &qword_1D1E78EF0);
  v13 = *(v12 - 8);
  v80 = v12;
  v81 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v91 = &v68 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645200, &qword_1D1E78EF8);
  v78 = *(v79 - 8);
  v16 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v90 = &v68 - v17;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645208, &qword_1D1E78F00);
  v76 = *(v77 - 8);
  v18 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v88 = &v68 - v19;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645210, &qword_1D1E78F08);
  v74 = *(v75 - 8);
  v20 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v22 = &v68 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645218, &qword_1D1E78F10);
  v73 = *(v23 - 8);
  v24 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v68 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645220, &unk_1D1E78F18);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v68 - v30;
  v33 = a1[3];
  v32 = a1[4];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1D1844998();
  v34 = v95;
  sub_1D1E692FC();
  if (!v34)
  {
    v69 = v26;
    v68 = v23;
    v70 = v22;
    v36 = v90;
    v35 = v91;
    v38 = v92;
    v37 = v93;
    v95 = v28;
    v39 = v94;
    v72 = v27;
    v71 = v31;
    v40 = sub_1D1E68DDC();
    v41 = (2 * *(v40 + 16)) | 1;
    v97 = v40;
    v98 = v40 + 32;
    v99 = 0;
    v100 = v41;
    v42 = sub_1D18085D4();
    if (v42 != 8 && v99 == v100 >> 1)
    {
      v101 = v42;
      if (v42 > 3u)
      {
        v54 = v72;
        v55 = v71;
        if (v42 > 5u)
        {
          v63 = v95;
          if (v42 == 6)
          {
            v102 = 6;
            sub_1D1844A40();
            sub_1D1E68C4C();
            (*(v84 + 8))(v37, v85);
          }

          else
          {
            v102 = 7;
            sub_1D18449EC();
            v67 = v89;
            sub_1D1E68C4C();
            (*(v86 + 8))(v67, v87);
          }

          (*(v63 + 8))(v55, v54);
          swift_unknownObjectRelease();
          v43 = v39;
          goto LABEL_25;
        }

        v43 = v39;
        v56 = v95;
        if (v42 == 4)
        {
          v102 = 4;
          sub_1D1844AE8();
          sub_1D1E68C4C();
          v57 = v80;
          v58 = v81;
        }

        else
        {
          v102 = 5;
          sub_1D1844A94();
          v35 = v38;
          sub_1D1E68C4C();
          v58 = v82;
          v57 = v83;
        }

        (*(v58 + 8))(v35, v57);
        (*(v56 + 8))(v55, v54);
      }

      else
      {
        if (v42 > 1u)
        {
          v59 = v95;
          if (v42 == 2)
          {
            v102 = 2;
            sub_1D1844B90();
            v60 = v88;
            v61 = v72;
            v62 = v71;
            sub_1D1E68C4C();
            (*(v76 + 8))(v60, v77);
          }

          else
          {
            v102 = 3;
            sub_1D1844B3C();
            v61 = v72;
            v62 = v71;
            sub_1D1E68C4C();
            (*(v78 + 8))(v36, v79);
          }

          (*(v59 + 8))(v62, v61);
          swift_unknownObjectRelease();
          v43 = v39;
          goto LABEL_25;
        }

        v43 = v39;
        if (v42)
        {
          v102 = 1;
          sub_1D1844BE4();
          v64 = v70;
          v65 = v72;
          v66 = v71;
          sub_1D1E68C4C();
          (*(v74 + 8))(v64, v75);
          (*(v95 + 8))(v66, v65);
        }

        else
        {
          v102 = 0;
          sub_1D1844C38();
          v44 = v69;
          v45 = v72;
          v46 = v71;
          sub_1D1E68C4C();
          (*(v73 + 8))(v44, v68);
          (*(v95 + 8))(v46, v45);
        }
      }

      swift_unknownObjectRelease();
LABEL_25:
      *v43 = v101;
      return __swift_destroy_boxed_opaque_existential_1(v96);
    }

    v47 = sub_1D1E688EC();
    swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
    *v49 = &type metadata for SecurityIssue;
    v51 = v72;
    v52 = v71;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6AF8], v47);
    swift_willThrow();
    (*(v95 + 8))(v52, v51);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v96);
}

uint64_t sub_1D183C8D0()
{
  v0 = sub_1D18D8E0C(&unk_1F4D626F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452E0, &qword_1D1E797D8);
  result = swift_arrayDestroy();
  qword_1EC645058 = v0;
  return result;
}

uint64_t sub_1D183C950()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452D8, &qword_1D1E797D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E78E80;
  *(inited + 32) = 0;
  *(inited + 40) = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBAE80);
  *(inited + 48) = v1;
  *(inited + 56) = 1;
  *(inited + 64) = static String.hfLocalized(_:)(0xD00000000000002CLL, 0x80000001D1EBAEB0);
  *(inited + 72) = v2;
  *(inited + 80) = 2;
  *(inited + 88) = static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBAEE0);
  *(inited + 96) = v3;
  *(inited + 104) = 3;
  *(inited + 112) = static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBAEE0);
  *(inited + 120) = v4;
  *(inited + 128) = 4;
  *(inited + 136) = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EBAF00);
  *(inited + 144) = v5;
  *(inited + 152) = 5;
  *(inited + 160) = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBAE80);
  *(inited + 168) = v6;
  *(inited + 176) = 6;
  *(inited + 184) = static String.hfLocalized(_:)(0xD000000000000019, 0x80000001D1EBAF20);
  *(inited + 192) = v7;
  v8 = sub_1D18D8E0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452E0, &qword_1D1E797D8);
  result = swift_arrayDestroy();
  qword_1EC645060 = v8;
  return result;
}

uint64_t sub_1D183CB08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452D8, &qword_1D1E797D0);
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  *(inited + 16) = xmmword_1D1E78E80;
  *(inited + 40) = static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBAD90);
  *(inited + 48) = v1;
  *(inited + 56) = 1;
  *(inited + 64) = static String.hfLocalized(_:)(0xD000000000000032, 0x80000001D1EBADC0);
  *(inited + 72) = v2;
  *(inited + 80) = 2;
  *(inited + 88) = static String.hfLocalized(_:)(0xD000000000000021, 0x80000001D1EBAE00);
  *(inited + 96) = v3;
  *(inited + 104) = 3;
  *(inited + 112) = static String.hfLocalized(_:)(0xD000000000000021, 0x80000001D1EBAE00);
  *(inited + 120) = v4;
  *(inited + 128) = 4;
  *(inited + 136) = static String.hfLocalized(_:)(0xD000000000000023, 0x80000001D1EBAE30);
  *(inited + 144) = v5;
  *(inited + 152) = 5;
  *(inited + 160) = static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBAD90);
  *(inited + 168) = v6;
  *(inited + 176) = 6;
  *(inited + 184) = static String.hfLocalized(_:)(0xD00000000000001FLL, 0x80000001D1EBAE60);
  *(inited + 192) = v7;
  v8 = sub_1D18D8E0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452E0, &qword_1D1E797D8);
  result = swift_arrayDestroy();
  qword_1EC645068 = v8;
  return result;
}

uint64_t sub_1D183CCCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452D8, &qword_1D1E797D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E78E80;
  *(inited + 32) = 0;
  *(inited + 40) = static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBAC80);
  *(inited + 48) = v1;
  *(inited + 56) = 1;
  *(inited + 64) = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBACB0);
  *(inited + 72) = v2;
  *(inited + 80) = 2;
  *(inited + 88) = static String.hfLocalized(_:)(0xD000000000000022, 0x80000001D1EBA6D0);
  *(inited + 96) = v3;
  *(inited + 104) = 3;
  *(inited + 112) = static String.hfLocalized(_:)(0xD000000000000023, 0x80000001D1EBACE0);
  *(inited + 120) = v4;
  *(inited + 128) = 4;
  *(inited + 136) = static String.hfLocalized(_:)(0xD000000000000021, 0x80000001D1EBAD10);
  *(inited + 144) = v5;
  *(inited + 152) = 5;
  *(inited + 160) = static String.hfLocalized(_:)(0xD00000000000002ALL, 0x80000001D1EBAD40);
  *(inited + 168) = v6;
  *(inited + 176) = 6;
  *(inited + 184) = static String.hfLocalized(_:)(0xD00000000000001ELL, 0x80000001D1EBAD70);
  *(inited + 192) = v7;
  v8 = sub_1D18D8E0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452E0, &qword_1D1E797D8);
  result = swift_arrayDestroy();
  off_1EC645070 = v8;
  return result;
}

uint64_t sub_1D183CE90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452D8, &qword_1D1E797D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E78E80;
  *(inited + 32) = 0;
  *(inited + 40) = static String.hfLocalized(_:)(0xD000000000000033, 0x80000001D1EBAB00);
  *(inited + 48) = v1;
  *(inited + 56) = 1;
  *(inited + 64) = static String.hfLocalized(_:)(0xD00000000000002ALL, 0x80000001D1EBAB40);
  *(inited + 72) = v2;
  *(inited + 80) = 2;
  *(inited + 88) = static String.hfLocalized(_:)(0xD000000000000024, 0x80000001D1EBAB70);
  *(inited + 96) = v3;
  *(inited + 104) = 3;
  *(inited + 112) = static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EBABA0);
  *(inited + 120) = v4;
  *(inited + 128) = 4;
  *(inited + 136) = static String.hfLocalized(_:)(0xD000000000000026, 0x80000001D1EBABD0);
  *(inited + 144) = v5;
  *(inited + 152) = 5;
  *(inited + 160) = static String.hfLocalized(_:)(0xD000000000000032, 0x80000001D1EBAC00);
  *(inited + 168) = v6;
  *(inited + 176) = 6;
  *(inited + 184) = static String.hfLocalized(_:)(0xD00000000000003ELL, 0x80000001D1EBAC40);
  *(inited + 192) = v7;
  v8 = sub_1D18D8E0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452E0, &qword_1D1E797D8);
  result = swift_arrayDestroy();
  off_1EC645078 = v8;
  return result;
}

uint64_t static SecuritySummarizer.lockString(_:)(uint64_t a1, char a2)
{
  v2 = 0x9380E29380E2;
  if (a2)
  {
    return 0x9380E29380E2;
  }

  v5 = 0xD00000000000002ELL;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v6 = "ValueLockMechanismStateUnknown";
      v5 = 0xD00000000000002DLL;
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }

    if (a1 == 3)
    {
      v6 = "ge.exclamationmark.fill";
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }
  }

  else
  {
    if (!a1)
    {
      v6 = "ValueLockMechanismStateSecured";
      v5 = 0xD000000000000030;
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }

    if (a1 == 1)
    {
      v6 = "ValueLockMechanismStateJammed";
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }
  }

  return v2;
}

uint64_t static SecuritySummarizer.securitySystemString(_:)(uint64_t a1, char a2)
{
  v2 = 0x9380E29380E2;
  if (a2)
  {
    return 0x9380E29380E2;
  }

  v5 = 0xD000000000000036;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return v2;
      }

      v7 = "HFCharacteristicValueCurrentSecuritySystemStateAwayArm";
    }

    else
    {
      v7 = "HFCharacteristicValueCurrentSecuritySystemStateStayArm";
    }

    v6 = (v7 - 32);
    return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
  }

  switch(a1)
  {
    case 2:
      v8 = "HFCharacteristicValueCurrentSecuritySystemStateNightArm";
LABEL_13:
      v6 = (v8 - 32);
      v5 = 0xD000000000000037;
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    case 3:
      v8 = "HFCharacteristicValueCurrentSecuritySystemStateDisarmed";
      goto LABEL_13;
    case 4:
      v6 = "smStateUnsecured";
      v5 = 0xD000000000000038;
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
  }

  return v2;
}

uint64_t sub_1D183D200()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D1E74700;
  if (qword_1EC6421D8 != -1)
  {
    swift_once();
  }

  v1 = unk_1EC645090;
  v2 = qword_1EC645098;
  v3 = unk_1EC6450A0;
  v4 = qword_1EC6450A8;
  *(v0 + 32) = qword_1EC645088;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  v5 = qword_1EC6421E0;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = *algn_1EC6450B8;
  v7 = qword_1EC6450C0;
  v8 = unk_1EC6450C8;
  v9 = qword_1EC6450D0;
  *(v0 + 72) = qword_1EC6450B0;
  *(v0 + 80) = v6;
  *(v0 + 88) = v7;
  *(v0 + 96) = v8;
  *(v0 + 104) = v9;
  v10 = qword_1EC6421E8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = unk_1EC6450E0;
  v12 = qword_1EC6450E8;
  v13 = unk_1EC6450F0;
  v14 = qword_1EC6450F8;
  *(v0 + 112) = qword_1EC6450D8;
  *(v0 + 120) = v11;
  *(v0 + 128) = v12;
  *(v0 + 136) = v13;
  *(v0 + 144) = v14;
  v15 = qword_1EC6421F0;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = *algn_1EC645108;
  v17 = qword_1EC645110;
  v18 = unk_1EC645118;
  v19 = qword_1EC645120;
  *(v0 + 152) = qword_1EC645100;
  *(v0 + 160) = v16;
  *(v0 + 168) = v17;
  *(v0 + 176) = v18;
  *(v0 + 184) = v19;
  v20 = qword_1EC6421F8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = unk_1EC645130;
  v22 = qword_1EC645138;
  v23 = unk_1EC645140;
  v24 = qword_1EC645148;
  *(v0 + 192) = qword_1EC645128;
  *(v0 + 200) = v21;
  *(v0 + 208) = v22;
  *(v0 + 216) = v23;
  *(v0 + 224) = v24;
  qword_1EC645080 = v0;
}

uint64_t sub_1D183D4B0(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

void sub_1D183D510()
{
  qword_1EC645088 = 0xD000000000000013;
  unk_1EC645090 = 0x80000001D1EBAAE0;
  qword_1EC645098 = &unk_1F4D62540;
  unk_1EC6450A0 = MEMORY[0x1E69E7CC0];
  qword_1EC6450A8 = &unk_1F4D62568;
}

uint64_t static SecuritySummarizer.garageDoorOpenersFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC6421D8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EC645090;
  v2 = qword_1EC645098;
  v3 = unk_1EC6450A0;
  v4 = qword_1EC6450A8;
  *a1 = qword_1EC645088;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1D183D5FC()
{
  qword_1EC6450B0 = 0xD000000000000019;
  *algn_1EC6450B8 = 0x80000001D1EBAAC0;
  qword_1EC6450C0 = &unk_1F4D62590;
  unk_1EC6450C8 = MEMORY[0x1E69E7CC0];
  qword_1EC6450D0 = &unk_1F4D625B8;
}

uint64_t static SecuritySummarizer.motorizedDoorsAndWindowsFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC6421E0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1EC6450B8;
  v2 = qword_1EC6450C0;
  v3 = unk_1EC6450C8;
  v4 = qword_1EC6450D0;
  *a1 = qword_1EC6450B0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1D183D6E8()
{
  qword_1EC6450D8 = 0x1000000000000032;
  unk_1EC6450E0 = 0x80000001D1EBAA80;
  qword_1EC6450E8 = &unk_1F4D625E0;
  unk_1EC6450F0 = MEMORY[0x1E69E7CC0];
  qword_1EC6450F8 = &unk_1F4D62608;
}

uint64_t static SecuritySummarizer.doorsAndWindowsAndGarageDoorsContactSensorsFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC6421E8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EC6450E0;
  v2 = qword_1EC6450E8;
  v3 = unk_1EC6450F0;
  v4 = qword_1EC6450F8;
  *a1 = qword_1EC6450D8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1D183D7D4()
{
  qword_1EC645100 = 0x736B636F4CLL;
  *algn_1EC645108 = 0xE500000000000000;
  qword_1EC645110 = &unk_1F4D62630;
  unk_1EC645118 = MEMORY[0x1E69E7CC0];
  qword_1EC645120 = &unk_1F4D62658;
}

uint64_t static SecuritySummarizer.locksFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC6421F0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1EC645108;
  v2 = qword_1EC645110;
  v3 = unk_1EC645118;
  v4 = qword_1EC645120;
  *a1 = qword_1EC645100;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1D183D8B8()
{
  qword_1EC645128 = 0xD000000000000010;
  unk_1EC645130 = 0x80000001D1EBAA60;
  qword_1EC645138 = &unk_1F4D62680;
  unk_1EC645140 = MEMORY[0x1E69E7CC0];
  qword_1EC645148 = &unk_1F4D626A8;
}

uint64_t static SecuritySummarizer.securitySystemsFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC6421F8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EC645130;
  v2 = qword_1EC645138;
  v3 = unk_1EC645140;
  v4 = qword_1EC645148;
  *a1 = qword_1EC645128;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

uint64_t sub_1D183D9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452F8, &unk_1D1E797F0) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452F0, &qword_1D1E96C50) + 48);
  sub_1D184586C(a1, a2, type metadata accessor for StaticServiceCharacteristicDoublet);
  return sub_1D184586C(a1 + v4, a2 + v5, type metadata accessor for IconTextValueStringDataHolder);
}

uint64_t sub_1D183DA40(uint64_t a1)
{
  v3 = type metadata accessor for IconTextValueStringDataHolder();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v15 = v13;
    if (!v11)
    {
      break;
    }

LABEL_8:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    sub_1D184586C(*(a1 + 56) + *(v4 + 72) * (v16 | (v13 << 6)), v7, type metadata accessor for IconTextValueStringDataHolder);
    v17 = (v7 + *(v3 + 32));
    if (v17[24])
    {
      sub_1D184580C(v7, type metadata accessor for IconTextValueStringDataHolder);
    }

    else
    {
      v118 = *v17;
      sub_1D184580C(v7, type metadata accessor for IconTextValueStringDataHolder);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1D177DC7C(0, *(v14 + 2) + 1, 1, v14);
      }

      isUniquelyReferenced_nonNull_native = *(v14 + 2);
      v18 = *(v14 + 3);
      v19 = isUniquelyReferenced_nonNull_native + 1;
      if (isUniquelyReferenced_nonNull_native >= v18 >> 1)
      {
        v117 = isUniquelyReferenced_nonNull_native + 1;
        v20 = sub_1D177DC7C((v18 > 1), isUniquelyReferenced_nonNull_native + 1, 1, v14);
        v19 = v117;
        v14 = v20;
      }

      *(v14 + 2) = v19;
      v14[isUniquelyReferenced_nonNull_native + 32] = v118;
    }
  }

  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_112;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v13);
    ++v15;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  v8 = *(v14 + 2);
  if (v8)
  {
    v21 = 0;
    v22 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v21 >= *(v14 + 2))
      {
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:

        return static String.hfLocalized(_:)(0xD00000000000002CLL, 0x80000001D1EBAA30);
      }

      v23 = v14[v21 + 32];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v119 = v22;
      v24 = sub_1D174218C(v23);
      v26 = v22[2];
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        goto LABEL_119;
      }

      v7 = v25;
      if (v22[3] < v29)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v36 = v24;
      sub_1D1738450();
      v24 = v36;
      v22 = v119;
      if (v7)
      {
        goto LABEL_26;
      }

LABEL_24:
      v22[(v24 >> 6) + 8] |= 1 << v24;
      *(v22[6] + v24) = v23;
      *(v22[7] + 8 * v24) = 0;
      v31 = v22[2];
      v28 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v28)
      {
        __break(1u);
LABEL_127:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v112 = swift_allocObject();
        v113 = MEMORY[0x1E69E6530];
        *(v112 + 16) = xmmword_1D1E739C0;
        v114 = MEMORY[0x1E69E65A8];
        *(v112 + 56) = v113;
        *(v112 + 64) = v114;
        *(v112 + 32) = v21;
        goto LABEL_128;
      }

      v22[2] = v32;
LABEL_26:
      v33 = v22[7];
      v34 = *(v33 + 8 * v24);
      v28 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v28)
      {
        goto LABEL_120;
      }

      ++v21;
      *(v33 + 8 * v24) = v35;
      if (v8 == v21)
      {
        goto LABEL_32;
      }
    }

    sub_1D172745C(v29, isUniquelyReferenced_nonNull_native);
    v22 = v119;
    v24 = sub_1D174218C(v23);
    if ((v7 & 1) != (v30 & 1))
    {
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }

LABEL_23:
    if (v7)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v22 = MEMORY[0x1E69E7CC8];
LABEL_32:

  v37 = v22[2];
  if (!v37)
  {
    v43 = 0;
    v40 = 0;
    goto LABEL_45;
  }

  v38 = sub_1D174218C(0);
  if (v39)
  {
    v40 = *(v22[7] + 8 * v38);
    v37 = v22[2];
    if (v37)
    {
      goto LABEL_35;
    }

LABEL_40:
    v43 = 0;
    goto LABEL_45;
  }

  v40 = 0;
  v37 = v22[2];
  if (!v37)
  {
    goto LABEL_40;
  }

LABEL_35:
  v41 = sub_1D174218C(1u);
  if (v42)
  {
    v43 = *(v22[7] + 8 * v41);
    v37 = v22[2];
    if (!v37)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v43 = 0;
    v37 = v22[2];
    if (!v37)
    {
      goto LABEL_45;
    }
  }

  v44 = sub_1D174218C(2u);
  if (v45)
  {
    v37 = *(v22[7] + 8 * v44);
  }

  else
  {
    v37 = 0;
  }

LABEL_45:
  v28 = __OFADD__(v43, v37);
  v46 = v43 + v37;
  if (v28)
  {
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v47 = v22[2];
  if (v47)
  {
    v48 = sub_1D174218C(4u);
    if (v49)
    {
      v47 = *(v22[7] + 8 * v48);
    }

    else
    {
      v47 = 0;
    }
  }

  v7 = v46 + v47;
  if (__OFADD__(v46, v47))
  {
    goto LABEL_131;
  }

  if (!v22[2])
  {
    v8 = 0;
    isUniquelyReferenced_nonNull_native = 0;
    goto LABEL_69;
  }

  v50 = sub_1D174218C(3u);
  if ((v51 & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = 0;
    if (v22[2])
    {
      goto LABEL_54;
    }

LABEL_59:
    v8 = 0;
    goto LABEL_69;
  }

  isUniquelyReferenced_nonNull_native = *(v22[7] + 8 * v50);
  if (!v22[2])
  {
    goto LABEL_59;
  }

LABEL_54:
  v52 = sub_1D174218C(5u);
  if (v53)
  {
    v8 = *(v22[7] + 8 * v52);
    if (!v22[2])
    {
      goto LABEL_69;
    }
  }

  else
  {
    v8 = 0;
    if (!v22[2])
    {
      goto LABEL_69;
    }
  }

  v54 = sub_1D174218C(6u);
  if (v55)
  {
    v21 = *(v22[7] + 8 * v54);
    if (v40 > 0)
    {
      goto LABEL_70;
    }

    goto LABEL_63;
  }

LABEL_69:
  while (1)
  {
    v21 = 0;
    if (v40 > 0)
    {
      break;
    }

LABEL_63:
    if (v7 < 1)
    {
      if (isUniquelyReferenced_nonNull_native >= 1)
      {
        if (isUniquelyReferenced_nonNull_native == 1)
        {
          if (qword_1EC6421C0 != -1)
          {
            swift_once();
          }

          v56 = off_1EC645070;
          if (*(off_1EC645070 + 2))
          {
            v57 = sub_1D174218C(3u);
            v74 = v73;

            if ((v74 & 1) == 0)
            {
              __break(1u);
LABEL_87:

              if (qword_1EC6421C8 == -1)
              {
                goto LABEL_88;
              }

              goto LABEL_138;
            }

LABEL_74:
            v61 = (v56[7] + 16 * v57);
            v62 = *v61;
            v63 = v61[1];

            return v62;
          }

          __break(1u);
LABEL_140:
          swift_once();
LABEL_100:
          v86 = off_1EC645078;
          if (*(off_1EC645078 + 2))
          {
            v87 = sub_1D174218C(3u);
            if (v88)
            {
              v89 = (v86[7] + 16 * v87);
              v90 = *v89;
              v91 = v89[1];
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v92 = swift_allocObject();
          v93 = MEMORY[0x1E69E6530];
          *(v92 + 16) = xmmword_1D1E739C0;
          v94 = MEMORY[0x1E69E65A8];
          *(v92 + 56) = v93;
          *(v92 + 64) = v94;
          *(v92 + 32) = isUniquelyReferenced_nonNull_native;
          goto LABEL_128;
        }

LABEL_99:

        if (qword_1EC6421C8 != -1)
        {
          goto LABEL_140;
        }

        goto LABEL_100;
      }

      if (v8 >= 1)
      {
        if (v8 == 1)
        {
          if (qword_1EC6421C0 != -1)
          {
            swift_once();
          }

          v56 = off_1EC645070;
          if (*(off_1EC645070 + 2))
          {
            v57 = sub_1D174218C(5u);
            v85 = v84;

            if (v85)
            {
              goto LABEL_74;
            }

            __break(1u);
            goto LABEL_99;
          }

          __break(1u);
LABEL_142:
          swift_once();
LABEL_114:
          v97 = off_1EC645078;
          if (*(off_1EC645078 + 2))
          {
            v98 = sub_1D174218C(5u);
            if (v99)
            {
              v100 = (v97[7] + 16 * v98);
              v101 = *v100;
              v102 = v100[1];
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v103 = swift_allocObject();
          v104 = MEMORY[0x1E69E6530];
          *(v103 + 16) = xmmword_1D1E739C0;
          v105 = MEMORY[0x1E69E65A8];
          *(v103 + 56) = v104;
          *(v103 + 64) = v105;
          *(v103 + 32) = v8;
          goto LABEL_128;
        }

LABEL_113:

        if (qword_1EC6421C8 != -1)
        {
          goto LABEL_142;
        }

        goto LABEL_114;
      }

      if (v21 < 1)
      {
        goto LABEL_121;
      }

      if (v21 == 1)
      {
        if (qword_1EC6421C0 != -1)
        {
          swift_once();
        }

        v56 = off_1EC645070;
        if (*(off_1EC645070 + 2))
        {
          v57 = sub_1D174218C(6u);
          v96 = v95;

          if (v96)
          {
            goto LABEL_74;
          }

          __break(1u);
LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

        __break(1u);
      }

      else
      {

        if (qword_1EC6421C8 == -1)
        {
LABEL_123:
          v106 = off_1EC645078;
          if (*(off_1EC645078 + 2))
          {
            v107 = sub_1D174218C(6u);
            if (v108)
            {
              v109 = (v106[7] + 16 * v107);
              v110 = *v109;
              v111 = v109[1];
            }
          }

          goto LABEL_127;
        }
      }

      swift_once();
      goto LABEL_123;
    }

    if (v7 != 1)
    {
      goto LABEL_87;
    }

    if (qword_1EC6421C0 != -1)
    {
      goto LABEL_136;
    }

LABEL_66:
    v56 = off_1EC645070;
    if (!*(off_1EC645070 + 2))
    {
      __break(1u);
LABEL_138:
      swift_once();
LABEL_88:
      v75 = off_1EC645078;
      if (*(off_1EC645078 + 2))
      {
        v76 = sub_1D174218C(2u);
        if (v77)
        {
          v78 = (v75[7] + 16 * v76);
          v79 = *v78;
          v80 = v78[1];
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v81 = swift_allocObject();
      v82 = MEMORY[0x1E69E6530];
      *(v81 + 16) = xmmword_1D1E739C0;
      v83 = MEMORY[0x1E69E65A8];
      *(v81 + 56) = v82;
      *(v81 + 64) = v83;
      *(v81 + 32) = v7;
      goto LABEL_128;
    }

    v57 = sub_1D174218C(2u);
    v40 = v58;

    if (v40)
    {
      goto LABEL_74;
    }

    __break(1u);
  }

LABEL_70:
  if (v40 != 1)
  {

    if (qword_1EC6421C8 != -1)
    {
      goto LABEL_134;
    }

    goto LABEL_76;
  }

  if (qword_1EC6421C0 != -1)
  {
LABEL_132:
    swift_once();
  }

  v56 = off_1EC645070;
  if (*(off_1EC645070 + 2))
  {
    v57 = sub_1D174218C(0);
    v60 = v59;

    if (v60)
    {
      goto LABEL_74;
    }

    __break(1u);
LABEL_136:
    swift_once();
    goto LABEL_66;
  }

  __break(1u);
LABEL_134:
  swift_once();
LABEL_76:
  v64 = off_1EC645078;
  if (*(off_1EC645078 + 2))
  {
    v65 = sub_1D174218C(0);
    if (v66)
    {
      v67 = (v64[7] + 16 * v65);
      v68 = *v67;
      v69 = v67[1];
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v70 = swift_allocObject();
  v71 = MEMORY[0x1E69E6530];
  *(v70 + 16) = xmmword_1D1E739C0;
  v72 = MEMORY[0x1E69E65A8];
  *(v70 + 56) = v71;
  *(v70 + 64) = v72;
  *(v70 + 32) = v40;
LABEL_128:
  v62 = sub_1D1E6784C();

  return v62;
}

uint64_t sub_1D183E5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v124 = a3;
  v5 = sub_1D1E66A7C();
  v126 = *(v5 - 8);
  v127 = v5;
  v6 = *(v126 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v118 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v115 = &v113 - v9;
  v10 = type metadata accessor for IconTextValueStringDataHolder();
  v122 = *(v10 - 8);
  v123 = v10;
  v11 = *(v122 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v119 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v116 = &v113 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v130 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v129 = &v113 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v113 = &v113 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v120 = &v113 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v117 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v114 = &v113 - v28;
  v29 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v125 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v121 = &v113 - v33;
  v34 = type metadata accessor for StaticAccessory(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v42 = &v113 - v41;
  v43 = type metadata accessor for StaticService(0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v128 = &v113 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v47 = sub_1D1742188(a1), (v48 & 1) != 0))
  {
    sub_1D184586C(*(a2 + 56) + *(v35 + 72) * v47, v38, type metadata accessor for StaticAccessory);
    v49 = *&v38[*(v34 + 80)];

    sub_1D184580C(v38, type metadata accessor for StaticAccessory);
    if (*(v49 + 16))
    {
      v50 = a1;
      v51 = sub_1D1742188(a1 + *(v29 + 20));
      v52 = v130;
      if (v53)
      {
        sub_1D184586C(*(v49 + 56) + *(v44 + 72) * v51, v42, type metadata accessor for StaticService);
        v54 = 0;
      }

      else
      {
        v54 = 1;
      }
    }

    else
    {
      v54 = 1;
      v52 = v130;
      v50 = a1;
    }

    v56 = v129;

    (*(v44 + 56))(v42, v54, 1, v43);
    if ((*(v44 + 48))(v42, 1, v43) != 1)
    {
      v57 = v128;
      sub_1D18457A4(v42, v128, type metadata accessor for StaticService);
      v58 = v50 + *(v29 + 24);
      v59 = StaticCharacteristic.intValue.getter();
      if (v60)
      {
        sub_1D184586C(v50, v125, type metadata accessor for StaticServiceCharacteristicDoublet);
        v62 = v126;
        v61 = v127;
        (*(v126 + 56))(v56, 1, 1, v127);
        v129 = 0x80000001D1EBA5E0;
        v63 = (v57 + *(v43 + 20));
        v64 = v63[1];
        v121 = *v63;

        v65 = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBA610);
        v67 = v66;
        sub_1D17783E0(v56, v52);
        v68 = *(v62 + 48);
        if (v68(v52, 1, v61) == 1)
        {
          v69 = v118;
          sub_1D1E66A6C();
          v70 = v56;
          v71 = v69;
          v72 = v130;
          sub_1D1741A30(v70, &qword_1EC642590, qword_1D1E71260);
          if (v68(v72, 1, v61) != 1)
          {
            sub_1D1741A30(v72, &qword_1EC642590, qword_1D1E71260);
          }
        }

        else
        {
          sub_1D1741A30(v56, &qword_1EC642590, qword_1D1E71260);
          v71 = v118;
          (*(v62 + 32))(v118, v52, v61);
        }

        v75 = v119;
        (*(v62 + 32))(v119, v71, v61);
        v76 = v123;
        v77 = (v75 + v123[5]);
        v78 = v129;
        *v77 = 0xD00000000000002ELL;
        v77[1] = v78;
        v79 = (v75 + v76[6]);
        *v79 = v121;
        v79[1] = v64;
        v80 = (v75 + v76[7]);
        *v80 = v65;
        v80[1] = v67;
        v81 = v75 + v76[8];
        *(v81 + 8) = 0;
        *(v81 + 16) = 0;
        *v81 = 6;
        *(v81 + 24) = 0;
        v82 = v117;
        sub_1D18457A4(v75, v117, type metadata accessor for IconTextValueStringDataHolder);
        (*(v122 + 56))(v82, 0, 1, v76);
        v83 = v82;
        v84 = v125;
LABEL_37:
        sub_1D1B0D938(v83, v84);
        v74 = v128;
        return sub_1D184580C(v74, type metadata accessor for StaticService);
      }

      v73 = v126;
      if (v59 == 1)
      {
        v74 = v57;
        return sub_1D184580C(v74, type metadata accessor for StaticService);
      }

      v85 = v59;
      sub_1D184586C(v50, v121, type metadata accessor for StaticServiceCharacteristicDoublet);
      (*(v73 + 56))(v120, 1, 1, v127);
      v86 = v85;
      v87 = (v57 + *(v43 + 20));
      v88 = *v87;
      v129 = v87[1];
      v130 = v88;
      if (v85 > 2)
      {
        v89 = v113;
        if (v86 != 3)
        {
          v90 = v120;
          if (v86 == 4)
          {

            v125 = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBA610);
            v119 = v94;
LABEL_28:
            v92 = "Lightbulb Switches & Outlets";
            v93 = 0xD00000000000002ELL;
            goto LABEL_32;
          }

LABEL_27:

          v125 = 0;
          v119 = 0;
          goto LABEL_28;
        }

        v96 = 0x80000001D1EBA640;
        v95 = 0xD000000000000025;
      }

      else
      {
        v89 = v113;
        if (v86)
        {
          v90 = v120;
          if (v86 == 2)
          {

            v125 = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBA670);
            v119 = v91;
            v92 = "light.beacon.max.fill";
            v93 = 0xD000000000000010;
LABEL_32:
            v98 = v92 | 0x8000000000000000;
            sub_1D17783E0(v90, v89);
            v99 = v73;
            v100 = *(v73 + 48);
            v101 = v127;
            if (v100(v89, 1, v127) == 1)
            {
              v102 = v115;
              sub_1D1E66A6C();
              sub_1D1741A30(v90, &qword_1EC642590, qword_1D1E71260);
              v103 = v102;
              if (v100(v89, 1, v101) != 1)
              {
                sub_1D1741A30(v89, &qword_1EC642590, qword_1D1E71260);
              }
            }

            else
            {
              sub_1D1741A30(v90, &qword_1EC642590, qword_1D1E71260);
              v103 = v115;
              (*(v99 + 32))(v115, v89, v101);
            }

            v104 = v116;
            (*(v99 + 32))(v116, v103, v101);
            v105 = v123;
            v106 = (v104 + v123[5]);
            *v106 = v93;
            v106[1] = v98;
            v107 = (v104 + v105[6]);
            v108 = v129;
            *v107 = v130;
            v107[1] = v108;
            v109 = (v104 + v105[7]);
            v110 = v119;
            *v109 = v125;
            v109[1] = v110;
            v111 = v104 + v105[8];
            *(v111 + 8) = 0;
            *(v111 + 16) = 0;
            *v111 = 1;
            *(v111 + 24) = 0;
            v112 = v114;
            sub_1D18457A4(v104, v114, type metadata accessor for IconTextValueStringDataHolder);
            (*(v122 + 56))(v112, 0, 1, v105);
            v83 = v112;
            v84 = v121;
            goto LABEL_37;
          }

          goto LABEL_27;
        }

        v95 = 0xD000000000000022;
        v96 = 0x80000001D1EBA6D0;
      }

      v125 = static String.hfLocalized(_:)(v95, v96);
      v119 = v97;
      v92 = "light.beacon.max.fill";
      v93 = 0xD000000000000010;
      v90 = v120;
      goto LABEL_32;
    }
  }

  else
  {
    (*(v44 + 56))(v42, 1, 1, v43);
  }

  return sub_1D1741A30(v42, &qword_1EC6436F0, &qword_1D1E99BC0);
}

unint64_t sub_1D183F150(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D18D8F20(MEMORY[0x1E69E7CC0]);
  v19 = v7;
  if (qword_1EC6421D8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v9 = qword_1EC645088;
    v8 = unk_1EC645090;
    v10 = qword_1EC645098;
    v11 = unk_1EC6450A0;
    v12 = qword_1EC6450A8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D1E739C0;
    *(v13 + 32) = v9;
    *(v13 + 40) = v8;
    *(v13 + 48) = v10;
    *(v13 + 56) = v11;
    *(v13 + 64) = v12;

    v14 = sub_1D1828A0C(v13, 1, 0, 0, a1);

    v15 = *(v14 + 16);
    if (!v15)
    {
      break;
    }

    v16 = 0;
    v7 = 0;
    while (v16 < *(v14 + 16))
    {
      sub_1D184586C(v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, v6, type metadata accessor for StaticServiceCharacteristicDoublet);
      sub_1D183E5B8(v6, a1, &v19);
      ++v16;
      sub_1D184580C(v6, type metadata accessor for StaticServiceCharacteristicDoublet);
      if (v15 == v16)
      {
        v7 = v19;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

LABEL_7:

  if (!*(v7 + 16))
  {

    return 0;
  }

  return v7;
}

uint64_t sub_1D183F3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v198 = a3;
  v5 = sub_1D1E66A7C();
  v199 = *(v5 - 8);
  v200 = v5;
  v6 = *(v199 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v189 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v188 = &v172 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v180 = &v172 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v179 = &v172 - v13;
  v14 = type metadata accessor for IconTextValueStringDataHolder();
  v196 = *(v14 - 8);
  v197 = v14;
  v15 = *(v196 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v187 = &v172 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v186 = &v172 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v178 = &v172 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v177 = &v172 - v22;
  v23 = sub_1D1E66ADC();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v195 = &v172 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D1E677DC();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v194 = &v172 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v203 = &v172 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v182 = &v172 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v184 = &v172 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v181 = &v172 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v174 = &v172 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v172 = &v172 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v173 = &v172 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v202 = &v172 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v46 - 8);
  v185 = &v172 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v183 = &v172 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v176 = &v172 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v175 = &v172 - v54;
  v55 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v193 = &v172 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v192 = &v172 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v191 = &v172 - v62;
  MEMORY[0x1EEE9AC00](v61);
  v190 = &v172 - v63;
  v64 = type metadata accessor for StaticAccessory(0);
  v65 = *(v64 - 8);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v68 = &v172 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69 - 8);
  v72 = &v172 - v71;
  v73 = type metadata accessor for StaticService(0);
  v74 = *(v73 - 8);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v201 = &v172 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v77 = sub_1D1742188(a1), (v78 & 1) != 0))
  {
    sub_1D184586C(*(a2 + 56) + *(v65 + 72) * v77, v68, type metadata accessor for StaticAccessory);
    v79 = *&v68[*(v64 + 80)];

    sub_1D184580C(v68, type metadata accessor for StaticAccessory);
    if (*(v79 + 16))
    {
      v80 = a1;
      v81 = sub_1D1742188(a1 + *(v55 + 20));
      v82 = v202;
      if (v83)
      {
        sub_1D184586C(*(v79 + 56) + *(v74 + 72) * v81, v72, type metadata accessor for StaticService);
        v84 = 0;
      }

      else
      {
        v84 = 1;
      }

      v86 = v203;
    }

    else
    {
      v84 = 1;
      v80 = a1;
      v82 = v202;
      v86 = v203;
    }

    (*(v74 + 56))(v72, v84, 1, v73);
    if ((*(v74 + 48))(v72, 1, v73) != 1)
    {
      v87 = v201;
      sub_1D18457A4(v72, v201, type metadata accessor for StaticService);
      v88 = v80 + *(v55 + 24);
      v89 = StaticCharacteristic.intValue.getter();
      if (v90)
      {
        v91 = *(v87 + *(v73 + 104));
        v92 = v200;
        if (v91 == 14)
        {
          sub_1D184586C(v80, v192, type metadata accessor for StaticServiceCharacteristicDoublet);
          v115 = v199;
          v116 = v181;
          (*(v199 + 56))(v181, 1, 1, v92);
          v117 = (v87 + *(v73 + 20));
          v118 = v117[1];
          v202 = *v117;
          v203 = 0x80000001D1EB64F0;

          sub_1D1E6776C();
          sub_1D1E66ACC();
          v195 = sub_1D1E6787C();
          v120 = v119;
          v121 = v184;
          sub_1D17783E0(v116, v184);
          v122 = *(v115 + 48);
          if (v122(v121, 1, v92) == 1)
          {
            v123 = v188;
            sub_1D1E66A6C();
            sub_1D1741A30(v116, &qword_1EC642590, qword_1D1E71260);
            v124 = v123;
            if (v122(v121, 1, v92) != 1)
            {
              sub_1D1741A30(v121, &qword_1EC642590, qword_1D1E71260);
            }
          }

          else
          {
            sub_1D1741A30(v116, &qword_1EC642590, qword_1D1E71260);
            v124 = v188;
            (*(v115 + 32))(v188, v121, v92);
          }

          v146 = v186;
          (*(v115 + 32))(v186, v124, v92);
          v147 = v197;
          v148 = (v146 + v197[5]);
          *v148 = 0xD000000000000013;
          v149 = v202;
          v148[1] = v203;
          v150 = (v146 + v147[6]);
          *v150 = v149;
          v150[1] = v118;
          v151 = (v146 + v147[7]);
          *v151 = v195;
          v151[1] = v120;
          v152 = v146 + v147[8];
          *(v152 + 8) = 0;
          *(v152 + 16) = 0;
          *v152 = 6;
          *(v152 + 24) = 0;
          v153 = v183;
          sub_1D18457A4(v146, v183, type metadata accessor for IconTextValueStringDataHolder);
          (*(v196 + 56))(v153, 0, 1, v147);
          v144 = v153;
          v145 = v192;
          goto LABEL_40;
        }

        if (v91 == 51)
        {
          sub_1D184586C(v80, v193, type metadata accessor for StaticServiceCharacteristicDoublet);
          v93 = v199;
          v94 = v182;
          (*(v199 + 56))(v182, 1, 1, v92);
          v95 = (v87 + *(v73 + 20));
          v96 = v95[1];
          v202 = *v95;
          v203 = 0x80000001D1EB6510;

          sub_1D1E6776C();
          sub_1D1E66ACC();
          v195 = sub_1D1E6787C();
          v98 = v97;
          sub_1D17783E0(v94, v86);
          v99 = *(v93 + 48);
          if (v99(v86, 1, v92) == 1)
          {
            v100 = v86;
            v101 = v189;
            sub_1D1E66A6C();
            sub_1D1741A30(v94, &qword_1EC642590, qword_1D1E71260);
            v102 = v101;
            if (v99(v100, 1, v92) != 1)
            {
              sub_1D1741A30(v100, &qword_1EC642590, qword_1D1E71260);
            }
          }

          else
          {
            sub_1D1741A30(v94, &qword_1EC642590, qword_1D1E71260);
            v102 = v189;
            (*(v93 + 32))(v189, v86, v92);
          }

          v135 = v187;
          (*(v93 + 32))(v187, v102, v92);
          v136 = v197;
          v137 = (v135 + v197[5]);
          v138 = v202;
          v139 = v203;
          *v137 = 0xD000000000000014;
          v137[1] = v139;
          v140 = (v135 + v136[6]);
          *v140 = v138;
          v140[1] = v96;
          v141 = (v135 + v136[7]);
          *v141 = v195;
          v141[1] = v98;
          v142 = v135 + v136[8];
          *(v142 + 8) = 0;
          *(v142 + 16) = 0;
          *v142 = 6;
          *(v142 + 24) = 0;
          v143 = v185;
          sub_1D18457A4(v135, v185, type metadata accessor for IconTextValueStringDataHolder);
          (*(v196 + 56))(v143, 0, 1, v136);
          v144 = v143;
          v145 = v193;
LABEL_40:
          sub_1D1B0D938(v144, v145);
          v114 = v201;
          return sub_1D184580C(v114, type metadata accessor for StaticService);
        }
      }

      else
      {
        v103 = v200;
        if (v89)
        {
          v104 = *(v87 + *(v73 + 104));
          if (v104 == 51)
          {
            sub_1D184586C(v80, v191, type metadata accessor for StaticServiceCharacteristicDoublet);
            v125 = v199;
            v126 = v172;
            (*(v199 + 56))(v172, 1, 1, v103);
            v127 = (v87 + *(v73 + 20));
            v128 = v127[1];
            v202 = *v127;
            v203 = 0x80000001D1EB6510;

            sub_1D1E6776C();
            sub_1D1E66ACC();
            v195 = sub_1D1E6787C();
            v130 = v129;
            v131 = v174;
            sub_1D17783E0(v126, v174);
            v132 = *(v125 + 48);
            if (v132(v131, 1, v103) == 1)
            {
              v133 = v180;
              sub_1D1E66A6C();
              sub_1D1741A30(v126, &qword_1EC642590, qword_1D1E71260);
              v134 = v133;
              if (v132(v131, 1, v103) != 1)
              {
                sub_1D1741A30(v131, &qword_1EC642590, qword_1D1E71260);
              }
            }

            else
            {
              sub_1D1741A30(v126, &qword_1EC642590, qword_1D1E71260);
              v134 = v180;
              (*(v125 + 32))(v180, v131, v103);
            }

            v163 = v178;
            (*(v125 + 32))(v178, v134, v103);
            v164 = v197;
            v165 = (v163 + v197[5]);
            v166 = v202;
            v167 = v203;
            *v165 = 0xD000000000000014;
            v165[1] = v167;
            v168 = (v163 + v164[6]);
            *v168 = v166;
            v168[1] = v128;
            v169 = (v163 + v164[7]);
            *v169 = v195;
            v169[1] = v130;
            v170 = v163 + v164[8];
            *(v170 + 8) = 0;
            *(v170 + 16) = 0;
            *v170 = 4;
            *(v170 + 24) = 0;
            v171 = v176;
            sub_1D18457A4(v163, v176, type metadata accessor for IconTextValueStringDataHolder);
            (*(v196 + 56))(v171, 0, 1, v164);
            v144 = v171;
            v145 = v191;
            goto LABEL_40;
          }

          if (v104 == 14)
          {
            sub_1D184586C(v80, v190, type metadata accessor for StaticServiceCharacteristicDoublet);
            v105 = v199;
            (*(v199 + 56))(v82, 1, 1, v103);
            v106 = (v87 + *(v73 + 20));
            v107 = v106[1];
            v202 = *v106;
            v203 = 0x80000001D1EB64F0;

            sub_1D1E6776C();
            sub_1D1E66ACC();
            v108 = sub_1D1E6787C();
            v110 = v109;
            v111 = v173;
            sub_1D17783E0(v82, v173);
            v112 = *(v105 + 48);
            if (v112(v111, 1, v103) == 1)
            {
              v113 = v179;
              sub_1D1E66A6C();
              sub_1D1741A30(v82, &qword_1EC642590, qword_1D1E71260);
              if (v112(v111, 1, v103) != 1)
              {
                sub_1D1741A30(v111, &qword_1EC642590, qword_1D1E71260);
              }
            }

            else
            {
              sub_1D1741A30(v82, &qword_1EC642590, qword_1D1E71260);
              v154 = *(v105 + 32);
              v113 = v179;
              v154(v179, v111, v103);
            }

            v155 = v177;
            (*(v199 + 32))(v177, v113, v103);
            v156 = v197;
            v157 = (v155 + v197[5]);
            *v157 = 0xD000000000000013;
            v158 = v202;
            v157[1] = v203;
            v159 = (v155 + v156[6]);
            *v159 = v158;
            v159[1] = v107;
            v160 = (v155 + v156[7]);
            *v160 = v108;
            v160[1] = v110;
            v161 = v155 + v156[8];
            *(v161 + 8) = 0;
            *(v161 + 16) = 0;
            *v161 = 2;
            *(v161 + 24) = 0;
            v162 = v175;
            sub_1D18457A4(v155, v175, type metadata accessor for IconTextValueStringDataHolder);
            (*(v196 + 56))(v162, 0, 1, v156);
            v144 = v162;
            v145 = v190;
            goto LABEL_40;
          }
        }
      }

      v114 = v87;
      return sub_1D184580C(v114, type metadata accessor for StaticService);
    }
  }

  else
  {
    (*(v74 + 56))(v72, 1, 1, v73);
  }

  return sub_1D1741A30(v72, &qword_1EC6436F0, &qword_1D1E99BC0);
}

unint64_t sub_1D1840708(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D18D8F20(MEMORY[0x1E69E7CC0]);
  v19 = v7;
  if (qword_1EC6421E0 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v9 = qword_1EC6450B0;
    v8 = *algn_1EC6450B8;
    v10 = qword_1EC6450C0;
    v11 = unk_1EC6450C8;
    v12 = qword_1EC6450D0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D1E739C0;
    *(v13 + 32) = v9;
    *(v13 + 40) = v8;
    *(v13 + 48) = v10;
    *(v13 + 56) = v11;
    *(v13 + 64) = v12;

    v14 = sub_1D1828A0C(v13, 1, 0, 0, a1);

    v15 = *(v14 + 16);
    if (!v15)
    {
      break;
    }

    v16 = 0;
    v7 = 0;
    while (v16 < *(v14 + 16))
    {
      sub_1D184586C(v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, v6, type metadata accessor for StaticServiceCharacteristicDoublet);
      sub_1D183F3BC(v6, a1, &v19);
      ++v16;
      sub_1D184580C(v6, type metadata accessor for StaticServiceCharacteristicDoublet);
      if (v15 == v16)
      {
        v7 = v19;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

LABEL_7:

  if (!*(v7 + 16))
  {

    return 0;
  }

  return v7;
}

uint64_t sub_1D1840974(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v295 = a1;
  v289 = a3;
  v4 = sub_1D1E66ADC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v286 = &v250 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E677DC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v285 = &v250 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E66A7C();
  v290 = *(v10 - 8);
  v291 = v10;
  v11 = *(v290 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v250 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v281 = &v250 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v279 = &v250 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v266 = &v250 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v265 = &v250 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v263 = &v250 - v23;
  v24 = type metadata accessor for IconTextValueStringDataHolder();
  v287 = *(v24 - 8);
  v288 = v24;
  v25 = *(v287 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v280 = &v250 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v278 = &v250 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v277 = &v250 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v264 = &v250 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v262 = &v250 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v261 = &v250 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v294 = &v250 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v275 = &v250 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v276 = &v250 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v272 = &v250 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v293 = &v250 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v270 = &v250 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v260 = &v250 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v256 = &v250 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v258 = &v250 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v253 = &v250 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v255 = &v250 - v60;
  MEMORY[0x1EEE9AC00](v59);
  v252 = &v250 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x1EEE9AC00](v62 - 8);
  v274 = &v250 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v273 = &v250 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v271 = &v250 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v259 = &v250 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v257 = &v250 - v73;
  MEMORY[0x1EEE9AC00](v72);
  v254 = &v250 - v74;
  v75 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v76 = *(*(v75 - 8) + 64);
  v77 = MEMORY[0x1EEE9AC00](v75);
  v284 = &v250 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x1EEE9AC00](v77);
  v283 = &v250 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v282 = &v250 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v269 = &v250 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v268 = &v250 - v86;
  MEMORY[0x1EEE9AC00](v85);
  v267 = &v250 - v87;
  v88 = type metadata accessor for StaticAccessory(0);
  v89 = *(v88 - 8);
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v92 = &v250 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v94 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93 - 8);
  v96 = &v250 - v95;
  v97 = type metadata accessor for StaticService(0);
  v98 = *(v97 - 8);
  v99 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v292 = &v250 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (v101 = sub_1D1742188(v295), (v102 & 1) == 0))
  {
    (*(v98 + 56))(v96, 1, 1, v97);
    return sub_1D1741A30(v96, &qword_1EC6436F0, &qword_1D1E99BC0);
  }

  v251 = v14;
  v103 = v295;
  sub_1D184586C(*(a2 + 56) + *(v89 + 72) * v101, v92, type metadata accessor for StaticAccessory);
  v104 = *&v92[*(v88 + 80)];

  sub_1D184580C(v92, type metadata accessor for StaticAccessory);
  if (*(v104 + 16))
  {
    v105 = v103;
    v106 = sub_1D1742188(v103 + *(v75 + 20));
    v107 = v294;
    if (v108)
    {
      sub_1D184586C(*(v104 + 56) + *(v98 + 72) * v106, v96, type metadata accessor for StaticService);
      v109 = 0;
    }

    else
    {
      v109 = 1;
    }
  }

  else
  {
    v109 = 1;
    v105 = v103;
    v107 = v294;
  }

  v111 = v293;

  (*(v98 + 56))(v96, v109, 1, v97);
  if ((*(v98 + 48))(v96, 1, v97) == 1)
  {
    return sub_1D1741A30(v96, &qword_1EC6436F0, &qword_1D1E99BC0);
  }

  v112 = v96;
  v113 = v292;
  sub_1D18457A4(v112, v292, type metadata accessor for StaticService);
  v114 = *(v113 + *(v97 + 112));
  if (v114 != 53)
  {
    v116 = v105 + *(v75 + 24);
    v117 = StaticCharacteristic.BOOLValue.getter();
    if (v117 == 2)
    {
      v118 = v291;
      switch(v114)
      {
        case 14:
          sub_1D184586C(v105, v283, type metadata accessor for StaticServiceCharacteristicDoublet);
          v156 = v290;
          v157 = v272;
          (*(v290 + 56))(v272, 1, 1, v118);
          v158 = *(v97 + 20);
          v159 = v157;
          v160 = (v113 + v158);
          v161 = v160[1];
          v294 = *v160;
          v295 = 0x80000001D1EB64F0;

          sub_1D1E6776C();
          sub_1D1E66ACC();
          v293 = sub_1D1E6787C();
          v163 = v162;
          v164 = v276;
          sub_1D17783E0(v159, v276);
          v165 = v118;
          v166 = *(v156 + 48);
          if (v166(v164, 1, v118) == 1)
          {
            v167 = v281;
            sub_1D1E66A6C();
            sub_1D1741A30(v159, &qword_1EC642590, qword_1D1E71260);
            v168 = v167;
            if (v166(v164, 1, v165) != 1)
            {
              sub_1D1741A30(v164, &qword_1EC642590, qword_1D1E71260);
            }
          }

          else
          {
            sub_1D1741A30(v159, &qword_1EC642590, qword_1D1E71260);
            v168 = v281;
            (*(v156 + 32))(v281, v164, v165);
          }

          v204 = v278;
          (*(v156 + 32))(v278, v168, v165);
          v205 = v288;
          v206 = (v204 + v288[5]);
          v207 = v294;
          v208 = v295;
          *v206 = 0xD000000000000013;
          v206[1] = v208;
          v209 = (v204 + v205[6]);
          *v209 = v207;
          v209[1] = v161;
          v210 = (v204 + v205[7]);
          *v210 = v293;
          v210[1] = v163;
          v211 = v204 + v205[8];
          *(v211 + 8) = 0;
          *(v211 + 16) = 0;
          *v211 = 6;
          *(v211 + 24) = 0;
          v212 = v273;
          sub_1D18457A4(v204, v273, type metadata accessor for IconTextValueStringDataHolder);
          (*(v287 + 56))(v212, 0, 1, v205);
          v190 = v212;
          v191 = v283;
          break;
        case 19:
          sub_1D184586C(v105, v282, type metadata accessor for StaticServiceCharacteristicDoublet);
          v145 = v290;
          v146 = v270;
          (*(v290 + 56))(v270, 1, 1, v118);
          v147 = (v113 + *(v97 + 20));
          v148 = v147[1];
          v294 = *v147;
          v295 = 0x80000001D1EBA5E0;

          v293 = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBA610);
          v150 = v149;
          sub_1D17783E0(v146, v111);
          v151 = v118;
          v152 = *(v145 + 48);
          if (v152(v111, 1, v118) == 1)
          {
            v153 = v111;
            v154 = v279;
            sub_1D1E66A6C();
            sub_1D1741A30(v146, &qword_1EC642590, qword_1D1E71260);
            v155 = v154;
            if (v152(v153, 1, v151) != 1)
            {
              sub_1D1741A30(v153, &qword_1EC642590, qword_1D1E71260);
            }
          }

          else
          {
            sub_1D1741A30(v146, &qword_1EC642590, qword_1D1E71260);
            v155 = v279;
            (*(v145 + 32))(v279, v111, v151);
          }

          v181 = v277;
          (*(v145 + 32))(v277, v155, v151);
          v182 = v288;
          v183 = (v181 + v288[5]);
          v184 = v294;
          v185 = v295;
          *v183 = 0xD00000000000002ELL;
          v183[1] = v185;
          v186 = (v181 + v182[6]);
          *v186 = v184;
          v186[1] = v148;
          v187 = (v181 + v182[7]);
          *v187 = v293;
          v187[1] = v150;
          v188 = v181 + v182[8];
          *(v188 + 8) = 0;
          *(v188 + 16) = 0;
          *v188 = 6;
          *(v188 + 24) = 0;
          v189 = v271;
          sub_1D18457A4(v181, v271, type metadata accessor for IconTextValueStringDataHolder);
          (*(v287 + 56))(v189, 0, 1, v182);
          v190 = v189;
          v191 = v282;
          break;
        case 51:
          sub_1D184586C(v105, v284, type metadata accessor for StaticServiceCharacteristicDoublet);
          v119 = v290;
          v120 = v275;
          (*(v290 + 56))(v275, 1, 1, v118);
          v121 = (v113 + *(v97 + 20));
          v122 = v121[1];
          v294 = *v121;
          v295 = 0x80000001D1EB6510;

          sub_1D1E6776C();
          sub_1D1E66ACC();
          v123 = sub_1D1E6787C();
          v125 = v124;
          sub_1D17783E0(v120, v107);
          v126 = *(v119 + 48);
          if (v126(v107, 1, v118) == 1)
          {
            v293 = v122;
            v127 = v125;
            v128 = v123;
            v129 = v120;
            v130 = v251;
            sub_1D1E66A6C();
            v131 = v129;
            v123 = v128;
            v125 = v127;
            v122 = v293;
            sub_1D1741A30(v131, &qword_1EC642590, qword_1D1E71260);
            if (v126(v107, 1, v118) != 1)
            {
              sub_1D1741A30(v107, &qword_1EC642590, qword_1D1E71260);
            }
          }

          else
          {
            sub_1D1741A30(v120, &qword_1EC642590, qword_1D1E71260);
            v130 = v251;
            (*(v119 + 32))(v251, v107, v118);
          }

          v213 = v280;
          (*(v119 + 32))(v280, v130, v118);
          v214 = v288;
          v215 = (v213 + v288[5]);
          v216 = v294;
          v217 = v295;
          *v215 = 0xD000000000000014;
          v215[1] = v217;
          v218 = (v213 + v214[6]);
          *v218 = v216;
          v218[1] = v122;
          v219 = (v213 + v214[7]);
          *v219 = v123;
          v219[1] = v125;
          v220 = v213 + v214[8];
          *(v220 + 8) = 0;
          *(v220 + 16) = 0;
          *v220 = 6;
          *(v220 + 24) = 0;
          v221 = v274;
          sub_1D18457A4(v213, v274, type metadata accessor for IconTextValueStringDataHolder);
          (*(v287 + 56))(v221, 0, 1, v214);
          v190 = v221;
          v191 = v284;
          break;
        default:
          goto LABEL_12;
      }
    }

    else
    {
      v132 = v291;
      if ((v117 & 1) == 0)
      {
        goto LABEL_12;
      }

      switch(v114)
      {
        case 14:
          sub_1D184586C(v105, v268, type metadata accessor for StaticServiceCharacteristicDoublet);
          v192 = v290;
          v193 = v253;
          (*(v290 + 56))(v253, 1, 1, v132);
          v194 = *(v97 + 20);
          v195 = v193;
          v196 = (v113 + v194);
          v197 = v196[1];
          v294 = *v196;
          v295 = 0x80000001D1EB64F0;

          sub_1D1E6776C();
          sub_1D1E66ACC();
          v293 = sub_1D1E6787C();
          v199 = v198;
          v200 = v258;
          sub_1D17783E0(v195, v258);
          v201 = *(v192 + 48);
          if (v201(v200, 1, v132) == 1)
          {
            v202 = v265;
            sub_1D1E66A6C();
            sub_1D1741A30(v195, &qword_1EC642590, qword_1D1E71260);
            v203 = v202;
            if (v201(v200, 1, v132) != 1)
            {
              sub_1D1741A30(v200, &qword_1EC642590, qword_1D1E71260);
            }
          }

          else
          {
            sub_1D1741A30(v195, &qword_1EC642590, qword_1D1E71260);
            v203 = v265;
            (*(v192 + 32))(v265, v200, v132);
          }

          v232 = v262;
          (*(v192 + 32))(v262, v203, v132);
          v233 = v288;
          v234 = (v232 + v288[5]);
          v235 = v294;
          v236 = v295;
          *v234 = 0xD000000000000013;
          v234[1] = v236;
          v237 = (v232 + v233[6]);
          *v237 = v235;
          v237[1] = v197;
          v238 = (v232 + v233[7]);
          *v238 = v293;
          v238[1] = v199;
          v239 = v232 + v233[8];
          *(v239 + 8) = 0;
          *(v239 + 16) = 0;
          *v239 = 2;
          *(v239 + 24) = 0;
          v240 = v257;
          sub_1D18457A4(v232, v257, type metadata accessor for IconTextValueStringDataHolder);
          (*(v287 + 56))(v240, 0, 1, v233);
          v190 = v240;
          v231 = &v297;
          break;
        case 51:
          sub_1D184586C(v105, v269, type metadata accessor for StaticServiceCharacteristicDoublet);
          v169 = v290;
          v170 = v256;
          (*(v290 + 56))(v256, 1, 1, v132);
          v171 = *(v97 + 20);
          v172 = v170;
          v173 = (v113 + v171);
          v174 = v173[1];
          v294 = *v173;
          v295 = 0x80000001D1EB6510;

          sub_1D1E6776C();
          sub_1D1E66ACC();
          v293 = sub_1D1E6787C();
          v176 = v175;
          v177 = v260;
          sub_1D17783E0(v172, v260);
          v178 = *(v169 + 48);
          if (v178(v177, 1, v132) == 1)
          {
            v179 = v266;
            sub_1D1E66A6C();
            sub_1D1741A30(v172, &qword_1EC642590, qword_1D1E71260);
            v180 = v179;
            if (v178(v177, 1, v132) != 1)
            {
              sub_1D1741A30(v177, &qword_1EC642590, qword_1D1E71260);
            }
          }

          else
          {
            sub_1D1741A30(v172, &qword_1EC642590, qword_1D1E71260);
            v180 = v266;
            (*(v169 + 32))(v266, v177, v132);
          }

          v222 = v264;
          (*(v169 + 32))(v264, v180, v132);
          v223 = v288;
          v224 = (v222 + v288[5]);
          v225 = v294;
          v226 = v295;
          *v224 = 0xD000000000000014;
          v224[1] = v226;
          v227 = (v222 + v223[6]);
          *v227 = v225;
          v227[1] = v174;
          v228 = (v222 + v223[7]);
          *v228 = v293;
          v228[1] = v176;
          v229 = v222 + v223[8];
          *(v229 + 8) = 0;
          *(v229 + 16) = 0;
          *v229 = 4;
          *(v229 + 24) = 0;
          v230 = v259;
          sub_1D18457A4(v222, v259, type metadata accessor for IconTextValueStringDataHolder);
          (*(v287 + 56))(v230, 0, 1, v223);
          v190 = v230;
          v231 = &v298;
          break;
        case 19:
          sub_1D184586C(v105, v267, type metadata accessor for StaticServiceCharacteristicDoublet);
          v133 = v290;
          v134 = v252;
          (*(v290 + 56))(v252, 1, 1, v132);
          v135 = v132;
          v136 = (v113 + *(v97 + 20));
          v137 = v136[1];
          v294 = *v136;
          v295 = 0x80000001D1EB64D0;

          v138 = static String.hfLocalized(_:)(0xD000000000000022, 0x80000001D1EBA6D0);
          v140 = v139;
          v141 = v255;
          sub_1D17783E0(v134, v255);
          v142 = *(v133 + 48);
          if (v142(v141, 1, v135) == 1)
          {
            v143 = v134;
            v144 = v263;
            sub_1D1E66A6C();
            sub_1D1741A30(v143, &qword_1EC642590, qword_1D1E71260);
            if (v142(v141, 1, v135) != 1)
            {
              sub_1D1741A30(v141, &qword_1EC642590, qword_1D1E71260);
            }
          }

          else
          {
            sub_1D1741A30(v134, &qword_1EC642590, qword_1D1E71260);
            v144 = v263;
            (*(v133 + 32))(v263, v141, v135);
          }

          v241 = v261;
          (*(v290 + 32))(v261, v144, v135);
          v242 = v288;
          v243 = (v241 + v288[5]);
          v244 = v294;
          v245 = v295;
          *v243 = 0xD000000000000010;
          v243[1] = v245;
          v246 = (v241 + v242[6]);
          *v246 = v244;
          v246[1] = v137;
          v247 = (v241 + v242[7]);
          *v247 = v138;
          v247[1] = v140;
          v248 = v241 + v242[8];
          *(v248 + 8) = 0;
          *(v248 + 16) = 0;
          *v248 = 1;
          *(v248 + 24) = 0;
          v249 = v254;
          sub_1D18457A4(v241, v254, type metadata accessor for IconTextValueStringDataHolder);
          (*(v287 + 56))(v249, 0, 1, v242);
          v190 = v249;
          v231 = &v296;
          break;
        default:
          goto LABEL_12;
      }

      v191 = *(v231 - 32);
    }

    sub_1D1B0D938(v190, v191);
    v115 = v292;
    return sub_1D184580C(v115, type metadata accessor for StaticService);
  }

LABEL_12:
  v115 = v113;
  return sub_1D184580C(v115, type metadata accessor for StaticService);
}

unint64_t sub_1D1842398(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D18D8F20(MEMORY[0x1E69E7CC0]);
  v19 = v7;
  if (qword_1EC6421E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v9 = qword_1EC6450D8;
    v8 = unk_1EC6450E0;
    v10 = qword_1EC6450E8;
    v11 = unk_1EC6450F0;
    v12 = qword_1EC6450F8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D1E739C0;
    *(v13 + 32) = v9;
    *(v13 + 40) = v8;
    *(v13 + 48) = v10;
    *(v13 + 56) = v11;
    *(v13 + 64) = v12;

    v14 = sub_1D1828A0C(v13, 1, 0, 0, a1);

    v15 = *(v14 + 16);
    if (!v15)
    {
      break;
    }

    v16 = 0;
    v7 = 0;
    while (v16 < *(v14 + 16))
    {
      sub_1D184586C(v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, v6, type metadata accessor for StaticServiceCharacteristicDoublet);
      sub_1D1840974(v6, a1, &v19);
      ++v16;
      sub_1D184580C(v6, type metadata accessor for StaticServiceCharacteristicDoublet);
      if (v15 == v16)
      {
        v7 = v19;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

LABEL_7:

  if (!*(v7 + 16))
  {

    return 0;
  }

  return v7;
}

uint64_t sub_1D1842604(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v116 = a3;
  v121 = a1;
  v4 = sub_1D1E66A7C();
  v119 = *(v4 - 8);
  v120 = v4;
  v5 = *(v119 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v112 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v106 = &v102 - v8;
  v9 = type metadata accessor for IconTextValueStringDataHolder();
  v114 = *(v9 - 8);
  v115 = v9;
  v10 = *(v114 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v113 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v102 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v109 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v108 = &v102 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v104 = &v102 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v102 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v110 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v105 = &v102 - v28;
  v29 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v117 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v111 = &v102 - v33;
  v34 = type metadata accessor for StaticAccessory(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v102 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v42 = &v102 - v41;
  v43 = type metadata accessor for StaticService(0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v118 = &v102 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (v47 = sub_1D1742188(v121), (v48 & 1) == 0))
  {
    (*(v44 + 56))(v42, 1, 1, v43);
    return sub_1D1741A30(v42, &qword_1EC6436F0, &qword_1D1E99BC0);
  }

  v103 = v23;
  v49 = v121;
  sub_1D184586C(*(a2 + 56) + *(v35 + 72) * v47, v38, type metadata accessor for StaticAccessory);
  v50 = *&v38[*(v34 + 80)];

  sub_1D184580C(v38, type metadata accessor for StaticAccessory);
  if (*(v50 + 16))
  {
    v51 = v49;
    v52 = sub_1D1742188(v49 + *(v29 + 20));
    if (v53)
    {
      sub_1D184586C(*(v50 + 56) + *(v44 + 72) * v52, v42, type metadata accessor for StaticService);
      v54 = 0;
    }

    else
    {
      v54 = 1;
    }
  }

  else
  {
    v54 = 1;
    v51 = v49;
  }

  v56 = v103;

  (*(v44 + 56))(v42, v54, 1, v43);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    return sub_1D1741A30(v42, &qword_1EC6436F0, &qword_1D1E99BC0);
  }

  v57 = v42;
  v58 = v118;
  sub_1D18457A4(v57, v118, type metadata accessor for StaticService);
  v59 = v51 + *(v29 + 24);
  v60 = StaticCharacteristic.intValue.getter();
  if (v61)
  {
    sub_1D184586C(v51, v117, type metadata accessor for StaticServiceCharacteristicDoublet);
    v63 = v119;
    v62 = v120;
    v64 = v108;
    (*(v119 + 56))(v108, 1, 1, v120);
    v65 = (v58 + *(v43 + 20));
    v66 = v65[1];
    v121 = *v65;
    v67 = v109;
    sub_1D17783E0(v64, v109);
    v68 = *(v63 + 48);
    v69 = v68(v67, 1, v62);

    if (v69 == 1)
    {
      v111 = v66;
      v70 = v58;
      v71 = v64;
      v72 = v112;
      sub_1D1E66A6C();
      v73 = v71;
      v58 = v70;
      v66 = v111;
      sub_1D1741A30(v73, &qword_1EC642590, qword_1D1E71260);
      if (v68(v67, 1, v62) != 1)
      {
        sub_1D1741A30(v67, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v64, &qword_1EC642590, qword_1D1E71260);
      v72 = v112;
      (*(v63 + 32))(v112, v67, v62);
    }

    v78 = v113;
    (*(v63 + 32))(v113, v72, v62);
    v79 = v115;
    v80 = (v78 + v115[5]);
    *v80 = 0xD000000000000022;
    v80[1] = 0x80000001D1EBA780;
    v81 = (v78 + v79[6]);
    *v81 = v121;
    v81[1] = v66;
    v82 = (v78 + v79[7]);
    *v82 = 0xD000000000000022;
    v82[1] = 0x80000001D1EBA780;
    v83 = v78 + v79[8];
    *(v83 + 8) = 0;
    *(v83 + 16) = 0;
    *v83 = 6;
    *(v83 + 24) = 0;
    v84 = v110;
    sub_1D18457A4(v78, v110, type metadata accessor for IconTextValueStringDataHolder);
    (*(v114 + 56))(v84, 0, 1, v79);
    v85 = v84;
    v86 = v117;
LABEL_28:
    sub_1D1B0D938(v85, v86);
    return sub_1D184580C(v58, type metadata accessor for StaticService);
  }

  v75 = v119;
  v74 = v120;
  if (v60 != 1)
  {
    v76 = v60;
    sub_1D184586C(v51, v111, type metadata accessor for StaticServiceCharacteristicDoublet);
    (*(v75 + 56))(v56, 1, 1, v74);
    if (v76)
    {
      v77 = v104;
      if (v76 == 2)
      {
        v117 = 0x80000001D1EBA7B0;
        v121 = 0xD000000000000027;
      }

      else
      {
        v121 = 0xD000000000000022;
        v117 = 0x80000001D1EBA780;
      }
    }

    else
    {
      v117 = 0xEE006C6C69662E6ELL;
      v121 = 0x65706F2E6B636F6CLL;
      v77 = v104;
    }

    v87 = (v58 + *(v43 + 20));
    v88 = v87[1];
    v113 = *v87;

    v89 = v103;
    sub_1D17783E0(v103, v77);
    v90 = *(v75 + 48);
    if (v90(v77, 1, v74) == 1)
    {
      v91 = v106;
      sub_1D1E66A6C();
      sub_1D1741A30(v89, &qword_1EC642590, qword_1D1E71260);
      v92 = v91;
      if (v90(v77, 1, v74) != 1)
      {
        sub_1D1741A30(v77, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v89, &qword_1EC642590, qword_1D1E71260);
      v92 = v106;
      (*(v75 + 32))(v106, v77, v74);
    }

    v93 = v107;
    (*(v75 + 32))(v107, v92, v74);
    v94 = v115;
    v95 = (v93 + v115[5]);
    v96 = v121;
    v97 = v117;
    *v95 = v121;
    v95[1] = v97;
    v98 = (v93 + v94[6]);
    *v98 = v113;
    v98[1] = v88;
    v99 = (v93 + v94[7]);
    *v99 = v96;
    v99[1] = v97;
    v100 = v93 + v94[8];
    *(v100 + 8) = 0;
    *(v100 + 16) = 0;
    *v100 = 3;
    *(v100 + 24) = 0;
    v101 = v105;
    sub_1D18457A4(v93, v105, type metadata accessor for IconTextValueStringDataHolder);
    (*(v114 + 56))(v101, 0, 1, v94);
    v85 = v101;
    v86 = v111;
    goto LABEL_28;
  }

  return sub_1D184580C(v58, type metadata accessor for StaticService);
}

unint64_t sub_1D18430E0(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D18D8F20(MEMORY[0x1E69E7CC0]);
  v19 = v7;
  if (qword_1EC6421F0 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v9 = qword_1EC645100;
    v8 = *algn_1EC645108;
    v10 = qword_1EC645110;
    v11 = unk_1EC645118;
    v12 = qword_1EC645120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D1E739C0;
    *(v13 + 32) = v9;
    *(v13 + 40) = v8;
    *(v13 + 48) = v10;
    *(v13 + 56) = v11;
    *(v13 + 64) = v12;

    v14 = sub_1D1828A0C(v13, 1, 0, 0, a1);

    v15 = *(v14 + 16);
    if (!v15)
    {
      break;
    }

    v16 = 0;
    v7 = 0;
    while (v16 < *(v14 + 16))
    {
      sub_1D184586C(v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, v6, type metadata accessor for StaticServiceCharacteristicDoublet);
      sub_1D1842604(v6, a1, &v19);
      ++v16;
      sub_1D184580C(v6, type metadata accessor for StaticServiceCharacteristicDoublet);
      if (v15 == v16)
      {
        v7 = v19;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

LABEL_7:

  if (!*(v7 + 16))
  {

    return 0;
  }

  return v7;
}

uint64_t sub_1D184334C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v149 = a3;
  v153 = a1;
  v151 = sub_1D1E66A7C();
  v146 = *(v151 - 8);
  v4 = *(v146 + 64);
  v5 = MEMORY[0x1EEE9AC00](v151);
  v145 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v131 = &v129 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v130 = &v129 - v9;
  v10 = type metadata accessor for IconTextValueStringDataHolder();
  v147 = *(v10 - 8);
  v148 = v10;
  v11 = *(v147 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v144 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v139 = &v129 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v138 = &v129 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v152 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v142 = &v129 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v135 = &v129 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v133 = &v129 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v134 = &v129 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v132 = &v129 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v143 = &v129 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v137 = &v129 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v136 = &v129 - v36;
  v37 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v150 = &v129 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v141 = &v129 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v140 = &v129 - v43;
  v44 = type metadata accessor for StaticAccessory(0);
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v129 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v52 = &v129 - v51;
  v53 = type metadata accessor for StaticService(0);
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v129 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v58 = sub_1D1742188(v153), (v59 & 1) != 0))
  {
    sub_1D184586C(*(a2 + 56) + *(v45 + 72) * v58, v48, type metadata accessor for StaticAccessory);
    v60 = *&v48[*(v44 + 80)];

    sub_1D184580C(v48, type metadata accessor for StaticAccessory);
    if (*(v60 + 16))
    {
      v61 = v153;
      v62 = sub_1D1742188(v153 + *(v37 + 20));
      v63 = v57;
      if (v64)
      {
        sub_1D184586C(*(v60 + 56) + *(v54 + 72) * v62, v52, type metadata accessor for StaticService);
        v65 = 0;
      }

      else
      {
        v65 = 1;
      }
    }

    else
    {
      v65 = 1;
      v63 = v57;
      v61 = v153;
    }

    v67 = v152;

    (*(v54 + 56))(v52, v65, 1, v53);
    if ((*(v54 + 48))(v52, 1, v53) != 1)
    {
      sub_1D18457A4(v52, v63, type metadata accessor for StaticService);
      v68 = v61 + *(v37 + 24);
      v69 = StaticCharacteristic.intValue.getter();
      if (v70)
      {
        sub_1D184586C(v61, v150, type metadata accessor for StaticServiceCharacteristicDoublet);
        v71 = v146;
        v72 = v142;
        v73 = v151;
        (*(v146 + 56))(v142, 1, 1, v151);
        v74 = *(v53 + 20);
        v75 = v71;
        v76 = (v63 + v74);
        v77 = v76[1];
        v152 = *v76;
        v153 = v63;
        sub_1D17783E0(v72, v67);
        v78 = *(v75 + 48);
        v79 = v78(v67, 1, v73);

        v80 = v67;
        if (v79 == 1)
        {
          v81 = v145;
          sub_1D1E66A6C();
          sub_1D1741A30(v72, &qword_1EC642590, qword_1D1E71260);
          if (v78(v80, 1, v73) != 1)
          {
            sub_1D1741A30(v80, &qword_1EC642590, qword_1D1E71260);
          }
        }

        else
        {
          sub_1D1741A30(v72, &qword_1EC642590, qword_1D1E71260);
          v81 = v145;
          (*(v75 + 32))(v145, v80, v73);
        }

        v94 = v144;
        (*(v75 + 32))(v144, v81, v73);
        v95 = v148;
        v96 = (v94 + v148[5]);
        *v96 = 0xD000000000000015;
        v96[1] = 0x80000001D1EB64B0;
        v97 = (v94 + v95[6]);
        *v97 = v152;
        v97[1] = v77;
        v98 = (v94 + v95[7]);
        *v98 = 0xD000000000000015;
        v98[1] = 0x80000001D1EB64B0;
        v99 = v94 + v95[8];
        *(v99 + 8) = 0;
        *(v99 + 16) = 0;
        *v99 = 6;
        *(v99 + 24) = 0;
        v100 = v143;
        sub_1D18457A4(v94, v143, type metadata accessor for IconTextValueStringDataHolder);
        (*(v147 + 56))(v100, 0, 1, v95);
        sub_1D1B0D938(v100, v150);
        v101 = v153;
        return sub_1D184580C(v101, type metadata accessor for StaticService);
      }

      v82 = v151;
      if (v69 >= 3)
      {
        if (v69 == 3)
        {
          sub_1D184586C(v153, v140, type metadata accessor for StaticServiceCharacteristicDoublet);
          v102 = v146;
          v103 = v132;
          (*(v146 + 56))(v132, 1, 1, v82);
          v104 = *(v53 + 20);
          v105 = v103;
          v106 = (v63 + v104);
          v107 = v106[1];
          v153 = *v106;
          v108 = v134;
          sub_1D17783E0(v105, v134);
          v109 = *(v102 + 48);
          v110 = v109(v108, 1, v82);

          if (v110 == 1)
          {
            v152 = v107;
            v111 = v105;
            v112 = v130;
            sub_1D1E66A6C();
            v107 = v152;
            sub_1D1741A30(v111, &qword_1EC642590, qword_1D1E71260);
            if (v109(v108, 1, v82) != 1)
            {
              sub_1D1741A30(v108, &qword_1EC642590, qword_1D1E71260);
            }
          }

          else
          {
            sub_1D1741A30(v105, &qword_1EC642590, qword_1D1E71260);
            v112 = v130;
            (*(v102 + 32))(v130, v108, v82);
          }

          v113 = v138;
          (*(v102 + 32))(v138, v112, v82);
          v114 = v148;
          v115 = (v113 + v148[5]);
          *v115 = 0xD000000000000015;
          v115[1] = 0x80000001D1EB6120;
          v116 = (v113 + v114[6]);
          *v116 = v153;
          v116[1] = v107;
          v117 = (v113 + v114[7]);
          *v117 = 0xD000000000000015;
          v117[1] = 0x80000001D1EB6120;
          v118 = v113 + v114[8];
          *(v118 + 8) = 0;
          *(v118 + 16) = 0;
          *v118 = 5;
          *(v118 + 24) = 0;
          v119 = v136;
          sub_1D18457A4(v113, v136, type metadata accessor for IconTextValueStringDataHolder);
          (*(v147 + 56))(v119, 0, 1, v114);
          v120 = v119;
          v121 = v140;
          goto LABEL_31;
        }

        if (v69 == 4)
        {
          sub_1D184586C(v153, v141, type metadata accessor for StaticServiceCharacteristicDoublet);
          v83 = v146;
          v84 = v133;
          (*(v146 + 56))(v133, 1, 1, v82);
          v85 = *(v53 + 20);
          v86 = v84;
          v87 = (v63 + v85);
          v88 = v87[1];
          v153 = *v87;
          v89 = v135;
          sub_1D17783E0(v86, v135);
          v90 = *(v83 + 48);
          v91 = v90(v89, 1, v82);

          if (v91 == 1)
          {
            v152 = v88;
            v92 = v86;
            v93 = v131;
            sub_1D1E66A6C();
            v88 = v152;
            sub_1D1741A30(v92, &qword_1EC642590, qword_1D1E71260);
            if (v90(v89, 1, v82) != 1)
            {
              sub_1D1741A30(v89, &qword_1EC642590, qword_1D1E71260);
            }
          }

          else
          {
            sub_1D1741A30(v86, &qword_1EC642590, qword_1D1E71260);
            v93 = v131;
            (*(v83 + 32))(v131, v89, v82);
          }

          v122 = v139;
          (*(v83 + 32))(v139, v93, v82);
          v123 = v148;
          v124 = (v122 + v148[5]);
          *v124 = 0xD000000000000015;
          v124[1] = 0x80000001D1EB64B0;
          v125 = (v122 + v123[6]);
          *v125 = v153;
          v125[1] = v88;
          v126 = (v122 + v123[7]);
          *v126 = 0xD000000000000015;
          v126[1] = 0x80000001D1EB64B0;
          v127 = v122 + v123[8];
          *v127 = 0;
          *(v127 + 8) = 0;
          *(v127 + 24) = 0;
          *(v127 + 16) = 0;
          v128 = v137;
          sub_1D18457A4(v122, v137, type metadata accessor for IconTextValueStringDataHolder);
          (*(v147 + 56))(v128, 0, 1, v123);
          v120 = v128;
          v121 = v141;
LABEL_31:
          sub_1D1B0D938(v120, v121);
        }
      }

      v101 = v63;
      return sub_1D184580C(v101, type metadata accessor for StaticService);
    }
  }

  else
  {
    (*(v54 + 56))(v52, 1, 1, v53);
  }

  return sub_1D1741A30(v52, &qword_1EC6436F0, &qword_1D1E99BC0);
}

unint64_t sub_1D18440F4(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D18D8F20(MEMORY[0x1E69E7CC0]);
  v19 = v7;
  if (qword_1EC6421F8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v9 = qword_1EC645128;
    v8 = unk_1EC645130;
    v10 = qword_1EC645138;
    v11 = unk_1EC645140;
    v12 = qword_1EC645148;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D1E739C0;
    *(v13 + 32) = v9;
    *(v13 + 40) = v8;
    *(v13 + 48) = v10;
    *(v13 + 56) = v11;
    *(v13 + 64) = v12;

    v14 = sub_1D1828A0C(v13, 1, 0, 0, a1);

    v15 = *(v14 + 16);
    if (!v15)
    {
      break;
    }

    v16 = 0;
    v7 = 0;
    while (v16 < *(v14 + 16))
    {
      sub_1D184586C(v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, v6, type metadata accessor for StaticServiceCharacteristicDoublet);
      sub_1D184334C(v6, a1, &v19);
      ++v16;
      sub_1D184580C(v6, type metadata accessor for StaticServiceCharacteristicDoublet);
      if (v15 == v16)
      {
        v7 = v19;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

LABEL_7:

  if (!*(v7 + 16))
  {

    return 0;
  }

  return v7;
}

uint64_t sub_1D1844360(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for IconTextValueStringDataHolder();
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v47 - v15;
  v48 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v50 = *(v48 - 8);
  v17 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452E8, &unk_1D1E797E0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v47 - v22;
  v24 = -1 << *(a1 + 32);
  v25 = ~v24;
  v26 = *(a1 + 64);
  v27 = -v24;
  v51 = a1;
  v52 = a1 + 64;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v53 = v25;
  v54 = 0;
  v55 = v28 & v26;
  v56 = a2;
  v57 = a3;

  v49 = a3;

  while (1)
  {
    sub_1D1ABF99C(v23);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452F0, &qword_1D1E96C50);
    if ((*(*(v30 - 8) + 48))(v23, 1, v30) == 1)
    {
      sub_1D1716918();
    }

    v31 = *(v30 + 48);
    sub_1D18457A4(v23, v19, type metadata accessor for StaticServiceCharacteristicDoublet);
    sub_1D18457A4(&v23[v31], v16, type metadata accessor for IconTextValueStringDataHolder);
    v32 = *a5;
    v34 = sub_1D171D710(v19);
    v35 = v32[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      break;
    }

    v38 = v33;
    if (v32[3] >= v37)
    {
      if (a4)
      {
        v42 = *a5;
        if ((v33 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D173859C();
        v42 = *a5;
        if ((v38 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      v29 = *(v58 + 72) * v34;
      sub_1D184586C(v42[7] + v29, v14, type metadata accessor for IconTextValueStringDataHolder);
      sub_1D184580C(v16, type metadata accessor for IconTextValueStringDataHolder);
      sub_1D184580C(v19, type metadata accessor for StaticServiceCharacteristicDoublet);
      sub_1D1845740(v14, v42[7] + v29);
      a4 = 1;
    }

    else
    {
      sub_1D17276DC(v37, a4 & 1);
      v39 = *a5;
      v40 = sub_1D171D710(v19);
      if ((v38 & 1) != (v41 & 1))
      {
        goto LABEL_21;
      }

      v34 = v40;
      v42 = *a5;
      if (v38)
      {
        goto LABEL_5;
      }

LABEL_14:
      v42[(v34 >> 6) + 8] |= 1 << v34;
      sub_1D18457A4(v19, v42[6] + *(v50 + 72) * v34, type metadata accessor for StaticServiceCharacteristicDoublet);
      sub_1D18457A4(v16, v42[7] + *(v58 + 72) * v34, type metadata accessor for IconTextValueStringDataHolder);
      v43 = v42[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_20;
      }

      v42[2] = v45;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

unint64_t _s13HomeDataModel18SecuritySummarizerO23securityIssueDictionary4fromSDyAA34StaticServiceCharacteristicDoubletVAA019IconTextValueStringB6HolderVGSDy10Foundation4UUIDVAA0J9AccessoryVG_tFZ_0(uint64_t a1)
{
  v2 = sub_1D18D8F20(MEMORY[0x1E69E7CC0]);
  v3 = sub_1D183F150(a1);
  if (v3)
  {
    v4 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v2;
    sub_1D1844360(v4, sub_1D183D9A4, 0, isUniquelyReferenced_nonNull_native, &v19);

    v2 = v19;
  }

  v6 = sub_1D1840708(a1);
  if (v6)
  {
    v7 = v6;
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v19 = v2;
    sub_1D1844360(v7, sub_1D183D9A4, 0, v8, &v19);

    v2 = v19;
  }

  v9 = sub_1D1842398(a1);
  if (v9)
  {
    v10 = v9;
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v19 = v2;
    sub_1D1844360(v10, sub_1D183D9A4, 0, v11, &v19);

    v2 = v19;
  }

  v12 = sub_1D18430E0(a1);
  if (v12)
  {
    v13 = v12;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v19 = v2;
    sub_1D1844360(v13, sub_1D183D9A4, 0, v14, &v19);

    v2 = v19;
  }

  v15 = sub_1D18440F4(a1);
  if (v15)
  {
    v16 = v15;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = v2;
    sub_1D1844360(v16, sub_1D183D9A4, 0, v17, &v19);

    return v19;
  }

  return v2;
}

unint64_t sub_1D1844998()
{
  result = qword_1EC645198;
  if (!qword_1EC645198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645198);
  }

  return result;
}

unint64_t sub_1D18449EC()
{
  result = qword_1EC6451A0;
  if (!qword_1EC6451A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6451A0);
  }

  return result;
}

unint64_t sub_1D1844A40()
{
  result = qword_1EC6451A8;
  if (!qword_1EC6451A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6451A8);
  }

  return result;
}

unint64_t sub_1D1844A94()
{
  result = qword_1EC6451B0;
  if (!qword_1EC6451B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6451B0);
  }

  return result;
}

unint64_t sub_1D1844AE8()
{
  result = qword_1EC6451B8;
  if (!qword_1EC6451B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6451B8);
  }

  return result;
}

unint64_t sub_1D1844B3C()
{
  result = qword_1EC6451C0;
  if (!qword_1EC6451C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6451C0);
  }

  return result;
}

unint64_t sub_1D1844B90()
{
  result = qword_1EC6451C8;
  if (!qword_1EC6451C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6451C8);
  }

  return result;
}

unint64_t sub_1D1844BE4()
{
  result = qword_1EC6451D0;
  if (!qword_1EC6451D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6451D0);
  }

  return result;
}

unint64_t sub_1D1844C38()
{
  result = qword_1EC6451D8;
  if (!qword_1EC6451D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6451D8);
  }

  return result;
}

unint64_t sub_1D1844C90()
{
  result = qword_1EC645228;
  if (!qword_1EC645228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC645230, &qword_1D1E78F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645228);
  }

  return result;
}

unint64_t sub_1D1844CF4()
{
  result = qword_1EC645238;
  if (!qword_1EC645238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645238);
  }

  return result;
}

unint64_t sub_1D1844DFC()
{
  result = qword_1EC645240;
  if (!qword_1EC645240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645240);
  }

  return result;
}

unint64_t sub_1D1844E54()
{
  result = qword_1EC645248;
  if (!qword_1EC645248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645248);
  }

  return result;
}

unint64_t sub_1D1844EAC()
{
  result = qword_1EC645250;
  if (!qword_1EC645250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645250);
  }

  return result;
}

unint64_t sub_1D1844F04()
{
  result = qword_1EC645258;
  if (!qword_1EC645258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645258);
  }

  return result;
}

unint64_t sub_1D1844F5C()
{
  result = qword_1EC645260;
  if (!qword_1EC645260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645260);
  }

  return result;
}

unint64_t sub_1D1844FB4()
{
  result = qword_1EC645268;
  if (!qword_1EC645268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645268);
  }

  return result;
}

unint64_t sub_1D184500C()
{
  result = qword_1EC645270;
  if (!qword_1EC645270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645270);
  }

  return result;
}

unint64_t sub_1D1845064()
{
  result = qword_1EC645278;
  if (!qword_1EC645278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645278);
  }

  return result;
}

unint64_t sub_1D18450BC()
{
  result = qword_1EC645280;
  if (!qword_1EC645280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645280);
  }

  return result;
}

unint64_t sub_1D1845114()
{
  result = qword_1EC645288;
  if (!qword_1EC645288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645288);
  }

  return result;
}

unint64_t sub_1D184516C()
{
  result = qword_1EC645290;
  if (!qword_1EC645290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645290);
  }

  return result;
}

unint64_t sub_1D18451C4()
{
  result = qword_1EC645298;
  if (!qword_1EC645298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645298);
  }

  return result;
}

unint64_t sub_1D184521C()
{
  result = qword_1EC6452A0;
  if (!qword_1EC6452A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6452A0);
  }

  return result;
}

unint64_t sub_1D1845274()
{
  result = qword_1EC6452A8;
  if (!qword_1EC6452A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6452A8);
  }

  return result;
}

unint64_t sub_1D18452CC()
{
  result = qword_1EC6452B0;
  if (!qword_1EC6452B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6452B0);
  }

  return result;
}

unint64_t sub_1D1845324()
{
  result = qword_1EC6452B8;
  if (!qword_1EC6452B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6452B8);
  }

  return result;
}

unint64_t sub_1D184537C()
{
  result = qword_1EC6452C0;
  if (!qword_1EC6452C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6452C0);
  }

  return result;
}

unint64_t sub_1D18453D4()
{
  result = qword_1EC6452C8;
  if (!qword_1EC6452C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6452C8);
  }

  return result;
}

unint64_t sub_1D184542C()
{
  result = qword_1EC6452D0;
  if (!qword_1EC6452D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6452D0);
  }

  return result;
}

uint64_t sub_1D1845480(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001D1EBA9F0 == a2;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617261476E65706FLL && a2 == 0xEE00726F6F446567 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F6F446E65706FLL && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656B636F6C6E75 && a2 == 0xEC000000726F6F44 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646E69576E65706FLL && a2 == 0xEA0000000000776FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D1EBAA10 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F707365726E6F6ELL && a2 == 0xED0000657669736ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D1845740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconTextValueStringDataHolder();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D18457A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D184580C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D184586C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s13HomeDataModel17ValueAccumulatorsO12doubleValues4fromSaySdGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(v5 + 24);
    v10 = &v7[v9 + *(type metadata accessor for StaticCharacteristic() + 24)];
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    v13 = MEMORY[0x1E69E7CC0];
    v20 = xmmword_1D1E739C0;
    while (1)
    {
      sub_1D1845D30(v11, v7);
      if (v10[16] == 7)
      {
        v14 = *v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643480, &qword_1D1E71900);
        inited = swift_initStackObject();
        *(inited + 16) = v20;
        *(inited + 32) = v14;
        v16 = *(v13 + 16);
        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || (v18 = *(v13 + 24) >> 1, v18 <= v16))
        {
          result = sub_1D177D4E8(result, v16 + 1, 1, v13);
          v13 = result;
          v18 = *(result + 24) >> 1;
        }

        v19 = *(v13 + 16);
        if (v18 <= v19)
        {
          __break(1u);
          return result;
        }

        *(v13 + 8 * v19 + 32) = *(inited + 32);

        ++*(v13 + 16);
      }

      sub_1D1757BF8(v7);
      v11 += v12;
      if (!--v8)
      {
        return v13;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t _s13HomeDataModel17ValueAccumulatorsO9intValues4fromSaySiGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = *(v5 + 24);
  v10 = &v7[v9 + *(type metadata accessor for StaticCharacteristic() + 24)];
  v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v12 = *(v3 + 72);
  v13 = MEMORY[0x1E69E7CC0];
  v21 = xmmword_1D1E739C0;
  while (1)
  {
    result = sub_1D1845D30(v11, v7);
    v17 = *v10;
    v18 = v10[16];
    if (v18 > 3)
    {
      if (v18 == 4)
      {
        if (v17 < 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v18 != 6 && v18 != 5)
        {
          goto LABEL_6;
        }

        v17 = v17;
      }
    }

    else
    {
      switch(v18)
      {
        case 1u:
          v17 = *v10;
          break;
        case 2u:
          v17 = *v10;
          break;
        case 3u:
          v17 = v17;
          break;
        default:
          goto LABEL_6;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643238, &qword_1D1E71690);
    inited = swift_initStackObject();
    *(inited + 16) = v21;
    *(inited + 32) = v17;
    v20 = *(v13 + 16);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v15 = *(v13 + 24) >> 1, v15 <= v20))
    {
      result = sub_1D177D8E4(result, v20 + 1, 1, v13);
      v13 = result;
      v15 = *(result + 24) >> 1;
    }

    v16 = *(v13 + 16);
    if (v15 <= v16)
    {
      break;
    }

    *(v13 + 8 * v16 + 32) = *(inited + 32);

    ++*(v13 + 16);
LABEL_6:
    sub_1D1757BF8(v7);
    v11 += v12;
    if (!--v8)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D1845D30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticServiceCharacteristicDoublet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1D1845D94()
{
  objc_sync_enter(v0);
  v1 = OBJC_IVAR____TtC13HomeDataModelP33_06687A056795A35B04F0AB8E8B09184924_AlarmConnectionProvider__alarmManagerServiceConnection;
  v2 = *&v0[OBJC_IVAR____TtC13HomeDataModelP33_06687A056795A35B04F0AB8E8B09184924_AlarmConnectionProvider__alarmManagerServiceConnection];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithMachServiceName:*MEMORY[0x1E6997438] options:4096];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = sub_1D1846464;
    v16 = v5;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_1D1845F94;
    v14 = &block_descriptor_22;
    v6 = _Block_copy(&v11);

    [v4 setInterruptionHandler_];
    _Block_release(v6);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = sub_1D1846498;
    v16 = v7;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_1D1845F94;
    v14 = &block_descriptor_26;
    v8 = _Block_copy(&v11);

    [v4 setInvalidationHandler_];
    _Block_release(v8);
    v9 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;
  }

  objc_sync_exit(v0);
  return v3;
}

uint64_t sub_1D1845F94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_1D1846088()
{
  objc_sync_enter(v0);
  v1 = OBJC_IVAR____TtC13HomeDataModelP33_06687A056795A35B04F0AB8E8B09184924_TimerConnectionProvider__timerManagerServiceConnection;
  v2 = *&v0[OBJC_IVAR____TtC13HomeDataModelP33_06687A056795A35B04F0AB8E8B09184924_TimerConnectionProvider__timerManagerServiceConnection];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithMachServiceName:*MEMORY[0x1E6997458] options:4096];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = sub_1D1846428;
    v16 = v5;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_1D1845F94;
    v14 = &block_descriptor_5;
    v6 = _Block_copy(&v11);

    [v4 setInterruptionHandler_];
    _Block_release(v6);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = sub_1D1846494;
    v16 = v7;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_1D1845F94;
    v14 = &block_descriptor_16_0;
    v8 = _Block_copy(&v11);

    [v4 setInvalidationHandler_];
    _Block_release(v8);
    v9 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;
  }

  objc_sync_exit(v0);
  return v3;
}

void sub_1D1846288(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *a2;
    v5 = *&Strong[*a2];
    *&Strong[v4] = 0;
  }
}

id sub_1D184634C(char *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  *&a1[*a3] = 0;
  v5.receiver = a1;
  v5.super_class = a4(0);
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1D18463B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t CoordinationSnapshot.multipleUpdatesNeeded(for:)(unint64_t a1)
{
  v3 = *v1;
  if (!*(v3 + 16))
  {
    return 2;
  }

  v4 = a1;
  v5 = sub_1D1742188(a1);
  if ((v6 & 1) == 0)
  {
    return 2;
  }

  v7 = *(v3 + 56) + 32 * v5;
  v8 = *(v7 + 16);
  if (v8 != 4)
  {
    sub_1D1741C70(*(v7 + 16));
    sub_1D1757B18(v8);
    sub_1D1757B18(4);
    return 2;
  }

  v9 = *v7;
  v10 = *(v7 + 8);
  v11 = *(v7 + 24);

  sub_1D1741C70(4);
  sub_1D1741C70(v11);
  sub_1D1757B18(4);
  sub_1D1757B18(4);
  if (v11 != 4)
  {
    sub_1D1741C70(v11);
    sub_1D1757B18(v11);
    sub_1D1757B18(4);

    sub_1D1757B18(4);
    sub_1D1757B18(v11);
    return 2;
  }

  sub_1D1757B18(4);
  sub_1D1757B18(4);
  if (qword_1EE07B1D8 != -1)
  {
    goto LABEL_86;
  }

LABEL_6:
  v12 = qword_1EE07B1E0;
  v13 = sub_1D187845C(v4);
  v14 = v13;
  if (v13 >> 62)
  {
    if (sub_1D1E6873C())
    {
      goto LABEL_8;
    }

LABEL_88:

    sub_1D1757B18(4);
    sub_1D1757B18(4);

    return 2;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_88;
  }

LABEL_8:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1D3891EF0](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      v19 = sub_1D1E6873C();
      goto LABEL_14;
    }

    v15 = *(v14 + 32);
  }

  v2 = v15;

  v16 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_currentHome;
  swift_beginAccess();
  v17 = *(v12 + v16);
  v61 = v2;
  if (!v17)
  {
    v20 = 0;
    goto LABEL_52;
  }

  v56 = v16;
  v57 = v12;
  v58 = v4;
  v18 = [v17 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v12 = sub_1D1E67C1C();

  v63 = MEMORY[0x1E69E7CC0];
  if (v12 >> 62)
  {
    goto LABEL_94;
  }

  v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  v20 = MEMORY[0x1E69E7CC0];
  v59 = v10;
  v60 = v9;
  if (v19)
  {
    v21 = 0;
    v62 = (v12 & 0xC000000000000001);
    v2 = v12 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v62)
      {
        v22 = MEMORY[0x1D3891EF0](v21, v12);
      }

      else
      {
        if (v21 >= *(v2 + 16))
        {
          goto LABEL_83;
        }

        v22 = *(v12 + 8 * v21 + 32);
      }

      v9 = v22;
      v4 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        swift_once();
        goto LABEL_6;
      }

      v10 = v19;
      v23 = v12;
      v24 = [v22 category];
      v25 = [v24 categoryType];

      v26 = sub_1D1E6781C();
      v28 = v27;

      if (v26 == 0xD000000000000024 && 0x80000001D1EBB040 == v28)
      {
        break;
      }

      v30 = sub_1D1E6904C();

      v19 = v10;
      if (v30)
      {
        goto LABEL_30;
      }

LABEL_18:
      v12 = v23;
      ++v21;
      if (v4 == v19)
      {
        v32 = v63;
        v10 = v59;
        v9 = v60;
        v2 = v61;
        v20 = MEMORY[0x1E69E7CC0];
        goto LABEL_36;
      }
    }

    v19 = v10;
LABEL_30:
    sub_1D1E6896C();
    v31 = *(v63 + 16);
    sub_1D1E689AC();
    sub_1D1E689BC();
    sub_1D1E6897C();
    goto LABEL_18;
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_36:

  v63 = v20;
  if (v32 < 0 || (v32 & 0x4000000000000000) != 0)
  {
    v4 = sub_1D1E6873C();
    if (v4)
    {
LABEL_39:
      v33 = 0;
      v2 = v32 & 0xC000000000000001;
      v10 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      while (1)
      {
        if (v2)
        {
          v34 = MEMORY[0x1D3891EF0](v33, v32);
        }

        else
        {
          if (v33 >= *(v32 + 16))
          {
            goto LABEL_85;
          }

          v34 = *(v32 + 8 * v33 + 32);
        }

        v9 = v34;
        v35 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_84;
        }

        v36 = [v34 softwareVersion];
        if (v36 && (v37 = v36, v38 = [v36 majorVersion], v37, v38 < 18))
        {
          sub_1D1E6896C();
          v39 = *(v63 + 16);
          sub_1D1E689AC();
          sub_1D1E689BC();
          sub_1D1E6897C();
        }

        else
        {
        }

        ++v33;
        if (v35 == v4)
        {
          v20 = v63;
          v10 = v59;
          v9 = v60;
          v2 = v61;
          break;
        }
      }
    }
  }

  else
  {
    v4 = *(v32 + 16);
    if (v4)
    {
      goto LABEL_39;
    }
  }

  v12 = v57;
  v4 = v58;
  v16 = v56;
LABEL_52:
  v40 = [v2 siriEndpointProfile];
  if (v40)
  {

    if (v20)
    {
      if (v20 >> 62)
      {
        v41 = sub_1D1E6873C();
      }

      else
      {
        v41 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1D1757B18(4);
      sub_1D1757B18(4);

      if (v41 > 1)
      {
        return 1;
      }
    }

    else
    {

      sub_1D1757B18(4);
      sub_1D1757B18(4);
    }

    return 0;
  }

  else
  {

    v43 = *(v12 + v16);
    if (v43)
    {
      v44 = [v43 mediaSystems];
      sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
      v45 = sub_1D1E67C1C();

      MEMORY[0x1EEE9AC00](v46);
      v55[2] = v4;
      v47 = sub_1D174A6C4(sub_1D1855E08, v55, v45);

      v62 = v47;
      if (v47)
      {
        v59 = v10;
        v60 = v9;
        v48 = [v62 components];
        sub_1D1741B10(0, &qword_1EC6453E0, 0x1E696CC00);
        v2 = sub_1D1E67C1C();

        if (v2 >> 62)
        {
          v10 = sub_1D1E6873C();
        }

        else
        {
          v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v4 = 0;
        v12 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        while (1)
        {
          if (v10 == v4)
          {

            sub_1D1757B18(4);
            sub_1D1757B18(4);
            return 1;
          }

          if ((v2 & 0xC000000000000001) != 0)
          {
            v49 = MEMORY[0x1D3891EF0](v4, v2);
          }

          else
          {
            if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_93;
            }

            v49 = *(v2 + 8 * v4 + 32);
          }

          v50 = v49;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_92;
          }

          v51 = [v49 mediaProfile];
          if (!v51)
          {
            break;
          }

          v52 = v51;
          v9 = [v51 accessory];

          if (!v9)
          {
            break;
          }

          v53 = [v9 softwareVersion];

          if (!v53)
          {
            break;
          }

          v54 = [v53 majorVersion];

          ++v4;
          if (v54 >= 18)
          {

            v50 = v62;
            goto LABEL_80;
          }
        }

LABEL_80:
      }

      else
      {
      }
    }

    else
    {
    }

    sub_1D1757B18(4);
    sub_1D1757B18(4);
    return 0;
  }
}

uint64_t sub_1D1846D5C(id *a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_1D1846E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCharacteristic();
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645540, &unk_1D1E96BA0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v53 - v16;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v55 = a2;
  v56 = v8;
  v18 = 0;
  v54 = a1;
  v19 = *(a1 + 64);
  v53 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v24 = &qword_1EC645548;
  v25 = &unk_1D1E79AE0;
  while (v22)
  {
    v58 = (v22 - 1) & v22;
    v26 = __clz(__rbit64(v22)) | (v18 << 6);
LABEL_16:
    v32 = *(*(v54 + 48) + v26);
    v33 = v59;
    sub_1D186155C(*(v54 + 56) + *(v60 + 72) * v26, v59, type metadata accessor for StaticCharacteristic);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    v35 = *(v34 + 48);
    *v14 = v32;
    sub_1D18614F4(v33, &v14[v35], type metadata accessor for StaticCharacteristic);
    (*(*(v34 - 8) + 56))(v14, 0, 1, v34);
    v29 = v56;
LABEL_17:
    sub_1D1741A90(v14, v17, &qword_1EC645540, &unk_1D1E96BA0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    v37 = (*(*(v36 - 8) + 48))(v17, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return 1;
    }

    v39 = *(v36 + 48);
    v40 = *v17;
    sub_1D18614F4(&v17[v39], v29, type metadata accessor for StaticCharacteristic);
    v41 = v55;
    v42 = sub_1D171D140(v40);
    if ((v43 & 1) == 0)
    {
      sub_1D18615C4(v29, type metadata accessor for StaticCharacteristic);
      return 0;
    }

    v44 = v38;
    v45 = *(v41 + 56) + *(v60 + 72) * v42;
    v46 = v25;
    v47 = v23;
    v48 = v24;
    v49 = v17;
    v50 = v59;
    sub_1D186155C(v45, v59, type metadata accessor for StaticCharacteristic);
    v57 = _s13HomeDataModel20StaticCharacteristicV2eeoiySbAC_ACtFZ_0(v50, v29);
    v51 = v50;
    v17 = v49;
    v24 = v48;
    v23 = v47;
    v25 = v46;
    sub_1D18615C4(v51, type metadata accessor for StaticCharacteristic);
    result = sub_1D18615C4(v29, type metadata accessor for StaticCharacteristic);
    v22 = v58;
    if (!v57)
    {
      return v44;
    }
  }

  if (v23 <= v18 + 1)
  {
    v27 = v18 + 1;
  }

  else
  {
    v27 = v23;
  }

  v28 = v27 - 1;
  v29 = v56;
  while (1)
  {
    v30 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v30 >= v23)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      (*(*(v52 - 8) + 56))(v14, 1, 1, v52);
      v58 = 0;
      v18 = v28;
      goto LABEL_17;
    }

    v31 = *(v53 + 8 * v30);
    ++v18;
    if (v31)
    {
      v58 = (v31 - 1) & v31;
      v26 = __clz(__rbit64(v31)) | (v30 << 6);
      v18 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1847318(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    v14 = sub_1D171D15C(*(*(v3 + 48) + 2 * v12));
    if (v15)
    {
      v16 = *(*(a2 + 56) + 8 * v14);

      v18 = sub_1D1847450(v17, v13);

      if (v18)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1847450(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v39 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 8 * v12);
    v14 = *v13;
    v15 = *(v13 + 4);
    v16 = *(v3 + 56) + 16 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    sub_1D1741AF8(*v16, *(v16 + 8));
    v19 = v18 == 255;
    if (v18 == 255)
    {
      return v19;
    }

    v20 = sub_1D171D1A4(v14 | (v15 << 32));
    if ((v21 & 1) == 0)
    {
      goto LABEL_68;
    }

    v22 = *(a2 + 56) + 16 * v20;
    v23 = *v22;
    v24 = *(v22 + 8);
    if (v24 <= 1)
    {
      v28 = *v22;
      if (*(v22 + 8))
      {
        sub_1D1757AE8(v28, 1u);
        if (v18 != 1)
        {
          goto LABEL_68;
        }

        v29 = v17;
        v30 = 1;
LABEL_36:
        result = sub_1D1757AE8(v29, v30);
        v7 = v39;
        if (v23 != v17)
        {
          return v19;
        }
      }

      else
      {
        sub_1D1757AE8(v28, 0);
        if (v18)
        {
          goto LABEL_68;
        }

        result = sub_1D1757AE8(v17, 0);
        v7 = v39;
        if ((v23 ^ v17))
        {
          return v19;
        }
      }
    }

    else
    {
      if (v24 == 2)
      {
        sub_1D1757AE8(*v22, 2u);
        if (v18 != 2)
        {
          goto LABEL_68;
        }

        v29 = v17;
        v30 = 2;
        goto LABEL_36;
      }

      if (v24 == 3)
      {
        if (v18 != 3)
        {
          goto LABEL_64;
        }

        v25 = *(v23 + 16);
        if (v25 != *(v17 + 16))
        {

          LOBYTE(v18) = 3;
          goto LABEL_67;
        }

        if (v25)
        {
          if (v23 != v17)
          {
            v32 = (v23 + 32);
            v33 = (v17 + 32);
            while (*v32 == *v33)
            {
              ++v32;
              ++v33;
              if (!--v25)
              {
                sub_1D1741AF8(v23, 3u);
                v26 = v23;
                v27 = 3;
                goto LABEL_41;
              }
            }

            LOBYTE(v18) = 3;
            sub_1D1741AF8(v23, 3u);
            goto LABEL_67;
          }

          v26 = v17;
          v27 = 3;
        }

        else
        {

          v27 = 3;
        }
      }

      else
      {
        if (v18 != 4)
        {
LABEL_64:
          v38 = *v22;

LABEL_67:
          sub_1D1757AE8(v23, v24);
LABEL_68:
          sub_1D1757AE8(v17, v18);
          return 0;
        }

        v31 = *(v23 + 16);
        if (v31 != *(v17 + 16))
        {

          LOBYTE(v18) = 4;
          goto LABEL_67;
        }

        if (v31)
        {
          if (v23 != v17)
          {
            v34 = (v17 + 52);
            v35 = (v23 + 52);
            while (*(v35 - 5) == *(v34 - 5) && *(v35 - 16) == *(v34 - 16))
            {
              v36 = *(v34 - 8);
              v37 = *v34;
              if (*(v35 - 8))
              {
                if ((*(v34 - 8) & 1) == 0)
                {
                  break;
                }
              }

              else if ((*(v34 - 8) & 1) != 0 || *(v35 - 3) != *(v34 - 3))
              {
                break;
              }

              if (*v35)
              {
                if ((*v34 & 1) == 0)
                {
                  break;
                }
              }

              else if ((*v34 & 1) != 0 || *(v35 - 1) != *(v34 - 1))
              {
                break;
              }

              v34 += 24;
              v35 += 24;
              if (!--v31)
              {
                sub_1D1741AF8(v23, 4u);
                v26 = v23;
                goto LABEL_40;
              }
            }

            LOBYTE(v18) = 4;
            sub_1D1741AF8(v23, 4u);
            goto LABEL_67;
          }

          v26 = v17;
        }

        else
        {
        }

LABEL_40:
        v27 = 4;
      }

LABEL_41:
      sub_1D1757AE8(v26, v27);
      result = sub_1D1757AE8(v17, v24);
      v7 = v39;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v39 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1D184782C(uint64_t a1, uint64_t a2)
{
  v140 = type metadata accessor for StaticTimer();
  v4 = *(v140 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v140);
  v143 = (v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v117 - v8);
  v141 = type metadata accessor for StaticAlarm();
  v10 = *(v141 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v141);
  v145 = v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v117 - v14;
  v147 = sub_1D1E66A7C();
  v16 = *(v147 - 8);
  v17 = *(v16 + 8);
  v18 = MEMORY[0x1EEE9AC00](v147);
  v142 = v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v117 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455D8, &qword_1D1E79B88);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = v117 - v27;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v131 = v4;
  v29 = 0;
  v30 = a1 + 64;
  v31 = 1 << *(a1 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(a1 + 64);
  v34 = (v31 + 63) >> 6;
  v138 = (v16 + 32);
  v129 = v9;
  v130 = (v16 + 8);
  v134 = v28;
  v135 = a2;
  v144 = v26;
  v119 = a1 + 64;
  v121 = a1;
  v120 = v16;
  v123 = v21;
  v132 = v15;
  v118 = v34;
  v117[1] = v16 + 16;
  v128 = v10;
  while (1)
  {
    if (!v33)
    {
      if (v34 <= v29 + 1)
      {
        v36 = v29 + 1;
      }

      else
      {
        v36 = v34;
      }

      v37 = v36 - 1;
      while (1)
      {
        v38 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v38 >= v34)
        {
          v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455E0, &unk_1D1E79B90);
          (*(*(v108 - 8) + 56))(v26, 1, 1, v108);
          v127 = 0;
          v29 = v37;
          goto LABEL_17;
        }

        v39 = *(v30 + 8 * v38);
        ++v29;
        if (v39)
        {
          v127 = (v39 - 1) & v39;
          v35 = __clz(__rbit64(v39)) | (v38 << 6);
          v29 = v38;
          goto LABEL_16;
        }
      }

      __break(1u);
      __break(1u);
LABEL_128:
      sub_1D1741C70(v16);
      sub_1D1757B18(5);
      sub_1D1757B18(v16);

      v115 = 5;
      goto LABEL_131;
    }

    v127 = (v33 - 1) & v33;
    v35 = __clz(__rbit64(v33)) | (v29 << 6);
LABEL_16:
    v40 = v147;
    (*(v16 + 2))(v21, *(a1 + 48) + *(v16 + 9) * v35, v147);
    v41 = (*(a1 + 56) + 32 * v35);
    v42 = *v41;
    v43 = v41[1];
    v45 = v41[2];
    v44 = v41[3];
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455E0, &unk_1D1E79B90);
    v47 = v16;
    v48 = v46;
    v49 = &v144[*(v46 + 48)];
    v47[4](v144, v21, v40);
    *v49 = v42;
    *(v49 + 1) = v43;
    *(v49 + 2) = v45;
    *(v49 + 3) = v44;
    v26 = v144;
    (*(*(v48 - 8) + 56))(v144, 0, 1, v48);

    sub_1D1741C70(v45);
    sub_1D1741C70(v44);
    v28 = v134;
    a2 = v135;
    v10 = v128;
LABEL_17:
    sub_1D1741A90(v26, v28, &qword_1EC6455D8, &qword_1D1E79B88);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455E0, &unk_1D1E79B90);
    v51 = (*(*(v50 - 8) + 48))(v28, 1, v50) == 1;
    result = v51;
    if (v51)
    {
      return result;
    }

    v122 = v51;
    v53 = (v28 + *(v50 + 48));
    v54 = v142;
    v55 = v28;
    v56 = v147;
    (*v138)(v142, v55, v147);
    v57 = *v53;
    v146 = v53[1];
    v16 = v53[2];
    v58 = v53[3];
    v59 = sub_1D1742188(v54);
    LOBYTE(v53) = v60;
    (*v130)(v54, v56);
    if ((v53 & 1) == 0)
    {

      goto LABEL_119;
    }

    v137 = v16;
    v61 = (*(a2 + 56) + 32 * v59);
    v62 = *v61;
    v63 = *(*v61 + 16);
    v64 = v57;
    if (v63 != *(v57 + 16))
    {

LABEL_118:
      v16 = v137;
LABEL_119:
      sub_1D1757B18(v16);
      sub_1D1757B18(v58);
      return 0;
    }

    v133 = v58;
    v65 = v61[1];
    v66 = v61[2];
    v67 = v61[3];
    v139 = v67;
    v148 = v62;
    v136 = v66;
    if (v63)
    {
      break;
    }

    sub_1D1741C70(v66);
    result = sub_1D1741C70(v67);
LABEL_47:
    v89 = *(v65 + 16);
    if (v89 != *(v146 + 16))
    {
LABEL_116:

      sub_1D1757B18(v136);
      sub_1D1757B18(v67);

LABEL_117:

      v58 = v133;
      goto LABEL_118;
    }

    if (v89 && v65 != v146)
    {
      v90 = 0;
      v91 = (*(v131 + 80) + 32) & ~*(v131 + 80);
      v126 = v65 + v91;
      v125 = v146 + v91;
      v124 = v65;
      v117[0] = v89;
      while (v90 < *(v65 + 16))
      {
        v92 = *(v131 + 72) * v90;
        v93 = v129;
        result = sub_1D186155C(v126 + v92, v129, type metadata accessor for StaticTimer);
        v67 = v139;
        if (v90 >= *(v146 + 16))
        {
          goto LABEL_138;
        }

        v94 = v10;
        v95 = v143;
        sub_1D186155C(v125 + v92, v143, type metadata accessor for StaticTimer);
        if (*v93 != *v95 || (v96 = v140, v97 = *(v140 + 20), (sub_1D1E669AC() & 1) == 0) || *(v93 + v96[6]) != *(v95 + v96[6]))
        {
LABEL_115:
          sub_1D18615C4(v95, type metadata accessor for StaticTimer);
          sub_1D18615C4(v93, type metadata accessor for StaticTimer);
          goto LABEL_116;
        }

        v98 = v96[7];
        v99 = (v93 + v98);
        v100 = *(v93 + v98 + 8);
        v101 = (v95 + v98);
        v102 = v101[1];
        if (v100)
        {
          if (!v102)
          {
            goto LABEL_115;
          }

          if (*v99 != *v101 || v100 != v102)
          {
            v103 = sub_1D1E6904C();
            v95 = v143;
            if ((v103 & 1) == 0)
            {
              goto LABEL_115;
            }
          }
        }

        else if (v102)
        {
          goto LABEL_115;
        }

        if (*(v93 + v96[8]) != *(v95 + v96[8]))
        {
          goto LABEL_115;
        }

        if (*(v93 + v96[9]) != *(v95 + v96[9]))
        {
          goto LABEL_115;
        }

        v104 = v96[10];
        if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
        {
          goto LABEL_115;
        }

        v105 = v96[11];
        v106 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        sub_1D18615C4(v95, type metadata accessor for StaticTimer);
        result = sub_1D18615C4(v93, type metadata accessor for StaticTimer);
        if ((v106 & 1) == 0)
        {
          goto LABEL_126;
        }

        ++v90;
        v65 = v124;
        v10 = v94;
        if (v117[0] == v90)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_137;
    }

LABEL_68:
    v107 = v136;
    v16 = v137;
    if (v136 > 2)
    {
      v28 = v139;
      v21 = v123;
      switch(v136)
      {
        case 3:
          if (v137 != 3)
          {
            sub_1D1741C70(v137);
            sub_1D1757B18(3);
            sub_1D1757B18(v16);

            v115 = 3;
            goto LABEL_131;
          }

          break;
        case 4:
          if (v137 != 4)
          {
            sub_1D1741C70(v137);
            sub_1D1757B18(4);
            sub_1D1757B18(v16);

            v115 = 4;
            goto LABEL_131;
          }

          break;
        case 5:
          if (v137 != 5)
          {
            goto LABEL_128;
          }

          break;
        default:
LABEL_84:
          if (v137 < 6)
          {
            sub_1D1741C70(v137);
            sub_1D1741C70(v107);
            sub_1D1757B18(v107);
            sub_1D1757B18(v16);

            v115 = v107;
            goto LABEL_131;
          }

          sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
          sub_1D1741C70(v16);
          sub_1D1741C70(v107);
          LODWORD(v139) = sub_1D1E684FC();
          v109 = v107;
          sub_1D1757B18(v107);
          sub_1D1757B18(v16);
          if ((v139 & 1) == 0)
          {

            v115 = v107;
            goto LABEL_131;
          }

          goto LABEL_91;
      }
    }

    else
    {
      v28 = v139;
      v21 = v123;
      if (v136)
      {
        if (v136 == 1)
        {
          if (v137 != 1)
          {
            sub_1D1741C70(v137);
            sub_1D1757B18(1);
            sub_1D1757B18(v16);

            v115 = 1;
            goto LABEL_131;
          }
        }

        else
        {
          if (v136 != 2)
          {
            goto LABEL_84;
          }

          if (v137 != 2)
          {
            sub_1D1741C70(v137);
            sub_1D1757B18(2);
            sub_1D1757B18(v16);

            v115 = 2;
LABEL_131:
            sub_1D1757B18(v115);
            sub_1D1757B18(v28);

            v58 = v133;
            goto LABEL_119;
          }
        }
      }

      else if (v137)
      {
        sub_1D1741C70(v137);
        sub_1D1757B18(0);
        sub_1D1757B18(v16);

        v115 = 0;
        goto LABEL_131;
      }
    }

    sub_1D1757B18(v136);
    v109 = v107;
    sub_1D1757B18(v107);
LABEL_91:
    v110 = v28;
    if (v28 > 2)
    {
      v113 = v109;
      if (v28 == 3)
      {
        v112 = v109;
        v26 = v144;
        if (v133 != 3)
        {
          v58 = v133;
          sub_1D1741C70(v133);
          sub_1D1757B18(3);
          sub_1D1757B18(v58);

          sub_1D1757B18(v112);
          v116 = 3;
          goto LABEL_133;
        }

        goto LABEL_112;
      }

      v26 = v144;
      if (v28 == 4)
      {
        v112 = v113;
        if (v133 != 4)
        {
          v58 = v133;
          sub_1D1741C70(v133);
          sub_1D1757B18(4);
          sub_1D1757B18(v58);

          sub_1D1757B18(v112);
          v116 = 4;
          goto LABEL_133;
        }

        goto LABEL_112;
      }

      if (v28 != 5)
      {
        goto LABEL_106;
      }

      v112 = v113;
      if (v133 != 5)
      {
        v58 = v133;
        sub_1D1741C70(v133);
        sub_1D1757B18(5);
        sub_1D1757B18(v58);

        sub_1D1757B18(v112);
        v116 = 5;
        goto LABEL_133;
      }

LABEL_112:
      sub_1D1757B18(v110);
      sub_1D1757B18(v110);

      sub_1D1757B18(v112);
      sub_1D1757B18(v110);

      sub_1D1757B18(v16);
      sub_1D1757B18(v110);
      v28 = v134;
      a2 = v135;
      a1 = v121;
      v16 = v120;
      v30 = v119;
      v34 = v118;
      v33 = v127;
    }

    else
    {
      v111 = v109;
      if (!v28)
      {
        v112 = v109;
        v26 = v144;
        if (v133)
        {
          v58 = v133;
          sub_1D1741C70(v133);
          sub_1D1757B18(0);
          sub_1D1757B18(v58);

          sub_1D1757B18(v112);
          v116 = 0;
          goto LABEL_133;
        }

        goto LABEL_112;
      }

      v26 = v144;
      if (v28 == 1)
      {
        v112 = v111;
        if (v133 != 1)
        {
          v58 = v133;
          sub_1D1741C70(v133);
          sub_1D1757B18(1);
          sub_1D1757B18(v58);

          sub_1D1757B18(v112);
          v116 = 1;
          goto LABEL_133;
        }

        goto LABEL_112;
      }

      if (v28 == 2)
      {
        v112 = v111;
        if (v133 != 2)
        {
          v58 = v133;
          sub_1D1741C70(v133);
          sub_1D1757B18(2);
          sub_1D1757B18(v58);

          sub_1D1757B18(v112);
          v116 = 2;
LABEL_133:
          sub_1D1757B18(v116);

          goto LABEL_119;
        }

        goto LABEL_112;
      }

LABEL_106:
      v114 = v133;
      if (v133 < 6)
      {
        sub_1D1741C70(v133);
        sub_1D1741C70(v28);
        sub_1D1757B18(v28);
        sub_1D1757B18(v114);

        sub_1D1757B18(v136);
        sub_1D1757B18(v28);

        v58 = v114;
        goto LABEL_119;
      }

      sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
      sub_1D1741C70(v114);
      sub_1D1741C70(v28);
      LODWORD(v139) = sub_1D1E684FC();
      sub_1D1757B18(v28);
      sub_1D1757B18(v114);

      sub_1D1757B18(v136);
      v26 = v144;
      sub_1D1757B18(v28);

      sub_1D1757B18(v16);
      sub_1D1757B18(v114);
      v28 = v134;
      a2 = v135;
      a1 = v121;
      v16 = v120;
      v30 = v119;
      v34 = v118;
      v33 = v127;
      result = v122;
      if ((v139 & 1) == 0)
      {
        return result;
      }
    }
  }

  v68 = *(v10 + 80);

  sub_1D1741C70(v66);
  result = sub_1D1741C70(v67);
  v69 = v148;
  v70 = v132;
  v71 = v145;
  if (v148 == v64)
  {
    goto LABEL_47;
  }

  v72 = 0;
  v73 = (v68 + 32) & ~v68;
  v126 = v148 + v73;
  v125 = v64 + v73;
  while (v72 < *(v69 + 16))
  {
    v74 = *(v10 + 72) * v72;
    result = sub_1D186155C(v126 + v74, v70, type metadata accessor for StaticAlarm);
    if (v72 >= *(v64 + 16))
    {
      goto LABEL_136;
    }

    sub_1D186155C(v125 + v74, v71, type metadata accessor for StaticAlarm);
    if (*v70 != *v71 || *(v70 + 8) != *(v71 + 8))
    {
      goto LABEL_114;
    }

    v75 = *(v70 + 24);
    v76 = *(v71 + 24);
    if (v75)
    {
      v77 = v141;
      if (!v76 || (*(v70 + 16) != *(v71 + 16) || v75 != v76) && (sub_1D1E6904C() & 1) == 0)
      {
        goto LABEL_114;
      }
    }

    else
    {
      v77 = v141;
      if (v76)
      {
        goto LABEL_114;
      }
    }

    v78 = *(v70 + 32);
    v79 = *(v71 + 32);
    v80 = *(v78 + 16);
    if (v80 != *(v79 + 16))
    {
      goto LABEL_114;
    }

    if (v80 && v78 != v79)
    {
      v81 = (v78 + 32);
      v82 = (v79 + 32);
      while (*v81 == *v82)
      {
        ++v81;
        ++v82;
        if (!--v80)
        {
          goto LABEL_40;
        }
      }

LABEL_114:
      sub_1D18615C4(v71, type metadata accessor for StaticAlarm);
      sub_1D18615C4(v70, type metadata accessor for StaticAlarm);
      goto LABEL_116;
    }

LABEL_40:
    if (*(v70 + 40) != *(v71 + 40))
    {
      goto LABEL_114;
    }

    if (*(v70 + 44) != *(v71 + 44))
    {
      goto LABEL_114;
    }

    v83 = *(v77 + 36);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
    {
      goto LABEL_114;
    }

    v84 = v10;
    v85 = v70;
    v86 = v84;
    v87 = *(v77 + 40);
    v88 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    sub_1D18615C4(v71, type metadata accessor for StaticAlarm);
    result = sub_1D18615C4(v85, type metadata accessor for StaticAlarm);
    if ((v88 & 1) == 0)
    {
LABEL_126:

      sub_1D1757B18(v136);
      sub_1D1757B18(v139);

      goto LABEL_117;
    }

    ++v72;
    v67 = v139;
    v69 = v148;
    v10 = v86;
    v70 = v132;
    v71 = v145;
    if (v72 == v63)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
  return result;
}

uint64_t sub_1D1848AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticAccessory(0);
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v58 - v9;
  v73 = sub_1D1E66A7C();
  v65 = *(v73 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x1EEE9AC00](v73);
  v66 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454A0, &unk_1D1E79A30);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v18;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v67 = v19;
  v63 = v8;
  v21 = 0;
  v61 = a1;
  v24 = *(a1 + 64);
  v23 = a1 + 64;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;
  v60 = v65 + 16;
  v68 = &v58 - v18;
  v69 = (v65 + 32);
  v62 = (v65 + 8);
  v29 = &qword_1D1E77280;
  v58 = v23;
  v59 = v28;
  while (v27)
  {
    v70 = (v27 - 1) & v27;
    v30 = __clz(__rbit64(v27)) | (v21 << 6);
LABEL_16:
    v36 = v61;
    v38 = v64;
    v37 = v65;
    v39 = v73;
    (*(v65 + 16))(v64, *(v61 + 48) + *(v65 + 72) * v30, v73);
    v40 = v71;
    sub_1D186155C(*(v36 + 56) + *(v72 + 72) * v30, v71, type metadata accessor for StaticAccessory);
    v41 = &qword_1D1E77280;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
    v43 = *(v42 + 48);
    v44 = *(v37 + 32);
    v33 = v67;
    v44(v67, v38, v39);
    sub_1D18614F4(v40, v33 + v43, type metadata accessor for StaticAccessory);
    (*(*(v42 - 8) + 56))(v33, 0, 1, v42);
    v20 = v68;
    v28 = v59;
LABEL_17:
    sub_1D1741A90(v33, v20, &qword_1EC6454A0, &unk_1D1E79A30);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, v41);
    v46 = (*(*(v45 - 8) + 48))(v20, 1, v45);
    v47 = v46 == 1;
    if (v46 == 1)
    {
      return v47;
    }

    v29 = v41;
    v48 = *(v45 + 48);
    v49 = v66;
    v50 = v73;
    (*v69)(v66, v20, v73);
    v51 = &v20[v48];
    v52 = v63;
    sub_1D18614F4(v51, v63, type metadata accessor for StaticAccessory);
    v53 = sub_1D1742188(v49);
    LOBYTE(v48) = v54;
    (*v62)(v49, v50);
    if ((v48 & 1) == 0)
    {
      sub_1D18615C4(v52, type metadata accessor for StaticAccessory);
      return 0;
    }

    v55 = v71;
    sub_1D186155C(*(a2 + 56) + *(v72 + 72) * v53, v71, type metadata accessor for StaticAccessory);
    v56 = static StaticAccessory.== infix(_:_:)(v55, v52);
    sub_1D18615C4(v55, type metadata accessor for StaticAccessory);
    result = sub_1D18615C4(v52, type metadata accessor for StaticAccessory);
    v20 = v68;
    v27 = v70;
    if ((v56 & 1) == 0)
    {
      return v47;
    }
  }

  if (v28 <= v21 + 1)
  {
    v31 = v21 + 1;
  }

  else
  {
    v31 = v28;
  }

  v32 = v31 - 1;
  v33 = v67;
  while (1)
  {
    v34 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v34 >= v28)
    {
      v41 = v29;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, v29);
      (*(*(v57 - 8) + 56))(v33, 1, 1, v57);
      v70 = 0;
      v21 = v32;
      goto LABEL_17;
    }

    v35 = *(v58 + 8 * v34);
    ++v21;
    if (v35)
    {
      v70 = (v35 - 1) & v35;
      v30 = __clz(__rbit64(v35)) | (v34 << 6);
      v21 = v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18490AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticService(0);
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v58 - v9;
  v73 = sub_1D1E66A7C();
  v65 = *(v73 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x1EEE9AC00](v73);
  v66 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v18;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v67 = v19;
  v63 = v8;
  v21 = 0;
  v61 = a1;
  v24 = *(a1 + 64);
  v23 = a1 + 64;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;
  v60 = v65 + 16;
  v68 = &v58 - v18;
  v69 = (v65 + 32);
  v62 = (v65 + 8);
  v29 = &unk_1D1E6F360;
  v58 = v23;
  v59 = v28;
  while (v27)
  {
    v70 = (v27 - 1) & v27;
    v30 = __clz(__rbit64(v27)) | (v21 << 6);
LABEL_16:
    v36 = v61;
    v38 = v64;
    v37 = v65;
    v39 = v73;
    (*(v65 + 16))(v64, *(v61 + 48) + *(v65 + 72) * v30, v73);
    v40 = v71;
    sub_1D186155C(*(v36 + 56) + *(v72 + 72) * v30, v71, type metadata accessor for StaticService);
    v41 = &unk_1D1E6F360;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    v43 = *(v42 + 48);
    v44 = *(v37 + 32);
    v33 = v67;
    v44(v67, v38, v39);
    sub_1D18614F4(v40, v33 + v43, type metadata accessor for StaticService);
    (*(*(v42 - 8) + 56))(v33, 0, 1, v42);
    v20 = v68;
    v28 = v59;
LABEL_17:
    sub_1D1741A90(v33, v20, &qword_1EC643C68, &unk_1D1E764C0);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, v41);
    v46 = (*(*(v45 - 8) + 48))(v20, 1, v45);
    v47 = v46 == 1;
    if (v46 == 1)
    {
      return v47;
    }

    v29 = v41;
    v48 = *(v45 + 48);
    v49 = v66;
    v50 = v73;
    (*v69)(v66, v20, v73);
    v51 = &v20[v48];
    v52 = v63;
    sub_1D18614F4(v51, v63, type metadata accessor for StaticService);
    v53 = sub_1D1742188(v49);
    LOBYTE(v48) = v54;
    (*v62)(v49, v50);
    if ((v48 & 1) == 0)
    {
      sub_1D18615C4(v52, type metadata accessor for StaticService);
      return 0;
    }

    v55 = v71;
    sub_1D186155C(*(a2 + 56) + *(v72 + 72) * v53, v71, type metadata accessor for StaticService);
    v56 = static StaticService.== infix(_:_:)(v55, v52);
    sub_1D18615C4(v55, type metadata accessor for StaticService);
    result = sub_1D18615C4(v52, type metadata accessor for StaticService);
    v20 = v68;
    v27 = v70;
    if ((v56 & 1) == 0)
    {
      return v47;
    }
  }

  if (v28 <= v21 + 1)
  {
    v31 = v21 + 1;
  }

  else
  {
    v31 = v28;
  }

  v32 = v31 - 1;
  v33 = v67;
  while (1)
  {
    v34 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v34 >= v28)
    {
      v41 = v29;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, v29);
      (*(*(v57 - 8) + 56))(v33, 1, 1, v57);
      v70 = 0;
      v21 = v32;
      goto LABEL_17;
    }

    v35 = *(v58 + 8 * v34);
    ++v21;
    if (v35)
    {
      v70 = (v35 - 1) & v35;
      v30 = __clz(__rbit64(v35)) | (v34 << 6);
      v21 = v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1849684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticServiceGroup();
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v58 - v9;
  v73 = sub_1D1E66A7C();
  v65 = *(v73 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x1EEE9AC00](v73);
  v66 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645450, &qword_1D1E799E0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v18;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v67 = v19;
  v63 = v8;
  v21 = 0;
  v61 = a1;
  v24 = *(a1 + 64);
  v23 = a1 + 64;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;
  v60 = v65 + 16;
  v68 = &v58 - v18;
  v69 = (v65 + 32);
  v62 = (v65 + 8);
  v29 = &qword_1D1E799E8;
  v58 = v23;
  v59 = v28;
  while (v27)
  {
    v70 = (v27 - 1) & v27;
    v30 = __clz(__rbit64(v27)) | (v21 << 6);
LABEL_16:
    v36 = v61;
    v38 = v64;
    v37 = v65;
    v39 = v73;
    (*(v65 + 16))(v64, *(v61 + 48) + *(v65 + 72) * v30, v73);
    v40 = v71;
    sub_1D186155C(*(v36 + 56) + *(v72 + 72) * v30, v71, type metadata accessor for StaticServiceGroup);
    v41 = &qword_1D1E799E8;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645458, &qword_1D1E799E8);
    v43 = *(v42 + 48);
    v44 = *(v37 + 32);
    v33 = v67;
    v44(v67, v38, v39);
    sub_1D18614F4(v40, v33 + v43, type metadata accessor for StaticServiceGroup);
    (*(*(v42 - 8) + 56))(v33, 0, 1, v42);
    v20 = v68;
    v28 = v59;
LABEL_17:
    sub_1D1741A90(v33, v20, &qword_1EC645450, &qword_1D1E799E0);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645458, v41);
    v46 = (*(*(v45 - 8) + 48))(v20, 1, v45);
    v47 = v46 == 1;
    if (v46 == 1)
    {
      return v47;
    }

    v29 = v41;
    v48 = *(v45 + 48);
    v49 = v66;
    v50 = v73;
    (*v69)(v66, v20, v73);
    v51 = &v20[v48];
    v52 = v63;
    sub_1D18614F4(v51, v63, type metadata accessor for StaticServiceGroup);
    v53 = sub_1D1742188(v49);
    LOBYTE(v48) = v54;
    (*v62)(v49, v50);
    if ((v48 & 1) == 0)
    {
      sub_1D18615C4(v52, type metadata accessor for StaticServiceGroup);
      return 0;
    }

    v55 = v71;
    sub_1D186155C(*(a2 + 56) + *(v72 + 72) * v53, v71, type metadata accessor for StaticServiceGroup);
    v56 = static StaticServiceGroup.== infix(_:_:)(v55, v52);
    sub_1D18615C4(v55, type metadata accessor for StaticServiceGroup);
    result = sub_1D18615C4(v52, type metadata accessor for StaticServiceGroup);
    v20 = v68;
    v27 = v70;
    if ((v56 & 1) == 0)
    {
      return v47;
    }
  }

  if (v28 <= v21 + 1)
  {
    v31 = v21 + 1;
  }

  else
  {
    v31 = v28;
  }

  v32 = v31 - 1;
  v33 = v67;
  while (1)
  {
    v34 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v34 >= v28)
    {
      v41 = v29;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645458, v29);
      (*(*(v57 - 8) + 56))(v33, 1, 1, v57);
      v70 = 0;
      v21 = v32;
      goto LABEL_17;
    }

    v35 = *(v58 + 8 * v34);
    ++v21;
    if (v35)
    {
      v70 = (v35 - 1) & v35;
      v30 = __clz(__rbit64(v35)) | (v34 << 6);
      v21 = v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1849C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticMatterDevice();
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v58 - v9;
  v73 = sub_1D1E66A7C();
  v65 = *(v73 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x1EEE9AC00](v73);
  v66 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454B8, &unk_1D1E79A50);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v18;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v67 = v19;
  v63 = v8;
  v21 = 0;
  v61 = a1;
  v24 = *(a1 + 64);
  v23 = a1 + 64;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;
  v60 = v65 + 16;
  v68 = &v58 - v18;
  v69 = (v65 + 32);
  v62 = (v65 + 8);
  v29 = &qword_1D1E96BE0;
  v58 = v23;
  v59 = v28;
  while (v27)
  {
    v70 = (v27 - 1) & v27;
    v30 = __clz(__rbit64(v27)) | (v21 << 6);
LABEL_16:
    v36 = v61;
    v38 = v64;
    v37 = v65;
    v39 = v73;
    (*(v65 + 16))(v64, *(v61 + 48) + *(v65 + 72) * v30, v73);
    v40 = v71;
    sub_1D186155C(*(v36 + 56) + *(v72 + 72) * v30, v71, type metadata accessor for StaticMatterDevice);
    v41 = &qword_1D1E96BE0;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454C0, &qword_1D1E96BE0);
    v43 = *(v42 + 48);
    v44 = *(v37 + 32);
    v33 = v67;
    v44(v67, v38, v39);
    sub_1D18614F4(v40, v33 + v43, type metadata accessor for StaticMatterDevice);
    (*(*(v42 - 8) + 56))(v33, 0, 1, v42);
    v20 = v68;
    v28 = v59;
LABEL_17:
    sub_1D1741A90(v33, v20, &qword_1EC6454B8, &unk_1D1E79A50);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454C0, v41);
    v46 = (*(*(v45 - 8) + 48))(v20, 1, v45);
    v47 = v46 == 1;
    if (v46 == 1)
    {
      return v47;
    }

    v29 = v41;
    v48 = *(v45 + 48);
    v49 = v66;
    v50 = v73;
    (*v69)(v66, v20, v73);
    v51 = &v20[v48];
    v52 = v63;
    sub_1D18614F4(v51, v63, type metadata accessor for StaticMatterDevice);
    v53 = sub_1D1742188(v49);
    LOBYTE(v48) = v54;
    (*v62)(v49, v50);
    if ((v48 & 1) == 0)
    {
      sub_1D18615C4(v52, type metadata accessor for StaticMatterDevice);
      return 0;
    }

    v55 = v71;
    sub_1D186155C(*(a2 + 56) + *(v72 + 72) * v53, v71, type metadata accessor for StaticMatterDevice);
    v56 = _s13HomeDataModel18StaticMatterDeviceV2eeoiySbAC_ACtFZ_0(v55, v52);
    sub_1D18615C4(v55, type metadata accessor for StaticMatterDevice);
    result = sub_1D18615C4(v52, type metadata accessor for StaticMatterDevice);
    v20 = v68;
    v27 = v70;
    if ((v56 & 1) == 0)
    {
      return v47;
    }
  }

  if (v28 <= v21 + 1)
  {
    v31 = v21 + 1;
  }

  else
  {
    v31 = v28;
  }

  v32 = v31 - 1;
  v33 = v67;
  while (1)
  {
    v34 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v34 >= v28)
    {
      v41 = v29;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454C0, v29);
      (*(*(v57 - 8) + 56))(v33, 1, 1, v57);
      v70 = 0;
      v21 = v32;
      goto LABEL_17;
    }

    v35 = *(v58 + 8 * v34);
    ++v21;
    if (v35)
    {
      v70 = (v35 - 1) & v35;
      v30 = __clz(__rbit64(v35)) | (v34 << 6);
      v21 = v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D184A234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticMatterDevice();
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645420, &unk_1D1E799B0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v53 - v16);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v55 = a2;
  v56 = v8;
  v18 = 0;
  v54 = a1;
  v19 = *(a1 + 64);
  v53 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v24 = &unk_1EC645428;
  v25 = &unk_1D1E96C40;
  while (v22)
  {
    v58 = (v22 - 1) & v22;
    v26 = __clz(__rbit64(v22)) | (v18 << 6);
LABEL_16:
    v32 = *(*(v54 + 48) + 8 * v26);
    v33 = v59;
    sub_1D186155C(*(v54 + 56) + *(v60 + 72) * v26, v59, type metadata accessor for StaticMatterDevice);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    v35 = *(v34 + 48);
    *v14 = v32;
    sub_1D18614F4(v33, v14 + v35, type metadata accessor for StaticMatterDevice);
    (*(*(v34 - 8) + 56))(v14, 0, 1, v34);
    v29 = v56;
LABEL_17:
    sub_1D1741A90(v14, v17, &qword_1EC645420, &unk_1D1E799B0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    v37 = (*(*(v36 - 8) + 48))(v17, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return 1;
    }

    v39 = *(v36 + 48);
    v40 = *v17;
    sub_1D18614F4(v17 + v39, v29, type metadata accessor for StaticMatterDevice);
    v41 = v55;
    v42 = sub_1D17420B0(v40);
    if ((v43 & 1) == 0)
    {
      sub_1D18615C4(v29, type metadata accessor for StaticMatterDevice);
      return 0;
    }

    v44 = v38;
    v45 = *(v41 + 56) + *(v60 + 72) * v42;
    v46 = v25;
    v47 = v23;
    v48 = v24;
    v49 = v17;
    v50 = v59;
    sub_1D186155C(v45, v59, type metadata accessor for StaticMatterDevice);
    v57 = static StaticMatterDevice.== infix(_:_:)(v50, v29);
    v51 = v50;
    v17 = v49;
    v24 = v48;
    v23 = v47;
    v25 = v46;
    sub_1D18615C4(v51, type metadata accessor for StaticMatterDevice);
    result = sub_1D18615C4(v29, type metadata accessor for StaticMatterDevice);
    v22 = v58;
    if ((v57 & 1) == 0)
    {
      return v44;
    }
  }

  if (v23 <= v18 + 1)
  {
    v27 = v18 + 1;
  }

  else
  {
    v27 = v23;
  }

  v28 = v27 - 1;
  v29 = v56;
  while (1)
  {
    v30 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v30 >= v23)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      (*(*(v52 - 8) + 56))(v14, 1, 1, v52);
      v58 = 0;
      v18 = v28;
      goto LABEL_17;
    }

    v31 = *(v53 + 8 * v30);
    ++v18;
    if (v31)
    {
      v58 = (v31 - 1) & v31;
      v26 = __clz(__rbit64(v31)) | (v30 << 6);
      v18 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D184A6D8(uint64_t a1, uint64_t a2)
{
  v65 = type metadata accessor for EndpointPath(0);
  v63 = *(v65 - 8);
  v4 = *(v63 + 64);
  v5 = MEMORY[0x1EEE9AC00](v65);
  v66 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v67 = v51 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v56 = v51 - v9;
  v64 = sub_1D1E66A7C();
  v58 = *(v64 - 8);
  v10 = *(v58 + 64);
  v11 = MEMORY[0x1EEE9AC00](v64);
  v59 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = v51 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645590, &qword_1D1E79B38);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v16);
  v60 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(v60 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v57 = v51 - v20;
  v21 = 0;
  v22 = *(v60 + 64);
  v51[0] = v60 + 64;
  v23 = 1 << *(v60 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v51[1] = v58 + 16;
  v52 = v18;
  v62 = (v58 + 32);
  v53 = v26;
  v54 = (v58 + 8);
  while (v25)
  {
    v61 = (v25 - 1) & v25;
    v27 = __clz(__rbit64(v25)) | (v21 << 6);
LABEL_16:
    v33 = v60;
    v34 = v58;
    (*(v58 + 16))(v55, *(v60 + 48) + *(v58 + 72) * v27, v64);
    v35 = v56;
    sub_1D186155C(*(v33 + 56) + *(v63 + 72) * v27, v56, type metadata accessor for EndpointPath);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645598, &qword_1D1E79B40);
    v37 = *(v36 + 48);
    v18 = v52;
    (*(v34 + 32))();
    sub_1D18614F4(v35, &v18[v37], type metadata accessor for EndpointPath);
    (*(*(v36 - 8) + 56))(v18, 0, 1, v36);
    v30 = v57;
LABEL_17:
    sub_1D1741A90(v18, v30, &qword_1EC645590, &qword_1D1E79B38);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645598, &qword_1D1E79B40);
    v39 = (*(*(v38 - 8) + 48))(v30, 1, v38);
    v40 = v39 == 1;
    if (v39 == 1)
    {
      return v40;
    }

    v41 = *(v38 + 48);
    v42 = v59;
    v43 = v64;
    (*v62)(v59, v30, v64);
    sub_1D18614F4(v30 + v41, v67, type metadata accessor for EndpointPath);
    v44 = sub_1D1742188(v42);
    v46 = v45;
    (*v54)(v42, v43);
    if ((v46 & 1) == 0)
    {
      goto LABEL_26;
    }

    sub_1D186155C(*(a2 + 56) + *(v63 + 72) * v44, v66, type metadata accessor for EndpointPath);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *(v66 + *(v65 + 20)) != *(v67 + *(v65 + 20)))
    {
      sub_1D18615C4(v66, type metadata accessor for EndpointPath);
LABEL_26:
      sub_1D18615C4(v67, type metadata accessor for EndpointPath);
      return 0;
    }

    v47 = v65;
    v48 = *(v66 + *(v65 + 24));
    sub_1D18615C4(v66, type metadata accessor for EndpointPath);
    v49 = *(v67 + *(v47 + 24));
    result = sub_1D18615C4(v67, type metadata accessor for EndpointPath);
    v26 = v53;
    v25 = v61;
    if (v48 != v49)
    {
      return v40;
    }
  }

  if (v26 <= v21 + 1)
  {
    v28 = v21 + 1;
  }

  else
  {
    v28 = v26;
  }

  v29 = v28 - 1;
  v30 = v57;
  while (1)
  {
    v31 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v31 >= v26)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645598, &qword_1D1E79B40);
      (*(*(v50 - 8) + 56))(v18, 1, 1, v50);
      v61 = 0;
      v21 = v29;
      goto LABEL_17;
    }

    v32 = *(v51[0] + 8 * v31);
    ++v21;
    if (v32)
    {
      v61 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v21 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1D184AD34(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v11 = (v8 - 1) & v8;
LABEL_13:
    v14 = v10 | (v4 << 6);
    v15 = *(*(v3 + 48) + 8 * v14);
    v16 = *(v3 + 56) + 16 * v14;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = v15;
    sub_1D1741AF8(v17, v18);
    if (!v19)
    {
      return;
    }

    v44 = v11;
    v20 = v17;
    v21 = sub_1D171D228(v19);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_68;
    }

    v24 = *(a2 + 56) + 16 * v21;
    v25 = *v24;
    v26 = *(v24 + 8);
    if (v26 <= 1)
    {
      v30 = *v24;
      if (*(v24 + 8))
      {
        sub_1D1757AE8(v30, 1u);
        if (v18 != 1)
        {
          goto LABEL_68;
        }

        v32 = v20;
        v33 = 1;
LABEL_36:
        sub_1D1757AE8(v32, v33);
        v35 = v25 == v20;
        v3 = a1;
        v8 = v44;
        if (!v35)
        {
          return;
        }
      }

      else
      {
        sub_1D1757AE8(v30, 0);
        if (v18)
        {
          goto LABEL_68;
        }

        sub_1D1757AE8(v20, 0);
        v31 = v25 ^ v20;
        v3 = a1;
        v8 = v44;
        if (v31)
        {
          return;
        }
      }
    }

    else
    {
      if (v26 == 2)
      {
        sub_1D1757AE8(*v24, 2u);
        if (v18 != 2)
        {
          goto LABEL_68;
        }

        v32 = v20;
        v33 = 2;
        goto LABEL_36;
      }

      if (v26 == 3)
      {
        if (v18 != 3)
        {
          goto LABEL_64;
        }

        v27 = *(v25 + 16);
        if (v27 != *(v20 + 16))
        {

          LOBYTE(v18) = 3;
          goto LABEL_67;
        }

        if (v27)
        {
          if (v25 != v20)
          {
            v36 = (v25 + 32);
            v37 = (v20 + 32);
            while (*v36 == *v37)
            {
              ++v36;
              ++v37;
              if (!--v27)
              {
                sub_1D1741AF8(v25, 3u);
                v28 = v25;
                v29 = 3;
                goto LABEL_41;
              }
            }

            LOBYTE(v18) = 3;
            sub_1D1741AF8(v25, 3u);
            goto LABEL_67;
          }

          v28 = v20;
          v29 = 3;
        }

        else
        {

          v29 = 3;
        }
      }

      else
      {
        if (v18 != 4)
        {
LABEL_64:
          v42 = *v24;

LABEL_67:
          sub_1D1757AE8(v25, v26);
LABEL_68:
          sub_1D1757AE8(v20, v18);
          return;
        }

        v34 = *(v25 + 16);
        if (v34 != *(v20 + 16))
        {

          LOBYTE(v18) = 4;
          goto LABEL_67;
        }

        if (v34)
        {
          if (v25 != v20)
          {
            v38 = (v20 + 52);
            v39 = (v25 + 52);
            while (*(v39 - 5) == *(v38 - 5) && *(v39 - 16) == *(v38 - 16))
            {
              v40 = *(v38 - 8);
              v41 = *v38;
              if (*(v39 - 8))
              {
                if ((*(v38 - 8) & 1) == 0)
                {
                  break;
                }
              }

              else if ((*(v38 - 8) & 1) != 0 || *(v39 - 3) != *(v38 - 3))
              {
                break;
              }

              if (*v39)
              {
                if ((*v38 & 1) == 0)
                {
                  break;
                }
              }

              else if ((*v38 & 1) != 0 || *(v39 - 1) != *(v38 - 1))
              {
                break;
              }

              v38 += 24;
              v39 += 24;
              if (!--v34)
              {
                sub_1D1741AF8(v25, 4u);
                v28 = v25;
                goto LABEL_40;
              }
            }

            LOBYTE(v18) = 4;
            sub_1D1741AF8(v25, 4u);
            goto LABEL_67;
          }

          v28 = v20;
        }

        else
        {
        }

LABEL_40:
        v29 = 4;
      }

LABEL_41:
      sub_1D1757AE8(v28, v29);
      sub_1D1757AE8(v20, v26);
      v3 = a1;
      v8 = v44;
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
}

uint64_t sub_1D184B120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticEndpoint();
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455A0, &unk_1D1E79B48);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v53 - v16);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v55 = a2;
  v56 = v8;
  v18 = 0;
  v54 = a1;
  v19 = *(a1 + 64);
  v53 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v24 = &qword_1EC6448D0;
  v25 = &qword_1D1E76600;
  while (v22)
  {
    v58 = (v22 - 1) & v22;
    v26 = __clz(__rbit64(v22)) | (v18 << 6);
LABEL_16:
    v32 = *(*(v54 + 48) + 2 * v26);
    v33 = v59;
    sub_1D186155C(*(v54 + 56) + *(v60 + 72) * v26, v59, type metadata accessor for StaticEndpoint);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    v35 = *(v34 + 48);
    *v14 = v32;
    sub_1D18614F4(v33, v14 + v35, type metadata accessor for StaticEndpoint);
    (*(*(v34 - 8) + 56))(v14, 0, 1, v34);
    v29 = v56;
LABEL_17:
    sub_1D1741A90(v14, v17, &qword_1EC6455A0, &unk_1D1E79B48);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    v37 = (*(*(v36 - 8) + 48))(v17, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return 1;
    }

    v39 = *(v36 + 48);
    v40 = *v17;
    sub_1D18614F4(v17 + v39, v29, type metadata accessor for StaticEndpoint);
    v41 = v55;
    v42 = sub_1D171D15C(v40);
    if ((v43 & 1) == 0)
    {
      sub_1D18615C4(v29, type metadata accessor for StaticEndpoint);
      return 0;
    }

    v44 = v38;
    v45 = *(v41 + 56) + *(v60 + 72) * v42;
    v46 = v25;
    v47 = v23;
    v48 = v24;
    v49 = v17;
    v50 = v59;
    sub_1D186155C(v45, v59, type metadata accessor for StaticEndpoint);
    v57 = static StaticEndpoint.== infix(_:_:)(v50, v29);
    v51 = v50;
    v17 = v49;
    v24 = v48;
    v23 = v47;
    v25 = v46;
    sub_1D18615C4(v51, type metadata accessor for StaticEndpoint);
    result = sub_1D18615C4(v29, type metadata accessor for StaticEndpoint);
    v22 = v58;
    if ((v57 & 1) == 0)
    {
      return v44;
    }
  }

  if (v23 <= v18 + 1)
  {
    v27 = v18 + 1;
  }

  else
  {
    v27 = v23;
  }

  v28 = v27 - 1;
  v29 = v56;
  while (1)
  {
    v30 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v30 >= v23)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      (*(*(v52 - 8) + 56))(v14, 1, 1, v52);
      v58 = 0;
      v18 = v28;
      goto LABEL_17;
    }

    v31 = *(v53 + 8 * v30);
    ++v18;
    if (v31)
    {
      v58 = (v31 - 1) & v31;
      v26 = __clz(__rbit64(v31)) | (v30 << 6);
      v18 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D184B5C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionService();
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v58 - v9;
  v73 = sub_1D1E66A7C();
  v65 = *(v73 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x1EEE9AC00](v73);
  v66 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645530, &qword_1D1E79AC8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v18;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v67 = v19;
  v63 = v8;
  v21 = 0;
  v61 = a1;
  v24 = *(a1 + 64);
  v23 = a1 + 64;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;
  v60 = v65 + 16;
  v68 = &v58 - v18;
  v69 = (v65 + 32);
  v62 = (v65 + 8);
  v29 = &unk_1D1E79AD0;
  v58 = v23;
  v59 = v28;
  while (v27)
  {
    v70 = (v27 - 1) & v27;
    v30 = __clz(__rbit64(v27)) | (v21 << 6);
LABEL_16:
    v36 = v61;
    v38 = v64;
    v37 = v65;
    v39 = v73;
    (*(v65 + 16))(v64, *(v61 + 48) + *(v65 + 72) * v30, v73);
    v40 = v71;
    sub_1D186155C(*(v36 + 56) + *(v72 + 72) * v30, v71, type metadata accessor for ActionService);
    v41 = &unk_1D1E79AD0;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645538, &unk_1D1E79AD0);
    v43 = *(v42 + 48);
    v44 = *(v37 + 32);
    v33 = v67;
    v44(v67, v38, v39);
    sub_1D18614F4(v40, v33 + v43, type metadata accessor for ActionService);
    (*(*(v42 - 8) + 56))(v33, 0, 1, v42);
    v20 = v68;
    v28 = v59;
LABEL_17:
    sub_1D1741A90(v33, v20, &qword_1EC645530, &qword_1D1E79AC8);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645538, v41);
    v46 = (*(*(v45 - 8) + 48))(v20, 1, v45);
    v47 = v46 == 1;
    if (v46 == 1)
    {
      return v47;
    }

    v29 = v41;
    v48 = *(v45 + 48);
    v49 = v66;
    v50 = v73;
    (*v69)(v66, v20, v73);
    v51 = &v20[v48];
    v52 = v63;
    sub_1D18614F4(v51, v63, type metadata accessor for ActionService);
    v53 = sub_1D1742188(v49);
    LOBYTE(v48) = v54;
    (*v62)(v49, v50);
    if ((v48 & 1) == 0)
    {
      sub_1D18615C4(v52, type metadata accessor for ActionService);
      return 0;
    }

    v55 = v71;
    sub_1D186155C(*(a2 + 56) + *(v72 + 72) * v53, v71, type metadata accessor for ActionService);
    v56 = static ActionService.== infix(_:_:)(v55, v52);
    sub_1D18615C4(v55, type metadata accessor for ActionService);
    result = sub_1D18615C4(v52, type metadata accessor for ActionService);
    v20 = v68;
    v27 = v70;
    if ((v56 & 1) == 0)
    {
      return v47;
    }
  }

  if (v28 <= v21 + 1)
  {
    v31 = v21 + 1;
  }

  else
  {
    v31 = v28;
  }

  v32 = v31 - 1;
  v33 = v67;
  while (1)
  {
    v34 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v34 >= v28)
    {
      v41 = v29;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645538, v29);
      (*(*(v57 - 8) + 56))(v33, 1, 1, v57);
      v70 = 0;
      v21 = v32;
      goto LABEL_17;
    }

    v35 = *(v58 + 8 * v34);
    ++v21;
    if (v35)
    {
      v70 = (v35 - 1) & v35;
      v30 = __clz(__rbit64(v35)) | (v34 << 6);
      v21 = v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D184BB9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionEndpoint();
  v65 = *(v4 - 1);
  v5 = *(v65 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455B0, &qword_1D1E79B60);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v64 = (&v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v16);
  v63 = (&v58 - v19);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v61 = v13;
  v62 = a2;
  v20 = 0;
  v21 = *(a1 + 64);
  v59 = a1 + 64;
  v60 = a1;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v58 = (v22 + 63) >> 6;
  while (v24)
  {
    v25 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v26 = v25 | (v20 << 6);
LABEL_16:
    v31 = *(a1 + 56);
    v32 = *(*(a1 + 48) + 2 * v26);
    v33 = v61;
    sub_1D186155C(v31 + *(v65 + 72) * v26, v61, type metadata accessor for ActionEndpoint);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455B8, &qword_1D1E79B68);
    v35 = *(v34 + 48);
    v36 = v64;
    *v64 = v32;
    v37 = v36;
    sub_1D18614F4(v33, v36 + v35, type metadata accessor for ActionEndpoint);
    (*(*(v34 - 8) + 56))(v37, 0, 1, v34);
LABEL_17:
    v38 = v37;
    v39 = v63;
    sub_1D1741A90(v38, v63, &qword_1EC6455B0, &qword_1D1E79B60);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455B8, &qword_1D1E79B68);
    v41 = (*(*(v40 - 8) + 48))(v39, 1, v40);
    v42 = v41 == 1;
    if (v41 == 1)
    {
      return v42;
    }

    v43 = *(v40 + 48);
    v44 = *v39;
    sub_1D18614F4(v39 + v43, v11, type metadata accessor for ActionEndpoint);
    v45 = v62;
    v46 = sub_1D171D15C(v44);
    if ((v47 & 1) == 0)
    {
      goto LABEL_38;
    }

    sub_1D186155C(*(v45 + 56) + *(v65 + 72) * v46, v8, type metadata accessor for ActionEndpoint);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_1D17A6E98(*&v8[v4[5]], *&v11[v4[5]]) & 1) == 0)
    {
      goto LABEL_37;
    }

    v48 = v4[6];
    v49 = *&v8[v48];
    v50 = *&v8[v48 + 8];
    v51 = &v11[v48];
    if ((v49 != *v51 || v50 != *(v51 + 1)) && (sub_1D1E6904C() & 1) == 0)
    {
      goto LABEL_37;
    }

    if (v8[v4[7]] != v11[v4[7]] || (v52 = v4[8], v53 = &v8[v52], v54 = &v11[v52], (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0) || (v55 = type metadata accessor for EndpointPath(0), *&v53[*(v55 + 20)] != *&v54[*(v55 + 20)]) || *&v53[*(v55 + 24)] != *&v54[*(v55 + 24)] || !static MatterTileMetadata.== infix(_:_:)(&v8[v4[9]], &v11[v4[9]]) || *&v8[v4[10]] != *&v11[v4[10]] || (sub_1D17A7F14(*&v8[v4[11]], *&v11[v4[11]]) & 1) == 0 || (sub_1D184C184(*&v8[v4[12]], *&v11[v4[12]]) & 1) == 0 || !static StaticClusterGroups.== infix(_:_:)(&v8[v4[13]], &v11[v4[13]]))
    {
LABEL_37:
      sub_1D18615C4(v8, type metadata accessor for ActionEndpoint);
LABEL_38:
      sub_1D18615C4(v11, type metadata accessor for ActionEndpoint);
      return 0;
    }

    v56 = sub_1D17A8098(*&v8[v4[14]], *&v11[v4[14]]);
    sub_1D18615C4(v8, type metadata accessor for ActionEndpoint);
    result = sub_1D18615C4(v11, type metadata accessor for ActionEndpoint);
    a1 = v60;
    if ((v56 & 1) == 0)
    {
      return v42;
    }
  }

  if (v58 <= v20 + 1)
  {
    v27 = v20 + 1;
  }

  else
  {
    v27 = v58;
  }

  v28 = v27 - 1;
  while (1)
  {
    v29 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v29 >= v58)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455B8, &qword_1D1E79B68);
      v37 = v64;
      (*(*(v57 - 8) + 56))(v64, 1, 1, v57);
      v24 = 0;
      v20 = v28;
      goto LABEL_17;
    }

    v30 = *(v59 + 8 * v29);
    ++v20;
    if (v30)
    {
      v24 = (v30 - 1) & v30;
      v26 = __clz(__rbit64(v30)) | (v29 << 6);
      v20 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D184C184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCluster();
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455C0, &qword_1D1E79B70);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v53 - v16;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v55 = a2;
  v56 = v8;
  v18 = 0;
  v54 = a1;
  v19 = *(a1 + 64);
  v53 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v24 = &qword_1EC6455C8;
  v25 = &qword_1D1E79B78;
  while (v22)
  {
    v58 = (v22 - 1) & v22;
    v26 = __clz(__rbit64(v22)) | (v18 << 6);
LABEL_16:
    v32 = *(*(v54 + 48) + v26);
    v33 = v59;
    sub_1D186155C(*(v54 + 56) + *(v60 + 72) * v26, v59, type metadata accessor for StaticCluster);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    v35 = *(v34 + 48);
    *v14 = v32;
    sub_1D18614F4(v33, &v14[v35], type metadata accessor for StaticCluster);
    (*(*(v34 - 8) + 56))(v14, 0, 1, v34);
    v29 = v56;
LABEL_17:
    sub_1D1741A90(v14, v17, &qword_1EC6455C0, &qword_1D1E79B70);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    v37 = (*(*(v36 - 8) + 48))(v17, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return 1;
    }

    v39 = *(v36 + 48);
    v40 = *v17;
    sub_1D18614F4(&v17[v39], v29, type metadata accessor for StaticCluster);
    v41 = v55;
    v42 = sub_1D171D278(v40);
    if ((v43 & 1) == 0)
    {
      sub_1D18615C4(v29, type metadata accessor for StaticCluster);
      return 0;
    }

    v44 = v38;
    v45 = *(v41 + 56) + *(v60 + 72) * v42;
    v46 = v25;
    v47 = v23;
    v48 = v24;
    v49 = v17;
    v50 = v59;
    sub_1D186155C(v45, v59, type metadata accessor for StaticCluster);
    v57 = _s13HomeDataModel13StaticClusterO2eeoiySbAC_ACtFZ_0(v50, v29);
    v51 = v50;
    v17 = v49;
    v24 = v48;
    v23 = v47;
    v25 = v46;
    sub_1D18615C4(v51, type metadata accessor for StaticCluster);
    result = sub_1D18615C4(v29, type metadata accessor for StaticCluster);
    v22 = v58;
    if ((v57 & 1) == 0)
    {
      return v44;
    }
  }

  if (v23 <= v18 + 1)
  {
    v27 = v18 + 1;
  }

  else
  {
    v27 = v23;
  }

  v28 = v27 - 1;
  v29 = v56;
  while (1)
  {
    v30 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v30 >= v23)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      (*(*(v52 - 8) + 56))(v14, 1, 1, v52);
      v58 = 0;
      v18 = v28;
      goto LABEL_17;
    }

    v31 = *(v53 + 8 * v30);
    ++v18;
    if (v31)
    {
      v58 = (v31 - 1) & v31;
      v26 = __clz(__rbit64(v31)) | (v30 << 6);
      v18 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D184C628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v77 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v8 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v99 = &v77 - v9;
  v10 = type metadata accessor for StaticMediaSystemComponent();
  v98 = *(v10 - 8);
  v11 = *(v98 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v77 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v77 - v18;
  v19 = sub_1D1E66A7C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v92 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v96 = &v77 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645550, &qword_1D1E79AF0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v93 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v27);
  v31 = &v77 - v30;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v78 = v7;
  v32 = 0;
  v33 = *(a1 + 64);
  v77 = a1 + 64;
  v34 = 1 << *(a1 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v33;
  v37 = (v34 + 63) >> 6;
  v97 = (v20 + 32);
  v90 = v14;
  v91 = (v20 + 8);
  v82 = v20 + 16;
  v83 = (v20 + 48);
  v95 = &v77 - v30;
  v79 = v37;
  v80 = a1;
  v84 = v10;
  v85 = v19;
  v81 = v20;
  v86 = a2;
  while (v36)
  {
    v94 = (v36 - 1) & v36;
    v38 = __clz(__rbit64(v36)) | (v32 << 6);
LABEL_17:
    v43 = v96;
    (*(v20 + 16))(v96, *(a1 + 48) + *(v20 + 72) * v38, v19);
    v44 = *(a1 + 56) + *(v98 + 72) * v38;
    v45 = v20;
    v46 = v88;
    sub_1D186155C(v44, v88, type metadata accessor for StaticMediaSystemComponent);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645558, &unk_1D1E79AF8);
    v48 = *(v47 + 48);
    v49 = *(v45 + 32);
    v50 = v93;
    v49(v93, v43, v19);
    sub_1D18614F4(v46, v50 + v48, type metadata accessor for StaticMediaSystemComponent);
    (*(*(v47 - 8) + 56))(v50, 0, 1, v47);
    v31 = v95;
LABEL_18:
    sub_1D1741A90(v50, v31, &qword_1EC645550, &qword_1D1E79AF0);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645558, &unk_1D1E79AF8);
    v52 = 1;
    if ((*(*(v51 - 8) + 48))(v31, 1, v51) == 1)
    {
      return v52;
    }

    v53 = v85;
    v54 = *(v51 + 48);
    v55 = *v97;
    v56 = v92;
    (*v97)(v92, v31, v85);
    sub_1D18614F4(&v31[v54], v17, type metadata accessor for StaticMediaSystemComponent);
    v57 = v86;
    v58 = sub_1D1742188(v56);
    LOBYTE(v54) = v59;
    v60 = *v91;
    v61 = v53;
    (*v91)(v56, v53);
    if ((v54 & 1) == 0)
    {
      goto LABEL_35;
    }

    v62 = *(v57 + 56) + *(v98 + 72) * v58;
    v63 = v90;
    sub_1D186155C(v62, v90, type metadata accessor for StaticMediaSystemComponent);
    v64 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    v65 = v84;
    if ((v64 & 1) == 0 || (static StaticMediaProfile.== infix(_:_:)(v63 + v84[5], &v17[v84[5]]) & 1) == 0 || *(v63 + v65[6]) != *&v17[v65[6]] || (sub_1D17A6E98(*(v63 + v65[7]), *&v17[v65[7]]) & 1) == 0)
    {
      goto LABEL_34;
    }

    v87 = v60;
    v66 = v65[8];
    v67 = *(v89 + 48);
    v68 = v99;
    sub_1D17783E0(v63 + v66, v99);
    sub_1D17783E0(&v17[v66], v68 + v67);
    v69 = *v83;
    if ((*v83)(v68, 1, v53) == 1)
    {
      if (v69(v99 + v67, 1, v53) != 1)
      {
        goto LABEL_33;
      }

      sub_1D1741A30(v99, &qword_1EC642590, qword_1D1E71260);
      v20 = v81;
    }

    else
    {
      v70 = v99;
      v71 = v78;
      sub_1D17783E0(v99, v78);
      if (v69(v70 + v67, 1, v53) == 1)
      {
        v87(v71, v53);
        v63 = v90;
LABEL_33:
        sub_1D1741A30(v99, &qword_1EC642980, &unk_1D1E6E6E0);
LABEL_34:
        sub_1D18615C4(v63, type metadata accessor for StaticMediaSystemComponent);
LABEL_35:
        sub_1D18615C4(v17, type metadata accessor for StaticMediaSystemComponent);
        return 0;
      }

      v72 = v96;
      v55(v96, (v70 + v67), v53);
      sub_1D1861484(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      v73 = sub_1D1E6775C();
      v74 = v87;
      v87(v72, v61);
      v74(v71, v61);
      sub_1D1741A30(v70, &qword_1EC642590, qword_1D1E71260);
      v63 = v90;
      v20 = v81;
      if ((v73 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    sub_1D18615C4(v63, type metadata accessor for StaticMediaSystemComponent);
    result = sub_1D18615C4(v17, type metadata accessor for StaticMediaSystemComponent);
    v37 = v79;
    a1 = v80;
    v19 = v61;
    v36 = v94;
    v31 = v95;
  }

  if (v37 <= v32 + 1)
  {
    v39 = v32 + 1;
  }

  else
  {
    v39 = v37;
  }

  v40 = v39 - 1;
  while (1)
  {
    v41 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v41 >= v37)
    {
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645558, &unk_1D1E79AF8);
      v76 = v93;
      (*(*(v75 - 8) + 56))(v93, 1, 1, v75);
      v94 = 0;
      v32 = v40;
      v50 = v76;
      goto LABEL_18;
    }

    v42 = *(v77 + 8 * v41);
    ++v32;
    if (v42)
    {
      v94 = (v42 - 1) & v42;
      v38 = __clz(__rbit64(v42)) | (v41 << 6);
      v32 = v41;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}