uint64_t sub_21406C5D0()
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = v0[1];
  v2 = MEMORY[0x277D84F98];
  if (v1)
  {
    v3 = *v0;
    v23 = MEMORY[0x277D837D0];
    *&v22 = v3;
    *(&v22 + 1) = v1;
    sub_213FDC730(&v22, v21);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v21, 0x6C4374756F79616CLL, 0xEB00000000737361, isUniquelyReferenced_nonNull_native);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
  *&v22 = v2;
  sub_213FDC730(&v22, v21);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v21, 0x6F666E4972657375, 0xE800000000000000, v5);
  v6 = objc_opt_self();
  v7 = MEMORY[0x277D837D0];
  v8 = sub_2146D9468();

  *&v22 = 0;
  v9 = [v6 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v22];

  v10 = v22;
  if (v9)
  {
    v11 = sub_2146D8A58();
  }

  else
  {
    v12 = v10;
    v13 = sub_2146D8838();

    swift_willThrow();
    sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2146EA710;
    *&v22 = v13;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    v16 = sub_2146D9618();
    v18 = v17;
    *(v14 + 56) = v7;
    *(v14 + 64) = sub_213FB2DA0();
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    sub_2146D91D8();

    v11 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_21406C8D4(uint64_t (*a1)(void))
{
  v1 = a1();
  v3 = v2;
  v4 = sub_2146D8A38();
  sub_213FB54FC(v1, v3);
  return v4;
}

uint64_t sub_21406C920()
{
  v1 = v0;
  v79 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v71 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = &v70 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v70 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v70 - v11;
  v13 = MEMORY[0x277D84F98];
  v75 = MEMORY[0x277D84F98];
  v14 = type metadata accessor for MessagesAppCustomAcknowledgement();
  v15 = (v1 + *(v14 + 24));
  v16 = v15[1];
  if (v16)
  {
    v17 = *v15;
    v78 = MEMORY[0x277D837D0];
    *&v77 = v17;
    *(&v77 + 1) = v16;
    sub_213FDC730(&v77, v76);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v13;
    sub_2140524DC(v76, 0x74786574646CLL, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v75 = v74;
  }

  v73 = v14;
  v19 = *(v14 + 20);
  sub_213FB2E54(v1 + v19, v12, &unk_27C904F30, &unk_2146EFA20);
  v20 = sub_2146D8B88();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v12, 1, v20);
  sub_213FB2DF4(v12, &unk_27C904F30, &unk_2146EFA20);
  if (v23 != 1)
  {
    v24 = v1 + v19;
    v25 = v70;
    sub_213FB2E54(v24, v70, &unk_27C904F30, &unk_2146EFA20);
    if (v22(v25, 1, v20) == 1)
    {
      sub_213FB2DF4(v25, &unk_27C904F30, &unk_2146EFA20);
      sub_2144AEF6C(0xD000000000000011, 0x800000021478BCE0, &v77);
      sub_213FB2DF4(&v77, &qword_27C913170, &qword_2146EAB20);
    }

    else
    {
      v78 = v20;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v77);
      (*(v21 + 32))(boxed_opaque_existential_0, v25, v20);
      sub_213FDC730(&v77, v76);
      v27 = v75;
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v27;
      sub_2140524DC(v76, 0xD000000000000011, 0x800000021478BCE0, v28);
      v75 = v74;
    }
  }

  v29 = v72;
  v30 = *(v73 + 28);
  sub_213FB2E54(v1 + v30, v72, &unk_27C9131A0, &unk_2146E9D10);
  v31 = sub_2146D8958();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v34 = v33(v29, 1, v31);
  sub_213FB2DF4(v29, &unk_27C9131A0, &unk_2146E9D10);
  if (v34 != 1)
  {
    v35 = v1 + v30;
    v36 = v71;
    sub_213FB2E54(v35, v71, &unk_27C9131A0, &unk_2146E9D10);
    if (v33(v36, 1, v31) == 1)
    {
      sub_213FB2DF4(v36, &unk_27C9131A0, &unk_2146E9D10);
      sub_2144AEF6C(5001813, 0xE300000000000000, &v77);
      sub_213FB2DF4(&v77, &qword_27C913170, &qword_2146EAB20);
    }

    else
    {
      v78 = v31;
      v37 = __swift_allocate_boxed_opaque_existential_0(&v77);
      (*(v32 + 32))(v37, v36, v31);
      sub_213FDC730(&v77, v76);
      v38 = v75;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v38;
      sub_2140524DC(v76, 5001813, 0xE300000000000000, v39);
      v75 = v74;
    }
  }

  v40 = v1[1];
  v41 = MEMORY[0x277D837D0];
  if (v40)
  {
    v42 = *v1;
    v78 = MEMORY[0x277D837D0];
    *&v77 = v42;
    *(&v77 + 1) = v40;
    sub_213FDC730(&v77, v76);

    v43 = v75;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v43;
    sub_2140524DC(v76, 0xD000000000000012, 0x800000021478BCC0, v44);
    v75 = v74;
  }

  v45 = v73;
  v46 = (v1 + *(v73 + 36));
  v47 = v46[1];
  if (v47)
  {
    v48 = *v46;
    v78 = v41;
    *&v77 = v48;
    *(&v77 + 1) = v47;
    sub_213FDC730(&v77, v76);

    v49 = v75;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v49;
    sub_2140524DC(v76, 28257, 0xE200000000000000, v50);
    v75 = v74;
  }

  v51 = v1 + *(v45 + 32);
  if (v51[8] != 1)
  {
    v52 = *v51;
    v78 = MEMORY[0x277D83B88];
    *&v77 = v52;
    sub_213FDC730(&v77, v76);
    v53 = v75;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v53;
    sub_2140524DC(v76, 0x6469707061, 0xE500000000000000, v54);
  }

  v55 = objc_opt_self();
  v56 = MEMORY[0x277D837D0];
  v57 = sub_2146D9468();

  *&v77 = 0;
  v58 = [v55 archivedDataWithRootObject:v57 requiringSecureCoding:1 error:&v77];

  v59 = v77;
  if (v58)
  {
    v60 = sub_2146D8A58();
  }

  else
  {
    v61 = v59;
    v62 = sub_2146D8838();

    swift_willThrow();
    sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_2146EA710;
    *&v77 = v62;
    v64 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    v65 = sub_2146D9618();
    v67 = v66;
    *(v63 + 56) = v56;
    *(v63 + 64) = sub_213FB2DA0();
    *(v63 + 32) = v65;
    *(v63 + 40) = v67;
    sub_2146D91D8();

    v60 = 0;
  }

  v68 = *MEMORY[0x277D85DE8];
  return v60;
}

uint64_t sub_21406D14C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v5 = v4;
  v6 = sub_2146D8A38();
  sub_213FB54FC(v3, v5);
  return v6;
}

uint64_t sub_21406D198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncodedAppData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21406D21C(uint64_t a1)
{
  v2 = type metadata accessor for EncodedAppData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21406D350@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LinkPresentation.LinkMetadata(0) + 84));
  v4 = v3[5];
  v21[0] = v3[6];
  *(v21 + 9) = *(v3 + 105);
  v5 = v3[5];
  v7 = v3[3];
  v19 = v3[4];
  v6 = v19;
  v20 = v5;
  v8 = v3[1];
  v10 = v8;
  v16[0] = *v3;
  v9 = v16[0];
  v16[1] = v8;
  v11 = v3[3];
  v17 = v3[2];
  v12 = v17;
  v18 = v11;
  *(a1 + 105) = *(v3 + 105);
  v13 = v3[6];
  a1[5] = v4;
  a1[6] = v13;
  a1[3] = v7;
  a1[4] = v6;
  a1[1] = v10;
  a1[2] = v12;
  *a1 = v9;
  return sub_213FB2E54(v16, &v15, &qword_27C904868, &qword_2146EDB58);
}

uint64_t sub_21406D414@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LinkPresentation.LinkMetadata(0) + 100));
  v4 = v3[5];
  v19[0] = v3[6];
  *(v19 + 9) = *(v3 + 105);
  v5 = v3[3];
  v6 = v3[5];
  v17 = v3[4];
  v7 = v17;
  v18 = v6;
  v8 = v3[1];
  v14[0] = *v3;
  v9 = v14[0];
  v14[1] = v8;
  v10 = v3[3];
  v15 = v3[2];
  v16 = v10;
  a1[2] = v15;
  a1[3] = v5;
  *a1 = v9;
  a1[1] = v8;
  *(a1 + 105) = *(v3 + 105);
  v11 = v3[6];
  a1[5] = v4;
  a1[6] = v11;
  a1[4] = v7;
  return sub_213FB2E54(v14, &v13, &qword_27C904868, &qword_2146EDB58);
}

uint64_t sub_21406D4B8()
{
  v1 = *(v0 + *(type metadata accessor for LinkPresentation.LinkMetadata(0) + 104));
}

uint64_t sub_21406D4EC()
{
  v1 = *(v0 + *(type metadata accessor for LinkPresentation.LinkMetadata(0) + 112));
}

uint64_t sub_21406D5E8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_21406D618(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_21406D670()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_21406D6A0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

__n128 sub_21406D6FC(uint64_t a1)
{
  v3 = v1[11];
  v10[4] = v1[10];
  v10[5] = v3;
  v11[0] = v1[12];
  *(v11 + 9) = *(v1 + 201);
  v4 = v1[7];
  v10[0] = v1[6];
  v10[1] = v4;
  v5 = v1[9];
  v10[2] = v1[8];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[10] = *(a1 + 64);
  v1[11] = v6;
  v1[12] = *(a1 + 96);
  *(v1 + 201) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[6] = *a1;
  v1[7] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[8] = result;
  v1[9] = v9;
  return result;
}

uint64_t sub_21406D8FC()
{
  v1 = *(v0 + *(type metadata accessor for LinkPresentation.SongMetadata(0) + 52));
}

uint64_t sub_21406D930(uint64_t a1)
{
  v3 = *(type metadata accessor for LinkPresentation.SongMetadata(0) + 52);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21406D9B8@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LinkPresentation.SongMetadata(0) + 56));
  *&v10[9] = *(v3 + 41);
  v4 = *&v10[9];
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  *v10 = v3[2];
  v6 = *v10;
  *a1 = v9[0];
  a1[1] = v5;
  a1[2] = v6;
  *(a1 + 41) = v4;
  return sub_213FB2E54(v9, &v8, &qword_27C904880, &qword_2146EDB78);
}

__n128 sub_21406DA30(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for LinkPresentation.SongMetadata(0) + 56));
  *&v8[9] = *(v3 + 41);
  v4 = v3[1];
  v7[0] = *v3;
  v7[1] = v4;
  *v8 = v3[2];
  sub_213FB2DF4(v7, &qword_27C904880, &qword_2146EDB78);
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  v3[2] = *(a1 + 32);
  result = *(a1 + 41);
  *(v3 + 41) = result;
  return result;
}

uint64_t sub_21406DD48@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[9];
  v14 = v1[8];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[10];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 169);
  v5 = *(v16 + 9);
  v6 = v1[5];
  v11[0] = v1[4];
  v11[1] = v6;
  v8 = v1[7];
  v12 = v1[6];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

