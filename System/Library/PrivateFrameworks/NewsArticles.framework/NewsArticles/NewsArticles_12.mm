id sub_1D7ACA574()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  v4 = (v0 + *(v3 + 0x78));
  if (*v4)
  {
    v5 = v4[1];
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(ObjectType, v5);
    v3 = *v2 & *v0;
  }

  v7 = *(v0 + *(v3 + 112));
  if (qword_1EE0BB508 != -1)
  {
    v13 = *(v0 + *(v3 + 112));
    swift_once();
    v7 = v13;
  }

  v8 = qword_1EE0DE480;
  [v7 setArtwork_];
  v9 = *(v1 + *((*v2 & *v1) + 0x80) + 8);
  v10 = swift_getObjectType();
  (*(v9 + 16))(v10, v9);
  v11 = *(v1 + *((*v2 & *v1) + 0xB8));

  return [v11 setArtwork_];
}

uint64_t sub_1D7ACA6F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & v6) + 0x50);
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v58 = &v50 - v10;
  v11 = MEMORY[0x1E69D7B70];
  v12 = MEMORY[0x1E69E6720];
  sub_1D7AD2C74(0, &qword_1EE0BB2D8, MEMORY[0x1E69D7B70], MEMORY[0x1E69E6720]);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = &v50 - v16;
  v18 = v7 & v6;
  v19 = a2;
  v20 = *(v18 + 88);
  v56 = *(v20 + 56);
  v57 = v20 + 56;
  v21 = v56(v8, v20, v15);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v54 = *(v20 + 64);
  v55 = v20 + 64;
  v54(v8, v20);
  sub_1D7AC6E88();
  v59 = a1;
  sub_1D7ACDBB4(a1, v17, &v61, v21, v23, v25, v27, v28, v29, 16.0);
  sub_1D7AD2CD8(v17, &qword_1EE0BB2D8, v11, v12, sub_1D7AD2C74);
  v53 = v9;
  if (v62)
  {
    sub_1D799D69C(&v61, v63);
    v30 = (v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xA0));
    v51 = v30[3];
    v52 = v30[4];
    v50 = __swift_project_boxed_opaque_existential_1(v30, v51);
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = v60;
    v33 = v58;
    (*(v60 + 16))(v58, v19, v8);
    v34 = (*(v32 + 80) + 40) & ~*(v32 + 80);
    v35 = swift_allocObject();
    *(v35 + 2) = v8;
    *(v35 + 3) = v20;
    *(v35 + 4) = v31;
    (*(v32 + 32))(&v35[v34], v33, v8);

    sub_1D7D2A05C();

    __swift_destroy_boxed_opaque_existential_1(v63);

    v36 = v33;
  }

  else
  {
    sub_1D7AD35D8(&v61, &qword_1EC9E3E30, &qword_1EC9E3E38, MEMORY[0x1E69D8160]);
    v36 = v58;
  }

  v37 = (v56)(v8, v20);
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v54(v8, v20);
  sub_1D7ACB5D4(v59, v17, 1, &v61, v37, v39, v41, v43);
  sub_1D7AD2CD8(v17, &qword_1EE0BB2D8, MEMORY[0x1E69D7B70], MEMORY[0x1E69E6720], sub_1D7AD2C74);
  if (!v62)
  {
    return sub_1D7AD35D8(&v61, &qword_1EC9E3E30, &qword_1EC9E3E38, MEMORY[0x1E69D8160]);
  }

  sub_1D799D69C(&v61, v63);
  v44 = (v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xA0));
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v60;
  (*(v60 + 16))(v36, v19, v8);
  v47 = (*(v46 + 80) + 40) & ~*(v46 + 80);
  v48 = swift_allocObject();
  *(v48 + 2) = v8;
  *(v48 + 3) = v20;
  *(v48 + 4) = v45;
  (*(v46 + 32))(&v48[v47], v36, v8);

  sub_1D7D2A05C();

  __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_1D7ACACC4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v47 = MEMORY[0x1E69D7B70];
  v45 = MEMORY[0x1E69E6720];
  sub_1D7AD2C74(0, &qword_1EE0BB2D8, MEMORY[0x1E69D7B70], MEMORY[0x1E69E6720]);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v44 - v9;
  v11 = *((v5 & v4) + 0x58);
  v12 = *((v5 & v4) + 0x50);
  v13 = (*(v11 + 16))(v12, v11, v8);
  sub_1D7B6CF60([v13 thumbnailLQ], v60);
  sub_1D7B6CF60([v13 thumbnail], &v61);
  sub_1D7B6CF60([v13 thumbnailMedium], &v62);
  sub_1D7B6CF60([v13 thumbnailHQ], &v63);
  sub_1D7B6CF60([v13 thumbnailUltraHQ], &v64);
  swift_unknownObjectRelease();
  sub_1D7AC6E88();
  v14 = objc_opt_self();
  v15 = [v14 mainScreen];
  [v15 scale];

  HeadlineThumbnail.assetHandle(with:scale:)(v59);
  v16 = *(v11 + 64);
  v46 = a1;
  v16(v12, v11);
  v17 = sub_1D7D2A9EC();
  v18 = (*(*(v17 - 8) + 48))(v10, 1, v17);
  sub_1D7AD2CD8(v10, &qword_1EE0BB2D8, v47, v45, sub_1D7AD2C74);
  sub_1D7AC6E88();
  v47 = v14;
  v19 = [v14 mainScreen];
  [v19 scale];

  HeadlineThumbnail.onDiskAssetHandle(with:scale:)(&v55);
  if (v56)
  {
    sub_1D799D69C(&v55, v58);
  }

  else
  {
    sub_1D7AD3694(v59, v58, &qword_1EE0BB328, &qword_1EE0BB330, MEMORY[0x1E69D7838]);
    if (v56)
    {
      sub_1D7AD35D8(&v55, &qword_1EE0BB328, &qword_1EE0BB330, MEMORY[0x1E69D7838]);
    }
  }

  v20 = v46;
  if (v59[3])
  {
    if (v18 == 1)
    {
      sub_1D7AD3694(v58, &v55, &qword_1EE0BB328, &qword_1EE0BB330, MEMORY[0x1E69D7838]);
      if (v56)
      {
        __swift_project_boxed_opaque_existential_1(&v55, v56);
        sub_1D7D2A1FC();
        v22 = v21;
        __swift_destroy_boxed_opaque_existential_1(&v55);
        if (v22)
        {
          v23 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
          v24 = sub_1D7D3031C();

          v25 = [v23 initWithContentsOfFile_];

          if (v25)
          {
            v26 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x78));
            if (*v26)
            {
              v27 = v26[1];
              ObjectType = swift_getObjectType();
              (*(v27 + 8))(v25, ObjectType, v27);
            }
          }
        }
      }

      else
      {
        sub_1D7AD35D8(&v55, &qword_1EE0BB328, &qword_1EE0BB330, MEMORY[0x1E69D7838]);
      }
    }
  }

  else
  {
    v29 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x78));
    if (*v29)
    {
      v30 = v29[1];
      v31 = swift_getObjectType();
      sub_1D7D301EC();
      v32 = sub_1D7D301BC();
      (*(v30 + 8))(v32, v31, v30);
    }
  }

  sub_1D7AD3694(v58, &v53, &qword_1EE0BB328, &qword_1EE0BB330, MEMORY[0x1E69D7838]);
  if (v54)
  {
    sub_1D799D69C(&v53, &v55);
  }

  else if (qword_1EC9DFDD0 == -1)
  {
    v33 = qword_1EC9E3D60;
    v56 = sub_1D7D2A5BC();
    v57 = MEMORY[0x1E69D79C0];
    *&v55 = v33;
  }

  else
  {
    swift_once();
    v40 = v54;
    v41 = qword_1EC9E3D60;
    v56 = sub_1D7D2A5BC();
    v57 = MEMORY[0x1E69D79C0];
    *&v55 = v41;

    if (v40)
    {
      sub_1D7AD35D8(&v53, &qword_1EE0BB328, &qword_1EE0BB330, MEMORY[0x1E69D7838]);
    }
  }

  sub_1D7ACC324(&v55, v59, v20, 0);
  v34 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xB8));
  [v34 artworkSize];
  v35 = [v47 mainScreen];
  [v35 &selRef_scrollViewIsAtTop_offset_];

  HeadlineThumbnail.onDiskAssetHandle(with:scale:)(&v50);
  if (v51)
  {
    sub_1D799D69C(&v50, &v53);
  }

  else
  {
    sub_1D7AD3694(v59, &v53, &qword_1EE0BB328, &qword_1EE0BB330, MEMORY[0x1E69D7838]);
    if (v51)
    {
      sub_1D7AD35D8(&v50, &qword_1EE0BB328, &qword_1EE0BB330, MEMORY[0x1E69D7838]);
    }
  }

  sub_1D7AD3694(&v53, &v48, &qword_1EE0BB328, &qword_1EE0BB330, MEMORY[0x1E69D7838]);
  if (v49)
  {
    sub_1D799D69C(&v48, &v50);
  }

  else if (qword_1EC9DFDD0 == -1)
  {
    v36 = qword_1EC9E3D60;
    v51 = sub_1D7D2A5BC();
    v52 = MEMORY[0x1E69D79C0];
    *&v50 = v36;
  }

  else
  {
    swift_once();
    v42 = v49;
    v43 = qword_1EC9E3D60;
    v51 = sub_1D7D2A5BC();
    v52 = MEMORY[0x1E69D79C0];
    *&v50 = v43;

    if (v42)
    {
      sub_1D7AD35D8(&v48, &qword_1EE0BB328, &qword_1EE0BB330, MEMORY[0x1E69D7838]);
    }
  }

  [v34 artworkSize];
  v37 = [v47 mainScreen];
  [v37 &selRef_scrollViewIsAtTop_offset_];

  HeadlineThumbnail.assetHandle(with:scale:)(&v48);
  sub_1D7ACC324(&v50, &v48, v20, 1);
  v38 = MEMORY[0x1E69D7838];
  sub_1D7AD35D8(&v48, &qword_1EE0BB328, &qword_1EE0BB330, MEMORY[0x1E69D7838]);
  sub_1D7AD35D8(&v53, &qword_1EE0BB328, &qword_1EE0BB330, v38);
  sub_1D7AD35D8(v58, &qword_1EE0BB328, &qword_1EE0BB330, v38);
  sub_1D7AD3094(v60);
  __swift_destroy_boxed_opaque_existential_1(&v50);
  __swift_destroy_boxed_opaque_existential_1(&v55);
  return sub_1D7AD35D8(v59, &qword_1EE0BB328, &qword_1EE0BB330, v38);
}

uint64_t sub_1D7ACB5D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v14 = result;
  if (a3)
  {
    if (*(v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x78)))
    {
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }

    [*(v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0xB8)) artworkSize];
    v17 = v21;
    v19 = v22;
    v20 = 5.0;
  }

  else
  {
    sub_1D7AC6E88();
    v17 = v16;
    v19 = v18;
    v20 = 16.0;
  }

  return sub_1D7ACDBB4(v14, a2, a4, a5, a6, a7, a8, v17, v19, v20);
}

void sub_1D7ACB700(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v64 = a2;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7D3130C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v63 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v12);
  v14 = &v56 - v13;
  v15 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v65 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v56 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v24 = Strong;
  v56 = a5;
  v57 = a3;
  (*(v8 + 16))(v22, v64, a4);
  (*(v8 + 56))(v22, 0, 1, a4);
  v25 = *MEMORY[0x1E69E7D40] & *v24;
  v61 = a4;
  v26 = *(v25 + 176);
  swift_beginAccess();
  v58 = TupleTypeMetadata2;
  v27 = v8;
  v28 = *(TupleTypeMetadata2 + 48);
  v29 = *(v15 + 16);
  v29(v14, v22, v10);
  v62 = v28;
  v64 = v24;
  v30 = &v24[v26];
  v31 = v61;
  v29(&v14[v28], v30, v10);
  v59 = v27;
  v32 = *(v27 + 48);
  if (v32(v14, 1, v31) == 1)
  {
    v33 = *(v15 + 8);
    v33(v22, v10);
    if (v32(&v14[v62], 1, v31) == 1)
    {
      v33(v14, v10);
      goto LABEL_10;
    }

LABEL_8:
    (*(v63 + 8))(v14, v58);
    return;
  }

  v29(v65, v14, v10);
  v34 = v62;
  if (v32(&v14[v62], 1, v31) == 1)
  {

    (*(v15 + 8))(v22, v10);
    (*(v59 + 8))(v65, v31);
    goto LABEL_8;
  }

  v35 = v14;
  v36 = v59;
  v37 = &v14[v34];
  v38 = v60;
  (*(v59 + 32))(v60, v37, v31);
  v39 = v65;
  v40 = sub_1D7D3030C();
  v41 = *(v36 + 8);
  v41(v38, v31);
  v42 = *(v15 + 8);
  v42(v22, v10);
  v41(v39, v31);
  v42(v35, v10);
  if ((v40 & 1) == 0)
  {
LABEL_14:

    return;
  }

LABEL_10:
  v43 = v64;
  if (!v57)
  {
    goto LABEL_14;
  }

  v44 = MEMORY[0x1E69E7D40];
  v45 = *&v64[*((*MEMORY[0x1E69E7D40] & *v64) + 0x70)];
  v46 = v57;
  [v45 setArtwork_];
  v47 = v43 + *((*v44 & *v43) + 0x80);
  v48 = *v47;
  v49 = *(v47 + 1);
  ObjectType = swift_getObjectType();
  v51 = *(v49 + 8);
  v52 = v48;
  v51(v46, ObjectType, v49);

  v53 = (v43 + *((*v44 & *v43) + 0x78));
  if (*v53)
  {
    v54 = v53[1];
    v55 = swift_getObjectType();
    (*(v54 + 8))(v46, v55, v54);
  }
}

uint64_t sub_1D7ACBCCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1, a4);
  (*(v10 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v13 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a5;
  *(v14 + 3) = a6;
  *(v14 + 4) = a3;
  (*(v10 + 32))(&v14[v13], &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
  *&v14[(v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8] = a1;
  v15 = a1;

  sub_1D7D294EC();
}

void sub_1D7ACBE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a2;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v50 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7D3130C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v12);
  v14 = &v46 - v13;
  v15 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v55 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v46 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v46 = a5;
    v47 = a3;
    (*(v8 + 16))(v22, v54, a4);
    (*(v8 + 56))(v22, 0, 1, a4);
    v25 = *MEMORY[0x1E69E7D40] & *v24;
    v51 = a4;
    v26 = *(v25 + 176);
    swift_beginAccess();
    v48 = TupleTypeMetadata2;
    v27 = v8;
    v28 = *(TupleTypeMetadata2 + 48);
    v29 = v14;
    v30 = *(v15 + 16);
    v30(v29, v22, v10);
    v54 = v28;
    v52 = v24;
    v31 = v24 + v26;
    v32 = v51;
    v30(&v29[v28], v31, v10);
    v49 = v27;
    v33 = *(v27 + 48);
    if (v33(v29, 1, v32) == 1)
    {
      v34 = *(v15 + 8);
      v34(v22, v10);
      if (v33(&v29[v54], 1, v32) == 1)
      {
        v34(v29, v10);
        v35 = v52;
        goto LABEL_10;
      }
    }

    else
    {
      v36 = v22;
      v30(v55, v29, v10);
      v37 = v54;
      if (v33(&v29[v54], 1, v32) != 1)
      {
        v38 = v29;
        v39 = v49;
        v40 = &v29[v37];
        v41 = v50;
        (*(v49 + 32))(v50, v40, v32);
        v42 = v55;
        v43 = sub_1D7D3030C();
        v44 = *(v39 + 8);
        v44(v41, v32);
        v45 = *(v15 + 8);
        v45(v36, v10);
        v44(v42, v32);
        v45(v38, v10);
        v35 = v52;
        if ((v43 & 1) == 0)
        {
LABEL_12:

          return;
        }

LABEL_10:
        if (v47)
        {
          [*(v35 + *((*MEMORY[0x1E69E7D40] & *v35) + 0xB8)) setArtwork_];
        }

        goto LABEL_12;
      }

      (*(v15 + 8))(v22, v10);
      (*(v49 + 8))(v55, v32);
    }

    (*(v53 + 8))(v29, v48);
  }
}

uint64_t sub_1D7ACC324(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v46 = a2;
  v9 = *v4;
  v10 = *MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & v9) + 0x50);
  v48 = *(v11 - 8);
  v47 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v50 = &v41[-v12];
  v13 = MEMORY[0x1E69D7B70];
  v14 = MEMORY[0x1E69E6720];
  sub_1D7AD2C74(0, &qword_1EE0BB2D8, MEMORY[0x1E69D7B70], MEMORY[0x1E69E6720]);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v19 = &v41[-v18];
  v20 = *((v10 & v9) + 0x58);
  v21 = (*(v20 + 56))(v11, v20, v17);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  (*(v20 + 64))(v11, v20);
  v28 = a4 & 1;
  v49 = a1;
  sub_1D7ACB5D4(a1, v19, v28, &v52, v21, v23, v25, v27);
  sub_1D7AD2CD8(v19, &qword_1EE0BB2D8, v13, v14, sub_1D7AD2C74);
  if (!*(&v53 + 1))
  {
    return sub_1D7AD35D8(&v52, &qword_1EC9E3E30, &qword_1EC9E3E38, MEMORY[0x1E69D8160]);
  }

  sub_1D799D69C(&v52, v55);
  v29 = (v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0xA0));
  v44 = v29[3];
  v45 = v29[4];
  v43 = __swift_project_boxed_opaque_existential_1(v29, v44);
  v30 = swift_allocObject();
  v42 = v28;
  v31 = v30;
  swift_unknownObjectWeakInit();
  v32 = v48;
  v33 = v50;
  (*(v48 + 16))(v50, a3, v11);
  sub_1D7AD3694(v46, &v52, &qword_1EE0BB328, &qword_1EE0BB330, MEMORY[0x1E69D7838]);
  sub_1D799CC84(v49, v51);
  v34 = (*(v32 + 80) + 40) & ~*(v32 + 80);
  v35 = v34 + v47;
  v36 = (((v34 + v47) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 2) = v11;
  *(v37 + 3) = v20;
  *(v37 + 4) = v31;
  (*(v32 + 32))(&v37[v34], v33, v11);
  v37[v35] = v42;
  v38 = &v37[v35 & 0xFFFFFFFFFFFFFFF8];
  *(v38 + 5) = v54;
  v39 = v52;
  *(v38 + 24) = v53;
  *(v38 + 8) = v39;
  sub_1D799D69C(v51, &v37[v36]);

  sub_1D7D2A05C();

  __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_1D7ACC760(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a5;
  v24 = a3;
  v13 = *(a8 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1, a4);
  (*(v13 + 16))(&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  sub_1D7AD3694(a6, v27, &qword_1EE0BB328, &qword_1EE0BB330, MEMORY[0x1E69D7838]);
  sub_1D799CC84(a7, v26);
  v16 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v17 = (v16 + v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = a8;
  *(v18 + 3) = a9;
  *(v18 + 4) = v24;
  (*(v13 + 32))(&v18[v16], &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a8);
  v19 = &v18[(v16 + v14 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v19 = a1;
  v19[8] = v25 & 1;
  v20 = &v18[v17];
  *(v20 + 4) = v28;
  v21 = v27[1];
  *v20 = v27[0];
  *(v20 + 1) = v21;
  sub_1D799D69C(v26, &v18[(v17 + 47) & 0xFFFFFFFFFFFFFFF8]);
  v22 = a1;

  sub_1D7D294EC();
}

void sub_1D7ACC94C(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v104 = a8;
  v100 = a6;
  v103 = a5;
  v102 = a4;
  sub_1D7AD2C74(0, &qword_1EE0BB2D8, MEMORY[0x1E69D7B70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v99 = v92 - v14;
  v15 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v98 = v18;
  v101 = v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D7D3130C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v105 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v21);
  v23 = v92 - v22;
  v108 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v107 = v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v92 - v29;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v95 = a3;
    v93 = a1;
    v33 = *(v15 + 16);
    v94 = a2;
    v92[1] = v15 + 16;
    v92[0] = v33;
    v33(v30, a2, a7);
    (*(v15 + 56))(v30, 0, 1, a7);
    v34 = *((*MEMORY[0x1E69E7D40] & *v32) + 0xB0);
    swift_beginAccess();
    v35 = v15;
    v96 = TupleTypeMetadata2;
    v36 = *(TupleTypeMetadata2 + 48);
    v37 = a7;
    v38 = *(v108 + 16);
    v38(v23, v30, v19);
    v106 = v32;
    v38(&v23[v36], v32 + v34, v19);
    v97 = v35;
    v39 = *(v35 + 48);
    if (v39(v23, 1, v37) == 1)
    {
      v40 = *(v108 + 8);
      v40(v30, v19);
      if (v39(&v23[v36], 1, v37) == 1)
      {
        v41 = v37;
        v40(v23, v19);
        v42 = v106;
        goto LABEL_10;
      }
    }

    else
    {
      v43 = v108;
      v38(v107, v23, v19);
      v44 = v37;
      if (v39(&v23[v36], 1, v37) != 1)
      {
        v45 = v97;
        v46 = v101;
        (*(v97 + 32))(v101, &v23[v36], v44);
        v47 = v107;
        LODWORD(v105) = sub_1D7D3030C();
        v48 = *(v45 + 8);
        v48(v46, v44);
        v49 = *(v43 + 8);
        v49(v30, v19);
        v50 = v47;
        v41 = v44;
        v48(v50, v44);
        v49(v23, v19);
        v42 = v106;
        if ((v105 & 1) == 0)
        {

          return;
        }

LABEL_10:
        v51 = v95;
        v52 = MEMORY[0x1E69E7D40];
        if (v95)
        {
          if (v102)
          {
            [*(v42 + *((*MEMORY[0x1E69E7D40] & *v42) + 0xB8)) setArtwork_];
          }

          else
          {
            v53 = *(v42 + *((*MEMORY[0x1E69E7D40] & *v42) + 0x70));
            v54 = v95;
            [v53 setArtwork_];
            v55 = v42 + *((*v52 & *v42) + 0x80);
            v56 = *v55;
            v57 = *(v55 + 1);
            ObjectType = swift_getObjectType();
            v59 = *(v57 + 8);
            v60 = v56;
            v59(v54, ObjectType, v57);
            v42 = v106;

            v61 = (v42 + *((*v52 & *v42) + 0x78));
            if (*v61)
            {
              v62 = v61[1];
              v63 = swift_getObjectType();
              (*(v62 + 8))(v54, v63, v62);
            }
          }
        }

        sub_1D7AD3694(v103, &v111, &qword_1EE0BB328, &qword_1EE0BB330, MEMORY[0x1E69D7838]);
        if (!v112)
        {

          sub_1D7AD35D8(&v111, &qword_1EE0BB328, &qword_1EE0BB330, MEMORY[0x1E69D7838]);
          return;
        }

        sub_1D799D69C(&v111, v113);
        __swift_project_boxed_opaque_existential_1(v100, v100[3]);
        v64 = sub_1D7D2A1FC();
        v66 = v65;
        __swift_project_boxed_opaque_existential_1(v113, v113[3]);
        v67 = sub_1D7D2A1FC();
        if (v66)
        {
          if (v68)
          {
            if (v64 == v67 && v66 == v68)
            {

LABEL_31:
              __swift_destroy_boxed_opaque_existential_1(v113);
              return;
            }

            v91 = sub_1D7D3197C();

            if (v91)
            {
LABEL_30:

              goto LABEL_31;
            }

LABEL_26:
            v69 = v104;
            v70 = v94;
            v71 = (*(v104 + 56))(v41, v104);
            v73 = v72;
            v75 = v74;
            v77 = v76;
            v78 = v99;
            (*(v69 + 64))(v41, v69);
            v79 = v102 & 1;
            sub_1D7ACB5D4(v113, v78, v102 & 1, &v109, v71, v73, v75, v77);
            sub_1D7AD2CD8(v78, &qword_1EE0BB2D8, MEMORY[0x1E69D7B70], MEMORY[0x1E69E6720], sub_1D7AD2C74);
            if (v110)
            {
              sub_1D799D69C(&v109, &v111);
              v80 = (v42 + *((*MEMORY[0x1E69E7D40] & *v42) + 0xA0));
              v81 = v80[3];
              v108 = v80[4];
              __swift_project_boxed_opaque_existential_1(v80, v81);
              v82 = v101;
              (v92[0])(v101, v70, v41);
              v83 = v97;
              v84 = (*(v97 + 80) + 40) & ~*(v97 + 80);
              v85 = (v98 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
              v86 = swift_allocObject();
              v87 = v41;
              v88 = v86;
              v86[2] = v87;
              v86[3] = v69;
              v86[4] = v93;
              (*(v83 + 32))(v86 + v84, v82);
              v89 = v88 + v85;
              *v89 = v51;
              v89[8] = v79;
              v90 = v51;

              sub_1D7D2A05C();

              __swift_destroy_boxed_opaque_existential_1(&v111);
            }

            else
            {

              sub_1D7AD35D8(&v109, &qword_1EC9E3E30, &qword_1EC9E3E38, MEMORY[0x1E69D8160]);
            }

            goto LABEL_31;
          }
        }

        else if (!v68)
        {
          goto LABEL_30;
        }

        goto LABEL_26;
      }

      (*(v43 + 8))(v30, v19);
      (*(v97 + 8))(v107, v37);
    }

    (*(v105 + 8))(v23, v96);
  }
}

uint64_t sub_1D7ACD424(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8)
{
  v24 = a8;
  v25 = a6;
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1, a4);
  v15 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v14);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = v24;
  *(v18 + 2) = a7;
  *(v18 + 3) = v19;
  *(v18 + 4) = a3;
  (*(v12 + 32))(&v18[v16], v15, a7);
  *&v18[v17] = a1;
  v20 = &v18[(v17 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v20 = a5;
  v20[8] = v25 & 1;
  v21 = a5;

  v22 = a1;
  sub_1D7D294EC();
}

void sub_1D7ACD5B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v56 = a7;
  v58 = a2;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v55 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1D7D3130C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v57 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v15);
  v17 = &v50[-v16];
  v60 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v59 = &v50[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v50[-v23];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v26 = Strong;
  v51 = a5;
  v52 = a4;
  v53 = a3;
  (*(v11 + 16))(v24, v58, a6);
  (*(v11 + 56))(v24, 0, 1, a6);
  v27 = *((*MEMORY[0x1E69E7D40] & *v26) + 0xB0);
  swift_beginAccess();
  v54 = TupleTypeMetadata2;
  v28 = *(TupleTypeMetadata2 + 48);
  v29 = *(v60 + 16);
  v29(v17, v24, v13);
  v29(&v17[v28], v26 + v27, v13);
  v58 = v11;
  v30 = *(v11 + 48);
  if (v30(v17, 1, a6) == 1)
  {
    v31 = *(v60 + 8);
    v31(v24, v13);
    if (v30(&v17[v28], 1, a6) == 1)
    {
      v31(v17, v13);
      goto LABEL_10;
    }

LABEL_8:
    (*(v57 + 8))(v17, v54);
    return;
  }

  v29(v59, v17, v13);
  if (v30(&v17[v28], 1, a6) == 1)
  {

    (*(v60 + 8))(v24, v13);
    (*(v58 + 8))(v59, a6);
    goto LABEL_8;
  }

  v32 = v58;
  v33 = v55;
  (*(v58 + 32))(v55, &v17[v28], a6);
  v34 = v59;
  LODWORD(v57) = sub_1D7D3030C();
  v35 = *(v32 + 8);
  v35(v33, a6);
  v36 = *(v60 + 8);
  v36(v24, v13);
  v35(v34, a6);
  v36(v17, v13);
  if ((v57 & 1) == 0)
  {
LABEL_13:

    return;
  }

LABEL_10:
  if (!v53)
  {
    goto LABEL_13;
  }

  v37 = MEMORY[0x1E69E7D40];
  if (v51)
  {
    [*(v26 + *((*MEMORY[0x1E69E7D40] & *v26) + 0xB8)) setArtwork_animated_];
    goto LABEL_13;
  }

  v38 = v52 == 0;
  v39 = *(v26 + *((*MEMORY[0x1E69E7D40] & *v26) + 0x70));
  v40 = v53;
  [v39 setArtwork:v40 animated:v38];
  v41 = v26 + *((*v37 & *v26) + 0x80);
  v42 = *v41;
  v43 = *(v41 + 1);
  ObjectType = swift_getObjectType();
  v45 = *(v43 + 8);
  v46 = v42;
  v45(v40, ObjectType, v43);

  v47 = (v26 + *((*v37 & *v26) + 0x78));
  if (*v47)
  {
    v48 = v47[1];
    v49 = swift_getObjectType();
    (*(v48 + 8))(v40, v49, v48);
  }
}

uint64_t sub_1D7ACDBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>)
{
  v117 = a1;
  v118 = a3;
  v18 = sub_1D7D29CBC();
  v115 = *(v18 - 8);
  v116 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v114 = v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1D7D2B83C();
  v119 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v21);
  v23 = v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v99 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v113 = (v99 - v30);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = (v99 - v33);
  sub_1D7AD2C74(0, &qword_1EE0BB2D8, MEMORY[0x1E69D7B70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v38 = v99 - v37;
  v39 = sub_1D7D2A9EC();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v41);
  v43 = v99 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AD2E04(a2, v38);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_1D7AD2CD8(v38, &qword_1EE0BB2D8, MEMORY[0x1E69D7B70], MEMORY[0x1E69E6720], sub_1D7AD2C74);
    v45 = *MEMORY[0x1E69D82A0];
    v46 = MEMORY[0x1E69E7CC0];
    v47 = v117;
    v48 = v118;
    v49 = v112;
  }

  else
  {
    v104 = v27;
    v110 = v40;
    v50 = *(v40 + 32);
    v109 = v43;
    v111 = v39;
    v50(v43, v38, v39);
    sub_1D7AD2E98(0, v51);
    v53 = *(v52 + 112);
    *v34 = a8;
    v34[1] = a9;
    v34[2] = a4;
    v34[3] = a5;
    v34[4] = a6;
    v34[5] = a7;
    v54 = [objc_opt_self() mainScreen];
    [v54 scale];
    v56 = v55;

    *(v34 + 6) = v56;
    v57 = sub_1D7D29CDC();
    v34[7] = 0.0;
    v34[8] = 0.0;
    (*(*(v57 - 8) + 56))(v34 + v53, 1, 1, v57);
    v58 = v119;
    v60 = v119 + 104;
    v59 = *(v119 + 104);
    v103 = *MEMORY[0x1E69D82A0];
    v61 = v112;
    v108 = v59;
    v59(v34);
    v46 = sub_1D79E49F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v63 = *(v46 + 2);
    v62 = *(v46 + 3);
    if (v63 >= v62 >> 1)
    {
      v46 = sub_1D79E49F4(v62 > 1, v63 + 1, 1, v46);
    }

    *(v46 + 2) = v63 + 1;
    v65 = *(v58 + 32);
    v64 = v58 + 32;
    v106 = (*(v64 + 48) + 32) & ~*(v64 + 48);
    v105 = *(v64 + 40);
    v107 = v65;
    v65(&v46[v106 + v105 * v63], v34, v61);
    v66 = [objc_opt_self() blackColor];
    v67 = [v66 colorWithAlphaComponent_];

    v68 = v113;
    *v113 = v67;
    *(v68 + 2) = 0;
    v69 = *MEMORY[0x1E69D82B8];
    v70 = sub_1D7D2B85C();
    v71 = *(v70 - 8);
    v100 = *(v71 + 104);
    v99[1] = v71 + 104;
    v100(v68, v69, v70);
    v72 = *MEMORY[0x1E69D8298];
    v49 = v61;
    v102 = v60;
    v108(v68, v72, v61);
    v74 = *(v46 + 2);
    v73 = *(v46 + 3);
    v75 = v109;
    if (v74 >= v73 >> 1)
    {
      v46 = sub_1D79E49F4(v73 > 1, v74 + 1, 1, v46);
    }

    v76 = v110;
    v101 = v74 + 1;
    *(v46 + 2) = v74 + 1;
    v107(&v46[v106 + v74 * v105], v113, v61);
    sub_1D7AD3024();
    v78 = *(v77 + 48);
    v79 = *(v76 + 16);
    v80 = v104;
    v79(v104, v75, v111);
    v81 = *MEMORY[0x1E69D87B8];
    v82 = sub_1D7D2C61C();
    (*(*(v82 - 8) + 104))(v80, v81, v82);
    *&v80[v78] = 2;
    v100(v80, *MEMORY[0x1E69D82C0], v70);
    v108(v80, v72, v49);
    v83 = *(v46 + 3);
    if ((v74 + 2) > (v83 >> 1))
    {
      v46 = sub_1D79E49F4(v83 > 1, v74 + 2, 1, v46);
    }

    v84 = v117;
    (*(v110 + 8))(v109, v111);
    *(v46 + 2) = v74 + 2;
    v107(&v46[v106 + v101 * v105], v80, v49);
    v48 = v118;
    v45 = v103;
    v47 = v84;
  }

  sub_1D7AD2E98(0, v44);
  v86 = *(v85 + 112);
  *v23 = a8;
  *(v23 + 1) = a9;
  *(v23 + 2) = a4;
  *(v23 + 3) = a5;
  *(v23 + 4) = a6;
  *(v23 + 5) = a7;
  v87 = [objc_opt_self() mainScreen];
  [v87 scale];
  v89 = v88;

  *(v23 + 6) = v89;
  *(v23 + 7) = -1;
  *(v23 + 8) = a10;
  v90 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.15 alpha:1.0];
  v91 = [v90 CGColor];

  (*(v115 + 104))(v114, *MEMORY[0x1E69D75E0], v116);
  sub_1D7D29CCC();
  v92 = sub_1D7D29CDC();
  (*(*(v92 - 8) + 56))(&v23[v86], 0, 1, v92);
  v93 = v119;
  (*(v119 + 104))(v23, v45, v49);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v46 = sub_1D79E49F4(0, *(v46 + 2) + 1, 1, v46);
  }

  v95 = *(v46 + 2);
  v94 = *(v46 + 3);
  if (v95 >= v94 >> 1)
  {
    v46 = sub_1D79E49F4(v94 > 1, v95 + 1, 1, v46);
  }

  *(v46 + 2) = v95 + 1;
  (*(v93 + 32))(&v46[((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v95], v23, v49);
  sub_1D799CC84(v47, v120);
  v96 = sub_1D7D2B86C();
  swift_allocObject();
  result = sub_1D7D2B84C();
  v98 = MEMORY[0x1E69D82C8];
  v48[3] = v96;
  v48[4] = v98;
  *v48 = result;
  return result;
}

uint64_t sub_1D7ACE5E8()
{
  v1 = type metadata accessor for AudioPlaybackState();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13[-1] - v4;
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D7D28EDC();
  AudioPlaybackState.playbackRate.getter(v1, v13);
  (*(v2 + 8))(v5, v1);
  sub_1D7992EFC(0, &qword_1EE0BAF70);
  for (i = 0; i != 6; ++i)
  {
    HIBYTE(v12) = byte_1F529A840[i + 32];
    v7 = HIBYTE(v12);
    v13[0] = AudioPlaybackRate.numericDescription.getter();
    v13[1] = v8;
    MEMORY[0x1DA70DE90](38851, 0xA200000000000000);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v0;
    v10 = v0;
    sub_1D7D311EC();
    MEMORY[0x1DA70E080]();
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D7D306DC();
    }

    sub_1D7D3072C();
  }

  return v14;
}

uint64_t sub_1D7ACE8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v29 = a2;
  sub_1D7AD2B2C(0, &qword_1EE0BF668, &qword_1EE0BF670);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v30 = &v27 - v5;
  v28 = sub_1D7D2EEEC();
  v6 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D7D2F1AC();
  v10 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7D2F68C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AD2B84(0, &qword_1EE0BF670);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v27 - v23;
  v34 = dbl_1D7D4A198[v29];
  (*(v15 + 104))(v18, *MEMORY[0x1E69B63A0], v14);
  (*(v10 + 104))(v13, *MEMORY[0x1E69B6178], v27);
  v32 = 0u;
  v33 = 0u;
  (*(v6 + 104))(v9, *MEMORY[0x1E69B6058], v28);
  v25 = v30;
  sub_1D7D2F4AC();
  sub_1D7D2A4DC();
  swift_getObjectType();
  sub_1D7D2C39C();
  (*(v21 + 16))(v25, v24, v20);
  (*(v21 + 56))(v25, 0, 1, v20);
  sub_1D7D2A7EC();
  swift_unknownObjectRelease();

  sub_1D7AD2CD8(v25, &qword_1EE0BF668, &qword_1EE0BF670, MEMORY[0x1E69E63B0], sub_1D7AD2B2C);
  return (*(v21 + 8))(v24, v20);
}

void sub_1D7ACED40(void *a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a1;
  _s12NewsArticles24NowPlayingViewControllerC03nowdeF0_14seekToPositionySo05NANowdeF0C_SdtF_0(a2);
}

void sub_1D7ACEDDC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D7AD13F8(MEMORY[0x1E69B5808]);
}

