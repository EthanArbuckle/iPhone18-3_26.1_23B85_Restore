uint64_t sub_1C2D63A50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 9))
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

uint64_t sub_1C2D63AA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1C2D63B08(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = -64;
  }

  return result;
}

uint64_t sub_1C2D63B5C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v26 = *(v5 - 8);
  v6 = *(v26 + 84);
  v7 = sub_1C2E75004();
  v8 = *(v7 - 8);
  v9 = *(v26 + 64);
  if (*(v8 + 84) <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (v10 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v12)
  {
    v13 = *(*(v7 - 8) + 64) + ((v11 + ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v11) + 1;
    v14 = 8 * v13;
    if (v13 > 3)
    {
      goto LABEL_10;
    }

    v16 = ((a2 - v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v16 >= 2)
    {
LABEL_10:
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

LABEL_17:
      v17 = (v15 - 1) << v14;
      if (v13 > 3)
      {
        v17 = 0;
      }

      if (v13)
      {
        if (v13 <= 3)
        {
          v18 = v13;
        }

        else
        {
          v18 = 4;
        }

        if (v18 > 2)
        {
          if (v18 == 3)
          {
            v19 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v19 = *a1;
          }
        }

        else if (v18 == 1)
        {
          v19 = *a1;
        }

        else
        {
          v19 = *a1;
        }
      }

      else
      {
        v19 = 0;
      }

      v25 = v12 + (v19 | v17);
      return (v25 + 1);
    }
  }

LABEL_30:
  if (v6 == v12)
  {
    v20 = *(v26 + 48);

    return v20(a1, v6, v5);
  }

  v22 = (a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v10 <= 0xFE)
  {
    v23 = *(v22 + 9);
    if (v23 < 2)
    {
      return 0;
    }

    v25 = (v23 + 2147483646) & 0x7FFFFFFF;
    return (v25 + 1);
  }

  v24 = *(v8 + 48);

  return v24((v22 + v11 + 10) & ~v11);
}

void sub_1C2D63E0C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v24 = *(v7 - 8);
  v8 = *(v24 + 84);
  v9 = *(sub_1C2E75004() - 8);
  v10 = *(v24 + 64);
  if (*(v9 + 84) <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  if (v11 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v11;
  }

  v14 = *(v9 + 64) + ((v12 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v12) + 1;
  if (a3 <= v13)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 - v13 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (v13 < a2)
  {
    v16 = ~v13 + a2;
    if (v14 < 4)
    {
      v17 = (v16 >> (8 * v14)) + 1;
      if (*(v9 + 64) + ((v12 + ((v10 + 7) & 0xFFFFFFF8) + 10) & ~v12) != -1)
      {
        v20 = v16 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_51:
              if (v15 == 2)
              {
                *&a1[v14] = v17;
              }

              else
              {
                *&a1[v14] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v15)
    {
      a1[v14] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v14] = 0;
  }

  else if (v15)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v8 == v13)
  {
    v21 = *(v24 + 56);

    v21(a1, a2, v8, v7);
  }

  else
  {
    v22 = &a1[v10 + 7] & 0xFFFFFFFFFFFFFFF8;
    if (v11 > 0xFE)
    {
      v23 = *(v9 + 56);

      v23((v22 + v12 + 10) & ~v12, a2);
    }

    else
    {
      *(v22 + 9) = a2 + 1;
    }
  }
}

uint64_t sub_1C2D64140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundStyleConfiguration.GlassConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IntelligenceLabelView.init(viewModel:leadingView:)@<X0>(void (*a1)(void)@<X1>, void *a2@<X8>)
{

  sub_1C2E75174();
  *a2 = v5;
  a2[1] = v6;
  type metadata accessor for IntelligenceLabelView();
  a1();
}

uint64_t sub_1C2D642DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E040);
  sub_1C2E75184();
  return v1;
}

uint64_t IntelligenceLabelView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v25 = sub_1C2E730D4();
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v23 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC060C20);
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  v6 = sub_1C2E75214();
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70);
  v9 = sub_1C2E73654();
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  sub_1C2E73C24();
  v15 = *(a1 + 24);
  v29 = v5;
  v30 = v15;
  v31 = v26;
  sub_1C2E75204();
  swift_getKeyPath();
  v16 = v23;
  v17 = v25;
  (*(v3 + 104))(v23, *MEMORY[0x1E697DBA8], v25);
  WitnessTable = swift_getWitnessTable();
  sub_1C2E749A4();

  (*(v3 + 8))(v16, v17);
  (*(v24 + 8))(v8, v6);
  v19 = sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70);
  v32 = WitnessTable;
  v33 = v19;
  v20 = swift_getWitnessTable();
  sub_1C2C6EE48(v11, v9, v20);
  v21 = *(v27 + 8);
  v21(v11, v9);
  sub_1C2C6EE48(v14, v9, v20);
  return (v21)(v14, v9);
}

uint64_t sub_1C2D64738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC060C20);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v24 - v18;
  v20 = type metadata accessor for IntelligenceLabelView();
  sub_1C2C6EE48(a1 + *(v20 + 36), a2, a3);
  *v12 = sub_1C2E73DD4();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CB0);
  sub_1C2D64A48(a3, &v12[*(v21 + 44)]);
  (*(v13 + 16))(v16, v19, a2);
  v28[0] = v16;
  sub_1C2C736A4(v12, v9, qword_1EC060C20);
  v26 = 0;
  v27 = 1;
  v28[1] = v9;
  v28[2] = &v26;
  v25[0] = a2;
  v25[1] = v7;
  v25[2] = MEMORY[0x1E6981840];
  v24[1] = a3;
  v24[2] = sub_1C2C94F38(&qword_1EC060CB8, qword_1EC060C20);
  v24[3] = MEMORY[0x1E6981838];
  sub_1C2C6EC40(v28, 3uLL, v25);
  sub_1C2C73644(v12, qword_1EC060C20);
  v22 = *(v13 + 8);
  v22(v19, a2);
  sub_1C2C73644(v9, qword_1EC060C20);
  return (v22)(v16, a2);
}

uint64_t sub_1C2D64A48@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v18 = a1;
  v19 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  *v13 = sub_1C2E73C24();
  *(v13 + 1) = 0x4010000000000000;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CC8);
  sub_1C2D64C68(&v13[*(v14 + 44)]);
  *v10 = sub_1C2E73C24();
  *(v10 + 1) = 0x4010000000000000;
  v10[16] = 0;
  sub_1C2D65288(&v10[*(v14 + 44)]);
  sub_1C2C736A4(v13, v7, &qword_1EC060CC0);
  sub_1C2C736A4(v10, v4, &qword_1EC060CC0);
  v15 = v19;
  sub_1C2C736A4(v7, v19, &qword_1EC060CC0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CD0);
  sub_1C2C736A4(v4, v15 + *(v16 + 48), &qword_1EC060CC0);
  sub_1C2C73644(v10, &qword_1EC060CC0);
  sub_1C2C73644(v13, &qword_1EC060CC0);
  sub_1C2C73644(v4, &qword_1EC060CC0);
  return sub_1C2C73644(v7, &qword_1EC060CC0);
}

uint64_t sub_1C2D64C68@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = sub_1C2E74624();
  v51 = *(v1 - 8);
  v52 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v49 - v5;
  v7 = sub_1C2E71664();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CD8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v53 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v50 = &v49 - v14;
  v16 = type metadata accessor for IntelligenceLabelView();
  sub_1C2D65958(v16, &OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__titleSymbol, &unk_1C2E85080, &OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__titleStyle, v15);
  v17 = sub_1C2D642DC();
  swift_getKeyPath();
  v57 = v17;
  sub_1C2D67F68(&qword_1EC0604E0, type metadata accessor for ParticipantLabelViewModel);
  sub_1C2E71A64();

  v18 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__title;
  swift_beginAccess();
  (*(v8 + 16))(v10, v17 + v18, v7);

  v19 = sub_1C2E74894();
  v21 = v20;
  LOBYTE(v17) = v22;
  v23 = sub_1C2D642DC();
  swift_getKeyPath();
  v56 = v23;
  sub_1C2E71A64();

  v24 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__titleStyle;
  swift_beginAccess();
  sub_1C2C736A4(v23 + v24, v6, &qword_1EC0603A8);

  v25 = sub_1C2D6778C(v6);
  sub_1C2C73644(v6, &qword_1EC0603A8);
  v55 = v25;
  v26 = sub_1C2E74794();
  v28 = v27;
  v30 = v29;
  sub_1C2C72340(v19, v21, v17 & 1);

  sub_1C2E74514();
  v32 = v51;
  v31 = v52;
  (*(v51 + 104))(v3, *MEMORY[0x1E6980EA8], v52);
  sub_1C2E74664();

  (*(v32 + 8))(v3, v31);
  v33 = sub_1C2E747F4();
  v35 = v34;
  LOBYTE(v32) = v36;

  sub_1C2C72340(v26, v28, v30 & 1);

  sub_1C2E74554();
  v37 = sub_1C2E74764();
  v39 = v38;
  LOBYTE(v17) = v40;
  v42 = v41;
  sub_1C2C72340(v33, v35, v32 & 1);

  KeyPath = swift_getKeyPath();
  v44 = v50;
  v45 = v53;
  sub_1C2C736A4(v50, v53, &qword_1EC060CD8);
  v46 = v54;
  sub_1C2C736A4(v45, v54, &qword_1EC060CD8);
  v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CE0) + 48);
  *v47 = v37;
  *(v47 + 8) = v39;
  LOBYTE(v17) = v17 & 1;
  *(v47 + 16) = v17;
  *(v47 + 24) = v42;
  *(v47 + 32) = KeyPath;
  *(v47 + 40) = 1;
  *(v47 + 48) = 0;
  sub_1C2C72330(v37, v39, v17);

  sub_1C2C73644(v44, &qword_1EC060CD8);
  sub_1C2C72340(v37, v39, v17);

  return sub_1C2C73644(v45, &qword_1EC060CD8);
}

uint64_t sub_1C2D65288@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = sub_1C2E74624();
  v53 = *(v1 - 8);
  v54 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v51 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v50 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v50 - v7;
  v9 = sub_1C2E71664();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CD8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v55 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  v18 = type metadata accessor for IntelligenceLabelView();
  v52 = v17;
  sub_1C2D65958(v18, &OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitleSymbol, &unk_1C2E84EE8, &OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitleStyle, v17);
  v19 = sub_1C2D642DC();
  swift_getKeyPath();
  v59 = v19;
  sub_1C2D67F68(&qword_1EC0604E0, type metadata accessor for ParticipantLabelViewModel);
  sub_1C2E71A64();

  v20 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitle;
  swift_beginAccess();
  sub_1C2C736A4(v19 + v20, v8, &qword_1EC05E088);

  v21 = *(v10 + 48);
  if (v21(v8, 1, v9) == 1)
  {
    sub_1C2E71654();
    if (v21(v8, 1, v9) != 1)
    {
      sub_1C2C73644(v8, &qword_1EC05E088);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  v22 = sub_1C2E74894();
  v24 = v23;
  v26 = v25;
  v27 = sub_1C2D642DC();
  swift_getKeyPath();
  v58 = v27;
  sub_1C2E71A64();

  v28 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitleStyle;
  swift_beginAccess();
  sub_1C2C736A4(v27 + v28, v5, &qword_1EC0603A8);

  v29 = sub_1C2D6778C(v5);
  sub_1C2C73644(v5, &qword_1EC0603A8);
  v57 = v29;
  v30 = sub_1C2E74794();
  v32 = v31;
  v34 = v33;
  sub_1C2C72340(v22, v24, v26 & 1);

  sub_1C2E74514();
  v36 = v53;
  v35 = v54;
  v37 = v51;
  (*(v53 + 104))(v51, *MEMORY[0x1E6980EA8], v54);
  sub_1C2E74664();

  (*(v36 + 8))(v37, v35);
  sub_1C2E74654();

  v38 = sub_1C2E747F4();
  v40 = v39;
  LOBYTE(v37) = v41;
  v43 = v42;

  sub_1C2C72340(v30, v32, v34 & 1);

  KeyPath = swift_getKeyPath();
  v45 = v52;
  v46 = v55;
  sub_1C2C736A4(v52, v55, &qword_1EC060CD8);
  v47 = v56;
  sub_1C2C736A4(v46, v56, &qword_1EC060CD8);
  v48 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CE0) + 48);
  *v48 = v38;
  *(v48 + 8) = v40;
  *(v48 + 16) = v37 & 1;
  *(v48 + 24) = v43;
  *(v48 + 32) = KeyPath;
  *(v48 + 40) = 1;
  *(v48 + 48) = 0;
  sub_1C2C72330(v38, v40, v37 & 1);

  sub_1C2C73644(v45, &qword_1EC060CD8);
  sub_1C2C72340(v38, v40, v37 & 1);

  return sub_1C2C73644(v46, &qword_1EC060CD8);
}

uint64_t sub_1C2D65958@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v28 = a3;
  v29 = a4;
  v31 = a1;
  v32 = a2;
  v35 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CE8);
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v28 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0604A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  v13 = sub_1C2E72144();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C2D642DC();
  swift_getKeyPath();
  v37 = v17;
  sub_1C2D67F68(&qword_1EC0604E0, type metadata accessor for ParticipantLabelViewModel);
  sub_1C2E71A64();

  v18 = *v32;
  swift_beginAccess();
  sub_1C2C736A4(v17 + v18, v12, &qword_1EC0604A0);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C2C73644(v12, &qword_1EC0604A0);
    v19 = 1;
    v20 = v35;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v21 = sub_1C2D642DC();
    swift_getKeyPath();
    v36 = v21;
    sub_1C2E71A64();

    v22 = *v29;
    swift_beginAccess();
    sub_1C2C736A4(v21 + v22, v7, &qword_1EC0603A8);

    v23 = sub_1C2D6778C(v7);
    sub_1C2C73644(v7, &qword_1EC0603A8);
    v24 = v30;
    sub_1C2D65D70(v23, v31, v30);

    (*(v14 + 8))(v16, v13);
    v25 = v24;
    v26 = v35;
    sub_1C2D679EC(v25, v35);
    v19 = 0;
    v20 = v26;
  }

  return (*(v33 + 56))(v20, v19, 1, v34);
}

uint64_t sub_1C2D65D70@<X0>(void (*a1)(void, void)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v108 = a2;
  v118 = a1;
  v120 = a3;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CF0);
  MEMORY[0x1EEE9AC00](v109);
  v86 = (v81 - v3);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CF8);
  MEMORY[0x1EEE9AC00](v103);
  v104 = v81 - v4;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D00);
  MEMORY[0x1EEE9AC00](v114);
  v105 = v81 - v5;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D08);
  MEMORY[0x1EEE9AC00](v102);
  v101 = (v81 - v6);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D10);
  MEMORY[0x1EEE9AC00](v110);
  v113 = v81 - v7;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D18);
  MEMORY[0x1EEE9AC00](v98);
  v99 = v81 - v8;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D20);
  MEMORY[0x1EEE9AC00](v112);
  v100 = v81 - v9;
  v91 = sub_1C2E75954();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v88 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1C2E75984();
  v92 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v89 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v93 = v81 - v13;
  v95 = sub_1C2E759C4();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v106 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v87 = v81 - v16;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D28);
  MEMORY[0x1EEE9AC00](v97);
  v117 = (v81 - v17);
  v107 = sub_1C2E72124();
  v116 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v115 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D30);
  MEMORY[0x1EEE9AC00](v119);
  v111 = v81 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D38);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v81 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D40);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (v81 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D48);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v81 - v27;
  v29 = sub_1C2E720F4();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2E72114();
  v33 = (*(v30 + 88))(v32, v29);
  if (v33 != *MEMORY[0x1E6995DF0])
  {
    v81[1] = v23;
    v82 = v25;
    v81[0] = v28;
    v84 = v26;
    v85 = v20;
    v83 = v22;
    if (v33 != *MEMORY[0x1E6995DE8])
    {
      swift_storeEnumTagMultiPayload();
      sub_1C2D67A5C();
      sub_1C2E73F44();
      return (*(v30 + 8))(v32, v29);
    }

    v38 = v115;
    sub_1C2E72134();
    v39 = v107;
    v40 = (*(v116 + 88))(v38, v107);
    if (v40 == *MEMORY[0x1E6995E08])
    {
      v41 = v101;
      sub_1C2D66FFC(v101);
      v42 = v118;
      *(v41 + *(v109 + 36)) = v118;
      KeyPath = swift_getKeyPath();
      v121 = v42;
      swift_retain_n();
      v44 = sub_1C2E73284();
      v45 = (v41 + *(v102 + 36));
      *v45 = KeyPath;
      v45[1] = v44;
      sub_1C2C736A4(v41, v104, &qword_1EC060D08);
      swift_storeEnumTagMultiPayload();
      sub_1C2D67EB0();
      sub_1C2D67D6C();
      v46 = v105;
      sub_1C2E73F44();
      sub_1C2C736A4(v46, v113, &qword_1EC060D00);
      swift_storeEnumTagMultiPayload();
      sub_1C2D67C2C();
      sub_1C2D67E24();
      v47 = v111;
      sub_1C2E73F44();
      sub_1C2C73644(v46, &qword_1EC060D00);
      sub_1C2C73644(v41, &qword_1EC060D08);
    }

    else
    {
      v49 = v118;
      if (v40 != *MEMORY[0x1E6995DF8])
      {
        if (v40 == *MEMORY[0x1E6995E00])
        {
          v65 = v117;
          sub_1C2D66FFC(v117);
          *(v65 + *(v109 + 36)) = v49;

          v66 = v87;
          sub_1C2E759B4();
          sub_1C2E75994();
          v118 = *(v94 + 8);
          v67 = v95;
          v118(v66, v95);
          v68 = v88;
          sub_1C2E75944();
          v69 = v89;
          MEMORY[0x1C69263A0](v68);
          (*(v90 + 8))(v68, v91);
          v70 = v93;
          sub_1C2E75964();
          v71 = v92;
          v72 = *(v92 + 8);
          v73 = v96;
          v72(v69, v96);
          v74 = v117 + *(v97 + 36);
          v75 = sub_1C2E74394();
          (*(v71 + 16))(&v74[*(v75 + 20)], v70, v73);
          sub_1C2D67F68(&qword_1EC060DB0, MEMORY[0x1E6982230]);
          v76 = v106;
          sub_1C2E75934();
          v72(v70, v73);
          v118(v76, v67);
          v74[*(v75 + 24)] = 1;
          v77 = v117;
          sub_1C2C736A4(v117, v99, &qword_1EC060D28);
          swift_storeEnumTagMultiPayload();
          sub_1C2D67CB0();
          v78 = v100;
          sub_1C2E73F44();
          sub_1C2C736A4(v78, v113, &qword_1EC060D20);
          swift_storeEnumTagMultiPayload();
          sub_1C2D67C2C();
          sub_1C2D67E24();
          v47 = v111;
          sub_1C2E73F44();
          sub_1C2C73644(v78, &qword_1EC060D20);
          sub_1C2C73644(v77, &qword_1EC060D28);
        }

        else
        {
          v79 = v86;
          sub_1C2D66FFC(v86);
          *(v79 + *(v109 + 36)) = v49;
          sub_1C2C736A4(v79, v104, &qword_1EC060CF0);
          swift_storeEnumTagMultiPayload();
          sub_1C2D67EB0();
          sub_1C2D67D6C();

          v80 = v105;
          sub_1C2E73F44();
          sub_1C2C736A4(v80, v113, &qword_1EC060D00);
          swift_storeEnumTagMultiPayload();
          sub_1C2D67C2C();
          sub_1C2D67E24();
          v47 = v111;
          sub_1C2E73F44();
          sub_1C2C73644(v80, &qword_1EC060D00);
          sub_1C2C73644(v79, &qword_1EC060CF0);
          (*(v116 + 8))(v115, v39);
        }

        v64 = v81[0];
        goto LABEL_14;
      }

      v50 = v117;
      sub_1C2D66FFC(v117);
      *(v50 + *(v109 + 36)) = v49;

      v51 = v87;
      sub_1C2E759B4();
      sub_1C2E759A4();
      v118 = *(v94 + 8);
      v52 = v95;
      v118(v51, v95);
      v53 = v88;
      sub_1C2E75944();
      v54 = v89;
      MEMORY[0x1C69263A0](v53);
      (*(v90 + 8))(v53, v91);
      v55 = v93;
      sub_1C2E75964();
      v56 = v92;
      v57 = *(v92 + 8);
      v58 = v96;
      v57(v54, v96);
      v59 = v117 + *(v97 + 36);
      v60 = sub_1C2E74394();
      (*(v56 + 16))(&v59[*(v60 + 20)], v55, v58);
      sub_1C2D67F68(&qword_1EC060DB0, MEMORY[0x1E6982230]);
      v61 = v106;
      sub_1C2E75934();
      v57(v55, v58);
      v118(v61, v52);
      v59[*(v60 + 24)] = 1;
      v62 = v117;
      sub_1C2C736A4(v117, v99, &qword_1EC060D28);
      swift_storeEnumTagMultiPayload();
      sub_1C2D67CB0();
      v63 = v100;
      sub_1C2E73F44();
      sub_1C2C736A4(v63, v113, &qword_1EC060D20);
      swift_storeEnumTagMultiPayload();
      sub_1C2D67C2C();
      sub_1C2D67E24();
      v47 = v111;
      sub_1C2E73F44();
      sub_1C2C73644(v63, &qword_1EC060D20);
      sub_1C2C73644(v62, &qword_1EC060D28);
    }

    v64 = v81[0];
LABEL_14:
    sub_1C2C736A4(v47, v82, &qword_1EC060D30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D60);
    sub_1C2D67AE8();
    sub_1C2D67BA0();
    sub_1C2E73F44();
    sub_1C2C736A4(v64, v83, &qword_1EC060D48);
    swift_storeEnumTagMultiPayload();
    sub_1C2D67A5C();
    sub_1C2E73F44();
    sub_1C2C73644(v64, &qword_1EC060D48);
    v36 = v47;
    v37 = &qword_1EC060D30;
    return sub_1C2C73644(v36, v37);
  }

  sub_1C2E72104();
  v34 = sub_1C2E75064();
  v35 = v118;
  *v25 = v34;
  v25[1] = v35;
  swift_storeEnumTagMultiPayload();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060D60);
  sub_1C2D67AE8();
  sub_1C2D67BA0();
  sub_1C2E73F44();
  sub_1C2C736A4(v28, v22, &qword_1EC060D48);
  swift_storeEnumTagMultiPayload();
  sub_1C2D67A5C();
  sub_1C2E73F44();

  v36 = v28;
  v37 = &qword_1EC060D48;
  return sub_1C2C73644(v36, v37);
}

