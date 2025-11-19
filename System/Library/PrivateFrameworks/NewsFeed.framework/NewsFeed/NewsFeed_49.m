uint64_t FeedModelFactory.create(tag:context:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7270C10;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = a1;
  *(v13 + 56) = a2;
  *&v40 = v13;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v12, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();

  v14 = sub_1D7261F3C();
  v16 = v15;

  sub_1D6BAD648(v14, v16, v31);

  if (*(&v31[0] + 1))
  {
    v46 = v36;
    v47 = v37;
    v48 = v38;
    v17 = v39;
    v49 = v39;
    v18 = v32;
    v42 = v32;
    v43 = v33;
    v44 = v34;
    v45 = v35;
    v40 = v31[0];
    v41 = v31[1];
    v19 = v37;
    v20 = v38;
    *(a6 + 96) = v36;
    *(a6 + 112) = v19;
    *(a6 + 128) = v20;
    *(a6 + 144) = v17;
    v21 = v43;
    v22 = v44;
    *(a6 + 32) = v18;
    *(a6 + 48) = v21;
    v23 = v45;
    *(a6 + 64) = v22;
    *(a6 + 80) = v23;
    v24 = v41;
    *a6 = v40;
    *(a6 + 16) = v24;
    sub_1D5FC4A58(0, &qword_1EDF13000, sub_1D5FC464C, sub_1D5EEF984);
    v26 = v25;
    sub_1D5BD81F0(a3, a6 + *(v25 + 52), type metadata accessor for FeedContext);
    v27 = (a6 + *(v26 + 56));
    *v27 = 0;
    v27[1] = 0;
    v28 = (a6 + *(v26 + 64));
    *v28 = sub_1D5C00104;
    v28[1] = 0;
    return (*(*(v26 - 8) + 56))(a6, 0, 1, v26);
  }

  else
  {
    sub_1D5FC46A0(v31, &unk_1EDF34F60, &type metadata for FeedTag);
    sub_1D5FC4A58(0, &qword_1EDF13000, sub_1D5FC464C, sub_1D5EEF984);
    return (*(*(v30 - 8) + 56))(a6, 1, 1, v30);
  }
}

uint64_t FeedModelFactory.create(webEmbed:context:namespace:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7270C10;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  v12 = a1[1];
  *(v11 + 48) = *a1;
  *(v11 + 56) = v12;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v10, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();

  v13 = sub_1D7261F3C();
  v15 = v14;

  sub_1D6BC7B84(v13, v15, a1, a2, a5);

  sub_1D5FC4710();
  v17 = v16;
  result = sub_1D5BD81F0(a2, a5 + *(v16 + 52), type metadata accessor for FeedContext);
  v19 = (a5 + *(v17 + 56));
  *v19 = 0;
  v19[1] = 0;
  v20 = (a5 + *(v17 + 64));
  *v20 = sub_1D5C00104;
  v20[1] = 0;
  return result;
}

uint64_t FeedModelFactory.create<A>(webEmbed:context:namespace:metadata:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v38 = a2;
  v43 = a8;
  v44 = a7;
  v41 = a6;
  v42 = a5;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v40, v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v37 - v22);
  v24 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7270C10;
  *(v25 + 32) = a3;
  *(v25 + 40) = a4;
  v26 = a1[1];
  *(v25 + 48) = *a1;
  *(v25 + 56) = v26;
  v45 = v25;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v24, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();

  v27 = sub_1D7261F3C();
  v29 = v28;

  v30 = v27;
  v31 = v38;
  sub_1D6BC7B84(v30, v29, a1, v38, v23);

  sub_1D5BD81F0(v23, v19, type metadata accessor for FeedWebEmbed);
  sub_1D5BD81F0(v31, v16, type metadata accessor for FeedContext);
  v32 = v39;
  v33 = v41;
  (*(v11 + 16))(v39, v42, v41);
  v34 = sub_1D5D21194(&qword_1EDF12B90, type metadata accessor for FeedWebEmbed);
  v35 = sub_1D5D21194(&qword_1EDF12B98, type metadata accessor for FeedWebEmbed);
  FeedModel<>.init(model:context:namespace:metadata:)(v19, v16, 0, 0, v32, v40, v33, v34, v43, v35, v44);
  return sub_1D5C0AD80(v23, type metadata accessor for FeedWebEmbed);
}

uint64_t FeedModelFactory.create(customItem:context:namespace:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for FeedCustomItem();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D7270C10;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  v17 = a1[1];
  *(v16 + 48) = *a1;
  *(v16 + 56) = v17;
  v30[1] = v16;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v15, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();

  v18 = sub_1D7261F3C();
  v20 = v19;

  sub_1D5BD81F0(a1, v14 + *(v11 + 28), type metadata accessor for FormatCustomItem.Resolved);
  v21 = (a1 + *(type metadata accessor for FormatCustomItem.Resolved() + 32));
  v22 = *v21;
  v23 = v21[1];
  v24 = (v14 + *(v11 + 32));
  *v14 = v18;
  v14[1] = v20;
  *v24 = v22;
  v24[1] = v23;
  sub_1D5BD81F0(v14, a5, type metadata accessor for FeedCustomItem);
  sub_1D5FC47F0();
  v26 = v25;
  sub_1D5BD81F0(a2, a5 + *(v25 + 52), type metadata accessor for FeedContext);
  v27 = (a5 + *(v26 + 56));
  *v27 = 0;
  v27[1] = 0;
  v28 = (a5 + *(v26 + 64));
  *v28 = sub_1D5C00104;
  v28[1] = 0;

  return sub_1D5C0AD80(v14, type metadata accessor for FeedCustomItem);
}

uint64_t FeedModelFactory.create<A>(customItem:context:namespace:metadata:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a8;
  v46 = a7;
  v43 = a6;
  v44 = a5;
  v42 = a2;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v41 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v40 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FeedCustomItem();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v40 - v22);
  v24 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7270C10;
  *(v25 + 32) = a3;
  *(v25 + 40) = a4;
  v26 = a1[1];
  *(v25 + 48) = *a1;
  *(v25 + 56) = v26;
  v47 = v25;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v24, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();

  v27 = sub_1D7261F3C();
  v29 = v28;

  sub_1D5BD81F0(a1, v23 + *(v16 + 20), type metadata accessor for FormatCustomItem.Resolved);
  v30 = (a1 + *(type metadata accessor for FormatCustomItem.Resolved() + 32));
  v31 = *v30;
  v32 = v30[1];
  v33 = (v23 + *(v16 + 24));
  *v23 = v27;
  v23[1] = v29;
  *v33 = v31;
  v33[1] = v32;
  sub_1D5BD81F0(v23, v19, type metadata accessor for FeedCustomItem);
  v34 = v40;
  sub_1D5BD81F0(v42, v40, type metadata accessor for FeedContext);
  v35 = v41;
  v36 = v43;
  (*(v11 + 16))(v41, v44, v43);
  v37 = sub_1D5D21194(&qword_1EDF15718, type metadata accessor for FeedCustomItem);
  v38 = sub_1D5D21194(&qword_1EDF15720, type metadata accessor for FeedCustomItem);

  FeedModel<>.init(model:context:namespace:metadata:)(v19, v34, 0, 0, v35, v16, v36, v37, v45, v38, v46);
  return sub_1D5C0AD80(v23, type metadata accessor for FeedCustomItem);
}

uint64_t FeedModelFactory.createBannerAd(context:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = v4[10];
  v10 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v9);
  (*(v10 + 8))(v9, v10);
  sub_1D5FC48D0();
  v12 = v11;
  sub_1D5BD81F0(a1, a4 + *(v11 + 52), type metadata accessor for FeedContext);
  v13 = (a4 + *(v12 + 56));
  *v13 = a2;
  v13[1] = a3;
  v14 = (a4 + *(v12 + 64));
  *v14 = sub_1D5C00104;
  v14[1] = 0;
}

uint64_t FeedModelFactory.createBannerAd<A>(context:namespace:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v30 = a6;
  v31 = a5;
  v28 = a1;
  v29 = a3;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeedBannerAd();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v28 - v21;
  v23 = v6[10];
  v24 = v6[11];
  __swift_project_boxed_opaque_existential_1(v6 + 7, v23);
  (*(v24 + 8))(v23, v24);
  sub_1D5BD81F0(v22, v18, type metadata accessor for FeedBannerAd);
  sub_1D5BD81F0(v28, v14, type metadata accessor for FeedContext);
  (*(v8 + 16))(v10, v29, a4);
  v25 = sub_1D5D21194(&qword_1EDF12C50, type metadata accessor for FeedBannerAd);
  v26 = sub_1D5D21194(&qword_1EDF34B10, type metadata accessor for FeedBannerAd);
  FeedModel<>.init(model:context:namespace:metadata:)(v18, v14, 0, 0, v10, v15, a4, v25, v30, v26, v31);
  return sub_1D5C0AD80(v22, type metadata accessor for FeedBannerAd);
}

uint64_t FeedModelFactory.create(puzzle:context:namespace:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v11 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7270C10;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  swift_getObjectType();

  v13 = [a1 identifier];
  v14 = sub_1D726207C();
  v16 = v15;

  *(v12 + 48) = v14;
  *(v12 + 56) = v16;
  v48[0] = v12;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v11, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v43 = sub_1D7261F3C();
  v18 = v17;

  v19 = *(v6 + 96);
  v20 = v19[10];
  v21 = v19[11];
  __swift_project_boxed_opaque_existential_1(v19 + 7, v20);
  v22 = [a1 identifier];
  v23 = sub_1D726207C();
  v25 = v24;

  v26 = (*(*(v21 + 8) + 56))(v23, v25, v20);

  v27 = v19[5];
  v28 = v19[6];
  __swift_project_boxed_opaque_existential_1(v19 + 2, v27);
  (*(v28 + 16))(&v49, a1, v27, v28);
  LOBYTE(v11) = v49;
  sub_1D5B68374((v19 + 12), v48);
  sub_1D5B68374((v19 + 17), v47);
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  *(a5 + 24) = xmmword_1D728A8D0;
  *(a5 + 40) = v43;
  *(a5 + 48) = v18;
  *(a5 + 56) = a1;
  *(a5 + 64) = v26;
  *(a5 + 72) = v11;
  sub_1D5C3AE10(v48, a5 + 88, qword_1EDF1CE10, &qword_1EDF3CFD0);
  sub_1D5C3AE10(v47, a5 + 128, qword_1EDF27B30, qword_1EDF3F7F0);
  sub_1D5C3AE10(v45, a5 + 168, qword_1EDF1C510, &qword_1EDF3CDC0);
  *(a5 + 80) = MEMORY[0x1E69E7CD0];
  swift_unknownObjectRetain();
  if ((FCPuzzleProviding.puzzleTypeTraits.getter() & 4) != 0)
  {
    v30 = [a1 teaserClue];
    v29 = 0x8000000000;
    if (v30)
    {
      v31 = v30;
      v32 = sub_1D726207C();
      v34 = v33;

      v35 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v35 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (v35)
      {
        v29 = 0x28000000000;
      }
    }
  }

  else
  {
    v29 = 0x8000000000;
  }

  v36 = [a1 thumbnailSmallImageAssetHandle];
  if (v36)
  {

    v29 |= 4uLL;
  }

  v37 = [a1 thumbnailLargeImageAssetHandle];
  if (v37)
  {

    v29 |= 0x40000000000uLL;
  }

  sub_1D5BFB774(v45, qword_1EDF1C510, &qword_1EDF3CDC0);
  sub_1D5BFB774(v47, qword_1EDF27B30, qword_1EDF3F7F0);
  sub_1D5BFB774(v48, qword_1EDF1CE10, &qword_1EDF3CFD0);
  *a5 = v29;
  sub_1D5FC4A58(0, &qword_1EDF12FF8, sub_1D5FC49B0, sub_1D5FC4A04);
  v39 = v38;
  result = sub_1D5BD81F0(a2, a5 + *(v38 + 52), type metadata accessor for FeedContext);
  v41 = (a5 + *(v39 + 56));
  *v41 = 0;
  v41[1] = 0;
  v42 = (a5 + *(v39 + 64));
  *v42 = sub_1D5C00104;
  v42[1] = 0;
  return result;
}

uint64_t FeedModelFactory.create<A>(puzzle:context:namespace:metadata:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v56 = a8;
  v57 = a7;
  v52 = a2;
  v58 = a6;
  v53 = *(a6 - 8);
  v54 = a5;
  MEMORY[0x1EEE9AC00](a1, a2);
  v55 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v51 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D7270C10;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  v50[1] = swift_getObjectType();

  v19 = [a1 identifier];
  v20 = sub_1D726207C();
  v22 = v21;

  *(v18 + 48) = v20;
  *(v18 + 56) = v22;
  v64[0] = v18;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v17, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v50[0] = sub_1D7261F3C();
  v24 = v23;

  v25 = *(v9 + 96);
  v26 = v25[10];
  v27 = v25[11];
  __swift_project_boxed_opaque_existential_1(v25 + 7, v26);
  v28 = [a1 identifier];
  v29 = sub_1D726207C();
  v31 = v30;

  v32 = (*(*(v27 + 8) + 56))(v29, v31, v26);

  v33 = v25[5];
  v34 = v25[6];
  __swift_project_boxed_opaque_existential_1(v25 + 2, v33);
  (*(v34 + 16))(&v63, a1, v33, v34);
  LOBYTE(v19) = v63;
  sub_1D5B68374((v25 + 12), v59);
  sub_1D5B68374((v25 + 17), v62);
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  v64[1] = 0;
  v65 = 1;
  v66 = xmmword_1D728A8D0;
  v67 = v50[0];
  v68 = v24;
  v69 = a1;
  v70 = v32;
  v71 = v19;
  sub_1D5C3AE10(v59, &v73, qword_1EDF1CE10, &qword_1EDF3CFD0);
  sub_1D5C3AE10(v62, &v74, qword_1EDF27B30, qword_1EDF3F7F0);
  sub_1D5C3AE10(v60, &v75, qword_1EDF1C510, &qword_1EDF3CDC0);
  v72 = MEMORY[0x1E69E7CD0];
  swift_unknownObjectRetain();
  if ((FCPuzzleProviding.puzzleTypeTraits.getter() & 4) != 0)
  {
    v36 = [a1 teaserClue];
    v35 = 0x8000000000;
    if (v36)
    {
      v37 = v36;
      v38 = sub_1D726207C();
      v40 = v39;

      v41 = HIBYTE(v40) & 0xF;
      if ((v40 & 0x2000000000000000) == 0)
      {
        v41 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        v35 = 0x28000000000;
      }
    }
  }

  else
  {
    v35 = 0x8000000000;
  }

  v42 = [a1 thumbnailSmallImageAssetHandle];
  if (v42)
  {

    v35 |= 4uLL;
  }

  v43 = [a1 thumbnailLargeImageAssetHandle];
  if (v43)
  {

    v35 |= 0x40000000000uLL;
  }

  sub_1D5BFB774(v60, qword_1EDF1C510, &qword_1EDF3CDC0);
  sub_1D5BFB774(v62, qword_1EDF27B30, qword_1EDF3F7F0);
  sub_1D5BFB774(v59, qword_1EDF1CE10, &qword_1EDF3CFD0);
  v64[0] = v35;
  sub_1D5F2DEAC(v64, v59);
  v44 = v51;
  sub_1D5BD81F0(v52, v51, type metadata accessor for FeedContext);
  v45 = v55;
  v46 = v58;
  (*(v53 + 16))(v55, v54, v58);
  v47 = sub_1D5FC49B0();
  v48 = sub_1D5FC4A04();
  FeedModel<>.init(model:context:namespace:metadata:)(v59, v44, 0, 0, v45, &type metadata for FeedPuzzle, v46, v47, v56, v48, v57);
  return sub_1D5F2DF58(v64);
}

uint64_t FeedModelFactory.create(puzzleType:context:namespace:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7270C10;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;

  v12 = [a1 identifier];
  v13 = sub_1D726207C();
  v15 = v14;

  *(v11 + 48) = v13;
  *(v11 + 56) = v15;
  v24 = v11;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v10, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v16 = sub_1D7261F3C();
  v18 = v17;

  sub_1D5FC4A58(0, &unk_1EC89B010, sub_1D5FC4AE8, sub_1D5FC4B3C);
  v20 = v19;
  sub_1D5BD81F0(a2, a5 + *(v19 + 52), type metadata accessor for FeedContext);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  *(a5 + 17) = v24;
  *(a5 + 20) = *(&v24 + 3);
  *(a5 + 24) = xmmword_1D728A8E0;
  *(a5 + 40) = v16;
  *(a5 + 48) = v18;
  *(a5 + 56) = a1;
  v21 = (a5 + *(v20 + 56));
  *v21 = 0;
  v21[1] = 0;
  v22 = (a5 + *(v20 + 64));
  *v22 = sub_1D5C00104;
  v22[1] = 0;
  return swift_unknownObjectRetain();
}