void sub_1D7ACEE80(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D7AD13F8(MEMORY[0x1E69B57D8]);
}

void sub_1D7ACEEFC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _s12NewsArticles24NowPlayingViewControllerC03nowdeF15DidTapNextTrackyySo05NANowdeF0CF_0();
}

void sub_1D7ACEF68()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v3[3] = type metadata accessor for NowPlayingViewController();
      v3[4] = swift_getWitnessTable();
      v3[0] = v1;
      v2 = v1;
      sub_1D7D2C08C();

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v3);
    }

    else
    {
    }
  }
}

void sub_1D7ACF094(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _s12NewsArticles24NowPlayingViewControllerC03nowdeF19DidTapDismissButtonyySo05NANowdeF0CF_0();
}

id sub_1D7ACF0F8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = _s12NewsArticles24NowPlayingViewControllerC03nowdeF23ProvidePlaybackRateMenuySo6UIMenuCSo05NANowdeF0CF_0();

  return v6;
}

uint64_t sub_1D7ACF158(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D7D2B49C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v12[3] = type metadata accessor for NowPlayingViewController();
      v12[4] = swift_getWitnessTable();
      v12[0] = v9;
      v10 = v9;
      sub_1D7D2C08C();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    (*(v4 + 104))(v7, *MEMORY[0x1E69D7FB8], v3);
    sub_1D7AC8F58(a2, v7);

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

void sub_1D7ACF354(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _s12NewsArticles24NowPlayingViewControllerC03nowdeF27DidRequestNavigateToArticleyySo05NANowdeF0CF_0();
}

void sub_1D7ACF3B8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _s12NewsArticles24NowPlayingViewControllerC03nowd6DockedE12DidTapRewindyySo05NANowdhE0CF_0();
}

void sub_1D7ACF49C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D7AD15F4(MEMORY[0x1E69B57D0]);
}

id NowPlayingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D7D3031C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1D7ACF5C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1D7AD28F0();
}

id NowPlayingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7ACF670(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  sub_1D79C92AC(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0x98)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0xA0)]);
  sub_1D7AD35D8(&a1[*((*v2 & *a1) + 0xA8)], &qword_1EE0BCE18, &qword_1EE0BCE20, &protocol descriptor for NowPlayingMenuFactoryType);
  v3 = *((*v2 & *a1) + 0xB0);
  v4 = sub_1D7D3130C();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
}

id NowPlayingViewController.dockedView.getter()
{
  v0 = sub_1D7AD2920();

  return v0;
}

Swift::Void __swiftcall NowPlayingViewController.configureExpansion(_:)(UISheetPresentationController a1)
{
  [(objc_class *)a1.super.super.isa _setWantsFullScreen:1];

  [(objc_class *)a1.super.super.isa _setAllowsInteractiveDismissWhenFullScreen:1];
}

id sub_1D7ACF970()
{
  v0 = sub_1D7AD2920();

  return v0;
}

uint64_t sub_1D7ACF9A8()
{
  sub_1D7ACFD10();
}

id sub_1D7ACF9DC(void *a1)
{
  [a1 _setWantsFullScreen_];

  return [a1 _setAllowsInteractiveDismissWhenFullScreen_];
}

void *NowPlayingViewController.expandedViewController.getter()
{
  v0 = sub_1D7AD2AF0();
  v1 = v0;
  return v0;
}

uint64_t sub_1D7ACFAA0(uint64_t a1, uint64_t a2)
{
  sub_1D7ACFC90(a1, a2);

  return swift_unknownObjectRelease();
}

void (*sub_1D7ACFADC(uint64_t **a1))(void *a1)
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
  v2[4] = NowPlayingViewController.delegate.modify(v2);
  return sub_1D7ACFB50;
}

void sub_1D7ACFB50(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1D7ACFB98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE47B18](a1, WitnessTable, a2);
}

void *sub_1D7ACFBFC()
{
  v0 = sub_1D7AD2AF0();
  v1 = v0;
  return v0;
}

uint64_t sub_1D7ACFC2C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE47B20](a1, WitnessTable, a2);
}

uint64_t sub_1D7ACFC90(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  swift_beginAccess();
  *(v4 + 1) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D7ACFD10()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D7ACFD70(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = sub_1D7D3130C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13[-v8];
  v10 = *((v4 & v3) + 0xB0);
  swift_beginAccess();
  (*(v6 + 16))(v9, &v1[v10], v5);
  swift_beginAccess();
  (*(v6 + 24))(&v1[v10], a1, v5);
  swift_endAccess();
  sub_1D7AC6900(v9, v11);
  return (*(v6 + 8))(v9, v5);
}

void *sub_1D7ACFEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, _UNKNOWN **a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v85 = a8;
  v101 = a6;
  v109 = a4;
  v110 = a3;
  v107 = a1;
  v108 = a2;
  ObjectType = swift_getObjectType();
  v14 = *v10;
  v15 = MEMORY[0x1E69E7D40];
  v16 = *MEMORY[0x1E69E7D40];
  v17 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x50);
  v106 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x58);
  v18 = type metadata accessor for AudioPlaybackState();
  v99 = *(v18 - 8);
  v100 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v98 = &v85 - v20;
  sub_1D7AD2B2C(0, &qword_1EE0BF668, &qword_1EE0BF670);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v97 = &v85 - v23;
  sub_1D7AD2B2C(0, &qword_1EE0BF658, &qword_1EE0BF660);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v96 = &v85 - v26;
  v95 = sub_1D7D2EEEC();
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v27);
  v94 = (&v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = sub_1D7D2F1AC();
  v89 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v29);
  v92 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1D7D2F68C();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v31);
  v88 = &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AD2B84(0, &qword_1EE0BF660);
  v104 = *(v33 - 8);
  v105 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v103 = &v85 - v35;
  v36 = sub_1D7D2B4AC();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v38);
  v40 = &v85 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + *((v16 & v14) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  v41 = *((*v15 & *v11) + 0x68);
  (*(v37 + 104))(v40, *MEMORY[0x1E69D8018], v36);
  sub_1D7AD2C74(0, &qword_1EE0BB458, MEMORY[0x1E69D8028], MEMORY[0x1E69D6538]);
  swift_allocObject();
  *(v11 + v41) = sub_1D7D28ECC();
  v42 = *(*(v17 - 8) + 56);
  v43 = v11 + *((*v15 & *v11) + 0xB0);
  v102 = v17;
  v42(v43, 1, 1, v17);
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  sub_1D7D30C6C();
  sub_1D7D29AAC();
  if (a7)
  {
    v44 = a7;
    v45 = v85;
  }

  else
  {
    v44 = [objc_allocWithZone(NANowPlayingBackgroundView) initWithFrame_];
    v45 = &protocol witness table for NANowPlayingBackgroundView;
  }

  v46 = (v11 + *((*v15 & *v11) + 0x78));
  v47 = v101;
  *v46 = a5;
  v46[1] = v47;
  v48 = (v11 + *((*v15 & *v11) + 0x80));
  *v48 = v44;
  v48[1] = v45;
  if (a5)
  {
    v49 = a7;
    v50 = v44;
    v51 = a5;
  }

  else
  {
    v52 = objc_allocWithZone(MEMORY[0x1E69DD250]);
    v53 = a7;
    v54 = v44;
    v51 = [v52 initWithFrame_];
  }

  v55 = objc_allocWithZone(NANowPlayingDockedView);
  v56 = a5;
  v57 = [v55 initWithBackground:v51 artworkEnabled:a5 == 0];

  *(v11 + *((*v15 & *v11) + 0xB8)) = v57;
  result = [objc_allocWithZone(NANowPlayingViewController) initWithBackground_];
  if (result)
  {
    *(v11 + *((*v15 & *v11) + 0x70)) = result;
    v59 = v108;
    *(v11 + *((*v15 & *v11) + 0x88)) = v107;
    *(v11 + *((*v15 & *v11) + 0x90)) = v59;
    sub_1D799CC84(v110, v11 + *((*v15 & *v11) + 0x98));
    sub_1D799CC84(v109, v11 + *((*v15 & *v11) + 0xA0));
    sub_1D799CC84(a9, v11 + *((*v15 & *v11) + 0xA8));
    *(v11 + *((*v15 & *v11) + 0xC0)) = a10;
    v113.receiver = v11;
    v113.super_class = ObjectType;

    v60 = objc_msgSendSuper2(&v113, sel_initWithNibName_bundle_, 0, 0);
    v61 = v60;
    v85 = v44;
    if (a5)
    {
      [v60 setOverrideUserInterfaceStyle_];
    }

    else
    {
      [*(v60 + *((*v15 & *v60) + 0x70)) setOverrideUserInterfaceStyle_];
    }

    v62 = *(v61 + *((*v15 & *v61) + 0x70));
    v63 = v61;
    [v62 setDelegate_];
    [*(v63 + *((*v15 & *v63) + 0xB8)) setDelegate_];
    sub_1D7AC7290(a9);
    (*(v86 + 104))(v88, *MEMORY[0x1E69B63A0], v87);
    (*(v89 + 104))(v92, *MEMORY[0x1E69B6178], v91);
    v111 = 0u;
    v112 = 0u;
    (*(v93 + 104))(v94, *MEMORY[0x1E69B6058], v95);
    v64 = MEMORY[0x1E69E7CA8];
    v65 = v103;
    sub_1D7D2F4AC();
    v101 = a10;
    sub_1D7D2A4DC();
    swift_getObjectType();
    sub_1D7D2C42C();
    v66 = v104;
    v67 = v96;
    v68 = v65;
    v69 = v105;
    (*(v104 + 16))(v96, v68, v105);
    (*(v66 + 56))(v67, 0, 1, v69);
    v70 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v71 = swift_allocObject();
    v95 = a9;
    v72 = v106;
    v71[2] = v102;
    v71[3] = v72;
    v71[4] = v70;
    v73 = v63;

    sub_1D7D2A7BC();
    swift_unknownObjectRelease();

    v94 = sub_1D7AD2B2C;
    sub_1D7AD2CD8(v67, &qword_1EE0BF658, &qword_1EE0BF660, v64 + 8, sub_1D7AD2B2C);

    __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
    sub_1D7D28AEC();

    __swift_destroy_boxed_opaque_existential_1(&v111);
    sub_1D7D2A4DC();
    v96 = v74;
    v93 = swift_getObjectType();
    sub_1D7D2C38C();
    v75 = v97;
    sub_1D7AC6F50();
    sub_1D7AD2B84(0, &qword_1EE0BF670);
    (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
    v77 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v78 = swift_allocObject();
    v79 = v102;
    v80 = v106;
    v78[2] = v102;
    v78[3] = v80;
    v78[4] = v77;
    v81 = v73;

    sub_1D7D2A7BC();
    swift_unknownObjectRelease();

    sub_1D7AD2CD8(v75, &qword_1EE0BF668, &qword_1EE0BF670, MEMORY[0x1E69E63B0], v94);

    __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
    sub_1D7D28AEC();

    __swift_destroy_boxed_opaque_existential_1(&v111);
    v82 = v98;
    sub_1D7D28EDC();
    sub_1D7AC76C4(v82);
    (*(v99 + 8))(v82, v100);
    v83 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v84 = swift_allocObject();
    v84[2] = v79;
    v84[3] = v80;
    v84[4] = v83;
    sub_1D7D28EEC();

    __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
    sub_1D7D28AEC();

    __swift_destroy_boxed_opaque_existential_1(v95);
    __swift_destroy_boxed_opaque_existential_1(v109);
    __swift_destroy_boxed_opaque_existential_1(v110);
    (*(v104 + 8))(v103, v105);
    __swift_destroy_boxed_opaque_existential_1(&v111);
    return v81;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _s12NewsArticles24NowPlayingViewControllerC5coderACyxGSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  v5 = sub_1D7D2B4AC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[*((v4 & v2) + 0x60) + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = *((*v3 & *v1) + 0x68);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D8018], v5);
  sub_1D7AD2C74(0, &qword_1EE0BB458, MEMORY[0x1E69D8028], MEMORY[0x1E69D6538]);
  swift_allocObject();
  *&v1[v10] = sub_1D7D28ECC();
  (*(*(*((v4 & v2) + 0x50) - 8) + 56))(&v1[*((*v3 & *v1) + 0xB0)], 1, 1);
  sub_1D7D3160C();
  __break(1u);
}

uint64_t _s12NewsArticles24NowPlayingViewControllerC03nowdeF0_14seekToPositionySo05NANowdeF0C_SdtF_0(double a1)
{
  sub_1D7AD2B2C(0, &qword_1EE0BF668, &qword_1EE0BF670);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v30 = &v27 - v4;
  v29 = sub_1D7D2EEEC();
  v5 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D7D2F1AC();
  v9 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7D2F68C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AD2B84(0, &qword_1EE0BF670);
  v19 = v18;
  v20 = *(v18 - 8);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v27 - v23;
  v33 = a1;
  (*(v14 + 104))(v17, *MEMORY[0x1E69B63A0], v13, v22);
  (*(v9 + 104))(v12, *MEMORY[0x1E69B6178], v28);
  v31 = 0u;
  v32 = 0u;
  (*(v5 + 104))(v8, *MEMORY[0x1E69B6058], v29);
  v25 = v30;
  sub_1D7D2F4AC();
  sub_1D7D2A4DC();
  swift_getObjectType();
  sub_1D7D2C3BC();
  (*(v20 + 16))(v25, v24, v19);
  (*(v20 + 56))(v25, 0, 1, v19);
  sub_1D7D2A7EC();
  swift_unknownObjectRelease();

  sub_1D7AD2CD8(v25, &qword_1EE0BF668, &qword_1EE0BF670, MEMORY[0x1E69E63B0], sub_1D7AD2B2C);
  return (*(v20 + 8))(v24, v19);
}

uint64_t sub_1D7AD13F8(void (*a1)(void))
{
  sub_1D7AD2B2C(0, &qword_1EE0BF668, &qword_1EE0BF670);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v8 - v4;
  sub_1D7D2A4DC();
  swift_getObjectType();
  a1();
  sub_1D7AC6F50();
  sub_1D7AD2B84(0, &qword_1EE0BF670);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_1D7D2A7EC();
  sub_1D7AD2CD8(v5, &qword_1EE0BF668, &qword_1EE0BF670, MEMORY[0x1E69E63B0], sub_1D7AD2B2C);
  swift_unknownObjectRelease();
}

uint64_t sub_1D7AD15F4(void (*a1)(void))
{
  v30 = a1;
  sub_1D7AD2B2C(0, &qword_1EE0BF658, &qword_1EE0BF660);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v29 = &v27 - v3;
  v28 = sub_1D7D2EEEC();
  v4 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D7D2F1AC();
  v8 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D7D2F68C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AD2B84(0, &qword_1EE0BF660);
  v18 = v17;
  v19 = *(v17 - 8);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v27 - v22;
  (*(v13 + 104))(v16, *MEMORY[0x1E69B63A0], v12, v21);
  v24 = MEMORY[0x1E69E7CA8];
  (*(v8 + 104))(v11, *MEMORY[0x1E69B6178], v27);
  v31 = 0u;
  v32 = 0u;
  (*(v4 + 104))(v7, *MEMORY[0x1E69B6058], v28);
  v25 = v29;
  sub_1D7D2F4AC();
  sub_1D7D2A4DC();
  swift_getObjectType();
  v30();
  (*(v19 + 16))(v25, v23, v18);
  (*(v19 + 56))(v25, 0, 1, v18);
  sub_1D7D2A7EC();
  swift_unknownObjectRelease();

  sub_1D7AD2CD8(v25, &qword_1EE0BF658, &qword_1EE0BF660, v24 + 8, sub_1D7AD2B2C);
  return (*(v19 + 8))(v23, v18);
}

uint64_t _s12NewsArticles24NowPlayingViewControllerC03nowdeF15DidTapNextTrackyySo05NANowdeF0CF_0()
{
  sub_1D7AD2B2C(0, &qword_1EE0BF658, &qword_1EE0BF660);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v29 = &v26 - v2;
  v28 = sub_1D7D2EEEC();
  v3 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D7D2F1AC();
  v7 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7D2F68C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AD2B84(0, &qword_1EE0BF660);
  v17 = v16;
  v18 = *(v16 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v26 - v21;
  (*(v12 + 104))(v15, *MEMORY[0x1E69B63A0], v11, v20);
  v23 = MEMORY[0x1E69E7CA8];
  (*(v7 + 104))(v10, *MEMORY[0x1E69B6178], v27);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B6060], v28);
  v30 = 0u;
  v31 = 0u;
  v24 = v29;
  sub_1D7D2F4AC();
  sub_1D7D2A4DC();
  swift_getObjectType();
  sub_1D7D2C42C();
  (*(v18 + 16))(v24, v22, v17);
  (*(v18 + 56))(v24, 0, 1, v17);
  sub_1D7D2A7EC();
  swift_unknownObjectRelease();

  sub_1D7AD2CD8(v24, &qword_1EE0BF658, &qword_1EE0BF660, v23 + 8, sub_1D7AD2B2C);
  return (*(v18 + 8))(v22, v17);
}

void _s12NewsArticles24NowPlayingViewControllerC03nowdeF19DidTapDismissButtonyySo05NANowdeF0CF_0()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x70));
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = *((v2 & v1) + 0x50);
  v5[3] = *((v2 & v1) + 0x58);
  v5[4] = v4;
  v7[4] = sub_1D7AD2C68;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D79FE25C;
  v7[3] = &block_descriptor_14;
  v6 = _Block_copy(v7);

  [v3 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
}