uint64_t sub_1C2D66FFC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060DB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_1C2E720F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2E72104();
  sub_1C2E72114();
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 != *MEMORY[0x1E6995DF0])
  {
    if (v9 == *MEMORY[0x1E6995DE8])
    {
      if (qword_1EC05CF70 != -1)
      {
        swift_once();
      }

      v10 = qword_1EC0603A0;
    }

    else
    {
      (*(v6 + 8))(v8, v5, 0);
    }
  }

  sub_1C2E750D4();
  sub_1C2E73DE4();
  v11 = sub_1C2E73DF4();
  (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
  v12 = sub_1C2E75074();

  sub_1C2C73644(v4, &qword_1EC060DB8);
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCA8) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCB0) + 28);
  v15 = *MEMORY[0x1E69816C8];
  v16 = sub_1C2E750B4();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  result = swift_getKeyPath();
  *v13 = result;
  *a1 = v12;
  return result;
}

void sub_1C2D672D8()
{
  sub_1C2D67734();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C2D67360(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

void sub_1C2D674E4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

void sub_1C2D67734()
{
  if (!qword_1EC060CA8)
  {
    type metadata accessor for ParticipantLabelViewModel();
    v0 = sub_1C2E751B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC060CA8);
    }
  }
}

uint64_t sub_1C2D6778C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_1C2E72244();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2C736A4(a1, v4, &qword_1EC0603A8);
  v9 = *(v6 + 48);
  if (v9(v4, 1, v5) == 1)
  {
    v10 = *MEMORY[0x1E6995E70];
    (*(v6 + 104))(v8, *MEMORY[0x1E6995E70], v5);
    if (v9(v4, 1, v5) != 1)
    {
      sub_1C2C73644(v4, &qword_1EC0603A8);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = *MEMORY[0x1E6995E70];
  }

  v11 = (*(v6 + 88))(v8, v5);
  if (v11 == v10)
  {
    return sub_1C2E74F84();
  }

  if (v11 == *MEMORY[0x1E6995E80])
  {
    return sub_1C2E74FA4();
  }

  if (v11 == *MEMORY[0x1E6995E78])
  {
    return sub_1C2E74F54();
  }

  v13 = sub_1C2E74F84();
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_1C2D679EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060CE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2D67A5C()
{
  result = qword_1EC060D50;
  if (!qword_1EC060D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060D48);
    sub_1C2D67AE8();
    sub_1C2D67BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060D50);
  }

  return result;
}

unint64_t sub_1C2D67AE8()
{
  result = qword_1EC060D58;
  if (!qword_1EC060D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060D60);
    sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060D58);
  }

  return result;
}

unint64_t sub_1C2D67BA0()
{
  result = qword_1EC060D68;
  if (!qword_1EC060D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060D30);
    sub_1C2D67C2C();
    sub_1C2D67E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060D68);
  }

  return result;
}

unint64_t sub_1C2D67C2C()
{
  result = qword_1EC060D70;
  if (!qword_1EC060D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060D20);
    sub_1C2D67CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060D70);
  }

  return result;
}

unint64_t sub_1C2D67CB0()
{
  result = qword_1EC060D78;
  if (!qword_1EC060D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060D28);
    sub_1C2D67D6C();
    sub_1C2D67F68(&qword_1EC060D88, MEMORY[0x1E697CC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060D78);
  }

  return result;
}

unint64_t sub_1C2D67D6C()
{
  result = qword_1EC060D80;
  if (!qword_1EC060D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060CF0);
    sub_1C2C76D5C();
    sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060D80);
  }

  return result;
}

unint64_t sub_1C2D67E24()
{
  result = qword_1EC060D90;
  if (!qword_1EC060D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060D00);
    sub_1C2D67EB0();
    sub_1C2D67D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060D90);
  }

  return result;
}

unint64_t sub_1C2D67EB0()
{
  result = qword_1EC060D98;
  if (!qword_1EC060D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060D08);
    sub_1C2D67D6C();
    sub_1C2C94F38(&qword_1EC060DA0, &qword_1EC060DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060D98);
  }

  return result;
}

uint64_t sub_1C2D67F68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2D67FE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060E40);
  sub_1C2C94F38(&qword_1EC060E48, &qword_1EC060E40);

  return sub_1C2E74074();
}

double sub_1C2D68090@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E75744();
  v4 = v3;
  sub_1C2D681A8(&v11);
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v21 = v11;
  v22 = v12;
  v31[6] = v17;
  v31[7] = v18;
  v31[8] = v19;
  v31[2] = v13;
  v31[3] = v14;
  v31[4] = v15;
  v31[5] = v16;
  v30 = v20;
  v32 = v20;
  v31[0] = v11;
  v31[1] = v12;
  sub_1C2C736A4(&v21, &v10, &qword_1EC060E50);
  sub_1C2C73644(v31, &qword_1EC060E50);
  *a1 = v2;
  *(a1 + 8) = v4;
  v5 = v28;
  *(a1 + 112) = v27;
  *(a1 + 128) = v5;
  *(a1 + 144) = v29;
  *(a1 + 160) = v30;
  v6 = v24;
  *(a1 + 48) = v23;
  *(a1 + 64) = v6;
  v7 = v26;
  *(a1 + 80) = v25;
  *(a1 + 96) = v7;
  result = *&v21;
  v9 = v22;
  *(a1 + 16) = v21;
  *(a1 + 32) = v9;
  return result;
}

uint64_t sub_1C2D681A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E75054();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  sub_1C2E75744();
  sub_1C2E73274();
  *&v33[3] = *&v33[27];
  *&v33[11] = *&v33[35];
  *&v33[19] = *&v33[43];
  sub_1C2E75044();
  (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
  v6 = sub_1C2E750C4();

  (*(v3 + 8))(v5, v2);
  sub_1C2E75744();
  sub_1C2E73274();
  LOBYTE(v38[0]) = 1;
  *&v32[6] = *&v33[51];
  *&v32[22] = *&v33[59];
  *&v32[38] = *&v33[67];
  v7 = sub_1C2E74EA4();
  KeyPath = swift_getKeyPath();
  v9 = v18;
  *&v34[0] = v18;
  WORD4(v34[0]) = 256;
  *(v34 + 10) = *v33;
  *(&v34[1] + 10) = *&v33[8];
  *(&v34[2] + 10) = *&v33[16];
  *(&v34[3] + 1) = *&v33[23];
  *&v23[31] = v34[1];
  v24 = v34[2];
  *&v23[23] = v34[0];
  v35[0] = v6;
  v35[1] = 0;
  LOWORD(v36[0]) = 1;
  *&v36[3] = *&v32[46];
  *(&v36[2] + 2) = *&v32[32];
  *(&v36[1] + 2) = *&v32[16];
  *(v36 + 2) = *v32;
  *(&v36[3] + 1) = KeyPath;
  v37 = v7;
  v25 = v34[3];
  v26 = v6;
  v31 = v7;
  v29 = v36[2];
  v30 = v36[3];
  v27 = v36[0];
  v28 = v36[1];
  v10 = v34[1];
  *a1 = v34[0];
  *(a1 + 16) = v10;
  v11 = v24;
  v12 = v25;
  v13 = v27;
  v14 = v28;
  *(a1 + 64) = v26;
  *(a1 + 80) = v13;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  v15 = v29;
  v16 = v30;
  *(a1 + 144) = v31;
  *(a1 + 112) = v15;
  *(a1 + 128) = v16;
  *(a1 + 96) = v14;
  v38[0] = v6;
  v38[1] = 0;
  v39 = 1;
  v40 = *v32;
  v41 = *&v32[16];
  *v42 = *&v32[32];
  *&v42[14] = *&v32[46];
  v43 = KeyPath;
  v44 = v7;
  sub_1C2C736A4(v34, &v19, &qword_1EC060E58);
  sub_1C2C736A4(v35, &v19, &qword_1EC060E60);
  sub_1C2C73644(v38, &qword_1EC060E60);
  v19 = v9;
  v20 = 256;
  v21 = *v33;
  v22 = *&v33[8];
  *v23 = *&v33[16];
  *&v23[7] = *&v33[23];
  return sub_1C2C73644(&v19, &qword_1EC060E58);
}

uint64_t sub_1C2D68510@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E75044();
  sub_1C2E75744();
  sub_1C2E73274();
  v3 = sub_1C2E74EA4();
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = result;
  *(a1 + 64) = v3;
  return result;
}

uint64_t sub_1C2D685E4()
{
  sub_1C2E756E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060E28);
  sub_1C2C94F38(&qword_1EC060E30, &qword_1EC060E20);
  sub_1C2D6ADC4();
  return sub_1C2E756F4();
}

uint64_t FilterOnboardingContentView.body.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_1C2E74264();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060DC0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060DC8);
  MEMORY[0x1EEE9AC00](v35);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060DD0);
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060DD8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v20 = *v2;
  *v8 = sub_1C2E73DC4();
  *(v8 + 1) = 0x402E000000000000;
  v8[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060DE0);
  sub_1C2D68B90(v20, &v8[*(v21 + 44)]);
  *&v8[*(v6 + 44)] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7AA50;
  v23 = sub_1C2E74464();
  *(inited + 32) = v23;
  v24 = sub_1C2E74484();
  *(inited + 33) = v24;
  v25 = sub_1C2E744A4();
  *(inited + 34) = v25;
  v26 = sub_1C2E74494();
  sub_1C2E74494();
  if (sub_1C2E74494() != v23)
  {
    v26 = sub_1C2E74494();
  }

  sub_1C2E74494();
  if (sub_1C2E74494() != v24)
  {
    v26 = sub_1C2E74494();
  }

  sub_1C2E74494();
  if (sub_1C2E74494() != v25)
  {
    v26 = sub_1C2E74494();
  }

  sub_1C2D68FBC(v8, v10);
  v27 = v35;
  v28 = &v10[*(v35 + 36)];
  *v28 = v26;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  v28[40] = 1;
  v29 = v38;
  sub_1C2E74234();
  v30 = sub_1C2D6902C();
  sub_1C2E74C04();
  (*(v39 + 8))(v29, v40);
  sub_1C2C73644(v10, &qword_1EC060DC8);
  v42 = v27;
  v43 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v37;
  sub_1C2E74BB4();
  (*(v36 + 8))(v13, v31);
  sub_1C2C8A264(v19, v16);
  v32 = v41;
  *v41 = 0;
  *(v32 + 8) = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060E08);
  sub_1C2C8A264(v16, v32 + *(v33 + 48));
  sub_1C2C8A2D4(v19);
  return sub_1C2C8A2D4(v16);
}

uint64_t sub_1C2D68B90@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1C2E73D44();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060E68);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v39 = sub_1C2E73C24();
  v38 = sub_1C2E73DD4();
  v44 = 0;
  sub_1C2D6918C(a1 & 1);
  memcpy(v45, v42, sizeof(v45));
  memcpy(v46, v42, 0x2E8uLL);
  sub_1C2C736A4(v45, v41, &qword_1EC060E70);
  sub_1C2C73644(v46, &qword_1EC060E70);
  memcpy(&v43[7], v45, 0x2E8uLL);
  v36 = v44;
  v37 = sub_1C2E74454();
  v41[0] = 1;
  v14 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  (*(v5 + 104))(v7, *MEMORY[0x1E697F468], v4);
  v15 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060E78) + 36)];
  v16 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060E80) + 36)];
  v17 = sub_1C2E74124();
  (*(v5 + 16))(&v16[*(v17 + 20)], v7, v4);
  sub_1C2E73F74();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  (*(v5 + 8))(v7, v4);
  *v16 = v19;
  *(v16 + 1) = v21;
  *(v16 + 2) = v23;
  *(v16 + 3) = v25;
  *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060E88) + 36)] = 256;
  *v15 = v14;
  *(v15 + 4) = 256;
  v26 = sub_1C2E75744();
  v28 = v27;
  v29 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060E90) + 36)];
  *v29 = v26;
  v29[1] = v28;
  *v13 = v38;
  *(v13 + 1) = 0x4034000000000000;
  v13[16] = v36;
  memcpy(v13 + 17, v43, 0x2EFuLL);
  v13[768] = v37;
  *(v13 + 769) = v42[0];
  *(v13 + 193) = *(v42 + 3);
  *(v13 + 776) = 0u;
  *(v13 + 792) = 0u;
  v13[808] = 1;
  v30 = _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
  KeyPath = swift_getKeyPath();
  v32 = &v13[*(v9 + 44)];
  *v32 = KeyPath;
  v32[1] = v30;
  v33 = v40;
  sub_1C2C736A4(v13, v40, &qword_1EC060E68);
  *a2 = v39;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060E98);
  sub_1C2C736A4(v33, a2 + *(v34 + 48), &qword_1EC060E68);
  sub_1C2C73644(v13, &qword_1EC060E68);
  return sub_1C2C73644(v33, &qword_1EC060E68);
}

uint64_t sub_1C2D68FBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060DC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2D6902C()
{
  result = qword_1EC060DE8;
  if (!qword_1EC060DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060DC8);
    sub_1C2D690B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060DE8);
  }

  return result;
}

unint64_t sub_1C2D690B8()
{
  result = qword_1EC060DF0;
  if (!qword_1EC060DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060DC0);
    sub_1C2C94F38(&qword_1EC060DF8, &qword_1EC060E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060DF0);
  }

  return result;
}

uint64_t sub_1C2D6918C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  __dst = v5;
  v19 = sub_1C2E73C24();
  LOBYTE(v99[0]) = 1;
  sub_1C2D69C58(v4 & 1, v2, &v119);
  v32 = *&v120[80];
  v33 = *&v120[96];
  v34 = *&v120[112];
  v35 = *&v120[128];
  v28 = *&v120[16];
  v29 = *&v120[32];
  v30 = *&v120[48];
  v31 = *&v120[64];
  v26 = v119;
  v27 = *v120;
  v36[6] = *&v120[80];
  v36[7] = *&v120[96];
  v36[8] = *&v120[112];
  v36[9] = *&v120[128];
  v36[2] = *&v120[16];
  v36[3] = *&v120[32];
  v36[4] = *&v120[48];
  v36[5] = *&v120[64];
  v36[0] = v119;
  v36[1] = *v120;
  sub_1C2C736A4(&v26, &v73, &qword_1EC060EA0);
  sub_1C2C73644(v36, &qword_1EC060EA0);
  *&v25[103] = v32;
  *&v25[119] = v33;
  *&v25[135] = v34;
  *&v25[151] = v35;
  *&v25[39] = v28;
  *&v25[55] = v29;
  *&v25[71] = v30;
  *&v25[87] = v31;
  *&v25[7] = v26;
  *&v25[23] = v27;
  v17 = v99[0];
  v18 = sub_1C2E73C24();
  LOBYTE(v99[0]) = 1;
  sub_1C2D69FF4(&v119);
  v41 = *&v120[48];
  v42 = *&v120[64];
  v43 = *&v120[80];
  v44 = *&v120[96];
  v37 = v119;
  v38 = *v120;
  v39 = *&v120[16];
  v40 = *&v120[32];
  v45[0] = v119;
  v45[1] = *v120;
  v45[2] = *&v120[16];
  v45[3] = *&v120[32];
  v45[4] = *&v120[48];
  v45[5] = *&v120[64];
  v45[6] = *&v120[80];
  v45[7] = *&v120[96];
  sub_1C2C736A4(&v37, &v73, &qword_1EC060EA8);
  sub_1C2C73644(v45, &qword_1EC060EA8);
  *&v24[71] = v41;
  *&v24[87] = v42;
  *&v24[103] = v43;
  *&v24[119] = v44;
  *&v24[7] = v37;
  *&v24[23] = v38;
  *&v24[39] = v39;
  *&v24[55] = v40;
  v15 = v99[0];
  v16 = sub_1C2E73C24();
  LOBYTE(v99[0]) = 1;
  sub_1C2D6A3C8(&v119);
  v52 = *&v120[80];
  v53 = *&v120[96];
  v48 = *&v120[16];
  v49 = *&v120[32];
  v51 = *&v120[64];
  v50 = *&v120[48];
  v47 = *v120;
  v46 = v119;
  v55[6] = *&v120[80];
  v55[7] = *&v120[96];
  v55[2] = *&v120[16];
  v55[3] = *&v120[32];
  v55[5] = *&v120[64];
  v55[4] = *&v120[48];
  v54 = *&v120[112];
  v56 = *&v120[112];
  v55[1] = *v120;
  v55[0] = v119;
  sub_1C2C736A4(&v46, &v73, &qword_1EC060EB0);
  sub_1C2C73644(v55, &qword_1EC060EB0);
  *&v23[87] = v51;
  *&v23[103] = v52;
  *&v23[119] = v53;
  *&v23[23] = v47;
  *&v23[39] = v48;
  *&v23[55] = v49;
  *&v23[71] = v50;
  *&v23[135] = v54;
  *&v23[7] = v46;
  v6 = v99[0];
  v12 = v99[0];
  v13 = sub_1C2E73C24();
  LOBYTE(v99[0]) = 1;
  sub_1C2D6A814(&v119);
  v59 = *&v120[16];
  v60 = *&v120[32];
  v61 = *&v120[48];
  v62 = *&v120[64];
  v57 = v119;
  v58 = *v120;
  v63[2] = *&v120[16];
  v63[3] = *&v120[32];
  v63[5] = *&v120[64];
  v63[4] = *&v120[48];
  v63[0] = v119;
  v63[1] = *v120;
  sub_1C2C736A4(&v57, &v73, &qword_1EC060EB8);
  sub_1C2C73644(v63, &qword_1EC060EB8);
  *&v22[39] = v59;
  *&v22[55] = v60;
  *&v22[71] = v61;
  *&v22[87] = v62;
  *&v22[7] = v57;
  *&v22[23] = v58;
  v7 = v99[0];
  v11 = v99[0];
  v10 = sub_1C2E73C24();
  LOBYTE(v99[0]) = 1;
  sub_1C2D6AAA0(&v119);
  v68 = *&v120[48];
  v69 = *&v120[64];
  v70 = *&v120[80];
  v64 = v119;
  v65 = *v120;
  v67 = *&v120[32];
  v66 = *&v120[16];
  v71[1] = *v120;
  v71[0] = v119;
  v71[2] = *&v120[16];
  v71[3] = *&v120[32];
  v71[4] = *&v120[48];
  v71[5] = *&v120[64];
  v72 = *&v120[80];
  sub_1C2C736A4(&v64, &v73, &qword_1EC060EC0);
  sub_1C2C73644(v71, &qword_1EC060EC0);
  *(&v21[3] + 7) = v67;
  *(&v21[4] + 7) = v68;
  *(&v21[5] + 7) = v69;
  *(v21 + 7) = v64;
  *(&v21[1] + 7) = v65;
  *(&v21[2] + 7) = v66;
  v73 = v19;
  v74[0] = v17;
  *&v74[33] = *&v25[32];
  *&v74[17] = *&v25[16];
  *&v74[1] = *v25;
  *&v74[97] = *&v25[96];
  *&v74[81] = *&v25[80];
  *&v74[65] = *&v25[64];
  *&v74[49] = *&v25[48];
  *&v74[160] = *&v25[159];
  *&v74[145] = *&v25[144];
  *&v74[129] = *&v25[128];
  *&v74[113] = *&v25[112];
  *&__src[128] = *&v74[112];
  *&__src[144] = *&v74[128];
  *&__src[160] = *&v74[144];
  *&__src[64] = *&v74[48];
  *&__src[80] = *&v74[64];
  *&__src[96] = *&v74[80];
  *&__src[112] = *&v74[96];
  *__src = v19;
  *&__src[16] = *v74;
  *&__src[32] = *&v74[16];
  *&__src[48] = *&v74[32];
  v75[0] = v18;
  v75[1] = 0;
  v76[0] = v15;
  *&v76[97] = *&v24[96];
  *&v76[81] = *&v24[80];
  *&v76[33] = *&v24[32];
  *&v76[17] = *&v24[16];
  *&v76[113] = *&v24[112];
  *&v76[49] = *&v24[48];
  *&v76[65] = *&v24[64];
  *&v76[1] = *v24;
  *&__src[296] = *&v76[96];
  *&__src[312] = *&v76[112];
  *&__src[264] = *&v76[64];
  *&__src[280] = *&v76[80];
  *&__src[216] = *&v76[16];
  *&__src[232] = *&v76[32];
  *&__src[248] = *&v76[48];
  *&__src[184] = v18;
  *&__src[200] = *v76;
  *&v78[97] = *&v23[96];
  *&v78[81] = *&v23[80];
  *&v78[33] = *&v23[32];
  *&v78[17] = *&v23[16];
  *(&v21[6] + 7) = v70;
  v8 = v99[0];
  *&v76[128] = *&v24[127];
  *&__src[176] = *&v74[160];
  *&__src[328] = *&v24[127];
  v77 = v16;
  v78[0] = v6;
  *&v78[113] = *&v23[112];
  *&v78[128] = *&v23[127];
  *&v78[49] = *&v23[48];
  *&v78[65] = *&v23[64];
  *&v78[1] = *v23;
  *&__src[432] = *&v78[80];
  *&__src[448] = *&v78[96];
  *&__src[464] = *&v78[112];
  *&__src[480] = *&v23[127];
  *&__src[368] = *&v78[16];
  *&__src[384] = *&v78[32];
  *&__src[400] = *&v78[48];
  *&__src[416] = *&v78[64];
  *&__src[336] = v16;
  *&__src[352] = *v78;
  v79 = v13;
  v80[0] = v7;
  *&v80[1] = *v22;
  *&v80[17] = *&v22[16];
  *&v80[33] = *&v22[32];
  *&v80[81] = *&v22[80];
  *&v80[65] = *&v22[64];
  *&v80[49] = *&v22[48];
  *&v80[96] = *&v22[95];
  *&__src[528] = *&v80[16];
  *&__src[544] = *&v80[32];
  *&__src[496] = v13;
  *&__src[512] = *v80;
  *&__src[608] = *&v22[95];
  *&__src[576] = *&v80[64];
  *&__src[592] = *&v80[80];
  *&__src[560] = *&v80[48];
  v81[0] = v10;
  v81[1] = 0;
  LOBYTE(v82[0]) = v99[0];
  *(v82 + 1) = v21[0];
  *(&v82[2] + 1) = v21[2];
  *(&v82[1] + 1) = v21[1];
  v82[6] = *(&v21[5] + 15);
  *(&v82[5] + 1) = v21[5];
  *(&v82[4] + 1) = v21[4];
  *(&v82[3] + 1) = v21[3];
  *&__src[648] = v82[1];
  *&__src[664] = v82[2];
  *&__src[616] = v10;
  *&__src[632] = v82[0];
  *&__src[712] = v82[5];
  *&__src[728] = v82[6];
  *&__src[680] = v82[3];
  *&__src[696] = v82[4];
  memcpy(__dst, __src, 0x2E8uLL);
  v88 = v21[3];
  v89 = v21[4];
  *v90 = v21[5];
  *&v90[15] = *(&v21[5] + 15);
  v85 = v21[0];
  v86 = v21[1];
  v83[0] = v10;
  v83[1] = 0;
  v84 = v8;
  v87 = v21[2];
  sub_1C2C736A4(&v73, &v119, &qword_1EC060EC8);
  sub_1C2C736A4(v75, &v119, &qword_1EC060ED0);
  sub_1C2C736A4(&v77, &v119, &qword_1EC060ED8);
  sub_1C2C736A4(&v79, &v119, &qword_1EC060EE0);
  sub_1C2C736A4(v81, &v119, &qword_1EC060EE8);
  sub_1C2C73644(v83, &qword_1EC060EE8);
  v96 = *&v22[48];
  v97 = *&v22[64];
  *v98 = *&v22[80];
  v93 = *v22;
  v94 = *&v22[16];
  v91[0] = v13;
  v91[1] = 0;
  v92 = v11;
  *&v98[15] = *&v22[95];
  v95 = *&v22[32];
  sub_1C2C73644(v91, &qword_1EC060EE0);
  v106 = *&v23[80];
  v107 = *&v23[96];
  *v108 = *&v23[112];
  *&v108[15] = *&v23[127];
  v102 = *&v23[16];
  v103 = *&v23[32];
  v104 = *&v23[48];
  v105 = *&v23[64];
  v99[0] = v16;
  v99[1] = 0;
  v100 = v12;
  v101 = *v23;
  sub_1C2C73644(v99, &qword_1EC060ED8);
  v116 = *&v24[80];
  v117 = *&v24[96];
  *v118 = *&v24[112];
  v112 = *&v24[16];
  v113 = *&v24[32];
  v114 = *&v24[48];
  v115 = *&v24[64];
  v109[0] = v18;
  v109[1] = 0;
  v110 = v15;
  *&v118[15] = *&v24[127];
  v111 = *v24;
  sub_1C2C73644(v109, &qword_1EC060ED0);
  *&v120[113] = *&v25[112];
  *&v120[129] = *&v25[128];
  *v121 = *&v25[144];
  *&v120[49] = *&v25[48];
  *&v120[65] = *&v25[64];
  *&v120[81] = *&v25[80];
  *&v120[97] = *&v25[96];
  *&v120[1] = *v25;
  *&v120[17] = *&v25[16];
  v119 = v19;
  v120[0] = v17;
  *&v121[15] = *&v25[159];
  *&v120[33] = *&v25[32];
  return sub_1C2C73644(&v119, &qword_1EC060EC8);
}