uint64_t FeedModelFactory.create(puzzleStatistic:context:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a2;
  v9 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v41 - v14;
  v16 = type metadata accessor for PuzzleStatistic();
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D7270C10;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;

  *(v22 + 48) = PuzzleStatistic.identifier.getter();
  *(v22 + 56) = v23;
  v44 = v22;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v21, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v24 = sub_1D7261F3C();
  v26 = v25;

  sub_1D5BD81F0(a1, v20, type metadata accessor for PuzzleStatistic);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  *(a5 + 24) = xmmword_1D728A8F0;
  *(a5 + 40) = v24;
  *(a5 + 48) = v26;
  v27 = type metadata accessor for FeedPuzzleStatistic();
  sub_1D5BD81F0(v20, a5 + *(v27 + 32), type metadata accessor for PuzzleStatistic);
  v28 = *(v17 + 28);
  sub_1D5BD81F0(&v20[v28], v15, type metadata accessor for PuzzleStatisticCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    sub_1D5C0AD80(v15, type metadata accessor for PuzzleStatisticCategory);
LABEL_3:
    v30 = 0x100000000000;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    swift_getObjectType();
    v31 = FCPuzzleTypeProviding.puzzleTypeTraits.getter();
    sub_1D5C0AD80(v15, type metadata accessor for PuzzleStatisticCategory);
    if ((v31 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D5C0AD80(v15, type metadata accessor for PuzzleStatisticCategory);
  }

  v30 = 0x80000000000;
LABEL_8:
  v32 = &v20[v28];
  v33 = v42;
  sub_1D5BD81F0(v32, v42, type metadata accessor for PuzzleStatisticCategory);
  v34 = swift_getEnumCaseMultiPayload();
  sub_1D5C0AD80(v33, type metadata accessor for PuzzleStatisticCategory);
  if (v34 == 2)
  {
    v35 = v30 | 0x1000000000000;
  }

  else
  {
    v35 = v30;
  }

  sub_1D5C0AD80(v20, type metadata accessor for PuzzleStatistic);
  *a5 = v35;
  sub_1D5FC4B90();
  v37 = v36;
  result = sub_1D5BD81F0(v43, a5 + *(v36 + 52), type metadata accessor for FeedContext);
  v39 = (a5 + *(v37 + 56));
  *v39 = 0;
  v39[1] = 0;
  v40 = (a5 + *(v37 + 64));
  *v40 = sub_1D5C00104;
  v40[1] = 0;
  return result;
}

uint64_t (*FeedModelFactory.create<A>(puzzleType:context:namespace:metadata:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>))()
{
  v34 = a8;
  v35 = a7;
  v32 = a2;
  v33 = a5;
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7270C10;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;

  v21 = [a1 identifier];
  v22 = sub_1D726207C();
  v24 = v23;

  *(v20 + 48) = v22;
  *(v20 + 56) = v24;
  v36[0] = v20;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v19, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v25 = sub_1D7261F3C();
  v27 = v26;

  v36[0] = 0;
  v36[1] = 0;
  v37 = 1;
  *v38 = *v43;
  *&v38[3] = *&v43[3];
  v39 = xmmword_1D728A8E0;
  v40 = v25;
  v41 = v27;
  v42 = a1;
  sub_1D5BD81F0(v32, v18, type metadata accessor for FeedContext);
  (*(v12 + 16))(v14, v33, a6);
  v28 = sub_1D5FC4AE8();
  v29 = sub_1D5FC4B3C();
  swift_unknownObjectRetain();
  return FeedModel<>.init(model:context:namespace:metadata:)(v36, v18, 0, 0, v14, &type metadata for FeedPuzzleType, a6, v28, v34, v29, v35);
}

uint64_t FeedModelFactory.create(recipe:context:namespace:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7270C10;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;

  v12 = [a1 identifier];
  v13 = sub_1D726207C();
  v15 = v14;

  *(v11 + 48) = v13;
  *(v11 + 56) = v15;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v10, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v16 = sub_1D7261F3C();
  v18 = v17;

  sub_1D67A22E4(v16, v18, a1, a2, a5);

  sub_1D5FC4C70();
  v20 = v19;
  result = sub_1D5BD81F0(a2, a5 + *(v19 + 52), type metadata accessor for FeedContext);
  v22 = (a5 + *(v20 + 56));
  *v22 = 0;
  v22[1] = 0;
  v23 = (a5 + *(v20 + 64));
  *v23 = sub_1D5C00104;
  v23[1] = 0;
  return result;
}

uint64_t FeedModelFactory.create<A>(recipe:context:namespace:metadata:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a2;
  v46 = a8;
  v47 = a7;
  v44 = a6;
  v45 = a5;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v41 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v43, v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v40 - v22;
  v24 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7270C10;
  *(v25 + 32) = a3;
  *(v25 + 40) = a4;

  v26 = [a1 identifier];
  v27 = sub_1D726207C();
  v29 = v28;

  *(v25 + 48) = v27;
  *(v25 + 56) = v29;
  v48 = v25;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v24, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v30 = sub_1D7261F3C();
  v32 = v31;

  v33 = v30;
  v34 = v42;
  sub_1D67A22E4(v33, v32, a1, v42, v23);

  sub_1D5BD81F0(v23, v19, type metadata accessor for FeedRecipe);
  sub_1D5BD81F0(v34, v16, type metadata accessor for FeedContext);
  v35 = v41;
  v36 = v44;
  (*(v11 + 16))(v41, v45, v44);
  v37 = sub_1D5D21194(&qword_1EDF12E08, type metadata accessor for FeedRecipe);
  v38 = sub_1D5D21194(&qword_1EDF12E10, type metadata accessor for FeedRecipe);
  FeedModel<>.init(model:context:namespace:metadata:)(v19, v16, 0, 0, v35, v43, v36, v37, v46, v38, v47);
  return sub_1D5C0AD80(v23, type metadata accessor for FeedRecipe);
}

uint64_t FeedModelFactory.create<A>(puzzleStatistic:context:namespace:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v62 = a8;
  v63 = a7;
  v60 = a5;
  v54 = a3;
  v64 = a6;
  v10 = *(a6 - 8);
  v57 = a2;
  v58 = v10;
  MEMORY[0x1EEE9AC00](a1, a2);
  v61 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v59 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v55, v15);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v54 - v20;
  v22 = type metadata accessor for PuzzleStatistic();
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v27, v28);
  v56 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v54 - v32;
  v34 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D7270C10;
  *(v35 + 32) = v54;
  *(v35 + 40) = a4;

  *(v35 + 48) = PuzzleStatistic.identifier.getter();
  *(v35 + 56) = v36;
  v65 = v35;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v34, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v37 = sub_1D7261F3C();
  v39 = v38;

  sub_1D5BD81F0(a1, v26, type metadata accessor for PuzzleStatistic);
  *v33 = 0;
  *(v33 + 1) = 0;
  v33[16] = 1;
  *(v33 + 24) = xmmword_1D728A8F0;
  *(v33 + 5) = v37;
  *(v33 + 6) = v39;
  v40 = v27;
  sub_1D5BD81F0(v26, &v33[*(v27 + 32)], type metadata accessor for PuzzleStatistic);
  v41 = *(v23 + 28);
  sub_1D5BD81F0(&v26[v41], v21, type metadata accessor for PuzzleStatisticCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    sub_1D5C0AD80(v21, type metadata accessor for PuzzleStatisticCategory);
LABEL_3:
    v43 = 0x100000000000;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    swift_getObjectType();
    v44 = FCPuzzleTypeProviding.puzzleTypeTraits.getter();
    sub_1D5C0AD80(v21, type metadata accessor for PuzzleStatisticCategory);
    if ((v44 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D5C0AD80(v21, type metadata accessor for PuzzleStatisticCategory);
  }

  v43 = 0x80000000000;
LABEL_8:
  sub_1D5BD81F0(&v26[v41], v17, type metadata accessor for PuzzleStatisticCategory);
  v45 = swift_getEnumCaseMultiPayload();
  sub_1D5C0AD80(v17, type metadata accessor for PuzzleStatisticCategory);
  if (v45 == 2)
  {
    v46 = v43 | 0x1000000000000;
  }

  else
  {
    v46 = v43;
  }

  sub_1D5C0AD80(v26, type metadata accessor for PuzzleStatistic);
  *v33 = v46;
  v47 = v56;
  sub_1D5BD81F0(v33, v56, type metadata accessor for FeedPuzzleStatistic);
  v48 = v59;
  sub_1D5BD81F0(v57, v59, type metadata accessor for FeedContext);
  v49 = v61;
  v50 = v64;
  (*(v58 + 16))(v61, v60, v64);
  v51 = sub_1D5D21194(&qword_1EC881DD8, type metadata accessor for FeedPuzzleStatistic);
  v52 = sub_1D5D21194(&qword_1EC881DE0, type metadata accessor for FeedPuzzleStatistic);
  FeedModel<>.init(model:context:namespace:metadata:)(v47, v48, 0, 0, v49, v40, v50, v51, v62, v52, v63);
  return sub_1D5C0AD80(v33, type metadata accessor for FeedPuzzleStatistic);
}

uint64_t FeedModelFactory.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return v0;
}

uint64_t FeedModelFactory.__deallocating_deinit()
{
  FeedModelFactory.deinit();

  return swift_deallocClassInstance();
}

uint64_t FeedModelFactory.createAuxiliary(auxiliary:context:parentIdentifier:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v12[2] = a3;
  v12[3] = a4;
  v12[5] = a2;

  v10 = sub_1D5FBD224(sub_1D5FC4D50, v12, v8);
  *a5 = a3;
  a5[1] = a4;
  a5[2] = v10;
  a5[3] = v9;
  a5[4] = 0x7261696C69787561;
  a5[5] = 0xE900000000000079;
}

id sub_1D5FC2BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  ObjectType = a5;
  v233 = a4;
  v235 = a2;
  v236 = a3;
  v237 = a6;
  v224 = type metadata accessor for FeedCustomItem();
  MEMORY[0x1EEE9AC00](v224, v7);
  v223 = (&v220 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v222 = type metadata accessor for FormatCustomItem.Resolved();
  MEMORY[0x1EEE9AC00](v222, v9);
  v228 = (&v220 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v231 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v231, v11);
  v230 = &v220 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v225 = &v220 - v15;
  v221 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v221, v16);
  v229 = (&v220 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v220 = type metadata accessor for PuzzleStatistic();
  MEMORY[0x1EEE9AC00](v220, v18);
  v227 = &v220 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v226 = &v220 - v22;
  v23 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = (&v220 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for FormatWebEmbed.Resolved();
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = (&v220 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = &v220 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C1F6F0(0, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v38 = &v220 - v37;
  v39 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v42 = &v220 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = (&v220 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v234 = a1;
  sub_1D5BD81F0(a1, v46, type metadata accessor for FormatContentSlotItemObject.Resolved);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {
          v63 = v228;
          sub_1D5BE2EB4(v46, v228, type metadata accessor for FormatCustomItem.Resolved);
          v65 = *v63;
          v64 = v63[1];
          v66 = MEMORY[0x1E69E6158];
          sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v67 = swift_allocObject();
          *(v67 + 16) = xmmword_1D7279970;
          *(v67 + 32) = 0x7261696C69787561;
          *(v67 + 40) = 0xE900000000000079;
          v68 = v236;
          *(v67 + 48) = v235;
          *(v67 + 56) = v68;
          *(v67 + 64) = v65;
          *(v67 + 72) = v64;
          *&v245 = v67;
          sub_1D5B5D3F4(0, &qword_1EDF43BA0, v66, MEMORY[0x1E69E62F8]);
          sub_1D5BB0AB8();

          v69 = sub_1D7261F3C();
          v71 = v70;

          v73 = v223;
          v72 = v224;
          sub_1D5BD81F0(v63, v223 + *(v224 + 20), type metadata accessor for FormatCustomItem.Resolved);
          v74 = (v63 + *(v222 + 32));
          v75 = *v74;
          v76 = v74[1];
          v77 = (v73 + *(v72 + 24));
          *v73 = v69;
          v73[1] = v71;
          *v77 = v75;
          v77[1] = v76;
          v78 = v73;
          v56 = v237;
          sub_1D5BE2EB4(v78, v237, type metadata accessor for FeedCustomItem);
          type metadata accessor for FeedItem(0);
          swift_storeEnumTagMultiPayload();
          v79 = type metadata accessor for FormatContentSlotItemResolution();
          v80 = *(v234 + *(v79 + 28));
          v81 = *(v234 + *(v79 + 24));
          v60 = type metadata accessor for FeedItemAuxiliaryItem();
          *(v56 + *(v60 + 20)) = v80;
          *(v56 + *(v60 + 24)) = v81;

          v61 = type metadata accessor for FormatCustomItem.Resolved;
          v62 = v63;
          goto LABEL_10;
        }

        sub_1D5C0AD80(v46, type metadata accessor for FormatContentSlotItemObject.Resolved);
        v163 = type metadata accessor for FeedItemAuxiliaryItem();
        return (*(*(v163 - 8) + 56))(v237, 1, 1, v163);
      }

      v131 = *v46;
      v132 = [*v46 identifier];
      v133 = sub_1D726207C();
      v135 = v134;

      v136 = MEMORY[0x1E69E6158];
      sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v137 = swift_allocObject();
      *(v137 + 16) = xmmword_1D7279970;
      *(v137 + 32) = 0x7261696C69787561;
      *(v137 + 40) = 0xE900000000000079;
      v138 = v236;
      *(v137 + 48) = v235;
      *(v137 + 56) = v138;
      *(v137 + 64) = v133;
      *(v137 + 72) = v135;
      *&v245 = v137;
      sub_1D5B5D3F4(0, &qword_1EDF43BA0, v136, MEMORY[0x1E69E62F8]);
      sub_1D5BB0AB8();

      v139 = sub_1D7261F3C();
      v141 = v140;

      sub_1D67A22E4(v139, v141, v131, ObjectType, v34);

      v95 = v237;
      sub_1D5BE2EB4(v34, v237, type metadata accessor for FeedRecipe);
      type metadata accessor for FeedItem(0);
LABEL_45:
      swift_storeEnumTagMultiPayload();
      v218 = type metadata accessor for FormatContentSlotItemResolution();
      v211 = *(v234 + *(v218 + 28));
      v212 = *(v234 + *(v218 + 24));
LABEL_46:
      v219 = type metadata accessor for FeedItemAuxiliaryItem();
      *(v95 + *(v219 + 20)) = v211;
      *(v95 + *(v219 + 24)) = v212;
      (*(*(v219 - 8) + 56))(v95, 0, 1, v219);
      goto LABEL_47;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v96 = *v46;
      v97 = [*v46 identifier];
      v98 = sub_1D726207C();
      v100 = v99;

      v101 = MEMORY[0x1E69E6158];
      sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_1D7279970;
      *(v102 + 32) = 0x7261696C69787561;
      *(v102 + 40) = 0xE900000000000079;
      v103 = v236;
      *(v102 + 48) = v235;
      *(v102 + 56) = v103;
      *(v102 + 64) = v98;
      *(v102 + 72) = v100;
      *&v245 = v102;
      sub_1D5B5D3F4(0, &qword_1EDF43BA0, v101, MEMORY[0x1E69E62F8]);
      sub_1D5BB0AB8();

      v104 = sub_1D7261F3C();
      v106 = v105;

      v107 = v237;
      *v237 = 0;
      *(v107 + 8) = 0;
      *(v107 + 16) = 1;
      *(v107 + 17) = v245;
      *(v107 + 20) = *(&v245 + 3);
      *(v107 + 24) = xmmword_1D728A8E0;
      *(v107 + 40) = v104;
      *(v107 + 48) = v106;
      *(v107 + 56) = v96;
      type metadata accessor for FeedItem(0);
LABEL_18:
      swift_storeEnumTagMultiPayload();
      v127 = type metadata accessor for FormatContentSlotItemResolution();
      v128 = *(v234 + *(v127 + 28));
      v129 = *(v234 + *(v127 + 24));
      v130 = type metadata accessor for FeedItemAuxiliaryItem();
      *(v107 + *(v130 + 20)) = v128;
      *(v107 + *(v130 + 24)) = v129;
      (*(*(v130 - 8) + 56))(v107, 0, 1, v130);
LABEL_47:
    }

    v179 = v226;
    sub_1D5BE2EB4(v46, v226, type metadata accessor for PuzzleStatistic);
    v180 = PuzzleStatistic.identifier.getter();
    v182 = v181;
    v183 = MEMORY[0x1E69E6158];
    sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v184 = swift_allocObject();
    *(v184 + 16) = xmmword_1D7279970;
    *(v184 + 32) = 0x7261696C69787561;
    *(v184 + 40) = 0xE900000000000079;
    v185 = v236;
    *(v184 + 48) = v235;
    *(v184 + 56) = v185;
    *(v184 + 64) = v180;
    *(v184 + 72) = v182;
    *&v245 = v184;
    sub_1D5B5D3F4(0, &qword_1EDF43BA0, v183, MEMORY[0x1E69E62F8]);
    sub_1D5BB0AB8();

    v186 = sub_1D7261F3C();
    v188 = v187;

    v189 = v227;
    sub_1D5BD81F0(v179, v227, type metadata accessor for PuzzleStatistic);
    v190 = v229;
    *v229 = 0;
    *(v190 + 8) = 0;
    *(v190 + 16) = 1;
    *(v190 + 24) = xmmword_1D728A8F0;
    *(v190 + 40) = v186;
    *(v190 + 48) = v188;
    sub_1D5BD81F0(v189, v190 + *(v221 + 32), type metadata accessor for PuzzleStatistic);
    v191 = *(v220 + 20);
    v192 = v225;
    sub_1D5BD81F0(v189 + v191, v225, type metadata accessor for PuzzleStatisticCategory);
    v193 = swift_getEnumCaseMultiPayload();
    if ((v193 - 2) < 2)
    {
      sub_1D5C0AD80(v192, type metadata accessor for PuzzleStatisticCategory);
LABEL_26:
      v194 = 0x100000000000;
LABEL_41:
      v214 = v189 + v191;
      v215 = v230;
      sub_1D5BD81F0(v214, v230, type metadata accessor for PuzzleStatisticCategory);
      v216 = swift_getEnumCaseMultiPayload();
      sub_1D5C0AD80(v215, type metadata accessor for PuzzleStatisticCategory);
      if (v216 == 2)
      {
        v217 = v194 | 0x1000000000000;
      }

      else
      {
        v217 = v194;
      }

      sub_1D5C0AD80(v189, type metadata accessor for PuzzleStatistic);
      *v190 = v217;
      sub_1D5C0AD80(v179, type metadata accessor for PuzzleStatistic);
      v95 = v237;
      sub_1D5BE2EB4(v190, v237, type metadata accessor for FeedPuzzleStatistic);
      type metadata accessor for FeedItem(0);
      goto LABEL_45;
    }

    if (v193)
    {
      swift_getObjectType();
      v213 = FCPuzzleTypeProviding.puzzleTypeTraits.getter();
      sub_1D5C0AD80(v192, type metadata accessor for PuzzleStatisticCategory);
      if ((v213 & 2) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_1D5C0AD80(v192, type metadata accessor for PuzzleStatisticCategory);
    }

    v194 = 0x80000000000;
    goto LABEL_41;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v164 = *v46;
      v165 = [*v46 identifier];
      v166 = sub_1D726207C();
      v168 = v167;

      v169 = MEMORY[0x1E69E6158];
      sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v170 = swift_allocObject();
      *(v170 + 16) = xmmword_1D7279970;
      *(v170 + 32) = 0x7261696C69787561;
      *(v170 + 40) = 0xE900000000000079;
      v171 = v236;
      *(v170 + 48) = v235;
      *(v170 + 56) = v171;
      *(v170 + 64) = v166;
      *(v170 + 72) = v168;
      *&v245 = v170;
      sub_1D5B5D3F4(0, &qword_1EDF43BA0, v169, MEMORY[0x1E69E62F8]);
      sub_1D5BB0AB8();

      v172 = sub_1D7261F3C();
      v174 = v173;

      *&v245 = 0;
      BYTE8(v245) = 1;
      sub_1D71CCC34(v172, v174, v164, ObjectType, &v245, v238);

      v175 = v239[0];
      v95 = v237;
      v237[6] = v238[6];
      v95[7] = v175;
      *(v95 + 121) = *(v239 + 9);
      v176 = v238[3];
      v95[2] = v238[2];
      v95[3] = v176;
      v177 = v238[5];
      v95[4] = v238[4];
      v95[5] = v177;
      v178 = v238[1];
      *v95 = v238[0];
      v95[1] = v178;
    }

    else
    {
      v83 = *v46;
      v84 = [*v46 identifier];
      v85 = sub_1D726207C();
      v87 = v86;

      v88 = MEMORY[0x1E69E6158];
      sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_1D7279970;
      *(v89 + 32) = 0x7261696C69787561;
      *(v89 + 40) = 0xE900000000000079;
      v90 = v236;
      *(v89 + 48) = v235;
      *(v89 + 56) = v90;
      *(v89 + 64) = v85;
      *(v89 + 72) = v87;
      *&v245 = v89;
      sub_1D5B5D3F4(0, &qword_1EDF43BA0, v88, MEMORY[0x1E69E62F8]);
      sub_1D5BB0AB8();

      v91 = sub_1D7261F3C();
      v93 = v92;

      v94 = sub_1D726045C();
      (*(*(v94 - 8) + 56))(v38, 1, 1, v94);
      sub_1D5D1FA14(v91, v93, v83, ObjectType, v38, v42);
      swift_unknownObjectRelease();

      sub_1D5FC4FD8(v38, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
      v95 = v237;
      sub_1D5BE2EB4(v42, v237, type metadata accessor for FeedHeadline);
    }

    type metadata accessor for FeedItem(0);
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D5BE2EB4(v46, v30, type metadata accessor for FormatWebEmbed.Resolved);
      v49 = *v30;
      v48 = v30[1];
      v50 = MEMORY[0x1E69E6158];
      sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1D7279970;
      *(v51 + 32) = 0x7261696C69787561;
      *(v51 + 40) = 0xE900000000000079;
      v52 = v236;
      *(v51 + 48) = v235;
      *(v51 + 56) = v52;
      *(v51 + 64) = v49;
      *(v51 + 72) = v48;
      *&v245 = v51;
      sub_1D5B5D3F4(0, &qword_1EDF43BA0, v50, MEMORY[0x1E69E62F8]);
      sub_1D5BB0AB8();

      v53 = sub_1D7261F3C();
      v55 = v54;

      sub_1D6BC7B84(v53, v55, v30, ObjectType, v26);

      v56 = v237;
      sub_1D5BE2EB4(v26, v237, type metadata accessor for FeedWebEmbed);
      type metadata accessor for FeedItem(0);
      swift_storeEnumTagMultiPayload();
      v57 = type metadata accessor for FormatContentSlotItemResolution();
      v58 = *(v234 + *(v57 + 28));
      v59 = *(v234 + *(v57 + 24));
      v60 = type metadata accessor for FeedItemAuxiliaryItem();
      *(v56 + *(v60 + 20)) = v58;
      *(v56 + *(v60 + 24)) = v59;

      v61 = type metadata accessor for FormatWebEmbed.Resolved;
      v62 = v30;
LABEL_10:
      sub_1D5C0AD80(v62, v61);
      return (*(*(v60 - 8) + 56))(v56, 0, 1, v60);
    }

    v142 = *v46;
    ObjectType = swift_getObjectType();
    v143 = [v142 identifier];
    v144 = sub_1D726207C();
    v146 = v145;

    v147 = MEMORY[0x1E69E6158];
    sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v148 = swift_allocObject();
    *(v148 + 16) = xmmword_1D7279970;
    *(v148 + 32) = 0x7261696C69787561;
    *(v148 + 40) = 0xE900000000000079;
    v149 = v236;
    *(v148 + 48) = v235;
    *(v148 + 56) = v149;
    *(v148 + 64) = v144;
    *(v148 + 72) = v146;
    *&v245 = v148;
    sub_1D5B5D3F4(0, &qword_1EDF43BA0, v147, MEMORY[0x1E69E62F8]);
    sub_1D5BB0AB8();

    v150 = sub_1D7261F3C();
    v235 = v151;
    v236 = v150;

    v152 = *(v233 + 96);
    v154 = v152[10];
    v153 = v152[11];
    __swift_project_boxed_opaque_existential_1(v152 + 7, v154);
    v155 = [v142 identifier];
    v156 = sub_1D726207C();
    v158 = v157;

    v159 = (*(*(v153 + 8) + 56))(v156, v158, v154);

    v160 = v152[5];
    v161 = v152[6];
    __swift_project_boxed_opaque_existential_1(v152 + 2, v160);
    (*(v161 + 16))(&v244, v142, v160, v161);
    LOBYTE(v147) = v244;
    sub_1D5B68374((v152 + 12), v243);
    sub_1D5B68374((v152 + 17), v242);
    v241 = 0;
    memset(v240, 0, sizeof(v240));
    *(&v245 + 1) = 0;
    LOBYTE(v246[0]) = 1;
    *(v246 + 8) = xmmword_1D728A8D0;
    *(&v246[1] + 1) = v236;
    *&v247 = v235;
    *(&v247 + 1) = v142;
    *&v248 = v159;
    BYTE8(v248) = v147;
    sub_1D5C3AE10(v243, v249 + 8, qword_1EDF1CE10, &qword_1EDF3CFD0);
    sub_1D5C3AE10(v242, v250, qword_1EDF27B30, qword_1EDF3F7F0);
    sub_1D5C3AE10(v240, v251 + 8, qword_1EDF1C510, &qword_1EDF3CDC0);
    *&v249[0] = MEMORY[0x1E69E7CD0];
    swift_unknownObjectRetain();
    if ((FCPuzzleProviding.puzzleTypeTraits.getter() & 4) != 0)
    {
      v195 = [v142 teaserClue];
      v162 = 0x8000000000;
      if (v195)
      {
        v196 = v195;
        v197 = sub_1D726207C();
        v199 = v198;

        v200 = HIBYTE(v199) & 0xF;
        if ((v199 & 0x2000000000000000) == 0)
        {
          v200 = v197 & 0xFFFFFFFFFFFFLL;
        }

        if (v200)
        {
          v162 = 0x28000000000;
        }
      }
    }

    else
    {
      v162 = 0x8000000000;
    }

    v201 = [v142 thumbnailSmallImageAssetHandle];
    if (v201)
    {

      v162 |= 4uLL;
    }

    v202 = [v142 thumbnailLargeImageAssetHandle];
    swift_unknownObjectRelease();
    if (v202)
    {

      v162 |= 0x40000000000uLL;
    }

    v203 = v234;
    sub_1D5BFB774(v240, qword_1EDF1C510, &qword_1EDF3CDC0);
    sub_1D5BFB774(v242, qword_1EDF27B30, qword_1EDF3F7F0);
    sub_1D5BFB774(v243, qword_1EDF1CE10, &qword_1EDF3CFD0);
    *&v245 = v162;
    v204 = v251[1];
    v95 = v237;
    v237[10] = v251[0];
    v95[11] = v204;
    v95[12] = v251[2];
    v205 = v249[2];
    v95[6] = v249[1];
    v95[7] = v205;
    v206 = v250[1];
    v95[8] = v250[0];
    v95[9] = v206;
    v207 = v247;
    v95[2] = v246[1];
    v95[3] = v207;
    v208 = v249[0];
    v95[4] = v248;
    v95[5] = v208;
    v209 = v246[0];
    *v95 = v245;
    v95[1] = v209;
    type metadata accessor for FeedItem(0);
    swift_storeEnumTagMultiPayload();
    v210 = type metadata accessor for FormatContentSlotItemResolution();
    v211 = *(v203 + *(v210 + 28));
    v212 = *(v203 + *(v210 + 24));
    goto LABEL_46;
  }

  v108 = *v46;
  v109 = [*v46 identifier];
  v110 = sub_1D726207C();
  v112 = v111;

  v113 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_1D7279970;
  *(v114 + 32) = 0x7261696C69787561;
  *(v114 + 40) = 0xE900000000000079;
  v115 = v236;
  *(v114 + 48) = v235;
  *(v114 + 56) = v115;
  *(v114 + 64) = v110;
  *(v114 + 72) = v112;
  *&v245 = v114;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v113, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();

  v116 = sub_1D7261F3C();
  v118 = v117;

  result = [*(*(v233 + 32) + 16) subscribedTagIDs];
  if (result)
  {
    v119 = result;
    v120 = sub_1D726267C();

    v121 = sub_1D5B86020(v120);

    v122 = [v108 identifier];
    v123 = sub_1D726207C();
    v125 = v124;

    LOBYTE(v122) = sub_1D5BE240C(v123, v125, v121);

    v242[0] = 0;
    v107 = v237;
    *v237 = v116;
    *(v107 + 8) = v118;
    *(v107 + 16) = v108;
    *(v107 + 24) = 0;
    *(v107 + 25) = v245;
    *(v107 + 28) = *(&v245 + 3);
    *(v107 + 32) = 0;
    *(v107 + 40) = 0;
    *(v107 + 41) = *v243;
    *(v107 + 44) = *&v243[3];
    v126 = MEMORY[0x1E69E7CD0];
    *(v107 + 48) = 0;
    *(v107 + 56) = 0xE000000000000000;
    *(v107 + 64) = v122 & 1;
    *(v107 + 72) = v126;
    *(v107 + 80) = xmmword_1D7279980;
    type metadata accessor for FeedItem(0);
    *(v107 + 96) = 0u;
    *(v107 + 112) = 0u;
    *(v107 + 128) = 0u;
    *(v107 + 144) = 0;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5FC44FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *v5;
  v10 = *a1;
  v11 = a1[1];
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v9;
  v14[5] = a2;

  v12 = sub_1D5FBD224(sub_1D5FC5038, v14, v10);
  *a5 = a3;
  a5[1] = a4;
  a5[2] = v12;
  a5[3] = v11;
  a5[4] = 0x7261696C69787561;
  a5[5] = 0xE900000000000079;
}

unint64_t sub_1D5FC45A4()
{
  result = qword_1EC881DC0;
  if (!qword_1EC881DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881DC0);
  }

  return result;
}

unint64_t sub_1D5FC45F8()
{
  result = qword_1EDF34E48;
  if (!qword_1EDF34E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34E48);
  }

  return result;
}

unint64_t sub_1D5FC464C()
{
  result = qword_1EDF13048;
  if (!qword_1EDF13048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13048);
  }

  return result;
}

