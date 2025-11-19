void (*sub_1C2D7F0AC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2D7EDBC();
  return sub_1C2D7F1E4;
}

void (*sub_1C2D7F2AC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2D7F1F0();
  return sub_1C2D7F3E4;
}

uint64_t sub_1C2D7F450@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v4 = (v3 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityValue);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_1C2D7F51C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2D7F638(v1, v2);
}

uint64_t sub_1C2D7F570(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t sub_1C2D7F660(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  if (v7)
  {
    if (a2)
    {
      v8 = *v6 == a1 && v7 == a2;
      if (v8 || (sub_1C2E767A4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v6 = a1;
    v6[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A54();
}

uint64_t sub_1C2D7F7E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  *v6 = a2;
  v6[1] = a3;
}

void (*sub_1C2D7F858(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2D7F3F0();
  return sub_1C2D7F990;
}

uint64_t sub_1C2D7FA10@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v6 = v5 + *a2;
  result = swift_beginAccess();
  v8 = *(v6 + 8);
  *a3 = *v6;
  *(a3 + 8) = v8;
  return result;
}

uint64_t sub_1C2D7FB18()
{
  swift_getKeyPath();
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v1 = v0 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityTraits;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1C2D7FBDC(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityTraits;
  result = swift_beginAccess();
  if ((*(v5 + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v5 != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v5 = a1;
    *(v5 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A54();
}

uint64_t sub_1C2D7FD30(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a1 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityTraits;
  result = swift_beginAccess();
  *v5 = a2;
  *(v5 + 8) = a3 & 1;
  return result;
}

void (*sub_1C2D7FD98(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2D7F99C();
  return sub_1C2D7FED0;
}

uint64_t sub_1C2D7FEDC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v3 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration + 8);
  v4 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1C2D1CA18();
}

uint64_t sub_1C2D7FF9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a1 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration;
  *v4 = a2;
  *(v4 + 8) = a3;
  *(v4 + 16) = a4 & 1;
  sub_1C2D1CA18();
  return sub_1C2D7BD04();
}

uint64_t sub_1C2D80008@<X0>(uint64_t *a1@<X0>, void (**a2)(double *a1@<X8>)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v5 = (v3 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration);
  if (*(v3 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration + 16))
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v9 = *v5;
    v8 = v5[1];
    v7 = swift_allocObject();
    *(v7 + 16) = v9;
    *(v7 + 24) = v8;

    v6 = sub_1C2D87FE8;
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t *sub_1C2D80104(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result[1];
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

    sub_1C2E71A54();
  }

  return result;
}

uint64_t sub_1C2D8025C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
    sub_1C2E71A54();
    sub_1C2C71668(v1);
  }

  return result;
}

uint64_t sub_1C2D80378()
{
  swift_getKeyPath();
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  if (*(v0 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration + 16))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration);

  return v1;
}

void (*sub_1C2D80448(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  swift_getKeyPath();
  v6 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration___observationRegistrar;
  v5[2] = v2;
  v5[4] = v6;
  v5[5] = sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  if (*(v2 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration + 16))
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = *(v2 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration);
  }

  *v5 = v7;
  v5[1] = v8;
  return sub_1C2D80568;
}

void sub_1C2D80568(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  if (a2)
  {
    if (v3)
    {
      v4 = v2[3];
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v2[2] = v4;

      sub_1C2E71A54();
      sub_1C2C71668(v3);

      v6 = *v2;
    }

    else
    {
      v6 = 0;
    }

    sub_1C2C71668(v6);
  }

  else if (v3)
  {
    v7 = v2[3];
    v8 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v8);
    v2[2] = v7;
    sub_1C2E71A54();
    sub_1C2C71668(v3);
  }

  free(v2);
}

uint64_t ControlButtonConfiguration.__allocating_init(enabled:backgroundConfiguration:element:elementColor:clipShape:fontConfiguration:accessibilityIdentifier:accessibilityValue:accessibilityTraits:menuConfiguration:)(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, __int128 *a13)
{
  v18 = swift_allocObject();
  v19 = *a2;
  v20 = *(a2 + 8);
  v21 = a2[2];
  LOBYTE(a2) = *(a2 + 24);
  v22 = *a5;
  v23 = *(a5 + 8);
  v24 = *a6;
  v32 = v22;
  v33 = a6[1];
  LOBYTE(a6) = *(a6 + 16);
  v25 = v18 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0;
  *(v25 + 56) = -256;
  v26 = (v18 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityIdentifier);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v18 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityValue);
  *v27 = 0;
  v27[1] = 0;
  v28 = v18 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityTraits;
  *v28 = 0;
  *(v28 + 8) = 1;
  sub_1C2E71A94();
  *(v18 + 16) = a1;
  *(v18 + 24) = v19;
  *(v18 + 32) = v20;
  *(v18 + 40) = v21;
  *(v18 + 48) = a2;
  sub_1C2D8646C(a3, v18 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element, type metadata accessor for ControlButtonElement);
  *(v18 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__elementColor) = a4;
  v29 = v18 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__clipShape;
  *v29 = v32;
  *(v29 + 8) = v23;
  v30 = v18 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration;
  *v30 = v24;
  *(v30 + 8) = v33;
  *(v30 + 16) = a6;

  sub_1C2D7E988(a13);
  sub_1C2D7F264(a7, a8);
  sub_1C2D7F638(a9, a10);
  sub_1C2D7FBDC(a11, a12 & 1);

  sub_1C2D86C58(a3, type metadata accessor for ControlButtonElement);
  return v18;
}

uint64_t ControlButtonConfiguration.init(enabled:backgroundConfiguration:element:elementColor:clipShape:fontConfiguration:accessibilityIdentifier:accessibilityValue:accessibilityTraits:menuConfiguration:)(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, __int128 *a13)
{
  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = a2[2];
  v20 = *(a2 + 24);
  v21 = *a5;
  v22 = *(a5 + 8);
  v32 = *a6;
  v31 = a6[1];
  v30 = *(a6 + 16);
  v23 = v13 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 0;
  *(v23 + 56) = -256;
  v24 = (v13 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityIdentifier);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v13 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityValue);
  *v25 = 0;
  v25[1] = 0;
  v26 = v13 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityTraits;
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_1C2E71A94();
  *(v13 + 16) = a1;
  *(v13 + 24) = v17;
  *(v13 + 32) = v18;
  *(v13 + 40) = v19;
  *(v13 + 48) = v20;
  sub_1C2D8646C(a3, v13 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element, type metadata accessor for ControlButtonElement);
  *(v13 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__elementColor) = a4;
  v27 = v13 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__clipShape;
  *v27 = v21;
  *(v27 + 8) = v22;
  v28 = v13 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration;
  *v28 = v32;
  *(v28 + 8) = v31;
  *(v28 + 16) = v30;

  sub_1C2D7E988(a13);
  sub_1C2D7F264(a7, a8);
  sub_1C2D7F638(a9, a10);
  sub_1C2D7FBDC(a11, a12 & 1);

  sub_1C2D86C58(a3, type metadata accessor for ControlButtonElement);
  return v13;
}

uint64_t ControlButtonConfiguration.deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1C2CC2678(*(v0 + 24), *(v0 + 32));
  sub_1C2CC2678(v1, v2);
  sub_1C2D86C58(v0 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element, type metadata accessor for ControlButtonElement);

  sub_1C2D86378(*(v0 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration), *(v0 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration + 8), *(v0 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration + 16), *(v0 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration + 24), *(v0 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration + 32), *(v0 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration + 40), *(v0 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration + 48), *(v0 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration + 56));

  sub_1C2D7BD04();
  v3 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration___observationRegistrar;
  v4 = sub_1C2E71AA4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ControlButtonConfiguration.__deallocating_deinit()
{
  ControlButtonConfiguration.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C2D80C84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2E73BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2D0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ControlButton(0);
  sub_1C2C736A4(v1 + *(v10 + 28), v9, &qword_1EC05F2D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C2E73DB4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C2E75FD4();
    v13 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C2D80E8C(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlButton(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = a1[1];
  v17 = *a1;
  v18 = v7;
  v19 = a1[2];
  v20 = *(a1 + 48);
  sub_1C2D8646C(a2, &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ControlButton);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1C2D88018(&v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for ControlButton);
  v10 = v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = v18;
  *v10 = v17;
  *(v10 + 16) = v11;
  *(v10 + 32) = v19;
  *(v10 + 48) = v20;
  v14 = a2;
  v15 = &v17;
  sub_1C2D8853C(&v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D160);
  sub_1C2D88328();
  return sub_1C2E751C4();
}

void sub_1C2D81050(void (**a1)(__int128 *), uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  v4 = *(a2 + 48);
  v5 = *a1;
  v7 = *a2;
  v8 = v2;
  v9 = v3;
  v10 = *(a2 + 32);
  v11 = v4;
  sub_1C2D8853C(a2, &v6);
  v5(&v7);
  sub_1C2D1CA8C(v7, *(&v7 + 1), v8, v9, v10, *(&v10 + 1), v11);
}

uint64_t sub_1C2D810C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061690);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBB8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - v9;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 48);
  if (v13 == 255)
  {
    v26 = *(a1 + 16);
    v27 = v12;
    sub_1C2C74960();

    *v6 = sub_1C2E748A4();
    *(v6 + 1) = v19;
    v6[16] = v20 & 1;
    *(v6 + 3) = v21;
    swift_storeEnumTagMultiPayload();
    sub_1C2C94F38(&qword_1EC05FBC0, &qword_1EC05FBB8);
    return sub_1C2E73F44();
  }

  v25[1] = v4;
  v26 = v11;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v27 = v12;
  if (v13)
  {
    if (v13 != 1)
    {
      sub_1C2CF836C(v14, v15, 2u);
      sub_1C2CF836C(v14, v15, 2u);

      v23 = [v14 description];
      v25[0] = a2;
      v24 = v23;
      sub_1C2E75C64();

      sub_1C2C9E060(v14, v15, 2u);
      goto LABEL_9;
    }

    sub_1C2CF836C(v14, v15, 1u);
    v16 = v14;
    v17 = v15;
    v18 = 1;
  }

  else
  {
    sub_1C2CF836C(v14, v15, 0);
    v16 = v14;
    v17 = v15;
    v18 = 0;
  }

  sub_1C2CF836C(v16, v17, v18);

LABEL_9:
  sub_1C2C74960();
  sub_1C2E750F4();
  (*(v8 + 16))(v6, v10, v7);
  swift_storeEnumTagMultiPayload();
  sub_1C2C94F38(&qword_1EC05FBC0, &qword_1EC05FBB8);
  sub_1C2E73F44();
  sub_1C2C9E060(v14, v15, v13);
  return (*(v8 + 8))(v10, v7);
}

uint64_t ControlButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = type metadata accessor for ControlButton(0);
  v57 = *(v3 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061510);
  MEMORY[0x1EEE9AC00](v71);
  v6 = &v57 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061518);
  v61 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v60 = &v57 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061520);
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v57 - v8;
  v68 = type metadata accessor for ControlButtonStyle();
  MEMORY[0x1EEE9AC00](v68);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061528);
  MEMORY[0x1EEE9AC00](v66);
  v12 = &v57 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061530);
  v59 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v58 = &v57 - v13;
  v65 = v3;
  v14 = *(v3 + 20);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061538);
  v63 = v14;
  v62 = v15;
  sub_1C2E754B4();
  v16 = v82;
  swift_getKeyPath();
  *&v82 = v16;
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v17 = (v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration);
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[1];
  v20 = v17[2];
  *&v84[10] = *(v17 + 42);
  v83 = v19;
  *v84 = v20;
  v82 = v18;
  sub_1C2C736A4(&v82, &v77, &qword_1EC061508);

  if (HIBYTE(*&v84[24]) <= 0xFEu)
  {
    v77 = v82;
    v78 = v83;
    v79 = *v84;
    v80 = *&v84[16];
    v81 = *&v84[24];
    MEMORY[0x1EEE9AC00](v21);
    *(&v57 - 2) = &v77;
    *(&v57 - 1) = v2;
    MEMORY[0x1EEE9AC00](v41);
    *(&v57 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061540);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0615A8);
    sub_1C2D86554();
    sub_1C2D86DC0();
    sub_1C2E746F4();
    sub_1C2E754B4();
    v42 = v73;
    swift_getKeyPath();
    v73 = v42;
    sub_1C2E71A64();

    swift_beginAccess();
    v43 = *(v42 + 16);

    KeyPath = swift_getKeyPath();
    v45 = swift_allocObject();
    *(v45 + 16) = (v43 & 1) == 0;
    v46 = v66;
    v47 = &v12[*(v66 + 36)];
    *v47 = KeyPath;
    v47[1] = sub_1C2D8860C;
    v47[2] = v45;
    sub_1C2E754B4();
    v48 = *(v65 + 24);
    *v10 = v73;
    *(v10 + 8) = *(v2 + v48);
    v49 = v68;
    v50 = *(v68 + 24);
    *&v10[v50] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2D0);
    swift_storeEnumTagMultiPayload();
    v51 = sub_1C2D86CB8();
    v52 = sub_1C2D86C10(&qword_1EC05C2B8, type metadata accessor for ControlButtonStyle);
    v53 = v58;
    sub_1C2E74984();
    sub_1C2D86C58(v10, type metadata accessor for ControlButtonStyle);
    sub_1C2C73644(v12, &qword_1EC061528);
    v54 = v59;
    v55 = v69;
    (*(v59 + 16))(v70, v53, v69);
    swift_storeEnumTagMultiPayload();
    v73 = v46;
    v74 = v49;
    v75 = v51;
    v76 = v52;
    swift_getOpaqueTypeConformance2();
    v56 = sub_1C2D86B2C();
    v73 = v71;
    v74 = v49;
    v75 = v56;
    v76 = v52;
    swift_getOpaqueTypeConformance2();
    sub_1C2E73F44();
    sub_1C2C73644(&v82, &qword_1EC061508);
    return (*(v54 + 8))(v53, v55);
  }

  else
  {
    sub_1C2D8646C(v2, &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlButton);
    v22 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v23 = swift_allocObject();
    v24 = sub_1C2D88018(&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for ControlButton);
    MEMORY[0x1EEE9AC00](v24);
    *(&v57 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061540);
    sub_1C2D86554();
    v25 = v6;
    sub_1C2E751C4();
    sub_1C2E754B4();
    v26 = v77;
    swift_getKeyPath();
    *&v77 = v26;
    sub_1C2E71A64();

    swift_beginAccess();
    LOBYTE(v22) = *(v26 + 16);

    v27 = swift_getKeyPath();
    v28 = swift_allocObject();
    *(v28 + 16) = (v22 & 1) == 0;
    v29 = v71;
    v30 = &v6[*(v71 + 36)];
    *v30 = v27;
    v30[1] = sub_1C2C77658;
    v30[2] = v28;
    sub_1C2E754B4();
    v31 = *(v65 + 24);
    *v10 = v77;
    *(v10 + 8) = *(v2 + v31);
    v32 = v68;
    v33 = *(v68 + 24);
    *&v10[v33] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2D0);
    swift_storeEnumTagMultiPayload();
    v34 = sub_1C2D86B2C();
    v35 = sub_1C2D86C10(&qword_1EC05C2B8, type metadata accessor for ControlButtonStyle);
    v36 = v60;
    sub_1C2E74984();
    sub_1C2D86C58(v10, type metadata accessor for ControlButtonStyle);
    sub_1C2C73644(v25, &qword_1EC061510);
    v37 = v61;
    v38 = v72;
    (*(v61 + 16))(v70, v36, v72);
    swift_storeEnumTagMultiPayload();
    v39 = sub_1C2D86CB8();
    *&v77 = v66;
    *(&v77 + 1) = v32;
    *&v78 = v39;
    *(&v78 + 1) = v35;
    swift_getOpaqueTypeConformance2();
    *&v77 = v29;
    *(&v77 + 1) = v32;
    *&v78 = v34;
    *(&v78 + 1) = v35;
    swift_getOpaqueTypeConformance2();
    sub_1C2E73F44();
    return (*(v37 + 8))(v36, v38);
  }
}

uint64_t sub_1C2D82054@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v67 = a3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061600);
  v61 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  KeyPath = &v53 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061650);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0615D0);
  v58 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v53 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061658);
  MEMORY[0x1EEE9AC00](v59);
  v10 = &v53 - v9;
  v11 = type metadata accessor for ControlButton(0);
  v62 = *(v11 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0615E0);
  v57 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0615C0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v53 - v19;
  v21 = *a1;
  v22 = a1[1];
  v23 = a1[2];
  LOBYTE(v19) = *(a1 + 57);
  v64 = v18;
  if (v19)
  {
    v25 = a1[5];
    v54 = a1[6];
    v24 = v54;
    v53 = v25;
    v26 = a1[3];
    v27 = a1[4];
    v28 = *(a1 + 56);
    v29 = v23;
    v55 = v21;
    v59 = sub_1C2E73D14();
    v58 = v30;
    v56 = v31;
    v57 = v32;
    sub_1C2E75E34();
    sub_1C2D1CA24(v22, v29, v26, v27, v25, v24, v28);
    v33 = sub_1C2E75E24();
    v34 = swift_allocObject();
    v35 = MEMORY[0x1E69E85E0];
    *(v34 + 16) = v33;
    *(v34 + 24) = v35;
    v36 = v35;
    *(v34 + 32) = v22;
    *(v34 + 40) = v29;
    *(v34 + 48) = v26;
    *(v34 + 56) = v27;
    v37 = v54;
    *(v34 + 64) = v53;
    *(v34 + 72) = v37;
    *(v34 + 80) = v28;
    sub_1C2D8646C(v63, &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlButton);
    v38 = sub_1C2E75E24();
    v39 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    *(v40 + 24) = v36;
    sub_1C2D88018(v13, v40 + v39, type metadata accessor for ControlButton);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D170);
    v41 = sub_1C2E753A4();
    v71 = v76;
    v72 = v77;
    v73 = v78;
    v69 = v74;
    v70 = v75;
    MEMORY[0x1EEE9AC00](v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061660);
    sub_1C2D88164();
    sub_1C2D8823C();
    v42 = KeyPath;
    sub_1C2E752A4();
    v43 = v61;
    v44 = v68;
    (*(v61 + 16))(v66, v42, v68);
    swift_storeEnumTagMultiPayload();
    sub_1C2D86E78();
    sub_1C2C94F38(&qword_1EC0615F8, &qword_1EC061600);
    sub_1C2E73F44();
    return (*(v43 + 8))(v42, v44);
  }

  else
  {
    v46 = v62;
    v61 = v6;
    v47 = v63;
    if (v22)
    {
      *&v74 = v21;
      *(&v74 + 1) = v22;
      MEMORY[0x1EEE9AC00](v18);
      v48 = v58;
      sub_1C2D86F9C();
      sub_1C2C74960();

      sub_1C2E75464();
      v49 = v61;
      (*(v48 + 16))(v10, v8, v61);
      swift_storeEnumTagMultiPayload();
      sub_1C2D86F04();
      sub_1C2E73F44();
      (*(v48 + 8))(v8, v49);
    }

    else
    {
      *&v74 = v23;
      KeyPath = swift_getKeyPath();
      sub_1C2D8646C(v47, &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlButton);
      v50 = (*(v46 + 80) + 16) & ~*(v46 + 80);
      v51 = swift_allocObject();
      sub_1C2D88018(v13, v51 + v50, type metadata accessor for ControlButton);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FA10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0615F0);
      sub_1C2C94F38(&qword_1EC061688, &qword_1EC05FA10);
      sub_1C2D881E8();
      sub_1C2C94F38(&qword_1EC0615E8, &qword_1EC0615F0);
      sub_1C2E75434();
      v52 = v57;
      (*(v57 + 16))(v10, v16, v14);
      swift_storeEnumTagMultiPayload();
      sub_1C2D86F04();
      sub_1C2D86F9C();
      sub_1C2E73F44();
      (*(v52 + 8))(v16, v14);
    }

    sub_1C2C736A4(v20, v66, &qword_1EC0615C0);
    swift_storeEnumTagMultiPayload();
    sub_1C2D86E78();
    sub_1C2C94F38(&qword_1EC0615F8, &qword_1EC061600);
    sub_1C2E73F44();
    return sub_1C2C73644(v20, &qword_1EC0615C0);
  }
}