uint64_t sub_1C2D69C58@<X0>(char a1@<W0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1C2E75044();
  v7 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060EF0);
  sub_1C2E75184();
  if (v34)
  {
    v8 = 0;
    v30 = 0;
    v31 = 0;
    v28 = 0;
    v29 = 0;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v8 = sub_1C2E75044();
    sub_1C2E75744();
    sub_1C2E73274();
    v30 = v35;
    v31 = v34;
    v28 = v37;
    v29 = v36;
    v26 = v39;
    v27 = v38;
  }

  LOBYTE(v40) = a1 & 1;
  sub_1C2E75184();
  if (v32 == 1)
  {
    v9 = sub_1C2E75044();
    sub_1C2E75744();
    sub_1C2E73274();
    v24 = a2;
    v25 = v40;
    v22 = v42;
    v23 = v41;
    v10 = v44;
    v21 = v43;
  }

  else
  {
    v9 = 0;
    v24 = 0;
    v25 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v10 = 0;
  }

  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_1C2E71684();

  sub_1C2C74960();
  v13 = sub_1C2E748A4();
  v15 = v14;
  v17 = v16;
  v19 = v18 & 1;
  v33 = v18 & 1;

  sub_1C2C72330(v13, v15, v19);

  sub_1C2C72330(v13, v15, v19);

  sub_1C2C72340(v13, v15, v19);

  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v31;
  *(a3 + 32) = v30;
  *(a3 + 40) = v29;
  *(a3 + 48) = v28;
  *(a3 + 56) = v27;
  *(a3 + 64) = v26;
  *(a3 + 72) = v9;
  *(a3 + 80) = v25;
  *(a3 + 88) = v24;
  *(a3 + 96) = v23;
  *(a3 + 104) = v22;
  *(a3 + 112) = v21;
  *(a3 + 120) = v10;
  *(a3 + 128) = v13;
  *(a3 + 136) = v15;
  *(a3 + 144) = v19;
  *(a3 + 152) = v17;
  sub_1C2C72340(v13, v15, v33);
}

uint64_t sub_1C2D69FF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E75044();
  v3 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v4 = sub_1C2E73C24();
  v14[0] = 1;
  sub_1C2D6A1EC(&v26);
  v18 = *&v27[16];
  v19 = *&v27[32];
  v20 = *&v27[48];
  v21 = *&v27[64];
  v16 = v26;
  v17 = *v27;
  v23 = *&v27[64];
  v22[2] = *&v27[16];
  v22[3] = *&v27[32];
  v22[4] = *&v27[48];
  v22[0] = v26;
  v22[1] = *v27;
  sub_1C2C736A4(&v16, &v24, &qword_1EC060EF8);
  sub_1C2C73644(v22, &qword_1EC060EF8);
  *&v15[39] = v18;
  *&v15[55] = v19;
  *&v15[71] = v20;
  *&v15[87] = v21;
  *&v15[7] = v16;
  *&v15[23] = v17;
  v24 = v4;
  v25[0] = 1;
  v5 = *&v15[16];
  *&v25[1] = *v15;
  *&v25[80] = *&v15[79];
  *&v25[65] = *&v15[64];
  v7 = *&v15[48];
  v6 = *&v15[64];
  *&v25[49] = *&v15[48];
  v8 = *&v15[32];
  *&v25[33] = *&v15[32];
  v9 = *v15;
  *&v25[17] = *&v15[16];
  v10 = *v25;
  *(a1 + 16) = v4;
  *(a1 + 32) = v10;
  v11 = *&v25[80];
  *(a1 + 96) = *&v25[64];
  *(a1 + 112) = v11;
  v12 = *&v25[48];
  *(a1 + 64) = *&v25[32];
  *(a1 + 80) = v12;
  *(a1 + 48) = *&v25[16];
  *a1 = v2;
  *(a1 + 8) = v3;
  v26 = v4;
  v27[0] = 1;
  *&v27[17] = v5;
  *&v27[1] = v9;
  *&v27[80] = *&v15[79];
  *&v27[65] = v6;
  *&v27[49] = v7;
  *&v27[33] = v8;

  sub_1C2C736A4(&v24, v14, &qword_1EC060F00);
  sub_1C2C73644(&v26, &qword_1EC060F00);
}

uint64_t sub_1C2D6A1EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E75044();
  sub_1C2E75744();
  sub_1C2E73274();
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_1C2E71684();

  sub_1C2C74960();
  v5 = sub_1C2E748A4();
  v7 = v6;
  v9 = v8 & 1;
  *a1 = v2;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  *(a1 + 40) = v16;
  *(a1 + 48) = v17;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = v8 & 1;
  *(a1 + 80) = v10;

  sub_1C2C72330(v5, v7, v9);

  sub_1C2C72340(v5, v7, v9);
}

uint64_t sub_1C2D6A3C8@<X0>(uint64_t a1@<X8>)
{
  v27 = sub_1C2E75044();
  v25 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v26 = sub_1C2E75044();
  sub_1C2E75744();
  sub_1C2E73274();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060EF0);
  sub_1C2E75184();
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  if ((v28 & 1) == 0)
  {
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_1C2E71684();

    sub_1C2C74960();
    v1 = sub_1C2E748A4();
    v2 = v7;
    v4 = v8;
    v3 = v9 & 1;
    sub_1C2C72330(v1, v7, v9 & 1);
  }

  v24 = v3;
  v10 = v2;
  sub_1C2E75184();
  if (v28 == 1)
  {
    type metadata accessor for StringDummy();
    v11 = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    sub_1C2E71684();

    sub_1C2C74960();
    v13 = sub_1C2E748A4();
    v15 = v14;
    v17 = v13;
    v19 = v18;
    v20 = v16 & 1;
    sub_1C2C72330(v13, v18, v16 & 1);
    v21 = v15;
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1C2C7DD04(v1, v10, v24, v4);
  sub_1C2C7DD04(v17, v19, v20, v21);
  sub_1C2C7F6D4(v1, v10, v24, v4);
  sub_1C2C7F6D4(v17, v19, v20, v21);

  *a1 = v27;
  *(a1 + 8) = v25;
  *(a1 + 16) = v26;
  *(a1 + 24) = v29;
  *(a1 + 32) = v30;
  *(a1 + 40) = v31;
  *(a1 + 48) = v32;
  *(a1 + 56) = v33;
  *(a1 + 64) = v34;
  *(a1 + 72) = v1;
  *(a1 + 80) = v10;
  *(a1 + 88) = v24;
  *(a1 + 96) = v4;
  *(a1 + 104) = v17;
  *(a1 + 112) = v19;
  *(a1 + 120) = v20;
  *(a1 + 128) = v21;
  sub_1C2C7F6D4(v17, v19, v20, v21);
  sub_1C2C7F6D4(v1, v10, v24, v4);
}

uint64_t sub_1C2D6A814@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E75044();
  v3 = sub_1C2E75044();
  sub_1C2E75744();
  sub_1C2E73274();
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_1C2E71684();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C2E7A930;
  v7 = MEMORY[0x1E69E65A8];
  *(v6 + 56) = MEMORY[0x1E69E6530];
  *(v6 + 64) = v7;
  *(v6 + 32) = 2;
  sub_1C2E75C34();

  sub_1C2C74960();
  v8 = sub_1C2E748A4();
  v10 = v9;
  v12 = v11 & 1;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v15;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 40) = v18;
  *(a1 + 48) = v19;
  *(a1 + 56) = v20;
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  *(a1 + 80) = v11 & 1;
  *(a1 + 88) = v13;

  sub_1C2C72330(v8, v10, v12);

  sub_1C2C72340(v8, v10, v12);
}

uint64_t sub_1C2D6AAA0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E75044();
  v3 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v4 = sub_1C2E75044();
  sub_1C2E75744();
  sub_1C2E73274();
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_1C2E71684();

  sub_1C2C74960();
  v7 = sub_1C2E748A4();
  v9 = v8;
  v11 = v10 & 1;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  *(a1 + 40) = v16;
  *(a1 + 48) = v17;
  *(a1 + 56) = v18;
  *(a1 + 64) = v19;
  *(a1 + 72) = v7;
  *(a1 + 80) = v8;
  *(a1 + 88) = v10 & 1;
  *(a1 + 96) = v12;

  sub_1C2C72330(v7, v9, v11);

  sub_1C2C72340(v7, v9, v11);
}

uint64_t sub_1C2D6ACDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1C2D6AD38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1C2D6ADC4()
{
  result = qword_1EC060E38;
  if (!qword_1EC060E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060E28);
    sub_1C2D48EE0();
    sub_1C2C94F38(&qword_1EC05CB00, &qword_1EC05DD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060E38);
  }

  return result;
}

unint64_t sub_1C2D6AE7C()
{
  result = qword_1EC060F08;
  if (!qword_1EC060F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060F10);
    sub_1C2C94F38(&qword_1EC060E30, &qword_1EC060E20);
    sub_1C2D6ADC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060F08);
  }

  return result;
}

uint64_t sub_1C2D6AF40(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C2E768E4();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = 0;
    v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = (v5 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_1C2E765B4();
        v14 = v13;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v20[0] = a1;
          v20[1] = v19;
          v12 = v20 + v9;
        }

        else
        {
          v11 = v18;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = sub_1C2E76604();
          }

          v12 = (v11 + v9);
        }

        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v16 = (__clz(*v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v14 = 3;
          }

          else
          {
            v14 = 4;
          }

          goto LABEL_15;
        }

        if (v16 == 1)
        {
LABEL_14:
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }
      }

LABEL_15:
      sub_1C2E768F4();
      v15 = sub_1C2E768D4();
      (*v10)(v7, v4);
      if ((v15 & 1) == 0)
      {
        v9 += v14;
        if (v9 < v8)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  v15 = 0;
  return v15 & 1;
}

uint64_t BadgeView.init(text:foregroundColor:backgroundColor:)@<X0>(uint64_t a1@<X8>)
{
  *&v4 = 0x3FF0000000000000;
  sub_1C2C774AC();

  sub_1C2E731D4();
  v2 = a1 + *(type metadata accessor for BadgeView() + 20);
  sub_1C2E75174();
  *v2 = v4;
  *(v2 + 16) = v5;
  sub_1C2E75174();
}

uint64_t BadgeView.init(text:style:)@<X0>(uint64_t a1@<X8>)
{
  *&v4 = 0x3FF0000000000000;
  sub_1C2C774AC();
  sub_1C2E731D4();
  v2 = a1 + *(type metadata accessor for BadgeView() + 20);
  sub_1C2E75174();
  *v2 = v4;
  *(v2 + 16) = v5;
  return sub_1C2E75174();
}

uint64_t BadgeView.init<A>(text:cutoutBackgroundStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v13);
  v14 = sub_1C2E73284();
  *&v19 = 0x3FF0000000000000;
  sub_1C2C774AC();
  sub_1C2E731D4();
  v15 = a5 + *(type metadata accessor for BadgeView() + 20);
  v18[1] = a1;
  v18[2] = a2;
  sub_1C2E75174();
  v16 = v20;
  *v15 = v19;
  *(v15 + 16) = v16;
  v19 = v14;
  sub_1C2E75174();
  return (*(v10 + 8))(a3, a4);
}

uint64_t BadgeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060F18);
  MEMORY[0x1EEE9AC00](v90);
  v3 = v80 - v2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060F20);
  MEMORY[0x1EEE9AC00](v95);
  v80[0] = v80 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v80 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060F28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v89 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v94 = v80 - v11;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060F30);
  MEMORY[0x1EEE9AC00](v88);
  v93 = v80 - v12;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060F38);
  MEMORY[0x1EEE9AC00](v92);
  v91 = v80 - v13;
  v86 = type metadata accessor for BadgeView();
  v14 = *(v86 + 20);
  v97 = v1;
  v15 = (v1 + v14);
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  v83 = v16;
  *&v103 = v16;
  *(&v103 + 1) = v17;
  v82 = v17;
  v81 = v18;
  v104 = v18;
  v80[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E860);
  sub_1C2E75184();
  v103 = v102;
  sub_1C2C74960();
  v19 = sub_1C2E748A4();
  v21 = v20;
  v23 = v22;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E288);
  sub_1C2E731E4();
  sub_1C2E74554();
  v24 = *MEMORY[0x1E6980E20];
  v25 = sub_1C2E74534();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v7, v24, v25);
  (*(v26 + 56))(v7, 0, 1, v25);
  sub_1C2E745C4();
  sub_1C2C73644(v7, &qword_1EC05D810);
  v27 = sub_1C2E747F4();
  v29 = v28;
  v31 = v30;

  sub_1C2C72340(v19, v21, v23 & 1);

  v32 = v97 + *(v86 + 24);
  v33 = *(v32 + 16);
  v103 = *v32;
  v104 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060F40);
  sub_1C2E75184();
  v34 = v102;
  if ((*(&v102 + 1) & 0x8000000000000000) != 0)
  {

    v35 = v34;
  }

  else
  {
    v35 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  }

  sub_1C2D6BE94(v34, *(&v34 + 1));
  *&v103 = v35;
  v84 = sub_1C2E74794();
  v85 = v36;
  v38 = v37;
  v86 = v39;
  sub_1C2C72340(v27, v29, v31 & 1);

  v40 = sub_1C2E744B4();
  v41 = v97;
  sub_1C2E731E4();
  sub_1C2E73034();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v38 & 1;
  v108 = v38 & 1;
  v105 = 0;
  v51 = sub_1C2E74444();
  sub_1C2E731E4();
  sub_1C2E73034();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v109 = 0;
  v60 = *(v32 + 16);
  v103 = *v32;
  v104 = v60;
  sub_1C2E75184();
  if (v101 < 0)
  {

    goto LABEL_8;
  }

  sub_1C2D6BE94(v100, v101);
  *&v103 = v83;
  *(&v103 + 1) = v82;
  v104 = v81;
  sub_1C2E75184();
  v61 = sub_1C2D6AF40(v98, v99);

  if (v61)
  {
LABEL_8:
    v68 = v85;
    *v3 = v84;
    *(v3 + 1) = v68;
    v3[16] = v50;
    *(v3 + 17) = *v107;
    *(v3 + 5) = *&v107[3];
    *(v3 + 3) = v86;
    v3[32] = v40;
    *(v3 + 33) = *v106;
    *(v3 + 9) = *&v106[3];
    *(v3 + 5) = v43;
    *(v3 + 6) = v45;
    *(v3 + 7) = v47;
    *(v3 + 8) = v49;
    v3[72] = 0;
    *(v3 + 73) = *v111;
    *(v3 + 19) = *&v111[3];
    v3[80] = v51;
    *(v3 + 81) = *v110;
    *(v3 + 21) = *&v110[3];
    *(v3 + 11) = v53;
    *(v3 + 12) = v55;
    *(v3 + 13) = v57;
    *(v3 + 14) = v59;
    v3[120] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E520);
    sub_1C2D6BEE0();
    sub_1C2D6BF6C();
    v67 = v89;
    sub_1C2E73F44();
    goto LABEL_9;
  }

  v62 = *(v95 + 36);
  v63 = *MEMORY[0x1E6981DC0];
  v64 = sub_1C2E757E4();
  v65 = v80[0];
  (*(*(v64 - 8) + 104))(v80[0] + v62, v63, v64);
  v66 = v85;
  *v65 = v84;
  *(v65 + 8) = v66;
  *(v65 + 16) = v50;
  *(v65 + 17) = *v107;
  *(v65 + 20) = *&v107[3];
  *(v65 + 24) = v86;
  *(v65 + 32) = v40;
  *(v65 + 33) = *v106;
  *(v65 + 36) = *&v106[3];
  *(v65 + 40) = v43;
  *(v65 + 48) = v45;
  *(v65 + 56) = v47;
  *(v65 + 64) = v49;
  *(v65 + 72) = 0;
  LODWORD(v66) = *v111;
  *(v65 + 76) = *&v111[3];
  *(v65 + 73) = v66;
  *(v65 + 80) = v51;
  *(v65 + 81) = *v110;
  *(v65 + 84) = *&v110[3];
  *(v65 + 88) = v53;
  *(v65 + 96) = v55;
  *(v65 + 104) = v57;
  *(v65 + 112) = v59;
  *(v65 + 120) = 0;
  sub_1C2D6C1E4(v65, v3);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E520);
  sub_1C2D6BEE0();
  sub_1C2D6BF6C();
  v67 = v89;
  sub_1C2E73F44();
  sub_1C2C73644(v65, &qword_1EC060F20);
LABEL_9:
  v69 = v94;
  sub_1C2C71D5C(v67, v94, &qword_1EC060F28);
  v70 = sub_1C2E75744();
  v72 = v71;
  v73 = v93;
  v74 = &v93[*(v88 + 36)];
  sub_1C2D6BFF8(v41, v74);
  v75 = (v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060F48) + 36));
  *v75 = v70;
  v75[1] = v72;
  sub_1C2C71D5C(v69, v73, &qword_1EC060F28);
  v76 = sub_1C2E73C04();
  v77 = v91;
  sub_1C2C71D5C(v73, v91, &qword_1EC060F30);
  v78 = (v77 + *(v92 + 36));
  *v78 = v76;
  v78[1] = sub_1C2D6C1BC;
  v78[2] = 0;
  return sub_1C2C71D5C(v77, v96, &qword_1EC060F38);
}

uint64_t sub_1C2D6BE94(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }
}

unint64_t sub_1C2D6BEE0()
{
  result = qword_1EC05B6C0;
  if (!qword_1EC05B6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060F20);
    sub_1C2D6BF6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B6C0);
  }

  return result;
}

unint64_t sub_1C2D6BF6C()
{
  result = qword_1EC05B788;
  if (!qword_1EC05B788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E520);
    sub_1C2CD8E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B788);
  }

  return result;
}

uint64_t sub_1C2D6BFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C2E737C4();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E288);
  sub_1C2E731E4();
  v8 = *&v19 + *&v19;
  sub_1C2E731E4();
  v9 = *&v19 + *&v19;
  v10 = *(v5 + 28);
  v11 = *MEMORY[0x1E697F468];
  v12 = sub_1C2E73D44();
  (*(*(v12 - 8) + 104))(v7 + v10, v11, v12);
  *v7 = v8;
  v7[1] = v9;
  v13 = (a1 + *(type metadata accessor for BadgeView() + 24));
  v14 = *(v13 + 2);
  v19 = *v13;
  v20 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060F40);
  sub_1C2E75184();
  v15 = v21;
  v16 = v22;
  if (v22 < 0)
  {
    *&v19 = v22 & 0x7FFFFFFFFFFFFFFFLL;

    v17 = sub_1C2E73284();
    sub_1C2D6BE94(v15, v16);
  }

  else
  {
    v17 = v21;
  }

  sub_1C2D6C63C(v7, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060F58);
  *(a2 + *(result + 36)) = v17;
  return result;
}