uint64_t sub_1D5FC46A0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D5B5D3F4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D5FC4710()
{
  if (!qword_1EDF12FE0)
  {
    type metadata accessor for FeedWebEmbed();
    sub_1D5D21194(&qword_1EDF12B90, type metadata accessor for FeedWebEmbed);
    sub_1D5D21194(&qword_1EDF12B98, type metadata accessor for FeedWebEmbed);
    v0 = type metadata accessor for FeedModel();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF12FE0);
    }
  }
}

void sub_1D5FC47F0()
{
  if (!qword_1EDF13008)
  {
    type metadata accessor for FeedCustomItem();
    sub_1D5D21194(&qword_1EDF15718, type metadata accessor for FeedCustomItem);
    sub_1D5D21194(&qword_1EDF15720, type metadata accessor for FeedCustomItem);
    v0 = type metadata accessor for FeedModel();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF13008);
    }
  }
}

void sub_1D5FC48D0()
{
  if (!qword_1EC881DC8)
  {
    type metadata accessor for FeedBannerAd();
    sub_1D5D21194(&qword_1EDF12C50, type metadata accessor for FeedBannerAd);
    sub_1D5D21194(&qword_1EDF34B10, type metadata accessor for FeedBannerAd);
    v0 = type metadata accessor for FeedModel();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC881DC8);
    }
  }
}

unint64_t sub_1D5FC49B0()
{
  result = qword_1EDF12E40;
  if (!qword_1EDF12E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12E40);
  }

  return result;
}

unint64_t sub_1D5FC4A04()
{
  result = qword_1EDF12E50;
  if (!qword_1EDF12E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12E50);
  }

  return result;
}

void sub_1D5FC4A58(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = type metadata accessor for FeedModel();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D5FC4AE8()
{
  result = qword_1EDF15508;
  if (!qword_1EDF15508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15508);
  }

  return result;
}

unint64_t sub_1D5FC4B3C()
{
  result = qword_1EDF15510[0];
  if (!qword_1EDF15510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF15510);
  }

  return result;
}

void sub_1D5FC4B90()
{
  if (!qword_1EC881DD0)
  {
    type metadata accessor for FeedPuzzleStatistic();
    sub_1D5D21194(&qword_1EC881DD8, type metadata accessor for FeedPuzzleStatistic);
    sub_1D5D21194(&qword_1EC881DE0, type metadata accessor for FeedPuzzleStatistic);
    v0 = type metadata accessor for FeedModel();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC881DD0);
    }
  }
}

void sub_1D5FC4C70()
{
  if (!qword_1EDF12FF0)
  {
    type metadata accessor for FeedRecipe();
    sub_1D5D21194(&qword_1EDF12E08, type metadata accessor for FeedRecipe);
    sub_1D5D21194(&qword_1EDF12E10, type metadata accessor for FeedRecipe);
    v0 = type metadata accessor for FeedModel();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF12FF0);
    }
  }
}

uint64_t sub_1D5FC4E38(uint64_t result, uint64_t a2, char a3, void *a4, char a5, uint64_t a6)
{
  if (a6 != 1)
  {
    sub_1D5F26348(result, a2, a3 & 1);
    sub_1D5FC4E9C(a4, a5 & 1);
  }

  return result;
}

void sub_1D5FC4E9C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1D5FC4EA8(unint64_t result, unint64_t a2)
{
  if (result)
  {

    return sub_1D5C08648(a2);
  }

  return result;
}

void sub_1D5FC4EE8()
{
  if (!qword_1EDF338D8[0])
  {
    sub_1D5B4C8E0();
    v0 = type metadata accessor for FormatObject();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF338D8);
    }
  }
}

void sub_1D5FC4F44()
{
  if (!qword_1EDF04200)
  {
    sub_1D5E2C428(255);
    sub_1D5D21194(&qword_1EDF17218, sub_1D5E2C428);
    v0 = sub_1D7263FAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04200);
    }
  }
}

uint64_t sub_1D5FC4FD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5C1F6F0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t FormatCompilerOptions.newsroom.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B592C0();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatCompilerOptions(0);
  sub_1D5FC5680(v1 + *(v7 + 24), v6, sub_1D5B592C0);
  return sub_1D5E4B86C(v6, a1);
}

uint64_t FormatCompilerOptions.compilerFlags.getter()
{
  type metadata accessor for FormatCompilerOptions(0);
}

uint64_t FormatCompilerOptions.properties.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t FormatCompilerOptions.slots.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1D5FC51D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B592C0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatCompilerOptions(0);
  sub_1D5FC5680(a1 + *(v8 + 24), v7, sub_1D5B592C0);
  return sub_1D5E4B86C(v7, a2);
}

uint64_t FormatCompilerOptions.newsroom.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FormatCompilerOptions(0) + 24);

  return sub_1D5FC52C4(a1, v3);
}

uint64_t sub_1D5FC52C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t FormatCompilerOptions.editorProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FormatCompilerOptions(0) + 28);

  return sub_1D5D5FBC4(v3, a1);
}

uint64_t sub_1D5FC53B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatCompilerOptions(0) + 32);

  *(a2 + v4) = v3;
  return result;
}

uint64_t FormatCompilerOptions.compilerFlags.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatCompilerOptions(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D5FC548C()
{
  v0 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  __swift_allocate_value_buffer(v0, qword_1EC881E08);
  v1 = __swift_project_value_buffer(v0, qword_1EC881E08);
  if (qword_1EC87D4D0 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EC881E20;
  v3 = xmmword_1EC881E30;
  v5 = qword_1EC881E40;
  v4 = qword_1EC881E48;
  v6 = *(v0 + 20);
  v7 = sub_1D725B76C();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *v1 = v2;
  *(v1 + 16) = v3;
  *(v1 + 32) = v5;
  *(v1 + 40) = v4;
}

uint64_t FormatCompilerOptions.Newsroom.init(environments:editorProperties:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a1[1];
  *a3 = *a1;
  a3[1] = v4;
  a3[2] = a1[2];
  v5 = a3 + *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);

  return sub_1D5FC55FC(a2, v5);
}

uint64_t sub_1D5FC55FC(uint64_t a1, uint64_t a2)
{
  sub_1D5B4BDE4(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5FC5680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t FormatCompilerOptions.Newsroom.environments.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5E4B8D0(v2, v3);
}

uint64_t FormatCompilerOptions.Newsroom.editorProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);

  return sub_1D5D5FBC4(v3, a1);
}

double sub_1D5FC5748()
{
  result = 0.0;
  xmmword_1EC881E30 = 0u;
  *&qword_1EC881E40 = 0u;
  xmmword_1EC881E20 = 0u;
  return result;
}

__n128 FormatCompilerOptions.Newsroom.Environments.init(qa:staging:production:)@<Q0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __n128 *a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = *a2;
  *a4 = *a1;
  a4[1] = v4;
  result = *a3;
  a4[2] = *a3;
  return result;
}

uint64_t static FormatCompilerOptions.Newsroom.Environments.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC87D4D0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EC881E48;
  *a1 = xmmword_1EC881E20;
  *(a1 + 8) = *(&xmmword_1EC881E20 + 8);
  *(a1 + 24) = *(&xmmword_1EC881E30 + 8);
  *(a1 + 40) = v1;
}

uint64_t FormatCompilerOptions.Newsroom.Environments.qa.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatCompilerOptions.Newsroom.Environments.staging.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t FormatCompilerOptions.Newsroom.Environments.production.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t FormatCompilerOptions.Newsroom.Environment.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static FormatCompilerOptions.Newsroom.Environment.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t FormatCompilerOptions.init(properties:slots:newsroom:editorProperties:compilerFlags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for FormatCompilerOptions(0);
  sub_1D5E4B86C(a3, a6 + v10[6]);
  result = sub_1D5FC55FC(a4, a6 + v10[7]);
  *(a6 + v10[8]) = a5;
  return result;
}

uint64_t _s8NewsFeed21FormatCompilerOptionsV8NewsroomV5emptyAEvgZ_0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC87D4C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  v3 = __swift_project_value_buffer(v2, qword_1EC881E08);
  return sub_1D5FC5680(v3, a1, type metadata accessor for FormatCompilerOptions.Newsroom);
}

uint64_t sub_1D5FC5A1C@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  sub_1D5FC702C();
  v5 = *(v4 + 48);
  sub_1D5FC6FC4();
  v7 = *(v6 + 48);
  v9 = *a1;
  v8 = *(a1 + 1);
  v10 = sub_1D725B76C();
  (*(*(v10 - 8) + 16))(&a2[v7], &a1[v5], v10);
  *a2 = v9;
  *(a2 + 1) = v8;
}

BOOL _s8NewsFeed21FormatCompilerOptionsV8NewsroomV12EnvironmentsV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a1[5];
  v8 = a2[1];
  v7 = a2[2];
  v10 = a2[3];
  v9 = a2[4];
  v11 = a2[5];
  if (v2)
  {
    if (!v8)
    {
      goto LABEL_22;
    }

    if ((*a1 != *a2 || v2 != v8) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }

    if (v5)
    {
LABEL_7:
      if (v10)
      {
        if ((v3 != v7 || v5 != v10) && (sub_1D72646CC() & 1) == 0)
        {
          return 0;
        }

        if (v6)
        {
          goto LABEL_12;
        }

        goto LABEL_25;
      }

LABEL_22:

      return 0;
    }
  }

  else
  {
    if (v8)
    {
      goto LABEL_22;
    }

    if (v5)
    {
      goto LABEL_7;
    }
  }

  if (v10)
  {
    goto LABEL_22;
  }

  if (v6)
  {
LABEL_12:
    if (v11)
    {
      return v4 == v9 && v6 == v11 || (sub_1D72646CC() & 1) != 0;
    }

    goto LABEL_22;
  }

LABEL_25:
  if (v11)
  {
    goto LABEL_22;
  }

  return 1;
}

