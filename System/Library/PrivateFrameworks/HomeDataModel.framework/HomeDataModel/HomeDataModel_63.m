uint64_t sub_1D1C41E58()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v49[-v4];
  v6 = type metadata accessor for StatusStrings.Options();
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58.tileOnStateIconInfo.name._countAndFlagsBits = 0;
  v58.tileOnStateIconInfo.name._object = 0xE000000000000000;
  sub_1D1E6884C();
  countAndFlagsBits = v58.tileOnStateIconInfo.name._countAndFlagsBits;
  object = v58.tileOnStateIconInfo.name._object;
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EC79D0);
  MEMORY[0x1D3890F70](0x6E776F6E6B6E75, 0xE700000000000000);
  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v11 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v11);

  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  v12 = type metadata accessor for StaticEndpoint();
  MEMORY[0x1D3890F70](*(v1 + v12[6]), *(v1 + v12[6] + 8));
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC79F0);
  v13 = v7[13];
  v14 = sub_1D1E669FC();
  (*(*(v14 - 8) + 56))(&v10[v13], 1, 1, v14);
  *v10 = 65793;
  *(v10 + 2) = 1;
  v10[6] = 0;
  v10[v7[14]] = 2;
  v15 = &v10[v7[15]];
  v15[4] = 0;
  *v15 = 2;
  v16 = type metadata accessor for StaticMatterDevice();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = StaticEndpoint.statusString(with:associatedMatterDevice:)(v10);
  v19 = v18;
  sub_1D1741A30(v5, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C53778(v10, type metadata accessor for StatusStrings.Options);
  if (v19)
  {
    v20 = v17;
  }

  else
  {
    v20 = 7104878;
  }

  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v20, v21);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC7A10);
  MEMORY[0x1D3890F70](0x6E45636974617473, 0xEE00746E696F7064);
  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC5FD0);
  v22 = v12[13];
  v23 = v1 + v22;
  v24 = *(v1 + v22 + 24);
  if (v24)
  {
    v25 = *(v23 + 16);
    v26 = *(v1 + v22 + 24);

    v27._countAndFlagsBits = v25;
    v27._object = v24;
    Icon.init(customIconName:)(&v58, v27);
  }

  else
  {
    static MatterDeviceType.primaryDeviceType(for:)(*(v1 + v12[8]), &v57);
    if (v57 == 28)
    {
      if (qword_1EC642238 != -1)
      {
        swift_once();
      }

      v54 = *&qword_1EC646788;
      name = xmmword_1EC646798;
      *v56 = xmmword_1EC6467A8;
      *&v56[9] = *(&xmmword_1EC6467A8 + 9);
      v52 = xmmword_1EC646768;
      v53 = xmmword_1EC646778;
      v58.accessoryControlOnStateIconInfo.name = xmmword_1EC646798;
      *&v58.accessoryControlOnStateIconInfo.renderingMode = xmmword_1EC6467A8;
      *&v58.tileOnStateIconInfo.renderingMode = xmmword_1EC646778;
      *&v58.tileOffStateIconInfo.name._object = *&qword_1EC646788;
      *(&v58.accessoryControlOffStateIconInfo.name + 1) = *(&xmmword_1EC6467A8 + 9);
      v58.tileOnStateIconInfo.name = xmmword_1EC646768;
      sub_1D18A9844(&v52, v50);
    }

    else
    {
      LOBYTE(v52._countAndFlagsBits) = v57;
      Icon.init(deviceType:)(&v58, &v52);
    }
  }

  v54 = *&v58.tileOffStateIconInfo.name._object;
  name = v58.accessoryControlOnStateIconInfo.name;
  *v56 = *&v58.accessoryControlOnStateIconInfo.renderingMode;
  *&v56[9] = *(&v58.accessoryControlOffStateIconInfo.name + 1);
  v52 = v58.tileOnStateIconInfo.name;
  v53 = *&v58.tileOnStateIconInfo.renderingMode;
  v50[2] = *&v58.tileOffStateIconInfo.name._object;
  v50[3] = v58.accessoryControlOnStateIconInfo.name;
  v51[0] = *&v58.accessoryControlOnStateIconInfo.renderingMode;
  *(v51 + 9) = *(&v58.accessoryControlOffStateIconInfo.name + 1);
  v50[0] = v58.tileOnStateIconInfo.name;
  v50[1] = *&v58.tileOnStateIconInfo.renderingMode;
  sub_1D1E68ABC();
  sub_1D18A98A0(&v52);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  v28 = StaticEndpoint.isDoubleHigh.getter();
  v29 = (v28 & 1) == 0;
  if (v28)
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if (v29)
  {
    v31 = 0xE500000000000000;
  }

  else
  {
    v31 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v30, v31);

  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  v32 = *(v1 + v12[7]);
  if (v32 == 1)
  {
    v33 = 1702195828;
  }

  else
  {
    v33 = 0x65736C6166;
  }

  if (v32 == 1)
  {
    v34 = 0xE400000000000000;
  }

  else
  {
    v34 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v33, v34);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  *&v50[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v35 = sub_1D1E6770C();
  MEMORY[0x1D3890F70](v35);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  *&v50[0] = sub_1D1C75ED0(*(v1 + v12[12]));
  v36 = sub_1D1E6770C();
  v38 = v37;

  MEMORY[0x1D3890F70](v36, v38);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  v39 = *(v23 + 49);
  if (v39 == 2 || (v39 & 1) == 0)
  {
    v40 = 0xE500000000000000;
    v41 = 0x65736C6166;
  }

  else
  {
    v40 = 0xE400000000000000;
    v41 = 1702195828;
  }

  MEMORY[0x1D3890F70](v41, v40);

  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  if ((*(v23 + 50) == 2) | *(v23 + 50) & 1)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if ((*(v23 + 50) == 2) | *(v23 + 50) & 1)
  {
    v43 = 0xE400000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v42, v43);

  MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  v44 = StaticEndpoint.isActivated.getter();
  v45 = (v44 & 1) == 0;
  if (v44)
  {
    v46 = 1702195828;
  }

  else
  {
    v46 = 0x65736C6166;
  }

  if (v45)
  {
    v47 = 0xE500000000000000;
  }

  else
  {
    v47 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v46, v47);

  return countAndFlagsBits;
}

uint64_t sub_1D1C42598()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v57 - v4;
  v6 = type metadata accessor for StatusStrings.Options();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68.tileOnStateIconInfo.name._countAndFlagsBits = 0;
  v68.tileOnStateIconInfo.name._object = 0xE000000000000000;
  sub_1D1E6884C();
  countAndFlagsBits = v68.tileOnStateIconInfo.name._countAndFlagsBits;
  object = v68.tileOnStateIconInfo.name._object;
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EC79D0);
  v10 = type metadata accessor for StaticMatterDevice();
  v11 = (v0 + v10[11]);
  if (v11[1])
  {
    v12 = *v11;
    v13 = v11[1];
  }

  else
  {
    v13 = 0xE700000000000000;
    v12 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x1D3890F70](v12, v13);

  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  v14 = sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v59 = v14;
  v15 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v15);

  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x1D3890F70](*(v0 + v10[6]), *(v0 + v10[6] + 8));
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC79F0);
  v16 = v6[11];
  v17 = sub_1D1E669FC();
  (*(*(v17 - 8) + 56))(&v9[v16], 1, 1, v17);
  *v9 = 65793;
  *(v9 + 2) = 1;
  v9[6] = 0;
  v9[v6[12]] = 2;
  v18 = &v9[v6[13]];
  v18[4] = 0;
  *v18 = 2;
  (*(*(v10 - 1) + 56))(v5, 1, 1, v10);
  v19 = StaticMatterDevice.statusString(with:associatedMatterDevice:)(v9);
  v21 = v20;
  sub_1D1741A30(v5, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C53778(v9, type metadata accessor for StatusStrings.Options);
  if (v21)
  {
    v22 = v19;
  }

  else
  {
    v22 = 7104878;
  }

  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v22, v23);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC7A10);
  MEMORY[0x1D3890F70](0xD000000000000012, 0x80000001D1EC38D0);
  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC5FD0);
  v24 = v10[15];
  v25 = *(v1 + v24 + 24);
  v58 = v1 + v24;
  if (v25)
  {
    v26 = *(v1 + v24 + 16);

    v27._countAndFlagsBits = v26;
    v27._object = v25;
    Icon.init(customIconName:)(&v68, v27);
  }

  else
  {
    static MatterDeviceType.primaryDeviceType(for:)(*(v1 + v10[8]), &v67);
    if (v67 == 28)
    {
      if (qword_1EC642238 != -1)
      {
        swift_once();
      }

      v64 = *&qword_1EC646788;
      name = xmmword_1EC646798;
      *v66 = xmmword_1EC6467A8;
      *&v66[9] = *(&xmmword_1EC6467A8 + 9);
      v62 = xmmword_1EC646768;
      v63 = xmmword_1EC646778;
      v68.accessoryControlOnStateIconInfo.name = xmmword_1EC646798;
      *&v68.accessoryControlOnStateIconInfo.renderingMode = xmmword_1EC6467A8;
      *&v68.tileOnStateIconInfo.renderingMode = xmmword_1EC646778;
      *&v68.tileOffStateIconInfo.name._object = *&qword_1EC646788;
      *(&v68.accessoryControlOffStateIconInfo.name + 1) = *(&xmmword_1EC6467A8 + 9);
      v68.tileOnStateIconInfo.name = xmmword_1EC646768;
      sub_1D18A9844(&v62, v60);
    }

    else
    {
      LOBYTE(v62._countAndFlagsBits) = v67;
      Icon.init(deviceType:)(&v68, &v62);
    }
  }

  v64 = *&v68.tileOffStateIconInfo.name._object;
  name = v68.accessoryControlOnStateIconInfo.name;
  *v66 = *&v68.accessoryControlOnStateIconInfo.renderingMode;
  *&v66[9] = *(&v68.accessoryControlOffStateIconInfo.name + 1);
  v62 = v68.tileOnStateIconInfo.name;
  v63 = *&v68.tileOnStateIconInfo.renderingMode;
  v60[2] = *&v68.tileOffStateIconInfo.name._object;
  v60[3] = v68.accessoryControlOnStateIconInfo.name;
  v61[0] = *&v68.accessoryControlOnStateIconInfo.renderingMode;
  *(v61 + 9) = *(&v68.accessoryControlOffStateIconInfo.name + 1);
  v60[0] = v68.tileOnStateIconInfo.name;
  v60[1] = *&v68.tileOnStateIconInfo.renderingMode;
  sub_1D1E68ABC();
  sub_1D18A98A0(&v62);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  v28 = StaticMatterDevice.isDoubleHigh.getter();
  v29 = (v28 & 1) == 0;
  if (v28)
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if (v29)
  {
    v31 = 0xE500000000000000;
  }

  else
  {
    v31 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v30, v31);

  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  v32 = *(v1 + v10[7]);
  if (v32 == 1)
  {
    v33 = 1702195828;
  }

  else
  {
    v33 = 0x65736C6166;
  }

  if (v32 == 1)
  {
    v34 = 0xE400000000000000;
  }

  else
  {
    v34 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v33, v34);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  *&v60[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v35 = sub_1D1E6770C();
  MEMORY[0x1D3890F70](v35);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v36 = v59;
  v37 = *(v59 - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1D1E739C0;
  (*(v37 + 16))(v40 + v39, v1 + v10[10], v36);
  v41 = sub_1D179BE14(v40);
  swift_setDeallocating();
  (*(v37 + 8))(v40 + v39, v36);
  swift_deallocClassInstance();
  v42 = sub_1D1C75ED0(v41);

  *&v60[0] = v42;
  v43 = sub_1D1E6770C();
  v45 = v44;

  MEMORY[0x1D3890F70](v43, v45);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  v46 = v58;
  v47 = *(v58 + 49);
  if (v47 == 2 || (v47 & 1) == 0)
  {
    v48 = 0xE500000000000000;
    v49 = 0x65736C6166;
  }

  else
  {
    v48 = 0xE400000000000000;
    v49 = 1702195828;
  }

  MEMORY[0x1D3890F70](v49, v48);

  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  if ((*(v46 + 50) == 2) | *(v46 + 50) & 1)
  {
    v50 = 1702195828;
  }

  else
  {
    v50 = 0x65736C6166;
  }

  if ((*(v46 + 50) == 2) | *(v46 + 50) & 1)
  {
    v51 = 0xE400000000000000;
  }

  else
  {
    v51 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v50, v51);

  MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  v52 = StaticMatterDevice.isActivated.getter();
  v53 = (v52 & 1) == 0;
  if (v52)
  {
    v54 = 1702195828;
  }

  else
  {
    v54 = 0x65736C6166;
  }

  if (v53)
  {
    v55 = 0xE500000000000000;
  }

  else
  {
    v55 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v54, v55);

  return countAndFlagsBits;
}

uint64_t sub_1D1C42E1C()
{
  v25.tileOnStateIconInfo.name._countAndFlagsBits = 0;
  v25.tileOnStateIconInfo.name._object = 0xE000000000000000;
  sub_1D1E6884C();
  v26 = 0;
  v27 = 0xE000000000000000;
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EC79D0);
  v1 = type metadata accessor for StaticCameraProfile();
  v2 = (v0 + v1[7]);
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x1D3890F70](v3, v4);

  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v5 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v5);

  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x1D3890F70](*(v0 + v1[5]), *(v0 + v1[5] + 8));
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC79F0);
  v6 = _s13HomeDataModel19StaticCameraProfileV12statusString4with22associatedMatterDeviceSSSgAA13StatusStringsV7OptionsV_AA0dkL0VSgtF_0();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v6 = 7104878;
    v8 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v6, v8);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC7A10);
  MEMORY[0x1D3890F70](0xD000000000000013, 0x80000001D1EC5E20);
  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC5FD0);
  v9._countAndFlagsBits = 0x69662E6F65646976;
  v9._object = 0xEA00000000006C6CLL;
  Icon.init(customIconName:)(&v25, v9);
  sub_1D1E68ABC();
  sub_1D18A98A0(&v25);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  v10 = 0xE500000000000000;
  MEMORY[0x1D3890F70](0x65736C6166, 0xE500000000000000);
  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  if (*(v0 + v1[10]))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v0 + v1[10]))
  {
    v10 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v11, v10);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v12 = sub_1D1E6770C();
  MEMORY[0x1D3890F70](v12);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  sub_1D1C75ED0(*(v0 + v1[6]));
  v13 = sub_1D1E6770C();
  v15 = v14;

  MEMORY[0x1D3890F70](v13, v15);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  if (*(v0 + v1[15]))
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (*(v0 + v1[15]))
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v16, v17);

  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  if (*(v0 + v1[14]))
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (*(v0 + v1[14]))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v18, v19);

  MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  v20 = StaticCameraProfile.isActivated.getter();
  v21 = !v20;
  if (v20)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (v21)
  {
    v23 = 0xE500000000000000;
  }

  else
  {
    v23 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v22, v23);

  return v26;
}

uint64_t sub_1D1C432EC()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EC79D0);
  MEMORY[0x1D3890F70](0x6E776F6E6B6E75, 0xE700000000000000);
  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v1 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v1);

  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  v2 = type metadata accessor for StaticActionSet();
  MEMORY[0x1D3890F70](*(v0 + v2[5]), *(v0 + v2[5] + 8));
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC79F0);
  if (*(v0 + v2[15]) == 2)
  {
    v3 = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC64E0);
    v5 = v4;
  }

  else
  {
    v5 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x1D3890F70](v3, v5);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC7A10);
  MEMORY[0x1D3890F70](0x6341636974617473, 0xEF7465536E6F6974);
  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC5FD0);
  v6 = (v0 + v2[9]);
  v18 = v6[2];
  v19 = v6[3];
  *v20 = v6[4];
  *&v20[9] = *(v6 + 73);
  v16 = *v6;
  v17 = v6[1];
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  MEMORY[0x1D3890F70](0x65736C6166, 0xE500000000000000);
  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  MEMORY[0x1D3890F70](1702195828, 0xE400000000000000);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v7 = sub_1D1E6770C();
  MEMORY[0x1D3890F70](v7);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  sub_1D1C75ED0(*(v0 + v2[11]));
  v8 = sub_1D1E6770C();
  v10 = v9;

  MEMORY[0x1D3890F70](v8, v10);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  if (*(v0 + v2[12]))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v0 + v2[12]))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v11, v12);

  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  MEMORY[0x1D3890F70](v11, v12);

  MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  if (*(v0 + v2[14]))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(v0 + v2[14]))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v13, v14);

  return 0;
}

uint64_t sub_1D1C43758()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v41[-v4];
  v6 = type metadata accessor for StatusStrings.Options();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_1D1E6884C();
  v49 = v47[0];
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EC79D0);
  v10 = type metadata accessor for StaticMediaProfile();
  v11 = (v0 + v10[7]);
  if (v11[1])
  {
    v12 = *v11;
    v13 = v11[1];
  }

  else
  {
    v13 = 0xE700000000000000;
    v12 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x1D3890F70](v12, v13);

  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v14 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v14);

  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x1D3890F70](*(v0 + v10[5]), *(v0 + v10[5] + 8));
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC79F0);
  v15 = v6[11];
  v16 = sub_1D1E669FC();
  (*(*(v16 - 8) + 56))(&v9[v15], 1, 1, v16);
  *v9 = 65793;
  *(v9 + 2) = 1;
  v9[6] = 0;
  v9[v6[12]] = 2;
  v17 = &v9[v6[13]];
  v17[4] = 0;
  *v17 = 2;
  v18 = type metadata accessor for StaticMatterDevice();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  v19 = StaticMediaProfile.statusString(with:associatedMatterDevice:)(v9);
  v21 = v20;
  sub_1D1741A30(v5, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C53778(v9, type metadata accessor for StatusStrings.Options);
  if (v21)
  {
    v22 = v19;
  }

  else
  {
    v22 = 7104878;
  }

  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v22, v23);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC7A10);
  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC5FD0);
  StaticMediaProfile.tileIcon.getter(v47);
  v44 = v47[2];
  v45 = v47[3];
  v46[0] = v48[0];
  *(v46 + 9) = *(v48 + 9);
  v42 = v47[0];
  v43 = v47[1];
  sub_1D1E68ABC();
  sub_1D18A98A0(v47);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  if (*(v1 + v10[10]))
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (*(v1 + v10[10]))
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v24, v25);

  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  if (*(v1 + v10[15]))
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (*(v1 + v10[15]))
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v26, v27);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  *&v42 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v28 = sub_1D1E6770C();
  MEMORY[0x1D3890F70](v28);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  *&v42 = sub_1D1C75ED0(*(v1 + v10[6]));
  v29 = sub_1D1E6770C();
  v31 = v30;

  MEMORY[0x1D3890F70](v29, v31);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  if (*(v1 + v10[11]))
  {
    v32 = 1702195828;
  }

  else
  {
    v32 = 0x65736C6166;
  }

  if (*(v1 + v10[11]))
  {
    v33 = 0xE400000000000000;
  }

  else
  {
    v33 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v32, v33);

  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  if (*(v1 + v10[12]))
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (*(v1 + v10[12]))
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v34, v35);

  MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  v36 = StaticMediaProfile.isActivated.getter();
  v37 = !v36;
  if (v36)
  {
    v38 = 1702195828;
  }

  else
  {
    v38 = 0x65736C6166;
  }

  if (v37)
  {
    v39 = 0xE500000000000000;
  }

  else
  {
    v39 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v38, v39);

  return v49;
}

uint64_t sub_1D1C43DBC()
{
  v1 = v0;
  v2 = type metadata accessor for StaticMediaSystem();
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v44[-v8];
  v10 = type metadata accessor for StatusStrings.Options();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v50[0] = 0;
  *(&v50[0] + 1) = 0xE000000000000000;
  sub_1D1E6884C();
  v52 = v50[0];
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EC79D0);
  v14 = (v0 + v2[22]);
  if (v14[1])
  {
    v15 = *v14;
    v16 = v14[1];
  }

  else
  {
    v16 = 0xE700000000000000;
    v15 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x1D3890F70](v15, v16);

  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v17 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v17);

  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x1D3890F70](*(v0 + v2[5]), *(v0 + v2[5] + 8));
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC79F0);
  v18 = v10[11];
  v19 = sub_1D1E669FC();
  (*(*(v19 - 8) + 56))(&v13[v18], 1, 1, v19);
  *v13 = 65793;
  *(v13 + 2) = 1;
  v13[6] = 0;
  v13[v10[12]] = 2;
  v20 = &v13[v10[13]];
  v20[4] = 0;
  *v20 = 2;
  v21 = type metadata accessor for StaticMatterDevice();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  v22 = StaticMediaSystem.statusString(with:associatedMatterDevice:)(v13);
  v24 = v23;
  sub_1D1741A30(v9, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C53778(v13, type metadata accessor for StatusStrings.Options);
  if (v24)
  {
    v25 = v22;
  }

  else
  {
    v25 = 7104878;
  }

  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v25, v26);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC7A10);
  MEMORY[0x1D3890F70](0xD000000000000011, 0x80000001D1EC6950);
  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC5FD0);
  sub_1D1C53710(v1, v5, type metadata accessor for StaticMediaSystem);
  Icon.init(staticMediaSystem:)(v5, v50);
  v47 = v50[2];
  v48 = v50[3];
  v49[0] = v51[0];
  *(v49 + 9) = *(v51 + 9);
  v45 = v50[0];
  v46 = v50[1];
  sub_1D1E68ABC();
  sub_1D18A98A0(v50);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  if (*(v1 + v2[9]))
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (*(v1 + v2[9]))
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v27, v28);

  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  if (*(v1 + v2[13]))
  {
    v29 = 1702195828;
  }

  else
  {
    v29 = 0x65736C6166;
  }

  if (*(v1 + v2[13]))
  {
    v30 = 0xE400000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v29, v30);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  *&v45 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v31 = sub_1D1E6770C();
  MEMORY[0x1D3890F70](v31);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  *&v45 = sub_1D1C75ED0(*(v1 + v2[21]));
  v32 = sub_1D1E6770C();
  v34 = v33;

  MEMORY[0x1D3890F70](v32, v34);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  if (*(v1 + v2[10]))
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (*(v1 + v2[10]))
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v35, v36);

  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  if (*(v1 + v2[11]))
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if (*(v1 + v2[11]))
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v37, v38);

  MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  v39 = StaticMediaSystem.isActivated.getter();
  v40 = !v39;
  if (v39)
  {
    v41 = 1702195828;
  }

  else
  {
    v41 = 0x65736C6166;
  }

  if (v40)
  {
    v42 = 0xE500000000000000;
  }

  else
  {
    v42 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v41, v42);

  return v52;
}

