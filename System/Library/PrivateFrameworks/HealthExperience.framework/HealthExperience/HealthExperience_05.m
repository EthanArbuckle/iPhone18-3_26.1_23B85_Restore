uint64_t sub_1D0F8A004(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 64));

  return v2;
}

unint64_t sub_1D0F8A03C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1D0FF5518();
  }

  __break(1u);
  return result;
}

uint64_t sub_1D0F8A088(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D0FF54F8();
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
    v5 = MEMORY[0x1D3880AE0](15, a1 >> 16);
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

uint64_t _s16HealthExperience26FeatureStatusConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D0FF48F8();
  v77 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69A3D50];
  sub_1D0F87A70(0, &qword_1EE06F808, MEMORY[0x1E69A3D50]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v78 = &v71 - v8;
  sub_1D0F8BAFC(0, &qword_1EC5FCCE0, &qword_1EE06F808, v6);
  v76 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v71 - v10;
  v12 = type metadata accessor for ImageRepresentation();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F87A70(0, &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v71 - v17;
  sub_1D0F8BAFC(0, &qword_1EC5FCCE8, &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v71 - v21;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D0FF6278() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D0FF6278() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D0FF6278() & 1) == 0 || *(a1 + 48) != *(a2 + 48) || *(a1 + 49) != *(a2 + 49))
  {
    goto LABEL_19;
  }

  v72 = v11;
  v74 = v4;
  v73 = type metadata accessor for FeatureStatusConfiguration();
  v23 = *(v73 + 36);
  v24 = *(v20 + 48);
  sub_1D0F8BC04(a1 + v23, v22, &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
  sub_1D0F8BC04(a2 + v23, &v22[v24], &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
  v25 = *(v13 + 48);
  if (v25(v22, 1, v12) == 1)
  {
    if (v25(&v22[v24], 1, v12) == 1)
    {
      sub_1D0F8BC70(v22, &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
      goto LABEL_22;
    }

LABEL_17:
    v26 = &qword_1EC5FCCE8;
    v27 = &qword_1EE06F2D0;
    v28 = type metadata accessor for ImageRepresentation;
    v29 = v22;
LABEL_18:
    sub_1D0F8BB60(v29, v26, v27, v28);
    goto LABEL_19;
  }

  sub_1D0F8BC04(v22, v18, &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
  if (v25(&v22[v24], 1, v12) == 1)
  {
    sub_1D0F8B144(v18, type metadata accessor for ImageRepresentation);
    goto LABEL_17;
  }

  sub_1D0F8AED0(&v22[v24], v15, type metadata accessor for ImageRepresentation);
  v32 = static ImageRepresentation.== infix(_:_:)(v18, v15);
  sub_1D0F8B144(v15, type metadata accessor for ImageRepresentation);
  sub_1D0F8B144(v18, type metadata accessor for ImageRepresentation);
  sub_1D0F8BC70(v22, &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
  if ((v32 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  v33 = v73;
  v34 = *(v73 + 40);
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = v37[1];
  if (v36)
  {
    v39 = v74;
    v40 = v78;
    if (!v38 || (*v35 != *v37 || v36 != v38) && (sub_1D0FF6278() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v39 = v74;
    v40 = v78;
    if (v38)
    {
      goto LABEL_19;
    }
  }

  v41 = v33[11];
  v42 = *(a1 + v41);
  v43 = *(a2 + v41);
  if (v42)
  {
    if (!v43 || (sub_1D0F9655C(v42, v43) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v43)
  {
    goto LABEL_19;
  }

  v44 = v33[12];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = v47[1];
  if (v46)
  {
    if (!v48 || (*v45 != *v47 || v46 != v48) && (sub_1D0FF6278() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v48)
  {
    goto LABEL_19;
  }

  v49 = v33[13];
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a2 + v49);
  v53 = v52[1];
  if (v51)
  {
    if (!v53 || (*v50 != *v52 || v51 != v53) && (sub_1D0FF6278() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v53)
  {
    goto LABEL_19;
  }

  v54 = v33[14];
  v55 = *(a1 + v54);
  v56 = *(a2 + v54);
  if (v55 == 2)
  {
    if (v56 != 2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v30 = 0;
    if (v56 == 2 || ((v56 ^ v55) & 1) != 0)
    {
      return v30 & 1;
    }
  }

  v57 = v33[15];
  v58 = *(v76 + 48);
  v59 = MEMORY[0x1E69A3D50];
  v60 = v72;
  sub_1D0F8BC04(a1 + v57, v72, &qword_1EE06F808, MEMORY[0x1E69A3D50]);
  sub_1D0F8BC04(a2 + v57, v60 + v58, &qword_1EE06F808, v59);
  v61 = v77;
  v62 = *(v77 + 48);
  if (v62(v60, 1, v39) != 1)
  {
    sub_1D0F8BC04(v60, v40, &qword_1EE06F808, MEMORY[0x1E69A3D50]);
    if (v62(v60 + v58, 1, v39) != 1)
    {
      v63 = v60 + v58;
      v64 = v75;
      (*(v61 + 32))(v75, v63, v39);
      sub_1D0F8BBBC(&qword_1EC5FCCF0, MEMORY[0x1E69A3D50]);
      v65 = sub_1D0FF53D8();
      v66 = *(v61 + 8);
      v66(v64, v39);
      v66(v40, v39);
      sub_1D0F8BC70(v60, &qword_1EE06F808, MEMORY[0x1E69A3D50]);
      if (v65)
      {
        goto LABEL_60;
      }

LABEL_19:
      v30 = 0;
      return v30 & 1;
    }

    (*(v61 + 8))(v40, v39);
    goto LABEL_58;
  }

  if (v62(v60 + v58, 1, v39) != 1)
  {
LABEL_58:
    v26 = &qword_1EC5FCCE0;
    v27 = &qword_1EE06F808;
    v28 = MEMORY[0x1E69A3D50];
    v29 = v60;
    goto LABEL_18;
  }

  sub_1D0F8BC70(v60, &qword_1EE06F808, MEMORY[0x1E69A3D50]);
LABEL_60:
  v67 = v33[16];
  v68 = *(a1 + v67);
  v69 = *(a1 + v67 + 8);
  v70 = (a2 + v67);
  if (v68 == *v70 && v69 == v70[1])
  {
    v30 = 1;
  }

  else
  {
    v30 = sub_1D0FF6278();
  }

  return v30 & 1;
}

uint64_t sub_1D0F8A9CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D0F87A70(0, &qword_1EE070DA8, MEMORY[0x1E6968FB0]);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v34 - v14;
  sub_1D0F87A70(0, &qword_1EE06F860, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v34 - v17;
  if (a2)
  {
    if (a5)
    {
      v35 = a1;
      v36 = a2;
      v34[0] = a4;
      v34[1] = a5;
      v19 = sub_1D0FF43B8();
      (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
      sub_1D0F1A194();

      v20 = sub_1D0FF5C98();
      v22 = v21;
      v24 = v23;
      sub_1D0F8BC70(v18, &qword_1EE06F860, MEMORY[0x1E6969770]);
      if ((v24 & 1) == 0)
      {
        v35 = 91;
        v36 = 0xE100000000000000;
        MEMORY[0x1D3880AC0](a4, a5);
        MEMORY[0x1D3880AC0](10333, 0xE200000000000000);
        sub_1D0F8BC04(a3, v15, &qword_1EE070DA8, MEMORY[0x1E6968FB0]);
        v25 = sub_1D0FF4238();
        v26 = *(v25 - 8);
        if ((*(v26 + 48))(v15, 1, v25) == 1)
        {
          sub_1D0F8BC70(v15, &qword_1EE070DA8, MEMORY[0x1E6968FB0]);
          v27 = 0x80000001D1004A50;
          v28 = 0xD000000000000024;
        }

        else
        {
          v31 = sub_1D0FF41A8();
          v27 = v32;
          (*(v26 + 8))(v15, v25);
          v28 = v31;
        }

        MEMORY[0x1D3880AC0](v28, v27);

        MEMORY[0x1D3880AC0](41, 0xE100000000000000);
        a1 = sub_1D0F87B94(v20, v22, v35, v36, a1, a2);
      }
    }

    else
    {
    }
  }

  else
  {
    sub_1D0F8BC04(a3, v13, &qword_1EE070DA8, MEMORY[0x1E6968FB0]);
    v29 = sub_1D0FF4238();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v13, 1, v29) == 1)
    {
      sub_1D0F8BC70(v13, &qword_1EE070DA8, MEMORY[0x1E6968FB0]);
      return 0;
    }

    else
    {
      a1 = sub_1D0FF41A8();
      (*(v30 + 8))(v13, v29);
    }
  }

  return a1;
}

unint64_t sub_1D0F8AE28()
{
  result = qword_1EE070D38;
  if (!qword_1EE070D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070D38);
  }

  return result;
}

unint64_t sub_1D0F8AE7C()
{
  result = qword_1EE070D60;
  if (!qword_1EE070D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070D60);
  }

  return result;
}

uint64_t sub_1D0F8AED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D0F8AF38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D0F8AE28();
    v7 = a3(a1, &type metadata for FeatureStatusConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D0F8AF9C()
{
  result = qword_1EC5FCCB8;
  if (!qword_1EC5FCCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCCB8);
  }

  return result;
}

uint64_t sub_1D0F8AFF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D0F8B420(255, &qword_1EE070E18, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D0F8B074(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D0F87A70(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D0F8B0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureStatusConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0F8B144(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D0F8B214()
{
  sub_1D0F87A70(319, &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
  if (v0 <= 0x3F)
  {
    sub_1D0F8B420(319, &qword_1EE070E20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D0F8B3A4();
      if (v2 <= 0x3F)
      {
        sub_1D0F8B420(319, &qword_1EE06E458, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1D0F87A70(319, &qword_1EE06F808, MEMORY[0x1E69A3D50]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D0F8B3A4()
{
  if (!qword_1EE06E468)
  {
    sub_1D0F8B420(255, &qword_1EE070E18, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E468);
    }
  }
}

void sub_1D0F8B420(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for FeatureStatusConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureStatusConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D0F8B5C4()
{
  result = qword_1EC5FCCD8;
  if (!qword_1EC5FCCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCCD8);
  }

  return result;
}

unint64_t sub_1D0F8B61C()
{
  result = qword_1EE070D28;
  if (!qword_1EE070D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070D28);
  }

  return result;
}

unint64_t sub_1D0F8B674()
{
  result = qword_1EE070D30;
  if (!qword_1EE070D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070D30);
  }

  return result;
}

uint64_t sub_1D0F8B6C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x80000001D1003300 == a2;
  if (v4 || (sub_1D0FF6278() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E656C746974 && a2 == 0xE900000000000065 || (sub_1D0FF6278() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1004990 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D10049B0 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D10049D0 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061 || (sub_1D0FF6278() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEE00656C74695479 || (sub_1D0FF6278() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D10049F0 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1004A10 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x614D7265746F6F66 && a2 == 0xEE006E776F646B72 || (sub_1D0FF6278() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1004A30 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x527972746E756F63 && a2 == 0xED000064726F6365 || (sub_1D0FF6278() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6564496573756572 && a2 == 0xEF7265696669746ELL)
  {

    return 12;
  }

  else
  {
    v6 = sub_1D0FF6278();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

void sub_1D0F8BAFC(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D0F87A70(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D0F8BB60(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D0F8BAFC(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D0F8BBBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D0F8BC04(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D0F87A70(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D0F8BC70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D0F87A70(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D0F8BCCC()
{
  result = qword_1EE06E4B0;
  if (!qword_1EE06E4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06E4B0);
  }

  return result;
}

uint64_t static HealthKitType.sampleType.getter(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 dataTypeWithCode_];
  if (v5)
  {
    v10 = v5;
    v6 = objc_opt_self();
    v5 = v10;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6BE20](v5, v6, v7, v8, v9);
}

uint64_t assertNotNil<A>(_:fallingBackTo:withMessage:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4)
{
  v7 = sub_1D0FF5C38();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v8 + 16))(&v13 - v9, a1, v7);
  v11 = *(a4 - 8);
  if ((*(v11 + 48))(v10, 1, a4) != 1)
  {
    return (*(v11 + 32))(a3, v10, a4);
  }

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 16))(a3, a2, a4);
}

uint64_t sub_1D0F8BF84(void *a1)
{
  v1 = [a1 code];
  if (v1 > 0x155)
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    return *(&off_1E83D93D8 + v1);
  }
}

uint64_t String.nonEmptyOrNil.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  return a1;
}

uint64_t HKSummarySharingEntry.contactIdentifier.getter()
{
  v1 = [v0 CNContactIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D0FF5428();

  return v3;
}

uint64_t HKSummarySharingEntry.emailOrPhoneNumber.getter()
{
  v1 = [v0 primaryContactIdentifier];
  v2 = sub_1D0FF5428();

  return v2;
}

uint64_t sub_1D0F8C0FC()
{
  v1 = [*v0 CNContactIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D0FF5428();

  return v3;
}

uint64_t sub_1D0F8C164()
{
  v1 = [*v0 primaryContactIdentifier];
  v2 = sub_1D0FF5428();

  return v2;
}

uint64_t HKSummarySharingEntryStore.fetchIncomingAcceptedEntryProfileInformation(for:)(void *a1)
{
  sub_1D0F8D218();
  v3 = *(v2 - 8);
  v20 = v2;
  v21 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SharingEntryProfileInformation;
  sub_1D0F8D304(0, &qword_1EC5FCD18, type metadata accessor for SharingEntryProfileInformation);
  v7 = *(v6 - 8);
  v23 = v6;
  v24 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = a1;
  v12 = HKSummarySharingEntryStore.fetchFirstEntry(matching:)(sub_1D0F8D4FC, v10);

  v25 = v12;
  *(swift_allocObject() + 16) = v11;
  v13 = MEMORY[0x1E69E6720];
  sub_1D0F8D6DC(0, &qword_1EC5FCD00, &qword_1EC5FCD08, MEMORY[0x1E69E6720], sub_1D0F8D758);
  sub_1D0F1ACD4(0, &unk_1EE06E328);
  sub_1D0F8D7C8(&qword_1EC5FCD10, &qword_1EC5FCD00, &qword_1EC5FCD08, v13);
  v14 = v11;
  sub_1D0FF5108();

  sub_1D0F8D58C(&qword_1EC5FCD30, sub_1D0F8D218);
  v15 = v20;
  v16 = sub_1D0FF5098();

  (*(v21 + 8))(v5, v15);
  v25 = v16;
  sub_1D0F8D6DC(0, &qword_1EC5FCD20, &unk_1EE06E328, 0x1E696C4E8, sub_1D0F1ACD4);
  type metadata accessor for SharingEntryProfileInformation();
  sub_1D0F8D3AC();
  sub_1D0FF50C8();

  sub_1D0F8DEA0(&qword_1EC5FCD38, &qword_1EC5FCD18, v22);
  v17 = v23;
  v18 = sub_1D0FF5098();
  (*(v24 + 8))(v9, v17);
  return v18;
}

uint64_t HKSummarySharingEntryStore.fetchEntries(matching:)(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  sub_1D0F8D610();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F8D82C();
  v20 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D0FF5BC8();
  v11 = MEMORY[0x1E69E62F8];
  sub_1D0F8D6DC(0, &qword_1EE06E640, &qword_1EE06E460, MEMORY[0x1E69E62F8], sub_1D0F8D758);
  sub_1D0F8D7C8(&qword_1EE06E648, &qword_1EE06E640, &qword_1EE06E460, v11);
  sub_1D0FF50F8();

  v12 = swift_allocObject();
  v13 = v18;
  v14 = v19;
  *(v12 + 16) = v18;
  *(v12 + 24) = v14;
  sub_1D0F1C500(v13);
  sub_1D0F8D758(0, &qword_1EE06E460, v11);
  sub_1D0F8D58C(&unk_1EE06E698, sub_1D0F8D610);
  sub_1D0FF50C8();

  (*(v4 + 8))(v6, v3);
  sub_1D0F8D58C(&unk_1EE06E6C8, sub_1D0F8D82C);
  v15 = v20;
  v16 = sub_1D0FF5098();
  (*(v8 + 8))(v10, v15);
  return v16;
}

uint64_t sub_1D0F8C890@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(id)@<X1>, uint64_t *a3@<X2>, unint64_t *a4@<X8>)
{
  v4 = a4;
  v5 = *a1;
  if (a2)
  {
    v17 = MEMORY[0x1E69E7CC0];
    if (v5 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D0FF5D18())
    {
      sub_1D0F1C500(a2);

      if (!i)
      {
        break;
      }

      v9 = 0;
      v10 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v4;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1D3881410](v9, v5);
        }

        else
        {
          if (v9 >= *(v10 + 16))
          {
            goto LABEL_22;
          }

          v11 = *(v5 + 8 * v9 + 32);
        }

        v12 = v11;
        v13 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v4 = a3;
        if (a2(v11))
        {
          sub_1D0FF5E88();
          sub_1D0FF5EC8();
          v10 = v5 & 0xFFFFFFFFFFFFFF8;
          sub_1D0FF5ED8();
          v4 = &v17;
          sub_1D0FF5E98();
        }

        else
        {
        }

        ++v9;
        if (v13 == i)
        {
          v14 = v17;
          v4 = v16;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v14 = MEMORY[0x1E69E7CC0];
LABEL_20:
    sub_1D0F2625C(a2);
    result = sub_1D0F2625C(a2);
    *v4 = v14;
  }

  else
  {
    *a4 = v5;
  }

  return result;
}

uint64_t HKSummarySharingEntryStore.fetchFirstEntry(matching:)(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  sub_1D0F8D610();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F8D82C();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F8D8FC();
  v11 = *(v10 - 8);
  v29 = v10;
  v30 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1D0FF5BC8();
  v14 = MEMORY[0x1E69E62F8];
  sub_1D0F8D6DC(0, &qword_1EE06E640, &qword_1EE06E460, MEMORY[0x1E69E62F8], sub_1D0F8D758);
  v24 = v15;
  sub_1D0F8D7C8(&qword_1EE06E648, &qword_1EE06E640, &qword_1EE06E460, v14);
  sub_1D0FF50F8();

  v16 = swift_allocObject();
  sub_1D0F8D758(0, &qword_1EE06E460, v14);
  sub_1D0F8D58C(&unk_1EE06E698, sub_1D0F8D610);
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_1D0FF50C8();

  (*(v4 + 8))(v6, v3);
  sub_1D0F8D58C(&unk_1EE06E6C8, sub_1D0F8D82C);
  v17 = v26;
  v18 = sub_1D0FF5098();
  (*(v25 + 8))(v9, v17);
  v31 = v18;
  v19 = swift_allocObject();
  v20 = v28;
  *(v19 + 16) = v27;
  *(v19 + 24) = v20;
  sub_1D0F8D758(0, &qword_1EC5FCD08, MEMORY[0x1E69E6720]);

  sub_1D0FF50C8();

  sub_1D0F8D58C(&qword_1EC5FCD48, sub_1D0F8D8FC);
  v21 = v29;
  v22 = sub_1D0FF5098();
  (*(v30 + 8))(v13, v21);
  return v22;
}

void sub_1D0F8CEC8(uint64_t *a1@<X0>, uint64_t (*a2)(id)@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D0FF5D18())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D3881410](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (a2(v8))
      {
        goto LABEL_16;
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
  v9 = 0;
LABEL_16:
  *a3 = v9;
}

uint64_t HKSummarySharingEntryStore.fetchIncomingAcceptedEntry(for:)(void *a1)
{
  sub_1D0F8D218();
  v14[0] = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = a1;
  v8 = HKSummarySharingEntryStore.fetchFirstEntry(matching:)(sub_1D0F8EF7C, v6);

  v14[1] = v8;
  *(swift_allocObject() + 16) = v7;
  v9 = MEMORY[0x1E69E6720];
  sub_1D0F8D6DC(0, &qword_1EC5FCD00, &qword_1EC5FCD08, MEMORY[0x1E69E6720], sub_1D0F8D758);
  sub_1D0F1ACD4(0, &unk_1EE06E328);
  sub_1D0F8D7C8(&qword_1EC5FCD10, &qword_1EC5FCD00, &qword_1EC5FCD08, v9);
  v10 = v7;
  sub_1D0FF5108();

  sub_1D0F8D58C(&qword_1EC5FCD30, sub_1D0F8D218);
  v11 = v14[0];
  v12 = sub_1D0FF5098();

  (*(v3 + 8))(v5, v11);
  return v12;
}

void sub_1D0F8D218()
{
  if (!qword_1EC5FCCF8)
  {
    v0 = MEMORY[0x1E69E6720];
    sub_1D0F8D6DC(255, &qword_1EC5FCD00, &qword_1EC5FCD08, MEMORY[0x1E69E6720], sub_1D0F8D758);
    sub_1D0F1ACD4(255, &unk_1EE06E328);
    sub_1D0F8D7C8(&qword_1EC5FCD10, &qword_1EC5FCD00, &qword_1EC5FCD08, v0);
    v1 = sub_1D0FF4D38();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC5FCCF8);
    }
  }
}

void sub_1D0F8D304(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1D0F8D6DC(255, &qword_1EC5FCD20, &unk_1EE06E328, 0x1E696C4E8, sub_1D0F1ACD4);
    a3(255);
    sub_1D0F8D3AC();
    v5 = sub_1D0FF4D08();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D0F8D3AC()
{
  result = qword_1EC5FCD28;
  if (!qword_1EC5FCD28)
  {
    sub_1D0F8D6DC(255, &qword_1EC5FCD20, &unk_1EE06E328, 0x1E696C4E8, sub_1D0F1ACD4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCD28);
  }

  return result;
}

id sub_1D0F8D430(void *a1, void *a2)
{
  result = [a1 profileIdentifier];
  if (result)
  {
    v5 = result;
    sub_1D0F1ACD4(0, &qword_1EE071070);
    v6 = a2;
    v7 = sub_1D0FF5BF8();

    if ((v7 & 1) != 0 && [a1 status] == 1)
    {
      return ([a1 direction] == 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1D0F8D504@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    *a3 = v3;
    v4 = v3;
  }

  else
  {
    v4 = a2;
    sub_1D0F8E878();
    swift_allocError();
    *v5 = v4;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1D0F8D58C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D0F8D5D4@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;

  return SharingEntryProfileInformation.init(sharingEntry:)(v3, a2);
}

void sub_1D0F8D610()
{
  if (!qword_1EE06E690)
  {
    v0 = MEMORY[0x1E69E62F8];
    sub_1D0F8D6DC(255, &qword_1EE06E640, &unk_1EE06E460, MEMORY[0x1E69E62F8], sub_1D0F8D758);
    sub_1D0F8D7C8(&qword_1EE06E648, &qword_1EE06E640, &unk_1EE06E460, v0);
    v1 = sub_1D0FF4D28();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE06E690);
    }
  }
}

void sub_1D0F8D6DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    sub_1D0F1E940();
    v6 = sub_1D0FF4E58();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D0F8D758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D0F1ACD4(255, &unk_1EE06E328);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D0F8D7C8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D0F8D6DC(255, a2, a3, a4, sub_1D0F8D758);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D0F8D82C()
{
  if (!qword_1EE06E6C0)
  {
    sub_1D0F8D610();
    sub_1D0F8D758(255, &qword_1EE06E460, MEMORY[0x1E69E62F8]);
    sub_1D0F8D58C(&unk_1EE06E698, sub_1D0F8D610);
    v0 = sub_1D0FF4D08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E6C0);
    }
  }
}

void sub_1D0F8D8FC()
{
  if (!qword_1EC5FCD40)
  {
    v0 = MEMORY[0x1E69E62F8];
    sub_1D0F8D6DC(255, &qword_1EE06E640, &qword_1EE06E460, MEMORY[0x1E69E62F8], sub_1D0F8D758);
    sub_1D0F8D758(255, &qword_1EC5FCD08, MEMORY[0x1E69E6720]);
    sub_1D0F8D7C8(&qword_1EE06E648, &qword_1EE06E640, &qword_1EE06E460, v0);
    v1 = sub_1D0FF4D08();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC5FCD40);
    }
  }
}

uint64_t objectdestroy_5Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t HKSummarySharingEntryStore.fetchIncomingAcceptedEntryDateAccepted(for:)(void *a1)
{
  sub_1D0F8D218();
  v3 = *(v2 - 8);
  v20 = v2;
  v21 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D0F3F904;
  sub_1D0F8D304(0, &qword_1EC5FCD50, sub_1D0F3F904);
  v7 = *(v6 - 8);
  v23 = v6;
  v24 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = a1;
  v12 = HKSummarySharingEntryStore.fetchFirstEntry(matching:)(sub_1D0F8EF7C, v10);

  v25 = v12;
  *(swift_allocObject() + 16) = v11;
  v13 = MEMORY[0x1E69E6720];
  sub_1D0F8D6DC(0, &qword_1EC5FCD00, &qword_1EC5FCD08, MEMORY[0x1E69E6720], sub_1D0F8D758);
  sub_1D0F1ACD4(0, &unk_1EE06E328);
  sub_1D0F8D7C8(&qword_1EC5FCD10, &qword_1EC5FCD00, &qword_1EC5FCD08, v13);
  v14 = v11;
  sub_1D0FF5108();

  sub_1D0F8D58C(&qword_1EC5FCD30, sub_1D0F8D218);
  v15 = v20;
  v16 = sub_1D0FF5098();

  (*(v21 + 8))(v5, v15);
  v25 = v16;
  sub_1D0F8D6DC(0, &qword_1EC5FCD20, &unk_1EE06E328, 0x1E696C4E8, sub_1D0F1ACD4);
  sub_1D0F3F904();
  sub_1D0F8D3AC();
  sub_1D0FF50C8();

  sub_1D0F8DEA0(&qword_1EC5FCD58, &qword_1EC5FCD50, v22);
  v17 = v23;
  v18 = sub_1D0FF5098();
  (*(v24 + 8))(v9, v17);
  return v18;
}

uint64_t sub_1D0F8DDFC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 dateAccepted];
  if (v3)
  {
    v4 = v3;
    sub_1D0FF4328();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D0FF4348();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_1D0F8DEA0(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D0F8D304(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t HKSummarySharingEntryStore.updateNotificationStatus(to:for:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1D0FF43A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v6 + 16))(v8, a2, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = (v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  (*(v6 + 32))(v12 + v10, v8, v5);
  *(v12 + v11) = a1;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  sub_1D0F8E6F8();
  swift_allocObject();
  v15[1] = sub_1D0FF4FF8();
  sub_1D0F8D58C(&qword_1EC5FCD68, sub_1D0F8E6F8);
  v13 = sub_1D0FF5098();

  return v13;
}

void sub_1D0F8E0FC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a5;
  v64 = a6;
  v65 = sub_1D0FF43A8();
  v9 = *(v65 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v65);
  v12 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53[-v13];
  v15 = sub_1D0FF4C18();
  v61 = *(v15 - 8);
  v62 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v59 = v18;
    v60 = Strong;
    sub_1D0FF4BC8();
    v20 = *(v9 + 16);
    v20(v14, a4, v65);
    v21 = sub_1D0FF4C08();
    v22 = sub_1D0FF5978();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v57 = a4;
      v24 = v23;
      v56 = swift_slowAlloc();
      aBlock = v56;
      *v24 = 136315394;
      v25 = sub_1D0FF6468();
      v55 = v21;
      v27 = sub_1D0F1AE0C(v25, v26, &aBlock);
      v58 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v28 = v27;

      *(v24 + 4) = v28;
      *(v24 + 12) = 2082;
      sub_1D0F8D58C(&qword_1EE071248, MEMORY[0x1E69695A8]);
      v54 = v22;
      v29 = v20;
      v30 = v65;
      v31 = sub_1D0FF6238();
      v33 = v32;
      v34 = v30;
      v20 = v29;
      (*(v9 + 8))(v14, v34);
      v35 = sub_1D0F1AE0C(v31, v33, &aBlock);
      v12 = v58;

      *(v24 + 14) = v35;
      v36 = v55;
      _os_log_impl(&dword_1D0F17000, v55, v54, "%s Updating notification state for entry with UUID %{public}s", v24, 0x16u);
      v37 = v56;
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v37, -1, -1);
      v38 = v24;
      a4 = v57;
      MEMORY[0x1D3882680](v38, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v14, v65);
    }

    (*(v61 + 8))(v17, v62);
    v41 = sub_1D0FF4368();
    v42 = v12;
    v43 = a4;
    v44 = v12;
    v45 = v65;
    v20(v42, v43, v65);
    v46 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v47 = (v10 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    (*(v9 + 32))(v48 + v46, v44, v45);
    v49 = (v48 + v47);
    v50 = v59;
    *v49 = sub_1D0F8E838;
    v49[1] = v50;
    *(v48 + ((v47 + 23) & 0xFFFFFFFFFFFFFFF8)) = v64;
    v70 = sub_1D0F8EEA4;
    v71 = v48;
    aBlock = MEMORY[0x1E69E9820];
    v67 = 1107296256;
    v68 = sub_1D0FCA978;
    v69 = &block_descriptor_6;
    v51 = _Block_copy(&aBlock);

    v52 = v60;
    [v60 updateNotificationStatusWithUUID:v41 notificationStatus:v63 completion:v51];
    _Block_release(v51);
  }

  else
  {

    sub_1D0F8E878();
    v39 = swift_allocError();
    *v40 = 1;
    aBlock = v39;
    LOBYTE(v67) = 1;
    a1(&aBlock);
  }
}

void sub_1D0F8E63C(void (*a1)(uint64_t *), uint64_t a2)
{
  v5 = *(sub_1D0FF43A8() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1D0F8E0FC(a1, a2, v8, v2 + v6, v9, v10);
}

void sub_1D0F8E6F8()
{
  if (!qword_1EC5FCD60)
  {
    sub_1D0F1E940();
    v0 = sub_1D0FF4FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FCD60);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16HealthExperience29SummarySharingEntryStoreErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D0F8E778(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0F8E7CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D0F8E838(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

unint64_t sub_1D0F8E878()
{
  result = qword_1EC5FCD70;
  if (!qword_1EC5FCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCD70);
  }

  return result;
}

void sub_1D0F8E8CC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6)
{
  v54[1] = a6;
  v58 = a5;
  v10 = sub_1D0FF43A8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v54 - v15;
  v17 = sub_1D0FF4C18();
  v56 = *(v17 - 8);
  v57 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v54 - v21;
  if (a2)
  {
    v55 = a4;
    v23 = a2;
    sub_1D0FF4BC8();
    (*(v11 + 16))(v16, a3, v10);
    v24 = a2;
    v25 = sub_1D0FF4C08();
    v26 = sub_1D0FF5958();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v54[0] = swift_slowAlloc();
      v60 = v54[0];
      *v27 = 136315650;
      v28 = sub_1D0FF6468();
      v30 = sub_1D0F1AE0C(v28, v29, &v60);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2082;
      sub_1D0F8D58C(&qword_1EE071248, MEMORY[0x1E69695A8]);
      v31 = sub_1D0FF6238();
      v33 = v32;
      (*(v11 + 8))(v16, v10);
      v34 = sub_1D0F1AE0C(v31, v33, &v60);

      *(v27 + 14) = v34;
      *(v27 + 22) = 2082;
      v59 = a2;
      v35 = a2;
      sub_1D0F1E940();
      v36 = sub_1D0FF5458();
      v38 = sub_1D0F1AE0C(v36, v37, &v60);

      *(v27 + 24) = v38;
      _os_log_impl(&dword_1D0F17000, v25, v26, "[%s] Error updating notification state for entry with UUID %{public}s: %{public}s", v27, 0x20u);
      v39 = v54[0];
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v39, -1, -1);
      MEMORY[0x1D3882680](v27, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v16, v10);
    }

    (*(v56 + 8))(v22, v57);
    v53 = a2;
    v55(a2, 1);
  }

  else
  {
    v54[0] = a1;
    sub_1D0FF4BC8();
    (*(v11 + 16))(v14, a3, v10);
    v40 = sub_1D0FF4C08();
    v41 = sub_1D0FF5978();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v55 = a4;
      v43 = v42;
      v44 = swift_slowAlloc();
      v60 = v44;
      *v43 = 136315394;
      v45 = sub_1D0FF6468();
      v47 = sub_1D0F1AE0C(v45, v46, &v60);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2082;
      sub_1D0F8D58C(&qword_1EE071248, MEMORY[0x1E69695A8]);
      v48 = sub_1D0FF6238();
      v50 = v49;
      (*(v11 + 8))(v14, v10);
      v51 = sub_1D0F1AE0C(v48, v50, &v60);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_1D0F17000, v40, v41, "%s Successfully updated notification state for entry with UUID %{public}s.", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v44, -1, -1);
      v52 = v43;
      a4 = v55;
      MEMORY[0x1D3882680](v52, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    (*(v56 + 8))(v20, v57);
    a4((v54[0] & 1), 0);
  }
}

void sub_1D0F8EEA4(uint64_t a1, void *a2)
{
  v5 = *(sub_1D0FF43A8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v2 + v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v2 + v8);

  sub_1D0F8E8CC(a1, a2, v2 + v6, v10, v11, v12);
}

uint64_t sub_1D0F8EF80()
{
  v0 = swift_allocObject();
  sub_1D0F1CDF0();
  return v0;
}

uint64_t Promise.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t Promise.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t Promise.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1D0F8F1DC()
{

  v1 = *(*v0 + 96);
  v2 = sub_1D0FF5C38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1D0F8F28C()
{
  sub_1D0F8F1DC();

  return swift_deallocClassInstance();
}

uint64_t sub_1D0F8F2E4()
{
  type metadata accessor for AnalyticsSender();
  result = swift_allocObject();
  qword_1EE06F660 = result;
  return result;
}

uint64_t static AnalyticsSender.shared.getter()
{
  if (qword_1EE06F658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static AnalyticsSender.shared.setter(uint64_t a1)
{
  if (qword_1EE06F658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EE06F660 = a1;
}

uint64_t (*static AnalyticsSender.shared.modify())()
{
  if (qword_1EE06F658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D0F8F490@<X0>(void *a1@<X8>)
{
  if (qword_1EE06F658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EE06F660;
}

uint64_t sub_1D0F8F510(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EE06F658;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EE06F660 = v1;
}

void sub_1D0F8F598()
{
  v0 = sub_1D0FF53E8();
  sub_1D0F4210C();
  v1 = sub_1D0FF5328();
  AnalyticsSendEvent();
}

uint64_t AnalyticsDictionaryProviding.keyValuePairs.getter(void (*a1)(uint64_t *a1@<X0>, uint64_t *a2@<X8>))
{
  v3 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v73 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F91678(0, &unk_1EE06E0A8, MEMORY[0x1E69E75E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v69 - v6;
  v8 = sub_1D0FF63D8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v85 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v69 - v12;
  v103 = a1;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v102);
  v71 = *(v3 + 16);
  v71(boxed_opaque_existential_0, v1, a1);
  sub_1D0FF6398();
  v102[0] = sub_1D0FF63C8();
  v102[1] = sub_1D0F90094;
  v102[2] = 0;
  v103 = sub_1D0F9013C;
  v104 = 0;
  v105 = sub_1D0F90FAC;
  v106 = 0;
  v107 = sub_1D0F90FBC;
  v108 = 0;
  *&v97 = MEMORY[0x1E69E7CC8];
  v15 = 0;
  sub_1D0F90A08(v102, 1, &v97);
  v72 = v3 + 16;
  v74 = v1;
  v75 = a1;
  v16 = v97;
  sub_1D0FF6388();
  v83 = *(v9 + 48);
  v84 = v9 + 48;
  v17 = v83(v7, 1, v8);
  v76 = v8;
  v18 = v7;
  v70 = v9;
  if (v17 != 1)
  {
    v22 = v9 + 32;
    v21 = *(v9 + 32);
    v78 = (v9 + 8);
    v79 = v21;
    v23 = v85;
    v81 = v7;
    v82 = v13;
    v80 = v22;
    while (1)
    {
      v86 = v15;
      v87 = v16;
      v21(v23, v18, v8);
      sub_1D0FF63C8();
      v30 = MEMORY[0x1E69E7CC8];
      v101 = MEMORY[0x1E69E7CC8];

      sub_1D0FF5F18();

      sub_1D0FF6048();
      v94 = v97;
      v95 = v98;
      v31 = v100;
      v96 = v99;
      if (v100)
      {
        break;
      }

LABEL_6:

      v24 = v87;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v97 = v24;
      v15 = v86;
      sub_1D0F910C8(v30, sub_1D0F9107C, 0, isUniquelyReferenced_nonNull_native, &v97);

      v13 = v82;
      (*v78)(v82, v8);
      v16 = v97;
      v23 = v85;
      v26 = v8;
      v27 = v8;
      v28 = v79;
      v79(v13, v85, v26);
      v18 = v81;
      sub_1D0FF6388();
      v29 = v83(v18, 1, v27);
      v21 = v28;
      v8 = v27;
      if (v29 == 1)
      {
        goto LABEL_2;
      }
    }

    while (1)
    {
      v90 = v94;
      v91 = v95;
      v92 = v96;
      v93 = v31;
      v32 = *(&v94 + 1);
      if (!*(&v94 + 1))
      {
        goto LABEL_10;
      }

      v33 = v90;
      sub_1D0F1B398(&v91, &v89);
      sub_1D0F4210C();

      if (swift_dynamicCast())
      {
        v77 = v88;
        sub_1D0F91364(&v90, sub_1D0F913C4);
        *&v97 = v33;
        *(&v97 + 1) = v32;
        v34 = sub_1D0F23568(v33, v32);
        v36 = v30[2];
        v37 = (v35 & 1) == 0;
        v38 = __OFADD__(v36, v37);
        v39 = v36 + v37;
        if (v38)
        {
          goto LABEL_37;
        }

        v40 = v35;
        if (v30[3] < v39)
        {
          sub_1D0FA36C8(v39, 1);
          v34 = sub_1D0F23568(v33, v32);
          if ((v40 & 1) != (v41 & 1))
          {
            goto LABEL_39;
          }
        }

        if (v40)
        {
          goto LABEL_40;
        }

        v30 = v101;
        v101[(v34 >> 6) + 8] |= 1 << v34;
        v42 = (v30[6] + 16 * v34);
        *v42 = v33;
        v42[1] = v32;
        *(v30[7] + 8 * v34) = v77;
        v43 = v30[2];
        v38 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v38)
        {
          goto LABEL_38;
        }

        v30[2] = v44;
        sub_1D0FF6048();
        v94 = v97;
        v95 = v98;
        v31 = v100;
        v96 = v99;
        v8 = v76;
        if (!v100)
        {
          goto LABEL_6;
        }
      }

      else
      {

LABEL_10:
        sub_1D0F91364(&v90, sub_1D0F913C4);
        sub_1D0FF6048();
        v94 = v97;
        v95 = v98;
        v31 = v100;
        v96 = v99;
        if (!v100)
        {
          goto LABEL_6;
        }
      }
    }
  }

LABEL_2:
  sub_1D0F916DC(v18, &unk_1EE06E0A8, MEMORY[0x1E69E75E0], MEMORY[0x1E69E6720]);
  v71(v73, v74, v75);
  sub_1D0F25ECC(0, qword_1EE06EB20);
  if (swift_dynamicCast())
  {
    sub_1D0F25C68(&v90, &v97);
    v19 = *(&v98 + 1);
    v20 = v99;
    __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
    if (((*(v20 + 8))(v19, v20) & 1) == 0)
    {
      v86 = v15;
      v87 = v16;
      v45 = v13;
      v46 = *(&v98 + 1);
      v47 = v99;
      __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
      v48 = (*(v47 + 16))(v46, v47);
      v49 = v48;
      v50 = v48 + 56;
      v51 = 1 << *(v48 + 32);
      v52 = -1;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      v53 = v52 & *(v48 + 56);
      v54 = (v51 + 63) >> 6;

      for (i = 0; v53; i = v56)
      {
        v56 = i;
LABEL_28:
        v57 = __clz(__rbit64(v53));
        v53 &= v53 - 1;
        v58 = (*(v49 + 48) + ((v56 << 10) | (16 * v57)));
        v59 = *v58;
        v60 = v58[1];

        v61 = sub_1D0F23568(v59, v60);
        if (v62)
        {
          v85 = v61;
          v63 = v87;
          v64 = swift_isUniquelyReferenced_nonNull_native();
          *&v90 = v63;
          if ((v64 & 1) == 0)
          {
            sub_1D0FA51B8();
            v63 = v90;
          }

          v65 = v85;

          v87 = v63;
          sub_1D0F90558(v65, v63);
        }
      }

      while (1)
      {
        v56 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v56 >= v54)
        {

          (*(v70 + 8))(v45, v76);
          __swift_destroy_boxed_opaque_existential_1Tm(&v97);
          return v87;
        }

        v53 = *(v50 + 8 * v56);
        ++i;
        if (v53)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      sub_1D0FF62B8();
      __break(1u);
LABEL_40:
      v67 = swift_allocError();
      swift_willThrow();

      *&v94 = v67;
      v68 = v67;
      sub_1D0F25ECC(0, &qword_1EE071010);
      if (swift_dynamicCast())
      {
        *&v90 = 0;
        *(&v90 + 1) = 0xE000000000000000;
        sub_1D0FF5DE8();
        MEMORY[0x1D3880AC0](0xD00000000000001BLL, 0x80000001D1004B30);
        sub_1D0FF5F38();
        MEMORY[0x1D3880AC0](39, 0xE100000000000000);
        sub_1D0FF5F98();
        __break(1u);
      }

      while (1)
      {
        swift_unexpectedError();
        __break(1u);
      }
    }

    (*(v70 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v97);
  }

  else
  {
    (*(v70 + 8))(v13, v8);
    v92 = 0;
    v90 = 0u;
    v91 = 0u;
    sub_1D0F91364(&v90, sub_1D0F91014);
  }

  return v16;
}

uint64_t *sub_1D0F90094@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if (!v3)
  {
    v4 = 0;
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v4 = *result;
  sub_1D0F1B398((result + 2), v7);
  sub_1D0F4210C();

  result = swift_dynamicCast();
  if (!result)
  {

    v4 = 0;
    v3 = 0;
    goto LABEL_6;
  }

  v5 = v6;
LABEL_7:
  *a2 = v4;
  a2[1] = v3;
  a2[2] = v5;
  return result;
}

void sub_1D0F9013C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  sub_1D0F915A0(v3, v2, v4);
}

uint64_t AnalyticsSubmitting.submit(sender:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D0FF4C18();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*((*(*(a3 + 8) + 8))(a2) + 16))
  {
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = (*(*(a3 + 16) + 8))(a2);
    (*(v10 + 8))(v11);
  }

  else
  {

    sub_1D0FF4BE8();
    v13 = sub_1D0FF4C08();
    v14 = sub_1D0FF5978();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      v17 = sub_1D0FF6468();
      v19 = sub_1D0F1AE0C(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1D0F17000, v13, v14, "[%s] Analytics dictionary is empty. Not sending an analytics event.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1D3882680](v16, -1, -1);
      MEMORY[0x1D3882680](v15, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }
}

void sub_1D0F903CC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D0FF5CE8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1D0FF5BE8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_1D0F90558(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D0FF5CE8() + 1) & ~v5;
    do
    {
      sub_1D0FF6338();

      sub_1D0FF5488();
      v9 = sub_1D0FF6378();

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

unint64_t sub_1D0F90708(int64_t a1, uint64_t a2)
{
  v4 = sub_1D0FF43A8();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1D0FF5CE8();
    v14 = v12;
    v41 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v42 = *(v15 + 56);
    v39 = (v15 - 8);
    v40 = v16;
    do
    {
      v17 = v9;
      v18 = v42 * v11;
      v19 = v14;
      v20 = v15;
      v40(v8, *(a2 + 48) + v42 * v11, v4);
      sub_1D0F91548();
      v21 = sub_1D0FF5368();
      result = (*v39)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v41)
      {
        if (v22 >= v41 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          v26 = v25 + v42 * a1;
          v27 = v25 + v18 + v42;
          v28 = v42 * a1 < v18 || v26 >= v27;
          v15 = v20;
          if (v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v42 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29 = *(a2 + 56);
          v30 = *(*(sub_1D0FF4348() - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v11;
          v33 = v29 + v30 * v11 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v17;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v35 = v31 == v32;
            v9 = v17;
            v14 = v19;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v41 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D0F90A08(void *a1, char a2, void *a3)
{
  v4 = v3;
  v37 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v53[0] = *a1;
  v34 = a1[7];
  sub_1D0F915E4(v53, &v47);

  v53[4] = v7;

  sub_1D0FF5F18();
  sub_1D0F916DC(v53, &qword_1EE06E2B8, sub_1D0F913C4, MEMORY[0x1E69E6AE0]);
  sub_1D0FF6048();
  v9 = v5;
  *v44 = v47;
  v45 = v48;
  v10 = v50;
  v46 = v49;
  if (!v50)
  {
LABEL_18:

    sub_1D0F916DC(v53, &qword_1EE06E2B8, sub_1D0F913C4, MEMORY[0x1E69E6AE0]);

    return;
  }

  while (1)
  {
    while (1)
    {
      v40 = *v44;
      v41 = v45;
      v42 = v46;
      v43 = v10;
      v11 = v9;
      v37(&v38, &v40);
      sub_1D0F91364(&v40, sub_1D0F913C4);
      v12 = v38;
      v13 = v39;
      v47 = v38;
      *&v48 = v39;
      v6(&v40, &v47);
      sub_1D0F91738(v12, *(&v12 + 1), v13);
      v14 = v40;
      v15 = v41;
      v51 = v40;
      v52 = v41;
      if (v8(&v51))
      {
        break;
      }

      sub_1D0F91738(v14, *(&v14 + 1), v15);
      sub_1D0FF6048();
      *v44 = v47;
      v45 = v48;
      v10 = v50;
      v46 = v49;
      if (!v50)
      {
        goto LABEL_18;
      }
    }

    v32 = v4;
    v47 = v14;
    *&v48 = v15;
    v34(&v40, &v47);
    sub_1D0F91738(v14, *(&v14 + 1), v15);
    v16 = v40;
    v33 = v41;
    v47 = v40;
    v17 = *a3;
    v19 = sub_1D0F23568(v40, *(&v40 + 1));
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1D0FF62B8();
      __break(1u);
      goto LABEL_22;
    }

    v23 = v18;
    if (v17[3] < v22)
    {
      break;
    }

    if (a2)
    {
      if (v18)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1D0FA51B8();
      if (v23)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v26 = *a3;
    *(*a3 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    *(v26[6] + 16 * v19) = v16;
    *(v26[7] + 8 * v19) = v33;
    v27 = v26[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_20;
    }

    v26[2] = v29;
    sub_1D0FF6048();
    *v44 = v47;
    v45 = v48;
    v10 = v50;
    v46 = v49;
    a2 = 1;
    v4 = v32;
    v9 = v11;
    if (!v50)
    {
      goto LABEL_18;
    }
  }

  sub_1D0FA36C8(v22, a2 & 1);
  v24 = sub_1D0F23568(v16, *(&v16 + 1));
  if ((v23 & 1) != (v25 & 1))
  {
    goto LABEL_21;
  }

  v19 = v24;
  if ((v23 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v30 = swift_allocError();
  swift_willThrow();
  sub_1D0F916DC(v53, &qword_1EE06E2B8, sub_1D0F913C4, MEMORY[0x1E69E6AE0]);

  v44[0] = v30;
  v31 = v30;
  sub_1D0F25ECC(0, &qword_1EE071010);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  *&v40 = 0;
  *(&v40 + 1) = 0xE000000000000000;
  sub_1D0FF5DE8();
  MEMORY[0x1D3880AC0](0xD00000000000001BLL, 0x80000001D1004B30);
  sub_1D0FF5F38();
  MEMORY[0x1D3880AC0](39, 0xE100000000000000);
  sub_1D0FF5F98();
  __break(1u);
}

id sub_1D0F90FBC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = a1[1];
  if (result)
  {
    v4 = a1[2];
    *a2 = *a1;
    a2[1] = result;
    a2[2] = v4;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D0F91014()
{
  if (!qword_1EE06EB18)
  {
    sub_1D0F25ECC(255, qword_1EE06EB20);
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06EB18);
    }
  }
}

id sub_1D0F9107C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_1D0F910C8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v48 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v40 = v6;
  while (v9)
  {
    v43 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v47[0] = *v18;
    v47[1] = v19;
    v47[2] = v20;

    v21 = v20;
    a2(&v44, v47);

    v22 = v44;
    v23 = v45;
    v24 = v46;
    v25 = *v48;
    v27 = sub_1D0F23568(v44, v45);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((v43 & 1) == 0)
      {
        sub_1D0FA51B8();
      }
    }

    else
    {
      sub_1D0FA36C8(v30, v43 & 1);
      v32 = sub_1D0F23568(v22, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v27 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v48;
    if (v31)
    {
      v12 = *(v34[7] + 8 * v27);

      v13 = v34[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v22;
      v35[1] = v23;
      *(v34[7] + 8 * v27) = v24;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v15;
    v6 = v40;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_1D0F36568();
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v43 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1D0FF62B8();
  __break(1u);
  return result;
}

uint64_t sub_1D0F91364(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D0F913C4()
{
  if (!qword_1EE070B98)
  {
    sub_1D0F91434();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE070B98);
    }
  }
}

void sub_1D0F91434()
{
  if (!qword_1EE070E20)
  {
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE070E20);
    }
  }
}

unint64_t sub_1D0F91548()
{
  result = qword_1EE071250;
  if (!qword_1EE071250)
  {
    sub_1D0FF43A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE071250);
  }

  return result;
}

void sub_1D0F915A0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v3 = a3;
  }
}

uint64_t sub_1D0F915E4(uint64_t a1, uint64_t a2)
{
  sub_1D0F91678(0, &qword_1EE06E2B8, sub_1D0F913C4, MEMORY[0x1E69E6AE0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D0F91678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D0F916DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D0F91678(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D0F91738(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t NSOperation.addCompletion(block:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 completionBlock];
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_1D0F9195C;
  }

  else
  {
    v6 = 0;
  }

  sub_1D0F1C500(v5);
  sub_1D0F2625C(v5);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v6;
  v7[4] = a1;
  v7[5] = a2;
  v10[4] = sub_1D0F91914;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D0F1E1EC;
  v10[3] = &block_descriptor_8;
  v8 = _Block_copy(v10);
  sub_1D0F1C500(v5);

  sub_1D0F1C500(sub_1D0F91914);

  [v2 setCompletionBlock_];
  _Block_release(v8);

  return sub_1D0F2625C(v5);
}

uint64_t sub_1D0F91914()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v1)
  {
    v1();
  }

  return v2();
}

uint64_t PluginAdvertisableFeatureSourceContext.DeviceSource.hashValue.getter()
{
  v1 = *v0;
  sub_1D0FF6338();
  MEMORY[0x1D3881950](v1);
  return sub_1D0FF6378();
}

uint64_t PluginAdvertisableFeatureSourceContext.init(healthStore:queue:includeFeaturesMadeAvailableByBuddy:countryProvider:activeDeviceSource:presentationLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, __int128 *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a5;
  v9 = *a6;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  result = sub_1D0F25C68(a4, a7 + 24);
  *(a7 + 64) = v8;
  *(a7 + 65) = v9;
  return result;
}

unint64_t sub_1D0F91A84()
{
  result = qword_1EC5FCD78;
  if (!qword_1EC5FCD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCD78);
  }

  return result;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D0F91B10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_1D0F91B58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D0F91C10@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D0FF6088();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D0F91C68(uint64_t a1)
{
  v2 = sub_1D0F96820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F91CA4(uint64_t a1)
{
  v2 = sub_1D0F96820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppStoreDataProvider.EditorialItemsList.encode(to:)(void *a1)
{
  sub_1D0F9957C(0, &qword_1EC5FCD80, sub_1D0F96820, &_s18EditorialItemsListV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F96820();

  sub_1D0FF6438();
  v10[3] = v8;
  sub_1D0F99374(0, &qword_1EE06E488, &type metadata for AppStoreDataProvider.EditorialItem, MEMORY[0x1E69E62F8]);
  sub_1D0F968C8(&qword_1EC5FCD88, sub_1D0F96874);
  sub_1D0FF61B8();

  return (*(v5 + 8))(v7, v4);
}

uint64_t AppStoreDataProvider.EditorialItemsList.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  sub_1D0F9957C(0, &qword_1EE06E208, sub_1D0F96820, &_s18EditorialItemsListV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F96820();
  sub_1D0FF6428();
  if (!v2)
  {
    v9 = v12;
    sub_1D0F99374(0, &qword_1EE06E488, &type metadata for AppStoreDataProvider.EditorialItem, MEMORY[0x1E69E62F8]);
    sub_1D0F968C8(&qword_1EE06E480, sub_1D0F96958);
    sub_1D0FF60F8();
    (*(v6 + 8))(v8, v5);
    *v9 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t AppStoreDataProvider.EditorialItem.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppStoreDataProvider.EditorialItem.relationship.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return sub_1D0F969AC(v2);
}

uint64_t sub_1D0F92184(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F6974616C6572;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xED00007370696873;
  }

  if (*a2)
  {
    v5 = 0x6E6F6974616C6572;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xED00007370696873;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D0FF6278();
  }

  return v8 & 1;
}

uint64_t sub_1D0F9222C()
{
  sub_1D0FF6338();
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

uint64_t sub_1D0F922B0()
{
  sub_1D0FF5488();
}

uint64_t sub_1D0F92320()
{
  sub_1D0FF6338();
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

void sub_1D0F923AC(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x6E6F6974616C6572;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xED00007370696873;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D0F923EC()
{
  if (*v0)
  {
    return 0x6E6F6974616C6572;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D0F92434(uint64_t a1)
{
  v2 = sub_1D0F98570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F92470(uint64_t a1)
{
  v2 = sub_1D0F98570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppStoreDataProvider.EditorialItem.encode(to:)(void *a1)
{
  sub_1D0F9957C(0, &qword_1EC5FCD98, sub_1D0F98570, &_s13EditorialItemV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F98570();
  sub_1D0FF6438();
  v15 = 0;
  v8 = v12;
  sub_1D0FF6188();
  if (!v8)
  {
    v13 = v11;
    v14 = 1;
    sub_1D0F969AC(v11);
    sub_1D0F985C4();
    sub_1D0FF61B8();
    sub_1D0F98618(v13);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t AppStoreDataProvider.EditorialItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = a2;
  sub_1D0F9957C(0, &qword_1EE06E218, sub_1D0F98570, &_s13EditorialItemV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F98570();
  sub_1D0FF6428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v9 = v16[0];
  v18 = 0;
  v10 = sub_1D0FF60C8();
  v12 = v11;
  v13 = v10;
  v17 = 1;
  sub_1D0F98638();
  sub_1D0FF60F8();
  (*(v6 + 8))(v8, v5);
  v14 = v16[1];
  *v9 = v13;
  v9[1] = v12;
  v9[2] = v14;

  sub_1D0F969AC(v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return sub_1D0F98618(v14);
}

uint64_t AppStoreDataProvider.Relationship.cardContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_1D0F969BC(v2);
}

uint64_t sub_1D0F929C8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D0FF6088();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D0F92A20(uint64_t a1)
{
  v2 = sub_1D0F9868C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F92A5C(uint64_t a1)
{
  v2 = sub_1D0F9868C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppStoreDataProvider.Relationship.encode(to:)(void *a1)
{
  sub_1D0F9957C(0, &qword_1EC5FCDA8, sub_1D0F9868C, &_s12RelationshipV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F969BC(v8);
  sub_1D0F9868C();
  sub_1D0FF6438();
  v11 = v8;
  sub_1D0F986E0();
  sub_1D0FF61B8();
  sub_1D0F98628(v11);
  return (*(v5 + 8))(v7, v4);
}

uint64_t AppStoreDataProvider.Relationship.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  sub_1D0F9957C(0, &qword_1EE06E220, sub_1D0F9868C, &_s12RelationshipV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F9868C();
  sub_1D0FF6428();
  if (!v2)
  {
    v9 = v12;
    sub_1D0F98734();
    sub_1D0FF60F8();
    (*(v6 + 8))(v8, v5);
    *v9 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D0F92E30@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D0FF6088();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D0F92E88(uint64_t a1)
{
  v2 = sub_1D0F98788();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F92EC4(uint64_t a1)
{
  v2 = sub_1D0F98788();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0F92F18(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {

      LOBYTE(a3) = a3(v3, v4);

      if (a3)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t AppStoreDataProvider.CardContent.encode(to:)(void *a1)
{
  sub_1D0F9957C(0, &qword_1EC5FCDB8, sub_1D0F98788, &_s11CardContentV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F98788();

  sub_1D0FF6438();
  v10[3] = v8;
  sub_1D0F99374(0, &qword_1EE06E478, &type metadata for AppStoreDataProvider.CardItem, MEMORY[0x1E69E62F8]);
  sub_1D0F98830(&qword_1EC5FCDC0, sub_1D0F987DC);
  sub_1D0FF61B8();

  return (*(v5 + 8))(v7, v4);
}

uint64_t AppStoreDataProvider.CardContent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  sub_1D0F9957C(0, &qword_1EE06E228, sub_1D0F98788, &_s11CardContentV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F98788();
  sub_1D0FF6428();
  if (!v2)
  {
    v9 = v12;
    sub_1D0F99374(0, &qword_1EE06E478, &type metadata for AppStoreDataProvider.CardItem, MEMORY[0x1E69E62F8]);
    sub_1D0F98830(&qword_1EE06E470, sub_1D0F988C0);
    sub_1D0FF60F8();
    (*(v6 + 8))(v8, v5);
    *v9 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D0F933A8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  if (*a1)
  {
    if (v6)
    {

      LOBYTE(a5) = a5(v5, v6);

      if (a5)
      {
        return 1;
      }
    }
  }

  else if (!v6)
  {
    return 1;
  }

  return 0;
}

uint64_t AppStoreDataProvider.CardItem.storeIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppStoreDataProvider.CardItem.attributes.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[8];
  v28 = v1[9];
  v29 = v2;
  v4 = v1[10];
  v5 = v1[12];
  v30 = v1[11];
  v6 = v30;
  v31 = v5;
  v7 = v1[6];
  v9 = v1[4];
  v24 = v1[5];
  v8 = v24;
  v25 = v7;
  v10 = v1[6];
  v11 = v1[8];
  v26 = v1[7];
  v12 = v26;
  v27 = v11;
  v13 = v1[2];
  v21[0] = v1[1];
  v21[1] = v13;
  v14 = v1[4];
  v16 = v1[1];
  v15 = v1[2];
  v22 = v1[3];
  v17 = v22;
  v23 = v14;
  a1[8] = v28;
  a1[9] = v4;
  v18 = v1[12];
  a1[10] = v6;
  a1[11] = v18;
  a1[4] = v8;
  a1[5] = v10;
  a1[6] = v12;
  a1[7] = v3;
  *a1 = v16;
  a1[1] = v15;
  a1[2] = v17;
  a1[3] = v9;
  return sub_1D0F99024(v21, &v20, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
}

uint64_t sub_1D0F9351C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7475626972747461;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xEA00000000007365;
  }

  if (*a2)
  {
    v5 = 0x7475626972747461;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007365;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D0FF6278();
  }

  return v8 & 1;
}

uint64_t sub_1D0F935BC()
{
  sub_1D0FF6338();
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

uint64_t sub_1D0F93638()
{
  sub_1D0FF5488();
}

uint64_t sub_1D0F936A0()
{
  sub_1D0FF6338();
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

uint64_t sub_1D0F93724@<X0>(char *a1@<X8>)
{
  v2 = sub_1D0FF6088();

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

void sub_1D0F93780(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x7475626972747461;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007365;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D0F937B8()
{
  if (*v0)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D0F937F8@<X0>(char *a1@<X8>)
{
  v2 = sub_1D0FF6088();

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

uint64_t sub_1D0F93858(uint64_t a1)
{
  v2 = sub_1D0F98EC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F93894(uint64_t a1)
{
  v2 = sub_1D0F98EC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppStoreDataProvider.CardItem.encode(to:)(void *a1)
{
  sub_1D0F9957C(0, &qword_1EC5FCDD8, sub_1D0F98EC0, &_s8CardItemV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v16[0] = *v1;
  v8 = *(v1 + 160);
  v38 = *(v1 + 144);
  v39 = v8;
  v9 = *(v1 + 192);
  v40 = *(v1 + 176);
  v41 = v9;
  v10 = *(v1 + 96);
  v34 = *(v1 + 80);
  v35 = v10;
  v11 = *(v1 + 128);
  v36 = *(v1 + 112);
  v37 = v11;
  v12 = *(v1 + 32);
  v30 = *(v1 + 16);
  v31 = v12;
  v13 = *(v1 + 64);
  v32 = *(v1 + 48);
  v33 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F98EC0();
  sub_1D0FF6438();
  LOBYTE(v18) = 0;
  v14 = v16[1];
  sub_1D0FF6188();
  if (!v14)
  {
    v26 = v38;
    v27 = v39;
    v28 = v40;
    v29 = v41;
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v25 = v37;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v21 = v33;
    v42 = 1;
    sub_1D0F99024(&v30, v17, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
    sub_1D0F98F14();
    sub_1D0FF61B8();
    v17[8] = v26;
    v17[9] = v27;
    v17[10] = v28;
    v17[11] = v29;
    v17[4] = v22;
    v17[5] = v23;
    v17[6] = v24;
    v17[7] = v25;
    v17[0] = v18;
    v17[1] = v19;
    v17[2] = v20;
    v17[3] = v21;
    sub_1D0F9914C(v17, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t AppStoreDataProvider.CardItem.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v76 = a2;
  sub_1D0F9957C(0, &qword_1EE06E200, sub_1D0F98EC0, &_s8CardItemV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F98EC0();
  sub_1D0FF6428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v8 = a1;
  v9 = v24;
  v10 = v76;
  LOBYTE(v38[0]) = 0;
  v11 = sub_1D0FF60C8();
  v13 = v12;
  v23 = v11;
  v51 = 1;
  sub_1D0F98F68();
  sub_1D0FF60F8();
  (*(v9 + 8))(v7, v5);
  v72 = v60;
  v73 = v61;
  v14 = v62;
  v74 = v62;
  v75 = v63;
  v68 = v56;
  v69 = v57;
  v70 = v58;
  v71 = v59;
  v64 = v52;
  v65 = v53;
  v66 = v54;
  v67 = v55;
  v34 = v60;
  v35 = v61;
  v36 = v62;
  v37 = v63;
  v30 = v56;
  v31 = v57;
  v32 = v58;
  v33 = v59;
  v26 = v52;
  v27 = v53;
  v15 = v23;
  *&v25 = v23;
  *(&v25 + 1) = v13;
  v28 = v54;
  v29 = v55;
  v10[10] = v61;
  v10[11] = v14;
  v10[12] = v37;
  v16 = v32;
  v10[6] = v31;
  v10[7] = v16;
  v17 = v34;
  v10[8] = v33;
  v10[9] = v17;
  v18 = v28;
  v10[2] = v27;
  v10[3] = v18;
  v19 = v30;
  v10[4] = v29;
  v10[5] = v19;
  v20 = v26;
  *v10 = v25;
  v10[1] = v20;
  sub_1D0F98FBC(&v25, v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  v38[0] = v15;
  v38[1] = v13;
  v47 = v72;
  v48 = v73;
  v49 = v74;
  v50 = v75;
  v43 = v68;
  v44 = v69;
  v45 = v70;
  v46 = v71;
  v39 = v64;
  v40 = v65;
  v41 = v66;
  v42 = v67;
  return sub_1D0F98FF4(v38);
}

uint64_t AppStoreDataProvider.Attributes.artistName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppStoreDataProvider.Attributes.platform.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[6];
  v23 = v1[7];
  v24 = v2;
  v4 = v1[8];
  v5 = v1[10];
  v25 = v1[9];
  v6 = v25;
  v26 = v5;
  v7 = v1[4];
  v9 = v1[2];
  v19 = v1[3];
  v8 = v19;
  v20 = v7;
  v10 = v1[4];
  v11 = v1[6];
  v21 = v1[5];
  v12 = v21;
  v22 = v11;
  v13 = v1[2];
  v18[0] = v1[1];
  v14 = v18[0];
  v18[1] = v13;
  a1[6] = v23;
  a1[7] = v4;
  v15 = v1[10];
  a1[8] = v6;
  a1[9] = v15;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v3;
  *a1 = v14;
  a1[1] = v9;
  return sub_1D0F99024(v18, &v17, &qword_1EC5FCDE8, &type metadata for AppStoreDataProvider.Platform);
}

uint64_t AppStoreDataProvider.Attributes.displayName.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t sub_1D0F94000(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x80000001D1003280;
  v5 = 0xE400000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000001D1003280;
  }

  else
  {
    v3 = 1701667182;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x614E747369747261;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA0000000000656DLL;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 1701667182;
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x614E747369747261;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA0000000000656DLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D0FF6278();
  }

  return v11 & 1;
}

uint64_t sub_1D0F940EC()
{
  sub_1D0FF6338();
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

uint64_t sub_1D0F94190()
{
  sub_1D0FF5488();
}

uint64_t sub_1D0F94220()
{
  sub_1D0FF6338();
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

uint64_t sub_1D0F942C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D0F9A8F4();
  *a1 = result;
  return result;
}

void sub_1D0F942F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656DLL;
  v4 = 0x80000001D1003280;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 1701667182;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x614E747369747261;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D0F94350()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 1701667182;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x614E747369747261;
  }
}

uint64_t sub_1D0F943AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D0F9A8F4();
  *a1 = result;
  return result;
}

uint64_t sub_1D0F943D4(uint64_t a1)
{
  v2 = sub_1D0F990A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F94410(uint64_t a1)
{
  v2 = sub_1D0F990A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppStoreDataProvider.Attributes.encode(to:)(void *a1)
{
  sub_1D0F9957C(0, &qword_1EC5FCDF0, sub_1D0F990A4, &_s10AttributesV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - v6;
  v8 = *v1;
  v17[3] = v1[1];
  v17[4] = v8;
  v9 = *(v1 + 8);
  v37 = *(v1 + 7);
  v38 = v9;
  v10 = *(v1 + 10);
  v39 = *(v1 + 9);
  v40 = v10;
  v11 = *(v1 + 4);
  v33 = *(v1 + 3);
  v34 = v11;
  v12 = *(v1 + 6);
  v35 = *(v1 + 5);
  v36 = v12;
  v13 = *(v1 + 2);
  v31 = *(v1 + 1);
  v32 = v13;
  v14 = v1[22];
  v17[1] = v1[23];
  v17[2] = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F990A4();
  sub_1D0FF6438();
  LOBYTE(v21) = 0;
  v15 = v41;
  sub_1D0FF6188();
  if (!v15)
  {
    v27 = v37;
    v28 = v38;
    v29 = v39;
    v30 = v40;
    v23 = v33;
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v21 = v31;
    v22 = v32;
    v20 = 1;
    sub_1D0F99024(&v31, v19, &qword_1EC5FCDE8, &type metadata for AppStoreDataProvider.Platform);
    sub_1D0F990F8();
    sub_1D0FF61B8();
    v19[6] = v27;
    v19[7] = v28;
    v19[8] = v29;
    v19[9] = v30;
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v19[5] = v26;
    v19[0] = v21;
    v19[1] = v22;
    sub_1D0F9914C(v19, &qword_1EC5FCDE8, &type metadata for AppStoreDataProvider.Platform);
    v18 = 2;
    sub_1D0FF6188();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t AppStoreDataProvider.Attributes.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v30 = a2;
  sub_1D0F9957C(0, &qword_1EE06E230, sub_1D0F990A4, &_s10AttributesV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v31 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F990A4();
  sub_1D0FF6428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v8 = v5;
  v9 = v30;
  LOBYTE(v44[0]) = 0;
  v10 = sub_1D0FF60C8();
  v12 = v11;
  v29 = v10;
  v78 = 1;
  sub_1D0F991BC();
  sub_1D0FF60F8();
  v73 = v63;
  v74 = v64;
  v75 = v65;
  v76 = v66;
  v69 = v59;
  v70 = v60;
  v71 = v61;
  v72 = v62;
  v67 = v57;
  v68 = v58;
  v77 = 2;
  v13 = sub_1D0FF60C8();
  v14 = v7;
  v16 = v15;
  (*(v8 + 8))(v14, v31);
  v17 = v73;
  v39 = v73;
  v40 = v74;
  v41 = v75;
  v42 = v76;
  v18 = v69;
  v35 = v69;
  v36 = v70;
  v37 = v71;
  v38 = v72;
  v33 = v67;
  v34 = v68;
  v19 = v75;
  v20 = v9;
  v9[8] = v74;
  v9[9] = v19;
  v21 = v37;
  v22 = v38;
  v9[4] = v36;
  v9[5] = v21;
  v23 = v29;
  *&v32 = v29;
  *(&v32 + 1) = v12;
  *&v43 = v13;
  *(&v43 + 1) = v16;
  v20[6] = v22;
  v20[7] = v17;
  v24 = v33;
  v25 = v34;
  *v20 = v32;
  v20[1] = v24;
  v20[2] = v25;
  v20[3] = v18;
  v26 = v43;
  v20[10] = v42;
  v20[11] = v26;
  sub_1D0F99210(&v32, v44);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v44[0] = v23;
  v44[1] = v12;
  v51 = v73;
  v52 = v74;
  v53 = v75;
  v54 = v76;
  v47 = v69;
  v48 = v70;
  v49 = v71;
  v50 = v72;
  v45 = v67;
  v46 = v68;
  v55 = v13;
  v56 = v16;
  return sub_1D0F99248(v44);
}

uint64_t AppStoreDataProvider.Platform.iOS.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[5];
  v23 = v1[6];
  v24 = v2;
  v4 = v1[7];
  v5 = v1[9];
  v25 = v1[8];
  v6 = v25;
  v26 = v5;
  v7 = v1[3];
  v9 = v1[1];
  v19 = v1[2];
  v8 = v19;
  v20 = v7;
  v10 = v1[3];
  v11 = v1[5];
  v21 = v1[4];
  v12 = v21;
  v22 = v11;
  v13 = v1[1];
  v18[0] = *v1;
  v14 = v18[0];
  v18[1] = v13;
  a1[6] = v23;
  a1[7] = v4;
  v15 = v1[9];
  a1[8] = v6;
  a1[9] = v15;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v3;
  *a1 = v14;
  a1[1] = v9;
  return sub_1D0F99024(v18, &v17, &qword_1EC5FCE00, &type metadata for AppStoreDataProvider.iOSAttributes);
}

uint64_t sub_1D0F94BA8()
{
  sub_1D0FF6338();
  sub_1D0FF5488();
  return sub_1D0FF6378();
}

uint64_t sub_1D0F94C18()
{
  sub_1D0FF6338();
  sub_1D0FF5488();
  return sub_1D0FF6378();
}

uint64_t sub_1D0F94C70@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D0FF6088();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D0F94CE4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D0FF6088();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D0F94D3C(uint64_t a1)
{
  v2 = sub_1D0F99278();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F94D78(uint64_t a1)
{
  v2 = sub_1D0F99278();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppStoreDataProvider.Platform.encode(to:)(void *a1)
{
  sub_1D0F9957C(0, &qword_1EC5FCE08, sub_1D0F99278, &_s8PlatformV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = v1[7];
  v31 = v1[6];
  v32 = v8;
  v9 = v1[9];
  v33 = v1[8];
  v34 = v9;
  v10 = v1[3];
  v27 = v1[2];
  v28 = v10;
  v11 = v1[5];
  v29 = v1[4];
  v30 = v11;
  v12 = v1[1];
  v25 = *v1;
  v26 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F99024(&v25, &v15, &qword_1EC5FCE00, &type metadata for AppStoreDataProvider.iOSAttributes);
  sub_1D0F99278();
  sub_1D0FF6438();
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v15 = v25;
  v16 = v26;
  sub_1D0F992CC();
  sub_1D0FF61B8();
  v14[6] = v21;
  v14[7] = v22;
  v14[8] = v23;
  v14[9] = v24;
  v14[2] = v17;
  v14[3] = v18;
  v14[4] = v19;
  v14[5] = v20;
  v14[0] = v15;
  v14[1] = v16;
  sub_1D0F9914C(v14, &qword_1EC5FCE00, &type metadata for AppStoreDataProvider.iOSAttributes);
  return (*(v5 + 8))(v7, v4);
}

uint64_t AppStoreDataProvider.Platform.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v26 = a2;
  sub_1D0F9957C(0, &qword_1EE06E1F8, sub_1D0F99278, &_s8PlatformV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F99278();
  sub_1D0FF6428();
  if (!v2)
  {
    v9 = v26;
    sub_1D0F99320();
    sub_1D0FF60F8();
    (*(v6 + 8))(v8, v5);
    v10 = v23;
    v9[6] = v22;
    v9[7] = v10;
    v11 = v25;
    v9[8] = v24;
    v9[9] = v11;
    v12 = v19;
    v9[2] = v18;
    v9[3] = v12;
    v13 = v21;
    v9[4] = v20;
    v9[5] = v13;
    v14 = v17;
    *v9 = *&v16[8];
    v9[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t AppStoreDataProvider.iOSAttributes.subtitle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppStoreDataProvider.iOSAttributes.bundleId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AppStoreDataProvider.iOSAttributes.artwork.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[7];
  v14 = v1[6];
  v2 = v14;
  v15 = v3;
  v5 = v1[9];
  v16 = v1[8];
  v4 = v16;
  v17 = v5;
  v6 = v1[3];
  v11[0] = v1[2];
  v11[1] = v6;
  v8 = v1[5];
  v12 = v1[4];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_1D0F99024(v11, &v10, &qword_1EC5FCE18, &type metadata for AppStoreDataProvider.Artwork);
}

uint64_t sub_1D0F952D8()
{
  v1 = 0x6449656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0x6B726F77747261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974627573;
  }
}

uint64_t sub_1D0F95334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D0F9A940(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D0F9535C(uint64_t a1)
{
  v2 = sub_1D0F993C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F95398(uint64_t a1)
{
  v2 = sub_1D0F993C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppStoreDataProvider.iOSAttributes.encode(to:)(void *a1)
{
  sub_1D0F9957C(0, &qword_1EC5FCE20, sub_1D0F993C4, &_s13iOSAttributesV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[3];
  v16[1] = v1[2];
  v16[2] = v8;
  v16[0] = v9;
  v10 = *(v1 + 7);
  v30 = *(v1 + 6);
  v31 = v10;
  v11 = *(v1 + 9);
  v32 = *(v1 + 8);
  v33 = v11;
  v12 = *(v1 + 3);
  v26 = *(v1 + 2);
  v27 = v12;
  v13 = *(v1 + 5);
  v28 = *(v1 + 4);
  v29 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F993C4();
  sub_1D0FF6438();
  LOBYTE(v18) = 0;
  v14 = v16[3];
  sub_1D0FF6188();
  if (!v14)
  {
    LOBYTE(v18) = 1;
    sub_1D0FF6188();
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v18 = v26;
    v19 = v27;
    v20 = v28;
    v21 = v29;
    v34 = 2;
    sub_1D0F99024(&v26, v17, &qword_1EC5FCE18, &type metadata for AppStoreDataProvider.Artwork);
    sub_1D0F99418();
    sub_1D0FF61B8();
    v17[4] = v22;
    v17[5] = v23;
    v17[6] = v24;
    v17[7] = v25;
    v17[0] = v18;
    v17[1] = v19;
    v17[2] = v20;
    v17[3] = v21;
    sub_1D0F9914C(v17, &qword_1EC5FCE18, &type metadata for AppStoreDataProvider.Artwork);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t AppStoreDataProvider.iOSAttributes.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v29 = a2;
  sub_1D0F9957C(0, &qword_1EE06E210, sub_1D0F993C4, &_s13iOSAttributesV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v65 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F993C4();
  sub_1D0FF6428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v8 = v5;
  LOBYTE(v39[0]) = 0;
  v9 = sub_1D0FF60C8();
  v11 = v10;
  v28 = v9;
  LOBYTE(v39[0]) = 1;
  *&v27 = sub_1D0FF60C8();
  *(&v27 + 1) = v12;
  v48 = 2;
  sub_1D0F9946C();
  sub_1D0FF60F8();
  v13 = a1;
  (*(v8 + 8))(v7, v65);
  v14 = v53;
  v61 = v53;
  v62 = v54;
  v63 = v55;
  v64 = v56;
  v57 = v49;
  v58 = v50;
  v59 = v51;
  v60 = v52;
  v34 = v52;
  v33 = v51;
  v16 = *(&v27 + 1);
  v15 = v28;
  *&v30[0] = v28;
  *(&v30[0] + 1) = v11;
  v17 = v27;
  v30[1] = v27;
  v32 = v50;
  v31 = v49;
  v38 = v56;
  v37 = v55;
  v36 = v54;
  v35 = v53;
  v18 = v27;
  v19 = v29;
  *v29 = v30[0];
  v19[1] = v18;
  v20 = v31;
  v21 = v32;
  v22 = v34;
  v19[4] = v33;
  v19[5] = v22;
  v19[2] = v20;
  v19[3] = v21;
  v23 = v36;
  v24 = v38;
  v19[8] = v37;
  v19[9] = v24;
  v19[6] = v14;
  v19[7] = v23;
  sub_1D0F994C0(v30, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  v39[0] = v15;
  v39[1] = v11;
  v39[2] = v17;
  v39[3] = v16;
  v44 = v61;
  v45 = v62;
  v46 = v63;
  v47 = v64;
  v40 = v57;
  v41 = v58;
  v42 = v59;
  v43 = v60;
  return sub_1D0F994F8(v39);
}

uint64_t sub_1D0F95A2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D0F9AA58();
  *a1 = result;
  return result;
}

void sub_1D0F95A5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6874646977;
  v5 = 0xEA00000000003472;
  if (v2 == 6)
  {
    v5 = 0xEA00000000003372;
  }

  v6 = 0xEA00000000003172;
  if (v2 != 4)
  {
    v6 = 0xEA00000000003272;
  }

  if (*v1 <= 5u)
  {
    v5 = v6;
  }

  v7 = 0xE300000000000000;
  v8 = 7107189;
  if (v2 != 2)
  {
    v8 = 0x726F6C6F436762;
    v7 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x746867696568;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*v1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0x6F6C6F4374786574;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1D0F95B58()
{
  v1 = 0x6874646977;
  v2 = 7107189;
  if (*v0 != 2)
  {
    v2 = 0x726F6C6F436762;
  }

  if (*v0)
  {
    v1 = 0x746867696568;
  }

  if (*v0 > 1u)
  {
    v1 = v2;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return 0x6F6C6F4374786574;
  }
}

uint64_t sub_1D0F95C50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D0F9AA58();
  *a1 = result;
  return result;
}

uint64_t sub_1D0F95C84(uint64_t a1)
{
  v2 = sub_1D0F99528();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F95CC0(uint64_t a1)
{
  v2 = sub_1D0F99528();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppStoreDataProvider.Artwork.encode(to:)(void *a1)
{
  sub_1D0F9957C(0, &qword_1EE070AF8, sub_1D0F99528, &_s7ArtworkV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v18 = *(v1 + 16);
  v17 = *(v1 + 24);
  v8 = *(v1 + 32);
  v16[11] = *(v1 + 40);
  v16[12] = v8;
  v9 = *(v1 + 48);
  v16[9] = *(v1 + 56);
  v16[10] = v9;
  v10 = *(v1 + 64);
  v16[7] = *(v1 + 72);
  v16[8] = v10;
  v11 = *(v1 + 88);
  v16[5] = *(v1 + 80);
  v16[6] = v11;
  v12 = *(v1 + 104);
  v16[3] = *(v1 + 96);
  v16[4] = v12;
  v13 = *(v1 + 120);
  v16[1] = *(v1 + 112);
  v16[2] = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F99528();
  sub_1D0FF6438();
  v27 = 0;
  v14 = v19;
  sub_1D0FF61A8();
  if (!v14)
  {
    v26 = 1;
    sub_1D0FF61A8();
    v25 = 2;
    sub_1D0FF6188();
    v24 = 3;
    sub_1D0FF6188();
    v23 = 4;
    sub_1D0FF6188();
    v22 = 5;
    sub_1D0FF6188();
    v21 = 6;
    sub_1D0FF6188();
    v20 = 7;
    sub_1D0FF6188();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t AppStoreDataProvider.Artwork.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D0F9957C(0, &qword_1EE070B10, sub_1D0F99528, &_s7ArtworkV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v48 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - v7;
  v9 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1D0F99528();
  sub_1D0FF6428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v80);
  }

  v10 = v6;
  LOBYTE(v57) = 0;
  v11 = sub_1D0FF60E8();
  v79 = v12 & 1;
  LOBYTE(v57) = 1;
  v13 = sub_1D0FF60E8();
  v77 = v14 & 1;
  LOBYTE(v57) = 2;
  v15 = sub_1D0FF60C8();
  v17 = v16;
  v18 = v15;
  LOBYTE(v57) = 3;
  v19 = sub_1D0FF60C8();
  v47 = v20;
  v43 = v19;
  LOBYTE(v57) = 4;
  v45 = 0;
  v42 = sub_1D0FF60C8();
  v44 = v21;
  LOBYTE(v57) = 5;
  v41 = sub_1D0FF60C8();
  v46 = v22;
  LOBYTE(v57) = 6;
  v39 = sub_1D0FF60C8();
  v45 = v23;
  v75 = 7;
  v38 = sub_1D0FF60C8();
  v40 = 0;
  v25 = v24;
  v37 = v17;
  (*(v10 + 8))(v8, v48);
  *&v49 = v11;
  LODWORD(v48) = v79;
  BYTE8(v49) = v79;
  *(&v49 + 9) = *v78;
  HIDWORD(v49) = *&v78[3];
  *&v50 = v13;
  HIDWORD(v35) = v77;
  BYTE8(v50) = v77;
  HIDWORD(v50) = *&v76[3];
  *(&v50 + 9) = *v76;
  v36 = v18;
  v26 = v38;
  v51 = __PAIR128__(v37, v18);
  v27 = v46;
  v28 = v47;
  *&v52 = v43;
  *(&v52 + 1) = v47;
  *&v53 = v42;
  *(&v53 + 1) = v44;
  *&v54 = v41;
  *(&v54 + 1) = v46;
  *&v55 = v39;
  *(&v55 + 1) = v45;
  *&v56 = v38;
  *(&v56 + 1) = v25;
  v29 = v49;
  v30 = v50;
  v31 = v52;
  a2[2] = v51;
  a2[3] = v31;
  *a2 = v29;
  a2[1] = v30;
  v32 = v54;
  a2[4] = v53;
  a2[5] = v32;
  v33 = v56;
  a2[6] = v55;
  a2[7] = v33;
  sub_1D0F995E4(&v49, &v57);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  v57 = v11;
  v58 = v48;
  *v59 = *v78;
  *&v59[3] = *&v78[3];
  v60 = v13;
  v61 = BYTE4(v35);
  *v62 = *v76;
  *&v62[3] = *&v76[3];
  v63 = v36;
  v64 = v37;
  v65 = v43;
  v66 = v28;
  v67 = v42;
  v68 = v44;
  v69 = v41;
  v70 = v27;
  v71 = v39;
  v72 = v45;
  v73 = v26;
  v74 = v25;
  return sub_1D0F9961C(&v57);
}

uint64_t sub_1D0F9655C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D0FF6278() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D0F965EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 48);
  for (i = (a2 + 48); ; i += 3)
  {
    v6 = *(v3 - 1);
    v5 = *v3;
    v7 = *(i - 1);
    v8 = *i;
    if (v6)
    {
      if (!v7)
      {
        return 0;
      }

      v9 = *(v3 - 2) == *(i - 2) && v6 == v7;
      if (!v9 && (sub_1D0FF6278() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v7)
    {
      return 0;
    }

    if (v5 != 2)
    {
      break;
    }

    if (v8 != 2)
    {

      sub_1D0F969AC(2);

      sub_1D0F969AC(v8);
      sub_1D0F969AC(2);
      sub_1D0F969AC(v8);
      goto LABEL_24;
    }

    sub_1D0F969AC(2);
    sub_1D0F969AC(2);
    sub_1D0F98618(2);
LABEL_5:
    v3 += 3;
    if (!--v2)
    {
      return 1;
    }
  }

  v13 = v5;
  if (v8 != 2)
  {
    v12 = v8;

    sub_1D0F969AC(v5);

    sub_1D0F969AC(v8);
    sub_1D0F969AC(v5);
    sub_1D0F969AC(v8);
    sub_1D0F969AC(v5);
    v10 = _s16HealthExperience20AppStoreDataProviderC12RelationshipV2eeoiySbAE_AEtFZ_0(&v13, &v12);
    sub_1D0F98628(v12);
    sub_1D0F98628(v13);
    sub_1D0F98618(v5);

    sub_1D0F98618(v8);

    sub_1D0F98618(v5);
    if ((v10 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_1D0F969AC(v5);

  sub_1D0F969AC(2);
  sub_1D0F969AC(v5);
  sub_1D0F969AC(2);
  sub_1D0F969AC(v5);
  sub_1D0F98628(v5);
LABEL_24:
  sub_1D0F98618(v5);
  sub_1D0F98618(v8);

  sub_1D0F98618(v8);

  sub_1D0F98618(v5);
  return 0;
}

unint64_t sub_1D0F96820()
{
  result = qword_1EE06F228;
  if (!qword_1EE06F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F228);
  }

  return result;
}

unint64_t sub_1D0F96874()
{
  result = qword_1EC5FCD90;
  if (!qword_1EC5FCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCD90);
  }

  return result;
}

uint64_t sub_1D0F968C8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D0F99374(255, &qword_1EE06E488, &type metadata for AppStoreDataProvider.EditorialItem, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D0F96958()
{
  result = qword_1EE06F250;
  if (!qword_1EE06F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F250);
  }

  return result;
}

uint64_t sub_1D0F969AC(uint64_t result)
{
  if (result != 2)
  {
    return sub_1D0F969BC(result);
  }

  return result;
}

uint64_t sub_1D0F969BC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1D0F969CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v102 = v2;
  v103 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[11];
    v86 = v5[10];
    v87 = v8;
    v88 = v5[12];
    v9 = v5[7];
    v82 = v5[6];
    v83 = v9;
    v10 = v5[8];
    v85 = v5[9];
    v84 = v10;
    v11 = v5[3];
    v78 = v5[2];
    v79 = v11;
    v12 = v5[4];
    v81 = v5[5];
    v80 = v12;
    v13 = *v5;
    v77 = v5[1];
    v76 = v13;
    v14 = v13;
    v15 = v6[11];
    v99 = v6[10];
    v100 = v15;
    v101 = v6[12];
    v16 = v6[7];
    v95 = v6[6];
    v96 = v16;
    v17 = v6[8];
    v98 = v6[9];
    v97 = v17;
    v18 = v6[3];
    v91 = v6[2];
    v92 = v18;
    v19 = v6[4];
    v94 = v6[5];
    v93 = v19;
    v20 = *v6;
    v90 = v6[1];
    v89 = v20;
    if (*(&v14 + 1))
    {
      if (!*(&v20 + 1) || v14 != __PAIR128__(*(&v20 + 1), v89) && (sub_1D0FF6278() & 1) == 0)
      {
        return 0;
      }
    }

    else if (*(&v20 + 1))
    {
      return 0;
    }

    __src[8] = v85;
    __src[9] = v86;
    __src[10] = v87;
    __src[11] = v88;
    __src[4] = v81;
    __src[5] = v82;
    __src[6] = v83;
    __src[7] = v84;
    __src[0] = v77;
    __src[1] = v78;
    __src[2] = v79;
    __src[3] = v80;
    __src[20] = v98;
    __src[21] = v99;
    __src[22] = v100;
    __src[23] = v101;
    __src[16] = v94;
    __src[17] = v95;
    __src[18] = v96;
    __src[19] = v97;
    __src[12] = v90;
    __src[13] = v91;
    __src[14] = v92;
    __src[15] = v93;
    v75[8] = v85;
    v75[9] = v86;
    v75[10] = v87;
    v75[11] = v88;
    v75[4] = v81;
    v75[5] = v82;
    v75[6] = v83;
    v75[7] = v84;
    v75[0] = v77;
    v75[1] = v78;
    v75[2] = v79;
    v75[3] = v80;
    if (get_enum_tag_for_layout_string_16HealthExperience20AppStoreDataProviderC13iOSAttributesVSg_0(v75) != 1)
    {
      break;
    }

    v70 = __src[20];
    v71 = __src[21];
    v72 = __src[22];
    v73 = __src[23];
    v66 = __src[16];
    v67 = __src[17];
    v68 = __src[18];
    v69 = __src[19];
    v62 = __src[12];
    v63 = __src[13];
    v64 = __src[14];
    v65 = __src[15];
    if (get_enum_tag_for_layout_string_16HealthExperience20AppStoreDataProviderC13iOSAttributesVSg_0(&v62) != 1)
    {
      sub_1D0F98FBC(&v76, __dst);
      sub_1D0F98FBC(&v89, __dst);
      sub_1D0F99024(&v77, __dst, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
      sub_1D0F99024(&v90, __dst, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
      goto LABEL_23;
    }

    __dst[8] = __src[8];
    __dst[9] = __src[9];
    __dst[10] = __src[10];
    __dst[11] = __src[11];
    __dst[5] = __src[5];
    __dst[6] = __src[6];
    __dst[7] = __src[7];
    __dst[0] = __src[0];
    __dst[1] = __src[1];
    __dst[2] = __src[2];
    __dst[3] = __src[3];
    __dst[4] = __src[4];
    sub_1D0F99024(&v77, v60, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
    sub_1D0F99024(&v90, v60, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
    sub_1D0F9914C(__dst, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
LABEL_16:
    if (!i)
    {
      return 1;
    }

    v6 += 13;
    v5 += 13;
  }

  v60[8] = __src[8];
  v60[9] = __src[9];
  v60[10] = __src[10];
  v60[11] = __src[11];
  v60[4] = __src[4];
  v60[5] = __src[5];
  v60[6] = __src[6];
  v60[7] = __src[7];
  v60[0] = __src[0];
  v60[1] = __src[1];
  v60[2] = __src[2];
  v60[3] = __src[3];
  v56 = __src[8];
  v57 = __src[9];
  v58 = __src[10];
  v59 = __src[11];
  v52 = __src[4];
  v53 = __src[5];
  v54 = __src[6];
  v55 = __src[7];
  v48 = __src[0];
  v49 = __src[1];
  v50 = __src[2];
  v51 = __src[3];
  v70 = __src[20];
  v71 = __src[21];
  v72 = __src[22];
  v73 = __src[23];
  v66 = __src[16];
  v67 = __src[17];
  v68 = __src[18];
  v69 = __src[19];
  v62 = __src[12];
  v63 = __src[13];
  v64 = __src[14];
  v65 = __src[15];
  if (get_enum_tag_for_layout_string_16HealthExperience20AppStoreDataProviderC13iOSAttributesVSg_0(&v62) != 1)
  {
    v31 = __src[20];
    v32 = __src[21];
    v33 = __src[22];
    v34 = __src[23];
    v27 = __src[16];
    v28 = __src[17];
    v29 = __src[18];
    v30 = __src[19];
    v23 = __src[12];
    v24 = __src[13];
    v25 = __src[14];
    v26 = __src[15];
    sub_1D0F98FBC(&v76, __dst);
    sub_1D0F98FBC(&v89, __dst);
    sub_1D0F99024(&v77, __dst, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
    sub_1D0F99024(&v90, __dst, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
    sub_1D0F99024(v60, __dst, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
    v21 = _s16HealthExperience20AppStoreDataProviderC10AttributesV2eeoiySbAE_AEtFZ_0(&v48, &v23);
    v35[8] = v31;
    v35[9] = v32;
    v35[10] = v33;
    v35[11] = v34;
    v35[4] = v27;
    v35[5] = v28;
    v35[6] = v29;
    v35[7] = v30;
    v35[0] = v23;
    v35[1] = v24;
    v35[2] = v25;
    v35[3] = v26;
    sub_1D0F99248(v35);
    v44 = v56;
    v45 = v57;
    v46 = v58;
    v47 = v59;
    v40 = v52;
    v41 = v53;
    v42 = v54;
    v43 = v55;
    v36 = v48;
    v37 = v49;
    v38 = v50;
    v39 = v51;
    sub_1D0F99248(&v36);
    __dst[8] = __src[8];
    __dst[9] = __src[9];
    __dst[10] = __src[10];
    __dst[11] = __src[11];
    __dst[5] = __src[5];
    __dst[6] = __src[6];
    __dst[7] = __src[7];
    __dst[0] = __src[0];
    __dst[1] = __src[1];
    __dst[2] = __src[2];
    __dst[3] = __src[3];
    __dst[4] = __src[4];
    sub_1D0F9914C(__dst, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
    sub_1D0F98FF4(&v89);
    sub_1D0F98FF4(&v76);
    if ((v21 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_16;
  }

  v44 = __src[8];
  v45 = __src[9];
  v46 = __src[10];
  v47 = __src[11];
  v40 = __src[4];
  v41 = __src[5];
  v42 = __src[6];
  v43 = __src[7];
  v36 = __src[0];
  v37 = __src[1];
  v38 = __src[2];
  v39 = __src[3];
  sub_1D0F98FBC(&v76, __dst);
  sub_1D0F98FBC(&v89, __dst);
  sub_1D0F99024(&v77, __dst, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
  sub_1D0F99024(&v90, __dst, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
  sub_1D0F99024(v60, __dst, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
  sub_1D0F99248(&v36);
LABEL_23:
  memcpy(__dst, __src, sizeof(__dst));
  sub_1D0F9AB64(__dst, qword_1EC5FCE90, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
  sub_1D0F98FF4(&v89);
  sub_1D0F98FF4(&v76);
  return 0;
}

BOOL _s16HealthExperience20AppStoreDataProviderC7ArtworkV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(a1 + 56);
  v10 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 96);
  v64 = *(a1 + 80);
  v65 = *(a1 + 88);
  v14 = *(a1 + 104);
  v15 = *(a1 + 112);
  v16 = *(a1 + 120);
  v17 = *(a2 + 40);
  v19 = *(a2 + 48);
  v18 = *(a2 + 56);
  v21 = *(a2 + 64);
  v20 = *(a2 + 72);
  v23 = *(a2 + 80);
  v22 = *(a2 + 88);
  v24 = *(a2 + 104);
  v63 = *(a2 + 96);
  v26 = *(a2 + 112);
  v25 = *(a2 + 120);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v27 = *(a2 + 8);
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v5 == *(a2 + 16))
    {
      v28 = *(a2 + 24);
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v17)
    {
      return 0;
    }

    if (v7 != *(a2 + 32) || v8 != v17)
    {
      v59 = *(a2 + 120);
      v61 = v15;
      v55 = *(a2 + 112);
      v56 = v16;
      v54 = v13;
      v57 = v14;
      v29 = sub_1D0FF6278();
      v13 = v54;
      v14 = v57;
      v25 = v59;
      v26 = v55;
      v16 = v56;
      v15 = v61;
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v11)
  {
    if (!v18)
    {
      return 0;
    }

    if (v9 != v19 || v11 != v18)
    {
      v60 = v25;
      v62 = v15;
      v30 = v16;
      v31 = v26;
      v32 = v13;
      v58 = v14;
      v33 = sub_1D0FF6278();
      v14 = v58;
      v25 = v60;
      v13 = v32;
      v26 = v31;
      v16 = v30;
      v15 = v62;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v12)
  {
    if (!v20)
    {
      return 0;
    }

    if (v10 != v21 || v12 != v20)
    {
      v34 = v25;
      v35 = v15;
      v36 = v16;
      v37 = v26;
      v38 = v13;
      v39 = v14;
      v40 = sub_1D0FF6278();
      v14 = v39;
      v13 = v38;
      v26 = v37;
      v25 = v34;
      v16 = v36;
      v15 = v35;
      if ((v40 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v65)
  {
    if (!v22)
    {
      return 0;
    }

    if (v64 != v23 || v65 != v22)
    {
      v41 = v25;
      v42 = v15;
      v43 = v16;
      v44 = v26;
      v45 = v13;
      v46 = v14;
      v47 = sub_1D0FF6278();
      v14 = v46;
      v13 = v45;
      v26 = v44;
      v25 = v41;
      v16 = v43;
      v15 = v42;
      if ((v47 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v14)
  {
    if (!v24)
    {
      return 0;
    }

    if (v13 != v63 || v14 != v24)
    {
      v48 = v25;
      v49 = v15;
      v50 = v16;
      v51 = v26;
      v52 = sub_1D0FF6278();
      v26 = v51;
      v25 = v48;
      v16 = v50;
      v15 = v49;
      if ((v52 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v16)
  {
    return v25 && (v15 == v26 && v16 == v25 || (sub_1D0FF6278() & 1) != 0);
  }

  return !v25;
}

BOOL _s16HealthExperience20AppStoreDataProviderC13iOSAttributesV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 7);
  v121[4] = *(a1 + 6);
  v121[5] = v8;
  v9 = *(a1 + 9);
  v121[6] = *(a1 + 8);
  v121[7] = v9;
  v10 = *(a1 + 3);
  v121[0] = *(a1 + 2);
  v121[1] = v10;
  v11 = *(a1 + 5);
  v121[2] = *(a1 + 4);
  v121[3] = v11;
  v12 = *a2;
  v13 = a2[1];
  v15 = a2[2];
  v14 = a2[3];
  v16 = *(a2 + 9);
  v122[6] = *(a2 + 8);
  v122[7] = v16;
  v17 = *(a2 + 7);
  v122[4] = *(a2 + 6);
  v122[5] = v17;
  v18 = *(a2 + 5);
  v122[2] = *(a2 + 4);
  v122[3] = v18;
  v19 = *(a2 + 3);
  v122[0] = *(a2 + 2);
  v122[1] = v19;
  if (v5)
  {
    if (!v13 || (v4 != v12 || v5 != v13) && (sub_1D0FF6278() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v7)
  {
    if (!v14 || (v6 != v15 || v7 != v14) && (sub_1D0FF6278() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v20 = *(a1 + 5);
  v21 = *(a1 + 7);
  v108 = *(a1 + 6);
  v109 = v21;
  v22 = *(a1 + 7);
  v23 = *(a1 + 9);
  v110 = *(a1 + 8);
  v111 = v23;
  v24 = *(a1 + 3);
  v104 = *(a1 + 2);
  v105 = v24;
  v25 = *(a1 + 5);
  v27 = *(a1 + 2);
  v26 = *(a1 + 3);
  v106 = *(a1 + 4);
  v107 = v25;
  v28 = *(a2 + 4);
  v115 = *(a2 + 5);
  v114 = v28;
  v29 = *(a2 + 2);
  v113 = *(a2 + 3);
  v112 = v29;
  v30 = *(a2 + 8);
  v119 = *(a2 + 9);
  v118 = v30;
  v31 = *(a2 + 6);
  v117 = *(a2 + 7);
  v116 = v31;
  v120[3] = v20;
  v120[2] = v106;
  v120[1] = v26;
  v120[0] = v27;
  v120[7] = *(a1 + 9);
  v120[6] = v110;
  v120[5] = v22;
  v120[4] = v108;
  if (sub_1D0F9AAA4(v120) == 1)
  {
    v32 = *(a2 + 7);
    v84 = *(a2 + 6);
    v85 = v32;
    v33 = *(a2 + 9);
    v86 = *(a2 + 8);
    v87 = v33;
    v34 = *(a2 + 3);
    v80 = *(a2 + 2);
    v81 = v34;
    v35 = *(a2 + 5);
    v82 = *(a2 + 4);
    v83 = v35;
    if (sub_1D0F9AAA4(&v80) == 1)
    {
      v36 = *(a1 + 7);
      v100 = *(a1 + 6);
      v101 = v36;
      v37 = *(a1 + 9);
      v102 = *(a1 + 8);
      v103 = v37;
      v38 = *(a1 + 3);
      v96 = *(a1 + 2);
      v97 = v38;
      v39 = *(a1 + 5);
      v98 = *(a1 + 4);
      v99 = v39;
      sub_1D0F99024(v121, &v72, &qword_1EC5FCE18, &type metadata for AppStoreDataProvider.Artwork);
      sub_1D0F99024(v122, &v72, &qword_1EC5FCE18, &type metadata for AppStoreDataProvider.Artwork);
      sub_1D0F9914C(&v96, &qword_1EC5FCE18, &type metadata for AppStoreDataProvider.Artwork);
      return 1;
    }

    sub_1D0F99024(v121, &v96, &qword_1EC5FCE18, &type metadata for AppStoreDataProvider.Artwork);
    sub_1D0F99024(v122, &v96, &qword_1EC5FCE18, &type metadata for AppStoreDataProvider.Artwork);
    goto LABEL_21;
  }

  v40 = *(a1 + 7);
  v100 = *(a1 + 6);
  v101 = v40;
  v41 = *(a1 + 9);
  v102 = *(a1 + 8);
  v103 = v41;
  v42 = *(a1 + 3);
  v96 = *(a1 + 2);
  v97 = v42;
  v43 = *(a1 + 5);
  v98 = *(a1 + 4);
  v99 = v43;
  v72 = v96;
  v73 = v42;
  v74 = v98;
  v75 = v43;
  v76 = v100;
  v77 = v40;
  v78 = v102;
  v79 = v41;
  v44 = *(a2 + 5);
  v82 = *(a2 + 4);
  v83 = v44;
  v45 = *(a2 + 3);
  v80 = *(a2 + 2);
  v81 = v45;
  v46 = *(a2 + 9);
  v86 = *(a2 + 8);
  v87 = v46;
  v47 = *(a2 + 7);
  v84 = *(a2 + 6);
  v85 = v47;
  if (sub_1D0F9AAA4(&v80) == 1)
  {
    v48 = *(a1 + 7);
    v68 = *(a1 + 6);
    v69 = v48;
    v49 = *(a1 + 9);
    v70 = *(a1 + 8);
    v71 = v49;
    v50 = *(a1 + 3);
    v64 = *(a1 + 2);
    v65 = v50;
    v51 = *(a1 + 5);
    v66 = *(a1 + 4);
    v67 = v51;
    sub_1D0F99024(v121, v63, &qword_1EC5FCE18, &type metadata for AppStoreDataProvider.Artwork);
    sub_1D0F99024(v122, v63, &qword_1EC5FCE18, &type metadata for AppStoreDataProvider.Artwork);
    sub_1D0F99024(&v96, v63, &qword_1EC5FCE18, &type metadata for AppStoreDataProvider.Artwork);
    sub_1D0F9961C(&v64);
LABEL_21:
    v92 = v116;
    v93 = v117;
    v94 = v118;
    v95 = v119;
    v88 = v112;
    v89 = v113;
    v90 = v114;
    v91 = v115;
    v84 = v108;
    v85 = v109;
    v86 = v110;
    v87 = v111;
    v80 = v104;
    v81 = v105;
    v82 = v106;
    v83 = v107;
    sub_1D0F9AB64(&v80, &qword_1EC5FCE78, &qword_1EC5FCE18, &type metadata for AppStoreDataProvider.Artwork);
    return 0;
  }

  v53 = *(a2 + 7);
  v68 = *(a2 + 6);
  v69 = v53;
  v54 = *(a2 + 9);
  v70 = *(a2 + 8);
  v71 = v54;
  v55 = *(a2 + 3);
  v64 = *(a2 + 2);
  v65 = v55;
  v56 = *(a2 + 5);
  v66 = *(a2 + 4);
  v67 = v56;
  v57 = _s16HealthExperience20AppStoreDataProviderC7ArtworkV2eeoiySbAE_AEtFZ_0(&v72, &v64);
  v62[4] = v68;
  v62[5] = v69;
  v62[6] = v70;
  v62[7] = v71;
  v62[0] = v64;
  v62[1] = v65;
  v62[2] = v66;
  v62[3] = v67;
  sub_1D0F99024(v121, v63, &qword_1EC5FCE18, &type metadata for AppStoreDataProvider.Artwork);
  sub_1D0F99024(v122, v63, &qword_1EC5FCE18, &type metadata for AppStoreDataProvider.Artwork);
  sub_1D0F99024(&v96, v63, &qword_1EC5FCE18, &type metadata for AppStoreDataProvider.Artwork);
  sub_1D0F9961C(v62);
  v63[4] = v76;
  v63[5] = v77;
  v63[6] = v78;
  v63[7] = v79;
  v63[0] = v72;
  v63[1] = v73;
  v63[2] = v74;
  v63[3] = v75;
  sub_1D0F9961C(v63);
  v58 = *(a1 + 7);
  v68 = *(a1 + 6);
  v69 = v58;
  v59 = *(a1 + 9);
  v70 = *(a1 + 8);
  v71 = v59;
  v60 = *(a1 + 3);
  v64 = *(a1 + 2);
  v65 = v60;
  v61 = *(a1 + 5);
  v66 = *(a1 + 4);
  v67 = v61;
  sub_1D0F9914C(&v64, &qword_1EC5FCE18, &type metadata for AppStoreDataProvider.Artwork);
  return v57;
}

BOOL _s16HealthExperience20AppStoreDataProviderC8PlatformV2eeoiySbAE_AEtFZ_0(_OWORD *a1, _OWORD *a2)
{
  v4 = a1[7];
  v5 = a1[5];
  v110 = a1[6];
  v111 = v4;
  v6 = a1[7];
  v7 = a1[9];
  v112 = a1[8];
  v113 = v7;
  v8 = a1[3];
  v9 = a1[1];
  v106 = a1[2];
  v107 = v8;
  v10 = a1[3];
  v11 = a1[5];
  v108 = a1[4];
  v109 = v11;
  v12 = a1[1];
  v105[0] = *a1;
  v105[1] = v12;
  v13 = a2[7];
  v14 = a2[5];
  v119 = a2[6];
  v120 = v13;
  v15 = a2[7];
  v16 = a2[9];
  v121 = a2[8];
  v122 = v16;
  v17 = a2[3];
  v18 = a2[1];
  v115 = a2[2];
  v116 = v17;
  v19 = a2[3];
  v20 = a2[5];
  v117 = a2[4];
  v118 = v20;
  v21 = a2[1];
  v114[0] = *a2;
  v114[1] = v21;
  v22 = a1[7];
  __src[6] = a1[6];
  __src[7] = v22;
  v23 = a1[9];
  __src[8] = a1[8];
  __src[9] = v23;
  v24 = a1[3];
  __src[2] = a1[2];
  __src[3] = v24;
  v25 = a1[5];
  __src[4] = a1[4];
  __src[5] = v25;
  v26 = a1[1];
  __src[0] = *a1;
  __src[1] = v26;
  __src[16] = v119;
  __src[17] = v15;
  v27 = a2[9];
  __src[18] = v121;
  __src[19] = v27;
  __src[12] = v115;
  __src[13] = v19;
  __src[14] = v117;
  __src[15] = v14;
  __src[10] = v114[0];
  __src[11] = v18;
  v123[6] = v110;
  v123[7] = v6;
  v28 = a1[9];
  v123[8] = v112;
  v123[9] = v28;
  v123[2] = v106;
  v123[3] = v10;
  v123[4] = v108;
  v123[5] = v5;
  v123[0] = v105[0];
  v123[1] = v9;
  if (get_enum_tag_for_layout_string_16HealthExperience20AppStoreDataProviderC13iOSAttributesVSg_0(v123) != 1)
  {
    v40 = a1[7];
    v41 = a1[5];
    v100 = a1[6];
    v101 = v40;
    v42 = a1[7];
    v43 = a1[9];
    v102 = a1[8];
    v103 = v43;
    v44 = a1[3];
    v45 = a1[1];
    v96 = a1[2];
    v97 = v44;
    v46 = a1[3];
    v47 = a1[5];
    v98 = a1[4];
    v99 = v47;
    v48 = a1[1];
    v94 = *a1;
    v95 = v48;
    v89 = v100;
    v90 = v42;
    v49 = a1[9];
    v91 = v102;
    v92 = v49;
    v85 = v96;
    v86 = v46;
    v87 = v98;
    v88 = v41;
    v83 = v94;
    v84 = v45;
    v50 = a2[7];
    __dst[6] = a2[6];
    __dst[7] = v50;
    v51 = a2[9];
    __dst[8] = a2[8];
    __dst[9] = v51;
    v52 = a2[3];
    __dst[2] = a2[2];
    __dst[3] = v52;
    v53 = a2[5];
    __dst[4] = a2[4];
    __dst[5] = v53;
    v54 = a2[1];
    __dst[0] = *a2;
    __dst[1] = v54;
    if (get_enum_tag_for_layout_string_16HealthExperience20AppStoreDataProviderC13iOSAttributesVSg_0(__dst) != 1)
    {
      v60 = a2[7];
      v79 = a2[6];
      v80 = v60;
      v61 = a2[9];
      v81 = a2[8];
      v82 = v61;
      v62 = a2[3];
      v75 = a2[2];
      v76 = v62;
      v63 = a2[5];
      v77 = a2[4];
      v78 = v63;
      v64 = a2[1];
      v73 = *a2;
      v74 = v64;
      sub_1D0F99024(v105, v72, &qword_1EC5FCE00, &type metadata for AppStoreDataProvider.iOSAttributes);
      sub_1D0F99024(v114, v72, &qword_1EC5FCE00, &type metadata for AppStoreDataProvider.iOSAttributes);
      sub_1D0F99024(&v94, v72, &qword_1EC5FCE00, &type metadata for AppStoreDataProvider.iOSAttributes);
      v39 = _s16HealthExperience20AppStoreDataProviderC13iOSAttributesV2eeoiySbAE_AEtFZ_0(&v83, &v73);
      v71[6] = v79;
      v71[7] = v80;
      v71[8] = v81;
      v71[9] = v82;
      v71[2] = v75;
      v71[3] = v76;
      v71[4] = v77;
      v71[5] = v78;
      v71[0] = v73;
      v71[1] = v74;
      sub_1D0F994F8(v71);
      v72[6] = v89;
      v72[7] = v90;
      v72[8] = v91;
      v72[9] = v92;
      v72[2] = v85;
      v72[3] = v86;
      v72[4] = v87;
      v72[5] = v88;
      v72[0] = v83;
      v72[1] = v84;
      sub_1D0F994F8(v72);
      v65 = a1[7];
      v79 = a1[6];
      v80 = v65;
      v66 = a1[9];
      v81 = a1[8];
      v82 = v66;
      v67 = a1[3];
      v75 = a1[2];
      v76 = v67;
      v68 = a1[5];
      v77 = a1[4];
      v78 = v68;
      v69 = a1[1];
      v73 = *a1;
      v74 = v69;
      sub_1D0F9914C(&v73, &qword_1EC5FCE00, &type metadata for AppStoreDataProvider.iOSAttributes);
      return v39;
    }

    v55 = a1[7];
    v79 = a1[6];
    v80 = v55;
    v56 = a1[9];
    v81 = a1[8];
    v82 = v56;
    v57 = a1[3];
    v75 = a1[2];
    v76 = v57;
    v58 = a1[5];
    v77 = a1[4];
    v78 = v58;
    v59 = a1[1];
    v73 = *a1;
    v74 = v59;
    sub_1D0F99024(v105, v72, &qword_1EC5FCE00, &type metadata for AppStoreDataProvider.iOSAttributes);
    sub_1D0F99024(v114, v72, &qword_1EC5FCE00, &type metadata for AppStoreDataProvider.iOSAttributes);
    sub_1D0F99024(&v94, v72, &qword_1EC5FCE00, &type metadata for AppStoreDataProvider.iOSAttributes);
    sub_1D0F994F8(&v73);
    goto LABEL_7;
  }

  v29 = a2[7];
  __dst[6] = a2[6];
  __dst[7] = v29;
  v30 = a2[9];
  __dst[8] = a2[8];
  __dst[9] = v30;
  v31 = a2[3];
  __dst[2] = a2[2];
  __dst[3] = v31;
  v32 = a2[5];
  __dst[4] = a2[4];
  __dst[5] = v32;
  v33 = a2[1];
  __dst[0] = *a2;
  __dst[1] = v33;
  if (get_enum_tag_for_layout_string_16HealthExperience20AppStoreDataProviderC13iOSAttributesVSg_0(__dst) != 1)
  {
    sub_1D0F99024(v105, &v94, &qword_1EC5FCE00, &type metadata for AppStoreDataProvider.iOSAttributes);
    sub_1D0F99024(v114, &v94, &qword_1EC5FCE00, &type metadata for AppStoreDataProvider.iOSAttributes);
LABEL_7:
    memcpy(__dst, __src, sizeof(__dst));
    sub_1D0F9AB64(__dst, &qword_1EC5FCE80, &qword_1EC5FCE00, &type metadata for AppStoreDataProvider.iOSAttributes);
    return 0;
  }

  v34 = a1[7];
  v100 = a1[6];
  v101 = v34;
  v35 = a1[9];
  v102 = a1[8];
  v103 = v35;
  v36 = a1[3];
  v96 = a1[2];
  v97 = v36;
  v37 = a1[5];
  v98 = a1[4];
  v99 = v37;
  v38 = a1[1];
  v94 = *a1;
  v95 = v38;
  sub_1D0F99024(v105, &v83, &qword_1EC5FCE00, &type metadata for AppStoreDataProvider.iOSAttributes);
  sub_1D0F99024(v114, &v83, &qword_1EC5FCE00, &type metadata for AppStoreDataProvider.iOSAttributes);
  sub_1D0F9914C(&v94, &qword_1EC5FCE00, &type metadata for AppStoreDataProvider.iOSAttributes);
  return 1;
}

uint64_t _s16HealthExperience20AppStoreDataProviderC10AttributesV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 8);
  v114[6] = *(a1 + 7);
  v114[7] = v6;
  v7 = *(a1 + 10);
  v114[8] = *(a1 + 9);
  v114[9] = v7;
  v8 = *(a1 + 4);
  v114[2] = *(a1 + 3);
  v114[3] = v8;
  v9 = *(a1 + 6);
  v114[4] = *(a1 + 5);
  v114[5] = v9;
  v10 = *(a1 + 2);
  v114[0] = *(a1 + 1);
  v114[1] = v10;
  v11 = a1[22];
  v12 = a1[23];
  v13 = *a2;
  v14 = a2[1];
  v15 = *(a2 + 8);
  v115[6] = *(a2 + 7);
  v115[7] = v15;
  v16 = *(a2 + 10);
  v115[8] = *(a2 + 9);
  v115[9] = v16;
  v17 = *(a2 + 4);
  v115[2] = *(a2 + 3);
  v115[3] = v17;
  v18 = *(a2 + 6);
  v115[4] = *(a2 + 5);
  v115[5] = v18;
  v19 = *(a2 + 2);
  v115[0] = *(a2 + 1);
  v115[1] = v19;
  v21 = a2[22];
  v20 = a2[23];
  if (v5)
  {
    if (!v14 || (v4 != v13 || v5 != v14) && (sub_1D0FF6278() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v22 = *(a1 + 8);
  v23 = *(a1 + 6);
  __src[6] = *(a1 + 7);
  __src[7] = v22;
  v24 = *(a1 + 8);
  v25 = *(a1 + 10);
  __src[8] = *(a1 + 9);
  __src[9] = v25;
  v26 = *(a1 + 4);
  v27 = *(a1 + 2);
  __src[2] = *(a1 + 3);
  __src[3] = v26;
  v28 = *(a1 + 4);
  v29 = *(a1 + 6);
  __src[4] = *(a1 + 5);
  __src[5] = v29;
  v30 = *(a1 + 2);
  __src[0] = *(a1 + 1);
  __src[1] = v30;
  v31 = *(a2 + 8);
  __src[16] = *(a2 + 7);
  __src[17] = v31;
  v32 = *(a2 + 10);
  __src[18] = *(a2 + 9);
  __src[19] = v32;
  v33 = *(a2 + 4);
  __src[12] = *(a2 + 3);
  __src[13] = v33;
  v34 = *(a2 + 6);
  __src[14] = *(a2 + 5);
  __src[15] = v34;
  v35 = *(a2 + 2);
  __src[10] = *(a2 + 1);
  __src[11] = v35;
  v113[6] = __src[6];
  v113[7] = v24;
  v36 = *(a1 + 10);
  v113[8] = __src[8];
  v113[9] = v36;
  v113[2] = __src[2];
  v113[3] = v28;
  v113[4] = __src[4];
  v113[5] = v23;
  v113[0] = __src[0];
  v113[1] = v27;
  if (sub_1D0F9AB40(v113) != 1)
  {
    v47 = *(a1 + 8);
    v48 = *(a1 + 6);
    v108 = *(a1 + 7);
    v109 = v47;
    v49 = *(a1 + 8);
    v50 = *(a1 + 10);
    v110 = *(a1 + 9);
    v111 = v50;
    v51 = *(a1 + 4);
    v52 = *(a1 + 2);
    v104 = *(a1 + 3);
    v105 = v51;
    v53 = *(a1 + 4);
    v54 = *(a1 + 6);
    v106 = *(a1 + 5);
    v107 = v54;
    v55 = *(a1 + 2);
    v102 = *(a1 + 1);
    v103 = v55;
    v97 = v108;
    v98 = v49;
    v56 = *(a1 + 10);
    v99 = v110;
    v100 = v56;
    v93 = v104;
    v94 = v53;
    v95 = v106;
    v96 = v48;
    v91 = v102;
    v92 = v52;
    v57 = *(a2 + 8);
    __dst[6] = *(a2 + 7);
    __dst[7] = v57;
    v58 = *(a2 + 10);
    __dst[8] = *(a2 + 9);
    __dst[9] = v58;
    v59 = *(a2 + 4);
    __dst[2] = *(a2 + 3);
    __dst[3] = v59;
    v60 = *(a2 + 6);
    __dst[4] = *(a2 + 5);
    __dst[5] = v60;
    v61 = *(a2 + 2);
    __dst[0] = *(a2 + 1);
    __dst[1] = v61;
    if (sub_1D0F9AB40(__dst) != 1)
    {
      v68 = *(a2 + 8);
      v87 = *(a2 + 7);
      v88 = v68;
      v69 = *(a2 + 10);
      v89 = *(a2 + 9);
      v90 = v69;
      v70 = *(a2 + 4);
      v83 = *(a2 + 3);
      v84 = v70;
      v71 = *(a2 + 6);
      v85 = *(a2 + 5);
      v86 = v71;
      v72 = *(a2 + 2);
      v81 = *(a2 + 1);
      v82 = v72;
      sub_1D0F99024(v114, v80, &qword_1EC5FCDE8, &type metadata for AppStoreDataProvider.Platform);
      sub_1D0F99024(v115, v80, &qword_1EC5FCDE8, &type metadata for AppStoreDataProvider.Platform);
      sub_1D0F99024(&v102, v80, &qword_1EC5FCDE8, &type metadata for AppStoreDataProvider.Platform);
      v73 = _s16HealthExperience20AppStoreDataProviderC8PlatformV2eeoiySbAE_AEtFZ_0(&v91, &v81);
      v79[6] = v87;
      v79[7] = v88;
      v79[8] = v89;
      v79[9] = v90;
      v79[2] = v83;
      v79[3] = v84;
      v79[4] = v85;
      v79[5] = v86;
      v79[0] = v81;
      v79[1] = v82;
      sub_1D0F9ABC0(v79);
      v80[6] = v97;
      v80[7] = v98;
      v80[8] = v99;
      v80[9] = v100;
      v80[2] = v93;
      v80[3] = v94;
      v80[4] = v95;
      v80[5] = v96;
      v80[0] = v91;
      v80[1] = v92;
      sub_1D0F9ABC0(v80);
      v74 = *(a1 + 8);
      v87 = *(a1 + 7);
      v88 = v74;
      v75 = *(a1 + 10);
      v89 = *(a1 + 9);
      v90 = v75;
      v76 = *(a1 + 4);
      v83 = *(a1 + 3);
      v84 = v76;
      v77 = *(a1 + 6);
      v85 = *(a1 + 5);
      v86 = v77;
      v78 = *(a1 + 2);
      v81 = *(a1 + 1);
      v82 = v78;
      sub_1D0F9914C(&v81, &qword_1EC5FCDE8, &type metadata for AppStoreDataProvider.Platform);
      if (!v73)
      {
        return 0;
      }

      goto LABEL_18;
    }

    v62 = *(a1 + 8);
    v87 = *(a1 + 7);
    v88 = v62;
    v63 = *(a1 + 10);
    v89 = *(a1 + 9);
    v90 = v63;
    v64 = *(a1 + 4);
    v83 = *(a1 + 3);
    v84 = v64;
    v65 = *(a1 + 6);
    v85 = *(a1 + 5);
    v86 = v65;
    v66 = *(a1 + 2);
    v81 = *(a1 + 1);
    v82 = v66;
    sub_1D0F99024(v114, v80, &qword_1EC5FCDE8, &type metadata for AppStoreDataProvider.Platform);
    sub_1D0F99024(v115, v80, &qword_1EC5FCDE8, &type metadata for AppStoreDataProvider.Platform);
    sub_1D0F99024(&v102, v80, &qword_1EC5FCDE8, &type metadata for AppStoreDataProvider.Platform);
    sub_1D0F9ABC0(&v81);
LABEL_14:
    memcpy(__dst, __src, sizeof(__dst));
    sub_1D0F9AB64(__dst, &qword_1EC5FCE88, &qword_1EC5FCDE8, &type metadata for AppStoreDataProvider.Platform);
    return 0;
  }

  v37 = *(a2 + 8);
  __dst[6] = *(a2 + 7);
  __dst[7] = v37;
  v38 = *(a2 + 10);
  __dst[8] = *(a2 + 9);
  __dst[9] = v38;
  v39 = *(a2 + 4);
  __dst[2] = *(a2 + 3);
  __dst[3] = v39;
  v40 = *(a2 + 6);
  __dst[4] = *(a2 + 5);
  __dst[5] = v40;
  v41 = *(a2 + 2);
  __dst[0] = *(a2 + 1);
  __dst[1] = v41;
  if (sub_1D0F9AB40(__dst) != 1)
  {
    sub_1D0F99024(v114, &v102, &qword_1EC5FCDE8, &type metadata for AppStoreDataProvider.Platform);
    sub_1D0F99024(v115, &v102, &qword_1EC5FCDE8, &type metadata for AppStoreDataProvider.Platform);
    goto LABEL_14;
  }

  v42 = *(a1 + 8);
  v108 = *(a1 + 7);
  v109 = v42;
  v43 = *(a1 + 10);
  v110 = *(a1 + 9);
  v111 = v43;
  v44 = *(a1 + 4);
  v104 = *(a1 + 3);
  v105 = v44;
  v45 = *(a1 + 6);
  v106 = *(a1 + 5);
  v107 = v45;
  v46 = *(a1 + 2);
  v102 = *(a1 + 1);
  v103 = v46;
  sub_1D0F99024(v114, &v91, &qword_1EC5FCDE8, &type metadata for AppStoreDataProvider.Platform);
  sub_1D0F99024(v115, &v91, &qword_1EC5FCDE8, &type metadata for AppStoreDataProvider.Platform);
  sub_1D0F9914C(&v102, &qword_1EC5FCDE8, &type metadata for AppStoreDataProvider.Platform);
LABEL_18:
  if (v12)
  {
    if (v20 && (v11 == v21 && v12 == v20 || (sub_1D0FF6278() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v20)
  {
    return 1;
  }

  return 0;
}

uint64_t _s16HealthExperience20AppStoreDataProviderC12RelationshipV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 != 1)
  {
    if (v3 == 1)
    {
      sub_1D0F969BC(*a1);
      sub_1D0F969BC(1);
      sub_1D0F969BC(v2);

LABEL_8:
      sub_1D0F98628(v2);
      v4 = 0;
      v2 = v3;
      goto LABEL_18;
    }

    if (v2)
    {
      v5 = *a1;
      if (v3)
      {
        sub_1D0F969BC(v5);
        sub_1D0F969BC(v3);
        sub_1D0F969BC(v2);
        sub_1D0F969BC(v3);
        v6 = sub_1D0F969CC(v2, v3);
        sub_1D0F98628(v3);
        sub_1D0F98628(v3);
        if (v6)
        {

          goto LABEL_4;
        }

LABEL_17:

        v4 = 0;
        goto LABEL_18;
      }

      sub_1D0F969BC(v5);
      v7 = v2;
    }

    else
    {
      sub_1D0F969BC(0);
      v7 = 0;
      if (!v3)
      {
        sub_1D0F969BC(0);
        sub_1D0F969BC(0);
        sub_1D0F98628(0);

        goto LABEL_4;
      }
    }

    sub_1D0F969BC(v3);
    sub_1D0F969BC(v7);
    sub_1D0F98628(v3);
    goto LABEL_17;
  }

  sub_1D0F969BC(1);
  if (v3 != 1)
  {
    sub_1D0F969BC(v3);
    goto LABEL_8;
  }

  v2 = 1;
  sub_1D0F969BC(1);
LABEL_4:
  v4 = 1;
LABEL_18:
  sub_1D0F98628(v2);
  return v4;
}

BOOL _s16HealthExperience20AppStoreDataProviderC13EditorialItemV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (!v5)
    {
      return 0;
    }

    v7 = *a1 == *a2 && v3 == v5;
    if (!v7 && (sub_1D0FF6278() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v4 == 2)
  {
    sub_1D0F969AC(2);
    if (v6 == 2)
    {
      sub_1D0F969AC(2);
      sub_1D0F98618(2);
      return 1;
    }

    sub_1D0F969AC(v6);
    goto LABEL_16;
  }

  v11 = v4;
  if (v6 == 2)
  {
    sub_1D0F969AC(v4);
    sub_1D0F969AC(2);
    sub_1D0F969AC(v4);
    sub_1D0F98628(v4);
LABEL_16:
    sub_1D0F98618(v4);
    sub_1D0F98618(v6);
    return 0;
  }

  v10 = v6;
  sub_1D0F969AC(v4);
  sub_1D0F969AC(v6);
  sub_1D0F969AC(v4);
  v9 = _s16HealthExperience20AppStoreDataProviderC12RelationshipV2eeoiySbAE_AEtFZ_0(&v11, &v10);
  sub_1D0F98628(v10);
  sub_1D0F98628(v11);
  sub_1D0F98618(v4);
  return (v9 & 1) != 0;
}

unint64_t sub_1D0F98570()
{
  result = qword_1EE06F268;
  if (!qword_1EE06F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F268);
  }

  return result;
}

unint64_t sub_1D0F985C4()
{
  result = qword_1EC5FCDA0;
  if (!qword_1EC5FCDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCDA0);
  }

  return result;
}

uint64_t sub_1D0F98618(uint64_t result)
{
  if (result != 2)
  {
    return sub_1D0F98628(result);
  }

  return result;
}

uint64_t sub_1D0F98628(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1D0F98638()
{
  result = qword_1EE06F270;
  if (!qword_1EE06F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F270);
  }

  return result;
}

unint64_t sub_1D0F9868C()
{
  result = qword_1EE06F288;
  if (!qword_1EE06F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F288);
  }

  return result;
}

unint64_t sub_1D0F986E0()
{
  result = qword_1EC5FCDB0;
  if (!qword_1EC5FCDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCDB0);
  }

  return result;
}

unint64_t sub_1D0F98734()
{
  result = qword_1EE06F290;
  if (!qword_1EE06F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F290);
  }

  return result;
}

unint64_t sub_1D0F98788()
{
  result = qword_1EE06F2A8;
  if (!qword_1EE06F2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F2A8);
  }

  return result;
}

unint64_t sub_1D0F987DC()
{
  result = qword_1EC5FCDC8;
  if (!qword_1EC5FCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCDC8);
  }

  return result;
}

uint64_t sub_1D0F98830(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D0F99374(255, &qword_1EE06E478, &type metadata for AppStoreDataProvider.CardItem, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D0F988C0()
{
  result = qword_1EE06F1E0;
  if (!qword_1EE06F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F1E0);
  }

  return result;
}

BOOL _s16HealthExperience20AppStoreDataProviderC8CardItemV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 10);
  v131[8] = *(a1 + 9);
  v131[9] = v6;
  v7 = *(a1 + 12);
  v131[10] = *(a1 + 11);
  v131[11] = v7;
  v8 = *(a1 + 6);
  v131[4] = *(a1 + 5);
  v131[5] = v8;
  v9 = *(a1 + 8);
  v131[6] = *(a1 + 7);
  v131[7] = v9;
  v10 = *(a1 + 2);
  v131[0] = *(a1 + 1);
  v131[1] = v10;
  v11 = *(a1 + 4);
  v131[2] = *(a1 + 3);
  v131[3] = v11;
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 10);
  v132[8] = *(a2 + 9);
  v132[9] = v14;
  v15 = *(a2 + 12);
  v132[10] = *(a2 + 11);
  v132[11] = v15;
  v16 = *(a2 + 6);
  v132[4] = *(a2 + 5);
  v132[5] = v16;
  v17 = *(a2 + 8);
  v132[6] = *(a2 + 7);
  v132[7] = v17;
  v18 = *(a2 + 2);
  v132[0] = *(a2 + 1);
  v132[1] = v18;
  v19 = *(a2 + 4);
  v132[2] = *(a2 + 3);
  v132[3] = v19;
  if (v5)
  {
    if (!v13 || (v4 != v12 || v5 != v13) && (sub_1D0FF6278() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v21 = *(a1 + 10);
  v22 = *(a1 + 8);
  __src[8] = *(a1 + 9);
  __src[9] = v21;
  v23 = *(a1 + 10);
  v24 = *(a1 + 12);
  __src[10] = *(a1 + 11);
  __src[11] = v24;
  v25 = *(a1 + 6);
  v26 = *(a1 + 4);
  __src[4] = *(a1 + 5);
  __src[5] = v25;
  v27 = *(a1 + 6);
  v28 = *(a1 + 8);
  __src[6] = *(a1 + 7);
  __src[7] = v28;
  v29 = *(a1 + 2);
  __src[0] = *(a1 + 1);
  __src[1] = v29;
  v30 = *(a1 + 4);
  v32 = *(a1 + 1);
  v31 = *(a1 + 2);
  __src[2] = *(a1 + 3);
  __src[3] = v30;
  v33 = *(a2 + 10);
  __src[20] = *(a2 + 9);
  __src[21] = v33;
  v34 = *(a2 + 12);
  __src[22] = *(a2 + 11);
  __src[23] = v34;
  v35 = *(a2 + 6);
  __src[16] = *(a2 + 5);
  __src[17] = v35;
  v36 = *(a2 + 8);
  __src[18] = *(a2 + 7);
  __src[19] = v36;
  v37 = *(a2 + 2);
  __src[12] = *(a2 + 1);
  __src[13] = v37;
  v38 = *(a2 + 4);
  __src[14] = *(a2 + 3);
  __src[15] = v38;
  v130[8] = __src[8];
  v130[9] = v23;
  v39 = *(a1 + 12);
  v130[10] = __src[10];
  v130[11] = v39;
  v130[4] = __src[4];
  v130[5] = v27;
  v130[6] = __src[6];
  v130[7] = v22;
  v130[0] = v32;
  v130[1] = v31;
  v130[2] = __src[2];
  v130[3] = v26;
  if (get_enum_tag_for_layout_string_16HealthExperience20AppStoreDataProviderC13iOSAttributesVSg_0(v130) != 1)
  {
    v52 = *(a1 + 10);
    v53 = *(a1 + 8);
    v125 = *(a1 + 9);
    v126 = v52;
    v54 = *(a1 + 10);
    v55 = *(a1 + 12);
    v127 = *(a1 + 11);
    v128 = v55;
    v56 = *(a1 + 6);
    v57 = *(a1 + 4);
    v121 = *(a1 + 5);
    v122 = v56;
    v58 = *(a1 + 6);
    v59 = *(a1 + 8);
    v123 = *(a1 + 7);
    v124 = v59;
    v60 = *(a1 + 2);
    v117 = *(a1 + 1);
    v118 = v60;
    v61 = *(a1 + 4);
    v63 = *(a1 + 1);
    v62 = *(a1 + 2);
    v119 = *(a1 + 3);
    v120 = v61;
    v112 = v125;
    v113 = v54;
    v64 = *(a1 + 12);
    v114 = v127;
    v115 = v64;
    v108 = v121;
    v109 = v58;
    v110 = v123;
    v111 = v53;
    v104 = v63;
    v105 = v62;
    v106 = v119;
    v107 = v57;
    v65 = *(a2 + 10);
    __dst[8] = *(a2 + 9);
    __dst[9] = v65;
    v66 = *(a2 + 12);
    __dst[10] = *(a2 + 11);
    __dst[11] = v66;
    v67 = *(a2 + 6);
    __dst[4] = *(a2 + 5);
    __dst[5] = v67;
    v68 = *(a2 + 8);
    __dst[6] = *(a2 + 7);
    __dst[7] = v68;
    v69 = *(a2 + 2);
    __dst[0] = *(a2 + 1);
    __dst[1] = v69;
    v70 = *(a2 + 4);
    __dst[2] = *(a2 + 3);
    __dst[3] = v70;
    if (get_enum_tag_for_layout_string_16HealthExperience20AppStoreDataProviderC13iOSAttributesVSg_0(__dst) == 1)
    {
      v71 = *(a1 + 10);
      v100 = *(a1 + 9);
      v101 = v71;
      v72 = *(a1 + 12);
      v102 = *(a1 + 11);
      v103 = v72;
      v73 = *(a1 + 6);
      v96 = *(a1 + 5);
      v97 = v73;
      v74 = *(a1 + 8);
      v98 = *(a1 + 7);
      v99 = v74;
      v75 = *(a1 + 2);
      v92 = *(a1 + 1);
      v93 = v75;
      v76 = *(a1 + 4);
      v94 = *(a1 + 3);
      v95 = v76;
      sub_1D0F99024(v131, v91, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
      sub_1D0F99024(v132, v91, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
      sub_1D0F99024(&v117, v91, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
      sub_1D0F99248(&v92);
LABEL_15:
      memcpy(__dst, __src, sizeof(__dst));
      sub_1D0F9AB64(__dst, qword_1EC5FCE90, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
      return 0;
    }

    v77 = *(a2 + 10);
    v100 = *(a2 + 9);
    v101 = v77;
    v78 = *(a2 + 12);
    v102 = *(a2 + 11);
    v103 = v78;
    v79 = *(a2 + 6);
    v96 = *(a2 + 5);
    v97 = v79;
    v80 = *(a2 + 8);
    v98 = *(a2 + 7);
    v99 = v80;
    v81 = *(a2 + 2);
    v92 = *(a2 + 1);
    v93 = v81;
    v82 = *(a2 + 4);
    v94 = *(a2 + 3);
    v95 = v82;
    sub_1D0F99024(v131, v91, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
    sub_1D0F99024(v132, v91, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
    sub_1D0F99024(&v117, v91, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
    v83 = _s16HealthExperience20AppStoreDataProviderC10AttributesV2eeoiySbAE_AEtFZ_0(&v104, &v92);
    v90[8] = v100;
    v90[9] = v101;
    v90[10] = v102;
    v90[11] = v103;
    v90[4] = v96;
    v90[5] = v97;
    v90[6] = v98;
    v90[7] = v99;
    v90[0] = v92;
    v90[1] = v93;
    v90[2] = v94;
    v90[3] = v95;
    sub_1D0F99248(v90);
    v91[8] = v112;
    v91[9] = v113;
    v91[10] = v114;
    v91[11] = v115;
    v91[4] = v108;
    v91[5] = v109;
    v91[6] = v110;
    v91[7] = v111;
    v91[0] = v104;
    v91[1] = v105;
    v91[2] = v106;
    v91[3] = v107;
    sub_1D0F99248(v91);
    v84 = *(a1 + 10);
    v100 = *(a1 + 9);
    v101 = v84;
    v85 = *(a1 + 12);
    v102 = *(a1 + 11);
    v103 = v85;
    v86 = *(a1 + 6);
    v96 = *(a1 + 5);
    v97 = v86;
    v87 = *(a1 + 8);
    v98 = *(a1 + 7);
    v99 = v87;
    v88 = *(a1 + 2);
    v92 = *(a1 + 1);
    v93 = v88;
    v89 = *(a1 + 4);
    v94 = *(a1 + 3);
    v95 = v89;
    sub_1D0F9914C(&v92, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
    return (v83 & 1) != 0;
  }

  v40 = *(a2 + 10);
  __dst[8] = *(a2 + 9);
  __dst[9] = v40;
  v41 = *(a2 + 12);
  __dst[10] = *(a2 + 11);
  __dst[11] = v41;
  v42 = *(a2 + 6);
  __dst[4] = *(a2 + 5);
  __dst[5] = v42;
  v43 = *(a2 + 8);
  __dst[6] = *(a2 + 7);
  __dst[7] = v43;
  v44 = *(a2 + 2);
  __dst[0] = *(a2 + 1);
  __dst[1] = v44;
  v45 = *(a2 + 4);
  __dst[2] = *(a2 + 3);
  __dst[3] = v45;
  if (get_enum_tag_for_layout_string_16HealthExperience20AppStoreDataProviderC13iOSAttributesVSg_0(__dst) != 1)
  {
    sub_1D0F99024(v131, &v117, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
    sub_1D0F99024(v132, &v117, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
    goto LABEL_15;
  }

  v46 = *(a1 + 10);
  v125 = *(a1 + 9);
  v126 = v46;
  v47 = *(a1 + 12);
  v127 = *(a1 + 11);
  v128 = v47;
  v48 = *(a1 + 6);
  v121 = *(a1 + 5);
  v122 = v48;
  v49 = *(a1 + 8);
  v123 = *(a1 + 7);
  v124 = v49;
  v50 = *(a1 + 2);
  v117 = *(a1 + 1);
  v118 = v50;
  v51 = *(a1 + 4);
  v119 = *(a1 + 3);
  v120 = v51;
  sub_1D0F99024(v131, &v104, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
  sub_1D0F99024(v132, &v104, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
  sub_1D0F9914C(&v117, &qword_1EC5FCDD0, &type metadata for AppStoreDataProvider.Attributes);
  return 1;
}

unint64_t sub_1D0F98EC0()
{
  result = qword_1EE06F1F8;
  if (!qword_1EE06F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F1F8);
  }

  return result;
}

unint64_t sub_1D0F98F14()
{
  result = qword_1EC5FCDE0;
  if (!qword_1EC5FCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCDE0);
  }

  return result;
}

unint64_t sub_1D0F98F68()
{
  result = qword_1EE06F2B0;
  if (!qword_1EE06F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F2B0);
  }

  return result;
}

uint64_t sub_1D0F99024(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D0F99374(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D0F990A4()
{
  result = qword_1EE06F2C8;
  if (!qword_1EE06F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F2C8);
  }

  return result;
}

unint64_t sub_1D0F990F8()
{
  result = qword_1EC5FCDF8;
  if (!qword_1EC5FCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCDF8);
  }

  return result;
}

uint64_t sub_1D0F9914C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D0F99374(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D0F991BC()
{
  result = qword_1EE06F1C0;
  if (!qword_1EE06F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F1C0);
  }

  return result;
}

unint64_t sub_1D0F99278()
{
  result = qword_1EE06F1D8;
  if (!qword_1EE06F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F1D8);
  }

  return result;
}

unint64_t sub_1D0F992CC()
{
  result = qword_1EC5FCE10;
  if (!qword_1EC5FCE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCE10);
  }

  return result;
}

unint64_t sub_1D0F99320()
{
  result = qword_1EE06F230;
  if (!qword_1EE06F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F230);
  }

  return result;
}

void sub_1D0F99374(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D0F993C4()
{
  result = qword_1EE06F248;
  if (!qword_1EE06F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F248);
  }

  return result;
}

unint64_t sub_1D0F99418()
{
  result = qword_1EC5FCE28;
  if (!qword_1EC5FCE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCE28);
  }

  return result;
}

unint64_t sub_1D0F9946C()
{
  result = qword_1EE06F200;
  if (!qword_1EE06F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F200);
  }

  return result;
}

unint64_t sub_1D0F99528()
{
  result = qword_1EE070D58;
  if (!qword_1EE070D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070D58);
  }

  return result;
}

void sub_1D0F9957C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16HealthExperience20AppStoreDataProviderC11CardContentVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_16HealthExperience20AppStoreDataProviderC12RelationshipVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D0F996A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1D0F99700(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D0F99764(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1D0F997CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16HealthExperience20AppStoreDataProviderC7ArtworkVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_16HealthExperience20AppStoreDataProviderC8PlatformVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_1D0F998BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 208))
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

uint64_t sub_1D0F99918(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
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
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1D0F999E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 192))
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

uint64_t sub_1D0F99A40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1D0F99B00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 160))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1D0F99B68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D0F99BF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
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

uint64_t sub_1D0F99C4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1D0F99CFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1D0F99D58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t _s7ArtworkV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7ArtworkV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D0F99FB0()
{
  result = qword_1EC5FCE30;
  if (!qword_1EC5FCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCE30);
  }

  return result;
}

unint64_t sub_1D0F9A008()
{
  result = qword_1EC5FCE38;
  if (!qword_1EC5FCE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCE38);
  }

  return result;
}

unint64_t sub_1D0F9A060()
{
  result = qword_1EC5FCE40;
  if (!qword_1EC5FCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCE40);
  }

  return result;
}

unint64_t sub_1D0F9A0B8()
{
  result = qword_1EC5FCE48;
  if (!qword_1EC5FCE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCE48);
  }

  return result;
}

unint64_t sub_1D0F9A110()
{
  result = qword_1EC5FCE50;
  if (!qword_1EC5FCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCE50);
  }

  return result;
}

unint64_t sub_1D0F9A168()
{
  result = qword_1EC5FCE58;
  if (!qword_1EC5FCE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCE58);
  }

  return result;
}

unint64_t sub_1D0F9A1C0()
{
  result = qword_1EC5FCE60;
  if (!qword_1EC5FCE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCE60);
  }

  return result;
}

unint64_t sub_1D0F9A218()
{
  result = qword_1EC5FCE68;
  if (!qword_1EC5FCE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCE68);
  }

  return result;
}

unint64_t sub_1D0F9A270()
{
  result = qword_1EC5FCE70;
  if (!qword_1EC5FCE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCE70);
  }

  return result;
}

unint64_t sub_1D0F9A2C8()
{
  result = qword_1EE070D48;
  if (!qword_1EE070D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070D48);
  }

  return result;
}

unint64_t sub_1D0F9A320()
{
  result = qword_1EE070D50;
  if (!qword_1EE070D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070D50);
  }

  return result;
}

unint64_t sub_1D0F9A378()
{
  result = qword_1EE06F238;
  if (!qword_1EE06F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F238);
  }

  return result;
}

unint64_t sub_1D0F9A3D0()
{
  result = qword_1EE06F240;
  if (!qword_1EE06F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F240);
  }

  return result;
}

unint64_t sub_1D0F9A428()
{
  result = qword_1EE06F1C8;
  if (!qword_1EE06F1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F1C8);
  }

  return result;
}

unint64_t sub_1D0F9A480()
{
  result = qword_1EE06F1D0;
  if (!qword_1EE06F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F1D0);
  }

  return result;
}

unint64_t sub_1D0F9A4D8()
{
  result = qword_1EE06F2B8;
  if (!qword_1EE06F2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F2B8);
  }

  return result;
}

unint64_t sub_1D0F9A530()
{
  result = qword_1EE06F2C0;
  if (!qword_1EE06F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F2C0);
  }

  return result;
}

unint64_t sub_1D0F9A588()
{
  result = qword_1EE06F1E8;
  if (!qword_1EE06F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F1E8);
  }

  return result;
}

unint64_t sub_1D0F9A5E0()
{
  result = qword_1EE06F1F0;
  if (!qword_1EE06F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F1F0);
  }

  return result;
}

unint64_t sub_1D0F9A638()
{
  result = qword_1EE06F298;
  if (!qword_1EE06F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F298);
  }

  return result;
}

unint64_t sub_1D0F9A690()
{
  result = qword_1EE06F2A0;
  if (!qword_1EE06F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F2A0);
  }

  return result;
}

unint64_t sub_1D0F9A6E8()
{
  result = qword_1EE06F278;
  if (!qword_1EE06F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F278);
  }

  return result;
}

unint64_t sub_1D0F9A740()
{
  result = qword_1EE06F280;
  if (!qword_1EE06F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F280);
  }

  return result;
}

unint64_t sub_1D0F9A798()
{
  result = qword_1EE06F258;
  if (!qword_1EE06F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F258);
  }

  return result;
}

unint64_t sub_1D0F9A7F0()
{
  result = qword_1EE06F260;
  if (!qword_1EE06F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F260);
  }

  return result;
}

unint64_t sub_1D0F9A848()
{
  result = qword_1EE06F218;
  if (!qword_1EE06F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F218);
  }

  return result;
}

unint64_t sub_1D0F9A8A0()
{
  result = qword_1EE06F220;
  if (!qword_1EE06F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F220);
  }

  return result;
}

uint64_t sub_1D0F9A8F4()
{
  v0 = sub_1D0FF6088();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D0F9A940(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D0FF6278() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D0FF6278();

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

uint64_t sub_1D0F9AA58()
{
  v0 = sub_1D0FF6088();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D0F9AAA4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_1D0F9AAC8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D0F99374(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D0F9AB40(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D0F9AB64(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D0F9AAC8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

id sub_1D0F9AC20()
{
  v0 = sub_1D0F9B20C();

  return v0;
}

uint64_t SampleQuery.__allocating_init(resultsHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SampleQuery.init(resultsHandler:)(a1, a2);
  return v4;
}

void *SampleQuery.init(resultsHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v2[2] = 0;
  v7 = *(v6 + 80);
  v8 = *(v6 + 88);
  v9 = (*(v8 + 24))(v7, v8);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v10;
  v11[5] = a1;
  v11[6] = a2;
  v12 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
  v17[4] = sub_1D0F9B21C;
  v17[5] = v11;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1D0F9B164;
  v17[3] = &block_descriptor_9;
  v13 = _Block_copy(v17);

  v14 = [v12 initWithSampleType:v9 predicate:0 limit:0 sortDescriptors:0 resultsHandler:v13];

  _Block_release(v13);

  v15 = v3[2];
  v3[2] = v14;

  return v3;
}

uint64_t sub_1D0F9AE50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if (a2)
    {
      sub_1D0F9B340();
      swift_getAssociatedTypeWitness();
      v10 = sub_1D0FF6078();
      if (v10)
      {
        a5(v9, v10, 0);
      }

      v13 = 0x80000001D1004BF0;
      type metadata accessor for SampleQuery.QueryError();
      swift_getWitnessTable();
      v15 = swift_allocError();
      v16 = 0xD000000000000017;
    }

    else
    {
      if (a3)
      {
        v11 = a3;
        a5(v9, a3, 1);
        v12 = a3;
LABEL_10:
      }

      v13 = 0x80000001D1004BC0;
      type metadata accessor for SampleQuery.QueryError();
      swift_getWitnessTable();
      v15 = swift_allocError();
      v16 = 0xD000000000000025;
    }

    *v14 = v16;
    v14[1] = v13;
    a5(v9, v15, 1);
    v12 = v15;
    goto LABEL_10;
  }

  return result;
}

uint64_t SampleQuery.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1D0F9B0A8()
{
  v0 = sub_1D0F9B20C();

  return v0;
}

void HKHealthStore.execute(query:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  [v1 executeQuery_];
}

uint64_t sub_1D0F9B164(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1D0F9B340();
    v5 = sub_1D0FF5608();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_1D0F9B20C()
{
  result = *(v0 + 16);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D0F9B2EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1D0F9B340()
{
  result = qword_1EC5FCF98;
  if (!qword_1EC5FCF98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC5FCF98);
  }

  return result;
}

uint64_t sub_1D0F9B39C()
{
  result = sub_1D0FF5428();
  qword_1EC5FCFA0 = result;
  *algn_1EC5FCFA8 = v1;
  return result;
}

uint64_t static HKNotificationSyncStore.healthSharingManagementNotificationSyncClientIdentifier.getter()
{
  if (qword_1EC5FBDB0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC5FCFA0;

  return v0;
}

uint64_t HKNotificationSyncStore.sendNotificationInstructionPublisher(notificationInstruction:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1D0F9B5EC(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = a1;
  v10[4] = ObjectType;
  sub_1D0F9B628();
  sub_1D0F9C150(&qword_1EE070BB0, sub_1D0F9B628);
  v11 = v2;
  v12 = a1;
  sub_1D0FF5008();
  sub_1D0F9C150(&qword_1EC5FCFB8, sub_1D0F9B5EC);
  v13 = sub_1D0FF5098();
  (*(v7 + 8))(v9, v6);
  return v13;
}

void sub_1D0F9B628()
{
  if (!qword_1EE070BA8)
  {
    sub_1D0F1E940();
    v0 = sub_1D0FF4FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE070BA8);
    }
  }
}

uint64_t sub_1D0F9B694@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1D0F9B628();
  swift_allocObject();
  v9 = a1;
  v10 = a2;
  result = sub_1D0FF4FF8();
  *a4 = result;
  return result;
}

void sub_1D0F9B740(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = sub_1D0F9C7A8;
  v11[4] = v10;
  v11[5] = a5;
  v14[4] = sub_1D0F9C7B4;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D0FCA978;
  v14[3] = &block_descriptor_24;
  v12 = _Block_copy(v14);

  v13 = a4;

  [a3 sendNotificationInstruction:v13 completion:v12];
  _Block_release(v12);
}

void sub_1D0F9B870(char a1, void *a2, void *a3, void (*a4)(void, void))
{
  v8 = sub_1D0FF4C18();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v57 - v13;
  if (a2)
  {
    v15 = a2;
    sub_1D0FF4BC8();
    v16 = a2;
    v17 = a3;
    v18 = sub_1D0FF4C08();
    v19 = sub_1D0FF5958();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v61 = v9;
      v21 = v20;
      v59 = swift_slowAlloc();
      v63 = v59;
      *v21 = 136446722;
      v22 = sub_1D0FF6468();
      v24 = sub_1D0F1AE0C(v22, v23, &v63);
      v60 = v8;
      v25 = v24;

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = v17;
      v27 = [v26 description];
      v28 = sub_1D0FF5428();
      LODWORD(v58) = v19;
      v29 = a4;
      v31 = v30;

      v32 = sub_1D0F1AE0C(v28, v31, &v63);
      a4 = v29;

      *(v21 + 14) = v32;
      *(v21 + 22) = 2082;
      v62 = a2;
      v33 = a2;
      sub_1D0F1E940();
      v34 = sub_1D0FF5458();
      v36 = sub_1D0F1AE0C(v34, v35, &v63);

      *(v21 + 24) = v36;
      _os_log_impl(&dword_1D0F17000, v18, v58, "%{public}s Unable to send instruction %s. %{public}s", v21, 0x20u);
      v37 = v59;
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v37, -1, -1);
      MEMORY[0x1D3882680](v21, -1, -1);

      (*(v61 + 8))(v14, v60);
    }

    else
    {

      (*(v9 + 8))(v14, v8);
    }

    v54 = a2;
    a4(a2, 1);
  }

  else
  {
    v61 = v9;
    sub_1D0FF4BC8();
    v38 = a3;
    v39 = sub_1D0FF4C08();
    v40 = sub_1D0FF5978();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v63 = v58;
      *v41 = 136446722;
      v42 = sub_1D0FF6468();
      v60 = v8;
      v44 = sub_1D0F1AE0C(v42, v43, &v63);
      v59 = a4;
      v45 = v44;

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      v46 = v38;
      v47 = [v46 description];
      v48 = sub_1D0FF5428();
      v50 = v49;

      v51 = v48;
      a4 = v59;
      v52 = sub_1D0F1AE0C(v51, v50, &v63);

      *(v41 + 14) = v52;
      *(v41 + 22) = 1024;
      *(v41 + 24) = a1 & 1;
      _os_log_impl(&dword_1D0F17000, v39, v40, "%{public}s Sent instruction %s successfully: %{BOOL}d", v41, 0x1Cu);
      v53 = v58;
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v53, -1, -1);
      MEMORY[0x1D3882680](v41, -1, -1);

      (*(v61 + 8))(v12, v60);
    }

    else
    {

      (*(v61 + 8))(v12, v8);
    }

    sub_1D0F1E940();
    sub_1D0FF63F8();
    v55 = v63;
    v56 = v64;
    a4(v63, v64);
    sub_1D0F9C7C0(v55, v56);
  }
}

uint64_t HKNotificationSyncStore.fetchNotificationHoldInstructions()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1D0F9BF24(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = ObjectType;
  sub_1D0F9BFF4();
  sub_1D0F9C150(&qword_1EC5FCFD0, sub_1D0F9BFF4);
  v9 = v1;
  sub_1D0FF5008();
  sub_1D0F9C150(&qword_1EC5FCFD8, sub_1D0F9BF24);
  v10 = sub_1D0FF5098();
  (*(v5 + 8))(v7, v4);
  return v10;
}

void sub_1D0F9BF60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D0F9C150(a4, a5);
    v8 = sub_1D0FF5018();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D0F9BFF4()
{
  if (!qword_1EC5FCFC8)
  {
    sub_1D0F9C064();
    sub_1D0F1E940();
    v0 = sub_1D0FF4FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FCFC8);
    }
  }
}

void sub_1D0F9C064()
{
  if (!qword_1EE070B58)
  {
    v0 = sub_1D0FF5848();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE070B58);
    }
  }
}

uint64_t sub_1D0F9C0BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1D0F9BFF4();
  swift_allocObject();
  v7 = a1;
  result = sub_1D0FF4FF8();
  *a3 = result;
  return result;
}

uint64_t sub_1D0F9C150(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D0F9C198(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = sub_1D0F8E838;
  v9[3] = v8;
  v9[4] = a4;
  v11[4] = sub_1D0F9C6F0;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D0F9C6FC;
  v11[3] = &block_descriptor_10;
  v10 = _Block_copy(v11);

  [a3 getNotificationHoldInstructionsWithCompletion_];
  _Block_release(v10);
}

void sub_1D0F9C2C0(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = sub_1D0FF4C18();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - v13;
  if (a2)
  {
    v15 = a2;
    sub_1D0FF4BC8();
    v16 = a2;
    v17 = sub_1D0FF4C08();
    v18 = sub_1D0FF5958();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v42 = a3;
      v21 = v20;
      v44 = v20;
      *v19 = 136446466;
      v22 = sub_1D0FF6468();
      v24 = sub_1D0F1AE0C(v22, v23, &v44);
      v41 = v8;
      v25 = v24;

      *(v19 + 4) = v25;
      *(v19 + 12) = 2082;
      v43 = a2;
      v26 = a2;
      sub_1D0F1E940();
      v27 = sub_1D0FF5458();
      v29 = sub_1D0F1AE0C(v27, v28, &v44);

      *(v19 + 14) = v29;
      _os_log_impl(&dword_1D0F17000, v17, v18, "%{public}s Unable to get notification hold instructions: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      v30 = v21;
      a3 = v42;
      MEMORY[0x1D3882680](v30, -1, -1);
      MEMORY[0x1D3882680](v19, -1, -1);

      (*(v9 + 8))(v14, v41);
    }

    else
    {

      (*(v9 + 8))(v14, v8);
    }

    v39 = a2;
    a3(a2, 1);
  }

  else
  {
    v41 = a4;
    sub_1D0FF4BC8();
    swift_bridgeObjectRetain_n();
    v31 = sub_1D0FF4C08();
    v32 = sub_1D0FF5978();
    if (os_log_type_enabled(v31, v32))
    {
      v42 = a3;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44 = v34;
      *v33 = 136446466;
      v35 = sub_1D0FF6468();
      v37 = sub_1D0F1AE0C(v35, v36, &v44);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2048;
      if (a1)
      {
        v38 = *(a1 + 16);
      }

      else
      {
        v38 = 0;
      }

      *(v33 + 14) = v38;

      _os_log_impl(&dword_1D0F17000, v31, v32, "%{public}s Fetched %ld hold instructions", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1D3882680](v34, -1, -1);
      MEMORY[0x1D3882680](v33, -1, -1);

      (*(v9 + 8))(v12, v8);
      a3 = v42;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v9 + 8))(v12, v8);
    }

    if (a1)
    {
      v40 = a1;
    }

    else
    {
      v40 = MEMORY[0x1E69E7CD0];
    }

    a3(v40, 0);
  }
}

uint64_t sub_1D0F9C6FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1D0FF5808();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_1D0F9C7C0(id a1, char a2)
{
  if (a2)
  {
  }
}

id FirstRestoreNotInProgressPrecondition.__allocating_init(healthStore:shouldProceedOnErrorRequiringUserAction:waitUntilShouldProceed:completionQueue:)(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_cloudSyncObserver] = 0;
  v10 = &v9[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_preconditionCompletion];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_lock;
  sub_1D0FF4548();
  swift_allocObject();
  *&v9[v11] = sub_1D0FF4538();
  *&v9[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_healthStore] = a1;
  v9[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_shouldProceedOnErrorRequiringUserAction] = a2;
  v9[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_waitUntilShouldProceed] = a3;
  *&v9[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_completionQueue] = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id FirstRestoreNotInProgressPrecondition.init(healthStore:shouldProceedOnErrorRequiringUserAction:waitUntilShouldProceed:completionQueue:)(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_cloudSyncObserver] = 0;
  v9 = &v4[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_preconditionCompletion];
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_lock;
  sub_1D0FF4548();
  swift_allocObject();
  *&v4[v10] = sub_1D0FF4538();
  *&v4[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_healthStore] = a1;
  v4[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_shouldProceedOnErrorRequiringUserAction] = a2;
  v4[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_waitUntilShouldProceed] = a3;
  *&v4[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_completionQueue] = a4;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for FirstRestoreNotInProgressPrecondition();
  return objc_msgSendSuper2(&v12, sel_init);
}

id FirstRestoreNotInProgressPrecondition.__deallocating_deinit()
{

  sub_1D0FF4518();

  sub_1D0F9CC30();

  sub_1D0FF4528();

  v2.receiver = v0;
  v2.super_class = type metadata accessor for FirstRestoreNotInProgressPrecondition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D0F9CB50(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  sub_1D0FF4518();

  v6 = (v2 + OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_preconditionCompletion);
  v7 = *(v2 + OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_preconditionCompletion);
  *v6 = a1;
  v6[1] = a2;

  sub_1D0F2625C(v7);
  sub_1D0F9CEA8();
  v8 = *(v3 + OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_cloudSyncObserver);

  sub_1D0FF4528();

  [v8 startObservingSyncStatus];
}

uint64_t sub_1D0F9CC30()
{
  v1 = sub_1D0FF4C18();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D0FF4508();

  sub_1D0FF4BC8();
  v5 = v0;
  v6 = sub_1D0FF4C08();
  v7 = sub_1D0FF5978();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v25 = v2;
    v9 = v8;
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136446210;
    v11 = v5;
    v12 = [v11 description];
    v13 = sub_1D0FF5428();
    v24 = v1;
    v15 = v14;

    v16 = sub_1D0F1AE0C(v13, v15, &v26);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_1D0F17000, v6, v7, "%{public}s: cleaning up precondition", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1D3882680](v10, -1, -1);
    MEMORY[0x1D3882680](v9, -1, -1);

    (*(v25 + 8))(v4, v24);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  v17 = OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_cloudSyncObserver;
  v18 = *&v5[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_cloudSyncObserver];
  if (v18)
  {
    [v18 setDelegate_];
    v19 = *&v5[v17];
  }

  else
  {
    v19 = 0;
  }

  *&v5[v17] = 0;

  v20 = &v5[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_preconditionCompletion];
  v21 = *&v5[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_preconditionCompletion];
  *v20 = 0;
  *(v20 + 1) = 0;
  return sub_1D0F2625C(v21);
}

uint64_t sub_1D0F9CEA8()
{

  sub_1D0FF4508();

  v2 = OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_cloudSyncObserver;
  if (!*(v0 + OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_cloudSyncObserver))
  {
    *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E696BFE8]) initWithHealthStore:*(v0 + OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_healthStore) delegate:v0];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

uint64_t sub_1D0F9CFBC()
{
  MEMORY[0x1D3880AC0](60, 0xE100000000000000);
  swift_getObjectType();
  sub_1D0F9D084();
  v0 = sub_1D0FF5448();
  MEMORY[0x1D3880AC0](v0);

  MEMORY[0x1D3880AC0](32, 0xE100000000000000);
  sub_1D0FF5F38();
  MEMORY[0x1D3880AC0](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_1D0F9D084()
{
  result = qword_1EE070C08[0];
  if (!qword_1EE070C08[0])
  {
    type metadata accessor for FirstRestoreNotInProgressPrecondition();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_1EE070C08);
  }

  return result;
}

id FirstRestoreNotInProgressPrecondition.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D0F9D1A0(void *a1)
{
  v3 = sub_1D0FF4C18();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D0F9E708(0, &qword_1EE071260, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v35[-v8];
  v10 = [a1 syncEnabled];
  v11 = [a1 restoreCompletionDate];
  if (v11)
  {
    sub_1D0FF4328();

    v12 = sub_1D0FF4348();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_1D0FF4348();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  sub_1D0F58BBC(v9);
  v14 = [a1 errorRequiringUserAction];
  if (v14)
  {

    v15 = 1;
    if (v11 || ((v10 ^ 1) & 1) != 0 || v1[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_shouldProceedOnErrorRequiringUserAction])
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = 1;
    if (v11 || ((v10 ^ 1) & 1) != 0)
    {
      goto LABEL_12;
    }
  }

  v15 = 0;
LABEL_12:
  sub_1D0FF4BC8();
  v16 = v1;
  v17 = a1;
  v18 = sub_1D0FF4C08();
  v19 = sub_1D0FF5978();

  if (os_log_type_enabled(v18, v19))
  {
    v36 = v11 != 0;
    v20 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v42 = v38;
    *v20 = 136447490;
    v21 = v16;
    v22 = [v21 description];
    v39 = v3;
    v23 = v22;
    v24 = sub_1D0FF5428();
    v37 = v6;
    v25 = v4;
    v26 = v24;
    v40 = v15;
    v28 = v27;

    v29 = sub_1D0F1AE0C(v26, v28, &v42);

    *(v20 + 4) = v29;
    *(v20 + 12) = 1024;
    *(v20 + 14) = v10;
    *(v20 + 18) = 1024;
    *(v20 + 20) = v36;
    *(v20 + 24) = 2080;
    v41 = [v17 errorRequiringUserAction];
    sub_1D0F9E708(0, &qword_1EE071008, sub_1D0F1E940, MEMORY[0x1E69E6720]);
    v30 = sub_1D0FF5448();
    v32 = sub_1D0F1AE0C(v30, v31, &v42);

    *(v20 + 26) = v32;
    v15 = v40;
    *(v20 + 34) = 1024;
    LODWORD(v29) = v21[OBJC_IVAR____TtC16HealthExperience37FirstRestoreNotInProgressPrecondition_shouldProceedOnErrorRequiringUserAction];

    *(v20 + 36) = v29;
    *(v20 + 40) = 1024;
    *(v20 + 42) = v15;
    _os_log_impl(&dword_1D0F17000, v18, v19, "[%{public}s]: Received cloud sync status update, syncEnabled: %{BOOL}d, restoreCompleted: %{BOOL}d, errorRequiringUserAction: %s, shouldProceedOnErrorRequiringUserAction: %{BOOL}d, shouldProceed: %{BOOL}d", v20, 0x2Eu);
    v33 = v38;
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v33, -1, -1);
    MEMORY[0x1D3882680](v20, -1, -1);

    (*(v25 + 8))(v37, v39);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  return v15;
}