uint64_t _s8NewsFeed21FormatCompilerOptionsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4BDE4(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v26 - v11;
  sub_1D5D5FB44();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D633C7DC(*a1, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((sub_1D6356728(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_10;
  }

  v18 = type metadata accessor for FormatCompilerOptions(0);
  if (!_s8NewsFeed21FormatCompilerOptionsV8NewsroomV2eeoiySbAE_AEtFZ_0((a1 + *(v18 + 24)), (a2 + *(v18 + 24))))
  {
    goto LABEL_10;
  }

  v27 = v18;
  v19 = *(v18 + 28);
  v20 = *(v14 + 48);
  sub_1D5D5FBC4(a1 + v19, v17);
  sub_1D5D5FBC4(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_1D5FC6B34(v17);
LABEL_13:
      v22 = sub_1D5E1ED0C(*(a1 + *(v27 + 32)), *(a2 + *(v27 + 32)));
      return v22 & 1;
    }

    goto LABEL_9;
  }

  sub_1D5D5FBC4(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_1D5D5FC44(v17);
    goto LABEL_10;
  }

  (*(v5 + 32))(v8, &v17[v20], v4);
  sub_1D5B56FBC(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
  v24 = sub_1D7261FBC();
  v25 = *(v5 + 8);
  v25(v8, v4);
  v25(v12, v4);
  sub_1D5FC6B34(v17);
  if (v24)
  {
    goto LABEL_13;
  }

LABEL_10:
  v22 = 0;
  return v22 & 1;
}

BOOL _s8NewsFeed21FormatCompilerOptionsV8NewsroomV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1D725B76C();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v40 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4BDE4(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v42 = v39 - v9;
  sub_1D5D5FB44();
  MEMORY[0x1EEE9AC00](v10, v11);
  v43 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  v17 = a1[2];
  v16 = a1[3];
  v18 = a1[4];
  v19 = a1[5];
  v20 = *a2;
  v21 = a2[1];
  v23 = a2[2];
  v22 = a2[3];
  v48 = a2[4];
  v49 = a2[5];
  if (v15 == 1)
  {
    v46 = v14;
    v47 = v20;
    v41 = v12;
    sub_1D5E4B8D0(v14, 1);
    if (v21 == 1)
    {
      sub_1D5E4B8D0(v47, 1);
      sub_1D5E4B984(v46, 1);
      goto LABEL_9;
    }

    sub_1D5E4B8D0(v47, v21);
LABEL_7:
    sub_1D5E4B984(v46, v15);
    sub_1D5E4B984(v47, v21);
    return 0;
  }

  v51[0] = v14;
  v51[1] = v15;
  v51[2] = v17;
  v51[3] = v16;
  v51[4] = v18;
  v51[5] = v19;
  if (v21 == 1)
  {
    v46 = v14;
    v24 = v20;
    sub_1D5E4B8D0(v14, v15);
    v47 = v24;
    sub_1D5E4B8D0(v24, 1);
    sub_1D5E4B8D0(v46, v15);

    goto LABEL_7;
  }

  v41 = v12;
  v50[0] = v20;
  v50[1] = v21;
  v39[1] = v23;
  v50[2] = v23;
  v50[3] = v22;
  v50[4] = v48;
  v50[5] = v49;
  v39[2] = v17;
  v39[3] = v16;
  v39[4] = v18;
  v26 = v14;
  v27 = v20;
  sub_1D5E4B8D0(v14, v15);
  sub_1D5E4B8D0(v27, v21);
  sub_1D5E4B8D0(v26, v15);
  LODWORD(v49) = _s8NewsFeed21FormatCompilerOptionsV8NewsroomV12EnvironmentsV2eeoiySbAG_AGtFZ_0(v51, v50);

  sub_1D5E4B984(v26, v15);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v28 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
  v29 = *(v41 + 48);
  v30 = a1 + v28;
  v31 = v43;
  sub_1D5D5FBC4(v30, v43);
  sub_1D5D5FBC4(a2 + v28, v31 + v29);
  v33 = v44;
  v32 = v45;
  v34 = *(v44 + 48);
  if (v34(v31, 1, v45) != 1)
  {
    v35 = v42;
    sub_1D5D5FBC4(v31, v42);
    if (v34(v31 + v29, 1, v32) == 1)
    {
      (*(v33 + 8))(v35, v32);
      goto LABEL_14;
    }

    v36 = v40;
    (*(v33 + 32))(v40, v31 + v29, v32);
    sub_1D5B56FBC(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
    v37 = sub_1D7261FBC();
    v38 = *(v33 + 8);
    v38(v36, v32);
    v38(v35, v32);
    sub_1D5FC6B34(v31);
    return (v37 & 1) != 0;
  }

  if (v34(v31 + v29, 1, v32) != 1)
  {
LABEL_14:
    sub_1D5D5FC44(v31);
    return 0;
  }

  sub_1D5FC6B34(v31);
  return 1;
}

unint64_t sub_1D5FC6554(uint64_t a1)
{
  result = sub_1D5FC657C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FC657C()
{
  result = qword_1EC881E50;
  if (!qword_1EC881E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881E50);
  }

  return result;
}

unint64_t sub_1D5FC6610()
{
  result = qword_1EDF0E3B0;
  if (!qword_1EDF0E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E3B0);
  }

  return result;
}

unint64_t sub_1D5FC6664()
{
  result = qword_1EC881E58;
  if (!qword_1EC881E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881E58);
  }

  return result;
}

unint64_t sub_1D5FC66B8(uint64_t a1)
{
  result = sub_1D5FC66E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FC66E0()
{
  result = qword_1EC881E60;
  if (!qword_1EC881E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881E60);
  }

  return result;
}

uint64_t sub_1D5FC6774(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5FC67C8()
{
  result = qword_1EDF0E3B8;
  if (!qword_1EDF0E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E3B8);
  }

  return result;
}

unint64_t sub_1D5FC681C()
{
  result = qword_1EC881E68;
  if (!qword_1EC881E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881E68);
  }

  return result;
}

uint64_t sub_1D5FC6870(uint64_t a1)
{
  result = sub_1D5B56FBC(&qword_1EC881E70, type metadata accessor for FormatCompilerOptions.Newsroom);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5FC68C8(void *a1)
{
  a1[1] = sub_1D5B56FBC(&qword_1EDF29BE0, type metadata accessor for FormatCompilerOptions.Newsroom);
  a1[2] = sub_1D5B56FBC(&qword_1EDF0E3A8, type metadata accessor for FormatCompilerOptions.Newsroom);
  result = sub_1D5B56FBC(&qword_1EC881E78, type metadata accessor for FormatCompilerOptions.Newsroom);
  a1[3] = result;
  return result;
}

uint64_t sub_1D5FC6974(uint64_t a1)
{
  result = sub_1D5B56FBC(&qword_1EC881E80, type metadata accessor for FormatCompilerOptions);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5FC69CC(void *a1)
{
  a1[1] = sub_1D5B56FBC(&qword_1EDF29BD8, type metadata accessor for FormatCompilerOptions);
  a1[2] = sub_1D5B56FBC(&qword_1EDF0E3A0, type metadata accessor for FormatCompilerOptions);
  result = sub_1D5B56FBC(&qword_1EC881E88, type metadata accessor for FormatCompilerOptions);
  a1[3] = result;
  return result;
}

unint64_t sub_1D5FC6A78(uint64_t a1)
{
  result = sub_1D5B5931C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5FC6AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5FC6B34(uint64_t a1)
{
  sub_1D5B4BDE4(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5FC6BAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v63 = a5;
  v9 = sub_1D725B76C();
  v52 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v49 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v55 = v48 - v14;
  sub_1D5B4BDE4(0, &qword_1EDF054B8, sub_1D5FC6FC4);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = (v48 - v17);
  v19 = -1 << *(a1 + 32);
  v20 = ~v19;
  v21 = *(a1 + 64);
  v22 = -v19;
  v56 = a1;
  v57 = a1 + 64;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v58 = v20;
  v59 = 0;
  v60 = v23 & v21;
  v61 = a2;
  v62 = a3;

  v48[1] = a3;

  sub_1D6F5B500(v18);
  sub_1D5FC6FC4();
  v25 = v24;
  v26 = *(v24 - 8);
  v27 = *(v26 + 48);
  v50 = v26 + 48;
  v51 = v27;
  if (v27(v18, 1, v24) == 1)
  {
LABEL_5:
    sub_1D5B87E38();
  }

  else
  {
    v53 = *(v52 + 32);
    v54 = v52 + 32;
    v48[4] = v52 + 8;
    v48[5] = v52 + 16;
    v48[3] = v52 + 40;
    while (1)
    {
      v33 = *v18;
      v32 = v18[1];
      v53(v55, v18 + *(v25 + 48), v9);
      v34 = *v63;
      v36 = sub_1D5B69D90(v33, v32);
      v37 = v34[2];
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        break;
      }

      v40 = v35;
      if (v34[3] >= v39)
      {
        if ((a4 & 1) == 0)
        {
          sub_1D6D7F424();
        }
      }

      else
      {
        sub_1D6D68568(v39, a4 & 1);
        v41 = sub_1D5B69D90(v33, v32);
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_20;
        }

        v36 = v41;
      }

      v43 = *v63;
      if (v40)
      {
        v29 = v52;
        v30 = *(v52 + 72) * v36;
        v31 = v49;
        (*(v52 + 16))(v49, v43[7] + v30, v9);
        (*(v29 + 8))(v55, v9);

        (*(v29 + 40))(v43[7] + v30, v31, v9);
      }

      else
      {
        v43[(v36 >> 6) + 8] |= 1 << v36;
        v44 = (v43[6] + 16 * v36);
        *v44 = v33;
        v44[1] = v32;
        v53((v43[7] + *(v52 + 72) * v36), v55, v9);
        v45 = v43[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_19;
        }

        v43[2] = v47;
      }

      sub_1D6F5B500(v18);
      a4 = 1;
      if (v51(v18, 1, v25) == 1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_1D726493C();
    __break(1u);
  }

  return result;
}

void sub_1D5FC6FC4()
{
  if (!qword_1EDF054C0)
  {
    sub_1D725B76C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF054C0);
    }
  }
}

void sub_1D5FC702C()
{
  if (!qword_1EDF05558)
  {
    sub_1D725B76C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF05558);
    }
  }
}

uint64_t sub_1D5FC70A4(uint64_t a1)
{
  v2 = sub_1D5BBE0F8(&qword_1EDF3BFA0);
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D5FC7114(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5BBE0F8(&qword_1EDF3BFA0);
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t static FeedScalingManager.shared.getter()
{
  if (qword_1EDF386E8 != -1)
  {
    swift_once();
  }
}

uint64_t FeedScalingManager.currentFeedScaleSize.getter()
{

  sub_1D725972C();
}

uint64_t sub_1D5FC7230(uint64_t a1)
{
  v2 = sub_1D725A19C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v14 - v10;
  v12 = *(v3 + 16);
  v12(&v14 - v10, a1, v2, v9);
  (v12)(v6, v11, v2);

  sub_1D725973C();

  return (*(v3 + 8))(v11, v2);
}

uint64_t FeedScalingManager.$currentFeedScaleSize.getter()
{

  v0 = sub_1D725974C();

  return v0;
}

Swift::Void __swiftcall FeedScalingManager.resetSize()()
{
  v0 = sub_1D725A19C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v10 - v8;
  (*(v1 + 104))(&v10 - v8, *MEMORY[0x1E69D7278], v0, v7);
  (*(v1 + 16))(v4, v9, v0);

  sub_1D725973C();

  (*(v1 + 8))(v9, v0);
}

BOOL sub_1D5FC7510(unsigned int *a1)
{
  v2 = sub_1D725A19C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v14 - v9;

  sub_1D725972C();

  (*(v3 + 104))(v6, *a1, v2);
  sub_1D5BBE0F8(&qword_1EDF3BFA8);
  v11 = sub_1D7261FBC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  v12(v10, v2);
  return (v11 & 1) == 0;
}

Swift::Void __swiftcall FeedScalingManager.increaseSize()()
{
  v0 = sub_1D725A19C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v16 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v16 - v11;

  sub_1D725972C();

  v13 = (*(v1 + 88))(v12, v0);
  v14 = *MEMORY[0x1E69D7268];
  if (v13 == *MEMORY[0x1E69D7250] || (v14 = *MEMORY[0x1E69D7270], v13 == *MEMORY[0x1E69D7268]) || (v15 = v13 == v14, v14 = *MEMORY[0x1E69D7278], v15) || (v14 = *MEMORY[0x1E69D7260], v13 == *MEMORY[0x1E69D7278]) || (v15 = v13 == v14, v14 = *MEMORY[0x1E69D7248], v15) || (v14 = *MEMORY[0x1E69D7258], v13 == *MEMORY[0x1E69D7248]))
  {
    (*(v1 + 104))(v8, v14, v0);
    (*(v1 + 16))(v4, v8, v0);

    sub_1D725973C();

    (*(v1 + 8))(v8, v0);
  }

  else if (v13 != v14)
  {
    sub_1D72646BC();
    __break(1u);
  }
}

Swift::Void __swiftcall FeedScalingManager.decreaseSize()()
{
  v0 = sub_1D725A19C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v15 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v15 - v11;

  sub_1D725972C();

  v13 = (*(v1 + 88))(v12, v0);
  v14 = *MEMORY[0x1E69D7250];
  if (v13 != v14)
  {
    if (v13 == *MEMORY[0x1E69D7268] || (v14 = *MEMORY[0x1E69D7268], v13 == *MEMORY[0x1E69D7270]) || (v14 = *MEMORY[0x1E69D7270], v13 == *MEMORY[0x1E69D7278]) || (v14 = *MEMORY[0x1E69D7278], v13 == *MEMORY[0x1E69D7260]) || (v14 = *MEMORY[0x1E69D7260], v13 == *MEMORY[0x1E69D7248]) || (v14 = *MEMORY[0x1E69D7248], v13 == *MEMORY[0x1E69D7258]))
    {
      (*(v1 + 104))(v8, v14, v0);
      (*(v1 + 16))(v4, v8, v0);

      sub_1D725973C();

      (*(v1 + 8))(v8, v0);
    }

    else
    {
      sub_1D72646BC();
      __break(1u);
    }
  }
}

uint64_t FeedScalingManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1D5FC7C08()
{
  xmmword_1EDF1C298 = 0x4030000000000000uLL;
  word_1EDF1C2A8 = 3072;
  byte_1EDF1C2AA = 0;
  qword_1EDF1C2B0 = MEMORY[0x1E69E7CD0];
  result = 0.0;
  xmmword_1EDF1C2B8 = 0u;
  unk_1EDF1C2C8 = 0u;
  word_1EDF1C2D8 = 1280;
  return result;
}

uint64_t sub_1D5FC7C44()
{
  v0 = swift_allocObject();
  if (qword_1EDF1C290 != -1)
  {
    v6 = v0;
    swift_once();
    v0 = v6;
  }

  v1 = unk_1EDF1C2C8;
  v8[2] = xmmword_1EDF1C2B8;
  v8[3] = unk_1EDF1C2C8;
  v2 = word_1EDF1C2D8;
  v9 = word_1EDF1C2D8;
  v4 = xmmword_1EDF1C298;
  v3 = *&word_1EDF1C2A8;
  v8[0] = xmmword_1EDF1C298;
  v8[1] = *&word_1EDF1C2A8;
  *(v0 + 48) = xmmword_1EDF1C2B8;
  *(v0 + 64) = v1;
  *(v0 + 80) = v2;
  *(v0 + 16) = v4;
  *(v0 + 32) = v3;
  qword_1EDF1C280 = v0;
  return sub_1D5D3F188(v8, v7);
}

uint64_t static FormatCodingBlackSixteenSystemFontStrategy.defaultValue.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDF1C278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EDF1C280;
}

uint64_t static FormatCodingBlackSixteenSystemFontStrategy.defaultValue.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EDF1C278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDF1C280 = v1;
}

uint64_t (*static FormatCodingBlackSixteenSystemFontStrategy.defaultValue.modify())()
{
  if (qword_1EDF1C278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D5FC7E88@<X0>(void *a1@<X8>)
{
  if (qword_1EDF1C278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EDF1C280;
}

uint64_t sub_1D5FC7F0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EDF1C278;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDF1C280 = v1;
}

uint64_t _s8NewsFeed42FormatCodingBlackSixteenSystemFontStrategyV12shouldEncode12wrappedValueSbAA0cH0O_tFZ_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 61)
  {
    return 1;
  }

  v2 = *(v1 + 48);
  v15[1] = *(v1 + 32);
  v15[2] = v2;
  v15[3] = *(v1 + 64);
  v16 = *(v1 + 80);
  v15[0] = *(v1 + 16);
  v3 = *(v1 + 64);
  v13[2] = *(v1 + 48);
  v13[3] = v3;
  v14 = *(v1 + 80);
  v4 = *(v1 + 32);
  v13[0] = *(v1 + 16);
  v13[1] = v4;
  sub_1D5D3F188(v15, v19);
  if (qword_1EDF1C290 != -1)
  {
    swift_once();
  }

  v17[2] = xmmword_1EDF1C2B8;
  v17[3] = unk_1EDF1C2C8;
  v18 = word_1EDF1C2D8;
  v17[0] = xmmword_1EDF1C298;
  v17[1] = *&word_1EDF1C2A8;
  v10 = xmmword_1EDF1C2B8;
  v11 = unk_1EDF1C2C8;
  v12 = word_1EDF1C2D8;
  v8 = xmmword_1EDF1C298;
  v9 = *&word_1EDF1C2A8;
  sub_1D5D3F188(v17, v19);
  v6 = _s8NewsFeed16FormatSystemFontV2eeoiySbAC_ACtFZ_0(v13, &v8, v5);
  v19[2] = v10;
  v19[3] = v11;
  v20 = v12;
  v19[0] = v8;
  v19[1] = v9;
  sub_1D5D41588(v19);
  sub_1D5D41588(v15);
  return (v6 ^ 1) & 1;
}

unint64_t sub_1D5FC80CC(uint64_t a1)
{
  result = sub_1D5FC80F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FC80F4()
{
  result = qword_1EDF1C470;
  if (!qword_1EDF1C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C470);
  }

  return result;
}

unint64_t sub_1D5FC8148()
{
  result = qword_1EDF10C48;
  if (!qword_1EDF10C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10C48);
  }

  return result;
}

unint64_t sub_1D5FC819C(uint64_t a1)
{
  result = sub_1D5FC81C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FC81C4()
{
  result = qword_1EC881E98;
  if (!qword_1EC881E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881E98);
  }

  return result;
}

unint64_t sub_1D5FC8218(uint64_t a1)
{
  result = sub_1D5FC8240();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FC8240()
{
  result = qword_1EC881EA0;
  if (!qword_1EC881EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881EA0);
  }

  return result;
}

uint64_t type metadata accessor for DebugFormatWorkspaceConfigViewController()
{
  result = qword_1EC881EE8;
  if (!qword_1EC881EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5FC8328()
{
  result = type metadata accessor for DebugFormatWorkspace();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1D5FC83EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  v6 = *&v4[*a1];
  if (v6)
  {
    v7 = *&v4[*a1];
  }

  else
  {
    ObjectType = swift_getObjectType();
    v24[3] = ObjectType;
    v24[0] = v4;
    v10 = v4;
    v11 = sub_1D726203C();
    if (ObjectType)
    {
      v12 = __swift_project_boxed_opaque_existential_1(v24, ObjectType);
      v13 = *(ObjectType - 8);
      v14 = MEMORY[0x1EEE9AC00](v12, v12);
      v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v16, v14);
      v17 = sub_1D72646AC();
      (*(v13 + 8))(v16, ObjectType);
      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    else
    {
      v17 = 0;
    }

    type metadata accessor for DebugFormatBarButtonItem();
    v18 = *a4;
    v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v20 = [v19 initWithTitle:v11 style:0 target:v17 action:{v18, v24[0]}];

    swift_unknownObjectRelease();
    v21 = *&v4[v5];
    *&v4[v5] = v20;
    v7 = v20;

    v6 = 0;
  }

  v22 = v6;
  return v7;
}

void sub_1D5FC85B4(uint64_t a1)
{
  v2 = qword_1EC881EB0;
  type metadata accessor for DebugFormatStyler();
  v3 = swift_allocObject();
  *(a1 + v2) = v3;
  *(v3 + 16) = 0;
  *(a1 + qword_1EC881ED8) = 0;
  *(a1 + qword_1EC881EE0) = 0;
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D5FC8668()
{
  v1 = v0;
  sub_1D5B73DC0();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v66 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7257A4C();
  v72 = *(v5 - 8);
  v73 = v5;
  *&v7 = MEMORY[0x1EEE9AC00](v5, v6).n128_u64[0];
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 becomeFirstResponder];
  v10 = &v0[qword_1EC881EB8];
  v11 = &v10[*(type metadata accessor for DebugFormatWorkspace() + 20)];
  v12 = *(v11 + 7);
  v13 = *(v11 + 9);
  v105 = *(v11 + 8);
  v106 = v13;
  v14 = *(v11 + 9);
  v107[0] = *(v11 + 10);
  v15 = *(v11 + 5);
  v16 = *(v11 + 6);
  v17 = *(v11 + 3);
  v104[4] = *(v11 + 4);
  v104[5] = v15;
  v18 = *(v11 + 7);
  v104[6] = v16;
  v104[7] = v18;
  v19 = *(v11 + 3);
  v104[2] = *(v11 + 2);
  v104[3] = v19;
  v20 = *(v11 + 1);
  v21 = *(v11 + 2);
  v104[0] = *v11;
  v104[1] = v20;
  v92 = v104[0];
  v89 = v21;
  v90 = v17;
  *(v107 + 15) = *(v11 + 175);
  v71 = *(&v20 + 1);
  v91 = *(v11 + 8);
  v85 = v12;
  v86 = v105;
  v22 = *(v11 + 10);
  v23 = *&v1[qword_1EC881EC8];
  v87 = v14;
  v88 = v22;
  v24 = (v23 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_feed);
  v25 = v24[1];
  v67 = *v24;
  *&v68 = v25;
  *(&v68 + 1) = v24[2];
  sub_1D5ECF1C0(v104, v131);

  v26 = (*&v1[qword_1EC881ED0] + OBJC_IVAR____TtC8NewsFeed37DebugFormatWorkspaceTagViewController_tag);
  v27 = *v26;
  v28 = v26[1];

  v69 = v1;

  sub_1D725972C();

  sub_1D72579DC();
  sub_1D5BF4D9C();
  v29 = sub_1D7263A4C();
  v31 = v30;
  v32 = v9;
  v33 = v67;
  (*(v72 + 8))(v32, v73);

  v34 = v29;
  sub_1D6BCADE0(v131);
  v35 = *(v11 + 9);
  v36 = *(v11 + 7);
  v115 = *(v11 + 8);
  v116 = v35;
  v37 = *(v11 + 9);
  v117[0] = *(v11 + 10);
  v38 = *(v11 + 5);
  v39 = *(v11 + 3);
  v111 = *(v11 + 4);
  v112 = v38;
  v40 = *(v11 + 5);
  v41 = *(v11 + 7);
  v113 = *(v11 + 6);
  v114 = v41;
  v42 = *(v11 + 1);
  v108[0] = *v11;
  v108[1] = v42;
  v43 = *(v11 + 3);
  v45 = *v11;
  v44 = *(v11 + 1);
  v109 = *(v11 + 2);
  v110 = v43;
  v101 = v115;
  v102 = v37;
  v103[0] = *(v11 + 10);
  v97 = v111;
  v98 = v40;
  v99 = v113;
  v100 = v36;
  *(v117 + 15) = *(v11 + 175);
  v46 = *(v11 + 175);
  v47 = v68;
  *(v103 + 15) = v46;
  v93 = v45;
  v94 = v44;
  v95 = v109;
  v96 = v39;
  v118 = v92;
  *&v119 = v29;
  v73 = v31;
  *(&v119 + 1) = v31;
  v120 = v89;
  v121 = v90;
  *&v122 = v91;
  *(&v122 + 1) = v33;
  v123 = v68;
  v48 = *(&v68 + 1);
  *&v124 = v27;
  *(&v124 + 1) = v28;
  v128[0] = v88;
  v127 = v87;
  v126 = v86;
  v125 = v85;
  LODWORD(v72) = LOBYTE(v131[0]);
  LOWORD(v128[1]) = v131[0];
  v70 = BYTE2(v131[0]);
  LODWORD(v71) = BYTE1(v131[0]);
  BYTE2(v128[1]) = BYTE2(v131[0]);
  v82 = v86;
  v83 = v87;
  v84[0] = v88;
  *(v84 + 15) = *(v128 + 15);
  v78 = v122;
  v79 = v68;
  v80 = v124;
  v81 = v85;
  v74 = v92;
  v75 = v119;
  v76 = v89;
  v77 = v90;
  sub_1D5ECF1C0(v108, v131);
  sub_1D5ECF1C0(&v118, v131);
  LOBYTE(v10) = _s8NewsFeed15FormatWorkspaceV2eeoiySbAC_ACtFZ_0(&v93, &v74);
  v129[8] = v82;
  v129[9] = v83;
  v130[0] = v84[0];
  *(v130 + 15) = *(v84 + 15);
  v129[4] = v78;
  v129[5] = v79;
  v129[6] = v80;
  v129[7] = v81;
  v129[0] = v74;
  v129[1] = v75;
  v129[2] = v76;
  v129[3] = v77;
  sub_1D5ECF21C(v129);
  v131[8] = v101;
  v131[9] = v102;
  v132[0] = v103[0];
  *(v132 + 15) = *(v103 + 15);
  v131[4] = v97;
  v131[5] = v98;
  v131[6] = v99;
  v131[7] = v100;
  v131[0] = v93;
  v131[1] = v94;
  v131[2] = v95;
  v131[3] = v96;
  sub_1D5ECF21C(v131);
  if (v10)
  {
    [v69 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v49 = sub_1D726294C();
    v50 = *(*(v49 - 8) + 56);
    v65 = v29;
    v51 = v28;
    v52 = v27;
    v53 = v66;
    v50(v66, 1, 1, v49);
    sub_1D726290C();
    v54 = v69;
    v55 = sub_1D72628FC();
    v93 = v92;
    *&v94 = v65;
    *(&v94 + 1) = v73;
    v95 = v89;
    v96 = v90;
    *&v97 = v91;
    *(&v97 + 1) = v33;
    *&v98 = v47;
    *(&v98 + 1) = v48;
    *&v99 = v52;
    *(&v99 + 1) = v51;
    v102 = v87;
    v103[0] = v88;
    v100 = v85;
    v101 = v86;
    LOBYTE(v103[1]) = v72;
    BYTE1(v103[1]) = v71;
    BYTE2(v103[1]) = v70;
    v56 = swift_allocObject();
    v57 = v102;
    *(v56 + 168) = v101;
    *(v56 + 184) = v57;
    *(v56 + 200) = v103[0];
    v58 = v98;
    *(v56 + 104) = v97;
    *(v56 + 120) = v58;
    v59 = v100;
    *(v56 + 136) = v99;
    *(v56 + 152) = v59;
    v60 = v94;
    *(v56 + 40) = v93;
    *(v56 + 56) = v60;
    v61 = v96;
    *(v56 + 72) = v95;
    v62 = MEMORY[0x1E69E85E0];
    *(v56 + 16) = v55;
    *(v56 + 24) = v62;
    *(v56 + 32) = v54;
    *(v56 + 215) = *(v103 + 15);
    *(v56 + 88) = v61;
    sub_1D5ECF1C0(&v93, &v74);
    v63 = v53;
    v27 = v52;
    v28 = v51;
    v34 = v65;
    sub_1D6BD1334(0, 0, v63, &unk_1D728AF90, v56);
  }

  v74 = v92;
  *&v75 = v34;
  *(&v75 + 1) = v73;
  v76 = v89;
  v77 = v90;
  *&v78 = v91;
  *(&v78 + 1) = v33;
  *&v79 = v47;
  *(&v79 + 1) = v48;
  *&v80 = v27;
  *(&v80 + 1) = v28;
  v83 = v87;
  v84[0] = v88;
  v81 = v85;
  v82 = v86;
  LOBYTE(v84[1]) = v72;
  BYTE1(v84[1]) = v71;
  BYTE2(v84[1]) = v70;
  return sub_1D5ECF21C(&v74);
}

uint64_t sub_1D5FC8D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[95] = a5;
  v5[94] = a4;
  sub_1D726290C();
  v5[96] = sub_1D72628FC();
  v7 = sub_1D726285C();
  v5[97] = v7;
  v5[98] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D5FC8DE4, v7, v6);
}

uint64_t sub_1D5FC8DE4()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  v3 = *(v2 + qword_1EC881EA8);
  *(v0 + 792) = *(v3 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
  v4 = qword_1EC881EB8;
  v5 = *(v1 + 48);
  v7 = *v1;
  v6 = *(v1 + 16);
  *(v0 + 48) = *(v1 + 32);
  *(v0 + 64) = v5;
  *(v0 + 16) = v7;
  *(v0 + 32) = v6;
  v8 = *(v1 + 112);
  v10 = *(v1 + 64);
  v9 = *(v1 + 80);
  *(v0 + 112) = *(v1 + 96);
  *(v0 + 128) = v8;
  *(v0 + 80) = v10;
  *(v0 + 96) = v9;
  v12 = *(v1 + 144);
  v11 = *(v1 + 160);
  v13 = *(v1 + 128);
  *(v0 + 191) = *(v1 + 175);
  *(v0 + 160) = v12;
  *(v0 + 176) = v11;
  *(v0 + 144) = v13;

  sub_1D5ECF1C0(v1, v0 + 200);
  v14 = swift_task_alloc();
  *(v0 + 800) = v14;
  *v14 = v0;
  v14[1] = sub_1D5FC8F10;

  return sub_1D60B4B58(v2 + v4, v0 + 16, v3);
}

uint64_t sub_1D5FC8F10()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 16);
    v4 = *(v2 + 32);
    v5 = *(v2 + 64);
    *(v2 + 416) = *(v2 + 48);
    *(v2 + 432) = v5;
    *(v2 + 384) = v3;
    *(v2 + 400) = v4;
    v6 = *(v2 + 80);
    v7 = *(v2 + 96);
    v8 = *(v2 + 128);
    *(v2 + 480) = *(v2 + 112);
    *(v2 + 496) = v8;
    *(v2 + 448) = v6;
    *(v2 + 464) = v7;
    v9 = *(v2 + 144);
    v10 = *(v2 + 160);
    v11 = *(v2 + 176);
    *(v2 + 559) = *(v2 + 191);
    *(v2 + 528) = v10;
    *(v2 + 544) = v11;
    *(v2 + 512) = v9;
    sub_1D5ECF21C(v2 + 384);
  }

  else
  {
    v14 = *(v2 + 16);
    v15 = *(v2 + 32);
    v16 = *(v2 + 64);
    *(v2 + 600) = *(v2 + 48);
    *(v2 + 616) = v16;
    *(v2 + 568) = v14;
    *(v2 + 584) = v15;
    v17 = *(v2 + 80);
    v18 = *(v2 + 96);
    v19 = *(v2 + 128);
    *(v2 + 664) = *(v2 + 112);
    *(v2 + 680) = v19;
    *(v2 + 632) = v17;
    *(v2 + 648) = v18;
    v20 = *(v2 + 144);
    v21 = *(v2 + 160);
    v22 = *(v2 + 176);
    *(v2 + 743) = *(v2 + 191);
    *(v2 + 712) = v21;
    *(v2 + 728) = v22;
    *(v2 + 696) = v20;
    sub_1D5ECF21C(v2 + 568);
  }

  v12 = *(v2 + 784);
  v13 = *(v2 + 776);

  return MEMORY[0x1EEE6DFA0](sub_1D5FC90E0, v13, v12);
}