uint64_t _s12NewsArticles24NowPlayingViewControllerC03nowdeF23ProvidePlaybackRateMenuySo6UIMenuCSo05NANowdeF0CF_0()
{
  if (sub_1D7ACE5E8() >> 62)
  {
    sub_1D7992EFC(0, &unk_1EC9E24C0);
    sub_1D7D3161C();
  }

  else
  {

    sub_1D7D319CC();
    sub_1D7992EFC(0, &unk_1EC9E24C0);
  }

  sub_1D7992EFC(0, &qword_1EE0BED30);
  return sub_1D7D3107C();
}

uint64_t _s12NewsArticles24NowPlayingViewControllerC03nowdeF27DidRequestNavigateToArticleyySo05NANowdeF0CF_0()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  v4 = *(v3 + 0x50);
  v5 = sub_1D7D3130C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &aBlock[-1] - v8;
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &aBlock[-1] - v13;
  v15 = *((v2 & v1) + 0xB0);
  swift_beginAccess();
  if ((*(v10 + 48))(&v0[v15], 1, v4))
  {
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    sub_1D7D30C4C();
    sub_1D7AD2BD0(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7D3B4D0;
    (*(v6 + 16))(v9, &v0[v15], v5);
    v17 = sub_1D7D303AC();
    v19 = v18;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1D79D6AE0();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_1D7D29AAC();
  }

  else
  {
    (*(v10 + 16))(v14, &v0[v15], v4);
    v21 = *(v3 + 88);
    v22 = v0;
    v23 = (*(v21 + 16))(v4, v21);
    (*(v10 + 8))(v14, v4);
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v25[2] = v4;
    v25[3] = v21;
    v25[4] = v24;
    v25[5] = v23;
    aBlock[4] = sub_1D7AD2C38;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D79FE25C;
    aBlock[3] = &block_descriptor_12;
    v26 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v22 dismissViewControllerAnimated:1 completion:v26];
    _Block_release(v26);
    return swift_unknownObjectRelease();
  }
}

uint64_t _s12NewsArticles24NowPlayingViewControllerC03nowd6DockedE12DidTapRewindyySo05NANowdhE0CF_0()
{
  sub_1D7AD2B2C(0, &qword_1EE0BF668, &qword_1EE0BF670);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v28 = &v25 - v2;
  v27 = sub_1D7D2EEEC();
  v3 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D7D2F1AC();
  v7 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7D2F68C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AD2B84(0, &qword_1EE0BF670);
  v17 = v16;
  v18 = *(v16 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v25 - v21;
  v31 = 0x402E000000000000;
  (*(v12 + 104))(v15, *MEMORY[0x1E69B63A0], v11, v20);
  (*(v7 + 104))(v10, *MEMORY[0x1E69B6178], v26);
  v29 = 0u;
  v30 = 0u;
  (*(v3 + 104))(v6, *MEMORY[0x1E69B6058], v27);
  v23 = v28;
  sub_1D7D2F4AC();
  sub_1D7D2A4DC();
  swift_getObjectType();
  sub_1D7D2C3EC();
  (*(v18 + 16))(v23, v22, v17);
  (*(v18 + 56))(v23, 0, 1, v17);
  sub_1D7D2A7EC();
  swift_unknownObjectRelease();

  sub_1D7AD2CD8(v23, &qword_1EE0BF668, &qword_1EE0BF670, MEMORY[0x1E69E63B0], sub_1D7AD2B2C);
  return (*(v18 + 8))(v22, v17);
}

uint64_t _s12NewsArticles24NowPlayingViewControllerC04dockE24AccessibilityMagicTapped2inySo06UIViewF0C_tF_0()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = type metadata accessor for AudioPlaybackState();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  sub_1D7D28EDC();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1D7AD15F4(MEMORY[0x1E69B5800]);
    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_1D7AD15F4(MEMORY[0x1E69B57F0]);
    return (*(*(v1 - 8) + 8))(v6, v1);
  }
}