uint64_t sub_1D1C44494()
{
  v1 = v0;
  v65 = type metadata accessor for StaticService(0);
  v66 = *(v65 - 8);
  v2 = *(v66 + 64);
  v3 = MEMORY[0x1EEE9AC00](v65);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v65 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v65 - v10;
  v12 = type metadata accessor for StatusStrings.Options();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v73[0] = 0;
  *(&v73[0] + 1) = 0xE000000000000000;
  sub_1D1E6884C();
  v75 = v73[0];
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EC79D0);
  v16 = type metadata accessor for StaticServiceGroup();
  v17 = (v0 + v16[10]);
  if (v17[1])
  {
    v18 = *v17;
    v19 = v17[1];
  }

  else
  {
    v19 = 0xE700000000000000;
    v18 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x1D3890F70](v18, v19);

  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v20 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v20);

  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x1D3890F70](*(v0 + v16[5]), *(v0 + v16[5] + 8));
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC79F0);
  v21 = v12[11];
  v22 = sub_1D1E669FC();
  (*(*(v22 - 8) + 56))(&v15[v21], 1, 1, v22);
  *v15 = 65793;
  *(v15 + 2) = 1;
  v15[6] = 0;
  v15[v12[12]] = 2;
  v23 = &v15[v12[13]];
  v23[4] = 0;
  *v23 = 2;
  v24 = type metadata accessor for StaticMatterDevice();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  v25 = StaticServiceGroup.statusString(with:associatedMatterDevice:)(v15);
  v27 = v26;
  sub_1D1741A30(v11, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C53778(v15, type metadata accessor for StatusStrings.Options);
  if (v27)
  {
    v28 = v25;
  }

  else
  {
    v28 = 7104878;
  }

  if (!v27)
  {
    v27 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v28, v27);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC7A10);
  v29 = StaticServiceGroup.description.getter();
  MEMORY[0x1D3890F70](v29);

  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC5FD0);
  StaticServiceGroup.tileIcon.getter(v73);
  v70 = v73[2];
  v71 = v73[3];
  v72[0] = v74[0];
  *(v72 + 9) = *(v74 + 9);
  v68 = v73[0];
  v69 = v73[1];
  sub_1D1E68ABC();
  sub_1D18A98A0(v73);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  v30 = StaticServiceGroup.sortedStaticServices.getter();
  if (!v30[2])
  {

    goto LABEL_13;
  }

  sub_1D1C53710(v30 + ((*(v66 + 80) + 32) & ~*(v66 + 80)), v7, type metadata accessor for StaticService);

  v31 = v7[*(v65 + 28)];
  sub_1D1C53778(v7, type metadata accessor for StaticService);
  if ((v31 & 1) == 0)
  {
LABEL_13:
    v32 = 0xE500000000000000;
    v34 = 0x65736C6166;
    v33 = 0x65736C6166;
    goto LABEL_14;
  }

  v32 = 0xE400000000000000;
  v33 = 1702195828;
  v34 = 0x65736C6166;
LABEL_14:
  MEMORY[0x1D3890F70](v33, v32);

  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  if (*(v1 + v16[6]))
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (*(v1 + v16[6]))
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v35, v36);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  v37 = sub_1D1C56320();
  v38 = *(v37 + 16);
  if (v38)
  {
    *&v68 = MEMORY[0x1E69E7CC0];
    sub_1D178CD24(0, v38, 0);
    v39 = 32;
    v40 = v68;
    do
    {
      v67 = *(v37 + v39);
      v41 = ServiceKind.localizedDescription.getter();
      *&v68 = v40;
      v44 = *(v40 + 16);
      v43 = *(v40 + 24);
      if (v44 >= v43 >> 1)
      {
        v65 = v41;
        v46 = v42;
        sub_1D178CD24((v43 > 1), v44 + 1, 1);
        v42 = v46;
        v41 = v65;
        v40 = v68;
      }

      *(v40 + 16) = v44 + 1;
      v45 = v40 + 16 * v44;
      *(v45 + 32) = v41;
      *(v45 + 40) = v42;
      ++v39;
      --v38;
    }

    while (v38);

    v34 = 0x65736C6166;
  }

  else
  {

    v40 = MEMORY[0x1E69E7CC0];
  }

  *&v68 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v47 = sub_1D1E6770C();
  v49 = v48;

  MEMORY[0x1D3890F70](v47, v49);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  *&v68 = sub_1D1C75ED0(*(v1 + v16[9]));
  v50 = sub_1D1E6770C();
  v52 = v51;

  MEMORY[0x1D3890F70](v50, v52);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  if (*(v1 + v16[11]))
  {
    v53 = 1702195828;
  }

  else
  {
    v53 = 0x65736C6166;
  }

  if (*(v1 + v16[11]))
  {
    v54 = 0xE400000000000000;
  }

  else
  {
    v54 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v53, v54);

  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  if (*(v1 + v16[12]))
  {
    v55 = 1702195828;
  }

  else
  {
    v55 = 0x65736C6166;
  }

  if (*(v1 + v16[12]))
  {
    v56 = 0xE400000000000000;
  }

  else
  {
    v56 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v55, v56);

  MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  v57 = StaticServiceGroup.sortedStaticServices.getter();
  v58 = v57[2];
  if (!v58)
  {

LABEL_48:
    v63 = 0xE500000000000000;
    goto LABEL_51;
  }

  v59 = 0;
  v60 = v57 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
  v61 = *(v66 + 72);
  for (i = v58 - 1; ; --i)
  {
    sub_1D1C53710(v60, v5, type metadata accessor for StaticService);
    if ((v59 & 1) == 0)
    {
      break;
    }

    sub_1D1C53778(v5, type metadata accessor for StaticService);
    if (!i)
    {

      goto LABEL_50;
    }

    v59 = 1;
LABEL_42:
    v60 += v61;
  }

  v59 = StaticService.isActivated.getter();
  sub_1D1C53778(v5, type metadata accessor for StaticService);
  if (i)
  {
    goto LABEL_42;
  }

  if ((v59 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_50:
  v63 = 0xE400000000000000;
  v34 = 1702195828;
LABEL_51:
  MEMORY[0x1D3890F70](v34, v63);

  return v75;
}

uint64_t StaticServiceGroup.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticServiceGroup.name.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticServiceGroup() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticServiceGroup.homeNonResponsiveType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticServiceGroup();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t StaticServiceGroup.roomIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticServiceGroup() + 36));
}

uint64_t StaticServiceGroup.roomName.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticServiceGroup() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticServiceGroup.staticServicesDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticServiceGroup() + 56));
}