uint64_t sub_1D5FC90E0()
{

  [*(v0 + 752) dismissViewControllerAnimated:1 completion:0];
  v1 = *(v0 + 8);

  return v1();
}

void sub_1D5FC9158(void *a1)
{
  v1 = a1;
  sub_1D5FC8668();
}

void sub_1D5FC91D8()
{

  sub_1D5EF0664(v0 + qword_1EC881EB8);

  v1 = *(v0 + qword_1EC881EE0);
}

void sub_1D5FC9278(uint64_t a1)
{

  sub_1D5EF0664(a1 + qword_1EC881EB8);

  v2 = *(a1 + qword_1EC881EE0);
}

void sub_1D5FC932C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for DebugFormatWorkspace();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1EC881EB0;
  type metadata accessor for DebugFormatStyler();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *&v3[v11] = v12;
  *&v3[qword_1EC881ED8] = 0;
  *&v3[qword_1EC881EE0] = 0;
  *&v3[qword_1EC881EA8] = a1;
  sub_1D5FC998C(a2, &v3[qword_1EC881EB8]);
  sub_1D5FC998C(a2, v10);
  v13 = objc_allocWithZone(type metadata accessor for DebugFormatWorkspaceSettingsViewController());

  v15 = sub_1D6BCBDA0(v14, v10);
  *&v3[qword_1EC881EC0] = v15;
  sub_1D5FC998C(a2, v10);
  v16 = objc_allocWithZone(type metadata accessor for DebugFormatWorkspaceFeedViewController());

  v17 = v15;
  v18 = sub_1D68063DC(a1, v10);

  *&v3[qword_1EC881EC8] = v18;
  sub_1D5FC998C(a2, v10);
  objc_allocWithZone(type metadata accessor for DebugFormatWorkspaceTagViewController());

  v19 = v18;
  v20 = sub_1D69D996C(a1, v10);

  *&v3[qword_1EC881ED0] = v20;
  v52.receiver = v3;
  v52.super_class = ObjectType;
  v21 = v20;
  v22 = objc_msgSendSuper2(&v52, sel_initWithNibName_bundle_, 0, 0);
  v23 = sub_1D5FC83EC(&qword_1EC881ED8, 1702256979, 0xE400000000000000, &selRef_doSave);
  v24 = [objc_opt_self() systemBlueColor];
  [v23 setTintColor_];

  sub_1D5E42B34();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D728AF30;
  *(inited + 32) = v17;
  *(inited + 40) = v19;
  *(inited + 48) = v21;
  v26 = inited & 0xC000000000000001;
  v27 = v17;
  v50 = v19;
  v51 = v21;
  v49 = v27;
  if ((inited & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x1DA6FB460](0, inited);
  }

  else
  {
    v28 = v27;
  }

  v29 = v28;
  v30 = [v28 navigationItem];
  v31 = sub_1D5FC83EC(&qword_1EC881EE0, 0x6C65636E6143, 0xE600000000000000, &selRef_doCancel);
  [v30 setLeftBarButtonItem_];

  v32 = [v29 navigationItem];
  v33 = qword_1EC881ED8;
  [v32 setRightBarButtonItem_];

  if (v26)
  {
    v34 = MEMORY[0x1DA6FB460](1, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_14;
    }

    v34 = *(inited + 40);
  }

  v35 = v34;
  v36 = [v34 navigationItem];
  v37 = sub_1D5FC83EC(&qword_1EC881EE0, 0x6C65636E6143, 0xE600000000000000, &selRef_doCancel);
  [v36 setLeftBarButtonItem_];

  v38 = [v35 navigationItem];
  [v38 setRightBarButtonItem_];

  if (v26)
  {
    v39 = MEMORY[0x1DA6FB460](2, inited);
LABEL_11:
    v40 = v39;

    v41 = [v40 navigationItem];
    v42 = sub_1D5FC83EC(&qword_1EC881EE0, 0x6C65636E6143, 0xE600000000000000, &selRef_doCancel);
    [v41 setLeftBarButtonItem_];

    v43 = [v40 navigationItem];
    [v43 setRightBarButtonItem_];

    sub_1D5FC99F0(&qword_1EC881EF8, type metadata accessor for DebugFormatWorkspaceSettingsViewController);
    v44 = v49;
    sub_1D725E69C();

    sub_1D5FC99F0(&qword_1EC881F00, type metadata accessor for DebugFormatWorkspaceFeedViewController);
    v45 = v50;
    sub_1D725E69C();

    sub_1D5FC99F0(&qword_1EC881F08, type metadata accessor for DebugFormatWorkspaceTagViewController);
    v46 = v51;
    sub_1D725E69C();

    v47 = *&v22[v33];
    sub_1D62D7C2C();
    v48 = sub_1D61881BC(2);

    [v47 setEnabled_];

    sub_1D5EF0664(a2);
    return;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v39 = *(inited + 48);
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1D5FC998C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatWorkspace();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5FC99F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5FC9A38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64684;

  return sub_1D5FC8D44(a1, v4, v5, v6, (v1 + 5));
}

uint64_t FeedBannerAdRequester.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t FeedBannerAdRequester.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall FeedBannerAdRequester.hasScheduledRequest(for:)(Swift::String a1)
{

  v1 = sub_1D725AC7C();

  return v1 & 1;
}