uint64_t sub_1C2D82AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlButton(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v10[1] = a2;
  swift_getKeyPath();
  sub_1C2D8646C(a1, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlButton);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1C2D88018(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ControlButton);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FA10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0615F0);
  sub_1C2C94F38(&qword_1EC061688, &qword_1EC05FA10);
  sub_1C2D881E8();
  sub_1C2C94F38(&qword_1EC0615E8, &qword_1EC0615F0);
  return sub_1C2E75434();
}

uint64_t sub_1C2D82CC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlButton(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v14[5] = a1;
  swift_getKeyPath();
  sub_1C2D8646C(a2, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlButton);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1C2D88018(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ControlButton);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FA10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061698);
  sub_1C2C94F38(&qword_1EC061688, &qword_1EC05FA10);
  sub_1C2D881E8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05D160);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05D170);
  v11 = sub_1C2D88328();
  v12 = sub_1C2D88164();
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v11;
  v14[4] = v12;
  swift_getOpaqueTypeConformance2();
  return sub_1C2E75434();
}

uint64_t sub_1C2D82F18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D160);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16[-v5];
  v8 = *a1;
  v7 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  LOBYTE(a1) = *(a1 + 48);
  v21 = v8;
  v22 = v7;
  v23 = v10;
  v24 = v9;
  v25 = v11;
  v26 = v12;
  v27 = a1;
  sub_1C2D810C8(&v21, &v16[-v5]);
  *&v17 = v8;
  *(&v17 + 1) = v7;
  *&v18 = v10;
  *(&v18 + 1) = v9;
  *&v19 = v11;
  *(&v19 + 1) = v12;
  LOBYTE(v20) = a1;
  HIBYTE(v20) = 1;
  sub_1C2C71D5C(v6, a2, &qword_1EC05D160);
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D168) + 36);
  v14 = v18;
  *v13 = v17;
  *(v13 + 16) = v14;
  *(v13 + 32) = v19;
  *(v13 + 48) = v20;
  v21 = v8;
  v22 = v7;
  v23 = v10;
  v24 = v9;
  v25 = v11;
  v26 = v12;
  v27 = a1;
  v28 = 1;

  sub_1C2CF836C(v11, v12, a1);
  sub_1C2C736A4(&v17, v16, &qword_1EC05D178);
  return sub_1C2C73644(&v21, &qword_1EC05D178);
}

uint64_t sub_1C2D830B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v131 = a1;
  v144 = a2;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061590);
  MEMORY[0x1EEE9AC00](v145);
  v130 = &KeyPath - v4;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061618);
  MEMORY[0x1EEE9AC00](v141);
  v143 = &KeyPath - v5;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061620);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &KeyPath - v6;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061628);
  MEMORY[0x1EEE9AC00](v133);
  v8 = (&KeyPath - v7);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061550);
  MEMORY[0x1EEE9AC00](v139);
  v134 = &KeyPath - v9;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061548);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &KeyPath - v10;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061630);
  v132 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v129 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v135 = &KeyPath - v13;
  v14 = type metadata accessor for ControlButtonElement.SymbolElementConfiguration(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &KeyPath - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ControlButtonElement(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &KeyPath - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v153 = v2;
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v21 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element;
  swift_beginAccess();
  sub_1C2D8646C(v3 + v21, v20, type metadata accessor for ControlButtonElement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v32 = (*v20)();
      LOBYTE(v160) = 0;
      *&v146 = v32;
      v152 = 0;
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061588);
      sub_1C2D86A74();
      sub_1C2E73F44();
      v33 = v158;
      v34 = v137;
      *(v137 + 64) = v157;
      *(v34 + 80) = v33;
      *(v34 + 96) = v159;
      v35 = v154;
      *v34 = v153;
      *(v34 + 16) = v35;
      v36 = v156;
      *(v34 + 32) = v155;
      *(v34 + 48) = v36;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061580);
      sub_1C2D86698();
      sub_1C2D869E8();
      v37 = v140;
      sub_1C2E73F44();
      sub_1C2C736A4(v37, v143, &qword_1EC061548);
      swift_storeEnumTagMultiPayload();
      sub_1C2D8660C();
      sub_1C2C94F38(&qword_1EC05BA50, &qword_1EC061590);
      sub_1C2E73F44();
    }

    else
    {
      v42 = *v20;
      v43 = *(v20 + 1);
      v44 = *(v20 + 2);
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061638) + 64);
      if ((*(v15 + 48))(&v20[v45], 1, v14) != 1)
      {
        v128 = v17;
        sub_1C2D88018(&v20[v45], v17, type metadata accessor for ControlButtonElement.SymbolElementConfiguration);
        v77 = sub_1C2E74414();
        v78 = v130;
        *v130 = v77;
        v133 = &v78[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061640) + 44)];
        *&v153 = v42;
        *(&v153 + 1) = v43;
        sub_1C2C74960();

        v79 = sub_1C2E748A4();
        v81 = v80;
        v83 = v82;
        v134 = v43;
        v84 = sub_1C2E747F4();
        v137 = v44;
        v85 = v84;
        v87 = v86;
        v89 = v88;
        sub_1C2C72340(v79, v81, v83 & 1);

        sub_1C2E74584();
        v90 = sub_1C2E74764();
        v138 = v91;
        v139 = v90;
        LOBYTE(v79) = v92;
        v140 = v93;
        sub_1C2C72340(v85, v87, v89 & 1);

        v94 = sub_1C2E74444();
        LOBYTE(v85) = v94;
        v126 = v94;
        sub_1C2E73034();
        v96 = v95;
        v98 = v97;
        v100 = v99;
        v102 = v101;
        LOBYTE(v153) = v79 & 1;
        v127 = v79 & 1;
        LOBYTE(v146) = 0;
        KeyPath = swift_getKeyPath();
        v103 = v135;
        sub_1C2D84430(v131, v128, v135);
        v104 = v132;
        v105 = v132[2];
        v106 = v129;
        v107 = v136;
        v105(v129, v103, v136);
        *&v146 = v139;
        *(&v146 + 1) = v138;
        LOBYTE(v147) = v79 & 1;
        *(&v147 + 1) = *v168;
        DWORD1(v147) = *&v168[3];
        *(&v147 + 1) = v140;
        LOBYTE(v148) = v85;
        *(&v148 + 1) = *v167;
        DWORD1(v148) = *&v167[3];
        *(&v148 + 1) = v96;
        *&v149 = v98;
        *(&v149 + 1) = v100;
        *&v150 = v102;
        BYTE8(v150) = 0;
        HIDWORD(v150) = *&v169[3];
        *(&v150 + 9) = *v169;
        v108 = KeyPath;
        *&v151 = KeyPath;
        *(&v151 + 1) = 0x3FE999999999999ALL;
        v109 = v147;
        v110 = v133;
        *v133 = v146;
        *(v110 + 1) = v109;
        v111 = v148;
        v112 = v149;
        v113 = v151;
        *(v110 + 4) = v150;
        *(v110 + 5) = v113;
        *(v110 + 2) = v111;
        *(v110 + 3) = v112;
        v114 = v110;
        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061648);
        v105(&v114[*(v115 + 48)], v106, v107);
        sub_1C2C736A4(&v146, &v153, &qword_1EC061588);
        v116 = v104[1];
        v116(v103, v107);
        v116(v106, v107);
        *&v153 = v139;
        *(&v153 + 1) = v138;
        LOBYTE(v154) = v127;
        *(&v154 + 1) = *v168;
        DWORD1(v154) = *&v168[3];
        *(&v154 + 1) = v140;
        LOBYTE(v155) = v126;
        *(&v155 + 1) = *v167;
        DWORD1(v155) = *&v167[3];
        *(&v155 + 1) = v96;
        *&v156 = v98;
        *(&v156 + 1) = v100;
        *&v157 = v102;
        BYTE8(v157) = 0;
        HIDWORD(v157) = *&v169[3];
        *(&v157 + 9) = *v169;
        *&v158 = v108;
        *(&v158 + 1) = 0x3FE999999999999ALL;
        sub_1C2C73644(&v153, &qword_1EC061588);

        v117 = v130;
        sub_1C2C736A4(v130, v143, &qword_1EC061590);
        swift_storeEnumTagMultiPayload();
        sub_1C2D8660C();
        sub_1C2C94F38(&qword_1EC05BA50, &qword_1EC061590);
        sub_1C2E73F44();

        sub_1C2C73644(v117, &qword_1EC061590);
        return sub_1C2D86C58(v128, type metadata accessor for ControlButtonElement.SymbolElementConfiguration);
      }

      *&v153 = v42;
      *(&v153 + 1) = v43;
      sub_1C2C74960();
      v46 = sub_1C2E748A4();
      v48 = v47;
      v50 = v49;
      v51 = sub_1C2E747F4();
      v53 = v52;
      v55 = v54;
      sub_1C2C72340(v46, v48, v50 & 1);

      sub_1C2E74584();
      v56 = sub_1C2E74764();
      v58 = v57;
      v60 = v59;
      v62 = v61;
      sub_1C2C72340(v51, v53, v55 & 1);

      LOBYTE(v51) = sub_1C2E74444();
      sub_1C2E73034();
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v60 &= 1u;
      LOBYTE(v153) = v60;
      LOBYTE(v146) = 0;
      v71 = swift_getKeyPath();
      *&v160 = v56;
      *(&v160 + 1) = v58;
      LOBYTE(v161) = v60;
      *(&v161 + 1) = v62;
      LOBYTE(v162) = v51;
      *(&v162 + 1) = v64;
      *&v163 = v66;
      *(&v163 + 1) = v68;
      *&v164 = v70;
      BYTE8(v164) = 0;
      HIDWORD(v164) = *(&v153 + 3);
      *(&v164 + 9) = v153;
      *&v165 = v71;
      *(&v165 + 1) = 0x3FE999999999999ALL;
      v148 = v162;
      v149 = v163;
      v150 = v164;
      v151 = v165;
      v146 = v160;
      v147 = v161;
      v166 = 1;
      v152 = 1;
      sub_1C2C736A4(&v160, &v153, &qword_1EC061588);
      sub_1C2C736A4(&v160, &v153, &qword_1EC061588);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061588);
      sub_1C2D86A74();
      sub_1C2E73F44();
      v72 = v158;
      v73 = v137;
      *(v137 + 64) = v157;
      *(v73 + 80) = v72;
      *(v73 + 96) = v159;
      v74 = v154;
      *v73 = v153;
      *(v73 + 16) = v74;
      v75 = v156;
      *(v73 + 32) = v155;
      *(v73 + 48) = v75;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061580);
      sub_1C2D86698();
      sub_1C2D869E8();
      v37 = v140;
      sub_1C2E73F44();
      sub_1C2C736A4(v37, v143, &qword_1EC061548);
      swift_storeEnumTagMultiPayload();
      sub_1C2D8660C();
      sub_1C2C94F38(&qword_1EC05BA50, &qword_1EC061590);
      sub_1C2E73F44();

      sub_1C2C73644(&v160, &qword_1EC061588);
      sub_1C2C73644(&v160, &qword_1EC061588);
    }

    v76 = v37;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v128 = v17;
      sub_1C2D88018(v20, v17, type metadata accessor for ControlButtonElement.SymbolElementConfiguration);
      v23 = v135;
      sub_1C2D84430(v131, v17, v135);
      v24 = v132;
      v25 = v136;
      (v132[2])(v8, v23, v136);
      swift_storeEnumTagMultiPayload();
      v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061558);
      v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061560);
      v28 = sub_1C2D867C0();
      v29 = sub_1C2C94F38(&qword_1EC05B200, &qword_1EC061560);
      *&v153 = v26;
      *(&v153 + 1) = v27;
      *&v154 = v28;
      *(&v154 + 1) = v29;
      swift_getOpaqueTypeConformance2();
      v30 = v134;
      sub_1C2E73F44();
      sub_1C2C736A4(v30, v137, &qword_1EC061550);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061580);
      sub_1C2D86698();
      sub_1C2D869E8();
      v31 = v140;
      sub_1C2E73F44();
      sub_1C2C73644(v30, &qword_1EC061550);
      sub_1C2C736A4(v31, v143, &qword_1EC061548);
      swift_storeEnumTagMultiPayload();
      sub_1C2D8660C();
      sub_1C2C94F38(&qword_1EC05BA50, &qword_1EC061590);
      sub_1C2E73F44();
      sub_1C2C73644(v31, &qword_1EC061548);
      (v24[1])(v135, v25);
      return sub_1C2D86C58(v128, type metadata accessor for ControlButtonElement.SymbolElementConfiguration);
    }

    v38 = *v20;
    v39 = *(v20 + 1);
    v40 = v20[16];
    LODWORD(v135) = v40;
    v132 = v39;
    if (v40)
    {
      if (v40 == 1)
      {
        sub_1C2C70B1C(v38, v39, 1u);
        v41 = sub_1C2E75064();
      }

      else
      {
        sub_1C2C70B1C(v38, v39, 2u);
        v41 = sub_1C2E75034();
      }
    }

    else
    {
      sub_1C2C70B1C(v38, v39, 0);
      v41 = sub_1C2E750D4();
    }

    *v8 = v41;
    swift_storeEnumTagMultiPayload();

    v119 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061558);
    v120 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061560);
    v121 = sub_1C2D867C0();
    v122 = sub_1C2C94F38(&qword_1EC05B200, &qword_1EC061560);
    *&v153 = v119;
    *(&v153 + 1) = v120;
    *&v154 = v121;
    *(&v154 + 1) = v122;
    swift_getOpaqueTypeConformance2();
    v123 = v134;
    sub_1C2E73F44();
    sub_1C2C736A4(v123, v137, &qword_1EC061550);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061580);
    sub_1C2D86698();
    sub_1C2D869E8();
    v124 = v140;
    sub_1C2E73F44();
    sub_1C2C73644(v123, &qword_1EC061550);
    sub_1C2C736A4(v124, v143, &qword_1EC061548);
    swift_storeEnumTagMultiPayload();
    sub_1C2D8660C();
    sub_1C2C94F38(&qword_1EC05BA50, &qword_1EC061590);
    sub_1C2E73F44();
    sub_1C2C77608(v38, v132, v135);

    v76 = v124;
  }

  return sub_1C2C73644(v76, &qword_1EC061548);
}

uint64_t sub_1C2D84304@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E73DB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ControlButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061538);
  sub_1C2E754B4();
  sub_1C2D80C84(v5);
  sub_1C2D830B0(v5, a1);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C2D84430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v39 = a1;
  v42 = a3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061560);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v40 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061568);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v38 - v11);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061558);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v38 - v13;

  v14 = sub_1C2E75044();
  v15 = type metadata accessor for ControlButtonElement.SymbolElementConfiguration(0);
  v16 = *(v15 + 20);
  KeyPath = swift_getKeyPath();
  v18 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCA8) + 36));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCB0) + 28);
  v20 = sub_1C2E750B4();
  (*(*(v20 - 8) + 16))(v18 + v19, a2 + v16, v20);
  *v18 = KeyPath;
  *v12 = v14;
  v21 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061570) + 36));
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061578) + 28);
  v23 = *(v15 + 24);
  v24 = sub_1C2E73DF4();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v21 + v22, a2 + v23, v24);
  (*(v25 + 56))(v21 + v22, 0, 1, v24);
  *v21 = swift_getKeyPath();
  swift_getKeyPath();
  v47 = v4;
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v26 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__elementColor;
  swift_beginAccess();
  *(v12 + *(v10 + 44)) = *(v4 + v26);
  swift_getKeyPath();
  v46 = v4;

  sub_1C2E71A64();

  v27 = *(v4 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration);
  if (*(v4 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration + 16))
  {
  }

  else
  {

    v27(v39);
    v28 = sub_1C2E74534();
    v29 = v40;
    (*(*(v28 - 8) + 56))(v40, 1, 1, v28);
    v30 = sub_1C2E745C4();
    sub_1C2D7BD04();
    sub_1C2C73644(v29, &qword_1EC05D810);
    v27 = v30;
  }

  v31 = swift_getKeyPath();
  v32 = v44;
  sub_1C2C71D5C(v12, v44, &qword_1EC061568);
  v33 = (v32 + *(v43 + 36));
  *v33 = v31;
  v33[1] = v27;
  v34 = *MEMORY[0x1E697E6E8];
  v35 = sub_1C2E73554();
  v36 = v45;
  (*(*(v35 - 8) + 104))(v45, v34, v35);
  sub_1C2D86C10(&qword_1EC05B9D8, MEMORY[0x1E697E730]);
  result = sub_1C2E75BA4();
  if (result)
  {
    sub_1C2D867C0();
    sub_1C2C94F38(&qword_1EC05B200, &qword_1EC061560);
    sub_1C2E74A84();
    sub_1C2C73644(v36, &qword_1EC061560);
    return sub_1C2C73644(v32, &qword_1EC061558);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C2D84A6C(uint64_t a1)
{
  v2 = sub_1C2E73DB4();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C2E73914();
}

uint64_t sub_1C2D84BBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C2E73B34();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C2D84C14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060DB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C2C736A4(a1, &v5 - v3, &qword_1EC060DB8);
  return sub_1C2E73A44();
}