uint64_t sub_21406E1D8()
{
  v1 = (v0 + *(type metadata accessor for LinkPresentation.PlaylistMetadata(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_21406E218(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LinkPresentation.PlaylistMetadata(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_21406E67C@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[11];
  v14 = v1[10];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[12];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 201);
  v5 = *(v16 + 9);
  v6 = v1[7];
  v11[0] = v1[6];
  v11[1] = v6;
  v8 = v1[9];
  v12 = v1[8];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

uint64_t sub_21406E720(uint64_t a1)
{
  v3 = *(v1 + 224);

  *(v1 + 224) = a1;
  return result;
}

uint64_t sub_21406E8F4(char a1)
{
  result = type metadata accessor for LinkPresentation.SoftwareMetadata(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_21406E96C@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LinkPresentation.SoftwareMetadata(0) + 56));
  v4 = v3[5];
  v6 = v3[3];
  v19 = v3[4];
  v5 = v19;
  v20 = v4;
  v7 = v3[5];
  v21[0] = v3[6];
  *(v21 + 9) = *(v3 + 105);
  v8 = v3[1];
  v10 = v8;
  v16[0] = *v3;
  v9 = v16[0];
  v16[1] = v8;
  v11 = v3[3];
  v17 = v3[2];
  v12 = v17;
  v18 = v11;
  *(a1 + 105) = *(v3 + 105);
  v13 = v3[6];
  a1[5] = v7;
  a1[6] = v13;
  a1[3] = v6;
  a1[4] = v5;
  a1[1] = v10;
  a1[2] = v12;
  *a1 = v9;
  return sub_213FB2E54(v16, &v15, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_21406EA10(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for LinkPresentation.SoftwareMetadata(0) + 56));
  v4 = v3[5];
  v11[4] = v3[4];
  v11[5] = v4;
  v12[0] = v3[6];
  *(v12 + 9) = *(v3 + 105);
  v5 = v3[1];
  v11[0] = *v3;
  v11[1] = v5;
  v6 = v3[3];
  v11[2] = v3[2];
  v11[3] = v6;
  sub_213FB2DF4(v11, &qword_27C904868, &qword_2146EDB58);
  v7 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v7;
  v3[6] = *(a1 + 96);
  *(v3 + 105) = *(a1 + 105);
  v8 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  v3[2] = result;
  v3[3] = v10;
  return result;
}

uint64_t sub_21406EAF8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_21406EB28(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_21406EB80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_21406EBB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_21406EC08()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_21406EC38(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_21406EC90()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_21406ECC0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

__n128 sub_21406ED1C(uint64_t a1)
{
  v3 = v1[9];
  v10[4] = v1[8];
  v10[5] = v3;
  v11[0] = v1[10];
  *(v11 + 9) = *(v1 + 169);
  v4 = v1[5];
  v10[0] = v1[4];
  v10[1] = v4;
  v5 = v1[7];
  v10[2] = v1[6];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[8] = *(a1 + 64);
  v1[9] = v6;
  v1[10] = *(a1 + 96);
  *(v1 + 169) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[4] = *a1;
  v1[5] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[6] = result;
  v1[7] = v9;
  return result;
}

uint64_t sub_21406EEA8(char a1)
{
  result = type metadata accessor for LinkPresentation.BookMetadata(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

__n128 sub_21406EFC4(uint64_t a1)
{
  v3 = v1[10];
  v10[4] = v1[9];
  v10[5] = v3;
  v11[0] = v1[11];
  *(v11 + 9) = *(v1 + 185);
  v4 = v1[6];
  v10[0] = v1[5];
  v10[1] = v4;
  v5 = v1[8];
  v10[2] = v1[7];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[9] = *(a1 + 64);
  v1[10] = v6;
  v1[11] = *(a1 + 96);
  *(v1 + 185) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[5] = *a1;
  v1[6] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[7] = result;
  v1[8] = v9;
  return result;
}

uint64_t sub_21406F334@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  v4 = (v2 + *(a1(0) + 40));
  v5 = v4[3];
  v6 = v4[5];
  v19 = v4[4];
  v7 = v19;
  v20 = v6;
  v8 = v4[5];
  v21[0] = v4[6];
  *(v21 + 9) = *(v4 + 105);
  v9 = v4[3];
  v10 = v4[1];
  v17 = v4[2];
  v18 = v9;
  v11 = v4[1];
  v16[0] = *v4;
  v12 = v16[0];
  v16[1] = v11;
  a2[2] = v17;
  a2[3] = v5;
  *a2 = v12;
  a2[1] = v10;
  *(a2 + 105) = *(v4 + 105);
  v13 = v4[6];
  a2[5] = v8;
  a2[6] = v13;
  a2[4] = v7;
  return sub_213FB2E54(v16, &v15, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_21406F3F8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = (v2 + *(a2(0) + 40));
  v5 = v4[5];
  v12[4] = v4[4];
  v12[5] = v5;
  v13[0] = v4[6];
  *(v13 + 9) = *(v4 + 105);
  v6 = v4[3];
  v12[2] = v4[2];
  v12[3] = v6;
  v7 = v4[1];
  v12[0] = *v4;
  v12[1] = v7;
  sub_213FB2DF4(v12, &qword_27C904868, &qword_2146EDB58);
  v8 = *(a1 + 80);
  v4[4] = *(a1 + 64);
  v4[5] = v8;
  v4[6] = *(a1 + 96);
  *(v4 + 105) = *(a1 + 105);
  v9 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  v4[2] = result;
  v4[3] = v11;
  return result;
}

uint64_t sub_21406F57C()
{
  v1 = *(v0 + *(type metadata accessor for LinkPresentation.PodcastEpisodeMetadata(0) + 48));
}

uint64_t sub_21406F5B0(uint64_t a1)
{
  v3 = *(type metadata accessor for LinkPresentation.PodcastEpisodeMetadata(0) + 48);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21406F7A8(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 40));
}

uint64_t sub_21406F7FC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 40);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_21406F928@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[10];
  v14 = v1[9];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[11];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 185);
  v5 = *(v16 + 9);
  v6 = v1[6];
  v11[0] = v1[5];
  v11[1] = v6;
  v8 = v1[8];
  v12 = v1[7];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_21406FCE4(uint64_t a1)
{
  v3 = v1[8];
  v10[4] = v1[7];
  v10[5] = v3;
  v11[0] = v1[9];
  *(v11 + 9) = *(v1 + 153);
  v4 = v1[4];
  v10[0] = v1[3];
  v10[1] = v4;
  v5 = v1[6];
  v10[2] = v1[5];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[7] = *(a1 + 64);
  v1[8] = v6;
  v1[9] = *(a1 + 96);
  *(v1 + 153) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[5] = result;
  v1[6] = v9;
  return result;
}

uint64_t sub_2140700C8()
{
  v1 = (v0 + *(type metadata accessor for LinkPresentation.MovieMetadata(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_214070108(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LinkPresentation.MovieMetadata(0) + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2140702F0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214070320(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214070378@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LinkPresentation.EncodedToken(0) + 20);

  return sub_2140703DC(v3, a1);
}

uint64_t sub_2140703DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitSharingToken();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214070440(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LinkPresentation.EncodedToken(0) + 20);

  return sub_214070484(a1, v3);
}

uint64_t sub_214070484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitSharingToken();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_214070530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for LinkPresentation.EncodedToken(0) + 20);

  return sub_21404A900(a3, v5);
}

uint64_t sub_21407057C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2140705AC(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214070604()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_214070634(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_21407068C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_2140706BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_214070714@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[8];
  v14 = v1[7];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[9];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 153);
  v5 = *(v16 + 9);
  v6 = v1[4];
  v11[0] = v1[3];
  v11[1] = v6;
  v8 = v1[6];
  v12 = v1[5];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214070790(uint64_t a1)
{
  v3 = v1[8];
  v10[4] = v1[7];
  v10[5] = v3;
  v11[0] = v1[9];
  *(v11 + 9) = *(v1 + 153);
  v4 = v1[4];
  v10[0] = v1[3];
  v10[1] = v4;
  v5 = v1[6];
  v10[2] = v1[5];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[7] = *(a1 + 64);
  v1[8] = v6;
  v1[9] = *(a1 + 96);
  *(v1 + 153) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[5] = result;
  v1[6] = v9;
  return result;
}

uint64_t sub_214070840@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[16];
  v14 = v1[15];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[17];
  v4 = v16[0];
  v5 = v1[12];
  v11[0] = v1[11];
  v11[1] = v5;
  v7 = v1[14];
  v12 = v1[13];
  v6 = v12;
  v13 = v7;
  *(v16 + 9) = *(v1 + 281);
  v8 = *(v16 + 9);
  *a1 = v11[0];
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v8;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_2140708C0(uint64_t a1)
{
  v3 = v1[16];
  v10[4] = v1[15];
  v10[5] = v3;
  v11[0] = v1[17];
  v4 = v1[12];
  v10[0] = v1[11];
  v10[1] = v4;
  v5 = v1[14];
  v10[2] = v1[13];
  v10[3] = v5;
  *(v11 + 9) = *(v1 + 281);
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[15] = *(a1 + 64);
  v1[16] = v6;
  v1[17] = *(a1 + 96);
  *(v1 + 281) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[11] = *a1;
  v1[12] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[13] = result;
  v1[14] = v9;
  return result;
}

uint64_t sub_214070984(uint64_t a1)
{
  v3 = *(v1 + 304);

  *(v1 + 304) = a1;
  return result;
}

uint64_t sub_2140709D0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214070A00(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214070A58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_214070A88(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_214070AE0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_214070B10(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_214070B68@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[8];
  v14 = v1[7];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[9];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 153);
  v5 = *(v16 + 9);
  v6 = v1[4];
  v11[0] = v1[3];
  v11[1] = v6;
  v8 = v1[6];
  v12 = v1[5];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214070BE4(uint64_t a1)
{
  v3 = v1[8];
  v10[4] = v1[7];
  v10[5] = v3;
  v11[0] = v1[9];
  *(v11 + 9) = *(v1 + 153);
  v4 = v1[4];
  v10[0] = v1[3];
  v10[1] = v4;
  v5 = v1[6];
  v10[2] = v1[5];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[7] = *(a1 + 64);
  v1[8] = v6;
  v1[9] = *(a1 + 96);
  *(v1 + 153) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[5] = result;
  v1[6] = v9;
  return result;
}

uint64_t sub_214070C94()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214070CC4(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214070D1C@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[6];
  v14 = v1[5];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[7];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 121);
  v5 = *(v16 + 9);
  v6 = v1[2];
  v11[0] = v1[1];
  v11[1] = v6;
  v8 = v1[4];
  v12 = v1[3];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214070D98(uint64_t a1)
{
  v3 = v1[6];
  v10[4] = v1[5];
  v10[5] = v3;
  v11[0] = v1[7];
  *(v11 + 9) = *(v1 + 121);
  v4 = v1[2];
  v10[0] = v1[1];
  v10[1] = v4;
  v5 = v1[4];
  v10[2] = v1[3];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v6;
  v1[7] = *(a1 + 96);
  *(v1 + 121) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[3] = result;
  v1[4] = v9;
  return result;
}

uint64_t sub_214070E48@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[14];
  v14 = v1[13];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[15];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 249);
  v5 = *(v16 + 9);
  v6 = v1[10];
  v11[0] = v1[9];
  v11[1] = v6;
  v8 = v1[12];
  v12 = v1[11];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214070EC4(uint64_t a1)
{
  v3 = v1[14];
  v10[4] = v1[13];
  v10[5] = v3;
  v11[0] = v1[15];
  *(v11 + 9) = *(v1 + 249);
  v4 = v1[10];
  v10[0] = v1[9];
  v10[1] = v4;
  v5 = v1[12];
  v10[2] = v1[11];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[13] = *(a1 + 64);
  v1[14] = v6;
  v1[15] = *(a1 + 96);
  *(v1 + 249) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[9] = *a1;
  v1[10] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[11] = result;
  v1[12] = v9;
  return result;
}

uint64_t sub_214071004()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214071034(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_21407108C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2140710BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_214071114()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_214071144(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_21407119C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_2140711CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_214071224()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_214071254(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_2140712AC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_2140712DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_214071334()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t sub_214071364(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t sub_2140713BC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t sub_2140713EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t sub_214071444()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214071474(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2140714CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2140714FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_214071554@<X0>(_OWORD *a1@<X8>)
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
  return sub_213FB2E54(v11, &v10, &qword_27C904890, &qword_2146EDB90);
}

__n128 sub_2140715C4(uint64_t a1)
{
  v3 = v1[7];
  v12[4] = v1[6];
  v12[5] = v3;
  v4 = v1[9];
  v12[6] = v1[8];
  v12[7] = v4;
  v5 = v1[3];
  v12[0] = v1[2];
  v12[1] = v5;
  v6 = v1[5];
  v12[2] = v1[4];
  v12[3] = v6;
  sub_213FB2DF4(v12, &qword_27C904890, &qword_2146EDB90);
  v7 = *(a1 + 80);
  v1[6] = *(a1 + 64);
  v1[7] = v7;
  v8 = *(a1 + 112);
  v1[8] = *(a1 + 96);
  v1[9] = v8;
  v9 = *(a1 + 16);
  v1[2] = *a1;
  v1[3] = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  v1[4] = result;
  v1[5] = v11;
  return result;
}

uint64_t sub_214071664()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t sub_214071694(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 168);

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t sub_2140716EC@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[16];
  v14 = v1[15];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[17];
  v4 = v16[0];
  v5 = v1[12];
  v11[0] = v1[11];
  v11[1] = v5;
  v7 = v1[14];
  v12 = v1[13];
  v6 = v12;
  v13 = v7;
  *(v16 + 9) = *(v1 + 281);
  v8 = *(v16 + 9);
  *a1 = v11[0];
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v8;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_21407176C(uint64_t a1)
{
  v3 = v1[16];
  v10[4] = v1[15];
  v10[5] = v3;
  v11[0] = v1[17];
  v4 = v1[12];
  v10[0] = v1[11];
  v10[1] = v4;
  v5 = v1[14];
  v10[2] = v1[13];
  v10[3] = v5;
  *(v11 + 9) = *(v1 + 281);
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[15] = *(a1 + 64);
  v1[16] = v6;
  v1[17] = *(a1 + 96);
  *(v1 + 281) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[11] = *a1;
  v1[12] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[13] = result;
  v1[14] = v9;
  return result;
}

uint64_t sub_214071828()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  return v1;
}

uint64_t sub_214071858(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 312);

  *(v2 + 304) = a1;
  *(v2 + 312) = a2;
  return result;
}

uint64_t sub_2140718B0()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return v1;
}

uint64_t sub_2140718E0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 328);

  *(v2 + 320) = a1;
  *(v2 + 328) = a2;
  return result;
}

uint64_t sub_214071938()
{
  result = *(v0 + 336);
  v2 = *(v0 + 344);
  return result;
}

uint64_t sub_214071944(uint64_t result, char a2)
{
  *(v2 + 336) = result;
  *(v2 + 344) = a2 & 1;
  return result;
}

uint64_t sub_214071974()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);

  return v1;
}

uint64_t sub_2140719A4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 360);

  *(v2 + 352) = a1;
  *(v2 + 360) = a2;
  return result;
}

uint64_t sub_2140719FC@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[28];
  v14 = v1[27];
  v2 = v14;
  v15 = v3;
  v5 = v1[30];
  v16 = v1[29];
  v4 = v16;
  v17 = v5;
  v6 = v1[24];
  v11[0] = v1[23];
  v11[1] = v6;
  v8 = v1[26];
  v12 = v1[25];
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
  return sub_213FB2E54(v11, &v10, &qword_27C904890, &qword_2146EDB90);
}

__n128 sub_214071A6C(uint64_t a1)
{
  v3 = v1[28];
  v12[4] = v1[27];
  v12[5] = v3;
  v4 = v1[30];
  v12[6] = v1[29];
  v12[7] = v4;
  v5 = v1[24];
  v12[0] = v1[23];
  v12[1] = v5;
  v6 = v1[26];
  v12[2] = v1[25];
  v12[3] = v6;
  sub_213FB2DF4(v12, &qword_27C904890, &qword_2146EDB90);
  v7 = *(a1 + 80);
  v1[27] = *(a1 + 64);
  v1[28] = v7;
  v8 = *(a1 + 112);
  v1[29] = *(a1 + 96);
  v1[30] = v8;
  v9 = *(a1 + 16);
  v1[23] = *a1;
  v1[24] = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  v1[25] = result;
  v1[26] = v11;
  return result;
}

uint64_t sub_214071B0C()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);

  return v1;
}

uint64_t sub_214071B3C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 504);

  *(v2 + 496) = a1;
  *(v2 + 504) = a2;
  return result;
}

uint64_t sub_214071B94()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 520);

  return v1;
}

uint64_t sub_214071BC8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 520);

  *(v2 + 512) = a1;
  *(v2 + 520) = a2;
  return result;
}

uint64_t sub_214071C24@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[38];
  v14 = v1[37];
  v2 = v14;
  v15 = v3;
  v5 = v1[40];
  v16 = v1[39];
  v4 = v16;
  v17 = v5;
  v6 = v1[34];
  v11[0] = v1[33];
  v11[1] = v6;
  v8 = v1[36];
  v12 = v1[35];
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
  return sub_213FB2E54(v11, &v10, &qword_27C904890, &qword_2146EDB90);
}

__n128 sub_214071C94(uint64_t a1)
{
  v3 = v1[38];
  v12[4] = v1[37];
  v12[5] = v3;
  v4 = v1[40];
  v12[6] = v1[39];
  v12[7] = v4;
  v5 = v1[34];
  v12[0] = v1[33];
  v12[1] = v5;
  v6 = v1[36];
  v12[2] = v1[35];
  v12[3] = v6;
  sub_213FB2DF4(v12, &qword_27C904890, &qword_2146EDB90);
  v7 = *(a1 + 80);
  v1[37] = *(a1 + 64);
  v1[38] = v7;
  v8 = *(a1 + 112);
  v1[39] = *(a1 + 96);
  v1[40] = v8;
  v9 = *(a1 + 16);
  v1[33] = *a1;
  v1[34] = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  v1[35] = result;
  v1[36] = v11;
  return result;
}

uint64_t sub_214071D34()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 664);

  return v1;
}

uint64_t sub_214071D68(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 664);

  *(v2 + 656) = a1;
  *(v2 + 664) = a2;
  return result;
}

uint64_t sub_214071DC4()
{
  result = *(v0 + 672);
  v2 = *(v0 + 680);
  return result;
}

uint64_t sub_214071DD0(uint64_t result, char a2)
{
  *(v2 + 672) = result;
  *(v2 + 680) = a2 & 1;
  return result;
}

uint64_t sub_214071E00@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[48];
  v14 = v1[47];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[49];
  v4 = v16[0];
  v5 = v1[44];
  v11[0] = v1[43];
  v11[1] = v5;
  v7 = v1[46];
  v12 = v1[45];
  v6 = v12;
  v13 = v7;
  *(v16 + 9) = *(v1 + 793);
  v8 = *(v16 + 9);
  *a1 = v11[0];
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v8;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214071E80(uint64_t a1)
{
  v3 = v1[48];
  v10[4] = v1[47];
  v10[5] = v3;
  v11[0] = v1[49];
  v4 = v1[44];
  v10[0] = v1[43];
  v10[1] = v4;
  v5 = v1[46];
  v10[2] = v1[45];
  v10[3] = v5;
  *(v11 + 9) = *(v1 + 793);
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[47] = *(a1 + 64);
  v1[48] = v6;
  v1[49] = *(a1 + 96);
  *(v1 + 793) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[43] = *a1;
  v1[44] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[45] = result;
  v1[46] = v9;
  return result;
}