Swift::Void __swiftcall FeedBannerAdRequester.executeScheduledRequest(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = sub_1D7261ABC();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7261B2C();
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = countAndFlagsBits;
  v20 = object;

  v12 = sub_1D725AC7C();

  if (v12)
  {
    v13 = swift_allocObject();
    v13[2] = v1;
    v13[3] = countAndFlagsBits;
    v13[4] = object;
    v23 = sub_1D5FCA338;
    v24 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_1D5B6B06C;
    v22 = &block_descriptor_14;
    v14 = _Block_copy(&aBlock);

    sub_1D7261AEC();
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D5B73758(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
    sub_1D5B73908();
    sub_1D5B73758(&qword_1EDF1B560, sub_1D5B73908);
    sub_1D7263B6C();
    MEMORY[0x1DA6FA730](0, v11, v7, v14);
    _Block_release(v14);
    (*(v17 + 8))(v7, v4);
    (*(v8 + 8))(v11, v16);
  }
}

uint64_t sub_1D5FC9EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5BE1514();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeedBannerAdRequester.ScheduledRequest();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v37 = &v37 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v39 = (&v37 - v19);
  swift_beginAccess();
  ObjectType = a1;
  v20 = *(a1 + 56);
  v21 = *(v20 + 16);

  if (!v21)
  {
  }

  v23 = 0;
  while (1)
  {
    if (v23 >= *(v20 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1D5C3ABB0(v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v23, v13, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
    if (sub_1D7260A8C() == a2 && v24 == a3)
    {
      break;
    }

    v26 = sub_1D72646CC();

    if (v26)
    {
      goto LABEL_12;
    }

    ++v23;
    result = sub_1D5FCBA70(v13, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
    if (v21 == v23)
    {
    }
  }

LABEL_12:

  v27 = v37;
  sub_1D5C3AC18(v13, v37, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
  v28 = v39;
  sub_1D5C3AC18(v27, v39, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
  v29 = v40;
  v30 = ObjectType;
  sub_1D5FCA344(v28, v40);
  swift_beginAccess();
  if (*(v30 + 16))
  {
    v31 = *(v30 + 24);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    sub_1D5B5E1BC(0, &qword_1EDF19AB0, sub_1D5BE1514, MEMORY[0x1E69E6F90]);
    v32 = v41;
    v33 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D7273AE0;
    v35 = v42;
    (*(v32 + 16))(v34 + v33, v29, v42);
    v36 = *(v31 + 8);
    swift_unknownObjectRetain();
    v36(v34, ObjectType, v31);
    swift_unknownObjectRelease();

    (*(v32 + 8))(v29, v35);
    return sub_1D5FCBA70(v28, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
  }

  else
  {
    (*(v41 + 8))(v29, v42);
    sub_1D5FCBA70(v28, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
    return swift_endAccess();
  }
}

uint64_t sub_1D5FCA344@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v95 = type metadata accessor for FeedBannerAd();
  MEMORY[0x1EEE9AC00](v95, v3);
  v93 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D726035C();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v86 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7260DDC();
  v91 = *(v8 - 8);
  v92 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v87 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v90 = &v82 - v13;
  sub_1D5FCB9C0(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v89 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v100 = &v82 - v19;
  v101 = sub_1D72604BC();
  v98 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v20);
  v85 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v99 = &v82 - v24;
  sub_1D5C25550();
  v96 = *(v25 - 8);
  v97 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v84 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5FCB9F4(0);
  v83 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = (&v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v82 - v34;
  if (qword_1EDF1BB68 != -1)
  {
    swift_once();
  }

  v82 = qword_1EDFFC830;
  sub_1D5B5E1BC(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D7270C10;
  v37 = type metadata accessor for FeedBannerAdRequester.ScheduledRequest();
  v38 = sub_1D7260A8C();
  v40 = v39;
  v41 = MEMORY[0x1E69E6158];
  *(v36 + 56) = MEMORY[0x1E69E6158];
  v42 = sub_1D5B7E2C0();
  *(v36 + 64) = v42;
  *(v36 + 32) = v38;
  *(v36 + 40) = v40;
  v102 = *(a1 + *(v37 + 24));
  type metadata accessor for CGPoint(0);
  v43 = sub_1D72620FC();
  *(v36 + 96) = v41;
  *(v36 + 104) = v42;
  *(v36 + 72) = v43;
  *(v36 + 80) = v44;
  sub_1D7262EDC();
  sub_1D725C30C();

  v45 = sub_1D726025C();
  MEMORY[0x1EEE9AC00](v45, v46);
  *(&v82 - 2) = a1;
  sub_1D72606DC();

  v88 = v35;
  sub_1D5C3ABB0(v35, v31, sub_1D5FCB9F4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = *v31;
    v84 = v31[1];

    v48 = *MEMORY[0x1E69B3EA8];
    v49 = sub_1D72604AC();
    v50 = v99;
    (*(*(v49 - 8) + 104))(v99, v48, v49);
    v51 = v98;
    v52 = v101;
    (*(v98 + 104))(v50, *MEMORY[0x1E69B3E98], v101);
    (*(v96 + 56))(v100, 1, 1, v97);
    v53 = v95;
    sub_1D7260D7C();
    (*(v51 + 16))(v85, v50, v52);
    sub_1D7260D7C();
    sub_1D7260CCC();

    v54 = v90;
    sub_1D7260D8C();
    v56 = *a1;
    v55 = a1[1];
    v58 = v91;
    v57 = v92;
    v59 = v87;
    (*(v91 + 16))(v87, v54, v92);
    v60 = v93;
    *&v93[v53[6]] = 0x2000;
    v61 = &v60[v53[7]];
    *v61 = 0;
    v61[8] = 1;
    *&v60[v53[8]] = xmmword_1D72830B0;
    *v60 = v56;
    *(v60 + 1) = v55;
    (*(v58 + 32))(&v60[v53[5]], v59, v57);
    v62 = v100;
    sub_1D5C3ABB0(v100, v89, sub_1D5FCB9C0);
    sub_1D5B73758(qword_1EDF42200, type metadata accessor for FeedBannerAd);

    sub_1D726051C();
    (*(v58 + 8))(v54, v57);
    sub_1D5FCBA70(v62, sub_1D5FCB9C0);
    (*(v51 + 8))(v99, v101);
  }

  else
  {
    sub_1D5FCBAD0();
    v83 = *(v31 + *(v63 + 48));
    v64 = v97;
    v65 = v96;
    v66 = v84;
    (*(v96 + 32))(v84, v31, v97);
    v67 = v99;
    v68 = v98;
    v69 = v101;
    (*(v98 + 104))(v99, *MEMORY[0x1E69B3ED0], v101);
    v70 = v100;
    (*(v65 + 16))(v100, v66, v64);
    (*(v65 + 56))(v70, 0, 1, v64);
    v71 = v95;
    sub_1D7260D7C();
    (*(v68 + 16))(v85, v67, v69);
    sub_1D7260D7C();
    sub_1D7260CCC();

    v72 = v90;
    sub_1D7260D8C();
    v74 = *a1;
    v73 = a1[1];
    v76 = v91;
    v75 = v92;
    v77 = v87;
    (*(v91 + 16))(v87, v72, v92);
    v78 = v93;
    *&v93[v71[6]] = 0x2000;
    v79 = &v78[v71[7]];
    *v79 = 0;
    v79[8] = 1;
    *&v78[v71[8]] = xmmword_1D72830B0;
    *v78 = v74;
    *(v78 + 1) = v73;
    (*(v76 + 32))(&v78[v71[5]], v77, v75);
    v80 = v100;
    sub_1D5C3ABB0(v100, v89, sub_1D5FCB9C0);
    sub_1D5B73758(qword_1EDF42200, type metadata accessor for FeedBannerAd);

    sub_1D726051C();
    (*(v76 + 8))(v72, v75);
    sub_1D5FCBA70(v80, sub_1D5FCB9C0);
    (*(v98 + 8))(v99, v101);
    (*(v96 + 8))(v84, v97);
  }

  return sub_1D5FCBA70(v88, sub_1D5FCB9F4);
}

uint64_t sub_1D5FCADDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CGFloat a6, CGFloat a7)
{
  sub_1D5BE1514();
  v45 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FeedBannerAdRequester.ScheduledRequest();
  v20 = (v19 - 8);
  v44 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v43 - v26);
  sub_1D5C3ABB0(a1, &v43 - v26, type metadata accessor for FeedBannerAd);
  v28 = v20[7];
  v29 = sub_1D7260A9C();
  (*(*(v29 - 8) + 16))(v27 + v28, a2, v29);
  v30 = (v27 + v20[8]);
  *v30 = a6;
  v30[1] = a7;
  v31 = (v27 + v20[9]);
  *v31 = a3;
  v31[1] = a4;

  sub_1D725B96C();

  if (v46 == 1 && (v47.x = a6, v47.y = a7, !CGRectContainsPoint(*(a5 + 72), v47)))
  {
    sub_1D5C3ABB0(v27, v23, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
    swift_beginAccess();
    v39 = *(a5 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 56) = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_1D6991680(0, v39[2] + 1, 1, v39);
      *(a5 + 56) = v39;
    }

    v42 = v39[2];
    v41 = v39[3];
    if (v42 >= v41 >> 1)
    {
      v39 = sub_1D6991680(v41 > 1, v42 + 1, 1, v39);
    }

    v39[2] = v42 + 1;
    sub_1D5C3AC18(v23, v39 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v42, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
    *(a5 + 56) = v39;
    swift_endAccess();
  }

  else
  {
    sub_1D5FCA344(v27, v18);
    swift_beginAccess();
    if (!*(a5 + 16))
    {
      (*(v15 + 8))(v18, v45);
      sub_1D5FCBA70(v27, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
      return swift_endAccess();
    }

    v32 = *(a5 + 24);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    sub_1D5B5E1BC(0, &qword_1EDF19AB0, sub_1D5BE1514, MEMORY[0x1E69E6F90]);
    v34 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1D7273AE0;
    v36 = v45;
    (*(v15 + 16))(v35 + v34, v18, v45);
    v37 = *(v32 + 8);
    swift_unknownObjectRetain();
    v37(v35, ObjectType, v32);
    swift_unknownObjectRelease();

    (*(v15 + 8))(v18, v36);
  }

  return sub_1D5FCBA70(v27, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
}

uint64_t sub_1D5FCB3E4()
{
  v1 = *(type metadata accessor for FeedBannerAd() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1D7260A9C() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v0 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v0 + v7);
  v12 = *(v0 + v7 + 8);
  v13 = *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D5FCADDC(v0 + v2, v0 + v5, v11, v12, v13, v9, v10);
}

void sub_1D5FCB4FC()
{
  v1 = v0;
  v2 = sub_1D7261ABC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7261B2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725EC1C();
  sub_1D7262E6C();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = *(v1 + 64);
  v44.origin.x = v14;
  v44.origin.y = v16;
  v44.size.width = v18;
  v44.size.height = v20;
  MinX = CGRectGetMinX(v44);
  v45.origin.x = v14;
  v45.origin.y = v16;
  v45.size.width = v18;
  v45.size.height = v20;
  v23 = MinX - CGRectGetWidth(v45) * v21;
  v46.origin.x = v14;
  v46.origin.y = v16;
  v46.size.width = v18;
  v46.size.height = v20;
  MinY = CGRectGetMinY(v46);
  v47.origin.x = v14;
  v47.origin.y = v16;
  v47.size.width = v18;
  v47.size.height = v20;
  v25 = MinY - CGRectGetHeight(v47) * v21;
  v48.origin.x = v14;
  v48.origin.y = v16;
  v48.size.width = v18;
  v48.size.height = v20;
  v26 = v21 + v21;
  v27 = (v21 + v21) * CGRectGetWidth(v48);
  v49.origin.x = v14;
  v49.origin.y = v16;
  v49.size.width = v18;
  v49.size.height = v20;
  v28 = v26 * CGRectGetHeight(v49);
  v54.origin.x = v23;
  v29 = v23;
  v54.origin.y = v25;
  v30 = v25;
  v54.size.width = v27;
  v54.size.height = v28;
  v50 = CGRectIntersection(*(v1 + 72), v54);
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  x = v50.origin.x;
  v34 = CGRectGetWidth(v50);
  v41 = v29;
  v51.origin.x = v29;
  v51.origin.y = v30;
  v51.size.width = v27;
  v51.size.height = v28;
  if (v34 < CGRectGetWidth(v51) / 3.0 || (v52.origin.x = x, v52.origin.y = y, v52.size.width = width, v52.size.height = height, v35 = CGRectGetHeight(v52), v53.origin.x = v41, v53.origin.y = v30, v53.size.width = v27, v53.size.height = v28, v35 < CGRectGetHeight(v53) / 3.0))
  {
    v36 = v41;
    *(v1 + 72) = v41;
    *(v1 + 80) = v30;
    *(v1 + 88) = v27;
    *(v1 + 96) = v28;
    v37 = swift_allocObject();
    *(v37 + 16) = v1;
    *(v37 + 24) = v36;
    *(v37 + 32) = v30;
    *(v37 + 40) = v27;
    *(v37 + 48) = v28;
    aBlock[4] = sub_1D5FCBC2C;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_27;
    v38 = _Block_copy(aBlock);

    sub_1D7261AEC();
    v42 = MEMORY[0x1E69E7CC0];
    sub_1D5B73758(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
    sub_1D5B73908();
    sub_1D5B73758(&qword_1EDF1B560, sub_1D5B73908);
    sub_1D7263B6C();
    MEMORY[0x1DA6FA730](0, v11, v6, v38);
    _Block_release(v38);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_1D5FCBA14(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for FeedBannerAdRequester.ScheduledRequest();
  return (*(v3 + *(v4 + 28)))(a1);
}

uint64_t sub_1D5FCBA70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D5FCBAD0()
{
  if (!qword_1EDF3A928)
  {
    sub_1D5C25550();
    sub_1D5FCBB60(255, &qword_1EDF438F0, MEMORY[0x1E69B43B0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF3A928);
    }
  }
}

void sub_1D5FCBB60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_1D72609CC();
    v8[1] = sub_1D7260A9C();
    v8[2] = sub_1D5B73758(&qword_1EDF43930, MEMORY[0x1E69B41B0]);
    v8[3] = MEMORY[0x1E69B41F8];
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t FeedCategory.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedCategory.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D5FCBCA4(uint64_t a1, uint64_t a2)
{
  sub_1D5FCBD08();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D5FCBD08()
{
  if (!qword_1EDF3B6B0)
  {
    sub_1D5C0EEEC();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B6B0);
    }
  }
}

double FeedCategory.largestCachedIcon.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1D5FCBCA4(v1 + 112, v12);
  if (v13)
  {
    __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_1D725D2CC();
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (v5)
    {

      v6 = v2 + 112;
LABEL_12:
      sub_1D5FCBCA4(v6, a1);
      return result;
    }
  }

  else
  {
    sub_1D5EED418(v12);
  }

  sub_1D5FCBCA4(v2 + 72, v12);
  if (v13)
  {
    __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_1D725D2CC();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (v8)
    {

      v6 = v2 + 72;
      goto LABEL_12;
    }
  }

  else
  {
    sub_1D5EED418(v12);
  }

  sub_1D5FCBCA4(v2 + 32, v12);
  if (v13)
  {
    __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_1D725D2CC();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (v10)
    {

      v6 = v2 + 32;
      goto LABEL_12;
    }
  }

  else
  {
    sub_1D5EED418(v12);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

__n128 FeedCategory.init(identifier:title:icon1x:icon2x:icon3x:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  v8 = *(a5 + 16);
  *(a8 + 32) = *a5;
  *(a8 + 48) = v8;
  *(a8 + 64) = *(a5 + 32);
  v9 = *(a6 + 16);
  *(a8 + 72) = *a6;
  *(a8 + 88) = v9;
  *(a8 + 104) = *(a6 + 32);
  result = *a7;
  v11 = *(a7 + 16);
  *(a8 + 144) = *(a7 + 32);
  *(a8 + 112) = result;
  *(a8 + 128) = v11;
  return result;
}

uint64_t static FeedCategory.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

double sub_1D5FCBF7C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1D728B0D0;
  return result;
}

double FeedCategory.kind.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1D728B0D0;
  return result;
}

uint64_t sub_1D5FCBFA8()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FeedCategory.debugTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_1D5FCC018(uint64_t a1)
{
  result = sub_1D5FCC040();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5FCC040()
{
  result = qword_1EDF12C48;
  if (!qword_1EDF12C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12C48);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI15AssetHandleType_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1D5FCC0E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1D5FCC128(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for FormatShareAttributionData()
{
  result = qword_1EDF23248;
  if (!qword_1EDF23248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5FCC214()
{
  result = type metadata accessor for SharedItem();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1D5FCC280(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SharedItem();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5FCC6B8(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E6F90];
  sub_1D5FCC6EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v27 = xmmword_1D7273AE0;
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5FCC6EC(0, &qword_1EC880490, sub_1D5EA74B8, v11);
  sub_1D5EA74B8();
  v14 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v27;
  sub_1D5FCC750(a2, v10, sub_1D5FCC6B8);
  v16 = type metadata accessor for FormatShareAttributionData();
  if ((*(*(v16 - 8) + 48))(v10, 1, v16) == 1)
  {
    sub_1D5FCC7B8(v10, sub_1D5FCC6B8);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    sub_1D5FCC750(v10, v6, type metadata accessor for SharedItem);
    sub_1D5FCC7B8(v10, type metadata accessor for FormatShareAttributionData);
    v19 = sub_1D725844C();
    v20 = [v19 fc_NewsArticleID];

    if (v20)
    {
      v17 = sub_1D726207C();
      v18 = v21;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    sub_1D5FCC7B8(v6, type metadata accessor for SharedItem);
  }

  sub_1D711F844(0x696669746E656449, 0xEA00000000007265, v17, v18, (v15 + v14));
  v22 = type metadata accessor for FormatInspectionItem(0);
  (*(*(v22 - 8) + 56))(v15 + v14, 0, 1, v22);
  sub_1D6795150(0xD000000000000016, 0x80000001D73C5380, 0, 0, v15, v28);
  swift_setDeallocating();
  sub_1D5FCC7B8(v15 + v14, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v23 = swift_allocObject();
  *(inited + 32) = v23;
  *(v23 + 48) = v29;
  v24 = v28[1];
  *(v23 + 16) = v28[0];
  *(v23 + 32) = v24;
  v25 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5FCC7B8(inited + 32, sub_1D5E4F358);
  return v25;
}

void sub_1D5FCC6EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5FCC750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5FCC7B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Feed.name.getter()
{
  v1 = *v0;

  return v1;
}

id Feed.init(name:log:adsEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return a3;
}

uint64_t Feed.init(name:log:dbLog:adsEnabled:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_1D5FCC888()
{
  result = sub_1D72644BC();
  qword_1EC881F18 = result;
  unk_1EC881F20 = v1;
  return result;
}

uint64_t static Feed.databaseVersion.getter()
{
  if (qword_1EC87D4E0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC881F18;

  return v0;
}

uint64_t static Feed.layoutTransitionsValue<A>(on:off:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  if (qword_1EDF29DD8 != -1)
  {
    v4 = a1;
    v5 = a3;
    swift_once();
    a1 = v4;
    a3 = v5;
  }

  if (byte_1EDF29DE0 == 1)
  {
    return a1();
  }

  else
  {
    return a3();
  }
}

void sub_1D5FCCA04(void *a1, uint64_t a2, double a3, double a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
  if ((sub_1D7261A3C() & 1) == 0)
  {
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 effectWithStyle_];
    [v9 setBackgroundEffect_];

    [v9 setBackgroundColor_];
  }

  [v7 setShadowColor_];
  sub_1D5DF6790();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v27 = v7;
  v12 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v13 = objc_opt_self();
  v28 = v12;
  v14 = [v13 labelColor];
  v15 = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 40) = v14;
  v16 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v15;
  *(inited + 72) = v16;
  v17 = objc_opt_self();
  v18 = *MEMORY[0x1E69DB958];
  v26 = v16;
  v19 = [v17 systemFontOfSize:a3 weight:v18];
  v20 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 104) = v20;
  *(inited + 80) = v19;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v21 = sub_1D7261D2C();

  [v27 setTitleTextAttributes_];

  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1D7270C10;
  *(v22 + 32) = v28;
  *(v22 + 40) = [v13 secondaryLabelColor];
  *(v22 + 64) = v15;
  *(v22 + 72) = v26;
  v23 = [v17 systemFontOfSize:a4 weight:*MEMORY[0x1E69DB968]];
  *(v22 + 104) = v20;
  *(v22 + 80) = v23;
  sub_1D5C09CEC(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  v24 = sub_1D7261D2C();

  [v27 setSubtitleTextAttributes_];

  v25 = v27;
  [a1 setStandardAppearance_];
  [a1 setScrollEdgeAppearance_];
  [a1 setCompactAppearance_];
}

void sub_1D5FCCDD4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  switch(*v2)
  {
    case 1:
      v36 = [a1 theme];
      if (!v36)
      {
        goto LABEL_82;
      }

      v5 = [v36 darkStyleForegroundColor];
      goto LABEL_32;
    case 2:
      v31 = [a1 theme];
      if (!v31)
      {
        goto LABEL_78;
      }

      v13 = [v31 backgroundColor];
      goto LABEL_49;
    case 3:
      v33 = [a1 theme];
      if (!v33)
      {
        goto LABEL_78;
      }

      v13 = [v33 darkStyleBackgroundColor];
      goto LABEL_49;
    case 4:
      v14 = [a1 groupTitleColor];
      if (!v14)
      {
        goto LABEL_82;
      }

      goto LABEL_39;
    case 5:
      v14 = [a1 groupDarkStyleTitleColor];
      if (!v14)
      {
        goto LABEL_82;
      }

LABEL_39:
      v37 = v14;
      goto LABEL_50;
    case 6:
      v64 = [a1 asSports];
      if (!v64)
      {
        goto LABEL_78;
      }

      v65 = [v64 sportsTheme];
      swift_unknownObjectRelease();
      if (!v65)
      {
        goto LABEL_78;
      }

      v13 = [v65 sportsPrimaryColor];
      goto LABEL_49;
    case 7:
      v34 = [a1 asSports];
      if (!v34)
      {
        goto LABEL_78;
      }

      v35 = [v34 sportsTheme];
      swift_unknownObjectRelease();
      if (!v35)
      {
        goto LABEL_78;
      }

      v13 = [v35 sportsSecondaryColor];
      goto LABEL_49;
    case 8:
      swift_getObjectType();
      v91 = FCTagProviding.iconColor.getter();
      sub_1D726353C();
      v141 = v93;
      v146 = v92;
      v95 = v94;
      v97 = v96;

      v98 = swift_allocObject();
      v99.f64[0] = v146;
      v99.f64[1] = v141;
      *(v98 + 16) = vmulq_f64(v99, vdupq_n_s64(0x406FE00000000000uLL));
      *(v98 + 32) = v95 * 255.0;
      *(v98 + 40) = v97;
      *(v98 + 48) = 0;
      v41 = v98 | 0x6000000000000000;
      goto LABEL_84;
    case 9:
      v17 = [a1 theme];
      if (v17)
      {
        v18 = [v17 navigationChromeBackgroundColor];
        swift_unknownObjectRelease();
        if (v18)
        {
          v19 = [v18 ne_color];

          sub_1D726353C();
          v139 = v21;
          v144 = v20;
          v23 = v22;
          v25 = v24;
          v26 = swift_allocObject();
          v27.f64[0] = v144;
          v27.f64[1] = v139;
          *(v26 + 16) = vmulq_f64(v27, vdupq_n_s64(0x406FE00000000000uLL));
          *(v26 + 32) = v23 * 255.0;
          *(v26 + 40) = v25;
          *(v26 + 48) = 0;
          v28 = [a1 theme];
          if (v28 && (v29 = [v28 darkStyleNavigationChromeBackgroundColor], swift_unknownObjectRelease(), v29))
          {
            v30 = [v29 ne_color];
          }

          else
          {
            v30 = v19;
          }

          v115 = swift_allocObject();
          sub_1D726353C();
          v142 = v117;
          v148 = v116;
          v119 = v118;
          v121 = v120;

          v122 = swift_allocObject();
          v123.f64[0] = v148;
          v123.f64[1] = v142;
          *(v122 + 16) = vmulq_f64(v123, vdupq_n_s64(0x406FE00000000000uLL));
          *(v122 + 32) = v119 * 255.0;
          *(v122 + 40) = v121;
          *(v122 + 48) = 0;
          v124 = v122 | 0x6000000000000000;
          v125 = v26 | 0x6000000000000000;
          goto LABEL_75;
        }
      }

      if ([a1 theme])
      {
        swift_getObjectType();
        v100 = FCFeedTheming.hasNavigationChromeBackgroundImage.getter();
        swift_unknownObjectRelease();
        if (v100)
        {
          v101 = [objc_opt_self() systemBackgroundColor];
          v102 = swift_allocObject();
          *(v102 + 16) = v101;
          v103 = objc_allocWithZone(MEMORY[0x1E69DC888]);
          aBlock[4] = sub_1D5FCF5F4;
          aBlock[5] = v102;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1D6E0CD34;
          aBlock[3] = &block_descriptor_15;
          v104 = _Block_copy(aBlock);
          v105 = [v103 initWithDynamicProvider_];
          _Block_release(v104);

          UIColor.dynamicFormatColor.getter(a2);

          return;
        }
      }

      if ([a1 asSports])
      {
        swift_getObjectType();
        v107 = FCSportsProviding.navigationBarBackgroundColor.getter();
        goto LABEL_68;
      }

      if ([a1 theme])
      {
        swift_getObjectType();
        v135 = FCFeedTheming.navigationBarBackgroundColor.getter();
        goto LABEL_81;
      }

LABEL_78:
      v136 = swift_allocObject();
      v137 = 29;
      goto LABEL_83;
    case 0xA:
      v76 = [a1 theme];
      if (v76)
      {
        v77 = [v76 navigationChromeBackgroundColor];
        swift_unknownObjectRelease();
        if (v77)
        {
          v78 = [v77 ne_color];

          v79 = sub_1D726355C();
          sub_1D726353C();
          v140 = v81;
          v145 = v80;
          v83 = v82;
          v85 = v84;

          v86 = swift_allocObject();
          v87.f64[0] = v145;
          v87.f64[1] = v140;
          *(v86 + 16) = vmulq_f64(v87, vdupq_n_s64(0x406FE00000000000uLL));
          *(v86 + 32) = v83 * 255.0;
          *(v86 + 40) = v85;
          *(v86 + 48) = 0;
          v88 = [a1 theme];
          if (v88 && (v89 = [v88 darkStyleNavigationChromeBackgroundColor], swift_unknownObjectRelease(), v89))
          {
            v90 = [v89 ne_color];
          }

          else
          {
            v90 = v78;
          }

          v115 = swift_allocObject();
          v126 = sub_1D726355C();

          sub_1D726353C();
          v143 = v128;
          v149 = v127;
          v130 = v129;
          v132 = v131;

          v133 = swift_allocObject();
          v134.f64[0] = v149;
          v134.f64[1] = v143;
          *(v133 + 16) = vmulq_f64(v134, vdupq_n_s64(0x406FE00000000000uLL));
          *(v133 + 32) = v130 * 255.0;
          *(v133 + 40) = v132;
          *(v133 + 48) = 0;
          v124 = v133 | 0x6000000000000000;
          v125 = v86 | 0x6000000000000000;
LABEL_75:
          *(v115 + 16) = v125;
          *(v115 + 24) = v124;
          v41 = v115 | 0x3000000000000000;
          goto LABEL_84;
        }
      }

      if ([a1 theme])
      {
        swift_getObjectType();
        v106 = FCFeedTheming.hasNavigationChromeBackgroundImage.getter();
        swift_unknownObjectRelease();
        if (v106)
        {
          goto LABEL_82;
        }
      }

      if (![a1 asSports])
      {
        if ([a1 theme])
        {
          swift_getObjectType();
          v135 = FCFeedTheming.navigationBarForegroundColor.getter();
LABEL_81:
          v138 = v135;
          swift_unknownObjectRelease();
          UIColor.dynamicFormatColor.getter(aBlock);

          v41 = aBlock[0];
LABEL_84:
          *a2 = v41;
          return;
        }

LABEL_82:
        v136 = swift_allocObject();
        v137 = 21;
LABEL_83:
        *(v136 + 16) = v137;
        *(v136 + 24) = 0x3FF0000000000000;
        *(v136 + 32) = 0;
        v41 = v136 | 0x1000000000000000;
        goto LABEL_84;
      }

      swift_getObjectType();
      v107 = FCSportsProviding.navigationBarForegroundColor.getter();
LABEL_68:
      v147 = v107;
      UIColor.dynamicFormatColor.getter(a2);
      swift_unknownObjectRelease();

      return;
    case 0xB:
      v12 = [a1 theme];
      if (!v12)
      {
        goto LABEL_78;
      }

      v13 = [v12 feedBackgroundColor];
      goto LABEL_49;
    case 0xC:
      v15 = [a1 theme];
      if (!v15)
      {
        goto LABEL_78;
      }

      v13 = [v15 darkStyleFeedBackgroundColor];
LABEL_49:
      v37 = v13;
      swift_unknownObjectRelease();
      if (v37)
      {
        goto LABEL_50;
      }

      goto LABEL_78;
    case 0xD:
      v43 = [a1 theme];
      if (!v43)
      {
        goto LABEL_78;
      }

      v8 = [v43 feedBackgroundColor];
      swift_unknownObjectRelease();
      if (!v8)
      {
        goto LABEL_78;
      }

      v44 = [a1 theme];
      if (!v44)
      {
        goto LABEL_65;
      }

      v10 = [v44 darkStyleFeedBackgroundColor];
      goto LABEL_44;
    case 0xE:
      v11 = [a1 theme];
      if (!v11)
      {
        goto LABEL_82;
      }

      v5 = [v11 feedControlColor];
      goto LABEL_32;
    case 0xF:
      v32 = [a1 theme];
      if (!v32)
      {
        goto LABEL_82;
      }

      v5 = [v32 darkStyleFeedControlColor];
      goto LABEL_32;
    case 0x10:
      v7 = [a1 theme];
      if (!v7)
      {
        goto LABEL_82;
      }

      v8 = [v7 feedControlColor];
      swift_unknownObjectRelease();
      if (!v8)
      {
        goto LABEL_82;
      }

      v9 = [a1 theme];
      if (!v9)
      {
        goto LABEL_65;
      }

      v10 = [v9 darkStyleFeedControlColor];
LABEL_44:
      v45 = v10;
      swift_unknownObjectRelease();
      if (v45)
      {
        v46 = swift_allocObject();
        v47 = swift_allocObject();
        [v8 red];
        v49 = v48 * 255.0;
        [v8 green];
        v51 = v50 * 255.0;
        [v8 blue];
        v53 = v52 * 255.0;
        [v8 alpha];
        *(v47 + 16) = v49;
        *(v47 + 24) = v51;
        *(v47 + 32) = v53;
        *(v47 + 40) = v54;
        *(v47 + 48) = 0;
        v55 = swift_allocObject();
        [v45 red];
        v57 = v56 * 255.0;
        [v45 green];
        v59 = v58 * 255.0;
        [v45 blue];
        v61 = v60 * 255.0;
        [v45 alpha];
        v63 = v62;

        *(v55 + 16) = v57;
        *(v55 + 24) = v59;
        *(v55 + 32) = v61;
        *(v55 + 40) = v63;
        *(v55 + 48) = 0;
        *(v46 + 16) = v47 | 0x6000000000000000;
        *(v46 + 24) = v55 | 0x6000000000000000;
        v41 = v46 | 0x3000000000000000;
      }

      else
      {
LABEL_65:
        v66 = swift_allocObject();
        [v8 red];
        v109 = v108 * 255.0;
        [v8 green];
        v111 = v110 * 255.0;
        [v8 blue];
        v113 = v112 * 255.0;
        [v8 alpha];
        *(v66 + 16) = v109;
        *(v66 + 24) = v111;
        *(v66 + 32) = v113;
        *(v66 + 40) = v114;
        *(v66 + 48) = 0;

LABEL_51:
        v41 = v66 | 0x6000000000000000;
      }

      goto LABEL_84;
    case 0x11:
      v38 = [a1 asSports];
      if (v38)
      {
        v39 = [v38 sportsTheme];
        swift_unknownObjectRelease();
        if (v39)
        {
          v37 = [v39 sportsEventNavigationForegroundColor];
          swift_unknownObjectRelease();
          if (v37)
          {
            goto LABEL_50;
          }
        }
      }

      v40 = swift_allocObject();
      *(v40 + 16) = 11;
      *(v40 + 24) = 0x3FF0000000000000;
      *(v40 + 32) = 0;
      v41 = v40 | 0x2000000000000000;
      goto LABEL_84;
    default:
      v4 = [a1 theme];
      if (!v4)
      {
        goto LABEL_82;
      }

      v5 = [v4 foregroundColor];
LABEL_32:
      v37 = v5;
      swift_unknownObjectRelease();
      if (!v37)
      {
        goto LABEL_82;
      }

LABEL_50:
      v66 = swift_allocObject();
      [v37 red];
      v68 = v67 * 255.0;
      [v37 green];
      v70 = v69 * 255.0;
      [v37 blue];
      v72 = v71 * 255.0;
      [v37 alpha];
      v74 = v73;

      *(v66 + 16) = v68;
      *(v66 + 24) = v70;
      *(v66 + 32) = v72;
      *(v66 + 40) = v74;
      *(v66 + 48) = 0;
      goto LABEL_51;
  }
}

unint64_t sub_1D5FCDB24(char a1)
{
  result = 0x756F726765726F66;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0x756F72676B636162;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0x74695470756F7267;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x6F6C6F436E6F6369;
      break;
    case 9:
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD00000000000001CLL;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000019;
      break;
    case 16:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0xD000000000000024;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5FCDD44(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D5FCDB24(*a1);
  v5 = v4;
  if (v3 == sub_1D5FCDB24(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D5FCDDCC()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D5FCDB24(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5FCDE30()
{
  sub_1D5FCDB24(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D5FCDE84()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D5FCDB24(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5FCDEE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5FCF7C4();
  *a1 = result;
  return result;
}

unint64_t sub_1D5FCDF14@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D5FCDB24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatTagBinding.Color.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D5FCE098()
{
  result = qword_1EC881F28;
  if (!qword_1EC881F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881F28);
  }

  return result;
}

unint64_t sub_1D5FCE0EC(uint64_t a1)
{
  result = sub_1D5FCE114();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FCE114()
{
  result = qword_1EC881F30;
  if (!qword_1EC881F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881F30);
  }

  return result;
}

unint64_t sub_1D5FCE1A8(void *a1)
{
  a1[1] = sub_1D5FCE1E0();
  a1[2] = sub_1D5FCE234();
  result = sub_1D5FCE098();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5FCE1E0()
{
  result = qword_1EDF2FBC8;
  if (!qword_1EDF2FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FBC8);
  }

  return result;
}

unint64_t sub_1D5FCE234()
{
  result = qword_1EDF110C0;
  if (!qword_1EDF110C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF110C0);
  }

  return result;
}

unint64_t sub_1D5FCE30C()
{
  result = qword_1EC881F58;
  if (!qword_1EC881F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881F58);
  }

  return result;
}

unint64_t sub_1D5FCE360()
{
  result = qword_1EDF2FBD8;
  if (!qword_1EDF2FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FBD8);
  }

  return result;
}

uint64_t sub_1D5FCE3B4@<X0>(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  switch(*a1)
  {
    case 1:
      v8 = 0x80000001D73C54F0;
      goto LABEL_15;
    case 2:
      sub_1D5FCCDD4(a2, &v62);
      v22 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v23 = *(v5 + 24);
      *(a3 + v23) = v22;
      v24 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v24 - 8) + 56))(a3 + v23, 0, 1, v24);
      *a3 = xmmword_1D728B300;
      break;
    case 3:
      v8 = 0x80000001D73C54D0;
LABEL_15:
      sub_1D5FCCDD4(a2, &v62);
      v31 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v32 = *(v5 + 24);
      *(a3 + v32) = v31;
      v33 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v33 - 8) + 56))(a3 + v32, 0, 1, v33);
      v21 = 0xD000000000000011;
      goto LABEL_22;
    case 4:
      sub_1D5FCCDD4(a2, &v62);
      v15 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v16 = *(v5 + 24);
      *(a3 + v16) = v15;
      v17 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v17 - 8) + 56))(a3 + v16, 0, 1, v17);
      *a3 = xmmword_1D728B2F0;
      break;
    case 5:
      v8 = 0x80000001D73C54B0;
      goto LABEL_21;
    case 6:
      sub_1D5FCCDD4(a2, &v62);
      v40 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v41 = *(v5 + 24);
      *(a3 + v41) = v40;
      v42 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v42 - 8) + 56))(a3 + v41, 0, 1, v42);
      *a3 = xmmword_1D728B2E0;
      break;
    case 7:
      v8 = 0x80000001D73C5490;
      sub_1D5FCCDD4(a2, &v62);
      v28 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v29 = *(v5 + 24);
      *(a3 + v29) = v28;
      v30 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v30 - 8) + 56))(a3 + v29, 0, 1, v30);
      v21 = 0xD000000000000010;
      goto LABEL_22;
    case 8:
      swift_getObjectType();
      v48 = FCTagProviding.iconColor.getter();
      sub_1D726353C();
      v60 = v50;
      v61 = v49;
      v52 = v51;
      v54 = v53;

      v55 = swift_allocObject();
      v56.f64[0] = v61;
      v56.f64[1] = v60;
      *(v55 + 16) = vmulq_f64(v56, vdupq_n_s64(0x406FE00000000000uLL));
      *(v55 + 32) = v52 * 255.0;
      *(v55 + 40) = v54;
      *(v55 + 48) = 0;
      v57 = v55 | 0x6000000000000000;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v58 = *(v5 + 24);
      *(a3 + v58) = v57;
      v59 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v59 - 8) + 56))(a3 + v58, 0, 1, v59);
      *a3 = xmmword_1D728B2D0;
      break;
    case 9:
      v8 = 0x80000001D73C5440;
      goto LABEL_21;
    case 0xA:
      v8 = 0x80000001D73C5420;
LABEL_21:
      sub_1D5FCCDD4(a2, &v62);
      v43 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v44 = *(v5 + 24);
      *(a3 + v44) = v43;
      v45 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v45 - 8) + 56))(a3 + v44, 0, 1, v45);
      v21 = 0xD000000000000012;
      goto LABEL_22;
    case 0xB:
      sub_1D5FCCDD4(a2, &v62);
      v12 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v13 = *(v5 + 24);
      *(a3 + v13) = v12;
      v14 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v14 - 8) + 56))(a3 + v13, 0, 1, v14);
      *a3 = xmmword_1D728B2C0;
      break;
    case 0xC:
      v8 = 0x80000001D73C5400;
      goto LABEL_8;
    case 0xD:
      v8 = 0x80000001D73C53E0;
      sub_1D5FCCDD4(a2, &v62);
      v37 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v38 = *(v5 + 24);
      *(a3 + v38) = v37;
      v39 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v39 - 8) + 56))(a3 + v38, 0, 1, v39);
      v21 = 0xD000000000000019;
      goto LABEL_22;
    case 0xE:
      sub_1D5FCCDD4(a2, &v62);
      v9 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v10 = *(v5 + 24);
      *(a3 + v10) = v9;
      v11 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v11 - 8) + 56))(a3 + v10, 0, 1, v11);
      *a3 = xmmword_1D728B2B0;
      break;
    case 0xF:
      v8 = 0x80000001D73C53C0;
      sub_1D5FCCDD4(a2, &v62);
      v25 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v26 = *(v5 + 24);
      *(a3 + v26) = v25;
      v27 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v27 - 8) + 56))(a3 + v26, 0, 1, v27);
      v21 = 0xD000000000000013;
      goto LABEL_22;
    case 0x10:
      v8 = 0x80000001D73C53A0;