BOOL _s16CommunicationsUI16ControlSelectionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1C2E767A4() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_1C2E767A4() & 1) == 0)
  {
    return 0;
  }

  if (v6 == 255)
  {
    if (v11 == 255)
    {
      sub_1C2CF836C(v3, v5, 0xFFu);
      sub_1C2CF836C(v10, v9, 0xFFu);
      v16 = v3;
      v17 = v5;
      v18 = -1;
      goto LABEL_28;
    }

LABEL_13:
    sub_1C2CF836C(v3, v5, v6);
    sub_1C2CF836C(v10, v9, v11);
    sub_1C2C9E060(v3, v5, v6);
    sub_1C2C9E060(v10, v9, v11);
    return 0;
  }

  if (v11 == 255)
  {
    goto LABEL_13;
  }

  if (!v6)
  {
    sub_1C2CF836C(v3, v5, 0);
    sub_1C2CF836C(v10, v9, v11);
    v12 = v3;
    v13 = v5;
    v14 = 0;
    goto LABEL_17;
  }

  if (v6 == 1)
  {
    sub_1C2CF836C(v3, v5, 1u);
    sub_1C2CF836C(v10, v9, v11);
    v12 = v3;
    v13 = v5;
    v14 = 1;
LABEL_17:
    sub_1C2CF836C(v12, v13, v14);
    v19 = v3;
    v20 = v5;
    goto LABEL_19;
  }

  sub_1C2CF836C(v3, v5, 2u);
  sub_1C2CF836C(v10, v9, v11);
  sub_1C2CF836C(v3, v5, 2u);
  v21 = [v3 description];
  v19 = sub_1C2E75C64();
  v20 = v22;

  sub_1C2C9E060(v3, v5, 2u);
LABEL_19:
  if (!v11)
  {
    v23 = 0;
LABEL_23:
    sub_1C2C70B1C(v10, v9, v23);
    v24 = v9;
    if (v19 != v10)
    {
LABEL_29:
      v28 = sub_1C2E767A4();

      sub_1C2C9E060(v10, v9, v11);
      sub_1C2C9E060(v3, v5, v6);
      return (v28 & 1) != 0;
    }

    goto LABEL_26;
  }

  if (v11 == 1)
  {
    v23 = 1;
    goto LABEL_23;
  }

  sub_1C2C70B1C(v10, v9, 2u);
  v29 = v19;
  v25 = [v10 description];
  v26 = sub_1C2E75C64();
  v24 = v27;

  sub_1C2C9E060(v10, v9, 2u);
  if (v29 != v26)
  {
    goto LABEL_29;
  }

LABEL_26:
  if (v20 != v24)
  {
    goto LABEL_29;
  }

  sub_1C2C9E060(v10, v9, v11);
  v16 = v3;
  v17 = v5;
  v18 = v6;
LABEL_28:
  sub_1C2C9E060(v16, v17, v18);
  return 1;
}

uint64_t _s16CommunicationsUI17MenuConfigurationO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v57 = *a1;
  v3 = a1[2];
  v58 = v2;
  *v59 = v3;
  *&v59[10] = *(a1 + 42);
  v4 = a2[1];
  v60 = *a2;
  v61 = v4;
  *v62 = a2[2];
  *&v62[10] = *(a2 + 42);
  v5 = v57;
  v6 = v58;
  if (v59[25])
  {
    v8 = *(&v58 + 1);
    v7 = *v59;
    v9 = *&v59[8];
    v10 = *&v59[16];
    v11 = v59[24];
    v12 = v61;
    if (v62[25])
    {
      v42 = v58;
      v43 = *(&v60 + 1);
      v45 = *(&v58 + 1);
      v46 = *v59;
      v44 = *&v59[8];
      v48 = *&v59[16];
      v47 = v59[24];
      v14 = *v62;
      v13 = *&v62[8];
      v15 = *&v62[16];
      v16 = v62[24];
      v17 = *(&v61 + 1);
      v18 = v60;
      sub_1C2D885BC(&v57, v53);
      sub_1C2D885BC(&v60, v53);
      v19 = sub_1C2CF7134(v5, v18);

      if (v19)
      {
        v40 = v14;
        v41 = v13;
        if (v42)
        {
          v53[0] = *(&v5 + 1);
          v53[1] = v42;
          v53[2] = v45;
          v53[3] = v46;
          v21 = v43;
          v20 = v44;
          v22 = v48;
          v54 = v44;
          v55 = v48;
          v56 = v47;
          if (v12)
          {
            v49[0] = v43;
            v49[1] = v12;
            v49[2] = v17;
            v49[3] = v40;
            v50 = v41;
            v51 = v15;
            v52 = v16;
            sub_1C2D1CA24(*(&v5 + 1), v42, v45, v46, v44, v48, v47);
            v23 = _s16CommunicationsUI16ControlSelectionV2eeoiySbAC_ACtFZ_0(v53, v49);
            v24 = v50;
            v25 = v51;
            v26 = v52;

            sub_1C2C9E060(v24, v25, v26);
            v27 = v54;
            v28 = v55;
            v29 = v56;

            sub_1C2C9E060(v27, v28, v29);
            sub_1C2D1CA8C(*(&v5 + 1), v42, v45, v46, v44, v48, v47);
            return v23;
          }

          v39 = v17;
          sub_1C2D1CA24(*(&v5 + 1), v42, v45, v46, v44, v48, v47);

          sub_1C2C9E060(v44, v48, v47);
          v38 = v45;
        }

        else
        {
          v39 = v17;
          v22 = v48;
          v20 = v44;
          v38 = v45;
          v21 = v43;
          if (!v12)
          {
            sub_1C2D1CA8C(*(&v5 + 1), 0, v45, v46, v44, v48, v47);
            return 1;
          }
        }

        sub_1C2D1CA8C(*(&v5 + 1), v42, v38, v5, v20, v22, v47);
        v30 = v21;
        v31 = v12;
        v32 = v39;
        v33 = v40;
        v34 = v41;
        v35 = v15;
        v36 = v16;
      }

      else
      {
        sub_1C2D1CA8C(v43, v12, v17, v14, v13, v15, v16);
        v30 = *(&v5 + 1);
        v31 = v42;
        v32 = v45;
        v33 = v46;
        v34 = v44;
        v35 = v48;
        v36 = v47;
      }

      sub_1C2D1CA8C(v30, v31, v32, v33, v34, v35, v36);
    }

    else
    {
      sub_1C2D885BC(&v57, v53);
      sub_1C2D885BC(&v60, v53);

      sub_1C2D1CA8C(*(&v5 + 1), v6, v8, v7, v9, v10, v11);
    }

    return 0;
  }

  if (v62[25])
  {
    return 0;
  }

  if (*(&v57 + 1))
  {
    if (!*(&v60 + 1) || v57 != v60 && (sub_1C2E767A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(&v60 + 1))
  {
    return 0;
  }

  return sub_1C2CF7134(v58, v61);
}

uint64_t _s16CommunicationsUI20ControlButtonElementO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlButtonElement.SymbolElementConfiguration(0);
  v80 = *(v4 - 8);
  v81 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v75 - v9);
  MEMORY[0x1EEE9AC00](v8);
  v78 = (&v75 - v11);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0616A8);
  MEMORY[0x1EEE9AC00](v79);
  v83 = &v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061608);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v77 = (&v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v82 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v75 - v18;
  v19 = type metadata accessor for ControlButtonElement(0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v75 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v75 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0616B0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v75 + *(v29 + 56) - v30;
  v32 = a1;
  v33 = &v75 - v30;
  sub_1C2D8646C(v32, &v75 - v30, type metadata accessor for ControlButtonElement);
  sub_1C2D8646C(a2, v31, type metadata accessor for ControlButtonElement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_18;
      }

      sub_1C2D86C58(v31, type metadata accessor for ControlButtonElement);
      sub_1C2D86C58(v33, type metadata accessor for ControlButtonElement);
      v35 = 1;
      return v35 & 1;
    }

    sub_1C2D8646C(v33, v25, type metadata accessor for ControlButtonElement);
    v43 = *(v25 + 2);
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061638) + 64);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_1C2C73644(&v25[v44], &qword_1EC061608);

      goto LABEL_18;
    }

    v75 = v43;
    v76 = v33;
    sub_1C2C71D5C(&v25[v44], v84, &qword_1EC061608);
    v45 = &v31[v44];
    v46 = v82;
    sub_1C2C71D5C(v45, v82, &qword_1EC061608);
    v47 = sub_1C2E75CA4();
    v49 = v48;

    v50 = sub_1C2E75CA4();
    v52 = v51;

    if (v47 == v50 && v49 == v52)
    {

      v53 = v83;
    }

    else
    {
      v55 = sub_1C2E767A4();

      v53 = v83;
      if ((v55 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    if (sub_1C2E74504())
    {
      v56 = *(v79 + 48);
      v57 = v84;
      sub_1C2C736A4(v84, v53, &qword_1EC061608);
      sub_1C2C736A4(v46, v53 + v56, &qword_1EC061608);
      v58 = v81;
      v59 = *(v80 + 48);
      if (v59(v53, 1, v81) == 1)
      {

        sub_1C2C73644(v46, &qword_1EC061608);
        sub_1C2C73644(v57, &qword_1EC061608);
        if (v59(v53 + v56, 1, v58) == 1)
        {
          sub_1C2C73644(v53, &qword_1EC061608);
          v35 = 1;
LABEL_49:
          sub_1C2D86C58(v76, type metadata accessor for ControlButtonElement);
          return v35 & 1;
        }
      }

      else
      {
        v73 = v77;
        sub_1C2C736A4(v53, v77, &qword_1EC061608);
        if (v59(v53 + v56, 1, v58) != 1)
        {
          v74 = v78;
          sub_1C2D88018(v53 + v56, v78, type metadata accessor for ControlButtonElement.SymbolElementConfiguration);
          if (*v73 == *v74 && v73[1] == v74[1] || (v35 = 0, (sub_1C2E767A4() & 1) != 0))
          {
            v35 = sub_1C2E750A4();
          }

          sub_1C2C73644(v46, &qword_1EC061608);
          sub_1C2C73644(v57, &qword_1EC061608);
          sub_1C2D86C58(v78, type metadata accessor for ControlButtonElement.SymbolElementConfiguration);
          sub_1C2D86C58(v73, type metadata accessor for ControlButtonElement.SymbolElementConfiguration);
          sub_1C2C73644(v53, &qword_1EC061608);
          goto LABEL_49;
        }

        sub_1C2C73644(v46, &qword_1EC061608);
        sub_1C2C73644(v57, &qword_1EC061608);
        sub_1C2D86C58(v73, type metadata accessor for ControlButtonElement.SymbolElementConfiguration);
      }

      v61 = &qword_1EC0616A8;
      v60 = v53;
LABEL_48:
      sub_1C2C73644(v60, v61);
      v35 = 0;
      goto LABEL_49;
    }

LABEL_30:

    sub_1C2C73644(v46, &qword_1EC061608);
    v60 = v84;
    v61 = &qword_1EC061608;
    goto LABEL_48;
  }

  if (EnumCaseMultiPayload)
  {
    v76 = v33;
    sub_1C2D8646C(v33, v27, type metadata accessor for ControlButtonElement);
    v36 = *v27;
    v37 = *(v27 + 1);
    v38 = v27[16];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C2C77608(v36, v37, v38);
      v33 = v76;
      goto LABEL_18;
    }

    v40 = *v31;
    v39 = *(v31 + 1);
    LODWORD(v41) = v31[16];
    if (v38)
    {
      if (v38 != 1)
      {
        sub_1C2C70B1C(v36, v37, 2u);
        v64 = v41;
        v41 = [v36 description];
        v62 = sub_1C2E75C64();
        v63 = v65;

        LODWORD(v41) = v64;
        sub_1C2C77608(v36, v37, 2u);
LABEL_34:
        if (v41)
        {
          if (v41 != 1)
          {
            sub_1C2C70B1C(v40, v39, 2u);
            v68 = [v40 description];
            v84 = v62;
            v69 = v41;
            v41 = v68;
            v70 = sub_1C2E75C64();
            v67 = v71;

            LOBYTE(v41) = v69;
            v72 = v84;
            sub_1C2C77608(v40, v39, 2u);
            if (v72 != v70)
            {
              goto LABEL_43;
            }

            goto LABEL_41;
          }

          v66 = 1;
        }

        else
        {
          v66 = 0;
        }

        sub_1C2C70B1C(v40, v39, v66);
        v67 = v39;
        if (v62 != v40)
        {
          goto LABEL_43;
        }

LABEL_41:
        if (v63 == v67)
        {
          v35 = 1;
LABEL_44:

          sub_1C2C77608(v40, v39, v41);
          sub_1C2C77608(v36, v37, v38);
          sub_1C2D86C58(v76, type metadata accessor for ControlButtonElement);
          return v35 & 1;
        }

LABEL_43:
        v35 = sub_1C2E767A4();
        goto LABEL_44;
      }

      v42 = 1;
    }

    else
    {
      v42 = 0;
    }

    sub_1C2C70B1C(v36, v37, v42);
    v62 = v36;
    v63 = v37;
    goto LABEL_34;
  }

  sub_1C2D8646C(v33, v22, type metadata accessor for ControlButtonElement);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C2D86C58(v22, type metadata accessor for ControlButtonElement.SymbolElementConfiguration);
LABEL_18:
    sub_1C2C73644(v33, &qword_1EC0616B0);
    v35 = 0;
    return v35 & 1;
  }

  sub_1C2D88018(v22, v10, type metadata accessor for ControlButtonElement.SymbolElementConfiguration);
  sub_1C2D88018(v31, v7, type metadata accessor for ControlButtonElement.SymbolElementConfiguration);
  if (*v10 == *v7 && v10[1] == v7[1] || (v35 = 0, (sub_1C2E767A4() & 1) != 0))
  {
    v35 = sub_1C2E750A4();
  }

  sub_1C2D86C58(v7, type metadata accessor for ControlButtonElement.SymbolElementConfiguration);
  sub_1C2D86C58(v10, type metadata accessor for ControlButtonElement.SymbolElementConfiguration);
  sub_1C2D86C58(v33, type metadata accessor for ControlButtonElement);
  return v35 & 1;
}

uint64_t sub_1C2D85EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlButtonElement(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2D85F7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v31 = *a1;
  v32 = v3;
  v33 = *(a1 + 32);
  v4 = *(a2 + 16);
  *&v30[6] = *a2;
  v34 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v30[22] = v4;
  *&v30[38] = *(a2 + 32);
  *&v30[54] = *(a2 + 48);
  v6 = *(a2 + 56);
  if (v5 >> 8 <= 0xFE)
  {
    v9 = *(a1 + 32);
    v24 = *(a1 + 16);
    *v25 = v9;
    *&v25[16] = *(a1 + 48);
    v23 = *a1;
    *&v25[24] = v5;
    v20 = v23;
    v21 = v24;
    v22[0] = v9;
    *(v22 + 10) = *&v25[10];
    if (v6 >> 8 <= 0xFE)
    {
      v10 = *(a2 + 16);
      v17 = *a2;
      v18 = v10;
      *v19 = *(a2 + 32);
      *&v19[16] = *(a2 + 48);
      *&v19[24] = v6;
      sub_1C2C736A4(a1, v15, &qword_1EC061508);
      sub_1C2C736A4(a2, v15, &qword_1EC061508);
      sub_1C2C736A4(&v23, v15, &qword_1EC061508);
      v11 = _s16CommunicationsUI17MenuConfigurationO2eeoiySbAC_ACtFZ_0(&v20, &v17);
      v13[0] = v17;
      v13[1] = v18;
      v14[0] = *v19;
      *(v14 + 10) = *&v19[10];
      sub_1C2D8858C(v13);
      v15[0] = v20;
      v15[1] = v21;
      v16[0] = v22[0];
      *(v16 + 10) = *(v22 + 10);
      sub_1C2D8858C(v15);
      v17 = v31;
      v18 = v32;
      *v19 = v33;
      *&v19[16] = v34;
      *&v19[24] = v5;
      sub_1C2C73644(&v17, &qword_1EC061508);
      v8 = v11 ^ 1;
      return v8 & 1;
    }

    v17 = v23;
    v18 = v24;
    *v19 = *v25;
    *&v19[10] = *&v25[10];
    sub_1C2C736A4(a1, v15, &qword_1EC061508);
    sub_1C2C736A4(a2, v15, &qword_1EC061508);
    sub_1C2C736A4(&v23, v15, &qword_1EC061508);
    sub_1C2D8858C(&v17);
    goto LABEL_7;
  }

  if (v6 >> 8 <= 0xFE)
  {
    sub_1C2C736A4(a1, &v23, &qword_1EC061508);
    sub_1C2C736A4(a2, &v23, &qword_1EC061508);
LABEL_7:
    v23 = v31;
    v24 = v32;
    *v25 = v33;
    v26 = *v30;
    *&v25[16] = v34;
    *&v25[24] = v5;
    v27 = *&v30[16];
    *v28 = *&v30[32];
    *&v28[14] = *&v30[46];
    v29 = v6;
    sub_1C2C73644(&v23, &qword_1EC0616A0);
    v8 = 1;
    return v8 & 1;
  }

  v7 = *(a1 + 16);
  v23 = *a1;
  v24 = v7;
  *v25 = *(a1 + 32);
  *&v25[16] = *(a1 + 48);
  *&v25[24] = v5;
  sub_1C2C736A4(a1, &v20, &qword_1EC061508);
  sub_1C2C736A4(a2, &v20, &qword_1EC061508);
  sub_1C2C73644(&v23, &qword_1EC061508);
  v8 = 0;
  return v8 & 1;
}

uint64_t sub_1C2D86300(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 16) + *a1;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

void sub_1C2D86378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, __int16 a8)
{
  if (HIBYTE(a8) != 255)
  {
    sub_1C2D863B0(a1, a2, a3, a4, a5, a6, a7, a8, HIBYTE(a8) & 1);
  }
}

void sub_1C2D863B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, unsigned __int8 a8, char a9)
{
  if (a9)
  {

    sub_1C2D1CA8C(a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
  }
}

uint64_t sub_1C2D8646C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2D864D4()
{
  v1 = *(type metadata accessor for ControlButton(0) - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  return v2(v4);
}

unint64_t sub_1C2D86554()
{
  result = qword_1EC05B510;
  if (!qword_1EC05B510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061540);
    sub_1C2D8660C();
    sub_1C2C94F38(&qword_1EC05BA50, &qword_1EC061590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B510);
  }

  return result;
}

unint64_t sub_1C2D8660C()
{
  result = qword_1EC05B518;
  if (!qword_1EC05B518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061548);
    sub_1C2D86698();
    sub_1C2D869E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B518);
  }

  return result;
}