uint64_t sub_214071F3C@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[56];
  v14 = v1[55];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[57];
  v4 = v16[0];
  v5 = v1[52];
  v11[0] = v1[51];
  v11[1] = v5;
  v7 = v1[54];
  v12 = v1[53];
  v6 = v12;
  v13 = v7;
  *(v16 + 9) = *(v1 + 921);
  v8 = *(v16 + 9);
  *a1 = v11[0];
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v8;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214071FBC(uint64_t a1)
{
  v3 = v1[56];
  v10[4] = v1[55];
  v10[5] = v3;
  v11[0] = v1[57];
  v4 = v1[52];
  v10[0] = v1[51];
  v10[1] = v4;
  v5 = v1[54];
  v10[2] = v1[53];
  v10[3] = v5;
  *(v11 + 9) = *(v1 + 921);
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[55] = *(a1 + 64);
  v1[56] = v6;
  v1[57] = *(a1 + 96);
  *(v1 + 921) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[51] = *a1;
  v1[52] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[53] = result;
  v1[54] = v9;
  return result;
}

uint64_t sub_214072078@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[64];
  v14 = v1[63];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[65];
  v4 = v16[0];
  v5 = v1[60];
  v11[0] = v1[59];
  v11[1] = v5;
  v7 = v1[62];
  v12 = v1[61];
  v6 = v12;
  v13 = v7;
  *(v16 + 9) = *(v1 + 1049);
  v8 = *(v16 + 9);
  *a1 = v11[0];
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v8;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_2140720F8(uint64_t a1)
{
  v3 = v1[64];
  v10[4] = v1[63];
  v10[5] = v3;
  v11[0] = v1[65];
  v4 = v1[60];
  v10[0] = v1[59];
  v10[1] = v4;
  v5 = v1[62];
  v10[2] = v1[61];
  v10[3] = v5;
  *(v11 + 9) = *(v1 + 1049);
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[63] = *(a1 + 64);
  v1[64] = v6;
  v1[65] = *(a1 + 96);
  *(v1 + 1049) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[59] = *a1;
  v1[60] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[61] = result;
  v1[62] = v9;
  return result;
}

uint64_t sub_2140721E4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214072214(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_21407229C@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 104);
  v14 = *(v1 + 88);
  v2 = v14;
  v15 = v3;
  v16[0] = *(v1 + 120);
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 129);
  v5 = *(v16 + 9);
  v6 = *(v1 + 40);
  v11[0] = *(v1 + 24);
  v11[1] = v6;
  v8 = *(v1 + 72);
  v12 = *(v1 + 56);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214072324(uint64_t a1)
{
  v3 = *(v1 + 104);
  v10[4] = *(v1 + 88);
  v10[5] = v3;
  v11[0] = *(v1 + 120);
  *(v11 + 9) = *(v1 + 129);
  v4 = *(v1 + 40);
  v10[0] = *(v1 + 24);
  v10[1] = v4;
  v5 = *(v1 + 72);
  v10[2] = *(v1 + 56);
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  *(v1 + 88) = *(a1 + 64);
  *(v1 + 104) = v6;
  *(v1 + 120) = *(a1 + 96);
  *(v1 + 129) = *(a1 + 105);
  v7 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 56) = result;
  *(v1 + 72) = v9;
  return result;
}

uint64_t sub_2140723EC@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 232);
  v14 = *(v1 + 216);
  v2 = v14;
  v15 = v3;
  v16[0] = *(v1 + 248);
  v4 = v16[0];
  v5 = *(v1 + 168);
  v11[0] = *(v1 + 152);
  v11[1] = v5;
  v7 = *(v1 + 200);
  v12 = *(v1 + 184);
  v6 = v12;
  v13 = v7;
  *(v16 + 9) = *(v1 + 257);
  v8 = *(v16 + 9);
  *a1 = v11[0];
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v8;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214072478(uint64_t a1)
{
  v3 = *(v1 + 232);
  v10[4] = *(v1 + 216);
  v10[5] = v3;
  v11[0] = *(v1 + 248);
  v4 = *(v1 + 168);
  v10[0] = *(v1 + 152);
  v10[1] = v4;
  v5 = *(v1 + 200);
  v10[2] = *(v1 + 184);
  v10[3] = v5;
  *(v11 + 9) = *(v1 + 257);
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  *(v1 + 216) = *(a1 + 64);
  *(v1 + 232) = v6;
  *(v1 + 248) = *(a1 + 96);
  *(v1 + 257) = *(a1 + 105);
  v7 = *(a1 + 16);
  *(v1 + 152) = *a1;
  *(v1 + 168) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 184) = result;
  *(v1 + 200) = v9;
  return result;
}

uint64_t sub_21407254C@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 360);
  v14 = *(v1 + 344);
  v2 = v14;
  v15 = v3;
  v16[0] = *(v1 + 376);
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 385);
  v5 = *(v16 + 9);
  v6 = *(v1 + 296);
  v11[0] = *(v1 + 280);
  v11[1] = v6;
  v8 = *(v1 + 328);
  v12 = *(v1 + 312);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_2140725CC(uint64_t a1)
{
  v3 = (v1 + 280);
  v4 = v3[5];
  v11[4] = v3[4];
  v11[5] = v4;
  v12[0] = v3[6];
  *(v12 + 9) = *(v3 + 105);
  v5 = v3[1];
  v11[0] = *v3;
  v11[1] = v5;
  v6 = v3[3];
  v11[2] = v3[2];
  v11[3] = v6;
  sub_213FB2DF4(v11, &qword_27C904868, &qword_2146EDB58);
  v7 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v7;
  v3[6] = *(a1 + 96);
  *(v3 + 105) = *(a1 + 105);
  v8 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  v3[2] = result;
  v3[3] = v10;
  return result;
}

uint64_t sub_214072688(uint64_t a1)
{
  v3 = *(v1 + 408);

  *(v1 + 408) = a1;
  return result;
}

uint64_t sub_2140726D4()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);

  return v1;
}

uint64_t sub_214072704(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 424);

  *(v2 + 416) = a1;
  *(v2 + 424) = a2;
  return result;
}

uint64_t sub_21407275C@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[32];
  v14 = v1[31];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[33];
  v4 = v16[0];
  v5 = v1[28];
  v11[0] = v1[27];
  v11[1] = v5;
  v7 = v1[30];
  v12 = v1[29];
  v6 = v12;
  v13 = v7;
  *(v16 + 9) = *(v1 + 537);
  v8 = *(v16 + 9);
  *a1 = v11[0];
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v8;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_2140727DC(uint64_t a1)
{
  v3 = v1[32];
  v10[4] = v1[31];
  v10[5] = v3;
  v11[0] = v1[33];
  v4 = v1[28];
  v10[0] = v1[27];
  v10[1] = v4;
  v5 = v1[30];
  v10[2] = v1[29];
  v10[3] = v5;
  *(v11 + 9) = *(v1 + 537);
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[31] = *(a1 + 64);
  v1[32] = v6;
  v1[33] = *(a1 + 96);
  *(v1 + 537) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[27] = *a1;
  v1[28] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[29] = result;
  v1[30] = v9;
  return result;
}

uint64_t sub_214072898()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2140728C8(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214072920@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[6];
  v14 = v1[5];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[7];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 121);
  v5 = *(v16 + 9);
  v6 = v1[2];
  v11[0] = v1[1];
  v11[1] = v6;
  v8 = v1[4];
  v12 = v1[3];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_21407299C(uint64_t a1)
{
  v3 = v1[6];
  v10[4] = v1[5];
  v10[5] = v3;
  v11[0] = v1[7];
  *(v11 + 9) = *(v1 + 121);
  v4 = v1[2];
  v10[0] = v1[1];
  v10[1] = v4;
  v5 = v1[4];
  v10[2] = v1[3];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v6;
  v1[7] = *(a1 + 96);
  *(v1 + 121) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[3] = result;
  v1[4] = v9;
  return result;
}

__n128 sub_214072AF0(uint64_t a1)
{
  v3 = *(v1 + 120);
  v10[4] = *(v1 + 104);
  v10[5] = v3;
  v11[0] = *(v1 + 136);
  *(v11 + 9) = *(v1 + 145);
  v4 = *(v1 + 56);
  v10[0] = *(v1 + 40);
  v10[1] = v4;
  v5 = *(v1 + 88);
  v10[2] = *(v1 + 72);
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  *(v1 + 104) = *(a1 + 64);
  *(v1 + 120) = v6;
  *(v1 + 136) = *(a1 + 96);
  *(v1 + 145) = *(a1 + 105);
  v7 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 72) = result;
  *(v1 + 88) = v9;
  return result;
}

uint64_t sub_214072BB8@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 248);
  v14 = *(v1 + 232);
  v2 = v14;
  v15 = v3;
  v4 = *(v1 + 184);
  v11[0] = *(v1 + 168);
  v11[1] = v4;
  v6 = *(v1 + 216);
  v12 = *(v1 + 200);
  v5 = v12;
  v13 = v6;
  v16[0] = *(v1 + 264);
  v7 = v16[0];
  *(v16 + 9) = *(v1 + 273);
  v8 = *(v16 + 9);
  *a1 = v11[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v7;
  *(a1 + 105) = v8;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214072C44(uint64_t a1)
{
  v3 = *(v1 + 248);
  v10[4] = *(v1 + 232);
  v10[5] = v3;
  v4 = *(v1 + 184);
  v10[0] = *(v1 + 168);
  v10[1] = v4;
  v5 = *(v1 + 216);
  v10[2] = *(v1 + 200);
  v10[3] = v5;
  v11[0] = *(v1 + 264);
  *(v11 + 9) = *(v1 + 273);
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  *(v1 + 232) = *(a1 + 64);
  *(v1 + 248) = v6;
  *(v1 + 264) = *(a1 + 96);
  *(v1 + 273) = *(a1 + 105);
  v7 = *(a1 + 16);
  *(v1 + 168) = *a1;
  *(v1 + 184) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 200) = result;
  *(v1 + 216) = v9;
  return result;
}

uint64_t sub_214072DF0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214072E20(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214072E78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_214072EA8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_214072F00()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_214072F30(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_214072F88()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_214072FB8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_214073010@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[9];
  v14 = v1[8];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[10];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 169);
  v5 = *(v16 + 9);
  v6 = v1[5];
  v11[0] = v1[4];
  v11[1] = v6;
  v8 = v1[7];
  v12 = v1[6];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_21407308C(uint64_t a1)
{
  v3 = v1[9];
  v10[4] = v1[8];
  v10[5] = v3;
  v11[0] = v1[10];
  *(v11 + 9) = *(v1 + 169);
  v4 = v1[5];
  v10[0] = v1[4];
  v10[1] = v4;
  v5 = v1[7];
  v10[2] = v1[6];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[8] = *(a1 + 64);
  v1[9] = v6;
  v1[10] = *(a1 + 96);
  *(v1 + 169) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[4] = *a1;
  v1[5] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[6] = result;
  v1[7] = v9;
  return result;
}

uint64_t sub_21407313C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_21407316C(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2140731C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2140731F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_21407324C@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[7];
  v14 = v1[6];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[8];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 137);
  v5 = *(v16 + 9);
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
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_2140732C8(uint64_t a1)
{
  v3 = v1[7];
  v10[4] = v1[6];
  v10[5] = v3;
  v11[0] = v1[8];
  *(v11 + 9) = *(v1 + 137);
  v4 = v1[3];
  v10[0] = v1[2];
  v10[1] = v4;
  v5 = v1[5];
  v10[2] = v1[4];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[6] = *(a1 + 64);
  v1[7] = v6;
  v1[8] = *(a1 + 96);
  *(v1 + 137) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[2] = *a1;
  v1[3] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[4] = result;
  v1[5] = v9;
  return result;
}

uint64_t sub_214073418@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 120);
  v14 = *(v1 + 104);
  v2 = v14;
  v15 = v3;
  v16[0] = *(v1 + 136);
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 145);
  v5 = *(v16 + 9);
  v6 = *(v1 + 56);
  v11[0] = *(v1 + 40);
  v11[1] = v6;
  v8 = *(v1 + 88);
  v12 = *(v1 + 72);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

uint64_t sub_214073938()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214073968(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2140739C0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2140739F0(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214073A48@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[6];
  v14 = v1[5];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[7];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 121);
  v5 = *(v16 + 9);
  v6 = v1[2];
  v11[0] = v1[1];
  v11[1] = v6;
  v8 = v1[4];
  v12 = v1[3];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214073AC4(uint64_t a1)
{
  v3 = v1[6];
  v10[4] = v1[5];
  v10[5] = v3;
  v11[0] = v1[7];
  *(v11 + 9) = *(v1 + 121);
  v4 = v1[2];
  v10[0] = v1[1];
  v10[1] = v4;
  v5 = v1[4];
  v10[2] = v1[3];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v6;
  v1[7] = *(a1 + 96);
  *(v1 + 121) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[3] = result;
  v1[4] = v9;
  return result;
}

uint64_t sub_214073B74()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t sub_214073BA4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152);

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t sub_214073BFC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t sub_214073C2C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 168);

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t sub_214073CD4()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_214073D54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214073DC8(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214073E74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v11 = *(v3 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 16), *(v3 + 24));

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214073FB8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214074090;
  }

  return result;
}

void sub_214074090(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *v3;
    v11 = *(v3 + 8);
    v16 = *(v3 + 32);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 16) = v5;
      *(v12 + 24) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *v3;
  v6 = *(v3 + 8);
  v16 = *(v3 + 32);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_214074260@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2140742B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21407430C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

__n128 sub_214074394(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

void (*sub_2140743FC(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21407449C;
}

void sub_21407449C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 8);
  v9 = *(v3 + 16);
  v11 = *(v3 + 24);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 8);

    sub_213FDC6D0(v9, v11);
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
  }

  free(v2);
}

uint64_t sub_21407457C()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

uint64_t sub_2140745FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 64);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 56);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214074670(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214074720(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v11 = *(v3 + 72);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 56), *(v3 + 64));

    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214074864(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21407493C;
  }

  return result;
}

void sub_21407493C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 40);
    v11 = *(v3 + 48);
    v16 = *(v3 + 72);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 56) = v5;
      *(v12 + 64) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *(v3 + 40);
  v6 = *(v3 + 48);
  v16 = *(v3 + 72);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 56) = v5;
  *(v8 + 64) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_214074B0C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214074B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  *a2 = *(a1 + 40);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214074BB8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 72) = v7;
  return result;
}

__n128 sub_214074C40(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

void (*sub_214074CA8(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214074D48;
}

void sub_214074D48(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 48);
  v9 = *(v3 + 56);
  v11 = *(v3 + 64);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    *(v3 + 56) = v7;
    *(v3 + 64) = v6;
    *(v3 + 72) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 48);

    sub_213FDC6D0(v9, v11);
    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    *(v3 + 56) = v7;
    *(v3 + 64) = v6;
    *(v3 + 72) = v8;
  }

  free(v2);
}