uint64_t sub_1C2D6C1E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2D6C28C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 16))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 8) >> 50) >> 13) | (2 * ((*(a1 + 8) >> 50) & 0x1C00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C2D6C304(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1C2D6C380(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

unint64_t sub_1C2D6C3A8()
{
  result = qword_1EC05B6E8;
  if (!qword_1EC05B6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060F50);
    sub_1C2D6C434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B6E8);
  }

  return result;
}

unint64_t sub_1C2D6C434()
{
  result = qword_1EC05B7D0;
  if (!qword_1EC05B7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060F38);
    sub_1C2D6C4C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B7D0);
  }

  return result;
}

unint64_t sub_1C2D6C4C0()
{
  result = qword_1EC05B970;
  if (!qword_1EC05B970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060F30);
    sub_1C2D6C54C();
    sub_1C2D6C5D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B970);
  }

  return result;
}

unint64_t sub_1C2D6C54C()
{
  result = qword_1EC05B580;
  if (!qword_1EC05B580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060F28);
    sub_1C2D6BEE0();
    sub_1C2D6BF6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B580);
  }

  return result;
}

unint64_t sub_1C2D6C5D8()
{
  result = qword_1EC05B5D0;
  if (!qword_1EC05B5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B5D0);
  }

  return result;
}

uint64_t sub_1C2D6C63C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2E737C4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CallRecordingCountdownView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CallRecordingCountdownView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1C2CA1AAC;
}

id CallRecordingCountdownView.init(config:usesGlass:)(void *a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___closeButton] = 0;
  *&v2[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___stackView] = 0;
  *&v2[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___titleLabel] = 0;
  *&v2[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___subtitleLabel] = 0;
  sub_1C2C6E3A4(a1, &v2[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config]);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 40))(v7, v8);
  v10 = objc_allocWithZone(type metadata accessor for AudioMiddleStackBackgroundView());
  *&v3[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_backgroundView] = AudioMiddleStackBackgroundView.init(effect:usesGlass:)(v9, a2);
  v11 = &v3[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_strings];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  v14.receiver = v3;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1C2D6C9AC();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

void sub_1C2D6C9AC()
{
  v1 = v0;
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v60 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_backgroundView;
  [v0 addSubview_];
  v2 = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___stackView, sub_1C2D6D5C4);
  [v1 addSubview_];

  v3 = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___closeButton, sub_1C2D6D1A0);
  [v1 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C2E854D0;
  v5 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___stackView;
  v6 = [*(v1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___stackView) topAnchor];
  v7 = [v1 topAnchor];
  v8 = v1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config;
  v9 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config + 24);
  v10 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config + 32);
  __swift_project_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config, v9);
  (*(v10 + 8))(v9, v10);
  v11 = [v6 constraintEqualToAnchor:v7 constant:?];

  *(v4 + 32) = v11;
  v12 = [*(v1 + v5) bottomAnchor];
  v13 = [v1 bottomAnchor];
  v14 = *(v8 + 3);
  v15 = *(v8 + 4);
  __swift_project_boxed_opaque_existential_1(v8, v14);
  (*(v15 + 8))(v14, v15);
  v17 = [v12 &selRef:v13 setAllowsEdgeAntialiasing:-v16 + 6];

  *(v4 + 40) = v17;
  v18 = [*(v1 + v5) leadingAnchor];
  v19 = [v1 leadingAnchor];
  v20 = *(v8 + 3);
  v21 = *(v8 + 4);
  __swift_project_boxed_opaque_existential_1(v8, v20);
  (*(v21 + 8))(v20, v21);
  v23 = [v18 constraintEqualToAnchor:v19 constant:v22];

  *(v4 + 48) = v23;
  v24 = [*(v1 + v5) trailingAnchor];
  v25 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___closeButton;
  v26 = [*(v1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___closeButton) leadingAnchor];
  v27 = *(v8 + 3);
  v28 = *(v8 + 4);
  __swift_project_boxed_opaque_existential_1(v8, v27);
  v29 = (*(v28 + 24))(v27, v28);
  if (*(v29 + 16))
  {
    v30 = *(v29 + 32);
  }

  else
  {
    v30 = 0.0;
  }

  v59 = objc_opt_self();
  v31 = [v24 constraintEqualToAnchor:v26 constant:-v30];

  *(v4 + 56) = v31;
  v32 = [*&v60[v1] topAnchor];
  v33 = [v1 topAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v4 + 64) = v34;
  v35 = [*&v60[v1] leadingAnchor];
  v36 = [v1 leadingAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v4 + 72) = v37;
  v38 = [*&v60[v1] trailingAnchor];
  v39 = [v1 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v4 + 80) = v40;
  v41 = [*&v60[v1] bottomAnchor];
  v42 = [v1 bottomAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v4 + 88) = v43;
  v44 = [*(v1 + v25) centerYAnchor];
  v45 = [v1 centerYAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v4 + 96) = v46;
  v47 = [*(v1 + v25) trailingAnchor];
  v48 = [v1 trailingAnchor];
  v49 = *(v8 + 3);
  v50 = *(v8 + 4);
  __swift_project_boxed_opaque_existential_1(v8, v49);
  (*(v50 + 8))(v49, v50);
  v52 = [v47 constraintEqualToAnchor:v48 constant:-v51];

  *(v4 + 104) = v52;
  v53 = [v1 heightAnchor];
  v54 = [v53 constraintGreaterThanOrEqualToConstant_];

  *(v4 + 112) = v54;
  sub_1C2C6E1B4(0, &qword_1EC062670);
  v55 = sub_1C2E75D64();

  [v59 activateConstraints_];

  v56 = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___titleLabel, sub_1C2D6D78C);
  LODWORD(v57) = 1144750080;
  [v56 setContentCompressionResistancePriority:0 forAxis:v57];

  v61 = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___subtitleLabel, sub_1C2D6DBF4);
  LODWORD(v58) = 1144750080;
  [v61 setContentCompressionResistancePriority:0 forAxis:v58];
}

id sub_1C2D6D1A0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDDB8] scale:1];
  v4 = sub_1C2E75C24();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  [v2 setImage:v5 forState:0];
  v6 = [v2 imageView];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() labelColor];
    [v7 setTintColor_];
  }

  [v2 setContentMode_];
  v9 = [v2 imageView];
  if (v9)
  {
    v10 = v9;
    [v9 setContentMode_];
  }

  [v2 addTarget:a1 action:sel_handleTapClose forControlEvents:64];
  v11 = [v2 imageView];
  if (v11)
  {
    v12 = v11;
    [v11 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  }

  v13 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config + 24);
  v14 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config), v13);
  v15 = (*(v14 + 32))(v13, v14);
  [v2 setMaximumContentSizeCategory_];

  [v2 setMinimumContentSizeCategory_];
  v16 = [v2 imageView];
  if (v16)
  {
    v17 = v16;
    [v17 setTranslatesAutoresizingMaskIntoConstraints_];
    v27 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C2E81350;
    v19 = [v17 heightAnchor];
    v20 = [v2 heightAnchor];

    v21 = [v19 constraintEqualToAnchor_];
    *(v18 + 32) = v21;
    v22 = [v17 widthAnchor];
    v23 = [v17 heightAnchor];

    v24 = [v22 constraintEqualToAnchor_];
    *(v18 + 40) = v24;
    sub_1C2C6E1B4(0, &qword_1EC062670);
    v25 = sub_1C2E75D64();

    [v27 activateConstraints_];
  }

  else
  {
    v25 = v5;
    v5 = v3;
    v3 = v2;
  }

  return v2;
}

id sub_1C2D6D5C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C2E81350;
  *(v0 + 32) = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___titleLabel, sub_1C2D6D78C);
  *(v0 + 40) = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___subtitleLabel, sub_1C2D6DBF4);
  v1 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
  sub_1C2C6E1B4(0, &qword_1EC062710);
  v2 = sub_1C2E75D64();

  v3 = [v1 initWithArrangedSubviews_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setDistribution_];
  [v3 setAxis_];
  [v3 setSpacing_];
  [v3 setAlignment_];
  return v3;
}

id sub_1C2D6D728(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1C2D6D78C(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setTextAlignment_];
  [v1 setNumberOfLines_];
  [v1 setPreferredVibrancy_];
  [v1 setLineBreakMode_];
  [v1 sizeToFit];
  [v1 setAdjustsFontForContentSizeCategory_];
  v2 = objc_opt_self();
  v3 = [v2 preferredFontForTextStyle_];
  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithSymbolicTraits_];

  if (v5)
  {
    v6 = [v2 fontWithDescriptor:v5 size:0.0];

    v3 = v6;
  }

  v7 = [v3 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060FA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7A930;
  v9 = *MEMORY[0x1E69DB8F0];
  *(inited + 32) = *MEMORY[0x1E69DB8F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060FA8);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1C2E7A930;
  v11 = *MEMORY[0x1E69DB990];
  *(v10 + 32) = *MEMORY[0x1E69DB990];
  *(v10 + 40) = *MEMORY[0x1E69DB980];
  v12 = v9;
  v13 = v11;
  v14 = sub_1C2D94C98(v10);
  swift_setDeallocating();
  sub_1C2C73644(v10 + 32, &qword_1EC060FB0);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060FB8);
  *(inited + 40) = v14;
  sub_1C2D94D88(inited);
  swift_setDeallocating();
  sub_1C2C73644(inited + 32, &qword_1EC060FC0);
  type metadata accessor for AttributeName(0);
  sub_1C2D6EEA8(&qword_1EC05D5E0, type metadata accessor for AttributeName);
  v15 = sub_1C2E75B34();

  v16 = [v7 fontDescriptorByAddingAttributes_];

  v17 = v16;
  [v3 pointSize];
  v18 = [v2 fontWithDescriptor:v17 size:?];

  [v1 setFont_];
  v19 = [objc_opt_self() labelColor];
  [v1 setTextColor_];

  v20 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config + 24);
  v21 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config), v20);
  v22 = (*(v21 + 32))(v20, v21);
  [v1 setMaximumContentSizeCategory_];

  [v1 setMinimumContentSizeCategory_];
  return v1;
}

id sub_1C2D6DBF4(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setTextAlignment_];
  [v1 setNumberOfLines_];
  [v1 setPreferredVibrancy_];
  [v1 setLineBreakMode_];
  [v1 sizeToFit];
  v2 = [objc_opt_self() secondaryLabelColor];
  [v1 setTextColor_];

  [v1 setAdjustsFontForContentSizeCategory_];
  v3 = objc_opt_self();
  v4 = [v3 preferredFontForTextStyle_];
  v5 = [v4 fontDescriptor];
  v6 = [v5 fontDescriptorWithSymbolicTraits_];

  if (v6)
  {
    v7 = [v3 fontWithDescriptor:v6 size:0.0];

    v4 = v7;
  }

  v8 = [v4 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060FA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7A930;
  v10 = *MEMORY[0x1E69DB8F0];
  *(inited + 32) = *MEMORY[0x1E69DB8F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060FA8);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1C2E7A930;
  v12 = *MEMORY[0x1E69DB990];
  *(v11 + 32) = *MEMORY[0x1E69DB990];
  *(v11 + 40) = *MEMORY[0x1E69DB978];
  v13 = v10;
  v14 = v12;
  v15 = sub_1C2D94C98(v11);
  swift_setDeallocating();
  sub_1C2C73644(v11 + 32, &qword_1EC060FB0);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060FB8);
  *(inited + 40) = v15;
  sub_1C2D94D88(inited);
  swift_setDeallocating();
  sub_1C2C73644(inited + 32, &qword_1EC060FC0);
  type metadata accessor for AttributeName(0);
  sub_1C2D6EEA8(&qword_1EC05D5E0, type metadata accessor for AttributeName);
  v16 = sub_1C2E75B34();

  v17 = [v8 fontDescriptorByAddingAttributes_];

  v18 = v17;
  [v4 pointSize];
  v19 = [v3 fontWithDescriptor:v18 size:?];

  [v1 setFont_];
  v20 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config + 24);
  v21 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_config), v20);
  v22 = (*(v21 + 32))(v20, v21);
  [v1 setMaximumContentSizeCategory_];

  [v1 setMinimumContentSizeCategory_];
  return v1;
}

uint64_t CallRecordingCountdownView.strings.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_strings);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C2D6E0D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_strings);
  swift_beginAccess();
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

void sub_1C2D6E140(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = (*a2 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_strings);
  swift_beginAccess();
  *v6 = v3;
  v6[1] = v2;
  v6[2] = v5;
  v6[3] = v4;

  sub_1C2D6E268();
}

void CallRecordingCountdownView.strings.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_strings);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;

  sub_1C2D6E268();
}

void sub_1C2D6E268()
{
  v1 = v0 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_strings;
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = &selRef_removeArrangedSubview_;
    if (*(v1 + 16))
    {
      v4 = 0;
    }

    else
    {
      v4 = v2 == 0xE000000000000000;
    }

    if (!v4 && (sub_1C2E767A4() & 1) == 0)
    {
      v3 = &selRef_addArrangedSubview_;
    }
  }

  else
  {
    v3 = &selRef_removeArrangedSubview_;
  }

  v5 = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___stackView, sub_1C2D6D5C4);
  v6 = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___subtitleLabel, sub_1C2D6DBF4);
  [v5 *v3];

  v7 = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___titleLabel, sub_1C2D6D78C);

  v8 = sub_1C2E75C24();

  [v7 setText_];

  v9 = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___subtitleLabel, sub_1C2D6DBF4);
  if (*(v1 + 24))
  {

    v10 = sub_1C2E75C24();
  }

  else
  {
    v10 = 0;
  }

  [v9 setText_];
}

void (*CallRecordingCountdownView.strings.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C2D6E4A0;
}

void sub_1C2D6E4A0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1C2D6E268();
  }
}

Swift::Void __swiftcall CallRecordingCountdownView.setAXLabelForCloseButton(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  v2 = sub_1C2D6D728(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___closeButton, sub_1C2D6D1A0);
  v3 = object;
  v4 = v2;
  if (v3)
  {
    v5 = sub_1C2E75C24();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v4 setAccessibilityLabel_];
}

uint64_t CallRecordingCountdownView.updateBackground(_:)(void *a1)
{
  v2 = sub_1C2E759D4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C2E75A04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2C6E1B4(0, &qword_1EDDCD9E0);
  v10 = sub_1C2E76084();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1C2D6EE24;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2CB2CC4;
  aBlock[3] = &block_descriptor_10;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  sub_1C2E759F4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C2D6EEA8(&qword_1EDDCDA00, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C60);
  sub_1C2CF04C8();
  sub_1C2E76464();
  MEMORY[0x1C6926AC0](0, v9, v5, v13);
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_1C2D6E904(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_backgroundView;
    v5 = *(Strong + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_backgroundView);
    *(Strong + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_backgroundView) = a2;
    v6 = Strong;
    v7 = a2;

    v8 = v6;
    [v8 addSubview_];
    [v8 sendSubviewToBack_];
    v9 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C2E7A700;
    v11 = [*&v6[v4] topAnchor];
    v12 = [v8 topAnchor];
    v13 = [v11 constraintEqualToAnchor_];

    *(v10 + 32) = v13;
    v14 = [*&v6[v4] leadingAnchor];
    v15 = [v8 leadingAnchor];

    v16 = [v14 constraintEqualToAnchor_];
    *(v10 + 40) = v16;
    v17 = [*&v6[v4] trailingAnchor];
    v18 = [v8 trailingAnchor];

    v19 = [v17 constraintEqualToAnchor_];
    *(v10 + 48) = v19;
    v20 = [*&v6[v4] bottomAnchor];
    v21 = [v8 bottomAnchor];

    v22 = [v20 constraintEqualToAnchor_];
    *(v10 + 56) = v22;
    sub_1C2C6E1B4(0, &qword_1EC062670);
    v23 = sub_1C2E75D64();

    [v9 activateConstraints_];
  }
}

id CallRecordingCountdownView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CallRecordingCountdownView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2D6EEA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t KeypadNumberView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1C2E73DC4();
  sub_1C2D6EF90(v3, v9);
  v5 = v9[0];
  v6 = v9[1];
  v7 = v9[2];

  sub_1C2D6FDC0(v6);

  result = sub_1C2D6F050(v6);
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return result;
}

uint64_t sub_1C2D6EF90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = a1[2];
  swift_beginAccess();
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[4];

    sub_1C2D6FDC0(v5);
  }

  else
  {

    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;

  sub_1C2D6FDC0(v5);
  sub_1C2D6F050(v5);
}

uint64_t sub_1C2D6F050(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C2D6F090@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1C2E73DC4();
  sub_1C2D6EF90(v3, v9);
  v5 = v9[0];
  v6 = v9[1];
  v7 = v9[2];

  sub_1C2D6FDC0(v6);

  result = sub_1C2D6F050(v6);
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return result;
}

uint64_t KeypadNumberElementTextView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  swift_getKeyPath();
  sub_1C2D6FD54(&qword_1EC060FC8, type metadata accessor for KeypadNumberElement);
  sub_1C2E71A64();

  swift_beginAccess();
  sub_1C2C74960();

  v18 = sub_1C2E748A4();
  v20 = v3;
  v21 = v4;
  v5 = objc_opt_self();
  swift_getKeyPath();
  sub_1C2E71A64();

  swift_beginAccess();
  v6 = [v5 systemFontOfSize_];
  v19 = sub_1C2D6F42C();

  swift_getKeyPath();
  sub_1C2E71A64();

  swift_getKeyPath();
  sub_1C2E71A64();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060FD0);
  sub_1C2D6FAC0();
  sub_1C2E74934();
  sub_1C2C72340(v18, v20, v21 & 1);

  v7 = sub_1C2E74464();
  swift_getKeyPath();
  sub_1C2E71A64();

  sub_1C2E73034();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060FE8);
  v17 = a1 + *(result + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

id sub_1C2D6F42C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061028);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C2E7A930;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061030);
  inited = swift_initStackObject();
  v3 = MEMORY[0x1E69DDCF0];
  *(inited + 16) = xmmword_1C2E7A110;
  v4 = *v3;
  *(inited + 32) = v4;
  v5 = *MEMORY[0x1E69DDCE8];
  *(inited + 40) = 33;
  *(inited + 48) = v5;
  *(inited + 56) = 0;
  v6 = v4;
  v7 = v5;
  v8 = sub_1C2D94EC4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061038);
  swift_arrayDestroy();
  *(v1 + 32) = v8;
  v9 = [v0 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060FA0);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1C2E7A930;
  v11 = *MEMORY[0x1E69DB8B0];
  *(v10 + 32) = *MEMORY[0x1E69DB8B0];
  *(v10 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061040);
  *(v10 + 40) = v1;
  v12 = v11;
  sub_1C2D94D88(v10);
  swift_setDeallocating();
  sub_1C2D6FCEC(v10 + 32);
  type metadata accessor for AttributeName(0);
  sub_1C2D6FD54(&qword_1EC05D5E0, type metadata accessor for AttributeName);
  v13 = sub_1C2E75B34();

  v14 = [v9 fontDescriptorByAddingAttributes_];

  [v0 pointSize];
  v16 = [objc_opt_self() fontWithDescriptor:v14 size:v15];

  return v16;
}

uint64_t sub_1C2D6F6A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = a2;
  v8 = sub_1C2E746B4();
  KeyPath = swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061008);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061010) + 36));
  *v11 = KeyPath;
  v11[1] = v8;
  [v7 lineHeight];
  v13 = a4 - v12;
  v14 = swift_getKeyPath();
  v15 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061018) + 36);
  *v15 = v14;
  *(v15 + 8) = v13;
  LOBYTE(v14) = sub_1C2E744B4();
  [v7 lineHeight];
  sub_1C2E73034();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061020);
  v25 = a3 + *(result + 36);
  *v25 = v14;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

uint64_t sub_1C2D6F82C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D6FD54(&qword_1EC060FC8, type metadata accessor for KeypadNumberElement);
  sub_1C2E71A64();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1C2D6F8EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2E12800(v1, v2);
}

__n128 sub_1C2D6F92C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D6FD54(&qword_1EC060FC8, type metadata accessor for KeypadNumberElement);
  sub_1C2E71A64();

  swift_beginAccess();
  result = *(v3 + 32);
  v5 = *(v3 + 48);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1C2D6F9E8()
{
  swift_getKeyPath();
  sub_1C2D6FD54(&qword_1EC060FC8, type metadata accessor for KeypadNumberElement);
  sub_1C2E71A54();
}

unint64_t sub_1C2D6FAC0()
{
  result = qword_1EC060FD8;
  if (!qword_1EC060FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060FD0);
    sub_1C2D6FB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060FD8);
  }

  return result;
}

unint64_t sub_1C2D6FB4C()
{
  result = qword_1EC060FE0;
  if (!qword_1EC060FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060FE0);
  }

  return result;
}

unint64_t sub_1C2D6FBF8()
{
  result = qword_1EC061000;
  if (!qword_1EC061000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060FE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060FD0);
    sub_1C2D6FAC0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061000);
  }

  return result;
}

uint64_t sub_1C2D6FCEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2D6FD54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2D6FDC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1C2D6FE04()
{
  result = qword_1EC061048;
  if (!qword_1EC061048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061020);
    sub_1C2D6FE90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061048);
  }

  return result;
}

unint64_t sub_1C2D6FE90()
{
  result = qword_1EC061050;
  if (!qword_1EC061050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061018);
    sub_1C2D6FF48();
    sub_1C2C94F38(&qword_1EC05CB10, &qword_1EC05FED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061050);
  }

  return result;
}

unint64_t sub_1C2D6FF48()
{
  result = qword_1EC061058;
  if (!qword_1EC061058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061010);
    sub_1C2C94F38(&qword_1EC061060, &qword_1EC061008);
    sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061058);
  }

  return result;
}

uint64_t sub_1C2D7003C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C2E768E4();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = 0;
    v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = (v5 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_1C2E765B4();
        v14 = v13;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v20[0] = a1;
          v20[1] = v19;
          v12 = v20 + v9;
        }

        else
        {
          v11 = v18;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = sub_1C2E76604();
          }

          v12 = (v11 + v9);
        }

        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v16 = (__clz(*v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v14 = 3;
          }

          else
          {
            v14 = 4;
          }

          goto LABEL_15;
        }

        if (v16 == 1)
        {
LABEL_14:
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }
      }