unint64_t sub_1C2D86698()
{
  result = qword_1EC05B540;
  if (!qword_1EC05B540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061550);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061558);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061560);
    sub_1C2D867C0();
    sub_1C2C94F38(&qword_1EC05B200, &qword_1EC061560);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B540);
  }

  return result;
}

unint64_t sub_1C2D867C0()
{
  result = qword_1EC05B648;
  if (!qword_1EC05B648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061558);
    sub_1C2D86878();
    sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B648);
  }

  return result;
}

unint64_t sub_1C2D86878()
{
  result = qword_1EC05B688;
  if (!qword_1EC05B688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061568);
    sub_1C2D86930();
    sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B688);
  }

  return result;
}

unint64_t sub_1C2D86930()
{
  result = qword_1EC05B718;
  if (!qword_1EC05B718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061570);
    sub_1C2C76D5C();
    sub_1C2C94F38(&qword_1EC05B450, &qword_1EC061578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B718);
  }

  return result;
}

unint64_t sub_1C2D869E8()
{
  result = qword_1EC05B530;
  if (!qword_1EC05B530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061580);
    sub_1C2D86A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B530);
  }

  return result;
}

unint64_t sub_1C2D86A74()
{
  result = qword_1EC05B790;
  if (!qword_1EC05B790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061588);
    sub_1C2CD8E5C();
    sub_1C2C94F38(&qword_1EC05CB10, &qword_1EC05FED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B790);
  }

  return result;
}

unint64_t sub_1C2D86B2C()
{
  result = qword_1EC05B858;
  if (!qword_1EC05B858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061510);
    sub_1C2C94F38(&qword_1EC05B3B0, &qword_1EC061598);
    sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B858);
  }

  return result;
}

uint64_t sub_1C2D86C10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2D86C58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C2D86CB8()
{
  result = qword_1EC05B900;
  if (!qword_1EC05B900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061528);
    sub_1C2C94F38(&qword_1EC05B440, &qword_1EC0615A0);
    sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B900);
  }

  return result;
}

unint64_t sub_1C2D86DC0()
{
  result = qword_1EC0615B0;
  if (!qword_1EC0615B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0615A8);
    sub_1C2D86E78();
    sub_1C2C94F38(&qword_1EC0615F8, &qword_1EC061600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0615B0);
  }

  return result;
}

unint64_t sub_1C2D86E78()
{
  result = qword_1EC0615B8;
  if (!qword_1EC0615B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0615C0);
    sub_1C2D86F04();
    sub_1C2D86F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0615B8);
  }

  return result;
}

unint64_t sub_1C2D86F04()
{
  result = qword_1EC0615C8;
  if (!qword_1EC0615C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0615D0);
    sub_1C2D86F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0615C8);
  }

  return result;
}

unint64_t sub_1C2D86F9C()
{
  result = qword_1EC0615D8;
  if (!qword_1EC0615D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0615E0);
    sub_1C2C94F38(&qword_1EC0615E8, &qword_1EC0615F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0615D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16CommunicationsUI11SystemImageVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2D87080(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1C2D870C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16CommunicationsUI16ControlSelectionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C2D87168(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 57);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C2D871B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = -a2;
    }
  }

  return result;
}

void sub_1C2D87270()
{
  type metadata accessor for ControlButtonElement.SymbolElementConfiguration(319);
  if (v0 <= 0x3F)
  {
    sub_1C2D72450();
    if (v1 <= 0x3F)
    {
      sub_1C2D87300();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1C2D87300()
{
  if (!qword_1EC05B2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061608);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC05B2C0);
    }
  }
}

uint64_t sub_1C2D873A8()
{
  result = sub_1C2E750B4();
  if (v1 <= 0x3F)
  {
    result = sub_1C2E73DF4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1C2D87450(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 25))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C2D874A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1C2D87514()
{
  result = type metadata accessor for ControlButtonElement(319);
  if (v1 <= 0x3F)
  {
    result = sub_1C2E71AA4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t _s10ImageStyleO25ClippedImageConfigurationV17SizeConfigurationOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s10ImageStyleO25ClippedImageConfigurationV17SizeConfigurationOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1C2D87C78()
{
  sub_1C2D72450();
  if (v0 <= 0x3F)
  {
    sub_1C2D87D8C(319, &qword_1EC05B2E8, type metadata accessor for ControlButtonConfiguration, MEMORY[0x1E6981AA0]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_1C2D87D8C(319, &qword_1EC05CBF8, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C2D87D8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1C2D87DF0()
{
  result = qword_1EC05B558;
  if (!qword_1EC05B558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061610);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061528);
    type metadata accessor for ControlButtonStyle();
    sub_1C2D86CB8();
    sub_1C2D86C10(&qword_1EC05C2B8, type metadata accessor for ControlButtonStyle);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061510);
    sub_1C2D86B2C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B558);
  }

  return result;
}

uint64_t sub_1C2D87F80()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration;
  *v3 = *(v0 + 24);
  *(v3 + 8) = v1;
  *(v3 + 16) = v2;
  sub_1C2D1CA18();
  return sub_1C2D7BD04();
}

uint64_t sub_1C2D88018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2D88080@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 64);
  *(a1 + 48) = *(v1 + 80);
  return sub_1C2C736A4(v1 + 32, v4, &qword_1EC05D170);
}

uint64_t sub_1C2D880D0(uint64_t a1)
{
  v3 = *(type metadata accessor for ControlButton(0) - 8);
  v4 = *(a1 + 48);
  v5 = *(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v8[2] = *(a1 + 32);
  v9 = v4;
  return v5(v8);
}

unint64_t sub_1C2D88164()
{
  result = qword_1EC061668;
  if (!qword_1EC061668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05D170);
    sub_1C2D881E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061668);
  }

  return result;
}

unint64_t sub_1C2D881E8()
{
  result = qword_1EC061670;
  if (!qword_1EC061670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061670);
  }

  return result;
}

unint64_t sub_1C2D8823C()
{
  result = qword_1EC061678;
  if (!qword_1EC061678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061660);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05D160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05D170);
    sub_1C2D88328();
    sub_1C2D88164();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061678);
  }

  return result;
}

unint64_t sub_1C2D88328()
{
  result = qword_1EC061680;
  if (!qword_1EC061680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05D160);
    sub_1C2C94F38(&qword_1EC05FBC0, &qword_1EC05FBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061680);
  }

  return result;
}

uint64_t sub_1C2D88400(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ControlButton(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_1C2D88494()
{
  v1 = *(type metadata accessor for ControlButton(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_1C2D81050((v0 + v2), v3);
}

uint64_t type metadata accessor for SettingsPersonList()
{
  result = qword_1EC0616C8;
  if (!qword_1EC0616C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C2D886BC()
{
  sub_1C2D8883C(319, &qword_1EC0616D8, MEMORY[0x1E697D718], MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1C2D887D8();
    if (v1 <= 0x3F)
    {
      sub_1C2E727C4();
      if (v2 <= 0x3F)
      {
        sub_1C2D8883C(319, &qword_1EC0616E8, MEMORY[0x1E6995FA0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C2D887D8()
{
  if (!qword_1EC0616E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F2A8);
    v0 = sub_1C2E730F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0616E0);
    }
  }
}

void sub_1C2D8883C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C2D888BC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v24[0] = a1;
  v24[1] = a2;
  v26 = sub_1C2E719E4();
  v5 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C2E719F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061848);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - v14;
  (*(v9 + 16))(v11, v4, v8, v13);
  v16 = MEMORY[0x1E6969B50];
  sub_1C2D8EC24(&qword_1EC061850, MEMORY[0x1E6969B50]);
  sub_1C2E75D24();
  sub_1C2D8EC24(&qword_1EC061858, v16);
  v17 = (v5 + 8);
  do
  {
    sub_1C2E75F64();
    sub_1C2D8EC24(&qword_1EC061860, MEMORY[0x1E6969B18]);
    v18 = v26;
    v19 = sub_1C2E75BA4();
    (*v17)(v7, v18);
    if (v19)
    {
      break;
    }

    v20 = sub_1C2E75F84();
    v22 = *v21;
    v20(v25, 0);
    sub_1C2E75F74();
    v25[0] = v22;
    (v24[0])(v25);
  }

  while (!v3);
  return sub_1C2C73644(v15, &qword_1EC061848);
}

uint64_t sub_1C2D88C10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C2E73BA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F298);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1C2C736A4(v2, &v13 - v9, &qword_1EC05F298);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C2C71D5C(v10, a1, &qword_1EC05F2A8);
  }

  sub_1C2E75FD4();
  v12 = sub_1C2E74404();
  sub_1C2E72B14();

  sub_1C2E73B94();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1C2D88DF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061958);
  sub_1C2C94F38(&qword_1EC061960, &qword_1EC061958);
  return sub_1C2E73064();
}

uint64_t sub_1C2D88E98@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  sub_1C2C74960();

  v4 = sub_1C2E748A4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (!a1)
  {
    goto LABEL_5;
  }

  if (sub_1C2E75CD4() < 1)
  {
    a1 = 0;
LABEL_5:
    v12 = 0;
    v16 = 0;
    v14 = 0;
    goto LABEL_6;
  }

  a1 = sub_1C2E748A4();
  v12 = v11;
  v14 = v13;
  v16 = v15 & 1;
  sub_1C2C72330(a1, v11, v15 & 1);

LABEL_6:
  v17 = v8 & 1;
  sub_1C2C72330(v4, v6, v17);

  sub_1C2C7DD04(a1, v12, v16, v14);
  sub_1C2C7F6D4(a1, v12, v16, v14);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v17;
  *(a2 + 24) = v10;
  *(a2 + 32) = a1;
  *(a2 + 40) = v12;
  *(a2 + 48) = v16;
  *(a2 + 56) = v14;
  sub_1C2C7F6D4(a1, v12, v16, v14);
  sub_1C2C72340(v4, v6, v17);
}

uint64_t sub_1C2D89028(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061920);
  v4 = *(a1 + 16);
  v5 = sub_1C2D8F594();
  v6 = *(a1 + 24);
  v24 = v3;
  v25 = v4;
  v26 = v5;
  v27 = v6;
  v7 = sub_1C2E75104();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17[-v12];
  v21 = v4;
  v22 = v6;
  v23 = v1;
  v18 = v4;
  v19 = v6;
  v20 = v1;
  sub_1C2E750E4();
  WitnessTable = swift_getWitnessTable();
  sub_1C2C6EE48(v10, v7, WitnessTable);
  v15 = *(v8 + 8);
  v15(v10, v7);
  sub_1C2C6EE48(v13, v7, WitnessTable);
  return (v15)(v13, v7);
}

uint64_t sub_1C2D8920C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061938);
  MEMORY[0x1EEE9AC00](v18);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061950);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061948);
  v10 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v12 = v16 - v11;
  v13 = *(a1 + 32);
  if (v13)
  {
    v16[0] = a3;
    type metadata accessor for SettingsRow();

    sub_1C2D88DF0();
    *&v6[*(v18 + 36)] = v13;
    sub_1C2C736A4(v6, v9, &qword_1EC061938);
    swift_storeEnumTagMultiPayload();
    sub_1C2D8F64C();
    sub_1C2C94F38(&qword_1EC061940, &qword_1EC061948);
    sub_1C2E73F44();
    return sub_1C2C73644(v6, &qword_1EC061938);
  }

  else
  {
    type metadata accessor for SettingsRow();
    sub_1C2D88DF0();
    v15 = v17;
    (*(v10 + 16))(v9, v12, v17);
    swift_storeEnumTagMultiPayload();
    sub_1C2D8F64C();
    sub_1C2C94F38(&qword_1EC061940, &qword_1EC061948);
    sub_1C2E73F44();
    return (*(v10 + 8))(v12, v15);
  }
}

uint64_t sub_1C2D89550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SettingsRow();
  sub_1C2C6EE48(a1 + *(v9 + 44), a2, a3);
  sub_1C2C6EE48(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

int64_t sub_1C2D8964C(unint64_t *a1)
{
  v2 = sub_1C2E722D4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  type metadata accessor for SettingsPersonList();
  result = sub_1C2E727B4();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 >= *(result + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  (*(v3 + 16))(v5, result + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v6, v2);

  MEMORY[0x1EEE9AC00](v8);
  v14[-2] = v5;
  v9 = sub_1C2E727A4();
  v11 = v10;
  result = sub_1C2D8E2A8(sub_1C2D8EC6C, &v14[-4]);
  v12 = *(*v11 + 16);
  if (v12 >= result)
  {
    sub_1C2D8EDE4(result, v12);
    v9(v14, 0);
    v13 = sub_1C2E72784();
    v13(v5);

    return (*(v3 + 8))(v5, v2);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C2D8985C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C2E72334();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C2E722B4();
  if (!v8)
  {
    v9 = sub_1C2E722C4();
    if (*(v9 + 16))
    {
      (*(v5 + 16))(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

      sub_1C2E72324();
      (*(v5 + 8))(v7, v4);
    }

    else
    {
    }

    v10 = sub_1C2E75C24();

    v11 = [objc_opt_self() contactWithDisplayName:0 emailOrPhoneNumber:v10];

    v8 = v11;
  }

  v22 = v8;
  sub_1C2C6E350();
  sub_1C2E75174();
  v12 = v18;
  v13 = v19;
  v14 = sub_1C2E73674();
  v15 = sub_1C2E74454();
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  MEMORY[0x1EEE9AC00](v15);
  *(&v17 - 2) = a1;
  *(&v17 - 1) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061870);
  sub_1C2C94F38(&qword_1EC061878, &qword_1EC061868);
  sub_1C2D8EF80();
  return sub_1C2E73454();
}

double sub_1C2D89AF4@<D0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C2E72334();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C2E722A4();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v10 = sub_1C2E722C4();
    if (*(v10 + 16))
    {
      (*(v3 + 16))(v5, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

      v8 = sub_1C2E72304();
      v9 = v11;
      (*(v3 + 8))(v5, v2);
    }

    else
    {

      v8 = 0;
      v9 = 0xE000000000000000;
    }
  }

  type metadata accessor for SettingsPersonList();
  v12 = 0;
  v13 = 0;
  if (sub_1C2E72754())
  {
    v14 = sub_1C2E722C4();
    v12 = sub_1C2D8E67C(v14);
    v13 = v15;
  }

  *a1 = v8;
  a1[1] = v9;
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061868);
  return sub_1C2D89CC0(a1 + *(v16 + 44));
}

double sub_1C2D89CC0@<D0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_1C2E718A4();
  v27 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C2E71514();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061888);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v11 = swift_allocObject();
  v26 = xmmword_1C2E7A720;
  *(v11 + 16) = xmmword_1C2E7A720;
  v12 = sub_1C2E722B4();
  if (!v12)
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  }

  *(v11 + 32) = v12;
  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    v13 = swift_allocObject();
    *(v13 + 16) = v26;
    *(v13 + 32) = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  }

  sub_1C2E71504();
  v14 = sub_1C2E722B4();
  if (v14)
  {
    v15 = v14;
    v16 = [v14 identifier];

    v17 = sub_1C2E75C64();
    v19 = v18;
  }

  else
  {
    sub_1C2E71894();
    v17 = sub_1C2E71854();
    v19 = v20;
    (*(v27 + 8))(v3, v1);
  }

  (*(v5 + 32))(v10, v7, v4);
  v21 = &v10[*(v8 + 52)];
  *v21 = v17;
  v21[1] = v19;
  sub_1C2E75744();
  sub_1C2E73274();
  v22 = v28;
  sub_1C2C71D5C(v10, v28, &qword_1EC061888);
  v23 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061890) + 36));
  v24 = v30;
  *v23 = v29;
  v23[1] = v24;
  result = *&v31;
  v23[2] = v31;
  return result;
}

uint64_t sub_1C2D8A010@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v79 = a1;
  v3 = type metadata accessor for SettingsPersonList();
  v4 = *(v3 - 8);
  v65 = v3 - 8;
  v76 = v4;
  MEMORY[0x1EEE9AC00](v3 - 8);
  v77 = v5;
  v78 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0616F0);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v56 - v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0616F8);
  MEMORY[0x1EEE9AC00](v74);
  v56 = &v56 - v7;
  v80 = sub_1C2E73BD4();
  v64 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v63 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C2E73694();
  v62 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061700);
  v57 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061708);
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v16 = &v56 - v15;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061710);
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v18 = &v56 - v17;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061718);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v81 = &v56 - v19;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061720);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v56 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061728);
  v71 = *(v21 - 8);
  v72 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v56 - v22;
  v82 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061730);
  sub_1C2D8D7CC();
  sub_1C2E746C4();
  sub_1C2E757F4();
  v23 = sub_1C2C94F38(&qword_1EC061750, &qword_1EC061700);
  v24 = sub_1C2D8EC24(&qword_1EC061758, MEMORY[0x1E697C1F0]);
  sub_1C2E74E44();
  (*(v62 + 8))(v11, v9);
  (*(v57 + 8))(v14, v12);
  v25 = v65;
  v62 = *(v1 + *(v65 + 32));
  v87 = sub_1C2E72794();
  v88 = v26;
  v83 = v12;
  v84 = v9;
  v85 = v23;
  v86 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_1C2C74960();
  v29 = MEMORY[0x1E69E6158];
  v30 = v58;
  sub_1C2E74AC4();

  v31 = v30;
  (*(v59 + 8))(v16, v30);
  v32 = v64;
  v33 = v63;
  v34 = v80;
  (*(v64 + 104))(v63, *MEMORY[0x1E697C438], v80);
  v83 = v31;
  v84 = v29;
  v85 = OpaqueTypeConformance2;
  v86 = v28;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v60;
  sub_1C2E74CA4();
  (*(v32 + 8))(v33, v34);
  (*(v61 + 8))(v18, v36);
  v37 = *(v25 + 40);
  v80 = v2;
  if (*(v2 + v37) == 1)
  {
    KeyPath = swift_getKeyPath();
    v39 = v56;
    v40 = &v56[*(v74 + 36)];
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061770) + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0616B8);
    sub_1C2E751A4();
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061788);
    (*(*(v42 - 8) + 56))(v40 + v41, 0, 1, v42);
    *v40 = KeyPath;
    v43 = v66;
    v44 = v67;
    (*(v66 + 16))(v39, v81, v67);
    sub_1C2C736A4(v39, v75, &qword_1EC0616F8);
    swift_storeEnumTagMultiPayload();
    sub_1C2D8D890();
    v83 = v36;
    v84 = v35;
    swift_getOpaqueTypeConformance2();
    v45 = v68;
    sub_1C2E73F44();
    sub_1C2C73644(v39, &qword_1EC0616F8);
  }

  else
  {
    v43 = v66;
    v44 = v67;
    (*(v66 + 16))(v75, v81, v67);
    swift_storeEnumTagMultiPayload();
    sub_1C2D8D890();
    v83 = v36;
    v84 = v35;
    swift_getOpaqueTypeConformance2();
    v45 = v68;
    sub_1C2E73F44();
  }

  (*(v43 + 8))(v81, v44);
  v46 = sub_1C2E73054();
  v47 = sub_1C2D8DA9C();
  v48 = sub_1C2D8EC24(&qword_1EC061780, MEMORY[0x1E697BDD8]);
  v49 = v70;
  v50 = v69;
  sub_1C2E74DA4();
  sub_1C2C73644(v45, &qword_1EC061720);
  LOBYTE(v87) = sub_1C2E72774() & 1;
  v51 = v78;
  sub_1C2D8DC7C(v80, v78);
  v52 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v53 = swift_allocObject();
  sub_1C2D8DCE0(v51, v53 + v52);
  v83 = v50;
  v84 = v46;
  v85 = v47;
  v86 = v48;
  swift_getOpaqueTypeConformance2();
  v54 = v72;
  sub_1C2E74DE4();

  return (*(v71 + 8))(v49, v54);
}