unint64_t sub_1D1C4509C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 0x6168636165527369;
    v8 = 0xD000000000000015;
    if (a1 != 3)
    {
      v8 = 0x6564644165746164;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 1701667182;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    v2 = 0xD000000000000017;
    if (a1 != 9)
    {
      v2 = 0xD000000000000018;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x7364496D6F6F72;
    v4 = 0x656D614E6D6F6F72;
    if (a1 != 6)
    {
      v4 = 0x69726F7661467369;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D1C45204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1C53384(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1C4522C(uint64_t a1)
{
  v2 = sub_1D1C52DC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1C45268(uint64_t a1)
{
  v2 = sub_1D1C52DC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticServiceGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CB58, &qword_1D1EA1998);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1C52DC4();
  sub_1D1E6930C();
  LOBYTE(v24) = 0;
  sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticServiceGroup();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v24) = 1;
    sub_1D1E68ECC();
    v15 = *(v3 + v11[6]);
    LOBYTE(v24) = 2;
    sub_1D1E68EDC();
    LOBYTE(v24) = *(v3 + v11[7]);
    v25 = 3;
    sub_1D1BC90EC();
    sub_1D1E68F1C();
    v16 = v11[8];
    LOBYTE(v24) = 4;
    sub_1D1E669FC();
    sub_1D1C53A0C(&qword_1EC642EC8, MEMORY[0x1E6969530]);
    sub_1D1E68E5C();
    v24 = *(v3 + v11[9]);
    v25 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1C52E18(&qword_1EC646B10, &qword_1EE07B258);
    sub_1D1E68F1C();
    v17 = (v3 + v11[10]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v24) = 6;
    sub_1D1E68E0C();
    v20 = *(v3 + v11[11]);
    LOBYTE(v24) = 7;
    sub_1D1E68EDC();
    v21 = *(v3 + v11[12]);
    LOBYTE(v24) = 8;
    sub_1D1E68EDC();
    v22 = *(v3 + v11[13]);
    LOBYTE(v24) = 9;
    sub_1D1E68EDC();
    v24 = *(v3 + v11[14]);
    v25 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
    sub_1D1B43D98();
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticServiceGroup.hash(into:)(__int128 *a1)
{
  v3 = sub_1D1E669FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23 - v10;
  sub_1D1E66A7C();
  sub_1D1C53A0C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v12 = type metadata accessor for StaticServiceGroup();
  v13 = (v1 + v12[5]);
  v14 = *v13;
  v15 = v13[1];
  sub_1D1E678EC();
  v16 = *(v1 + v12[6]);
  sub_1D1E6922C();
  MEMORY[0x1D3892850](*(v1 + v12[7]));
  sub_1D1741C08(v1 + v12[8], v11, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    sub_1D1E6922C();
    sub_1D1C53A0C(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v4 + 8))(v7, v3);
  }

  sub_1D176D4E8(a1, *(v1 + v12[9]));
  v17 = (v1 + v12[10]);
  if (v17[1])
  {
    v18 = *v17;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v19 = *(v1 + v12[11]);
  sub_1D1E6922C();
  v20 = *(v1 + v12[12]);
  sub_1D1E6922C();
  v21 = *(v1 + v12[13]);
  sub_1D1E6922C();
  return sub_1D18599F4(a1, *(v1 + v12[14]));
}

uint64_t StaticServiceGroup.hashValue.getter()
{
  sub_1D1E6920C();
  StaticServiceGroup.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticServiceGroup.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v33 - v5;
  v7 = sub_1D1E66A7C();
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CB68, &unk_1D1EA19A0);
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  v14 = type metadata accessor for StaticServiceGroup();
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1C52DC4();
  v40 = v13;
  v19 = v41;
  sub_1D1E692FC();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v6;
  v41 = a1;
  v34 = v17;
  LOBYTE(v42) = 0;
  sub_1D1C53A0C(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v21 = v37;
  sub_1D1E68D7C();
  v22 = v7;
  v23 = v34;
  (*(v36 + 32))(v34, v21, v22);
  LOBYTE(v42) = 1;
  v24 = sub_1D1E68D2C();
  v33 = v22;
  v25 = &v23[v14[5]];
  *v25 = v24;
  v25[1] = v26;
  LOBYTE(v42) = 2;
  v37 = 0;
  v23[v14[6]] = sub_1D1E68D3C() & 1;
  v43 = 3;
  sub_1D1BC934C();
  sub_1D1E68D7C();
  v23[v14[7]] = v42;
  sub_1D1E669FC();
  LOBYTE(v42) = 4;
  sub_1D1C53A0C(&qword_1EC642EB8, MEMORY[0x1E6969530]);
  sub_1D1E68CBC();
  sub_1D1741A90(v20, &v23[v14[8]], &qword_1EC642570, &qword_1D1E6C6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  v43 = 5;
  sub_1D1C52E18(&qword_1EC646B78, &qword_1EC644B20);
  sub_1D1E68D7C();
  *&v23[v14[9]] = v42;
  LOBYTE(v42) = 6;
  v27 = sub_1D1E68C6C();
  v28 = &v23[v14[10]];
  *v28 = v27;
  v28[1] = v29;
  LOBYTE(v42) = 7;
  v23[v14[11]] = sub_1D1E68D3C() & 1;
  LOBYTE(v42) = 8;
  v23[v14[12]] = sub_1D1E68D3C() & 1;
  LOBYTE(v42) = 9;
  v34[v14[13]] = sub_1D1E68D3C() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
  v43 = 10;
  sub_1D1B43CAC();
  sub_1D1E68D7C();
  (*(v38 + 8))(v40, v39);
  v31 = v34;
  v30 = v35;
  *&v34[v14[14]] = v42;
  sub_1D1C53710(v31, v30, type metadata accessor for StaticServiceGroup);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_1D1C53778(v31, type metadata accessor for StaticServiceGroup);
}

uint64_t sub_1D1C461EC()
{
  sub_1D1E6920C();
  StaticServiceGroup.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1C46230()
{
  sub_1D1E6920C();
  StaticServiceGroup.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticServiceGroup.displayAsServiceKind.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v44[-v8];
  v10 = type metadata accessor for StaticServiceGroup();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v44[-v16];
  v18 = *(v1 + *(v15 + 56));

  v20 = sub_1D1C3EB9C(v19);
  v21 = sub_1D1784388(v20);

  if (*(v21 + 16) < 2uLL)
  {
  }

  else
  {
    v48 = a1;
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v22 = sub_1D1E6709C();
    __swift_project_value_buffer(v22, qword_1EE07B5D8);
    sub_1D1C53710(v1, v17, type metadata accessor for StaticServiceGroup);
    sub_1D1C53710(v1, v14, type metadata accessor for StaticServiceGroup);

    v23 = sub_1D1E6707C();
    v24 = sub_1D1E6833C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49[0] = v47;
      *v25 = 136315650;
      v26 = &v17[*(v10 + 20)];
      v46 = v23;
      v27 = *v26;
      v28 = v26[1];

      v45 = v24;
      sub_1D1C53778(v17, type metadata accessor for StaticServiceGroup);
      v29 = sub_1D1B1312C(v27, v28, v49);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      sub_1D1E66A7C();
      sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v30 = sub_1D1E68FAC();
      v32 = v31;
      sub_1D1C53778(v14, type metadata accessor for StaticServiceGroup);
      v33 = sub_1D1B1312C(v30, v32, v49);

      *(v25 + 14) = v33;
      *(v25 + 22) = 2080;
      sub_1D1785814();
      v34 = sub_1D1E6817C();
      v36 = v35;

      v37 = sub_1D1B1312C(v34, v36, v49);

      *(v25 + 24) = v37;
      v38 = v46;
      _os_log_impl(&dword_1D16EC000, v46, v45, "Service group %s %s has multiple service kinds: %s", v25, 0x20u);
      v39 = v47;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v39, -1, -1);
      MEMORY[0x1D3893640](v25, -1, -1);
    }

    else
    {

      sub_1D1C53778(v14, type metadata accessor for StaticServiceGroup);
      sub_1D1C53778(v17, type metadata accessor for StaticServiceGroup);
    }

    a1 = v48;
  }

  sub_1D1771E98(v18, v9);
  v40 = type metadata accessor for StaticService(0);
  v41 = *(*(v40 - 8) + 48);
  if (v41(v9, 1, v40) == 1)
  {
    sub_1D1741A30(v9, &qword_1EC6436F0, &qword_1D1E99BC0);
  }

  else
  {
    v42 = v9[*(v40 + 112)];
    sub_1D1C53778(v9, type metadata accessor for StaticService);
    if (v42 != 53)
    {

      goto LABEL_16;
    }
  }

  sub_1D1771E98(v18, v7);

  if (v41(v7, 1, v40) == 1)
  {
    result = sub_1D1741A30(v7, &qword_1EC6436F0, &qword_1D1E99BC0);
    LOBYTE(v42) = 0;
  }

  else
  {
    LOBYTE(v42) = v7[*(v40 + 104)];
    result = sub_1D1C53778(v7, type metadata accessor for StaticService);
  }

LABEL_16:
  *a1 = v42;
  return result;
}

uint64_t StaticServiceGroup.tileIcon.getter@<X0>(__int128 *a1@<X8>)
{
  v56 = a1;
  v1 = type metadata accessor for StaticService(0);
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = StaticServiceGroup.sortedStaticServices.getter();
  v7 = v6[2];
  if (v7)
  {
    v80 = MEMORY[0x1E69E7CC0];
    v8 = v6;
    sub_1D178D818(0, v7, 0);
    v9 = v80;
    v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v55 = v8;
    v11 = v8 + v10;
    v12 = *(v2 + 72);
    v60 = v1;
    v61 = v12;
    v57 = 0x80000001D1EBD590;
    v13 = v7 - 1;
    v59 = v5;
    while (1)
    {
      sub_1D1C53710(v11, v5, type metadata accessor for StaticService);
      v14 = &v5[v1[25]];
      v15 = v14[1];
      if (v15)
      {
        v66 = v13;
        v16 = *v14;

        v17._countAndFlagsBits = v16;
        v17._object = v15;
        IconSymbol.init(rawValue:)(v17);
        v18 = v69;
        v67 = v11;
        v62 = v9;
        if (v69 == 92)
        {
          if (qword_1EC642238 != -1)
          {
            swift_once();
          }

          v74 = xmmword_1EC646768;
          v75 = xmmword_1EC646778;
          v76 = *&qword_1EC646788;
          name = xmmword_1EC646798;
          v78[0] = xmmword_1EC6467A8;
          *(v78 + 9) = *(&xmmword_1EC6467A8 + 9);
          v68 = *(&xmmword_1EC646768 + 1);
          v65 = xmmword_1EC646778;
          *(v72 + 3) = DWORD1(xmmword_1EC646778);
          v72[0] = *(&xmmword_1EC646778 + 1);
          v19 = qword_1EC646788;
          v63 = *(&xmmword_1EC646778 + 1);
          v64 = xmmword_1EC646768;
          v20 = byte_1EC646790;
          *(v71 + 3) = dword_1EC646794;
          v71[0] = *algn_1EC646791;
          v22 = *(&xmmword_1EC646798 + 1);
          v21 = xmmword_1EC646798;
          v23 = xmmword_1EC6467A8;
          *(v70 + 3) = DWORD1(xmmword_1EC6467A8);
          v70[0] = *(&xmmword_1EC6467A8 + 1);
          v24 = *(&v78[0] + 1);
          v25 = (*(&xmmword_1EC6467A8 + 9) >> 56);
          v26 = byte_1EC6467C0;
          sub_1D18A9844(&v74, v73);
          v27 = v65;
          v28 = v64;
        }

        else
        {
          LOBYTE(v74._countAndFlagsBits) = v69;
          v30 = IconSymbol.onStateSymbolName.getter();
          v68 = v31;
          v32 = 2;
          v64 = v30;
          if ((v18 - 26) <= 0x2D && ((1 << (v18 - 26)) & 0x200000000181) != 0)
          {
            v32 = 0;
          }

          v65 = v32;
          LOBYTE(v74._countAndFlagsBits) = v18;
          v63 = IconSymbol.rawValue.getter();
          v19 = v33;
          if ((v18 - 41) < 7 || v18 == 27)
          {
            v34 = 2;
          }

          else
          {
            v34 = 0;
          }

          v58 = v34;
          if (v18 == 31)
          {
            v26 = HomeDataModel_StaticRenderingMode_hierarchical;
            v24 = 0xD000000000000014;
            v25 = v57;
          }

          else
          {
            v35 = v33;
            LOBYTE(v74._countAndFlagsBits) = v18;
            v24 = IconSymbol.rawValue.getter();
            v25 = v36;
            if ((v18 - 41) < 7 || v18 == 27)
            {
              v26 = HomeDataModel_StaticRenderingMode_monochrome;
            }

            else
            {
              v26 = HomeDataModel_StaticRenderingMode_hierarchical;
            }

            v19 = v35;
          }

          v22 = v68;

          v28 = v64;
          v21 = v64;
          v27 = v65;
          v23 = v65;
          v20 = v58;
        }

        *(&v79.tileOnStateIconInfo.renderingMode + 1) = v72[0];
        *(&v79.tileOnStateIconInfo.renderingMode + 1) = *(v72 + 3);
        *(&v79.tileOffStateIconInfo.renderingMode + 1) = v71[0];
        *(&v79.tileOffStateIconInfo.renderingMode + 1) = *(v71 + 3);
        *(&v79.accessoryControlOnStateIconInfo.renderingMode + 1) = v70[0];
        *(&v79.accessoryControlOnStateIconInfo.renderingMode + 1) = *(v70 + 3);
        v79.tileOnStateIconInfo.name._countAndFlagsBits = v28;
        v79.tileOnStateIconInfo.name._object = v68;
        v79.tileOnStateIconInfo.renderingMode = v27;
        v79.tileOffStateIconInfo.name._countAndFlagsBits = v63;
        v79.tileOffStateIconInfo.name._object = v19;
        v79.tileOffStateIconInfo.renderingMode = v20;
        v79.accessoryControlOnStateIconInfo.name._countAndFlagsBits = v21;
        v79.accessoryControlOnStateIconInfo.name._object = v22;
        v79.accessoryControlOnStateIconInfo.renderingMode = v23;
        v79.accessoryControlOffStateIconInfo.name._countAndFlagsBits = v24;
        v79.accessoryControlOffStateIconInfo.name._object = v25;
        v79.accessoryControlOffStateIconInfo.renderingMode = v26;
        v5 = v59;
        v1 = v60;
        v13 = v66;
        v11 = v67;
        v9 = v62;
      }

      else
      {
        v29 = v5[v1[28]];
        if (v29 == 53)
        {
          LOBYTE(v29) = v5[v1[26]];
        }

        LOBYTE(v74._countAndFlagsBits) = v29;
        v73[0] = v5[v1[27]];
        Icon.init(serviceKind:serviceSubKind:)(&v79, &v74, v73);
      }

      name = v79.accessoryControlOnStateIconInfo.name;
      v78[0] = *&v79.accessoryControlOnStateIconInfo.renderingMode;
      *(v78 + 9) = *(&v79.accessoryControlOffStateIconInfo.name + 1);
      v74 = v79.tileOnStateIconInfo.name;
      v75 = *&v79.tileOnStateIconInfo.renderingMode;
      v76 = *&v79.tileOffStateIconInfo.name._object;
      sub_1D1C53778(v5, type metadata accessor for StaticService);
      v80 = v9;
      v38 = *(v9 + 16);
      v37 = *(v9 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1D178D818((v37 > 1), v38 + 1, 1);
        v9 = v80;
      }

      *(v9 + 16) = v38 + 1;
      v39 = (v9 + 96 * v38);
      v40 = v75;
      v39[2] = v74;
      v39[3] = v40;
      v41 = v76;
      v42 = name;
      v43 = v78[0];
      *(v39 + 105) = *(v78 + 9);
      v39[5] = v42;
      v39[6] = v43;
      v39[4] = v41;
      if (!v13)
      {
        break;
      }

      --v13;
      v11 += v61;
    }
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  sub_1D1C47328(v9, &v79);

  object = v79.tileOnStateIconInfo.name._object;
  if (v79.tileOnStateIconInfo.name._object)
  {
    v46 = v56;
    *v56 = v79.tileOnStateIconInfo.name._countAndFlagsBits;
    *(v46 + 1) = object;
    v47 = *&v79.tileOffStateIconInfo.name._object;
    v48 = *&v79.accessoryControlOnStateIconInfo.renderingMode;
    v46[3] = v79.accessoryControlOnStateIconInfo.name;
    v46[4] = v48;
    *(v46 + 73) = *(&v79.accessoryControlOffStateIconInfo.name + 1);
    v46[1] = *&v79.tileOnStateIconInfo.renderingMode;
    v46[2] = v47;
  }

  else
  {
    if (qword_1EC642238 != -1)
    {
      swift_once();
    }

    v49 = *&qword_1EC646788;
    v50 = xmmword_1EC6467A8;
    name = xmmword_1EC646798;
    v78[0] = xmmword_1EC6467A8;
    v51 = *(&xmmword_1EC6467A8 + 9);
    *(v78 + 9) = *(&xmmword_1EC6467A8 + 9);
    v52 = xmmword_1EC646768;
    v53 = xmmword_1EC646778;
    v74 = xmmword_1EC646768;
    v75 = xmmword_1EC646778;
    v76 = *&qword_1EC646788;
    v54 = v56;
    v56[3] = xmmword_1EC646798;
    v54[4] = v50;
    v54[1] = v53;
    v54[2] = v49;
    *(v54 + 73) = v51;
    *v54 = v52;
    return sub_1D18A9844(&v74, v73);
  }

  return result;
}

void *StaticServiceGroup.sortedStaticServices.getter()
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v1 = *(v30 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v30);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v29 = v26 - v6;
  v7 = type metadata accessor for StaticService(0);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + *(type metadata accessor for StaticServiceGroup() + 56));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = sub_1D18041C0(*(v11 + 16), 0);
    v14 = sub_1D18046C0(v31, v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v12, v11);
    v26[1] = v31[4];
    v27 = v31[3];
    swift_bridgeObjectRetain_n();
    sub_1D1716918();
    if (v14 == v12)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v31[0] = v13;
  sub_1D1C4F9D0(v31);

  v15 = v31[0];
  v16 = v31[0][2];
  if (v16)
  {
    v31[0] = MEMORY[0x1E69E7CC0];
    sub_1D17915E0(0, v16, 0);
    v17 = v31[0];
    v18 = *(v1 + 80);
    v27 = v15;
    v19 = v15 + ((v18 + 32) & ~v18);
    v20 = *(v1 + 72);
    do
    {
      v21 = v29;
      sub_1D1741C08(v19, v29, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1741A90(v21, v5, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1C5381C(&v5[*(v30 + 48)], v10, type metadata accessor for StaticService);
      v22 = sub_1D1E66A7C();
      (*(*(v22 - 8) + 8))(v5, v22);
      v31[0] = v17;
      v24 = v17[2];
      v23 = v17[3];
      if (v24 >= v23 >> 1)
      {
        sub_1D17915E0(v23 > 1, v24 + 1, 1);
        v17 = v31[0];
      }

      v17[2] = v24 + 1;
      sub_1D1C5381C(v10, v17 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, type metadata accessor for StaticService);
      v19 += v20;
      --v16;
    }

    while (v16);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v17;
}

void sub_1D1C4715C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D18F9944(a1);
  v4 = objc_allocWithZone(MEMORY[0x1E696AB50]);
  v5 = sub_1D1E67BFC();

  v6 = [v4 initWithArray_];

  v7 = *(a1 + 16);
  if (v7)
  {
    v24 = v6;
    v25 = 0;
    v20 = a2;
    v8 = 0;
    v22 = 0;
    v23 = 0;
    v9 = (a1 + 56);
    v21 = 1;
    do
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 16);
      v12 = *(v9 - 15);
      v13 = *(v9 - 1);
      v14 = *v9;
      v26 = *(v9 - 16);
      sub_1D18F098C(v10, v26);

      sub_1D18F098C(v10, v26);

      v15 = [v24 countForObject_];
      swift_unknownObjectRelease();
      if (v8 < v15)
      {
        sub_1D1C537D8(v25, v22, v23, v21);
        v8 = v15;
        v25 = v10;
        v21 = v14;
        v22 = v11 | (v12 << 8);
        v23 = v13;
      }

      else
      {
        sub_1D1820F58(v10, v11);
      }

      v9 += 4;
      --v7;
    }

    while (v7);

    a2 = v20;
    v16 = v21;
    v17 = v25;
    v19 = v22;
    v18 = v23;
  }

  else
  {

    v17 = 0;
    v19 = 0;
    v18 = 0;
    v16 = 1;
  }

  *a2 = v17;
  a2[1] = v19;
  a2[2] = v18;
  a2[3] = v16;
}

void sub_1D1C47328(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D18F9A64(a1);
  v4 = objc_allocWithZone(MEMORY[0x1E696AB50]);
  v5 = sub_1D1E67BFC();

  v6 = [v4 initWithArray_];

  v7 = *(a1 + 16);
  if (v7)
  {
    v31 = a2;
    v32 = v6;
    v8 = (a1 + 32);
    v50 = 0u;
    memset(v51, 0, 25);
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    v33 = 0;
    v35 = v7 - 1;
    while (1)
    {
      v9 = v8[3];
      v10 = v8[1];
      v44 = v8[2];
      v45 = v9;
      v11 = v8[3];
      v46[0] = v8[4];
      *(v46 + 9) = *(v8 + 73);
      v12 = v8[1];
      v43[0] = *v8;
      v43[1] = v12;
      v40 = v44;
      v41 = v11;
      v42[0] = v8[4];
      *(v42 + 9) = *(v8 + 73);
      v38 = v43[0];
      v39 = v10;
      sub_1D18A9844(v43, v37);
      sub_1D18A9844(v43, v37);
      v13 = [v6 countForObject_];
      swift_unknownObjectRelease();
      if (v33 >= v13)
      {
        sub_1D18A98A0(v43);
        v14 = &v47;
      }

      else
      {
        sub_1D1741A30(&v47, &qword_1EC64CBA8, &unk_1D1EA1D08);
        v14 = v43;
        v33 = v13;
      }

      v15 = *(v14 + 2);
      v16 = *(v14 + 3);
      v18 = *(v14 + 4);
      v17 = *(v14 + 5);
      v20 = *(v14 + 6);
      v19 = *(v14 + 7);
      v22 = *(v14 + 8);
      v21 = *(v14 + 9);
      v23 = *(v14 + 10);
      v24 = *(v14 + 88);
      v25 = *v14;
      v26 = *(v14 + 1);
      if (!v35)
      {
        break;
      }

      *&v47 = *v14;
      *(&v47 + 1) = v26;
      *&v48 = v15;
      *(&v48 + 1) = v16;
      *&v49 = v18;
      *(&v49 + 1) = v17;
      *&v50 = v20;
      *(&v50 + 1) = v19;
      v51[0] = v22;
      v51[1] = v21;
      v51[2] = v23;
      --v35;
      v8 += 6;
      LOBYTE(v51[3]) = v24;
      v6 = v32;
    }

    v36 = *(v14 + 88);
    v27 = *(v14 + 10);
    v34 = *(v14 + 9);

    v28 = v34;
    v29 = v27;
    v30 = v36;
    a2 = v31;
  }

  else
  {

    v30 = 0;
    v29 = 0;
    v28 = 0;
    v22 = 0;
    v19 = 0;
    v20 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    v15 = 0;
    v26 = 0;
    v25 = 0;
  }

  *a2 = v25;
  *(a2 + 8) = v26;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  *(a2 + 40) = v17;
  *(a2 + 48) = v20;
  *(a2 + 56) = v19;
  *(a2 + 64) = v22;
  *(a2 + 72) = v28;
  *(a2 + 80) = v29;
  *(a2 + 88) = v30;
}

void Array.mostCommon.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v25 - v11;
  sub_1D1E68AAC();
  v12 = objc_allocWithZone(MEMORY[0x1E696AB50]);
  v13 = sub_1D1E67BFC();

  v31 = [v12 initWithArray_];

  v14 = *(v6 + 56);
  v28 = v6 + 56;
  v29 = a3;
  v27 = v14;
  v14(a3, 1, 1, a2);
  if (sub_1D1E67CBC())
  {
    v15 = 0;
    v32 = 0;
    v30 = (v6 + 16);
    v16 = (v6 + 32);
    v26 = (v6 + 8);
    while (1)
    {
      v17 = sub_1D1E67C9C();
      sub_1D1E67C4C();
      if (v17)
      {
        (*(v6 + 16))(v33, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, a2);
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        v23 = sub_1D1E688AC();
        if (v25 != 8)
        {
          __break(1u);
          return;
        }

        v34 = v23;
        (*v30)(v33, &v34, a2);
        swift_unknownObjectRelease();
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_12:
          __break(1u);
LABEL_13:

          return;
        }
      }

      v19 = *v16;
      (*v16)(v10, v33, a2);
      v20 = [v31 countForObject_];
      swift_unknownObjectRelease();
      if (v32 >= v20)
      {
        (*v26)(v10, a2);
      }

      else
      {
        v21 = sub_1D1E685AC();
        v22 = v29;
        (*(*(v21 - 8) + 8))(v29, v21);
        v19(v22, v10, a2);
        v27(v22, 0, 1, a2);
        v32 = v20;
      }

      ++v15;
      if (v18 == sub_1D1E67CBC())
      {
        goto LABEL_13;
      }
    }
  }

  v24 = v31;
}

uint64_t sub_1D1C47960(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = StaticServiceGroup.sortedStaticServices.getter();
  v8 = v7[2];
  if (v8)
  {
    v9 = 0;
    v10 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      v12 = sub_1D1C53710(v10, v6, type metadata accessor for StaticService);
      if (v9)
      {
        v9 = 1;
      }

      else
      {
        v9 = a1(v12);
      }

      sub_1D1C53778(v6, type metadata accessor for StaticService);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = 0;
  }

  return v9 & 1;
}

uint64_t StaticServiceGroup.canBeToggled.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v82 = &v75 - v6;
  v7 = type metadata accessor for StaticService(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + *(type metadata accessor for StaticServiceGroup() + 56));
  v13 = v7;
  v14 = v12 + 64;
  v15 = 1 << *(v12 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v12 + 64);
  v18 = (v15 + 63) >> 6;
  v81 = "00-8000-0026BB765291";
  v85 = 0x80000001D1EB3340;
  v80 = "00-8000-0026BB765291";
  v84 = 0x80000001D1EB3550;
  swift_bridgeObjectRetain_n();
  v19 = 0;
  v88 = "takeSnaphotsWhenBusy";
  while (1)
  {
    while (1)
    {
      if (!v17)
      {
        while (1)
        {
          v20 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v20 >= v18)
          {

            v72 = 1;
            goto LABEL_173;
          }

          v17 = *(v14 + 8 * v20);
          ++v19;
          if (v17)
          {
            v19 = v20;
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_175:
        v74 = type metadata accessor for StaticCharacteristic();
        v58 = v79;
        (*(*(v74 - 8) + 56))(v79, 1, 1, v74);
LABEL_176:
        sub_1D1C53778(v11, type metadata accessor for StaticService);

        sub_1D1741A30(v58, &qword_1EC643630, &qword_1D1E71D10);
        v72 = 0;
        goto LABEL_173;
      }

LABEL_10:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      sub_1D1C53710(*(v12 + 56) + *(v8 + 72) * (v21 | (v19 << 6)), v11, type metadata accessor for StaticService);
      v22 = v11[*(v13 + 104)];
      v23 = v22 > 0x30 || ((1 << v22) & 0x1964490330008) == 0;
      if (v23)
      {
        break;
      }

LABEL_14:
      sub_1D1C53778(v11, type metadata accessor for StaticService);
    }

    v76 = *(v13 + 104);
    v78 = v13;
    if (qword_1EC642230 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = *(off_1EC646318 + 2);
    v77 = v12;
    v79 = v5;
    v75 = v8;
    if (v24)
    {
      v25 = *(off_1EC646318 + 5);
      v87 = off_1EC646318;
      sub_1D1E6920C();
      v89 = v22;
      ServiceKind.rawValue.getter();

      sub_1D1E678EC();

      v26 = sub_1D1E6926C();
      v27 = v87;
      v28 = -1 << v87[32];
      v29 = v26 & ~v28;
      v86 = v87 + 56;
      if ((*&v87[((v29 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v29))
      {
        v83 = ~v28;
        while (1)
        {
          v30 = v88;
          switch(*(v27[6] + v29))
          {
            case 1:
              v31 = "0000003E-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 2:
              v31 = "00000270-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 3:
              v31 = "000000BB-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 4:
              v31 = "0000008D-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 5:
              v31 = "00000096-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 6:
              v31 = "00000042-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 7:
              v31 = "00000110-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 8:
              v31 = "00000204-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 9:
              v31 = "00000097-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xA:
              v31 = "0000007F-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xB:
              v31 = "00000080-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xC:
              v31 = "00000129-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xD:
              v31 = "00000237-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xE:
              v31 = "00000081-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xF:
              v31 = "00000121-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x10:
              v31 = "00000040-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x11:
              v31 = "000000D7-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x12:
              v31 = "000000BA-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x13:
              v31 = "00000041-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x14:
              v31 = "000000BC-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x15:
              v31 = "000000BD-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x16:
              v31 = "00000082-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x17:
              v31 = "000000D9-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x18:
              v31 = "000000CF-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x19:
              v31 = "000000CC-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1A:
              v31 = "00000083-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1B:
              v31 = "00000084-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1C:
              v31 = "00000043-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1D:
              v31 = "00000044-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1E:
              v31 = "00000045-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1F:
              v31 = "00000112-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x20:
              v31 = "00000085-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x21:
              v31 = "00000086-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x22:
              v31 = "00000047-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x23:
              v30 = v81;
              break;
            case 0x24:
              v31 = "000000B9-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x25:
              v31 = "00000087-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x26:
              v31 = "00000113-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x27:
              v31 = "00000088-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x28:
              v31 = "00000089-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x29:
              v31 = "00000049-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2A:
              v31 = "00000125-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2B:
              v31 = "00000122-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2C:
              v31 = "000000D8-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2D:
              v31 = "0000008A-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2E:
              v30 = v80;
              break;
            case 0x2F:
              v31 = "000000D0-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x30:
              v31 = "000000B7-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x31:
              v31 = "0000020A-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x32:
              v31 = "0000020F-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x33:
              v31 = "0000008B-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x34:
              v31 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_73:
              v30 = v31 - 32;
              break;
            default:
              break;
          }

          v32 = v30 | 0x8000000000000000;
          v33 = v88;
          switch(v22)
          {
            case 1u:
              v34 = "0000003E-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 2u:
              v34 = "00000270-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 3u:
              v34 = "000000BB-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 4u:
              v34 = "0000008D-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 5u:
              v34 = "00000096-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 6u:
              v34 = "00000042-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 7u:
              v34 = "00000110-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 8u:
              v34 = "00000204-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 9u:
              v34 = "00000097-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0xAu:
              v34 = "0000007F-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0xBu:
              v34 = "00000080-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0xCu:
              v34 = "00000129-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0xDu:
              v34 = "00000237-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0xEu:
              v34 = "00000081-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0xFu:
              v34 = "00000121-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x10u:
              v34 = "00000040-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x11u:
              v34 = "000000D7-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x12u:
              v34 = "000000BA-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x13u:
              v34 = "00000041-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x14u:
              v34 = "000000BC-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x15u:
              v34 = "000000BD-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x16u:
              v34 = "00000082-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x17u:
              v34 = "000000D9-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x18u:
              v34 = "000000CF-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x19u:
              v34 = "000000CC-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x1Au:
              v34 = "00000083-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x1Bu:
              v34 = "00000084-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x1Cu:
              v34 = "00000043-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x1Du:
              v34 = "00000044-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x1Eu:
              v34 = "00000045-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x1Fu:
              v34 = "00000112-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x20u:
              v34 = "00000085-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x21u:
              v34 = "00000086-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x22u:
              v34 = "00000047-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x23u:
              v33 = v81;
              break;
            case 0x24u:
              v34 = "000000B9-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x25u:
              v34 = "00000087-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x26u:
              v34 = "00000113-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x27u:
              v34 = "00000088-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x28u:
              v34 = "00000089-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x29u:
              v34 = "00000049-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x2Au:
              v34 = "00000125-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x2Bu:
              v34 = "00000122-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x2Cu:
              v34 = "000000D8-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x2Du:
              v34 = "0000008A-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x2Eu:
              v33 = v80;
              break;
            case 0x2Fu:
              v34 = "000000D0-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x30u:
              v34 = "000000B7-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x31u:
              v34 = "0000020A-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x32u:
              v34 = "0000020F-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x33u:
              v34 = "0000008B-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x34u:
              v34 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_127:
              v33 = v34 - 32;
              break;
            default:
              break;
          }

          if (v32 == (v33 | 0x8000000000000000))
          {
            break;
          }

          v35 = sub_1D1E6904C();

          if (v35)
          {
            goto LABEL_170;
          }

          v29 = (v29 + 1) & v83;
          v27 = v87;
          if (((*&v86[(v29 >> 3) & 0xFFFFFFFFFFFFFF8] >> v29) & 1) == 0)
          {
            goto LABEL_131;
          }
        }

LABEL_170:

        v12 = v77;
        v5 = v79;
        v13 = v78;
        v8 = v75;
        goto LABEL_14;
      }

LABEL_131:

      v12 = v77;
    }

    v90 = v11[v76];
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v85 == v36)
    {
    }

    else
    {
      v37 = sub_1D1E6904C();

      if ((v37 & 1) == 0)
      {
        goto LABEL_143;
      }
    }

    v38 = *&v11[*(v78 + 128)];
    if (!*(v38 + 16))
    {
      v47 = type metadata accessor for StaticCharacteristic();
      v46 = v82;
      (*(*(v47 - 8) + 56))(v82, 1, 1, v47);
LABEL_142:
      sub_1D1741A30(v46, &qword_1EC643630, &qword_1D1E71D10);
      goto LABEL_143;
    }

    v39 = *&v11[*(v78 + 128)];

    v40 = sub_1D171D140(160);
    if (v41)
    {
      v42 = v40;
      v87 = *(v38 + 56);
      v43 = type metadata accessor for StaticCharacteristic();
      v44 = *(v43 - 8);
      v45 = &v87[*(v44 + 72) * v42];
      v46 = v82;
      sub_1D1C53710(v45, v82, type metadata accessor for StaticCharacteristic);
      (*(v44 + 56))(v46, 0, 1, v43);
      v12 = v77;
    }

    else
    {
      v43 = type metadata accessor for StaticCharacteristic();
      v46 = v82;
      (*(*(v43 - 8) + 56))(v82, 1, 1, v43);
    }

    type metadata accessor for StaticCharacteristic();
    if ((*(*(v43 - 8) + 48))(v46, 1, v43) == 1)
    {
      goto LABEL_142;
    }

    v67 = v46 + *(v43 + 44);
    v68 = *v67;
    v69 = *(v67 + 16);
    v70 = *(v67 + 24);
    v64 = *(v67 + 32);
    v86 = *(v67 + 8);
    v87 = v68;
    sub_1D18F323C(v68, v86, v69, v70);
    sub_1D1C53778(v46, type metadata accessor for StaticCharacteristic);
    if (v70 >> 8 != 0xFFFFFFFF)
    {
      if (!(v70 >> 62))
      {
        if (!v64)
        {
          if (v69 <= 1)
          {
            v71 = 1;
          }

          else
          {
            v71 = v69;
          }

          v64 = sub_1D1C279CC(v86, v87, v71);
        }

        goto LABEL_160;
      }

      sub_1D18F3260(v87, v86, v69, v70);
    }

LABEL_143:
    v90 = v11[v76];
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v84 == v48)
    {
    }

    else
    {
      v49 = sub_1D1E6904C();

      if ((v49 & 1) == 0)
      {
        break;
      }
    }

    v50 = *&v11[*(v78 + 128)];
    if (!*(v50 + 16))
    {
      goto LABEL_175;
    }

    v51 = *&v11[*(v78 + 128)];

    v52 = sub_1D171D140(152);
    if (v53)
    {
      v54 = v52;
      v87 = *(v50 + 56);
      v55 = type metadata accessor for StaticCharacteristic();
      v56 = *(v55 - 8);
      v57 = &v87[*(v56 + 72) * v54];
      v58 = v79;
      sub_1D1C53710(v57, v79, type metadata accessor for StaticCharacteristic);
      (*(v56 + 56))(v58, 0, 1, v55);
    }

    else
    {
      v55 = type metadata accessor for StaticCharacteristic();
      v58 = v79;
      (*(*(v55 - 8) + 56))(v79, 1, 1, v55);
    }

    type metadata accessor for StaticCharacteristic();
    if ((*(*(v55 - 8) + 48))(v58, 1, v55) == 1)
    {
      goto LABEL_176;
    }

    v59 = (v58 + *(v55 + 44));
    v61 = *v59;
    v60 = v59[1];
    v63 = v59[2];
    v62 = v59[3];
    v64 = v59[4];
    sub_1D18F323C(*v59, v60, v63, v62);
    sub_1D1C53778(v79, type metadata accessor for StaticCharacteristic);
    if (v62 >> 8 == 0xFFFFFFFF)
    {
      break;
    }

    if (v62 >> 62)
    {
      sub_1D18F3260(v61, v60, v63, v62);

      sub_1D1C53778(v11, type metadata accessor for StaticService);
      v72 = 0;
      goto LABEL_173;
    }

    if (!v64)
    {
      if (v63 <= 1)
      {
        v65 = 1;
      }

      else
      {
        v65 = v63;
      }

      v64 = sub_1D1C279CC(v60, v61, v65);
    }

    v12 = v77;
LABEL_160:
    v8 = v75;
    sub_1D1C53778(v11, type metadata accessor for StaticService);
    v66 = *(v64 + 16);

    v23 = v66 == 2;
    v5 = v79;
    v13 = v78;
    if (!v23)
    {
      goto LABEL_180;
    }
  }

  sub_1D1C53778(v11, type metadata accessor for StaticService);
LABEL_180:

  v72 = 0;
LABEL_173:

  return v72;
}

uint64_t StaticServiceGroup.toggle()(uint64_t a1)
{
  *(v1 + 48) = 2;
  *(v1 + 16) = xmmword_1D1E88490;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_1D186C9D4;

  return StaticServiceGroup.toggle(options:context:)(a1, (v1 + 48), (v1 + 16));
}

uint64_t sub_1D1C48BD4()
{
  v0 = type metadata accessor for StaticService(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = StaticServiceGroup.sortedStaticServices.getter();
  if (v5[2])
  {
    sub_1D1C53710(v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v4, type metadata accessor for StaticService);

    v6 = v4[*(v0 + 28)];
    sub_1D1C53778(v4, type metadata accessor for StaticService);
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t StaticServiceGroup.isDoubleHigh.getter()
{
  v0 = type metadata accessor for StaticService(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = StaticServiceGroup.sortedStaticServices.getter();
  if (v5[2])
  {
    sub_1D1C53710(v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v4, type metadata accessor for StaticService);

    v6 = v4[*(v0 + 28)];
    sub_1D1C53778(v4, type metadata accessor for StaticService);
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_1D1C48E04(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t StaticServiceGroup.statusString(with:associatedMatterDevice:)(_BYTE *a1)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v3 = *(*(v57 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v57);
  v56 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v46 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v46 - v8;
  v9 = StaticServiceGroup.sortedStaticServices.getter();
  v61 = a1;
  v10 = sub_1D1C92604(0, 0, sub_1D1C52EB4, v60, v9);
  v12 = v11;

  v13 = type metadata accessor for StaticServiceGroup();
  if (*(v1 + v13[6]) == 1)
  {
    v48 = v12;
    v49 = v10;
    v51 = a1;
    v47 = v13;
    v14 = v13[14];
    v50 = v1;
    v15 = *(v1 + v14);
    v16 = *(v15 + 64);
    v52 = v15 + 64;
    v17 = 1 << *(v15 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v53 = v15;

    v22 = 0;
    v23 = v57;
    while (v19)
    {
      v24 = v22;
LABEL_11:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v24 << 6);
      v27 = v53;
      v28 = *(v53 + 48);
      v29 = sub_1D1E66A7C();
      v30 = *(v29 - 8);
      v58 = v29;
      v59 = v30;
      v31 = v54;
      (*(v30 + 16))(v54, v28 + *(v30 + 72) * v26, v29);
      v32 = *(v27 + 56);
      v33 = (type metadata accessor for StaticService(0) - 8);
      sub_1D1C53710(v32 + *(*v33 + 72) * v26, v31 + *(v23 + 48), type metadata accessor for StaticService);
      v34 = v55;
      sub_1D1741C08(v31, v55, &qword_1EC642DB0, &unk_1D1E6F360);
      v35 = v34 + *(v23 + 48);
      v36 = *(v35 + v33[34]);

      sub_1D1C53778(v35, type metadata accessor for StaticService);
      *&v65[0] = v36;
      v37 = v56;
      sub_1D1741C08(v31, v56, &qword_1EC642DB0, &unk_1D1E6F360);
      v38 = v37 + *(v23 + 48);
      LOBYTE(v36) = *(v38 + v33[28]);
      sub_1D1C53778(v38, type metadata accessor for StaticService);
      LOBYTE(v62) = v36;
      LOBYTE(v36) = StaticCharacteristicsBag.isReachable(for:)(&v62);

      sub_1D1741A30(v31, &qword_1EC642DB0, &unk_1D1E6F360);
      v39 = v58;
      v40 = *(v59 + 8);
      v40(v37, v58);
      result = (v40)(v34, v39);
      if ((v36 & 1) == 0)
      {
        v41 = 0;
LABEL_15:

        a1 = v51;
        v1 = v50;
        v10 = v49;
        v12 = v48;
        v13 = v47;
        goto LABEL_16;
      }
    }

    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v20)
      {
        v41 = 1;
        goto LABEL_15;
      }

      v19 = *(v52 + 8 * v24);
      ++v22;
      if (v19)
      {
        v22 = v24;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v41 = 0;
LABEL_16:
    v42 = *(v1 + v13[7]);
    v43 = StaticServiceGroup.isUpdating.getter() & 1;
    LOBYTE(v65[0]) = a1[4];
    v44 = StaticServiceGroup.stateStatusString(context:)(v65);
    LOBYTE(v62) = v41;
    BYTE1(v62) = v42;
    WORD1(v62) = 514;
    BYTE4(v62) = v43;
    *(&v62 + 1) = v44.value._countAndFlagsBits;
    *&v63 = v44.value._object;
    *(&v63 + 1) = v10;
    v64 = v12;
    v45 = StatusStrings.string(for:)(a1);
    v65[0] = v62;
    v65[1] = v63;
    v66 = v64;
    sub_1D1A46590(v65);
    return v45;
  }

  return result;
}

uint64_t sub_1D1C492E8(uint64_t a1)
{
  *(v1 + 48) = 2;
  *(v1 + 16) = xmmword_1D1E88490;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_1D186E3E4;

  return StaticServiceGroup.toggle(options:context:)(a1, (v1 + 48), (v1 + 16));
}

uint64_t sub_1D1C493B4(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D1A44134;

  return StaticServiceGroup.set(showInDashboard:)(a1);
}

uint64_t sub_1D1C49448(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D1A08578;

  return StaticServiceGroup.set(includeInStatus:)(a1);
}

uint64_t StaticServiceGroup.set(includeInStatus:)(char a1)
{
  *(v1 + 80) = a1;
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C4956C;

  return StaticServiceGroup.serviceGroup.getter();
}

uint64_t sub_1D1C4956C(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C4966C, 0, 0);
}

uint64_t sub_1D1C4966C()
{
  v1 = v0[9];
  if (v1)
  {
    v20 = v0[9];
    v2 = [v1 services];
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v3 = sub_1D1E67C1C();

    if (v3 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D3891EF0](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = *(v0 + 80);
        v10 = [v6 applicationData];
        v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        v12 = sub_1D1E677EC();
        [v10 setObject:v11 forKeyedSubscript:v12];

        v13 = [v7 applicationData];
        v14 = swift_allocObject();
        *(v14 + 16) = v7;
        v0[6] = sub_1D1C52DA4;
        v0[7] = v14;
        v0[2] = MEMORY[0x1E69E9820];
        v0[3] = 1107296256;
        v0[4] = sub_1D1C40BA8;
        v0[5] = &block_descriptor_29;
        v15 = _Block_copy(v0 + 2);
        v16 = v0[7];
        v17 = v7;

        [v17 updateApplicationData:v13 completionHandler:v15];
        _Block_release(v15);

        ++v5;
        if (v8 == i)
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
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1D1C49944@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = a1[1];
  if (v4)
  {
    v5 = *a1;
    v6 = v4;
  }

  else
  {
    v8 = *(a2 + 4);
    v5 = sub_1D1C38C04(&v8);
  }

  *a3 = v5;
  a3[1] = v6;
}

uint64_t StaticServiceGroup.isUpdating.getter()
{
  v0 = type metadata accessor for StaticService(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = StaticServiceGroup.sortedStaticServices.getter();
  v6 = result;
  v7 = 0;
  v8 = *(result + 16);
  while (1)
  {
    v9 = v7;
    if (v8 == v7)
    {
LABEL_5:

      return v8 != v9;
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    sub_1D1C53710(v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v7++, v4, type metadata accessor for StaticService);
    v13 = *&v4[*(v0 + 128)];
    v12[7] = v4[*(v0 + 104)];

    v10 = ServiceKind.stateStatusDependentCharaceristicKinds.getter();
    v11 = StaticCharacteristicsBag.isUpdating(for:)(v10);

    result = sub_1D1C53778(v4, type metadata accessor for StaticService);
    if (v11)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t StaticServiceGroup.hasDetailAttentionMessages.getter()
{
  v32 = type metadata accessor for StaticHH2Update(0);
  v0 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v2 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  v3 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for StaticSoftwareUpdate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StaticService(0);
  v39 = *(v14 - 8);
  v15 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = StaticServiceGroup.sortedStaticServices.getter();
  v19 = result;
  v36 = *(result + 16);
  if (!v36)
  {
LABEL_22:

    return 0;
  }

  v20 = 0;
  v31 = v2 + 8;
  v37 = (v10 + 48);
  v33 = v13;
  v34 = result;
  while (v20 < *(v19 + 16))
  {
    sub_1D1C53710(v19 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v20, v17, type metadata accessor for StaticService);
    sub_1D1741C08(&v17[*(v14 + 136)], v8, &qword_1EC644760, &unk_1D1E9E530);
    if ((*v37)(v8, 1, v9) == 1)
    {
      sub_1D1741A30(v8, &qword_1EC644760, &unk_1D1E9E530);
      goto LABEL_18;
    }

    sub_1D1C5381C(v8, v13, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1C53710(&v13[*(v9 + 20)], v38, type metadata accessor for StaticSoftwareUpdate.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_29;
      }
    }

    else if (!EnumCaseMultiPayload)
    {
      sub_1D1C5381C(v38, v2, type metadata accessor for StaticHH2Update);
      if (!*&v31[*(v32 + 24)])
      {
        sub_1D1C53778(v2, type metadata accessor for StaticHH2Update);
        sub_1D1C53778(v13, type metadata accessor for StaticSoftwareUpdate);
        v19 = v34;
        goto LABEL_18;
      }

      v22 = v2[*(v32 + 20)];
      v23 = type metadata accessor for StaticHH2Update;
      v24 = v2;
      goto LABEL_13;
    }

    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48);
    v24 = v38;
    v22 = *(v38 + v25);
    v23 = type metadata accessor for StaticSoftwareUpdateMetadata;
LABEL_13:
    sub_1D1C53778(v24, v23);
    if (v22 > 4)
    {
      v19 = v34;
      if (v22 != 7)
      {
        if (v22 != 5)
        {
          if (v22 == 6)
          {
            v27 = "InstallingDescription";
            v28 = 0xD000000000000019;
LABEL_31:
            v29 = v33;
            static String.hfLocalized(_:)(v28, v27 | 0x8000000000000000);
            sub_1D1C53778(v29, type metadata accessor for StaticSoftwareUpdate);
            goto LABEL_32;
          }

LABEL_30:
          v27 = "StateDescriptionUpdateAvailable";
          v28 = 0xD000000000000025;
          goto LABEL_31;
        }

LABEL_29:
        static String.hfLocalized(_:)(0xD00000000000002FLL, 0x80000001D1EC7920);
        sub_1D1C53778(v33, type metadata accessor for StaticSoftwareUpdate);
        goto LABEL_32;
      }
    }

    else
    {
      v19 = v34;
      if (v22 != 2)
      {
        if (v22 != 3)
        {
          if (v22 == 4)
          {
            v27 = "HFSoftwareUpdateRequested";
            v28 = 0xD000000000000026;
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        goto LABEL_29;
      }
    }

    v13 = v33;
    sub_1D1C53778(v33, type metadata accessor for StaticSoftwareUpdate);
LABEL_18:
    v26 = v17[*(v14 + 40)];
    if (v26 != 2 && (v26 & 1) != 0)
    {
      static String.hfLocalized(_:)(0xD00000000000001ELL, 0x80000001D1EC63C0);
LABEL_32:
      sub_1D1C53778(v17, type metadata accessor for StaticService);

      return 1;
    }

    ++v20;
    result = sub_1D1C53778(v17, type metadata accessor for StaticService);
    if (v36 == v20)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t StaticServiceGroup.statusIcon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = StaticServiceGroup.sortedStaticServices.getter();
  v8 = v7[2];
  if (v8)
  {
    v30 = a1;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1D178D47C(0, v8, 0);
    v9 = v32;
    v10 = *(v3 + 80);
    v29 = v7;
    v11 = v7 + ((v10 + 32) & ~v10);
    v31 = *(v3 + 72);
    do
    {
      sub_1D1C53710(v11, v6, type metadata accessor for StaticService);
      v12 = v6[v2[28]];
      if (v12 == 53)
      {
        v12 = v6[v2[26]];
      }

      v13 = v6[v2[27]];
      v14 = &v6[v2[25]];
      v15 = v14[1];
      if (v15)
      {
        v16 = *v14;
        v17 = v14[1];

        v18._countAndFlagsBits = v16;
        v18._object = v15;
        IconSymbol.init(rawValue:)(v18);
        v19 = v36;
      }

      else
      {
        v19 = 92;
      }

      sub_1D1C53778(v6, type metadata accessor for StaticService);
      v32 = v9;
      v21 = *(v9 + 16);
      v20 = *(v9 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1D178D47C((v20 > 1), v21 + 1, 1);
        v9 = v32;
      }

      *(v9 + 16) = v21 + 1;
      v22 = v9 + 32 * v21;
      *(v22 + 32) = v12 | (v13 << 8);
      *(v22 + 40) = 0;
      *(v22 + 41) = v19;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      v11 += v31;
      --v8;
    }

    while (v8);

    a1 = v30;
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  sub_1D1C4715C(v9, &v32);

  v24 = v35;
  if (v35 == 1)
  {
    v25 = 0;
    v26 = 0;
    v24 = 0;
    LOBYTE(v27) = 92;
    v28 = 0x80;
  }

  else
  {
    v28 = v33;
    v26 = v34;
    v25 = v32;
    v27 = v33 >> 8;
  }

  *a1 = v25;
  *(a1 + 8) = v28;
  *(a1 + 9) = v27;
  *(a1 + 16) = v26;
  *(a1 + 24) = v24;
  return result;
}

uint64_t StaticServiceGroup.tileStatusStringIconSymbolSuffix.getter()
{
  v0 = type metadata accessor for StaticService(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  result = StaticServiceGroup.sortedStaticServices.getter();
  v9 = result;
  v10 = *(result + 16);
  if (v10)
  {
    v11 = 0;
    while (v11 < *(v9 + 16))
    {
      sub_1D1C53710(v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11, v5, type metadata accessor for StaticService);
      StaticService.tileStatusStringIconSymbolSuffix.getter();
      if (v12)
      {

        sub_1D1C5381C(v5, v7, type metadata accessor for StaticService);
        v13 = StaticService.tileStatusStringIconSymbolSuffix.getter();
        sub_1D1C53778(v7, type metadata accessor for StaticService);
        return v13;
      }

      ++v11;
      result = sub_1D1C53778(v5, type metadata accessor for StaticService);
      if (v10 == v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

uint64_t StaticServiceGroup.roomId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v20 - v6;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v13 = qword_1EE07DC60;
  swift_getKeyPath();
  v20[1] = v13;
  sub_1D1C53A0C(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v14 = v13 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  v15 = *(type metadata accessor for StateSnapshot(0) + 20);
  v16 = type metadata accessor for StaticHome();
  (*(v9 + 16))(v12, v14 + v15 + *(v16 + 28), v8);
  v17 = type metadata accessor for StaticServiceGroup();
  sub_1D17721A0(*(v2 + *(v17 + 36)), v7);
  v18 = *(v9 + 48);
  if (v18(v7, 1, v8) == 1)
  {
    (*(v9 + 32))(a1, v12, v8);
    result = v18(v7, 1, v8);
    if (result != 1)
    {
      return sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    return (*(v9 + 32))(a1, v7, v8);
  }

  return result;
}

uint64_t sub_1D1C4C990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = *(type metadata accessor for StaticService(0) - 8);
  v4[12] = v5;
  v4[13] = *(v5 + 64);
  v4[14] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v4[17] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1C4CAD8, 0, 0);
}

uint64_t sub_1D1C4CAD8()
{
  v1 = *(v0 + 104);
  v42 = *(v0 + 96);
  v43 = *(v0 + 136);
  v2 = *(v0 + 80);
  v3 = *(v2 + *(type metadata accessor for StaticServiceGroup() + 56));
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;
  v39 = v1 + 7;
  v44 = v3;

  v10 = 0;
  v40 = v8;
  v41 = v4;
  while (v7)
  {
LABEL_10:
    v14 = *(v0 + 144);
    v15 = *(v0 + 128);
    v46 = *(v0 + 120);
    v47 = *(v0 + 112);
    v45 = *(v0 + 88);
    v16 = __clz(__rbit64(v7)) | (v10 << 6);
    v17 = *(v44 + 48);
    v18 = sub_1D1E66A7C();
    (*(*(v18 - 8) + 16))(v14, v17 + *(*(v18 - 8) + 72) * v16, v18);
    v19 = *(v43 + 48);
    sub_1D1C53710(*(v44 + 56) + *(v42 + 72) * v16, v14 + v19, type metadata accessor for StaticService);
    v20 = sub_1D1E67E7C();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v15, 1, 1, v20);
    sub_1D1C53710(v14 + v19, v47, type metadata accessor for StaticService);
    v22 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    v24 = (v23 + 16);
    *(v23 + 24) = 0;
    sub_1D1C5381C(v47, v23 + v22, type metadata accessor for StaticService);
    *(v23 + ((v39 + v22) & 0xFFFFFFFFFFFFFFF8)) = v45;
    sub_1D1741C08(v15, v46, &unk_1EC6442C0, &qword_1D1E741A0);
    LODWORD(v15) = (*(v21 + 48))(v46, 1, v20);
    v25 = v45;
    v26 = *(v0 + 120);
    if (v15 == 1)
    {
      sub_1D1741A30(*(v0 + 120), &unk_1EC6442C0, &qword_1D1E741A0);
    }

    else
    {
      sub_1D1E67E6C();
      (*(v21 + 8))(v26, v20);
    }

    v8 = v40;
    if (*v24)
    {
      v27 = *(v23 + 24);
      v28 = *v24;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v29 = sub_1D1E67D4C();
      v31 = v30;
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v32 = **(v0 + 72);
    v33 = v31 | v29;
    if (v31 | v29)
    {
      v33 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v29;
      *(v0 + 40) = v31;
    }

    v7 &= v7 - 1;
    v11 = *(v0 + 144);
    v12 = *(v0 + 128);
    *(v0 + 48) = 1;
    *(v0 + 56) = v33;
    *(v0 + 64) = v32;
    swift_task_create();

    sub_1D1741A30(v12, &unk_1EC6442C0, &qword_1D1E741A0);
    result = sub_1D1741A30(v11, &qword_1EC642DB0, &unk_1D1E6F360);
    v4 = v41;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      goto LABEL_10;
    }
  }

  v34 = *(v0 + 144);
  v36 = *(v0 + 120);
  v35 = *(v0 + 128);
  v37 = *(v0 + 112);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1D1C4CF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1D17C4BFC;

  return StaticService.set(room:)(a5);
}

uint64_t sub_1D1C4CFD8(void *a1, unsigned __int8 *a2, void *a3)
{
  v27 = a3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437B8, &unk_1D1E7E730);
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v23 - v8;
  v24 = *a2;
  v26 = a1;
  v10 = [a1 serviceGroups];
  sub_1D1741B10(0, &qword_1EE079CE0, 0x1E696CC48);
  v11 = sub_1D1E67C1C();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_14:

    v14 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A88, &qword_1D1E6E7D8);
      v21 = sub_1D1E68BCC();
LABEL_16:
      v29 = v21;
      sub_1D1C52974(v14, 1, &v29);

      return v29;
    }

LABEL_15:
    v21 = MEMORY[0x1E69E7CC8];
    goto LABEL_16;
  }

  v12 = sub_1D1E6873C();
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_3:
  v29 = MEMORY[0x1E69E7CC0];
  sub_1D178D154(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = v29;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1D3891EF0](v13, v11);
      }

      else
      {
        v15 = *(v11 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = *(v25 + 48);
      v18 = [v15 uniqueIdentifier];
      sub_1D1E66A5C();

      v28 = v24;
      sub_1D1C4D2D8(v26, &v28, v16, v27, &v9[v17]);

      v29 = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D178D154(v19 > 1, v20 + 1, 1);
        v14 = v29;
      }

      ++v13;
      *(v14 + 16) = v20 + 1;
      sub_1D1741A90(v9, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, &qword_1EC6437B8, &unk_1D1E7E730);
    }

    while (v12 != v13);

    if (*(v14 + 16))
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D1C4D2D8@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v176 = a1;
  v180 = a5;
  v8 = sub_1D1E669FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v178 = &v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v183 = &v175 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v184 = &v175 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v182 = &v175 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v175 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
  v204 = *(v22 - 8);
  v205 = v22;
  v23 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v177 = &v175 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v175 - v27;
  v29 = type metadata accessor for StaticService(0);
  v206 = *(v29 - 8);
  v207 = v29;
  v30 = *(v206 + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v181 = &v175 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v201 = &v175 - v33;
  v209 = sub_1D1E66A7C();
  v189 = *(v209 - 8);
  v34 = *(v189 + 64);
  v35 = MEMORY[0x1EEE9AC00](v209);
  v185 = &v175 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v175 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v200 = (&v175 - v41);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v199 = (&v175 - v43);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v198 = (&v175 - v45);
  MEMORY[0x1EEE9AC00](v44);
  v197 = &v175 - v46;
  v179 = *a2;
  v191 = a3;
  v47 = [a3 services];
  v190 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v48 = sub_1D1E67C1C();

  v210[0] = MEMORY[0x1E69E7CD0];
  if (v48 >> 62)
  {
    goto LABEL_102;
  }

  for (i = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
  {
    v187 = v21;
    v188 = v8;
    v186 = v9;
    v208 = v39;
    if (i)
    {
      v50 = 0;
      v21 = v48 & 0xC000000000000001;
      v9 = v48 & 0xFFFFFFFFFFFFFF8;
      v193 = (v189 + 16);
      v194 = (v189 + 32);
      v192 = (v189 + 8);
      v202 = v28;
      v203 = a4;
      v195 = v48 & 0xFFFFFFFFFFFFFF8;
      v196 = v48 & 0xC000000000000001;
      while (1)
      {
        if (v21)
        {
          v52 = MEMORY[0x1D3891EF0](v50, v48);
        }

        else
        {
          if (v50 >= *(v9 + 16))
          {
            goto LABEL_95;
          }

          v52 = *(v48 + 8 * v50 + 32);
        }

        v8 = v52;
        v28 = (v50 + 1);
        if (__OFADD__(v50, 1))
        {
          break;
        }

        v53 = [v52 accessory];
        if (v53 && (v54 = v53, v55 = [v53 room], v54, v55))
        {
          v56 = [v55 uniqueIdentifier];

          v57 = v198;
          sub_1D1E66A5C();

          v39 = v197;
          v58 = v209;
          (*v194)(v197, v57, v209);
          v59 = i;
          v60 = v48;
          v61 = v200;
          (*v193)(v200, v39, v58);
          v62 = v199;
          v63 = v61;
          v48 = v60;
          i = v59;
          v21 = v196;
          sub_1D1762CB8(v199, v63);

          v8 = v192;
          v64 = *v192;
          v65 = v62;
          v9 = v195;
          (*v192)(v65, v58);
          v64(v39, v58);
        }

        else
        {
        }

        ++v50;
        v51 = v28 == i;
        v28 = v202;
        a4 = v203;
        if (v51)
        {
          v66 = v210[0];
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v66 = MEMORY[0x1E69E7CD0];
LABEL_17:
    v197 = v66;

    v21 = [v191 services];
    v67 = sub_1D1E67C1C();

    v68 = v67 >> 62 ? sub_1D1E6873C() : *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = MEMORY[0x1E69E7CC0];
    if (!v68)
    {
      break;
    }

    v9 = 0;
    v202 = (v67 & 0xFFFFFFFFFFFFFF8);
    v203 = (v67 & 0xC000000000000001);
    v199 = (v206 + 56);
    v200 = (v189 + 8);
    v198 = (v206 + 48);
    while (1)
    {
      if (v203)
      {
        v69 = MEMORY[0x1D3891EF0](v9, v67);
      }

      else
      {
        if (v9 >= *(v202 + 2))
        {
          goto LABEL_97;
        }

        v69 = *(v67 + 8 * v9 + 32);
      }

      v39 = v69;
      v48 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v70 = v8;
      v71 = [v69 uniqueIdentifier];
      v72 = v208;
      sub_1D1E66A5C();

      if (a4[2] && (v73 = sub_1D1742188(v72), (v74 & 1) != 0))
      {
        sub_1D1C53710(a4[7] + *(v206 + 72) * v73, v28, type metadata accessor for StaticService);
        v75 = 0;
      }

      else
      {
        v75 = 1;
      }

      v8 = v70;

      (*v200)(v208, v209);
      v76 = v75;
      v21 = v207;
      (*v199)(v28, v76, 1, v207);
      if ((*v198)(v28, 1, v21) == 1)
      {
        sub_1D1741A30(v28, &qword_1EC6436F0, &qword_1D1E99BC0);
      }

      else
      {
        sub_1D1C5381C(v28, v201, type metadata accessor for StaticService);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D177D048(0, v70[2] + 1, 1, v70);
        }

        v21 = *(v8 + 16);
        v77 = *(v8 + 24);
        v39 = v21 + 1;
        if (v21 >= v77 >> 1)
        {
          v8 = sub_1D177D048(v77 > 1, v21 + 1, 1, v8);
        }

        *(v8 + 16) = v39;
        sub_1D1C5381C(v201, v8 + ((*(v206 + 80) + 32) & ~*(v206 + 80)) + *(v206 + 72) * v21, type metadata accessor for StaticService);
      }

      ++v9;
      if (v48 == v68)
      {
        goto LABEL_38;
      }
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    ;
  }

LABEL_38:

  v78 = *(v8 + 16);
  if (v78)
  {
    v210[0] = MEMORY[0x1E69E7CC0];
    sub_1D178D2D8(0, v78, 0);
    v79 = v210[0];
    v80 = v8 + ((*(v206 + 80) + 32) & ~*(v206 + 80));
    v81 = *(v206 + 72);
    v82 = (v189 + 16);
    v83 = v177;
    do
    {
      v84 = *(v205 + 12);
      sub_1D1C53710(v80, v83 + v84, type metadata accessor for StaticService);
      (*v82)(v83, v83 + v84, v209);
      v210[0] = v79;
      v39 = v79[2];
      v85 = v79[3];
      if (v39 >= v85 >> 1)
      {
        sub_1D178D2D8(v85 > 1, v39 + 1, 1);
        v79 = v210[0];
      }

      v79[2] = v39 + 1;
      sub_1D1741A90(v83, v79 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v39, &qword_1EC6436E8, &unk_1D1E71E40);
      v80 += v81;
      --v78;
    }

    while (v78);

    if (v79[2])
    {
LABEL_44:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB8, &qword_1D1E7E7A0);
      v86 = sub_1D1E68BCC();
      goto LABEL_47;
    }
  }

  else
  {

    v79 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_44;
    }
  }

  v86 = MEMORY[0x1E69E7CC8];
LABEL_47:
  v210[0] = v86;
  sub_1D1C52570(v79, 1, v210);

  v202 = v210[0];
  a4 = [v191 services];
  v21 = sub_1D1E67C1C();

  if (v21 >> 62)
  {
    v9 = sub_1D1E6873C();
  }

  else
  {
    v9 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    v48 = 0;
    v28 = (v21 & 0xC000000000000001);
    v208 = v21 & 0xFFFFFFFFFFFFFF8;
    v205 = "aAccessoryShowInHomeDashboard";
    v199 = (v186 + 48);
    v200 = (v186 + 56);
    v198 = (v186 + 32);
    v203 = MEMORY[0x1E69E7CC0];
    v204 = v21;
    v201 = v9;
    while (1)
    {
      if (v28)
      {
        v87 = MEMORY[0x1D3891EF0](v48, v21);
      }

      else
      {
        if (v48 >= *(v208 + 16))
        {
          goto LABEL_99;
        }

        v87 = *(v21 + 8 * v48 + 32);
      }

      v88 = v87;
      v39 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_98;
      }

      v8 = [v87 applicationData];
      v89 = sub_1D1E677EC();
      a4 = [v8 objectForKeyedSubscript_];

      if (a4 && (v211 = a4, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), (swift_dynamicCast() & 1) != 0))
      {
        v90 = v28;
        v91 = v210[0];
        v8 = v210[1];
        a4 = sub_1D1741B10(0, &qword_1EC645B90, 0x1E696ACD0);
        sub_1D1741B10(0, &qword_1EC645B98, 0x1E695DF00);
        v92 = sub_1D1E6836C();
        v93 = v92;
        if (v92)
        {
          v94 = v182;
          a4 = v188;
          (*v200)(v182, 1, 1, v188);
          sub_1D1C53A0C(&qword_1EC645BA0, MEMORY[0x1E6969530]);
          sub_1D1E68C1C();

          sub_1D174E7C4(v91, v8);
          if ((*v199)(v94, 1, a4) != 1)
          {
            v8 = *v198;
            v95 = v178;
            (*v198)(v178, v94, a4);
            (v8)(v183, v95, a4);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v9 = v201;
            v28 = v90;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v203 = sub_1D177FCDC(0, v203[2] + 1, 1, v203);
            }

            v21 = v204;
            v98 = v203[2];
            v97 = v203[3];
            a4 = (v98 + 1);
            if (v98 >= v97 >> 1)
            {
              v203 = sub_1D177FCDC(v97 > 1, v98 + 1, 1, v203);
            }

            v99 = v203;
            v203[2] = a4;
            (v8)(v99 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v98, v183, v188);
            goto LABEL_52;
          }

          v9 = v201;
        }

        else
        {

          sub_1D174E7C4(v91, v8);
        }

        v28 = v90;
        v21 = v204;
      }

      else
      {
      }

LABEL_52:
      ++v48;
      if (v39 == v9)
      {
        goto LABEL_72;
      }
    }
  }

  v203 = MEMORY[0x1E69E7CC0];
LABEL_72:

  v210[0] = v203;

  sub_1D1C4FA84(v210);

  v100 = v188;
  v101 = v186;
  if (v210[0][2])
  {
    v102 = v187;
    (*(v186 + 16))(v187, v210[0] + ((*(v186 + 80) + 32) & ~*(v186 + 80)), v188);
    v103 = 0;
  }

  else
  {
    v103 = 1;
    v102 = v187;
  }

  v104 = *(v101 + 56);
  v9 = v101 + 56;
  v104(v102, v103, 1, v100);
  v105 = [v191 services];
  v21 = sub_1D1E67C1C();

  v210[0] = MEMORY[0x1E69E7CC0];
  v48 = v21 & 0xFFFFFFFFFFFFFF8;
  if (v21 >> 62)
  {
    v106 = sub_1D1E6873C();
    if (v106)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v106 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v106)
    {
LABEL_77:
      v28 = 0;
      a4 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v8 = v28;
        while (1)
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v107 = MEMORY[0x1D3891EF0](v8, v21);
            v28 = (v8 + 1);
            if (__OFADD__(v8, 1))
            {
              goto LABEL_100;
            }
          }

          else
          {
            if (v8 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_101;
            }

            v107 = *(v21 + 8 * v8 + 32);
            v28 = (v8 + 1);
            if (__OFADD__(v8, 1))
            {
              goto LABEL_100;
            }
          }

          v108 = v107;
          v109 = [v108 accessory];
          if (v109)
          {
            break;
          }

LABEL_80:
          ++v8;
          if (v28 == v106)
          {
            goto LABEL_107;
          }
        }

        v39 = v109;
        v9 = [v109 room];

        if (!v9)
        {
          goto LABEL_80;
        }

        MEMORY[0x1D3891220]();
        if (*((v210[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v210[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v110 = *((v210[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D1E67C5C();
        }

        sub_1D1E67CAC();
        a4 = v210[0];
        if (v28 == v106)
        {
          goto LABEL_107;
        }
      }
    }
  }

  a4 = MEMORY[0x1E69E7CC0];
LABEL_107:

  v111 = sub_1D17843BC(a4);

  v112 = sub_1D1772684(v111);
  if (v112)
  {
    v113 = v112;
    v114 = v181;
    if ((v111 & 0xC000000000000001) != 0)
    {
      v115 = sub_1D1E6873C();
    }

    else
    {
      v115 = *(v111 + 16);
    }

    if (v115 == 1)
    {
      v116 = [v113 name];
      v117 = sub_1D1E6781C();
      v204 = v118;
      v205 = v117;
    }

    else
    {

      v204 = 0;
      v205 = 0;
    }
  }

  else
  {

    v204 = 0;
    v205 = 0;
    v114 = v181;
  }

  v119 = v191;
  v120 = [v191 uniqueIdentifier];
  sub_1D1E66A5C();

  v121 = [v119 name];
  v203 = sub_1D1E6781C();
  v201 = v122;

  v124 = sub_1D1781D38(v123);
  v125 = v124;
  v126 = v124 + 56;
  v127 = 1 << *(v124 + 32);
  v128 = -1;
  if (v127 < 64)
  {
    v128 = ~(-1 << v127);
  }

  v129 = v128 & *(v124 + 56);
  v130 = (v127 + 63) >> 6;

  v131 = 0;
LABEL_118:
  if (v129)
  {
    v132 = v131;
    goto LABEL_124;
  }

  while (1)
  {
    v132 = v131 + 1;
    if (__OFADD__(v131, 1))
    {
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    if (v132 >= v130)
    {
      break;
    }

    v129 = *(v126 + 8 * v132);
    ++v131;
    if (v129)
    {
      v131 = v132;
LABEL_124:
      v133 = __clz(__rbit64(v129));
      v129 &= v129 - 1;
      sub_1D1C53710(*(v125 + 48) + *(v206 + 72) * (v133 | (v132 << 6)), v114, type metadata accessor for StaticService);
      v134 = *(v114 + *(v207 + 32));
      sub_1D1C53778(v114, type metadata accessor for StaticService);
      if ((v134 & 1) == 0)
      {
        LODWORD(v207) = 0;
        goto LABEL_127;
      }

      goto LABEL_118;
    }
  }

  LODWORD(v207) = 1;
LABEL_127:

  sub_1D1741C08(v187, v184, &qword_1EC642570, &qword_1D1E6C6A0);
  if (!*(v197 + 2))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
    v135 = v189;
    v136 = *(v189 + 72);
    v137 = (*(v189 + 80) + 32) & ~*(v189 + 80);
    v138 = swift_allocObject();
    *(v138 + 16) = xmmword_1D1E739C0;
    v139 = [v176 roomForEntireHome];
    v140 = [v139 uniqueIdentifier];

    sub_1D1E66A5C();
    v197 = sub_1D179BE14(v138);
    swift_setDeallocating();
    (*(v135 + 8))(v138 + v137, v209);
    swift_deallocClassInstance();
  }

  v141 = [v191 services];
  v125 = sub_1D1E67C1C();

  if (!(v125 >> 62))
  {
    v142 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v142)
    {
      goto LABEL_131;
    }

LABEL_148:
    LODWORD(v206) = 0;
    goto LABEL_149;
  }

LABEL_147:
  v142 = sub_1D1E6873C();
  if (!v142)
  {
    goto LABEL_148;
  }

LABEL_131:
  v143 = 0;
  v208 = v125 & 0xC000000000000001;
  while (v208)
  {
    v144 = MEMORY[0x1D3891EF0](v143, v125);
    v145 = v143 + 1;
    if (__OFADD__(v143, 1))
    {
      goto LABEL_143;
    }

LABEL_137:
    v146 = v144;
    v147 = [v146 applicationData];
    v148 = sub_1D1E677EC();
    v149 = [v147 objectForKeyedSubscript_];

    if (v149 && (v210[0] = v149, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), (swift_dynamicCast() & 1) != 0))
    {
      v150 = v211;

      if (v150)
      {
        goto LABEL_144;
      }
    }

    else
    {
    }

    ++v143;
    if (v145 == v142)
    {
      goto LABEL_148;
    }
  }

  if (v143 >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_146;
  }

  v144 = *(v125 + 8 * v143 + 32);
  v145 = v143 + 1;
  if (!__OFADD__(v143, 1))
  {
    goto LABEL_137;
  }

LABEL_143:
  __break(1u);
LABEL_144:
  LODWORD(v206) = 1;
LABEL_149:

  v151 = [v191 services];
  v152 = sub_1D1E67C1C();

  v153 = v152 & 0xFFFFFFFFFFFFFF8;
  if (v152 >> 62)
  {
LABEL_181:
    v208 = sub_1D1E6873C();
  }

  else
  {
    v208 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v154 = 0;
  while (1)
  {
    v155 = v154;
    if (v208 == v154)
    {
      goto LABEL_163;
    }

    if ((v152 & 0xC000000000000001) != 0)
    {
      v156 = MEMORY[0x1D3891EF0](v154, v152);
      if (__OFADD__(v155, 1))
      {
LABEL_162:
        __break(1u);
LABEL_163:

        goto LABEL_165;
      }
    }

    else
    {
      if (v154 >= *(v153 + 16))
      {
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      v156 = *(v152 + 8 * v154 + 32);
      if (__OFADD__(v155, 1))
      {
        goto LABEL_162;
      }
    }

    v157 = v156;
    v158 = [v157 applicationData];
    v159 = sub_1D1E677EC();
    v160 = [v158 objectForKeyedSubscript_];

    if (!v160)
    {
      break;
    }

    v210[0] = v160;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v161 = v211;

    v154 = v155 + 1;
    if (v161)
    {
      goto LABEL_163;
    }
  }

LABEL_165:
  v152 = [v191 services];
  v153 = sub_1D1E67C1C();

  if (v153 >> 62)
  {
    v162 = sub_1D1E6873C();
  }

  else
  {
    v162 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v163 = 0;
  while (1)
  {
    v164 = v163;
    if (v162 == v163)
    {
      break;
    }

    if ((v153 & 0xC000000000000001) != 0)
    {
      v165 = MEMORY[0x1D3891EF0](v163, v153);
      if (__OFADD__(v164, 1))
      {
LABEL_176:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v163 >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_180;
      }

      v165 = *(v153 + 8 * v163 + 32);
      if (__OFADD__(v164, 1))
      {
        goto LABEL_176;
      }
    }

    v152 = v165;
    v166 = HMService.contributesToHomeStatus.getter();

    v163 = v164 + 1;
    if (v166)
    {
      sub_1D1741A30(v187, &qword_1EC642570, &qword_1D1E6C6A0);

      goto LABEL_178;
    }
  }

  sub_1D1741A30(v187, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_178:
  v167 = v208 != v155;
  v168 = v180;
  (*(v189 + 32))(v180, v185, v209);
  v169 = type metadata accessor for StaticServiceGroup();
  v170 = (v168 + v169[5]);
  v171 = v201;
  *v170 = v203;
  v170[1] = v171;
  *(v168 + v169[6]) = v207;
  *(v168 + v169[7]) = v179;
  result = sub_1D1741A90(v184, v168 + v169[8], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v168 + v169[9]) = v197;
  v173 = (v168 + v169[10]);
  v174 = v204;
  *v173 = v205;
  v173[1] = v174;
  *(v168 + v169[11]) = v206;
  *(v168 + v169[12]) = v167;
  *(v168 + v169[13]) = v162 != v164;
  *(v168 + v169[14]) = v202;
  return result;
}

uint64_t StaticServiceGroup.copyReplacing(id:name:isReachable:homeNonResponsiveType:dateAdded:roomIds:roomName:isFavorite:shouldShowInDashboard:contributesToHomeStatus:staticServicesDictionary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, char a13, uint64_t a14)
{
  v63 = a2;
  v64 = a8;
  v66 = a7;
  v59 = a6;
  v60 = a3;
  v68 = a4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v65 = &v58 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v58 - v26;
  v28 = sub_1D1E66A7C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *a5;
  v34 = v33;
  sub_1D1741C08(a1, v27, &qword_1EC642590, qword_1D1E71260);
  v35 = *(v29 + 48);
  if (v35(v27, 1, v34) == 1)
  {
    v36 = v32;
    (*(v29 + 16))(v32, v14, v34);
    if (v35(v27, 1, v34) != 1)
    {
      sub_1D1741A30(v27, &qword_1EC642590, qword_1D1E71260);
    }

    v37 = v60;
    if (v60)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v36 = v32;
    (*(v29 + 32))(v32, v27, v34);
    v37 = v60;
    if (v60)
    {
LABEL_5:
      v61 = v37;
      goto LABEL_8;
    }
  }

  v38 = (v14 + *(type metadata accessor for StaticServiceGroup() + 20));
  v39 = v38[1];
  v63 = *v38;
  v61 = v39;

LABEL_8:
  if (v68 == 2)
  {
    v68 = *(v14 + *(type metadata accessor for StaticServiceGroup() + 24));
  }

  v62 = v34;
  if (v67 == 3)
  {
    v67 = *(v14 + *(type metadata accessor for StaticServiceGroup() + 28));
  }

  sub_1D1741C08(v59, v22, &qword_1EC642570, &qword_1D1E6C6A0);
  v40 = sub_1D1E669FC();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  if (v42(v22, 1, v40) == 1)
  {
    v43 = type metadata accessor for StaticServiceGroup();
    sub_1D1741C08(v14 + *(v43 + 32), v65, &qword_1EC642570, &qword_1D1E6C6A0);
    v44 = v42(v22, 1, v40);

    v45 = v36;
    if (v44 != 1)
    {
      sub_1D1741A30(v22, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    v46 = v65;
    (*(v41 + 32))(v65, v22, v40);
    (*(v41 + 56))(v46, 0, 1, v40);

    v45 = v36;
  }

  if (v66)
  {
    v60 = v66;
  }

  else
  {
    v60 = *(v14 + *(type metadata accessor for StaticServiceGroup() + 36));
  }

  v47 = a11;
  v48 = a10;
  if (!a10)
  {
    v49 = (v14 + *(type metadata accessor for StaticServiceGroup() + 40));
    v48 = v49[1];
    v64 = *v49;
  }

  v50 = a12;
  if (a11 == 2)
  {
    v47 = *(v14 + *(type metadata accessor for StaticServiceGroup() + 44));
  }

  v51 = a13;
  if (a12 == 2)
  {
    v50 = *(v14 + *(type metadata accessor for StaticServiceGroup() + 48));
  }

  if (a13 == 2)
  {
    v51 = *(v14 + *(type metadata accessor for StaticServiceGroup() + 52));
  }

  if (a14)
  {
    v52 = a14;
  }

  else
  {
    v52 = *(v14 + *(type metadata accessor for StaticServiceGroup() + 56));
  }

  (*(v29 + 32))(a9, v45, v62);
  v53 = type metadata accessor for StaticServiceGroup();
  v54 = (a9 + v53[5]);
  v55 = v61;
  *v54 = v63;
  v54[1] = v55;
  *(a9 + v53[6]) = v68 & 1;
  *(a9 + v53[7]) = v67;
  sub_1D1741A90(v65, a9 + v53[8], &qword_1EC642570, &qword_1D1E6C6A0);
  *(a9 + v53[9]) = v60;
  v56 = (a9 + v53[10]);
  *v56 = v64;
  v56[1] = v48;
  *(a9 + v53[11]) = v47 & 1;
  *(a9 + v53[12]) = v50 & 1;
  *(a9 + v53[13]) = v51 & 1;
  *(a9 + v53[14]) = v52;
}

uint64_t sub_1D1C4F9D0(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D1E0BFA4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D1C4FB2C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D1C4FA84(void **a1)
{
  v2 = *(sub_1D1E669FC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D1E0C10C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D1C4FC70(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D1C4FB2C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D1E68F9C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
        v6 = sub_1D1E67C8C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D1C502B0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D1C4FD9C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1C4FC70(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D1E68F9C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D1E669FC();
        v6 = sub_1D1E67C8C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1D1E669FC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D1C50BF0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D1C4FFEC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1C4FD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v8 = *(*(v36 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_1D1741C08(v23, v17, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1741C08(v20, v13, &qword_1EC642DB0, &unk_1D1E6F360);
      v24 = MEMORY[0x1D3890070](v17, v13);
      sub_1D1741A30(v13, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1741A30(v17, &qword_1EC642DB0, &unk_1D1E6F360);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_1D1741A90(v23, v35, &qword_1EC642DB0, &unk_1D1E6F360);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1741A90(v25, v20, &qword_1EC642DB0, &unk_1D1E6F360);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1C4FFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D1E669FC();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v42 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v46 = &v32 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v45 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v43 = *(v15 + 16);
    v44 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v40 = (v15 + 32);
    v41 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v39 = -v18;
    v21 = a1 - a3;
    v33 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v37 = v20;
    v38 = a3;
    v35 = v22;
    v36 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v45;
      v25 = v43;
      v43(v45, v22, v8);
      v26 = v46;
      v25(v46, v23, v8);
      sub_1D1C53A0C(&unk_1EC649E50, MEMORY[0x1E6969530]);
      v27 = sub_1D1E6771C();
      v28 = *v19;
      (*v19)(v26, v8);
      result = v28(v24, v8);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v38 + 1;
        v20 = v37 + v33;
        v21 = v36 - 1;
        v22 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v29 = *v40;
      v30 = v42;
      (*v40)(v42, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v29)(v23, v30, v8);
      v23 += v39;
      v22 += v39;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1C502B0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v5;
  v104 = a1;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v114 = *(v117 - 8);
  v9 = *(v114 + 64);
  v10 = MEMORY[0x1EEE9AC00](v117);
  v108 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v116 = &v100 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v119 = &v100 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v118 = &v100 - v17;
  v18 = *(a3 + 8);
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_96:
    a4 = *v104;
    if (!*v104)
    {
      goto LABEL_136;
    }

    v4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_130:
      result = sub_1D1E0BE44(v4);
    }

    v95 = v6;
    v120 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (1)
      {
        v96 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v6 = a3;
        a3 = *(result + 16 * v4);
        v97 = result;
        v98 = *(result + 16 * (v4 - 1) + 40);
        sub_1D1C51618(v96 + *(v114 + 72) * a3, v96 + *(v114 + 72) * *(result + 16 * (v4 - 1) + 32), v96 + *(v114 + 72) * v98, a4);
        if (v95)
        {
        }

        if (v98 < a3)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1D1E0BE44(v97);
        }

        if (v4 - 2 >= *(v97 + 2))
        {
          goto LABEL_124;
        }

        v99 = &v97[16 * v4];
        *v99 = a3;
        *(v99 + 1) = v98;
        v120 = v97;
        sub_1D1E0BDB8(v4 - 1);
        result = v120;
        v4 = *(v120 + 16);
        a3 = v6;
        if (v4 <= 1)
        {
        }
      }
    }
  }

  v101 = a4;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v105 = a3;
  while (1)
  {
    v21 = v19;
    v109 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v103 = v6;
      v22 = v19;
      v23 = *a3;
      v24 = *(v114 + 72);
      a4 = *a3 + v24 * (v19 + 1);
      v25 = v118;
      sub_1D1741C08(a4, v118, &qword_1EC642DB0, &unk_1D1E6F360);
      v26 = v119;
      sub_1D1741C08(v23 + v24 * v22, v119, &qword_1EC642DB0, &unk_1D1E6F360);
      LODWORD(v113) = MEMORY[0x1D3890070](v25, v26);
      sub_1D1741A30(v26, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1741A30(v25, &qword_1EC642DB0, &unk_1D1E6F360);
      v102 = v22;
      v4 = v22 + 2;
      v115 = v24;
      v27 = v23 + v24 * (v22 + 2);
      while (v18 != v4)
      {
        v28 = v118;
        sub_1D1741C08(v27, v118, &qword_1EC642DB0, &unk_1D1E6F360);
        v29 = v119;
        sub_1D1741C08(a4, v119, &qword_1EC642DB0, &unk_1D1E6F360);
        v30 = v18;
        v31 = MEMORY[0x1D3890070](v28, v29) & 1;
        sub_1D1741A30(v29, &qword_1EC642DB0, &unk_1D1E6F360);
        result = sub_1D1741A30(v28, &qword_1EC642DB0, &unk_1D1E6F360);
        ++v4;
        v27 += v115;
        a4 += v115;
        v32 = (v113 & 1) == v31;
        v18 = v30;
        if (!v32)
        {
          v18 = v4 - 1;
          break;
        }
      }

      a3 = v105;
      v21 = v102;
      v6 = v103;
      if (v113)
      {
        if (v18 < v102)
        {
          goto LABEL_127;
        }

        if (v102 < v18)
        {
          v4 = v115 * (v18 - 1);
          v33 = v18 * v115;
          v34 = v18;
          v35 = v18;
          v36 = v102;
          a4 = v102 * v115;
          do
          {
            if (v36 != --v35)
            {
              v37 = *v105;
              if (!*v105)
              {
                goto LABEL_133;
              }

              sub_1D1741A90(v37 + a4, v108, &qword_1EC642DB0, &unk_1D1E6F360);
              if (a4 < v4 || v37 + a4 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1D1741A90(v108, v37 + v4, &qword_1EC642DB0, &unk_1D1E6F360);
            }

            ++v36;
            v4 -= v115;
            v33 -= v115;
            a4 += v115;
          }

          while (v36 < v35);
          v21 = v102;
          v6 = v103;
          a3 = v105;
          v18 = v34;
        }
      }
    }

    v38 = *(a3 + 8);
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_126;
      }

      if (v18 - v21 < v101)
      {
        if (__OFADD__(v21, v101))
        {
          goto LABEL_128;
        }

        if (v21 + v101 >= v38)
        {
          v39 = *(a3 + 8);
        }

        else
        {
          v39 = v21 + v101;
        }

        if (v39 < v21)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v18 != v39)
        {
          break;
        }
      }
    }

    v19 = v18;
    if (v18 < v21)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = v109;
    }

    else
    {
      result = sub_1D1E0BE58(0, *(v109 + 2) + 1, 1, v109);
      v20 = result;
    }

    v4 = *(v20 + 2);
    v40 = *(v20 + 3);
    a4 = v4 + 1;
    if (v4 >= v40 >> 1)
    {
      result = sub_1D1E0BE58((v40 > 1), v4 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = a4;
    v41 = &v20[16 * v4];
    *(v41 + 4) = v21;
    *(v41 + 5) = v19;
    v42 = *v104;
    if (!*v104)
    {
      goto LABEL_135;
    }

    if (v4)
    {
      while (1)
      {
        v43 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v44 = *(v20 + 4);
          v45 = *(v20 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_52:
          if (v47)
          {
            goto LABEL_114;
          }

          v60 = &v20[16 * a4];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_117;
          }

          v66 = &v20[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_121;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = a4 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v70 = &v20[16 * a4];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_66:
        if (v65)
        {
          goto LABEL_116;
        }

        v73 = &v20[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_119;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_73:
        v4 = v43 - 1;
        if (v43 - 1 >= a4)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v81 = v20;
        a4 = *&v20[16 * v4 + 32];
        v82 = *&v20[16 * v43 + 40];
        sub_1D1C51618(*a3 + *(v114 + 72) * a4, *a3 + *(v114 + 72) * *&v20[16 * v43 + 32], *a3 + *(v114 + 72) * v82, v42);
        if (v6)
        {
        }

        if (v82 < a4)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v83 = v81;
        }

        else
        {
          v83 = sub_1D1E0BE44(v81);
        }

        if (v4 >= *(v83 + 2))
        {
          goto LABEL_111;
        }

        v84 = &v83[16 * v4];
        *(v84 + 4) = a4;
        *(v84 + 5) = v82;
        v120 = v83;
        v4 = &v120;
        result = sub_1D1E0BDB8(v43);
        v20 = v120;
        a4 = *(v120 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v20[16 * a4 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_112;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_113;
      }

      v55 = &v20[16 * a4];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_115;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_118;
      }

      if (v59 >= v51)
      {
        v77 = &v20[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_122;
        }

        if (v46 < v80)
        {
          v43 = a4 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = *(a3 + 8);
    if (v19 >= v18)
    {
      goto LABEL_96;
    }
  }

  v102 = v21;
  v103 = v6;
  v85 = *a3;
  v86 = *(v114 + 72);
  v87 = *a3 + v86 * (v18 - 1);
  v88 = -v86;
  v89 = v21 - v18;
  v106 = v86;
  v107 = v39;
  v115 = v85;
  a4 = v85 + v18 * v86;
LABEL_86:
  v112 = v87;
  v113 = v18;
  v110 = a4;
  v111 = v89;
  v90 = v87;
  while (1)
  {
    v4 = v118;
    sub_1D1741C08(a4, v118, &qword_1EC642DB0, &unk_1D1E6F360);
    v91 = v119;
    sub_1D1741C08(v90, v119, &qword_1EC642DB0, &unk_1D1E6F360);
    v92 = MEMORY[0x1D3890070](v4, v91);
    sub_1D1741A30(v91, &qword_1EC642DB0, &unk_1D1E6F360);
    result = sub_1D1741A30(v4, &qword_1EC642DB0, &unk_1D1E6F360);
    if ((v92 & 1) == 0)
    {
LABEL_85:
      v18 = v113 + 1;
      v19 = v107;
      v87 = v112 + v106;
      v89 = v111 - 1;
      a4 = v110 + v106;
      if (v113 + 1 != v107)
      {
        goto LABEL_86;
      }

      v21 = v102;
      v6 = v103;
      a3 = v105;
      if (v107 < v102)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v115)
    {
      break;
    }

    v93 = v116;
    sub_1D1741A90(a4, v116, &qword_1EC642DB0, &unk_1D1E6F360);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1741A90(v93, v90, &qword_1EC642DB0, &unk_1D1E6F360);
    v90 += v88;
    a4 += v88;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_1D1C50BF0(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v123 = a1;
  v8 = sub_1D1E669FC();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v128 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v135 = &v120 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v141 = &v120 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v140 = &v120 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1D1E0BE44(v21);
      v21 = result;
    }

    v143 = v21;
    v116 = *(v21 + 2);
    if (v116 >= 2)
    {
      while (*a3)
      {
        v117 = *&v21[16 * v116];
        v118 = *&v21[16 * v116 + 24];
        sub_1D1C51B1C(*a3 + v9[9] * v117, *a3 + v9[9] * *&v21[16 * v116 + 16], *a3 + v9[9] * v118, v22);
        if (v5)
        {
        }

        if (v118 < v117)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1D1E0BE44(v21);
        }

        if (v116 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v119 = &v21[16 * v116];
        *v119 = v117;
        *(v119 + 1) = v118;
        v143 = v21;
        result = sub_1D1E0BDB8(v116 - 1);
        v21 = v143;
        v116 = *(v143 + 2);
        if (v116 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v120 = a4;
  v20 = 0;
  v138 = (v9 + 1);
  v139 = v9 + 2;
  v137 = (v9 + 4);
  v21 = MEMORY[0x1E69E7CC0];
  v125 = v9;
  v142 = v8;
  v121 = a3;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v35 = v20 + 1;
    }

    else
    {
      v133 = v19;
      v122 = v5;
      v23 = *a3;
      v24 = v9[9];
      v25 = v20;
      v124 = v20;
      v26 = &v23[v24 * (v20 + 1)];
      v27 = v8;
      v28 = v9[2];
      v29 = v140;
      v28(v140, v26, v27);
      v30 = &v23[v24 * v25];
      v31 = v141;
      v132 = v28;
      v28(v141, v30, v27);
      v131 = sub_1D1C53A0C(&unk_1EC649E50, MEMORY[0x1E6969530]);
      LODWORD(v134) = sub_1D1E6771C();
      v32 = v9[1];
      v32(v31, v27);
      v130 = v32;
      result = (v32)(v29, v27);
      v33 = v124 + 2;
      v136 = v24;
      v34 = &v23[v24 * (v124 + 2)];
      while (1)
      {
        v35 = v133;
        if (v133 == v33)
        {
          break;
        }

        v36 = v140;
        v37 = v9;
        v38 = v142;
        v39 = v132;
        (v132)(v140, v34, v142);
        v40 = v141;
        v39(v141, v26, v38);
        v41 = sub_1D1E6771C() & 1;
        v42 = v130;
        (v130)(v40, v38);
        v43 = v38;
        v9 = v37;
        result = v42(v36, v43);
        ++v33;
        v34 += v136;
        v26 += v136;
        if ((v134 & 1) != v41)
        {
          v35 = v33 - 1;
          break;
        }
      }

      v5 = v122;
      v21 = v126;
      v8 = v142;
      a3 = v121;
      v22 = v124;
      if (v134)
      {
        if (v35 < v124)
        {
          goto LABEL_123;
        }

        if (v124 < v35)
        {
          v44 = v35;
          v45 = v136 * (v35 - 1);
          v46 = v35 * v136;
          v133 = v35;
          v47 = v124;
          v48 = v124 * v136;
          do
          {
            if (v47 != --v44)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v134 = *v137;
              v134(v128, &v50[v48], v142);
              if (v48 < v45 || &v50[v48] >= &v50[v46])
              {
                v49 = v142;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v142;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v134)(&v50[v45], v128, v49);
              v9 = v125;
              v21 = v126;
            }

            ++v47;
            v45 -= v136;
            v46 -= v136;
            v48 += v136;
          }

          while (v47 < v44);
          v5 = v122;
          v8 = v142;
          v22 = v124;
          v35 = v133;
        }
      }
    }

    v51 = a3[1];
    if (v35 < v51)
    {
      if (__OFSUB__(v35, v22))
      {
        goto LABEL_122;
      }

      if (v35 - v22 < v120)
      {
        if (__OFADD__(v22, v120))
        {
          goto LABEL_124;
        }

        if (v22 + v120 >= v51)
        {
          v52 = a3[1];
        }

        else
        {
          v52 = v22 + v120;
        }

        if (v52 < v22)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v35 != v52)
        {
          break;
        }
      }
    }

    v53 = v35;
    if (v35 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177D070(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v55 = *(v21 + 2);
    v54 = *(v21 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_1D177D070((v54 > 1), v55 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v56;
    v57 = &v21[16 * v55];
    *(v57 + 4) = v22;
    *(v57 + 5) = v53;
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_131;
    }

    v129 = v53;
    if (v55)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v21 + 4);
          v60 = *(v21 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_52:
          if (v62)
          {
            goto LABEL_110;
          }

          v75 = &v21[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_113;
          }

          v81 = &v21[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_117;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v85 = &v21[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_66:
        if (v80)
        {
          goto LABEL_112;
        }

        v88 = &v21[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_115;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_73:
        v96 = v58 - 1;
        if (v58 - 1 >= v56)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v97 = *&v21[16 * v96 + 32];
        v98 = *&v21[16 * v58 + 40];
        sub_1D1C51B1C(*a3 + v9[9] * v97, *a3 + v9[9] * *&v21[16 * v58 + 32], *a3 + v9[9] * v98, v22);
        if (v5)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1D1E0BE44(v21);
        }

        if (v96 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v99 = &v21[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        v143 = v21;
        result = sub_1D1E0BDB8(v58);
        v21 = v143;
        v56 = *(v143 + 2);
        v8 = v142;
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v21[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_108;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_109;
      }

      v70 = &v21[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_111;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_114;
      }

      if (v74 >= v66)
      {
        v92 = &v21[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_118;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v129;
    if (v129 >= v19)
    {
      goto LABEL_94;
    }
  }

  v122 = v5;
  v100 = *a3;
  v101 = v9[9];
  v136 = v9[2];
  v102 = v100 + v101 * (v35 - 1);
  v103 = -v101;
  v124 = v22;
  v104 = v22 - v35;
  v134 = v100;
  v127 = v101;
  v105 = v100 + v35 * v101;
  v129 = v52;
LABEL_85:
  v132 = v102;
  v133 = v35;
  v130 = v105;
  v131 = v104;
  v106 = v102;
  while (1)
  {
    v107 = v140;
    v108 = v136;
    (v136)(v140, v105, v8);
    v109 = v141;
    v108(v141, v106, v142);
    sub_1D1C53A0C(&unk_1EC649E50, MEMORY[0x1E6969530]);
    v110 = sub_1D1E6771C();
    v111 = *v138;
    v112 = v109;
    v8 = v142;
    (*v138)(v112, v142);
    result = v111(v107, v8);
    if ((v110 & 1) == 0)
    {
LABEL_84:
      v35 = v133 + 1;
      v102 = &v132[v127];
      v104 = v131 - 1;
      v105 = &v130[v127];
      v53 = v129;
      if (v133 + 1 != v129)
      {
        goto LABEL_85;
      }

      v5 = v122;
      a3 = v121;
      v9 = v125;
      v21 = v126;
      v22 = v124;
      if (v129 < v124)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v134)
    {
      break;
    }

    v113 = *v137;
    v114 = v135;
    (*v137)(v135, v105, v8);
    swift_arrayInitWithTakeFrontToBack();
    v113(v106, v114, v8);
    v106 += v103;
    v105 += v103;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1D1C51618(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v8 = *(*(v44 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v44);
  v46 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v45 = &v36 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v49 = a1;
  v48 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v40 = a1;
      v41 = a4;
      v39 = -v14;
      do
      {
        v37 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v42 = v27;
        v43 = v28;
        while (1)
        {
          if (v27 <= a1)
          {
            v49 = v27;
            v47 = v37;
            goto LABEL_58;
          }

          v30 = a3;
          v38 = v24;
          a3 += v25;
          v31 = v26 + v25;
          v32 = v45;
          sub_1D1741C08(v31, v45, &qword_1EC642DB0, &unk_1D1E6F360);
          v33 = v28;
          v34 = v46;
          sub_1D1741C08(v33, v46, &qword_1EC642DB0, &unk_1D1E6F360);
          v35 = MEMORY[0x1D3890070](v32, v34);
          sub_1D1741A30(v34, &qword_1EC642DB0, &unk_1D1E6F360);
          sub_1D1741A30(v32, &qword_1EC642DB0, &unk_1D1E6F360);
          if (v35)
          {
            break;
          }

          v24 = v31;
          if (v30 < v26 || a3 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v43;
            a1 = v40;
          }

          else
          {
            v28 = v43;
            a1 = v40;
            if (v30 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v31;
          v27 = v42;
          v29 = v31 > v41;
          v25 = v39;
          if (!v29)
          {
            a2 = v42;
            goto LABEL_57;
          }
        }

        if (v30 < v42 || a3 >= v42)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v39;
          a1 = v40;
          v24 = v38;
        }

        else
        {
          a2 = v43;
          v25 = v39;
          a1 = v40;
          v24 = v38;
          if (v30 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v41);
    }

LABEL_57:
    v49 = a2;
    v47 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a3;
    v43 = a4 + v17;
    v47 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = v14;
        v21 = v45;
        sub_1D1741C08(a2, v45, &qword_1EC642DB0, &unk_1D1E6F360);
        v22 = v46;
        sub_1D1741C08(a4, v46, &qword_1EC642DB0, &unk_1D1E6F360);
        v23 = MEMORY[0x1D3890070](v21, v22);
        sub_1D1741A30(v22, &qword_1EC642DB0, &unk_1D1E6F360);
        sub_1D1741A30(v21, &qword_1EC642DB0, &unk_1D1E6F360);
        v14 = v20;
        if (v23)
        {
          if (a1 < a2 || a1 >= a2 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v20;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = a4 + v20;
          a4 += v20;
        }

        a1 += v20;
        v49 = a1;
      }

      while (a4 < v43 && a2 < v42);
    }
  }

LABEL_58:
  sub_1D1DC700C(&v49, &v48, &v47);
  return 1;
}

uint64_t sub_1D1C51B1C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = sub_1D1E669FC();
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v53);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v50 = &v41 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v52 = a3;
  v17 = (a2 - a1) / v15;
  v56 = a1;
  v55 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v19;
    if (v19 >= 1)
    {
      v29 = -v15;
      v44 = a4;
      v45 = (v8 + 16);
      v42 = (v8 + 8);
      v43 = a1;
      v30 = a4 + v19;
      v31 = v52;
      v46 = v29;
      do
      {
        v41 = v28;
        v32 = a2 + v29;
        v48 = a2 + v29;
        v49 = v28;
        v47 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v56 = a2;
            v28 = v41;
            goto LABEL_59;
          }

          v34 = v31;
          v52 = v31 + v29;
          v35 = v30 + v29;
          v36 = *v45;
          v37 = v50;
          v38 = v53;
          (*v45)(v50, v30 + v29, v53);
          v39 = v51;
          v36(v51, v32, v38);
          sub_1D1C53A0C(&unk_1EC649E50, MEMORY[0x1E6969530]);
          LOBYTE(v36) = sub_1D1E6771C();
          v40 = *v42;
          (*v42)(v39, v38);
          v40(v37, v38);
          if (v36)
          {
            break;
          }

          v31 = v52;
          if (v34 < v30 || v52 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v48;
            a1 = v43;
          }

          else
          {
            v32 = v48;
            a1 = v43;
            if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = v35;
          v30 = v35;
          v33 = v35 > v44;
          v29 = v46;
          a2 = v47;
          if (!v33)
          {
            v28 = v49;
            goto LABEL_58;
          }
        }

        v31 = v52;
        if (v34 < v47 || v52 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v43;
        }

        else
        {
          a2 = v48;
          a1 = v43;
          if (v34 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v49;
        v29 = v46;
      }

      while (v30 > v44);
    }

LABEL_58:
    v56 = a2;
LABEL_59:
    v54 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v18;
    v54 = a4 + v18;
    if (v18 >= 1 && a2 < v52)
    {
      v47 = *(v8 + 16);
      v48 = v8 + 16;
      v45 = v15;
      v46 = (v8 + 8);
      do
      {
        v21 = v50;
        v22 = v53;
        v23 = v47;
        v47(v50, a2, v53);
        v24 = v51;
        v23(v51, a4, v22);
        sub_1D1C53A0C(&unk_1EC649E50, MEMORY[0x1E6969530]);
        LOBYTE(v23) = sub_1D1E6771C();
        v25 = *v46;
        (*v46)(v24, v22);
        v25(v21, v22);
        if (v23)
        {
          v26 = v45;
          if (a1 < a2 || a1 >= v45 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v45;
          v27 = v45 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = v27;
          a4 += v26;
        }

        a1 += v26;
        v56 = a1;
      }

      while (a4 < v49 && a2 < v52);
    }
  }

  sub_1D1DC71EC(&v56, &v55, &v54);
  return 1;
}

uint64_t _s13HomeDataModel18StaticServiceGroupV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_27;
  }

  v17 = type metadata accessor for StaticServiceGroup();
  v18 = v17[5];
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v19 == *v21 && v20 == v21[1];
  if (!v22 && (sub_1D1E6904C() & 1) == 0 || *(a1 + v17[6]) != *(a2 + v17[6]) || *(a1 + v17[7]) != *(a2 + v17[7]))
  {
    goto LABEL_27;
  }

  v23 = v17[8];
  v24 = *(v13 + 48);
  sub_1D1741C08(a1 + v23, v16, &qword_1EC642570, &qword_1D1E6C6A0);
  v36 = v24;
  sub_1D1741C08(a2 + v23, &v16[v24], &qword_1EC642570, &qword_1D1E6C6A0);
  v25 = *(v5 + 48);
  if (v25(v16, 1, v4) != 1)
  {
    sub_1D1741C08(v16, v12, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v25(&v16[v36], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v36], v4);
      sub_1D1C53A0C(&qword_1EC642AC8, MEMORY[0x1E6969530]);
      v26 = sub_1D1E6775C();
      v27 = *(v5 + 8);
      v27(v8, v4);
      v27(v12, v4);
      sub_1D1741A30(v16, &qword_1EC642570, &qword_1D1E6C6A0);
      if ((v26 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    (*(v5 + 8))(v12, v4);
LABEL_14:
    sub_1D1741A30(v16, &qword_1EC642AC0, &qword_1D1E6E810);
    goto LABEL_27;
  }

  if (v25(&v16[v36], 1, v4) != 1)
  {
    goto LABEL_14;
  }

  sub_1D1741A30(v16, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_16:
  if (sub_1D17A6E98(*(a1 + v17[9]), *(a2 + v17[9])))
  {
    v28 = v17[10];
    v29 = (a1 + v28);
    v30 = *(a1 + v28 + 8);
    v31 = (a2 + v28);
    v32 = v31[1];
    if (v30)
    {
      if (!v32 || (*v29 != *v31 || v30 != v32) && (sub_1D1E6904C() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v32)
    {
      goto LABEL_27;
    }

    if (*(a1 + v17[11]) == *(a2 + v17[11]) && *(a1 + v17[12]) == *(a2 + v17[12]) && *(a1 + v17[13]) == *(a2 + v17[13]))
    {
      v33 = sub_1D18490AC(*(a1 + v17[14]), *(a2 + v17[14]));
      return v33 & 1;
    }
  }

LABEL_27:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_1D1C52570(uint64_t a1, char a2, uint64_t *a3)
{
  v51 = a3;
  v5 = type metadata accessor for StaticService(0);
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v47 = &v41 - v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v45 = *(result + 48);
    v18 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v44 = *(v15 + 72);
    v48 = (v43 + 32);
    v42 = (v43 + 8);
    while (1)
    {
      v49 = v17;
      v20 = v47;
      sub_1D1741C08(v18, v47, &qword_1EC6436E8, &unk_1D1E71E40);
      v21 = *v48;
      v22 = v50;
      v23 = v9;
      (*v48)(v50, v20, v9);
      v24 = v8;
      sub_1D1C5381C(v20 + v45, v8, type metadata accessor for StaticService);
      v25 = *v51;
      v27 = sub_1D1742188(v22);
      v28 = *(v25 + 16);
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v26;
      if (*(v25 + 24) >= v30)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D1735934();
        }
      }

      else
      {
        v32 = v51;
        sub_1D1723194(v30, a2 & 1);
        v33 = *v32;
        v34 = sub_1D1742188(v50);
        if ((v31 & 1) != (v35 & 1))
        {
          goto LABEL_17;
        }

        v27 = v34;
      }

      v36 = *v51;
      if (v31)
      {
        v9 = v23;
        (*v42)(v50, v23);
        v19 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1C53884(v24, v19, type metadata accessor for StaticService);
      }

      else
      {
        v36[(v27 >> 6) + 8] |= 1 << v27;
        v9 = v23;
        v21((v36[6] + *(v43 + 72) * v27), v50, v23);
        v37 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1C5381C(v24, v37, type metadata accessor for StaticService);
        v38 = v36[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_16;
        }

        v36[2] = v40;
      }

      v18 += v44;
      a2 = 1;
      v17 = v49 - 1;
      if (v49 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1C52974(uint64_t a1, char a2, uint64_t *a3)
{
  v51 = a3;
  v5 = type metadata accessor for StaticServiceGroup();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437B8, &unk_1D1E7E730);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v47 = &v41 - v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v45 = *(result + 48);
    v18 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v44 = *(v15 + 72);
    v48 = (v43 + 32);
    v42 = (v43 + 8);
    while (1)
    {
      v49 = v17;
      v20 = v47;
      sub_1D1741C08(v18, v47, &qword_1EC6437B8, &unk_1D1E7E730);
      v21 = *v48;
      v22 = v50;
      v23 = v9;
      (*v48)(v50, v20, v9);
      v24 = v8;
      sub_1D1C5381C(v20 + v45, v8, type metadata accessor for StaticServiceGroup);
      v25 = *v51;
      v27 = sub_1D1742188(v22);
      v28 = *(v25 + 16);
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v26;
      if (*(v25 + 24) >= v30)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D17352DC();
        }
      }

      else
      {
        v32 = v51;
        sub_1D1722854(v30, a2 & 1);
        v33 = *v32;
        v34 = sub_1D1742188(v50);
        if ((v31 & 1) != (v35 & 1))
        {
          goto LABEL_17;
        }

        v27 = v34;
      }

      v36 = *v51;
      if (v31)
      {
        v9 = v23;
        (*v42)(v50, v23);
        v19 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1C53884(v24, v19, type metadata accessor for StaticServiceGroup);
      }

      else
      {
        v36[(v27 >> 6) + 8] |= 1 << v27;
        v9 = v23;
        v21((v36[6] + *(v43 + 72) * v27), v50, v23);
        v37 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1C5381C(v24, v37, type metadata accessor for StaticServiceGroup);
        v38 = v36[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_16;
        }

        v36[2] = v40;
      }

      v18 += v44;
      a2 = 1;
      v17 = v49 - 1;
      if (v49 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

unint64_t sub_1D1C52DC4()
{
  result = qword_1EC64CB60;
  if (!qword_1EC64CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CB60);
  }

  return result;
}

uint64_t sub_1D1C52E18(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1C53A0C(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1C52F60(void *a1)
{
  a1[1] = sub_1D1C53A0C(&qword_1EC64CB78, type metadata accessor for StaticServiceGroup);
  a1[2] = sub_1D1C53A0C(&qword_1EC64CB80, type metadata accessor for StaticServiceGroup);
  a1[3] = sub_1D1C53A0C(&qword_1EC644748, type metadata accessor for StaticServiceGroup);
  a1[4] = sub_1D1C53A0C(&qword_1EC6446E8, type metadata accessor for StaticServiceGroup);
  a1[5] = sub_1D1C53A0C(&qword_1EC643518, type metadata accessor for StaticServiceGroup);
  result = sub_1D1C53A0C(&qword_1EC64CB88, type metadata accessor for StaticServiceGroup);
  a1[6] = result;
  return result;
}

uint64_t sub_1D1C53084(void *a1)
{
  a1[1] = sub_1D1C53A0C(&qword_1EC644748, type metadata accessor for StaticServiceGroup);
  a1[2] = sub_1D1C53A0C(&qword_1EC6446E8, type metadata accessor for StaticServiceGroup);
  a1[3] = sub_1D1C53A0C(&qword_1EC643518, type metadata accessor for StaticServiceGroup);
  result = sub_1D1C53A0C(&qword_1EC64CB88, type metadata accessor for StaticServiceGroup);
  a1[4] = result;
  return result;
}

void sub_1D1C53180()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D17B77BC();
    if (v1 <= 0x3F)
    {
      sub_1D1791340();
      if (v2 <= 0x3F)
      {
        sub_1D17786E4();
        if (v3 <= 0x3F)
        {
          sub_1D1BCA118();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1D1C53280()
{
  result = qword_1EC64CB90;
  if (!qword_1EC64CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CB90);
  }

  return result;
}

unint64_t sub_1D1C532D8()
{
  result = qword_1EC64CB98;
  if (!qword_1EC64CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CB98);
  }

  return result;
}

unint64_t sub_1D1C53330()
{
  result = qword_1EC64CBA0;
  if (!qword_1EC64CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CBA0);
  }

  return result;
}

uint64_t sub_1D1C53384(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6168636165527369 && a2 == 0xEB00000000656C62 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC6270 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7364496D6F6F72 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC5DC0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC6150 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EC6190 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1D1C53710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C53778(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1C537D8(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_1D1820F58(result, a2);
  }

  return result;
}

uint64_t sub_1D1C5381C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C53884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C538EC(uint64_t a1)
{
  v4 = *(type metadata accessor for StaticService(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1C4CF38(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D1C53A0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t StaticServiceGroup.toggle(options:context:)(uint64_t a1, void *a2, _OWORD *a3)
{
  *(v4 + 960) = v3;
  *(v4 + 952) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10) - 8) + 64) + 15;
  *(v4 + 968) = swift_task_alloc();
  v8 = type metadata accessor for StaticService(0);
  *(v4 + 976) = v8;
  v9 = *(v8 - 8);
  *(v4 + 984) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 992) = swift_task_alloc();
  *(v4 + 1000) = swift_task_alloc();
  *(v4 + 1008) = swift_task_alloc();
  *(v4 + 1016) = swift_task_alloc();
  *(v4 + 1024) = swift_task_alloc();
  *(v4 + 1032) = swift_task_alloc();
  *(v4 + 1040) = *a2;
  v11 = a3[1];
  *(v4 + 1048) = *a3;
  *(v4 + 1064) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D1C53BD0, 0, 0);
}

uint64_t sub_1D1C53BD0()
{
  v152 = v0;
  v1 = *(v0 + 960);
  v2 = StaticServiceGroup.sortedStaticServices.getter();
  if (!v2[2])
  {
    v25 = *(v0 + 952);

    goto LABEL_18;
  }

  v3 = *(v0 + 1032);
  v4 = *(v0 + 1024);
  v5 = *(*(v0 + 984) + 80);
  v6 = (v5 + 32) & ~v5;
  sub_1D1C3EB34(v2 + v6, v4, type metadata accessor for StaticService);

  sub_1D17978CC(v4, v3);
  v7 = StaticService.canBeToggled.getter();
  v8 = *(v0 + 1032);
  if (!v7)
  {
    v25 = *(v0 + 952);
    v26 = *(v0 + 1032);
LABEL_17:
    sub_1D1B43A7C(v26, type metadata accessor for StaticService);
    goto LABEL_18;
  }

  v9 = (v0 + 376);
  v10 = *(*(v0 + 976) + 104);
  LOBYTE(v150) = *(v8 + v10);
  ServiceKind.togglingCharacteristicKind.getter(&v151);
  v11 = v151;
  if (v151 != 174)
  {
    v12 = *(v0 + 960);
    LOBYTE(v150) = v151;
    v13.value = StaticServiceGroup.BOOL(for:)(&v150).value;
    if (v13.value != 2)
    {
      v47 = *(v0 + 1040);
      *(v0 + 880) = MEMORY[0x1E69E6370];
      *(v0 + 856) = !v13.value;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1D1E739C0;
      *(v48 + 32) = v11;
      v138 = *(v0 + 1064);
      v148 = *(v0 + 1048);
      sub_1D1741970(v0 + 856, v48 + 40);
      v49 = sub_1D18DAC64(v48);
      *(v0 + 1080) = v49;
      swift_setDeallocating();
      sub_1D1741A30(v48 + 32, &qword_1EC646178, &unk_1D1E7E740);
      swift_deallocClassInstance();
      *(v0 + 936) = v47;
      *v9 = v148;
      *(v0 + 392) = v138;
      v50 = swift_task_alloc();
      *(v0 + 1088) = v50;
      *v50 = v0;
      v50[1] = sub_1D1C54D74;
      v51 = *(v0 + 960);
      v52 = *(v0 + 952);
      v53 = (v0 + 936);
      v54 = v49;
      v55 = (v0 + 376);
      goto LABEL_43;
    }
  }

  v14 = *(v8 + v10);
  if (v14 <= 0x22)
  {
    if (v14 != 14)
    {
      if (v14 != 19)
      {
        if (v14 == 30)
        {
          v15 = *(v0 + 984);
          v16 = *(v0 + 976);
          v17 = *(v0 + 960);
          result = StaticServiceGroup.sortedStaticServices.getter();
          v19 = result;
          v20 = 0;
          v21 = *(result + 16);
          v22 = result + v6;
          while (1)
          {
            if (v21 == v20)
            {
              v81 = *(v0 + 1040);
              v132 = *(v0 + 1064);
              v141 = *(v0 + 1048);

              *(v0 + 560) = MEMORY[0x1E69E6530];
              *(v0 + 536) = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1D1E739C0;
              *(inited + 32) = -100;
              sub_1D1741970(v0 + 536, inited + 40);
              v67 = sub_1D18DAC64(inited);
              *(v0 + 1144) = v67;
              swift_setDeallocating();
              sub_1D1741A30(inited + 32, &qword_1EC646178, &unk_1D1E7E740);
              *(v0 + 944) = v81;
              *(v0 + 632) = v141;
              *(v0 + 648) = v132;
              v83 = swift_task_alloc();
              *(v0 + 1152) = v83;
              *v83 = v0;
              v83[1] = sub_1D1C551F4;
              v84 = *(v0 + 960);
              v52 = *(v0 + 952);
              v53 = (v0 + 944);
              v55 = (v0 + 632);
              goto LABEL_42;
            }

            if (v20 >= *(v19 + 16))
            {
              break;
            }

            v23 = *(v0 + 1000);
            sub_1D1C3EB34(v22 + *(v15 + 72) * v20, v23, type metadata accessor for StaticService);
            v150 = *(v23 + *(v16 + 128));
            v151 = -100;
            v154 = StaticCharacteristicsBag.int(for:)(&v151);
            value = v154.value;
            if (v154.is_nil)
            {
              v89 = *(v0 + 1000);

              sub_1D1B43A7C(v89, type metadata accessor for StaticService);
              goto LABEL_58;
            }

            ++v20;
            result = sub_1D1B43A7C(*(v0 + 1000), type metadata accessor for StaticService);
            if (value != 1)
            {

LABEL_58:
              v90 = *(v0 + 1040);
              *(v0 + 464) = MEMORY[0x1E69E6530];
              *(v0 + 440) = 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
              v134 = *(v0 + 1048);
              v143 = *(v0 + 1064);
              v91 = swift_initStackObject();
              *(v91 + 16) = xmmword_1D1E739C0;
              *(v91 + 32) = -100;
              sub_1D1741970(v0 + 440, v91 + 40);
              v92 = sub_1D18DAC64(v91);
              *(v0 + 1160) = v92;
              swift_setDeallocating();
              sub_1D1741A30(v91 + 32, &qword_1EC646178, &unk_1D1E7E740);
              *(v0 + 896) = v90;
              *(v0 + 504) = v134;
              *(v0 + 520) = v143;
              v93 = (v0 + 504);
              v94 = swift_task_alloc();
              *(v0 + 1168) = v94;
              *v94 = v0;
              v94[1] = sub_1D1C553E8;
              v95 = *(v0 + 960);
              v52 = *(v0 + 952);
              v53 = (v0 + 896);
              goto LABEL_59;
            }
          }

          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          return result;
        }

        goto LABEL_46;
      }

      v70 = *(v0 + 984);
      v71 = *(v0 + 976);
      v72 = *(v0 + 960);
      result = StaticServiceGroup.sortedStaticServices.getter();
      v73 = result;
      v74 = 0;
      v75 = *(result + 16);
      v76 = result + v6;
      while (1)
      {
        if (v75 == v74)
        {
          v85 = *(v0 + 1040);
          v133 = *(v0 + 1064);
          v142 = *(v0 + 1048);

          *(v0 + 752) = MEMORY[0x1E69E6530];
          *(v0 + 728) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
          v86 = swift_allocObject();
          *(v86 + 16) = xmmword_1D1E739C0;
          *(v86 + 32) = -107;
          sub_1D1741970(v0 + 728, v86 + 40);
          v67 = sub_1D18DAC64(v86);
          *(v0 + 1112) = v67;
          swift_setDeallocating();
          sub_1D1741A30(v86 + 32, &qword_1EC646178, &unk_1D1E7E740);
          swift_deallocClassInstance();
          *(v0 + 920) = v85;
          *(v0 + 760) = v142;
          *(v0 + 776) = v133;
          v87 = swift_task_alloc();
          *(v0 + 1120) = v87;
          *v87 = v0;
          v87[1] = sub_1D1C54FB4;
          v88 = *(v0 + 960);
          v52 = *(v0 + 952);
          v53 = (v0 + 920);
          v55 = (v0 + 760);
          goto LABEL_42;
        }

        if (v74 >= *(v73 + 16))
        {
          goto LABEL_90;
        }

        v77 = *(v0 + 1008);
        sub_1D1C3EB34(v76 + *(v70 + 72) * v74, v77, type metadata accessor for StaticService);
        v150 = *(v77 + *(v71 + 128));
        v151 = -107;
        v156 = StaticCharacteristicsBag.int(for:)(&v151);
        v78 = v156.value;
        if (v156.is_nil)
        {
          break;
        }

        ++v74;
        result = sub_1D1B43A7C(*(v0 + 1008), type metadata accessor for StaticService);
        if (v78 != 1)
        {

          goto LABEL_61;
        }
      }

      v96 = *(v0 + 1008);

      sub_1D1B43A7C(v96, type metadata accessor for StaticService);
LABEL_61:
      v97 = *(v0 + 1040);
      *(v0 + 688) = MEMORY[0x1E69E6530];
      *(v0 + 664) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
      v135 = *(v0 + 1064);
      v144 = *(v0 + 1048);
      v98 = swift_initStackObject();
      *(v98 + 16) = xmmword_1D1E739C0;
      *(v98 + 32) = -107;
      sub_1D1741970(v0 + 664, v98 + 40);
      v67 = sub_1D18DAC64(v98);
      *(v0 + 1128) = v67;
      swift_setDeallocating();
      sub_1D1741A30(v98 + 32, &qword_1EC646178, &unk_1D1E7E740);
      *(v0 + 912) = v97;
      *(v0 + 696) = v144;
      *(v0 + 712) = v135;
      v99 = swift_task_alloc();
      *(v0 + 1136) = v99;
      *v99 = v0;
      v99[1] = sub_1D1C550D4;
      v100 = *(v0 + 960);
      v52 = *(v0 + 952);
      v53 = (v0 + 912);
      v55 = (v0 + 696);
LABEL_42:
      v54 = v67;
      goto LABEL_43;
    }

    goto LABEL_22;
  }

  if (v14 - 51 >= 2)
  {
    if (v14 != 35)
    {
LABEL_46:
      v26 = *(v0 + 1032);
      v25 = *(v0 + 952);
      goto LABEL_17;
    }

    v139 = *(v0 + 976);
    v57 = *(*(v0 + 1032) + *(v139 + 128));
    if (!*(v57 + 16))
    {
      v79 = *(v0 + 968);
      v80 = type metadata accessor for StaticCharacteristic();
      (*(*(v80 - 8) + 56))(v79, 1, 1, v80);
LABEL_64:
      v102 = *(v0 + 968);
      sub_1D1B43A7C(*(v0 + 1032), type metadata accessor for StaticService);
      sub_1D1741A30(v102, &qword_1EC643630, &qword_1D1E71D10);
      v25 = *(v0 + 952);
      goto LABEL_18;
    }

    v58 = sub_1D171D140(160);
    v59 = *(v0 + 968);
    if (v60)
    {
      v61 = v58;
      v62 = *(v57 + 56);
      v63 = type metadata accessor for StaticCharacteristic();
      v64 = *(v63 - 8);
      sub_1D1C3EB34(v62 + *(v64 + 72) * v61, v59, type metadata accessor for StaticCharacteristic);
      (*(v64 + 56))(v59, 0, 1, v63);
    }

    else
    {
      v63 = type metadata accessor for StaticCharacteristic();
      (*(*(v63 - 8) + 56))(v59, 1, 1, v63);
    }

    v101 = *(v0 + 968);

    type metadata accessor for StaticCharacteristic();
    if ((*(*(v63 - 8) + 48))(v101, 1, v63) == 1)
    {
      goto LABEL_64;
    }

    v147 = (v0 + 376);
    v103 = *(v0 + 968);
    v104 = (v103 + *(v63 + 44));
    v105 = *v104;
    v106 = v104[1];
    v107 = v104[2];
    v108 = v104[3];
    v109 = v104[4];
    sub_1D18F323C(*v104, v106, v107, v108);
    sub_1D1B43A7C(v103, type metadata accessor for StaticCharacteristic);
    if (v108 >> 8 == 0xFFFFFFFF)
    {
      v110 = *(v0 + 1032);
LABEL_83:
      sub_1D1B43A7C(v110, type metadata accessor for StaticService);
      v25 = *(v0 + 952);
      goto LABEL_18;
    }

    if (v108 >> 62)
    {
      v122 = *(v0 + 1032);
      sub_1D18F3260(v105, v106, v107, v108);
      v110 = v122;
      goto LABEL_83;
    }

    if (!v109)
    {
      if (v107 <= 1)
      {
        v111 = 1;
      }

      else
      {
        v111 = v107;
      }

      v109 = sub_1D1C279CC(v106, v105, v111);
    }

    v112 = *(v109 + 16);
    v113 = 32;
    while (v112)
    {
      v44 = *(v109 + v113);
      v113 += 8;
      --v112;
      if (v44 != 3)
      {
        v114 = *(v0 + 984);
        v115 = *(v0 + 960);

        result = StaticServiceGroup.sortedStaticServices.getter();
        v116 = result;
        v117 = 0;
        v118 = *(result + 16);
        v119 = result + v6;
        while (1)
        {
          if (v118 == v117)
          {
            goto LABEL_86;
          }

          if (v117 >= *(v116 + 16))
          {
            goto LABEL_91;
          }

          v120 = *(v0 + 992);
          sub_1D1C3EB34(v119 + *(v114 + 72) * v117, v120, type metadata accessor for StaticService);
          v150 = *(v120 + *(v139 + 128));
          v151 = -96;
          v157 = StaticCharacteristicsBag.int(for:)(&v151);
          v121 = v157.value;
          if (v157.is_nil)
          {
            break;
          }

          ++v117;
          result = sub_1D1B43A7C(*(v0 + 992), type metadata accessor for StaticService);
          if (v121 != 3)
          {

LABEL_88:
            v128 = *(v0 + 1040);
            *(v0 + 624) = MEMORY[0x1E69E6530];
            *(v0 + 600) = 3;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
            v137 = *(v0 + 1048);
            v146 = *(v0 + 1064);
            v129 = swift_initStackObject();
            *(v129 + 16) = xmmword_1D1E739C0;
            *(v129 + 32) = -96;
            sub_1D1741970(v0 + 600, v129 + 40);
            v92 = sub_1D18DAC64(v129);
            *(v0 + 1192) = v92;
            swift_setDeallocating();
            sub_1D1741A30(v129 + 32, &qword_1EC646178, &unk_1D1E7E740);
            *(v0 + 904) = v128;
            *(v0 + 568) = v137;
            *(v0 + 584) = v146;
            v93 = (v0 + 568);
            v130 = swift_task_alloc();
            *(v0 + 1200) = v130;
            *v130 = v0;
            v130[1] = sub_1D1C55628;
            v131 = *(v0 + 960);
            v52 = *(v0 + 952);
            v53 = (v0 + 904);
            goto LABEL_59;
          }
        }

        v127 = *(v0 + 992);

        sub_1D1B43A7C(v127, type metadata accessor for StaticService);
        goto LABEL_88;
      }
    }

    sub_1D1B43A7C(*(v0 + 1032), type metadata accessor for StaticService);

    v25 = *(v0 + 952);
LABEL_18:
    v27 = type metadata accessor for StateSnapshot(0);
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
    v28 = *(v0 + 1032);
    v29 = *(v0 + 1024);
    v30 = *(v0 + 1016);
    v31 = *(v0 + 1008);
    v32 = *(v0 + 1000);
    v33 = *(v0 + 992);
    v34 = *(v0 + 968);

    v35 = *(v0 + 8);

    return v35();
  }

LABEL_22:
  v36 = *(v0 + 960);
  v37 = StaticServiceGroup.sortedStaticServices.getter();
  v38 = v37;
  v39 = v37[2];
  if (!v39)
  {

    v56 = 100.0;
LABEL_41:
    v65 = *(v0 + 1040);
    *(v0 + 816) = MEMORY[0x1E69E63B0];
    *(v0 + 792) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1D1E739C0;
    *(v66 + 32) = -98;
    v140 = v9[43];
    v149 = v9[42];
    sub_1D1741970(v0 + 792, v66 + 40);
    v67 = sub_1D18DAC64(v66);
    *(v0 + 1096) = v67;
    swift_setDeallocating();
    sub_1D1741A30(v66 + 32, &qword_1EC646178, &unk_1D1E7E740);
    swift_deallocClassInstance();
    *(v0 + 928) = v65;
    v9[28] = v149;
    v9[29] = v140;
    v68 = swift_task_alloc();
    *(v0 + 1104) = v68;
    *v68 = v0;
    v68[1] = sub_1D1C54E94;
    v69 = *(v0 + 960);
    v52 = *(v0 + 952);
    v53 = (v0 + 928);
    v55 = v9 + 28;
    goto LABEL_42;
  }

  v147 = (v0 + 376);
  v40 = 0;
  v41 = 0;
  v42 = *(v0 + 1016);
  v43 = *(*(v0 + 976) + 128);
  v44 = v37 + v6;
  v45 = *(*(v0 + 984) + 72);
  v46 = v39 - 1;
  do
  {
    sub_1D1C3EB34(v44, *(v0 + 1016), type metadata accessor for StaticService);
    v150 = *(v42 + v43);
    v151 = -98;
    v155 = StaticCharacteristicsBag.int(for:)(&v151);
    if (v155.is_nil)
    {
      if (v40 <= 0)
      {
        sub_1D1B43A7C(*(v0 + 1016), type metadata accessor for StaticService);
        if (v46 == v41)
        {

          v56 = 100.0;
LABEL_35:
          v9 = (v0 + 376);
          goto LABEL_41;
        }

        v40 = 0;
        goto LABEL_27;
      }
    }

    else if (v155.value > v40)
    {
      v40 = v155.value;
    }

    sub_1D1B43A7C(*(v0 + 1016), type metadata accessor for StaticService);
    if (v46 == v41)
    {

      v56 = 100.0;
      if (v40 > 0)
      {
        v56 = 0.0;
      }

      goto LABEL_35;
    }

LABEL_27:
    ++v41;
    v44 += v45;
  }

  while (v41 < v38[2]);
  __break(1u);
LABEL_86:
  v123 = *(v0 + 1040);
  v136 = v147[42];
  v145 = v147[43];

  *(v0 + 496) = MEMORY[0x1E69E6530];
  *(v0 + 472) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
  v124 = swift_initStackObject();
  *(v124 + 16) = xmmword_1D1E739C0;
  *(v124 + 32) = -96;
  sub_1D1741970(v0 + 472, v124 + 40);
  v92 = sub_1D18DAC64(v124);
  *(v0 + 1176) = v92;
  swift_setDeallocating();
  sub_1D1741A30(v124 + 32, &qword_1EC646178, &unk_1D1E7E740);
  *(v0 + 888) = v123;
  v147[2] = v136;
  v147[3] = v145;
  v93 = v147 + 2;
  v125 = swift_task_alloc();
  *(v0 + 1184) = v125;
  *v125 = v0;
  v125[1] = sub_1D1C55508;
  v126 = *(v0 + 960);
  v52 = *(v0 + 952);
  v53 = (v0 + 888);
LABEL_59:
  v54 = v92;
  v55 = v93;
LABEL_43:

  return StaticServiceGroup.set(for:options:context:)(v52, v54, v53, v55);
}

uint64_t sub_1D1C54D74()
{
  v1 = *v0;
  v2 = *(*v0 + 1088);
  v3 = *(*v0 + 1080);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 856));

  return MEMORY[0x1EEE6DFA0](sub_1D1C5631C, 0, 0);
}

uint64_t sub_1D1C54E94()
{
  v1 = *v0;
  v2 = *(*v0 + 1104);
  v3 = *(*v0 + 1096);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 792));

  return MEMORY[0x1EEE6DFA0](sub_1D1C5631C, 0, 0);
}

uint64_t sub_1D1C54FB4()
{
  v1 = *v0;
  v2 = *(*v0 + 1120);
  v3 = *(*v0 + 1112);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 728));

  return MEMORY[0x1EEE6DFA0](sub_1D1C5631C, 0, 0);
}

uint64_t sub_1D1C550D4()
{
  v1 = *v0;
  v2 = *(*v0 + 1136);
  v3 = *(*v0 + 1128);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 664));

  return MEMORY[0x1EEE6DFA0](sub_1D1C5631C, 0, 0);
}

uint64_t sub_1D1C551F4()
{
  v1 = *v0;
  v2 = *(*v0 + 1152);
  v3 = *(*v0 + 1144);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 536));

  return MEMORY[0x1EEE6DFA0](sub_1D1C55314, 0, 0);
}

uint64_t sub_1D1C55314()
{
  sub_1D1B43A7C(v0[129], type metadata accessor for StaticService);
  v1 = v0[129];
  v2 = v0[128];
  v3 = v0[127];
  v4 = v0[126];
  v5 = v0[125];
  v6 = v0[124];
  v7 = v0[121];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D1C553E8()
{
  v1 = *v0;
  v2 = *(*v0 + 1168);
  v3 = *(*v0 + 1160);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 440));

  return MEMORY[0x1EEE6DFA0](sub_1D1C5631C, 0, 0);
}

uint64_t sub_1D1C55508()
{
  v1 = *v0;
  v2 = *(*v0 + 1184);
  v3 = *(*v0 + 1176);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 472));

  return MEMORY[0x1EEE6DFA0](sub_1D1C5631C, 0, 0);
}

uint64_t sub_1D1C55628()
{
  v1 = *v0;
  v2 = *(*v0 + 1200);
  v3 = *(*v0 + 1192);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 600));

  return MEMORY[0x1EEE6DFA0](sub_1D1C5631C, 0, 0);
}

uint64_t StaticServiceGroup.set(_:for:options:context:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4, _OWORD *a5)
{
  *(v6 + 128) = a1;
  *(v6 + 136) = a2;
  *(v6 + 208) = *a3;
  v7 = *a4;
  *(v6 + 144) = v5;
  *(v6 + 152) = v7;
  v8 = a5[1];
  *(v6 + 160) = *a5;
  *(v6 + 176) = v8;
  return MEMORY[0x1EEE6DFA0](sub_1D1C55780, 0, 0);
}

uint64_t sub_1D1C55780()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 208);
  v3 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v2;
  sub_1D1741970(v3, inited + 40);
  v5 = sub_1D18DAC64(inited);
  *(v0 + 192) = v5;
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &qword_1EC646178, &unk_1D1E7E740);
  *(v0 + 120) = v1;
  *(v0 + 104) = v10;
  *(v0 + 88) = v11;
  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  *v6 = v0;
  v6[1] = sub_1D1C3C0C0;
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);

  return StaticServiceGroup.set(for:options:context:)(v8, v5, (v0 + 120), (v0 + 88));
}

uint64_t StaticServiceGroup.set(for:options:context:)(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4)
{
  *(v5 + 256) = a1;
  *(v5 + 264) = a2;
  v6 = *a3;
  *(v5 + 272) = v4;
  *(v5 + 280) = v6;
  v7 = a4[1];
  *(v5 + 288) = *a4;
  *(v5 + 304) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1D1C55900, 0, 0);
}

uint64_t sub_1D1C55900()
{
  v44 = v0;
  v1 = *(v0 + 264);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 264) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v41 = *(v0 + 264);

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC8];
  for (i = v3; ; v3 = i)
  {
    *(v0 + 320) = v11;
    if (!v7)
    {
      break;
    }

LABEL_11:
    v14 = __clz(__rbit64(v7)) | (v10 << 6);
    v15 = *(*(v41 + 48) + v14);
    sub_1D1741970(*(v41 + 56) + 32 * v14, v0 + 24);
    *(v0 + 16) = v15;
    sub_1D17DAA94();
    v16 = *(v0 + 48);
    v17 = __swift_project_boxed_opaque_existential_1((v0 + 24), v16);
    *(v0 + 144) = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 120));
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v17, v16);
    v42 = *(v0 + 16);
    static HMService.convert(_:characteristicKind:)(v0 + 120, &v42, v0 + 88);
    sub_1D1741A30(v0 + 120, &qword_1EC645D58, &unk_1D1E7E530);
    if (*(v0 + 112))
    {
      sub_1D16EEE38((v0 + 88), (v0 + 56));
    }

    else
    {
      v19 = *(v0 + 48);
      v20 = __swift_project_boxed_opaque_existential_1((v0 + 24), v19);
      *(v0 + 80) = v19;
      v21 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
      (*(*(v19 - 8) + 16))(v21, v20, v19);
      if (*(v0 + 112))
      {
        sub_1D1741A30(v0 + 88, &qword_1EC645D58, &unk_1D1E7E530);
      }
    }

    v22 = *(v0 + 16);
    v23 = *(v0 + 80);
    v24 = __swift_project_boxed_opaque_existential_1((v0 + 56), v23);
    *(v0 + 176) = v23;
    v25 = __swift_allocate_boxed_opaque_existential_1((v0 + 152));
    (*(*(v23 - 8) + 16))(v25, v24, v23);
    sub_1D16EEE38((v0 + 152), (v0 + 184));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v11;
    v28 = sub_1D171D140(v22);
    v29 = v11[2];
    v30 = (v27 & 1) == 0;
    result = v29 + v30;
    if (__OFADD__(v29, v30))
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

    v31 = v27;
    if (v11[3] >= result)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v27)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1D173BB00();
        v11 = v43;
        if (v31)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1D172D2A8(result, isUniquelyReferenced_nonNull_native);
      v11 = v43;
      v32 = sub_1D171D140(v22);
      if ((v31 & 1) != (v33 & 1))
      {

        return sub_1D1E690FC();
      }

      v28 = v32;
      if (v31)
      {
LABEL_4:
        v12 = (v11[7] + 32 * v28);
        __swift_destroy_boxed_opaque_existential_1(v12);
        sub_1D16EEE38((v0 + 184), v12);
        goto LABEL_5;
      }
    }

    v11[(v28 >> 6) + 8] |= 1 << v28;
    *(v11[6] + v28) = v22;
    result = sub_1D16EEE38((v0 + 184), (v11[7] + 32 * v28));
    v34 = v11[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_34;
    }

    v11[2] = v36;
LABEL_5:
    v7 &= v7 - 1;
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    result = sub_1D1741A30(v0 + 16, &qword_1EC64CB50, &unk_1D1EA1930);
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      goto LABEL_11;
    }
  }

  v37 = *(v0 + 264);

  v38 = swift_task_alloc();
  *(v0 + 328) = v38;
  *v38 = v0;
  v38[1] = sub_1D1C55D40;
  v39 = *(v0 + 272);

  return StaticServiceGroup.serviceGroup.getter();
}

uint64_t sub_1D1C55D40(uint64_t a1)
{
  v2 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C55E40, 0, 0);
}

uint64_t sub_1D1C55E40()
{
  v1 = *(v0 + 336);
  if (v1)
  {
    v2 = *(v0 + 280);
    v3 = [v1 services];
    sub_1D17DAA94();
    v4 = sub_1D1E67C1C();
    *(v0 + 344) = v4;

    if ((v2 & 0x402) == 2)
    {
      v5 = swift_task_alloc();
      *(v0 + 360) = v5;
      *v5 = v0;
      v5[1] = sub_1D1C561E8;
      v6 = *(v0 + 320);
      v7 = *(v0 + 256);

      return sub_1D18CCB18(v7, v4, v6);
    }

    else
    {
      *(v0 + 248) = *(v0 + 280);
      v13 = *(v0 + 304);
      *(v0 + 216) = *(v0 + 288);
      *(v0 + 232) = v13;
      v14 = swift_task_alloc();
      *(v0 + 352) = v14;
      *v14 = v0;
      v14[1] = sub_1D1C56054;
      v15 = *(v0 + 320);
      v16 = *(v0 + 256);

      return sub_1D18CD90C(v16, v0 + 248, (v0 + 216), v4, v15);
    }
  }

  else
  {
    v9 = *(v0 + 320);
    v10 = *(v0 + 256);
    v11 = type metadata accessor for StateSnapshot(0);
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1D1C56054()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 320);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1C56188, 0, 0);
}

uint64_t sub_1D1C56188()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1C561E8()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 320);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1C56188, 0, 0);
}

uint64_t sub_1D1C56320()
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v1 = *(*(v58 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v58);
  v57 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v56 = &v50 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v50 - v6;
  v7 = type metadata accessor for StaticServiceGroup();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C66B60(v0, v11, type metadata accessor for StaticServiceGroup);
  v12 = *(*&v11[*(v8 + 64)] + 16);
  if (v12)
  {
    v51 = v11;
    v63 = MEMORY[0x1E69E7CC0];

    sub_1D178CF80(0, v12, 0);
    v14 = v13;
    v15 = v63;
    v16 = v14 + 64;
    v17 = -1 << *(v14 + 32);
    result = sub_1D1E6869C();
    v19 = result;
    v20 = 0;
    v52 = v14 + 72;
    v53 = v12;
    v54 = v14 + 64;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(v14 + 32))
    {
      v22 = v19 >> 6;
      if ((*(v16 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_23;
      }

      v59 = v20;
      v60 = *(v14 + 36);
      v61 = 1 << v19;
      v23 = v58;
      v24 = *(v58 + 48);
      v25 = *(v14 + 48);
      v26 = sub_1D1E66A7C();
      v27 = *(v26 - 8);
      v28 = v27;
      v29 = v25 + *(v27 + 72) * v19;
      v30 = *(v27 + 16);
      v62 = v15;
      v31 = v55;
      v30(v55, v29, v26);
      v32 = v14;
      v33 = *(v14 + 56);
      v34 = (type metadata accessor for StaticService(0) - 8);
      sub_1D1C66B60(v33 + *(*v34 + 72) * v19, &v31[v24], type metadata accessor for StaticService);
      v35 = v56;
      (*(v28 + 32))(v56, v31, v26);
      v36 = &v31[v24];
      v15 = v62;
      sub_1D1C72E80(v36, &v35[*(v23 + 48)], type metadata accessor for StaticService);
      v37 = v35;
      v38 = v57;
      sub_1D1741A90(v37, v57, &qword_1EC642DB0, &unk_1D1E6F360);
      v39 = v38 + *(v23 + 48);
      v40 = *(v39 + v34[28]);
      sub_1D1C72E20(v39, type metadata accessor for StaticService);
      result = (*(v28 + 8))(v38, v26);
      v63 = v15;
      v42 = *(v15 + 16);
      v41 = *(v15 + 24);
      if (v42 >= v41 >> 1)
      {
        result = sub_1D178CF80((v41 > 1), v42 + 1, 1);
        v15 = v63;
      }

      *(v15 + 16) = v42 + 1;
      *(v15 + v42 + 32) = v40;
      v21 = 1 << *(v32 + 32);
      if (v19 >= v21)
      {
        goto LABEL_24;
      }

      v16 = v54;
      v43 = *(v54 + 8 * v22);
      if ((v43 & v61) == 0)
      {
        goto LABEL_25;
      }

      v14 = v32;
      if (v60 != *(v32 + 36))
      {
        goto LABEL_26;
      }

      v44 = v43 & (-2 << (v19 & 0x3F));
      if (v44)
      {
        v21 = __clz(__rbit64(v44)) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v45 = v22 << 6;
        v46 = v22 + 1;
        v47 = (v52 + 8 * v22);
        while (v46 < (v21 + 63) >> 6)
        {
          v49 = *v47++;
          v48 = v49;
          v45 += 64;
          ++v46;
          if (v49)
          {
            result = sub_1D1716920(v19, v60, 0);
            v21 = __clz(__rbit64(v48)) + v45;
            goto LABEL_4;
          }
        }

        result = sub_1D1716920(v19, v60, 0);
      }

LABEL_4:
      v20 = v59 + 1;
      v19 = v21;
      if (v59 + 1 == v53)
      {
        sub_1D1C72E20(v51, type metadata accessor for StaticServiceGroup);

        return v15;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    sub_1D1C72E20(v11, type metadata accessor for StaticServiceGroup);
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D1C56820()
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v1 = *(*(v58 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v58);
  v57 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v56 = &v50 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v50 - v6;
  v7 = type metadata accessor for StaticAccessory(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C66B60(v0, v11, type metadata accessor for StaticAccessory);
  v12 = *(*&v11[*(v8 + 88)] + 16);
  if (v12)
  {
    v51 = v11;
    v63 = MEMORY[0x1E69E7CC0];

    sub_1D178CF80(0, v12, 0);
    v14 = v13;
    v15 = v63;
    v16 = v14 + 64;
    v17 = -1 << *(v14 + 32);
    result = sub_1D1E6869C();
    v19 = result;
    v20 = 0;
    v52 = v14 + 72;
    v53 = v12;
    v54 = v14 + 64;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(v14 + 32))
    {
      v22 = v19 >> 6;
      if ((*(v16 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_23;
      }

      v59 = v20;
      v60 = *(v14 + 36);
      v61 = 1 << v19;
      v23 = v58;
      v24 = *(v58 + 48);
      v25 = *(v14 + 48);
      v26 = sub_1D1E66A7C();
      v27 = *(v26 - 8);
      v28 = v27;
      v29 = v25 + *(v27 + 72) * v19;
      v30 = *(v27 + 16);
      v62 = v15;
      v31 = v55;
      v30(v55, v29, v26);
      v32 = v14;
      v33 = *(v14 + 56);
      v34 = (type metadata accessor for StaticService(0) - 8);
      sub_1D1C66B60(v33 + *(*v34 + 72) * v19, &v31[v24], type metadata accessor for StaticService);
      v35 = v56;
      (*(v28 + 32))(v56, v31, v26);
      v36 = &v31[v24];
      v15 = v62;
      sub_1D1C72E80(v36, &v35[*(v23 + 48)], type metadata accessor for StaticService);
      v37 = v35;
      v38 = v57;
      sub_1D1741A90(v37, v57, &qword_1EC642DB0, &unk_1D1E6F360);
      v39 = v38 + *(v23 + 48);
      v40 = *(v39 + v34[28]);
      sub_1D1C72E20(v39, type metadata accessor for StaticService);
      result = (*(v28 + 8))(v38, v26);
      v63 = v15;
      v42 = *(v15 + 16);
      v41 = *(v15 + 24);
      if (v42 >= v41 >> 1)
      {
        result = sub_1D178CF80((v41 > 1), v42 + 1, 1);
        v15 = v63;
      }

      *(v15 + 16) = v42 + 1;
      *(v15 + v42 + 32) = v40;
      v21 = 1 << *(v32 + 32);
      if (v19 >= v21)
      {
        goto LABEL_24;
      }

      v16 = v54;
      v43 = *(v54 + 8 * v22);
      if ((v43 & v61) == 0)
      {
        goto LABEL_25;
      }

      v14 = v32;
      if (v60 != *(v32 + 36))
      {
        goto LABEL_26;
      }

      v44 = v43 & (-2 << (v19 & 0x3F));
      if (v44)
      {
        v21 = __clz(__rbit64(v44)) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v45 = v22 << 6;
        v46 = v22 + 1;
        v47 = (v52 + 8 * v22);
        while (v46 < (v21 + 63) >> 6)
        {
          v49 = *v47++;
          v48 = v49;
          v45 += 64;
          ++v46;
          if (v49)
          {
            result = sub_1D1716920(v19, v60, 0);
            v21 = __clz(__rbit64(v48)) + v45;
            goto LABEL_4;
          }
        }

        result = sub_1D1716920(v19, v60, 0);
      }

LABEL_4:
      v20 = v59 + 1;
      v19 = v21;
      if (v59 + 1 == v53)
      {
        sub_1D1C72E20(v51, type metadata accessor for StaticAccessory);

        return v15;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    sub_1D1C72E20(v11, type metadata accessor for StaticAccessory);
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D1C56D20()
{
  v1 = v0;
  v2 = type metadata accessor for StaticUserActionPrediction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  sub_1D1C66B60(v1, v10, type metadata accessor for BoxedTileInfoBearer.TileSort);
  v11 = (*(v3 + 48))(v10, 3, v2);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    goto LABEL_8;
  }

  if (v11)
  {
    v12 = 1;
LABEL_8:
    MEMORY[0x1D3892850](v12);
    return sub_1D1E6926C();
  }

  sub_1D1C72E80(v10, v6, type metadata accessor for StaticUserActionPrediction);
  MEMORY[0x1D3892850](0);
  StaticUserActionPrediction.hash(into:)();
  sub_1D1C72E20(v6, type metadata accessor for StaticUserActionPrediction);
  return sub_1D1E6926C();
}

uint64_t sub_1D1C56F58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticUserActionPrediction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C66B60(v2, v12, type metadata accessor for BoxedTileInfoBearer.TileSort);
  v13 = (*(v5 + 48))(v12, 3, v4);
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }
  }

  else
  {
    if (!v13)
    {
      sub_1D1C72E80(v12, v9, type metadata accessor for StaticUserActionPrediction);
      MEMORY[0x1D3892850](0);
      StaticUserActionPrediction.hash(into:)();
      return sub_1D1C72E20(v9, type metadata accessor for StaticUserActionPrediction);
    }

    v15 = 1;
  }

  return MEMORY[0x1D3892850](v15);
}

uint64_t sub_1D1C57104(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for StaticUserActionPrediction();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  sub_1D1C66B60(v4, v13, type metadata accessor for BoxedTileInfoBearer.TileSort);
  v14 = (*(v6 + 48))(v13, 3, v5);
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }

    goto LABEL_8;
  }

  if (v14)
  {
    v15 = 1;
LABEL_8:
    MEMORY[0x1D3892850](v15);
    return sub_1D1E6926C();
  }

  sub_1D1C72E80(v13, v10, type metadata accessor for StaticUserActionPrediction);
  MEMORY[0x1D3892850](0);
  StaticUserActionPrediction.hash(into:)();
  sub_1D1C72E20(v10, type metadata accessor for StaticUserActionPrediction);
  return sub_1D1E6926C();
}

uint64_t sub_1D1C572DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v59 = a1;
  v51 = type metadata accessor for StaticActionSet();
  v2 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticUserActionPrediction();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for BoxedTileInfoBearer(0);
  v15 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC00, &unk_1D1EA1FA0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v49 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v49 - v30;
  sub_1D17419CC(v59, v61);
  (*(v12 + 56))(v31, 1, 1, v11);
  v32 = *(v8 + 56);
  v57 = v7;
  v54 = v32;
  v55 = v8 + 56;
  v32(v24, 1, 1, v7);
  sub_1D1741C08(v31, v29, &qword_1EC642590, qword_1D1E71260);
  if ((*(v12 + 48))(v29, 1, v11) == 1)
  {
    sub_1D1741A30(v29, &qword_1EC642590, qword_1D1E71260);
    v33 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v34 = *(v33 + 48);
    sub_1D1E6886C();
  }

  else
  {
    v35 = *(v12 + 32);
    v36 = v49;
    v35(v49, v29, v11);
    v35(v17, v36, v11);
  }

  v37 = v17;
  v38 = v56;
  sub_1D17419CC(v61, v37 + *(v56 + 20));
  sub_1D1741C08(v24, v22, &qword_1EC64CC00, &unk_1D1EA1FA0);
  v39 = v57;
  if ((*(v8 + 48))(v22, 1, v57) == 1)
  {
    sub_1D1741A30(v22, &qword_1EC64CC00, &unk_1D1EA1FA0);
    sub_1D17419CC(v61, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
    v40 = v52;
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v59);
      sub_1D1741A30(v24, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D1741A30(v31, &qword_1EC642590, qword_1D1E71260);
      sub_1D1C72E20(v40, type metadata accessor for StaticActionSet);
      v41 = 1;
    }

    else
    {
      v44 = v62;
      v45 = v63;
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v46 = (*(v45 + 120))(v44, v45);
      __swift_destroy_boxed_opaque_existential_1(v59);
      sub_1D1741A30(v24, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D1741A30(v31, &qword_1EC642590, qword_1D1E71260);
      if (v46)
      {
        v41 = 2;
      }

      else
      {
        v41 = 3;
      }
    }

    v47 = v53;
    v54(v53, v41, 3, v39);
    sub_1D1C72E80(v47, v37 + *(v38 + 24), type metadata accessor for BoxedTileInfoBearer.TileSort);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v59);
    sub_1D1741A30(v24, &qword_1EC64CC00, &unk_1D1EA1FA0);
    sub_1D1741A30(v31, &qword_1EC642590, qword_1D1E71260);
    v42 = v50;
    sub_1D1C72E80(v22, v50, type metadata accessor for StaticUserActionPrediction);
    v43 = *(v38 + 24);
    sub_1D1C72E80(v42, v37 + v43, type metadata accessor for StaticUserActionPrediction);
    v54((v37 + v43), 0, 3, v39);
  }

  sub_1D1C72E80(v37, v58, type metadata accessor for BoxedTileInfoBearer);
  return __swift_destroy_boxed_opaque_existential_1(v61);
}