void sub_1D7AD2B2C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D7AD2B84(255, a3);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7AD2B84(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D7D2F4DC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D7AD2BD0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D798F168(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D7AD2C74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7AD2CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D7AD2E04(uint64_t a1, uint64_t a2)
{
  sub_1D7AD2C74(0, &qword_1EE0BB2D8, MEMORY[0x1E69D7B70], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7AD2E98(uint64_t a1, uint64_t a2)
{
  if (!qword_1EE0BAF80)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    type metadata accessor for CGSize(255);
    type metadata accessor for CGRect(255);
    type metadata accessor for UIRectCorner(255);
    sub_1D7AD2C74(255, &unk_1EE0BB398, MEMORY[0x1E69D75E8], MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE0BAF80);
    }
  }
}

void sub_1D7AD3024()
{
  if (!qword_1EE0BB200)
  {
    sub_1D7D2C61C();
    type metadata accessor for CGBlendMode(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BB200);
    }
  }
}

void sub_1D7AD3184()
{
  v1 = (*(*(v0[2] - 8) + 80) + 40) & ~*(*(v0[2] - 8) + 80);
  v2 = v1 + *(*(v0[2] - 8) + 64);
  sub_1D7ACC94C(v0[4], v0 + v1, *(v0 + ((v2 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), v0 + ((v2 + 23) & 0xFFFFFFFFFFFFFFF8), (v0 + ((((v2 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)), v0[2], v0[3]);
}

uint64_t sub_1D7AD3210(void *a1, uint64_t a2)
{
  v3 = (*(*(v2[2] - 8) + 80) + 40) & ~*(*(v2[2] - 8) + 80);
  v4 = (v2 + ((*(*(v2[2] - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1D7ACD424(a1, a2, v2[4], v2 + v3, *v4, *(v4 + 8), v2[2], v2[3]);
}

void sub_1D7AD3284()
{
  v1 = (*(*(v0[2] - 8) + 80) + 40) & ~*(*(v0[2] - 8) + 80);
  v2 = (*(*(v0[2] - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D7ACD5B8(v0[4], v0 + v1, *(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v0[2], v0[3]);
}

uint64_t sub_1D7AD3358(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D7AD3564(uint64_t (*a1)(void, unint64_t, void))
{
  v2 = *(*(v1 + 16) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  return a1(*(v1 + 32), v1 + v3, *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1D7AD35D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7AD2BD0(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t objectdestroy_3Tm_0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D7AD3694(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D7AD2BD0(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1D7AD3718()
{
  v1 = *(sub_1D7D2B49C() - 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_1D7AC8E18(v2, v3, v4);
}

uint64_t objectdestroy_73Tm()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D7AD388C()
{
  sub_1D7D2CF9C();
}

uint64_t CampaignLandingPageModule.createModalViewController(with:hideCloseButton:tracker:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v25[1] = a3;
  v9 = type metadata accessor for ArticleModel();
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v12 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (v25 - v15);
  if (a4)
  {
    v28 = a4;
  }

  else
  {
    v28 = sub_1D7D28A2C();
  }

  sub_1D7994174();
  *v16 = a1;
  v16[1] = a2;
  type metadata accessor for ArticleNavigationAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  type metadata accessor for URLHandler();

  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v18 = result;
  v19 = v5[5];
  v26 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v19);
  type metadata accessor for CampaignLandingPageViewController();
  sub_1D7A35E7C(v16, v12);
  v20 = (*(v27 + 80) + 24) & ~*(v27 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v28;
  sub_1D7AD3EF4(v12, v21 + v20);
  *(v21 + ((v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;

  v22 = v18;
  v23 = sub_1D7D28CFC();

  if (!v23)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  sub_1D7AD3FF8();
  result = sub_1D7D28D2C();
  if (v30)
  {
    sub_1D799D69C(&v29, v31);
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    v24 = sub_1D7D2BE4C();
    sub_1D7D2B3AC();

    sub_1D7AAB708(v16);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return v24;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D7AD3CD4(void *a1)
{
  swift_getObjectType();
  v2 = sub_1D7D295CC();
  v9 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  sub_1D7D28BEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ArticleModel();
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28BEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = v9;
  (*(v9 + 104))(v5, *MEMORY[0x1E69B6A78], v2);
  sub_1D7D28BFC();
  (*(v6 + 8))(v5, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = xmmword_1D7D3EE10;
  return sub_1D7D28BFC();
}

uint64_t sub_1D7AD3EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7AD3F58(void *a1)
{
  type metadata accessor for ArticleModel();

  return sub_1D7AD3CD4(a1);
}

unint64_t sub_1D7AD3FF8()
{
  result = qword_1EE0CBE40;
  if (!qword_1EE0CBE40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0CBE40);
  }

  return result;
}

uint64_t CampaignLandingPageModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t CampaignLandingPageModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7AD4138(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v55 = a1;
  v54 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupEmitter();
  MEMORY[0x1EEE9AC00](v54, v2);
  v52 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7991488();
  v53 = v4;
  v51 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupEmitter();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79913BC();
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupEmitter();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79911A0();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for EndOfRecipeFeedGroupConfig();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AD4920(v55, v28, type metadata accessor for EndOfRecipeFeedGroupConfig);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = v48;
      v31 = v28;
      v32 = v49;
      (*(v48 + 32))(v14, v31, v49);
      (*(v30 + 16))(v10, v14, v32);
      v33 = type metadata accessor for EndOfRecipeFeedKnobsConfig();
      sub_1D7AD4920(v56 + *(v33 + 20), &v10[v7[5]], type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs);
      sub_1D799CC84(v57 + 16, &v10[v7[6]]);
      v34 = &v10[v7[7]];
      *v34 = 0x41646574616C6552;
      *(v34 + 1) = 0xEF73656C63697472;
      sub_1D7AD488C();
      swift_allocObject();
      sub_1D79953C8(&qword_1EC9E3EB0, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupEmitter);
      v35 = sub_1D7D2DFEC();
      (*(v30 + 8))(v14, v32);
    }

    else
    {
      v40 = v50;
      v39 = v51;
      v41 = v53;
      (*(v51 + 32))(v50, v28, v53);
      v42 = v52;
      (*(v39 + 16))(v52, v40, v41);
      v43 = v56 + *(type metadata accessor for EndOfRecipeFeedKnobsConfig() + 20);
      v44 = type metadata accessor for EndOfRecipeFeedGroupKnobs();
      v45 = v54;
      sub_1D7AD4920(v43 + *(v44 + 20), &v42[*(v54 + 20)], type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs);
      sub_1D799CC84(v57 + 16, &v42[*(v45 + 24)]);
      v46 = &v42[*(v45 + 28)];
      strcpy(v46, "RelatedRecipes");
      v46[15] = -18;
      sub_1D7AD488C();
      swift_allocObject();
      sub_1D79953C8(&qword_1EC9E3EA8, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupEmitter);
      v35 = sub_1D7D2DFEC();
      (*(v39 + 8))(v40, v41);
    }
  }

  else
  {
    (*(v21 + 32))(v24, v28, v20);
    (*(v21 + 16))(v18, v24, v20);
    v36 = v56 + *(type metadata accessor for EndOfRecipeFeedKnobsConfig() + 20);
    v37 = type metadata accessor for EndOfRecipeFeedGroupKnobs();
    sub_1D7AD4920(v36 + *(v37 + 24), &v18[v15[5]], type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs);
    sub_1D799CC84(v57 + 16, &v18[v15[6]]);
    v38 = &v18[v15[7]];
    strcpy(v38, "RecipeTopics");
    v38[13] = 0;
    *(v38 + 7) = -5120;
    sub_1D7AD488C();
    swift_allocObject();
    sub_1D79953C8(&qword_1EC9E3EB8, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupEmitter);
    v35 = sub_1D7D2DFEC();
    (*(v21 + 8))(v24, v20);
  }

  return v35;
}

void sub_1D7AD488C()
{
  if (!qword_1EC9E3EA0)
  {
    type metadata accessor for EndOfRecipeFeedServiceConfig();
    sub_1D79953C8(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
    v0 = sub_1D7D2DFFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E3EA0);
    }
  }
}

uint64_t sub_1D7AD4920(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D7AD49C0(uint64_t a1, void *a2, void *a3, unint64_t *a4)
{
  if (!a2)
  {
LABEL_6:
    if (qword_1EE0CA130 != -1)
    {
      swift_once();
    }

    sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7D3B4D0;
    v11 = [*(a1 + OBJC_IVAR___NAArticleFooterContext_headline) identifier];
    v12 = sub_1D7D3034C();
    v14 = v13;

    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1D79D6AE0();
    *(v10 + 32) = v12;
    *(v10 + 40) = v14;
    sub_1D7D30C6C();
    sub_1D7D29AAC();
LABEL_24:

    return MEMORY[0x1E69E7CC0];
  }

  v6 = v4;
  v7 = *a4;
  v8 = a4[1];
  v9 = a2;
  if ([v9 suppressRelatedArticles] && objc_msgSend(v9, sel_suppressMoreFromPublisher) && objc_msgSend(v9, sel_suppressRecommendedReads) == 1)
  {

    goto LABEL_6;
  }

  if (v7 >= 2)
  {
    __swift_project_boxed_opaque_existential_1((v4 + 64), *(v4 + 88));
    if ((sub_1D7D2F9DC() & 1) == 0)
    {
      if (qword_1EE0CA130 != -1)
      {
        swift_once();
      }

      sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1D7D3B4D0;
      v35 = [*(a1 + OBJC_IVAR___NAArticleFooterContext_headline) identifier];
      v36 = sub_1D7D3034C();
      v38 = v37;

      *(v34 + 56) = MEMORY[0x1E69E6158];
      *(v34 + 64) = sub_1D79D6AE0();
      *(v34 + 32) = v36;
      *(v34 + 40) = v38;
      sub_1D7D30C6C();
      sub_1D7D29AAC();

      goto LABEL_24;
    }
  }

  v15 = *(a1 + OBJC_IVAR___NAArticleFooterContext_headline);
  v16 = &selRef_addTarget_action_;
  v17 = &off_1E84EC000;
  if (([v15 respondsToSelector_] & 1) == 0 || (objc_msgSend(v15, sel_role), v55 = v9, __swift_project_boxed_opaque_existential_1((v4 + 64), *(v4 + 88)), sub_1D7D2F9DC(), v17 = &off_1E84EC000, (sub_1D7D30BBC() & 1) == 0))
  {
LABEL_16:
    if (qword_1EE0CA130 != -1)
    {
      swift_once();
    }

    sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D7D3B4E0;
    v23 = [v15 v17[329]];
    v24 = 0;
    if (v23)
    {
      v24 = [v15 v16[83]];
    }

    v58 = v24;
    v59 = (v23 & 1) == 0;
    sub_1D7AD5404(0, &unk_1EE0BB008, type metadata accessor for FCArticleRole);
    v25 = sub_1D7D303AC();
    v27 = v26;
    v28 = MEMORY[0x1E69E6158];
    *(v22 + 56) = MEMORY[0x1E69E6158];
    v29 = sub_1D79D6AE0();
    *(v22 + 64) = v29;
    *(v22 + 32) = v25;
    *(v22 + 40) = v27;
    v30 = [v15 identifier];
    v31 = sub_1D7D3034C();
    v33 = v32;

    *(v22 + 96) = v28;
    *(v22 + 104) = v29;
    *(v22 + 72) = v31;
    *(v22 + 80) = v33;
    sub_1D7D30C6C();
    sub_1D7D29AAC();

    goto LABEL_24;
  }

  v63 = 0;
  v64 = 1;
  v18 = sub_1D7AD51A8(v9, v7, v8, v4, &v63);
  v19 = sub_1D7D054C0(0, v18);
  v20 = sub_1D7D054C0(3u, v18);
  v17 = sub_1D7D054C0(4u, v18);
  v16 = v9;
  v9 = sub_1D7D054C0(1u, v18);

  if (v64 == 1)
  {
    v21 = [(SEL *)v16 suppressRecommendedReads];
    if (v21 + 1 >= 3)
    {
      type metadata accessor for SXTernary(0);
      v58 = v21;
      sub_1D7D319FC();
      __break(1u);
      goto LABEL_16;
    }
  }

  else
  {
    v21 = v63;
  }

  v40 = v7 > 1;
  v41 = type metadata accessor for EndOfArticlePresentationOptions();
  v42 = objc_allocWithZone(v41);
  v42[OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreFromSection] = v19;
  v42[OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreToReadSection] = v20;
  v42[OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreFromIssueSection] = v17 & 1;
  v42[OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressRelatedSection] = v9 & 1;
  *&v42[OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressRecommendedReadsSection] = v21;
  *&v42[OBJC_IVAR___NAEndOfArticlePresentationOptions_articleBackgroundColor] = a3;
  v42[OBJC_IVAR___NAEndOfArticlePresentationOptions_isIssueArticle] = v40;
  v62.receiver = v42;
  v62.super_class = v41;
  v43 = a3;
  v44 = objc_msgSendSuper2(&v62, sel_init);
  sub_1D7AD5458(v6 + 16, &v58);
  v45 = v60;
  if (v60)
  {
    v46 = v61;
    __swift_project_boxed_opaque_existential_1(&v58, v60);
    v47 = (*(v46 + 8))(v15, v45, v46);
    __swift_destroy_boxed_opaque_existential_1(&v58);
  }

  else
  {
    sub_1D7AD54E8(&v58);
    v47 = 0;
  }

  v48 = [*(v6 + 56) createViewControllerFor:a1 presentationOptions:v44];
  v57[4] = v47;
  v57[5] = v48;
  v49 = MEMORY[0x1E69E7CC0];
  v58 = MEMORY[0x1E69E7CC0];
  v50 = v47;
  v51 = v48;
  for (i = 0; i != 2; ++i)
  {
    v53 = v57[i + 4];
    if (v53)
    {
      v54 = v53;
      MEMORY[0x1DA70E080]();
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D7D306DC();
      }

      sub_1D7D3072C();
      v49 = v58;
    }
  }

  sub_1D7AD5404(0, &unk_1EE0C9C50, sub_1D7AD5570);
  swift_arrayDestroy();

  return v49;
}

uint64_t sub_1D7AD51A8(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = MEMORY[0x1E69E7CD0];
  if ([a1 suppressMoreFromPublisher])
  {
    sub_1D7B3DDAC(&v10, 0);
  }

  if ([a1 suppressRelatedArticles])
  {
    sub_1D7B3DDAC(&v10, 1);
  }

  if (a2 > 1)
  {
    sub_1D7B3DDAC(&v10, 1);
    *a5 = 1;
    *(a5 + 8) = 0;
    sub_1D7B3DDAC(&v10, 3);
    sub_1D7B3DDAC(&v10, 0);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((a4 + 64), *(a4 + 88));
    if ((sub_1D7D2F98C() & 1) == 0)
    {
      sub_1D7B3DDAC(&v10, 3);
    }

    __swift_project_boxed_opaque_existential_1((a4 + 64), *(a4 + 88));
    if ((sub_1D7D2F9DC() & 1) == 0)
    {
      sub_1D7B3DDAC(&v10, 4);
    }

    if (qword_1EE0CB738 != -1)
    {
      swift_once();
    }

    type metadata accessor for ArticleFooterProvider();
    sub_1D7AD55E0();
    sub_1D7D285AC();
    if (v10 == 1)
    {
      sub_1D7B3DDAC(&v10, 1);
      *a5 = 1;
      *(a5 + 8) = 0;
    }
  }

  return v11;
}

uint64_t sub_1D7AD5374()
{
  sub_1D7AD54E8(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

void sub_1D7AD5404(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7AD5458(uint64_t a1, uint64_t a2)
{
  sub_1D79A0340(0, qword_1EE0C6C70, qword_1EE0CDE50, &protocol descriptor for ArticleSharingModuleType, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7AD54E8(uint64_t a1)
{
  sub_1D79A0340(0, qword_1EE0C6C70, qword_1EE0CDE50, &protocol descriptor for ArticleSharingModuleType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D7AD5570()
{
  result = qword_1EE0C9C60[0];
  if (!qword_1EE0C9C60[0])
  {
    sub_1D79ED47C();
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE0C9C60);
  }

  return result;
}

unint64_t sub_1D7AD55E0()
{
  result = qword_1EE0C83F8[0];
  if (!qword_1EE0C83F8[0])
  {
    type metadata accessor for ArticleFooterProvider();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0C83F8);
  }

  return result;
}

id static ConfirmationToastFactory.createViewController(confirmationToast:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1D7AD5698(v4, v1, v2, v3);
}

id sub_1D7AD5698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  (*(a4 + 8))(a3, a4);
  (*(a4 + 16))(a3, a4);
  v10 = objc_allocWithZone(MEMORY[0x1E698CD00]);
  v11 = sub_1D7D3031C();

  v12 = sub_1D7D3031C();

  v13 = [v10 initWithTitle:v11 message:v12];

  v14 = v13;
  [v14 setStyle_];
  v15 = sub_1D7D3031C();
  v16 = [objc_opt_self() systemImageNamed_];

  [v14 setIconImage_];
  v17 = [objc_allocWithZone(MEMORY[0x1E698CD38]) initWithRequest_];

  v18 = [objc_allocWithZone(MEMORY[0x1E698CD30]) init];
  v19 = [objc_opt_self() systemGreenColor];
  [v18 setImageTintColor_];

  v20 = [objc_opt_self() configurationWithPointSize:6 weight:36.0];
  [v18 setImageSymbolConfiguration_];

  v21 = v18;
  [v17 setPreferredAppearance_];

  (*(v6 + 8))(v9, a3);
  return v17;
}

uint64_t type metadata accessor for RelatedEndOfArticleFeedGroup()
{
  result = qword_1EE0C4AD8;
  if (!qword_1EE0C4AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RelatedEndOfArticleFeedGroup.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RelatedEndOfArticleFeedGroup.formatGroup.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RelatedEndOfArticleFeedGroup() + 20);
  v4 = sub_1D7D2DE2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RelatedEndOfArticleFeedGroup.nativeAdInsertionLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RelatedEndOfArticleFeedGroup() + 24);
  v4 = sub_1D7D2EA6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static RelatedEndOfArticleFeedGroup.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D7D3197C();
  }
}

uint64_t sub_1D7AD5C68(uint64_t a1)
{
  v2 = sub_1D7AD5E54(&qword_1EC9E3ED0);

  return MEMORY[0x1EEE21E00](a1, v2);
}

uint64_t sub_1D7AD5DC0()
{
  result = sub_1D7D2DE2C();
  if (v1 <= 0x3F)
  {
    result = sub_1D7D2EA6C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D7AD5E54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RelatedEndOfArticleFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7AD5E98(unsigned __int8 *a1)
{
  v2 = *a1;
  result = sub_1D7D2DB0C();
  if ((result & 1) == 0)
  {
    v4 = v1[10];
    if (v4)
    {
      if (!v2)
      {
        __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
        v5 = qword_1EE0C0128;
        swift_unknownObjectRetain();
        if (v5 != -1)
        {
          swift_once();
        }

        sub_1D7C53AC4(qword_1EE0C0130, v4);
        swift_allocObject();
        swift_weakInit();
        v6 = sub_1D7D2934C();
        sub_1D7D293AC();

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        swift_getObjectType();
        if (qword_1EE0C0128 != -1)
        {
          swift_once();
        }

        sub_1D7D2AF4C();
        sub_1D7AD637C(&unk_1EC9E1970, 255, MEMORY[0x1E69D7D88]);

        sub_1D7D2AB1C();

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1D7AD60C8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      if (qword_1EE0C0128 != -1)
      {
        swift_once();
      }

      sub_1D7D2AF4C();
      sub_1D7AD637C(&unk_1EC9E1970, 255, MEMORY[0x1E69D7D88]);

      sub_1D7D2AB0C();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D7AD6234()
{
  swift_unknownObjectRelease();
  sub_1D79C92AC(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7AD62CC()
{
  if (qword_1EE0C0128 != -1)
  {
    swift_once();
  }

  return sub_1D7D29D8C();
}

uint64_t sub_1D7AD6324(uint64_t a1, uint64_t a2)
{
  result = sub_1D7AD637C(&qword_1EC9E3ED8, a2, type metadata accessor for MacTitleViewArticleViewerFeatureTransition);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D7AD637C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7AD63E0()
{
  v0 = sub_1D7D2EFAC();
  __swift_allocate_value_buffer(v0, qword_1EC9E3EE0);
  __swift_project_value_buffer(v0, qword_1EC9E3EE0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1D7D2811C();

  v4 = [v2 bundleForClass_];
  sub_1D7D2811C();

  return sub_1D7D2EF6C();
}

uint64_t sub_1D7AD65B4()
{
  v0 = sub_1D7D2EFAC();
  __swift_allocate_value_buffer(v0, qword_1EC9E3EF8);
  __swift_project_value_buffer(v0, qword_1EC9E3EF8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1D7D2811C();

  v4 = [v2 bundleForClass_];
  sub_1D7D2811C();

  return sub_1D7D2EF6C();
}

uint64_t sub_1D7AD678C()
{
  v0 = sub_1D7D2EFAC();
  __swift_allocate_value_buffer(v0, qword_1EC9E3F10);
  __swift_project_value_buffer(v0, qword_1EC9E3F10);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1D7D2811C();

  v4 = [v2 bundleForClass_];
  sub_1D7D2811C();

  return sub_1D7D2EF6C();
}

uint64_t sub_1D7AD6960()
{
  v0 = sub_1D7D2EFAC();
  __swift_allocate_value_buffer(v0, qword_1EC9E3F28);
  __swift_project_value_buffer(v0, qword_1EC9E3F28);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1D7D2811C();

  v4 = [v2 bundleForClass_];
  sub_1D7D2811C();

  return sub_1D7D2EF6C();
}

uint64_t sub_1D7AD6B30()
{
  v0 = sub_1D7D2EFAC();
  __swift_allocate_value_buffer(v0, qword_1EC9E3F40);
  __swift_project_value_buffer(v0, qword_1EC9E3F40);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1D7D2811C();

  v4 = [v2 bundleForClass_];
  sub_1D7D2811C();

  return sub_1D7D2EF6C();
}

uint64_t sub_1D7AD6D08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1D7D2EFAC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1D7AD6E58@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1D7D2EFAC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1D7AD6FCC()
{
  sub_1D7AD7018();
  swift_allocObject();
  return sub_1D7D2940C();
}

void sub_1D7AD7018()
{
  if (!qword_1EC9E3F58)
  {
    v0 = sub_1D7D2947C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E3F58);
    }
  }
}

uint64_t sub_1D7AD70A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v46 = a3;
  v45 = a2;
  v47 = a4;
  sub_1D7AD7DE0(0, &qword_1EE0C12C8, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v44 - v7;
  sub_1D7AD7DE0(0, &unk_1EE0C1808, type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v44 - v11;
  sub_1D7AD7DE0(0, &unk_1EE0C16D8, type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v44 - v15;
  sub_1D7AD7DE0(0, &qword_1EE0C28A8, type metadata accessor for RelatedEndOfArticleFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v44 - v19;
  sub_1D7AD7DE0(0, &qword_1EE0C2410, type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v44 - v23;
  sub_1D7AD7DE0(0, &qword_1EE0C5A48, type metadata accessor for EndOfArticleFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v44 - v27;
  v29 = type metadata accessor for EndOfArticleFeedGroupKnobs();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v44 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  sub_1D7AD7E34(a1, v28);
  v34 = *(v30 + 48);
  if (v34(v28, 1, v29) == 1)
  {
    v35 = type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs();
    (*(*(v35 - 8) + 56))(v24, 1, 1, v35);
    v36 = type metadata accessor for RelatedEndOfArticleFeedGroupKnobs();
    (*(*(v36 - 8) + 56))(v20, 1, 1, v36);
    v37 = type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs();
    (*(*(v37 - 8) + 56))(v16, 1, 1, v37);
    EndOfArticleFeedGroupKnobs = type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs();
    (*(*(EndOfArticleFeedGroupKnobs - 8) + 56))(v12, 1, 1, EndOfArticleFeedGroupKnobs);
    v39 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs();
    (*(*(v39 - 8) + 56))(v8, 1, 1, v39);
    sub_1D7BAAE10(v24, v20, v16, v12, v8, v33);
    sub_1D7AD7EB4(v44);
    if (v34(v28, 1, v29) != 1)
    {
      sub_1D7AD7EB4(v28);
    }
  }

  else
  {
    sub_1D7AD7EB4(v44);
    sub_1D7AD7F2C(v28, v33);
  }

  v40 = type metadata accessor for EndOfArticleFeedKnobsConfig();
  v41 = v47;
  result = sub_1D7AD7F2C(v33, v47 + *(v40 + 20));
  v43 = v45 & ~(v45 >> 63);
  if (v46)
  {
    v43 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *v41 = v43;
  return result;
}

uint64_t sub_1D7AD75B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  sub_1D7AD7DE0(0, &qword_1EE0C5A48, type metadata accessor for EndOfArticleFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  sub_1D7AD7FE4(0, &qword_1EE0BEB28, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AD7F90();
  sub_1D7D31AFC();
  if (!v2)
  {
    type metadata accessor for EndOfArticleFeedGroupKnobs();
    v20 = 0;
    sub_1D7AD8048(&qword_1EE0C5A50);
    sub_1D7D3173C();
    v19 = 1;
    sub_1D7D3173C();
    sub_1D7AD70A4(v7, v17, v18, v16);
    (*(v10 + 8))(v13, v9);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7AD77E4(void *a1)
{
  sub_1D7AD7FE4(0, &qword_1EC9E3F60, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AD7F90();
  sub_1D7D31B1C();
  type metadata accessor for EndOfArticleFeedKnobsConfig();
  v10[15] = 0;
  type metadata accessor for EndOfArticleFeedGroupKnobs();
  sub_1D7AD8048(&qword_1EC9E3F68);
  sub_1D7D318BC();
  if (!v1)
  {
    v10[14] = 1;
    sub_1D7D318AC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D7AD7990(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x70756F724778616DLL;
  }

  else
  {
    v3 = 0x6F6E4B70756F7267;
  }

  if (v2)
  {
    v4 = 0xEA00000000007362;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (*a2)
  {
    v5 = 0x70756F724778616DLL;
  }

  else
  {
    v5 = 0x6F6E4B70756F7267;
  }

  if (*a2)
  {
    v6 = 0xE900000000000073;
  }

  else
  {
    v6 = 0xEA00000000007362;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D7D3197C();
  }

  return v8 & 1;
}

uint64_t sub_1D7AD7A40()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7AD7ACC()
{
  sub_1D7D303FC();
}

uint64_t sub_1D7AD7B44()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7AD7BCC@<X0>(char *a1@<X8>)
{
  v2 = sub_1D7D316EC();

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

void sub_1D7AD7C2C(uint64_t *a1@<X8>)
{
  v2 = 0x6F6E4B70756F7267;
  if (*v1)
  {
    v2 = 0x70756F724778616DLL;
  }

  v3 = 0xEA00000000007362;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D7AD7C74()
{
  if (*v0)
  {
    return 0x70756F724778616DLL;
  }

  else
  {
    return 0x6F6E4B70756F7267;
  }
}

uint64_t sub_1D7AD7CB8@<X0>(char *a1@<X8>)
{
  v2 = sub_1D7D316EC();

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

uint64_t sub_1D7AD7D1C(uint64_t a1)
{
  v2 = sub_1D7AD7F90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7AD7D58(uint64_t a1)
{
  v2 = sub_1D7AD7F90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D7AD7DE0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7AD7E34(uint64_t a1, uint64_t a2)
{
  sub_1D7AD7DE0(0, &qword_1EE0C5A48, type metadata accessor for EndOfArticleFeedGroupKnobs);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7AD7EB4(uint64_t a1)
{
  sub_1D7AD7DE0(0, &qword_1EE0C5A48, type metadata accessor for EndOfArticleFeedGroupKnobs);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7AD7F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfArticleFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7AD7F90()
{
  result = qword_1EE0C5108;
  if (!qword_1EE0C5108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5108);
  }

  return result;
}

void sub_1D7AD7FE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7AD7F90();
    v7 = a3(a1, &type metadata for EndOfArticleFeedKnobsConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7AD8048(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EndOfArticleFeedGroupKnobs();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7AD808C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfArticleFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7AD8104()
{
  result = qword_1EC9E3F70;
  if (!qword_1EC9E3F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3F70);
  }

  return result;
}

unint64_t sub_1D7AD815C()
{
  result = qword_1EE0C50F8;
  if (!qword_1EE0C50F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C50F8);
  }

  return result;
}

unint64_t sub_1D7AD81B4()
{
  result = qword_1EE0C5100;
  if (!qword_1EE0C5100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5100);
  }

  return result;
}

uint64_t RecipeRouteModelFactory.__allocating_init(blueprintLayoutProvider:subscriptionList:blockedAlertFactory:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  RecipeRouteModelFactory.init(blueprintLayoutProvider:subscriptionList:blockedAlertFactory:)(a1, a2, a3);
  return v6;
}

uint64_t RecipeRouteModelFactory.create(request:observer:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v102 = a2;
  v103 = a3;
  v104 = a4;
  v7 = *v4;
  sub_1D7AD8B4C();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v91 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for AlertOpenBlockedStory();
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v11);
  v89 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7D2EB3C();
  v95 = *(v13 - 8);
  v96 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v94 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v93 = &v88 - v18;
  v19 = type metadata accessor for RecipeRouteModel();
  MEMORY[0x1EEE9AC00](v19, v20);
  v99 = (&v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = (&v88 - v24);
  type metadata accessor for BlueprintRecipeViewerToken();
  v26 = swift_allocObject();
  sub_1D79AC454();
  v28 = *(v27 + 48);
  v29 = a1[2];
  *v25 = v29;
  v30 = type metadata accessor for RecipeBlueprintRouteModelRequest();
  sub_1D7AD8DF4(a1 + *(v30 + 24), v25 + v28, type metadata accessor for RecipeRouteContext);
  v100 = v25;
  v88 = v19;
  swift_storeEnumTagMultiPayload();
  v31 = *(v7 + 112);
  v32 = *(v7 + 96);
  v107 = *(v7 + 80);
  v108 = v32;
  v109 = v31;
  v33 = type metadata accessor for BlueprintRecipeViewerBlueprintProvider();
  v34 = *(*v4 + 120);
  v97 = v29;
  v35 = [v97 identifier];
  v36 = sub_1D7D3034C();
  v38 = v37;

  v101 = v26;
  v39 = sub_1D7C63F20(v5 + v34, v36, v38, v26);
  *(&v108 + 1) = v33;
  v109 = &protocol witness table for BlueprintRecipeViewerBlueprintProvider<A>;
  v98 = v33;
  *&v107 = v39;
  v40 = *(a1 + *(v30 + 28));
  if ((v40 & 0xFF00) != 0x200 && (*(a1 + *(v30 + 28)) & 0x100) != 0)
  {
    v41 = *(v5 + *(*v5 + 128));
    v42 = [objc_msgSend(v97 sourceChannel)];
    swift_unknownObjectRelease();
    if (!v42)
    {
      sub_1D7D3034C();
      v42 = sub_1D7D3031C();
    }

    v43 = [v41 hasMutedSubscriptionForTagID_];

    v45 = v95;
    v44 = v96;
    v46 = *(v95 + 104);
    v47 = v93;
    if (v43)
    {
      v48 = *MEMORY[0x1E69B5E00];
      v46(v93, v48, v96);
    }

    else
    {
      v46(v93, *MEMORY[0x1E69B5DF8], v96);
      v48 = *MEMORY[0x1E69B5E00];
    }

    v49 = v94;
    v46(v94, v48, v44);
    v50 = sub_1D7D2EB2C();
    v51 = *(v45 + 8);
    v51(v49, v44);
    v51(v47, v44);
    if (v50)
    {
      v52 = (v5 + *(*v5 + 136));
      v53 = v52[3];
      v54 = v52[4];
      __swift_project_boxed_opaque_existential_1(v52, v53);
      v105[0] = v40;
      v55 = v91;
      (*(v54 + 24))(v97, v105, v53, v54);
      v56 = v92;
      if ((*(v90 + 48))(v55, 1, v92) != 1)
      {
        v71 = v89;
        sub_1D7AD8CC8(v55, v89);
        v72 = type metadata accessor for RecipeBlueprintRouteModel();
        v74 = *a1;
        v73 = a1[1];
        sub_1D7AD8D2C();
        v76 = v75;
        v77 = swift_allocBox();
        v79 = v78;
        v80 = *(v76 + 48);
        v78[3] = v56;
        v78[4] = sub_1D7AD8D9C();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v79);
        sub_1D7AD8DF4(v71, boxed_opaque_existential_1, type metadata accessor for AlertOpenBlockedStory);
        v60 = v100;
        sub_1D7AD8DF4(v100, v79 + v80, type metadata accessor for RecipeRouteModel);
        v82 = v99;
        *v99 = v77;
        swift_storeEnumTagMultiPayload();
        sub_1D799CC84(&v107, v105);
        v83 = __swift_mutable_project_boxed_opaque_existential_1(v105, v106);
        v84 = MEMORY[0x1EEE9AC00](v83, v83);
        v86 = &v88 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v87 + 16))(v86, v84);
        v67 = sub_1D7B63C98(v74, v73, v82, v86, MEMORY[0x1E69E7CC0], v102, v103, v72, v98, &protocol witness table for BlueprintRecipeViewerBlueprintProvider<A>);

        sub_1D7AD8E5C(v71, type metadata accessor for AlertOpenBlockedStory);
        goto LABEL_12;
      }

      sub_1D7AD8E5C(v55, sub_1D7AD8B4C);
    }
  }

  v57 = type metadata accessor for RecipeBlueprintRouteModel();
  v59 = *a1;
  v58 = a1[1];
  v61 = v99;
  v60 = v100;
  sub_1D7AD8DF4(v100, v99, type metadata accessor for RecipeRouteModel);
  sub_1D799CC84(&v107, v105);
  v62 = __swift_mutable_project_boxed_opaque_existential_1(v105, v106);
  v63 = MEMORY[0x1EEE9AC00](v62, v62);
  v65 = &v88 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v66 + 16))(v65, v63);
  v67 = sub_1D7B63C98(v59, v58, v61, v65, MEMORY[0x1E69E7CC0], v102, v103, v57, v98, &protocol witness table for BlueprintRecipeViewerBlueprintProvider<A>);

LABEL_12:
  sub_1D7AD8E5C(v60, type metadata accessor for RecipeRouteModel);
  __swift_destroy_boxed_opaque_existential_1(v105);
  v68 = v104;
  v69 = v101;
  *v104 = v67;
  v68[1] = v69;
  return __swift_destroy_boxed_opaque_existential_1(&v107);
}

void sub_1D7AD8B4C()
{
  if (!qword_1EE0BD540)
  {
    type metadata accessor for AlertOpenBlockedStory();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BD540);
    }
  }
}

uint64_t RecipeRouteModelFactory.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 120));

  __swift_destroy_boxed_opaque_existential_1(v0 + *(*v0 + 136));
  return v0;
}

uint64_t RecipeRouteModelFactory.__deallocating_deinit()
{
  RecipeRouteModelFactory.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7AD8CC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertOpenBlockedStory();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7AD8D2C()
{
  if (!qword_1EC9E3F78)
  {
    sub_1D7ABC970();
    type metadata accessor for RecipeRouteModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E3F78);
    }
  }
}

unint64_t sub_1D7AD8D9C()
{
  result = qword_1EC9E5370;
  if (!qword_1EC9E5370)
  {
    type metadata accessor for AlertOpenBlockedStory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5370);
  }

  return result;
}

uint64_t sub_1D7AD8DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7AD8E5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7AD8EFC(void *a1)
{
  v2 = v1;
  v38 = type metadata accessor for RouteModel();
  MEMORY[0x1EEE9AC00](v38, v4);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for RecipeRouteModel();
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = [a1 identifier];
  v13 = sub_1D7D3034C();
  v15 = v14;

  sub_1D79AC1E8();
  v17 = *(v16 + 48);
  v18 = [a1 identifier];
  v19 = sub_1D7D3034C();
  v21 = v20;

  *v11 = v19;
  v11[1] = v21;
  sub_1D7AD94C0(v2 + OBJC_IVAR____TtC12NewsArticles25RecipeArticleDrawerRouter_routeContext, v11 + v17, type metadata accessor for RecipeRouteContext);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RecipeBlueprintRouteModel();
  v22 = swift_allocObject();
  v23 = OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel____lazy_storage___transitionIdentifier;
  sub_1D7AD9468();
  (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
  v25 = v22 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel__observer;
  *(v22 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel__observer + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + 16) = v13;
  *(v22 + 24) = v15;
  sub_1D7AD94C0(v11, v22 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_routeModel, type metadata accessor for RecipeRouteModel);
  sub_1D7AD94C0(v11, v22 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_currentModel, type metadata accessor for RecipeRouteModel);
  *(v25 + 8) = 0;
  swift_unknownObjectWeakAssign();
  *(v22 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_blueprintTraits) = MEMORY[0x1E69E7CC0];

  sub_1D7BEF87C(v13, v15, &v39);

  v26 = v43 & 0xCFFFFFFFFFFFFFF8;
  v27 = type metadata accessor for RecipeViewerBlueprintProvider();
  v36 = v41;
  v37 = v39;
  v34 = v42;
  v35 = v40;
  v28 = swift_allocObject();
  v40 = v35;
  v39 = v37;
  v42 = v34;
  v41 = v36;
  v43 = v26;
  sub_1D7AD9528();
  swift_allocObject();
  *(v28 + 16) = sub_1D7D28ECC();
  *(&v40 + 1) = v27;
  *&v41 = &protocol witness table for RecipeViewerBlueprintProvider;
  *&v39 = v28;
  sub_1D7AD9578(v11, type metadata accessor for RecipeRouteModel);
  sub_1D799D69C(&v39, v22 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_blueprintProvider);
  v29 = v2[5];
  v30 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v29);
  *v6 = v22;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v39) = 0;
  v31 = v2[7];
  v32 = *(v30 + 8);

  v32(v6, &v39, v31, v29, v30);

  return sub_1D7AD9578(v6, type metadata accessor for RouteModel);
}

uint64_t sub_1D7AD92E4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  sub_1D7AD9578(v0 + OBJC_IVAR____TtC12NewsArticles25RecipeArticleDrawerRouter_routeContext, type metadata accessor for RecipeRouteContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecipeArticleDrawerRouter()
{
  result = qword_1EC9E3F88;
  if (!qword_1EC9E3F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7AD93C0()
{
  result = type metadata accessor for RecipeRouteContext();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D7AD9468()
{
  if (!qword_1EE0BB250)
  {
    sub_1D7D2BA0C();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BB250);
    }
  }
}

uint64_t sub_1D7AD94C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7AD9528()
{
  if (!qword_1EC9E53F0)
  {
    v0 = sub_1D7D28F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E53F0);
    }
  }
}

uint64_t sub_1D7AD9578(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for LinkAction()
{
  result = qword_1EE0BDD88;
  if (!qword_1EE0BDD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7AD9624()
{
  sub_1D7D2824C();
  if (v0 <= 0x3F)
  {
    sub_1D7AD9738();
    if (v1 <= 0x3F)
    {
      sub_1D7AD9820(319, &qword_1EE0BB108, type metadata accessor for ArticleNavigationAction);
      if (v2 <= 0x3F)
      {
        sub_1D7AD97A4();
        if (v3 <= 0x3F)
        {
          sub_1D7A67968();
          if (v4 <= 0x3F)
          {
            sub_1D7AD9820(319, &qword_1EE0BB110, sub_1D7998DF0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D7AD9738()
{
  if (!qword_1EE0BDEA8)
  {
    sub_1D7D2824C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BDEA8);
    }
  }
}

void sub_1D7AD97A4()
{
  if (!qword_1EE0BB100)
  {
    sub_1D7A869EC();
    type metadata accessor for ArticleNavigationAction();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE0BB100);
    }
  }
}

void sub_1D7AD9820(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

_BYTE *sub_1D7AD98D0()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC12NewsArticles24ANFDebugSettingsProvider_viewportDebuggingEnabled] = 0;
  v0[OBJC_IVAR____TtC12NewsArticles24ANFDebugSettingsProvider_testingConditionEnabled] = 0;
  v2 = OBJC_IVAR____TtC12NewsArticles24ANFDebugSettingsProvider_observers;
  *&v0[v2] = [objc_opt_self() hashTableWithOptions_];
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = qword_1EE0CB4C0;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7AD9CD4();
  sub_1D7D285BC();

  v5[OBJC_IVAR____TtC12NewsArticles24ANFDebugSettingsProvider_viewportDebuggingEnabled] = v7;
  if (qword_1EE0CB4A8 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D7D285BC();

  v5[OBJC_IVAR____TtC12NewsArticles24ANFDebugSettingsProvider_testingConditionEnabled] = v7;

  return v5;
}

void sub_1D7AD9ACC(unsigned __int8 *a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    *(Strong + *a3) = v6;
    v9 = [*(Strong + OBJC_IVAR____TtC12NewsArticles24ANFDebugSettingsProvider_observers) allObjects];
    sub_1D7AD9D54();
    v10 = sub_1D7D3063C();

    if (v10 >> 62)
    {
      v11 = sub_1D7D3167C();
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_4:
        if (v11 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v11; ++i)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1DA70EF00](i, v10);
          }

          else
          {
            v13 = *(v10 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          [v13 *a4];
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

unint64_t sub_1D7AD9CD4()
{
  result = qword_1EE0C6D70;
  if (!qword_1EE0C6D70)
  {
    type metadata accessor for ANFDebugSettingsProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C6D70);
  }

  return result;
}

unint64_t sub_1D7AD9D54()
{
  result = qword_1EC9E4028;
  if (!qword_1EC9E4028)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9E4028);
  }

  return result;
}

uint64_t sub_1D7AD9EC8()
{
  __swift_project_boxed_opaque_existential_1((*v0 + OBJC_IVAR____TtC12NewsArticles21TextSizeControlModule_resolver), *(*v0 + OBJC_IVAR____TtC12NewsArticles21TextSizeControlModule_resolver + 24));
  type metadata accessor for TextSizeControlViewController();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1D7AD9F2C(uint64_t a1)
{
  v1[2] = a1;
  swift_unknownObjectRetain();
  v2 = sub_1D7D2934C();
  sub_1D7A18F14(0);
  v3 = sub_1D7D293AC();

  v1[3] = v3;
  v4 = sub_1D7D2934C();
  v5 = sub_1D7D293AC();

  v1[4] = v5;
  v6 = sub_1D7D2934C();
  v7 = sub_1D7D293AC();

  v1[5] = v7;
  v8 = sub_1D7D2934C();
  v9 = sub_1D7D293AC();

  swift_unknownObjectRelease();

  v1[6] = v9;
  return v1;
}

uint64_t sub_1D7ADA060@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = 0;
  result = sub_1D7ADA0A0(a1, &v4);
  *a2 = result;
  return result;
}

uint64_t sub_1D7ADA0A0(uint64_t a1, _BYTE *a2)
{
  LOBYTE(v8) = *a2;
  sub_1D7CDF150(&v8, v9);
  v2 = *&v9[0];
  if (!*&v9[0])
  {
    sub_1D7ADA450(v9);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D7ADA4FC(v9);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_13:

    v6 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v8 = v6;
    sub_1D7A18F14(0);
    sub_1D7ADA550(&qword_1EE0BF1C0, sub_1D7A18F14);
    v7 = sub_1D7D3052C();

    return v7;
  }

  v3 = sub_1D7D3167C();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_4:
  v8 = MEMORY[0x1E69E7CC0];
  result = sub_1D7D3156C();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA70EF00](v5, v2);
      }

      else
      {
      }

      ++v5;
      swift_beginAccess();
      swift_unknownObjectRetain();

      sub_1D7D3153C();
      sub_1D7D3157C();
      sub_1D7D3158C();
      sub_1D7D3154C();
    }

    while (v3 != v5);

    v6 = v8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7ADA2B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = 1;
  result = sub_1D7ADA0A0(a1, &v4);
  *a2 = result;
  return result;
}

uint64_t sub_1D7ADA2F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = 2;
  result = sub_1D7ADA0A0(a1, &v4);
  *a2 = result;
  return result;
}

uint64_t sub_1D7ADA33C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = 3;
  result = sub_1D7ADA0A0(a1, &v4);
  *a2 = result;
  return result;
}

uint64_t sub_1D7ADA380()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7ADA450(uint64_t a1)
{
  sub_1D7ADA4AC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7ADA4AC()
{
  if (!qword_1EE0C6128[0])
  {
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, qword_1EE0C6128);
    }
  }
}

uint64_t sub_1D7ADA550(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7ADA70C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D7D2833C();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53.receiver = v1;
  v53.super_class = ObjectType;
  objc_msgSendSuper2(&v53, sel_viewDidLoad, v6);
  v9 = *&v1[OBJC_IVAR____TtC12NewsArticles32ModalArticleViewerViewController_content];
  [v1 addChildViewController_];
  v10 = [v1 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  v12 = [v9 view];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  [v11 addSubview_];

  v14 = [v9 view];
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  v16 = [v1 view];
  if (!v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v15 setFrame_];
  v26 = [v9 view];
  if (!v26)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v27 = v26;
  [v26 setAutoresizingMask_];

  [v9 didMoveToParentViewController_];
  v28 = &v1[OBJC_IVAR____TtC12NewsArticles32ModalArticleViewerViewController_brandBarConfigManager];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC12NewsArticles32ModalArticleViewerViewController_brandBarConfigManager], *&v1[OBJC_IVAR____TtC12NewsArticles32ModalArticleViewerViewController_brandBarConfigManager + 24]);
  if ((sub_1D7A30A38() & 1) == 0)
  {
    return;
  }

  v48 = v4;
  sub_1D799CC84(&v1[OBJC_IVAR____TtC12NewsArticles32ModalArticleViewerViewController_brandBarRenderer], v52);
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v52, v52[3]);
  v30 = MEMORY[0x1EEE9AC00](v29, v29);
  v32 = (&v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32, v30);
  v34 = *v32;
  v50 = type metadata accessor for BrandBarRenderer();
  v51 = &off_1F52AFBD0;
  v49[0] = v34;
  v35 = objc_allocWithZone(type metadata accessor for BrandBar());
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
  v37 = MEMORY[0x1EEE9AC00](v36, v36);
  v39 = (&v47 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39, v37);
  v41 = sub_1D7ADB174(*v39, v35);
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v52);
  v42 = *&v1[OBJC_IVAR____TtC12NewsArticles32ModalArticleViewerViewController_brandbar];
  *&v1[OBJC_IVAR____TtC12NewsArticles32ModalArticleViewerViewController_brandbar] = v41;
  v43 = v41;

  v44 = [v1 view];
  if (!v44)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v45 = v44;
  v46 = v43;
  [v45 addSubview_];

  swift_unknownObjectWeakAssign();
  __swift_project_boxed_opaque_existential_1(v28, *(v28 + 3));
  if (qword_1EC9DFF00 != -1)
  {
    swift_once();
  }

  type metadata accessor for BrandBarConfigManager();
  sub_1D7ADB5C0(&qword_1EC9E28E8);
  sub_1D7D285AC();
  if (__OFADD__(v52[0], 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  ++v52[0];
  sub_1D7ADB5C0(qword_1EC9E28F0);
  sub_1D7D2872C();
  if (qword_1EC9DFF08 != -1)
  {
LABEL_15:
    swift_once();
  }

  sub_1D7D2832C();
  sub_1D7D2872C();
  (*(v48 + 8))(v8, v3);
  [*&v46[OBJC_IVAR____TtC12NewsArticles8BrandBar_ctaButton] addTarget:v1 action:sel_brandbarCtaButtonTapped forControlEvents:64];
}

void sub_1D7ADAD44(char a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewWillAppear_, a1 & 1);
  sub_1D7D2A94C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = sub_1D7D2A8FC();
  v5 = sub_1D7D3031C();
  [v4 setIdentifier_];

  v6 = sub_1D7D30D8C();
  [v6 setLeftBarButtonItem_];
}

void sub_1D7ADAE50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1D7ADAF08()
{
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12NewsArticles32ModalArticleViewerViewController_brandbar];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 frame];
      v6 = v5;
      v8 = v7;

      [*&v2[OBJC_IVAR____TtC12NewsArticles8BrandBar_titleLabel] sizeThatFits_];
      [*&v2[OBJC_IVAR____TtC12NewsArticles8BrandBar_bodyLabel] sizeThatFits_];
      sub_1D7D3100C();
      v10 = v9;
      v12 = v11;
      v13 = [v0 view];
      if (v13)
      {
        v14 = v13;
        [v13 frame];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v29.origin.x = v16;
        v29.origin.y = v18;
        v29.size.width = v20;
        v29.size.height = v22;
        Height = CGRectGetHeight(v29);
        v24 = [v0 view];
        if (v24)
        {
          v25 = v24;
          [v24 safeAreaInsets];
          v27 = v26;

          [v2 setFrameUsingCenterAndBounds_];
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_1D7ADB174(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v44 = type metadata accessor for BrandBarRenderer();
  v45 = &off_1F52AFBD0;
  v43[0] = a1;
  v5 = OBJC_IVAR____TtC12NewsArticles8BrandBar_iconView;
  type metadata accessor for BrandBarNewsIcon();
  *&a2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC12NewsArticles8BrandBar_ctaButton;
  sub_1D7D29BBC();
  *&a2[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC12NewsArticles8BrandBar_titleLabel;
  *&a2[v7] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v8 = OBJC_IVAR____TtC12NewsArticles8BrandBar_bodyLabel;
  *&a2[v8] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v9 = OBJC_IVAR____TtC12NewsArticles8BrandBar_backgroundView;
  *&a2[v9] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v10 = OBJC_IVAR____TtC12NewsArticles8BrandBar_pinstripe;
  *&a2[v10] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  sub_1D799CC84(v43, &a2[OBJC_IVAR____TtC12NewsArticles8BrandBar_renderer]);
  v42.receiver = a2;
  v42.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v42, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1D79EB1FC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D49E90;
  v13 = *&v11[OBJC_IVAR____TtC12NewsArticles8BrandBar_backgroundView];
  *(inited + 32) = v13;
  v41 = inited + 32;
  v14 = *&v11[OBJC_IVAR____TtC12NewsArticles8BrandBar_iconView];
  *(inited + 40) = v14;
  v15 = *&v11[OBJC_IVAR____TtC12NewsArticles8BrandBar_ctaButton];
  *(inited + 48) = v15;
  v16 = *&v11[OBJC_IVAR____TtC12NewsArticles8BrandBar_titleLabel];
  *(inited + 56) = v16;
  v17 = *&v11[OBJC_IVAR____TtC12NewsArticles8BrandBar_bodyLabel];
  *(inited + 64) = v17;
  v18 = *&v11[OBJC_IVAR____TtC12NewsArticles8BrandBar_pinstripe];
  *(inited + 72) = v18;
  v19 = inited & 0xC000000000000001;
  v20 = v11;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_21;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  for (i = v21; ; i = MEMORY[0x1DA70EF00](0, inited))
  {
    v28 = i;
    [v20 addSubview_];

    if (v19)
    {
      v29 = MEMORY[0x1DA70EF00](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_20;
      }

      v29 = *(inited + 40);
    }

    v30 = v29;
    [v20 addSubview_];

    if (v19)
    {
      v31 = MEMORY[0x1DA70EF00](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_20;
      }

      v31 = *(inited + 48);
    }

    v32 = v31;
    [v20 addSubview_];

    if (v19)
    {
      v33 = MEMORY[0x1DA70EF00](3, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_20;
      }

      v33 = *(inited + 56);
    }

    v34 = v33;
    [v20 addSubview_];

    if (v19)
    {
      v35 = MEMORY[0x1DA70EF00](4, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_20;
      }

      v35 = *(inited + 64);
    }

    v36 = v35;
    [v20 addSubview_];

    if (v19)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 6uLL)
    {
      v37 = *(inited + 72);
      goto LABEL_19;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v37 = MEMORY[0x1DA70EF00](5, inited);
LABEL_19:
  v38 = v37;
  [v20 addSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  v39 = [objc_opt_self() defaultCenter];
  [v39 addObserver:v20 selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

  __swift_project_boxed_opaque_existential_1(v43, v44);
  sub_1D7C75640(v20);

  __swift_destroy_boxed_opaque_existential_1(v43);
  return v20;
}

uint64_t sub_1D7ADB5C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BrandBarConfigManager();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7ADB604(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AnalyticsEventReporter();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7ADB658(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &qword_1EE0CC8C0);
  result = sub_1D7D28D2C();
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798F168(0, &qword_1EE0C7830);
    sub_1D7D28D2C();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7ADC2F8();
    result = sub_1D7D28D1C();
    if (result)
    {
      v3 = result;
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
      MEMORY[0x1EEE9AC00](v4, v4);
      v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v7 + 16))(v6);
      v8 = sub_1D7ADC16C(*v6, v9, v3);
      __swift_destroy_boxed_opaque_existential_1(v10);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1D7ADB808@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AnalyticsEventTransformerManager();
  v3 = swift_allocObject();
  result = sub_1D7A513CC(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_1F52A4CC0;
  *a1 = v3;
  return result;
}

uint64_t sub_1D7ADB86C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v4 = type metadata accessor for ArticleScrollAnalyticsEventTransformer();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  sub_1D7992EFC(0, &qword_1EE0BEF58);
  v47 = v4;
  v48 = &off_1F52A9B18;
  v46[0] = v6;

  v7 = sub_1D7D31B4C();
  v9 = v8;
  sub_1D799CC84(v46, v45);
  swift_beginAccess();
  sub_1D7B8A5C0(v45, v7, v9);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v10 = type metadata accessor for MediaViewAnalyticsEventTransformer();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = result;
  sub_1D7992EFC(0, &unk_1EE0BF030);
  v47 = v10;
  v48 = &off_1F52A75A0;
  v46[0] = v11;

  v12 = sub_1D7D31B4C();
  v14 = v13;
  sub_1D799CC84(v46, v45);
  swift_beginAccess();
  sub_1D7B8A5C0(v45, v12, v14);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v15 = type metadata accessor for MediaEngageAnalyticsEventTransformer();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = result;
  sub_1D7992EFC(0, &qword_1EE0BEFA8);
  v47 = v15;
  v48 = &off_1F52B3C80;
  v46[0] = v16;

  v17 = sub_1D7D31B4C();
  v19 = v18;
  sub_1D799CC84(v46, v45);
  swift_beginAccess();
  sub_1D7B8A5C0(v45, v17, v19);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v20 = type metadata accessor for MediaEngageCompleteAnalyticsEventTransformer();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = result;
  sub_1D7992EFC(0, &qword_1EE0BEE30);
  v47 = v20;
  v48 = &off_1F52A8830;
  v46[0] = v21;

  v22 = sub_1D7D31B4C();
  v24 = v23;
  sub_1D799CC84(v46, v45);
  swift_beginAccess();
  sub_1D7B8A5C0(v45, v22, v24);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v25 = type metadata accessor for MediaExposureAnalyticsEventTransformer();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = result;
  sub_1D7992EFC(0, &qword_1EE0BEF48);
  v47 = v25;
  v48 = &off_1F529DB08;
  v46[0] = v26;

  v27 = sub_1D7D31B4C();
  v29 = v28;
  sub_1D799CC84(v46, v45);
  swift_beginAccess();
  sub_1D7B8A5C0(v45, v27, v29);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v30 = type metadata accessor for ComponentExposureAnalyticsEventTransformer();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v31 = result;
  sub_1D7992EFC(0, &unk_1EE0BEE90);
  v47 = v30;
  v48 = &off_1F52A5470;
  v46[0] = v31;

  v32 = sub_1D7D31B4C();
  v34 = v33;
  sub_1D799CC84(v46, v45);
  swift_beginAccess();
  sub_1D7B8A5C0(v45, v32, v34);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v35 = type metadata accessor for LinkTapAnalyticsEventTransformer();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v36 = result;
  sub_1D7992EFC(0, &qword_1EE0BF068);
  v47 = v35;
  v48 = &off_1F52A8D38;
  v46[0] = v36;

  v37 = sub_1D7D31B4C();
  v39 = v38;
  sub_1D799CC84(v46, v45);
  swift_beginAccess();
  sub_1D7B8A5C0(v45, v37, v39);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  EventTransformer = type metadata accessor for WebContentLoadEventTransformer();
  result = sub_1D7D28D1C();
  if (result)
  {
    v41 = result;
    sub_1D7992EFC(0, &unk_1EE0BEEE0);
    v47 = EventTransformer;
    v48 = &off_1F529D390;
    v46[0] = v41;

    v42 = sub_1D7D31B4C();
    v44 = v43;
    sub_1D799CC84(v46, v45);
    swift_beginAccess();
    sub_1D7B8A5C0(v45, v42, v44);
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D7ADBFCC()
{
  type metadata accessor for ArticleScrollAnalyticsEventTransformer();

  return swift_allocObject();
}

uint64_t sub_1D7ADC000()
{
  type metadata accessor for MediaViewAnalyticsEventTransformer();

  return swift_allocObject();
}

uint64_t sub_1D7ADC034()
{
  type metadata accessor for MediaEngageAnalyticsEventTransformer();

  return swift_allocObject();
}

uint64_t sub_1D7ADC068()
{
  type metadata accessor for MediaEngageCompleteAnalyticsEventTransformer();

  return swift_allocObject();
}

uint64_t sub_1D7ADC09C()
{
  type metadata accessor for MediaExposureAnalyticsEventTransformer();

  return swift_allocObject();
}

uint64_t sub_1D7ADC0D0()
{
  type metadata accessor for ComponentExposureAnalyticsEventTransformer();

  return swift_allocObject();
}

uint64_t sub_1D7ADC104()
{
  type metadata accessor for LinkTapAnalyticsEventTransformer();

  return swift_allocObject();
}

uint64_t sub_1D7ADC138()
{
  type metadata accessor for WebContentLoadEventTransformer();

  return swift_allocObject();
}

id sub_1D7ADC16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnalyticsEventTransformerManager();
  v18[3] = v6;
  v18[4] = &off_1F52A4CC0;
  v18[0] = a1;
  v7 = type metadata accessor for AnalyticsEventReporter();
  v8 = objc_allocWithZone(v7);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v18, v6);
  MEMORY[0x1EEE9AC00](v9, v9);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v17[3] = v6;
  v17[4] = &off_1F52A4CC0;
  v17[0] = v13;
  sub_1D799CC84(v17, &v8[OBJC_IVAR____TtC12NewsArticles22AnalyticsEventReporter_transformerManager]);
  sub_1D7A74FC0(a2, &v8[OBJC_IVAR____TtC12NewsArticles22AnalyticsEventReporter_articleCoordinator]);
  *&v8[OBJC_IVAR____TtC12NewsArticles22AnalyticsEventReporter_eventManager] = a3;
  v16.receiver = v8;
  v16.super_class = v7;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_1D7A35108(a2);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v14;
}

void sub_1D7ADC2F8()
{
  if (!qword_1EE0CBEB0)
  {
    sub_1D79962A4();
    v0 = sub_1D7D28CAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBEB0);
    }
  }
}

uint64_t getEnumTagSinglePayload for RecipeViewerConfig(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RecipeViewerConfig(uint64_t result, int a2, int a3)
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

char *sub_1D7ADC3FC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR___NANowPlayingVolumeSlider_volumeController;
  v11 = [objc_allocWithZone(MEMORY[0x1E6970A28]) init];
  v12 = [objc_allocWithZone(MEMORY[0x1E6970A18]) initWithDataSource_];

  *&v4[v10] = v12;
  v4[OBJC_IVAR___NANowPlayingVolumeSlider_isTracking] = 0;
  *&v4[OBJC_IVAR___NANowPlayingVolumeSlider_volumeCommitTimer] = 0;
  v13 = OBJC_IVAR___NANowPlayingVolumeSlider_slider;
  type metadata accessor for SliderView();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = OBJC_IVAR___NANowPlayingVolumeSlider_trackingColor;
  *&v4[v14] = [objc_opt_self() labelColor];
  v15 = &v4[OBJC_IVAR___NANowPlayingVolumeSlider_volumeChangeHandler];
  *v15 = 0;
  v15[1] = 0;
  v88.receiver = v4;
  v88.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v88, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = *&v16[OBJC_IVAR___NANowPlayingVolumeSlider_volumeController];
  v18 = v16;
  [v17 setDelegate_];
  sub_1D7ADCD40();
  [v18 setIsAccessibilityElement_];
  v19 = sub_1D7D3062C();
  [v18 setAccessibilityElements_];

  v20 = *MEMORY[0x1E69DD9A8];
  v21 = [v18 accessibilityTraits];
  if ((v20 & ~v21) != 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  [v18 setAccessibilityTraits_];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v25 = sub_1D7D3031C();

  [v18 setAccessibilityLabel_];

  v26 = objc_opt_self();
  v27 = [v26 configurationWithPointSize_];
  v28 = sub_1D7D3031C();
  v29 = objc_opt_self();
  v30 = [v29 systemImageNamed:v28 withConfiguration:v27];

  v31 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v32 = v31;
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  v33 = [v26 configurationWithPointSize_];
  v34 = sub_1D7D3031C();
  v35 = [v29 systemImageNamed:v34 withConfiguration:v33];

  v36 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v37 = v36;
  [v37 &off_1E84EC5B8 + 2];
  sub_1D79EB1FC();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1D7D3D410;
  *(v38 + 32) = v32;
  v39 = OBJC_IVAR___NANowPlayingVolumeSlider_slider;
  v40 = *&v18[OBJC_IVAR___NANowPlayingVolumeSlider_slider];
  *(v38 + 40) = v40;
  *(v38 + 48) = v37;
  v41 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
  sub_1D7992EFC(0, &unk_1EE0BED20);
  v42 = v32;
  v87 = v37;
  v43 = v40;
  v44 = sub_1D7D3062C();

  v45 = [v41 initWithArrangedSubviews_];

  v46 = v45;
  [v46 setTranslatesAutoresizingMaskIntoConstraints_];
  [v46 setAxis_];
  [v46 setAlignment_];
  [v46 setCustomSpacing:v42 afterView:16.0];
  v85 = v39;
  [v46 setCustomSpacing:*&v18[v39] afterView:10.0];
  v47 = v18;
  [v47 addSubview_];
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1D7D49E90;
  v49 = [v42 widthAnchor];

  v86 = v42;
  v50 = [v42 image];
  v51 = 0.0;
  v52 = 0.0;
  if (v50)
  {
    v53 = v50;
    [v50 size];
    v52 = v54;
  }

  v55 = [v49 constraintEqualToConstant_];

  *(v48 + 32) = v55;
  v56 = [v87 widthAnchor];

  v57 = [v87 image];
  if (v57)
  {
    v58 = v57;
    [v57 size];
    v51 = v59;
  }

  v60 = objc_opt_self();
  v61 = [v56 constraintEqualToConstant_];

  *(v48 + 40) = v61;
  v62 = [v46 widthAnchor];
  v63 = [v47 widthAnchor];

  v64 = [v62 constraintEqualToAnchor_];
  *(v48 + 48) = v64;
  v65 = [v46 heightAnchor];
  v66 = [v47 heightAnchor];

  v67 = [v65 constraintEqualToAnchor_];
  *(v48 + 56) = v67;
  v68 = [v46 leadingAnchor];
  v69 = [v47 leadingAnchor];

  v70 = [v68 constraintEqualToAnchor_];
  *(v48 + 64) = v70;
  v71 = [v46 topAnchor];

  v72 = [v47 topAnchor];
  v73 = [v71 constraintEqualToAnchor_];

  *(v48 + 72) = v73;
  sub_1D7992EFC(0, &qword_1EE0BAFB0);
  v74 = sub_1D7D3062C();

  [v60 activateConstraints_];

  v75 = *&v18[v85];
  v76 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = v75;

  v78 = swift_allocObject();
  *(v78 + 16) = v76;
  *(v78 + 24) = v46;
  v79 = &v77[OBJC_IVAR____TtC12NewsArticles10SliderView_valueChangedHandler];
  v80 = *&v77[OBJC_IVAR____TtC12NewsArticles10SliderView_valueChangedHandler];
  *v79 = sub_1D7ADE10C;
  v79[1] = v78;
  v81 = v46;

  sub_1D79AD740(v80);

  v82 = *&v18[v85];
  v83 = sub_1D7D2499C();

  [v47 addGestureRecognizer_];
  return v47;
}

void sub_1D7ADCD40()
{
  v1 = v0;
  v2 = OBJC_IVAR___NANowPlayingVolumeSlider_volumeController;
  v3 = [*(v0 + OBJC_IVAR___NANowPlayingVolumeSlider_volumeController) isVolumeControlAvailable];
  v4 = *(v0 + OBJC_IVAR___NANowPlayingVolumeSlider_slider);
  if (v3)
  {
    [*(v1 + v2) volumeValue];
    v6 = v5;
    v7 = v5 < 0.0;
    v8 = 0.0;
    if (!v7)
    {
      v8 = v6;
    }

    if (v8 <= 1.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1.0;
    }

    v10 = OBJC_IVAR____TtC12NewsArticles10SliderView_value;
    if (v9 != *&v4[OBJC_IVAR____TtC12NewsArticles10SliderView_value])
    {
      v11 = sub_1D7D24D38();
      [v4 bounds];
      [v11 setConstant_];

      v12 = vabdd_f64(*&v4[v10], v9) * 0.25;
      if (v12 > 0.1)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.1;
      }

      v14 = objc_opt_self();
      v15 = swift_allocObject();
      *(v15 + 16) = v4;
      aBlock[4] = sub_1D7ADE0EC;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D79FE25C;
      aBlock[3] = &block_descriptor_13;
      v16 = _Block_copy(aBlock);
      v17 = v4;

      [v14 animateWithDuration:4 delay:v16 options:0 animations:v13 completion:0.0];
      _Block_release(v16);
      *&v4[v10] = v9;
    }

    v18 = OBJC_IVAR____TtC12NewsArticles10SliderView_isEnabled;
    v4[OBJC_IVAR____TtC12NewsArticles10SliderView_isEnabled] = 1;
    v19 = sub_1D7D2499C();
    [v19 setEnabled_];
  }

  else
  {
    v20 = OBJC_IVAR____TtC12NewsArticles10SliderView_value;
    if (*&v4[OBJC_IVAR____TtC12NewsArticles10SliderView_value] != 0.0)
    {
      v21 = sub_1D7D24D38();
      [v4 bounds];
      [v21 setConstant_];

      [v4 layoutIfNeeded];
      *&v4[v20] = 0;
    }

    v22 = OBJC_IVAR____TtC12NewsArticles10SliderView_isEnabled;
    v4[OBJC_IVAR____TtC12NewsArticles10SliderView_isEnabled] = 0;
    v23 = sub_1D7D2499C();
    [v23 setEnabled_];
  }
}

void sub_1D7ADCFF8(char a1, double a2, uint64_t a3, void *a4)
{
  v7 = sub_1D7D2DB2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v71 = (v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v69 = (v60 - v13);
  v70 = sub_1D7D2DB9C();
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v14);
  v67 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7D2DB3C();
  v65 = *(v16 - 8);
  v66 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D7D2DB7C();
  v64 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D7D30E9C();
  v63 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    v61 = v8;
    v62 = v7;
    v31 = OBJC_IVAR___NANowPlayingVolumeSlider_isTracking;
    if (Strong[OBJC_IVAR___NANowPlayingVolumeSlider_isTracking] != (a1 & 1))
    {
      if (*(*&Strong[OBJC_IVAR___NANowPlayingVolumeSlider_slider] + OBJC_IVAR____TtC12NewsArticles10SliderView_isTracking) == 1)
      {
        v32 = qword_1EC9E0070;
        v33 = Strong;
        if (v32 != -1)
        {
          swift_once();
        }

        v35 = *byte_1ECA0BD00;
        v34 = *&byte_1ECA0BD00[16];
        v36 = *&byte_1ECA0BD00[32];
      }

      else
      {
        v37 = Strong;
        v34 = xmmword_1D7D3D430;
        v35 = xmmword_1D7D3D440;
        v36 = 0uLL;
      }

      aBlock = v35;
      v73 = v34;
      v74 = v36;
      [v30 setTransform_];

      if (a1)
      {
        v38 = *&v30[OBJC_IVAR___NANowPlayingVolumeSlider_trackingColor];
      }

      else
      {
        v38 = 0;
      }

      [a4 setTintColor_];

      v30[v31] = a1 & 1;
    }

    v39 = *&v30[OBJC_IVAR___NANowPlayingVolumeSlider_volumeChangeHandler];
    if (v39)
    {

      v39(v40);
      sub_1D79AD740(v39);
    }

    v41 = OBJC_IVAR___NANowPlayingVolumeSlider_volumeCommitTimer;
    v42 = *&v30[OBJC_IVAR___NANowPlayingVolumeSlider_volumeCommitTimer];
    p_cb = &OBJC_PROTOCOL___NUANFDebugSettingsProvider.cb;
    v44 = &selRef_addTarget_action_;
    if (a1)
    {
      if (!v42)
      {
        v60[2] = sub_1D7992EFC(0, &qword_1EC9E41D0);
        *&aBlock = MEMORY[0x1E69E7CC0];
        v45 = MEMORY[0x1E69E80B0];
        v60[1] = sub_1D7ADE16C(&qword_1EC9E41D8, MEMORY[0x1E69E80B0]);
        sub_1D7ADE1B4(0, &qword_1EC9E41E0, v45);
        sub_1D7ADE114(&qword_1EC9E41E8, &qword_1EC9E41E0, v45);
        sub_1D7D313AC();
        sub_1D7992EFC(0, &qword_1EE0BEFF0);
        v46 = sub_1D7D30E1C();
        v47 = sub_1D7D30EAC();

        (*(v63 + 8))(v27, v24);
        ObjectType = swift_getObjectType();
        v49 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *&v74 = sub_1D7ADE164;
        *(&v74 + 1) = v49;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v73 = sub_1D79FE25C;
        *(&v73 + 1) = &block_descriptor_10;
        v50 = _Block_copy(&aBlock);

        sub_1D7D2DB5C();
        v63 = ObjectType;
        sub_1D7ADD894();
        sub_1D7D30EBC();
        _Block_release(v50);
        (*(v65 + 8))(v19, v66);
        (*(v64 + 8))(v23, v20);

        v51 = v67;
        sub_1D7D2DB8C();
        v52 = v69;
        *v69 = 200;
        v53 = v61;
        v54 = *(v61 + 104);
        v55 = v62;
        v54(v52, *MEMORY[0x1E69E7F38], v62);
        v56 = v71;
        *v71 = 0;
        v54(v56, *MEMORY[0x1E69E7F28], v55);
        MEMORY[0x1DA70E9C0](v51, v52, v56, v63);
        v57 = *(v53 + 8);
        v57(v56, v55);
        v58 = v55;
        v44 = &selRef_addTarget_action_;
        v57(v52, v58);
        (*(v68 + 8))(v51, v70);
        sub_1D7D30EDC();
        *&v30[v41] = v47;
        swift_unknownObjectRelease();
        p_cb = (&OBJC_PROTOCOL___NUANFDebugSettingsProvider + 64);
      }
    }

    else
    {
      if (v42)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1D7D30ECC();
        swift_unknownObjectRelease();
      }

      *&v30[v41] = 0;
      swift_unknownObjectRelease();
      v59 = *(*&v30[OBJC_IVAR___NANowPlayingVolumeSlider_slider] + OBJC_IVAR____TtC12NewsArticles10SliderView_value);
      *&v59 = v59;
      [*&v30[OBJC_IVAR___NANowPlayingVolumeSlider_volumeController] setVolumeValue_];
      p_cb = &OBJC_PROTOCOL___NUANFDebugSettingsProvider.cb;
    }

    *&v29 = a2;
    [*&v30[*(p_cb + 26)] v44[293]];
  }
}

void sub_1D7ADD804()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(*(Strong + OBJC_IVAR___NANowPlayingVolumeSlider_slider) + OBJC_IVAR____TtC12NewsArticles10SliderView_value);
    *&v2 = v2;
    LODWORD(v1) = 1.0;
    v3 = Strong;
    [*(Strong + OBJC_IVAR___NANowPlayingVolumeSlider_volumeController) setVolume:v2 withNotificationDelay:v1];
  }
}

uint64_t sub_1D7ADD894()
{
  sub_1D7D2DB3C();
  v0 = MEMORY[0x1E69E7F60];
  sub_1D7ADE16C(&qword_1EE0BFA20, MEMORY[0x1E69E7F60]);
  sub_1D7ADE1B4(0, &qword_1EE0BF280, v0);
  sub_1D7ADE114(&qword_1EE0BF270, &qword_1EE0BF280, v0);
  return sub_1D7D313AC();
}

void sub_1D7ADD9B8()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    v2 = &selRef_addVolumeDisplay_;
  }

  else
  {
    v2 = &selRef_removeVolumeDisplay_;
  }

  v3 = [objc_opt_self() sharedInstance];
  [v3 *v2];
}

uint64_t sub_1D7ADDCDC()
{
  v1 = [*(v0 + OBJC_IVAR___NANowPlayingVolumeSlider_volumeController) dataSource];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2 && (v3 = [v2 volumeAudioCategory]) != 0)
  {
    v4 = v3;
    v5 = sub_1D7D3034C();
    swift_unknownObjectRelease();

    return v5;
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

void sub_1D7ADDF34()
{
  v1 = OBJC_IVAR___NANowPlayingVolumeSlider_volumeController;
  v2 = [objc_allocWithZone(MEMORY[0x1E6970A28]) init];
  v3 = [objc_allocWithZone(MEMORY[0x1E6970A18]) initWithDataSource_];

  *(v0 + v1) = v3;
  *(v0 + OBJC_IVAR___NANowPlayingVolumeSlider_isTracking) = 0;
  *(v0 + OBJC_IVAR___NANowPlayingVolumeSlider_volumeCommitTimer) = 0;
  v4 = OBJC_IVAR___NANowPlayingVolumeSlider_slider;
  type metadata accessor for SliderView();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR___NANowPlayingVolumeSlider_trackingColor;
  *(v0 + v5) = [objc_opt_self() labelColor];
  v6 = (v0 + OBJC_IVAR___NANowPlayingVolumeSlider_volumeChangeHandler);
  *v6 = 0;
  v6[1] = 0;
  sub_1D7D3160C();
  __break(1u);
}

void sub_1D7ADE060()
{
  if ((*(*(v0 + OBJC_IVAR___NANowPlayingVolumeSlider_slider) + OBJC_IVAR____TtC12NewsArticles10SliderView_isTracking) & 1) == 0)
  {
    sub_1D7ADCD40();
    v1 = *(v0 + OBJC_IVAR___NANowPlayingVolumeSlider_volumeChangeHandler);
    if (v1)
    {

      v1(v2);

      sub_1D79AD740(v1);
    }
  }
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D7ADE114(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D7ADE1B4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7ADE16C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7ADE1B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D307BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t static AudioArtworkImageRequestFactory.artworkRequest<A>(for:targetSize:scale:roundedCorners:cornerRadius:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  (*(a3 + 48))(&v17, a2, a3);
  if (v18)
  {
    sub_1D79E14FC(&v17, v19);
    sub_1D7ADE3A0(v19, a1, a2, a3, a4, a5, a6, a7, a8);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    sub_1D7AE04E8(&v17, &qword_1EE0BB328, sub_1D7ADE33C);
    return sub_1D7ADEE48(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

unint64_t sub_1D7ADE33C()
{
  result = qword_1EE0BB330;
  if (!qword_1EE0BB330)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BB330);
  }

  return result;
}

uint64_t sub_1D7ADE3A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v117 = a2;
  v122 = a1;
  v123 = a5;
  v15 = sub_1D7D29CBC();
  v119 = *(v15 - 8);
  v120 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v118 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1D7D2B83C();
  v125 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v18);
  v20 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v116 = &v102 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v111 = (&v102 - v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = (&v102 - v29);
  v31 = sub_1D7D2A9EC();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AE0544(0, &qword_1EE0BB2D8, MEMORY[0x1E69D7B70]);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40, v41);
  v44 = &v102 - v43;
  (*(a4 + 64))(a3, a4, v42);
  v121 = v44;
  sub_1D7AD2E04(v44, v39);
  v45 = (*(v32 + 48))(v39, 1, v31);
  __asm { FMOV            V0.2D, #1.0 }

  v51 = 0x1E69DC000;
  v124 = _Q0;
  if (v45 == 1)
  {
    sub_1D7AE04E8(v39, &qword_1EE0BB2D8, MEMORY[0x1E69D7B70]);
    v53 = *MEMORY[0x1E69D82A0];
    v54 = MEMORY[0x1E69E7CC0];
    v55 = v115;
    v56 = v125;
    v57 = v123;
  }

  else
  {
    v113 = v32;
    v58 = *(v32 + 32);
    v114 = v31;
    v58(v35, v39, v31);
    sub_1D7AD2E98(0, v59);
    v61 = *(v60 + 112);
    *v30 = a6;
    v30[1] = a7;
    v30[2] = 0.0;
    v30[3] = 0.0;
    *(v30 + 2) = v124;
    v62 = [objc_opt_self() mainScreen];
    [v62 scale];
    v64 = v63;

    *(v30 + 6) = v64;
    v65 = sub_1D7D29CDC();
    v30[7] = 0.0;
    v30[8] = 0.0;
    (*(*(v65 - 8) + 56))(v30 + v61, 1, 1, v65);
    v66 = v125;
    v67 = *(v125 + 104);
    v105 = *MEMORY[0x1E69D82A0];
    v68 = v115;
    v110 = v125 + 104;
    v109 = v67;
    v67(v30);
    v54 = sub_1D79E49F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v70 = *(v54 + 2);
    v69 = *(v54 + 3);
    v112 = v35;
    if (v70 >= v69 >> 1)
    {
      v54 = sub_1D79E49F4(v69 > 1, v70 + 1, 1, v54);
    }

    *(v54 + 2) = v70 + 1;
    v72 = *(v66 + 32);
    v71 = v66 + 32;
    v107 = (*(v71 + 48) + 32) & ~*(v71 + 48);
    v106 = *(v71 + 40);
    v108 = v72;
    v72(&v54[v107 + v106 * v70], v30, v68);
    v73 = [objc_opt_self() blackColor];
    v74 = [v73 colorWithAlphaComponent_];

    v75 = v111;
    *v111 = v74;
    *(v75 + 2) = 0;
    v76 = *MEMORY[0x1E69D82B8];
    v77 = sub_1D7D2B85C();
    v78 = *(v77 - 8);
    v103 = *(v78 + 104);
    v102 = v78 + 104;
    v103(v75, v76, v77);
    v79 = *MEMORY[0x1E69D8298];
    v109(v75, v79, v68);
    v81 = *(v54 + 2);
    v80 = *(v54 + 3);
    if (v81 >= v80 >> 1)
    {
      v54 = sub_1D79E49F4(v80 > 1, v81 + 1, 1, v54);
    }

    v104 = v81 + 1;
    *(v54 + 2) = v81 + 1;
    v108(&v54[v107 + v81 * v106], v75, v68);
    sub_1D7AD3024();
    v82 = v68;
    v84 = *(v83 + 48);
    v85 = v116;
    (*(v113 + 16))(v116, v112, v114);
    v86 = *MEMORY[0x1E69D87B8];
    v87 = sub_1D7D2C61C();
    (*(*(v87 - 8) + 104))(v85, v86, v87);
    *&v85[v84] = 2;
    v88 = v82;
    v103(v85, *MEMORY[0x1E69D82C0], v77);
    v109(v85, v79, v82);
    v89 = *(v54 + 3);
    if ((v81 + 2) > (v89 >> 1))
    {
      v54 = sub_1D79E49F4(v89 > 1, v81 + 2, 1, v54);
    }

    v56 = v125;
    v51 = 0x1E69DC000uLL;
    v53 = v105;
    (*(v113 + 8))(v112, v114);
    *(v54 + 2) = v81 + 2;
    v108(&v54[v107 + v104 * v106], v116, v88);
    v57 = v123;
    v55 = v88;
  }

  sub_1D7AD2E98(0, v52);
  v91 = *(v90 + 112);
  *v20 = a6;
  *(v20 + 1) = a7;
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 2) = v124;
  *(v20 + 6) = a8;
  *(v20 + 7) = v117;
  *(v20 + 8) = a9;
  v92 = [objc_opt_self() mainScreen];
  [v92 scale];

  v93 = [objc_allocWithZone(*(v51 + 2184)) initWithWhite:0.254901961 alpha:0.35];
  v94 = [v93 CGColor];

  (*(v119 + 104))(v118, *MEMORY[0x1E69D75D8], v120);
  sub_1D7D29CCC();
  v95 = sub_1D7D29CDC();
  (*(*(v95 - 8) + 56))(&v20[v91], 0, 1, v95);
  (*(v56 + 104))(v20, v53, v55);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v54 = sub_1D79E49F4(0, *(v54 + 2) + 1, 1, v54);
  }

  v97 = *(v54 + 2);
  v96 = *(v54 + 3);
  if (v97 >= v96 >> 1)
  {
    v54 = sub_1D79E49F4(v96 > 1, v97 + 1, 1, v54);
  }

  *(v54 + 2) = v97 + 1;
  (*(v56 + 32))(&v54[((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v97], v20, v55);
  sub_1D799CC84(v122, v126);
  v98 = sub_1D7D2B86C();
  swift_allocObject();
  v99 = sub_1D7D2B84C();
  v100 = MEMORY[0x1E69D82C8];
  v57[3] = v98;
  v57[4] = v100;
  *v57 = v99;
  return sub_1D7AE04E8(v121, &qword_1EE0BB2D8, MEMORY[0x1E69D7B70]);
}

uint64_t sub_1D7ADEE48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v130 = a1;
  v131 = a4;
  v14 = sub_1D7D29CBC();
  v125 = *(v14 - 8);
  v126 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v124 = &v108[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1D7D2B83C();
  v128 = *(v17 - 8);
  v129 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v122 = &v108[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20, v21);
  v123 = &v108[-v22];
  MEMORY[0x1EEE9AC00](v23, v24);
  v120 = &v108[-v25];
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v108[-v28];
  v30 = sub_1D7D2A9EC();
  v132 = *(v30 - 8);
  v133 = v30;
  MEMORY[0x1EEE9AC00](v30, v31);
  v127 = &v108[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7AE0544(0, &qword_1EE0BB2D8, MEMORY[0x1E69D7B70]);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = &v108[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = MEMORY[0x1EEE9AC00](v37, v38);
  v41 = &v108[-v40];
  v42 = *(a3 + 16);
  v121 = a2;
  v43 = v42(a2, a3, v39);
  sub_1D7B6CF60([v43 thumbnailLQ], v137);
  sub_1D7B6CF60([v43 thumbnail], &v138);
  sub_1D7B6CF60([v43 thumbnailMedium], &v139);
  sub_1D7B6CF60([v43 thumbnailHQ], &v140);
  sub_1D7B6CF60([v43 thumbnailUltraHQ], &v141);
  swift_unknownObjectRelease();
  HeadlineThumbnail.assetHandle(with:scale:)(&v134);
  if (v135)
  {
    sub_1D79E14FC(&v134, v136);
    v44 = v121;
    [(v42)(v121 a3)];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    swift_unknownObjectRelease();
    (*(a3 + 64))(v44, a3);
    sub_1D7AD2E04(v41, v36);
    v54 = v132;
    v53 = v133;
    v55 = v41;
    if ((*(v132 + 48))(v36, 1, v133) == 1)
    {
      sub_1D7AE04E8(v36, &qword_1EE0BB2D8, MEMORY[0x1E69D7B70]);
      v57 = *MEMORY[0x1E69D82A0];
      v58 = MEMORY[0x1E69E7CC0];
      v60 = v128;
      v59 = v129;
      v61 = v130;
      v62 = v122;
    }

    else
    {
      v114 = a8;
      v115 = v41;
      (*(v54 + 32))(v127, v36, v53);
      sub_1D7AD2E98(0, v63);
      v65 = *(v64 + 112);
      *v29 = a5;
      v29[1] = a6;
      *(v29 + 2) = v46;
      *(v29 + 3) = v48;
      *(v29 + 4) = v50;
      *(v29 + 5) = v52;
      v66 = [objc_opt_self() mainScreen];
      [v66 scale];
      v68 = v67;

      *(v29 + 6) = v68;
      v69 = sub_1D7D29CDC();
      v29[7] = 0.0;
      v29[8] = 0.0;
      (*(*(v69 - 8) + 56))(v29 + v65, 1, 1, v69);
      v70 = *MEMORY[0x1E69D82A0];
      v72 = v128;
      v71 = v129;
      v73 = *(v128 + 104);
      v74 = *MEMORY[0x1E69D82A0];
      v121 = v128 + 104;
      v119 = v73;
      (v73)(v29, v74, v129);
      v58 = sub_1D79E49F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v76 = *(v58 + 2);
      v75 = *(v58 + 3);
      v62 = v122;
      if (v76 >= v75 >> 1)
      {
        v58 = sub_1D79E49F4(v75 > 1, v76 + 1, 1, v58);
      }

      *(v58 + 2) = v76 + 1;
      v78 = *(v72 + 32);
      v77 = v72 + 32;
      v117 = (*(v77 + 48) + 32) & ~*(v77 + 48);
      v118 = v78;
      v116 = *(v77 + 40);
      v78(&v58[v117 + v116 * v76], v29, v71);
      v79 = [objc_opt_self() blackColor];
      v80 = [v79 colorWithAlphaComponent_];

      v81 = v120;
      *v120 = v80;
      *(v81 + 2) = 0;
      v82 = *MEMORY[0x1E69D82B8];
      v83 = sub_1D7D2B85C();
      v84 = *(v83 - 8);
      v85 = *(v84 + 104);
      v110 = v84 + 104;
      v111 = v85;
      v85(v81, v82, v83);
      v109 = *MEMORY[0x1E69D8298];
      v119(v81);
      v87 = *(v58 + 2);
      v86 = *(v58 + 3);
      a8 = v114;
      v113 = v70;
      if (v87 >= v86 >> 1)
      {
        v58 = sub_1D79E49F4(v86 > 1, v87 + 1, 1, v58);
      }

      v112 = v87 + 1;
      *(v58 + 2) = v87 + 1;
      v59 = v129;
      v118(&v58[v117 + v87 * v116], v81, v129);
      sub_1D7AD3024();
      v89 = *(v88 + 48);
      v90 = v123;
      (*(v132 + 16))(v123, v127, v133);
      v91 = *MEMORY[0x1E69D87B8];
      v92 = sub_1D7D2C61C();
      (*(*(v92 - 8) + 104))(v90, v91, v92);
      *&v90[v89] = 2;
      v111(v90, *MEMORY[0x1E69D82C0], v83);
      (v119)(v90, v109, v59);
      v93 = *(v58 + 3);
      v94 = v87 + 2;
      if ((v87 + 2) > (v93 >> 1))
      {
        v58 = sub_1D79E49F4(v93 > 1, v87 + 2, 1, v58);
      }

      v61 = v130;
      v57 = v113;
      (*(v132 + 8))(v127, v133);
      *(v58 + 2) = v94;
      v118(&v58[v117 + v112 * v116], v123, v59);
      v60 = v128;
      v55 = v115;
    }

    sub_1D7AD2E98(0, v56);
    v96 = *(v95 + 112);
    *v62 = a5;
    v62[1] = a6;
    *(v62 + 2) = v46;
    *(v62 + 3) = v48;
    *(v62 + 4) = v50;
    *(v62 + 5) = v52;
    v62[6] = a7;
    *(v62 + 7) = v61;
    v62[8] = a8;
    v97 = [objc_opt_self() mainScreen];
    [v97 scale];

    v98 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.254901961 alpha:0.35];
    v99 = [v98 CGColor];

    (*(v125 + 104))(v124, *MEMORY[0x1E69D75D8], v126);
    sub_1D7D29CCC();
    v100 = sub_1D7D29CDC();
    (*(*(v100 - 8) + 56))(v62 + v96, 0, 1, v100);
    (*(v60 + 104))(v62, v57, v59);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_1D79E49F4(0, *(v58 + 2) + 1, 1, v58);
    }

    v101 = v131;
    v103 = *(v58 + 2);
    v102 = *(v58 + 3);
    if (v103 >= v102 >> 1)
    {
      v58 = sub_1D79E49F4(v102 > 1, v103 + 1, 1, v58);
    }

    *(v58 + 2) = v103 + 1;
    (*(v60 + 32))(&v58[((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v103], v62, v59);
    sub_1D799CC84(v136, &v134);
    v104 = sub_1D7D2B86C();
    swift_allocObject();
    v105 = sub_1D7D2B84C();
    v106 = MEMORY[0x1E69D82C8];
    v101[3] = v104;
    v101[4] = v106;
    *v101 = v105;
    sub_1D7AE04E8(v55, &qword_1EE0BB2D8, MEMORY[0x1E69D7B70]);
    __swift_destroy_boxed_opaque_existential_1(v136);
  }

  else
  {
    sub_1D7AE04E8(&v134, &qword_1EE0BB328, sub_1D7ADE33C);
    static AudioArtworkImageRequestFactory.fallbackArtworkRequest(targetSize:scale:roundedCorners:cornerRadius:)(v130, v131, a5, a6, a7, a8);
  }

  return sub_1D7AD3094(v137);
}

uint64_t static AudioArtworkImageRequestFactory.fallbackArtworkRequest(targetSize:scale:roundedCorners:cornerRadius:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v112 = a1;
  v117 = a2;
  v115 = sub_1D7D29CBC();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v10);
  v113 = v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1D7D2B83C();
  v12 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v13);
  v15 = v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v111 = v97 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v107 = (v97 - v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = (v97 - v24);
  v26 = sub_1D7D2A9EC();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v119 = v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AE0544(0, &qword_1EE0BB2D8, MEMORY[0x1E69D7B70]);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = v97 - v36;
  sub_1D7D301EC();
  sub_1D7D301BC();
  v38 = sub_1D7D2A5BC();
  swift_allocObject();
  v39 = sub_1D7D2A5AC();
  v121[3] = v38;
  v121[4] = MEMORY[0x1E69D79C0];
  v121[0] = v39;
  (*(v27 + 56))(v37, 1, 1, v26);
  v116 = v37;
  sub_1D7AD2E04(v37, v33);
  v40 = (*(v27 + 48))(v33, 1, v26);
  __asm { FMOV            V0.2D, #1.0 }

  v46 = 0x1E69DC000;
  v118 = _Q0;
  if (v40 == 1)
  {
    sub_1D7AE04E8(v33, &qword_1EE0BB2D8, MEMORY[0x1E69D7B70]);
    v48 = *MEMORY[0x1E69D82A0];
    v49 = MEMORY[0x1E69E7CC0];
    v50 = v117;
    v51 = v110;
  }

  else
  {
    v108 = v27;
    v52 = *(v27 + 32);
    v109 = v26;
    v52(v119, v33, v26);
    sub_1D7AD2E98(0, v53);
    v55 = *(v54 + 112);
    *v25 = a3;
    v25[1] = a4;
    v25[2] = 0.0;
    v25[3] = 0.0;
    *(v25 + 2) = v118;
    v56 = [objc_opt_self() mainScreen];
    [v56 scale];
    v58 = v57;

    *(v25 + 6) = v58;
    v59 = sub_1D7D29CDC();
    v25[7] = 0.0;
    v25[8] = 0.0;
    (*(*(v59 - 8) + 56))(v25 + v55, 1, 1, v59);
    v60 = *MEMORY[0x1E69D82A0];
    v61 = *(v12 + 104);
    v62 = *MEMORY[0x1E69D82A0];
    v63 = v110;
    v106 = v12 + 104;
    v105 = v61;
    v61(v25, v62, v110);
    v49 = sub_1D79E49F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v65 = *(v49 + 2);
    v64 = *(v49 + 3);
    v66 = v119;
    v100 = v60;
    if (v65 >= v64 >> 1)
    {
      v49 = sub_1D79E49F4(v64 > 1, v65 + 1, 1, v49);
    }

    *(v49 + 2) = v65 + 1;
    v101 = v12;
    v68 = *(v12 + 32);
    v67 = v12 + 32;
    v103 = (*(v67 + 48) + 32) & ~*(v67 + 48);
    v102 = *(v67 + 40);
    v104 = v68;
    v68(&v49[v103 + v102 * v65], v25, v63);
    v69 = [objc_opt_self() blackColor];
    v70 = [v69 colorWithAlphaComponent_];

    v71 = v107;
    *v107 = v70;
    v72 = v71;
    *(v71 + 2) = 0;
    v73 = *MEMORY[0x1E69D82B8];
    v74 = sub_1D7D2B85C();
    v75 = *(v74 - 8);
    v98 = *(v75 + 104);
    v97[1] = v75 + 104;
    v98(v72, v73, v74);
    v76 = *MEMORY[0x1E69D8298];
    v51 = v63;
    v105(v72, v76, v63);
    v78 = *(v49 + 2);
    v77 = *(v49 + 3);
    if (v78 >= v77 >> 1)
    {
      v49 = sub_1D79E49F4(v77 > 1, v78 + 1, 1, v49);
    }

    v99 = v78 + 1;
    *(v49 + 2) = v78 + 1;
    v104(&v49[v103 + v78 * v102], v72, v63);
    sub_1D7AD3024();
    v80 = *(v79 + 48);
    v81 = v111;
    (*(v108 + 16))(v111, v66, v109);
    v82 = *MEMORY[0x1E69D87B8];
    v83 = sub_1D7D2C61C();
    (*(*(v83 - 8) + 104))(v81, v82, v83);
    *&v81[v80] = 2;
    v98(v81, *MEMORY[0x1E69D82C0], v74);
    v105(v81, v76, v51);
    v84 = *(v49 + 3);
    if ((v78 + 2) > (v84 >> 1))
    {
      v49 = sub_1D79E49F4(v84 > 1, v78 + 2, 1, v49);
    }

    v50 = v117;
    v46 = 0x1E69DC000uLL;
    v48 = v100;
    (*(v108 + 8))(v119, v109);
    *(v49 + 2) = v78 + 2;
    v104(&v49[v103 + v99 * v102], v111, v51);
    v12 = v101;
  }

  sub_1D7AD2E98(0, v47);
  v86 = *(v85 + 112);
  *v15 = a3;
  *(v15 + 1) = a4;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 2) = v118;
  *(v15 + 6) = a5;
  *(v15 + 7) = v112;
  *(v15 + 8) = a6;
  v87 = [objc_opt_self() mainScreen];
  [v87 scale];

  v88 = [objc_allocWithZone(*(v46 + 2184)) initWithWhite:0.254901961 alpha:0.35];
  v89 = [v88 CGColor];

  (*(v114 + 104))(v113, *MEMORY[0x1E69D75D8], v115);
  sub_1D7D29CCC();
  v90 = sub_1D7D29CDC();
  (*(*(v90 - 8) + 56))(&v15[v86], 0, 1, v90);
  (*(v12 + 104))(v15, v48, v51);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v49 = sub_1D79E49F4(0, *(v49 + 2) + 1, 1, v49);
  }

  v92 = *(v49 + 2);
  v91 = *(v49 + 3);
  if (v92 >= v91 >> 1)
  {
    v49 = sub_1D79E49F4(v91 > 1, v92 + 1, 1, v49);
  }

  *(v49 + 2) = v92 + 1;
  (*(v12 + 32))(&v49[((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v92], v15, v51);
  sub_1D799CC84(v121, v120);
  v93 = sub_1D7D2B86C();
  swift_allocObject();
  v94 = sub_1D7D2B84C();
  v95 = MEMORY[0x1E69D82C8];
  v50[3] = v93;
  v50[4] = v95;
  *v50 = v94;
  sub_1D7AE04E8(v116, &qword_1EE0BB2D8, MEMORY[0x1E69D7B70]);
  return __swift_destroy_boxed_opaque_existential_1(v121);
}

uint64_t sub_1D7AE04E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7AE0544(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D7AE0544(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7AE06DC(uint64_t a1, SEL *a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_observers) allObjects];
  sub_1D7AE10B0();
  v6 = sub_1D7D3063C();

  if (v6 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7D3167C())
  {
    v8 = 0;
    while ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1DA70EF00](v8, v6);
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      [v9 *a2];
      swift_unknownObjectRelease();
      ++v8;
      if (v10 == i)
      {
        goto LABEL_14;
      }
    }

    if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v9 = *(v6 + 8 * v8 + 32);
    swift_unknownObjectRetain();
    v10 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_1D7AE081C(void *a1)
{
  v1 = [a1 cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (*(&v13 + 1))
  {
    sub_1D79A4870();
    if (swift_dynamicCast())
    {
      v2 = v11;
      v3 = [v11 integerValue];
      if (v3 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_1D79F0014(&v14);
  }

  v2 = 0;
  v3 = 0;
LABEL_10:
  if (objc_getAssociatedObject(v1, ~v3))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (*(&v13 + 1))
  {
    sub_1D79A4870();
    if (swift_dynamicCast())
    {
      v4 = v11;
      v5 = [v4 integerValue];

      v6 = v5 - 78;
      goto LABEL_18;
    }
  }

  else
  {
    sub_1D79F0014(&v14);
  }

LABEL_17:

  v6 = -78;
LABEL_18:
  v7 = v6 ^ v3;
  swift_getObjectType();
  v8 = sub_1D7D296BC();
  v9 = 2;
  if (v8)
  {
    v9 = 3;
  }

  if (v7)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1D7AE09FC()
{
  result = [*(v0 + OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_headline) sourceChannel];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_paidAccessChecker);
    v4 = [v3 purchaseProvider];
    if ([swift_unknownObjectRetain() tagType] == 3)
    {
      v5 = [v2 asSection];
      if (!v5 || (v6 = [v5 parentID], swift_unknownObjectRelease(), !v6))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_9;
      }
    }

    else
    {
      v6 = [v2 identifier];
    }

    v7 = sub_1D7D3034C();
    v9 = v8;

    v10 = [v4 purchasedTagIDs];
    v11 = sub_1D7D309AC();

    LOBYTE(v10) = sub_1D7D053C8(v7, v9, v11);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    if (v10)
    {
      swift_unknownObjectRelease();
      return 1;
    }

LABEL_9:
    v12 = [objc_msgSend(v3 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v12, v12 + 1))
    {
      sub_1D7D3138C();
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    v24 = v22;
    v25 = v23;
    if (*(&v23 + 1))
    {
      sub_1D79A4870();
      if (swift_dynamicCast())
      {
        v13 = v21;
        v14 = [v21 integerValue];
        if (v14 == -1)
        {

          goto LABEL_29;
        }

        v15 = v14;
LABEL_18:
        if (objc_getAssociatedObject(v12, ~v15))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v22 = 0u;
          v23 = 0u;
        }

        v24 = v22;
        v25 = v23;
        if (*(&v23 + 1))
        {
          sub_1D79A4870();
          if (swift_dynamicCast())
          {
            v16 = v21;
            v17 = [v16 integerValue];

            if ((v17 ^ v15))
            {
LABEL_29:
              v18 = [objc_msgSend(v3 bundleSubscriptionProvider)];
              swift_unknownObjectRelease();
              v19 = [v2 identifier];
              if (!v19)
              {
                sub_1D7D3034C();
                v19 = sub_1D7D3031C();
              }

              v20 = [v18 containsTagID_];

              swift_unknownObjectRelease();
              if (v20)
              {
                return 1;
              }

              return 2;
            }

LABEL_27:
            swift_unknownObjectRelease();
            return 2;
          }
        }

        else
        {
          sub_1D79F0014(&v24);
        }

        if (v15)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }
    }

    else
    {
      sub_1D79F0014(&v24);
    }

    v13 = 0;
    v15 = 0;
    goto LABEL_18;
  }

  return result;
}

void sub_1D7AE1018(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *&a1[OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_bundleSubscriptionStatus];
  *&a1[OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_bundleSubscriptionStatus] = a4;
  v7 = a1;
  sub_1D7AE06DC(v4, &selRef_bundleSubscriptionStatusDidChangeFromStatus_);
  v5 = sub_1D7AE09FC();
  v6 = *&v7[OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_channelSubscriptionStatus];
  *&v7[OBJC_IVAR____TtC12NewsArticles26SubscriptionStatusProvider_channelSubscriptionStatus] = v5;
  sub_1D7AE06DC(v6, &selRef_channelSubscriptionStatusDidChangeFromStatus_);
}

unint64_t sub_1D7AE10B0()
{
  result = qword_1EC9E42F0;
  if (!qword_1EC9E42F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9E42F0);
  }

  return result;
}

uint64_t ArticleSession.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArticleSession.createdDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSession() + 20);
  v4 = sub_1D7D2833C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ArticleSession()
{
  result = qword_1EE0CA400;
  if (!qword_1EE0CA400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArticleSession.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleSession() + 24);

  return sub_1D7AE1250(v3, a1);
}

uint64_t sub_1D7AE1250(uint64_t a1, uint64_t a2)
{
  sub_1D7A86838();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ArticleSession.trigger.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleSession();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ArticleSession.duration.getter()
{
  sub_1D7A86838();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D2833C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArticleSession();
  sub_1D7AE1250(v0 + *(v10 + 24), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D7AE148C(v4);
    return sub_1D7D282FC();
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    sub_1D7D282AC();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1D7AE148C(uint64_t a1)
{
  sub_1D7A86838();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ArticleSessionTrigger.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

unint64_t sub_1D7AE1574()
{
  result = qword_1EC9E4300;
  if (!qword_1EC9E4300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4300);
  }

  return result;
}

void sub_1D7AE15F0()
{
  sub_1D7D2833C();
  if (v0 <= 0x3F)
  {
    sub_1D7A86838();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t InterstitialAdSession.pageSession.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D7D2A3DC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InterstitialAdSession.contentIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for InterstitialAdSession() + 20));

  return v1;
}

uint64_t type metadata accessor for InterstitialAdSession()
{
  result = qword_1EC9E4308;
  if (!qword_1EC9E4308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InterstitialAdSession.placementIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for InterstitialAdSession() + 24));

  return v1;
}

uint64_t sub_1D7AE17FC()
{
  result = sub_1D7D2A3DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1D7AE1878(_OWORD *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_observers;
  *&v1[v4] = [objc_opt_self() weakObjectsHashTable];
  v5 = &v1[OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides];
  *(v5 + 153) = *(a1 + 153);
  v6 = a1[9];
  *(v5 + 8) = a1[8];
  *(v5 + 9) = v6;
  v7 = a1[7];
  *(v5 + 6) = a1[6];
  *(v5 + 7) = v7;
  v8 = a1[5];
  *(v5 + 4) = a1[4];
  *(v5 + 5) = v8;
  v9 = a1[3];
  *(v5 + 2) = a1[2];
  *(v5 + 3) = v9;
  v10 = a1[1];
  *v5 = *a1;
  *(v5 + 1) = v10;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v15, sel_init);
  v12 = qword_1EE0CB5E8;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7AE2E98();

  sub_1D7D285BC();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D7D285BC();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D7D285BC();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D7D285BC();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D7D285BC();

  return v13;
}

uint64_t sub_1D7AE1BD4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_observers) allObjects];
  sub_1D7AE2EEC();
  v2 = sub_1D7D3063C();

  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7D3167C())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1DA70EF00](v4, v2);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      [v5 debugLayoutOptionsDidChange_];
      swift_unknownObjectRelease();
      ++v4;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 8 * v4 + 32);
    swift_unknownObjectRetain();
    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

void sub_1D7AE1D10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D7AE1BD4();
  }
}

uint64_t sub_1D7AE2004(uint64_t a1)
{
  swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 144);
  v15 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 128);
  v16[0] = v3;
  *(v16 + 9) = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 153);
  v4 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 80);
  v11 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 64);
  v12 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 112);
  v13 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 96);
  v14 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 16);
  v10[0] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides);
  v10[1] = v6;
  v7 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 48);
  v10[2] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 32);
  v10[3] = v7;
  if (sub_1D7AE2F50(v10) != 1 && BYTE8(v11) != 1)
  {
    return v11;
  }

  if (qword_1EE0CB5E8 != -1)
  {
    swift_once();
  }

  sub_1D7AE2E98();

  sub_1D7D285AC();

  if (v9 > 1u)
  {
    if (v9 == 2)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    result = a1;
    if (v9)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1D7AE2188(uint64_t a1)
{
  swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 144);
  v18 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 128);
  v19[0] = v3;
  *(v19 + 9) = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 153);
  v4 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 80);
  v14 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 64);
  v15 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 112);
  v16 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 96);
  v17 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 16);
  v10 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides);
  v11 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 48);
  v12 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 32);
  v13 = v7;
  if (sub_1D7AE2F50(&v10) != 1 && v12 != 1)
  {
    return *(&v11 + 1);
  }

  if (qword_1EE0CB5E8 != -1)
  {
    swift_once();
  }

  sub_1D7AE2E98();

  sub_1D7D285AC();

  if (v9 > 1u)
  {
    if (v9 == 2)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    result = a1;
    if (v9)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1D7AE230C(uint64_t a1)
{
  swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 144);
  v17 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 128);
  v18[0] = v3;
  *(v18 + 9) = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 153);
  v4 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 80);
  v13 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 64);
  v14 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 112);
  v15 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 96);
  v16 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 16);
  v10[0] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides);
  v10[1] = v6;
  v7 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 48);
  v11 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 32);
  v12 = v7;
  if (sub_1D7AE2F50(v10) != 1 && v12 != 1)
  {
    return *(&v11 + 1);
  }

  if (qword_1EE0CB5E8 != -1)
  {
    swift_once();
  }

  sub_1D7AE2E98();

  sub_1D7D285AC();

  if (v9 > 1u)
  {
    if (v9 == 2)
    {
      return 2;
    }
  }

  else if (v9)
  {
    return 1;
  }

  return a1;
}

uint64_t sub_1D7AE2488(uint64_t a1)
{
  swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 144);
  v13 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 128);
  v14[0] = v3;
  *(v14 + 9) = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 153);
  v4 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 80);
  v10[4] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 64);
  v10[5] = v4;
  v5 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 112);
  v11 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 96);
  v12 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 16);
  v10[0] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides);
  v10[1] = v6;
  v7 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 48);
  v10[2] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 32);
  v10[3] = v7;
  if (sub_1D7AE2F50(v10) != 1 && BYTE8(v11) != 1)
  {
    return v11;
  }

  if (qword_1EE0CB5E8 != -1)
  {
    swift_once();
  }

  sub_1D7AE2E98();

  sub_1D7D285AC();

  if (v9 > 1u)
  {
    if (v9 == 2)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    result = a1;
    if (v9)
    {
      return 3;
    }
  }

  return result;
}