LABEL_15:
      sub_1C2E768F4();
      v15 = sub_1C2E768D4();
      (*v10)(v7, v4);
      if ((v15 & 1) == 0)
      {
        v9 += v14;
        if (v9 < v8)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  v15 = 0;
  return v15 & 1;
}

uint64_t Text.init(badge:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v48 - v5;
  v7 = sub_1C2E75524();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC05CFA0 != -1)
  {
    swift_once();
  }

  if (byte_1EC075B40 == 1)
  {

    v49 = sub_1C2D7003C(a1, a2);

    v11 = objc_opt_self();
    v12 = [v11 currentDevice];
    [v12 userInterfaceIdiom];

    v13 = [v11 currentDevice];
    [v13 userInterfaceIdiom];

    v14 = objc_opt_self();
    v15 = [v14 tertiaryLabelColor];
    sub_1C2E74E94();
    v16 = [v14 secondaryLabelColor];
    sub_1C2E74E94();
    sub_1C2E75504();
    v17 = sub_1C2E74EE4();

    (*(v8 + 8))(v10, v7);
    v18 = [objc_opt_self() defaultMetrics];
    [v18 scaledValueForValue_];

    sub_1C2E74554();
    v19 = sub_1C2E74534();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    sub_1C2E745C4();
    sub_1C2C73644(v6, &qword_1EC05D810);
    v20 = sub_1C2E747F4();
    v22 = v21;
    v24 = v23;

    v50 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
    v25 = sub_1C2E74794();
    v27 = v26;
    v29 = v28;
    sub_1C2C72340(v20, v22, v24 & 1);

    LOBYTE(v50) = (v49 & 1) == 0;
    v51 = v17;
    sub_1C2C7C914();
    v48[2] = v17;

    v30 = sub_1C2E74774();
    v32 = v31;
    v49 = v33;
    v48[1] = v34;
    sub_1C2C72340(v25, v27, v29 & 1);

    v35 = sub_1C2E747C4();
    v37 = v36;
    v39 = v38;
    v40 = sub_1C2E747C4();

    sub_1C2C72340(v30, v32, v49 & 1);

    sub_1C2C72340(v35, v37, v39 & 1);
  }

  else
  {
    v41 = sub_1C2D7205C(a1, a2);
    sub_1C2E75034();
    v42 = sub_1C2E748B4();
    v44 = v43;
    v46 = v45;
    v50 = a1;
    v51 = a2;
    sub_1C2C74960();
    v40 = sub_1C2E747B4();

    sub_1C2C72340(v42, v44, v46 & 1);
  }

  return v40;
}

uint64_t sub_1C2D707F8()
{
  v1 = *(v0 + 16);
  sub_1C2E76854();
  sub_1C2E75CC4();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1C69272B0](*&v2);
  return sub_1C2E76894();
}

uint64_t sub_1C2D70870()
{
  v1 = *(v0 + 16);
  sub_1C2E75CC4();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1C69272B0](*&v2);
}

uint64_t sub_1C2D708BC()
{
  v1 = *(v0 + 16);
  sub_1C2E76854();
  sub_1C2E75CC4();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1C69272B0](*&v2);
  return sub_1C2E76894();
}

BOOL sub_1C2D70930(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1C2E767A4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

void *sub_1C2D70990()
{
  result = sub_1C2D94FB0(MEMORY[0x1E69E7CC0]);
  off_1EC061068 = result;
  return result;
}

uint64_t sub_1C2D709B8()
{
  v0 = sub_1C2E75524();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2C6E1B4(0, &qword_1EC05CA78);
  v4 = objc_opt_self();
  v5 = [v4 tertiaryLabelColor];
  sub_1C2E74E94();
  v6 = [v4 secondaryLabelColor];
  sub_1C2E74E94();
  sub_1C2E75504();
  sub_1C2E74EE4();

  (*(v1 + 8))(v3, v0);
  result = sub_1C2E761F4();
  qword_1EC061070 = result;
  return result;
}

void sub_1C2D70B54(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v5 = qword_1EC05CF88;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = [qword_1EC061070 resolvedColorWithTraitCollection_];

  *a3 = v7;
}

void sub_1C2D70C0C(void *a1, char a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, id *a14)
{
  if (*a13 != -1)
  {
    v30 = a14;
    swift_once();
    a14 = v30;
  }

  v31 = *a14;
  v23 = [a1 CGContext];
  [v31 setFill];
  v24 = [objc_opt_self() bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, a3, a4, a5}];
  [v24 fill];
  v25 = objc_opt_self();
  v26 = [v25 currentDevice];
  [v26 userInterfaceIdiom];

  v27 = [v25 currentDevice];
  [v27 userInterfaceIdiom];

  if ((a2 & 1) == 0)
  {
    CGContextSetBlendMode(v23, kCGBlendModeDestinationOut);
  }

  v28 = sub_1C2E75C24();
  type metadata accessor for Key(0);
  sub_1C2D728A4(&qword_1EC05D488, type metadata accessor for Key);
  v29 = sub_1C2E75B34();
  [v28 drawInRect:v29 withAttributes:{a6 + 0.3, a7 + -0.15, a8, a9}];
}

uint64_t sub_1C2D70EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C2E73BA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9E0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C2D72540(v2 + *(a1 + 36), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C2E730D4();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C2E75FD4();
    v14 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t BadgeHost.content.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t BadgeHost.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v29 = sub_1C2E730D4();
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v24 = v5;
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061088);
  v26 = *(a1 + 24);
  v10 = v26;
  v27 = v9;
  v25 = sub_1C2D72200();
  v32 = v5;
  v33 = v9;
  v34 = v10;
  v35 = v25;
  v11 = sub_1C2E75224();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v17;
  (*(v2 + *(a1 + 40)))(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061098);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C2E7A110;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC0610B0);
  sub_1C2E731E4();
  sub_1C2E76564();
  sub_1C2D70EC4(a1, v28);
  sub_1C2D728A4(&qword_1EC0610A0, MEMORY[0x1E697DBD0]);
  sub_1C2E76564();
  v32 = v19;
  v20 = v24;
  sub_1C2E74CB4();

  (*(v30 + 8))(v8, v20);
  WitnessTable = swift_getWitnessTable();
  sub_1C2C6EE48(v14, v11, WitnessTable);
  v22 = *(v12 + 8);
  v22(v14, v11);
  sub_1C2C6EE48(v18, v11, WitnessTable);
  return (v22)(v18, v11);
}

uint64_t sub_1C2D71464()
{
  sub_1C2E76854();
  sub_1C2E76874();
  sub_1C2E74F24();
  return sub_1C2E76894();
}

uint64_t sub_1C2D714C4()
{
  sub_1C2E76874();

  return sub_1C2E74F24();
}

uint64_t sub_1C2D71514()
{
  sub_1C2E76854();
  sub_1C2E76874();
  sub_1C2E74F24();
  return sub_1C2E76894();
}

uint64_t sub_1C2D71570(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_1C2E74ED4();
  }

  else
  {
    return 0;
  }
}

uint64_t View.badgeRenderer()()
{
  type metadata accessor for BadgeRendererModifier();
  sub_1C2E73654();
  sub_1C2D72284();
  sub_1C2D728A4(&qword_1EC05C128, type metadata accessor for BadgeRendererModifier);
  swift_getWitnessTable();
  return sub_1C2E74E14();
}

uint64_t sub_1C2D71690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for BadgeRendererModifier();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C2E73654();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v19 - v13;
  v19[3] = 0x3FF0000000000000;
  sub_1C2C7E058();
  sub_1C2E731D4();
  MEMORY[0x1C69257F0](v7, a2, v5, a3);
  sub_1C2D728EC(v7, type metadata accessor for BadgeRendererModifier);
  v15 = sub_1C2D728A4(&qword_1EC05C128, type metadata accessor for BadgeRendererModifier);
  v19[1] = a3;
  v19[2] = v15;
  WitnessTable = swift_getWitnessTable();
  sub_1C2C6EE48(v11, v8, WitnessTable);
  v17 = *(v9 + 8);
  v17(v11, v8);
  sub_1C2C6EE48(v14, v8, WitnessTable);
  return (v17)(v14, v8);
}

void (*sub_1C2D718D8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C2E72FC4();
  return sub_1C2CC3834;
}

void sub_1C2D71960()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v1 = [v0 imageBadgeRendererEnabled];

  byte_1EC075B40 = v1 ^ 1;
}

uint64_t sub_1C2D719B8()
{
  if (qword_1EC05CFA0 != -1)
  {
    swift_once();
  }

  return byte_1EC075B40;
}

uint64_t sub_1C2D71A0C(uint64_t a1, unint64_t a2, double a3)
{
  v6 = sub_1C2D7003C(a1, a2);
  v7 = objc_opt_self();
  v8 = [v7 currentDevice];
  [v8 userInterfaceIdiom];

  v9 = [v7 currentDevice];
  [v9 userInterfaceIdiom];

  v10 = a3 * 2.5;
  v11 = [v7 currentDevice];
  [v11 userInterfaceIdiom];

  v12 = a3 * 0.5;
  v13 = a3 * 1.5;
  v14 = [objc_opt_self() systemFontOfSize:a3 * 8.0 weight:*MEMORY[0x1E69DB958]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7A110;
  v16 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v17 = sub_1C2C6E1B4(0, &qword_1EC061150);
  *(inited + 40) = v14;
  v18 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v17;
  *(inited + 72) = v18;
  v19 = objc_opt_self();
  v20 = v16;
  v47 = v14;
  v21 = v18;
  v22 = [v19 whiteColor];
  *(inited + 104) = sub_1C2C6E1B4(0, &qword_1EC05CA78);
  *(inited + 80) = v22;
  v23 = sub_1C2D94C74(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061158);
  swift_arrayDestroy();
  v24 = sub_1C2E75C24();
  type metadata accessor for Key(0);
  sub_1C2D728A4(&qword_1EC05D488, type metadata accessor for Key);
  v25 = sub_1C2E75B34();
  [v24 sizeWithAttributes_];
  v27 = v26;
  v29 = v28;

  v30 = v10 + v10 + v27;
  v31 = v12 + v12 + v29;
  v32 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  *(v33 + 24) = v31;
  *(v33 + 32) = v13;
  v34 = v6 & 1;
  *(v33 + 40) = v6 & 1;
  *(v33 + 48) = v10;
  *(v33 + 56) = v12;
  *(v33 + 64) = v27;
  *(v33 + 72) = v29;
  *(v33 + 80) = a1;
  *(v33 + 88) = a2;
  *(v33 + 96) = v23;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1C2D725B0;
  *(v35 + 24) = v33;
  v52 = sub_1C2D725D4;
  v53 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1C2E07180;
  v51 = &block_descriptor_11;
  v36 = _Block_copy(&aBlock);

  v37 = [v32 imageWithActions_];
  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
    goto LABEL_8;
  }

  v39 = swift_allocObject();
  *(v39 + 16) = v30;
  *(v39 + 24) = v31;
  *(v39 + 32) = v13;
  *(v39 + 40) = v34;
  *(v39 + 48) = v10;
  *(v39 + 56) = v12;
  *(v39 + 64) = v27;
  *(v39 + 72) = v29;
  *(v39 + 80) = a1;
  *(v39 + 88) = a2;
  *(v39 + 96) = v23;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1C2D725F4;
  *(v40 + 24) = v39;
  v52 = sub_1C2D729A8;
  v53 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1C2E07180;
  v51 = &block_descriptor_30;
  v41 = _Block_copy(&aBlock);

  v42 = [v32 imageWithActions_];
  _Block_release(v41);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v43 = [v37 imageAsset];
  if (v43)
  {
    v44 = v43;
    v45 = [objc_opt_self() currentTraitCollection];
    v46 = sub_1C2E760B4();

    [v44 registerImage:v42 withTraitCollection:v46];
  }

  else
  {
  }

  return v37;
}

id sub_1C2D7205C(uint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() defaultMetrics];
  [v4 scaledValueForValue_];
  v6 = v5;

  v7 = qword_1EC05CF80;

  if (v7 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = off_1EC061068;
  if (*(off_1EC061068 + 2) && (v9 = sub_1C2D92340(a1, a2, v6), (v10 & 1) != 0))
  {
    v11 = *(v8[7] + 8 * v9);
    swift_endAccess();
    v12 = v11;

    return v12;
  }

  else
  {
    swift_endAccess();
    v14 = sub_1C2D71A0C(a1, a2, v6);
    swift_beginAccess();
    v15 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1EC061068;
    off_1EC061068 = 0x8000000000000000;
    sub_1C2D938F4(v15, a1, a2, isUniquelyReferenced_nonNull_native, v6);

    off_1EC061068 = v17;
    swift_endAccess();
    return v15;
  }
}

unint64_t sub_1C2D72200()
{
  result = qword_1EC061090;
  if (!qword_1EC061090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061090);
  }

  return result;
}

unint64_t sub_1C2D72284()
{
  result = qword_1EC0610A8;
  if (!qword_1EC0610A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0610A8);
  }

  return result;
}

void sub_1C2D7231C()
{
  sub_1C2C7DF90();
  if (v0 <= 0x3F)
  {
    sub_1C2D723F8();
    if (v1 <= 0x3F)
    {
      sub_1C2D72450();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C2D723F8()
{
  if (!qword_1EC05BAB0)
  {
    sub_1C2E730D4();
    v0 = sub_1C2E730F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05BAB0);
    }
  }
}

unint64_t sub_1C2D72450()
{
  result = qword_1EDDCD9D0;
  if (!qword_1EDDCD9D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDDCD9D0);
  }

  return result;
}

uint64_t sub_1C2D724D8(uint64_t result, int a2, int a3)
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

uint64_t sub_1C2D72540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2D72668(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C2D726B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C2D72710()
{
  result = qword_1EC05B950;
  if (!qword_1EC05B950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061140);
    sub_1C2C94F38(&qword_1EC05B4D0, &qword_1EC061138);
    sub_1C2C94F38(&qword_1EC05B468, &qword_1EC061160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B950);
  }

  return result;
}

unint64_t sub_1C2D727F8()
{
  result = qword_1EC05C618;
  if (!qword_1EC05C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05C618);
  }

  return result;
}

unint64_t sub_1C2D72850()
{
  result = qword_1EC061168;
  if (!qword_1EC061168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061168);
  }

  return result;
}

uint64_t sub_1C2D728A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2D728EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t BlurButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E298);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061180);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - v8;
  v10 = *v1;
  sub_1C2E741C4();
  sub_1C2E75744();
  sub_1C2E73274();
  v11 = &v6[*(v4 + 44)];
  v12 = v21[1];
  *v11 = v21[0];
  *(v11 + 1) = v12;
  *(v11 + 2) = v21[2];
  if (v10 == 1)
  {
    v13 = _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
  }

  else
  {
    v13 = sub_1C2E74F84();
  }

  v14 = v13;
  sub_1C2C71D5C(v6, v9, &qword_1EC05E298);
  *&v9[*(v7 + 36)] = v14;
  v15 = sub_1C2E75744();
  v17 = v16;
  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061188) + 36);
  sub_1C2D72B94(v10, v18);
  v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061190) + 36));
  *v19 = v15;
  v19[1] = v17;
  return sub_1C2C71D5C(v9, a1, &qword_1EC061180);
}

uint64_t sub_1C2D72B94@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0611B0);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v26 - v3;
  v28 = sub_1C2E75364();
  v4 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0611B8);
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = sub_1C2E74F44();
  v14 = (v4 + 8);
  v32 = v13;
  LOWORD(v33) = 256;
  if (a1)
  {
    v26 = v13;
    sub_1C2E75314();
    _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
    sub_1C2E75354();

    v15 = *v14;
    v16 = v6;
    v17 = v28;
    (*v14)(v16, v28);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0611C0);
    v19 = sub_1C2C94F38(&qword_1EC0611C8, &qword_1EC0611C0);
    v20 = sub_1C2CB2AB4();
    sub_1C2E749D4();
    v15(v9, v17);

    v21 = v27;
    (*(v27 + 16))(v30, v12, v10);
    swift_storeEnumTagMultiPayload();
    v32 = v18;
    v33 = MEMORY[0x1E69817E8];
    v34 = v19;
  }

  else
  {
    sub_1C2E75314();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0611C0);
    v23 = sub_1C2C94F38(&qword_1EC0611C8, &qword_1EC0611C0);
    v20 = sub_1C2CB2AB4();
    v24 = MEMORY[0x1E69817E8];
    sub_1C2E749D4();
    (*v14)(v9, v28);

    v21 = v27;
    (*(v27 + 16))(v30, v12, v10);
    swift_storeEnumTagMultiPayload();
    v32 = v22;
    v33 = v24;
    v34 = v23;
  }

  v35 = v20;
  swift_getOpaqueTypeConformance2();
  sub_1C2E73F44();
  return (*(v21 + 8))(v12, v10);
}

uint64_t getEnumTagSinglePayload for BlurButtonStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1C2D730D4()
{
  result = qword_1EC061198;
  if (!qword_1EC061198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061188);
    sub_1C2D7318C();
    sub_1C2C94F38(&qword_1EC0611A8, &qword_1EC061190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061198);
  }

  return result;
}

unint64_t sub_1C2D7318C()
{
  result = qword_1EC0611A0;
  if (!qword_1EC0611A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061180);
    sub_1C2C764F0();
    sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0611A0);
  }

  return result;
}

unint64_t sub_1C2D73244()
{
  result = qword_1EC05CB20;
  if (!qword_1EC05CB20)
  {
    sub_1C2E741B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CB20);
  }

  return result;
}

uint64_t WaitOnHoldControlsView.init(viewModel:apertureEnabled:leadingView:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t)@<X2>, void *a4@<X8>)
{
  v8 = *(type metadata accessor for WaitOnHoldControlsView() + 40);
  *a4 = a1;
  *(a4 + v8) = a2;

  a3(v9);
}

uint64_t WaitOnHoldControlsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v45 = sub_1C2E730D4();
  v3 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v38 = a1;
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0611D0);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0611D8);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  v6 = sub_1C2E752E4();
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70);
  v9 = sub_1C2E73654();
  v47 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v36 - v10;
  v43 = sub_1C2E73654();
  v49 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v39 = &v36 - v11;
  v46 = sub_1C2E73654();
  v50 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v40 = &v36 - v12;
  v13 = sub_1C2E73654();
  v51 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v36 - v16;
  sub_1C2E73DD4();
  v17 = *(a1 + 24);
  v54 = v5;
  v55 = v17;
  v56 = v53;
  sub_1C2E752D4();
  swift_getKeyPath();
  v18 = v44;
  v19 = v45;
  (*(v3 + 104))(v44, *MEMORY[0x1E697DBA8], v45);
  WitnessTable = swift_getWitnessTable();
  sub_1C2E749A4();

  (*(v3 + 8))(v18, v19);
  (*(v41 + 8))(v8, v6);
  sub_1C2E75744();
  v21 = sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70);
  v63 = WitnessTable;
  v64 = v21;
  v35 = swift_getWitnessTable();
  v22 = v39;
  v23 = v37;
  sub_1C2E74D24();
  (*(v47 + 8))(v23, v9);
  sub_1C2E74444();
  v61 = v35;
  v62 = MEMORY[0x1E697EBF8];
  v24 = v43;
  v25 = swift_getWitnessTable();
  v26 = v40;
  sub_1C2E74D84();
  (*(v49 + 8))(v22, v24);
  sub_1C2E74464();
  v27 = MEMORY[0x1E697E5D8];
  v59 = v25;
  v60 = MEMORY[0x1E697E5D8];
  v28 = v46;
  v29 = swift_getWitnessTable();
  v30 = v42;
  sub_1C2E74D84();
  (*(v50 + 8))(v26, v28);
  v57 = v29;
  v58 = v27;
  v31 = swift_getWitnessTable();
  v32 = v48;
  sub_1C2C6EE48(v30, v13, v31);
  v33 = *(v51 + 8);
  v33(v30, v13);
  sub_1C2C6EE48(v32, v13, v31);
  return (v33)(v32, v13);
}

uint64_t sub_1C2D73B30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061270);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0611D8);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v41 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v41 - v14;
  v15 = a2;
  v41 = a2;
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0611D0);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  v16 = sub_1C2E75214();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  v49 = v15;
  v50 = a3;
  v51 = a1;
  sub_1C2E73C24();
  sub_1C2E75204();
  WitnessTable = swift_getWitnessTable();
  sub_1C2C6EE48(v19, v16, WitnessTable);
  v43 = *(v17 + 8);
  v43(v19, v16);
  *v9 = sub_1C2E73DC4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061278);
  sub_1C2D74884(a1, v41, a3, &v9[*(v23 + 44)]);
  v24 = sub_1C2E74444();
  type metadata accessor for WaitOnHoldControlsView();
  sub_1C2E73034();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v44;
  sub_1C2C71D5C(v9, v44, &qword_1EC061270);
  v34 = v46;
  v35 = v33 + *(v46 + 36);
  *v35 = v24;
  *(v35 + 8) = v26;
  *(v35 + 16) = v28;
  *(v35 + 24) = v30;
  *(v35 + 32) = v32;
  *(v35 + 40) = 0;
  v36 = v45;
  sub_1C2C71D5C(v33, v45, &qword_1EC0611D8);
  (*(v17 + 16))(v19, v22, v16);
  v55[0] = v19;
  v37 = v47;
  sub_1C2C736A4(v36, v47, &qword_1EC0611D8);
  v55[1] = v37;
  v54[0] = v16;
  v54[1] = v34;
  v52 = WitnessTable;
  v53 = sub_1C2D756E0();
  sub_1C2C6EC40(v55, 2uLL, v54);
  sub_1C2C73644(v36, &qword_1EC0611D8);
  v38 = v22;
  v39 = v43;
  v43(v38, v16);
  sub_1C2C73644(v37, &qword_1EC0611D8);
  return v39(v19, v16);
}