LABEL_8:
      sub_1D5FCCDD4(a2, &v62);
      v18 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v19 = *(v5 + 24);
      *(a3 + v19) = v18;
      v20 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v20 - 8) + 56))(a3 + v19, 0, 1, v20);
      v21 = 0xD000000000000016;
      goto LABEL_22;
    case 0x11:
      v8 = 0x80000001D73C5460;
      sub_1D5FCCDD4(a2, &v62);
      v34 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v35 = *(v5 + 24);
      *(a3 + v35) = v34;
      v36 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v36 - 8) + 56))(a3 + v35, 0, 1, v36);
      v21 = 0xD000000000000028;
LABEL_22:
      *a3 = v21;
      *(a3 + 8) = v8;
      break;
    default:
      sub_1D5FCCDD4(a2, &v62);
      v4 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v6 = *(v5 + 24);
      *(a3 + v6) = v4;
      v7 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v7 - 8) + 56))(a3 + v6, 0, 1, v7);
      *a3 = xmmword_1D728B310;
      break;
  }

  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v46 = a3 + *(v5 + 28);
  *v46 = 0;
  *(v46 + 8) = 0;
  *(v46 + 16) = -1;
  type metadata accessor for FormatInspectionItem(0);
  return (*(*(v5 - 8) + 56))(a3, 0, 1, v5);
}

uint64_t sub_1D5FCEDAC@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = type metadata accessor for FormatJsonKeyValue();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D6997B40(0, 18, 0);
  v9 = 0;
  v10 = v16;
  do
  {
    v15 = byte_1F50F36F8[v9 + 32];
    sub_1D5FCEF50(&v15, a1, v8);
    v16 = v10;
    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1D6997B40(v11 > 1, v12 + 1, 1);
      v10 = v16;
    }

    ++v9;
    *(v10 + 16) = v12 + 1;
    sub_1D5FCF818(v8, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, type metadata accessor for FormatJsonKeyValue);
  }

  while (v9 != 18);
  *a2 = v10;
  type metadata accessor for FormatJson();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D5FCEF50@<X0>(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for FormatJson();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  switch(*a1)
  {
    case 1:
      v12 = 0xD000000000000018;
      v28 = 1;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v14 = "darkStyleForegroundColor";
      goto LABEL_17;
    case 2:
      v28 = 2;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v10 = 1801675106;
      goto LABEL_10;
    case 3:
      v12 = 0xD000000000000018;
      v28 = 3;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v14 = "darkStyleBackgroundColor";
      goto LABEL_17;
    case 4:
      v28 = 4;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v11 = 0xEF726F6C6F43656CLL;
      v12 = 0x74695470756F7267;
      break;
    case 5:
      v12 = 0xD000000000000018;
      v28 = 5;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v14 = "groupDarkStyleTitleColor";
LABEL_17:
      v11 = (v14 - 32) | 0x8000000000000000;
      break;
    case 6:
      v28 = 6;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v11 = 0x80000001D73B7B50;
      v12 = 0xD000000000000012;
      break;
    case 7:
      v28 = 7;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v11 = 0x80000001D73B7B70;
      v12 = 0xD000000000000014;
      break;
    case 8:
      swift_getObjectType();
      v15 = FCTagProviding.iconColor.getter();
      sub_1D726353C();
      v26 = v17;
      v27 = v16;
      v19 = v18;
      v21 = v20;

      v22 = swift_allocObject();
      *&v23.f64[0] = v27;
      *&v23.f64[1] = v26;
      *(v22 + 16) = vmulq_f64(v23, vdupq_n_s64(0x406FE00000000000uLL));
      *(v22 + 32) = v19 * 255.0;
      *(v22 + 40) = v21;
      *(v22 + 48) = 0;
      *v9 = v22 | 0x6000000000000000;
      swift_storeEnumTagMultiPayload();
      v11 = 0xE900000000000072;
      v12 = 0x6F6C6F436E6F6369;
      break;
    case 9:
      v28 = 9;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v13 = "navBarBackgroundColor";
      goto LABEL_21;
    case 0xA:
      v28 = 10;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v13 = "navBarForegroundColor";
LABEL_21:
      v11 = (v13 - 32) | 0x8000000000000000;
      v12 = 0xD000000000000015;
      break;
    case 0xB:
      v28 = 11;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v11 = 0x80000001D73B7BD0;
      v12 = 0xD000000000000013;
      break;
    case 0xC:
      v28 = 12;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v11 = 0x80000001D73B7BF0;
      v12 = 0xD00000000000001CLL;
      break;
    case 0xD:
      v28 = 13;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v11 = 0x80000001D73B7C10;
      v12 = 0xD00000000000001ALL;
      break;
    case 0xE:
      v28 = 14;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v11 = 0x80000001D73B7C30;
      v12 = 0xD000000000000010;
      break;
    case 0xF:
      v28 = 15;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v11 = 0x80000001D73B7C50;
      v12 = 0xD000000000000019;
      break;
    case 0x10:
      v28 = 16;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v11 = 0x80000001D73B7C70;
      v12 = 0xD000000000000017;
      break;
    case 0x11:
      v28 = 17;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v11 = 0x80000001D73B7C90;
      v12 = 0xD000000000000024;
      break;
    default:
      v28 = 0;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v10 = 1701998438;
LABEL_10:
      v12 = v10 | 0x756F726700000000;
      v11 = 0xEF726F6C6F43646ELL;
      break;
  }

  *a3 = v12;
  a3[1] = v11;
  v24 = type metadata accessor for FormatJsonKeyValue();
  return sub_1D5FCF818(v9, a3 + *(v24 + 20), type metadata accessor for FormatJson);
}

double sub_1D5FCF5FC@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D5EA74B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17[0] = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, 18, 0);
  v9 = 0;
  v10 = *&v17[0];
  do
  {
    v16 = byte_1F50F36F8[v9 + 32];
    sub_1D5FCE3B4(&v16, a1, v8);
    *&v17[0] = v10;
    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1D69972A4(v11 > 1, v12 + 1, 1);
      v10 = *&v17[0];
    }

    ++v9;
    *(v10 + 16) = v12 + 1;
    sub_1D5FCF818(v8, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, sub_1D5EA74B8);
  }

  while (v9 != 18);
  sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v10, v17);

  result = *v17;
  v14 = v17[1];
  *a2 = v17[0];
  *(a2 + 16) = v14;
  *(a2 + 32) = v18;
  return result;
}

uint64_t sub_1D5FCF7C4()
{
  v0 = sub_1D72648CC();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D5FCF818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5FCF888(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for FormatContentSlotItemResolution();
    return a2;
  }

  return result;
}

uint64_t sub_1D5FCF918(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5FCF94C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1D7263E5C();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1D5FD15E0(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1D5FCFC4C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_1D7263B7C();
  if (result == 1 << *(a1 + 32))
  {
    v5 = 5;
  }

  else
  {
    result = sub_1D5FD1FEC(result, *(a1 + 36), a1, &v6);
    v5 = v6;
  }

  *a2 = v5;
  return result;
}

double sub_1D5FCFCC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D7263B7C();
  if (v4 == 1 << *(a1 + 32))
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *a2 = sub_1D5FD1F64(&v7, v4, *(a1 + 36), 0, a1);
    *(a2 + 8) = v6;
    result = *&v7;
    *(a2 + 16) = v7;
  }

  return result;
}