uint64_t sub_1D7AE260C(uint64_t a1)
{
  swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 144);
  v12 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 128);
  v13[0] = v3;
  *(v13 + 9) = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 153);
  v4 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 80);
  v10[4] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 64);
  v10[5] = v4;
  v5 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 112);
  v10[6] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 96);
  v11 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 16);
  v10[0] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides);
  v10[1] = v6;
  v7 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 48);
  v10[2] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 32);
  v10[3] = v7;
  if (sub_1D7AE2F50(v10) != 1 && BYTE8(v11) != 1)
  {
    return v11;
  }

  if (qword_1EE0CB5E8 != -1)
  {
    swift_once();
  }

  sub_1D7AE2E98();

  sub_1D7D285AC();

  if (v9 <= 2u)
  {
    result = a1;
    if (v9)
    {
      if (v9 == 1)
      {
        return 3;
      }

      else
      {
        return 5;
      }
    }
  }

  else if (v9 > 4u)
  {
    if (v9 == 5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }

  else if (v9 == 3)
  {
    return 6;
  }

  else
  {
    return 7;
  }

  return result;
}

uint64_t sub_1D7AE27C0(uint64_t a1)
{
  swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 144);
  v11 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 128);
  v12[0] = v3;
  *(v12 + 9) = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 153);
  v4 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 80);
  v10[4] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 64);
  v10[5] = v4;
  v5 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 112);
  v10[6] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 96);
  v10[7] = v5;
  v6 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 16);
  v10[0] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides);
  v10[1] = v6;
  v7 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 48);
  v10[2] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 32);
  v10[3] = v7;
  if (sub_1D7AE2F50(v10) != 1 && BYTE8(v11) != 1)
  {
    return v11;
  }

  if (qword_1EE0CB5E8 != -1)
  {
    swift_once();
  }

  sub_1D7AE2E98();

  sub_1D7D285AC();

  if (v9 > 1u)
  {
    if (v9 == 2)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    result = a1;
    if (v9)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1D7AE2944(uint64_t a1)
{
  swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 144);
  v10[8] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 128);
  v11[0] = v3;
  *(v11 + 9) = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 153);
  v4 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 80);
  v10[4] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 64);
  v10[5] = v4;
  v5 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 112);
  v10[6] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 96);
  v10[7] = v5;
  v6 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 16);
  v10[0] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides);
  v10[1] = v6;
  v7 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 48);
  v10[2] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 32);
  v10[3] = v7;
  if (sub_1D7AE2F50(v10) == 1 || !*(&v11[0] + 1))
  {
    if (qword_1EE0CB5E8 != -1)
    {
      swift_once();
    }

    sub_1D7AE2E98();

    sub_1D7D285AC();

    if (v9 == 1)
    {

      sub_1D7D285AC();

      return v9;
    }

    else
    {
    }
  }

  else
  {
    a1 = *&v11[0];
  }

  return a1;
}