uint64_t sub_1C2D73FF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v15 = a1;
  v18 = a3;
  v4 = sub_1C2E73654();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v16 = &v15 - v9;
  type metadata accessor for WaitOnHoldControlsView();
  sub_1C2E75744();
  sub_1C2E74D14();
  v28[2] = a2;
  v28[3] = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  sub_1C2C6EE48(v7, v4, WitnessTable);
  v17 = *(v5 + 8);
  v17(v7, v4);
  v11 = sub_1C2E73DD4();
  LOBYTE(v22) = 1;
  sub_1C2D74338(v15, v29);
  *&v33[23] = v29[1];
  *&v33[7] = v29[0];
  *&v33[39] = v29[2];
  *&v33[55] = v30;
  *&v32[17] = *&v33[16];
  *&v32[33] = *&v33[32];
  *&v32[49] = *&v33[48];
  v31 = v11;
  v32[0] = v22;
  *&v32[64] = *(&v30 + 1);
  *&v32[1] = *v33;
  v12 = v16;
  (*(v5 + 16))(v7, v16, v4);
  v24 = *&v32[16];
  v25 = *&v32[32];
  v26 = *&v32[48];
  v27 = *&v32[64];
  v28[0] = v7;
  v22 = v31;
  v23 = *v32;
  v28[1] = &v22;
  sub_1C2C736A4(&v31, v33, &qword_1EC0611D0);
  v21[0] = v4;
  v21[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0611D0);
  v19 = WitnessTable;
  v20 = sub_1C2C94F38(&qword_1EC0612A8, &qword_1EC0611D0);
  sub_1C2C6EC40(v28, 2uLL, v21);
  sub_1C2C73644(&v31, &qword_1EC0611D0);
  v13 = v17;
  v17(v12, v4);
  *&v33[32] = v24;
  *&v33[48] = v25;
  *&v33[64] = v26;
  v34 = v27;
  *v33 = v22;
  *&v33[16] = v23;
  sub_1C2C73644(v33, &qword_1EC0611D0);
  return v13(v7, v4);
}

uint64_t sub_1C2D74338@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = &v57 - v4;
  v5 = sub_1C2E71664();
  v64 = *(v5 - 8);
  v6 = v64;
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - v9;
  v11 = sub_1C2E73D04();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1C2E73CF4();
  sub_1C2E73CE4();
  v65 = *a1;
  v59 = *(v6 + 16);
  v60 = v6 + 16;
  v59(v10, v65 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel_title, v5);
  sub_1C2E73CA4();
  v12 = *(v6 + 8);
  v61 = v10;
  v62 = v12;
  v63 = v6 + 8;
  v12(v10, v5);
  sub_1C2E73CE4();
  sub_1C2E73D24();
  v13 = sub_1C2E74884();
  v15 = v14;
  v17 = v16;
  sub_1C2E74634();
  v18 = sub_1C2E747F4();
  v20 = v19;
  v22 = v21;

  v23 = v13;
  v24 = v66;
  sub_1C2C72340(v23, v15, v17 & 1);

  sub_1C2E74554();
  v25 = sub_1C2E74764();
  v27 = v26;
  v67 = v28;
  v30 = v29;
  v31 = v20;
  v32 = v64;
  sub_1C2C72340(v18, v31, v22 & 1);

  sub_1C2C736A4(v65 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel_subtitle, v24, &qword_1EC05E088);
  if ((*(v32 + 48))(v24, 1, v5) == 1)
  {
    sub_1C2C73644(v24, &qword_1EC05E088);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v37 = *(v32 + 32);
    v38 = v68;
    v58 = v5;
    v37(v68, v24, v5);
    v59(v61, v38, v5);
    v39 = sub_1C2E74894();
    v41 = v40;
    LOBYTE(v38) = v42;
    sub_1C2E74634();
    v43 = sub_1C2E747F4();
    v64 = v27;
    v65 = v25;
    v44 = v43;
    v46 = v45;
    v66 = v30;
    v48 = v47;

    sub_1C2C72340(v39, v41, v38 & 1);

    v70 = sub_1C2E740F4();
    v33 = sub_1C2E74794();
    v34 = v49;
    LOBYTE(v39) = v50;
    v36 = v51;
    v52 = v48 & 1;
    v30 = v66;
    v53 = v44;
    v27 = v64;
    sub_1C2C72340(v53, v46, v52);
    v25 = v65;

    v62(v68, v58);
    v35 = v39 & 1;
    sub_1C2C72330(v33, v34, v39 & 1);
  }

  v54 = v67 & 1;
  sub_1C2C72330(v25, v27, v67 & 1);

  sub_1C2C7DD04(v33, v34, v35, v36);
  sub_1C2C7F6D4(v33, v34, v35, v36);
  v71 = v54;
  v55 = v69;
  *v69 = v25;
  v55[1] = v27;
  *(v55 + 16) = v54;
  v55[3] = v30;
  v55[4] = v33;
  v55[5] = v34;
  v55[6] = v35;
  v55[7] = v36;
  sub_1C2C7F6D4(v33, v34, v35, v36);
  sub_1C2C72340(v25, v27, v54);
}

uint64_t sub_1C2D74884@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v100 = a4;
  v101 = a3;
  v99 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v91 - v6;
  v8 = sub_1C2E71664();
  v96 = *(v8 - 8);
  v97 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v98 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C2E75424();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060460);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v102 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v91 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v91 - v21;
  sub_1C2E75414();
  v23 = sub_1C2E74464();
  LODWORD(v99) = *(a1 + *(type metadata accessor for WaitOnHoldControlsView() + 40));
  sub_1C2E73034();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v10;
  v33 = v96;
  (*(v11 + 32))(v19, v13, v32);
  v34 = &v19[*(v15 + 44)];
  *v34 = v23;
  *(v34 + 1) = v25;
  *(v34 + 2) = v27;
  *(v34 + 3) = v29;
  *(v34 + 4) = v31;
  v34[40] = 0;
  v101 = v22;
  sub_1C2C71D5C(v19, v22, &qword_1EC060460);
  v35 = *a1;
  swift_getKeyPath();
  v113[0] = v35;
  sub_1C2D75798();
  sub_1C2E71A64();

  v36 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__statusMessage;
  swift_beginAccess();
  v37 = v35 + v36;
  v38 = v97;
  sub_1C2C736A4(v37, v7, &qword_1EC05E088);
  v39 = *(v33 + 48);
  if (v39(v7, 1, v38) == 1)
  {
    sub_1C2E71654();
    if (v39(v7, 1, v38) != 1)
    {
      sub_1C2C73644(v7, &qword_1EC05E088);
    }
  }

  else
  {
    (*(v33 + 32))(v98, v7, v38);
  }

  v40 = sub_1C2E74894();
  v42 = v41;
  v44 = v43;
  LODWORD(v113[0]) = sub_1C2E740F4();
  v45 = sub_1C2E74794();
  v47 = v46;
  v49 = v48;
  sub_1C2C72340(v40, v42, v44 & 1);

  sub_1C2E74634();
  v50 = sub_1C2E747F4();
  v95 = v51;
  v96 = v50;
  v53 = v52;
  v98 = v54;

  sub_1C2C72340(v45, v47, v49 & 1);

  KeyPath = swift_getKeyPath();
  v97 = KeyPath;
  v56 = swift_getKeyPath();
  v94 = v56;
  v57 = v53 & 1;
  v143 = v53 & 1;
  v141 = 0;
  v58 = sub_1C2E74464();
  v59 = v58;
  v93 = v58;
  sub_1C2E73034();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v144 = 0;
  v92 = sub_1C2E74474();
  sub_1C2E73034();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v147 = 0;
  v76 = v102;
  sub_1C2C736A4(v101, v102, &qword_1EC060460);
  v77 = v76;
  v78 = v100;
  sub_1C2C736A4(v77, v100, &qword_1EC060460);
  v79 = v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061298) + 48);
  v81 = v95;
  v80 = v96;
  *&v103 = v96;
  *(&v103 + 1) = v95;
  LOBYTE(v104) = v53 & 1;
  *(&v104 + 1) = *v142;
  DWORD1(v104) = *&v142[3];
  v82 = v98;
  *(&v104 + 1) = v98;
  *&v105 = KeyPath;
  *(&v105 + 1) = 2;
  LOBYTE(v106) = 0;
  *(&v106 + 1) = *v140;
  DWORD1(v106) = *&v140[3];
  *(&v106 + 1) = v56;
  LOBYTE(v107) = 0;
  DWORD1(v107) = *&v146[3];
  *(&v107 + 1) = *v146;
  BYTE8(v107) = v59;
  HIDWORD(v107) = *&v145[3];
  *(&v107 + 9) = *v145;
  *&v108 = v61;
  *(&v108 + 1) = v63;
  *&v109 = v65;
  *(&v109 + 1) = v67;
  LOBYTE(v110) = 0;
  *(&v110 + 1) = v149[0];
  DWORD1(v110) = *(v149 + 3);
  LOBYTE(v78) = v92;
  BYTE8(v110) = v92;
  *(&v110 + 9) = *v148;
  HIDWORD(v110) = *&v148[3];
  *&v111 = v69;
  *(&v111 + 1) = v71;
  *v112 = v73;
  *&v112[8] = v75;
  v112[16] = 0;
  *&v112[17] = 256;
  v83 = v108;
  *(v79 + 64) = v107;
  *(v79 + 80) = v83;
  v84 = v104;
  *v79 = v103;
  *(v79 + 16) = v84;
  v85 = v106;
  *(v79 + 32) = v105;
  *(v79 + 48) = v85;
  v86 = v109;
  v87 = v110;
  v88 = v111;
  v89 = *v112;
  *(v79 + 159) = *&v112[15];
  *(v79 + 128) = v88;
  *(v79 + 144) = v89;
  *(v79 + 96) = v86;
  *(v79 + 112) = v87;
  sub_1C2C736A4(&v103, v113, &qword_1EC0612A0);
  sub_1C2C73644(v101, &qword_1EC060460);
  v113[0] = v80;
  v113[1] = v81;
  v114 = v57;
  *v115 = *v142;
  *&v115[3] = *&v142[3];
  v116 = v82;
  v117 = v97;
  v118 = 2;
  v119 = 0;
  *v120 = *v140;
  *&v120[3] = *&v140[3];
  v121 = v94;
  v122 = 0;
  *&v123[3] = *&v146[3];
  *v123 = *v146;
  v124 = v93;
  *&v125[3] = *&v145[3];
  *v125 = *v145;
  v126 = v61;
  v127 = v63;
  v128 = v65;
  v129 = v67;
  v130 = 0;
  *v131 = v149[0];
  *&v131[3] = *(v149 + 3);
  v132 = v78;
  *v133 = *v148;
  *&v133[3] = *&v148[3];
  v134 = v69;
  v135 = v71;
  v136 = v73;
  v137 = v75;
  v138 = 0;
  v139 = 256;
  sub_1C2C73644(v113, &qword_1EC0612A0);
  return sub_1C2C73644(v102, &qword_1EC060460);
}

uint64_t WaitOnHoldLeadingAccessoryView.sizeThatFits(_:uiView:context:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a2 | a4))
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C2D750C0()
{
  result = qword_1EC0611E0[0];
  if (!qword_1EC0611E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC0611E0);
  }

  return result;
}

uint64_t sub_1C2D75114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D75680();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C2D75178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D75680();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C2D751DC()
{
  sub_1C2D75680();
  sub_1C2E73EE4();
  __break(1u);
}

uint64_t sub_1C2D75204()
{
  result = type metadata accessor for WaitOnHoldViewModel(319);
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C2D75294(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 8) & ~v6) + 1;
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

void sub_1C2D7541C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 8) & ~v9) + 1;
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
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 8) & ~v9) != -1)
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
LABEL_47:
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
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
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
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

unint64_t sub_1C2D75680()
{
  result = qword_1EC061268;
  if (!qword_1EC061268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061268);
  }

  return result;
}

unint64_t sub_1C2D756E0()
{
  result = qword_1EC061280;
  if (!qword_1EC061280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0611D8);
    sub_1C2C94F38(&qword_1EC061288, &qword_1EC061270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061280);
  }

  return result;
}

unint64_t sub_1C2D75798()
{
  result = qword_1EC061290;
  if (!qword_1EC061290)
  {
    type metadata accessor for WaitOnHoldViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061290);
  }

  return result;
}

char *sub_1C2D757F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C2E75C14();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19[-v11];
  sub_1C2E75BB4();
  (*(v7 + 16))(v9, v12, v6);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  sub_1C2E718F4();
  v15 = sub_1C2E75C84();
  v17 = v16;
  (*(v7 + 8))(v12, v6);
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061310));

  return sub_1C2D75A38(v15, v17, a1, a2, v2);
}

char *sub_1C2D75A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[qword_1EC05F918] = 0;
  *&v5[qword_1EC05F920] = 0;
  *&v5[qword_1EC05F928] = 0;
  *&v5[qword_1EC05F930] = MEMORY[0x1E69E7CC0];
  v5[qword_1EC05F938] = 2;
  v12 = &v5[qword_1EC05F940];
  *v12 = a1;
  v12[1] = a2;
  v13 = &v5[qword_1EC05F948];
  *v13 = a3;
  v13[1] = a4;
  *&v5[qword_1EC05F950] = a5;
  v17.receiver = v5;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  v15 = *&v14[qword_1EC05F950] + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_lockStateDelegate;
  swift_beginAccess();
  *(v15 + 8) = &protocol witness table for LockStateViewController<A>;
  swift_unknownObjectWeakAssign();
  return v14;
}

void *CallTranslationWorker.__allocating_init(service:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[2] = 0;
  swift_unknownObjectWeakInit();
  v2[9] = 0;
  v2[10] = 0;
  sub_1C2C6E3A4(a1, (v2 + 3));
  sub_1C2D75C1C();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

void *CallTranslationWorker.init(service:)(uint64_t a1)
{
  v1[2] = 0;
  swift_unknownObjectWeakInit();
  v1[9] = 0;
  v1[10] = 0;
  sub_1C2C6E3A4(a1, (v1 + 3));
  sub_1C2D75C1C();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1C2D75C1C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0626D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061318);
  v10 = *(v9 - 8);
  v19 = v9;
  v20 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  v21 = sub_1C2E724B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC10);
  sub_1C2C94F38(&qword_1EC05BAC8, &qword_1EC05DC10);
  sub_1C2E72F04();

  sub_1C2C9DC60();
  v13 = sub_1C2E76084();
  v21 = v13;
  v14 = sub_1C2E76054();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_1C2C94F38(&qword_1EC05DC18, &qword_1EC05DC00);
  sub_1C2D77318(&qword_1EC05B250, sub_1C2C9DC60);
  sub_1C2E72ED4();
  sub_1C2D77238(v4);

  (*(v6 + 8))(v8, v5);
  swift_allocObject();
  swift_weakInit();
  sub_1C2C94F38(&qword_1EC061320, &qword_1EC061318);
  v15 = v19;
  v16 = sub_1C2E72F14();

  (*(v20 + 8))(v12, v15);
  *(v1 + 80) = v16;
}

void __swiftcall CallTranslationWorker.createTranscriptsViewController()(UIViewController *__return_ptr retstr)
{
  v2 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1C2E75C14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19[-v8 - 8];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
    if ((sub_1C2E72534() & 1) == 0)
    {
      return;
    }
  }

  else
  {
    sub_1C2C6E3A4(v1 + 24, v19);
    v12 = objc_allocWithZone(type metadata accessor for CallTranslationViewController());
    v11 = CallTranslationViewController.init(service:)(v19);
    swift_unknownObjectWeakAssign();
    __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
    if ((sub_1C2E72534() & 1) == 0)
    {
      return;
    }
  }

  sub_1C2E75BB4();
  (*(v4 + 16))(v6, v9, v3);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  sub_1C2E718F4();
  v15 = sub_1C2E75C84();
  v17 = v16;
  (*(v4 + 8))(v9, v3);
  sub_1C2D757F0(v15, v17);
}

uint64_t CallTranslationWorker.hasTranslationActivity.getter()
{
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  if (sub_1C2E724C4())
  {
    return 1;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  return sub_1C2E72514() & 1;
}

uint64_t CallTranslationWorker.hasTranslationActivityPublisher.getter()
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0612C8);
  v1 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0612D0);
  v5 = *(v4 - 8);
  v18 = v4;
  v19 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0612D8);
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  v21 = sub_1C2E724B4();
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  v20 = sub_1C2E72504();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC10);
  sub_1C2C94F38(&qword_1EC05BAC8, &qword_1EC05DC10);
  sub_1C2E72EB4();

  sub_1C2C94F38(&unk_1EC05BB28, &qword_1EC0612C8);
  v11 = v16;
  sub_1C2E72EC4();
  (*(v1 + 8))(v3, v11);
  sub_1C2C94F38(&qword_1EC0612E0, &qword_1EC0612D0);
  v12 = v18;
  sub_1C2E72F04();
  (*(v19 + 8))(v7, v12);
  sub_1C2C94F38(&qword_1EC0612E8, &qword_1EC0612D8);
  v13 = v17;
  v14 = sub_1C2E72E94();
  (*(v8 + 8))(v10, v13);
  return v14;
}

void CallTranslationWorker.startTranslation(local:remote:)()
{
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  if (sub_1C2E72514())
  {
    if (qword_1EC05CFA8 != -1)
    {
      swift_once();
    }

    v1 = sub_1C2E72B44();
    __swift_project_value_buffer(v1, qword_1EC0612B0);
    oslog = sub_1C2E72B24();
    v2 = sub_1C2E75FC4();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1C2C6B000, oslog, v2, "Translatoin already started remotely.", v3, 2u);
      MEMORY[0x1C6927DF0](v3, -1, -1);
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
    sub_1C2E724E4();
  }
}

Swift::Void __swiftcall CallTranslationWorker.stopTranslationActivity()()
{
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  v1 = sub_1C2E72514();
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  if (v1)
  {
    sub_1C2E725A4();
  }

  else
  {
    sub_1C2E724D4();
  }
}

Swift::Void __swiftcall CallTranslationWorker.subscribeTranscriptsUpdates()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0626D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0612F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = v0[9];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v0[9] = v12;
    v13 = v0[6];
    v19 = v7;
    __swift_project_boxed_opaque_existential_1(v0 + 3, v13);
    v21 = sub_1C2E72564();
    sub_1C2C9DC60();
    v14 = sub_1C2E76084();
    v20 = v14;
    v15 = sub_1C2E76054();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0612F8);
    sub_1C2C94F38(&qword_1EC061300, &qword_1EC0612F8);
    sub_1C2D77318(&qword_1EC05B250, sub_1C2C9DC60);
    sub_1C2E72ED4();
    sub_1C2D77238(v4);

    swift_allocObject();
    swift_weakInit();
    sub_1C2C94F38(&qword_1EC061308, &qword_1EC0612F0);
    v16 = v19;
    v17 = sub_1C2E72F14();

    (*(v6 + 8))(v9, v16);
    v1[2] = v17;
  }
}

uint64_t sub_1C2D76CE4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
    }

    v3 = Strong;
    if (sub_1C2E72634())
    {
      v4 = 0;
      v5 = 0;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
      v4 = sub_1C2E72544();
      v5 = v6;
    }

    if (sub_1C2E72634())
    {
      v7 = sub_1C2E72614();
    }

    else
    {
      v7 = sub_1C2E72624();
    }

    v9 = v7;
    v10 = v8;
    if (sub_1C2E72634())
    {
      v11 = sub_1C2E72624();
      v13 = v12;
      if (v10)
      {
LABEL_12:
        v26 = v4;
        v25 = v11;
        v24 = v13;
        v27 = sub_1C2E76774();
        v28 = v14;
        MEMORY[0x1C6926710](95, 0xE100000000000000);
        sub_1C2E72604();
        v15 = sub_1C2E76774();
        MEMORY[0x1C6926710](v15);

        MEMORY[0x1C6926710](95, 0xE100000000000000);
        v16 = sub_1C2E72634();
        v17 = (v16 & 1) == 0;
        if (v16)
        {
          v18 = 1702195828;
        }

        else
        {
          v18 = 0x65736C6166;
        }

        if (v17)
        {
          v19 = 0xE500000000000000;
        }

        else
        {
          v19 = 0xE400000000000000;
        }

        MEMORY[0x1C6926710](v18, v19);

        v20 = sub_1C2E72634();
        type metadata accessor for CallTranscripts();
        v21 = swift_allocObject();
        *(v21 + 40) = 0;
        *(v21 + 48) = 0;
        *(v21 + 56) = 1;
        *(v21 + 64) = 0;
        *(v21 + 72) = 0;
        *(v21 + 80) = 1;
        *(v21 + 88) = 0u;
        *(v21 + 104) = 0u;
        sub_1C2E71A94();
        *(v21 + 16) = v27;
        *(v21 + 24) = v28;
        *(v21 + 32) = (v20 & 1) == 0;
        sub_1C2E111F8(v9, v10);
        sub_1C2E115BC(v25, v24);
        if (*(v21 + 112))
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          sub_1C2D77318(&qword_1EC062660, type metadata accessor for CallTranscripts);
          sub_1C2E71A54();
        }

        else
        {
          *(v21 + 104) = 0;
          *(v21 + 112) = 0;
        }

        sub_1C2E10C88(v26, v5);
        CallTranslationViewController.update(with:)(v21);
      }
    }

    else
    {
      v11 = sub_1C2E72614();
      v13 = v23;
      if (v10)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1C2D77050(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1((result + 24), *(result + 48));
    if (sub_1C2E72514())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        sub_1C2C9F44C();
        CallTranscriptsDataSource.removeAll()();
      }
    }

    if (v1)
    {
      CallTranslationWorker.subscribeTranscriptsUpdates()();
    }

    else
    {
      *(v3 + 16) = 0;
    }
  }

  return result;
}

uint64_t CallTranslationWorker.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  MEMORY[0x1C6927ED0](v0 + 64);

  return v0;
}

uint64_t CallTranslationWorker.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  MEMORY[0x1C6927ED0](v0 + 64);

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1C2D771B4()
{
  v0 = sub_1C2E72B44();
  __swift_allocate_value_buffer(v0, qword_1EC0612B0);
  __swift_project_value_buffer(v0, qword_1EC0612B0);
  return sub_1C2E72B34();
}

