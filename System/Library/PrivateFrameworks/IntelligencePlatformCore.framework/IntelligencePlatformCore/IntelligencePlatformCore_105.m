uint64_t sub_1C4D4A8FC(uint64_t *a1)
{
  v3 = [BiomeLibrary() WalletPaymentsCommerce];
  sub_1C4416A80();
  swift_unknownObjectRelease();
  v4 = [v1 FoundIn];
  swift_unknownObjectRelease();
  v5 = *a1;
  v6 = a1[1];
  if (qword_1EDDFD1F0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Source();
  v8 = sub_1C442B738(v7, &qword_1EDDFD1F8);
  v10 = sub_1C44209D0(v8) == v5 && v9 == v6;
  if (v10 || (sub_1C4424DC0() & 1) != 0)
  {
    v11 = &selRef_ClassicOrder;
  }

  else
  {
    if (qword_1EDDFD288 != -1)
    {
      sub_1C440B8A0();
    }

    v14 = sub_1C442B738(v7, &qword_1EDDFD290);
    if (sub_1C44209D0(v14) == v5 && v15 == v6)
    {
      v11 = &selRef_OrderEmail;
    }

    else
    {
      v11 = &selRef_OrderEmail;
      if ((sub_1C4424DC0() & 1) == 0)
      {
        if (qword_1EDDFD1C8 != -1)
        {
          swift_once();
        }

        v17 = sub_1C442B738(v7, &qword_1EDDFD1D0);
        v19 = sub_1C44209D0(v17) == v5 && v18 == v6;
        if (v19 || (sub_1C4424DC0() & 1) != 0)
        {
          v11 = &selRef_TrackedOrder;
        }

        else
        {
          if (qword_1EDDFD1A0 != -1)
          {
            swift_once();
          }

          v20 = sub_1C442B738(v7, &qword_1EDDFD1A8);
          v11 = &selRef_Transaction;
          v22 = sub_1C44209D0(v20) == v5 && v21 == v6;
          if (!v22 && (sub_1C4424DC0() & 1) == 0)
          {
            v11 = &selRef_OrderEmail;
          }
        }
      }
    }
  }

  v12 = [v4 *v11];
  sub_1C4416A80();
  swift_unknownObjectRelease();
  return v5;
}

void sub_1C4D4AB44(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v65 = a8;
  v66 = a9;
  v69 = a6;
  v70 = a7;
  v67 = a1;
  v68 = a5;
  v71 = a2;
  v16 = type metadata accessor for Source();
  v64 = *(v16 - 8);
  v17 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v74 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PhaseStores();
  v63 = *(v18 - 8);
  v19 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v73 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WalletEmailOrderSourceIngestor(0);
  v62 = *(v20 - 8);
  v21 = v62[8];
  MEMORY[0x1EEE9AC00](v20 - 8);
  v72 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v54 - v27;
  sub_1C4EF9AC8();
  v29 = sub_1C4EF9CD8();
  sub_1C440BAA8(v28, 0, 1, v29);
  sub_1C440BAA8(v25, 1, 1, v29);
  v30 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v31 = sub_1C457A86C(v28, v25, 0, 0, 0);
  v32 = sub_1C4D4A8FC(a4);
  if (v13)
  {
  }

  else
  {
    v33 = v32;
    v59 = a13;
    v58 = a12;
    v57 = a10;
    v61 = [v32 publisherWithOptions_];

    v79 = nullsub_1;
    v80 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v56 = &v77;
    v77 = sub_1C44405F8;
    v78 = &unk_1F440D348;
    v60 = _Block_copy(&aBlock);
    sub_1C448D19C(a3, v72);
    sub_1C448D19C(a11, v73);
    sub_1C448D19C(a4, v74);
    v34 = *(v62 + 80);
    v62 = v31;
    v35 = (v34 + 16) & ~v34;
    v36 = (v21 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = *(v63 + 80);
    v63 = 0;
    v41 = (v40 + v39 + 9) & ~v40;
    v42 = (v19 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
    v55 = (*(v64 + 80) + v43 + 8) & ~*(v64 + 80);
    v64 = (v17 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    sub_1C4D4E94C(v72, v44 + v35);
    *(v44 + v36) = v68;
    *(v44 + v37) = v69;
    *(v44 + v38) = v70;
    v45 = v44 + v39;
    *v45 = v65;
    *(v45 + 8) = v57;
    sub_1C4D4E94C(v73, v44 + v41);
    v46 = (v44 + v42);
    v47 = v71;
    *v46 = v67;
    v46[1] = v47;
    *(v44 + v43) = v58;
    sub_1C4D4E94C(v74, v44 + v55);
    v48 = v59;
    *(v44 + v64) = v59;
    v79 = sub_1C4D4E9A8;
    v80 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1C462BCF4;
    v78 = &unk_1F440D398;
    v49 = _Block_copy(&aBlock);

    v50 = v48;

    v52 = v60;
    v51 = v61;
    v53 = [v61 sinkWithCompletion:v60 shouldContinue:v49];

    _Block_release(v49);
    _Block_release(v52);

    swift_beginAccess();
    *v66 = *(v50 + 16);
  }
}

void sub_1C4D4B1B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v65 = a8;
  v66 = a9;
  v69 = a6;
  v70 = a7;
  v67 = a1;
  v68 = a5;
  v71 = a2;
  v16 = type metadata accessor for Source();
  v64 = *(v16 - 8);
  v17 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v74 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PhaseStores();
  v63 = *(v18 - 8);
  v19 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v73 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WalletClassicOrderSourceIngestor(0);
  v62 = *(v20 - 8);
  v21 = v62[8];
  MEMORY[0x1EEE9AC00](v20 - 8);
  v72 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v54 - v27;
  sub_1C4EF9AC8();
  v29 = sub_1C4EF9CD8();
  sub_1C440BAA8(v28, 0, 1, v29);
  sub_1C440BAA8(v25, 1, 1, v29);
  v30 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v31 = sub_1C457A86C(v28, v25, 0, 0, 0);
  v32 = sub_1C4D4A8FC(a4);
  if (v13)
  {
  }

  else
  {
    v33 = v32;
    v59 = a13;
    v58 = a12;
    v57 = a10;
    v61 = [v32 publisherWithOptions_];

    v79 = nullsub_1;
    v80 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v56 = &v77;
    v77 = sub_1C44405F8;
    v78 = &unk_1F440D618;
    v60 = _Block_copy(&aBlock);
    sub_1C448D19C(a3, v72);
    sub_1C448D19C(a11, v73);
    sub_1C448D19C(a4, v74);
    v34 = *(v62 + 80);
    v62 = v31;
    v35 = (v34 + 16) & ~v34;
    v36 = (v21 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = *(v63 + 80);
    v63 = 0;
    v41 = (v40 + v39 + 9) & ~v40;
    v42 = (v19 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
    v55 = (*(v64 + 80) + v43 + 8) & ~*(v64 + 80);
    v64 = (v17 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    sub_1C4D4E94C(v72, v44 + v35);
    *(v44 + v36) = v68;
    *(v44 + v37) = v69;
    *(v44 + v38) = v70;
    v45 = v44 + v39;
    *v45 = v65;
    *(v45 + 8) = v57;
    sub_1C4D4E94C(v73, v44 + v41);
    v46 = (v44 + v42);
    v47 = v71;
    *v46 = v67;
    v46[1] = v47;
    *(v44 + v43) = v58;
    sub_1C4D4E94C(v74, v44 + v55);
    v48 = v59;
    *(v44 + v64) = v59;
    v79 = sub_1C4D4F504;
    v80 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1C462BCF4;
    v78 = &unk_1F440D668;
    v49 = _Block_copy(&aBlock);

    v50 = v48;

    v52 = v60;
    v51 = v61;
    v53 = [v61 sinkWithCompletion:v60 shouldContinue:v49];

    _Block_release(v49);
    _Block_release(v52);

    swift_beginAccess();
    *v66 = *(v50 + 16);
  }
}

void sub_1C4D4B81C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v65 = a8;
  v66 = a9;
  v69 = a6;
  v70 = a7;
  v67 = a1;
  v68 = a5;
  v71 = a2;
  v16 = type metadata accessor for Source();
  v64 = *(v16 - 8);
  v17 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v74 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PhaseStores();
  v63 = *(v18 - 8);
  v19 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v73 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WalletTrackedOrderSourceIngestor(0);
  v62 = *(v20 - 8);
  v21 = v62[8];
  MEMORY[0x1EEE9AC00](v20 - 8);
  v72 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v54 - v27;
  sub_1C4EF9AC8();
  v29 = sub_1C4EF9CD8();
  sub_1C440BAA8(v28, 0, 1, v29);
  sub_1C440BAA8(v25, 1, 1, v29);
  v30 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v31 = sub_1C457A86C(v28, v25, 0, 0, 0);
  v32 = sub_1C4D4A8FC(a4);
  if (v13)
  {
  }

  else
  {
    v33 = v32;
    v59 = a13;
    v58 = a12;
    v57 = a10;
    v61 = [v32 publisherWithOptions_];

    v79 = nullsub_1;
    v80 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v56 = &v77;
    v77 = sub_1C44405F8;
    v78 = &unk_1F440D438;
    v60 = _Block_copy(&aBlock);
    sub_1C448D19C(a3, v72);
    sub_1C448D19C(a11, v73);
    sub_1C448D19C(a4, v74);
    v34 = *(v62 + 80);
    v62 = v31;
    v35 = (v34 + 16) & ~v34;
    v36 = (v21 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = *(v63 + 80);
    v63 = 0;
    v41 = (v40 + v39 + 9) & ~v40;
    v42 = (v19 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
    v55 = (*(v64 + 80) + v43 + 8) & ~*(v64 + 80);
    v64 = (v17 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    sub_1C4D4E94C(v72, v44 + v35);
    *(v44 + v36) = v68;
    *(v44 + v37) = v69;
    *(v44 + v38) = v70;
    v45 = v44 + v39;
    *v45 = v65;
    *(v45 + 8) = v57;
    sub_1C4D4E94C(v73, v44 + v41);
    v46 = (v44 + v42);
    v47 = v71;
    *v46 = v67;
    v46[1] = v47;
    *(v44 + v43) = v58;
    sub_1C4D4E94C(v74, v44 + v55);
    v48 = v59;
    *(v44 + v64) = v59;
    v79 = sub_1C4D4EFE4;
    v80 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1C462BCF4;
    v78 = &unk_1F440D488;
    v49 = _Block_copy(&aBlock);

    v50 = v48;

    v52 = v60;
    v51 = v61;
    v53 = [v61 sinkWithCompletion:v60 shouldContinue:v49];

    _Block_release(v49);
    _Block_release(v52);

    swift_beginAccess();
    *v66 = *(v50 + 16);
  }
}

void sub_1C4D4BE88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v65 = a8;
  v66 = a9;
  v69 = a6;
  v70 = a7;
  v67 = a1;
  v68 = a5;
  v71 = a2;
  v16 = type metadata accessor for Source();
  v64 = *(v16 - 8);
  v17 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v74 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PhaseStores();
  v63 = *(v18 - 8);
  v19 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v73 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WalletEmailOrderDeltaSourceIngestor(0);
  v62 = *(v20 - 8);
  v21 = v62[8];
  MEMORY[0x1EEE9AC00](v20 - 8);
  v72 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v54 - v27;
  sub_1C4EF9AC8();
  v29 = sub_1C4EF9CD8();
  sub_1C440BAA8(v28, 0, 1, v29);
  sub_1C440BAA8(v25, 1, 1, v29);
  v30 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v31 = sub_1C457A86C(v28, v25, 0, 0, 0);
  v32 = sub_1C4D4A8FC(a4);
  if (v13)
  {
  }

  else
  {
    v33 = v32;
    v59 = a13;
    v58 = a12;
    v57 = a10;
    v61 = [v32 publisherWithOptions_];

    v79 = nullsub_1;
    v80 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v56 = &v77;
    v77 = sub_1C44405F8;
    v78 = &unk_1F440D3C0;
    v60 = _Block_copy(&aBlock);
    sub_1C448D19C(a3, v72);
    sub_1C448D19C(a11, v73);
    sub_1C448D19C(a4, v74);
    v34 = *(v62 + 80);
    v62 = v31;
    v35 = (v34 + 16) & ~v34;
    v36 = (v21 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = *(v63 + 80);
    v63 = 0;
    v41 = (v40 + v39 + 9) & ~v40;
    v42 = (v19 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
    v55 = (*(v64 + 80) + v43 + 8) & ~*(v64 + 80);
    v64 = (v17 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    sub_1C4D4E94C(v72, v44 + v35);
    *(v44 + v36) = v68;
    *(v44 + v37) = v69;
    *(v44 + v38) = v70;
    v45 = v44 + v39;
    *v45 = v65;
    *(v45 + 8) = v57;
    sub_1C4D4E94C(v73, v44 + v41);
    v46 = (v44 + v42);
    v47 = v71;
    *v46 = v67;
    v46[1] = v47;
    *(v44 + v43) = v58;
    sub_1C4D4E94C(v74, v44 + v55);
    v48 = v59;
    *(v44 + v64) = v59;
    v79 = sub_1C4D4EA00;
    v80 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1C462BCF4;
    v78 = &unk_1F440D410;
    v49 = _Block_copy(&aBlock);

    v50 = v48;

    v52 = v60;
    v51 = v61;
    v53 = [v61 sinkWithCompletion:v60 shouldContinue:v49];

    _Block_release(v49);
    _Block_release(v52);

    swift_beginAccess();
    *v66 = *(v50 + 16);
  }
}

void sub_1C4D4C4F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v65 = a8;
  v66 = a9;
  v69 = a6;
  v70 = a7;
  v67 = a1;
  v68 = a5;
  v71 = a2;
  v16 = type metadata accessor for Source();
  v64 = *(v16 - 8);
  v17 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v74 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PhaseStores();
  v63 = *(v18 - 8);
  v19 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v73 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WalletTransactionOrderSourceIngestor(0);
  v62 = *(v20 - 8);
  v21 = v62[8];
  MEMORY[0x1EEE9AC00](v20 - 8);
  v72 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v54 - v27;
  sub_1C4EF9AC8();
  v29 = sub_1C4EF9CD8();
  sub_1C440BAA8(v28, 0, 1, v29);
  sub_1C440BAA8(v25, 1, 1, v29);
  v30 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v31 = sub_1C457A86C(v28, v25, 0, 0, 0);
  v32 = sub_1C4D4A8FC(a4);
  if (v13)
  {
  }

  else
  {
    v33 = v32;
    v59 = a13;
    v58 = a12;
    v57 = a10;
    v61 = [v32 publisherWithOptions_];

    v79 = nullsub_1;
    v80 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v56 = &v77;
    v77 = sub_1C44405F8;
    v78 = &unk_1F440D528;
    v60 = _Block_copy(&aBlock);
    sub_1C448D19C(a3, v72);
    sub_1C448D19C(a11, v73);
    sub_1C448D19C(a4, v74);
    v34 = *(v62 + 80);
    v62 = v31;
    v35 = (v34 + 16) & ~v34;
    v36 = (v21 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = *(v63 + 80);
    v63 = 0;
    v41 = (v40 + v39 + 9) & ~v40;
    v42 = (v19 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
    v55 = (*(v64 + 80) + v43 + 8) & ~*(v64 + 80);
    v64 = (v17 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    sub_1C4D4E94C(v72, v44 + v35);
    *(v44 + v36) = v68;
    *(v44 + v37) = v69;
    *(v44 + v38) = v70;
    v45 = v44 + v39;
    *v45 = v65;
    *(v45 + 8) = v57;
    sub_1C4D4E94C(v73, v44 + v41);
    v46 = (v44 + v42);
    v47 = v71;
    *v46 = v67;
    v46[1] = v47;
    *(v44 + v43) = v58;
    sub_1C4D4E94C(v74, v44 + v55);
    v48 = v59;
    *(v44 + v64) = v59;
    v79 = sub_1C4D4F454;
    v80 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1C462BCF4;
    v78 = &unk_1F440D578;
    v49 = _Block_copy(&aBlock);

    v50 = v48;

    v52 = v60;
    v51 = v61;
    v53 = [v61 sinkWithCompletion:v60 shouldContinue:v49];

    _Block_release(v49);
    _Block_release(v52);

    swift_beginAccess();
    *v66 = *(v50 + 16);
  }
}

void sub_1C4D4CB60(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v65 = a8;
  v66 = a9;
  v69 = a6;
  v70 = a7;
  v67 = a1;
  v68 = a5;
  v71 = a2;
  v16 = type metadata accessor for Source();
  v64 = *(v16 - 8);
  v17 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v74 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PhaseStores();
  v63 = *(v18 - 8);
  v19 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v73 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WalletClassicOrderDeltaSourceIngestor(0);
  v62 = *(v20 - 8);
  v21 = v62[8];
  MEMORY[0x1EEE9AC00](v20 - 8);
  v72 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v54 - v27;
  sub_1C4EF9AC8();
  v29 = sub_1C4EF9CD8();
  sub_1C440BAA8(v28, 0, 1, v29);
  sub_1C440BAA8(v25, 1, 1, v29);
  v30 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v31 = sub_1C457A86C(v28, v25, 0, 0, 0);
  v32 = sub_1C4D4A8FC(a4);
  if (v13)
  {
  }

  else
  {
    v33 = v32;
    v59 = a13;
    v58 = a12;
    v57 = a10;
    v61 = [v32 publisherWithOptions_];

    v79 = nullsub_1;
    v80 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v56 = &v77;
    v77 = sub_1C44405F8;
    v78 = &unk_1F440D690;
    v60 = _Block_copy(&aBlock);
    sub_1C448D19C(a3, v72);
    sub_1C448D19C(a11, v73);
    sub_1C448D19C(a4, v74);
    v34 = *(v62 + 80);
    v62 = v31;
    v35 = (v34 + 16) & ~v34;
    v36 = (v21 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = *(v63 + 80);
    v63 = 0;
    v41 = (v40 + v39 + 9) & ~v40;
    v42 = (v19 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
    v55 = (*(v64 + 80) + v43 + 8) & ~*(v64 + 80);
    v64 = (v17 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    sub_1C4D4E94C(v72, v44 + v35);
    *(v44 + v36) = v68;
    *(v44 + v37) = v69;
    *(v44 + v38) = v70;
    v45 = v44 + v39;
    *v45 = v65;
    *(v45 + 8) = v57;
    sub_1C4D4E94C(v73, v44 + v41);
    v46 = (v44 + v42);
    v47 = v71;
    *v46 = v67;
    v46[1] = v47;
    *(v44 + v43) = v58;
    sub_1C4D4E94C(v74, v44 + v55);
    v48 = v59;
    *(v44 + v64) = v59;
    v79 = sub_1C4D4F5AC;
    v80 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1C462BCF4;
    v78 = &unk_1F440D6E0;
    v49 = _Block_copy(&aBlock);

    v50 = v48;

    v52 = v60;
    v51 = v61;
    v53 = [v61 sinkWithCompletion:v60 shouldContinue:v49];

    _Block_release(v49);
    _Block_release(v52);

    swift_beginAccess();
    *v66 = *(v50 + 16);
  }
}

void sub_1C4D4D1CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v65 = a8;
  v66 = a9;
  v69 = a6;
  v70 = a7;
  v67 = a1;
  v68 = a5;
  v71 = a2;
  v16 = type metadata accessor for Source();
  v64 = *(v16 - 8);
  v17 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v74 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PhaseStores();
  v63 = *(v18 - 8);
  v19 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v73 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WalletTrackedOrderDeltaSourceIngestor(0);
  v62 = *(v20 - 8);
  v21 = v62[8];
  MEMORY[0x1EEE9AC00](v20 - 8);
  v72 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v54 - v27;
  sub_1C4EF9AC8();
  v29 = sub_1C4EF9CD8();
  sub_1C440BAA8(v28, 0, 1, v29);
  sub_1C440BAA8(v25, 1, 1, v29);
  v30 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v31 = sub_1C457A86C(v28, v25, 0, 0, 0);
  v32 = sub_1C4D4A8FC(a4);
  if (v13)
  {
  }

  else
  {
    v33 = v32;
    v59 = a13;
    v58 = a12;
    v57 = a10;
    v61 = [v32 publisherWithOptions_];

    v79 = nullsub_1;
    v80 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v56 = &v77;
    v77 = sub_1C44405F8;
    v78 = &unk_1F440D4B0;
    v60 = _Block_copy(&aBlock);
    sub_1C448D19C(a3, v72);
    sub_1C448D19C(a11, v73);
    sub_1C448D19C(a4, v74);
    v34 = *(v62 + 80);
    v62 = v31;
    v35 = (v34 + 16) & ~v34;
    v36 = (v21 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = *(v63 + 80);
    v63 = 0;
    v41 = (v40 + v39 + 9) & ~v40;
    v42 = (v19 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
    v55 = (*(v64 + 80) + v43 + 8) & ~*(v64 + 80);
    v64 = (v17 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    sub_1C4D4E94C(v72, v44 + v35);
    *(v44 + v36) = v68;
    *(v44 + v37) = v69;
    *(v44 + v38) = v70;
    v45 = v44 + v39;
    *v45 = v65;
    *(v45 + 8) = v57;
    sub_1C4D4E94C(v73, v44 + v41);
    v46 = (v44 + v42);
    v47 = v71;
    *v46 = v67;
    v46[1] = v47;
    *(v44 + v43) = v58;
    sub_1C4D4E94C(v74, v44 + v55);
    v48 = v59;
    *(v44 + v64) = v59;
    v79 = sub_1C4D4F3FC;
    v80 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1C462BCF4;
    v78 = &unk_1F440D500;
    v49 = _Block_copy(&aBlock);

    v50 = v48;

    v52 = v60;
    v51 = v61;
    v53 = [v61 sinkWithCompletion:v60 shouldContinue:v49];

    _Block_release(v49);
    _Block_release(v52);

    swift_beginAccess();
    *v66 = *(v50 + 16);
  }
}

void sub_1C4D4D838(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v65 = a8;
  v66 = a9;
  v69 = a6;
  v70 = a7;
  v67 = a1;
  v68 = a5;
  v71 = a2;
  v16 = type metadata accessor for Source();
  v64 = *(v16 - 8);
  v17 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v74 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PhaseStores();
  v63 = *(v18 - 8);
  v19 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v73 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WalletTransactionOrderDeltaSourceIngestor(0);
  v62 = *(v20 - 8);
  v21 = v62[8];
  MEMORY[0x1EEE9AC00](v20 - 8);
  v72 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v54 - v27;
  sub_1C4EF9AC8();
  v29 = sub_1C4EF9CD8();
  sub_1C440BAA8(v28, 0, 1, v29);
  sub_1C440BAA8(v25, 1, 1, v29);
  v30 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v31 = sub_1C457A86C(v28, v25, 0, 0, 0);
  v32 = sub_1C4D4A8FC(a4);
  if (v13)
  {
  }

  else
  {
    v33 = v32;
    v59 = a13;
    v58 = a12;
    v57 = a10;
    v61 = [v32 publisherWithOptions_];

    v79 = nullsub_1;
    v80 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v56 = &v77;
    v77 = sub_1C44405F8;
    v78 = &unk_1F440D5A0;
    v60 = _Block_copy(&aBlock);
    sub_1C448D19C(a3, v72);
    sub_1C448D19C(a11, v73);
    sub_1C448D19C(a4, v74);
    v34 = *(v62 + 80);
    v62 = v31;
    v35 = (v34 + 16) & ~v34;
    v36 = (v21 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = *(v63 + 80);
    v63 = 0;
    v41 = (v40 + v39 + 9) & ~v40;
    v42 = (v19 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
    v55 = (*(v64 + 80) + v43 + 8) & ~*(v64 + 80);
    v64 = (v17 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    sub_1C4D4E94C(v72, v44 + v35);
    *(v44 + v36) = v68;
    *(v44 + v37) = v69;
    *(v44 + v38) = v70;
    v45 = v44 + v39;
    *v45 = v65;
    *(v45 + 8) = v57;
    sub_1C4D4E94C(v73, v44 + v41);
    v46 = (v44 + v42);
    v47 = v71;
    *v46 = v67;
    v46[1] = v47;
    *(v44 + v43) = v58;
    sub_1C4D4E94C(v74, v44 + v55);
    v48 = v59;
    *(v44 + v64) = v59;
    v79 = sub_1C4D4F4AC;
    v80 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1C462BCF4;
    v78 = &unk_1F440D5F0;
    v49 = _Block_copy(&aBlock);

    v50 = v48;

    v52 = v60;
    v51 = v61;
    v53 = [v61 sinkWithCompletion:v60 shouldContinue:v49];

    _Block_release(v49);
    _Block_release(v52);

    swift_beginAccess();
    *v66 = *(v50 + 16);
  }
}

uint64_t sub_1C4D4DEA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8, void (*a9)(uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(void))
{
  v19 = objc_autoreleasePoolPush();
  a14();
  sub_1C440F1BC();
  swift_beginAccess();
  v20 = *(a3 + 16);
  if (v20)
  {
    goto LABEL_15;
  }

  v21 = &off_1E81F1000;
  if (([a1 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_15;
  }

  v42 = [a1 eventBody];
  sub_1C4434348();
  result = swift_beginAccess();
  v23 = *(a4 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_23;
  }

  *(a4 + 16) = v25;
  sub_1C440F1BC();
  swift_beginAccess();
  v26 = *(a5 + 16);
  if (v26)
  {
    sub_1C440F1BC();
    swift_beginAccess();
    v27 = *(a6 + 16);
    v28 = [a1 respondsToSelector_];
    v29 = v26;
    v30 = 0;
    if (v28)
    {
      [a1 timestamp];
      v30 = v31;
    }

    v44[0] = a7;
    BMEventBase.ingestBaseEvent(startTime:endTime:pipelineType:stores:)(v30, (v28 & 1) == 0, v44);
    sub_1C4812140();
    v35 = v34;

    a9(v35);

    if (v42)
    {
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      v21 = &off_1E81F1000;
      if (v38)
      {
        swift_unknownObjectRetain();
      }
    }

    else
    {
      v38 = 0;
      v21 = &off_1E81F1000;
    }

    sub_1C4434348();
    swift_beginAccess();
    v39 = *(a5 + 16);
    *(a5 + 16) = v38;

    sub_1C4434348();
    result = swift_beginAccess();
    v40 = *(a11 + 16);
    v24 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (!v24)
    {
      *(a11 + 16) = v41;
      v32 = &selRef_localizedName;
      goto LABEL_13;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v32 = &selRef_localizedName;
  if (v42)
  {
    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    v33 = 0;
  }

  sub_1C4434348();
  swift_beginAccess();
  *(a5 + 16) = v33;
LABEL_13:
  result = [a1 v21[232]];
  if (result)
  {
    [a1 v32[469]];
    v37 = v36;
    swift_unknownObjectRelease();
    sub_1C4434348();
    swift_beginAccess();
    *(a6 + 16) = v37;
LABEL_15:
    objc_autoreleasePoolPop(v19);
    return v20 == 0;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1C4D4E224(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {
    v10 = a1;
  }

  else
  {
    v10 = 0;
  }

  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v10, v11);

  if (a4)
  {
    v12 = a4;
  }

  else
  {
    a3 = 0;
    v12 = 0xE000000000000000;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](a3, v12);

  if (a6)
  {
    v13 = a6;
  }

  else
  {
    a5 = 0;
    v13 = 0xE000000000000000;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](a5, v13);

  if (qword_1EDDE92E8 != -1)
  {
    sub_1C4440B14();
    swift_once();
  }

  v14 = type metadata accessor for SourceIdPrefix();
  sub_1C442B738(v14, qword_1EDE2D008);
  String.base64EncodedSHA(withPrefix:)();
  v16 = v15;

  return v16;
}

uint64_t sub_1C4D4E35C()
{
  sub_1C467CD60();
  v1 = v7;
  v2 = type metadata accessor for WalletEmailOrderDeltaSourceIngestor(0);
  v3 = *(v0 + *(v2 + 24));
  if (qword_1EDDFD288 != -1)
  {
    sub_1C440B8A0();
  }

  if (v8)
  {
    v1 = 0;
  }

  v4 = type metadata accessor for Source();
  v5 = sub_1C442B738(v4, &qword_1EDDFD290);
  return sub_1C4D451FC(v1, v8, v3, v5, v0 + *(v2 + 20));
}

uint64_t sub_1C4D4E414()
{
  sub_1C4D4E35C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4D4E4B0(uint64_t a1)
{
  v2 = *(a1 + 20);
  sub_1C4459C60();
  return sub_1C448D19C(v1 + v3, v4);
}

void sub_1C4D4E4DC()
{
  v1 = *(v0 + *(type metadata accessor for WalletEmailOrderSourceIngestor(0) + 24));
  if (qword_1EDDFD288 != -1)
  {
    sub_1C440B8A0();
  }

  v2 = type metadata accessor for Source();
  sub_1C442B738(v2, &qword_1EDDFD290);
  sub_1C4D4459C();
}

uint64_t sub_1C4D4E55C()
{
  sub_1C4D4E4DC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4D4E5D4(uint64_t a1)
{
  v2 = *(a1 + 20);
  sub_1C441AAFC();
  return sub_1C448D19C(v1 + v3, v4);
}

uint64_t sub_1C4D4E63C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1C4D4E694()
{
  result = qword_1EC0C68D0;
  if (!qword_1EC0C68D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C68D0);
  }

  return result;
}

uint64_t sub_1C4D4E778(uint64_t a1)
{
  result = sub_1C4D4E828(qword_1EDDDEDC0, type metadata accessor for WalletEmailOrderSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D4E7D0(uint64_t a1)
{
  result = sub_1C4D4E828(&qword_1EDDDEDA8, type metadata accessor for WalletEmailOrderSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D4E828(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4D4E870(uint64_t a1)
{
  result = sub_1C4D4E828(qword_1EDDDCE90, type metadata accessor for WalletEmailOrderDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D4E8C8(uint64_t a1)
{
  result = sub_1C4D4E828(&qword_1EDDDCE78, type metadata accessor for WalletEmailOrderDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D4E94C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C4D4EA2C(void *a1, uint64_t (*a2)(void), void (*a3)(void))
{
  v5 = a2(0);
  sub_1C43FCF7C(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = type metadata accessor for PhaseStores();
  sub_1C43FCF7C(v13);
  v15 = (*(v14 + 80) + v12 + 9) & ~*(v14 + 80);
  v17 = (*(v16 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = type metadata accessor for Source();
  sub_1C43FCF7C(v19);
  v21 = v20;
  v23 = v22;
  v24 = (*(v21 + 80) + v18 + 8) & ~*(v21 + 80);
  return sub_1C4D4DEA4(a1, v3 + v7, *(v3 + v9), *(v3 + v10), *(v3 + v11), *(v3 + v12), *(v3 + v12 + 8), v3 + v15, *(v3 + v17), *(v3 + v17 + 8), *(v3 + v18), v3 + v24, *(v3 + ((*(v23 + 64) + v24 + 7) & 0xFFFFFFFFFFFFFFF8)), a3) & 1;
}

uint64_t sub_1C4D4EC24(uint64_t (*a1)(void))
{
  v3 = (a1(0) - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(*v3 + 64) + v5;
  sub_1C4460918();
  v62 = v7;
  sub_1C4413D10();
  v63 = v8;
  sub_1C4413D10();
  v64 = v9;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = type metadata accessor for PhaseStores();
  sub_1C441EAC8(v11);
  v13 = *(v12 + 80);
  v61 = (v13 + v10 + 9) & ~v13;
  v15 = *(v14 + 64) + v61;
  sub_1C4460918();
  v68 = v16;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v66 = v17;
  v18 = type metadata accessor for Source();
  sub_1C4D4F650(v18);
  v20 = v19;
  v22 = v21;
  v23 = *(v20 + 80);
  v65 = (v23 + v17 + 8) & ~v23;
  v24 = *(v22 + 64);
  v69 = v4 | v13 | v23;
  sub_1C4460918();
  v67 = v25;
  v26 = v2 + v5;
  v60 = sub_1C4EF98F8();
  sub_1C43FBCE0(v60);
  v59 = *(v27 + 8);
  v59(v2 + v5);
  v28 = *(v2 + v5 + v1[7]);

  v29 = *(v2 + v5 + v1[8]);

  v30 = *(v2 + v5 + v1[9]);

  v31 = *(v2 + v5 + v1[10]);

  v32 = *(v2 + v5 + v1[11]);

  v33 = *(v2 + v5 + v1[12]);

  v34 = *(v2 + v5 + v1[13]);

  v35 = *(v2 + v5 + v1[14]);

  v36 = v2 + v5 + v3[7];
  v37 = *(v36 + 8);

  v38 = *(v10 + 32);
  v39 = sub_1C4EFD548();
  sub_1C43FBCE0(v39);
  v41 = *(v40 + 8);
  v41(v36 + v38, v39);
  v41(v26 + v3[9], v39);
  v42 = *(v2 + v62);

  v43 = *(v2 + v63);

  v44 = *(v2 + v64);

  v45 = *(v2 + v10);

  (v59)(v2 + v61, v60);
  v46 = *(v2 + v61 + v1[7]);

  v47 = *(v2 + v61 + v1[8]);

  v48 = *(v2 + v61 + v1[9]);

  v49 = *(v2 + v61 + v1[10]);

  v50 = *(v2 + v61 + v1[11]);

  v51 = *(v2 + v61 + v1[12]);

  v52 = *(v2 + v61 + v1[13]);

  v53 = *(v2 + v61 + v1[14]);

  v54 = *(v2 + v68 + 8);

  v55 = *(v2 + v66);

  v56 = *(v2 + v65 + 8);

  v41(v2 + v65 + *(v10 + 32), v39);
  v57 = *(v2 + v67);

  return MEMORY[0x1EEE6BDD0](v2, v67 + 8, v69 | 7);
}

uint64_t sub_1C4D4F03C(uint64_t (*a1)(void))
{
  v3 = (a1(0) - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(*v3 + 64) + v5;
  sub_1C4460918();
  v62 = v7;
  sub_1C4413D10();
  v63 = v8;
  sub_1C4413D10();
  v64 = v9;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = type metadata accessor for PhaseStores();
  sub_1C441EAC8(v11);
  v13 = *(v12 + 80);
  v61 = (v13 + v10 + 9) & ~v13;
  v15 = *(v14 + 64) + v61;
  sub_1C4460918();
  v67 = v16;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = type metadata accessor for Source();
  sub_1C4D4F650(v18);
  v20 = v19;
  v22 = v21;
  v23 = *(v20 + 80);
  v65 = (v23 + v17 + 8) & ~v23;
  v24 = *(v22 + 64);
  v68 = v4 | v13 | v23;
  sub_1C4460918();
  v66 = v25;
  v26 = v2 + v5;
  v27 = *(v2 + v5 + 8);

  v28 = *(v10 + 32);
  v29 = sub_1C4EFD548();
  sub_1C43FBCE0(v29);
  v60 = *(v30 + 8);
  v60(v26 + v28, v29);
  v31 = v26 + v3[7];
  v32 = sub_1C4EF98F8();
  sub_1C43FBCE0(v32);
  v34 = *(v33 + 8);
  v34(v31, v32);
  v35 = *(v31 + v1[7]);

  v36 = *(v31 + v1[8]);

  v37 = *(v31 + v1[9]);

  v38 = *(v31 + v1[10]);

  v39 = *(v31 + v1[11]);

  v40 = *(v31 + v1[12]);

  v41 = *(v31 + v1[13]);

  v42 = *(v31 + v1[14]);

  v60(v26 + v3[9], v29);
  v43 = *(v2 + v62);

  v44 = *(v2 + v63);

  v45 = *(v2 + v64);

  v46 = *(v2 + v10);

  v34(v2 + v61, v32);
  v47 = *(v2 + v61 + v1[7]);

  v48 = *(v2 + v61 + v1[8]);

  v49 = *(v2 + v61 + v1[9]);

  v50 = *(v2 + v61 + v1[10]);

  v51 = *(v2 + v61 + v1[11]);

  v52 = *(v2 + v61 + v1[12]);

  v53 = *(v2 + v61 + v1[13]);

  v54 = *(v2 + v61 + v1[14]);

  v55 = *(v2 + v67 + 8);

  v56 = *(v2 + v17);

  v57 = *(v2 + v65 + 8);

  v60(v2 + v65 + *(v10 + 32), v29);
  v58 = *(v2 + v66);

  return MEMORY[0x1EEE6BDD0](v2, v66 + 8, v68 | 7);
}

uint64_t sub_1C4D4F664(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a8;
  v52 = a1;
  v53 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1C43FD2D8();
  v54 = v13;
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1C43FCDF8(AssociatedTypeWitness);
  v56 = v17;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v22 = &v41 - v21;
  v23 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD2D8();
  v50 = v24;
  v25 = swift_getAssociatedTypeWitness();
  v26 = sub_1C43FCDF8(v25);
  v44 = v27;
  v45 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v31 = &v41 - v30;
  v32 = sub_1C4F01BA8();
  if (!v32)
  {
    return sub_1C4F01718();
  }

  v55 = v32;
  v59 = sub_1C4F02388();
  v46 = sub_1C4F02398();
  sub_1C4F02338();
  result = sub_1C4F01B98();
  if ((v55 & 0x8000000000000000) == 0)
  {
    v41 = v11;
    v42 = a5;
    v34 = 0;
    v47 = (v56 + 16);
    v48 = v56 + 8;
    v49 = v8;
    while (!__OFADD__(v34, 1))
    {
      v56 = v34 + 1;
      v35 = sub_1C4F01BE8();
      (*v47)(v22);
      v35(v58, 0);
      v36 = v57;
      v52(v22, v54);
      if (v36)
      {
        v39 = sub_1C4435D48();
        v40(v39);
        (*(v44 + 8))(v31, v45);

        return (*(v41 + 32))(v43, v54, v42);
      }

      v57 = 0;
      v37 = sub_1C4435D48();
      v38(v37);
      sub_1C4F02378();
      result = sub_1C4F01BB8();
      ++v34;
      if (v56 == v55)
      {
        (*(v44 + 8))(v31, v45);
        return v59;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void WalletOrderBlockingFunction.init(_:predicates:relationshipPredicates:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1C448DE08(&unk_1F43D6CB0);
  *a4 = a2;
  a4[1] = a3;
  a4[2] = a1;
  a4[3] = v8;
}

uint64_t WalletOrderBlockingFunction.blockValue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = v3[1];
  v64 = *v3;
  v65 = v9;
  if (qword_1EDDFD028 != -1)
  {
LABEL_19:
    swift_once();
  }

  v10 = sub_1C4F00978();
  v62 = sub_1C442B738(v10, qword_1EDE2DE10);
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CB8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C43F8000, v11, v12, "Wallet Order Blocking function running", v13, 2u);
    MEMORY[0x1C6942830](v13, -1, -1);
  }

  v69 = a1;
  MEMORY[0x1EEE9AC00](v14);
  v60 = v64;
  v61 = v65;
  v15 = sub_1C4F017A8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *&v64 = swift_getWitnessTable();
  v16 = v5;
  v17 = a3;
  v69 = sub_1C4F02308();
  MEMORY[0x1EEE9AC00](v69);
  *&v61 = a2;
  *(&v61 + 1) = a3;
  WitnessTable = swift_getWitnessTable();
  v19 = sub_1C4D4F664(sub_1C4D5040C, &v60, v15, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v18);

  sub_1C4499940(v19, v20, v21, v22, v23, v24, v25, v26, v62, WitnessTable, v64, *(&v64 + 1), v65, *(&v65 + 1), v66, v67, v68, v69, v70, v71, v72, v73);
  v69 = a1;
  MEMORY[0x1EEE9AC00](v27);
  *&v60 = a2;
  *(&v60 + 1) = a3;
  *&v61 = v28;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  a3 = sub_1C4F02308();

  v69 = a3;
  MEMORY[0x1EEE9AC00](v29);
  *&v61 = a2;
  *(&v61 + 1) = v17;
  v31 = sub_1C4D4F664(sub_1C4D50450, &v60, v15, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v30);
  *&v64 = v16;

  sub_1C4499940(v31, v32, v33, v34, v35, v36, v37, v38, v62, WitnessTable, v64, *(&v64 + 1), v65, *(&v65 + 1), v66, v67, v68, v69, v70, v71, v72, v73);
  v40 = v39;
  v5 = 0;
  v69 = MEMORY[0x1E69E7CD0];
  v41 = 1 << *(v39 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  a1 = v39 + 56;
  v43 = v42 & *(v39 + 56);
  v44 = (v41 + 63) >> 6;
  a2 = v65;
  if (v43)
  {
    while (1)
    {
      v45 = v5;
LABEL_12:
      v46 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      v47 = (*(v40 + 48) + ((v45 << 10) | (16 * v46)));
      v48 = *v47;
      a3 = v47[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v49 = WalletOrderKeyValueStore.fetchTransactionDetails(for:)();

      sub_1C4D400DC(v49);
      if (!v43)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v45 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v45 >= v44)
    {
      break;
    }

    v43 = *(a1 + 8 * v45);
    ++v5;
    if (v43)
    {
      v5 = v45;
      goto LABEL_12;
    }
  }

  v50 = v69;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v51 = sub_1C4F00968();
  v52 = sub_1C4F01CB8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v67 = v54;
    *v53 = 134218242;
    *(v53 + 4) = *(v50 + 16);

    *(v53 + 12) = 2080;
    v66 = v50;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    sub_1C4C6C73C();
    sub_1C4415EA8();
    v55 = sub_1C4F01568();
    v57 = v56;

    v58 = sub_1C441D828(v55, v57, &v67);

    *(v53 + 14) = v58;
    _os_log_impl(&dword_1C43F8000, v51, v52, "blocking keys for wallet order are %ld, %s", v53, 0x16u);
    sub_1C440962C(v54);
    MEMORY[0x1C6942830](v54, -1, -1);
    MEMORY[0x1C6942830](v53, -1, -1);
  }

  else
  {
  }

  return sub_1C44FE820(v50);
}

uint64_t sub_1C4D50038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1C4EFF7D8();
  LOBYTE(a5) = sub_1C4499AD0(v6, v7, a5);

  return a5 & 1;
}

uint64_t sub_1C4D50094@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C4EFF8A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFF7B8();
  v7 = sub_1C4EFF848();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  a1[1] = v9;
  return result;
}

uint64_t sub_1C4D50198(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = sub_1C4EFEEF8();
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = sub_1C4EFF8A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  sub_1C4EFF7B8();
  v15 = sub_1C4EFF848();
  v17 = v16;
  (*(v11 + 8))(v14, v10);
  LOBYTE(v10) = sub_1C4499AD0(v15, v17, v25);

  if (v10)
  {
    sub_1C4EFF7C8();
    sub_1C4EFE558();
    v18 = sub_1C44DBB50(v9, v6);
    v19 = v24;
    v20 = *(v23 + 8);
    v20(v6, v24);
    v20(v9, v19);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1C4D503E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1C4D50038(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56)) & 1;
}

uint64_t sub_1C4D5040C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1C4D50094(a1);
}

uint64_t sub_1C4D5042C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1C4D50198(a1, *(v1 + 32)) & 1;
}

uint64_t sub_1C4D50450@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  result = sub_1C4EFF7D8();
  *a1 = result;
  a1[1] = v6;
  return result;
}

void sub_1C4D504A4()
{
  sub_1C43FBD3C();
  sub_1C442A8A4();
  v4 = sub_1C4EFEEF8();
  v5 = sub_1C440AC0C(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C440A724();
  v9 = MEMORY[0x1EEE9AC00](v8);
  sub_1C4412A1C(v9, v10, v11, v12, v13, v14, v15, v16, v34);
  if (v0 && (sub_1C456902C(&qword_1EC0BDE78, &qword_1C4F322C0), sub_1C4406320(), sub_1C4435698(), v17))
  {
    sub_1C441AB14();
    while (1)
    {
      sub_1C440C86C();
      if (v19)
      {
        break;
      }

      v20 = sub_1C44082FC(v18);
      v1(v20);
      v21 = *(v2 + 40);
      sub_1C440A354();
      sub_1C4D52868(&qword_1EDDFCCB8, v22);
      sub_1C442C170();
      sub_1C4403BB4();
      while (1)
      {
        sub_1C4420A10(v23);
        if (v25)
        {
          break;
        }

        v26 = sub_1C4401470();
        v1(v26);
        sub_1C440A354();
        sub_1C4D52868(&qword_1EDDFCCB0, v27);
        sub_1C440FF54();
        v28 = sub_1C4417BC8();
        (v2)(v28);
        if (v21)
        {
          v33 = sub_1C445EB30();
          (v2)(v33);
          v2 = v3;
          goto LABEL_12;
        }

        v23 = sub_1C440C144();
      }

      v29 = sub_1C442DA34(v24);
      v30(v29);
      sub_1C4418AE4();
      if (v32)
      {
        goto LABEL_16;
      }

      *(v2 + 16) = v31;
LABEL_12:
      sub_1C4432F00();
      if (v25)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_1C443F448();
    sub_1C43FE9F0();
  }
}

void sub_1C4D50668(uint64_t a1)
{
  sub_1C43FEAE0(a1);
  if (v2 && (sub_1C456902C(&qword_1EC0BDE58, &qword_1C4F322A0), v5 = sub_1C4406320(), *(v1 + 16)))
  {
    v28 = v1;
    v29 = v1 + 32;
    while (*(v1 + 16))
    {
      sub_1C4441344(v29);
      sub_1C4F02AF8();
      sub_1C440CC68();
      switch(v3)
      {
        case 1:
        case 4:
          sub_1C4426BAC();
          break;
        case 2:
          sub_1C44160DC();
          sub_1C4408B0C();
          break;
        case 3:
          sub_1C44040F0();
          sub_1C44367C4();
          break;
        case 6:
          sub_1C4415E04();
          break;
        case 7:
          sub_1C440E008();
          break;
        case 8:
          sub_1C44160DC();
          sub_1C4418620();
          break;
        case 9:
          sub_1C4450198();
          break;
        case 11:
          sub_1C44040F0();
          sub_1C441D4CC();
          break;
        case 12:
          sub_1C441C654();
          break;
        default:
          break;
      }

      sub_1C4F01298();

      sub_1C4F02B68();
      sub_1C442E740();
      v7 = ~v6;
      v9 = v8 & ~v6;
      sub_1C446C19C();
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xE900000000000079;
          v14 = 0x6144664F656D6974;
          switch(*(*(v5 + 48) + v9))
          {
            case 1:
              v14 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
              break;
            case 2:
              sub_1C441D044();
              sub_1C4408B0C();
              break;
            case 3:
              v14 = sub_1C4410D74();
              break;
            case 4:
              v15 = sub_1C43FBFBC();
              v14 = sub_1C4433F44(v15);
              break;
            case 5:
              v14 = sub_1C440215C();
              break;
            case 6:
              v14 = sub_1C440D0A4();
              goto LABEL_29;
            case 7:
              sub_1C440E008();
              break;
            case 8:
              v14 = sub_1C441F4F8();
LABEL_29:
              v13 = 0xED00000000000079;
              break;
            case 9:
              v14 = sub_1C43FFDEC();
              break;
            case 0xA:
              v14 = sub_1C4415F60();
              break;
            case 0xB:
              v14 = sub_1C43FF0EC();
              break;
            case 0xC:
              v14 = sub_1C440584C();
              break;
            default:
              break;
          }

          v16 = 0x6144664F656D6974;
          v17 = 0xE900000000000079;
          switch(v3)
          {
            case 1:
              sub_1C440F310();
              v16 = v18 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
              break;
            case 2:
              sub_1C440DEDC();
              v16 = v21 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
              v17 = 0xEF796144664F656DLL;
              break;
            case 3:
              sub_1C44040F0();
              v17 = v22 - 14;
              sub_1C4409A64();
              break;
            case 4:
              sub_1C440F310();
              v16 = v20 & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
              v17 = 0xEA00000000006B65;
              break;
            case 5:
              v17 = 0xE300000000000000;
              v16 = 6909804;
              break;
            case 6:
              sub_1C4404BF8();
              v23 = 0x6E6F697461;
              goto LABEL_43;
            case 7:
              sub_1C44148EC();
              v17 = 0xEF687361486F6547;
              break;
            case 8:
              sub_1C440DEDC();
              v16 = v24 & 0xFFFFFFFFFFFFLL | 0x6547000000000000;
              v23 = 0x687361486FLL;
LABEL_43:
              v17 = v23 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              break;
            case 9:
              sub_1C4413E94();
              v17 = 0xEC00000068736148;
              break;
            case 10:
              v17 = 0xE400000000000000;
              v16 = 1768319351;
              break;
            case 11:
              sub_1C44040F0();
              v17 = v19 - 20;
              sub_1C4423A90();
              break;
            case 12:
              sub_1C440EF3C();
              v17 = 0xEB00000000657461;
              break;
            default:
              break;
          }

          if (v14 == v16 && v13 == v17)
          {
            break;
          }

          sub_1C44604E8();
          sub_1C441B610();

          if (v4)
          {
            goto LABEL_53;
          }

          v9 = (v9 + 1) & v7;
          sub_1C446C19C();
          if ((v11 & v12) == 0)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
LABEL_50:
        *(v5 + 56 + 8 * v10) = v11 | v12;
        *(*(v5 + 48) + v9) = v3;
        sub_1C4410784();
        if (v27)
        {
          goto LABEL_56;
        }

        *(v5 + 16) = v26;
      }

LABEL_53:
      v1 = v28;
    }

    __break(1u);
LABEL_56:
    __break(1u);
  }

  else
  {
  }
}

void sub_1C4D50A90(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    goto LABEL_155;
  }

  sub_1C456902C(&qword_1EC0BDE08, &qword_1C4F32250);
  v2 = sub_1C4406320();
  v3 = v2;
  v72 = *(v1 + 16);
  if (!v72)
  {
    goto LABEL_155;
  }

  v4 = 0;
  v5 = v2 + 56;
  v70 = v1;
  v71 = v1 + 32;
  while (v4 < *(v1 + 16))
  {
    v6 = v71 + 16 * v4;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v3 + 40);
    sub_1C4F02AF8();
    v73 = v4 + 1;
    switch(v8)
    {
      case 1:
        MEMORY[0x1C69417F0](12);
        sub_1C440CC68();
        switch(v7)
        {
          case 1:
          case 4:
            goto LABEL_13;
          case 2:
            goto LABEL_17;
          case 3:
            goto LABEL_18;
          case 6:
            goto LABEL_20;
          case 7:
            goto LABEL_19;
          case 8:
            goto LABEL_21;
          case 9:
            goto LABEL_16;
          case 11:
            goto LABEL_14;
          case 12:
            goto LABEL_15;
          default:
            goto LABEL_22;
        }

        goto LABEL_22;
      case 2:
        v11 = 13;
        goto LABEL_11;
      case 3:
        v11 = 14;
LABEL_11:
        MEMORY[0x1C69417F0](v11);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4851148(__src, v7);
        break;
      case 4:
        switch(v7)
        {
          case 1:
            v10 = 1;
            break;
          case 2:
            v10 = 2;
            break;
          case 3:
            v10 = 3;
            break;
          case 4:
            v10 = 4;
            break;
          case 5:
            v10 = 5;
            break;
          case 6:
            v10 = 6;
            break;
          case 7:
            v10 = 7;
            break;
          case 8:
            v10 = 8;
            break;
          case 9:
            v10 = 9;
            break;
          case 10:
            v10 = 10;
            break;
          default:
            v10 = 0;
            break;
        }

        MEMORY[0x1C69417F0](v10);
        break;
      default:
        MEMORY[0x1C69417F0](11);
        sub_1C440CC68();
        switch(v7)
        {
          case 1:
          case 4:
LABEL_13:
            sub_1C4426BAC();
            break;
          case 2:
LABEL_17:
            sub_1C44160DC();
            sub_1C4408B0C();
            break;
          case 3:
LABEL_18:
            sub_1C44040F0();
            sub_1C44367C4();
            break;
          case 6:
LABEL_20:
            sub_1C4415E04();
            break;
          case 7:
LABEL_19:
            sub_1C440E008();
            break;
          case 8:
LABEL_21:
            sub_1C44160DC();
            sub_1C4418620();
            break;
          case 9:
LABEL_16:
            sub_1C4450198();
            break;
          case 11:
LABEL_14:
            sub_1C44040F0();
            sub_1C441D4CC();
            break;
          case 12:
LABEL_15:
            sub_1C441C654();
            break;
          default:
            break;
        }

LABEL_22:
        sub_1C4F01298();

        break;
    }

    v12 = __src;
    v13 = sub_1C4F02B68();
    v14 = -1 << *(v3 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    v17 = *(v5 + 8 * (v15 >> 6));
    v18 = 1 << v15;
    if (((1 << v15) & v17) == 0)
    {
LABEL_149:
      *(v5 + 8 * v16) = v17 | v18;
      v54 = *(v3 + 48) + 16 * v15;
      *v54 = v7;
      *(v54 + 8) = v8;
      sub_1C4410784();
      if (!v56)
      {
        *(v3 + 16) = v55;
        goto LABEL_151;
      }

      goto LABEL_157;
    }

    v19 = ~v14;
    v20 = v8 == 4;
    v21 = v7 == 10 && v8 == 4;
    v22 = v7 == 9 && v8 == 4;
    v68 = v22;
    v69 = v21;
    v23 = v7 == 8 && v8 == 4;
    v24 = v7 == 7 && v8 == 4;
    v66 = v24;
    v67 = v23;
    v25 = v7 == 6 && v8 == 4;
    v26 = v7 == 5 && v8 == 4;
    v64 = v26;
    v65 = v25;
    v27 = v7 == 4 && v8 == 4;
    v28 = v7 == 3 && v8 == 4;
    v62 = v28;
    v63 = v27;
    v29 = v7 == 2 && v8 == 4;
    v30 = v7 == 1 && v8 == 4;
    v60 = v30;
    v61 = v29;
    if (v7)
    {
      v20 = 0;
    }

    v59 = v20;
    while (2)
    {
      v31 = *(v3 + 48) + 16 * v15;
      v32 = *v31;
      switch(*(v31 + 8))
      {
        case 1:
          if (v8 != 1)
          {
            goto LABEL_148;
          }

          sub_1C440CC68();
          v33 = 0x6144664F656D6974;
          switch(v32)
          {
            case 1:
              v33 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
              break;
            case 2:
              sub_1C441D044();
              sub_1C4408B0C();
              break;
            case 3:
              v33 = sub_1C4410D74();
              break;
            case 4:
              v41 = sub_1C43FBFBC();
              v33 = sub_1C4433F44(v41);
              break;
            case 5:
              v33 = sub_1C440215C();
              break;
            case 6:
              v33 = sub_1C440D0A4();
              goto LABEL_115;
            case 7:
              sub_1C440E008();
              break;
            case 8:
              v33 = sub_1C441F4F8();
LABEL_115:
              v12 = v12 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              break;
            case 9:
              v33 = sub_1C43FFDEC();
              break;
            case 10:
              v33 = sub_1C4415F60();
              break;
            case 11:
              v33 = sub_1C43FF0EC();
              break;
            case 12:
              v33 = sub_1C440584C();
              break;
            default:
              break;
          }

          v42 = 0x6144664F656D6974;
          v43 = 0xE900000000000079;
          switch(v7)
          {
            case 1:
              goto LABEL_130;
            case 2:
              goto LABEL_135;
            case 3:
              goto LABEL_136;
            case 4:
              goto LABEL_132;
            case 5:
              goto LABEL_138;
            case 6:
              goto LABEL_139;
            case 7:
              goto LABEL_137;
            case 8:
              goto LABEL_141;
            case 9:
              goto LABEL_134;
            case 10:
              goto LABEL_140;
            case 11:
              goto LABEL_131;
            case 12:
              goto LABEL_133;
            default:
              goto LABEL_143;
          }

          goto LABEL_143;
        case 2:
          if (v8 != 2)
          {
            goto LABEL_148;
          }

          v35 = *v31;
          v36 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4839AB4(v36, v7);
          v12 = v37;
          sub_1C45A24C0(v32, 2);
          if ((v12 & 1) == 0)
          {
            goto LABEL_148;
          }

          v57 = v7;
          v58 = 2;
          goto LABEL_154;
        case 3:
          if (v8 != 3)
          {
            goto LABEL_148;
          }

          v38 = *v31;
          v39 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4839AB4(v39, v7);
          v12 = v40;
          sub_1C45A24C0(v32, 3);
          if ((v12 & 1) == 0)
          {
            goto LABEL_148;
          }

          v57 = v7;
          v58 = 3;
LABEL_154:
          sub_1C45A24C0(v57, v58);
          goto LABEL_151;
        case 4:
          v34 = *v31;
          switch(v32)
          {
            case 1:
              if (v60)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
            case 2:
              if (v61)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
            case 3:
              if (v62)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
            case 4:
              if (v63)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
            case 5:
              if (v64)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
            case 6:
              if (v65)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
            case 7:
              if (v66)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
            case 8:
              if (v67)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
            case 9:
              if (v68)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
            case 10:
              if (v69)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
            default:
              if (v59)
              {
                goto LABEL_151;
              }

              goto LABEL_148;
          }

        default:
          if (v8)
          {
            goto LABEL_148;
          }

          sub_1C440CC68();
          v33 = 0x6144664F656D6974;
          switch(v32)
          {
            case 1:
              v33 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
              break;
            case 2:
              sub_1C441D044();
              sub_1C4408B0C();
              break;
            case 3:
              v33 = sub_1C4410D74();
              break;
            case 4:
              v44 = sub_1C43FBFBC();
              v33 = sub_1C4433F44(v44);
              break;
            case 5:
              v33 = sub_1C440215C();
              break;
            case 6:
              v33 = sub_1C440D0A4();
              goto LABEL_128;
            case 7:
              sub_1C440E008();
              break;
            case 8:
              v33 = sub_1C441F4F8();
LABEL_128:
              v12 = v12 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              break;
            case 9:
              v33 = sub_1C43FFDEC();
              break;
            case 10:
              v33 = sub_1C4415F60();
              break;
            case 11:
              v33 = sub_1C43FF0EC();
              break;
            case 12:
              v33 = sub_1C440584C();
              break;
            default:
              break;
          }

          v42 = 0x6144664F656D6974;
          v43 = 0xE900000000000079;
          switch(v7)
          {
            case 1:
LABEL_130:
              sub_1C440F310();
              v42 = v45 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
              break;
            case 2:
LABEL_135:
              sub_1C440DEDC();
              v42 = v48 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
              v43 = 0xEF796144664F656DLL;
              break;
            case 3:
LABEL_136:
              sub_1C44040F0();
              v43 = v49 - 14;
              sub_1C4409A64();
              break;
            case 4:
LABEL_132:
              sub_1C440F310();
              v42 = v47 & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
              v43 = 0xEA00000000006B65;
              break;
            case 5:
LABEL_138:
              v43 = 0xE300000000000000;
              v42 = 6909804;
              break;
            case 6:
LABEL_139:
              sub_1C4404BF8();
              v50 = 0x6E6F697461;
              goto LABEL_142;
            case 7:
LABEL_137:
              sub_1C44148EC();
              v43 = 0xEF687361486F6547;
              break;
            case 8:
LABEL_141:
              sub_1C440DEDC();
              v42 = v51 & 0xFFFFFFFFFFFFLL | 0x6547000000000000;
              v50 = 0x687361486FLL;
LABEL_142:
              v43 = v50 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              break;
            case 9:
LABEL_134:
              sub_1C4413E94();
              v43 = 0xEC00000068736148;
              break;
            case 10:
LABEL_140:
              v43 = 0xE400000000000000;
              v42 = 1768319351;
              break;
            case 11:
LABEL_131:
              sub_1C44040F0();
              v43 = v46 - 20;
              sub_1C4423A90();
              break;
            case 12:
LABEL_133:
              sub_1C440EF3C();
              v43 = 0xEB00000000657461;
              break;
            default:
              break;
          }

LABEL_143:
          if (v33 != v42 || v12 != v43)
          {
            v53 = sub_1C4F02938();

            if (v53)
            {
              goto LABEL_151;
            }

LABEL_148:
            v15 = (v15 + 1) & v19;
            v16 = v15 >> 6;
            v17 = *(v5 + 8 * (v15 >> 6));
            v18 = 1 << v15;
            if ((v17 & (1 << v15)) == 0)
            {
              goto LABEL_149;
            }

            continue;
          }

LABEL_151:
          v4 = v73;
          v1 = v70;
          if (v73 == v72)
          {
LABEL_155:

            return;
          }

          break;
      }

      break;
    }
  }

  __break(1u);
LABEL_157:
  __break(1u);
}

void sub_1C4D51344(uint64_t a1)
{
  sub_1C43FEAE0(a1);
  if (v2 && (sub_1C456902C(&qword_1EC0BDE50, &unk_1C4F4B340), v5 = sub_1C4406320(), *(v1 + 16)))
  {
    v20 = v1;
    v21 = v1 + 32;
    while (*(v1 + 16))
    {
      sub_1C4441344(v21);
      sub_1C4F02AF8();
      switch(v3)
      {
        case 5:
          sub_1C441DD90();
          break;
        case 6:
          sub_1C441C654();
          break;
        default:
          break;
      }

      sub_1C4F01298();

      sub_1C4F02B68();
      sub_1C442E740();
      v7 = ~v6;
      v9 = v8 & ~v6;
      sub_1C44693F8();
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xE800000000000000;
          v14 = 0x4449656C646E7562;
          switch(*(*(v5 + 48) + v9))
          {
            case 1:
              v14 = 0xD000000000000011;
              v13 = 0x80000001C4F86740;
              break;
            case 2:
              v14 = 0x456E6F6973736573;
              v13 = 0xEC000000746E6576;
              break;
            case 3:
              v14 = 0xD000000000000016;
              v13 = 0x80000001C4F85600;
              break;
            case 4:
              v14 = 0xD000000000000016;
              v13 = 0x80000001C4F86760;
              break;
            case 5:
              sub_1C441DD90();
              break;
            case 6:
              v13 = 26433;
              sub_1C441C654();
              break;
            default:
              break;
          }

          v15 = 0xE800000000000000;
          v16 = 0x4449656C646E7562;
          switch(v3)
          {
            case 1:
              v16 = 0xD000000000000011;
              v15 = 0x80000001C4F86740;
              break;
            case 2:
              v16 = 0x456E6F6973736573;
              v15 = 0xEC000000746E6576;
              break;
            case 3:
              v16 = 0xD000000000000016;
              v15 = 0x80000001C4F85600;
              break;
            case 4:
              v16 = 0xD000000000000016;
              v15 = 0x80000001C4F86760;
              break;
            case 5:
              v16 = 0x7463617265746E69;
              v15 = 0xEF657079546E6F69;
              break;
            case 6:
              v16 = 0x646576726573626FLL;
              v15 = 0xEB00000000656741;
              break;
            default:
              break;
          }

          if (v14 == v16 && v13 == v15)
          {
            break;
          }

          sub_1C44604E8();
          sub_1C441B610();

          if (v4)
          {
            goto LABEL_32;
          }

          v9 = (v9 + 1) & v7;
          sub_1C44693F8();
          if ((v11 & v12) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v5 + 56 + 8 * v10) = v11 | v12;
        *(*(v5 + 48) + v9) = v3;
        sub_1C4410784();
        if (v19)
        {
          goto LABEL_35;
        }

        *(v5 + 16) = v18;
      }

LABEL_32:
      v1 = v20;
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
  }
}

void sub_1C4D51718(uint64_t a1)
{
  sub_1C43FEAE0(a1);
  if (v2 && (sub_1C456902C(&qword_1EC0C68E0, &qword_1C4F6FA98), v5 = sub_1C4406320(), *(v1 + 16)))
  {
    v20 = v1;
    v21 = v1 + 32;
    while (*(v1 + 16))
    {
      sub_1C4441344(v21);
      sub_1C4F02AF8();
      switch(v3)
      {
        case 1:
          sub_1C447FB34();
          break;
        case 4:
          sub_1C4441670();
          break;
        default:
          break;
      }

      sub_1C4F01298();

      sub_1C4F02B68();
      sub_1C442E740();
      v7 = ~v6;
      v9 = v8 & ~v6;
      sub_1C443488C();
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xE800000000000000;
          v14 = 0x6572617774666F73;
          switch(*(*(v5 + 48) + v9))
          {
            case 1:
              sub_1C447FB34();
              break;
            case 2:
              v13 = 0xE500000000000000;
              v14 = 0x6563616C70;
              break;
            case 3:
              v13 = 0xE600000000000000;
              v14 = 0x6E6F73726570;
              break;
            case 4:
              sub_1C4441670();
              break;
            case 5:
              v14 = 0xD000000000000010;
              v13 = 0x80000001C4F866A0;
              break;
            case 6:
              v14 = 0xD000000000000016;
              v13 = 0x80000001C4F866C0;
              break;
            default:
              break;
          }

          v15 = 0xE800000000000000;
          v16 = 0x6572617774666F73;
          switch(v3)
          {
            case 1:
              v16 = 0x746F6F7465756C62;
              v15 = 0xEF65636976654468;
              break;
            case 2:
              v15 = 0xE500000000000000;
              v16 = 0x6563616C70;
              break;
            case 3:
              v15 = 0xE600000000000000;
              v16 = 0x6E6F73726570;
              break;
            case 4:
              v16 = 0x416574756D6D6F63;
              v15 = 0xEF79746976697463;
              break;
            case 5:
              v16 = 0xD000000000000010;
              v15 = 0x80000001C4F866A0;
              break;
            case 6:
              v16 = 0xD000000000000016;
              v15 = 0x80000001C4F866C0;
              break;
            default:
              break;
          }

          if (v14 == v16 && v13 == v15)
          {
            break;
          }

          sub_1C44604E8();
          sub_1C441B610();

          if (v4)
          {
            goto LABEL_32;
          }

          v9 = (v9 + 1) & v7;
          sub_1C443488C();
          if ((v11 & v12) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v5 + 56 + 8 * v10) = v11 | v12;
        *(*(v5 + 48) + v9) = v3;
        sub_1C4410784();
        if (v19)
        {
          goto LABEL_35;
        }

        *(v5 + 16) = v18;
      }

LABEL_32:
      v1 = v20;
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
  }
}

void sub_1C4D51ABC()
{
  sub_1C43FBD3C();
  sub_1C442A8A4();
  v4 = sub_1C4EFF0C8();
  v5 = sub_1C440AC0C(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C440A724();
  v9 = MEMORY[0x1EEE9AC00](v8);
  sub_1C4412A1C(v9, v10, v11, v12, v13, v14, v15, v16, v34);
  if (v0 && (sub_1C456902C(&qword_1EC0BDDE8, "(M\n"), sub_1C4406320(), sub_1C4435698(), v17))
  {
    sub_1C441AB14();
    while (1)
    {
      sub_1C440C86C();
      if (v19)
      {
        break;
      }

      v20 = sub_1C44082FC(v18);
      v1(v20);
      v21 = *(v2 + 40);
      sub_1C441F15C();
      sub_1C4D52868(&qword_1EDDFE820, v22);
      sub_1C442C170();
      sub_1C4403BB4();
      while (1)
      {
        sub_1C4420A10(v23);
        if (v25)
        {
          break;
        }

        v26 = sub_1C4401470();
        v1(v26);
        sub_1C441F15C();
        sub_1C4D52868(&qword_1EDDFCC98, v27);
        sub_1C440FF54();
        v28 = sub_1C4417BC8();
        (v2)(v28);
        if (v21)
        {
          v33 = sub_1C445EB30();
          (v2)(v33);
          v2 = v3;
          goto LABEL_12;
        }

        v23 = sub_1C440C144();
      }

      v29 = sub_1C442DA34(v24);
      v30(v29);
      sub_1C4418AE4();
      if (v32)
      {
        goto LABEL_16;
      }

      *(v2 + 16) = v31;
LABEL_12:
      sub_1C4432F00();
      if (v25)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_1C443F448();
    sub_1C43FE9F0();
  }
}

void sub_1C4D51C80(uint64_t a1)
{
  sub_1C43FEAE0(a1);
  if (v2 && (sub_1C456902C(&qword_1EC0C68D8, &qword_1C4F6FA90), v3 = sub_1C4406320(), v4 = v3, (v5 = *(v1 + 16)) != 0))
  {
    v6 = 0;
    v7 = v3 + 56;
    while (v6 < *(v1 + 16))
    {
      v8 = *(v1 + 32 + 8 * v6++);
      v9 = *(v4 + 40);
      sub_1C4F02AF8();
      MEMORY[0x1C69417F0](v8);
      v10 = sub_1C4F02B68();
      v11 = ~(-1 << *(v4 + 32));
      while (1)
      {
        v12 = v10 & v11;
        v13 = (v10 & v11) >> 6;
        v14 = *(v7 + 8 * v13);
        v15 = 1 << (v10 & v11);
        if ((v15 & v14) == 0)
        {
          break;
        }

        if (*(*(v4 + 48) + 8 * v12) == v8)
        {
          goto LABEL_11;
        }

        v10 = v12 + 1;
      }

      *(v7 + 8 * v13) = v15 | v14;
      *(*(v4 + 48) + 8 * v12) = v8;
      sub_1C4410784();
      if (v17)
      {
        goto LABEL_14;
      }

      *(v4 + 16) = v16;
LABEL_11:
      if (v6 == v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

void sub_1C4D51DB8()
{
  sub_1C43FBD3C();
  sub_1C442A8A4();
  v4 = sub_1C4EFF8A8();
  v5 = sub_1C440AC0C(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C440A724();
  v9 = MEMORY[0x1EEE9AC00](v8);
  sub_1C4412A1C(v9, v10, v11, v12, v13, v14, v15, v16, v34);
  if (v0 && (sub_1C456902C(&qword_1EC0BDDF0, &qword_1C4F32238), sub_1C4406320(), sub_1C4435698(), v17))
  {
    sub_1C441AB14();
    while (1)
    {
      sub_1C440C86C();
      if (v19)
      {
        break;
      }

      v20 = sub_1C44082FC(v18);
      v1(v20);
      v21 = *(v2 + 40);
      sub_1C441BEEC();
      sub_1C4D52868(&qword_1EDDFE808, v22);
      sub_1C442C170();
      sub_1C4403BB4();
      while (1)
      {
        sub_1C4420A10(v23);
        if (v25)
        {
          break;
        }

        v26 = sub_1C4401470();
        v1(v26);
        sub_1C441BEEC();
        sub_1C4D52868(&unk_1EDDFCC80, v27);
        sub_1C440FF54();
        v28 = sub_1C4417BC8();
        (v2)(v28);
        if (v21)
        {
          v33 = sub_1C445EB30();
          (v2)(v33);
          v2 = v3;
          goto LABEL_12;
        }

        v23 = sub_1C440C144();
      }

      v29 = sub_1C442DA34(v24);
      v30(v29);
      sub_1C4418AE4();
      if (v32)
      {
        goto LABEL_16;
      }

      *(v2 + 16) = v31;
LABEL_12:
      sub_1C4432F00();
      if (v25)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_1C443F448();
    sub_1C43FE9F0();
  }
}

void sub_1C4D51F7C()
{
  sub_1C43FBD3C();
  sub_1C442A8A4();
  v4 = sub_1C4EF9F68();
  v5 = sub_1C440AC0C(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C440A724();
  v9 = MEMORY[0x1EEE9AC00](v8);
  sub_1C4412A1C(v9, v10, v11, v12, v13, v14, v15, v16, v34);
  if (v0 && (sub_1C456902C(&qword_1EC0BDFB0, &qword_1C4F323A8), sub_1C4406320(), sub_1C4435698(), v17))
  {
    sub_1C441AB14();
    while (1)
    {
      sub_1C440C86C();
      if (v19)
      {
        break;
      }

      v20 = sub_1C44082FC(v18);
      v1(v20);
      v21 = *(v2 + 40);
      sub_1C441E93C();
      sub_1C4D52868(&unk_1EDDFA3E8, v22);
      sub_1C442C170();
      sub_1C4403BB4();
      while (1)
      {
        sub_1C4420A10(v23);
        if (v25)
        {
          break;
        }

        v26 = sub_1C4401470();
        v1(v26);
        sub_1C441E93C();
        sub_1C4D52868(&qword_1EDDFA3E0, v27);
        sub_1C440FF54();
        v28 = sub_1C4417BC8();
        (v2)(v28);
        if (v21)
        {
          v33 = sub_1C445EB30();
          (v2)(v33);
          v2 = v3;
          goto LABEL_12;
        }

        v23 = sub_1C440C144();
      }

      v29 = sub_1C442DA34(v24);
      v30(v29);
      sub_1C4418AE4();
      if (v32)
      {
        goto LABEL_16;
      }

      *(v2 + 16) = v31;
LABEL_12:
      sub_1C4432F00();
      if (v25)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_1C443F448();
    sub_1C43FE9F0();
  }
}

void sub_1C4D52140(uint64_t a1)
{
  if (sub_1C4428DA0())
  {
    sub_1C456902C(&qword_1EC0BDE60, &qword_1C4F322A8);
    v2 = sub_1C4406320();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v20 = sub_1C4428DA0();
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 7;
    v19 = a1 & 0xC000000000000001;
    while (1)
    {
      sub_1C4431590(v3, v19 == 0);
      v5 = v19 ? MEMORY[0x1C6940F90](v3, a1) : *(a1 + 32 + 8 * v3);
      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      v8 = v2[5];
      sub_1C4F01ED8();
      sub_1C442E740();
      v11 = ~v10;
      while (1)
      {
        v12 = v9 & v11;
        v13 = (v9 & v11) >> 6;
        v14 = v4[v13];
        v15 = 1 << (v9 & v11);
        if ((v15 & v14) == 0)
        {
          break;
        }

        sub_1C4447C04();
        v16 = *(v2[6] + 8 * v12);
        v17 = sub_1C4F01EE8();

        if (v17)
        {

          goto LABEL_17;
        }

        v9 = v12 + 1;
      }

      v4[v13] = v15 | v14;
      *(v2[6] + 8 * v12) = v6;
      sub_1C4410784();
      if (v7)
      {
        goto LABEL_20;
      }

      v2[2] = v18;
LABEL_17:
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_1C4D522D0(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (sub_1C456902C(&qword_1EC0C68E8, &unk_1C4F6FAA0), v2 = sub_1C4406320(), (v21 = *(v1 + 16)) != 0))
  {
    v3 = 0;
    v19 = v1;
    v20 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v20 + v3);
      v5 = *(v2 + 40);
      sub_1C4F02AF8();
      if (v4)
      {
        v6 = 0x617247746E657665;
      }

      else
      {
        v6 = 0x7247656C62617473;
      }

      if (v4)
      {
        v7 = 0xEA00000000006870;
      }

      else
      {
        v7 = 0xEB00000000687061;
      }

      sub_1C4F01298();

      v8 = sub_1C4F02B68() & ~(-1 << *(v2 + 32));
      sub_1C441B19C();
      if ((v11 & v10) != 0)
      {
        v13 = ~v12;
        while (1)
        {
          v14 = *(*(v2 + 48) + v8) ? 0x617247746E657665 : 0x7247656C62617473;
          v15 = *(*(v2 + 48) + v8) ? 0xEA00000000006870 : 0xEB00000000687061;
          if (v14 == v6 && v15 == v7)
          {
            break;
          }

          sub_1C4F02938();
          sub_1C441B610();

          if (v4)
          {
            goto LABEL_28;
          }

          v8 = (v8 + 1) & v13;
          sub_1C441B19C();
          if ((v10 & v11) == 0)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
LABEL_25:
        *(v2 + 56 + 8 * v9) = v10 | v11;
        *(*(v2 + 48) + v8) = v4;
        sub_1C4410784();
        if (v18)
        {
          goto LABEL_31;
        }

        *(v2 + 16) = v17;
      }

LABEL_28:
      ++v3;
      v1 = v19;
      if (v3 == v21)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_29:
  }
}

void sub_1C4D524E0()
{
  sub_1C43FBD3C();
  sub_1C442A8A4();
  v4 = sub_1C4EFDAB8();
  v5 = sub_1C440AC0C(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C440A724();
  v9 = MEMORY[0x1EEE9AC00](v8);
  sub_1C4412A1C(v9, v10, v11, v12, v13, v14, v15, v16, v34);
  if (v0 && (sub_1C456902C(&qword_1EC0BDFB8, &qword_1C4F323B0), sub_1C4406320(), sub_1C4435698(), v17))
  {
    sub_1C441AB14();
    while (1)
    {
      sub_1C440C86C();
      if (v19)
      {
        break;
      }

      v20 = sub_1C44082FC(v18);
      v1(v20);
      v21 = *(v2 + 40);
      sub_1C441518C();
      sub_1C4D52868(&qword_1EDDEFFD0, v22);
      sub_1C442C170();
      sub_1C4403BB4();
      while (1)
      {
        sub_1C4420A10(v23);
        if (v25)
        {
          break;
        }

        v26 = sub_1C4401470();
        v1(v26);
        sub_1C441518C();
        sub_1C4D52868(&unk_1EDDEFFC0, v27);
        sub_1C440FF54();
        v28 = sub_1C4417BC8();
        (v2)(v28);
        if (v21)
        {
          v33 = sub_1C445EB30();
          (v2)(v33);
          v2 = v3;
          goto LABEL_12;
        }

        v23 = sub_1C440C144();
      }

      v29 = sub_1C442DA34(v24);
      v30(v29);
      sub_1C4418AE4();
      if (v32)
      {
        goto LABEL_16;
      }

      *(v2 + 16) = v31;
LABEL_12:
      sub_1C4432F00();
      if (v25)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_1C443F448();
    sub_1C43FE9F0();
  }
}

void sub_1C4D526A4()
{
  sub_1C43FBD3C();
  sub_1C442A8A4();
  v4 = sub_1C4EFEFB8();
  v5 = sub_1C440AC0C(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4412A1C(v9, v10, v11, v12, v13, v14, v15, v16, v34);
  if (v0 && (sub_1C456902C(&qword_1EC0BDE68, &qword_1C4F322B0), sub_1C4406320(), sub_1C4435698(), v17))
  {
    sub_1C441AB14();
    while (1)
    {
      sub_1C440C86C();
      if (v19)
      {
        break;
      }

      v20 = sub_1C44082FC(v18);
      v1(v20);
      v21 = *(v2 + 40);
      sub_1C4405518();
      sub_1C4D52868(&qword_1EDDEFF90, v22);
      sub_1C442C170();
      sub_1C4403BB4();
      while (1)
      {
        sub_1C4420A10(v23);
        if (v25)
        {
          break;
        }

        v26 = sub_1C4401470();
        v1(v26);
        sub_1C4405518();
        sub_1C4D52868(&qword_1EDDEFF88, v27);
        sub_1C440FF54();
        v28 = sub_1C4417BC8();
        (v2)(v28);
        if (v21)
        {
          v33 = sub_1C445EB30();
          (v2)(v33);
          v2 = v3;
          goto LABEL_12;
        }

        v23 = sub_1C440C144();
      }

      v29 = sub_1C442DA34(v24);
      v30(v29);
      sub_1C4418AE4();
      if (v32)
      {
        goto LABEL_16;
      }

      *(v2 + 16) = v31;
LABEL_12:
      sub_1C4432F00();
      if (v25)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_1C443F448();
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C4D52868(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WalletOrderKeyValueStore.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  WalletOrderKeyValueStore.init(config:)(a1);
  return v2;
}

uint64_t WalletOrderKeyValueStore.fetchTransactionDetails(for:)()
{
  v1 = *(v0 + 16);
  result = sub_1C448E2AC();
  if (!result)
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void *WalletOrderKeyValueStore.init(config:)(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = type metadata accessor for Configuration();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44098F0(a1, v9);
  v10 = type metadata accessor for KeyValueStore();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = KeyValueStore.init(config:domain:)(v9, 0xD000000000000016, 0x80000001C4FC7800);
  if (v2)
  {
    sub_1C4467948(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v13;
    sub_1C4467948(a1);
    v3[2] = v14;
  }

  return v3;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WalletOrderKeyValueStore.promoteStore()()
{
  v1 = *(v0 + 16);
  v2._object = 0x80000001C4FC7800;
  v2._countAndFlagsBits = 0xD000000000000016;
  KeyValueStore.copyAllKeyValues(to:clearCurrentDomain:clearNewDomain:)(v2, 1, 1);
}

uint64_t WalletOrderKeyValueStore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t WalletOrderKeyValueStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1C4D52BA4(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = sub_1C4EFEEF8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v27 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v27 - v13;
  v14 = *(a1 + 16);
  v15 = (a1 + 32);
  v33 = (v16 + 8);
  v28 = v9;
  v29 = v6;
  if (v14)
  {
    do
    {
      v32 = v14;
      v17 = v15[4];
      sub_1C4409678(v15, v15[3]);
      v31 = v17;
      sub_1C4EFF7C8();
      sub_1C4EFEBF8();
      sub_1C44FDE5C(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
      sub_1C4F01578();
      sub_1C4F01578();
      if (v37 == v35 && v38 == v36)
      {
        v19 = 1;
      }

      else
      {
        v19 = sub_1C4F02938();
      }

      v20 = *v33;
      (*v33)(v39, v3);
      v20(v34, v3);
      if (v19)
      {
        v21 = v15[4];
        sub_1C4409678(v15, v15[3]);
        sub_1C4EFF7D8();
        sub_1C4EFCA18();
      }

      v22 = v28;
      sub_1C4EFF7C8();
      v23 = v29;
      sub_1C4EFE558();
      sub_1C4F01578();
      sub_1C4F01578();
      if (v37 == v35 && v38 == v36)
      {

        v20(v23, v3);
        v20(v22, v3);
      }

      else
      {
        v25 = sub_1C4F02938();

        v20(v23, v3);
        v20(v22, v3);
        if ((v25 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v26 = v15[4];
      sub_1C4409678(v15, v15[3]);
      sub_1C4EFF7D8();
      sub_1C4EFC9F8();
LABEL_18:
      v15 += 5;
      v14 = v32 - 1;
    }

    while (v32 != 1);
  }
}

void sub_1C4D52F58(uint64_t a1, uint64_t a2)
{
  v20[7] = a2;
  v3 = sub_1C4EFEEF8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  v10 = *(a1 + 16);
  v11 = (a1 + 32);
  for (i = (v12 + 8); v10; --v10)
  {
    v14 = v11[4];
    sub_1C4409678(v11, v11[3]);
    sub_1C4EFF7C8();
    sub_1C4EFE558();
    sub_1C44FDE5C(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v20[4] == v20[2] && v20[5] == v20[3])
    {

      v18 = *i;
      (*i)(v6, v3);
      v18(v9, v3);
    }

    else
    {
      v16 = sub_1C4F02938();

      v17 = *i;
      (*i)(v6, v3);
      v17(v9, v3);
      if ((v16 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v19 = v11[4];
    sub_1C4409678(v11, v11[3]);
    sub_1C4EFF7D8();
    sub_1C4EFC9F8();
LABEL_10:
    v11 += 5;
  }
}

void *sub_1C4D531BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *(a1 + 16);
  result = (a1 + 32);
  v10 = v8 + 1;
  do
  {
    if (!--v10)
    {
      break;
    }

    v11 = result + 5;
    sub_1C4D53D48(result, a2, a3, a4);
    result = v11;
  }

  while (!v4);
  return result;
}

void *sub_1C4D53224(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  result = (a1 + 32);
  v6 = v4 + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = result + 5;
    sub_1C4D54920(result, a2);
    result = v7;
  }

  while (!v2);
  return result;
}

uint64_t WalletOrderMatcher.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for WalletOrderMatcher();
  *(a4 + v8[7]) = 1056964608;
  v9 = a4 + v8[8];
  sub_1C4EFCEF8();
  sub_1C440053C();
  sub_1C4485774(a1, a4);
  v10 = v8[5];
  sub_1C43FD90C();
  result = sub_1C4485774(a2, a4 + v11);
  *(a4 + v8[6]) = v7;
  return result;
}

uint64_t WalletOrderMatcher.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WalletOrderMatcher() + 20);
  sub_1C43FD90C();
  return sub_1C44719E4(v1 + v4, a1);
}

uint64_t WalletOrderMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WalletOrderMatcher();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t WalletOrderMatcher.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WalletOrderMatcher() + 32);
  v4 = sub_1C4EFD548();
  v5 = sub_1C43FBCE0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

BOOL sub_1C4D53414()
{
  sub_1C456902C(&qword_1EC0B8A30, &unk_1C4F0DE50);
  sub_1C4EFC828();
  v0 = sub_1C4F013E8();

  return (v0 & 1) == 0;
}

uint64_t sub_1C4D53494(void *a1, uint64_t a2)
{
  v41 = a2;
  v39 = sub_1C4EFC808();
  v35 = *(v39 - 8);
  v3 = v35;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1C456902C(&qword_1EC0B8A38, &qword_1C4F32310);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v38 = &v33 - v7;
  v34 = sub_1C4EFCAA8();
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  sub_1C4EFCA98();
  v15 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4EFF7D8();
  sub_1C4EFCA78();
  v16 = v34;
  (*(v8 + 16))(v11, v14, v34);
  sub_1C456902C(&qword_1EC0C6948, "8d\a");
  v17 = *(v3 + 72);
  v18 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C4F0D130;
  sub_1C442E860(a1, v42);
  sub_1C4509A40(v42, v20, v21, v22, v23, v24, v25, v26, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42[0], v42[1], v42[2]);
  sub_1C4420C3C(v42, &qword_1EC0C0F38, &qword_1C4F41A90);
  v42[0] = v19;
  sub_1C44FDE5C(&qword_1EC0C2318, MEMORY[0x1E699C748]);
  sub_1C456902C(&qword_1EC0C6920, ">d\a");
  sub_1C44FDEA4();
  sub_1C4F020C8();
  v27 = MEMORY[0x1E699C7B8];
  sub_1C44FDE5C(&qword_1EC0C6950, MEMORY[0x1E699C7B8]);
  sub_1C44FDE5C(&qword_1EC0C6958, v27);
  sub_1C44FDE5C(&qword_1EC0C6960, v27);
  v28 = v38;
  sub_1C4EFC818();
  v29 = v41;
  sub_1C45896CC();
  v30 = *(*v29 + 16);
  sub_1C458A24C();
  (*(v8 + 8))(v14, v16);
  v31 = *v29;
  *(v31 + 16) = v30 + 1;
  return (*(v37 + 32))(v31 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v30, v28, v40);
}

uint64_t sub_1C4D538F0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v54 = a3;
  v4 = sub_1C4EFC808();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&qword_1EC0B8A20, &unk_1C4F0DE40);
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v42 - v9;
  v10 = sub_1C456902C(&qword_1EC0C6900, ">d\a");
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v42 - v12;
  v14 = sub_1C4EFC898();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  sub_1C4500964();
  v23 = v22;
  sub_1C4EFC888();
  v52 = 0;
  v53 = 0xE000000000000000;
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_1C4D531BC(v23, v21, &v52, &v50);
  v45 = v3;
  v24 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v24 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    goto LABEL_7;
  }

  v25 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v25 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
LABEL_7:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFC8E8();
    v26 = sub_1C4EFC8F8();
    sub_1C440BAA8(v13, 0, 1, v26);
    sub_1C4EFC848();
  }

  v27 = *(v15 + 16);
  v43 = v14;
  v27(v18, v21, v14);
  sub_1C4505A9C(v23, v49);

  sub_1C4509A40(v49, v28, v29, v30, v31, v32, v33, v34, v42, v43, v44, v45, v46, v47, v48, v49[0], v49[1], v49[2], v49[3], v49[4]);
  sub_1C4420C3C(v49, &qword_1EC0C0F38, &qword_1C4F41A90);
  v35 = MEMORY[0x1E699C770];
  sub_1C44FDE5C(&qword_1EC0C6908, MEMORY[0x1E699C770]);
  sub_1C44FDE5C(&qword_1EC0C6910, v35);
  sub_1C44FDE5C(&qword_1EC0C6918, v35);
  v42 = v21;
  v36 = v46;
  v37 = v43;
  sub_1C4EFC818();
  v38 = v54;
  sub_1C4589730();
  v39 = *(*v38 + 16);
  sub_1C458A2A8();
  v40 = *v38;
  *(v40 + 16) = v39 + 1;
  (*(v47 + 32))(v40 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v39, v36, v48);

  return (*(v15 + 8))(v42, v37);
}

uint64_t sub_1C4D53D48(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v90 = a3;
  v91 = a4;
  v93 = a2;
  v81 = sub_1C4EF9F88();
  v79 = *(v81 - 8);
  v5 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v78 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v80 = &v76 - v9;
  v82 = sub_1C4EF9CD8();
  v77 = *(v82 - 8);
  v10 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v76 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&unk_1EC0BAD50, &unk_1C4F168E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v85 = &v76 - v14;
  v86 = sub_1C4EF9648();
  v84 = *(v86 - 8);
  v15 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v83 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C4F01188();
  v88 = *(v17 - 8);
  v89 = v17;
  v18 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C4EFEEF8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v92 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v76 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v76 - v28;
  v30 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4EFF7F8();
  sub_1C4EFE3E8();
  sub_1C44FDE5C(&qword_1EDDFCCB0, MEMORY[0x1E69A9748]);
  LOBYTE(v30) = sub_1C4F010B8();
  v31 = *(v21 + 8);
  v31(v26, v20);
  if (v30)
  {
    v31(v29, v20);
    v32 = a1[4];
    sub_1C4409678(a1, a1[3]);
    sub_1C4EFF7D8();
    return sub_1C4EFC878();
  }

  else
  {
    sub_1C4EFE9F8();
    v34 = sub_1C4F010B8();
    v31(v26, v20);
    if (v34)
    {
      v31(v29, v20);
      v35 = a1[4];
      sub_1C4409678(a1, a1[3]);
      sub_1C4EFF7D8();
      return sub_1C4EFC858();
    }

    else
    {
      sub_1C4EFEC78();
      v36 = sub_1C4F010B8();
      v31(v26, v20);
      if (v36)
      {
        v31(v29, v20);
        v37 = a1[4];
        sub_1C4409678(a1, a1[3]);
        sub_1C4EFF7C8();
        v38 = v92;
        sub_1C4EFEE08();
        v39 = sub_1C44DBB50(v26, v38);
        v31(v38, v20);
        v31(v26, v20);
        if (v39)
        {
          v40 = a1[4];
          sub_1C4409678(a1, a1[3]);
          v41 = sub_1C4EFF7D8();
          v42 = v90;
          v43 = v90[1];
          *v90 = v41;
          v42[1] = v44;
        }

        v45 = a1[4];
        sub_1C4409678(a1, a1[3]);
        sub_1C4EFF7C8();
        sub_1C4EFEC18();
        v46 = sub_1C44DBB50(v26, v38);
        v31(v38, v20);
        result = (v31)(v26, v20);
        if (v46)
        {
          v47 = a1[4];
          sub_1C4409678(a1, a1[3]);
          v48 = sub_1C4EFF7D8();
          v49 = v91;
          v50 = v91[1];
          *v91 = v48;
          v49[1] = v51;
        }
      }

      else
      {
        sub_1C4EFECF8();
        v52 = sub_1C4F010B8();
        v31(v26, v20);
        if (v52)
        {
          v31(v29, v20);
          v53 = a1[4];
          sub_1C4409678(a1, a1[3]);
          sub_1C4EFF7C8();
          v54 = v92;
          sub_1C4EFE698();
          v55 = sub_1C44DBB50(v26, v54);
          v31(v54, v20);
          result = (v31)(v26, v20);
          if (v55)
          {
            v56 = a1[4];
            sub_1C4409678(a1, a1[3]);
            sub_1C4EFF7D8();
            v57 = v87;
            sub_1C4F01178();
            v58 = sub_1C4F01148();
            v60 = v59;

            result = (*(v88 + 8))(v57, v89);
            if (v60 >> 60 != 15)
            {
              v61 = sub_1C4EF9348();
              v62 = *(v61 + 48);
              v63 = *(v61 + 52);
              swift_allocObject();
              sub_1C4EF9338();
              sub_1C44FDE5C(&qword_1EC0BAA18, MEMORY[0x1E6968278]);
              v64 = v85;
              v65 = v86;
              v66 = v94;
              sub_1C4EF9328();
              if (v66)
              {

                sub_1C441DFEC(v58, v60);

                sub_1C440BAA8(v64, 1, 1, v65);
                return sub_1C4420C3C(v64, &unk_1EC0BAD50, &unk_1C4F168E0);
              }

              else
              {

                sub_1C440BAA8(v64, 0, 1, v65);
                v70 = v83;
                v69 = v84;
                (*(v84 + 32))(v83, v64, v65);
                v71 = v78;
                sub_1C4EF9F58();
                v72 = v80;
                sub_1C4EF9F08();
                (*(v79 + 8))(v71, v81);
                v73 = v82;
                if (sub_1C44157D4(v72, 1, v82) == 1)
                {
                  (*(v69 + 8))(v70, v65);
                  sub_1C441DFEC(v58, v60);
                  return sub_1C4420C3C(v72, &unk_1EC0B84E0, qword_1C4F0D2D0);
                }

                else
                {
                  v75 = v76;
                  v74 = v77;
                  (*(v77 + 32))(v76, v72, v73);
                  sub_1C4EF9AD8();
                  sub_1C4EFC868();
                  sub_1C441DFEC(v58, v60);
                  (*(v74 + 8))(v75, v73);
                  return (*(v84 + 8))(v83, v65);
                }
              }
            }
          }
        }

        else
        {
          sub_1C4EFE558();
          v67 = sub_1C4F010B8();
          v31(v26, v20);
          result = (v31)(v29, v20);
          if (v67)
          {
            v68 = a1[4];
            sub_1C4409678(a1, a1[3]);
            sub_1C4EFF7D8();
            return sub_1C4EFC838();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C4D547A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_1C4EFC998();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4500964();
  v10 = v9;
  sub_1C4EFC988();
  sub_1C4D53224(v10, v8);

  sub_1C4589794();
  v11 = *(*a3 + 16);
  sub_1C458A304();
  v12 = *a3;
  *(v12 + 16) = v11 + 1;
  (*(v5 + 16))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v8, v4);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1C4D54920(void *a1, uint64_t a2)
{
  v124 = a2;
  v3 = sub_1C456902C(&qword_1EC0C68F8, ">d\a");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v120 = &v104 - v5;
  v121 = sub_1C4EFC948();
  v117 = *(v121 - 8);
  v6 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v116 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v115 = &v104 - v9;
  v113 = sub_1C4EF9F88();
  v110 = *(v113 - 8);
  v10 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v109 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v112 = &v104 - v14;
  v114 = sub_1C4EF9CD8();
  v111 = *(v114 - 8);
  v15 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v106 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C456902C(&unk_1EC0BAD50, &unk_1C4F168E0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v118 = &v104 - v19;
  v119 = sub_1C4EF9648();
  v108 = *(v119 - 8);
  v20 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v107 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C4F01188();
  v122 = *(v22 - 8);
  v123 = v22;
  v23 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1C4EFEEF8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v104 - v32;
  v35 = a1[3];
  v34 = a1[4];
  v128 = sub_1C4409678(a1, v35);
  v129 = v34;
  v130 = v35;
  v36 = v30;
  sub_1C4EFF7F8();
  sub_1C4EFECF8();
  v37 = sub_1C44DBB50(v33, v30);
  v38 = *(v27 + 8);
  v38(v36, v26);
  v38(v33, v26);
  v127 = v27 + 8;
  if (v37)
  {
    v39 = a1[4];
    sub_1C4409678(a1, a1[3]);
    sub_1C4EFF7C8();
    sub_1C4EFEEE8();
    v40 = sub_1C44DBB50(v33, v36);
    v38(v36, v26);
    v105 = v26;
    v38(v33, v26);
    if (v40)
    {
      v41 = a1[3];
      v42 = a1[4];
      v104 = a1;
      sub_1C4409678(a1, v41);
      sub_1C4EFF7D8();
      sub_1C4F01178();
      v43 = sub_1C4F01148();
      v45 = v44;

      (*(v122 + 8))(v25, v123);
      if (v45 >> 60 == 15)
      {
        a1 = v104;
      }

      else
      {
        v46 = sub_1C4EF9348();
        v47 = *(v46 + 48);
        v48 = *(v46 + 52);
        swift_allocObject();
        sub_1C4EF9338();
        sub_1C44FDE5C(&qword_1EC0BAA18, MEMORY[0x1E6968278]);
        v49 = v118;
        v50 = v119;
        v51 = v126;
        sub_1C4EF9328();
        if (v51)
        {

          sub_1C441DFEC(v43, v45);

          sub_1C440BAA8(v49, 1, 1, v50);
          sub_1C4420C3C(v49, &unk_1EC0BAD50, &unk_1C4F168E0);
        }

        else
        {
          v122 = v43;
          v123 = v45;
          v126 = 0;

          sub_1C440BAA8(v49, 0, 1, v50);
          v52 = v108;
          v53 = v107;
          (*(v108 + 32))(v107, v49, v50);
          v54 = v109;
          sub_1C4EF9F58();
          v55 = v50;
          v56 = v112;
          sub_1C4EF9F08();
          v57 = v54;
          v58 = v56;
          (*(v110 + 8))(v57, v113);
          v59 = v56;
          v60 = v114;
          if (sub_1C44157D4(v59, 1, v114) == 1)
          {
            (*(v52 + 8))(v53, v55);
            sub_1C441DFEC(v122, v123);
            sub_1C4420C3C(v58, &unk_1EC0B84E0, qword_1C4F0D2D0);
          }

          else
          {
            v61 = v106;
            (*(v111 + 32))(v106, v58, v60);
            sub_1C4EF9AD8();
            sub_1C4EFC968();
            sub_1C441DFEC(v122, v123);
            (*(v111 + 8))(v61, v60);
            (*(v52 + 8))(v53, v119);
          }
        }

        a1 = v104;
      }
    }

    v26 = v105;
  }

  sub_1C4EFF7F8();
  sub_1C4EFEE58();
  v62 = sub_1C44DBB50(v33, v36);
  v38(v36, v26);
  v38(v33, v26);
  v125 = v38;
  if ((v62 & 1) == 0)
  {
    goto LABEL_80;
  }

  v63 = a1[4];
  sub_1C4409678(a1, a1[3]);
  result = sub_1C4EFF7D8();
  v66 = v65;
  v67 = HIBYTE(v65) & 0xF;
  v68 = result & 0xFFFFFFFFFFFFLL;
  if ((v66 & 0x2000000000000000) != 0)
  {
    v69 = v67;
  }

  else
  {
    v69 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v69)
  {

    goto LABEL_80;
  }

  if ((v66 & 0x1000000000000000) == 0)
  {
    if ((v66 & 0x2000000000000000) != 0)
    {
      v131[0] = result;
      v131[1] = v66 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v67)
        {
          if (--v67)
          {
            v83 = 0;
            v84 = v131 + 1;
            while (1)
            {
              v85 = *v84 - 48;
              if (v85 > 9)
              {
                break;
              }

              v86 = 10 * v83;
              if ((v83 * 10) >> 64 != (10 * v83) >> 63)
              {
                break;
              }

              v83 = v86 + v85;
              if (__OFADD__(v86, v85))
              {
                break;
              }

              ++v84;
              if (!--v67)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_75;
        }

LABEL_90:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v67)
        {
          v90 = 0;
          v91 = v131;
          while (1)
          {
            v92 = *v91 - 48;
            if (v92 > 9)
            {
              break;
            }

            v93 = 10 * v90;
            if ((v90 * 10) >> 64 != (10 * v90) >> 63)
            {
              break;
            }

            v90 = v93 + v92;
            if (__OFADD__(v93, v92))
            {
              break;
            }

            ++v91;
            if (!--v67)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_75;
      }

      if (v67)
      {
        if (--v67)
        {
          v75 = 0;
          v76 = v131 + 1;
          while (1)
          {
            v77 = *v76 - 48;
            if (v77 > 9)
            {
              break;
            }

            v78 = 10 * v75;
            if ((v75 * 10) >> 64 != (10 * v75) >> 63)
            {
              break;
            }

            v75 = v78 - v77;
            if (__OFSUB__(v78, v77))
            {
              break;
            }

            ++v76;
            if (!--v67)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_75;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (v66 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1C4F022F8();
      }

      v70 = *result;
      if (v70 == 43)
      {
        if (v68 >= 1)
        {
          v67 = v68 - 1;
          if (v68 != 1)
          {
            v79 = 0;
            if (result)
            {
              v80 = (result + 1);
              while (1)
              {
                v81 = *v80 - 48;
                if (v81 > 9)
                {
                  goto LABEL_75;
                }

                v82 = 10 * v79;
                if ((v79 * 10) >> 64 != (10 * v79) >> 63)
                {
                  goto LABEL_75;
                }

                v79 = v82 + v81;
                if (__OFADD__(v82, v81))
                {
                  goto LABEL_75;
                }

                ++v80;
                if (!--v67)
                {
                  goto LABEL_76;
                }
              }
            }

            goto LABEL_67;
          }

          goto LABEL_75;
        }

        goto LABEL_89;
      }

      if (v70 != 45)
      {
        if (v68)
        {
          v87 = 0;
          if (result)
          {
            while (1)
            {
              v88 = *result - 48;
              if (v88 > 9)
              {
                goto LABEL_75;
              }

              v89 = 10 * v87;
              if ((v87 * 10) >> 64 != (10 * v87) >> 63)
              {
                goto LABEL_75;
              }

              v87 = v89 + v88;
              if (__OFADD__(v89, v88))
              {
                goto LABEL_75;
              }

              ++result;
              if (!--v68)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_67;
        }

LABEL_75:
        LOBYTE(v67) = 1;
LABEL_76:
        v132 = v67;
        v94 = v67;

        if ((v94 & 1) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_80;
      }

      if (v68 >= 1)
      {
        v67 = v68 - 1;
        if (v68 != 1)
        {
          v71 = 0;
          if (result)
          {
            v72 = (result + 1);
            while (1)
            {
              v73 = *v72 - 48;
              if (v73 > 9)
              {
                goto LABEL_75;
              }

              v74 = 10 * v71;
              if ((v71 * 10) >> 64 != (10 * v71) >> 63)
              {
                goto LABEL_75;
              }

              v71 = v74 - v73;
              if (__OFSUB__(v74, v73))
              {
                goto LABEL_75;
              }

              ++v72;
              if (!--v67)
              {
                goto LABEL_76;
              }
            }
          }

LABEL_67:
          LOBYTE(v67) = 0;
          goto LABEL_76;
        }

        goto LABEL_75;
      }

      __break(1u);
    }

    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v132 = 0;
  sub_1C4AA1330(result, v66, 10);
  v103 = v102;

  if ((v103 & 1) == 0)
  {
LABEL_77:
    v95 = v120;
    sub_1C4EFC938();
    v96 = v121;
    if (sub_1C44157D4(v95, 1, v121) == 1)
    {
      sub_1C4420C3C(v95, &qword_1EC0C68F8, ">d\a");
    }

    else
    {
      v97 = v117;
      v98 = v115;
      (*(v117 + 32))(v115, v95, v96);
      (*(v97 + 16))(v116, v98, v96);
      sub_1C4EFC978();
      (*(v97 + 8))(v98, v96);
    }
  }

LABEL_80:
  sub_1C4EFF7F8();
  sub_1C4EFE598();
  v99 = sub_1C44DBB50(v33, v36);
  v100 = v125;
  v125(v36, v26);
  result = v100(v33, v26);
  if (v99)
  {
    v101 = a1[4];
    sub_1C4409678(a1, a1[3]);
    sub_1C4EFF7D8();
    return sub_1C4EFC958();
  }

  return result;
}

uint64_t sub_1C4D55618(uint64_t a1, void *a2)
{
  sub_1C43FBE94();
  v4 = sub_1C4EFF8A8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v10);
  v11 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C43FD258();
  sub_1C4EFF7B8();
  v12 = a2[4];
  sub_1C4409678(a2, a2[3]);
  sub_1C43FD258();
  sub_1C4EFF7B8();
  sub_1C43FE990();
  v13 = sub_1C4EFF878();
  v14 = *(v7 + 8);
  v15 = sub_1C440BB4C();
  v14(v15);
  v16 = sub_1C44158DC();
  v14(v16);
  return v13 & 1;
}

uint64_t sub_1C4D5575C(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26[0] = v26 - v4;
  v5 = type metadata accessor for GraphTriple(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v26 - v14;
  v16 = 0;
  v17 = *(a1 + 16);
  while (1)
  {
    if (v17 == v16)
    {
      return 0;
    }

    sub_1C44719E4(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v9);
    v18 = &v9[*(v5 + 32)];
    v19 = *v18 == 0xD000000000000016 && 0x80000001C4FC7900 == *(v18 + 1);
    if (v19 || (sub_1C4F02938() & 1) != 0)
    {
      break;
    }

    sub_1C44DBDB4(v9, type metadata accessor for GraphTriple);
    ++v16;
  }

  sub_1C4485774(v9, v12);
  v20 = sub_1C4485774(v12, v15);
  MEMORY[0x1EEE9AC00](v20);
  v26[-2] = v15;
  v21 = v26[0];
  sub_1C4BABDA0();
  if (sub_1C44157D4(v21, 1, v5) == 1)
  {
    sub_1C4420C3C(v21, &unk_1EC0BC900, &unk_1C4F142D0);
    v22 = 0;
  }

  else
  {
    v23 = (v21 + *(v5 + 32));
    v22 = *v23;
    v24 = v23[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DBDB4(v21, type metadata accessor for GraphTriple);
  }

  sub_1C44DBDB4(v15, type metadata accessor for GraphTriple);
  return v22;
}

uint64_t sub_1C4D55A80(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BCAE0, &unk_1C4F142A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26[0] = v26 - v4;
  v5 = type metadata accessor for ConstructionGraphTriple(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v26 - v14;
  v16 = 0;
  v17 = *(a1 + 16);
  while (1)
  {
    if (v17 == v16)
    {
      return 0;
    }

    sub_1C44719E4(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v9);
    v18 = &v9[*(v5 + 32)];
    v19 = *v18 == 0xD000000000000016 && 0x80000001C4FC7900 == *(v18 + 1);
    if (v19 || (sub_1C4F02938() & 1) != 0)
    {
      break;
    }

    sub_1C44DBDB4(v9, type metadata accessor for ConstructionGraphTriple);
    ++v16;
  }

  sub_1C4485774(v9, v12);
  v20 = sub_1C4485774(v12, v15);
  MEMORY[0x1EEE9AC00](v20);
  v26[-2] = v15;
  v21 = v26[0];
  sub_1C4BABF60();
  if (sub_1C44157D4(v21, 1, v5) == 1)
  {
    sub_1C4420C3C(v21, &unk_1EC0BCAE0, &unk_1C4F142A0);
    v22 = 0;
  }

  else
  {
    v23 = (v21 + *(v5 + 32));
    v22 = *v23;
    v24 = v23[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DBDB4(v21, type metadata accessor for ConstructionGraphTriple);
  }

  sub_1C44DBDB4(v15, type metadata accessor for ConstructionGraphTriple);
  return v22;
}

uint64_t sub_1C4D55DA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_1C4EFEEF8();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440A89C();
  v12 = a3(0);
  v13 = *(v12 + 24);
  if (sub_1C4EFF878())
  {
    v14 = *(v12 + 28);
    sub_1C4EFE558();
    v15 = sub_1C44DBB50(a1 + v14, v3);
    (*(v9 + 8))(v3, v6);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1C4D55EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v171 = a2;
  v174 = a1;
  v168 = a3;
  v4 = sub_1C4EFF0C8();
  v5 = *(v4 - 8);
  v172 = v4;
  v173 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v163 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v158 = &v151 - v9;
  v167 = sub_1C4EF9CD8();
  v166 = *(v167 - 8);
  v10 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v165 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v161 = (&v151 - v14);
  v170 = type metadata accessor for Source();
  v15 = *(*(v170 - 1) + 64);
  MEMORY[0x1EEE9AC00](v170);
  v160 = &v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v159 = (&v151 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v169 = (&v151 - v20);
  v21 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v162 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v157 = &v151 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v164 = &v151 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v151 - v29;
  v31 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v151 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v151 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v151 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v151 - v42;
  v44 = type metadata accessor for EntityTriple(0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v151 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v151 - v49;
  v51 = v181;
  result = sub_1C44F4038();
  if (v51)
  {
    return result;
  }

  v155 = v37;
  v151 = v34;
  v154 = v47;
  v152 = 0;
  v153 = v3;
  v181 = v50;
  v156 = v30;
  v53 = v174;
  sub_1C44D0BD8(v174, v43);
  if (sub_1C44157D4(v43, 1, v44) == 1)
  {
    sub_1C4420C3C(v43, &qword_1EC0BA590, &qword_1C4F1F430);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v54 = sub_1C4F00978();
    sub_1C442B738(v54, qword_1EDE2DE10);
    v55 = sub_1C4F00968();
    v56 = sub_1C4F01CD8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1C43F8000, v55, v56, "WalletOrder Matcher: skipping first entityTriple is empty", v57, 2u);
      MEMORY[0x1C6942830](v57, -1, -1);
    }

    sub_1C46828B4();
    swift_allocError();
    *v58 = 0;
    return swift_willThrow();
  }

  v59 = v181;
  sub_1C4485774(v43, v181);
  v60 = v171;
  if (!v171)
  {
    v65 = v156;
    v66 = v172;
    sub_1C440BAA8(v156, 1, 1, v172);
    v67 = v164;
    sub_1C4EFF008();
    sub_1C4420C3C(v65, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C440BAA8(v67, 0, 1, v66);
    sub_1C44DDDBC(v67, v65);
    v68 = v162;
    sub_1C446C964(v65, v162, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v69 = sub_1C44157D4(v68, 1, v66);
    v70 = v173;
    if (v69 != 1)
    {
      v71 = v163;
      (*(v173 + 32))(v163, v68, v66);
      v72 = v168;
      sub_1C4EFCEF8();
      v73 = type metadata accessor for EntityMatch(0);
      v74 = *(v70 + 16);
      v74(v72 + v73[5], v59, v66);
      v74(v72 + v73[6], v71, v66);
      v75 = v165;
      sub_1C4EF9C88();
      sub_1C4EF9AD8();
      v77 = v76;
      (*(v166 + 8))(v75, v167);
      (*(v70 + 8))(v71, v66);
      sub_1C4420C3C(v65, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C44DBDB4(v59, type metadata accessor for EntityTriple);
      result = type metadata accessor for WalletOrderMatcher();
      v78 = *(v153 + *(result + 24));
      *(v72 + v73[7]) = 1056964608;
      *(v72 + v73[8]) = v77;
      *(v72 + v73[9]) = v78;
      *(v72 + v73[10]) = 0;
      return result;
    }

    goto LABEL_88;
  }

  sub_1C44D0BD8(v171, v40);
  v61 = sub_1C44157D4(v40, 1, v44);
  v62 = v156;
  v63 = v172;
  if (v61 == 1)
  {
    sub_1C4420C3C(v40, &qword_1EC0BA590, &qword_1C4F1F430);
    v64 = 1;
  }

  else
  {
    (*(v173 + 16))(v156, v40, v172);
    sub_1C44DBDB4(v40, type metadata accessor for EntityTriple);
    v64 = 0;
  }

  v79 = v169;
  sub_1C440BAA8(v62, v64, 1, v63);
  sub_1C44719E4(v59 + *(v44 + 36), v79);
  v80 = v170;
  if (qword_1EDDFD1F0 != -1)
  {
    goto LABEL_84;
  }

LABEL_15:
  v81 = sub_1C442B738(v80, &qword_1EDDFD1F8);
  v82 = v79[1];
  v83 = *v79 == *v81 && v82 == v81[1];
  v163 = *v79;
  v162 = v82;
  if (!v83 && (sub_1C4F02938() & 1) == 0)
  {
    if (qword_1EDDFD1A0 != -1)
    {
      swift_once();
    }

    v84 = sub_1C442B738(v80, &qword_1EDDFD1A8);
    v85 = v163 == *v84 && v162 == v84[1];
    if (!v85 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_77;
    }
  }

  v86 = v155;
  sub_1C44D0BD8(v53, v155);
  if (sub_1C44157D4(v86, 1, v44) == 1)
  {
    v87 = v86;
    v88 = v62;
    sub_1C4420C3C(v87, &qword_1EC0BA590, &qword_1C4F1F430);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v89 = sub_1C4F00978();
    sub_1C442B738(v89, qword_1EDE2DE10);
    v90 = sub_1C4F00968();
    v91 = sub_1C4F01CD8();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_1C43F8000, v90, v91, "WalletOrder Matcher: skipping entityTriples are empty", v92, 2u);
      MEMORY[0x1C6942830](v92, -1, -1);
    }

    sub_1C46828B4();
    swift_allocError();
    *v93 = 0;
    swift_willThrow();
    sub_1C4420C3C(v88, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C44DBDB4(v59, type metadata accessor for EntityTriple);
    return sub_1C44DBDB4(v79, type metadata accessor for Source);
  }

  sub_1C4485774(v86, v154);
  v94 = v151;
  sub_1C44D0BD8(v60, v151);
  if (sub_1C44157D4(v94, 1, v44) == 1)
  {
    sub_1C4420C3C(v94, &qword_1EC0BA590, &qword_1C4F1F430);
LABEL_67:
    v177 = 0;
    v175 = 0u;
    v176 = 0u;
LABEL_68:
    v115 = v62;
    sub_1C4420C3C(&v175, &qword_1EC0C68F0, "<d\a");
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v116 = sub_1C4F00978();
    sub_1C442B738(v116, qword_1EDE2DE10);
    v117 = sub_1C4F00968();
    v118 = sub_1C4F01CB8();
    v119 = os_log_type_enabled(v117, v118);
    v120 = v154;
    if (v119)
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_1C43F8000, v117, v118, "WalletOrder Matcher: Graph or Construction Triple not seen", v121, 2u);
      MEMORY[0x1C6942830](v121, -1, -1);
    }

    sub_1C46828B4();
    swift_allocError();
    *v122 = 0;
    swift_willThrow();
    sub_1C44DBDB4(v120, type metadata accessor for EntityTriple);
    sub_1C4420C3C(v115, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C44DBDB4(v59, type metadata accessor for EntityTriple);
    return sub_1C44DBDB4(v79, type metadata accessor for Source);
  }

  sub_1C456902C(&qword_1EC0B87F0, &unk_1C4F0DBE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_67;
  }

  if (!*(&v176 + 1))
  {
    goto LABEL_68;
  }

  v95 = v62;
  sub_1C441D670(&v175, v178);
  v96 = v179;
  v97 = v180;
  sub_1C4409678(v178, v179);
  (*(*(v97 + 8) + 16))(&v175, v96);
  v98 = v175;
  if (v175 < 1)
  {
    sub_1C44DBDB4(v154, type metadata accessor for EntityTriple);
    v53 = v174;
    v62 = v95;
    goto LABEL_76;
  }

  v99 = 0;
  v53 = v174;
  v62 = v95;
  v80 = v161;
  do
  {
    v100 = __OFADD__(v99, v98 & 1);
    v99 += v98 & 1;
    if (v100)
    {
      __break(1u);
LABEL_84:
      swift_once();
      goto LABEL_15;
    }

    v107 = v98 > 1;
    v98 >>= 1;
  }

  while (v107);
  if (v99 != 1)
  {
    sub_1C44DBDB4(v154, type metadata accessor for EntityTriple);
    goto LABEL_76;
  }

  v101 = v179;
  v102 = v180;
  sub_1C4409678(v178, v179);
  (*(*(v102 + 8) + 16))(&v175, v101);
  v103 = v175;
  v68 = 1;
  while (1)
  {
    if (qword_1EDDFA6A8 != -1)
    {
      swift_once();
    }

    if (qword_1EDE2DCF0 < v68)
    {
      sub_1C44DBDB4(v154, type metadata accessor for EntityTriple);
      v62 = v156;
      v79 = v169;
      v59 = v181;
      v60 = v171;
      v63 = v172;
      v53 = v174;
LABEL_76:
      sub_1C440962C(v178);
LABEL_77:
      v123 = v62;
      v124 = v153;
      sub_1C44F36C8(v53, v60, &qword_1EC0BA590, &qword_1C4F1F430, sub_1C44F40EC, sub_1C44D0BD8, type metadata accessor for EntityTriple, type metadata accessor for EntityTriple, sub_1C44FE288, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161);
      v126 = v125;
      v181 = type metadata accessor for WalletOrderMatcher();
      v127 = *(v124 + *(v181 + 7));
      if (v126 <= v127)
      {
        v128 = v164;
        sub_1C4EFF008();
        sub_1C4420C3C(v123, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v128, 0, 1, v63);
        sub_1C44DDDBC(v128, v123);
        v126 = v127;
      }

      v68 = v157;
      sub_1C446C964(v123, v157, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v129 = sub_1C44157D4(v68, 1, v63);
      v130 = v63;
      v131 = v168;
      v132 = v158;
      if (v129 != 1)
      {
        v133 = v173;
        (*(v173 + 32))(v158, v68, v130);
        sub_1C4EFCEF8();
        v134 = type metadata accessor for EntityMatch(0);
        v135 = *(v133 + 16);
        v135(v131 + v134[5], v59, v130);
        v135(v131 + v134[6], v132, v130);
        v136 = v165;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v138 = v137;
        (*(v166 + 8))(v136, v167);
        (*(v133 + 8))(v132, v130);
        sub_1C4420C3C(v156, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C44DBDB4(v59, type metadata accessor for EntityTriple);
        result = sub_1C44DBDB4(v79, type metadata accessor for Source);
        v139 = *(v153 + *(v181 + 6));
        *(v131 + v134[7]) = v126;
        *(v131 + v134[8]) = v138;
        *(v131 + v134[9]) = v139;
        *(v131 + v134[10]) = 0;
        return result;
      }

      while (1)
      {
LABEL_88:
        sub_1C4420C3C(v68, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C4F024A8();
        __break(1u);
      }
    }

    sub_1C449E530(v68, v80);
    if (sub_1C44157D4(v80, 1, v170) == 1)
    {
      sub_1C4420C3C(v80, &unk_1EC0C0760, &qword_1C4F170D0);
      v100 = __OFADD__(v68++, 1);
      if (v100)
      {
        goto LABEL_86;
      }

      goto LABEL_66;
    }

    v104 = v80;
    v105 = v160;
    sub_1C4485774(v104, v160);
    v106 = v68 - 1;
    if (__OFSUB__(v68, 1))
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v100 = __OFADD__(v68++, 1);
    if (v100)
    {
      goto LABEL_87;
    }

    v107 = v106 > 0x40;
    if (v106 >= 0x40)
    {
      v108 = 0;
    }

    else
    {
      v108 = 1 << v106;
    }

    if (v107)
    {
      v108 = 0;
    }

    if ((v108 & v103) < 1)
    {
      sub_1C44DBDB4(v105, type metadata accessor for Source);
      goto LABEL_66;
    }

    v109 = v105;
    v110 = v159;
    sub_1C4485774(v109, v159);
    if (*v110 == v163 && v110[1] == v162)
    {
      break;
    }

    v112 = sub_1C4F02938();
    v113 = v110;
    v114 = v112;
    sub_1C44DBDB4(v113, type metadata accessor for Source);
    if (v114)
    {
      goto LABEL_82;
    }

LABEL_66:
    v80 = v161;
  }

  sub_1C44DBDB4(v110, type metadata accessor for Source);
LABEL_82:
  v140 = v168;
  sub_1C4EFCEF8();
  v141 = type metadata accessor for EntityMatch(0);
  v142 = v154;
  (*(v173 + 16))(v140 + v141[5], v154, v172);
  v143 = v180;
  sub_1C4409678(v178, v179);
  v144 = *(*(v143 + 8) + 8);
  v145 = v140 + v141[6];
  sub_1C4EFF7E8();
  v146 = v165;
  sub_1C4EF9C88();
  sub_1C4EF9AD8();
  v148 = v147;
  (*(v166 + 8))(v146, v167);
  sub_1C44DBDB4(v142, type metadata accessor for EntityTriple);
  sub_1C4420C3C(v156, &unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C44DBDB4(v181, type metadata accessor for EntityTriple);
  sub_1C44DBDB4(v169, type metadata accessor for Source);
  v149 = *(v153 + *(type metadata accessor for WalletOrderMatcher() + 24));
  *(v140 + v141[7]) = 0;
  *(v140 + v141[8]) = v148;
  *(v140 + v141[9]) = v149;
  *(v140 + v141[10]) = 0;
  return sub_1C440962C(v178);
}

void sub_1C4D57374(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void (*a5)(void)@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t (*a7)(void)@<X6>, unint64_t *a8@<X7>, uint64_t a9@<X8>, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v218 = a8;
  v225 = a7;
  v229 = a6;
  v234 = a5;
  v236 = a2;
  v245 = a1;
  v228 = a9;
  v235 = sub_1C4EFF0C8();
  v22 = sub_1C43FCDF8(v235);
  v232 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FD230();
  sub_1C43FD2C8(v27);
  v227 = sub_1C4EF9CD8();
  v28 = sub_1C43FCDF8(v227);
  v226 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  sub_1C43FCE30(v33 - v32);
  v34 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  sub_1C43FBD18(v34);
  v36 = *(v35 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBC74();
  v233 = v38;
  sub_1C43FBE44();
  v237 = type metadata accessor for Source();
  v39 = sub_1C43FBCE0(v237);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD230();
  v238 = v44;
  v230 = a4;
  v231 = a3;
  v45 = sub_1C43FD024();
  v47 = sub_1C456902C(v45, v46);
  v48 = sub_1C43FBD18(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FD230();
  sub_1C43FCE30(v52);
  v53 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v54 = sub_1C43FBD18(v53);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C4405BB8();
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v211 - v60;
  v62 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v63 = sub_1C43FBD18(v62);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBD08();
  sub_1C43FEE3C();
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v211 - v67;
  v69 = type metadata accessor for EntityTriple(0);
  v70 = sub_1C43FBCE0(v69);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FBD08();
  v75 = v73 - v74;
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v211 - v77;
  sub_1C44F4038();
  if (!v17)
  {
    v215 = v19;
    v213 = v18;
    v214 = v75;
    v217 = v78;
    v216 = v16;
    v79 = v238;
    sub_1C44D0BD8(v245, v68);
    v80 = sub_1C4401860();
    sub_1C440175C(v80, v81, v69);
    if (!v124)
    {
      v212 = 0;
      sub_1C44032D8();
      v88 = v217;
      sub_1C4485774(v68, v217);
      if (v236)
      {
        sub_1C4415B50(&v247);
        v234();
        v89 = v229(0);
        v90 = sub_1C4401860();
        sub_1C440175C(v90, v91, v89);
        v92 = v235;
        if (v124)
        {
          v117 = v231;
          sub_1C4420C3C(v68, v231, v230);
          v116 = 1;
          v115 = v61;
        }

        else
        {
          v115 = v61;
          (*(v232 + 16))(v61, v68, v235);
          sub_1C44DBDB4(v68, v225);
          v116 = 0;
          v117 = v231;
        }

        v211 = v115;
        sub_1C440BAA8(v115, v116, 1, v92);
        v118 = *(v69 + 36);
        sub_1C43FD90C();
        v120 = v79;
        sub_1C44719E4(v88 + v119, v79);
        if (qword_1EDDFD1F0 != -1)
        {
          sub_1C441BA74();
          swift_once();
        }

        v121 = sub_1C442B738(v237, &qword_1EDDFD1F8);
        v123 = *v79;
        v122 = v79[1];
        v124 = *v79 == *v121 && v122 == v121[1];
        if (v124)
        {
          goto LABEL_28;
        }

        sub_1C43FE5F8();
        if (sub_1C4F02938())
        {
          goto LABEL_28;
        }

        if (qword_1EDDFD1A0 != -1)
        {
          sub_1C441BA88();
          swift_once();
        }

        v125 = sub_1C442B738(v237, &qword_1EDDFD1A8);
        v126 = v123 == *v125 && v122 == v125[1];
        if (v126 || (sub_1C43FE5F8(), (sub_1C4F02938() & 1) != 0))
        {
LABEL_28:
          v127 = v215;
          sub_1C44D0BD8(v245, v215);
          sub_1C440175C(v127, 1, v69);
          if (v124)
          {
            sub_1C4420C3C(v127, &qword_1EC0BA590, &qword_1C4F1F430);
            if (qword_1EDDFD028 == -1)
            {
LABEL_31:
              v128 = sub_1C4F00978();
              sub_1C442B738(v128, qword_1EDE2DE10);
              v129 = sub_1C4F00968();
              v130 = sub_1C4F01CD8();
              v131 = sub_1C43FCEA4(v130);
              v132 = v217;
              if (v131)
              {
                *swift_slowAlloc() = 0;
                sub_1C44011B0(&dword_1C43F8000, v133, v134, "WalletOrder Matcher: skipping entityTriples are empty");
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
              }

              sub_1C46828B4();
              swift_allocError();
              *v135 = 0;
              swift_willThrow();
              sub_1C4420C3C(v211, &unk_1EC0BA0E0, &qword_1C4F105A0);
              sub_1C4420A30();
              v137 = v132;
LABEL_41:
              sub_1C44DBDB4(v137, v136);
              sub_1C441AB50();
              sub_1C44DBDB4(v120, v151);
              return;
            }

LABEL_83:
            sub_1C43FE9B4();
            goto LABEL_31;
          }

          v229 = v123;
          sub_1C44032D8();
          v138 = v127;
          v139 = v214;
          sub_1C4485774(v138, v214);
          sub_1C4415B50(&v244);
          (v234)(v236);
          v140 = sub_1C4401860();
          sub_1C440175C(v140, v141, v89);
          if (v142)
          {
            sub_1C4420C3C(v123, v117, v230);
            if (qword_1EDDFD028 != -1)
            {
              sub_1C43FE9B4();
            }

            v143 = sub_1C4F00978();
            sub_1C442B738(v143, qword_1EDE2DE10);
            v144 = sub_1C4F00968();
            v145 = sub_1C4F01CB8();
            v146 = sub_1C43FCEA4(v145);
            v147 = v217;
            if (v146)
            {
              *swift_slowAlloc() = 0;
              sub_1C44011B0(&dword_1C43F8000, v148, v149, "WalletOrder Matcher: Graph or Construction Triple not seen");
              v139 = v214;
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
            }

            sub_1C46828B4();
            swift_allocError();
            *v150 = 0;
            swift_willThrow();
            sub_1C44DBDB4(v139, type metadata accessor for EntityTriple);
            sub_1C4420C3C(v211, &unk_1EC0BA0E0, &qword_1C4F105A0);
            v137 = v147;
            v136 = type metadata accessor for EntityTriple;
            goto LABEL_41;
          }

          v240[0] = v89;
          v240[1] = sub_1C44FDE5C(v218, a10);
          v152 = sub_1C4422F90(&v239);
          v92 = v235;
          sub_1C4485774(v123, v152);
          sub_1C441D670(&v239, &v241);
          v153 = *(sub_1C4409678(&v241, v242) + *(v89 + 36));
          if (v153 >= 1)
          {
            v154 = 0;
            do
            {
              v155 = __OFADD__(v154, v153 & 1);
              v154 += v153 & 1;
              if (v155)
              {
                __break(1u);
                goto LABEL_79;
              }

              v156 = v153 > 1;
              v153 = v153 >> 1;
            }

            while (v156);
            if (v154 != 1)
            {
              goto LABEL_69;
            }

            v158 = v242;
            v157 = v243;
            sub_1C4409678(&v241, v242);
            (*(*(v157 + 8) + 16))(&v239, v158);
            v159 = v239;
            v120 = &dword_1EDE2D000;
            v160 = 1;
            while (1)
            {
              while (1)
              {
                v161 = v233;
                if (qword_1EDDFA6A8 != -1)
                {
                  swift_once();
                }

                if (qword_1EDE2DCF0 < v160)
                {
                  v92 = v235;
                  v117 = v231;
                  goto LABEL_69;
                }

                sub_1C449E530(v160, v161);
                v162 = sub_1C4401860();
                sub_1C440175C(v162, v163, v237);
                if (!v124)
                {
                  break;
                }

                sub_1C4420C3C(v161, &unk_1EC0C0760, &qword_1C4F170D0);
                v155 = __OFADD__(v160++, 1);
                if (v155)
                {
                  goto LABEL_81;
                }
              }

              v164 = v161;
              v165 = v224;
              sub_1C4485774(v164, v224);
              if (__OFSUB__(v160, 1))
              {
                break;
              }

              v155 = __OFADD__(v160++, 1);
              if (v155)
              {
                goto LABEL_82;
              }

              sub_1C4405EEC();
              if (!v124 & v167)
              {
                v166 = 0;
              }

              if ((v166 & v159) < 1)
              {
                sub_1C44DBDB4(v165, type metadata accessor for Source);
              }

              else
              {
                v168 = v165;
                v169 = v221;
                sub_1C4485774(v168, v221);
                if (*v169 == v229 && *(v169 + 1) == v122)
                {
                  sub_1C44DBDB4(v169, type metadata accessor for Source);
LABEL_77:
                  sub_1C445087C(&v246);
                  sub_1C4EFCEF8();
                  v198 = type metadata accessor for EntityMatch(0);
                  v199 = v214;
                  (*(v232 + 16))(v122 + v198[5], v214, v235);
                  v200 = v243;
                  sub_1C4409678(&v241, v242);
                  v201 = *(*(v200 + 8) + 8);
                  v202 = v122 + v198[6];
                  sub_1C4EFF7E8();
                  sub_1C4460754();
                  sub_1C4EF9AD8();
                  v204 = v203;
                  v205 = sub_1C43FCC24();
                  v206(v205);
                  sub_1C44DBDB4(v199, type metadata accessor for EntityTriple);
                  sub_1C4420C3C(v61, &unk_1EC0BA0E0, &qword_1C4F105A0);
                  sub_1C44DBDB4(v217, type metadata accessor for EntityTriple);
                  sub_1C441AB50();
                  sub_1C44DBDB4(v79, v207);
                  v208 = type metadata accessor for WalletOrderMatcher();
                  sub_1C442F80C(*(v208 + 24));
                  *(v122 + v198[7]) = 0;
                  *(v122 + v198[8]) = v204;
                  *(v122 + v198[9]) = v209;
                  *(v122 + v198[10]) = 0;
                  sub_1C440962C(&v241);
                  return;
                }

                v171 = sub_1C4F02938();
                sub_1C441AB50();
                sub_1C44DBDB4(v173, v172);
                if (v171)
                {
                  goto LABEL_77;
                }
              }
            }

            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

LABEL_69:
          sub_1C44DBDB4(v214, type metadata accessor for EntityTriple);
          sub_1C440962C(&v241);
        }

        v174 = v216;
        sub_1C44F36C8(v245, v236, v117, v230, a13, a14, a15, v225, a16, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);
        v176 = v175;
        v245 = type metadata accessor for WalletOrderMatcher();
        v177 = *(v174 + *(v245 + 28));
        if (v176 <= v177)
        {
          sub_1C441615C(v240);
          sub_1C4EFF008();
          sub_1C4420C3C(v211, &unk_1EC0BA0E0, &qword_1C4F105A0);
          sub_1C43FBD94();
          sub_1C440BAA8(v178, v179, v180, v92);
          v181 = sub_1C43FBC98();
          sub_1C44DDDBC(v181, v182);
          v176 = v177;
        }

        v183 = v211;
        v184 = v219;
        sub_1C446C964(v211, v219, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440175C(v184, 1, v92);
        v100 = v228;
        v185 = v232;
        v186 = v220;
        if (!v124)
        {
          (*(v232 + 32))(v220, v184, v92);
          sub_1C4EFCEF8();
          v187 = v92;
          v188 = type metadata accessor for EntityMatch(0);
          v189 = *(v185 + 16);
          v190 = v217;
          v189(v100 + v188[5], v217, v187);
          v189(v100 + v188[6], v186, v187);
          sub_1C4460754();
          sub_1C4EF9AD8();
          v192 = v191;
          v193 = sub_1C43FCC24();
          v194(v193);
          (*(v185 + 8))(v186, v187);
          sub_1C4420C3C(v183, &unk_1EC0BA0E0, &qword_1C4F105A0);
          sub_1C4420A30();
          sub_1C44DBDB4(v190, v195);
          sub_1C441AB50();
          sub_1C44DBDB4(v238, v196);
          sub_1C442F80C(*(v245 + 24));
          *(v100 + v188[7]) = v176;
          *(v100 + v188[8]) = v192;
          *(v100 + v188[9]) = v197;
          v114 = v188[10];
          goto LABEL_74;
        }

        sub_1C4420C3C(v184, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }

      else
      {
        v93 = v61;
        v94 = v235;
        sub_1C440BAA8(v61, 1, 1, v235);
        sub_1C4415B50(v240);
        sub_1C4EFF008();
        sub_1C4420C3C(v61, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C43FBD94();
        sub_1C440BAA8(v95, v96, v97, v94);
        v98 = sub_1C43FFE24();
        sub_1C44DDDBC(v98, v99);
        v100 = v222;
        sub_1C446C964(v61, v222, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v101 = sub_1C4401860();
        sub_1C440175C(v101, v102, v94);
        if (!v124)
        {
          v103 = v232;
          v104 = v223;
          (*(v232 + 32))(v223, v100, v94);
          sub_1C4415B50(&v246);
          sub_1C4EFCEF8();
          v105 = type metadata accessor for EntityMatch(0);
          v106 = *(v103 + 16);
          v106(v100 + v105[5], v88, v94);
          v106(v100 + v105[6], v104, v94);
          sub_1C4460754();
          sub_1C4EF9AD8();
          v108 = v107;
          v109 = sub_1C43FCC24();
          v110(v109);
          (*(v103 + 8))(v104, v94);
          sub_1C4420C3C(v93, &unk_1EC0BA0E0, &qword_1C4F105A0);
          sub_1C4420A30();
          sub_1C44DBDB4(v88, v111);
          v112 = type metadata accessor for WalletOrderMatcher();
          sub_1C442F80C(*(v112 + 24));
          *(v100 + v105[7]) = 1056964608;
          *(v100 + v105[8]) = v108;
          *(v100 + v105[9]) = v113;
          v114 = v105[10];
LABEL_74:
          *(v100 + v114) = 0;
          return;
        }

        sub_1C4420C3C(v100, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }

      sub_1C4F024A8();
      __break(1u);
      return;
    }

    sub_1C4420C3C(v68, &qword_1EC0BA590, &qword_1C4F1F430);
    if (qword_1EDDFD028 != -1)
    {
LABEL_79:
      sub_1C43FE9B4();
    }

    v82 = sub_1C4F00978();
    sub_1C442B738(v82, qword_1EDE2DE10);
    v83 = sub_1C4F00968();
    v84 = sub_1C4F01CD8();
    if (sub_1C43FCEA4(v84))
    {
      *swift_slowAlloc() = 0;
      sub_1C44011B0(&dword_1C43F8000, v85, v86, "WalletOrder Matcher: skipping first entityTriple is empty");
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C46828B4();
    swift_allocError();
    *v87 = 0;
    swift_willThrow();
  }
}

uint64_t WalletOrderMatcher.execute()()
{
  *(v1 + 24) = v0;
  v2 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4D58514, 0, 0);
}

uint64_t sub_1C4D58514()
{
  v44 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
  v4 = type metadata accessor for WalletOrderMatcher();
  v5 = *(v4 + 24);
  LOBYTE(v43[0]) = *(v2 + v5);
  v6 = *(v4 + 32);
  v7 = sub_1C4EFD548();
  sub_1C43FBCE0(v7);
  v9 = *(v8 + 16);
  v9(v1, v2 + v6, v7);
  sub_1C43FBD94();
  sub_1C440BAA8(v10, v11, v12, v7);
  sub_1C44ABA54(v43, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  v13 = *(v2 + v5);
  switch(*(v2 + v5))
  {
    case 1:
    case 3:
      v42 = v9;
      v14 = v0[3];
      v15 = swift_task_alloc();
      *(v15 + 16) = v14;
      sub_1C43FD8E4();
      sub_1C44AC170(v16, v17, v18, v19, v20, v21);

      if (v14)
      {
        goto LABEL_10;
      }

      if (*(v13 + *(sub_1C43FF150() + 28)) != 1)
      {
        goto LABEL_11;
      }

      v22 = *(v2 + v5);
      v23 = swift_task_alloc();
      *(v23 + 16) = v15;
      v24 = sub_1C4D58CA8;
      goto LABEL_9;
    case 2:
      v42 = v9;
      v27 = v0[3];
      v28 = swift_task_alloc();
      *(v28 + 16) = v27;
      sub_1C43FD8E4();
      sub_1C46CE408(v29, v30, v31, v32, v33, v34);

      if (v1)
      {
LABEL_10:
        v35 = v0[4];

        v36 = v0[1];
      }

      else
      {
        if (*(v27 + *(sub_1C43FF150() + 28)) == 1)
        {
          v22 = *(v2 + v5);
          v23 = swift_task_alloc();
          *(v23 + 16) = v28;
          v24 = sub_1C4D58F58;
LABEL_9:
          sub_1C44C6BB4(v2 + v6, v22, 0, 1, v24, v23);
        }

LABEL_11:
        v37 = v0[3];
        v38 = v0[4];
        sub_1C4EF9AE8();
        sub_1C43FBD94();
        sub_1C4643148();
        LOBYTE(v43[0]) = *(v2 + v5);
        v42(v38, v2 + v6, v7);
        sub_1C43FBD94();
        sub_1C440BAA8(v39, v40, v41, v7);
        sub_1C44A8814(v43, v38);
        sub_1C4420C3C(v38, &qword_1EC0B8568, &unk_1C4F319B0);

        v36 = v0[1];
      }

      result = v36();
      break;
    default:
      v43[0] = 0;
      v43[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v4;
      sub_1C456902C(&qword_1EC0BA4C0, &unk_1C4F141F0);
      v25 = sub_1C4F01198();
      MEMORY[0x1C6940010](v25);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v2 + v5));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

void sub_1C4D58910(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C4D57374(a1, a2, &unk_1EC0BC900, &unk_1C4F142D0, sub_1C44F1938, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, &qword_1EC0BAA28, a3, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple, type metadata accessor for GraphTriple, sub_1C44FE5AC, sub_1C44F1938, type metadata accessor for GraphTriple, sub_1C4D5575C);
  if (!v3)
  {
    v5 = type metadata accessor for EntityMatch(0);
    sub_1C440BAA8(a3, 0, 1, v5);
  }
}

uint64_t sub_1C4D58A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1C4D55EB0(a1, a2, a3);
  if (!v3)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v5, v6, v7, v8);
  }

  return result;
}

void sub_1C4D58A98(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C4D57374(a1, a2, &unk_1EC0BCAE0, &unk_1C4F142A0, sub_1C486854C, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, &qword_1EC0C6968, a3, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, sub_1C4812AF0, sub_1C486854C, type metadata accessor for ConstructionGraphTriple, sub_1C4D55A80);
  if (!v3)
  {
    v5 = type metadata accessor for EntityMatch(0);
    sub_1C440BAA8(a3, 0, 1, v5);
  }
}

uint64_t sub_1C4D58BFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return WalletOrderMatcher.execute()();
}

uint64_t sub_1C4D58CC4(uint64_t a1)
{
  result = sub_1C44FDE5C(&qword_1EDDE58F8, type metadata accessor for WalletOrderMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D58D1C(uint64_t a1)
{
  result = sub_1C44FDE5C(qword_1EDDE5908, type metadata accessor for WalletOrderMatcher);
  *(a1 + 8) = result;
  return result;
}

void *sub_1C4D58D9C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C4A8D668(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1C4D58F70(uint64_t a1, _BYTE *a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v5 = type metadata accessor for Fuser();
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v8 = type metadata accessor for Linker();
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v11 = type metadata accessor for Source();
  *(v3 + 128) = v11;
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v14 = type metadata accessor for PhaseStores();
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 185) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C4D5909C, 0, 0);
}

uint64_t sub_1C4D5909C()
{
  switch(*(v0 + 185))
  {
    case 2:

      goto LABEL_4;
    default:
      v1 = sub_1C4F02938();

      if (v1)
      {
LABEL_4:
        v2 = *(v0 + 96);
        v3 = type metadata accessor for WalletTrackedOrderDeltaSourceIngestor(0);
        *(v0 + 40) = v3;
        *(v0 + 48) = sub_1C4D59460(&qword_1EDDDC6F0, type metadata accessor for WalletTrackedOrderDeltaSourceIngestor);
        v4 = sub_1C4422F90((v0 + 16));
        v5 = v3[5];
        sub_1C4419288();
        sub_1C4471750(v2, v6 + v7, v8);
        v9 = qword_1EDDFD1C8;
        v10 = 2;
        v11 = v4;
      }

      else
      {
        v12 = *(v0 + 96);
        v3 = type metadata accessor for WalletTrackedOrderSourceIngestor(0);
        *(v0 + 40) = v3;
        *(v0 + 48) = sub_1C4D59460(&qword_1EDDDDB38, type metadata accessor for WalletTrackedOrderSourceIngestor);
        v11 = sub_1C4422F90((v0 + 16));
        sub_1C4419288();
        sub_1C4471750(v12, v11, v13);
        v4 = (v11 + v3[5]);
        v9 = qword_1EDDFD1C8;
        v10 = 1;
      }

      if (v9 != -1)
      {
        sub_1C4413D94();
      }

      v14 = *(v0 + 160);
      v15 = *(v0 + 96);
      sub_1C442B738(*(v0 + 128), &qword_1EDDFD1D0);
      sub_1C44068F0();
      sub_1C4471750(v16, v4, v17);
      *(v11 + v3[6]) = v10;
      v18 = v11 + v3[7];
      sub_1C4EFCEF8();
      sub_1C4419288();
      sub_1C4471750(v15, v14, v19);
      if (qword_1EDDFD1C8 != -1)
      {
        sub_1C4413D94();
      }

      v20 = *(v0 + 185);
      v21 = *(v0 + 144);
      v22 = *(v0 + 152);
      v23 = *(v0 + 136);
      v24 = *(v0 + 96);
      v25 = sub_1C442B738(*(v0 + 128), &qword_1EDDFD1D0);
      *(v0 + 168) = v25;
      sub_1C4471750(v25, v21, type metadata accessor for Source);
      sub_1C442E860(v0 + 16, v0 + 56);
      sub_1C4471750(v25, v23, type metadata accessor for Source);
      sub_1C4419288();
      sub_1C4471750(v24, v22, v26);
      *(v0 + 184) = v20;
      v27 = swift_task_alloc();
      *(v0 + 176) = v27;
      *v27 = v0;
      v27[1] = sub_1C4657140;
      v28 = *(v0 + 152);
      v29 = *(v0 + 136);
      v30 = *(v0 + 120);

      return Linker.init(source:stores:pipelineType:)();
  }
}

uint64_t type metadata accessor for WalletTrackedOrderEventPhase()
{
  result = qword_1EDDDF9C0;
  if (!qword_1EDDDF9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4D59460(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *BMWalletPaymentsCommerceTrackedOrder.ingestEvent(startTime:endTime:pipelineType:stores:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v925 = a4;
  v5 = sub_1C456902C(&qword_1EC0C6970, &unk_1C4F6FC20);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  v944 = v9;
  v10 = sub_1C43FBE44();
  v11 = type metadata accessor for WalletTrackedOrderStructs.OrderTransactionRelationshipType(v10);
  v12 = sub_1C43FCDF8(v11);
  v942 = v13;
  v943 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v950 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  v949 = v18;
  v19 = sub_1C43FBE44();
  v958 = type metadata accessor for WalletTrackedOrderStructs.Transaction(v19);
  v20 = sub_1C43FBCE0(v958);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD2D8();
  v955 = v23;
  v24 = sub_1C456902C(&qword_1EC0C6978, &qword_1C4F804B0);
  sub_1C43FBD18(v24);
  v26 = *(v25 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBC74();
  v918 = v28;
  v29 = sub_1C456902C(&qword_1EC0C6980, &unk_1C4F6FC30);
  sub_1C43FBD18(v29);
  v31 = *(v30 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBC74();
  v916 = v33;
  v34 = sub_1C43FBE44();
  v917 = type metadata accessor for WalletTrackedOrderStructs.OrderPaymentRelationshipType(v34);
  v35 = sub_1C43FBCE0(v917);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD2D8();
  v919 = v38;
  v39 = sub_1C456902C(&qword_1EC0C6988, &qword_1C4F806D0);
  sub_1C43FBD18(v39);
  v41 = *(v40 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBC74();
  v946 = v43;
  v44 = sub_1C43FBE44();
  v945 = type metadata accessor for WalletTrackedOrderStructs.QuantityRelationshipType(v44);
  v45 = sub_1C43FBCE0(v945);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBFDC();
  v948 = v48;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FD230();
  v920 = v50;
  v51 = sub_1C43FBE44();
  v915 = type metadata accessor for WalletTrackedOrderStructs.Payment(v51);
  v52 = sub_1C43FBCE0(v915);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FD2D8();
  v935 = v55;
  v56 = sub_1C456902C(&qword_1EC0C6990, &qword_1C4F6FC40);
  sub_1C43FBD18(v56);
  v58 = *(v57 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBC74();
  v975 = v60;
  v61 = sub_1C43FBE44();
  v62 = type metadata accessor for WalletTrackedOrderStructs.OrderShipmentFullFillmentRelationshipType(v61);
  v63 = sub_1C43FCDF8(v62);
  v973 = v64;
  v974 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBFDC();
  v984 = v67;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FD230();
  v983 = v69;
  v70 = sub_1C43FBE44();
  v979 = type metadata accessor for WalletTrackedOrderStructs.ShipmentFullFillmentInfo(v70);
  v71 = sub_1C43FBCE0(v979);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  sub_1C43FD2D8();
  v992 = v74;
  v75 = sub_1C456902C(&qword_1EC0C6998, &qword_1C4F6FC48);
  sub_1C43FBD18(v75);
  v77 = *(v76 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v78);
  sub_1C43FBC74();
  v934 = v79;
  v80 = sub_1C456902C(&qword_1EC0C69A0, &qword_1C4F6FC50);
  sub_1C43FBD18(v80);
  v82 = *(v81 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v83);
  sub_1C43FBC74();
  v931 = v84;
  v85 = sub_1C43FBE44();
  v932 = type metadata accessor for WalletTrackedOrderStructs.OrderPersonRelationshipType(v85);
  v86 = sub_1C43FBCE0(v932);
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v86);
  sub_1C43FD2D8();
  v933 = v89;
  v90 = sub_1C456902C(&qword_1EC0C69A8, &qword_1C4F6FC58);
  sub_1C43FBD18(v90);
  v92 = *(v91 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v93);
  sub_1C43FBC74();
  v923 = v94;
  v95 = sub_1C43FBE44();
  v921 = type metadata accessor for WalletTrackedOrderStructs.AddressRelationshipType(v95);
  v96 = sub_1C43FBCE0(v921);
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v96);
  sub_1C43FD2D8();
  v922 = v99;
  v100 = sub_1C43FBE44();
  v938 = type metadata accessor for WalletTrackedOrderStructs.Person(v100);
  v101 = sub_1C43FBCE0(v938);
  v103 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v101);
  sub_1C43FD2D8();
  *&v962 = v104;
  v105 = sub_1C456902C(&qword_1EC0C69B0, &qword_1C4F6FC60);
  sub_1C43FBD18(v105);
  v107 = *(v106 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v108);
  sub_1C43FBC74();
  v930 = v109;
  v110 = sub_1C456902C(&qword_1EC0C69B8, &unk_1C4F6FC68);
  sub_1C43FBD18(v110);
  v112 = *(v111 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v113);
  sub_1C43FBC74();
  v927 = v114;
  v115 = sub_1C43FBE44();
  v929 = type metadata accessor for WalletTrackedOrderStructs.EntityOrganizationRelationshipType(v115);
  v116 = sub_1C43FBCE0(v929);
  v118 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v116);
  sub_1C43FD2D8();
  v928 = v119;
  v120 = sub_1C43FBE44();
  v936 = type metadata accessor for WalletTrackedOrderStructs.Organization(v120);
  v121 = sub_1C43FBCE0(v936);
  v123 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v121);
  sub_1C43FD2D8();
  v941 = v124;
  v125 = sub_1C43FBE44();
  v957 = type metadata accessor for WalletTrackedOrderStructs.IdentifierRelationshipType(v125);
  v126 = sub_1C43FCDF8(v957);
  v947 = v127;
  v129 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v126);
  sub_1C43FBFDC();
  v926 = v130;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v131);
  sub_1C43FBF38();
  v937 = v132;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v133);
  sub_1C43FBF38();
  v940 = v134;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v135);
  sub_1C43FBF38();
  v987 = v136;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v137);
  sub_1C43FD230();
  v952 = v138;
  v139 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v140 = sub_1C43FBD18(v139);
  v142 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v140);
  sub_1C43FBFDC();
  *&v961 = v143;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v144);
  sub_1C43FBF38();
  v939 = v145;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v146);
  sub_1C43FBF38();
  v954 = v147;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v148);
  sub_1C43FBF38();
  v953 = v149;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v150);
  sub_1C43FD230();
  v967 = v151;
  v152 = sub_1C456902C(&qword_1EC0C69C0, &qword_1C4F6FC78);
  sub_1C43FBD18(v152);
  v154 = *(v153 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v155);
  sub_1C43FBC74();
  v981 = v156;
  sub_1C43FBE44();
  v157 = sub_1C4EF9648();
  v158 = sub_1C43FCDF8(v157);
  v968 = v159;
  v969 = v158;
  v161 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v158);
  sub_1C43FD2D8();
  v965 = v162;
  sub_1C43FBE44();
  v966 = sub_1C4EF9F88();
  v163 = sub_1C43FCDF8(v966);
  v964 = v164;
  v166 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v163);
  sub_1C43FD2D8();
  *&v963 = v167;
  sub_1C43FBE44();
  v977 = sub_1C4EF9CD8();
  v168 = sub_1C43FCDF8(v977);
  v994 = v169;
  v171 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v168);
  sub_1C43FBFDC();
  v960 = v172;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v173);
  sub_1C43FBF38();
  v959 = v174;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v175);
  sub_1C43FBF38();
  v951 = v176;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v177);
  sub_1C43FBF38();
  v993 = v178;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v179);
  v181 = &v915 - v180;
  v182 = type metadata accessor for WalletTrackedOrderStructs.DateRelationshipType(0);
  v183 = sub_1C43FCDF8(v182);
  v972 = v184;
  v186 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v183);
  sub_1C43FBFDC();
  v991 = v187;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v188);
  sub_1C43FBF38();
  v990 = v189;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v190);
  sub_1C43FBF38();
  i = v191;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v192);
  sub_1C43FBF38();
  v988 = v193;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v194);
  sub_1C43FBF38();
  v982 = v195;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v196);
  v198 = &v915 - v197;
  v971 = type metadata accessor for WalletTrackedOrderStructs.WalletOrder(0);
  v199 = sub_1C43FBCE0(v971);
  v201 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v203 = (&v915 - ((v202 + 15) & 0xFFFFFFFFFFFFFFF0));
  v956 = *a3;
  v998[0] = MEMORY[0x1E69E7CD0];
  v204 = sub_1C4F019E8();
  if (qword_1EDDE92A8 != -1)
  {
LABEL_163:
    swift_once();
  }

  v924 = type metadata accessor for SourceIdPrefix();
  v980 = sub_1C442B738(v924, &qword_1EDE2CFC0);
  String.base64EncodedSHA(withPrefix:)();
  v206 = v205;
  v208 = v207;

  v209 = 0xE700000000000000;
  switch(v956)
  {
    case 1:

      goto LABEL_7;
    case 2:
      v209 = 0xE500000000000000;
      break;
    case 3:
      v209 = 0xEA0000000000676ELL;
      break;
    default:
      break;
  }

  v204 = sub_1C4F02938();

  if (v204)
  {
LABEL_7:
    sub_1C45B4BF8(v985, &selRef_trackedOrderIdentifier);
    if (v210)
    {
      sub_1C43FC1CC();

      v206 = v209;
      v208 = v204;
    }
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v211 = v995;
  sub_1C4EBD278(v206, v208, v212, v213, v214, v215, v216, v217, v915, v916, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926);
  v218 = v211;
  if (v211)
  {

    return v209;
  }

  v970 = v206;
  v978 = v208;
  v986 = 0;
  v219 = sub_1C45B4BF8(v985, &selRef_orderNumber);
  if (v220)
  {
    v218 = v219;
    v221 = v220;
    v222 = v203 + v971[9];
    v223 = *(v222 + 1);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    *v222 = v218;
    *(v222 + 1) = v221;
    v209 = v998;
    sub_1C44869B4(&v996, v218, v221);
  }

  v224 = sub_1C45B4BF8(v985, &selRef_orderDate);
  v976 = v203;
  if (v225)
  {
    v218 = v224;
    v226 = v225;
    sub_1C4EFEEF8();
    v227 = sub_1C440FF78();
    sub_1C440BAA8(v227, v228, v229, v230);
    v231 = v198 + v182[5];
    sub_1C4EFD168();
    v232 = v182[6];
    if (qword_1EDDFD1C8 != -1)
    {
LABEL_165:
      sub_1C44072AC();
      swift_once();
    }

    v233 = type metadata accessor for Source();
    sub_1C442B738(v233, &qword_1EDDFD1D0);
    sub_1C441AB68();
    sub_1C448D1F8(v234, v198 + v232);
    v235 = v198 + v182[7];
    sub_1C4EFE658();
    v236 = v182[8];
    v237 = v198 + v182[9];
    sub_1C4EFEEE8();
    v238 = v182[11];
    v239 = (v198 + v182[10]);
    sub_1C4EFE7B8();
    sub_1C44262E0(v182[12]);
    v240 = v198 + v182[13];
    sub_1C4EFECE8();
    sub_1C44262E0(v182[14]);
    v241 = v198 + v182[15];
    sub_1C4EFE668();
    sub_1C44262E0(v182[16]);
    v242 = v198 + v182[17];
    sub_1C4EFE698();
    sub_1C44262E0(v182[18]);
    v243 = v198 + v182[19];
    sub_1C4EFEA38();
    v244 = (v198 + v182[20]);
    *(v198 + v236) = xmmword_1C4F6F5A0;
    sub_1C4D4308C(v218, v226, 0x2D4D4D2D79797979, 0xEA00000000006464);
    sub_1C4EF9AC8();
    *v244 = v218;
    v244[1] = v226;
    v245 = v963;
    sub_1C4EF9F58();
    if (qword_1EDDE6518 != -1)
    {
      sub_1C440A36C();
    }

    v246 = v965;
    sub_1C4EF9EA8();
    sub_1C44CDAD4();
    sub_1C43FC1CC();
    (*(v968 + 8))(v246, v969);
    (*(v964 + 8))(v245, v966);
    *v239 = v246;
    v239[1] = v218;
    sub_1C442C1A4();
    v247 = sub_1C43FD680();
    v250 = sub_1C441400C(v247, v248, v249, v182);
    v203 = v976;
    v209 = v976;
    sub_1C4EBDA9C(v250);
    (*(v994 + 8))(v181, v977);
    sub_1C4405548();
  }

  v251 = [v985 orderUpdateDate];
  if (v251)
  {
    v252 = v251;
    v253 = v951;
    sub_1C4EF9C78();

    v218 = v994;
    v254 = v977;
    (*(v994 + 32))(v993, v253, v977);
    sub_1C4EFEEF8();
    v255 = sub_1C440FF78();
    sub_1C440BAA8(v255, v256, v257, v258);
    v259 = v198 + v182[5];
    sub_1C4EFD168();
    v260 = v182[6];
    if (qword_1EDDFD1C8 != -1)
    {
      sub_1C44072AC();
      swift_once();
    }

    v261 = type metadata accessor for Source();
    sub_1C442B738(v261, &qword_1EDDFD1D0);
    sub_1C441AB68();
    sub_1C448D1F8(v262, v198 + v260);
    v263 = v198 + v182[7];
    sub_1C4EFE658();
    v264 = v182[8];
    v265 = v198 + v182[9];
    sub_1C4EFEEE8();
    v266 = v182[11];
    v995 = (v198 + v182[10]);
    sub_1C4EFE7B8();
    sub_1C44262E0(v182[12]);
    v267 = v198 + v182[13];
    sub_1C4EFECE8();
    sub_1C44262E0(v182[14]);
    v268 = v198 + v182[15];
    sub_1C4EFE668();
    sub_1C44262E0(v182[16]);
    v269 = v198 + v182[17];
    sub_1C4EFE698();
    sub_1C44262E0(v182[18]);
    v270 = v198 + v182[19];
    sub_1C4EFEA38();
    v271 = (v198 + v182[20]);
    *(v198 + v264) = xmmword_1C4F6FC10;
    v272 = v967;
    (v218)[2](v967, v993, v254);
    sub_1C440BAA8(v272, 0, 1, v254);
    sub_1C4D5CB50(v272);
    sub_1C43FC1CC();
    sub_1C44686E4(v272);
    *v271 = v264;
    v271[1] = v218;
    v273 = v963;
    sub_1C4EF9F58();
    if (qword_1EDDE6518 != -1)
    {
      sub_1C440A36C();
    }

    v274 = v965;
    v275 = v993;
    sub_1C4EF9EA8();
    sub_1C44CDAD4();
    sub_1C43FC1CC();
    (*(v968 + 8))(v274, v969);
    (*(v964 + 8))(v273, v966);
    v276 = v995;
    *v995 = v274;
    v276[1] = v218;
    sub_1C442C1A4();
    v277 = sub_1C43FD680();
    v280 = sub_1C441400C(v277, v278, v279, v182);
    v209 = v976;
    sub_1C4EBDA9C(v280);
    v281 = v275;
    v203 = v209;
    (*(v994 + 8))(v281, v254);
    sub_1C4405548();
  }

  sub_1C45B4BF8(v985, &selRef_trackedOrderIdentifier);
  if (v282)
  {
    sub_1C43FC1CC();
    sub_1C4EFEEF8();
    v283 = v952;
    sub_1C43FCF64();
    sub_1C440BAA8(v284, v285, v286, v287);
    v288 = v957;
    v289 = v283 + v957[5];
    sub_1C4EFD258();
    v198 = v288[6];
    if (qword_1EDDFD1C8 != -1)
    {
      sub_1C44072AC();
      swift_once();
    }

    v290 = type metadata accessor for Source();
    sub_1C442B738(v290, &qword_1EDDFD1D0);
    sub_1C441AB68();
    sub_1C448D1F8(v291, v283 + v198);
    v292 = v283 + v288[7];
    sub_1C4EFE558();
    v293 = v288[8];
    v294 = v288[9];
    sub_1C440C150();
    sub_1C4EFE658();
    v295 = v283 + v288[10];
    sub_1C44255F4();
    *v297 = v296 + 1;
    v297[1] = v298;
    *v198 = v209;
    *(v198 + 8) = v218;
    sub_1C456902C(&qword_1EC0C0310, &qword_1C4F6FC90);
    sub_1C441BF04();
    v301 = v300 & ~v299;
    v302 = swift_allocObject();
    *(v302 + 16) = xmmword_1C4F0D130;
    sub_1C440148C();
    sub_1C448D1F8(v283, v303 + v301);
    v304 = v971[17];
    v305 = *(v203 + v304);

    *(v203 + v304) = v302;
    v209 = v203;
    sub_1C4ED872C();
    sub_1C4420A48();
    sub_1C4D5CFF4(v283, v306);
  }

  sub_1C45B4BF8(v985, &selRef_orderNumber);
  if (v307)
  {
    sub_1C44106D4();
    sub_1C4EFEEF8();
    v308 = v987;
    sub_1C43FCF64();
    sub_1C440BAA8(v309, v310, v311, v312);
    v313 = v957;
    v314 = v308 + v957[5];
    sub_1C4EFD258();
    v315 = v313[6];
    if (qword_1EDDFD1C8 != -1)
    {
      sub_1C44072AC();
      swift_once();
    }

    v316 = type metadata accessor for Source();
    sub_1C442B738(v316, &qword_1EDDFD1D0);
    sub_1C441AB68();
    sub_1C448D1F8(v317, v308 + v315);
    v318 = v308 + v313[7];
    sub_1C4EFE558();
    v319 = v308 + v313[9];
    sub_1C4EFE658();
    v320 = v308 + v313[10];
    sub_1C44255F4();
    *v322 = v321 - 2;
    v322[1] = v323;
    sub_1C456902C(&qword_1EC0C69D8, &unk_1C4F6FC98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F23100;
    *(inited + 32) = 0x6D754E726564726FLL;
    *(inited + 40) = 0xEB00000000726562;
    *(inited + 48) = v209;
    *(inited + 56) = v198;
    strcpy((inited + 64), "trackingNumber");
    *(inited + 79) = -18;
    v325 = [v985 shippingFulfillments];
    sub_1C4461BB8(0, &qword_1EC0C69C8, 0x1E698F048);
    v326 = sub_1C4F01678();

    if (sub_1C4428DA0())
    {
      sub_1C4431590(0, (v326 & 0xC000000000000001) == 0);
      v327 = v953;
      if ((v326 & 0xC000000000000001) != 0)
      {
        v328 = MEMORY[0x1C6940F90](0, v326);
      }

      else
      {
        v328 = *(v326 + 32);
      }

      v329 = v328;

      v330 = sub_1C45C28F0(v329, &selRef_trackingNumber);
      if (v331)
      {
        goto LABEL_38;
      }
    }

    else
    {

      v327 = v953;
    }

    v330 = 0;
    v331 = 0xE000000000000000;
LABEL_38:
    *(inited + 80) = v330;
    *(inited + 88) = v331;
    *(inited + 96) = 0x746144726564726FLL;
    *(inited + 104) = 0xE900000000000065;
    v332 = v985;
    *(inited + 112) = sub_1C45B4BF8(v985, &selRef_orderDate);
    *(inited + 120) = v333;
    *(inited + 128) = 0x617453726564726FLL;
    *(inited + 136) = 0xEB00000000737574;
    LODWORD(v996) = [v332 orderStatus];
    *(inited + 144) = sub_1C4F00FB8();
    *(inited + 152) = v334;
    strcpy((inited + 160), "merchantName");
    *(inited + 173) = 0;
    *(inited + 174) = -5120;
    v335 = [v332 merchant];
    if (v335)
    {
      v335 = sub_1C45C28F0(v335, &selRef_displayName);
    }

    else
    {
      v336 = 0;
    }

    v337 = v977;
    *(inited + 176) = v335;
    *(inited + 184) = v336;
    *(inited + 192) = 0x614E6E69616D6F64;
    *(inited + 200) = 0xEA0000000000656DLL;
    v338 = [v985 merchant];
    if (!v338 || (v339 = sub_1C45C28F0(v338, &selRef_domainName), !v340))
    {

      v339 = 0;
      v340 = 0xE000000000000000;
    }

    *(inited + 208) = v339;
    *(inited + 216) = v340;
    sub_1C43FBDF0();
    *(inited + 224) = 0xD000000000000015;
    *(inited + 232) = v341;
    v342 = [v985 earliestEmailDateSent];
    if (v342)
    {
      v343 = v342;
      sub_1C4EF9C78();

      v344 = 0;
    }

    else
    {
      v344 = 1;
    }

    sub_1C440BAA8(v327, v344, 1, v337);
    v345 = sub_1C4D5CB50(v327);
    v346 = v337;
    v348 = v347;
    sub_1C44686E4(v327);
    *(inited + 240) = v345;
    *(inited + 248) = v348;
    sub_1C43FBDF0();
    *(inited + 256) = 0xD000000000000015;
    *(inited + 264) = v349;
    v350 = [v985 merchant];
    if (v350)
    {
      v351 = v350;
      v348 = [v350 displayNameUpdateDate];

      if (v348)
      {
        v345 = v939;
        sub_1C4EF9C78();

        v352 = 0;
        v353 = v987;
        v354 = v954;
      }

      else
      {
        v352 = 1;
        v353 = v987;
        v354 = v954;
        v345 = v939;
      }

      v359 = sub_1C441400C(v345, v352, 1, v977);
      sub_1C45B69E4(v359, v354);
    }

    else
    {
      sub_1C43FCF64();
      v355 = v346;
      v354 = v356;
      sub_1C440BAA8(v356, v357, v358, v355);
      v353 = v987;
    }

    sub_1C4D5CB50(v354);
    sub_1C44106D4();
    sub_1C44686E4(v354);
    *(inited + 272) = v345;
    *(inited + 280) = v348;
    sub_1C43FBDF0();
    *(inited + 288) = 0xD000000000000015;
    *(inited + 296) = v360;
    v361 = [v985 orderStatusUpdateDate];
    if (v361)
    {
      v362 = v361;
      v363 = v961;
      sub_1C4EF9C78();

      v364 = 0;
      v365 = v977;
    }

    else
    {
      v364 = 1;
      v365 = v977;
      v363 = v961;
    }

    sub_1C440BAA8(v363, v364, 1, v365);
    v366 = (v353 + v957[8]);
    v367 = sub_1C4D5CB50(v363);
    v368 = v363;
    v370 = v369;
    sub_1C44686E4(v368);
    *(inited + 304) = v367;
    *(inited + 312) = v370;
    sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
    v996 = sub_1C4F00F28();
    v371 = sub_1C456902C(&qword_1EC0C69E0, &qword_1C4F6FCA8);
    sub_1C4D5D04C();
    sub_1C4F00FB8();
    sub_1C44106D4();

    *v366 = &v996;
    v366[1] = v371;
    v372 = v971[17];
    v373 = *(v203 + v372);
    if (v373)
    {
      sub_1C440148C();
      v374 = v353;
      v375 = v940;
      sub_1C448D1F8(v374, v940);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v376 = v373;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v901 = *(v373 + 16);
        v902 = sub_1C43FCEC0();
        sub_1C458C654(v902, v903, v904, v373);
        v376 = v905;
      }

      v378 = *(v376 + 16);
      v377 = *(v376 + 24);
      if (v378 >= v377 >> 1)
      {
        v906 = sub_1C43FCFE8(v377);
        sub_1C458C654(v906, v378 + 1, 1, v376);
        v376 = v907;
      }

      *(v376 + 16) = v378 + 1;
      sub_1C43FBF6C();
      sub_1C443049C(v376 + v379);
      sub_1C4D5CF98(v375, v380);

      v203 = v976;
      v353 = v987;
    }

    else
    {
      sub_1C456902C(&qword_1EC0C0310, &qword_1C4F6FC90);
      sub_1C441BF04();
      v383 = v382 & ~v381;
      v376 = swift_allocObject();
      *(v376 + 16) = xmmword_1C4F0D130;
      sub_1C440148C();
      sub_1C448D1F8(v353, v384 + v383);
    }

    *(v203 + v372) = v376;
    sub_1C4ED872C();
    sub_1C4420A48();
    sub_1C4D5CFF4(v353, v385);
  }

  v386 = [v985 merchant];
  if (v386)
  {
    v387 = sub_1C45C28F0(v386, &selRef_displayName);
    v198 = v979;
    if (!v388)
    {
      goto LABEL_75;
    }

    v389 = v387;
    v209 = v388;
    String.base64EncodedSHA(withPrefix:)();
    v390 = v941;
    v391 = v986;
    sub_1C4EBDB8C(v392, v393, v394, v395, v396, v397, v398, v399, v915, v916, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926);
    v986 = v391;
    if (v391)
    {

      goto LABEL_87;
    }

    v400 = (v390 + *(v936 + 36));
    v401 = v400[1];

    *v400 = v389;
    v400[1] = v209;
    v402 = [v985 merchant];
    if (v402)
    {
      sub_1C45C28F0(v402, &selRef_domainName);
      sub_1C43FC1CC();
    }

    else
    {
      v209 = 0;
      v389 = 0;
    }

    v403 = v936;
    v404 = v941;
    v405 = (v941 + *(v936 + 52));
    v406 = v405[1];

    *v405 = v209;
    v405[1] = v389;
    sub_1C4EFEEF8();
    v407 = v928;
    v408 = sub_1C440FF78();
    sub_1C440BAA8(v408, v409, v410, v411);
    v412 = v929;
    v413 = v407 + *(v929 + 20);
    sub_1C4EFD348();
    v414 = *(v412 + 24);
    if (qword_1EDDFD1C8 != -1)
    {
      sub_1C44072AC();
      swift_once();
    }

    v415 = type metadata accessor for Source();
    sub_1C442B738(v415, &qword_1EDDFD1D0);
    sub_1C441AB68();
    sub_1C448D1F8(v416, v407 + v414);
    v417 = *(v412 + 28);
    sub_1C43FCF64();
    sub_1C440BAA8(v418, v419, v420, v403);
    sub_1C448D1F8(v404, v927);
    v421 = sub_1C43FD680();
    v424 = sub_1C441400C(v421, v422, v423, v403);
    sub_1C4EBE314(v424);
    v425 = sub_1C442A548();
    sub_1C448D1F8(v425, v930);
    v426 = sub_1C43FD680();
    v429 = sub_1C441400C(v426, v427, v428, v412);
    sub_1C4EBE414(v429);
    sub_1C4D5CFF4(v407, type metadata accessor for WalletTrackedOrderStructs.EntityOrganizationRelationshipType);
    sub_1C4D5CFF4(v404, type metadata accessor for WalletTrackedOrderStructs.Organization);
  }

  v198 = v979;
LABEL_75:
  v430 = [v985 customer];
  if (v430)
  {
    v431 = v430;
    v996 = 0;
    v997 = 0xE000000000000000;
    v432 = sub_1C45B4BF8(v430, &selRef_fullName);
    if (v433)
    {
      v434 = v433;
    }

    else
    {
      v432 = 0;
      v434 = 0xE000000000000000;
    }

    MEMORY[0x1C6940010](v432, v434);

    v435 = sub_1C45B4BF8(v431, &selRef_emailAddress);
    if (v436)
    {
      v437 = v436;
    }

    else
    {
      v435 = 0;
      v437 = 0xE000000000000000;
    }

    MEMORY[0x1C6940010](v435, v437);

    v438 = sub_1C45B4BF8(v431, &selRef_phoneNumber);
    if (v439)
    {
      v440 = v439;
    }

    else
    {
      v438 = 0;
      v440 = 0xE000000000000000;
    }

    MEMORY[0x1C6940010](v438, v440);

    String.base64EncodedSHA(withPrefix:)();
    v442 = v441;
    v444 = v443;

    v445 = v962;
    v446 = v986;
    sub_1C4EBE504(v442, v444, v447, v448, v449, v450, v451, v452, v915, v916, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926);
    v986 = v446;
    if (v446)
    {
      v209 = v998[0];

LABEL_87:

      sub_1C442DA58();
      v454 = v203;
LABEL_88:
      sub_1C4D5CFF4(v454, v453);
      return v209;
    }

    sub_1C45B4BF8(v431, &selRef_fullName);
    sub_1C44106D4();
    v456 = (v455 + *(v938 + 60));
    v457 = v456[1];

    *v456 = v445;
    v456[1] = v442;
    v458 = [v431 billingAddress];
    if (v458)
    {
      v459 = v458;
      sub_1C4EFEEF8();
      v460 = v922;
      v461 = sub_1C440FF78();
      sub_1C440BAA8(v461, v462, v463, v464);
      v465 = v921;
      v466 = v460 + v921[5];
      sub_1C4EFD1D8();
      v467 = v465[6];
      if (qword_1EDDFD1C8 != -1)
      {
        sub_1C44072AC();
        swift_once();
      }

      v468 = type metadata accessor for Source();
      sub_1C442B738(v468, &qword_1EDDFD1D0);
      sub_1C441AB68();
      sub_1C448D1F8(v469, v460 + v467);
      v470 = v460 + v465[7];
      sub_1C4EFE518();
      v471 = v465[9];
      v995 = (v460 + v465[8]);
      sub_1C4EFE4E8();
      sub_1C44262E0(v465[10]);
      v472 = v460 + v465[11];
      sub_1C4EFE478();
      v473 = v465[13];
      v993 = (v460 + v465[12]);
      sub_1C4EFE318();
      sub_1C44262E0(v465[14]);
      v474 = v460 + v465[15];
      sub_1C4EFEB08();
      sub_1C44262E0(v465[16]);
      v475 = v460 + v465[17];
      sub_1C4EFE5A8();
      v476 = v465[19];
      v477 = (v460 + v465[18]);
      sub_1C4EFEDE8();
      v478 = v465[21];
      v479 = (v460 + v465[20]);
      sub_1C4EFE8D8();
      v480 = v465[23];
      v481 = (v460 + v465[22]);
      sub_1C4EFE378();
      v482 = v465[25];
      v969 = (v460 + v465[24]);
      sub_1C4EFECD8();
      v483 = v465[27];
      v981 = (v460 + v465[26]);
      sub_1C4EFE888();
      v987 = (v460 + v465[28]);
      *v477 = sub_1C45B4BF8(v459, &selRef_street);
      v477[1] = v484;
      *v479 = sub_1C45B4BF8(v459, &selRef_city);
      v479[1] = v485;
      *v481 = sub_1C45B4BF8(v459, &selRef_state);
      v481[1] = v486;
      v487 = sub_1C45B4BF8(v459, &selRef_postalCode);
      v488 = v969;
      *v969 = v487;
      v488[1] = v489;
      v490 = sub_1C45B4BF8(v459, &selRef_country);
      v491 = v981;
      *v981 = v490;
      v491[1] = v492;
      v493 = sub_1C45B4BF8(v431, &selRef_phoneNumber);
      v494 = v993;
      *v993 = v493;
      v494[1] = v495;
      v496 = sub_1C45B4BF8(v431, &selRef_emailAddress);
      v497 = v995;
      *v995 = v496;
      v497[1] = v498;
      v499 = sub_1C45B4BF8(v459, &selRef_rawAddress);
      v500 = v987;
      *v987 = v499;
      v500[1] = v501;
      v502 = sub_1C442A548();
      sub_1C448D1F8(v502, v923);
      v503 = sub_1C43FD680();
      v506 = sub_1C441400C(v503, v504, v505, v465);
      sub_1C4EBEC5C(v506);

      sub_1C4D5CFF4(v460, type metadata accessor for WalletTrackedOrderStructs.AddressRelationshipType);
      v203 = v976;
    }

    sub_1C4EFEEF8();
    v507 = v933;
    v508 = sub_1C440FF78();
    sub_1C440BAA8(v508, v509, v510, v511);
    v512 = v932;
    v513 = v507 + *(v932 + 20);
    sub_1C4EFD288();
    v514 = *(v512 + 24);
    if (qword_1EDDFD1C8 != -1)
    {
      sub_1C44072AC();
      swift_once();
    }

    v515 = type metadata accessor for Source();
    sub_1C442B738(v515, &qword_1EDDFD1D0);
    sub_1C441AB68();
    sub_1C448D1F8(v516, v507 + v514);
    v517 = *(v512 + 28);
    sub_1C43FCF64();
    v518 = v938;
    sub_1C440BAA8(v519, v520, v521, v938);
    sub_1C448D1F8(v962, v931);
    v522 = sub_1C43FD680();
    v525 = sub_1C441400C(v522, v523, v524, v518);
    sub_1C4EBED4C(v525);
    v526 = sub_1C442A548();
    sub_1C448D1F8(v526, v934);
    v527 = sub_1C43FD680();
    v530 = sub_1C441400C(v527, v528, v529, v512);
    sub_1C4EBEE4C(v530);

    sub_1C4D5CFF4(v507, type metadata accessor for WalletTrackedOrderStructs.OrderPersonRelationshipType);
    sub_1C4D5CFF4(v962, type metadata accessor for WalletTrackedOrderStructs.Person);
    v198 = v979;
  }

  v531 = [v985 shippingFulfillments];
  sub_1C4461BB8(0, &qword_1EC0C69C8, 0x1E698F048);
  v181 = sub_1C4F01678();

  v532 = sub_1C4428DA0();
  v204 = 0;
  v968 = v181 & 0xC000000000000001;
  v969 = v532;
  sub_1C43FBDF0();
  v964 = v533;
  v965 = v534;
  sub_1C43FBDF0();
  v953 = v535;
  v954 = v536;
  v951 = (v537 + 8);
  v952 = (v537 + 16);
  v987 = MEMORY[0x1E69E7CC0];
  v963 = xmmword_1C4F6F7F0;
  v962 = xmmword_1C4F6F800;
  v961 = xmmword_1C4F13950;
  v966 = v181;
  while (v969 != v204)
  {
    v538 = v968;
    sub_1C4431590(v204, v968 == 0);
    if (v538)
    {
      v539 = MEMORY[0x1C6940F90](v204, v181);
    }

    else
    {
      v539 = *(v181 + 8 * v204 + 32);
    }

    v540 = v539;
    v541 = v978;
    if (__OFADD__(v204, 1))
    {
      __break(1u);
      goto LABEL_163;
    }

    v981 = v204;
    String.base64EncodedSHA(withPrefix:)();
    v543 = v542;
    v545 = v544;
    v996 = v970;
    v997 = v541;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v546 = &v996;
    MEMORY[0x1C6940010](v543, v545);

    v547 = v986;
    sub_1C4EBEF3C(v996, v997, v548, v549, v550, v551, v552, v553, v915, v916, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926);
    v554 = v547;
    if (v547)
    {
      v209 = v998[0];

      goto LABEL_118;
    }

    v986 = 0;
    sub_1C45B4BF8(v540, &selRef_carrierName);
    sub_1C43FC1CC();
    v555 = (v992 + *(v198 + 52));
    v556 = v555[1];

    *v555 = &v996;
    v555[1] = 0;
    v557 = v992;
    v558 = sub_1C45B4BF8(v540, &selRef_trackingNumber);
    if (v559)
    {
      v554 = v558;
      v560 = v559;
      v561 = (v557 + *(v198 + 44));
      v562 = v561[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      *v561 = v554;
      v561[1] = v560;
      v563 = v203 + v971[11];
      v564 = *(v563 + 1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      *v563 = v554;
      *(v563 + 1) = v560;
      v546 = v998;
      sub_1C44869B4(&v996, v554, v560);
    }

    sub_1C45B4BF8(v540, &selRef_shippingMethod);
    sub_1C43FC1CC();
    v565 = (v557 + *(v198 + 60));
    v566 = v565[1];

    *v565 = v546;
    v565[1] = v554;
    sub_1C4EFEEF8();
    v567 = v982;
    sub_1C43FCF64();
    v995 = v568;
    sub_1C440BAA8(v569, v570, v571, v568);
    v572 = v567 + v182[5];
    sub_1C4EFD168();
    v573 = v182[6];
    if (qword_1EDDFD1C8 != -1)
    {
      sub_1C44072AC();
      swift_once();
    }

    v574 = type metadata accessor for Source();
    sub_1C442B738(v574, &qword_1EDDFD1D0);
    sub_1C441AB68();
    v993 = v575;
    v577 = v576;
    v994 = v576;
    sub_1C448D1F8(v576, v573 + v567);
    sub_1C44026C4();
    v578 = v182[8];
    v579 = v567 + v182[9];
    sub_1C4EFEEE8();
    sub_1C4411540();
    v580 = v182[12];
    v581 = v182[13];
    sub_1C443F464();
    sub_1C4EFECE8();
    sub_1C440DBEC();
    sub_1C43FC4DC(v182[16]);
    v582 = v567 + v182[17];
    sub_1C4EFE698();
    v583 = v182[18];
    v584 = v182[19];
    sub_1C440C150();
    sub_1C4EFEA38();
    v585 = (v567 + v182[20]);
    *(v578 + v567) = v963;
    *v198 = sub_1C45B4BF8(v540, &selRef_shippingDate);
    *(v198 + 8) = v586;
    *v585 = sub_1C45B4BF8(v540, &selRef_shippingDate);
    v585[1] = v587;
    *v573 = sub_1C45B4BF8(v540, &selRef_shippingTime);
    v573[1] = v588;
    v589 = v988;
    sub_1C43FCF64();
    sub_1C440C888(v590, v591, v592);
    sub_1C448D1F8(v577, &v589[v182[6]]);
    sub_1C44026C4();
    v593 = v182[9];
    v594 = &v589[v182[8]];
    sub_1C4EFEEE8();
    sub_1C4411540();
    v595 = v182[12];
    v596 = v182[13];
    sub_1C443F464();
    sub_1C4EFECE8();
    sub_1C440DBEC();
    sub_1C43FC4DC(v182[16]);
    v597 = &v589[v182[17]];
    sub_1C4EFE698();
    v598 = v182[18];
    v599 = v182[19];
    sub_1C440C150();
    sub_1C4EFEA38();
    sub_1C4418D7C();
    v601 = v600 - 3;
    v602 = v965;
    *v594 = v601;
    *(v594 + 1) = v602;
    *v198 = sub_1C45B4BF8(v540, &selRef_estimatedDeliveryStartDate);
    *(v198 + 8) = v603;
    *v578 = sub_1C45B4BF8(v540, &selRef_estimatedDeliveryStartDate);
    v578[1] = v604;
    *v573 = sub_1C45B4BF8(v540, &selRef_estimatedDeliveryStartTime);
    v573[1] = v605;
    v606 = i;
    sub_1C43FCF64();
    sub_1C440C888(v607, v608, v609);
    sub_1C448D1F8(v994, v606 + v182[6]);
    sub_1C44026C4();
    v610 = v182[9];
    v611 = (v606 + v182[8]);
    sub_1C4EFEEE8();
    sub_1C4411540();
    sub_1C43FC4DC(v182[12]);
    v612 = v606 + v182[13];
    sub_1C4EFECE8();
    sub_1C440DBEC();
    v613 = v182[16];
    v614 = v182[17];
    sub_1C440C150();
    sub_1C4EFE698();
    v615 = v182[18];
    v616 = v182[19];
    sub_1C443F464();
    sub_1C4EFEA38();
    sub_1C4418D7C();
    v618 = v617 - 5;
    v619 = v964;
    *v611 = v618;
    v611[1] = v619;
    *v573 = sub_1C45B4BF8(v540, &selRef_estimatedDeliveryEndDate);
    v573[1] = v620;
    *v578 = sub_1C45B4BF8(v540, &selRef_estimatedDeliveryEndDate);
    v578[1] = v621;
    *v198 = sub_1C45B4BF8(v540, &selRef_estimatedDeliveryEndTime);
    *(v198 + 8) = v622;
    v623 = v990;
    sub_1C43FCF64();
    sub_1C440C888(v624, v625, v626);
    v627 = v994;
    sub_1C448D1F8(v994, v623 + v182[6]);
    sub_1C44026C4();
    v628 = v182[8];
    v629 = v623 + v182[9];
    sub_1C4EFEEE8();
    sub_1C4411540();
    sub_1C43FC4DC(v182[12]);
    v630 = v623 + v182[13];
    sub_1C4EFECE8();
    sub_1C440DBEC();
    v631 = v182[16];
    v632 = v182[17];
    sub_1C440C150();
    sub_1C4EFE698();
    v633 = v182[18];
    v634 = v182[19];
    sub_1C443F464();
    sub_1C4EFEA38();
    v635 = (v623 + v182[20]);
    *(v623 + v628) = v962;
    *v573 = sub_1C45B4BF8(v540, &selRef_deliveryDate);
    v573[1] = v636;
    *v635 = sub_1C45B4BF8(v540, &selRef_deliveryDate);
    v635[1] = v637;
    *v198 = sub_1C45B4BF8(v540, &selRef_deliveryTime);
    *(v198 + 8) = v638;
    v639 = v991;
    sub_1C43FCF64();
    sub_1C440BAA8(v640, v641, v642, v995);
    v643 = v639 + v182[5];
    sub_1C4EFD168();
    sub_1C448D1F8(v627, v639 + v182[6]);
    v644 = v639 + v182[7];
    sub_1C4EFE658();
    v645 = (v639 + v182[8]);
    *v645 = 0;
    v645[1] = 0;
    v646 = v639 + v182[9];
    sub_1C4EFEEE8();
    sub_1C4405034(v182[10]);
    v647 = v639 + v182[11];
    sub_1C4EFE7B8();
    sub_1C4405034(v182[12]);
    v648 = v639 + v182[13];
    sub_1C4EFECE8();
    sub_1C4405034(v182[14]);
    v649 = v639 + v182[15];
    sub_1C4EFE668();
    sub_1C4405034(v182[16]);
    v650 = v639 + v182[17];
    sub_1C4EFE698();
    v651 = (v639 + v182[18]);
    *v651 = 0;
    v651[1] = 0;
    v652 = v639 + v182[19];
    sub_1C4EFEA38();
    sub_1C4405034(v182[20]);
    v653 = [v540 fulfillmentUpdateDate];
    if (v653)
    {
      v654 = v653;
      v655 = v960;
      sub_1C4EF9C78();

      v656 = v959;
      v657 = v977;
      (*v954)(v959, v655, v977);
      v658 = v953;
      *v645 = 0xD000000000000016;
      v645[1] = v658;
      v659 = v967;
      (*v952)(v967, v656, v657);
      sub_1C440BAA8(v659, 0, 1, v657);
      v660 = sub_1C4D5CB50(v659);
      v662 = v661;
      sub_1C44686E4(v659);
      (*v951)(v656, v657);
      *v651 = v660;
      v651[1] = v662;
    }

    sub_1C456902C(&qword_1EC0C0320, &unk_1C4F6FC80);
    v663 = *(v972 + 72);
    v664 = (*(v972 + 80) + 32) & ~*(v972 + 80);
    v665 = swift_allocObject();
    *(v665 + 16) = v961;
    v666 = v982;
    sub_1C448D1F8(v982, v665 + v664);
    sub_1C448D1F8(v988, v665 + v664 + v663);
    sub_1C448D1F8(i, v665 + v664 + 2 * v663);
    sub_1C448D1F8(v990, v665 + v664 + 3 * v663);
    sub_1C448D1F8(v991, v665 + v664 + 4 * v663);
    v198 = v979;
    v667 = *(v979 + 64);
    v668 = v992;
    v669 = *(v992 + v667);

    *(v668 + v667) = v665;
    sub_1C4ECAB48();
    v670 = v983;
    sub_1C43FCF64();
    sub_1C440BAA8(v671, v672, v673, v995);
    v674 = v974;
    v675 = v670 + *(v974 + 20);
    sub_1C4EFD398();
    v676 = *(v674 + 24);
    sub_1C441AB68();
    sub_1C448D1F8(v994, v670 + v677);
    v678 = *(v674 + 28);
    sub_1C43FCF64();
    sub_1C440BAA8(v679, v680, v681, v198);
    sub_1C448D1F8(v668, v975);
    v682 = sub_1C43FD680();
    v685 = sub_1C441400C(v682, v683, v684, v198);
    sub_1C4EBF6FC(v685);
    sub_1C448D1F8(v670, v984);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v691 = v987[2];
      v692 = sub_1C43FCEC0();
      sub_1C458C6D4(v692, v693, v694, v695);
      v987 = v696;
    }

    v203 = v976;
    v687 = v987[2];
    v686 = v987[3];
    if (v687 >= v686 >> 1)
    {
      v697 = sub_1C43FCFE8(v686);
      sub_1C458C6D4(v697, v687 + 1, 1, v987);
      v987 = v698;
    }

    sub_1C4D5CFF4(v983, type metadata accessor for WalletTrackedOrderStructs.OrderShipmentFullFillmentRelationshipType);
    v987[2] = v687 + 1;
    sub_1C43FBF6C();
    sub_1C4D5CF98(v984, v689 + v688 + *(v690 + 72) * v687);
    sub_1C4D5CFF4(v991, type metadata accessor for WalletTrackedOrderStructs.DateRelationshipType);
    sub_1C4D5CFF4(v990, type metadata accessor for WalletTrackedOrderStructs.DateRelationshipType);
    sub_1C4D5CFF4(i, type metadata accessor for WalletTrackedOrderStructs.DateRelationshipType);
    sub_1C4D5CFF4(v988, type metadata accessor for WalletTrackedOrderStructs.DateRelationshipType);
    sub_1C4D5CFF4(v666, type metadata accessor for WalletTrackedOrderStructs.DateRelationshipType);
    sub_1C4D5CFF4(v668, type metadata accessor for WalletTrackedOrderStructs.ShipmentFullFillmentInfo);
    v204 = v981 + 1;
    v181 = v966;
  }

  v699 = v971[14];
  v700 = *(v203 + v699);

  *(v203 + v699) = v987;
  sub_1C4ED8364();
  v701 = [v985 payment];
  if (v701)
  {
    v702 = v701;
    String.base64EncodedSHA(withPrefix:)();
    v704 = v703;
    v706 = v705;
    v996 = v970;
    v997 = v978;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v704, v706);

    v707 = v986;
    sub_1C4EBF7FC(v996, v997, v708, v709, v710, v711, v712, v713, v915, v916, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926);
    v714 = v957;
    if (v707)
    {
      v209 = v998[0];

LABEL_118:

      sub_1C442DA58();
      sub_1C4D5CFF4(v203, v715);
      return v209;
    }

    v988 = v702;
    v986 = 0;
    sub_1C4EFEEF8();
    v718 = v920;
    sub_1C43FCF64();
    v992 = v719;
    sub_1C440BAA8(v720, v721, v722, v719);
    v181 = v945;
    v723 = v718 + v945[5];
    sub_1C4EFD208();
    v724 = *(v181 + 24);
    if (qword_1EDDFD1C8 != -1)
    {
      sub_1C44072AC();
      swift_once();
    }

    v725 = type metadata accessor for Source();
    v726 = sub_1C442B738(v725, &qword_1EDDFD1D0);
    sub_1C441AB68();
    v994 = v727;
    sub_1C448D1F8(v728, v718 + v724);
    v729 = v718 + *(v181 + 28);
    sub_1C4EFEE08();
    v730 = *(v181 + 36);
    v731 = (v718 + *(v181 + 32));
    sub_1C4EFEC18();
    v732 = (v718 + *(v181 + 40));
    v733 = v988;
    *v731 = sub_1C45B4BF8(v988, &selRef_totalAmount);
    v731[1] = v734;
    *v732 = sub_1C45B4BF8(v733, &selRef_totalIsoCurrencyCode);
    v732[1] = v735;
    sub_1C440633C();
    sub_1C448D1F8(v718, v946);
    v736 = sub_1C43FD680();
    v739 = sub_1C441400C(v736, v737, v738, v181);
    sub_1C4EC0050(v739);
    v740 = v919;
    sub_1C43FCF64();
    sub_1C440BAA8(v741, v742, v743, v992);
    v744 = v917;
    v745 = v740 + v917[5];
    sub_1C4EFD2A8();
    v746 = v740 + v744[6];
    v995 = v726;
    sub_1C448D1F8(v726, v746);
    v747 = v740 + v744[7];
    sub_1C4EFE558();
    v748 = (v740 + v744[8]);
    *v748 = 0;
    v748[1] = 0;
    v749 = v740 + v744[9];
    sub_1C4EFE658();
    v750 = (v740 + v744[10]);
    *v750 = 0;
    v750[1] = 0;
    v751 = v744[11];
    sub_1C43FCF64();
    v752 = v915;
    sub_1C440BAA8(v753, v754, v755, v915);
    v756 = sub_1C442A548();
    v757 = v916;
    sub_1C448D1F8(v756, v916);
    v758 = v752;
    v226 = v992;
    sub_1C440BAA8(v757, 0, 1, v758);
    sub_1C4EC0140(v757);
    sub_1C448D1F8(v740, v918);
    v759 = sub_1C43FD680();
    v762 = sub_1C441400C(v759, v760, v761, v744);
    sub_1C4EC0240(v762);
    v763 = [v988 transactions];
    sub_1C4461BB8(0, &qword_1EC0C69D0, 0x1E698F050);
    v198 = sub_1C4F01678();

    v991 = sub_1C4428DA0();
    v764 = 0;
    v990 = v198 & 0xC000000000000001;
    v765 = MEMORY[0x1E69E7CC0];
    v766 = v955;
    for (i = v198; ; v198 = i)
    {
      v232 = v978;
      if (v991 == v764)
      {
        break;
      }

      v182 = v990;
      sub_1C4431590(v764, v990 == 0);
      if (v182)
      {
        v767 = MEMORY[0x1C6940F90](v764, v198);
      }

      else
      {
        v767 = *(v198 + 8 * v764 + 32);
      }

      v768 = v764;
      v218 = v767;
      v994 = v768;
      if (__OFADD__(v768, 1))
      {
        __break(1u);
        goto LABEL_165;
      }

      String.base64EncodedSHA(withPrefix:)();
      v770 = v769;
      v772 = v771;
      v996 = v970;
      v997 = v232;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v770, v772);

      v773 = v986;
      sub_1C4EC0330(v996, v997, v774, v775, v776, v777, v778, v779, v915, v916, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926);
      v986 = v773;
      if (v773)
      {

        sub_1C440EB1C();
        sub_1C4417BDC();
        v209 = v998[0];

        sub_1C4403BC8();
        sub_1C4D5CFF4(v920, v855);
        sub_1C442DA58();
        v454 = v976;
        goto LABEL_88;
      }

      v993 = v765;
      v780 = v948;
      sub_1C43FCF64();
      sub_1C440BAA8(v781, v782, v783, v226);
      v784 = v780 + *(v181 + 20);
      sub_1C4EFD208();
      v785 = *(v181 + 24);
      sub_1C441AB68();
      sub_1C448D1F8(v995, v780 + v786);
      v787 = v780 + *(v181 + 28);
      sub_1C4EFEE08();
      v788 = *(v181 + 36);
      v789 = (v780 + *(v181 + 32));
      sub_1C4EFEC18();
      v790 = (v780 + *(v181 + 40));
      *v789 = sub_1C45B4BF8(v218, &selRef_amount);
      v789[1] = v791;
      *v790 = sub_1C45B4BF8(v218, &selRef_isoCurrencyCode);
      v790[1] = v792;
      sub_1C45B4BF8(v218, &selRef_amount);
      sub_1C44106D4();
      v793 = sub_1C45B4BF8(v218, &selRef_isoCurrencyCode);
      v794 = v181;
      v796 = v766;
      v797 = sub_1C4D42F2C(v789, v790, v793, v795);

      sub_1C4D400DC(v797);
      sub_1C440633C();
      sub_1C448D1F8(v780, v946);
      v798 = sub_1C43FD680();
      v801 = sub_1C441400C(v798, v799, v800, v794);
      sub_1C4EC0CD8(v801);
      sub_1C45B4BF8(v218, &selRef_transactionIdenifier);
      sub_1C44106D4();
      v802 = (v796 + v958[11]);
      v803 = v802[1];

      *v802 = v796;
      v802[1] = v790;
      v804 = [v218 paymentMethod];
      v805 = v804;
      if (v804)
      {
        v806 = [v804 description];

        v805 = sub_1C4F01138();
        v808 = v807;
      }

      else
      {
        v808 = 0;
      }

      v809 = v955;
      v810 = (v955 + v958[13]);
      v811 = v810[1];

      *v810 = v805;
      v810[1] = v808;
      v812 = [v218 paymentMethod];
      v226 = v992;
      v765 = v993;
      if (v812)
      {
        sub_1C45C28F0(v812, &selRef_lastFourDigits);
      }

      v813 = (v809 + v958[17]);
      v814 = v813[1];

      v815 = [v218 paymentMethod];
      if (v815)
      {
        v816 = sub_1C45C28F0(v815, &selRef_lastFourDigits);
        v818 = v817;
      }

      else
      {

        v816 = 0;
        v818 = 0;
      }

      *v813 = v816;
      v813[1] = v818;
      v819 = v949;
      v820 = sub_1C440FF78();
      sub_1C440BAA8(v820, v821, v822, v226);
      v823 = v943;
      v824 = v819 + v943[5];
      sub_1C4EFD328();
      v825 = v823[6];
      sub_1C441AB68();
      sub_1C448D1F8(v995, v819 + v826);
      v827 = v819 + v823[7];
      sub_1C4EFE558();
      sub_1C44262E0(v823[8]);
      v828 = v819 + v823[9];
      sub_1C4EFE658();
      sub_1C44262E0(v823[10]);
      v829 = v823[11];
      sub_1C43FCF64();
      v830 = v958;
      sub_1C440BAA8(v831, v832, v833, v958);
      sub_1C448D1F8(v955, v944);
      v834 = sub_1C43FD680();
      v837 = sub_1C441400C(v834, v835, v836, v830);
      sub_1C4EC0DC8(v837);
      v838 = sub_1C442A548();
      sub_1C448D1F8(v838, v950);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v844 = *(v765 + 16);
        v845 = sub_1C43FCEC0();
        sub_1C458C714(v845, v846, v847, v765);
        v765 = v848;
      }

      v181 = v945;
      v714 = v957;
      v840 = *(v765 + 16);
      v839 = *(v765 + 24);
      v766 = v955;
      if (v840 >= v839 >> 1)
      {
        v849 = sub_1C43FCFE8(v839);
        sub_1C458C714(v849, v840 + 1, 1, v765);
        v765 = v850;
      }

      sub_1C4D5CFF4(v949, type metadata accessor for WalletTrackedOrderStructs.OrderTransactionRelationshipType);
      *(v765 + 16) = v840 + 1;
      sub_1C43FBF6C();
      sub_1C4D5CF98(v950, v765 + v841 + *(v842 + 72) * v840);
      sub_1C4403BC8();
      sub_1C4D5CFF4(v948, v843);
      sub_1C4D5CFF4(v766, type metadata accessor for WalletTrackedOrderStructs.Transaction);
      v764 = v994 + 1;
    }

    v851 = v920;
    if (*(v765 + 16))
    {
      v852 = v971[15];
      v853 = v765;
      v203 = v976;
      v854 = *(v976 + v852);

      *(v203 + v852) = v853;
      sub_1C4ED8548();

      sub_1C440EB1C();
      sub_1C4417BDC();
      v717 = v937;
    }

    else
    {

      sub_1C440EB1C();
      sub_1C4417BDC();

      v717 = v937;
      v203 = v976;
    }

    sub_1C4403BC8();
    sub_1C4D5CFF4(v851, v856);
  }

  else
  {
    v717 = v937;
    v714 = v957;
  }

  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v857, v858, v859, v860);
  v861 = v717 + v714[5];
  sub_1C4EFD258();
  v862 = v717;
  v863 = v714[6];
  if (qword_1EDDFD1C8 != -1)
  {
    sub_1C44072AC();
    swift_once();
  }

  v864 = type metadata accessor for Source();
  sub_1C442B738(v864, &qword_1EDDFD1D0);
  sub_1C441AB68();
  sub_1C448D1F8(v865, v862 + v863);
  v866 = v862 + v714[7];
  sub_1C4EFE558();
  v867 = v714[9];
  v868 = (v862 + v714[8]);
  sub_1C4EFE658();
  v869 = v862 + v714[10];
  sub_1C44255F4();
  *v871 = v870 - 1;
  v871[1] = v872;
  sub_1C44EC90C(v998[0], v873, v874, v875, v876, v877, v878, v879, v915, v916, v917, v918, v919, v920, v921, v922, v923, v924, v925, v926, v927, v928, v929, v930, v931, v932);
  v996 = v880;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  sub_1C4F01048();

  if (qword_1EDDE92E8 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v924, qword_1EDE2D008);
  String.base64EncodedSHA(withPrefix:)();
  v882 = v881;
  v884 = v883;

  *v868 = v882;
  v868[1] = v884;
  v885 = v971[17];
  v886 = *(v203 + v885);
  if (v886)
  {
    sub_1C440148C();
    sub_1C448D1F8(v937, v926);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v887 = v886;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v908 = *(v886 + 16);
      v909 = sub_1C43FCEC0();
      sub_1C458C654(v909, v910, v911, v886);
      v887 = v912;
    }

    v889 = *(v887 + 16);
    v888 = *(v887 + 24);
    if (v889 >= v888 >> 1)
    {
      v913 = sub_1C43FCFE8(v888);
      sub_1C458C654(v913, v889 + 1, 1, v887);
      v887 = v914;
    }

    *(v887 + 16) = v889 + 1;
    sub_1C43FBF6C();
    sub_1C443049C(v887 + v890);
    sub_1C4D5CF98(v926, v891);

    v203 = v976;
    *(v976 + v885) = v887;
  }

  else
  {
    sub_1C456902C(&qword_1EC0C0310, &qword_1C4F6FC90);
    sub_1C441BF04();
    v894 = v893 & ~v892;
    v895 = swift_allocObject();
    *(v895 + 16) = xmmword_1C4F0D130;
    sub_1C440148C();
    sub_1C448D1F8(v937, v896 + v894);
    *(v203 + v885) = v895;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  sub_1C4ED872C();
  v209 = *(*(v925 + *(type metadata accessor for PhaseStores() + 48)) + 16);

  v897 = v986;
  sub_1C448E5DC();

  if (!v897)
  {
    LOBYTE(v996) = v956;
    sub_1C4EC0EC8();
    v209 = v900;
  }

  sub_1C4420A48();
  sub_1C4D5CFF4(v937, v898);
  sub_1C442DA58();
  sub_1C4D5CFF4(v203, v899);
  return v209;
}

uint64_t sub_1C4D5CB50(uint64_t a1)
{
  v2 = sub_1C4EF9CD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v13 - v9;
  sub_1C4467FE0(a1, &v13 - v9);
  if (sub_1C44157D4(v10, 1, v2) == 1)
  {
    return 0;
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_1C4EF9AD8();
  v11 = sub_1C4F019E8();
  (*(v3 + 8))(v6, v2);
  return v11;
}

void sub_1C4D5CCC8()
{
  sub_1C467DBC4();
  v1 = type metadata accessor for WalletTrackedOrderDeltaSourceIngestor(0);
  v2 = *(v0 + *(v1 + 24));
  if (qword_1EDDFD1C8 != -1)
  {
    sub_1C44072AC();
    swift_once();
  }

  v3 = type metadata accessor for Source();
  sub_1C442B738(v3, &qword_1EDDFD1D0);
  v4 = *(v1 + 20);
  sub_1C4D46320();
}

uint64_t sub_1C4D5CD84()
{
  sub_1C4D5CCC8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4D5CE20(uint64_t a1)
{
  v2 = *(a1 + 20);
  sub_1C441F184();
  return sub_1C448D1F8(v1 + v3, v4);
}

void sub_1C4D5CE4C()
{
  v1 = *(v0 + *(type metadata accessor for WalletTrackedOrderSourceIngestor(0) + 24));
  if (qword_1EDDFD1C8 != -1)
  {
    sub_1C44072AC();
    swift_once();
  }

  v2 = type metadata accessor for Source();
  sub_1C442B738(v2, &qword_1EDDFD1D0);
  sub_1C4D44DDC();
}

uint64_t sub_1C4D5CED0()
{
  sub_1C4D5CE4C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4D5CF48(uint64_t a1)
{
  v2 = *(a1 + 20);
  sub_1C441AB68();
  return sub_1C448D1F8(v1 + v3, v4);
}

uint64_t sub_1C4D5CF98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C4D5CFF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1C4D5D04C()
{
  result = qword_1EC0C69E8;
  if (!qword_1EC0C69E8)
  {
    sub_1C4572308(&qword_1EC0C69E0, &qword_1C4F6FCA8);
    sub_1C45C0BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C69E8);
  }

  return result;
}

uint64_t sub_1C4D5D168(uint64_t a1)
{
  result = sub_1C4D5D218(qword_1EDDDDB40, type metadata accessor for WalletTrackedOrderSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D5D1C0(uint64_t a1)
{
  result = sub_1C4D5D218(&qword_1EDDDDB28, type metadata accessor for WalletTrackedOrderSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D5D218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4D5D260(uint64_t a1)
{
  result = sub_1C4D5D218(qword_1EDDDC6F8, type metadata accessor for WalletTrackedOrderDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D5D2B8(uint64_t a1)
{
  result = sub_1C4D5D218(&qword_1EDDDC6E0, type metadata accessor for WalletTrackedOrderDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D5D318(uint64_t a1, _BYTE *a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v5 = type metadata accessor for Fuser();
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v8 = type metadata accessor for Linker();
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v11 = type metadata accessor for Source();
  *(v3 + 128) = v11;
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v14 = type metadata accessor for PhaseStores();
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 185) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C4D5D444, 0, 0);
}

uint64_t sub_1C4D5D444()
{
  switch(*(v0 + 185))
  {
    case 2:

      goto LABEL_4;
    default:
      v1 = sub_1C4F02938();

      if (v1)
      {
LABEL_4:
        v2 = *(v0 + 96);
        v3 = type metadata accessor for WalletTransactionOrderDeltaSourceIngestor(0);
        *(v0 + 40) = v3;
        *(v0 + 48) = sub_1C4D5D808(&qword_1EDDDC368, type metadata accessor for WalletTransactionOrderDeltaSourceIngestor);
        v4 = sub_1C4422F90((v0 + 16));
        v5 = v3[5];
        sub_1C4419288();
        sub_1C4471750(v2, v6 + v7, v8);
        v9 = qword_1EDDFD1A0;
        v10 = 2;
        v11 = v4;
      }

      else
      {
        v12 = *(v0 + 96);
        v3 = type metadata accessor for WalletTransactionOrderSourceIngestor(0);
        *(v0 + 40) = v3;
        *(v0 + 48) = sub_1C4D5D808(&qword_1EDDDCA90, type metadata accessor for WalletTransactionOrderSourceIngestor);
        v11 = sub_1C4422F90((v0 + 16));
        sub_1C4419288();
        sub_1C4471750(v12, v11, v13);
        v4 = (v11 + v3[5]);
        v9 = qword_1EDDFD1A0;
        v10 = 1;
      }

      if (v9 != -1)
      {
        sub_1C4413DB4();
      }

      v14 = *(v0 + 160);
      v15 = *(v0 + 96);
      sub_1C442B738(*(v0 + 128), &qword_1EDDFD1A8);
      sub_1C44068F0();
      sub_1C4471750(v16, v4, v17);
      *(v11 + v3[6]) = v10;
      v18 = v11 + v3[7];
      sub_1C4EFCEF8();
      sub_1C4419288();
      sub_1C4471750(v15, v14, v19);
      if (qword_1EDDFD1A0 != -1)
      {
        sub_1C4413DB4();
      }

      v20 = *(v0 + 185);
      v21 = *(v0 + 144);
      v22 = *(v0 + 152);
      v23 = *(v0 + 136);
      v24 = *(v0 + 96);
      v25 = sub_1C442B738(*(v0 + 128), &qword_1EDDFD1A8);
      *(v0 + 168) = v25;
      sub_1C4471750(v25, v21, type metadata accessor for Source);
      sub_1C442E860(v0 + 16, v0 + 56);
      sub_1C4471750(v25, v23, type metadata accessor for Source);
      sub_1C4419288();
      sub_1C4471750(v24, v22, v26);
      *(v0 + 184) = v20;
      v27 = swift_task_alloc();
      *(v0 + 176) = v27;
      *v27 = v0;
      v27[1] = sub_1C4657140;
      v28 = *(v0 + 152);
      v29 = *(v0 + 136);
      v30 = *(v0 + 120);

      return Linker.init(source:stores:pipelineType:)();
  }
}

uint64_t type metadata accessor for WalletTransactionOrderEventPhase()
{
  result = qword_1EDDDDA78;
  if (!qword_1EDDDDA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4D5D808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t BMWalletPaymentsCommerceTransaction.ingestEvent(startTime:endTime:pipelineType:stores:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v404 = type metadata accessor for WalletTransactionOrderStructs.IdentifierRelationshipType(0);
  v5 = sub_1C43FCDF8(v404);
  v405 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD230();
  sub_1C43FCE30(v10);
  v11 = sub_1C456902C(&qword_1EC0C69F0, &unk_1C4F6FE90);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBC74();
  sub_1C43FCE30(v15);
  v16 = sub_1C456902C(&qword_1EC0C69F8, &unk_1C4F82560);
  sub_1C43FBD18(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBC74();
  v21 = sub_1C43FD2C8(v20);
  v402 = type metadata accessor for WalletTransactionOrderStructs.OrderPaymentRelationshipType(v21);
  v22 = sub_1C43FBCE0(v402);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v27 = v26 - v25;
  v400 = type metadata accessor for WalletTransactionOrderStructs.Payment(0);
  v28 = sub_1C43FBCE0(v400);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  v33 = v32 - v31;
  v34 = sub_1C456902C(&qword_1EC0C6A00, &unk_1C4F6FEA0);
  sub_1C43FBD18(v34);
  v36 = *(v35 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBC74();
  v424 = v38;
  v39 = sub_1C43FBE44();
  v40 = type metadata accessor for WalletTransactionOrderStructs.OrderTransactionRelationshipType(v39);
  v422 = sub_1C43FCDF8(v40);
  v423 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v422);
  sub_1C43FD2D8();
  v425 = v44;
  v45 = sub_1C456902C(&qword_1EC0C6A08, &unk_1C4F82440);
  sub_1C43FBD18(v45);
  v47 = *(v46 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBC74();
  sub_1C43FCE30(v49);
  v50 = sub_1C456902C(&qword_1EC0C6A10, &unk_1C4F6FEB0);
  sub_1C43FBD18(v50);
  v52 = *(v51 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBC74();
  v55 = sub_1C43FD2C8(v54);
  v398 = type metadata accessor for WalletTransactionOrderStructs.EntityOrganizationRelationshipType(v55);
  v56 = sub_1C43FBCE0(v398);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FD2D8();
  sub_1C43FCE30(v59);
  v60 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  v61 = sub_1C43FBD18(v60);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FD230();
  v66 = sub_1C43FD2C8(v65);
  v407 = type metadata accessor for WalletTransactionOrderStructs.Organization(v66);
  v67 = sub_1C43FBCE0(v407);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  sub_1C43FD2D8();
  v421 = v70;
  v71 = sub_1C456902C(&qword_1EC0C6A18, &qword_1C4F6FEC0);
  sub_1C43FBD18(v71);
  v73 = *(v72 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v74);
  sub_1C43FBC74();
  v420 = v75;
  sub_1C43FBE44();
  v419 = sub_1C4EF9648();
  v76 = sub_1C43FCDF8(v419);
  v418 = v77;
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v76);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v80);
  v417 = sub_1C4EF9F88();
  v81 = sub_1C43FCDF8(v417);
  v415 = v82;
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v81);
  sub_1C43FD2D8();
  v86 = sub_1C43FD2C8(v85);
  v414 = type metadata accessor for WalletTransactionOrderStructs.DateRelationshipType(v86);
  v87 = sub_1C43FBCE0(v414);
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v87);
  sub_1C43FBCC4();
  v92 = v91 - v90;
  v426 = sub_1C4EF9CD8();
  v93 = sub_1C43FCDF8(v426);
  v413 = v94;
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v93);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v97);
  sub_1C43FD230();
  sub_1C43FCE30(v98);
  v99 = sub_1C456902C(&qword_1EC0C6A20, &qword_1C4F6FEC8);
  sub_1C43FBD18(v99);
  v101 = *(v100 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v102);
  sub_1C43FBC74();
  v428 = v103;
  v104 = sub_1C43FBE44();
  v427 = type metadata accessor for WalletTransactionOrderStructs.QuantityRelationshipType(v104);
  v105 = sub_1C43FBCE0(v427);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v105);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v108);
  sub_1C43FD230();
  v429 = v109;
  v110 = sub_1C43FBE44();
  v431 = type metadata accessor for WalletTransactionOrderStructs.Transaction(v110);
  v111 = sub_1C43FBCE0(v431);
  v113 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v111);
  sub_1C43FD2D8();
  v433 = v114;
  v115 = sub_1C43FBE44();
  v430 = type metadata accessor for WalletTransactionOrderStructs.WalletOrder(v115);
  v116 = sub_1C43FBCE0(v430);
  v118 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v116);
  sub_1C43FBCC4();
  v121 = v120 - v119;
  HIDWORD(v392) = *a3;
  v436 = MEMORY[0x1E69E7CD0];
  sub_1C4F019E8();
  if (qword_1EDDE9270 != -1)
  {
    swift_once();
  }

  v122 = type metadata accessor for SourceIdPrefix();
  v123 = sub_1C442B738(v122, qword_1EDE2CF90);
  String.base64EncodedSHA(withPrefix:)();
  v125 = v124;
  v127 = v126;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EDE7DC(v125, v127, v128, v129, v130, v131, v132, v133, v347, v352, v356, v360, v364, v368, v372, v377, v381, v384, v388, v392);
  if (v434)
  {
  }

  else
  {
    v373 = v122;
    v435 = v121;
    String.base64EncodedSHA(withPrefix:)();
    v135 = v134;
    v137 = v136;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v135, v137);

    sub_1C4EDF098(v125, v127, v138, v139, v140, v141, v142, v143, v348, v353, v357, v361, v365, v369, v373, v378, v382, v385, v389, v393);
    v366 = v123;
    v354 = v125;
    v362 = v127;
    v349 = v27;
    v358 = v33;
    sub_1C4EFEEF8();
    sub_1C43FCF64();
    v370 = v145;
    sub_1C440BAA8(v146, v147, v148, v145);
    v149 = v429 + *(v427 + 20);
    sub_1C4EFD208();
    v150 = *(v427 + 24);
    if (qword_1EDDFD1A0 != -1)
    {
      sub_1C4413DB4();
    }

    v151 = type metadata accessor for Source();
    sub_1C442B738(v151, &qword_1EDDFD1A8);
    sub_1C441AB80();
    v379 = v152;
    sub_1C448D254(v152, v429 + v150, v153);
    v154 = v429 + *(v427 + 28);
    sub_1C4EFEE08();
    v155 = *(v427 + 36);
    v156 = (v429 + *(v427 + 32));
    sub_1C4EFEC18();
    v157 = (v429 + *(v427 + 40));
    sub_1C45B4BF8(v432, &selRef_amount);
    sub_1C440496C();
    *v156 = v158;
    v156[1] = v159;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v160 = sub_1C45B4BF8(v432, &selRef_currencyCode);
    v162 = v161;
    *v157 = v160;
    v157[1] = v161;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v163 = sub_1C4D42F2C(v150, v137, v160, v162);

    sub_1C4D400DC(v163);
    sub_1C4417C04();
    sub_1C448D254(v429, v428, v164);
    sub_1C43FBD94();
    sub_1C440BAA8(v165, v166, v167, v427);
    v168 = v433;
    sub_1C4EDFA4C(v428);
    sub_1C45B4BF8(v432, &selRef_transactionID);
    sub_1C4408DEC();
    v169 = (v433 + v431[9]);
    v170 = v169[1];

    *v169 = v433;
    v169[1] = v162;
    [v432 transactionStatus];
    v171 = MEMORY[0x1E69E72F0];
    sub_1C442E750();
    sub_1C440496C();
    sub_1C441F19C(v431[21]);
    *v427 = v433;
    *(v427 + 8) = v137;
    sub_1C45B4BF8(v432, &selRef_transactionDescription);
    sub_1C440496C();
    sub_1C441F19C(v431[11]);
    *v427 = v433;
    *(v427 + 8) = v137;
    [v432 transactionSource];
    sub_1C442E750();
    sub_1C4408DEC();
    sub_1C441F19C(v431[17]);
    *v427 = v433;
    *(v427 + 8) = v171;
    v172 = [v432 account];
    if (v172)
    {
      sub_1C45C28F0(v172, &selRef_lastFourDigits);
      sub_1C440496C();
    }

    else
    {
      v168 = 0;
      v137 = 0;
    }

    v173 = (v433 + v431[15]);
    v174 = v173[1];

    *v173 = v168;
    v173[1] = v137;
    v175 = [v432 account];
    if (v175)
    {
      sub_1C45C28F0(v175, &selRef_institutionName);
      sub_1C440496C();
    }

    else
    {
      v168 = 0;
      v137 = 0;
    }

    sub_1C441F19C(v431[13]);
    *v173 = v168;
    v173[1] = v137;
    [v432 accountType];
    v176 = MEMORY[0x1E69E72F0];
    sub_1C442E750();
    sub_1C440496C();
    sub_1C441F19C(v431[19]);
    *v173 = v168;
    v173[1] = v137;
    [v432 transactionType];
    sub_1C442E750();
    sub_1C4408DEC();
    v177 = v433;
    sub_1C441F19C(v431[23]);
    *v173 = v168;
    v173[1] = v176;
    v178 = [v432 transactionDate];
    v179 = v430;
    v180 = v370;
    sub_1C441BF18();
    if (v181)
    {
      v182 = v181;
      sub_1C4EF9C78();

      (*(v413 + 32))(v411, v410, v426);
      sub_1C43FCF64();
      sub_1C440BAA8(v183, v184, v185, v370);
      v186 = v92 + v414[5];
      sub_1C4EFD168();
      v187 = v414[6];
      sub_1C441AB80();
      sub_1C448D254(v173, v92 + v188, v189);
      v190 = v92 + v414[7];
      sub_1C4EFE658();
      v191 = v414[8];
      v192 = v92 + v414[9];
      sub_1C4EFEEE8();
      sub_1C4405034(v414[10]);
      v193 = v92 + v414[11];
      sub_1C4EFE7B8();
      sub_1C4405034(v414[12]);
      v194 = v92 + v414[13];
      sub_1C4EFECE8();
      sub_1C4405034(v414[14]);
      v195 = v92 + v414[15];
      sub_1C4EFE668();
      sub_1C4405034(v414[16]);
      v196 = v92 + v414[17];
      sub_1C4EFE698();
      v197 = v414[19];
      v198 = (v92 + v414[18]);
      sub_1C4EFEA38();
      v199 = (v92 + v414[20]);
      *(v92 + v191) = xmmword_1C4F6FE80;
      sub_1C4EF9AD8();
      *v199 = sub_1C4F019E8();
      v199[1] = v200;
      v173 = v412;
      sub_1C4EF9F58();
      if (qword_1EDDF4920 != -1)
      {
        swift_once();
      }

      sub_1C4EF9EA8();
      sub_1C44CDAD4();
      sub_1C4408DEC();
      (*(v418 + 8))(v416, v419);
      (*(v415 + 8))(v412, v417);
      *v198 = v416;
      v198[1] = v176;
      sub_1C448D254(v92, v420, type metadata accessor for WalletTransactionOrderStructs.DateRelationshipType);
      v201 = sub_1C43FC024();
      sub_1C440BAA8(v201, v202, v203, v414);
      v177 = v433;
      sub_1C4EDFB3C(v420);
      (*(v413 + 8))(v411, v426);
      sub_1C4D5F434(v92, type metadata accessor for WalletTransactionOrderStructs.DateRelationshipType);
      sub_1C441BF18();
      v179 = v430;
      v180 = v370;
    }

    v204 = [v432 merchant];
    if (v204)
    {
      v205 = sub_1C45C28F0(v204, &selRef_merchantName);
      if (v206)
      {
        v207 = v205;
        v208 = v206;
        String.base64EncodedSHA(withPrefix:)();
        sub_1C4EDFC2C(v209, v210, v211, v212, v213, v214, v215, v216, v350, v354, v358, v362, v366, v370, v374, v379, 0, v386, v390, v394);
        sub_1C441F19C(*(v407 + 36));
        *v173 = v207;
        v173[1] = v208;
        v217 = [v432 merchant];
        if (v217)
        {
          v218 = v217;
          v219 = [v217 webURL];

          if (v219)
          {
            v220 = v386;
            sub_1C4EF98C8();

            v221 = 0;
            v222 = v421;
            v223 = v390;
          }

          else
          {
            v221 = 1;
            v222 = v421;
            v223 = v390;
            v220 = v386;
          }

          v226 = sub_1C4EF98F8();
          sub_1C440BAA8(v220, v221, 1, v226);
          sub_1C49C45B0(v220, v223);
          if (sub_1C44157D4(v223, 1, v226) == 1)
          {
            sub_1C46CF3CC(v223);
            v224 = 0;
            v225 = 0;
          }

          else
          {
            v224 = sub_1C4EF9818();
            v225 = v227;
            (*(*(v226 - 8) + 8))(v223, v226);
          }
        }

        else
        {
          v224 = 0;
          v225 = 0;
          v222 = v421;
        }

        v228 = (v222 + *(v407 + 52));
        v229 = v228[1];

        *v228 = v224;
        v228[1] = v225;
        v230 = v222;
        sub_1C43FCF64();
        v180 = v370;
        sub_1C440BAA8(v231, v232, v233, v370);
        v234 = v397 + v398[5];
        sub_1C4EFD348();
        v235 = v398[6];
        sub_1C441AB80();
        sub_1C448D254(v379, v397 + v236, v237);
        v238 = v398[7];
        sub_1C43FCF64();
        sub_1C440BAA8(v239, v240, v241, v407);
        sub_1C448D254(v230, v396, type metadata accessor for WalletTransactionOrderStructs.Organization);
        v242 = sub_1C43FC024();
        sub_1C440BAA8(v242, v243, v244, v407);
        sub_1C4EE0428(v396);
        sub_1C448D254(v397, v399, type metadata accessor for WalletTransactionOrderStructs.EntityOrganizationRelationshipType);
        v245 = sub_1C43FC024();
        sub_1C440BAA8(v245, v246, v247, v398);
        sub_1C4EE0538(v399);
        v173 = v379;
        sub_1C4D5F434(v397, type metadata accessor for WalletTransactionOrderStructs.EntityOrganizationRelationshipType);
        sub_1C4D5F434(v421, type metadata accessor for WalletTransactionOrderStructs.Organization);
        v179 = v430;
      }
    }

    v248 = v358;
    sub_1C43FCF64();
    sub_1C440BAA8(v249, v250, v251, v180);
    v252 = v425 + v422[5];
    sub_1C4EFD328();
    v253 = v422[6];
    sub_1C441AB80();
    sub_1C448D254(v173, v425 + v254, v255);
    v256 = v422[7];
    sub_1C43FCF64();
    sub_1C440BAA8(v257, v258, v259, v431);
    sub_1C448D254(v177, v424, type metadata accessor for WalletTransactionOrderStructs.Transaction);
    v260 = sub_1C43FC024();
    sub_1C440BAA8(v260, v261, v262, v431);
    sub_1C4EE0628(v424);
    sub_1C456902C(&qword_1EC0C0300, &unk_1C4F6FED0);
    v263 = *(v423 + 72);
    v264 = (*(v423 + 80) + 32) & ~*(v423 + 80);
    v265 = swift_allocObject();
    *(v265 + 16) = xmmword_1C4F0D130;
    sub_1C448D254(v425, v265 + v264, type metadata accessor for WalletTransactionOrderStructs.OrderTransactionRelationshipType);
    v266 = *(v179 + 60);
    v267 = *(v435 + v266);

    *(v435 + v266) = v265;
    sub_1C4EECB34();
    String.base64EncodedSHA(withPrefix:)();
    v269 = v268;
    v271 = v270;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v269, v271);

    sub_1C4EE0738(v354, v362, v272, v273, v274, v275, v276, v277, v350, v354, v358, v362, v366, v370, v374, v379, 0, v386, v390, v394);
    sub_1C43FCF64();
    sub_1C440BAA8(v279, v280, v281, v180);
    v282 = v409 + *(v427 + 20);
    sub_1C4EFD208();
    sub_1C448D254(v173, v409 + *(v427 + 24), type metadata accessor for Source);
    v283 = v409 + *(v427 + 28);
    sub_1C4EFEE08();
    v284 = *(v427 + 36);
    v285 = (v409 + *(v427 + 32));
    sub_1C4EFEC18();
    v286 = (v409 + *(v427 + 40));
    *v285 = sub_1C45B4BF8(v432, &selRef_amount);
    v285[1] = v287;
    *v286 = sub_1C45B4BF8(v432, &selRef_currencyCode);
    v286[1] = v288;
    sub_1C4417C04();
    sub_1C448D254(v409, v428, v289);
    sub_1C43FBD94();
    sub_1C440BAA8(v290, v291, v292, v427);
    sub_1C4EE0FBC(v428);
    sub_1C43FCF64();
    sub_1C440BAA8(v293, v294, v295, v180);
    v296 = v351 + v402[5];
    sub_1C4EFD2A8();
    sub_1C448D254(v380, v351 + v402[6], type metadata accessor for Source);
    v297 = v402[7];
    sub_1C43FCF64();
    sub_1C440BAA8(v298, v299, v300, v400);
    sub_1C448D254(v248, v401, type metadata accessor for WalletTransactionOrderStructs.Payment);
    sub_1C43FBD94();
    sub_1C440BAA8(v301, v302, v303, v400);
    sub_1C4EE10AC(v401);
    sub_1C448D254(v351, v403, type metadata accessor for WalletTransactionOrderStructs.OrderPaymentRelationshipType);
    sub_1C43FBD94();
    sub_1C440BAA8(v304, v305, v306, v402);
    sub_1C4EE11BC(v403);
    sub_1C43FCF64();
    v308 = v307;
    sub_1C440BAA8(v307, v309, v310, v180);
    v311 = v308 + v404[5];
    sub_1C4EFD258();
    sub_1C448D254(v380, v308 + v404[6], type metadata accessor for Source);
    v312 = v308 + v404[7];
    sub_1C4EFE558();
    v313 = v404[9];
    v314 = (v308 + v404[8]);
    sub_1C4EFE658();
    v315 = (v308 + v404[10]);
    *v315 = 0xD000000000000014;
    v315[1] = 0x80000001C4F860D0;
    sub_1C44EC90C(v436, v316, v317, v318, v319, v320, v321, v322, v351, v355, v359, v363, v367, v371, v375, v380, 0, v387, v391, v395, v396, v397, v398, v399, v400, v401);
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    sub_1C4F01048();

    if (qword_1EDDE92E8 != -1)
    {
      swift_once();
    }

    sub_1C442B738(v376, qword_1EDE2D008);
    String.base64EncodedSHA(withPrefix:)();
    v324 = v323;
    v326 = v325;

    *v314 = v324;
    v314[1] = v326;
    v327 = *(v430 + 68);
    v328 = *(v435 + v327);
    if (v328)
    {
      sub_1C440FF88();
      sub_1C448D254(v308, v408, v329);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v330 = v328;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458C794(0, *(v328 + 16) + 1, 1, v328);
        v330 = v345;
      }

      v332 = *(v330 + 16);
      v331 = *(v330 + 24);
      if (v332 >= v331 >> 1)
      {
        sub_1C458C794(v331 > 1, v332 + 1, 1, v330);
        v330 = v346;
      }

      *(v330 + 16) = v332 + 1;
      sub_1C4D5F3D0(v408, v330 + ((*(v405 + 80) + 32) & ~*(v405 + 80)) + *(v405 + 72) * v332);

      v333 = v435;
      *(v435 + v327) = v330;
    }

    else
    {
      sub_1C456902C(&qword_1EC0C02F8, &unk_1C4F3E690);
      v334 = *(v405 + 72);
      v335 = (*(v405 + 80) + 32) & ~*(v405 + 80);
      v336 = swift_allocObject();
      *(v336 + 16) = xmmword_1C4F0D130;
      sub_1C440FF88();
      sub_1C448D254(v308, v337 + v335, v338);
      *(v435 + v327) = v336;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v333 = v435;
    }

    sub_1C4EECD54();
    v339 = *(*(a4 + *(type metadata accessor for PhaseStores() + 48)) + 16);

    sub_1C448E5DC();

    if (v383)
    {

      sub_1C44093F0();
      sub_1C44262EC();
      sub_1C4420A60();
      sub_1C4D5F434(v425, v340);
      sub_1C4408344();
      sub_1C4D5F434(v333, v341);
      sub_1C4433A70();
      v123 = type metadata accessor for WalletTransactionOrderStructs.QuantityRelationshipType;
    }

    else
    {

      sub_1C4EE12AC();
      v123 = v342;

      sub_1C44093F0();
      sub_1C44262EC();
      sub_1C4420A60();
      sub_1C4D5F434(v425, v343);
      sub_1C4408344();
      sub_1C4D5F434(v333, v344);
      sub_1C4433A70();
    }

    sub_1C4D5F434(v409, type metadata accessor for WalletTransactionOrderStructs.QuantityRelationshipType);
    sub_1C4D5F434(v429, type metadata accessor for WalletTransactionOrderStructs.QuantityRelationshipType);
    sub_1C442DA70();
    sub_1C4D5F434(v433, v144);
  }

  return v123;
}

void sub_1C4D5F108()
{
  sub_1C467E090();
  v1 = type metadata accessor for WalletTransactionOrderDeltaSourceIngestor(0);
  v2 = *(v0 + *(v1 + 24));
  if (qword_1EDDFD1A0 != -1)
  {
    sub_1C4413DB4();
  }

  v3 = type metadata accessor for Source();
  sub_1C442B738(v3, &qword_1EDDFD1A8);
  v4 = *(v1 + 20);
  sub_1C4D46740();
}

uint64_t sub_1C4D5F1C0()
{
  sub_1C4D5F108();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4D5F25C(uint64_t a1)
{
  v2 = *(a1 + 20);
  sub_1C440EB44();
  return sub_1C448D254(v1 + v3, v4, v5);
}

void sub_1C4D5F288()
{
  v1 = *(v0 + *(type metadata accessor for WalletTransactionOrderSourceIngestor(0) + 24));
  if (qword_1EDDFD1A0 != -1)
  {
    sub_1C4413DB4();
  }

  v2 = type metadata accessor for Source();
  sub_1C442B738(v2, &qword_1EDDFD1A8);
  sub_1C4D45AE0();
}

uint64_t sub_1C4D5F308()
{
  sub_1C4D5F288();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4D5F380(uint64_t a1)
{
  v2 = *(a1 + 20);
  sub_1C441AB80();
  return sub_1C448D254(v1 + v3, v4, v5);
}

uint64_t sub_1C4D5F3D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletTransactionOrderStructs.IdentifierRelationshipType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4D5F434(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4D5F51C(uint64_t a1)
{
  result = sub_1C4D5F5CC(qword_1EDDDCA98, type metadata accessor for WalletTransactionOrderSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D5F574(uint64_t a1)
{
  result = sub_1C4D5F5CC(&qword_1EDDDCA80, type metadata accessor for WalletTransactionOrderSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D5F5CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4D5F614(uint64_t a1)
{
  result = sub_1C4D5F5CC(&qword_1EDDDC370, type metadata accessor for WalletTransactionOrderDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D5F66C(uint64_t a1)
{
  result = sub_1C4D5F5CC(&unk_1EDDDC350, type metadata accessor for WalletTransactionOrderDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

void sub_1C4D5F75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v39 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v29 = 0;
  v30 = 0;
  v31 = v39;
  v32 = *(v39 + 16);
  v33 = 16 * v32;
  do
  {
    v34 = v29;
    if (*(&unk_1F43D2770 + v30 + 32))
    {
      v35 = 0xD000000000000026;
    }

    else
    {
      v35 = 0x5F676E696B726F77;
    }

    if (*(&unk_1F43D2770 + v30 + 32))
    {
      v36 = 0x80000001C4FC7B50;
    }

    else
    {
      v36 = 0xEB0000000074756FLL;
    }

    v40 = v31;
    v37 = v32 + 1;
    if (v32 >= *(v31 + 24) >> 1)
    {
      sub_1C44CD9C0();
      v31 = v40;
    }

    *(v31 + 16) = v37;
    v38 = v31 + v33;
    *(v38 + 32) = v35;
    *(v38 + 40) = v36;
    v33 += 16;
    v29 = 1;
    v32 = v37;
    v30 = 1u;
  }

  while ((v34 & 1) == 0);

  sub_1C4499940(v31, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4D5F898(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4D5F8F0(a1, v1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C4D5F8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v61 = a3;
  v60 = a2;
  v57 = a1;
  v3 = sub_1C456902C(&unk_1EC0B9830, qword_1C4F0FC20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = &v49 - v5;
  v6 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v49 - v8;
  v10 = sub_1C4EF9648();
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C4EF9F88();
  v52 = *(v14 - 8);
  v15 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v56 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v53 = &v49 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v49 - v24;
  v26 = sub_1C4EF9CD8();
  v50 = *(v26 - 8);
  v27 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = swift_allocObject();
  v59 = v30;
  *(v30 + 16) = MEMORY[0x1E69E7CC0];
  v58 = v30 + 16;
  sub_1C4EF9F58();
  sub_1C440BAA8(v9, 1, 1, v14);
  v31 = sub_1C4EFA018();
  sub_1C440BAA8(v51, 1, 1, v31);
  sub_1C4EF9618();
  sub_1C4EF9F18();
  (*(v54 + 8))(v13, v55);
  (*(v52 + 8))(v17, v14);
  if (sub_1C44157D4(v25, 1, v26) == 1)
  {
    sub_1C4EF9CC8();
    v32 = sub_1C44157D4(v25, 1, v26);
    v33 = v50;
    if (v32 != 1)
    {
      sub_1C44686E4(v25);
    }
  }

  else
  {
    v33 = v50;
    (*(v50 + 32))(v29, v25, v26);
  }

  v34 = v60;
  v35 = *(v60 + 16);
  v36 = v53;
  (*(v33 + 16))(v53, v29, v26);
  sub_1C440BAA8(v36, 0, 1, v26);
  v37 = v56;
  sub_1C440BAA8(v56, 1, 1, v26);
  v38 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v39 = v29;
  v40 = sub_1C457A86C(v36, v37, 0, 1, 0);
  v41 = [v35 publisherWithOptions_];

  v66 = sub_1C4D6150C;
  v67 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v63 = 1107296256;
  v64 = sub_1C44405F8;
  v65 = &unk_1F440DA30;
  v42 = _Block_copy(&aBlock);

  v43 = swift_allocObject();
  v44 = v59;
  *(v43 + 16) = v34;
  *(v43 + 24) = v44;
  v66 = sub_1C4D61530;
  v67 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v63 = 1107296256;
  v64 = sub_1C4440590;
  v65 = &unk_1F440DA80;
  v45 = _Block_copy(&aBlock);

  v46 = [v41 sinkWithCompletion:v42 receiveInput:v45];
  _Block_release(v45);
  _Block_release(v42);

  (*(v33 + 8))(v39, v26);
  swift_beginAccess();
  v47 = *(v44 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  *v61 = v47;
  return result;
}

void sub_1C4D5FFBC(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 eventBody])
  {
    v5 = swift_beginAccess();
    MEMORY[0x1C6940330](v5);
    sub_1C4427EF0(*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1C4F01748();
    swift_endAccess();
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);

    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CF8();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      v10 = [*(a2 + 16) description];
      v11 = sub_1C4F01138();
      v13 = v12;

      v14 = sub_1C441D828(v11, v13, &v16);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "Unable to parse event body from read event in the stream %s", v8, 0xCu);
      sub_1C440962C(v9);
      MEMORY[0x1C6942830](v9, -1, -1);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1C4D601D8(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4D60230(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C4D60230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = *(a1 + 16);
  v15 = sub_1C4EF9CD8();
  sub_1C440BAA8(v12, 1, 1, v15);
  (*(*(v15 - 8) + 16))(v9, a2, v15);
  sub_1C440BAA8(v9, 0, 1, v15);
  v16 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v17 = sub_1C457A86C(v12, v9, 1, 1, 0);
  v18 = [v14 publisherWithOptions_];

  v31 = sub_1C4D61538;
  v32 = a1;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1C44405F8;
  v30 = &unk_1F440DAD0;
  v19 = _Block_copy(&aBlock);

  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = v13;
  v31 = sub_1C4D6159C;
  v32 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1C4440590;
  v30 = &unk_1F440DB20;
  v21 = _Block_copy(&aBlock);

  v22 = [v18 sinkWithCompletion:v19 receiveInput:v21];

  _Block_release(v21);
  _Block_release(v19);

  swift_beginAccess();
  v23 = *(v13 + 16);
  *a3 = v23;
  v24 = v23;
}

void sub_1C4D60544(void *a1, uint64_t a2, const char *a3)
{
  v5 = [a1 error];
  if (v5)
  {
    v6 = v5;
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDDFECB8);

    v8 = v6;
    oslog = sub_1C4F00968();
    v9 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v10 = 136315394;
      v11 = [*(a2 + 16) description];
      v12 = sub_1C4F01138();
      v14 = v13;

      v15 = sub_1C441D828(v12, v14, &v21);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      v16 = v8;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v17 = sub_1C4F01198();
      v19 = sub_1C441D828(v17, v18, &v21);

      *(v10 + 14) = v19;
      _os_log_impl(&dword_1C43F8000, oslog, v9, a3, v10, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }
  }
}