id sub_1D7AE2C48(void *a1)
{
  swift_getObjectType();
  v3 = [a1 following];
  v4 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 144);
  v16[8] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 128);
  *v17 = v4;
  *&v17[9] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 153);
  v5 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 80);
  v16[4] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 64);
  v16[5] = v5;
  v6 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 112);
  v16[6] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 96);
  v16[7] = v6;
  v7 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 16);
  v16[0] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides);
  v16[1] = v7;
  v8 = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 48);
  v16[2] = *(v1 + OBJC_IVAR____TtC12NewsArticles29ANFDebugLayoutOptionsProvider_anfOverrides + 32);
  v16[3] = v8;
  if (sub_1D7AE2F50(v16) == 1 || (v9 = v17[24], v17[24] == 2))
  {
    if (qword_1EE0CB5E8 != -1)
    {
      swift_once();
    }

    sub_1D7AE2E98();

    sub_1D7D285AC();

    if (v15)
    {
      v9 = v15 != 1;
    }

    else
    {
      v9 = v3;
    }
  }

  v10 = [a1 tags];
  if (v10)
  {
    v11 = v10;
    sub_1D7D3063C();

    v12 = sub_1D7D3062C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E69CE0B8]) initWithFollowing:v9 & 1 tags:v12];

  return v13;
}