uint64_t sub_1C2D8ABF0()
{
  type metadata accessor for SettingsPersonList();
  sub_1C2E72724();
  sub_1C2C74960();
  v0 = sub_1C2E748A4();
  v2 = v1;
  v4 = v3;
  sub_1C2E74684();
  v5 = sub_1C2E747F4();
  v7 = v6;
  v9 = v8;

  sub_1C2C72340(v0, v2, v4 & 1);

  sub_1C2E74FA4();
  sub_1C2E74784();

  sub_1C2C72340(v5, v7, v9 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061748);
  sub_1C2C94F38(&qword_1EC061740, &qword_1EC061748);
  return sub_1C2E75494();
}

uint64_t sub_1C2D8ADAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061790);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v121 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v118 = &v97 - v6;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061798);
  MEMORY[0x1EEE9AC00](v116);
  v119 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v125 = &v97 - v9;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0617A0);
  MEMORY[0x1EEE9AC00](v102);
  v104 = (&v97 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2A8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v101 = &v97 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0617A8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v99 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v106 = &v97 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v103 = &v97 - v18;
  v19 = sub_1C2E754F4();
  v123 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v97 - v23;
  v25 = type metadata accessor for SettingsPersonList();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0617B0);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v29 = &v97 - v28;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0617B8);
  MEMORY[0x1EEE9AC00](v109);
  v117 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v108 = &v97 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v124 = &v97 - v34;
  sub_1C2D8DC7C(a1, &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *(v26 + 80);
  v36 = (v35 + 16) & ~v35;
  v115 = v27;
  v113 = v35;
  v37 = swift_allocObject();
  v114 = v36;
  v122 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2D8DCE0(v122, v37 + v36);
  v127 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0617C0);
  sub_1C2D8DE14();
  v110 = v29;
  v38 = v123;
  sub_1C2E751C4();
  v39 = *(a1 + *(v25 + 32)) == 1;
  v126 = v25;
  v107 = v19;
  v105 = v24;
  v100 = v21;
  if (v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0616B8);
    sub_1C2E75184();
    v40 = *MEMORY[0x1E697D708];
    v104 = *(v38 + 104);
    v104(v21, v40, v19);
    v41 = sub_1C2E754E4();
    v42 = *(v38 + 8);
    v42(v21, v19);
    v42(v24, v19);
    v43 = a1;
    goto LABEL_15;
  }

  v44 = v101;
  sub_1C2D88C10(v101);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061788);
  v46 = (*(*(v45 - 8) + 48))(v44, 1, v45);
  v98 = a1;
  if (v46 == 1)
  {
    sub_1C2C73644(v44, &qword_1EC05F2A8);
    v47 = 1;
    v48 = v107;
    v49 = v123;
    v50 = v104;
    v51 = v103;
  }

  else
  {
    v51 = v103;
    MEMORY[0x1C6925DB0](v45);
    sub_1C2C73644(v44, &qword_1EC061788);
    v47 = 0;
    v48 = v107;
    v49 = v123;
    v50 = v104;
  }

  v52 = v106;
  v53 = *(v49 + 56);
  v53(v51, v47, 1, v48);
  v54 = *MEMORY[0x1E697D708];
  v104 = *(v49 + 104);
  v104(v52, v54, v48);
  v53(v52, 0, 1, v48);
  v55 = *(v102 + 48);
  sub_1C2C736A4(v51, v50, &qword_1EC0617A8);
  sub_1C2C736A4(v52, v50 + v55, &qword_1EC0617A8);
  v56 = *(v49 + 48);
  if (v56(v50, 1, v48) != 1)
  {
    v57 = v99;
    sub_1C2C736A4(v50, v99, &qword_1EC0617A8);
    if (v56(v50 + v55, 1, v48) != 1)
    {
      v58 = v105;
      (*(v49 + 32))(v105, v50 + v55, v48);
      sub_1C2D8EC24(&qword_1EC061840, MEMORY[0x1E697D718]);
      v41 = sub_1C2E75BA4();
      v59 = *(v49 + 8);
      v59(v58, v48);
      sub_1C2C73644(v106, &qword_1EC0617A8);
      sub_1C2C73644(v51, &qword_1EC0617A8);
      v59(v57, v48);
      sub_1C2C73644(v50, &qword_1EC0617A8);
      goto LABEL_14;
    }

    sub_1C2C73644(v106, &qword_1EC0617A8);
    sub_1C2C73644(v51, &qword_1EC0617A8);
    (*(v49 + 8))(v57, v48);
    goto LABEL_12;
  }

  sub_1C2C73644(v52, &qword_1EC0617A8);
  sub_1C2C73644(v51, &qword_1EC0617A8);
  if (v56(v50 + v55, 1, v48) != 1)
  {
LABEL_12:
    sub_1C2C73644(v50, &qword_1EC0617A0);
    v41 = 0;
    goto LABEL_14;
  }

  sub_1C2C73644(v50, &qword_1EC0617A8);
  v41 = 1;
LABEL_14:
  v43 = v98;
LABEL_15:
  KeyPath = swift_getKeyPath();
  v61 = swift_allocObject();
  *(v61 + 16) = v41 & 1;
  v62 = v108;
  (*(v111 + 32))(v108, v110, v112);
  v63 = (v62 + *(v109 + 36));
  *v63 = KeyPath;
  v63[1] = sub_1C2C77650;
  v63[2] = v61;
  sub_1C2C71D5C(v62, v124, &qword_1EC0617B8);
  v132 = sub_1C2E727B4();
  v64 = v122;
  sub_1C2D8DC7C(v43, v122);
  v65 = v114;
  v66 = swift_allocObject();
  sub_1C2D8DCE0(v64, v66 + v65);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0617E0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0617E8);
  v110 = sub_1C2C94F38(&qword_1EC0617F0, &qword_1EC0617E0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0617F8);
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061800);
  v69 = sub_1C2C94F38(&qword_1EC061808, &qword_1EC0617F8);
  v70 = sub_1C2D8E038();
  v128 = v67;
  v129 = v68;
  v130 = v69;
  v131 = v70;
  v71 = 1;
  swift_getOpaqueTypeConformance2();
  sub_1C2D8EC24(&qword_1EC061818, MEMORY[0x1E6995ED0]);
  v72 = v125;
  sub_1C2E75444();
  sub_1C2D8DC7C(v43, v64);
  v73 = swift_allocObject();
  sub_1C2D8DCE0(v64, v73 + v65);
  v74 = swift_allocObject();
  *(v74 + 16) = sub_1C2D8E11C;
  *(v74 + 24) = v73;
  v75 = (v72 + *(v116 + 36));
  *v75 = sub_1C2D8E64C;
  v75[1] = v74;
  v76 = *(v43 + v126[7]);
  if (!v76)
  {
LABEL_19:
    v87 = v118;
    goto LABEL_20;
  }

  v77 = *(sub_1C2E727B4() + 16);

  if (!v77)
  {

    v71 = 1;
    goto LABEL_19;
  }

  v79 = MEMORY[0x1EEE9AC00](v78);
  v80 = v123;
  v81 = v105;
  v82 = v107;
  (v104)(v105, *MEMORY[0x1E697D710], v107, v79);
  (*(v80 + 16))(v100, v81, v82);

  v83 = v122;
  sub_1C2E75174();
  (*(v80 + 8))(v81, v82);
  v84 = v126;
  v85 = v126[5];
  *(v83 + v85) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F298);
  swift_storeEnumTagMultiPayload();
  v86 = v84[7];
  *(v83 + v84[6]) = v76;
  *(v83 + v86) = 0;
  *(v83 + v84[8]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061830);
  sub_1C2C94F38(&qword_1EC061838, &qword_1EC061830);
  sub_1C2D8EC24(&qword_1EC05F2A0, type metadata accessor for SettingsPersonList);
  v87 = v118;
  sub_1C2E73454();

  v71 = 0;
LABEL_20:
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061820);
  (*(*(v88 - 8) + 56))(v87, v71, 1, v88);
  v89 = v124;
  v90 = v117;
  sub_1C2C736A4(v124, v117, &qword_1EC0617B8);
  v91 = v125;
  v92 = v119;
  sub_1C2C736A4(v125, v119, &qword_1EC061798);
  v93 = v121;
  sub_1C2C736A4(v87, v121, &qword_1EC061790);
  v94 = v120;
  sub_1C2C736A4(v90, v120, &qword_1EC0617B8);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061828);
  sub_1C2C736A4(v92, v94 + *(v95 + 48), &qword_1EC061798);
  sub_1C2C736A4(v93, v94 + *(v95 + 64), &qword_1EC061790);
  sub_1C2C73644(v87, &qword_1EC061790);
  sub_1C2C73644(v91, &qword_1EC061798);
  sub_1C2C73644(v89, &qword_1EC0617B8);
  sub_1C2C73644(v93, &qword_1EC061790);
  sub_1C2C73644(v92, &qword_1EC061798);
  return sub_1C2C73644(v90, &qword_1EC0617B8);
}

uint64_t sub_1C2D8BEB8()
{
  type metadata accessor for SettingsPersonList();
  v0 = sub_1C2E72764();
  v0();
}

uint64_t sub_1C2D8BF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0617A0);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v54 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0617A8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v51 - v12;
  v59 = sub_1C2E754F4();
  v13 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  v19 = type metadata accessor for SettingsPersonList();
  v20 = sub_1C2E72734();
  v63 = v21;
  v64 = v20;
  v22 = sub_1C2E74F04();

  v23 = sub_1C2E75744();
  v60 = v24;
  v61 = v23;
  sub_1C2D8C690(&v66);
  v73 = v68;
  v74 = v69;
  v75 = v70;
  v71 = v66;
  v72 = v67;
  v76[2] = v68;
  v76[3] = v69;
  v77 = v70;
  v76[0] = v66;
  v76[1] = v67;
  sub_1C2C736A4(&v71, &v65, qword_1EC061898);
  sub_1C2C73644(v76, qword_1EC061898);
  v62 = v22;

  v82 = v75;
  v80 = v73;
  v81 = v74;
  v78 = v71;
  v79 = v72;
  if (*(a1 + *(v19 + 32)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0616B8);
    sub_1C2E75184();
    v25 = v59;
    (*(v13 + 104))(v15, *MEMORY[0x1E697D708], v59);
    v26 = sub_1C2E754E4();
    v27 = *(v13 + 8);
    v27(v15, v25);
    result = (v27)(v18, v25);
    goto LABEL_3;
  }

  v30 = v59;
  v52 = v18;
  v31 = v54;
  sub_1C2D88C10(v54);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061788);
  if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
  {
    sub_1C2C73644(v31, &qword_1EC05F2A8);
    v33 = 1;
    v34 = v56;
    v35 = v13;
    v36 = v58;
  }

  else
  {
    v36 = v58;
    MEMORY[0x1C6925DB0](v32);
    sub_1C2C73644(v31, &qword_1EC061788);
    v33 = 0;
    v34 = v56;
    v35 = v13;
  }

  v37 = v57;
  v38 = v30;
  v39 = *(v35 + 56);
  v39(v36, v33, 1, v30);
  (*(v35 + 104))(v37, *MEMORY[0x1E697D708], v30);
  v39(v37, 0, 1, v30);
  v40 = *(v55 + 48);
  sub_1C2C736A4(v36, v34, &qword_1EC0617A8);
  sub_1C2C736A4(v37, v34 + v40, &qword_1EC0617A8);
  v41 = v37;
  v42 = *(v35 + 48);
  if (v42(v34, 1, v38) == 1)
  {
    sub_1C2C73644(v41, &qword_1EC0617A8);
    sub_1C2C73644(v36, &qword_1EC0617A8);
    if (v42(v34 + v40, 1, v38) == 1)
    {
      result = sub_1C2C73644(v34, &qword_1EC0617A8);
      v29 = 0.5;
      goto LABEL_15;
    }

LABEL_14:
    result = sub_1C2C73644(v34, &qword_1EC0617A0);
    v29 = 1.0;
    goto LABEL_15;
  }

  v43 = v53;
  sub_1C2C736A4(v34, v53, &qword_1EC0617A8);
  if (v42(v34 + v40, 1, v38) == 1)
  {
    sub_1C2C73644(v57, &qword_1EC0617A8);
    sub_1C2C73644(v58, &qword_1EC0617A8);
    (*(v35 + 8))(v43, v38);
    goto LABEL_14;
  }

  v48 = v52;
  (*(v35 + 32))(v52, v34 + v40, v38);
  sub_1C2D8EC24(&qword_1EC061840, MEMORY[0x1E697D718]);
  v49 = v43;
  v26 = sub_1C2E75BA4();
  v50 = *(v35 + 8);
  v50(v48, v38);
  sub_1C2C73644(v57, &qword_1EC0617A8);
  sub_1C2C73644(v58, &qword_1EC0617A8);
  v50(v49, v38);
  result = sub_1C2C73644(v34, &qword_1EC0617A8);
LABEL_3:
  v29 = 1.0;
  if (v26)
  {
    v29 = 0.5;
  }

LABEL_15:
  v44 = v78;
  *(a2 + 72) = v79;
  v45 = v81;
  *(a2 + 88) = v80;
  *(a2 + 104) = v45;
  v46 = v63;
  *a2 = v64;
  *(a2 + 8) = v46;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v47 = v61;
  *(a2 + 32) = v62;
  *(a2 + 40) = v47;
  *(a2 + 48) = v60;
  *(a2 + 120) = v82;
  *(a2 + 56) = v44;
  *(a2 + 128) = v29;
  return result;
}

uint64_t sub_1C2D8C690@<X0>(uint64_t a1@<X8>)
{
  sub_1C2E74F04();
  v2 = sub_1C2E74F74();

  sub_1C2E75744();
  sub_1C2E73274();
  *&v7[6] = v8;
  *&v7[22] = v9;
  *&v7[38] = v10;
  v3 = sub_1C2E75044();
  *v11 = v2;
  *&v11[8] = 256;
  *&v11[10] = *v7;
  *&v11[26] = *&v7[16];
  *&v11[42] = *&v7[32];
  *&v11[56] = *(&v10 + 1);
  v4 = *&v11[16];
  *a1 = *v11;
  *(a1 + 16) = v4;
  v5 = *&v11[48];
  *(a1 + 32) = *&v11[32];
  *(a1 + 48) = v5;
  *(a1 + 64) = v3;
  sub_1C2C736A4(v11, &v12, &qword_1EC060E58);
  v12 = v2;
  v13 = 256;
  v14 = *v7;
  v15 = *&v7[16];
  *v16 = *&v7[32];
  *&v16[14] = *(&v10 + 1);
  return sub_1C2C73644(&v12, &qword_1EC060E58);
}

uint64_t sub_1C2D8C7CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0617F8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  sub_1C2D8985C(a1);
  v10 = a2;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061800);
  sub_1C2C94F38(&qword_1EC061808, &qword_1EC0617F8);
  sub_1C2D8E038();
  sub_1C2E74A04();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1C2D8C948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v5 = sub_1C2E722D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = type metadata accessor for SettingsPersonList();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v22 = sub_1C2E72714();
  v23 = v11;
  sub_1C2D8DC7C(a1, &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (v10 + *(v6 + 80) + v12) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_1C2D8DCE0(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v12);
  (*(v6 + 32))(v14 + v13, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_1C2C74960();
  v15 = v21;
  sub_1C2E751E4();
  v16 = sub_1C2E74EF4();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061800);
  v19 = (v15 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = v16;
  return result;
}

int64_t sub_1C2D8CB8C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SettingsPersonList();
  v9[2] = a2;
  v3 = sub_1C2E727A4();
  v5 = v4;
  result = sub_1C2D8E2A8(sub_1C2D8F754, v9);
  v7 = *(*v5 + 16);
  if (v7 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1C2D8EDE4(result, v7);
    v3(v10, 0);
    v8 = sub_1C2E72784();
    v8(a2);
  }

  return result;
}