uint64_t sub_1D5FCFD54(uint64_t a1)
{
  v2 = sub_1D7263B7C();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1D5FD22F0(v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1D5FCFDD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D7263B7C();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1D5FD2240(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for WebEmbedDataVisualization();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_1D5FCFE8C@<X0>(uint64_t a1@<X8>)
{
  sub_1D5FD2A8C();
  sub_1D5B57270(&qword_1EDF189B8, sub_1D5FD2A8C);
  sub_1D7262BFC();
  sub_1D7262C5C();
  if (v9[4] == v9[0])
  {
    v2 = sub_1D7258DFC();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_1D7262D0C();
    v6 = v5;
    v7 = sub_1D7258DFC();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_1D5FD0024(uint64_t a1)
{
  v2 = sub_1D7263B7C();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_1D5FD2564(v2, *(a1 + 36), 0, a1);
}

uint64_t sub_1D5FD008C(unsigned __int8 a1, uint64_t a2)
{
  v23 = *(a2 + 16);
  v2 = 0;
  if (v23)
  {
    v24 = a2 + 32;
    v3 = a1;
    while (1)
    {
      v4 = *(v24 + v2);
      if (v4 <= 4)
      {
        if (v4 == 3)
        {
          v6 = 0x6B61657262;
        }

        else
        {
          v6 = 0x656E6F7074736F70;
        }

        if (v4 == 3)
        {
          v7 = 0xE500000000000000;
        }

        else
        {
          v7 = 0xE900000000000064;
        }

        if (v4 == 2)
        {
          v6 = 0x6572676F72506E69;
          v7 = 0xEA00000000007373;
        }

        if (*(v24 + v2))
        {
          v8 = 0x6576694C7261656ELL;
        }

        else
        {
          v8 = 0x656D6167657270;
        }

        if (*(v24 + v2))
        {
          v9 = 0xE800000000000000;
        }

        else
        {
          v9 = 0xE700000000000000;
        }

        if (*(v24 + v2) <= 1u)
        {
          v5 = v8;
        }

        else
        {
          v5 = v6;
        }

        if (*(v24 + v2) <= 1u)
        {
          v10 = v9;
        }

        else
        {
          v10 = v7;
        }
      }

      else if (*(v24 + v2) > 7u)
      {
        if (v4 == 8)
        {
          v10 = 0xE500000000000000;
          v5 = 0x6C616E6966;
        }

        else
        {
          v10 = 0xE700000000000000;
          if (v4 == 9)
          {
            v5 = 0x74696566726F66;
          }

          else
          {
            v5 = 0x6E776F6E6B6E75;
          }
        }
      }

      else
      {
        if (v4 == 5)
        {
          v5 = 0x65646E6570737573;
          goto LABEL_32;
        }

        if (v4 == 6)
        {
          v5 = 0x656C6C65636E6163;
LABEL_32:
          v10 = 0xE900000000000064;
          goto LABEL_36;
        }

        v10 = 0xE700000000000000;
        v5 = 0x646579616C6564;
      }

LABEL_36:
      v11 = 0x74696566726F66;
      if (v3 != 9)
      {
        v11 = 0x6E776F6E6B6E75;
      }

      v12 = 0xE700000000000000;
      if (v3 == 8)
      {
        v11 = 0x6C616E6966;
        v12 = 0xE500000000000000;
      }

      v13 = 0x656C6C65636E6163;
      if (v3 == 6)
      {
        v14 = 0xE900000000000064;
      }

      else
      {
        v13 = 0x646579616C6564;
        v14 = 0xE700000000000000;
      }

      if (v3 == 5)
      {
        v13 = 0x65646E6570737573;
        v14 = 0xE900000000000064;
      }

      if (v3 <= 7)
      {
        v11 = v13;
        v12 = v14;
      }

      if (v3 == 3)
      {
        v15 = 0x6B61657262;
      }

      else
      {
        v15 = 0x656E6F7074736F70;
      }

      if (v3 == 3)
      {
        v16 = 0xE500000000000000;
      }

      else
      {
        v16 = 0xE900000000000064;
      }

      if (v3 == 2)
      {
        v15 = 0x6572676F72506E69;
        v16 = 0xEA00000000007373;
      }

      if (v3)
      {
        v17 = 0x6576694C7261656ELL;
      }

      else
      {
        v17 = 0x656D6167657270;
      }

      if (v3)
      {
        v18 = 0xE800000000000000;
      }

      else
      {
        v18 = 0xE700000000000000;
      }

      if (v3 <= 1)
      {
        v15 = v17;
        v16 = v18;
      }

      if (v3 <= 4)
      {
        v19 = v15;
      }

      else
      {
        v19 = v11;
      }

      if (v3 <= 4)
      {
        v20 = v16;
      }

      else
      {
        v20 = v12;
      }

      if (v5 == v19 && v10 == v20)
      {

        return v2;
      }

      v21 = sub_1D72646CC();

      if (v21)
      {
        return v2;
      }

      if (v23 == ++v2)
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t FormatInteger.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v29 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B3C();
  if (v13 == 1)
  {
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v16 = sub_1D725BD1C();
    v17 = __swift_project_value_buffer(v16, qword_1EDFFCD18);
    (*(*(v16 - 8) + 16))(v6, v17, v16);
    type metadata accessor for FormatVersionRequirement.Value(0);
    v18 = swift_storeEnumTagMultiPayload();
    MEMORY[0x1EEE9AC00](v18, v19);
    v29[-2] = v11;
    v29[-1] = v12;
    v20 = v32;
    sub_1D5D2BEC4(v6, sub_1D5FD2554, &v29[-4], v14, v15);
    sub_1D5D2CE08(v6, type metadata accessor for FormatVersionRequirement);
    if (!v20)
    {
      v29[1] = 0x286E6F6974706FLL;
      v29[2] = 0xE700000000000000;
      MEMORY[0x1DA6F9910](v11, v12);
      MEMORY[0x1DA6F9910](41, 0xE100000000000000);
      __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      sub_1D726473C();
    }
  }

  else
  {
    v21 = a1[3];
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v21);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    v25 = swift_storeEnumTagMultiPayload();
    MEMORY[0x1EEE9AC00](v25, v26);
    v29[-2] = v11;
    v27 = v32;
    sub_1D5D2BEC4(v10, sub_1D5FD255C, &v29[-4], v21, v22);
    sub_1D5D2CE08(v10, type metadata accessor for FormatVersionRequirement);
    if (!v27)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      sub_1D726475C();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

unint64_t sub_1D5FD0784()
{
  sub_1D7263D4C();

  v0 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v0);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t sub_1D5FD0828(uint64_t a1, uint64_t a2)
{
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](a1, a2);
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t FormatInteger.description.getter()
{
  if (*(v0 + 16) != 1)
  {
    return sub_1D72644BC();
  }

  MEMORY[0x1DA6F9910](*v0, *(v0 + 8));
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x286E6F6974706FLL;
}

uint64_t FormatInteger.optionIdentifiers.getter()
{
  if (*(v0 + 16) != 1)
  {
    return 0;
  }

  v2 = *v0;
  v1 = v0[1];
  sub_1D5B5D358(0, &qword_1EDF195B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  return v3;
}

uint64_t FormatInteger.init(value:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t FormatInteger.value(contextLayoutOptions:)(uint64_t a1)
{
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatOption();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  if (*(v1 + 16) == 1)
  {
    v13 = *(v1 + 8);

    FormatOptionCollection.subscript.getter(v12, v13, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1D5D2CE08(v6, sub_1D5E04C00);
      type metadata accessor for FormatLayoutError();
      sub_1D5B57270(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      *v14 = v12;
      v14[1] = v13;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      sub_1D5D2F2C4(v12, v13, 1);
      sub_1D5D247E0(v6, v11);
      v17 = *(v11 + 2);

      v12 = sub_1D5FD0C58(&v17, a1, v11);

      sub_1D5D2CE08(v11, type metadata accessor for FormatOption);
    }
  }

  return v12;
}

uint64_t sub_1D5FD0C58(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1 >> 60;
  if (((1 << v3) & 0x3EEF) != 0)
  {
    v5 = type metadata accessor for FormatLayoutError();
    sub_1D5B57270(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    sub_1D5FD2B90(a3, v6, type metadata accessor for FormatOption);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else if (v3 == 4)
  {
    v5 = *((*a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((*a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    if (*(v9 + 16))
    {
      v10 = *(*(a2 + 40) + 16);
      swift_beginAccess();
      if (*(*(v10 + 16) + 16))
      {
        v14 = *(a2 + 56);

        v12 = sub_1D6F622E0(v11);
        sub_1D5B886D0(v12);
        v13 = v14;
      }

      else
      {

        v13 = sub_1D6E46E28();
      }

      v5 = sub_1D5FA1B60(v13, v5, v9);
    }
  }

  else
  {
    v15[0] = *((*a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    swift_retain_n();

    v5 = sub_1D5FD0C58(v15, a2, a3);
  }

  return v5;
}

uint64_t sub_1D5FD0E50()
{
  if (*(v0 + 16) != 1)
  {
    return 0;
  }

  v2 = *v0;
  v1 = v0[1];
  sub_1D5B5D358(0, &qword_1EDF195B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  return v3;
}

void *sub_1D5FD0ED0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1D5FD0EE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FormatInteger.value(contextLayoutOptions:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D5FD0F0C()
{
  if (*(v0 + 16) != 1)
  {
    return sub_1D72644BC();
  }

  MEMORY[0x1DA6F9910](*v0, *(v0 + 8));
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x286E6F6974706FLL;
}

uint64_t sub_1D5FD0F98()
{
  if (*(v0 + 16) == 1)
  {
    v2 = *v0;
    v1 = v0[1];

    v3 = sub_1D5E26E28(&unk_1F50FC068);
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v1;
    *(v4 + 32) = v3;
    *(v4 + 40) = 0;
    sub_1D6C4D24C(v4 | 0x3000000000000000);
  }

  return result;
}

unsigned __int8 *sub_1D5FD1064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_1D726235C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D5FD1B6C();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D7263E5C();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1D5FD15E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1D726235C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D5FD1B6C();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D7263E5C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1D5FD1B6C()
{
  v0 = sub_1D726236C();
  v4 = sub_1D5FD1BEC(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1D5FD1BEC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1D726397C();
    if (!v9 || (v10 = v9, v11 = sub_1D5C42524(v9, 0), v12 = sub_1D5FD1D44(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1D72621DC();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1D72621DC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1D7263E5C();
LABEL_4:

  return sub_1D72621DC();
}

unint64_t sub_1D5FD1D44(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1D6BA2080(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D72622DC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1D7263E5C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1D6BA2080(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1D72622AC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

_OWORD *sub_1D5FD1F64(_OWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 16 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D5FD1FEC@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1D5FD2040(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1DA6FB2B0](a1, a2, v7);
      sub_1D5FD2A40();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1D5FD2A40();
    if (sub_1D7263BDC() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1D7263BEC();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1D72636FC();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1D726370C();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_1D5FD2240@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v6 = *(a3 + 48);
    v7 = type metadata accessor for WebEmbedDataVisualization();
    return sub_1D5FD2B90(v6 + *(*(v7 - 8) + 72) * v4, a4, type metadata accessor for WebEmbedDataVisualization);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D5FD22F0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

BOOL _s8NewsFeed13FormatIntegerO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  if (v4 != 1)
  {
    if ((v7 & 1) == 0)
    {
      sub_1D5D2F2C4(*a1, v3, 0);
      sub_1D5D2F2C4(v5, v6, 0);
      return v2 == v5;
    }

    goto LABEL_11;
  }

  if ((v7 & 1) == 0)
  {

LABEL_11:
    sub_1D5E04CC4(v5);
    sub_1D5D2F2C4(v2, v3, v4);
    sub_1D5D2F2C4(v5, v6, v7);
    return 0;
  }

  v8 = *a1;
  if (v2 == v5 && v3 == v6)
  {
    sub_1D5E04CC4(v8);
    sub_1D5E04CC4(v2);
    sub_1D5D2F2C4(v2, v3, 1);
    sub_1D5D2F2C4(v2, v3, 1);
    return 1;
  }

  else
  {
    v10 = sub_1D72646CC();
    sub_1D5E04CC4(v5);
    sub_1D5E04CC4(v2);
    sub_1D5D2F2C4(v2, v3, 1);
    sub_1D5D2F2C4(v5, v6, 1);
    return v10 & 1;
  }
}

unint64_t sub_1D5FD24A4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1D726224C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1D726236C();
}

uint64_t sub_1D5FD2564(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1D5FD25B4(uint64_t a1)
{
  v4 = type metadata accessor for FormatOption();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30 - v15;
  if (*(v1 + 16) == 1)
  {
    v33 = v2;
    v34 = v5;
    v17 = *v1;
    v18 = *(v1 + 8);
    v19 = sub_1D5E26E28(&unk_1F50F6648);
    v31 = v17;
    v32 = v18;
    v20 = v17;
    v21 = v34;
    FormatOptionCollection.subscript.getter(v20, v18, v12);
    if ((*(v21 + 48))(v12, 1, v4) == 1)
    {

      sub_1D5D2CE08(v12, sub_1D5E04C00);
      if (*(a1 + 48))
      {
        v22 = 1;
LABEL_7:
        (*(v21 + 56))(v16, v22, 1, v4);
        sub_1D5D2CE08(v16, sub_1D5E04C00);
        return;
      }

      type metadata accessor for FormatLayoutError();
      sub_1D5B57270(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      v23 = v32;
      *v24 = v31;
      v24[1] = v23;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      sub_1D5D247E0(v12, v8);
      v35 = v8[2];

      FormatOptionValue.type.getter(&v36);
      if (sub_1D6183C84(v36, v19))
      {
        swift_bridgeObjectRelease_n();
        sub_1D5D247E0(v8, v16);
        v22 = 0;
        v21 = v34;
        goto LABEL_7;
      }

      type metadata accessor for FormatDerivedDataError();
      sub_1D5B57270(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
      swift_allocError();
      v26 = v25;
      v28 = *v8;
      v27 = v8[1];
      v35 = v8[2];

      FormatOptionValue.type.getter(&v36);
      v29 = v36;
      *v26 = v28;
      *(v26 + 8) = v27;
      *(v26 + 16) = v29;
      *(v26 + 24) = v19;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D5D2CE08(v8, type metadata accessor for FormatOption);
    }
  }
}

unint64_t sub_1D5FD2964(uint64_t a1)
{
  result = sub_1D5FD298C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FD298C()
{
  result = qword_1EC881F60;
  if (!qword_1EC881F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881F60);
  }

  return result;
}

unint64_t sub_1D5FD29E0(void *a1)
{
  a1[1] = sub_1D5C5A4B8();
  a1[2] = sub_1D5C5A50C();
  result = sub_1D5C5A560();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5FD2A40()
{
  result = qword_1EC881450;
  if (!qword_1EC881450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC881450);
  }

  return result;
}

void sub_1D5FD2A8C()
{
  if (!qword_1EDF189B0)
  {
    sub_1D7258DFC();
    v0 = MEMORY[0x1E6984AE8];
    sub_1D5B57270(&qword_1EDF18A18, MEMORY[0x1E6984AE8]);
    sub_1D5B57270(&qword_1EDF18A28, v0);
    sub_1D5B57270(&qword_1EDF18A20, v0);
    v1 = sub_1D7258F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF189B0);
    }
  }
}

uint64_t sub_1D5FD2B90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t FormatContentSlotItemResolution.auxiliary.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FormatContentSlotItemResolution() + 20));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1D5D615EC(v4);
}

uint64_t FormatContentSlotItemResolution.selectors.getter()
{
  type metadata accessor for FormatContentSlotItemResolution();
}

uint64_t FormatContentSlotItemResolution.options.getter()
{
  type metadata accessor for FormatContentSlotItemResolution();
}

int *FormatContentSlotItemResolution.init(object:auxiliary:selectors:options:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  sub_1D5FD2D50(a1, a5);
  result = type metadata accessor for FormatContentSlotItemResolution();
  v11 = (a5 + result[5]);
  *v11 = v8;
  v11[1] = v9;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t sub_1D5FD2D50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5FD2DB4()
{
  v1 = 0x7463656A626FLL;
  v2 = 0x726F7463656C6573;
  if (*v0 != 2)
  {
    v2 = 0x736E6F6974706FLL;
  }

  if (*v0)
  {
    v1 = 0x7261696C69787561;
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

uint64_t sub_1D5FD2E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5FD3934(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5FD2E58(uint64_t a1)
{
  v2 = sub_1D5FD31C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5FD2E94(uint64_t a1)
{
  v2 = sub_1D5FD31C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSlotItemResolution.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5FD3714(0, &qword_1EDF02530, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5FD31C4();
  sub_1D7264B5C();
  LOBYTE(v17) = 0;
  type metadata accessor for FormatContentSlotItemObject.Resolved();
  sub_1D5FD3778(&unk_1EDF0B028, type metadata accessor for FormatContentSlotItemObject.Resolved);
  sub_1D726443C();
  if (!v2)
  {
    v11 = type metadata accessor for FormatContentSlotItemResolution();
    v12 = (v3 + v11[5]);
    v13 = v12[1];
    v17 = *v12;
    v18 = v13;
    v16 = 1;
    sub_1D5D615EC(v17);
    sub_1D5FD3218();
    sub_1D72643BC();
    sub_1D5CDE22C(v17);
    v17 = *(v3 + v11[6]);
    v16 = 2;
    sub_1D5B81B04();
    sub_1D5CB5D1C(&qword_1EDF047E0);
    sub_1D726443C();
    v17 = *(v3 + v11[7]);
    v16 = 3;
    sub_1D5B5AD98();
    sub_1D5CB5918(&qword_1EDF050B0, &qword_1EDF45940);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D5FD31C4()
{
  result = qword_1EDF09448;
  if (!qword_1EDF09448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09448);
  }

  return result;
}

unint64_t sub_1D5FD3218()
{
  result = qword_1EDF09CD0;
  if (!qword_1EDF09CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09CD0);
  }

  return result;
}

uint64_t FormatContentSlotItemResolution.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v4, v5);
  v23 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5FD3714(0, &qword_1EDF03920, MEMORY[0x1E69E6F48]);
  v24 = v7;
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for FormatContentSlotItemResolution();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5FD31C4();
  v25 = v10;
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v22;
  v16 = v14;
  LOBYTE(v26) = 0;
  sub_1D5FD3778(&qword_1EDF0B020, type metadata accessor for FormatContentSlotItemObject.Resolved);
  v18 = v23;
  v17 = v24;
  sub_1D726431C();
  sub_1D5FD2D50(v18, v16);
  v27 = 1;
  sub_1D5CB6F04();
  sub_1D726427C();
  *(v16 + v11[5]) = v26;
  sub_1D5B81B04();
  v27 = 2;
  sub_1D5CB5D1C(&qword_1EDF3C7D0);
  sub_1D726431C();
  *(v16 + v11[6]) = v26;
  sub_1D5B5AD98();
  v27 = 3;
  sub_1D5CB5918(&qword_1EDF1B350, &unk_1EDF45930);
  sub_1D726431C();
  (*(v15 + 8))(v25, v17);
  *(v16 + v11[7]) = v26;
  sub_1D5CEC6D0(v16, v21, type metadata accessor for FormatContentSlotItemResolution);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D5D1EA38(v16, type metadata accessor for FormatContentSlotItemResolution);
}

void sub_1D5FD3714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5FD31C4();
    v7 = a3(a1, &type metadata for FormatContentSlotItemResolution.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5FD3778(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5FD3830()
{
  result = qword_1EC881F68;
  if (!qword_1EC881F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881F68);
  }

  return result;
}

unint64_t sub_1D5FD3888()
{
  result = qword_1EDF09438;
  if (!qword_1EDF09438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09438);
  }

  return result;
}

unint64_t sub_1D5FD38E0()
{
  result = qword_1EDF09440;
  if (!qword_1EDF09440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09440);
  }

  return result;
}

uint64_t sub_1D5FD3934(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261696C69787561 && a2 == 0xE900000000000079 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

unint64_t FeedKind.selector.getter()
{
  result = *v0;
  switch(*v0)
  {
    case 1:
    case 0x11:
    case 0x18:
      result = 0x6E696B2D64656566;
      break;
    case 2:
    case 0xD:
    case 0x13:
      result = 0xD000000000000015;
      break;
    case 3:
    case 0xE:
      result = 0xD00000000000001DLL;
      break;
    case 4:
    case 0x10:
      result = 0xD000000000000018;
      break;
    case 5:
    case 0x16:
    case 0x1C:
      result = 0xD000000000000017;
      break;
    case 6:
    case 0xA:
      result = 0xD000000000000012;
      break;
    case 7:
    case 0x1A:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 0xB:
      result = 0xD000000000000013;
      break;
    case 0xC:
    case 0xF:
      result = 0xD000000000000014;
      break;
    case 0x12:
      result = 0xD000000000000010;
      break;
    case 0x14:
    case 0x15:
      result = 0xD00000000000001FLL;
      break;
    case 0x17:
      result = 0xD000000000000019;
      break;
    case 0x19:
      result = 0xD000000000000013;
      break;
    case 0x1B:
    case 0x1D:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FeedKind.contextMenuItemOptions.getter()
{
  v1 = *v0;
  if (v1 <= 6)
  {
    if (v1 - 4 >= 3 && v1 >= 2)
    {
      return sub_1D5E273D8(&unk_1F50F42E0);
    }

    return MEMORY[0x1E69E7CD0];
  }

  v2 = &unk_1F50F42B8;
  if (v1 <= 0x1D)
  {
    v3 = 1 << v1;
    if ((v3 & 0x27FF9F00) == 0)
    {
      v4 = &unk_1F50F4330;
      if ((v3 & 0x18000000) == 0)
      {
        v4 = &unk_1F50F42B8;
      }

      if ((v3 & 0x6000) != 0)
      {
        return sub_1D5E273D8(&unk_1F50F4308);
      }

      v2 = v4;
      return sub_1D5E273D8(v2);
    }

    return MEMORY[0x1E69E7CD0];
  }

  return sub_1D5E273D8(v2);
}

NewsFeed::FeedKind_optional __swiftcall FeedKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72648CC();

  v5 = 0;
  v6 = 12;
  switch(v3)
  {
    case 0:
      goto LABEL_24;
    case 1:
      v5 = 1;
      goto LABEL_24;
    case 2:
      v5 = 2;
      goto LABEL_24;
    case 3:
      v5 = 3;
      goto LABEL_24;
    case 4:
      v5 = 4;
      goto LABEL_24;
    case 5:
      v5 = 5;
      goto LABEL_24;
    case 6:
      v5 = 6;
      goto LABEL_24;
    case 7:
      v5 = 7;
      goto LABEL_24;
    case 8:
      v5 = 8;
      goto LABEL_24;
    case 9:
      v5 = 9;
      goto LABEL_24;
    case 10:
      v5 = 10;
      goto LABEL_24;
    case 11:
      v5 = 11;
LABEL_24:
      v6 = v5;
      break;
    case 12:
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    default:
      v6 = 30;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t FeedKind.rawValue.getter()
{
  result = 0x746C7561666564;
  switch(*v0)
  {
    case 1:
      result = 0x6F69647561;
      break;
    case 2:
      result = 0x6C656E6E616863;
      break;
    case 3:
      result = 0x536C656E6E616863;
      break;
    case 4:
      result = 0x747241664F646E65;
      break;
    case 5:
      result = 0x636552664F646E65;
      break;
    case 6:
      result = 0x627548646F6F66;
      break;
    case 7:
      result = 0x79726F74736968;
      break;
    case 8:
      result = 0x6C61636F6CLL;
      break;
    case 9:
      result = 0x6365536C61636F6CLL;
      break;
    case 0xA:
      result = 0x656E697A6167616DLL;
      break;
    case 0xB:
      result = 0x7374726F7053796DLL;
      break;
    case 0xC:
      result = 0x7548656C7A7A7570;
      break;
    case 0xD:
      result = 0x7954656C7A7A7570;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
      result = 0x6F42657069636572;
      break;
    case 0x10:
      result = 0x6143657069636572;
      break;
    case 0x11:
      result = 0x6465766173;
      break;
    case 0x12:
      result = 0x686372616573;
      break;
    case 0x13:
      result = 0x6F4D686372616573;
      break;
    case 0x14:
      result = 0xD000000000000013;
      break;
    case 0x15:
      result = 0xD000000000000013;
      break;
    case 0x16:
      result = 0x7053686372616573;
      break;
    case 0x17:
      result = 0x6957646572616873;
      break;
    case 0x18:
      result = 0x7961646F74;
      break;
    case 0x19:
      result = 0x6369706F74;
      break;
    case 0x1A:
      result = 0x6E776F6E6B6E75;
      break;
    case 0x1B:
      result = 0x6F54736B636F7473;
      break;
    case 0x1C:
      result = 0x7953736B636F7473;
      break;
    case 0x1D:
      result = 0x76457374726F7073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5FD42A4()
{
  v0 = FeedKind.rawValue.getter();
  v2 = v1;
  if (v0 == FeedKind.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D5FD4340()
{
  sub_1D7264A0C();
  FeedKind.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5FD43A8()
{
  FeedKind.rawValue.getter();
  sub_1D72621EC();
}

uint64_t sub_1D5FD440C()
{
  sub_1D7264A0C();
  FeedKind.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D5FD447C@<X0>(unint64_t *a1@<X8>)
{
  result = FeedKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D5FD44A4(uint64_t a1)
{
  v2 = sub_1D5FD4C18();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D5FD44F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5FD4C18();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D5FD4554(uint64_t a1)
{
  v2 = sub_1D5FD4C18();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t FeedKind.description.getter()
{
  result = 0x746C7561666544;
  switch(*v0)
  {
    case 1:
      result = 0x6F69647541;
      break;
    case 2:
      result = 0x6C656E6E616843;
      break;
    case 3:
      result = 0x206C656E6E616843;
      break;
    case 4:
      result = 0x4120666F20646E45;
      break;
    case 5:
      result = 0x5220666F20646E45;
      break;
    case 6:
      result = 1685024582;
      break;
    case 7:
      result = 0x79726F74736948;
      break;
    case 8:
      result = 0x6C61636F4CLL;
      break;
    case 9:
      result = 0x6553206C61636F4CLL;
      break;
    case 0xA:
      result = 0x656E697A6167614DLL;
      break;
    case 0xB:
      result = 0x74726F705320794DLL;
      break;
    case 0xC:
      result = 0x4820656C7A7A7550;
      break;
    case 0xD:
      result = 0x5420656C7A7A7550;
      break;
    case 0xE:
      result = 0xD000000000000013;
      break;
    case 0xF:
      result = 0x4220657069636552;
      break;
    case 0x10:
      result = 0x73657069636552;
      break;
    case 0x11:
      result = 0x6465766153;
      break;
    case 0x12:
      result = 0x686372616553;
      break;
    case 0x13:
      result = 0x4D20686372616553;
      break;
    case 0x14:
      result = 0xD000000000000015;
      break;
    case 0x15:
      result = 0x5220686372616553;
      break;
    case 0x16:
      result = 0x5320686372616553;
      break;
    case 0x17:
      result = 0x5720646572616853;
      break;
    case 0x18:
      result = 0x7961646F54;
      break;
    case 0x19:
      result = 0x6369706F54;
      break;
    case 0x1A:
      result = 0x6E776F6E6B6E55;
      break;
    case 0x1B:
      result = 0x5420736B636F7453;
      break;
    case 0x1C:
      result = 0x5320736B636F7453;
      break;
    case 0x1D:
      result = 0x45207374726F7053;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5FD49C8()
{
  result = qword_1EC881F70;
  if (!qword_1EC881F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881F70);
  }

  return result;
}

unint64_t sub_1D5FD4A20()
{
  result = qword_1EC881F78;
  if (!qword_1EC881F78)
  {
    sub_1D5FD4A78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881F78);
  }

  return result;
}

void sub_1D5FD4A78()
{
  if (!qword_1EC881F80)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC881F80);
    }
  }
}

uint64_t getEnumTagSinglePayload for FeedKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeedKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D5FD4C18()
{
  result = qword_1EC881F88;
  if (!qword_1EC881F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881F88);
  }

  return result;
}

uint64_t FormatBreakpointNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatBreakpointNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatBreakpointNode.filePath.getter()
{
  v1 = *(v0 + 48);

  return v1;
}