unint64_t sub_1D7AE2E98()
{
  result = qword_1EE0C4A48[0];
  if (!qword_1EE0C4A48[0])
  {
    type metadata accessor for ANFDebugLayoutOptionsProvider();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0C4A48);
  }

  return result;
}

unint64_t sub_1D7AE2EEC()
{
  result = qword_1EC9E4330;
  if (!qword_1EC9E4330)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9E4330);
  }

  return result;
}

uint64_t sub_1D7AE2F50(uint64_t a1)
{
  v1 = *(a1 + 56);
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

uint64_t sub_1D7AE2F74(uint64_t a1)
{
  sub_1D7AE2FD0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7AE2FD0()
{
  if (!qword_1EE0CABD8)
  {
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CABD8);
    }
  }
}

void sub_1D7AE3024(void *a1)
{
  if (sub_1D7D2DB0C())
  {
    sub_1D7992EFC(0, &qword_1EE0BF050);
    if (qword_1EE0C06A8 != -1)
    {
      swift_once();
    }

    v2 = qword_1EE0C06B0;
    v3 = sub_1D7D30C9C();
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = a1;
    v6[4] = v3;
    aBlock[4] = sub_1D7AE4774;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7AEB0C8;
    aBlock[3] = &block_descriptor_28;
    v7 = _Block_copy(aBlock);
    v8 = a1;
    v9 = v3;

    v10 = [v4 elementWithUncachedProvider_];
    _Block_release(v7);
    sub_1D7992EFC(0, &qword_1EE0BED30);
    sub_1D7A782C0(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7D3C670;
    *(v11 + 32) = v10;
    v12 = v10;
    v13 = sub_1D7D3106C();
    [v9 setMenu_];
  }

  else
  {
    sub_1D7D29DAC();
    v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v15 = sub_1D7D3031C();
    v16 = [objc_opt_self() systemImageNamed_];

    if (v16)
    {
      v17 = sub_1D7A43074();
      v18 = [v16 imageByApplyingSymbolConfiguration_];

      v19 = v14;
      [v19 setImage:v18 forState:0];
      sub_1D7992EFC(0, &qword_1EE0BED30);
      v20 = sub_1D7D3106C();
      [v19 setMenu_];

      [v19 setShowsMenuAsPrimaryAction_];
      v21 = sub_1D7D29D9C();
      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      v24[2] = v22;
      v24[3] = v23;
      v24[4] = a1;
      v25 = a1;

      type metadata accessor for RecipeMoreBarButtonItem();
      v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCustomView_];
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v28 = objc_opt_self();
      v29 = v26;
      v30 = [v28 bundleForClass_];
      sub_1D7D2811C();

      v31 = sub_1D7D3031C();

      [v29 setAccessibilityLabel_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D7AE3548(void (*a1)(void), uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = sub_1D7D2B49C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (a1)(MEMORY[0x1E69E7CC0]);
  }

  v15 = Strong;
  v27 = a2;
  v28 = a1;
  v16 = *(Strong + 80);
  ObjectType = swift_getObjectType();
  v25 = a5;
  v26 = a4;
  v18 = *(v16 + 56);
  swift_unknownObjectRetain();
  v18(a4, ObjectType, v16);
  swift_unknownObjectRelease();
  (*(v10 + 104))(v13, *MEMORY[0x1E69D7FD8], v9);
  v19 = *(v15 + 80);
  v20 = swift_getObjectType();
  v21 = (*(v19 + 88))(v20, v19);
  v30 = sub_1D7D28A3C();
  v31 = sub_1D7A108E4();
  v29 = v21;
  v32 = 0u;
  v33 = 0u;
  v34 = 1;
  sub_1D7D2B10C();
  swift_allocObject();
  v22 = v25;
  sub_1D7D2B0EC();
  sub_1D7D29C8C();
  sub_1D7AE4780(v26, (v15 + 88));
  if (sub_1D7D29C4C())
  {
    swift_unknownObjectRetain();
    v23 = sub_1D7D29C2C();

    swift_unknownObjectRelease();
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  v28(v23);
}

void sub_1D7AE37DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D7D2B49C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = *(v10 + 80);
      v21[0] = v11;
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 56);
      swift_unknownObjectRetain();
      v14(a3, ObjectType, v12);
      swift_unknownObjectRelease();
      (*(v5 + 104))(v8, *MEMORY[0x1E69D7FD8], v4);
      v15 = *(v10 + 80);
      v16 = swift_getObjectType();
      v17 = (*(v15 + 88))(v16, v15);
      v21[4] = sub_1D7D28A3C();
      v21[5] = sub_1D7A108E4();
      v21[1] = v17;
      v22 = 0u;
      v23 = 0u;
      v24 = 1;
      sub_1D7D2B10C();
      swift_allocObject();
      v18 = v21[0];
      sub_1D7D2B0EC();
      sub_1D7D29C8C();
      sub_1D7AE4780(a3, (v10 + 88));
      if (sub_1D7D29C4C())
      {
        swift_unknownObjectRetain();
        sub_1D7D29C2C();

        swift_unknownObjectRelease();
      }

      sub_1D7992EFC(0, &qword_1EE0BED30);
      v19 = v18;
      v20 = sub_1D7D3106C();
      [v19 setMenu_];
    }

    else
    {
    }
  }
}

id sub_1D7AE3AB8(uint64_t a1)
{
  v25 = a1;
  v1 = type metadata accessor for DebugRecipe(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v4);
  sub_1D7D2DB0C();
  v5 = sub_1D7D3031C();

  v6 = objc_opt_self();
  v7 = [v6 systemImageNamed_];

  sub_1D7992EFC(0, &qword_1EE0BED30);
  sub_1D7A782C0(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7D3C670;
  sub_1D7992EFC(0, &qword_1EE0BAF70);
  v9 = sub_1D7D3031C();
  v10 = [v6 systemImageNamed_];

  v11 = swift_allocObject();
  swift_weakInit();
  sub_1D7AE44F4(v25, &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  sub_1D7AE4558(&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v8 + 32) = sub_1D7D311EC();
  v14 = sub_1D7D3106C();
  if (sub_1D7D2DB0C())
  {
    sub_1D7992EFC(0, &qword_1EE0BF050);
    v15 = v7;
    v16 = sub_1D7D30C9C();
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    aBlock[4] = sub_1D7AE4630;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7AE4394;
    aBlock[3] = &block_descriptor_14;
    v18 = _Block_copy(aBlock);
    v7 = v14;

    [v16 _setSecondaryActionsProvider_];
    _Block_release(v18);
    v14 = v15;
  }

  else
  {
    if (v7)
    {
      v19 = v7;
      v20 = sub_1D7A43074();
      v21 = [v19 imageByApplyingSymbolConfiguration_];
    }

    else
    {
      v21 = 0;
    }

    sub_1D7D29DAC();
    v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v22 setImage:v21 forState:0];
    [v22 setShowsMenuAsPrimaryAction_];
    [v22 setMenu_];
    sub_1D7D2A94C();
    v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCustomView_];
    sub_1D7D2A93C();
  }

  return v16;
}

uint64_t sub_1D7AE3F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DebugRecipe(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  sub_1D7A8499C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7D3087C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1D7AE44F4(a3, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  sub_1D7AE4558(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);

  sub_1D7AF94C0(0, 0, v12, &unk_1D7D4AFE0, v15);
}

uint64_t sub_1D7AE40FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D7AE411C, 0, 0);
}

uint64_t sub_1D7AE411C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 128);
    v0[8] = v2;
    v2;
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_1D7AE4220;
    v4 = v0[6];

    return sub_1D7C036B0(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D7AE4220()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1D7AE4334, 0, 0);
}

uint64_t sub_1D7AE4334()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1D7AE4394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_1D7A51B58(&v8, v10);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(v10, 0, sizeof(v10));
  if (a3)
  {
LABEL_3:
    sub_1D7992EFC(0, &unk_1EC9E24C0);
    v3 = sub_1D7D3063C();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  sub_1D79F0014(v10);

  return v6;
}

uint64_t sub_1D7AE4478()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7AE44F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugRecipe(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7AE4558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugRecipe(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7AE45BC(uint64_t a1)
{
  v3 = *(type metadata accessor for DebugRecipe(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D7AE3F58(a1, v4, v5);
}

void *sub_1D7AE4630()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D7AE4670(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugRecipe(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D7A4E2D8;

  return sub_1D7AE40FC(a1, v6, v7, v8, v1 + v5);
}

void *sub_1D7AE4780(void *a1, void *a2)
{
  v4 = sub_1D7D2F51C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7D2EF2C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (&v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1D7D2A36C();
  *v13 = a1;
  (*(v10 + 104))(v13, *MEMORY[0x1E69B60B0], v9);
  v15 = a1;
  v16 = MEMORY[0x1DA707D50](v13, 1);
  (*(v10 + 8))(v13, v9);
  v17 = sub_1D79E4A28(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_1D79E4A28((v18 > 1), v19 + 1, 1, v17);
  }

  v17[2] = v19 + 1;
  v20 = &v17[5 * v19];
  v20[4] = v16;
  *(v20 + 5) = v54;
  v21 = MEMORY[0x1E69D7890];
  v20[7] = v14;
  v20[8] = v21;
  v22 = [v15 articles];
  sub_1D799621C();
  v23 = sub_1D7D3063C();

  if (v23 >> 62)
  {
    v24 = sub_1D7D3167C();
    v53 = v8;
    if (v24)
    {
      goto LABEL_5;
    }

LABEL_18:

    goto LABEL_19;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v53 = v8;
  if (!v24)
  {
    goto LABEL_18;
  }

LABEL_5:
  v51 = v5;
  v52 = v4;
  if ((v23 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1DA70EF00](0, v23);
  }

  else
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
      __break(1u);
      goto LABEL_36;
    }

    swift_unknownObjectRetain();
  }

  v26 = swift_unknownObjectRetain();
  v27 = MEMORY[0x1DA707DC0](v26);
  swift_unknownObjectRelease();
  if (v27)
  {
    v28 = v14;
  }

  else
  {
    v28 = 0;
  }

  if (v27)
  {
    v29 = MEMORY[0x1E69D7890];
  }

  else
  {
    v29 = 0;
  }

  v31 = v17[2];
  v30 = v17[3];
  if (v31 >= v30 >> 1)
  {
    v17 = sub_1D79E4A28((v30 > 1), v31 + 1, 1, v17);
  }

  swift_unknownObjectRelease();
  v17[2] = v31 + 1;
  v32 = &v17[5 * v31];
  v32[4] = v27;
  v32[5] = 0;
  v32[6] = 0;
  v32[7] = v28;
  v32[8] = v29;
  v5 = v51;
  v4 = v52;
LABEL_19:
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (sub_1D7D2FA0C())
  {
    v24 = sub_1D7D2A2CC();
    v19 = v17[2];
    v25 = v17[3];
    v23 = v19 + 1;
    v22 = v53;
    v8 = MEMORY[0x1E69D7890];
    if (v19 < v25 >> 1)
    {
LABEL_21:
      v17[2] = v23;
      v33 = &v17[5 * v19];
      v33[4] = v24;
      *(v33 + 5) = v54;
      v33[7] = v14;
      v33[8] = v8;
      v34 = v15;
      goto LABEL_23;
    }

LABEL_36:
    v48 = v5;
    v49 = v24;
    v17 = sub_1D79E4A28((v25 > 1), v23, 1, v17);
    v24 = v49;
    v5 = v48;
    goto LABEL_21;
  }

  v22 = v53;
  v34 = v15;
  v8 = MEMORY[0x1E69D7890];
LABEL_23:
  v35 = MEMORY[0x1DA707DB0](v34);
  v37 = v17[2];
  v36 = v17[3];
  if (v37 >= v36 >> 1)
  {
    v46 = v5;
    v47 = v35;
    v17 = sub_1D79E4A28((v36 > 1), v37 + 1, 1, v17);
    v35 = v47;
    v5 = v46;
  }

  v17[2] = v37 + 1;
  v38 = &v17[5 * v37];
  v38[4] = v35;
  *(v38 + 5) = v54;
  v38[7] = v14;
  v38[8] = v8;
  (*(v5 + 104))(v22, *MEMORY[0x1E69B6360], v4);
  v39 = MEMORY[0x1DA707D60](v34, v22);
  (*(v5 + 8))(v22, v4);
  v41 = v17[2];
  v40 = v17[3];
  if (v41 >= v40 >> 1)
  {
    v17 = sub_1D79E4A28((v40 > 1), v41 + 1, 1, v17);
  }

  if (v39)
  {
    v42 = v8;
  }

  else
  {
    v42 = 0;
  }

  if (v39)
  {
    v43 = v14;
  }

  else
  {
    v43 = 0;
  }

  v17[2] = v41 + 1;
  v44 = &v17[5 * v41];
  v44[4] = v39;
  v44[5] = 0;
  v44[6] = 0;
  v44[7] = v43;
  v44[8] = v42;
  return v17;
}

uint64_t sub_1D7AE4CD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7AE4D20(void (*a1)(void, void, void), uint64_t a2)
{
  v136 = a2;
  v135 = a1;
  v2 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v129 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798F8C0();
  v131 = v5;
  v130 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v133 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v134 = &v117 - v10;
  EndOfArticleFeedGroupKnobs = type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs();
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroupKnobs - 8, v12);
  v125 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EFC8();
  v128 = v14;
  v127 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v121 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v126 = &v117 - v19;
  v20 = type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v120 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EEFC();
  v124 = v23;
  v123 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v119 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v122 = &v117 - v28;
  v29 = type metadata accessor for RelatedEndOfArticleFeedGroupKnobs();
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v118 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EC80();
  v33 = v32;
  v132 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = &v117 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v117 - v39;
  v41 = type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs();
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v44 = &v117 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798F63C();
  v46 = v45;
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v48);
  v50 = &v117 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v117 - v53;
  v55 = type metadata accessor for EndOfArticleFeedGroupConfig();
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v117 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AE5DD0(v135, v58, type metadata accessor for EndOfArticleFeedGroupConfig);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v134 = v50;
    v135 = v44;
    if (EnumCaseMultiPayload)
    {
      v109 = v132;
      v110 = *(v132 + 32);
      v111 = v33;
      v110(v40, v58, v33);
      (*(v109 + 16))(v36, v40, v33);
      v112 = v136 + *(type metadata accessor for EndOfArticleFeedKnobsConfig() + 20);
      v113 = type metadata accessor for EndOfArticleFeedGroupKnobs();
      v114 = v118;
      sub_1D7AE5DD0(v112 + *(v113 + 20), v118, type metadata accessor for RelatedEndOfArticleFeedGroupKnobs);
      sub_1D799CC84((v137 + 2), &v142);
      type metadata accessor for RelatedEndOfArticleFeedGroupEmitter();
      v115 = swift_allocObject();
      v110((v115 + OBJC_IVAR____TtC12NewsArticles35RelatedEndOfArticleFeedGroupEmitter_config), v36, v33);
      sub_1D7AE5E38(v114, v115 + OBJC_IVAR____TtC12NewsArticles35RelatedEndOfArticleFeedGroupEmitter_knobs, type metadata accessor for RelatedEndOfArticleFeedGroupKnobs);
      sub_1D799D69C(&v142, v115 + OBJC_IVAR____TtC12NewsArticles35RelatedEndOfArticleFeedGroupEmitter_formatService);
      *&v142 = v115;
      sub_1D7AE5D3C();
      swift_allocObject();
      sub_1D798EDDC(&unk_1EE0C1CE0, type metadata accessor for RelatedEndOfArticleFeedGroupEmitter);
      v79 = sub_1D7D2DFDC();
      (*(v109 + 8))(v40, v111);
    }

    else
    {
      v72 = *(v47 + 32);
      v73 = v58;
      v74 = v46;
      v72(v54, v73, v46);
      v75 = v134;
      (*(v47 + 16))(v134, v54, v74);
      v76 = type metadata accessor for EndOfArticleFeedKnobsConfig();
      v77 = v135;
      sub_1D7AE5DD0(v136 + *(v76 + 20), v135, type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs);
      sub_1D799CC84((v137 + 2), &v142);
      type metadata accessor for MoreFromEndOfArticleFeedGroupEmitter();
      v78 = swift_allocObject();
      v72((v78 + OBJC_IVAR____TtC12NewsArticles36MoreFromEndOfArticleFeedGroupEmitter_config), v75, v74);
      sub_1D7AE5E38(v77, v78 + OBJC_IVAR____TtC12NewsArticles36MoreFromEndOfArticleFeedGroupEmitter_knobs, type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs);
      sub_1D799D69C(&v142, v78 + OBJC_IVAR____TtC12NewsArticles36MoreFromEndOfArticleFeedGroupEmitter_formatService);
      *&v142 = v78;
      sub_1D7AE5D3C();
      swift_allocObject();
      sub_1D798EDDC(&unk_1EE0C1910, type metadata accessor for MoreFromEndOfArticleFeedGroupEmitter);
      v79 = sub_1D7D2DFDC();
      (*(v47 + 8))(v54, v74);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v60 = v123;
      v80 = *(v123 + 32);
      v62 = v122;
      v81 = v58;
      v64 = v124;
      v80(v122, v81, v124);
      v82 = v119;
      (*(v60 + 16))(v119, v62, v64);
      v83 = v136 + *(type metadata accessor for EndOfArticleFeedKnobsConfig() + 20);
      v84 = type metadata accessor for EndOfArticleFeedGroupKnobs();
      v85 = v120;
      sub_1D7AE5DD0(v83 + *(v84 + 24), v120, type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs);
      sub_1D799CC84((v137 + 2), &v142);
      type metadata accessor for RecommendedEndOfArticleFeedGroupEmitter();
      v86 = swift_allocObject();
      v80((v86 + OBJC_IVAR____TtC12NewsArticles39RecommendedEndOfArticleFeedGroupEmitter_config), v82, v64);
      sub_1D7AE5E38(v85, v86 + OBJC_IVAR____TtC12NewsArticles39RecommendedEndOfArticleFeedGroupEmitter_knobs, type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs);
      sub_1D799D69C(&v142, v86 + OBJC_IVAR____TtC12NewsArticles39RecommendedEndOfArticleFeedGroupEmitter_formatService);
      *&v142 = v86;
      sub_1D7AE5D3C();
      swift_allocObject();
      v70 = &unk_1EE0C1290;
      v71 = type metadata accessor for RecommendedEndOfArticleFeedGroupEmitter;
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v87 = v130;
        v135 = *(v130 + 32);
        v88 = v134;
        v89 = v131;
        v135(v134, v58, v131);
        (*(v87 + 16))(v133, v88, v89);
        v90 = v136 + *(type metadata accessor for EndOfArticleFeedKnobsConfig() + 20);
        v91 = type metadata accessor for EndOfArticleFeedGroupKnobs();
        v92 = v129;
        sub_1D7AE5DD0(v90 + *(v91 + 32), v129, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs);
        v93 = v137;
        sub_1D799CC84((v137 + 2), &v142);
        sub_1D799CC84((v93 + 7), &v141);
        sub_1D799CC84((v93 + 12), v139);
        v94 = __swift_mutable_project_boxed_opaque_existential_1(v139, v140);
        v137 = &v117;
        v95 = MEMORY[0x1EEE9AC00](v94, v94);
        v97 = (&v117 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v98 + 16))(v97, v95);
        v99 = *v97;
        v100 = type metadata accessor for HistoryService();
        v138[3] = v100;
        v138[4] = &off_1F52A2428;
        v138[0] = v99;
        type metadata accessor for MoreFromIssueEndOfArticleFeedGroupEmitter();
        v101 = swift_allocObject();
        v102 = __swift_mutable_project_boxed_opaque_existential_1(v138, v100);
        v103 = MEMORY[0x1EEE9AC00](v102, v102);
        v105 = (&v117 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v106 + 16))(v105, v103);
        v107 = *v105;
        v108 = (v101 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_historyService);
        v108[3] = v100;
        v108[4] = &off_1F52A2428;
        *v108 = v107;
        v135(v101 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_config, v133, v89);
        sub_1D7AE5E38(v92, v101 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_knobs, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs);
        sub_1D799D69C(&v142, v101 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_formatService);
        sub_1D799D69C(&v141, v101 + OBJC_IVAR____TtC12NewsArticles41MoreFromIssueEndOfArticleFeedGroupEmitter_issueManager);
        __swift_destroy_boxed_opaque_existential_1(v138);
        __swift_destroy_boxed_opaque_existential_1(v139);
        *&v142 = v101;
        sub_1D7AE5D3C();
        swift_allocObject();
        sub_1D798EDDC(&unk_1EE0BB810, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupEmitter);
        v79 = sub_1D7D2DFDC();
        (*(v87 + 8))(v134, v89);
        return v79;
      }

      v60 = v127;
      v61 = *(v127 + 32);
      v62 = v126;
      v63 = v58;
      v64 = v128;
      v61(v126, v63, v128);
      v65 = v121;
      (*(v60 + 16))(v121, v62, v64);
      v66 = v136 + *(type metadata accessor for EndOfArticleFeedKnobsConfig() + 20);
      v67 = type metadata accessor for EndOfArticleFeedGroupKnobs();
      v68 = v125;
      sub_1D7AE5DD0(v66 + *(v67 + 28), v125, type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs);
      sub_1D799CC84((v137 + 2), &v142);
      type metadata accessor for MoreToReadEndOfArticleFeedGroupEmitter();
      v69 = swift_allocObject();
      v61((v69 + OBJC_IVAR____TtC12NewsArticles38MoreToReadEndOfArticleFeedGroupEmitter_config), v65, v64);
      sub_1D7AE5E38(v68, v69 + OBJC_IVAR____TtC12NewsArticles38MoreToReadEndOfArticleFeedGroupEmitter_knobs, type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs);
      sub_1D799D69C(&v142, v69 + OBJC_IVAR____TtC12NewsArticles38MoreToReadEndOfArticleFeedGroupEmitter_formatService);
      *&v142 = v69;
      sub_1D7AE5D3C();
      swift_allocObject();
      v70 = &unk_1EE0BBBA0;
      v71 = type metadata accessor for MoreToReadEndOfArticleFeedGroupEmitter;
    }

    sub_1D798EDDC(v70, v71);
    v79 = sub_1D7D2DFDC();
    (*(v60 + 8))(v62, v64);
  }

  return v79;
}