void sub_1C2D8CC64(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_1C2E722D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SettingsPersonList();
  v8 = sub_1C2E72744();
  v10 = v9;
  v11 = 0;
  v12 = 0;
  if ((sub_1C2E72754() & 1) == 0)
  {
LABEL_23:
    *a2 = v8;
    a2[1] = v10;
    a2[2] = v11;
    a2[3] = v12;
    a2[4] = 0;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061830);
    sub_1C2D8CF54(a2 + *(v32 + 44));
    return;
  }

  v13 = sub_1C2E727B4();
  v14 = *(v13 + 16);
  if (!v14)
  {

    v20 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v11 = sub_1C2D8E67C(v20);
    v12 = v31;

    goto LABEL_23;
  }

  v34 = v10;
  v35 = v8;
  v36 = a2;
  v37 = a1;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = *(v15 + 64);
  v33 = v13;
  v18 = v13 + ((v17 + 32) & ~v17);
  v38 = *(v15 + 56);
  v39 = v16;
  v40 = v15;
  v19 = (v15 - 8);
  v20 = MEMORY[0x1E69E7CC0];
  v16(v7, v18, v4);
  while (1)
  {
    v21 = sub_1C2E722C4();
    (*v19)(v7, v4);
    v22 = *(v21 + 16);
    v23 = v20[2];
    v24 = v23 + v22;
    if (__OFADD__(v23, v22))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v24 <= v20[3] >> 1)
    {
      if (*(v21 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v23 <= v24)
      {
        v26 = v23 + v22;
      }

      else
      {
        v26 = v23;
      }

      v20 = sub_1C2DD252C(isUniquelyReferenced_nonNull_native, v26, 1, v20);
      if (*(v21 + 16))
      {
LABEL_16:
        v27 = (v20[3] >> 1) - v20[2];
        sub_1C2E72334();
        if (v27 < v22)
        {
          goto LABEL_26;
        }

        swift_arrayInitWithCopy();

        if (v22)
        {
          v28 = v20[2];
          v29 = __OFADD__(v28, v22);
          v30 = v28 + v22;
          if (v29)
          {
            goto LABEL_27;
          }

          v20[2] = v30;
        }

        goto LABEL_5;
      }
    }

    if (v22)
    {
      goto LABEL_25;
    }

LABEL_5:
    v18 += v38;
    if (!--v14)
    {

      a2 = v36;
      v10 = v34;
      v8 = v35;
      goto LABEL_22;
    }

    v39(v7, v18, v4);
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

double sub_1C2D8CF54@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E722D4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C2E71514();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C2E727B4();
  v11 = *(v10 + 16);
  if (!v11)
  {

    v18 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_7;
    }

LABEL_11:
    if (sub_1C2E764E4())
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v24 = v9;
  v25 = v7;
  v26 = v6;
  v27 = a1;
  *&v29 = MEMORY[0x1E69E7CC0];
  sub_1C2E76634();
  v13 = *(v3 + 16);
  v12 = v3 + 16;
  v28 = v13;
  v14 = *(v12 + 64);
  v23 = v10;
  v15 = v10 + ((v14 + 32) & ~v14);
  v16 = *(v12 + 56);
  do
  {
    v28(v5, v15, v2);
    if (!sub_1C2E722B4())
    {
      v17 = objc_allocWithZone(MEMORY[0x1E695CD58]);
      [v17 init];
    }

    (*(v12 - 8))(v5, v2);
    sub_1C2E76614();
    sub_1C2E76644();
    sub_1C2E76654();
    sub_1C2E76624();
    v15 += v16;
    --v11;
  }

  while (v11);

  v18 = v29;
  v6 = v26;
  a1 = v27;
  v9 = v24;
  v7 = v25;
  if (v29 >> 62)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_8:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C2E7A720;
    *(v19 + 32) = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  }

LABEL_9:
  sub_1C2E71504();
  sub_1C2E75744();
  sub_1C2E73274();
  (*(v7 + 32))(a1, v9, v6);
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EC30) + 36));
  v21 = v30;
  *v20 = v29;
  v20[1] = v21;
  result = *&v31;
  v20[2] = v31;
  return result;
}

uint64_t sub_1C2D8D2BC()
{
  sub_1C2E757A4();
  sub_1C2E733C4();
}

uint64_t sub_1C2D8D328(uint64_t a1)
{
  v2 = sub_1C2E73BA4();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F298);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2A8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_1C2E754F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v29 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = type metadata accessor for SettingsPersonList();
  if (*(a1 + *(v19 + 32)) == 1)
  {
    v20 = sub_1C2E72774();
    v21 = MEMORY[0x1E697D708];
    if ((v20 & 1) == 0)
    {
      v21 = MEMORY[0x1E697D710];
    }

    (*(v11 + 104))(v18, *v21, v10);
    (*(v11 + 16))(v15, v18, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0616B8);
    sub_1C2E75194();
    return (*(v11 + 8))(v18, v10);
  }

  else
  {
    sub_1C2C736A4(a1 + *(v19 + 20), v6, &qword_1EC05F298);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C2C71D5C(v6, v9, &qword_1EC05F2A8);
    }

    else
    {
      sub_1C2E75FD4();
      v23 = sub_1C2E74404();
      sub_1C2E72B14();

      v24 = v30;
      sub_1C2E73B94();
      swift_getAtKeyPath();

      (*(v31 + 8))(v24, v32);
    }

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061788);
    if ((*(*(v25 - 8) + 48))(v9, 1, v25) == 1)
    {
      v26 = &qword_1EC05F2A8;
    }

    else
    {
      v27 = sub_1C2E72774();
      v28 = MEMORY[0x1E697D708];
      if ((v27 & 1) == 0)
      {
        v28 = MEMORY[0x1E697D710];
      }

      (*(v11 + 104))(v29, *v28, v10);
      sub_1C2E75394();
      v26 = &qword_1EC061788;
    }

    return sub_1C2C73644(v9, v26);
  }
}

unint64_t sub_1C2D8D7CC()
{
  result = qword_1EC061738;
  if (!qword_1EC061738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061730);
    sub_1C2C94F38(&qword_1EC061740, &qword_1EC061748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061738);
  }

  return result;
}

unint64_t sub_1C2D8D890()
{
  result = qword_1EC061760;
  if (!qword_1EC061760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0616F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061700);
    sub_1C2E73694();
    sub_1C2C94F38(&qword_1EC061750, &qword_1EC061700);
    sub_1C2D8EC24(&qword_1EC061758, MEMORY[0x1E697C1F0]);
    swift_getOpaqueTypeConformance2();
    sub_1C2C74960();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC061768, &qword_1EC061770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061760);
  }

  return result;
}

unint64_t sub_1C2D8DA9C()
{
  result = qword_1EC061778;
  if (!qword_1EC061778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061720);
    sub_1C2D8D890();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061700);
    sub_1C2E73694();
    sub_1C2C94F38(&qword_1EC061750, &qword_1EC061700);
    sub_1C2D8EC24(&qword_1EC061758, MEMORY[0x1E697C1F0]);
    swift_getOpaqueTypeConformance2();
    sub_1C2C74960();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061778);
  }

  return result;
}

uint64_t sub_1C2D8DC7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPersonList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2D8DCE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPersonList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2D8DD98(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SettingsPersonList() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1C2D8DE14()
{
  result = qword_1EC0617C8;
  if (!qword_1EC0617C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0617C0);
    sub_1C2C94F38(&qword_1EC0617D0, &qword_1EC0617D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0617C8);
  }

  return result;
}

uint64_t sub_1C2D8DECC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_1C2E722D4() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1C2D8DFB8(uint64_t a1)
{
  v3 = *(type metadata accessor for SettingsPersonList() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C2D8C7CC(a1, v4);
}

unint64_t sub_1C2D8E038()
{
  result = qword_1EC061810;
  if (!qword_1EC061810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061800);
    sub_1C2C94F38(&qword_1EC05FBD8, &qword_1EC05FBC8);
    sub_1C2C94F38(&qword_1EC05CB00, &qword_1EC05DD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061810);
  }

  return result;
}

uint64_t sub_1C2D8E11C()
{
  v1 = *(type metadata accessor for SettingsPersonList() - 8);
  v3[2] = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1C2D888BC(sub_1C2D8EC08, v3);
}

uint64_t sub_1C2D8E1D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C2E764E4();
  }

  return sub_1C2E765F4();
}

uint64_t sub_1C2D8E250@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C2E73B74();
  *a1 = result;
  return result;
}

uint64_t sub_1C2D8E2A8(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_1C2E722D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v15 = *v2;
  v16 = v53;
  result = sub_1C2D8DECC(a1, a2, *v2);
  if (!v16)
  {
    v49 = v14;
    v53 = 0;
    if (v18)
    {
      return *(v15 + 16);
    }

    v19 = v5;
    v41 = v8;
    v42 = v11;
    v46 = a1;
    v40 = v2;
    v51 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v15;
      v23 = (v15 + 16);
      v22 = *(v15 + 16);
      v24 = v49;
      if (v20 == v22)
      {
        return v51;
      }

      v25 = v19;
      v48 = v6 + 16;
      v44 = v6;
      v45 = (v6 + 8);
      v39 = (v6 + 40);
      v43 = a2;
      while (v20 < v22)
      {
        v26 = *(v6 + 80);
        v52 = v21;
        v47 = (v26 + 32) & ~v26;
        v27 = v21 + v47;
        v28 = *(v6 + 72);
        v29 = *(v6 + 16);
        v50 = v28 * v20;
        v29(v24, &v27[v28 * v20], v25);
        v30 = v53;
        v31 = v46(v24);
        v53 = v30;
        if (v30)
        {
          return (*v45)(v24, v25);
        }

        v32 = v31;
        result = (*v45)(v24, v25);
        if (v32)
        {
          v6 = v44;
          v24 = v49;
          v21 = v52;
        }

        else
        {
          v33 = v51;
          if (v20 == v51)
          {
            v6 = v44;
            v24 = v49;
            v21 = v52;
          }

          else
          {
            if ((v51 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v34 = *v23;
            if (v51 >= v34)
            {
              goto LABEL_27;
            }

            v35 = v28 * v51;
            result = (v29)(v42, &v27[v35], v25);
            if (v20 >= v34)
            {
              goto LABEL_28;
            }

            v36 = v41;
            v29(v41, &v27[v50], v25);
            v21 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_1C2D8E1C4(v21);
            }

            v37 = v21 + v47;
            v38 = *v39;
            result = (*v39)(v21 + v47 + v35, v36, v25);
            v6 = v44;
            if (v20 >= v21[2])
            {
              goto LABEL_29;
            }

            result = v38(&v37[v50], v42, v25);
            *v40 = v21;
            v33 = v51;
            v24 = v49;
          }

          v51 = v33 + 1;
        }

        ++v20;
        v23 = v21 + 2;
        v22 = v21[2];
        if (v20 == v22)
        {
          return v51;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C2D8E67C(uint64_t a1)
{
  v48 = sub_1C2E722F4();
  v2 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v37 - v5;
  v50 = sub_1C2E72334();
  v7 = MEMORY[0x1EEE9AC00](v50);
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0;
    v12 = *(v6 + 16);
    v11 = v6 + 16;
    v44 = v12;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v14 = *(v11 + 56);
    v43 = *MEMORY[0x1E6995EE8];
    v41 = (v2 + 8);
    v42 = (v2 + 104);
    v39 = v14;
    v40 = (v11 - 8);
    v38 = v9;
    v15 = v48;
    while (1)
    {
      v16 = v45;
      v17 = v11;
      v44(v45, v13, v50, v7);
      v18 = v46;
      sub_1C2E72314();
      v19 = v47;
      (*v42)(v47, v43, v15);
      v49 = sub_1C2E722E4();
      v20 = v10;
      v21 = *v41;
      (*v41)(v19, v15);
      v21(v18, v15);
      result = (*v40)(v16, v50);
      v10 = v20 + (v49 & 1);
      if (__OFADD__(v20, v49 & 1))
      {
        break;
      }

      v13 += v39;
      --v9;
      v11 = v17;
      if (!v9)
      {
        v23 = v38 - v10;
        if (!__OFSUB__(v38, v10))
        {
          if (v10 <= 0)
          {
            type metadata accessor for StringDummy();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v31 = [objc_opt_self() bundleForClass_];
            sub_1C2E71684();

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90);
            v32 = swift_allocObject();
            v33 = MEMORY[0x1E69E6530];
            *(v32 + 16) = xmmword_1C2E7A930;
            v34 = MEMORY[0x1E69E65A8];
            *(v32 + 56) = v33;
            *(v32 + 64) = v34;
            *(v32 + 32) = v23;
          }

          else
          {
            type metadata accessor for StringDummy();
            v24 = swift_getObjCClassFromMetadata();
            v25 = [objc_opt_self() bundleForClass_];
            sub_1C2E71684();

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90);
            v26 = swift_allocObject();
            if (v23 < 1)
            {
              v35 = MEMORY[0x1E69E6530];
              *(v26 + 16) = xmmword_1C2E7A930;
              v36 = MEMORY[0x1E69E65A8];
              *(v26 + 56) = v35;
              *(v26 + 64) = v36;
              *(v26 + 32) = v10;
            }

            else
            {
              *(v26 + 16) = xmmword_1C2E7A110;
              v27 = MEMORY[0x1E69E6530];
              v28 = MEMORY[0x1E69E65A8];
              *(v26 + 56) = MEMORY[0x1E69E6530];
              *(v26 + 64) = v28;
              *(v26 + 32) = v10;
              *(v26 + 96) = v27;
              *(v26 + 104) = v28;
              *(v26 + 72) = v23;
            }
          }

          v29 = sub_1C2E75C74();

          return v29;
        }

LABEL_15:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_1C2D8EC24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C2D8EC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_1C2E722D4();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1C2D8EDE4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1C2DD2504(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1C2D8EC9C(v6, a2, 0);
  *v2 = v4;
  return result;
}

int64_t sub_1C2D8EEAC()
{
  v1 = *(type metadata accessor for SettingsPersonList() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1C2E722D4() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1C2D8CB8C(v0 + v2, v5);
}

unint64_t sub_1C2D8EF80()
{
  result = qword_1EC061880;
  if (!qword_1EC061880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061870);
    sub_1C2D8F00C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061880);
  }

  return result;
}

unint64_t sub_1C2D8F00C()
{
  result = qword_1EC061D30;
  if (!qword_1EC061D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061D30);
  }

  return result;
}

void sub_1C2D8F060()
{
  sub_1C2C703E0(319, &qword_1EC05B2D0);
  if (v0 <= 0x3F)
  {
    sub_1C2C703E0(319, &qword_1EC05CAF0);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C2D8F120(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      if ((v15 + 1) >= 2)
      {
        return v15;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1C2D8F2C4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x7FFFFFFE)
  {
    v19 = *(v6 + 56);
    v20 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 1) = a2;
  }
}

unint64_t sub_1C2D8F594()
{
  result = qword_1EC061928;
  if (!qword_1EC061928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061920);
    sub_1C2D8F64C();
    sub_1C2C94F38(&qword_1EC061940, &qword_1EC061948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061928);
  }

  return result;
}

unint64_t sub_1C2D8F64C()
{
  result = qword_1EC061930;
  if (!qword_1EC061930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061938);
    sub_1C2C94F38(&qword_1EC061940, &qword_1EC061948);
    sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061930);
  }

  return result;
}

uint64_t sub_1C2D8F770@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1C2E73BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  if (*(v1 + 32) == 1)
  {
    *a1 = v8;
    a1[1] = v7;
    a1[2] = v9;
    a1[3] = v10;
  }

  else
  {

    sub_1C2E75FD4();
    v12 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();
    sub_1C2CFAECC(v8, v7, v9, v10, 0);
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C2D8F914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  v47 = a1;
  v44 = sub_1C2E757E4();
  v6 = *(v44 - 1);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C2E73654();
  v49 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v45 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  sub_1C2E737E4();
  v13 = sub_1C2E73654();
  v48 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v40 = &v35 - v17;
  v41 = a2;
  v18 = a3;
  v39 = a3;
  v42 = *(type metadata accessor for RecentsCellAvatarLeadingView() + 40);
  sub_1C2E75744();
  v19 = v12;
  sub_1C2E74D14();
  v20 = v43;
  v21 = v44;
  (*(v6 + 104))(v43, *MEMORY[0x1E6981DC0], v44);
  v53[4] = v18;
  v53[5] = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  v37 = WitnessTable;
  sub_1C2E74E24();
  (*(v6 + 8))(v20, v21);
  v38 = *(v49 + 8);
  v38(v19, v8);
  v53[2] = WitnessTable;
  v53[3] = MEMORY[0x1E697EBB8];
  v23 = v13;
  v43 = swift_getWitnessTable();
  v24 = v40;
  v36 = v16;
  sub_1C2C6EE48(v16, v13, v43);
  v44 = *(v48 + 8);
  (v44)(v16, v13);
  sub_1C2E75744();
  v25 = v45;
  sub_1C2E74D14();
  v26 = v25;
  v27 = v8;
  v28 = v8;
  v29 = v37;
  sub_1C2C6EE48(v25, v28, v37);
  v30 = v38;
  v38(v25, v27);
  v31 = v36;
  (*(v48 + 16))(v36, v24, v23);
  v53[0] = v31;
  (*(v49 + 16))(v26, v19, v27);
  v53[1] = v26;
  v52[0] = v23;
  v52[1] = v27;
  v50 = v43;
  v51 = v29;
  sub_1C2C6EC40(v53, 2uLL, v52);
  v30(v19, v27);
  v32 = v24;
  v33 = v44;
  (v44)(v32, v23);
  v30(v26, v27);
  return v33(v31, v23);
}

uint64_t sub_1C2D8FDF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FEC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2D8FE64()
{
  result = qword_1EC05B830;
  if (!qword_1EC05B830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FED0);
    sub_1C2D8FEF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B830);
  }

  return result;
}

unint64_t sub_1C2D8FEF0()
{
  result = qword_1EC05B368;
  if (!qword_1EC05B368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B368);
  }

  return result;
}

uint64_t sub_1C2D8FF54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RecentsCellViewStateProviding.accessibilityIdentifier.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16))())
  {
    return 0x64657373696DLL;
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall CallTranscriptsDataSource.removeAll()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062650);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  v6 = *(v0 + 32);
  if (v6)
  {
    v7 = v6;
    sub_1C2E72CC4();

    if (sub_1C2E72C74() < 1)
    {
LABEL_7:
      (*(v3 + 8))(v5, v2);
      return;
    }

    sub_1C2E72C54();
    swift_beginAccess();
    *(v1 + 40) = MEMORY[0x1E69E7CC8];

    if (!sub_1C2E72C74())
    {
      sub_1C2E72C44();
    }

    v8 = *(v1 + 32);
    if (v8)
    {
      v9 = v8;
      sub_1C2E72CB4();

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C2D901EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  if (*(v5 + 16) && (v6 = sub_1C2D921F4(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();
  return v8;
}

uint64_t CallTranscriptsDataSource.__allocating_init(collectionView:showSecondaryText:cellProvider:supplementaryViewProvider:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 24) = MEMORY[0x1E69E7CC0];
  *(v10 + 32) = 0;
  *(v10 + 40) = sub_1C2D941BC(v11);
  *(v10 + 16) = a2;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a3;
  v13[4] = a4;
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062700));
  v15 = a1;

  v16 = sub_1C2E72C94();
  v17 = *(v10 + 32);
  *(v10 + 32) = v16;
  v18 = v16;

  sub_1C2C6EE50(a5);
  sub_1C2E72CA4();

  [v15 setDataSource_];
  sub_1C2D9087C();
  sub_1C2C71668(a5);

  return v10;
}

uint64_t sub_1C2D903EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1C2D93A9C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_1EC0619A0);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1C2D921F4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1C2D9405C(&qword_1EC0619A0);
        v14 = v16;
      }

      result = sub_1C2D9361C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t CallTranscriptsDataSource.init(collectionView:showSecondaryText:cellProvider:supplementaryViewProvider:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = MEMORY[0x1E69E7CC0];
  *(v6 + 32) = 0;
  *(v6 + 40) = sub_1C2D941BC(v12);
  *(v6 + 16) = a2;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a3;
  v14[4] = a4;
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062700));
  v16 = a1;

  v17 = sub_1C2E72C94();
  v18 = *(v6 + 32);
  *(v6 + 32) = v17;
  v19 = v17;

  sub_1C2C6EE50(a5);
  sub_1C2E72CA4();

  [v16 setDataSource_];
  sub_1C2D9087C();
  sub_1C2C71668(a5);

  return v6;
}