uint64_t sub_214074E28@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[10];
  v14 = v1[9];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[11];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 185);
  v5 = *(v16 + 9);
  v6 = v1[6];
  v11[0] = v1[5];
  v11[1] = v6;
  v8 = v1[8];
  v12 = v1[7];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214074EA4(uint64_t a1)
{
  v3 = v1[10];
  v10[4] = v1[9];
  v10[5] = v3;
  v11[0] = v1[11];
  *(v11 + 9) = *(v1 + 185);
  v4 = v1[6];
  v10[0] = v1[5];
  v10[1] = v4;
  v5 = v1[8];
  v10[2] = v1[7];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[9] = *(a1 + 64);
  v1[10] = v6;
  v1[11] = *(a1 + 96);
  *(v1 + 185) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[5] = *a1;
  v1[6] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[7] = result;
  v1[8] = v9;
  return result;
}

uint64_t sub_214074F54@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[18];
  v14 = v1[17];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[19];
  v4 = v16[0];
  v5 = v1[14];
  v11[0] = v1[13];
  v11[1] = v5;
  v7 = v1[16];
  v12 = v1[15];
  v6 = v12;
  v13 = v7;
  *(v16 + 9) = *(v1 + 313);
  v8 = *(v16 + 9);
  *a1 = v11[0];
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v8;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214074FD4(uint64_t a1)
{
  v3 = v1[18];
  v10[4] = v1[17];
  v10[5] = v3;
  v11[0] = v1[19];
  v4 = v1[14];
  v10[0] = v1[13];
  v10[1] = v4;
  v5 = v1[16];
  v10[2] = v1[15];
  v10[3] = v5;
  *(v11 + 9) = *(v1 + 313);
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[17] = *(a1 + 64);
  v1[18] = v6;
  v1[19] = *(a1 + 96);
  *(v1 + 313) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[13] = *a1;
  v1[14] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[15] = result;
  v1[16] = v9;
  return result;
}

unint64_t sub_214075108@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = 128;
  *(v9 + 24) = 0;
  *(v8 + 16) = a1;
  *(v8 + 24) = v9;
  *(v7 + 32) = v8;
  v10 = sub_2142E0070(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = a2;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_214042A28(inited, a3);
}

uint64_t sub_21407524C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_21407527C(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2140752D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_214075304(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2140753BC@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[8];
  v14 = v1[7];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[9];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 153);
  v5 = *(v16 + 9);
  v6 = v1[4];
  v11[0] = v1[3];
  v11[1] = v6;
  v8 = v1[6];
  v12 = v1[5];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

uint64_t sub_214075580(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904898, type metadata accessor for LinkPresentation.MessagesPayload);
  result = sub_214075624(&qword_27C9048A0, type metadata accessor for LinkPresentation.MessagesPayload);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075624(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21407566C(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9048A8, type metadata accessor for LinkPresentation.LinkMetadata);
  result = sub_214075624(&qword_27C9048B0, type metadata accessor for LinkPresentation.LinkMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2140756F0(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9048B8, type metadata accessor for LinkPresentation.ARAssetMetadata);
  result = sub_214075624(&qword_27C9048C0, type metadata accessor for LinkPresentation.ARAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075794(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9048C8, type metadata accessor for LinkPresentation.IconMetadata);
  result = sub_214075624(&qword_27C9048D0, type metadata accessor for LinkPresentation.IconMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075838(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9048D8, type metadata accessor for LinkPresentation.ImageMetadata);
  result = sub_214075624(&qword_27C9048E0, type metadata accessor for LinkPresentation.ImageMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2140758DC(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9048E8, type metadata accessor for LinkPresentation.ArtworkMetadata);
  result = sub_214075624(&qword_27C9048F0, type metadata accessor for LinkPresentation.ArtworkMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075980(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9048F8, type metadata accessor for LinkPresentation.VideoMetadata);
  result = sub_214075624(&qword_27C904900, type metadata accessor for LinkPresentation.VideoMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075A24(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904908, type metadata accessor for LinkPresentation.AudioMetadata);
  result = sub_214075624(&qword_27C904910, type metadata accessor for LinkPresentation.AudioMetadata);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214075AF4()
{
  result = qword_27C904918;
  if (!qword_27C904918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904918);
  }

  return result;
}

unint64_t sub_214075B48()
{
  result = qword_27C904920;
  if (!qword_27C904920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904920);
  }

  return result;
}

uint64_t sub_214075B9C(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904928, type metadata accessor for LinkPresentation.SpecializationMetadata);
  result = sub_214075624(&qword_27C904930, type metadata accessor for LinkPresentation.SpecializationMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075C40(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904938, type metadata accessor for LinkPresentation.SongMetadata);
  result = sub_214075624(&qword_27C904940, type metadata accessor for LinkPresentation.SongMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075CC4(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904948, type metadata accessor for LinkPresentation.AlbumMetadata);
  result = sub_214075624(&qword_27C904950, type metadata accessor for LinkPresentation.AlbumMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075D48(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904958, type metadata accessor for LinkPresentation.MusicVideoMetadata);
  result = sub_214075624(&qword_27C904960, type metadata accessor for LinkPresentation.MusicVideoMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075DCC(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904968, type metadata accessor for LinkPresentation.ArtistMetadata);
  result = sub_214075624(&qword_27C904970, type metadata accessor for LinkPresentation.ArtistMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075E50(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904978, type metadata accessor for LinkPresentation.PlaylistMetadata);
  result = sub_214075624(&qword_27C904980, type metadata accessor for LinkPresentation.PlaylistMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075ED4(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904988, type metadata accessor for LinkPresentation.RadioMetadata);
  result = sub_214075624(&qword_27C904990, type metadata accessor for LinkPresentation.RadioMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075F58(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904998, type metadata accessor for LinkPresentation.SoftwareMetadata);
  result = sub_214075624(&qword_27C9049A0, type metadata accessor for LinkPresentation.SoftwareMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214075FDC(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9049A8, type metadata accessor for LinkPresentation.BookMetadata);
  result = sub_214075624(&qword_27C9049B0, type metadata accessor for LinkPresentation.BookMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214076060(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9049B8, type metadata accessor for LinkPresentation.AudioBookMetadata);
  result = sub_214075624(&qword_27C9049C0, type metadata accessor for LinkPresentation.AudioBookMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2140760E4(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9049C8, type metadata accessor for LinkPresentation.PodcastEpisodeMetadata);
  result = sub_214075624(&qword_27C9049D0, type metadata accessor for LinkPresentation.PodcastEpisodeMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214076168(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9049D8, type metadata accessor for LinkPresentation.PodcastMetadata);
  result = sub_214075624(&qword_27C9049E0, type metadata accessor for LinkPresentation.PodcastMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2140761EC(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9049E8, type metadata accessor for LinkPresentation.TVEpisodeMetadata);
  result = sub_214075624(&qword_27C9049F0, type metadata accessor for LinkPresentation.TVEpisodeMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214076270(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C9049F8, type metadata accessor for LinkPresentation.TVSeasonMetadata);
  result = sub_214075624(&qword_27C904A00, type metadata accessor for LinkPresentation.TVSeasonMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2140762F4(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904A08, type metadata accessor for LinkPresentation.TVShowMetadata);
  result = sub_214075624(&qword_27C904A10, type metadata accessor for LinkPresentation.TVShowMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214076378(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904A18, type metadata accessor for LinkPresentation.MovieMetadata);
  result = sub_214075624(&qword_27C904A20, type metadata accessor for LinkPresentation.MovieMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2140763FC(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904A28, type metadata accessor for LinkPresentation.MovieBundleMetadata);
  result = sub_214075624(&qword_27C904A30, type metadata accessor for LinkPresentation.MovieBundleMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214076480(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904A38, type metadata accessor for LinkPresentation.EncodedToken);
  result = sub_214075624(&qword_27C904A40, type metadata accessor for LinkPresentation.EncodedToken);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214076530()
{
  result = qword_27C904A48;
  if (!qword_27C904A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904A48);
  }

  return result;
}

unint64_t sub_214076584()
{
  result = qword_27C904A50;
  if (!qword_27C904A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904A50);
  }

  return result;
}

unint64_t sub_214076604()
{
  result = qword_27C904A58;
  if (!qword_27C904A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904A58);
  }

  return result;
}

unint64_t sub_214076658()
{
  result = qword_27C904A60;
  if (!qword_27C904A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904A60);
  }

  return result;
}

unint64_t sub_2140766D8()
{
  result = qword_27C904A68;
  if (!qword_27C904A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904A68);
  }

  return result;
}

unint64_t sub_21407672C()
{
  result = qword_27C904A70;
  if (!qword_27C904A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904A70);
  }

  return result;
}

unint64_t sub_2140767AC()
{
  result = qword_27C904A78;
  if (!qword_27C904A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904A78);
  }

  return result;
}

unint64_t sub_214076800()
{
  result = qword_27C904A80;
  if (!qword_27C904A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904A80);
  }

  return result;
}

unint64_t sub_214076880()
{
  result = qword_27C904A88;
  if (!qword_27C904A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904A88);
  }

  return result;
}

unint64_t sub_2140768D4()
{
  result = qword_27C904A90;
  if (!qword_27C904A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904A90);
  }

  return result;
}

unint64_t sub_214076954()
{
  result = qword_27C904A98;
  if (!qword_27C904A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904A98);
  }

  return result;
}

unint64_t sub_2140769A8()
{
  result = qword_27C904AA0;
  if (!qword_27C904AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904AA0);
  }

  return result;
}

unint64_t sub_214076A28()
{
  result = qword_27C904AA8;
  if (!qword_27C904AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904AA8);
  }

  return result;
}

unint64_t sub_214076A7C()
{
  result = qword_27C904AB0;
  if (!qword_27C904AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904AB0);
  }

  return result;
}

uint64_t sub_214076AD0(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904AB8, type metadata accessor for LinkPresentation.FileMetadata);
  result = sub_214075624(&qword_27C904AC0, type metadata accessor for LinkPresentation.FileMetadata);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214076B80()
{
  result = qword_27C904AC8;
  if (!qword_27C904AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904AC8);
  }

  return result;
}

unint64_t sub_214076BD4()
{
  result = qword_27C904AD0;
  if (!qword_27C904AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904AD0);
  }

  return result;
}

unint64_t sub_214076C54()
{
  result = qword_27C904AD8;
  if (!qword_27C904AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904AD8);
  }

  return result;
}

unint64_t sub_214076CA8()
{
  result = qword_27C904AE0;
  if (!qword_27C904AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904AE0);
  }

  return result;
}

unint64_t sub_214076D28()
{
  result = qword_27C904AE8;
  if (!qword_27C904AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904AE8);
  }

  return result;
}

unint64_t sub_214076D7C()
{
  result = qword_27C904AF0;
  if (!qword_27C904AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904AF0);
  }

  return result;
}

uint64_t sub_214076DD0(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904AF8, type metadata accessor for LinkPresentation.PhotosMomentMetadata);
  result = sub_214075624(&qword_27C904B00, type metadata accessor for LinkPresentation.PhotosMomentMetadata);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214076E80()
{
  result = qword_27C904B08;
  if (!qword_27C904B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904B08);
  }

  return result;
}

unint64_t sub_214076ED4()
{
  result = qword_27C904B10;
  if (!qword_27C904B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904B10);
  }

  return result;
}

unint64_t sub_214076F54()
{
  result = qword_27C904B18;
  if (!qword_27C904B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904B18);
  }

  return result;
}

unint64_t sub_214076FA8()
{
  result = qword_27C904B20;
  if (!qword_27C904B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904B20);
  }

  return result;
}

unint64_t sub_214077028()
{
  result = qword_27C904B28;
  if (!qword_27C904B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904B28);
  }

  return result;
}

unint64_t sub_21407707C()
{
  result = qword_27C904B30;
  if (!qword_27C904B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904B30);
  }

  return result;
}

uint64_t sub_2140770D0(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904B38, type metadata accessor for LinkPresentation.WalletPassMetadata);
  result = sub_214075624(&qword_27C904B40, type metadata accessor for LinkPresentation.WalletPassMetadata);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214077180()
{
  result = qword_27C904B48;
  if (!qword_27C904B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904B48);
  }

  return result;
}

unint64_t sub_2140771D4()
{
  result = qword_27C904B50;
  if (!qword_27C904B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904B50);
  }

  return result;
}

unint64_t sub_214077254()
{
  result = qword_27C904B58;
  if (!qword_27C904B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904B58);
  }

  return result;
}

unint64_t sub_2140772A8()
{
  result = qword_27C904B60;
  if (!qword_27C904B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904B60);
  }

  return result;
}

unint64_t sub_214077328()
{
  result = qword_27C904B68;
  if (!qword_27C904B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904B68);
  }

  return result;
}

unint64_t sub_21407737C()
{
  result = qword_27C904B70;
  if (!qword_27C904B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904B70);
  }

  return result;
}

unint64_t sub_2140773FC()
{
  result = qword_27C904B78;
  if (!qword_27C904B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904B78);
  }

  return result;
}

unint64_t sub_214077450()
{
  result = qword_27C904B80;
  if (!qword_27C904B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904B80);
  }

  return result;
}

unint64_t sub_2140774D0()
{
  result = qword_27C904B88;
  if (!qword_27C904B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904B88);
  }

  return result;
}

unint64_t sub_214077524()
{
  result = qword_27C904B90;
  if (!qword_27C904B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904B90);
  }

  return result;
}

unint64_t sub_2140775A4()
{
  result = qword_27C904B98;
  if (!qword_27C904B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904B98);
  }

  return result;
}

unint64_t sub_2140775F8()
{
  result = qword_27C904BA0;
  if (!qword_27C904BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904BA0);
  }

  return result;
}

uint64_t sub_21407764C(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904BA8, type metadata accessor for LinkPresentation.SharedObjectMetadata);
  result = sub_214075624(&qword_27C904BB0, type metadata accessor for LinkPresentation.SharedObjectMetadata);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2140776FC()
{
  result = qword_27C904BB8;
  if (!qword_27C904BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904BB8);
  }

  return result;
}

unint64_t sub_214077750()
{
  result = qword_27C904BC0;
  if (!qword_27C904BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904BC0);
  }

  return result;
}

unint64_t sub_2140777D0()
{
  result = qword_27C904BC8;
  if (!qword_27C904BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904BC8);
  }

  return result;
}

unint64_t sub_214077824()
{
  result = qword_27C904BD0;
  if (!qword_27C904BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904BD0);
  }

  return result;
}

unint64_t sub_2140778A4()
{
  result = qword_27C904BD8;
  if (!qword_27C904BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904BD8);
  }

  return result;
}

unint64_t sub_2140778F8()
{
  result = qword_27C904BE0;
  if (!qword_27C904BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904BE0);
  }

  return result;
}

unint64_t sub_214077978()
{
  result = qword_27C904BE8;
  if (!qword_27C904BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904BE8);
  }

  return result;
}

unint64_t sub_2140779CC()
{
  result = qword_27C904BF0;
  if (!qword_27C904BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904BF0);
  }

  return result;
}