uint64_t sub_1C2D77238(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0626D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2D77318(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CircleOverlayConfig.imageName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

_BYTE *CircleOverlayConfig.init(corner:scale:imageName:color:imageColor:imageScale:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v9 = *a2;
  *a9 = *result;
  *(a9 + 1) = v9;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  if (a8)
  {
    a7 = 1.0;
  }

  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  return result;
}

uint64_t CircleOverlayConfig.CircleCorner.description.getter()
{
  v1 = 0x7466654C706F74;
  v2 = 0x654C6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x69526D6F74746F62;
  }

  if (*v0)
  {
    v1 = 0x7468676952706F74;
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

uint64_t CircleOverlayConfig.CircleCorner.hashValue.getter()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

uint64_t CircleOverlayConfig.CircleScale.description.getter()
{
  v1 = 0x72616C75676572;
  if (*v0 != 1)
  {
    v1 = 0x656772616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

CommunicationsUI::CircleOverlayConfig::CircleScale_optional __swiftcall CircleOverlayConfig.CircleScale.init(rawValue:)(Swift::Double rawValue)
{
  if (rawValue == 0.85)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 0.6)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (rawValue == 0.3)
  {
    v3 = 0;
  }

  *v1 = v3;
  return result;
}

double sub_1C2D7765C@<D0>(double *a1@<X8>)
{
  result = dbl_1C2E867C8[*v1];
  *a1 = result;
  return result;
}

double sub_1C2D77684()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v2;
  v6 = v1;
  v7 = v3;
  v8 = v4;
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      CGRectGetMinX(*&v5);
    }

    else
    {
      CGRectGetMaxX(*&v5);
    }

    v12.origin.x = v2;
    v12.origin.y = v1;
    v12.size.width = v3;
    v12.size.height = v4;
    CGRectGetMaxY(v12);
  }

  else
  {
    if (*v0)
    {
      CGRectGetMaxX(*&v5);
    }

    else
    {
      CGRectGetMinX(*&v5);
    }

    v13.origin.x = v2;
    v13.origin.y = v1;
    v13.size.width = v3;
    v13.size.height = v4;
    CGRectGetMinY(v13);
  }

  return CGPointMake(v9);
}

double sub_1C2D77824@<D0>(uint64_t a1@<X8>)
{
  sub_1C2E74754();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_1C2D7788C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C2E72FC4();
  return sub_1C2CF84BC;
}

uint64_t sub_1C2D77914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D79BBC(&qword_1EC0613F8, type metadata accessor for FrontCircleShape);

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C2D779A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D79BBC(&qword_1EC0613F8, type metadata accessor for FrontCircleShape);

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C2D77A3C(uint64_t a1)
{
  v2 = sub_1C2D79BBC(&qword_1EC0613F8, type metadata accessor for FrontCircleShape);

  return MEMORY[0x1EEDE4410](a1, v2);
}

double sub_1C2D77AB8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BackCircleShape(0);
  sub_1C2D77684();
  v22.origin.x = sub_1C2D77684();
  x = v22.origin.x;
  y = v22.origin.y;
  v6 = *(a2 + 64) * dbl_1C2E867C8[*(a2 + 1)];
  v22.size.width = v6;
  v22.size.height = v6;
  CGRectGetMidX(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = v6;
  v23.size.height = v6;
  CGRectGetMidY(v23);
  v16 = 0x3FF0000000000000;
  v17 = 0;
  v18 = 0;
  v19 = 0x3FF0000000000000;
  v20 = 0;
  v21 = 0;
  sub_1C2E74714();
  v7 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v7;
  v15 = *(a1 + 32);
  sub_1C2E74734();
  sub_1C2E74724();
  sub_1C2D7294C(v10);
  sub_1C2D7294C(v14);
  result = *&v11;
  v9 = v12;
  *a1 = v11;
  *(a1 + 16) = v9;
  *(a1 + 32) = v13;
  return result;
}

double sub_1C2D77C3C@<D0>(uint64_t a1@<X8>)
{
  sub_1C2E74754();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_1C2D77CB4(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C2E72FC4();
  return sub_1C2CF6D08;
}

uint64_t sub_1C2D77D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D79BBC(&qword_1EC061400, type metadata accessor for BackCircleShape);

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C2D77DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D79BBC(&qword_1EC061400, type metadata accessor for BackCircleShape);

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C2D77E64(uint64_t a1)
{
  v2 = sub_1C2D79BBC(&qword_1EC061400, type metadata accessor for BackCircleShape);

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t sub_1C2D77EE0@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v21 = type metadata accessor for BackCircleShape(0);
  MEMORY[0x1EEE9AC00](v21);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C2E75054();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(type metadata accessor for BackView(0) + 20);

  sub_1C2E75044();
  (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
  v9 = sub_1C2E750C4();

  (*(v5 + 8))(v7, v4);
  v10 = *(v8 + 1);
  v11 = *(v8 + 64);
  sub_1C2E75744();
  sub_1C2E73274();
  v30 = 1;
  *&v29[6] = v31;
  *&v29[22] = v32;
  *&v29[38] = v33;
  v34.origin.x = sub_1C2D77684();
  x = v34.origin.x;
  y = v34.origin.y;
  v14 = v11 * dbl_1C2E867C8[v10];
  v34.size.width = v14;
  v34.size.height = v14;
  MidX = CGRectGetMidX(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = v14;
  v35.size.height = v14;
  MidY = CGRectGetMidY(v35);
  v17 = *(v8 + 32);
  KeyPath = swift_getKeyPath();
  v23 = v9;
  LOWORD(v24[0]) = 1;
  *(v24 + 2) = *v29;
  *(&v24[1] + 2) = *&v29[16];
  *(&v24[2] + 2) = *&v29[32];
  *&v24[3] = *&v29[46];
  *(&v24[3] + 1) = MidX;
  *&v25 = MidY;
  *(&v25 + 1) = KeyPath;
  v26 = v17;
  type metadata accessor for CircleOverlay(0);
  sub_1C2D79CDC(v20, v3, type metadata accessor for CircleOverlay);
  sub_1C2D79CDC(v8, &v3[*(v21 + 20)], type metadata accessor for CircleOverlay);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0613C8);
  sub_1C2D79940();
  sub_1C2D79BBC(&qword_1EC061400, type metadata accessor for BackCircleShape);
  sub_1C2E749D4();
  sub_1C2D79C04(v3, type metadata accessor for BackCircleShape);
  v27[4] = v24[3];
  v27[5] = v25;
  v28 = v26;
  v27[0] = v23;
  v27[1] = v24[0];
  v27[2] = v24[1];
  v27[3] = v24[2];
  return sub_1C2D79B34(v27);
}

uint64_t sub_1C2D782A8@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = type metadata accessor for FrontCircleShape(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C2E75054();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1C2E75044();
  (*(v6 + 104))(v8, *MEMORY[0x1E6981630], v5);
  v9 = sub_1C2E750C4();

  (*(v6 + 8))(v8, v5);
  v10 = *(v1 + 1);
  v11 = *(v1 + 64);
  sub_1C2E75744();
  sub_1C2E73274();
  v28 = 1;
  *&v27[6] = v29;
  *&v27[22] = v30;
  *&v27[38] = v31;
  v32.origin.x = sub_1C2D77684();
  x = v32.origin.x;
  y = v32.origin.y;
  v14 = v11 * dbl_1C2E867C8[v10];
  v32.size.width = v14;
  v32.size.height = v14;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = v14;
  v33.size.height = v14;
  MidY = CGRectGetMidY(v33);
  v17 = *(v1 + 32);
  KeyPath = swift_getKeyPath();
  v21 = v9;
  LOWORD(v22[0]) = 1;
  *(v22 + 2) = *v27;
  *(&v22[1] + 2) = *&v27[16];
  *(&v22[2] + 2) = *&v27[32];
  *&v22[3] = *&v27[46];
  *(&v22[3] + 1) = MidX;
  *&v23 = MidY;
  *(&v23 + 1) = KeyPath;
  v24 = v17;
  type metadata accessor for CircleOverlay(0);
  sub_1C2D79CDC(v1, v4, type metadata accessor for CircleOverlay);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0613C8);
  sub_1C2D79940();
  sub_1C2D79BBC(&qword_1EC0613F8, type metadata accessor for FrontCircleShape);
  sub_1C2E749D4();
  sub_1C2D79C04(v4, type metadata accessor for FrontCircleShape);
  v25[4] = v22[3];
  v25[5] = v23;
  v26 = v24;
  v25[0] = v21;
  v25[1] = v22[0];
  v25[2] = v22[1];
  v25[3] = v22[2];
  return sub_1C2D79B34(v25);
}

uint64_t GlassCutoutCirclesOverlayView.init(frontCircleConfig:backCircleConfig:size:)@<X0>(uint64_t result@<X0>, __int16 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = *(result + 8);
  v6 = *(result + 32);
  v7 = *(result + 40);
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  *a3 = *result;
  *(a3 + 8) = v5;
  *(a3 + 16) = *(result + 16);
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  *(a3 + 48) = v8;
  *(a3 + 56) = v9;
  *(a3 + 64) = *(a2 + 1);
  *(a3 + 80) = v10;
  *(a3 + 88) = v11;
  *(a3 + 96) = a4;
  *(a3 + 104) = a5;
  return result;
}

double GlassCutoutCirclesOverlayView.body.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1C2E756E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061330);
  sub_1C2C94F38(&qword_1EC061338, &qword_1EC061328);
  sub_1C2C94F38(&qword_1EC061340, &qword_1EC061330);
  sub_1C2E756F4();
  sub_1C2E75744();
  sub_1C2E73274();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061348) + 36));
  *v2 = v4;
  v2[1] = v5;
  result = *&v6;
  v2[2] = v6;
  return result;
}

uint64_t sub_1C2D78844()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061330);
  sub_1C2C94F38(&qword_1EC061340, &qword_1EC061330);
  return sub_1C2E74074();
}

uint64_t sub_1C2D788F8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = sub_1C2E75744();
  a3[1] = v6;
  v7 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061408) + 44));
  v8 = swift_allocObject();
  v9 = a1[5];
  v8[5] = a1[4];
  v8[6] = v9;
  v8[7] = a1[6];
  v10 = a1[1];
  v8[1] = *a1;
  v8[2] = v10;
  v11 = a1[3];
  v8[3] = a1[2];
  v8[4] = v11;
  KeyPath = swift_getKeyPath();
  v13 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061410) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061418) + 28);
  v15 = *MEMORY[0x1E697E7D0];
  v16 = sub_1C2E73614();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = KeyPath;
  *v7 = a2;
  v7[1] = v8;
  return sub_1C2D79C6C(a1, &v18);
}

unint64_t sub_1C2D78A78()
{
  result = qword_1EC061350;
  if (!qword_1EC061350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061350);
  }

  return result;
}

unint64_t sub_1C2D78B14()
{
  result = qword_1EC061368;
  if (!qword_1EC061368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061368);
  }

  return result;
}

uint64_t sub_1C2D78BC8@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a1;
  v63 = a3;
  v4 = type metadata accessor for FrontView(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = (&v58 - v7);
  v66 = sub_1C2E75364();
  v67 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C2E73F64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BackView(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v20 = a2[1];
  v72 = *a2;
  v73 = v20;
  v74 = a2[2];
  sub_1C2E74144();
  sub_1C2E732E4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v64 = *(v11 + 8);
  v64(v13, v10);
  v29 = v73;
  *v19 = v72;
  *(v19 + 1) = v29;
  *(v19 + 2) = v74;
  *(v19 + 6) = v22;
  *(v19 + 7) = v24;
  *(v19 + 8) = v26;
  *(v19 + 9) = v28;
  sub_1C2D79CA4(&v72, &v69);
  sub_1C2E75314();
  v60 = *(&v73 + 1);
  type metadata accessor for CircleOverlay(0);
  sub_1C2E75354();
  v30 = *(v67 + 8);
  v67 += 8;
  v30(v9, v66);
  v31 = a2[4];
  v69 = a2[3];
  v70 = v31;
  v71 = a2[5];
  sub_1C2E74144();
  sub_1C2E732E4();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v64(v13, v10);
  v40 = &v19[*(v15 + 28)];
  v41 = v70;
  *v40 = v69;
  *(v40 + 1) = v41;
  *(v40 + 2) = v71;
  *(v40 + 6) = v33;
  *(v40 + 7) = v35;
  *(v40 + 8) = v37;
  *(v40 + 9) = v39;
  sub_1C2D79CA4(&v69, v68);
  sub_1C2E75314();
  sub_1C2E75354();
  v42 = v66;
  v30(v9, v66);
  sub_1C2E74144();
  sub_1C2E732E4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v64(v13, v10);
  v51 = v73;
  v52 = v59;
  *v59 = v72;
  *(v52 + 16) = v51;
  *(v52 + 32) = v74;
  *(v52 + 48) = v44;
  *(v52 + 56) = v46;
  *(v52 + 64) = v48;
  *(v52 + 72) = v50;
  sub_1C2D79CA4(&v72, v68);
  sub_1C2E75314();
  sub_1C2E75354();
  v30(v9, v42);
  v53 = v61;
  sub_1C2D79CDC(v19, v61, type metadata accessor for BackView);
  v54 = v62;
  sub_1C2D79CDC(v52, v62, type metadata accessor for FrontView);
  v55 = v63;
  sub_1C2D79CDC(v53, v63, type metadata accessor for BackView);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061420);
  sub_1C2D79CDC(v54, v55 + *(v56 + 48), type metadata accessor for FrontView);
  sub_1C2D79C04(v52, type metadata accessor for FrontView);
  sub_1C2D79C04(v19, type metadata accessor for BackView);
  sub_1C2D79C04(v54, type metadata accessor for FrontView);
  return sub_1C2D79C04(v53, type metadata accessor for BackView);
}

uint64_t sub_1C2D7915C(uint64_t a1)
{
  v2 = sub_1C2E73614();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C2E73994();
}

double sub_1C2D79224@<D0>(uint64_t a1@<X8>)
{
  sub_1C2E756E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061330);
  sub_1C2C94F38(&qword_1EC061338, &qword_1EC061328);
  sub_1C2C94F38(&qword_1EC061340, &qword_1EC061330);
  sub_1C2E756F4();
  sub_1C2E75744();
  sub_1C2E73274();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061348) + 36));
  *v2 = v4;
  v2[1] = v5;
  result = *&v6;
  v2[2] = v6;
  return result;
}

uint64_t sub_1C2D793D4(uint64_t a1, int a2)
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

uint64_t sub_1C2D7941C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t _s19ButtonConfigurationV6SymbolOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s19ButtonConfigurationV6SymbolOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C2D795D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1C2D79620(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C2D7968C()
{
  result = qword_1EC061388;
  if (!qword_1EC061388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061390);
    sub_1C2C94F38(&qword_1EC061338, &qword_1EC061328);
    sub_1C2C94F38(&qword_1EC061340, &qword_1EC061330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC061388);
  }

  return result;
}

void sub_1C2D7980C()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_1C2E75364();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C2D79940()
{
  result = qword_1EC0613D0;
  if (!qword_1EC0613D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0613C8);
    sub_1C2D799F8();
    sub_1C2C94F38(&qword_1EC05CB00, &qword_1EC05DD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0613D0);
  }

  return result;
}

unint64_t sub_1C2D799F8()
{
  result = qword_1EC0613D8;
  if (!qword_1EC0613D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0613E0);
    sub_1C2D79AB0(&qword_1EC0613E8, &qword_1EC0613F0, &unk_1C2E86500, sub_1C2C76BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0613D8);
  }

  return result;
}

uint64_t sub_1C2D79AB0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C2D79B34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0613C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2D79BBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2D79C04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C2D79CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircleOverlay(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircleOverlay(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C2D79E80()
{
  result = type metadata accessor for CircleOverlay(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C2D79F14()
{
  result = type metadata accessor for CircleOverlay(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE12_glassEffect_2inQrAA6_GlassV_qd__tAA5ShapeRd__lFQOyAA15ModifiedContentVyAJyAJyAJyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA09_PositionN0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_014CommunicationsB0011FrontCircleH0VQo_HOTm(uint64_t a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0613C8);
  a2(255);
  sub_1C2D79940();
  sub_1C2D79BBC(a3, a4);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2D7A21C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2E73BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2D0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ControlButtonStyle();
  sub_1C2C736A4(v1 + *(v10 + 24), v9, &qword_1EC05F2D0);
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

uint64_t sub_1C2D7A424()
{
  v1 = sub_1C2E75404();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v25 - v5;
  v7 = sub_1C2E737C4();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  v13 = *v0;
  swift_getKeyPath();
  v25[1] = v13;
  sub_1C2D7C204(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v14 = (v13 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__clipShape);
  swift_beginAccess();
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    if (!v15)
    {
      sub_1C2CB2AB4();
      return sub_1C2E754A4();
    }

    v16 = *MEMORY[0x1E697F468];
    v17 = sub_1C2E73D44();
    (*(*(v17 - 8) + 104))(v6, v16, v17);
    v18 = MEMORY[0x1E6981998];
    sub_1C2D7C19C(v6, v3, MEMORY[0x1E6981998]);
    sub_1C2D7C204(&qword_1EC061500, MEMORY[0x1E6981998]);
    v19 = sub_1C2E754A4();
    v20 = v6;
  }

  else
  {
    v21 = *(v7 + 20);
    v22 = *MEMORY[0x1E697F468];
    v23 = sub_1C2E73D44();
    (*(*(v23 - 8) + 104))(&v12[v21], v22, v23);
    *v12 = v15;
    *(v12 + 1) = v15;
    v18 = MEMORY[0x1E697EAF0];
    sub_1C2D7C19C(v12, v9, MEMORY[0x1E697EAF0]);
    sub_1C2D7C204(&qword_1EC05B620, MEMORY[0x1E697EAF0]);
    v19 = sub_1C2E754A4();
    v20 = v12;
  }

  sub_1C2D7C24C(v20, v18);
  return v19;
}

uint64_t ControlButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v95 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061488);
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v72 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061490);
  MEMORY[0x1EEE9AC00](v93);
  v73 = &v72 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061498);
  MEMORY[0x1EEE9AC00](v81);
  v78 = &v72 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v72 = &v72 - v9;
  v77 = sub_1C2E73DB4();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614A0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v72 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614A8);
  MEMORY[0x1EEE9AC00](v74);
  v17 = &v72 - v16;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614B0);
  MEMORY[0x1EEE9AC00](v75);
  v80 = &v72 - v18;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614B8);
  MEMORY[0x1EEE9AC00](v82);
  v96 = &v72 - v19;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614C0);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v72 - v20;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614C8);
  MEMORY[0x1EEE9AC00](v90);
  v87 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v89 = &v72 - v23;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614D0);
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v72 - v24;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614D8);
  MEMORY[0x1EEE9AC00](v85);
  v91 = &v72 - v25;
  v98 = a1;
  sub_1C2E741C4();
  v26 = *v3;
  swift_getKeyPath();
  v27 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration___observationRegistrar;
  *&v105 = v26;
  v28 = sub_1C2D7C204(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v29 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__elementColor;
  swift_beginAccess();
  *&v15[*(v13 + 44)] = *(v26 + v29);

  v97 = v3;
  sub_1C2D7A21C(v11);
  swift_getKeyPath();
  *&v105 = v26;
  v99 = v27;
  v79 = v28;
  sub_1C2E71A64();

  v30 = *(v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration);
  if (*(v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration + 16))
  {
    v31 = *(v76 + 8);

    v31(v11, v77);
  }

  else
  {

    v30(v11);
    v32 = sub_1C2E74534();
    v33 = v72;
    (*(*(v32 - 8) + 56))(v72, 1, 1, v32);
    v34 = sub_1C2E745C4();
    sub_1C2D7BD04();
    sub_1C2C73644(v33, &qword_1EC05D810);
    (*(v76 + 8))(v11, v77);
    v30 = v34;
  }

  KeyPath = swift_getKeyPath();
  sub_1C2C71D5C(v15, v17, &qword_1EC0614A0);
  v36 = &v17[*(v74 + 36)];
  *v36 = KeyPath;
  v36[1] = v30;
  sub_1C2E75744();
  sub_1C2E73274();
  v37 = v80;
  sub_1C2C71D5C(v17, v80, &qword_1EC0614A8);
  v38 = (v37 + *(v75 + 36));
  v39 = v106;
  v40 = v107;
  *v38 = v105;
  v38[1] = v39;
  v38[2] = v40;
  v77 = sub_1C2D7A424();
  v41 = sub_1C2E741D4();
  swift_getKeyPath();
  v104 = v26;
  sub_1C2E71A64();

  swift_beginAccess();
  v42 = (v26 + 32);
  v43 = (v26 + 40);
  v44 = (v41 & 1) == 0;
  if ((v41 & 1) == 0)
  {
    v43 = (v26 + 24);
  }

  v45 = *v43;
  if (!v44)
  {
    v42 = (v26 + 48);
  }

  v46 = *v42;
  sub_1C2CC290C(*v43, *v42);
  v47 = sub_1C2E741D4();
  v48 = v78;
  v49 = &v78[*(v81 + 44)];
  sub_1C2E74FF4();
  v49[*(type metadata accessor for BackgroundStyleConfiguration.GlassConfiguration() + 20)] = 4;
  *v48 = v77;
  *(v48 + 8) = v45;
  *(v48 + 16) = v46;
  *(v48 + 17) = v47 & 1;
  v50 = v96;
  sub_1C2C71D5C(v37, v96, &qword_1EC0614B0);
  sub_1C2C71D5C(v48, v50 + *(v82 + 36), &qword_1EC061498);
  swift_getKeyPath();
  v103 = v26;
  sub_1C2E71A64();

  v51 = v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityIdentifier;
  swift_beginAccess();
  if (*(v51 + 8))
  {
    sub_1C2D7B968();

    v52 = v73;
    sub_1C2E74C54();
    sub_1C2C736A4(v52, v94, &qword_1EC061490);
    swift_storeEnumTagMultiPayload();
    sub_1C2D7C0E8(&qword_1EC05B630, &qword_1EC061490, &unk_1C2E86828, sub_1C2D7B968);
    v53 = v84;
    v50 = v96;
    sub_1C2E73F44();
    sub_1C2C73644(v52, &qword_1EC061490);
  }

  else
  {
    sub_1C2C736A4(v50, v94, &qword_1EC0614B8);
    swift_storeEnumTagMultiPayload();
    sub_1C2D7C0E8(&qword_1EC05B630, &qword_1EC061490, &unk_1C2E86828, sub_1C2D7B968);
    sub_1C2D7B968();
    v53 = v84;
    sub_1C2E73F44();
  }

  sub_1C2C73644(v50, &qword_1EC0614B8);
  swift_getKeyPath();
  v102 = v26;
  sub_1C2E71A64();

  v54 = (v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityValue);
  swift_beginAccess();
  if (v54[1])
  {
    v55 = *v54;
    v56 = v54[1];
  }

  else
  {
    v55 = 0;
    v56 = 0xE000000000000000;
  }

  v100 = v55;
  v101 = v56;
  sub_1C2D7BC4C();
  sub_1C2C74960();

  v57 = v87;
  sub_1C2E74B54();

  sub_1C2C73644(v53, &qword_1EC0614C0);
  swift_getKeyPath();
  v100 = v26;
  sub_1C2E71A64();

  swift_beginAccess();
  v58 = v89;
  sub_1C2E73634();
  sub_1C2C73644(v57, &qword_1EC0614C8);
  v59 = sub_1C2D7A424();
  v60 = v58;
  v61 = v88;
  sub_1C2C71D5C(v60, v88, &qword_1EC0614C8);
  v62 = v61 + *(v86 + 36);
  *v62 = v59;
  *(v62 + 8) = 256;
  v63 = sub_1C2D7A424();
  v64 = v91;
  sub_1C2C71D5C(v61, v91, &qword_1EC0614D0);
  v65 = v64 + *(v85 + 36);
  *v65 = v63;
  *(v65 + 8) = 0;
  v66 = sub_1C2E757B4();
  v67 = sub_1C2E741D4();
  v68 = v64;
  v69 = v95;
  sub_1C2C71D5C(v68, v95, &qword_1EC0614D8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614E0);
  v71 = v69 + *(result + 36);
  *v71 = v66;
  *(v71 + 8) = v67 & 1;
  return result;
}