uint64_t sub_1C2D90668(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *a3;
  v9 = a3[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = *(v11 + 40);
    if (*(v12 + 16))
    {
      v13 = sub_1C2D921F4(v8, v9);
      if (v14)
      {
        v15 = *(*(v12 + 56) + 8 * v13);
        swift_endAccess();

        v16 = a5(a1, a2, v15);

        return v16;
      }
    }

    swift_endAccess();
  }

  if (qword_1EC05CFB0 != -1)
  {
    swift_once();
  }

  v18 = sub_1C2E72B44();
  __swift_project_value_buffer(v18, qword_1EC061968);

  v19 = sub_1C2E72B24();
  v20 = sub_1C2E75FC4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1C2E43AC0(v8, v9, v23);
    _os_log_impl(&dword_1C2C6B000, v19, v20, "Not able to find transcripts for %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1C6927DF0](v22, -1, -1);
    MEMORY[0x1C6927DF0](v21, -1, -1);
  }

  return 0;
}

uint64_t sub_1C2D9087C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062650);
  v3 = *(v2 - 8);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - v5;
  v7 = *(v0 + 32);
  if (v7)
  {
    v8 = v7;
    sub_1C2E72CC4();

    result = sub_1C2E72C74();
    if (!result)
    {
      result = sub_1C2E72C44();
    }

    v9 = *(v1 + 32);
    if (v9)
    {
      v10 = v9;
      sub_1C2E72CB4();

      return (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall CallTranscriptsDataSource.removeItem(_:animatingDifferences:)(Swift::String _, Swift::Bool animatingDifferences)
{
  v3 = v2;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062650);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  swift_beginAccess();
  v10 = sub_1C2D921F4(countAndFlagsBits, object);
  if (v11)
  {
    v12 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v2 + 40);
    v20 = *(v3 + 40);
    *(v3 + 40) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C2D9405C(&qword_1EC0619A0);
      v14 = v20;
    }

    sub_1C2D9361C(v12, v14);
    *(v3 + 40) = v14;
    swift_endAccess();

    v15 = *(v3 + 32);
    if (v15)
    {
      v16 = v15;
      sub_1C2E72CC4();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB78);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1C2E7A930;
      *(v17 + 32) = countAndFlagsBits;
      *(v17 + 40) = object;

      sub_1C2E72C04();

      v18 = *(v3 + 32);
      if (v18)
      {
        v19 = v18;
        sub_1C2E72CB4();

        (*(v7 + 8))(v9, v6);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    swift_endAccess();
  }
}

void CallTranscriptsDataSource.insertItems(items:before:animatingDifferences:completion:)(unint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6)
{
  LODWORD(v8) = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062650);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v61 - v14;
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16 < 1)
  {
    return;
  }

LABEL_3:
  v17 = *(v71 + 32);
  if (!v17)
  {
    __break(1u);
    goto LABEL_54;
  }

  v63 = a5;
  v64 = a6;
  v65 = v8;
  v18 = v17;
  sub_1C2E72CC4();

  if (!sub_1C2E72C74())
  {
    sub_1C2E72C44();
  }

  v62 = a2;
  v67 = a3;
  v68 = v15;
  v66 = v13;
  v69 = v12;
  v75 = MEMORY[0x1E69E7CC0];
  sub_1C2C7B754(0, v16, 0);
  a2 = v75;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v70 = a1;
    a3 = 0;
    while (1)
    {
      a1 = v16;
      a6 = MEMORY[0x1C6927010](a3, v70);
      v12 = a6[2];
      v15 = a6[3];
      v19 = v71;
      swift_beginAccess();
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = *(v19 + 40);
      v8 = v72;
      *(v19 + 40) = 0x8000000000000000;
      v13 = sub_1C2D921F4(v12, v15);
      v22 = v8[2];
      v23 = (v21 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        __break(1u);
        goto LABEL_48;
      }

      a5 = v21;
      if (v8[3] >= v24)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v27 = v72;
          if ((v21 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = &v72;
          sub_1C2D9405C(&qword_1EC0619A0);
          v27 = v72;
          if ((a5 & 1) == 0)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        sub_1C2D9337C(v24, isUniquelyReferenced_nonNull_native, &qword_1EC0619A0);
        LODWORD(v8) = v72;
        v25 = sub_1C2D921F4(v12, v15);
        if ((a5 & 1) != (v26 & 1))
        {
          goto LABEL_55;
        }

        v13 = v25;
        v27 = v72;
        if ((a5 & 1) == 0)
        {
LABEL_17:
          v27[(v13 >> 6) + 8] |= 1 << v13;
          v28 = (v27[6] + 16 * v13);
          *v28 = v12;
          v28[1] = v15;
          *(v27[7] + 8 * v13) = a6;
          v29 = v27[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            goto LABEL_49;
          }

          v27[2] = v31;
          goto LABEL_19;
        }
      }

      *(v27[7] + 8 * v13) = a6;

LABEL_19:
      *(v71 + 40) = v27;
      swift_endAccess();
      swift_unknownObjectRelease();
      v75 = a2;
      v33 = *(a2 + 16);
      v32 = *(a2 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1C2C7B754((v32 > 1), v33 + 1, 1);
        a2 = v75;
      }

      ++a3;
      *(a2 + 16) = v33 + 1;
      v34 = a2 + 16 * v33;
      *(v34 + 32) = v12;
      *(v34 + 40) = v15;
      v16 = a1;
      if (a1 == a3)
      {
        goto LABEL_38;
      }
    }
  }

  a6 = (a1 + 32);
  do
  {
    a1 = v16;
    a5 = *a6;
    v12 = *(*a6 + 16);
    v15 = *(*a6 + 24);
    v35 = v71;
    swift_beginAccess();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v72 = *(v35 + 40);
    v8 = v72;
    *(v35 + 40) = 0x8000000000000000;
    v13 = sub_1C2D921F4(v12, v15);
    v38 = v8[2];
    v39 = (v37 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      v16 = sub_1C2E764E4();
      if (v16 < 1)
      {
        return;
      }

      goto LABEL_3;
    }

    a3 = v37;
    if (v8[3] >= v40)
    {
      if (v36)
      {
        v43 = v72;
        if (v37)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v8 = &v72;
        sub_1C2D9405C(&qword_1EC0619A0);
        v43 = v72;
        if (a3)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      sub_1C2D9337C(v40, v36, &qword_1EC0619A0);
      LODWORD(v8) = v72;
      v41 = sub_1C2D921F4(v12, v15);
      if ((a3 & 1) != (v42 & 1))
      {
        goto LABEL_55;
      }

      v13 = v41;
      v43 = v72;
      if (a3)
      {
LABEL_31:
        *(v43[7] + 8 * v13) = a5;

        goto LABEL_35;
      }
    }

    v43[(v13 >> 6) + 8] |= 1 << v13;
    v44 = (v43[6] + 16 * v13);
    *v44 = v12;
    v44[1] = v15;
    *(v43[7] + 8 * v13) = a5;
    v45 = v43[2];
    v30 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v30)
    {
      goto LABEL_50;
    }

    v43[2] = v46;
LABEL_35:
    *(v71 + 40) = v43;
    swift_endAccess();

    v75 = a2;
    v48 = *(a2 + 16);
    v47 = *(a2 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_1C2C7B754((v47 > 1), v48 + 1, 1);
      a2 = v75;
    }

    *(a2 + 16) = v48 + 1;
    v49 = a2 + 16 * v48;
    *(v49 + 32) = v12;
    *(v49 + 40) = v15;
    ++a6;
    v16 = a1 - 1;
  }

  while (a1 != 1);
LABEL_38:
  v51 = v68;
  v50 = v69;
  v52 = v67;
  if (v67)
  {
    v53 = v71;
    swift_beginAccess();
    v54 = v62;
    if (*(*(v53 + 40) + 16))
    {
      sub_1C2D921F4(v62, v52);
      if (v55)
      {
        swift_endAccess();
        v73 = v54;
        v74 = v52;
        sub_1C2E72C14();
        goto LABEL_44;
      }
    }

    swift_endAccess();
  }

  v73 = 0;
  LOBYTE(v74) = 1;
  sub_1C2E72BF4();
LABEL_44:
  v56 = *(v71 + 32);
  if (v56)
  {
    v57 = v56;

    v58 = swift_allocObject();
    v59 = v63;
    v60 = v64;
    *(v58 + 16) = v63;
    *(v58 + 24) = v60;
    sub_1C2C6EE50(v59);
    sub_1C2E72CB4();

    (*(v66 + 8))(v51, v50);
    return;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  sub_1C2E767C4();
  __break(1u);
}

uint64_t sub_1C2D91288()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  v14 = v1;
  v15 = v0;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v11 = *(*(v1 + 56) + ((v9 << 9) | (8 * v10)));
        v12 = *(v0 + 16);
        if (v12 == *(v11 + 80))
        {
          *(v11 + 80) = v12;
          v8 = v9;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

        else
        {
          KeyPath = swift_getKeyPath();
          v16 = &v14;
          MEMORY[0x1EEE9AC00](KeyPath);
          v17 = v11;
          sub_1C2D95224();

          sub_1C2E71A54();

          v1 = v14;
          v0 = v15;

          v8 = v9;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v9 = v8;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1C2D91464(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062650);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - v8;
  v10 = *(v2 + 32);
  if (v10)
  {
    v11 = v10;
    sub_1C2E72CC4();

    v12 = sub_1C2E72C64();
    (*(v7 + 8))(v9, v6);
    if (a2)
    {
      swift_beginAccess();
      if (*(*(v3 + 40) + 16) && (sub_1C2D921F4(a1, a2), (v13 & 1) != 0))
      {
        swift_endAccess();
        v14 = *(v12 + 16);
        if (v14)
        {
          v15 = 0;
          v16 = (v12 + 40);
          v17 = -v14;
          while (1)
          {
            v18 = *(v16 - 1) == a1 && *v16 == a2;
            if (v18 || (sub_1C2E767A4() & 1) != 0)
            {
              break;
            }

            --v15;
            v16 += 2;
            if (v17 == v15)
            {
              goto LABEL_15;
            }
          }

          v46 = MEMORY[0x1E69E7CC0];
          if (v15)
          {
            v29 = 0;
            v30 = -v15;
            v31 = v12 + 40;
            v41 = v12 + 40;
            v42 = -v15;
            do
            {
              v32 = 0;
              if (v29 > v30)
              {
                v30 = v29;
              }

              v45 = v29 - v30;
              v33 = (v31 + 16 * v29);
              v43 = v29;
              v44 = v15 + v29;
              while (1)
              {
                if (v45 == v32)
                {
LABEL_40:
                  __break(1u);
                  goto LABEL_41;
                }

                v35 = *(v33 - 1);
                v34 = *v33;
                swift_beginAccess();
                v36 = *(*(v3 + 40) + 16);

                if (v36)
                {
                  sub_1C2D921F4(v35, v34);
                  if (v37)
                  {
                    break;
                  }
                }

                swift_endAccess();

                --v32;
                v33 += 2;
                if (v44 == v32)
                {
                  goto LABEL_38;
                }
              }

              swift_endAccess();

              MEMORY[0x1C6926780](v38);
              if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1C2E75D94();
              }

              v39 = v15 + v43 + 1;
              v29 = v43 - v32 + 1;
              sub_1C2E75DB4();
              v31 = v41;
              v30 = v42;
            }

            while (v39 != v32);
          }

          goto LABEL_38;
        }
      }

      else
      {
        swift_endAccess();
      }
    }

LABEL_15:
    v46 = MEMORY[0x1E69E7CC0];
    v19 = *(v12 + 16);
    if (v19)
    {
      v20 = 0;
      v21 = v12 + 40;
      v44 = v19 - 1;
      v45 = v12 + 40;
      do
      {
        v22 = (v21 + 16 * v20);
        v23 = v20;
        while (1)
        {
          if (v23 >= *(v12 + 16))
          {
            __break(1u);
            goto LABEL_40;
          }

          v25 = *(v22 - 1);
          v24 = *v22;
          swift_beginAccess();
          v26 = *(*(v3 + 40) + 16);

          if (v26)
          {
            sub_1C2D921F4(v25, v24);
            if (v27)
            {
              break;
            }
          }

          ++v23;
          swift_endAccess();

          v22 += 2;
          if (v19 == v23)
          {
            goto LABEL_38;
          }
        }

        swift_endAccess();

        MEMORY[0x1C6926780](v28);
        if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C2E75D94();
        }

        v20 = v23 + 1;
        sub_1C2E75DB4();
        v21 = v45;
      }

      while (v44 != v23);
    }

LABEL_38:

    return;
  }

LABEL_41:
  __break(1u);
}

void sub_1C2D91878(unint64_t a1, int a2)
{
  v3 = v2;
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062650);
  v33 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v6;
  if (a1 >> 62)
  {
LABEL_31:
    v36 = a1 & 0xFFFFFFFFFFFFFF8;
    v9 = sub_1C2E764E4();
    v34 = v8;
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v35 = MEMORY[0x1E69E7CC0];
      v31 = v5;
      do
      {
        v5 = v10;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1C6927010](v5, a1, v7);
            v10 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v5 >= *(v36 + 16))
            {
              goto LABEL_30;
            }

            v11 = *(a1 + 8 * v5 + 32);

            v10 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
LABEL_29:
              __break(1u);
LABEL_30:
              __break(1u);
              goto LABEL_31;
            }
          }

          v8 = *(v11 + 16);
          v12 = *(v11 + 24);
          swift_beginAccess();
          if (*(*(v3 + 40) + 16))
          {
            sub_1C2D921F4(v8, v12);
            if (v13)
            {
              break;
            }
          }

          swift_endAccess();

          ++v5;
          if (v10 == v9)
          {
            v5 = v31;
            goto LABEL_26;
          }
        }

        swift_endAccess();
        v14 = *(v11 + 16);
        v15 = *(v11 + 24);
        swift_beginAccess();
        v16 = sub_1C2D921F4(v14, v15);
        if (v17)
        {
          v18 = v16;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v20 = *(v3 + 40);
          v37 = v20;
          *(v3 + 40) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1C2D9405C(&qword_1EC0619A0);
            v20 = v37;
          }

          sub_1C2D9361C(v18, v20);
          *(v3 + 40) = v20;
        }

        swift_endAccess();
        v8 = *(v11 + 16);
        v21 = *(v11 + 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1C2DD2198(0, *(v35 + 2) + 1, 1, v35);
        }

        v5 = v31;
        v23 = *(v35 + 2);
        v22 = *(v35 + 3);
        if (v23 >= v22 >> 1)
        {
          v35 = sub_1C2DD2198((v22 > 1), v23 + 1, 1, v35);
        }

        v24 = v35;
        *(v35 + 2) = v23 + 1;
        v25 = &v24[16 * v23];
        *(v25 + 4) = v8;
        *(v25 + 5) = v21;
      }

      while (v10 != v9);