unint64_t sub_214077A4C()
{
  result = qword_27C904BF8;
  if (!qword_27C904BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904BF8);
  }

  return result;
}

unint64_t sub_214077AA0()
{
  result = qword_27C904C00;
  if (!qword_27C904C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904C00);
  }

  return result;
}

uint64_t sub_214077B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214077B5C()
{
  result = qword_27C904C08;
  if (!qword_27C904C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904C08);
  }

  return result;
}

unint64_t sub_214077BB0()
{
  result = qword_27C904C10;
  if (!qword_27C904C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904C10);
  }

  return result;
}

uint64_t sub_214077C04(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904C18, type metadata accessor for LinkPresentation.Video);
  result = sub_214075624(&qword_27C904C20, type metadata accessor for LinkPresentation.Video);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214077CA8(uint64_t a1)
{
  *(a1 + 8) = sub_214075624(&qword_27C904C28, type metadata accessor for LinkPresentation.Audio);
  result = sub_214075624(&qword_27C904C30, type metadata accessor for LinkPresentation.Audio);
  *(a1 + 16) = result;
  return result;
}

void sub_214077D84()
{
  sub_2140782FC(319, &qword_280B30770, type metadata accessor for LinkPresentation.LinkMetadata);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_214077E3C()
{
  sub_2140782FC(319, &qword_280B30B80, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BD8);
      if (v2 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B2E740);
        if (v3 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B2F3E0);
          if (v4 <= 0x3F)
          {
            sub_2140782FC(319, &qword_280B30738, type metadata accessor for LinkPresentation.IconMetadata);
            if (v5 <= 0x3F)
            {
              sub_21403BEC8(319, &qword_280B2F3D8);
              if (v6 <= 0x3F)
              {
                sub_2140782FC(319, &qword_280B30678, type metadata accessor for LinkPresentation.ARAssetMetadata);
                if (v7 <= 0x3F)
                {
                  sub_214078E0C(319, &qword_280B2E430, &qword_27C904C70, &unk_2146EE700);
                  if (v8 <= 0x3F)
                  {
                    sub_2140782FC(319, &qword_280B306E8, type metadata accessor for LinkPresentation.ImageMetadata);
                    if (v9 <= 0x3F)
                    {
                      sub_214078E0C(319, &qword_280B2E448, &qword_27C904C78, &qword_2146F6490);
                      if (v10 <= 0x3F)
                      {
                        sub_2140782FC(319, &qword_280B30558, type metadata accessor for LinkPresentation.Video);
                        if (v11 <= 0x3F)
                        {
                          sub_2140782FC(319, &qword_280B306B0, type metadata accessor for LinkPresentation.VideoMetadata);
                          if (v12 <= 0x3F)
                          {
                            sub_2140782FC(319, &qword_280B30570, type metadata accessor for LinkPresentation.Audio);
                            if (v13 <= 0x3F)
                            {
                              sub_2140782FC(319, &qword_280B30700, type metadata accessor for LinkPresentation.AudioMetadata);
                              if (v14 <= 0x3F)
                              {
                                sub_214078E0C(319, &qword_280B2E438, &qword_27C904C80, &unk_2146EE710);
                                if (v15 <= 0x3F)
                                {
                                  sub_214078E0C(319, &qword_280B2E458, &qword_27C904C88, &qword_2146F64B0);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_214078E0C(319, &qword_280B2E440, &qword_27C904C90, &unk_2146EE720);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_214078E0C(319, &qword_280B2E450, &qword_27C904C98, &qword_2146F64D0);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_2140782FC(319, &qword_280B30588, type metadata accessor for LinkPresentation.SpecializationMetadata);
                                        if (v19 <= 0x3F)
                                        {
                                          sub_21403BEC8(319, &qword_280B2F3C8);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_2140782FC(319, &qword_280B30328, type metadata accessor for CollaborationMetadata);
                                            if (v21 <= 0x3F)
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
  }
}

void sub_2140782FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2140783A0()
{
  sub_2140782FC(319, &qword_280B30B80, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2140784B0()
{
  sub_2140782FC(319, &qword_280B30B80, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_214078E0C(319, qword_280B2E498, &qword_27C904CA0, &qword_2146EE770);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2140785A0()
{
  sub_2140782FC(319, &qword_280B30B80, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_137Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
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

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_138Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
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
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_21407884C()
{
  sub_2140782FC(319, &qword_280B30B80, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_214078928(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
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

uint64_t sub_214078984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2140789F8()
{
  result = type metadata accessor for LinkPresentation.SongMetadata(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LinkPresentation.AlbumMetadata(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for LinkPresentation.MusicVideoMetadata(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for LinkPresentation.ArtistMetadata(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for LinkPresentation.PlaylistMetadata(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for LinkPresentation.RadioMetadata(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for LinkPresentation.SoftwareMetadata(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for LinkPresentation.BookMetadata(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for LinkPresentation.AudioBookMetadata(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for LinkPresentation.PodcastEpisodeMetadata(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for LinkPresentation.PodcastMetadata(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for LinkPresentation.TVEpisodeMetadata(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for LinkPresentation.TVSeasonMetadata(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for LinkPresentation.TVShowMetadata(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for LinkPresentation.MovieMetadata(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for LinkPresentation.MovieBundleMetadata(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for LinkPresentation.FileMetadata(319);
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for LinkPresentation.PhotosMomentMetadata(319);
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for LinkPresentation.WalletPassMetadata(319);
                                      if (v19 <= 0x3F)
                                      {
                                        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                        return 0;
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
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_214078C9C()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0);
    if (v1 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B30660, type metadata accessor for LinkPresentation.ArtworkMetadata);
      if (v2 <= 0x3F)
      {
        sub_2140782FC(319, &qword_280B30B80, MEMORY[0x277CC9260]);
        if (v3 <= 0x3F)
        {
          sub_214078E0C(319, &qword_280B2E3C0, &unk_27C904F20, &qword_2146EE8A0);
          if (v4 <= 0x3F)
          {
            sub_21403BEC8(319, &qword_280B2F3D0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_214078E0C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2146D9D38();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_214078F00()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_2140782FC(319, &qword_280B30B80, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B2F3E0);
      if (v2 <= 0x3F)
      {
        sub_2140782FC(319, &qword_280B30660, type metadata accessor for LinkPresentation.ArtworkMetadata);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_214079064()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0);
    if (v1 <= 0x3F)
    {
      sub_214078E0C(319, &qword_280B2E430, &qword_27C904C70, &unk_2146EE700);
      if (v2 <= 0x3F)
      {
        sub_2140782FC(319, &qword_280B30558, type metadata accessor for LinkPresentation.Video);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2140791B4()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0);
    if (v1 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B30660, type metadata accessor for LinkPresentation.ArtworkMetadata);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2140792C0()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0);
    if (v1 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B30660, type metadata accessor for LinkPresentation.ArtworkMetadata);
      if (v2 <= 0x3F)
      {
        sub_2140782FC(319, &qword_280B30B80, MEMORY[0x277CC9260]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_214079400()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_2140782FC(319, &qword_280B35230, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B2F3E0);
      if (v2 <= 0x3F)
      {
        sub_2140782FC(319, &qword_280B30660, type metadata accessor for LinkPresentation.ArtworkMetadata);
        if (v3 <= 0x3F)
        {
          sub_214078E0C(319, &qword_280B2E3C0, &unk_27C904F20, &qword_2146EE8A0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_214079570()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0);
    if (v1 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B30660, type metadata accessor for LinkPresentation.ArtworkMetadata);
      if (v2 <= 0x3F)
      {
        sub_214078E0C(319, &qword_280B2E3C0, &unk_27C904F20, &qword_2146EE8A0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2140796A4()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0);
    if (v1 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B30660, type metadata accessor for LinkPresentation.ArtworkMetadata);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2140797D8()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0);
    if (v1 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B30660, type metadata accessor for LinkPresentation.ArtworkMetadata);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2140798E0()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0);
    if (v1 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B30660, type metadata accessor for LinkPresentation.ArtworkMetadata);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214079A08()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0);
    if (v1 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B30660, type metadata accessor for LinkPresentation.ArtworkMetadata);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_214079B0C()
{
  result = type metadata accessor for CloudKitSharingToken();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor16LinkPresentationO16PlaceholderImageVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
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

uint64_t sub_214079BB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 304);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214079BFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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
      *(result + 304) = (a2 - 1);
      return result;
    }

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_214079CD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 169))
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

uint64_t sub_214079D34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 168) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 169) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 169) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_214079DCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 280))
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

uint64_t sub_214079E28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 0;
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

uint64_t sub_214079EF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
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

uint64_t sub_214079F54(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_214079FE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 1066))
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

uint64_t sub_21407A03C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 1064) = 0;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1066) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1066) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21407A1C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 553))
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

uint64_t sub_21407A220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 552) = 0;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 553) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 553) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_21407A344(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
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

uint64_t sub_21407A3A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_21407A450()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0);
    if (v1 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B35230, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
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
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_21407A584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 185))
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

uint64_t sub_21407A5E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 184) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_21407A6A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 153))
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

uint64_t sub_21407A704(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 152) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_21407A7B8()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0);
    if (v1 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B35230, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21407A8FC()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_2140782FC(319, &qword_280B35230, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
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
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_21407AA08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 184))
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

uint64_t sub_21407AA64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21407AB0C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 329))
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

uint64_t sub_21407AB54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 328) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 329) = 1;
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

    *(result + 329) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21407ABFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_21407AC58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_212Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 2147483646)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    v7 = v6 - 1;
    if (v7 < 0)
    {
      v7 = -1;
    }

    return (v7 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_213Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v10 = *(*(v9 - 8) + 56);
    v11 = v7 + *(a4 + 36);

    return v10(v11, a2, a2, v9);
  }

  return result;
}

void sub_21407AE48()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2F3E0);
    if (v1 <= 0x3F)
    {
      sub_2140782FC(319, &qword_280B30588, type metadata accessor for LinkPresentation.SpecializationMetadata);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21407AF30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_21407AF8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_21407B034(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 121))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_21407B090(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21407B140(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_21407B19C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_21407B244()
{
  sub_2140782FC(319, &qword_280B30B80, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21407B31C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_21407B36C(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_21407B3C0(void *result, int a2)
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

uint64_t sub_21407B3F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_21407B44C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_21407B4D8()
{
  sub_2140782FC(319, &qword_280B30B80, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21407B890@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result == 4;
  if (result == 5)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21407B8AC@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if ((result + 1) >= 7)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010303030300uLL >> (8 * (result + 1));
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21407B914()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146EF6C8[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_21407B99C()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146EF6C8[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_21407BAEC@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ScheduledMessageUpdate();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for ScheduledMessageUpdate()
{
  result = qword_280B30268;
  if (!qword_280B30268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21407BB6C(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ScheduledMessageUpdate();
  *(v1 + *(result + 20)) = v2;
  return result;
}

unint64_t sub_21407BBE8()
{
  result = qword_27C904CC8;
  if (!qword_27C904CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904CC8);
  }

  return result;
}

unint64_t sub_21407BC3C(uint64_t a1)
{
  *(a1 + 8) = sub_21407BC6C();
  result = sub_21407BCC0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21407BC6C()
{
  result = qword_27C904CD0;
  if (!qword_27C904CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904CD0);
  }

  return result;
}

unint64_t sub_21407BCC0()
{
  result = qword_27C904CD8;
  if (!qword_27C904CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904CD8);
  }

  return result;
}

uint64_t sub_21407BD14(uint64_t a1)
{
  *(a1 + 8) = sub_21407BD7C(&qword_27C904CE0);
  result = sub_21407BD7C(&qword_27C904CE8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21407BD7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ScheduledMessageUpdate();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21407BDE8()
{
  result = type metadata accessor for Metadata();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21407BE6C()
{
  result = qword_27C904CF0;
  if (!qword_27C904CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904CF0);
  }

  return result;
}

unint64_t sub_21407BEC0(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

void *sub_21407BED4(uint64_t a1)
{
  if (a1 == 1)
  {
    type metadata accessor for JPEGEncoder();
    inited = swift_initStackObject();
    return sub_21463D370(inited);
  }

  else if (a1)
  {
    result = sub_2146DA8C8();
    __break(1u);
  }

  else
  {
    LOWORD(v4[0]) = 0;
    sub_2140615D0(v4);
    v3[8] = v4[8];
    v3[9] = v4[9];
    v3[10] = v4[10];
    v3[11] = v4[11];
    v3[4] = v4[4];
    v3[5] = v4[5];
    v3[6] = v4[6];
    v3[7] = v4[7];
    v3[0] = v4[0];
    v3[1] = v4[1];
    v3[2] = v4[2];
    v3[3] = v4[3];
    return sub_21463C734(v3);
  }

  return result;
}

uint64_t sub_21407C088(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    type metadata accessor for JPEGEncoder();
    inited = swift_initStackObject();
    v4 = sub_21407D554;
    v5 = sub_21407D5BC;
    return sub_21407CAE4(a1, inited, v4, v5);
  }

  if (!a2)
  {
    type metadata accessor for ATXEncoder();
    inited = swift_initStackObject();
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    *(inited + 16) = 0;
    v4 = sub_21407D51C;
    v5 = sub_21407D538;
    return sub_21407CAE4(a1, inited, v4, v5);
  }

  result = sub_2146DA8C8();
  __break(1u);
  return result;
}

uint64_t sub_21407C334()
{
  v1 = v0 + OBJC_IVAR___BlastDoorImage_image;
  v2 = *(v0 + OBJC_IVAR___BlastDoorImage_image + 24);
  v3 = *(v0 + OBJC_IVAR___BlastDoorImage_image + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___BlastDoorImage_image), v2);
  v4 = *(v1 + 200);
  v36[8] = *(v1 + 184);
  v36[9] = v4;
  v5 = *(v1 + 232);
  v36[10] = *(v1 + 216);
  v36[11] = v5;
  v6 = *(v1 + 136);
  v36[4] = *(v1 + 120);
  v36[5] = v6;
  v7 = *(v1 + 168);
  v36[6] = *(v1 + 152);
  v36[7] = v7;
  v8 = *(v1 + 72);
  v36[0] = *(v1 + 56);
  v36[1] = v8;
  v9 = *(v1 + 104);
  v36[2] = *(v1 + 88);
  v36[3] = v9;
  v10 = *(v1 + 200);
  v31 = *(v1 + 184);
  v32 = v10;
  v11 = *(v1 + 232);
  v33 = *(v1 + 216);
  v34 = v11;
  v12 = *(v1 + 136);
  v27 = *(v1 + 120);
  v28 = v12;
  v13 = *(v1 + 168);
  v29 = *(v1 + 152);
  v30 = v13;
  v14 = *(v1 + 72);
  v23 = *(v1 + 56);
  v24 = v14;
  v15 = *(v1 + 104);
  v25 = *(v1 + 88);
  v26 = v15;
  v16 = *(v3 + 16);
  sub_21407CE3C(v36, v22);
  type metadata accessor for CGImage(0);
  v18 = v17;
  v16(&v35, &v23, sub_21407D620, 0, v17, v2, v3);
  v22[8] = v31;
  v22[9] = v32;
  v22[10] = v33;
  v22[11] = v34;
  v22[4] = v27;
  v22[5] = v28;
  v22[6] = v29;
  v22[7] = v30;
  v22[0] = v23;
  v22[1] = v24;
  v22[2] = v25;
  v22[3] = v26;
  sub_21407CEAC(v22);
  result = v35;
  if (!v35)
  {
    v19 = *(v1 + 24);
    v20 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_1(v1, v19);
    (*(v20 + 24))(&v23, sub_21407C580, 0, v18, v19, v20);
    result = v23;
    if (!v23)
    {
      return 0;
    }
  }

  return result;
}

void sub_21407C580(__CVBuffer *a1@<X0>, CGImageRef *a2@<X8>)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  VTCreateCGImageFromCVPixelBuffer(a1, 0, v5);
  if (v5[0])
  {
    *a2 = v5[0];
  }

  else
  {
    sub_214061118();
    swift_allocError();
    *v3 = 1536;
    *(v3 + 8) = 0;
    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t sub_21407C718()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorImage_image + 24);
  v2 = *(v0 + OBJC_IVAR___BlastDoorImage_image + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___BlastDoorImage_image), v1);
  v3 = *(v2 + 24);
  type metadata accessor for CVBuffer(0);
  v3(&v6, sub_21407D620, 0, v4, v1, v2);
  return v6;
}

id sub_21407C7C8()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_21407C85C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21407C8A4()
{
  sub_21407CF14(v0, v6);
  v1 = type metadata accessor for _ObjCImageWrapper();
  v2 = objc_allocWithZone(v1);
  sub_21407CF14(v6, v2 + OBJC_IVAR___BlastDoorImage_image);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_21406D2CC(v6);
  return v3;
}

id sub_21407C924()
{
  sub_21407CF14(v0, v6);
  v1 = type metadata accessor for _ObjCImageWrapper();
  v2 = objc_allocWithZone(v1);
  sub_21407CF14(v6, v2 + OBJC_IVAR___BlastDoorImage_image);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_21406D2CC(v6);
  return v3;
}

uint64_t sub_21407CAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v86 = a2;
  v8 = *(v4 + 24);
  v7 = *(v4 + 32);
  __swift_project_boxed_opaque_existential_1(v4, v8);
  v9 = *(v4 + 200);
  v85[8] = *(v4 + 184);
  v85[9] = v9;
  v10 = *(v4 + 232);
  v85[10] = *(v4 + 216);
  v85[11] = v10;
  v11 = *(v4 + 136);
  v85[4] = *(v4 + 120);
  v85[5] = v11;
  v12 = *(v4 + 168);
  v85[6] = *(v4 + 152);
  v85[7] = v12;
  v13 = *(v4 + 72);
  v85[0] = *(v4 + 56);
  v85[1] = v13;
  v14 = *(v4 + 104);
  v85[2] = *(v4 + 88);
  v85[3] = v14;
  v15 = *(v4 + 200);
  v80 = *(v4 + 184);
  v81 = v15;
  v16 = *(v4 + 232);
  v82 = *(v4 + 216);
  v83 = v16;
  v17 = *(v4 + 136);
  v76 = *(v4 + 120);
  v77 = v17;
  v18 = *(v4 + 168);
  v78 = *(v4 + 152);
  v79 = v18;
  v19 = *(v4 + 72);
  v72 = *(v4 + 56);
  v73 = v19;
  v20 = *(v4 + 104);
  v74 = *(v4 + 88);
  v75 = v20;
  v44[2] = &v86;
  v44[3] = a1;
  v21 = *(v7 + 8);
  sub_21407CE3C(v85, &v60);
  v21(&v84, &v72, a3, v44, MEMORY[0x277D839B0], v8, v7);
  if (v43)
  {
    v68 = v80;
    v69 = v81;
    v70 = v82;
    v71 = v83;
    v64 = v76;
    v65 = v77;
    v66 = v78;
    v67 = v79;
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v63 = v75;
    return sub_21407CEAC(&v60);
  }

  else
  {
    v23 = a1;
    v24 = v42;
    v68 = v80;
    v69 = v81;
    v70 = v82;
    v71 = v83;
    v64 = v76;
    v65 = v77;
    v66 = v78;
    v67 = v79;
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v63 = v75;
    result = sub_21407CEAC(&v60);
    if (v84 == 2)
    {
      v25 = *(v4 + 24);
      v26 = *(v4 + 32);
      v27 = __swift_project_boxed_opaque_existential_1(v4, v25);
      v43 = &v42;
      v28 = *(v4 + 200);
      v59[8] = *(v4 + 184);
      v59[9] = v28;
      v29 = *(v4 + 232);
      v59[10] = *(v4 + 216);
      v59[11] = v29;
      v30 = *(v4 + 136);
      v59[4] = *(v4 + 120);
      v59[5] = v30;
      v31 = *(v4 + 168);
      v59[6] = *(v4 + 152);
      v59[7] = v31;
      v32 = *(v4 + 72);
      v59[0] = *(v4 + 56);
      v59[1] = v32;
      v33 = *(v4 + 104);
      v59[2] = *(v4 + 88);
      v59[3] = v33;
      v34 = *(v4 + 200);
      v54 = *(v4 + 184);
      v55 = v34;
      v35 = *(v4 + 232);
      v56 = *(v4 + 216);
      v57 = v35;
      v36 = *(v4 + 136);
      v50 = *(v4 + 120);
      v51 = v36;
      v37 = *(v4 + 168);
      v52 = *(v4 + 152);
      v53 = v37;
      v38 = *(v4 + 72);
      v46 = *(v4 + 56);
      v47 = v38;
      v39 = *(v4 + 104);
      v48 = *(v4 + 88);
      v49 = v39;
      MEMORY[0x28223BE20](v27);
      v41[2] = &v86;
      v41[3] = v23;
      v40 = *(v26 + 16);
      sub_21407CE3C(v59, v45);
      v40(&v58, &v46, v24, v41, MEMORY[0x277D84F78] + 8, v25, v26);
      v45[8] = v54;
      v45[9] = v55;
      v45[10] = v56;
      v45[11] = v57;
      v45[4] = v50;
      v45[5] = v51;
      v45[6] = v52;
      v45[7] = v53;
      v45[0] = v46;
      v45[1] = v47;
      v45[2] = v48;
      v45[3] = v49;
      return sub_21407CEAC(v45);
    }
  }

  return result;
}

uint64_t sub_21407CE3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D00, &qword_2146EF6E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21407CEAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D00, &qword_2146EF6E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21407CF98()
{
  result = qword_27C904D08;
  if (!qword_27C904D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904D08);
  }

  return result;
}

uint64_t sub_21407D014()
{
  sub_214061118();
  swift_allocError();
  *v0 = 1281;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

uint64_t sub_21407D068@<X0>(CGImageSource *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 24);
  result = sub_21407D1E8(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21407D098@<X0>(CGImage *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 24);
  result = sub_21407D35C(a1);
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_21407D0CC@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *a2;
  type metadata accessor for CGImageSource(0);
  v10[3] = v7;
  v10[4] = &off_28269F370;
  v10[0] = a1;
  v8 = a1;
  sub_214640D60(v10);
  result = __swift_destroy_boxed_opaque_existential_1(v10);
  if (!v3)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_21407D15C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *a2;
  type metadata accessor for CGImage(0);
  v10[3] = v7;
  v10[4] = &off_28269F358;
  v10[0] = a1;
  v8 = a1;
  sub_214640D60(v10);
  result = __swift_destroy_boxed_opaque_existential_1(v10);
  if (!v3)
  {
    *a3 = 0;
  }

  return result;
}

uint64_t sub_21407D1E8(CGImageSource *a1)
{
  ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, 0, 0);
  if (ImageAtIndex)
  {
    v3 = ImageAtIndex;
    Width = CGImageGetWidth(ImageAtIndex);
    Height = CGImageGetHeight(v3);
    sub_21409B984(Width, Height);
    if (v1)
    {
    }

    else
    {
      *&v12 = sub_21408F798(v6);
      *(&v12 + 1) = v8;
      sub_2146808C0(&v12, 0);
      v13 = v12;
      v9 = v3;
      sub_214680494(&v13, v9, 1, Width, Height);
      v10 = v13;
      sub_2146D8A68();
      sub_213FB54FC(v10, *(&v10 + 1));
    }
  }

  else
  {
    sub_21407D454();
    swift_allocError();
    *v7 = 1281;
    *(v7 + 8) = 0;
    swift_willThrow();
  }

  return 1;
}

uint64_t sub_21407D35C(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  sub_21409B984(Width, Height);
  if (!v1)
  {
    *&v9 = sub_21408F798(v5);
    *(&v9 + 1) = v6;
    sub_2146808C0(&v9, 0);
    v10 = v9;
    sub_214680494(&v10, a1, 1, Width, Height);
    v7 = v10;
    sub_2146D8A68();
    sub_213FB54FC(v7, *(&v7 + 1));
  }

  return 0;
}

unint64_t sub_21407D454()
{
  result = qword_27C904D10;
  if (!qword_27C904D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904D10);
  }

  return result;
}

uint64_t sub_21407D500()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_21407D014();
}

uint64_t sub_21407D580@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, _BYTE *a3@<X8>)
{
  result = a2(a1, *(v3 + 24));
  if (!v4)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_21407D5E8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, _BYTE *a3@<X8>)
{
  result = a2(a1, *(v3 + 24));
  if (!v4)
  {
    *a3 = 0;
  }

  return result;
}

uint64_t sub_21407D658@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21407D678()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146DA978();
  return sub_2146DA9B8();
}

uint64_t sub_21407D6C0()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146DA978();
  return sub_2146DA9B8();
}

_BYTE *sub_21407D704@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_21407D810()
{
  result = qword_27C904D18;
  if (!qword_27C904D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904D18);
  }

  return result;
}

unint64_t sub_21407D890()
{
  result = qword_27C904D20;
  if (!qword_27C904D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904D20);
  }

  return result;
}

unint64_t sub_21407D8E4()
{
  result = qword_27C904D28;
  if (!qword_27C904D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904D28);
  }

  return result;
}

uint64_t sub_21407D964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21407D9A0()
{
  result = qword_27C904D30;
  if (!qword_27C904D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904D30);
  }

  return result;
}

unint64_t sub_21407D9F4()
{
  result = qword_27C904D38;
  if (!qword_27C904D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904D38);
  }

  return result;
}

unint64_t sub_21407DA68()
{
  result = qword_27C904D40;
  if (!qword_27C904D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904D40);
  }

  return result;
}

BOOL sub_21407DAC4(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 48);
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v2 + 3;
    v6 = *(v2 - 1);
    v5 = *v2;
    v7 = *(v2 - 2);

    LOBYTE(v7) = sub_21407DB58(v7, v6, v5);

    v2 = v4;
  }

  while ((v7 & 1) == 0);
  return v3 != 0;
}

uint64_t sub_21407DB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2146D8958();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v52 - v20;
  v22 = sub_2146D88F8();
  if (!v23)
  {
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v53 = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2146EA710;
    v40 = *(v8 + 16);
    v40(v21, v3, v7);
    (*(v8 + 56))(v21, 0, 1, v7);
    sub_21407E1D8(v21, v19);
    if ((*(v8 + 48))(v19, 1, v7) == 1)
    {
      sub_21407E248(v19);
      v41 = 0xE300000000000000;
      v42 = 7104878;
    }

    else
    {
      (*(v8 + 32))(v14, v19, v7);
      v40(v12, v14, v7);
      v42 = sub_2146D9618();
      v41 = v43;
      (*(v8 + 8))(v14, v7);
    }

    sub_21407E248(v21);
    *(v39 + 56) = MEMORY[0x277D837D0];
    *(v39 + 64) = sub_213FB2DA0();
    *(v39 + 32) = v42;
    *(v39 + 40) = v41;
    sub_2146D9BC8();
    goto LABEL_31;
  }

  v56 = v22;
  v57 = v23;
  v54 = 46;
  v55 = 0xE100000000000000;
  sub_214069AD8();
  v24 = MEMORY[0x277D837D0];
  v25 = sub_2146D9DB8();

  v26 = *(v25 + 16);
  v27 = *(a3 + 16);
  if (v26 <= v27)
  {
    if (qword_280B35360 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_36;
  }

  v53 = a1;
  v28 = a2;
  if (v26 >= v27)
  {
    v24 = v26 - v27;
  }

  else
  {
    v24 = 0;
  }

  sub_2146DA738();
  swift_unknownObjectRetain_n();

  v29 = swift_dynamicCastClass();
  if (!v29)
  {
    swift_unknownObjectRelease();
    v29 = MEMORY[0x277D84F90];
  }

  v30 = *(v29 + 16);

  if (v30 == v26 - v24)
  {
    v31 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v32 = v28;
    v33 = v53;
    if (v31)
    {
      goto LABEL_12;
    }

    v31 = MEMORY[0x277D84F90];
  }

  else
  {
    swift_unknownObjectRelease();
    sub_21407E2B0(v25, v25 + 32, v24, (2 * v26) | 1);
    v31 = v51;
    v32 = v28;
    v33 = v53;
  }

  swift_unknownObjectRelease();
LABEL_12:
  v34 = v26 + ~v27;
  if (v34 < 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v34 >= *(v25 + 16))
  {
    __break(1u);
    goto LABEL_36;
  }

  v35 = (v25 + 32 + 16 * v34);
  v37 = *v35;
  v36 = v35[1];
  v56 = v37;
  v57 = v36;
  v24 = MEMORY[0x277D837D0];
  if (sub_2146D9DD8() == v33 && v38 == v32)
  {
  }

  else
  {
    v44 = sub_2146DA6A8();

    if ((v44 & 1) == 0)
    {

      goto LABEL_29;
    }
  }

  v45 = sub_2143D53BC(v31, a3);

  if (v45)
  {

    return 1;
  }

LABEL_29:
  if (qword_280B35360 != -1)
  {
LABEL_36:
    swift_once();
  }

LABEL_30:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_2146EA710;
  v56 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  v48 = sub_2146D9618();
  v50 = v49;
  *(v47 + 56) = v24;
  *(v47 + 64) = sub_213FB2DA0();
  *(v47 + 32) = v48;
  *(v47 + 40) = v50;
  sub_2146D9BC8();
LABEL_31:
  sub_2146D91C8();

  return 0;
}

uint64_t sub_21407E1D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21407E248(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21407E2B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D48, qword_2146EF9D0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_21407E3D0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D50, &qword_2146EFA00);
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  v4 = [objc_opt_self() megabytes];
  sub_214080100();
  return sub_2146D8628();
}

uint64_t sub_21407E490@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D50, &qword_2146EFA00);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

double sub_21407E534(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v95 = a1;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D50, &qword_2146EFA00);
  v99 = *(v101 - 8);
  v13 = *(v99 + 64);
  v14 = MEMORY[0x28223BE20](v101);
  v88 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v82 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v91 = &v82 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v82 - v21;
  v87 = objc_opt_self();
  v23 = [v87 bytes];
  v24 = sub_214080100();
  v100 = v22;
  v97 = v24;
  sub_2146D8628();
  v104 = MEMORY[0x277D84F90];
  sub_21409FD68(0, 7, 0);
  v25 = v104;
  v27 = *(v104 + 16);
  v26 = *(v104 + 24);
  v28 = v27 + 1;
  if (v27 >= v26 >> 1)
  {
LABEL_57:
    sub_21409FD68((v26 > 1), v28, 1);
    v25 = v104;
  }

  *(v25 + 16) = v28;
  *(v25 + 8 * v27 + 32) = 0x3FF0000000000000;
  v104 = v25;
  v29 = *(v25 + 24);
  v30 = v100;
  if (v28 >= v29 >> 1)
  {
    sub_21409FD68((v29 > 1), v27 + 2, 1);
    v30 = v100;
    v25 = v104;
  }

  *(v25 + 16) = v27 + 2;
  *(v25 + 8 * v28 + 32) = 0x4000000000000000;
  v104 = v25;
  v32 = *(v25 + 16);
  v31 = *(v25 + 24);
  v33 = v32 + 1;
  if (v32 >= v31 >> 1)
  {
    sub_21409FD68((v31 > 1), v32 + 1, 1);
    v30 = v100;
    v25 = v104;
  }

  *(v25 + 16) = v33;
  *(v25 + 8 * v32 + 32) = 0x4010000000000000;
  v104 = v25;
  v34 = *(v25 + 24);
  if (v33 >= v34 >> 1)
  {
    sub_21409FD68((v34 > 1), v32 + 2, 1);
    v30 = v100;
    v25 = v104;
  }

  *(v25 + 16) = v32 + 2;
  *(v25 + 8 * v33 + 32) = 0x4020000000000000;
  v104 = v25;
  v36 = *(v25 + 16);
  v35 = *(v25 + 24);
  v37 = v36 + 1;
  if (v36 >= v35 >> 1)
  {
    sub_21409FD68((v35 > 1), v36 + 1, 1);
    v30 = v100;
    v25 = v104;
  }

  *(v25 + 16) = v37;
  *(v25 + 8 * v36 + 32) = 0x4030000000000000;
  v104 = v25;
  v38 = *(v25 + 24);
  if (v37 >= v38 >> 1)
  {
    sub_21409FD68((v38 > 1), v36 + 2, 1);
    v30 = v100;
    v25 = v104;
  }

  v83 = v18;
  *(v25 + 16) = v36 + 2;
  *(v25 + 8 * v37 + 32) = 0x4040000000000000;
  v104 = v25;
  v40 = *(v25 + 16);
  v39 = *(v25 + 24);
  v94 = v40 + 1;
  if (v40 >= v39 >> 1)
  {
    sub_21409FD68((v39 > 1), v40 + 1, 1);
    v30 = v100;
    v25 = v104;
  }

  v18 = 0xEB00000000636965;
  *(v25 + 16) = v40 + 1;
  *(v25 + 8 * v40 + 32) = 0x4050000000000000;
  swift_beginAccess();
  v42 = 0;
  v43 = v95 == 0x682E63696C627570;
  v44 = a2 == 0xEB00000000636965 && v95 == 0x682E63696C627570;
  if (a2 != 0xEB00000000666965)
  {
    v43 = 0;
  }

  v89 = v43;
  v46 = v95 == 0x6A2E63696C627570 && a2 == 0xEB00000000676570;
  v84 = v46;
  v96 = (v99 + 40);
  v90 = (v99 + 8);
  if (a2)
  {
    v47 = v44;
  }

  else
  {
    v47 = 1;
  }

  LODWORD(v99) = v47;
  *&v41 = 134349570;
  v86 = v41;
  v27 = v101;
  v28 = v91;
  v85 = a2;
  v98 = v25;
  do
  {
    v26 = *(v25 + 16);
    if (v42 >= v26)
    {
      __break(1u);
      goto LABEL_57;
    }

    v48 = *(v25 + 8 * v42 + 32);
    if (v99 & 1) != 0 || ((sub_2146DA6A8() | v89) & 1) != 0 || ((sub_2146DA6A8() | v84) & 1) != 0 || (sub_2146DA6A8())
    {
      sub_21407F05C(v28, v48, a3, a4, a5, a6);
      if (v7)
      {
        goto LABEL_46;
      }

      v49 = v28;
    }

    else
    {
      v65 = v83;
      sub_21407F9D0(v83, v48, a3, a4, a5, a6);
      if (v7)
      {
LABEL_46:

        (*v90)(v30, v27);
        return v48;
      }

      v49 = v65;
      v28 = v91;
    }

    (*v96)(v30, v49, v27);
    if (qword_280B2ED50 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v27, qword_280B2ED58);
    if (sub_2146D8618())
    {
      break;
    }

    v18 = sub_2146D9B88();
    if (qword_280B30DD8 != -1)
    {
      swift_once();
    }

    v50 = qword_280B30DE0;
    if (os_log_type_enabled(qword_280B30DE0, v18))
    {
      v51 = swift_slowAlloc();
      v93 = 0;
      v52 = v51;
      v92 = swift_slowAlloc();
      v102[0] = v92;
      *v52 = v86;
      *(v52 + 4) = v48;
      *(v52 + 12) = 2082;
      v53 = [v87 megabytes];
      v54 = v88;
      sub_2146D8648();

      sub_2140801A0(&qword_280B2FDE8);
      v55 = sub_2146DA428();
      v57 = v56;
      v58 = v54;
      v28 = v91;
      (*v90)(v58, v101);
      v59 = sub_2144AEA38(v55, v57, v102);

      *(v52 + 14) = v59;
      *(v52 + 22) = 2082;
      a2 = v85;
      v60 = sub_2146DA428();
      v62 = sub_2144AEA38(v60, v61, v102);
      v27 = v101;

      *(v52 + 24) = v62;
      v30 = v100;
      _os_log_impl(&dword_213FAF000, v50, v18, "Subsample %{public}f expected to hit memory limit: Projected %{public}s (over the blastdoor limit of %{public}s).", v52, 0x20u);
      v63 = v92;
      swift_arrayDestroy();
      MEMORY[0x216056AC0](v63, -1, -1);
      v64 = v52;
      v7 = v93;
      MEMORY[0x216056AC0](v64, -1, -1);
    }

    ++v42;
    v25 = v98;
  }

  while (v94 != v42);

  v66 = sub_2146D9B88();
  if (qword_280B30DD8 != -1)
  {
    swift_once();
  }

  v67 = qword_280B30DE0;
  if (os_log_type_enabled(qword_280B30DE0, v66))
  {
    LODWORD(v101) = v66;
    v93 = v7;
    v68 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v103 = v99;
    *v68 = v86;
    *(v68 + 4) = v48;
    *(v68 + 12) = 2082;
    swift_beginAccess();
    v69 = v27;
    v70 = [v87 megabytes];
    v71 = v88;
    sub_2146D8648();

    sub_2140801A0(&qword_280B2FDE8);
    v72 = sub_2146DA428();
    v74 = v73;
    v75 = *v90;
    (*v90)(v71, v69);
    v76 = sub_2144AEA38(v72, v74, &v103);

    *(v68 + 14) = v76;
    *(v68 + 22) = 2082;
    if (qword_280B2ED50 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v69, qword_280B2ED58);
    v77 = sub_2146DA428();
    v79 = sub_2144AEA38(v77, v78, &v103);

    *(v68 + 24) = v79;
    _os_log_impl(&dword_213FAF000, v67, v101, "Picking subsample %{public}f : Projected %{public}s (blastdoor limit of %{public}s.", v68, 0x20u);
    v80 = v99;
    swift_arrayDestroy();
    MEMORY[0x216056AC0](v80, -1, -1);
    MEMORY[0x216056AC0](v68, -1, -1);
    v27 = v69;
    v30 = v100;
  }

  else
  {
    v75 = *v90;
  }

  v75(v30, v27);
  return v48;
}

uint64_t sub_21407F05C@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  v90 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D50, &qword_2146EFA00);
  v98 = *(v12 - 8);
  v13 = *(v98 + 8);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v86 = &v85 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v87 = &v85 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v88 = &v85 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v92 = &v85 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v94 = &v85 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v85 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v96 = &v85 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v85 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v85 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v85 - v37;
  v39 = sub_2146D9B88();
  if (qword_280B30DD8 != -1)
  {
    swift_once();
  }

  v95 = v28;
  v91 = v6;
  v40 = qword_280B30DE0;
  if (os_log_type_enabled(qword_280B30DE0, v39))
  {
    v41 = swift_slowAlloc();
    v97 = v38;
    v42 = v41;
    v43 = swift_slowAlloc();
    v93 = v33;
    v44 = v43;
    v101[0] = v43;
    *v42 = 134349570;
    *(v42 + 4) = a2;
    *(v42 + 12) = 2082;
    v99 = a3;
    v100 = a4;
    type metadata accessor for CGSize(0);
    v45 = sub_2146D9618();
    v47 = sub_2144AEA38(v45, v46, v101);

    *(v42 + 14) = v47;
    *(v42 + 22) = 2082;
    v99 = a5;
    v100 = a6;
    v48 = sub_2146D9618();
    v50 = sub_2144AEA38(v48, v49, v101);

    *(v42 + 24) = v50;
    _os_log_impl(&dword_213FAF000, v40, v39, "Calculating expected memory peak for HEIF using subsample: %{public}f, source: %{public}s, destination: %{public}s", v42, 0x20u);
    swift_arrayDestroy();
    v51 = v44;
    v33 = v93;
    MEMORY[0x216056AC0](v51, -1, -1);
    v52 = v42;
    v38 = v97;
    MEMORY[0x216056AC0](v52, -1, -1);
  }

  if (qword_280B2ECC8 != -1)
  {
    swift_once();
  }

  v53 = __swift_project_value_buffer(v12, qword_280B2ECD0);
  v54 = *(v98 + 2);
  v54(v38, v53, v12);
  if (fabs(a5 * a6) == INFINITY || fabs(a5 * a6 * 4.0) == INFINITY)
  {
    sub_21408014C();
    swift_allocError();
    *v55 = 512;
    swift_willThrow();
    return (*(v98 + 1))(v38, v12);
  }

  v97 = v38;
  v57 = objc_opt_self();
  v58 = [v57 bytes];
  v59 = sub_214080100();
  sub_2146D8628();
  v54(v33, v36, v12);
  v60 = round(a3 / a2);
  v61 = v60 * round(a4 / a2);
  if (fabs(v61) == INFINITY || fabs(v61 * 1.5) == INFINITY)
  {
    sub_21408014C();
    v62 = v36;
    swift_allocError();
    *v63 = 512;
    swift_willThrow();
    v64 = *(v98 + 1);
    v64(v33, v12);
LABEL_21:
    v64(v62, v12);
    return (v64)(v97, v12);
  }

  v65 = [v57 bytes];
  v66 = v96;
  sub_2146D8628();
  if (fabs(v61 * 4.0) == INFINITY)
  {
    sub_21408014C();
    v62 = v36;
    swift_allocError();
    *v67 = 512;
    swift_willThrow();
    v68 = v33;
    v69 = v66;
    v64 = *(v98 + 1);
    v64(v69, v12);
LABEL_20:
    v64(v68, v12);
    goto LABEL_21;
  }

  v70 = [v57 bytes];
  v71 = v59;
  v72 = v95;
  v85 = v71;
  sub_2146D8628();
  if (fabs(v60 * a6) == INFINITY)
  {
    sub_21408014C();
    v62 = v36;
    swift_allocError();
    *v73 = 512;
    swift_willThrow();
    v68 = v33;
    v74 = v66;
    v64 = *(v98 + 1);
    v64(v72, v12);
LABEL_19:
    v64(v74, v12);
    goto LABEL_20;
  }

  if (fabs(v60 * a6 * 4.0) == INFINITY)
  {
    sub_21408014C();
    v62 = v36;
    swift_allocError();
    *v75 = 512;
    swift_willThrow();
    v68 = v33;
    v74 = v66;
    v64 = *(v98 + 1);
    v64(v95, v12);
    goto LABEL_19;
  }

  v76 = [v57 bytes];
  sub_2146D8628();
  sub_2146D8638();
  v77 = v86;
  sub_2146D8638();
  v78 = v87;
  sub_2146D8638();
  v93 = v33;
  v79 = *(v98 + 1);
  v79(v77, v12);
  v80 = v88;
  sub_2146D8638();
  v79(v78, v12);
  sub_2140801A0(&qword_280B2FDF0);
  v81 = v92;
  v98 = v36;
  if (sub_2146D9568())
  {
    v82 = v81;
  }

  else
  {
    v82 = v80;
  }

  v83 = v89;
  v54(v89, v82, v12);
  v84 = v97;
  sub_2146D8638();
  v79(v83, v12);
  v79(v80, v12);
  v79(v81, v12);
  v79(v94, v12);
  v79(v95, v12);
  v79(v96, v12);
  v79(v93, v12);
  v79(v98, v12);
  return (v79)(v84, v12);
}

uint64_t sub_21407F9D0@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  v55 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D50, &qword_2146EFA00);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v54 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v49 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v49 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  v25 = sub_2146D9B88();
  if (qword_280B30DD8 != -1)
  {
    swift_once();
  }

  v26 = qword_280B30DE0;
  if (os_log_type_enabled(qword_280B30DE0, v25))
  {
    v27 = swift_slowAlloc();
    v53 = v6;
    v28 = v27;
    v50 = swift_slowAlloc();
    v58 = v50;
    *v28 = 134349570;
    *(v28 + 4) = a2;
    *(v28 + 12) = 2082;
    v56 = a3;
    v57 = a4;
    type metadata accessor for CGSize(0);
    v29 = sub_2146D9618();
    v51 = v19;
    v52 = v22;
    v31 = sub_2144AEA38(v29, v30, &v58);

    *(v28 + 14) = v31;
    *(v28 + 22) = 2082;
    v56 = a5;
    v57 = a6;
    v32 = sub_2146D9618();
    v34 = sub_2144AEA38(v32, v33, &v58);

    *(v28 + 24) = v34;
    v19 = v51;
    v22 = v52;
    _os_log_impl(&dword_213FAF000, v26, v25, "Calculating expected memory peak for non-HEIF using subsample: %{public}f, source: %{public}s, destination: %{public}s", v28, 0x20u);
    v35 = v50;
    swift_arrayDestroy();
    MEMORY[0x216056AC0](v35, -1, -1);
    MEMORY[0x216056AC0](v28, -1, -1);
  }

  if (qword_280B2ECC8 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v12, qword_280B2ECD0);
  (*(v13 + 16))(v24, v36, v12);
  if (fabs(a6 * a6) == INFINITY || fabs(a6 * a6 * 4.0) == INFINITY)
  {
    sub_21408014C();
    swift_allocError();
    *v37 = 512;
    swift_willThrow();
    return (*(v13 + 8))(v24, v12);
  }

  v39 = objc_opt_self();
  v40 = v22;
  v41 = [v39 bytes];
  sub_214080100();
  sub_2146D8628();
  sub_2146D8638();
  v42 = round(a3 / a2) * round(a4 / a2);
  if (fabs(v42) == INFINITY)
  {
    sub_21408014C();
    swift_allocError();
    *v43 = 512;
    swift_willThrow();
    v44 = v24;
  }

  else
  {
    v44 = v24;
    if (fabs(v42 * 4.0) != INFINITY)
    {
      v47 = [v39 bytes];
      v48 = v54;
      sub_2146D8628();
      sub_2146D8638();
      v46 = *(v13 + 8);
      v46(v48, v12);
      v46(v19, v12);
      goto LABEL_16;
    }

    sub_21408014C();
    swift_allocError();
    *v45 = 512;
    swift_willThrow();
  }

  v46 = *(v13 + 8);
  v46(v19, v12);
LABEL_16:
  v46(v40, v12);
  return (v46)(v44, v12);
}

uint64_t sub_21407FF6C(uint64_t result, double a2, double a3)
{
  if (a2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v3 = a2;
  v4 = a3;
  if (a3 >= a2)
  {
    if (v3 < v4 && v4 > result)
    {
      v6 = round(v3 / v4 * result);
      if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v6 <= -9.22337204e18)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= 9.22337204e18)
      {
LABEL_31:
        __break(1u);
      }
    }
  }

  else if (v3 > result)
  {
    v5 = round(v4 / v3 * result);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v5 > -9.22337204e18)
      {
        if (v5 < 9.22337204e18)
        {
          return result;
        }

        goto LABEL_28;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return result;
}

unint64_t sub_214080100()
{
  result = qword_280B2E370;
  if (!qword_280B2E370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B2E370);
  }

  return result;
}

unint64_t sub_21408014C()
{
  result = qword_27C904D58;
  if (!qword_27C904D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904D58);
  }

  return result;
}