void sub_1D7AE5D3C()
{
  if (!qword_1EE0BF9E8)
  {
    type metadata accessor for EndOfArticleFeedServiceConfig();
    sub_1D798EDDC(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig);
    v0 = sub_1D7D2DFFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF9E8);
    }
  }
}

uint64_t sub_1D7AE5DD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7AE5E38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7AE5EA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = [a1 campaignData];
    if (v4 && (v5 = v4, v6 = [v4 NSDictionary], v5, v6) && (v7 = sub_1D7D3028C(), v6, v8 = sub_1D7B6EF7C(v7), , v8))
    {
      sub_1D7D2CDBC();
      v9 = 0;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_1D7D2CDCC();
  v11 = *(*(v10 - 8) + 56);

  return v11(a2, v9, 1, v10);
}

id sub_1D7AE5FC0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC12NewsArticles27OfferUpsellScenarioProvider_observers;
  *&v2[v6] = [objc_opt_self() weakObjectsHashTable];
  v2[OBJC_IVAR____TtC12NewsArticles27OfferUpsellScenarioProvider_didProcessInitialOffer] = 0;
  v7 = &v2[OBJC_IVAR____TtC12NewsArticles27OfferUpsellScenarioProvider_offerManager];
  *v7 = a1;
  v7[1] = a2;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  swift_unknownObjectRetain();
  v8 = objc_msgSendSuper2(&v12, sel_init);
  swift_getObjectType();
  sub_1D7AE6CBC(&qword_1EE0C4F60, v9, type metadata accessor for OfferUpsellScenarioProvider);
  v10 = v8;
  swift_unknownObjectRetain();
  sub_1D7D296AC();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_1D7AE624C()
{
  v0 = sub_1D7D295DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AE6E60(0, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v16 - v7;
  v9 = sub_1D7D299EC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v1 + 104))(v4, *MEMORY[0x1E69B6A98], v0);
  sub_1D7D2969C();
  (*(v1 + 8))(v4, v0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D7AE6EC4(v8);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v15 = sub_1D7AE64DC();
    (*(v10 + 8))(v13, v9);
    return v15;
  }
}

uint64_t sub_1D7AE64DC()
{
  sub_1D7AE6DF0();
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D2974C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7D29A9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D299BC();
  sub_1D7D299AC();
  v15 = *(v1 + 56);
  (*(v11 + 32))(v4, v14, v10);
  (*(v6 + 32))(&v4[v15], v9, v5);
  v16 = (*(v11 + 88))(v4, v10);
  if (v16 == *MEMORY[0x1E69B6C70])
  {
    v17 = 3;
LABEL_15:
    (*(v6 + 8))(&v4[v15], v5);
    goto LABEL_16;
  }

  if (v16 != *MEMORY[0x1E69B6C68])
  {
    goto LABEL_14;
  }

  v18 = (*(v6 + 88))(&v4[v15], v5);
  if (v18 != *MEMORY[0x1E69B6B38])
  {
    if (v18 == *MEMORY[0x1E69B6B40])
    {
      v17 = 6;
      goto LABEL_16;
    }

    if (v18 == *MEMORY[0x1E69B6B30])
    {
      v17 = 7;
      goto LABEL_16;
    }

    if (v18 == *MEMORY[0x1E69B6B48])
    {
      v17 = 8;
      goto LABEL_16;
    }

    if (v18 == *MEMORY[0x1E69B6B28])
    {
      v17 = 9;
      goto LABEL_16;
    }

LABEL_14:
    v17 = 2;
    goto LABEL_15;
  }

  v17 = 5;
LABEL_16:
  (*(v11 + 8))(v4, v10);
  return v17;
}

uint64_t sub_1D7AE6804()
{
  v1 = sub_1D7D2DB3C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D7D2DB7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7AE64DC();
  sub_1D7AE6C50();
  v12 = sub_1D7D30E1C();
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = v11;
  aBlock[4] = sub_1D7AE6C9C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D79FE25C;
  aBlock[3] = &block_descriptor_15;
  v14 = _Block_copy(aBlock);
  v15 = v0;

  sub_1D7D2DB5C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7AE6CBC(&qword_1EE0BFA20, 255, MEMORY[0x1E69E7F60]);
  sub_1D7AE6E60(0, &qword_1EE0BF280, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7AE6D04();
  sub_1D7D313AC();
  MEMORY[0x1DA70E890](0, v10, v5, v14);
  _Block_release(v14);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7AE6AEC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + OBJC_IVAR____TtC12NewsArticles27OfferUpsellScenarioProvider_observers) allObjects];
  sub_1D7AE6D8C();
  v4 = sub_1D7D3063C();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7D3167C())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA70EF00](v6, v4);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      [v7 offerUpsellScenarioDidChangeFromScenario_];
      swift_unknownObjectRelease();
      ++v6;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v7 = *(v4 + 8 * v6 + 32);
    swift_unknownObjectRetain();
    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_1D7AE6C30()
{
  if ((*(v0 + OBJC_IVAR____TtC12NewsArticles27OfferUpsellScenarioProvider_didProcessInitialOffer) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC12NewsArticles27OfferUpsellScenarioProvider_didProcessInitialOffer) = 1;
    return sub_1D7AE6804();
  }

  return result;
}

unint64_t sub_1D7AE6C50()
{
  result = qword_1EE0BEFF0;
  if (!qword_1EE0BEFF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BEFF0);
  }

  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D7AE6CBC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7AE6D04()
{
  result = qword_1EE0BF270;
  if (!qword_1EE0BF270)
  {
    sub_1D7AE6E60(255, &qword_1EE0BF280, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BF270);
  }

  return result;
}

unint64_t sub_1D7AE6D8C()
{
  result = qword_1EE0BEDB8;
  if (!qword_1EE0BEDB8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BEDB8);
  }

  return result;
}

void sub_1D7AE6DF0()
{
  if (!qword_1EE0C0180)
  {
    sub_1D7D29A9C();
    sub_1D7D2974C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0C0180);
    }
  }
}

void sub_1D7AE6E60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7AE6EC4(uint64_t a1)
{
  sub_1D7AE6E60(0, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EndOfArticleBlueprintLayoutBuilder.deinit()
{

  return v0;
}

uint64_t EndOfArticleBlueprintLayoutBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t EndOfArticleBlueprintLayoutBuilder.layout(blueprint:layoutOptions:runOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  sub_1D7AE9C1C(0, &unk_1EE0BF978, MEMORY[0x1E69B5A60]);
  v5[18] = swift_task_alloc();
  sub_1D7AE82E8();
  v5[19] = v6;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  sub_1D7A600A4();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  sub_1D7AE8370();
  v5[25] = swift_task_alloc();
  v8 = sub_1D7D2B41C();
  v5[26] = v8;
  v5[27] = *(v8 - 8);
  v5[28] = swift_task_alloc();
  v9 = sub_1D7D2B02C();
  v5[29] = v9;
  v5[30] = *(v9 - 8);
  v5[31] = swift_task_alloc();
  sub_1D7D2E83C();
  v5[32] = swift_task_alloc();
  v10 = sub_1D7D2E74C();
  v5[33] = v10;
  v5[34] = *(v10 - 8);
  v5[35] = swift_task_alloc();
  sub_1D7D2E76C();
  v5[36] = swift_task_alloc();
  sub_1D7D2E7DC();
  v5[37] = swift_task_alloc();
  sub_1D7D2E7FC();
  v5[38] = swift_task_alloc();
  v11 = sub_1D7D2E81C();
  v5[39] = v11;
  v5[40] = *(v11 - 8);
  v5[41] = swift_task_alloc();
  sub_1D7AE9C1C(0, &qword_1EE0BF8B8, MEMORY[0x1E69B5BB8]);
  v5[42] = swift_task_alloc();
  sub_1D7AE9C1C(0, &qword_1EE0BF8C0, MEMORY[0x1E69B5BB0]);
  v5[43] = swift_task_alloc();
  sub_1D7D2E79C();
  v5[44] = swift_task_alloc();
  v12 = sub_1D7D2E84C();
  v5[45] = v12;
  v5[46] = *(v12 - 8);
  v5[47] = swift_task_alloc();
  v13 = sub_1D7D288EC();
  v5[48] = v13;
  v5[49] = *(v13 - 8);
  v5[50] = swift_task_alloc();
  v14 = sub_1D7D2889C();
  v5[51] = v14;
  v5[52] = *(v14 - 8);
  v5[53] = swift_task_alloc();
  v15 = sub_1D7D2883C();
  v5[54] = v15;
  v5[55] = *(v15 - 8);
  v5[56] = swift_task_alloc();
  sub_1D7AE9C1C(0, &qword_1EE0BF790, MEMORY[0x1E69B5FB0]);
  v5[57] = swift_task_alloc();
  v16 = sub_1D7D2EB7C();
  v5[58] = v16;
  v5[59] = *(v16 - 8);
  v5[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7AE7620, 0, 0);
}

uint64_t sub_1D7AE7620()
{
  v75 = v0;
  v1 = v0[57];
  v47 = v0[58];
  v48 = v0[59];
  v2 = v0[55];
  v3 = v0[56];
  v45 = v0[60];
  v4 = v0[54];
  v71 = v0[53];
  v60 = v0[52];
  v66 = v0[51];
  v6 = v0[49];
  v5 = v0[50];
  v49 = v0[46];
  v50 = v0[45];
  v37 = v0[48];
  v38 = v0[43];
  v39 = v0[42];
  v7 = v0[40];
  v41 = v0[41];
  v43 = v0[39];
  v46 = v0[47];
  v44 = v0[35];
  v40 = v0[34];
  v42 = v0[33];
  v55 = v0[31];
  v52 = v0[30];
  v54 = v0[29];
  v57 = v0[27];
  v62 = v0[26];
  v64 = v0[28];
  v70 = v0[25];
  v8 = v0[15];
  v68 = v0[14];
  (*(v48 + 104))();
  v9 = sub_1D7D2EC6C();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  (*(v2 + 104))(v3, *MEMORY[0x1E69D7110], v4);
  sub_1D7D2AF9C();
  sub_1D7D30FFC();
  sub_1D7D2AF9C();
  sub_1D7D2AFDC();
  sub_1D7D2AF7C();
  sub_1D7D2AFEC();
  sub_1D7D2AFCC();
  sub_1D7D2AF8C();
  sub_1D7D2AFBC();
  sub_1D7D2AFFC();
  sub_1D7D2AFAC();
  (*(v6 + 104))(v5, *MEMORY[0x1E69D7278], v37);
  sub_1D7D2886C();
  sub_1D7D2E78C();
  v10 = sub_1D7D2E7BC();
  (*(*(v10 - 8) + 56))(v38, 1, 1, v10);
  v11 = sub_1D7D2E80C();
  (*(*(v11 - 8) + 56))(v39, 1, 1, v11);
  (*(v7 + 104))(v41, *MEMORY[0x1E69B5BC0], v43);
  sub_1D7D2E7EC();
  sub_1D7D2E78C();
  (*(v40 + 104))(v44, *MEMORY[0x1E69B5BA8], v42);
  sub_1D7D2E75C();
  sub_1D7D2E82C();

  sub_1D7D2E77C();
  v59 = sub_1D7D2E06C();
  (*(v49 + 8))(v46, v50);
  (*(v60 + 8))(v71, v66);
  (*(v2 + 8))(v3, v4);
  sub_1D7AE98DC(v1, &qword_1EE0BF790, MEMORY[0x1E69B5FB0]);
  (*(v48 + 8))(v45, v47);
  (*(v52 + 16))(v55, v8, v54);
  (*(v57 + 104))(v64, *MEMORY[0x1E69D7F78], v62);
  sub_1D7AE8404(0);
  (*(*(v12 - 8) + 16))(v70, v68, v12);
  sub_1D7AE9BD4(&unk_1EE0BFC50, sub_1D7AE8404);
  v13 = sub_1D7D30A2C();
  if (v13)
  {
    v14 = v13;
    v73 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C43C(0, v13 & ~(v13 >> 63), 0);
    v15 = v73;
    result = sub_1D7D309EC();
    if ((v14 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v58 = v0 + 2;
      v18 = v0[6];
      v19 = v0[19];
      v51 = v0[23];
      v53 = v14;
      v56 = v0;
      while (!__OFADD__(v17, 1))
      {
        v63 = v17 + 1;
        v20 = v0[21];
        v21 = *(v19 + 48);
        v0[7] = v18;
        result = sub_1D7D309EC();
        if (v18 < v0[8])
        {
          goto LABEL_16;
        }

        result = sub_1D7D30A5C();
        if (v18 >= v0[9])
        {
          goto LABEL_17;
        }

        v61 = v18;
        v22 = v0[20];
        v65 = v0[18];
        v72 = v15;
        v67 = v0[15];
        v69 = v0[24];
        v23 = sub_1D7D30AAC();
        v25 = v24;
        sub_1D7AE8424(0, &qword_1EE0C0050, MEMORY[0x1E69D7980]);
        v27 = v26;
        v28 = *(v26 - 8);
        (*(v28 + 16))(v20 + v21, v25, v26);
        v23(v58, 0);
        v0 = v56;
        *v22 = v17;
        v29 = *(v19 + 48);
        (*(v28 + 32))(v22 + v29, v20 + v21, v27);
        sub_1D7D2A43C();
        v74[0] = v56[10];
        v30 = sub_1D7D2E3BC();
        (*(*(v30 - 8) + 56))(v65, 1, 1, v30);
        sub_1D7AE84E4(v74, v22 + v29, v17, v67, v59, v65, v69);
        v31 = v56[20];
        sub_1D7AE98DC(v56[18], &unk_1EE0BF978, MEMORY[0x1E69B5A60]);

        sub_1D7AE9AB8(v31, sub_1D7AE82E8);
        v15 = v72;
        v33 = *(v72 + 16);
        v32 = *(v72 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1D7A5C43C(v32 > 1, v33 + 1, 1);
          v15 = v72;
        }

        v34 = v56[24];
        v35 = v56[22];
        *(v15 + 16) = v33 + 1;
        (*(v51 + 32))(v15 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v33, v34, v35);
        v56[12] = v61;
        result = sub_1D7D30A3C();
        v18 = v56[11];
        ++v17;
        if (v63 == v53)
        {
          sub_1D7AE9AB8(v56[25], sub_1D7AE8370);
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1D7AE9AB8(v0[25], sub_1D7AE8370);
LABEL_12:
    type metadata accessor for EndOfArticleLayoutModel();
    sub_1D7A916F8();
    sub_1D7AE9BD4(&unk_1EE0C7060, type metadata accessor for EndOfArticleLayoutModel);
    sub_1D7D2A22C();
    sub_1D7D2E05C();

    v36 = v0[1];

    return v36();
  }

  return result;
}

void sub_1D7AE82E8()
{
  if (!qword_1EE0BF190)
  {
    sub_1D7AE8424(255, &qword_1EE0C0050, MEMORY[0x1E69D7980]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BF190);
    }
  }
}

void sub_1D7AE8370()
{
  if (!qword_1EE0BEC08)
  {
    sub_1D7AE8404(255);
    sub_1D7AE9BD4(&qword_1EE0BFC60, sub_1D7AE8404);
    v0 = sub_1D7D3165C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BEC08);
    }
  }
}

void sub_1D7AE8424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for EndOfArticleSectionDescriptor;
    v8[1] = type metadata accessor for EndOfArticleModel();
    v8[2] = sub_1D7A2B104();
    v8[3] = sub_1D7AE9BD4(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D7AE84E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v52 = a4;
  v53 = a6;
  v55 = a2;
  v56 = a5;
  v51 = a3;
  v57 = a1;
  v54 = a7;
  v49 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v49, v7);
  v50 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for RecommendedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v47, v9);
  v48 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RelatedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  EndOfArticleFeedGroup = type metadata accessor for MoreToReadEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroup, v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MoreFromEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AE9C1C(0, &unk_1EE0BF978, MEMORY[0x1E69B5A60]);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v47 - v25;
  sub_1D7AE9A08();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v27, v29);
  v32 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v57 >> 61;
  if (v33 > 2)
  {
    if (v33 == 3)
    {
      v42 = swift_projectBox();
      sub_1D7AE9B18(v42, v18, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
      sub_1D7AE8AA8(v55, v56, &v18[*(EndOfArticleFeedGroup + 20)], v53, v54);
      v35 = type metadata accessor for MoreToReadEndOfArticleFeedGroup;
      v36 = v18;
      return sub_1D7AE9AB8(v36, v35);
    }

    if (v33 != 4)
    {
      v44 = v30;
      v45 = swift_projectBox();
      (*(v44 + 16))(v32, v45, v28);
      sub_1D7D2E13C();
      v58[0] = v58[2];
      sub_1D7D2E14C();
      v46 = sub_1D7D2E3BC();
      (*(*(v46 - 8) + 56))(v26, 0, 1, v46);
      sub_1D7AE84E4(v58, v55, v51, v52, v56, v26);
      sub_1D7AE98DC(v26, &unk_1EE0BF978, MEMORY[0x1E69B5A60]);

      return (*(v44 + 8))(v32, v28);
    }

    v37 = swift_projectBox();
    v38 = v50;
    sub_1D7AE9B18(v37, v50, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
    sub_1D7AE8AA8(v55, v56, v38 + *(v49 + 20), v53, v54);
    v39 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup;
LABEL_11:
    v35 = v39;
    v36 = v38;
    return sub_1D7AE9AB8(v36, v35);
  }

  if (!v33)
  {
    v40 = swift_projectBox();
    sub_1D7AE9B18(v40, v22, type metadata accessor for MoreFromEndOfArticleFeedGroup);
    sub_1D7AE8AA8(v55, v56, &v22[*(v19 + 20)], v53, v54);
    return sub_1D7AE9AB8(v22, type metadata accessor for MoreFromEndOfArticleFeedGroup);
  }

  if (v33 != 1)
  {
    v43 = swift_projectBox();
    v38 = v48;
    sub_1D7AE9B18(v43, v48, type metadata accessor for RecommendedEndOfArticleFeedGroup);
    sub_1D7AE8AA8(v55, v56, v38 + *(v47 + 20), v53, v54);
    v39 = type metadata accessor for RecommendedEndOfArticleFeedGroup;
    goto LABEL_11;
  }

  v34 = swift_projectBox();
  sub_1D7AE9B18(v34, v14, type metadata accessor for RelatedEndOfArticleFeedGroup);
  sub_1D7AE8AA8(v55, v56, &v14[*(v11 + 20)], v53, v54);
  v35 = type metadata accessor for RelatedEndOfArticleFeedGroup;
  v36 = v14;
  return sub_1D7AE9AB8(v36, v35);
}

uint64_t sub_1D7AE8AA8@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v97 = a4;
  v103 = a2;
  v100 = a1;
  v88 = a5;
  v82 = type metadata accessor for EndOfArticleLayoutModel();
  MEMORY[0x1EEE9AC00](v82, v6);
  v107 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1D7D2E8FC();
  v109 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v8);
  v105 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A5FC40();
  v104 = v10;
  v108 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v80 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1D7D2BE9C();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v13);
  v87 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AE9C1C(0, &qword_1EE0CB3B8, MEMORY[0x1E69D7318]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v96 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v95 = &v79 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v94 = &v79 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v92 = &v79 - v26;
  v101 = sub_1D7D2893C();
  v98 = *(v101 - 1);
  MEMORY[0x1EEE9AC00](v101, v27);
  v93 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1D7D2E03C();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v29);
  v81 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v99 = &v79 - v33;
  v34 = sub_1D7D2DE2C();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v79 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x1E69B5B80];
  sub_1D7AE9C1C(0, &unk_1EE0BF8D8, MEMORY[0x1E69B5B80]);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v42 = &v79 - v41;
  v90 = MEMORY[0x1E69B5900];
  sub_1D7AE9C1C(0, &qword_1EE0BF9F0, MEMORY[0x1E69B5900]);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v46 = &v79 - v45;
  v47 = sub_1D7D2F05C();
  v89 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v79 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
  v51 = sub_1D7D2DEBC();
  (*(*(v51 - 8) + 56))(v46, 1, 1, v51);
  (*(v35 + 16))(v38, a3, v34);
  sub_1D7D2E6DC();
  v52 = sub_1D7D2E6EC();
  (*(*(v52 - 8) + 56))(v42, 0, 1, v52);
  sub_1D7AE8424(0, &qword_1EE0C0050, MEMORY[0x1E69D7980]);
  sub_1D7AE9B80();
  sub_1D7AE9BD4(&unk_1EE0C9830, type metadata accessor for EndOfArticleModel);
  sub_1D7D2A48C();
  sub_1D7AE98DC(v42, &unk_1EE0BF8D8, v91);
  sub_1D7AE98DC(v46, &qword_1EE0BF9F0, v90);
  v53 = *(v89 + 8);
  v53(v50, v47);
  _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
  v54 = sub_1D7D2FE5C();
  v53(v50, v47);
  v115 = sub_1D7D2FACC();
  v116 = MEMORY[0x1E69B6560];
  *&v113 = v54;
  v55 = sub_1D7D2894C();
  v56 = *(*(v55 - 8) + 56);
  v56(v92, 1, 1, v55);
  v56(v94, 1, 1, v55);
  v56(v95, 1, 1, v55);
  v56(v96, 1, 1, v55);
  v57 = v93;

  v58 = v99;
  sub_1D7D2892C();
  v59 = v110;
  sub_1D7D2E04C();
  if (v59)
  {
    (*(v98 + 8))(v57, v101);

    return sub_1D7AE98DC(&v113, &qword_1EE0BF858, sub_1D7AE9C70);
  }

  else
  {
    v96 = 0;
    v97 = v54;
    (*(v98 + 8))(v57, v101);

    sub_1D7AE98DC(&v113, &qword_1EE0BF858, sub_1D7AE9C70);
    v61 = v85;
    v62 = v81;
    v63 = v86;
    (*(v85 + 16))(v81, v58, v86);
    sub_1D7A908A0(v62, &v113);
    v111 = v113;
    v112 = v114;
    v64 = *MEMORY[0x1E69D8660];
    v65 = sub_1D7D2BE8C();
    v66 = v87;
    (*(*(v65 - 8) + 104))(v87, v64, v65);
    (*(v83 + 104))(v66, *MEMORY[0x1E69D8668], v84);
    v67 = sub_1D7D2E00C();
    v68 = *(v67 + 16);
    if (v68)
    {
      v117 = MEMORY[0x1E69E7CC0];
      sub_1D7A5C3CC(0, v68, 0);
      v110 = v117;
      v103 = *(v109 + 16);
      v69 = (*(v109 + 80) + 32) & ~*(v109 + 80);
      v98 = v67;
      v70 = v67 + v69;
      v71 = *(v109 + 72);
      v101 = (v109 + 8);
      v102 = v71;
      v100 = v108 + 32;
      v72 = v80;
      v109 += 16;
      do
      {
        v73 = v105;
        v74 = v106;
        v75 = v103;
        v103(v105, v70, v106);
        v75(v107, v73, v74);
        sub_1D7AE9BD4(&unk_1EE0C7070, type metadata accessor for EndOfArticleLayoutModel);
        sub_1D7D2ABAC();
        (*v101)(v73, v74);
        v117 = v110;
        v77 = *(v110 + 16);
        v76 = *(v110 + 24);
        if (v77 >= v76 >> 1)
        {
          sub_1D7A5C3CC(v76 > 1, v77 + 1, 1);
          v110 = v117;
        }

        v78 = v110;
        *(v110 + 16) = v77 + 1;
        (*(v108 + 32))(v78 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v77, v72, v104);
        v70 += v102;
        --v68;
      }

      while (v68);

      v63 = v86;
      v61 = v85;
    }

    else
    {

      v110 = MEMORY[0x1E69E7CC0];
    }

    sub_1D7A916F8();
    sub_1D7AE9BD4(&unk_1EE0C7060, type metadata accessor for EndOfArticleLayoutModel);
    sub_1D7D2B06C();

    return (*(v61 + 8))(v99, v63);
  }
}

uint64_t sub_1D7AE9818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D7A4E2D8;

  return EndOfArticleBlueprintLayoutBuilder.layout(blueprint:layoutOptions:runOptions:)(a1, a2, a3, a4);
}

uint64_t sub_1D7AE98DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7AE9C1C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D7AE9A08()
{
  if (!qword_1EE0BF9C8)
  {
    sub_1D7AE9A64();
    v0 = sub_1D7D2E15C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF9C8);
    }
  }
}

unint64_t sub_1D7AE9A64()
{
  result = qword_1EE0C4838;
  if (!qword_1EE0C4838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C4838);
  }

  return result;
}

uint64_t sub_1D7AE9AB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7AE9B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D7AE9B80()
{
  result = qword_1EE0C4858;
  if (!qword_1EE0C4858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C4858);
  }

  return result;
}

uint64_t sub_1D7AE9BD4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7AE9C1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D7AE9C70()
{
  result = qword_1EE0BF860;
  if (!qword_1EE0BF860)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BF860);
  }

  return result;
}

uint64_t static RecipeViewerPage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1D79D7DA4(a1, v9);
  sub_1D79D7DA4(a2, v11);
  v7[4] = v9[4];
  v7[5] = v9[5];
  v8 = v10;
  v7[0] = v9[0];
  v7[1] = v9[1];
  v7[2] = v9[2];
  v7[3] = v9[3];
  v5[4] = v11[4];
  v5[5] = v11[5];
  v6 = v12;
  v5[0] = v11[0];
  v5[1] = v11[1];
  v5[2] = v11[2];
  v5[3] = v11[3];
  if (v9[0] == v11[0])
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1D7D3197C();
  }

  sub_1D7A4A624(v5);
  sub_1D7A4A624(v7);
  return v3 & 1;
}