LABEL_26:
      v26 = *(v3 + 32);
      if (!v26)
      {
        goto LABEL_33;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v36 = a1 & 0xFFFFFFFFFFFFFF8;
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = &v31 - v6;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v35 = MEMORY[0x1E69E7CC0];
  v26 = *(v3 + 32);
  if (!v26)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_27:
  v27 = v26;
  v28 = v34;
  sub_1C2E72CC4();

  sub_1C2E72C04();
  v29 = *(v3 + 32);
  if (v29)
  {
    v30 = v29;

    sub_1C2E72CB4();

    (*(v33 + 8))(v28, v5);
    return;
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_1C2D91C28(uint64_t a1, uint64_t a2, char a3)
{
  v26 = a1;
  swift_beginAccess();
  v6 = *(v3 + 40);
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v13 = 0;
  v25 = 0;
  v14 = a3 & 1;
  v23 = v6;
  HIDWORD(v22) = v14;
  while (v10)
  {
LABEL_10:
    v18 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v19 = *(*(v6 + 56) + ((v13 << 9) | (8 * v18)));
    if (*(v19 + 32) == v14)
    {
      v20 = *(v19 + 48);
      if (v20 && (*(v19 + 40) == v26 ? (v21 = v20 == a2) : (v21 = 0), v21 || (sub_1C2E767A4() & 1) != 0))
      {
        *(v19 + 40) = v26;
        *(v19 + 48) = a2;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        v24 = &v22;
        MEMORY[0x1EEE9AC00](KeyPath);
        v27 = v19;
        sub_1C2D95224();

        v14 = HIDWORD(v22);
        v16 = v25;
        sub_1C2E71A54();
        v25 = v16;
        v6 = v23;
      }
    }
  }

  while (1)
  {
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v17 >= v11)
    {
    }

    v10 = *(v7 + 8 * v17);
    ++v13;
    if (v10)
    {
      v13 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2D91E70(uint64_t a1, char a2)
{
  swift_beginAccess();
  v4 = *(v2 + 24);
  if (v4 >> 62)
  {
LABEL_34:
    v5 = sub_1C2E764E4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = -v5;
  v7 = 4;
  while (v6 + v7 != 4)
  {
    v8 = v7 - 4;
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1C6927010](v7 - 4, v4);
    }

    else
    {
      if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v9 = *(v4 + 8 * v7);
    }

    if (*(v9 + 16) == *(a1 + 16) && *(v9 + 24) == *(a1 + 24))
    {

LABEL_25:
      swift_beginAccess();
      v14 = *(v2 + 24);

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v2 + 24) = v14;
      if (!isUniquelyReferenced_nonNull_bridgeObject || (v14 & 0x8000000000000000) != 0 || (v14 & 0x4000000000000000) != 0)
      {
        v14 = sub_1C2D8E1D8(v14);
        *(v2 + 24) = v14;
      }

      if (v8 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        *((v14 & 0xFFFFFFFFFFFFFF8) + 8 * v7) = a1;
        *(v2 + 24) = v14;
        swift_endAccess();

        return 1;
      }

      __break(1u);
LABEL_36:
      if (sub_1C2E764E4() < 1)
      {
        return 0;
      }

LABEL_20:
      swift_beginAccess();

      MEMORY[0x1C6926780](v13);
      if (*((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C2E75D94();
      }

      sub_1C2E75DB4();
      swift_endAccess();
      return 1;
    }

    v11 = sub_1C2E767A4();

    if (v11)
    {

      goto LABEL_25;
    }

    ++v7;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_33;
    }
  }

  if (a2)
  {
    v12 = *(v2 + 24);
    if (v12 >> 62)
    {
      goto LABEL_36;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_20;
    }
  }

  return 0;
}

uint64_t CallTranscriptsDataSource.deinit()
{

  return v0;
}

uint64_t CallTranscriptsDataSource.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1C2D92170()
{
  v0 = sub_1C2E72B44();
  __swift_allocate_value_buffer(v0, qword_1EC061968);
  __swift_project_value_buffer(v0, qword_1EC061968);
  return sub_1C2E72B34();
}

unint64_t sub_1C2D921F4(uint64_t a1, uint64_t a2)
{
  sub_1C2E76854();
  sub_1C2E75CC4();
  v4 = sub_1C2E76894();

  return sub_1C2D92490(a1, a2, v4);
}

unint64_t sub_1C2D9226C(uint64_t a1)
{
  v2 = sub_1C2E76844();

  return sub_1C2D925B8(a1, v2);
}

unint64_t sub_1C2D922B0(uint64_t a1)
{
  sub_1C2E75C64();
  sub_1C2E76854();
  sub_1C2E75CC4();
  v2 = sub_1C2E76894();

  return sub_1C2D92624(a1, v2);
}

unint64_t sub_1C2D92340(uint64_t a1, uint64_t a2, double a3)
{
  sub_1C2E76854();
  sub_1C2E75CC4();
  v6 = 0.0;
  if (a3 != 0.0)
  {
    v6 = a3;
  }

  MEMORY[0x1C69272B0](*&v6);
  v7 = sub_1C2E76894();

  return sub_1C2D92728(a1, a2, v7, a3);
}

unint64_t sub_1C2D923E0(uint64_t a1)
{
  v2 = sub_1C2E76544();

  return sub_1C2D9280C(a1, v2);
}

unint64_t sub_1C2D92424(unsigned __int8 a1)
{
  sub_1C2E76854();
  sub_1C2E5BA14();
  v2 = sub_1C2E76894();

  return sub_1C2D928D4(a1, v2);
}

unint64_t sub_1C2D92490(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1C2E767A4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C2D92548(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_1C2D925B8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C2D92624(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1C2E75C64();
      v8 = v7;
      if (v6 == sub_1C2E75C64() && v8 == v9)
      {
        break;
      }

      v11 = sub_1C2E767A4();

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

unint64_t sub_1C2D92728(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a3 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      v14 = *(v13 + 16);
      v15 = *v13 == a1 && *(v13 + 8) == a2;
      if (v15 || (sub_1C2E767A4()) && v14 == a4)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1C2D9280C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C2D94AB4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C6926F80](v9, a1);
      sub_1C2D94B10(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C2D928D4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v5 = 0xE500000000000000;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v26 + 48) + v4);
      if (v7 <= 3)
      {
        if (v7 == 2)
        {
          v10 = 0x69616D6563696F76;
        }

        else
        {
          v10 = 0x69616D6F65646976;
        }

        if (*(*(v26 + 48) + v4))
        {
          v11 = 0x64657373696DLL;
        }

        else
        {
          v11 = 0x736C6C6163;
        }

        if (*(*(v26 + 48) + v4))
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (*(*(v26 + 48) + v4) <= 1u)
        {
          v8 = v11;
        }

        else
        {
          v8 = v10;
        }

        if (*(*(v26 + 48) + v4) <= 1u)
        {
          v9 = v12;
        }

        else
        {
          v9 = 0xE90000000000006CLL;
        }
      }

      else if (*(*(v26 + 48) + v4) <= 5u)
      {
        if (v7 == 4)
        {
          v8 = 0x7374736575716572;
        }

        else
        {
          v8 = 1802401130;
        }

        if (v7 == 4)
        {
          v9 = 0xE800000000000000;
        }

        else
        {
          v9 = 0xE400000000000000;
        }
      }

      else if (v7 == 6)
      {
        v9 = 0xE700000000000000;
        v8 = 0x64656B636F6C62;
      }

      else if (v7 == 7)
      {
        v8 = 0x746C69466C6C6163;
        v9 = 0xED0000676E697265;
      }

      else
      {
        v9 = 0xE800000000000000;
        v8 = 0x656D695465636166;
      }

      v13 = 0x746C69466C6C6163;
      if (v6 != 7)
      {
        v13 = 0x656D695465636166;
      }

      v14 = 0xED0000676E697265;
      if (v6 != 7)
      {
        v14 = 0xE800000000000000;
      }

      if (v6 == 6)
      {
        v13 = 0x64656B636F6C62;
        v14 = 0xE700000000000000;
      }

      v15 = 0x7374736575716572;
      if (v6 != 4)
      {
        v15 = 1802401130;
      }

      v16 = 0xE400000000000000;
      if (v6 == 4)
      {
        v16 = 0xE800000000000000;
      }

      if (v6 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v6 == 2)
      {
        v17 = 0x69616D6563696F76;
      }

      else
      {
        v17 = 0x69616D6F65646976;
      }

      if (v6)
      {
        v18 = 0x64657373696DLL;
      }

      else
      {
        v18 = 0x736C6C6163;
      }

      if (v6)
      {
        v5 = 0xE600000000000000;
      }

      if (v6 > 1)
      {
        v19 = 0xE90000000000006CLL;
      }

      else
      {
        v17 = v18;
        v19 = v5;
      }

      v20 = v6 <= 3 ? v17 : v13;
      v21 = v6 <= 3 ? v19 : v14;
      if (v8 == v20 && v9 == v21)
      {
        break;
      }

      v22 = sub_1C2E767A4();

      if ((v22 & 1) == 0)
      {
        v4 = (v4 + 1) & v24;
        v5 = 0xE500000000000000;
        if ((*(v25 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1C2D92BB4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0619D0);
  v30 = a2;
  result = sub_1C2E76724();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1C2E76854();
      MEMORY[0x1C6927290](v20);
      result = sub_1C2E76894();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C2D92E44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0619C8);
  result = sub_1C2E76724();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_1C2E76844();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1C2D930A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0619A8);
  v37 = a2;
  result = sub_1C2E76724();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 24 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(*(v5 + 56) + 8 * v20);
      if ((v37 & 1) == 0)
      {

        v26 = v25;
      }

      sub_1C2E76854();
      sub_1C2E75CC4();
      if (v24 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v24;
      }

      MEMORY[0x1C69272B0](*&v27);
      result = sub_1C2E76894();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
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

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_1C2D9337C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_1C2E76724();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1C2E76854();
      sub_1C2E75CC4();
      result = sub_1C2E76894();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1C2D9361C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C2E76484() + 1) & ~v5;
    do
    {
      sub_1C2E76854();

      sub_1C2E75CC4();
      v9 = sub_1C2E76894();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C2D937CC(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1C2D9226C(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_1C2D93D98();
    result = v17;
    goto LABEL_8;
  }

  sub_1C2D92E44(v14, a2 & 1);
  result = sub_1C2D9226C(a1);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a3;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a1;
    *(v19[7] + 8 * result) = a3;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1C2E767C4();
  __break(1u);
  return result;
}

uint64_t sub_1C2D938F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1C2D92340(a2, a3, a5);
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
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1C2D930A8(v18, a4 & 1);
      v13 = sub_1C2D92340(a2, a3, a5);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1C2E767C4();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v21 = v13;
      sub_1C2D93EE4();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v24 = v23[6] + 24 * v13;
  *v24 = a2;
  *(v24 + 8) = a3;
  *(v24 + 16) = a5;
  *(v23[7] + 8 * v13) = a1;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v26;
}

uint64_t sub_1C2D93A9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_1C2D921F4(a2, a3);
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
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1C2D9337C(v18, a4 & 1, a5);
      v13 = sub_1C2D921F4(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1C2E767C4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1C2D9405C(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a2;
  v25[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v26 = v23[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;
}

void *sub_1C2D93C3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0619D0);
  v2 = *v0;
  v3 = sub_1C2E76714();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1C2D93D98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0619C8);
  v2 = *v0;
  v3 = sub_1C2E76714();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_1C2D93EE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0619A8);
  v2 = *v0;
  v3 = sub_1C2E76714();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 24 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 24 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;

        result = v21;
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

void *sub_1C2D9405C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1C2E76714();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

unint64_t sub_1C2D941BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0619A0);
    v3 = sub_1C2E76734();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C2D921F4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void sub_1C2D942C0(uint64_t a1, char a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062650);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v56 - v12;
  v14 = *(v5 + 32);
  if (!v14)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v58 = a4;
  v59 = a3;
  v15 = v14;
  sub_1C2E72CC4();

  if (!sub_1C2E72C74())
  {
    sub_1C2E72C44();
  }

  v60 = v10;
  v61 = v13;
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  swift_getKeyPath();
  v63 = a1;
  sub_1C2D95224();
  sub_1C2E71A64();

  v18 = *(a1 + 72);
  if (!v18 || ((v18 & 0x2000000000000000) != 0 ? (v19 = HIBYTE(v18) & 0xF) : (v19 = *(a1 + 64) & 0xFFFFFFFFFFFFLL), !v19))
  {
    swift_getKeyPath();
    v63 = a1;
    sub_1C2E71A64();

    v20 = *(a1 + 96);
    if (!v20 || ((v20 & 0x2000000000000000) != 0 ? (v21 = HIBYTE(v20) & 0xF) : (v21 = *(a1 + 88) & 0xFFFFFFFFFFFFLL), !v21))
    {
      swift_beginAccess();
      if (*(*(v5 + 40) + 16) && (sub_1C2D921F4(v16, v17), (v32 & 1) != 0))
      {
        swift_endAccess();
        swift_beginAccess();

        sub_1C2D903EC(0, v16, v17);
        swift_endAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB78);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1C2E7A930;
        *(v33 + 32) = v16;
        *(v33 + 40) = v17;

        v34 = v61;
        v35 = v60;
        sub_1C2E72C04();

        v36 = *(v5 + 32);
        if (!v36)
        {
LABEL_37:
          __break(1u);
          return;
        }

        v37 = swift_allocObject();
        v39 = v58;
        v38 = v59;
        *(v37 + 16) = v59;
        *(v37 + 24) = v39;
        sub_1C2C6EE50(v38);
        v40 = v36;
        sub_1C2E72CB4();

        v41 = v35;
      }

      else
      {
        swift_endAccess();
        v41 = v60;
        v34 = v61;
      }

      (*(v11 + 8))(v34, v41);
      return;
    }
  }

  v57 = v11;
  v22 = sub_1C2D901EC(v16, v17);
  v23 = v22;
  if (!v22)
  {
    v42 = *(v5 + 16);
    if (v42 == *(a1 + 80))
    {
      *(a1 + 80) = v42;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v56[1] = v56;
      MEMORY[0x1EEE9AC00](KeyPath);
      v56[-2] = a1;
      LOBYTE(v56[-1]) = v42;
      v63 = a1;
      sub_1C2E71A54();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB78);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1C2E7A930;
    *(v48 + 32) = v16;
    *(v48 + 40) = v17;
    v63 = 0;
    v64 = 1;

    v47 = v60;
    sub_1C2E72BF4();

LABEL_32:
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = *(v5 + 40);
    *(v5 + 40) = 0x8000000000000000;
    sub_1C2D93A9C(a1, v16, v17, isUniquelyReferenced_nonNull_native, &qword_1EC0619A0);

    *(v5 + 40) = v62;
    swift_endAccess();
    v50 = *(v5 + 32);
    if (v50)
    {
      v51 = swift_allocObject();
      v52 = v58;
      v53 = v59;
      *(v51 + 16) = v59;
      *(v51 + 24) = v52;
      *(v51 + 32) = v23 == 0;
      v54 = v50;
      sub_1C2C6EE50(v53);
      v55 = v61;
      sub_1C2E72CB4();

      (*(v57 + 8))(v55, v47);
      return;
    }

    goto LABEL_36;
  }

  if ((a2 & 1) == 0)
  {
    v44 = *(v22 + 32);
    v45 = *(a1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB78);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1C2E7A930;
    *(v46 + 32) = v16;
    *(v46 + 40) = v17;

    v47 = v60;
    if (v44 == v45)
    {
      sub_1C2E72C84();
    }

    else
    {
      sub_1C2E72C24();
    }

    goto LABEL_32;
  }

  swift_getKeyPath();
  v63 = a1;
  sub_1C2E71A64();

  v24 = *(a1 + 40);
  v25 = *(a1 + 48);

  sub_1C2E10C88(v24, v25);
  swift_getKeyPath();
  v63 = a1;
  sub_1C2E71A64();

  v26 = *(a1 + 64);
  v27 = *(a1 + 72);

  sub_1C2E111F8(v26, v27);
  swift_getKeyPath();
  v63 = a1;
  sub_1C2E71A64();

  v28 = *(a1 + 88);
  v29 = *(a1 + 96);

  sub_1C2E115BC(v28, v29);
  swift_getKeyPath();
  v63 = a1;
  sub_1C2E71A64();

  v30 = *(a1 + 104);
  v31 = *(a1 + 112);

  sub_1C2E117F0(v30, v31);
  if (v59)
  {
    v59(0);

    (*(v57 + 8))(v61, v60);
  }

  else
  {
    (*(v57 + 8))(v61, v60);
  }
}

void *sub_1C2D94B64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0619D0);
  v3 = sub_1C2E76734();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1C2C6FE84(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1C2C6FE84(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C2D94C98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0619C0);
    v3 = sub_1C2E76734();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1C2D922B0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1C2D94DAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_1C2E76734();
    v8 = a1 + 32;

    while (1)
    {
      sub_1C2C736A4(v8, &v15, a4);
      v9 = v15;
      result = sub_1C2D922B0(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_1C2D3A588(&v16, (v7[7] + 32 * result));
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      v8 += 40;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_1C2D94EC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0619B8);
    v3 = sub_1C2E76734();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1C2D922B0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1C2D94FB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0619A8);
    v3 = sub_1C2E76734();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_1C2D92340(v5, v6, v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 24 * result);
      *v12 = v5;
      v12[1] = v6;
      *(v12 + 2) = v7;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1C2D950D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061980);
    v3 = sub_1C2E76734();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C2C736A4(v4, &v13, &qword_1EC061988);
      v5 = v13;
      v6 = v14;
      result = sub_1C2D921F4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C2D3A588(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1C2D95224()
{
  result = qword_1EC062660;
  if (!qword_1EC062660)
  {
    type metadata accessor for CallTranscripts();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062660);
  }

  return result;
}

uint64_t sub_1C2D9527C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

uint64_t objectdestroy_10Tm(uint64_t a1)
{
  if (*(v1 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1C2D952FC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

uint64_t ContactAvatarTileButtonWrapperMenuView.init(button:menuItems:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for ContactAvatarTileButtonWrapperMenuView();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t MenuItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2E718A4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MenuItem.id.setter(uint64_t a1)
{
  v3 = sub_1C2E718A4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

int *MenuItem.init(label:icon:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1C2E71894();
  result = type metadata accessor for MenuItem();
  v13 = (a6 + result[5]);
  *v13 = a1;
  v13[1] = a2;
  *(a6 + result[6]) = a3;
  v14 = (a6 + result[7]);
  *v14 = a4;
  v14[1] = a5;
  return result;
}

uint64_t type metadata accessor for MenuItem()
{
  result = qword_1EC05BBA0;
  if (!qword_1EC05BBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactAvatarTileButtonWrapperMenuView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0619D8);
  v6 = *(a1 + 24);
  v41 = v4;
  v42 = v5;
  v34 = sub_1C2D959E8();
  v35 = v5;
  v43 = v6;
  v44 = v34;
  v7 = sub_1C2E74704();
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  v19 = sub_1C2E73F54();
  v20 = v2;
  v21 = v19;
  v37 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v33 - v23;
  if (*(*(v22 + *(a1 + 36)) + 16))
  {
    MEMORY[0x1EEE9AC00](v22);
    *(&v33 - 4) = v4;
    *(&v33 - 3) = v6;
    *(&v33 - 2) = v25;
    MEMORY[0x1EEE9AC00](v25);
    *(&v33 - 4) = v4;
    *(&v33 - 3) = v6;
    *(&v33 - 2) = v26;
    sub_1C2E746F4();
    WitnessTable = swift_getWitnessTable();
    sub_1C2C6EE48(v9, v7, WitnessTable);
    v28 = *(v36 + 8);
    v28(v9, v7);
    sub_1C2C6EE48(v12, v7, WitnessTable);
    sub_1C2C78970(v9, v4, v7);
    v28(v9, v7);
    v28(v12, v7);
  }

  else
  {
    sub_1C2C6EE48(v22, v4, v6);
    sub_1C2C6EE48(v18, v4, v6);
    swift_getWitnessTable();
    sub_1C2C76E34(v15, v4);
    v29 = *(v33 + 8);
    v29(v15, v4);
    v29(v18, v4);
  }

  v30 = swift_getWitnessTable();
  v39 = v6;
  v40 = v30;
  v31 = swift_getWitnessTable();
  sub_1C2C6EE48(v24, v21, v31);
  return (*(v37 + 8))(v24, v21);
}

unint64_t sub_1C2D959E8()
{
  result = qword_1EC05B2F8;
  if (!qword_1EC05B2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0619D8);
    sub_1C2C94F38(&qword_1EC05B3A8, &qword_1EC0619E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B2F8);
  }

  return result;
}

uint64_t sub_1C2D95AD0()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0619E0);
  sub_1C2C94F38(&qword_1EC0619E8, &qword_1EC05E100);
  sub_1C2D95CF8();
  sub_1C2C94F38(&qword_1EC05B3A8, &qword_1EC0619E0);
  return sub_1C2E75434();
}

uint64_t sub_1C2D95C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2C6EE48(v6, v9, v10);
  sub_1C2C6EE48(v8, a2, a3);
  return (*(v5 + 8))(v8, a2);
}

unint64_t sub_1C2D95CF8()
{
  result = qword_1EC05E340;
  if (!qword_1EC05E340)
  {
    sub_1C2E718A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E340);
  }

  return result;
}

uint64_t sub_1C2D95D94(uint64_t a1)
{
  v2 = type metadata accessor for MenuItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C2D9650C(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1C2D96570(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5);
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EAC0);
  sub_1C2C94F38(&qword_1EC05EAB8, &qword_1EC05EAC0);
  return sub_1C2E751C4();
}

__n128 sub_1C2D95F08@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C2E73C24();
  v18 = 1;
  sub_1C2D95F94(a1, &v12);
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  result = v12;
  v11 = v18;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  return result;
}

uint64_t sub_1C2D95F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MenuItem();
  sub_1C2C74960();

  v5 = sub_1C2E748A4();
  v7 = v6;
  v8 = *(v4 + 24);
  *a2 = v5;
  *(a2 + 8) = v6;
  v9 = *(a1 + v8);
  LOBYTE(a1) = v10 & 1;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v9;

  sub_1C2C72330(v5, v7, a1);

  sub_1C2C72340(v5, v7, a1);
}

unint64_t sub_1C2D960A0()
{
  result = sub_1C2E718A4();
  if (v1 <= 0x3F)
  {
    result = sub_1C2D72450();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C2D9613C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C2D964B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C2D961C4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1C2D96300(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
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

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}