uint64_t sub_2140801A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904D50, &qword_2146EFA00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2140801F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C75736572 && a2 == 0xE600000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656873696E6966 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

uint64_t sub_21408034C(unsigned __int8 a1)
{
  sub_2146DA958();
  MEMORY[0x216055860](a1);
  return sub_2146DA9B8();
}

uint64_t sub_214080394(unsigned __int8 a1)
{
  v1 = 0x746C75736572;
  v2 = 0x6E6F6973736573;
  if (a1 != 2)
  {
    v2 = 0x64656873696E6966;
  }

  if (a1)
  {
    v1 = 0x726F727265;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_214080408(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v26[0] = a2;
  v26[1] = v3;
  type metadata accessor for UnpackResponseMessage.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_2146DA3F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DAA28();
  LOBYTE(v27) = 0;
  v11 = *(v4 + 16);
  v12 = v26[2];
  v13 = v9;
  v14 = v26[3];
  sub_2146DA308();
  if (v14)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v16 = v6;
  v17 = v26[0];
  v18 = (v12 + *(v26[0] + 36));
  v19 = v18[1];
  v20 = v18[2];
  v21 = v18[3];
  v22 = v18[4];
  v23 = v18[5];
  v27 = *v18;
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v33 = 1;
  sub_214082A9C(v27, v19);
  sub_214081BD8();
  sub_2146DA308();
  sub_214082AEC(v27, v28);
  v24 = *(v17 + 40);
  LOBYTE(v27) = 2;
  sub_2146D8B88();
  sub_214081B40(&qword_280B34D20);
  sub_2146DA308();
  v25 = *(v12 + *(v17 + 44));
  LOBYTE(v27) = 3;
  sub_2146DA338();
  return (*(v16 + 8))(v13, v5);
}

uint64_t sub_2140806A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = &v31 - v7;
  v39 = sub_2146D9D38();
  v36 = *(v39 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v39);
  v40 = &v31 - v9;
  type metadata accessor for UnpackResponseMessage.CodingKeys();
  swift_getWitnessTable();
  v38 = sub_2146DA258();
  v35 = *(v38 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v38);
  v12 = &v31 - v11;
  v37 = a2;
  v13 = type metadata accessor for UnpackResponseMessage();
  v32 = *(v13 - 1);
  v14 = *(v32 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v41 = v12;
  v18 = v42;
  sub_2146DAA08();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v35;
  v19 = v36;
  v42 = v16;
  LOBYTE(v43) = 0;
  v21 = *(v37 + 8);
  v22 = v39;
  sub_2146DA148();
  (*(v19 + 32))(v42, v40, v22);
  v46 = 1;
  sub_214081E5C();
  sub_2146DA148();
  v23 = &v42[v13[9]];
  v24 = v44;
  *v23 = v43;
  *(v23 + 1) = v24;
  *(v23 + 2) = v45;
  sub_2146D8B88();
  LOBYTE(v43) = 2;
  sub_214081B40(&qword_280B35350);
  v25 = v34;
  sub_2146DA148();
  sub_214080CE0(v25, &v42[v13[10]]);
  LOBYTE(v43) = 3;
  v26 = v38;
  v27 = sub_2146DA178();
  (*(v20 + 8))(v41, v26);
  v28 = v42;
  v42[v13[11]] = v27 & 1;
  v29 = v32;
  (*(v32 + 16))(v33, v28, v13);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v29 + 8))(v28, v13);
}