uint64_t sub_1C2D7B598@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D7C204(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 40);
  *a2 = v4;
  v6 = *(v3 + 32);
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  v7 = *(v3 + 48);
  *(a2 + 24) = v7;
  sub_1C2CC290C(v4, v6);
  return sub_1C2CC290C(v5, v7);
}

uint64_t sub_1C2D7B67C()
{
  swift_getKeyPath();
  sub_1C2D7C204(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A54();
}

uint64_t sub_1C2D7B768@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D7C204(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__elementColor;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C2D7B85C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D7C204(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v4 = (v3 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_1C2D7B928(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2D7F264(v1, v2);
}

unint64_t sub_1C2D7B968()
{
  result = qword_1EC05B668;
  if (!qword_1EC05B668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0614B8);
    sub_1C2D7BA20();
    sub_1C2C94F38(&qword_1EC05BD20, &qword_1EC061498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B668);
  }

  return result;
}

unint64_t sub_1C2D7BA20()
{
  result = qword_1EC05B6D0;
  if (!qword_1EC05B6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0614B0);
    sub_1C2D7BAAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B6D0);
  }

  return result;
}

unint64_t sub_1C2D7BAAC()
{
  result = qword_1EC05B7A0;
  if (!qword_1EC05B7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0614A8);
    sub_1C2D7BB64();
    sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B7A0);
  }

  return result;
}

unint64_t sub_1C2D7BB64()
{
  result = qword_1EC05B918;
  if (!qword_1EC05B918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0614A0);
    sub_1C2D7C204(&qword_1EC05CB20, MEMORY[0x1E697C8D0]);
    sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B918);
  }

  return result;
}

unint64_t sub_1C2D7BC4C()
{
  result = qword_1EC05B570;
  if (!qword_1EC05B570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0614C0);
    sub_1C2D7C0E8(&qword_1EC05B630, &qword_1EC061490, &unk_1C2E86828, sub_1C2D7B968);
    sub_1C2D7B968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B570);
  }

  return result;
}

uint64_t type metadata accessor for ControlButtonStyle()
{
  result = qword_1EC05C2A8;
  if (!qword_1EC05C2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C2D7BDA0()
{
  type metadata accessor for ControlButtonConfiguration(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_1C2D7BE3C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C2D7BE3C()
{
  if (!qword_1EC05CBF8)
  {
    sub_1C2E73DB4();
    v0 = sub_1C2E730F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05CBF8);
    }
  }
}

unint64_t sub_1C2D7BE94()
{
  result = qword_1EC05B670;
  if (!qword_1EC05B670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0614E0);
    sub_1C2D7BF4C();
    sub_1C2C94F38(&qword_1EC05B5F0, &qword_1EC05F5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B670);
  }

  return result;
}

unint64_t sub_1C2D7BF4C()
{
  result = qword_1EC05B6E0;
  if (!qword_1EC05B6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0614D8);
    sub_1C2D7C004();
    sub_1C2C94F38(&qword_1EC05B500, &qword_1EC0614F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B6E0);
  }

  return result;
}

unint64_t sub_1C2D7C004()
{
  result = qword_1EC05B7C8;
  if (!qword_1EC05B7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0614D0);
    sub_1C2D7C0E8(&qword_1EC05B968, &qword_1EC0614C8, &unk_1C2E86868, sub_1C2D7BC4C);
    sub_1C2C94F38(&qword_1EC05BA70, &qword_1EC0614F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B7C8);
  }

  return result;
}

uint64_t sub_1C2D7C0E8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1C2D7C204(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C2D7C19C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2D7C204(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2D7C24C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void ControlSelection.init(uniqueIdentifier:label:systemImage:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *a5;
  v8 = a5[1];
  v9 = *(a5 + 16);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  sub_1C2C9E060(0, 0, 0xFFu);
  *(a6 + 32) = v7;
  *(a6 + 40) = v8;
  *(a6 + 48) = v9;
}

uint64_t ControlButton.init(action:configuration:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for ControlButton(0);
  v11 = *(v10 + 28);
  *(a3 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2D0);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for ControlButtonConfiguration(0);
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  result = sub_1C2E754C4();
  v13 = (a3 + *(v10 + 24));
  *v13 = a4;
  v13[1] = a5;
  return result;
}

uint64_t ControlButtonConfiguration.__allocating_init(enabled:backgroundConfiguration:element:elementColor:clipShape:fontSize:accessibilityIdentifier:accessibilityValue:accessibilityTraits:menuConfiguration:)(int a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, __int128 *a14)
{
  v38 = a6;
  v39 = a7;
  v36 = a1;
  v44 = a13;
  v45 = a12;
  v42 = a11;
  v43 = a8;
  v40 = a9;
  v41 = a10;
  v37 = a14;
  v18 = type metadata accessor for ControlButtonElement(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  v22 = *(a2 + 8);
  v23 = a2[2];
  v24 = *(a2 + 24);
  v25 = *a5;
  v35 = *(a5 + 8);
  sub_1C2D8646C(a3, v20, type metadata accessor for ControlButtonElement);
  type metadata accessor for ControlButtonConfiguration(0);
  v26 = swift_allocObject();
  v27 = v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *(v27 + 48) = 0;
  *(v27 + 56) = -256;
  v28 = (v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityIdentifier);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityValue);
  *v29 = 0;
  v29[1] = 0;
  v30 = v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityTraits;
  *v30 = 0;
  *(v30 + 8) = 1;
  sub_1C2E71A94();
  *(v26 + 16) = v36;
  *(v26 + 24) = v21;
  *(v26 + 32) = v22;
  *(v26 + 40) = v23;
  *(v26 + 48) = v24;
  sub_1C2D8646C(v20, v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element, type metadata accessor for ControlButtonElement);
  *(v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__elementColor) = a4;
  v31 = v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__clipShape;
  *v31 = v25;
  *(v31 + 8) = v35;
  v32 = v26 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration;
  v33 = v39;
  *v32 = v38;
  *(v32 + 8) = v33;
  *(v32 + 16) = 0;

  sub_1C2D7E988(v37);
  sub_1C2D7F264(v43, v40);
  sub_1C2D7F638(v41, v42);
  sub_1C2D7FBDC(v45, v44 & 1);

  sub_1C2D86C58(a3, type metadata accessor for ControlButtonElement);
  sub_1C2D86C58(v20, type metadata accessor for ControlButtonElement);
  return v26;
}

uint64_t ControlButtonBackgroundConfiguration.init(style:highlightedBackgroundStyle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *(a2 + 8);
  if (v6 < 0xFE)
  {
    v7 = *a2;
  }

  else
  {
    result = sub_1C2CC290C(*result, v5);
    v7 = v4;
    LOBYTE(v6) = v5;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v7;
  *(a3 + 24) = v6;
  return result;
}

uint64_t ControlButtonConfiguration.__allocating_init(enabled:backgroundColor:highlightedBackgroundColor:element:elementColor:clipShape:fontSize:accessibilityIdentifier:menuConfiguration:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11)
{
  v37 = a7;
  v38 = a8;
  LODWORD(v43) = a1;
  v40 = a9;
  v41 = 0;
  v39 = a10;
  v36 = a11;
  v16 = type metadata accessor for ControlButtonElement(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v33[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33[-v20];
  v35 = *a6;
  v34 = *(a6 + 8);
  v45 = a4;
  sub_1C2D8646C(a4, &v33[-v20], type metadata accessor for ControlButtonElement);
  v44 = v21;
  sub_1C2D8646C(v21, v18, type metadata accessor for ControlButtonElement);
  type metadata accessor for ControlButtonConfiguration(0);
  v22 = swift_allocObject();
  v23 = v22 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 0;
  *(v23 + 56) = -256;
  v24 = (v22 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityIdentifier);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v22 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityValue);
  *v25 = 0;
  v25[1] = 0;
  v26 = v22 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityTraits;
  *v26 = 0;
  *(v26 + 8) = 1;

  sub_1C2E71A94();
  *(v22 + 16) = v43;
  v42 = a2;
  v43 = a3;
  *(v22 + 24) = a2;
  *(v22 + 32) = 1;
  *(v22 + 40) = a3;
  *(v22 + 48) = 1;
  sub_1C2D8646C(v18, v22 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element, type metadata accessor for ControlButtonElement);
  *(v22 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__elementColor) = a5;
  v27 = v22 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__clipShape;
  *v27 = v35;
  *(v27 + 8) = v34;
  v28 = v22 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration;
  v29 = v38;
  *v28 = v37;
  *(v28 + 8) = v29;
  *(v28 + 16) = 0;

  sub_1C2D7E988(v36);
  sub_1C2D7F264(v40, v39);
  swift_beginAccess();
  if (v25[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v33[-24] = 0;
    *&v33[-16] = 0;
    *&v33[-32] = v22;
    v47 = v22;
    sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
    sub_1C2E71A54();
  }

  else
  {
    *v25 = 0;
    v25[1] = 0;
  }

  swift_beginAccess();
  if (*(v26 + 8))
  {

    sub_1C2D86C58(v45, type metadata accessor for ControlButtonElement);
    sub_1C2D86C58(v18, type metadata accessor for ControlButtonElement);
    sub_1C2D86C58(v44, type metadata accessor for ControlButtonElement);
    *v26 = 0;
    *(v26 + 8) = 1;
  }

  else
  {
    v31 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v31);
    *&v33[-32] = v22;
    *&v33[-24] = 0;
    v33[-16] = 1;
    v46 = v22;
    sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
    sub_1C2E71A54();

    sub_1C2D86C58(v45, type metadata accessor for ControlButtonElement);
    sub_1C2D86C58(v18, type metadata accessor for ControlButtonElement);
    sub_1C2D86C58(v44, type metadata accessor for ControlButtonElement);
  }

  return v22;
}

uint64_t ControlSelection.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ControlSelection.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ControlSelection.label.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ControlSelection.label.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

id ControlSelection.systemImage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_1C2CF836C(v2, v3, v4);
}

void ControlSelection.systemImage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  sub_1C2C9E060(*(v1 + 32), *(v1 + 40), *(v1 + 48));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
}

uint64_t ControlSelection.hash(into:)()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_1C2E75CC4();
  sub_1C2E75CC4();
  if (v3 == 255)
  {
    return sub_1C2E76874();
  }

  sub_1C2E76874();
  if (v3)
  {
    if (v3 == 1)
    {
      sub_1C2C70B1C(v2, v1, 1u);
    }

    else
    {
      sub_1C2C70B1C(v2, v1, 2u);
      v5 = [v2 description];
      sub_1C2E75C64();

      sub_1C2C9E060(v2, v1, 2u);
    }
  }

  else
  {
    sub_1C2C70B1C(v2, v1, 0);
  }

  sub_1C2E75CC4();
}

uint64_t ControlSelection.hashValue.getter()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_1C2E76854();
  sub_1C2E75CC4();
  sub_1C2E75CC4();
  if (v3 != 255)
  {
    sub_1C2E76874();
    if (v3)
    {
      if (v3 != 1)
      {
        sub_1C2C70B1C(v2, v1, 2u);
        v5 = [v2 description];
        sub_1C2E75C64();

        sub_1C2C9E060(v2, v1, 2u);
        goto LABEL_9;
      }

      v4 = 1;
    }

    else
    {
      v4 = 0;
    }

    sub_1C2C70B1C(v2, v1, v4);
LABEL_9:
    sub_1C2E75CC4();

    return sub_1C2E76894();
  }

  sub_1C2E76874();
  return sub_1C2E76894();
}

uint64_t sub_1C2D7CF7C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_1C2E76854();
  sub_1C2E75CC4();
  sub_1C2E75CC4();
  if (v3 != 255)
  {
    sub_1C2E76874();
    if (v3)
    {
      if (v3 != 1)
      {
        sub_1C2C70B1C(v2, v1, 2u);
        v5 = [v2 description];
        sub_1C2E75C64();

        sub_1C2C9E060(v2, v1, 2u);
        goto LABEL_9;
      }

      v4 = 1;
    }

    else
    {
      v4 = 0;
    }

    sub_1C2C70B1C(v2, v1, v4);
LABEL_9:
    sub_1C2E75CC4();

    return sub_1C2E76894();
  }

  sub_1C2E76874();
  return sub_1C2E76894();
}

uint64_t ControlButtonElement.SymbolElementConfiguration.init(systemName:scale:renderingMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for ControlButtonElement.SymbolElementConfiguration(0);
  v9 = *(v8 + 20);
  v10 = sub_1C2E750B4();
  (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  v11 = *(v8 + 24);
  v12 = sub_1C2E73DF4();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a5[v11], a4, v12);
}

uint64_t static ControlButtonElement.SymbolElementConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1C2E767A4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ControlButtonElement.SymbolElementConfiguration(0);

  return sub_1C2E750A4();
}

uint64_t sub_1C2D7D200(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1C2E767A4() & 1) == 0)
  {
    return 0;
  }

  return sub_1C2E750A4();
}

uint64_t ControlButtonBackgroundConfiguration.style.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1C2CC290C(v2, v3);
}

uint64_t ControlButtonBackgroundConfiguration.style.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_1C2CC2678(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t ControlButtonBackgroundConfiguration.highlightedBackgroundStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return sub_1C2CC290C(v2, v3);
}

uint64_t ControlButtonBackgroundConfiguration.highlightedBackgroundStyle.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_1C2CC2678(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1C2D7D374@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C2D7D458()
{
  swift_getKeyPath();
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1C2D7D50C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
    sub_1C2E71A54();
  }

  return result;
}

uint64_t sub_1C2D7D630(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 16) = a2;
  return result;
}

void (*sub_1C2D7D684(uint64_t *a1))(void *a1)
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

  v4[7] = sub_1C2CF0F6C();
  return sub_1C2D7D7BC;
}

uint64_t sub_1C2D7D7C8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v8 = v1;
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  *a1 = v3;
  v5 = *(v8 + 32);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = *(v8 + 48);
  *(a1 + 24) = v6;
  sub_1C2CC290C(v3, v5);
  return sub_1C2CC290C(v4, v6);
}

uint64_t sub_1C2D7D8AC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  swift_getKeyPath();
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A54();
  sub_1C2CC2678(v1, v3);
  sub_1C2CC2678(v2, v4);
}

uint64_t sub_1C2D7D9B4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  swift_beginAccess();
  v10 = *(a1 + 24);
  v11 = *(a1 + 40);
  *(a1 + 24) = a2;
  v12 = *(a1 + 32);
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  v13 = *(a1 + 48);
  *(a1 + 48) = a5;
  sub_1C2CC290C(a2, a3);
  sub_1C2CC290C(a4, a5);
  sub_1C2CC2678(v10, v12);
  return sub_1C2CC2678(v11, v13);
}

void (*sub_1C2D7DA70(uint64_t *a1))(void *a1)
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

  v4[7] = sub_1C2CF1434();
  return sub_1C2D7DBA8;
}

uint64_t sub_1C2D7DC14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element;
  swift_beginAccess();
  return sub_1C2D8646C(v3 + v4, a2, type metadata accessor for ControlButtonElement);
}

uint64_t sub_1C2D7DCF0(uint64_t a1)
{
  v2 = type metadata accessor for ControlButtonElement(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2D8646C(a1, v4, type metadata accessor for ControlButtonElement);
  return sub_1C2D7DE6C(v4);
}

uint64_t sub_1C2D7DD90@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v3 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element;
  swift_beginAccess();
  return sub_1C2D8646C(v5 + v3, a1, type metadata accessor for ControlButtonElement);
}

uint64_t sub_1C2D7DE6C(uint64_t a1)
{
  v3 = type metadata accessor for ControlButtonElement(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element;
  swift_beginAccess();
  sub_1C2D8646C(v1 + v6, v5, type metadata accessor for ControlButtonElement);
  v7 = _s16CommunicationsUI20ControlButtonElementO2eeoiySbAC_ACtFZ_0(v5, a1);
  sub_1C2D86C58(v5, type metadata accessor for ControlButtonElement);
  if (v7)
  {
    sub_1C2D8646C(a1, v5, type metadata accessor for ControlButtonElement);
    swift_beginAccess();
    sub_1C2D85EFC(v5, v1 + v6);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
    sub_1C2E71A54();
  }

  return sub_1C2D86C58(a1, type metadata accessor for ControlButtonElement);
}

uint64_t sub_1C2D7E07C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlButtonElement(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2D8646C(a2, v6, type metadata accessor for ControlButtonElement);
  v7 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element;
  swift_beginAccess();
  sub_1C2D85EFC(v6, a1 + v7);
  return swift_endAccess();
}

void (*sub_1C2D7E14C(uint64_t *a1))(void *a1)
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

  v4[7] = sub_1C2D7DBB4();
  return sub_1C2D7E284;
}

uint64_t sub_1C2D7E2F0()
{
  swift_getKeyPath();
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
}

uint64_t sub_1C2D7E3B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__elementColor;
  swift_beginAccess();

  v4 = sub_1C2E74ED4();

  if (v4)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2D7E500(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__elementColor;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void (*sub_1C2D7E570(uint64_t *a1))(void *a1)
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

  v4[7] = sub_1C2D7E290();
  return sub_1C2D7E6A8;
}

uint64_t sub_1C2D7E714@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v11[0] = v3;
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v4 = (v3 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *&v12[10] = *(v4 + 42);
  v11[1] = v6;
  *v12 = v7;
  v11[0] = v5;
  v8 = v4[1];
  *a2 = *v4;
  a2[1] = v8;
  a2[2] = v4[2];
  *(a2 + 42) = *(v4 + 42);
  return sub_1C2C736A4(v11, v10, &qword_1EC061508);
}

uint64_t sub_1C2D7E820(__int128 *a1)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 10) = *(a1 + 42);
  sub_1C2C736A4(v5, &v4, &qword_1EC061508);
  return sub_1C2D7E988(a1);
}

uint64_t sub_1C2D7E888@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v9[0] = v1;
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v3 = (v1 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v10[0] = v3[2];
  v5 = v10[0];
  *(v10 + 10) = *(v3 + 42);
  v6 = *(v10 + 10);
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  *(a1 + 42) = v6;
  return sub_1C2C736A4(v9, v8, &qword_1EC061508);
}

uint64_t sub_1C2D7E988(__int128 *a1)
{
  v2 = a1[1];
  v12 = *a1;
  v13 = v2;
  v14[0] = a1[2];
  *(v14 + 10) = *(a1 + 42);
  v3 = (v1 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v15[0] = *v3;
  v15[1] = v4;
  v16[0] = v3[2];
  *(v16 + 10) = *(v3 + 42);
  sub_1C2C736A4(v15, v10, &qword_1EC061508);
  v5 = sub_1C2D85F7C(v15, &v12);
  sub_1C2C73644(v15, &qword_1EC061508);
  if (v5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v10[0] = v1;
    sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
    sub_1C2E71A54();
    sub_1C2C73644(&v12, &qword_1EC061508);
  }

  else
  {
    v8 = v3[1];
    v10[0] = *v3;
    v10[1] = v8;
    v11[0] = v3[2];
    *(v11 + 10) = *(v3 + 42);
    v9 = v13;
    *v3 = v12;
    v3[1] = v9;
    v3[2] = v14[0];
    *(v3 + 42) = *(v14 + 10);
    return sub_1C2C73644(v10, &qword_1EC061508);
  }
}

void sub_1C2D7EB98(uint64_t a1, _OWORD *a2)
{
  v3 = a1 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v12 = *(v3 + 48);
  v10 = a2[1];
  *v3 = *a2;
  *(v3 + 16) = v10;
  *(v3 + 32) = a2[2];
  v11 = *(v3 + 56);
  *(v3 + 42) = *(a2 + 42);
  sub_1C2C736A4(a2, v13, &qword_1EC061508);
  sub_1C2D86378(v4, v5, v6, v7, v8, v9, v12, v11);
}

void (*sub_1C2D7EC78(uint64_t *a1))(void *a1)
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

  v4[7] = sub_1C2D7E6B4();
  return sub_1C2D7EDB0;
}

uint64_t sub_1C2D7EE30(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_1C2D7EF40(&v3);
}

uint64_t sub_1C2D7EE70@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v3 = v1 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__clipShape;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_1C2D7EF40(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__clipShape;
  result = swift_beginAccess();
  v6 = *v4;
  if (*(v4 + 8) == 1)
  {
    if (v6 == 0.0)
    {
      if (v2 == 0.0)
      {
        v10 = v3;
      }

      else
      {
        v10 = 0;
      }

      if ((v10 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v2 == 0.0)
      {
        v7 = 0;
      }

      else
      {
        v7 = v3;
      }

      if ((v7 & 1) == 0)
      {
LABEL_7:
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1C2D86C10(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
        sub_1C2E71A54();
      }
    }
  }

  else
  {
    if (v6 == v2)
    {
      v9 = v3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_7;
    }
  }

  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}