uint64_t sub_214080BDC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v12 = sub_2146D9D38();
  v16 = a2[1];
  v17 = *a2;
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  v13 = type metadata accessor for UnpackResponseMessage();
  v14 = a5 + v13[9];
  *v14 = v17;
  *(v14 + 16) = v16;
  *(v14 + 32) = v10;
  *(v14 + 40) = v11;
  result = sub_214080CE0(a3, a5 + v13[10]);
  *(a5 + v13[11]) = a4;
  return result;
}

uint64_t sub_214080CE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214080D50(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D60, &unk_21477E710);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214081ACC();
  sub_2146DAA28();
  v13[15] = 0;
  sub_2146D8B88();
  sub_214081B40(&qword_280B34D20);
  sub_2146DA388();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for UnpackResponseSessionFinishedMessage(0) + 20));
    v13[14] = 1;
    sub_2146DA338();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_214080EF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_2146D8B88();
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D70, &qword_2146EFA30);
  v25 = *(v28 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v28);
  v10 = &v23 - v9;
  v11 = type metadata accessor for UnpackResponseSessionFinishedMessage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214081ACC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v14;
  v16 = v25;
  v17 = v26;
  v30 = 0;
  sub_214081B40(&qword_280B35350);
  v18 = v27;
  sub_2146DA1C8();
  (*(v17 + 32))(v23, v7, v18);
  v29 = 1;
  v19 = sub_2146DA178();
  (*(v16 + 8))(v10, v28);
  v21 = v23;
  v20 = v24;
  v23[*(v11 + 20)] = v19 & 1;
  sub_214081EB0(v21, v20, type metadata accessor for UnpackResponseSessionFinishedMessage);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_214081F18(v21, type metadata accessor for UnpackResponseSessionFinishedMessage);
}

uint64_t sub_214081228(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D78, &qword_2146EFA38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214081B84();
  sub_2146DAA28();
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[3];
  v14 = v3[4];
  v15 = v3[5];
  v19 = *v3;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v18[15] = 0;
  sub_214081BD8();

  sub_2146DA388();

  if (!v2)
  {
    v16 = *(type metadata accessor for EncoderErrorResponseMessage(0) + 20);
    LOBYTE(v19) = 1;
    sub_2146D8B88();
    sub_214081B40(&qword_280B34D20);
    sub_2146DA308();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_214081430@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D88, &qword_2146EFA40);
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for EncoderErrorResponseMessage(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214081B84();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v24;
  v30 = 0;
  sub_214081E5C();
  v18 = v25;
  sub_2146DA1C8();
  v19 = v27;
  v20 = v28;
  *v15 = v26;
  *(v15 + 2) = v19;
  *(v15 + 3) = v20;
  *(v15 + 2) = v29;
  sub_2146D8B88();
  LOBYTE(v26) = 1;
  sub_214081B40(&qword_280B35350);
  sub_2146DA148();
  (*(v17 + 8))(v11, v18);
  sub_214080CE0(v7, &v15[*(v12 + 20)]);
  sub_214081EB0(v15, v23, type metadata accessor for EncoderErrorResponseMessage);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_214081F18(v15, type metadata accessor for EncoderErrorResponseMessage);
}

BOOL sub_214081744(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_213FDC884(*a1, *a2);
}

uint64_t sub_214081758(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_21408034C(*v1);
}

uint64_t sub_214081764(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_213FDC894(a1, *v2);
}

uint64_t sub_214081770(uint64_t a1, uint64_t a2)
{
  sub_2146DA958();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_213FDC894(v7, *v2);
  return sub_2146DA9B8();
}

uint64_t sub_2140817B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_214080394(*v1);
}

uint64_t sub_2140817C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_2140801F0(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_2140817F4@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_214082BF8();
  *a2 = result;
  return result;
}

uint64_t sub_214081820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_214081874(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_214081900()
{
  if (*v0)
  {
    result = 0x6564656563637573;
  }

  else
  {
    result = 0x6E6F6973736573;
  }

  *v0;
  return result;
}

uint64_t sub_214081940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6564656563637573 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_214081A24(uint64_t a1)
{
  v2 = sub_214081ACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214081A60(uint64_t a1)
{
  v2 = sub_214081ACC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_214081ACC()
{
  result = qword_27C904D68;
  if (!qword_27C904D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904D68);
  }

  return result;
}

uint64_t sub_214081B40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2146D8B88();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214081B84()
{
  result = qword_27C904D80;
  if (!qword_27C904D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904D80);
  }

  return result;
}

unint64_t sub_214081BD8()
{
  result = qword_280B30ED8[0];
  if (!qword_280B30ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B30ED8);
  }

  return result;
}

uint64_t sub_214081C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_2146D8B48())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_214081CA4()
{
  if (*v0)
  {
    result = 0x6E6F6973736573;
  }

  else
  {
    result = 0x726F727265;
  }

  *v0;
  return result;
}

uint64_t sub_214081CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_214081DB4(uint64_t a1)
{
  v2 = sub_214081B84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214081DF0(uint64_t a1)
{
  v2 = sub_214081B84();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_214081E5C()
{
  result = qword_280B34F30;
  if (!qword_280B34F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34F30);
  }

  return result;
}

uint64_t sub_214081EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214081F18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_214081FB0()
{
  sub_21408202C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21408202C()
{
  if (!qword_280B353F8)
  {
    sub_2146D8B88();
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B353F8);
    }
  }
}

uint64_t sub_2140820BC()
{
  result = sub_2146D8B88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_214082138(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_2146D9D38();
  if (v2 <= 0x3F)
  {
    sub_214082824();
    if (v3 <= 0x3F)
    {
      sub_21408202C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2140821E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2146D8B88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v8 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v8;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v13;
  }

  if (v7)
  {
    v15 = *(v6 + 64);
  }

  else
  {
    v15 = *(v6 + 64) + 1;
  }

  v16 = *(v10 + 80);
  v17 = 1;
  if (!v11)
  {
    v17 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_38;
  }

  v18 = v17 + *(*(v9 - 8) + 64) + ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 48) & ~v16);
  v19 = 8 * v18;
  if (v18 > 3)
  {
    goto LABEL_20;
  }

  v21 = ((a2 - v14 + ~(-1 << v19)) >> v19) + 1;
  if (HIWORD(v21))
  {
    v20 = *(a1 + v18);
    if (v20)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v21 <= 0xFF)
    {
      if (v21 < 2)
      {
        goto LABEL_38;
      }

LABEL_20:
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_38;
      }

LABEL_27:
      v22 = (v20 - 1) << v19;
      if (v18 > 3)
      {
        v22 = 0;
      }

      if (v18)
      {
        if (v18 > 3)
        {
          LODWORD(v18) = 4;
        }

        if (v18 > 2)
        {
          if (v18 == 3)
          {
            LODWORD(v18) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v18) = *a1;
          }
        }

        else if (v18 == 1)
        {
          LODWORD(v18) = *a1;
        }

        else
        {
          LODWORD(v18) = *a1;
        }
      }

      return v14 + (v18 | v22) + 1;
    }

    v20 = *(a1 + v18);
    if (*(a1 + v18))
    {
      goto LABEL_27;
    }
  }

LABEL_38:
  if (v8 == v14)
  {
    if (v7 >= 2)
    {
      v23 = (*(v6 + 48))(a1, v7, v5);
      goto LABEL_50;
    }

    return 0;
  }

  v24 = (a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v13 > 0x7FFFFFFE)
  {
    if (v11 >= 2)
    {
      v23 = (*(v10 + 48))((v24 + v16 + 48) & ~v16);
LABEL_50:
      if (v23 >= 2)
      {
        return v23 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v25 = *(v24 + 8);
  if (v25 >= 0xFFFFFFFF)
  {
    LODWORD(v25) = -1;
  }

  if ((v25 + 1) >= 2)
  {
    return v25;
  }

  else
  {
    return 0;
  }
}

double sub_21408248C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  v12 = *(sub_2146D8B88() - 8);
  v14 = *(v12 + 84);
  v15 = *(v8 + 64);
  if (v14)
  {
    v16 = v14 - 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v12 + 80);
  v18 = *(v12 + 64);
  if (v10 <= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v10;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v20 = 2147483646;
  }

  else
  {
    v20 = v19;
  }

  if (!v9)
  {
    ++v15;
  }

  if (!v14)
  {
    ++v18;
  }

  v21 = v18 + ((v17 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 48) & ~v17) + 1;
  if (a3 <= v20)
  {
    goto LABEL_28;
  }

  if (v21 <= 3)
  {
    v22 = ((a3 - v20 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v22))
    {
      v11 = 4;
      if (v20 >= a2)
      {
        goto LABEL_38;
      }

      goto LABEL_29;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v11 = v23;
    }

    else
    {
      v11 = 0;
    }

LABEL_28:
    if (v20 >= a2)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  v11 = 1;
  if (v20 >= a2)
  {
LABEL_38:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_45;
      }

      *&a1[v21] = 0;
    }

    else if (v11)
    {
      a1[v21] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_45;
    }

    if (!a2)
    {
      return result;
    }

LABEL_45:
    if (v10 == v20)
    {
      v27 = *(v30 + 56);

      v27(a1, a2 + 1, v9, v7);
    }

    else
    {
      v28 = &a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8;
      if (v19 > 0x7FFFFFFE)
      {
        if (v14 >= 2)
        {
          v29 = *(v12 + 56);

          v29((v28 + v17 + 48) & ~v17, a2 + 1);
        }
      }

      else if (a2 > 0x7FFFFFFE)
      {
        result = 0.0;
        *(v28 + 16) = 0u;
        *(v28 + 32) = 0u;
        *v28 = 0u;
        *v28 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *(v28 + 8) = a2;
      }
    }

    return result;
  }

LABEL_29:
  v24 = ~v20 + a2;
  if (v21 >= 4)
  {
    bzero(a1, v21);
    *a1 = v24;
    v25 = 1;
    if (v11 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v25 = (v24 >> (8 * v21)) + 1;
  if (!v21)
  {
LABEL_59:
    if (v11 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v26 = v24 & ~(-1 << (8 * v21));
  bzero(a1, v21);
  if (v21 == 3)
  {
    *a1 = v26;
    a1[2] = BYTE2(v26);
    goto LABEL_59;
  }

  if (v21 == 2)
  {
    *a1 = v26;
    if (v11 > 1)
    {
LABEL_63:
      if (v11 == 2)
      {
        *&a1[v21] = v25;
      }

      else
      {
        *&a1[v21] = v25;
      }

      return result;
    }
  }

  else
  {
    *a1 = v24;
    if (v11 > 1)
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v11)
  {
    a1[v21] = v25;
  }

  return result;
}