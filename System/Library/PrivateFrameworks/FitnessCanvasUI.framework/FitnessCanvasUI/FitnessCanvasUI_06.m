void sub_1E67F1A50(_DWORD *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v80 = *(a4[5] - 8);
  v5 = *(v80 + 84);
  v6 = *(*(a4[3] - 8) + 80);
  v7 = *(*(a4[3] - 8) + 64);
  v8 = *(sub_1E68B1820() - 8);
  v9 = *(v8 + 80);
  v10 = v7 + v9;
  v79 = v7 + v9 + 1;
  v76 = *(v8 + 84);
  v11 = *(v8 + 64);
  v12 = *(a4[2] - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 64);
  v75 = *(v12 + 84);
  if (v11 <= v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = *(v8 + 64);
  }

  v78 = v15;
  v16 = *(a4[7] - 8);
  v83 = *(v16 + 80);
  v77 = *(v16 + 84);
  v82 = *(v16 + 64);
  v86 = 0;
  v17 = *(sub_1E68B1A10() - 8);
  v18 = *(a4[4] - 8);
  v19 = *(v18 + 84);
  if (v19)
  {
    v20 = v19 - 1;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(a4[6] - 8);
  v74 = v5;
  if (v5 <= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v5;
  }

  v23 = *(v17 + 80);
  v24 = *(v17 + 84);
  v25 = *(v21 + 84);
  v26 = *(v17 + 64);
  v27 = *(*(a4[4] - 8) + 64);
  v28 = *(v80 + 64);
  v29 = *(v18 + 80);
  v73 = v21;
  v30 = *(v21 + 80);
  v31 = *(v21 + 64);
  if (v25)
  {
    v32 = v25 - 1;
  }

  else
  {
    v32 = 0;
  }

  if (v22 <= v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = v22;
  }

  if (v33 <= 0x7FFFFFFF)
  {
    v33 = 0x7FFFFFFF;
  }

  if (v76)
  {
    v34 = v11;
  }

  else
  {
    v34 = v11 + 1;
  }

  v35 = v34 + v9;
  v36 = v34 + v13;
  v37 = v14 + v13 + ((v34 + v13 + ((v34 + v9 + ((v34 + v9 + ((v79 + ((v6 + 248) & ~v6)) & ~v9)) & ~v9)) & ~v9)) & ~v13);
  if (v75)
  {
    v38 = v14;
  }

  else
  {
    v38 = v14 + 1;
  }

  v39 = ((((v34 + (v35 & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v39 <= v78)
  {
    v39 = v78;
  }

  v40 = (v37 & ~v13) + v38;
  if (v39 + 1 > v40)
  {
    v41 = v39 + 1;
  }

  else
  {
    v41 = v40;
  }

  if (v77)
  {
    v42 = v82;
  }

  else
  {
    v42 = v82 + 1;
  }

  if (v42 + ((((v38 + v13 + ((v36 + ((v35 + ((v35 + ((v79 + ((v6 + 224) & ~v6)) & ~v9)) & ~v9)) & ~v9)) & ~v13)) & ~v13) + v38 + v83) & ~v83) > v41)
  {
    v41 = v42 + ((((v38 + v13 + ((v36 + ((v35 + ((v35 + ((v79 + ((v6 + 224) & ~v6)) & ~v9)) & ~v9)) & ~v9)) & ~v13)) & ~v13) + v38 + v83) & ~v83);
  }

  v43 = v38 + ((v36 + ((v35 + ((v9 + 64) & ~v9)) & ~v9)) & ~v13);
  if (v43 <= v41)
  {
    v43 = v41;
  }

  v44 = (v10 & ~v9) + v34;
  v45 = ((v44 + v9) & ~v9) + v34;
  if (((v45 + v9) & ~v9) + v34 > v43)
  {
    v43 = ((v45 + v9) & ~v9) + v34;
  }

  v46 = ((v9 + (v44 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v9) + v34;
  if (v46 > v43)
  {
    v43 = v46;
  }

  if (((v35 + ((v10 + ((v6 + 24) & ~v6)) & ~v9)) & ~v9) + v34 > v43)
  {
    v43 = ((v35 + ((v10 + ((v6 + 24) & ~v6)) & ~v9)) & ~v9) + v34;
  }

  if (v46 <= v43)
  {
    v46 = v43;
  }

  if (((v35 + ((v35 + ((v10 + ((v6 + 104) & ~v6)) & ~v9)) & ~v9)) & ~v9) + v34 > v46)
  {
    v46 = ((v35 + ((v35 + ((v10 + ((v6 + 104) & ~v6)) & ~v9)) & ~v9)) & ~v9) + v34;
  }

  v47 = ((v36 + ((v35 + ((v35 + ((v35 + ((v10 + ((v6 + 160) & ~v6)) & ~v9)) & ~v9)) & ~v9)) & ~v9)) & ~v13) + v38;
  if (v47 <= v46)
  {
    v47 = v46;
  }

  v48 = (v10 + ((v6 + 40) & ~v6)) & ~v9;
  if (((v35 + ((v35 + ((v10 + ((v6 + 56) & ~v6)) & ~v9)) & ~v9)) & ~v9) + v34 > v47)
  {
    v47 = ((v35 + ((v35 + ((v10 + ((v6 + 56) & ~v6)) & ~v9)) & ~v9)) & ~v9) + v34;
  }

  v49 = v24 == 0;
  v50 = v10 + ((v6 + 48) & ~v6);
  v51 = v10 + ((v6 + 128) & ~v6);
  if (v49)
  {
    ++v26;
  }

  v52 = v26 + ((((v35 + ((v35 + v48) & ~v9)) & ~v9) + v34 + v23) & ~v23);
  v53 = v50 & ~v9;
  if (v52 <= v47)
  {
    v52 = v47;
  }

  v54 = v53 + v34;
  if (v54 + 1 > v52)
  {
    v52 = v54 + 1;
  }

  if (((v35 + ((v35 + (v51 & ~v9)) & ~v9)) & ~v9) + v34 > v52)
  {
    v52 = ((v35 + ((v35 + (v51 & ~v9)) & ~v9)) & ~v9) + v34;
  }

  if (v82 > v52)
  {
    v52 = v82;
  }

  if (v45 > v52)
  {
    v52 = v45;
  }

  if (v19)
  {
    v55 = v27;
  }

  else
  {
    v55 = v27 + 1;
  }

  v56 = v6 | v9 | v13 | v83 | v23 | 7;
  v57 = v28 + v56;
  v58 = v52 + 1;
  v59 = (v55 + v30 + ((v52 + 1 + v29 + ((v28 + v56) & ~v56)) & ~v29)) & ~v30;
  if (v25)
  {
    v60 = v31;
  }

  else
  {
    v60 = v31 + 1;
  }

  v61 = v60 + 7;
  v62 = ((v61 + v59) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v33 < a3)
  {
    if (((v61 + v59) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v63 = a3 - v33 + 1;
    }

    else
    {
      v63 = 2;
    }

    if (v63 >= 0x10000)
    {
      v64 = 4;
    }

    else
    {
      v64 = 2;
    }

    if (v63 < 0x100)
    {
      v64 = 1;
    }

    if (v63 >= 2)
    {
      v65 = v64;
    }

    else
    {
      v65 = 0;
    }

    v86 = v65;
  }

  if (a2 > v33)
  {
    if (v62)
    {
      v66 = 1;
    }

    else
    {
      v66 = a2 - v33;
    }

    if (v62)
    {
      v67 = ~v33 + a2;
      bzero(a1, v62);
      *a1 = v67;
    }

    if (v86 > 1)
    {
      if (v86 == 2)
      {
        *(a1 + v62) = v66;
      }

      else
      {
        *(a1 + v62) = v66;
      }
    }

    else if (v86)
    {
      *(a1 + v62) = v66;
    }

    return;
  }

  v68 = a1;
  if (v86 <= 1)
  {
    if (v86)
    {
      *(a1 + v62) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_99;
    }

LABEL_98:
    if (!a2)
    {
      return;
    }

    goto LABEL_99;
  }

  if (v86 == 2)
  {
    *(a1 + v62) = 0;
    goto LABEL_98;
  }

  *(a1 + v62) = 0;
  if (!a2)
  {
    return;
  }

LABEL_99:
  if (v74 == v33)
  {
    v69 = *(v80 + 56);
LABEL_101:

    v69(v68);
    return;
  }

  v70 = (((a1 + v57) & ~v56) + v29 + v58) & ~v29;
  if (v20 != v33)
  {
    v68 = ((v55 + v30 + v70) & ~v30);
    if (v32 != v33)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v72 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v72 = a2 - 1;
      }

      *((v68 + v61) & 0xFFFFFFFFFFFFFFF8) = v72;
      return;
    }

    v69 = *(v73 + 56);
    goto LABEL_101;
  }

  v71 = *(v18 + 56);

  v71(v70, a2 + 1);
}

uint64_t sub_1E67F22B0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v23 = a1[5];
  *(a9 + 4) = a1[4];
  *(a9 + 5) = v23;
  v24 = a1[7];
  *(a9 + 6) = a1[6];
  *(a9 + 7) = v24;
  v25 = a1[1];
  *a9 = *a1;
  *(a9 + 1) = v25;
  v26 = a1[3];
  *(a9 + 2) = a1[2];
  *(a9 + 3) = v26;
  v27 = type metadata accessor for VerticalStackCardView();
  (*(*(a17 - 8) + 32))(&a9[v27[9]], a2, a17);
  v28 = &a9[v27[10]];
  *v28 = a3;
  *(v28 + 1) = a4;
  *(v28 + 2) = a5;
  *(v28 + 3) = a6;
  v29 = &a9[v27[11]];
  *v29 = a7;
  *(v29 + 1) = a8;
  *(v29 + 2) = a10;
  *(v29 + 3) = a11;
  v30 = &a9[v27[12]];
  *v30 = a12;
  *(v30 + 2) = a13;
  *(v30 + 3) = a14;
  v31 = &a9[v27[13]];
  result = swift_allocObject();
  *(result + 16) = a15;
  *(result + 24) = a16;
  *v31 = sub_1E673F5E0;
  v31[1] = result;
  return result;
}

__n128 VerticalStackCardLayout.contentInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 VerticalStackCardLayout.contentBackgroundColor.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 72);
  v3 = *(v1 + 88);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 VerticalStackCardLayout.init(artworkAspectRatio:titleLineLimit:subtitleLineLimit:captionLineLimit:subtitleFromTitle:detailFromSubtitle:contentInsets:contentBackgroundColor:contentCornerRadius:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>)
{
  *a6 = a7;
  *(a6 + 8) = a8;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  v11 = a4[1];
  *(a6 + 40) = *a4;
  *(a6 + 56) = v11;
  result = *a5;
  v13 = *(a5 + 16);
  *(a6 + 72) = *a5;
  *(a6 + 88) = v13;
  *(a6 + 104) = a11;
  *(a6 + 112) = a9;
  *(a6 + 120) = a10;
  return result;
}

unint64_t sub_1E67F24A8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E694C656C746974;
    v6 = 0xD000000000000010;
    if (a1 == 2)
    {
      v6 = 0xD000000000000011;
    }

    if (!a1)
    {
      v5 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    if (a1 == 7)
    {
      v2 = 0xD000000000000011;
    }

    else
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000016;
    if (a1 == 4)
    {
      v3 = 0x49746E65746E6F63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1E67F25EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E67F553C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E67F2620(uint64_t a1)
{
  v2 = sub_1E67F4AB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F265C(uint64_t a1)
{
  v2 = sub_1E67F4AB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E67F269C@<D0>(uint64_t a1@<X8>)
{
  sub_1E68B1A30();
  *a1 = xmmword_1E68BC150;
  *(a1 + 16) = vdupq_n_s64(2uLL);
  *(a1 + 32) = 2;
  *(a1 + 40) = xmmword_1E68BC160;
  *(a1 + 56) = xmmword_1E68BC170;
  *(a1 + 72) = xmmword_1E68BC180;
  *(a1 + 88) = xmmword_1E68BC190;
  *(a1 + 104) = v2;
  result = 4.0;
  *(a1 + 112) = xmmword_1E68BC1A0;
  return result;
}

__n128 static VerticalStackCardLayout.tv.getter@<Q0>(uint64_t a1@<X8>)
{
  sub_1E68B1A60();
  *a1 = xmmword_1E68BC1B0;
  *(a1 + 16) = vdupq_n_s64(2uLL);
  *(a1 + 32) = 2;
  *(a1 + 40) = xmmword_1E68BC1C0;
  *(a1 + 56) = xmmword_1E68BC1C0;
  *(a1 + 72) = xmmword_1E68BC180;
  *(a1 + 88) = xmmword_1E68BC190;
  *(a1 + 104) = v2;
  __asm { FMOV            V0.2D, #8.0 }

  *(a1 + 112) = result;
  return result;
}

uint64_t VerticalStackCardLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0984C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = *v1;
  v9 = v1[1];
  v24 = v1[2];
  v10 = *(v1 + 5);
  v22 = *(v1 + 7);
  v23 = v10;
  v11 = *(v1 + 9);
  v20 = *(v1 + 11);
  v21 = v11;
  v13 = v1[13];
  v12 = v1[14];
  v14 = v1[15];
  v15 = a1[3];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_1E67F4AB4();
  sub_1E68B3BD0();
  *&v25 = v8;
  *(&v25 + 1) = v9;
  v27 = 0;
  type metadata accessor for CGSize(0);
  sub_1E67F53A4(&qword_1EE2EA448, type metadata accessor for CGSize);
  sub_1E68B3AB0();
  if (!v2)
  {
    LOBYTE(v25) = 1;
    sub_1E68B3AA0();
    LOBYTE(v25) = 2;
    sub_1E68B3AA0();
    LOBYTE(v25) = 3;
    sub_1E68B3AA0();
    v26 = v22;
    v25 = v23;
    v27 = 4;
    sub_1E67F4B08();
    sub_1E68B3AB0();
    v26 = v20;
    v25 = v21;
    v27 = 5;
    sub_1E67F4B5C();
    sub_1E68B3AB0();
    *&v25 = v13;
    v27 = 6;
    sub_1E67621E8();
    sub_1E68B3AB0();
    *&v25 = v12;
    v27 = 7;
    sub_1E68B3AB0();
    *&v25 = v14;
    v27 = 8;
    sub_1E68B3AB0();
  }

  return (*(v5 + 8))(v7, v18);
}

uint64_t VerticalStackCardLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0984E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67F4AB4();
  sub_1E68B3BC0();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    v26 = 0;
    sub_1E67F53A4(&qword_1ED096DC0, type metadata accessor for CGSize);
    sub_1E68B3A00();
    v9 = v24;
    LOBYTE(v24) = 1;
    v10 = sub_1E68B39F0();
    LOBYTE(v24) = 2;
    v11 = sub_1E68B39F0();
    LOBYTE(v24) = 3;
    v23 = sub_1E68B39F0();
    v26 = 4;
    sub_1E67F4BB0();
    sub_1E68B3A00();
    v21 = v24;
    v22 = v25;
    v26 = 5;
    sub_1E67F4C04();
    sub_1E68B3A00();
    v18 = v24;
    v19 = v25;
    v26 = 6;
    v20 = sub_1E6762A60();
    sub_1E68B3A00();
    v12 = v24;
    v26 = 7;
    sub_1E68B3A00();
    v14 = v24;
    v26 = 8;
    sub_1E68B3A00();
    (*(v6 + 8))(v8, v5);
    v15 = v24;
    *a2 = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v23;
    v16 = v22;
    *(a2 + 40) = v21;
    *(a2 + 56) = v16;
    v17 = v19;
    *(a2 + 72) = v18;
    *(a2 + 88) = v17;
    *(a2 + 104) = v12;
    *(a2 + 112) = v14;
    *(a2 + 120) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t VerticalStackCardLayout.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v23 = *(v0 + 96);
  v24 = *(v0 + 104);
  v25 = *(v0 + 112);
  v26 = *(v0 + 120);
  sub_1E673E7F4(*v0, *(v0 + 8));
  MEMORY[0x1E69523D0](v1);
  MEMORY[0x1E69523D0](v2);
  MEMORY[0x1E69523D0](v3);
  if (v5 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v5;
  }

  MEMORY[0x1E69523F0](*&v11);
  if (v4 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v4;
  }

  MEMORY[0x1E69523F0](*&v12);
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x1E69523F0](*&v13);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x1E69523F0](*&v14);
  if (v8 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v8;
  }

  MEMORY[0x1E69523F0](*&v15);
  if (v9 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v9;
  }

  MEMORY[0x1E69523F0](*&v16);
  if (v10 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v10;
  }

  MEMORY[0x1E69523F0](*&v17);
  v18 = v23;
  if (v23 == 0.0)
  {
    v18 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v18);
  v19 = v24;
  if (v24 == 0.0)
  {
    v19 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v19);
  v20 = v25;
  if (v25 == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v20);
  v21 = v26;
  if (v26 == 0.0)
  {
    v21 = 0.0;
  }

  return MEMORY[0x1E69523F0](*&v21);
}

uint64_t VerticalStackCardLayout.hashValue.getter()
{
  sub_1E68B3B70();
  VerticalStackCardLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E67F30E4()
{
  sub_1E68B3B70();
  VerticalStackCardLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E67F3128()
{
  sub_1E68B3B70();
  VerticalStackCardLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E67F3168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v78 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E68B1EB0();
  v60 = v4;
  v77 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 - 8);
  v73 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098518);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098520);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098528);
  v11 = sub_1E68B1E40();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1E673F530(&qword_1ED098530, &qword_1ED098528);
  v92 = WitnessTable;
  v93 = v13;
  v75 = MEMORY[0x1E697E858];
  v68 = v11;
  v67 = swift_getWitnessTable();
  v14 = sub_1E68B2C30();
  v69 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v57 - v15;
  v16 = swift_getWitnessTable();
  v59 = v16;
  v58 = sub_1E67F53A4(&qword_1EE2EA680, MEMORY[0x1E697C248]);
  v88 = v14;
  v89 = v4;
  v90 = v16;
  v91 = v58;
  v65 = MEMORY[0x1E697CDB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v66 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v18 = &v57 - v17;
  v64 = sub_1E68B1E40();
  v71 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v57 = &v57 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v20 = sub_1E68B1E40();
  v72 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v63 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v70 = &v57 - v24;
  v25 = v6;
  v26 = *(v6 + 16);
  v27 = v74;
  v28 = a1;
  v26(v9, v74, a1, v23);
  v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v30 = swift_allocObject();
  v31 = v28;
  v32 = *(v28 + 24);
  *(v30 + 16) = v10;
  *(v30 + 24) = v32;
  (*(v25 + 32))(v30 + v29, v9, v31);
  v81 = v10;
  v82 = v32;
  v83 = v27;
  v33 = v27;
  v34 = v62;
  sub_1E68B2C20();
  v35 = v76;
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  v36 = v60;
  v37 = v59;
  v38 = v58;
  sub_1E68B2790();
  v39 = v36;
  (*(v77 + 8))(v35, v36);
  (*(v69 + 8))(v34, v14);
  v40 = v33;
  v88 = v14;
  v89 = v39;
  v90 = v37;
  v91 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v57;
  v43 = OpaqueTypeMetadata2;
  sub_1E68B2780();
  (*(v66 + 8))(v18, v43);
  v44 = *(v40 + 104);
  v45 = *(v78 + 20);
  v46 = *MEMORY[0x1E697F468];
  v47 = sub_1E68B2160();
  v48 = v79;
  (*(*(v47 - 8) + 104))(&v79[v45], v46, v47);
  *v48 = v44;
  v48[1] = v44;
  v86 = OpaqueTypeConformance2;
  v87 = MEMORY[0x1E697F568];
  v49 = v64;
  v50 = swift_getWitnessTable();
  sub_1E67F53A4(&qword_1EE2EA660, MEMORY[0x1E697EAF0]);
  v51 = v63;
  sub_1E68B2AE0();
  sub_1E6768D04(v48);
  (*(v71 + 8))(v42, v49);
  v52 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v84 = v50;
  v85 = v52;
  v53 = swift_getWitnessTable();
  v54 = v70;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v51, v20, v53);
  v55 = *(v72 + 8);
  v55(v51, v20);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v54, v20, v53);
  return (v55)(v54, v20);
}

uint64_t sub_1E67F3AF0(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for VerticalStackCardView() + 52);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  sub_1E677A174(v2);
}

uint64_t sub_1E67F3B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a3;
  v27 = a2;
  v31 = a4;
  v30 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098518);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098520);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v7 = sub_1E68B2CE0();
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098528);
  v10 = sub_1E68B1E40();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  sub_1E68B2E30();
  v32 = v27;
  v33 = v29;
  v34 = a1;
  sub_1E68B2CD0();
  v17 = *(a1 + 104);
  v18 = *(v30 + 20);
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_1E68B2160();
  (*(*(v20 - 8) + 104))(&v6[v18], v19, v20);
  *v6 = v17;
  *(v6 + 1) = v17;
  WitnessTable = swift_getWitnessTable();
  sub_1E67F53A4(&qword_1EE2EA660, MEMORY[0x1E697EAF0]);
  sub_1E68B2800();
  sub_1E6768D04(v6);
  (*(v28 + 8))(v9, v7);
  v22 = sub_1E673F530(&qword_1ED098530, &qword_1ED098528);
  v35 = WitnessTable;
  v36 = v22;
  v23 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v13, v10, v23);
  v24 = *(v11 + 8);
  v24(v13, v10);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v16, v10, v23);
  return (v24)(v16, v10);
}

uint64_t sub_1E67F3FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098538);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098540);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v40 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098520);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v40 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098518);
  v16 = sub_1E68B1E40();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v42 = &v40 - v21;
  type metadata accessor for VerticalStackCardView();
  sub_1E68B2A30();
  v22 = sub_1E673F530(&qword_1ED098548, &qword_1ED098518);
  v54[2] = a2;
  v54[3] = v22;
  WitnessTable = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v19, v16, WitnessTable);
  v44 = *(v17 + 8);
  v44(v19, v16);
  *v7 = sub_1E68B21D0();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098550);
  sub_1E67F452C(a1, &v7[*(v23 + 44)]);
  sub_1E68B2E90();
  sub_1E68B1F30();
  v24 = v46;
  sub_1E6761420(v7, v46, &qword_1ED098538);
  v25 = (v24 + *(v9 + 44));
  v26 = v60;
  v25[4] = v59;
  v25[5] = v26;
  v25[6] = v61;
  v27 = v56;
  *v25 = v55;
  v25[1] = v27;
  v28 = v58;
  v25[2] = v57;
  v25[3] = v28;
  v41 = *(a1 + 56);
  v40 = *(a1 + 40);
  LOBYTE(v9) = sub_1E68B2500();
  v29 = v45;
  sub_1E6761420(v24, v45, &qword_1ED098540);
  v30 = v48;
  v31 = v29 + *(v48 + 36);
  *(&v32 + 1) = *(&v40 + 1);
  *&v33 = v40;
  v34 = *(&v41 + 1);
  *&v32 = v41;
  *v31 = v9;
  *(&v33 + 1) = v34;
  *(v31 + 24) = v33;
  *(v31 + 8) = v32;
  *(v31 + 40) = 0;
  v35 = v47;
  sub_1E6761420(v29, v47, &qword_1ED098520);
  v36 = v42;
  (*(v17 + 16))(v19, v42, v16);
  v54[0] = v19;
  v37 = v49;
  sub_1E67612FC(v35, v49, &qword_1ED098520);
  v54[1] = v37;
  v53[0] = v16;
  v53[1] = v30;
  v51 = WitnessTable;
  v52 = sub_1E67F53F8();
  sub_1E6848F14(v54, 2uLL, v53);
  sub_1E6744A10(v35, &qword_1ED098520);
  v38 = v44;
  v44(v36, v16);
  sub_1E6744A10(v37, &qword_1ED098520);
  return v38(v19, v16);
}

uint64_t sub_1E67F452C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_1E68B21B0();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098570);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v44 - v9;
  v55 = type metadata accessor for VerticalStackCardView();
  v10 = (a1 + *(v55 + 40));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = a1[2];
  KeyPath = swift_getKeyPath();
  v61 = v11;
  v62 = v12;
  v63 = v13;
  v64 = v14;
  v65 = KeyPath;
  v66 = v15;
  v67 = 0;
  sub_1E673F228(v11, v12, v13, v14);
  sub_1E68B21A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0981D0);
  sub_1E67C6144();
  sub_1E68B2950();
  (*(v56 + 8))(v5, v57);
  sub_1E67C5AEC(v11, v12, v13, v14);

  sub_1E68B2E80();
  sub_1E68B1C50();
  v56 = v63;
  v57 = v61;
  v53 = v66;
  v54 = v65;
  v70 = 1;
  v69 = v62;
  v68 = v64;
  v17 = v55;
  v18 = (a1 + *(v55 + 48));
  v19 = *v18;
  v50 = v18[1];
  v51 = v19;
  v21 = v18[2];
  v20 = v18[3];
  v49 = v21;
  v48 = v20;
  v52 = a1[4];
  v46 = swift_getKeyPath();
  v47 = a1[15];
  v22 = (a1 + *(v17 + 44));
  v23 = *v22;
  v24 = v22[1];
  v26 = v22[2];
  v25 = v22[3];
  v55 = a1[3];
  v45 = swift_getKeyPath();
  v27 = v59;
  sub_1E67612FC(v60, v59, &qword_1ED098570);
  LOBYTE(v17) = v70;
  LOBYTE(a1) = v69;
  v28 = v68;
  v29 = v27;
  v30 = v58;
  sub_1E67612FC(v29, v58, &qword_1ED098570);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098578);
  v32 = v30 + v31[12];
  *v32 = 0;
  *(v32 + 8) = v17;
  v33 = v56;
  *(v32 + 16) = v57;
  *(v32 + 24) = a1;
  *(v32 + 32) = v33;
  *(v32 + 40) = v28;
  v34 = v53;
  *(v32 + 48) = v54;
  *(v32 + 56) = v34;
  v35 = v30 + v31[16];
  v37 = v50;
  v36 = v51;
  *v35 = v51;
  *(v35 + 8) = v37;
  LOBYTE(a1) = v49;
  v38 = v48;
  *(v35 + 16) = v49;
  *(v35 + 24) = v38;
  v39 = v52;
  *(v35 + 32) = v46;
  *(v35 + 40) = v39;
  *(v35 + 48) = 0;
  v40 = v30 + v31[20];
  *v40 = v47;
  *(v40 + 8) = 0;
  v41 = v30 + v31[24];
  *v41 = v23;
  *(v41 + 8) = v24;
  *(v41 + 16) = v26;
  *(v41 + 24) = v25;
  v42 = v55;
  *(v41 + 32) = v45;
  *(v41 + 40) = v42;
  *(v41 + 48) = 0;
  sub_1E673F228(v36, v37, a1, v38);
  sub_1E673F228(v23, v24, v26, v25);
  sub_1E673F228(v36, v37, a1, v38);

  sub_1E673F228(v23, v24, v26, v25);

  sub_1E6744A10(v60, &qword_1ED098570);
  sub_1E67C5AEC(v23, v24, v26, v25);

  sub_1E67C5AEC(v36, v37, a1, v38);

  return sub_1E6744A10(v59, &qword_1ED098570);
}

BOOL _s15FitnessCanvasUI23VerticalStackCardLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 40), *(a2 + 40))), vuzp1q_s32(vceqq_f64(*(a1 + 56), *(a2 + 56)), vceqq_f64(*(a1 + 72), *(a2 + 72)))))) & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 88), *(a2 + 88)), vceqq_f64(*(a1 + 104), *(a2 + 104))), xmmword_1E68BC1D0)) & 0xF) == 0 && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return *(a1 + 120) == *(a2 + 120);
  }

  return result;
}

unint64_t sub_1E67F4AB4()
{
  result = qword_1ED0984D0;
  if (!qword_1ED0984D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0984D0);
  }

  return result;
}

unint64_t sub_1E67F4B08()
{
  result = qword_1EE2EC0D0;
  if (!qword_1EE2EC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC0D0);
  }

  return result;
}

unint64_t sub_1E67F4B5C()
{
  result = qword_1ED0984D8;
  if (!qword_1ED0984D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0984D8);
  }

  return result;
}

unint64_t sub_1E67F4BB0()
{
  result = qword_1ED0984E8;
  if (!qword_1ED0984E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0984E8);
  }

  return result;
}

unint64_t sub_1E67F4C04()
{
  result = qword_1ED0984F0;
  if (!qword_1ED0984F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0984F0);
  }

  return result;
}

unint64_t sub_1E67F4C5C()
{
  result = qword_1ED0984F8;
  if (!qword_1ED0984F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0984F8);
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

uint64_t sub_1E67F4CD4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E67F4CF4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

void sub_1E67F4D60()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1E673ED38();
    if (v1 <= 0x3F)
    {
      sub_1E673ED88();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E67F4E18(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((((v8 + ((v6 + 128) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 128) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((((((((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_1E67F4FA0(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((((((((v9 + ((v8 + 128) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((((((v9 + ((v8 + 128) & ~v8)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 128] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (((((((&result[v9] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((((((v9 + ((v8 + 128) & ~v8)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((((v9 + ((v8 + 128) & ~v8)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((((((v9 + ((v8 + 128) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

unint64_t sub_1E67F51CC()
{
  result = qword_1ED098500;
  if (!qword_1ED098500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098500);
  }

  return result;
}

unint64_t sub_1E67F5224()
{
  result = qword_1ED098508;
  if (!qword_1ED098508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098508);
  }

  return result;
}

unint64_t sub_1E67F527C()
{
  result = qword_1ED098510;
  if (!qword_1ED098510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098510);
  }

  return result;
}

uint64_t sub_1E67F5314()
{
  v1 = *(type metadata accessor for VerticalStackCardView() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1E67F3AF0(v2);
}

uint64_t sub_1E67F53A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E67F53F8()
{
  result = qword_1ED098558;
  if (!qword_1ED098558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098520);
    sub_1E67F5484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098558);
  }

  return result;
}

unint64_t sub_1E67F5484()
{
  result = qword_1ED098560;
  if (!qword_1ED098560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098540);
    sub_1E673F530(&qword_1ED098568, &qword_1ED098538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098560);
  }

  return result;
}

uint64_t sub_1E67F553C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001E68E2580 == a2;
  if (v3 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E694C656C746974 && a2 == 0xEE0074696D694C65 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E68E2BA0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2BC0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x49746E65746E6F63 && a2 == 0xED0000737465736ELL || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E68E2BE0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E68E2C00 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E68E2C20 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E68E2C40 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t View.artworkClipShape(_:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = a1;
  v5 = a2 & 1;
  return MEMORY[0x1E69512E0](&v4, a3, &type metadata for ArtworkClipShapeModifier);
}

uint64_t storeEnumTagSinglePayload for ArtworkClipShapeModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1E67F58C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098580);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098588);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098590);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v27 - v15;
  if (a3)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098598);
    (*(*(v17 - 8) + 16))(v10, a1, v17);
    *&v10[*(v8 + 36)] = 256;
    sub_1E67612FC(v10, v13, &qword_1ED098580);
    swift_storeEnumTagMultiPayload();
    sub_1E67F5C20();
    sub_1E67F5D04();
    sub_1E68B2210();
    v18 = v10;
    v19 = &qword_1ED098580;
  }

  else
  {
    v20 = &v16[*(v14 + 36)];
    v21 = sub_1E68B1F00();
    v27[1] = a4;
    v22 = *(v21 + 20);
    v23 = *MEMORY[0x1E697F468];
    v24 = sub_1E68B2160();
    (*(*(v24 - 8) + 104))(&v20[v22], v23, v24);
    *v20 = a2;
    *(v20 + 1) = a2;
    *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0971E0) + 36)] = 256;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098598);
    (*(*(v25 - 8) + 16))(v16, a1, v25);
    sub_1E67612FC(v16, v13, &qword_1ED098590);
    swift_storeEnumTagMultiPayload();
    sub_1E67F5C20();
    sub_1E67F5D04();
    sub_1E68B2210();
    v18 = v16;
    v19 = &qword_1ED098590;
  }

  return sub_1E6744A10(v18, v19);
}

unint64_t sub_1E67F5C20()
{
  result = qword_1EE2EA820;
  if (!qword_1EE2EA820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098590);
    sub_1E673F530(&qword_1EE2EA5F0, &qword_1ED098598);
    sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA820);
  }

  return result;
}

unint64_t sub_1E67F5D04()
{
  result = qword_1EE2EA818;
  if (!qword_1EE2EA818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098580);
    sub_1E673F530(&qword_1EE2EA5F0, &qword_1ED098598);
    sub_1E673F530(&qword_1EE2EA870, &qword_1ED096DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA818);
  }

  return result;
}

unint64_t sub_1E67F5DE8()
{
  result = qword_1EE2EA630;
  if (!qword_1EE2EA630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0985A0);
    sub_1E67F5C20();
    sub_1E67F5D04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA630);
  }

  return result;
}

uint64_t sub_1E67F5E9C(uint64_t a1)
{
  v2 = sub_1E67F6164();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F5ED8(uint64_t a1)
{
  v2 = sub_1E67F6164();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67F5F14(uint64_t a1)
{
  v2 = sub_1E67F61B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F5F50(uint64_t a1)
{
  v2 = sub_1E67F61B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NullActionButtonDescriptor.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0985A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0985B0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67F6164();
  sub_1E68B3BD0();
  sub_1E67F61B8();
  sub_1E68B3A30();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1E67F6164()
{
  result = qword_1ED0985B8;
  if (!qword_1ED0985B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0985B8);
  }

  return result;
}

unint64_t sub_1E67F61B8()
{
  result = qword_1ED0985C0;
  if (!qword_1ED0985C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0985C0);
  }

  return result;
}

uint64_t NullActionButtonDescriptor.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0985C8);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0985D0);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67F6164();
  sub_1E68B3BC0();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_1E68B3A10();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_1E676F5BC() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_1E68B3870();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
    *v16 = &type metadata for NullActionButtonDescriptor;
    sub_1E68B3980();
    sub_1E68B3860();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_1E67F61B8();
  sub_1E68B3970();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1E67F6570(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0985A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0985B0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67F6164();
  sub_1E68B3BD0();
  sub_1E67F61B8();
  sub_1E68B3A30();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1E67F6754(uint64_t a1)
{
  v2 = sub_1E67F6B08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F6790(uint64_t a1)
{
  v2 = sub_1E67F6B08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67F67E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B6E616C62 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E68B3B00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E67F6864(uint64_t a1)
{
  v2 = sub_1E67F6AB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F68A0(uint64_t a1)
{
  v2 = sub_1E67F6AB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NullArtwork.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0985D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0985E0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67F6AB4();
  sub_1E68B3BD0();
  sub_1E67F6B08();
  sub_1E68B3A30();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1E67F6AB4()
{
  result = qword_1ED0985E8;
  if (!qword_1ED0985E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0985E8);
  }

  return result;
}

unint64_t sub_1E67F6B08()
{
  result = qword_1ED0985F0;
  if (!qword_1ED0985F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0985F0);
  }

  return result;
}

uint64_t NullArtwork.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0985F8);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098600);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67F6AB4();
  sub_1E68B3BC0();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_1E68B3A10();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_1E676F5BC() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_1E68B3870();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
    *v16 = &type metadata for NullArtwork;
    sub_1E68B3980();
    sub_1E68B3860();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_1E67F6B08();
  sub_1E68B3970();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1E67F6EEC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0985D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0985E0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67F6AB4();
  sub_1E68B3BD0();
  sub_1E67F6B08();
  sub_1E68B3A30();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1E67F70CC(uint64_t a1)
{
  v2 = sub_1E67F7394();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F7108(uint64_t a1)
{
  v2 = sub_1E67F7394();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67F7144(uint64_t a1)
{
  v2 = sub_1E67F73E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F7180(uint64_t a1)
{
  v2 = sub_1E67F73E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NullContextMenu.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098608);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098610);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67F7394();
  sub_1E68B3BD0();
  sub_1E67F73E8();
  sub_1E68B3A30();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1E67F7394()
{
  result = qword_1ED098618;
  if (!qword_1ED098618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098618);
  }

  return result;
}

unint64_t sub_1E67F73E8()
{
  result = qword_1ED098620;
  if (!qword_1ED098620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098620);
  }

  return result;
}

uint64_t NullContextMenu.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098628);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098630);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67F7394();
  sub_1E68B3BC0();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_1E68B3A10();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_1E676F5BC() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_1E68B3870();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
    *v16 = &type metadata for NullContextMenu;
    sub_1E68B3980();
    sub_1E68B3860();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_1E67F73E8();
  sub_1E68B3970();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1E67F77A0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098608);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098610);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67F7394();
  sub_1E68B3BD0();
  sub_1E67F73E8();
  sub_1E68B3A30();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t NullItemMetrics.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NullItemMetrics.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NullItemMetrics.identifierType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NullItemMetrics.identifierType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NullItemMetrics.impressionType.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NullItemMetrics.impressionType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t NullItemMetrics.name.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t NullItemMetrics.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t NullItemMetrics.contentType.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t NullItemMetrics.contentType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t NullItemMetrics.entitlementRequired.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t NullItemMetrics.entitlementRequired.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_1E67F7CAC()
{
  v1 = 0x696669746E656469;
  v2 = *v0;
  v3 = 1701667182;
  v4 = 0x54746E65746E6F63;
  if (v2 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6973736572706D69;
  if (v2 == 1)
  {
    v5 = 0x696669746E656469;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E67F7D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E67FC78C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E67F7DB0(uint64_t a1)
{
  v2 = sub_1E67FA464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F7DEC(uint64_t a1)
{
  v2 = sub_1E67FA464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NullItemMetrics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098638);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  v7 = v1[2];
  v14[9] = v1[3];
  v14[10] = v7;
  v8 = v1[4];
  v14[7] = v1[5];
  v14[8] = v8;
  v9 = v1[6];
  v14[5] = v1[7];
  v14[6] = v9;
  v10 = v1[8];
  v14[3] = v1[9];
  v14[4] = v10;
  v11 = v1[11];
  v14[1] = v1[10];
  v14[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67FA464();
  sub_1E68B3BD0();
  v20 = 0;
  v12 = v14[11];
  sub_1E68B3A70();
  if (v12)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v19 = 1;
  sub_1E68B3A70();
  v18 = 2;
  sub_1E68B3A70();
  v17 = 3;
  sub_1E68B3A40();
  v16 = 4;
  sub_1E68B3A70();
  v15 = 5;
  sub_1E68B3A70();
  return (*(v4 + 8))(v6, v3);
}

uint64_t NullItemMetrics.hash(into:)()
{
  v1 = *(v0 + 56);
  sub_1E68B31F0();
  sub_1E68B31F0();
  sub_1E68B31F0();
  sub_1E68B3B90();
  if (v1)
  {
    sub_1E68B31F0();
  }

  sub_1E68B31F0();

  return sub_1E68B31F0();
}

uint64_t NullItemMetrics.hashValue.getter()
{
  v1 = *(v0 + 56);
  sub_1E68B3B70();
  sub_1E68B31F0();
  sub_1E68B31F0();
  sub_1E68B31F0();
  sub_1E68B3B90();
  if (v1)
  {
    sub_1E68B31F0();
  }

  sub_1E68B31F0();
  sub_1E68B31F0();
  return sub_1E68B3BB0();
}

uint64_t NullItemMetrics.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098648);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67FA464();
  sub_1E68B3BC0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v44[0]) = 0;
    v9 = sub_1E68B39C0();
    v11 = v10;
    LOBYTE(v44[0]) = 1;
    v35 = sub_1E68B39C0();
    v37 = v12;
    LOBYTE(v44[0]) = 2;
    v13 = sub_1E68B39C0();
    v36 = v14;
    v33 = v13;
    LOBYTE(v44[0]) = 3;
    v34 = 0;
    *&v32 = sub_1E68B3990();
    *(&v32 + 1) = v15;
    v31 = a2;
    LOBYTE(v44[0]) = 4;
    v16 = sub_1E68B39C0();
    v18 = v17;
    v30 = v16;
    v50 = 5;
    v19 = sub_1E68B39C0();
    v20 = v8;
    v22 = v21;
    (*(v6 + 8))(v20, v5);
    *&v38 = v9;
    *(&v38 + 1) = v11;
    *&v39 = v35;
    v23 = v37;
    *(&v39 + 1) = v37;
    *&v40 = v33;
    v24 = v36;
    *(&v40 + 1) = v36;
    v41 = v32;
    *&v42 = v30;
    *(&v42 + 1) = v18;
    *&v43 = v19;
    *(&v43 + 1) = v22;
    v25 = v32;
    v26 = v31;
    v31[2] = v40;
    v26[3] = v25;
    v27 = v43;
    v26[4] = v42;
    v26[5] = v27;
    v28 = v39;
    *v26 = v38;
    v26[1] = v28;
    sub_1E67FA4B8(&v38, v44);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v44[0] = v9;
    v44[1] = v11;
    v44[2] = v35;
    v44[3] = v23;
    v44[4] = v33;
    v44[5] = v24;
    v45 = v32;
    v46 = v30;
    v47 = v18;
    v48 = v19;
    v49 = v22;
    return sub_1E67FA4F0(v44);
  }
}

uint64_t sub_1E67F86D4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1E67F8704()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1E67F8734()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1E67F8764()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1E67F8794()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1E67F87C4()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_1E67F8828()
{
  v1 = *(v0 + 56);
  sub_1E68B31F0();
  sub_1E68B31F0();
  sub_1E68B31F0();
  sub_1E68B3B90();
  if (v1)
  {
    sub_1E68B31F0();
  }

  sub_1E68B31F0();

  return sub_1E68B31F0();
}

uint64_t sub_1E67F890C()
{
  v1 = *(v0 + 56);
  sub_1E68B3B70();
  sub_1E68B31F0();
  sub_1E68B31F0();
  sub_1E68B31F0();
  sub_1E68B3B90();
  if (v1)
  {
    sub_1E68B31F0();
  }

  sub_1E68B31F0();
  sub_1E68B31F0();
  return sub_1E68B3BB0();
}

uint64_t sub_1E67F8A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E68B3B00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E67F8A90(uint64_t a1)
{
  v2 = sub_1E67FA520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F8ACC(uint64_t a1)
{
  v2 = sub_1E67FA520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67F8B08(uint64_t a1)
{
  v2 = sub_1E67FA574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F8B44(uint64_t a1)
{
  v2 = sub_1E67FA574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NullViewDescriptor.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098650);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098658);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67FA520();
  sub_1E68B3BD0();
  sub_1E67FA574();
  sub_1E68B3A30();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t NullViewDescriptor.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098670);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098678);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67FA520();
  sub_1E68B3BC0();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_1E68B3A10();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_1E676F5BC() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_1E68B3870();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
    *v16 = &type metadata for NullViewDescriptor;
    sub_1E68B3980();
    sub_1E68B3860();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_1E67FA574();
  sub_1E68B3970();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1E67F90BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098650);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098658);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67FA520();
  sub_1E68B3BD0();
  sub_1E67FA574();
  sub_1E68B3A30();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1E67F92B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E68B3B00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E67F933C(uint64_t a1)
{
  v2 = sub_1E67FA5C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F9378(uint64_t a1)
{
  v2 = sub_1E67FA5C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67F93B4(uint64_t a1)
{
  v2 = sub_1E67FA61C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F93F0(uint64_t a1)
{
  v2 = sub_1E67FA61C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NullSectionDensity.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098680);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098688);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67FA5C8();
  sub_1E68B3BD0();
  sub_1E67FA61C();
  sub_1E68B3A30();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t NullSectionDensity.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0986A0);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0986A8);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67FA5C8();
  sub_1E68B3BC0();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_1E68B3A10();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_1E676F5BC() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_1E68B3870();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
    *v16 = &type metadata for NullSectionDensity;
    sub_1E68B3980();
    sub_1E68B3860();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_1E67FA61C();
  sub_1E68B3970();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1E67F9968(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098680);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098688);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67FA5C8();
  sub_1E68B3BD0();
  sub_1E67FA61C();
  sub_1E68B3A30();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1E67F9B88(uint64_t a1)
{
  v2 = sub_1E67FA99C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F9BC4(uint64_t a1)
{
  v2 = sub_1E67FA99C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67F9CC8(uint64_t a1)
{
  v2 = sub_1E67FA9F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F9D04(uint64_t a1)
{
  v2 = sub_1E67FA9F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67F9E0C(uint64_t a1)
{
  v2 = sub_1E67FAA44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F9E48(uint64_t a1)
{
  v2 = sub_1E67FAA44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67F9EC8(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1E68B3BD0();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1E67FA090(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1E68B3BD0();
  return (*(v9 + 8))(v11, v8);
}

uint64_t NullViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0986E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1E67FA22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0986E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t _s15FitnessCanvasUI15NullItemMetricsV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v22 = a1[8];
  v21 = a1[9];
  v15 = a1[11];
  v16 = a1[10];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[7];
  v17 = a2[6];
  v18 = a1[6];
  v19 = a2[9];
  v20 = a2[8];
  v13 = a2[11];
  v14 = a2[10];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E68B3B00() & 1) == 0 || (v2 != v8 || v4 != v7) && (sub_1E68B3B00() & 1) == 0 || (v3 != v10 || v5 != v9) && (sub_1E68B3B00() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v18 != v17 || v6 != v11) && (sub_1E68B3B00() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if ((v22 != v20 || v21 != v19) && (sub_1E68B3B00() & 1) == 0)
  {
    return 0;
  }

  if (v16 == v14 && v15 == v13)
  {
    return 1;
  }

  return sub_1E68B3B00();
}

unint64_t sub_1E67FA464()
{
  result = qword_1ED098640;
  if (!qword_1ED098640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098640);
  }

  return result;
}

unint64_t sub_1E67FA520()
{
  result = qword_1ED098660;
  if (!qword_1ED098660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098660);
  }

  return result;
}

unint64_t sub_1E67FA574()
{
  result = qword_1ED098668;
  if (!qword_1ED098668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098668);
  }

  return result;
}

unint64_t sub_1E67FA5C8()
{
  result = qword_1ED098690;
  if (!qword_1ED098690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098690);
  }

  return result;
}

unint64_t sub_1E67FA61C()
{
  result = qword_1ED098698;
  if (!qword_1ED098698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098698);
  }

  return result;
}

unint64_t sub_1E67FA670(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098930);
    v3 = sub_1E68B3940();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 24);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_1E680B808(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v11 = (v3[7] + 24 * result);
      *v11 = v6;
      v11[1] = v7;
      v11[2] = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1E67FA778(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098920);
    v3 = sub_1E68B3940();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E67FC9A4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1E680B790(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1E67FCA14(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1E67FA888(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098938);
    v3 = sub_1E68B3940();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1E680B790(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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

unint64_t sub_1E67FA99C()
{
  result = qword_1ED0986B8;
  if (!qword_1ED0986B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0986B8);
  }

  return result;
}

unint64_t sub_1E67FA9F0()
{
  result = qword_1ED0986C8;
  if (!qword_1ED0986C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0986C8);
  }

  return result;
}

unint64_t sub_1E67FAA44()
{
  result = qword_1ED0986D8;
  if (!qword_1ED0986D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0986D8);
  }

  return result;
}

unint64_t sub_1E67FAA9C()
{
  result = qword_1ED0986E8;
  if (!qword_1ED0986E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0986E8);
  }

  return result;
}

unint64_t sub_1E67FAB30()
{
  result = qword_1ED0986F0;
  if (!qword_1ED0986F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0986F0);
  }

  return result;
}

unint64_t sub_1E67FAB84()
{
  result = qword_1ED0986F8;
  if (!qword_1ED0986F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0986F8);
  }

  return result;
}

unint64_t sub_1E67FABD8()
{
  result = qword_1ED098700;
  if (!qword_1ED098700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098700);
  }

  return result;
}

unint64_t sub_1E67FAC30()
{
  result = qword_1ED098708;
  if (!qword_1ED098708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098708);
  }

  return result;
}

unint64_t sub_1E67FACC4()
{
  result = qword_1ED098710;
  if (!qword_1ED098710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098710);
  }

  return result;
}

unint64_t sub_1E67FAD18()
{
  result = qword_1ED098718;
  if (!qword_1ED098718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098718);
  }

  return result;
}

unint64_t sub_1E67FAD6C()
{
  result = qword_1ED098720;
  if (!qword_1ED098720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098720);
  }

  return result;
}

unint64_t sub_1E67FADC4()
{
  result = qword_1ED098728;
  if (!qword_1ED098728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098728);
  }

  return result;
}

unint64_t sub_1E67FAE58()
{
  result = qword_1ED098730;
  if (!qword_1ED098730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098730);
  }

  return result;
}

unint64_t sub_1E67FAEAC()
{
  result = qword_1ED098738;
  if (!qword_1ED098738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098738);
  }

  return result;
}

unint64_t sub_1E67FAF00()
{
  result = qword_1ED098740;
  if (!qword_1ED098740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098740);
  }

  return result;
}

unint64_t sub_1E67FAF94()
{
  result = qword_1ED098748;
  if (!qword_1ED098748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098748);
  }

  return result;
}

unint64_t sub_1E67FAFE8()
{
  result = qword_1ED098750;
  if (!qword_1ED098750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098750);
  }

  return result;
}

unint64_t sub_1E67FB03C()
{
  result = qword_1ED098758;
  if (!qword_1ED098758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098758);
  }

  return result;
}

unint64_t sub_1E67FB094()
{
  result = qword_1ED098760;
  if (!qword_1ED098760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098760);
  }

  return result;
}

unint64_t sub_1E67FB0EC()
{
  result = qword_1ED098768;
  if (!qword_1ED098768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098768);
  }

  return result;
}

unint64_t sub_1E67FB180()
{
  result = qword_1ED098770;
  if (!qword_1ED098770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098770);
  }

  return result;
}

unint64_t sub_1E67FB1D4()
{
  result = qword_1ED098778;
  if (!qword_1ED098778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098778);
  }

  return result;
}

unint64_t sub_1E67FB228()
{
  result = qword_1ED098780;
  if (!qword_1ED098780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098780);
  }

  return result;
}

unint64_t sub_1E67FB280()
{
  result = qword_1ED098788;
  if (!qword_1ED098788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098788);
  }

  return result;
}

unint64_t sub_1E67FB314()
{
  result = qword_1ED098790;
  if (!qword_1ED098790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098790);
  }

  return result;
}

unint64_t sub_1E67FB368()
{
  result = qword_1ED098798;
  if (!qword_1ED098798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098798);
  }

  return result;
}

unint64_t sub_1E67FB3BC()
{
  result = qword_1ED0987A0;
  if (!qword_1ED0987A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987A0);
  }

  return result;
}

unint64_t sub_1E67FB450()
{
  result = qword_1ED0987A8;
  if (!qword_1ED0987A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987A8);
  }

  return result;
}

unint64_t sub_1E67FB4A4()
{
  result = qword_1ED0987B0;
  if (!qword_1ED0987B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987B0);
  }

  return result;
}

unint64_t sub_1E67FB4F8()
{
  result = qword_1ED0987B8;
  if (!qword_1ED0987B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987B8);
  }

  return result;
}

unint64_t sub_1E67FB550()
{
  result = qword_1ED0987C0;
  if (!qword_1ED0987C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987C0);
  }

  return result;
}

unint64_t sub_1E67FB5E4()
{
  result = qword_1ED0987C8;
  if (!qword_1ED0987C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987C8);
  }

  return result;
}

unint64_t sub_1E67FB638()
{
  result = qword_1ED0987D0;
  if (!qword_1ED0987D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987D0);
  }

  return result;
}

unint64_t sub_1E67FB68C()
{
  result = qword_1ED0987D8;
  if (!qword_1ED0987D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987D8);
  }

  return result;
}

unint64_t sub_1E67FB6E4()
{
  result = qword_1ED0987E0;
  if (!qword_1ED0987E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987E0);
  }

  return result;
}

uint64_t sub_1E67FB778(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1E67FB7CC()
{
  result = qword_1ED0987E8;
  if (!qword_1ED0987E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987E8);
  }

  return result;
}

unint64_t sub_1E67FB820()
{
  result = qword_1ED0987F0;
  if (!qword_1ED0987F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987F0);
  }

  return result;
}

unint64_t sub_1E67FB874()
{
  result = qword_1ED0987F8;
  if (!qword_1ED0987F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987F8);
  }

  return result;
}

unint64_t sub_1E67FB8CC()
{
  result = qword_1ED098800;
  if (!qword_1ED098800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098800);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1E67FB988(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1E67FB9D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E67FBA98()
{
  result = qword_1ED098808;
  if (!qword_1ED098808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0986E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098808);
  }

  return result;
}

unint64_t sub_1E67FBBE0()
{
  result = qword_1ED098810;
  if (!qword_1ED098810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098810);
  }

  return result;
}

unint64_t sub_1E67FBC38()
{
  result = qword_1ED098818;
  if (!qword_1ED098818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098818);
  }

  return result;
}

unint64_t sub_1E67FBC90()
{
  result = qword_1ED098820;
  if (!qword_1ED098820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098820);
  }

  return result;
}

unint64_t sub_1E67FBCE8()
{
  result = qword_1ED098828;
  if (!qword_1ED098828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098828);
  }

  return result;
}

unint64_t sub_1E67FBD40()
{
  result = qword_1ED098830;
  if (!qword_1ED098830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098830);
  }

  return result;
}

unint64_t sub_1E67FBD98()
{
  result = qword_1ED098838;
  if (!qword_1ED098838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098838);
  }

  return result;
}

unint64_t sub_1E67FBDF0()
{
  result = qword_1ED098840;
  if (!qword_1ED098840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098840);
  }

  return result;
}

unint64_t sub_1E67FBE48()
{
  result = qword_1ED098848;
  if (!qword_1ED098848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098848);
  }

  return result;
}

unint64_t sub_1E67FBEA0()
{
  result = qword_1ED098850;
  if (!qword_1ED098850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098850);
  }

  return result;
}

unint64_t sub_1E67FBEF8()
{
  result = qword_1ED098858;
  if (!qword_1ED098858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098858);
  }

  return result;
}

unint64_t sub_1E67FBF50()
{
  result = qword_1ED098860;
  if (!qword_1ED098860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098860);
  }

  return result;
}

unint64_t sub_1E67FBFA8()
{
  result = qword_1ED098868;
  if (!qword_1ED098868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098868);
  }

  return result;
}

unint64_t sub_1E67FC000()
{
  result = qword_1ED098870;
  if (!qword_1ED098870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098870);
  }

  return result;
}

unint64_t sub_1E67FC058()
{
  result = qword_1ED098878;
  if (!qword_1ED098878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098878);
  }

  return result;
}

unint64_t sub_1E67FC0B0()
{
  result = qword_1ED098880;
  if (!qword_1ED098880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098880);
  }

  return result;
}

unint64_t sub_1E67FC108()
{
  result = qword_1ED098888;
  if (!qword_1ED098888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098888);
  }

  return result;
}

unint64_t sub_1E67FC160()
{
  result = qword_1ED098890;
  if (!qword_1ED098890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098890);
  }

  return result;
}

unint64_t sub_1E67FC1B8()
{
  result = qword_1ED098898;
  if (!qword_1ED098898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098898);
  }

  return result;
}

unint64_t sub_1E67FC210()
{
  result = qword_1ED0988A0;
  if (!qword_1ED0988A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988A0);
  }

  return result;
}

unint64_t sub_1E67FC268()
{
  result = qword_1ED0988A8;
  if (!qword_1ED0988A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988A8);
  }

  return result;
}

unint64_t sub_1E67FC2C0()
{
  result = qword_1ED0988B0;
  if (!qword_1ED0988B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988B0);
  }

  return result;
}

unint64_t sub_1E67FC318()
{
  result = qword_1ED0988B8;
  if (!qword_1ED0988B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988B8);
  }

  return result;
}

unint64_t sub_1E67FC370()
{
  result = qword_1ED0988C0;
  if (!qword_1ED0988C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988C0);
  }

  return result;
}

unint64_t sub_1E67FC3C8()
{
  result = qword_1ED0988C8;
  if (!qword_1ED0988C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988C8);
  }

  return result;
}

unint64_t sub_1E67FC420()
{
  result = qword_1ED0988D0;
  if (!qword_1ED0988D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988D0);
  }

  return result;
}

unint64_t sub_1E67FC478()
{
  result = qword_1ED0988D8;
  if (!qword_1ED0988D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988D8);
  }

  return result;
}

unint64_t sub_1E67FC4D0()
{
  result = qword_1ED0988E0;
  if (!qword_1ED0988E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988E0);
  }

  return result;
}

unint64_t sub_1E67FC528()
{
  result = qword_1ED0988E8;
  if (!qword_1ED0988E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988E8);
  }

  return result;
}

unint64_t sub_1E67FC580()
{
  result = qword_1ED0988F0;
  if (!qword_1ED0988F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988F0);
  }

  return result;
}

unint64_t sub_1E67FC5D8()
{
  result = qword_1ED0988F8;
  if (!qword_1ED0988F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988F8);
  }

  return result;
}

unint64_t sub_1E67FC630()
{
  result = qword_1ED098900;
  if (!qword_1ED098900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098900);
  }

  return result;
}

unint64_t sub_1E67FC688()
{
  result = qword_1ED098908;
  if (!qword_1ED098908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098908);
  }

  return result;
}

unint64_t sub_1E67FC6E0()
{
  result = qword_1ED098910;
  if (!qword_1ED098910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098910);
  }

  return result;
}

unint64_t sub_1E67FC738()
{
  result = qword_1ED098918;
  if (!qword_1ED098918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098918);
  }

  return result;
}

uint64_t sub_1E67FC78C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v3 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEE00657079547265 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEE00657079546E6FLL || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E68E2C60 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E67FC9A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098928);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1E67FCA14(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1E67FCAF0()
{
  result = qword_1EE2EA5E0;
  if (!qword_1EE2EA5E0)
  {
    sub_1E68B23A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA5E0);
  }

  return result;
}

uint64_t sub_1E67FCB48()
{
  result = type metadata accessor for DataItemResolution();
  if (v1 <= 0x3F)
  {
    result = sub_1E68B34D0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E67FCC14@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for ResolvedDataItemInterestRegistration() + 36);
  type metadata accessor for DataItemResolution();
  v6 = sub_1E68B34D0();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t Symbol.systemName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Symbol.foregroundColorHex.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Symbol.accessibilityLabel.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall Symbol.init(systemName:foregroundColorHex:accessibilityLabel:)(FitnessCanvasUI::Symbol *__return_ptr retstr, Swift::String systemName, Swift::String_optional foregroundColorHex, Swift::String_optional accessibilityLabel)
{
  retstr->systemName = systemName;
  retstr->foregroundColorHex = foregroundColorHex;
  retstr->accessibilityLabel = accessibilityLabel;
}

uint64_t sub_1E67FCD70()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x614E6D6574737973;
  }
}

uint64_t sub_1E67FCDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E67FDDC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E67FCE00(uint64_t a1)
{
  v2 = sub_1E67FDA38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67FCE3C(uint64_t a1)
{
  v2 = sub_1E67FDA38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Symbol.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098950);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67FDA38();
  sub_1E68B3BD0();
  v14 = 0;
  v9 = v11[5];
  sub_1E68B3A70();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1E68B3A40();
  v12 = 2;
  sub_1E68B3A40();
  return (*(v4 + 8))(v6, v3);
}

uint64_t Symbol.hash(into:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  sub_1E68B31F0();
  if (!v1)
  {
    sub_1E68B3B90();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_1E68B3B90();
  }

  sub_1E68B3B90();
  sub_1E68B31F0();
  if (!v2)
  {
    return sub_1E68B3B90();
  }

LABEL_3:
  sub_1E68B3B90();

  return sub_1E68B31F0();
}

uint64_t Symbol.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  sub_1E68B3B70();
  sub_1E68B31F0();
  if (!v1)
  {
    sub_1E68B3B90();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1E68B3B90();
    return sub_1E68B3BB0();
  }

  sub_1E68B3B90();
  sub_1E68B31F0();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E68B3B90();
  sub_1E68B31F0();
  return sub_1E68B3BB0();
}

uint64_t Symbol.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098960);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67FDA38();
  sub_1E68B3BC0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_1E68B39C0();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_1E68B3990();
  v21 = v12;
  v23 = 2;
  v13 = sub_1E68B3990();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E67FD46C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  sub_1E68B31F0();
  if (!v1)
  {
    sub_1E68B3B90();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_1E68B3B90();
  }

  sub_1E68B3B90();
  sub_1E68B31F0();
  if (!v2)
  {
    return sub_1E68B3B90();
  }

LABEL_3:
  sub_1E68B3B90();

  return sub_1E68B31F0();
}

uint64_t sub_1E67FD528()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  sub_1E68B3B70();
  sub_1E68B31F0();
  if (!v1)
  {
    sub_1E68B3B90();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1E68B3B90();
    return sub_1E68B3BB0();
  }

  sub_1E68B3B90();
  sub_1E68B31F0();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E68B3B90();
  sub_1E68B31F0();
  return sub_1E68B3BB0();
}

uint64_t static SymbolAttribute.name.getter()
{
  swift_beginAccess();
  v0 = *aSymbol_2;

  return v0;
}

uint64_t static SymbolAttribute.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aSymbol_2 = a1;
  qword_1ED098948 = a2;
}

uint64_t sub_1E67FD6F8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aSymbol_2 = v2;
  qword_1ED098948 = v1;
}

uint64_t sub_1E67FD81C()
{
  swift_beginAccess();
  v0 = *aSymbol_2;

  return v0;
}

uint64_t sub_1E67FD8AC()
{
  sub_1E67934E4();

  return sub_1E68B1740();
}

uint64_t sub_1E67FD8F8()
{
  sub_1E67934E4();

  return sub_1E68B1740();
}

uint64_t _s15FitnessCanvasUI6SymbolV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E68B3B00() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6 || (v2 != v7 || v4 != v6) && (sub_1E68B3B00() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v3 == v9 && v5 == v8 || (sub_1E68B3B00() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1E67FDA38()
{
  result = qword_1ED098958;
  if (!qword_1ED098958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098958);
  }

  return result;
}

unint64_t sub_1E67FDA90()
{
  result = qword_1ED098968;
  if (!qword_1ED098968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098968);
  }

  return result;
}

unint64_t sub_1E67FDAE8()
{
  result = qword_1ED098970;
  if (!qword_1ED098970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098970);
  }

  return result;
}

unint64_t sub_1E67FDB40()
{
  result = qword_1EE2EDF30;
  if (!qword_1EE2EDF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EDF30);
  }

  return result;
}

unint64_t sub_1E67FDB98()
{
  result = qword_1EE2EDF28;
  if (!qword_1EE2EDF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EDF28);
  }

  return result;
}

uint64_t sub_1E67FDBEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1E67FDC34(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1E67FDCC4()
{
  result = qword_1ED098978;
  if (!qword_1ED098978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098978);
  }

  return result;
}

unint64_t sub_1E67FDD1C()
{
  result = qword_1ED098980;
  if (!qword_1ED098980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098980);
  }

  return result;
}

unint64_t sub_1E67FDD74()
{
  result = qword_1ED098988;
  if (!qword_1ED098988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098988);
  }

  return result;
}

uint64_t sub_1E67FDDC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E6D6574737973 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E68E2C80 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E68E2CA0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

unint64_t sub_1E67FDEF8()
{
  result = qword_1ED098990;
  if (!qword_1ED098990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098990);
  }

  return result;
}

unint64_t sub_1E67FDF4C()
{
  result = qword_1ED098998;
  if (!qword_1ED098998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098998);
  }

  return result;
}

uint64_t sub_1E67FDFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E68B3750();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1E67FE010@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8);
  swift_storeEnumTagMultiPayload();
  v25 = type metadata accessor for StandardHorizontalStackView();
  v26 = (a9 + v25[13]);
  v27 = a1[5];
  v26[4] = a1[4];
  v26[5] = v27;
  v28 = a1[3];
  v26[2] = a1[2];
  v26[3] = v28;
  v29 = a1[9];
  v26[8] = a1[8];
  v26[9] = v29;
  v30 = a1[7];
  v26[6] = a1[6];
  v26[7] = v30;
  v31 = a1[1];
  *v26 = *a1;
  v26[1] = v31;
  (*(*(a21 - 8) + 32))(a9 + v25[14], a2, a21);
  v32 = (a9 + v25[15]);
  *v32 = a3;
  v32[1] = a4;
  v32[2] = a5;
  v32[3] = a6;
  v33 = (a9 + v25[16]);
  *v33 = a7;
  v33[1] = a8;
  v33[2] = a10;
  v33[3] = a11;
  v34 = a9 + v25[17];
  *v34 = a12;
  *(v34 + 2) = a13;
  *(v34 + 3) = a14;
  v35 = a9 + v25[18];
  *v35 = a15;
  *(v35 + 2) = a16;
  *(v35 + 3) = a17;
  v36 = v25[19];
  v37 = sub_1E68B3750();
  (*(*(v37 - 8) + 32))(a9 + v36, a18, v37);
  v38 = (a9 + v25[20]);
  result = swift_allocObject();
  *(result + 16) = a19;
  *(result + 24) = a20;
  *v38 = sub_1E673F5E0;
  v38[1] = result;
  return result;
}

double static StandardHorizontalStackViewLayout.default.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1ED096D58 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1ED098A10;
  a1[6] = xmmword_1ED098A00;
  a1[7] = v1;
  v2 = xmmword_1ED098A30;
  a1[8] = xmmword_1ED098A20;
  a1[9] = v2;
  v3 = unk_1ED0989D0;
  a1[2] = xmmword_1ED0989C0;
  a1[3] = v3;
  v4 = *&qword_1ED0989F0;
  a1[4] = xmmword_1ED0989E0;
  a1[5] = v4;
  result = *&xmmword_1ED0989A0;
  v6 = *&qword_1ED0989B0;
  *a1 = xmmword_1ED0989A0;
  a1[1] = v6;
  return result;
}

__n128 StandardHorizontalStackViewLayout.contentMargins.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

double StandardHorizontalStackViewLayout.sectionDensity.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = *(v1 + 72);
  *(a1 + 8) = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 StandardHorizontalStackViewLayout.init(artworkAspectRatio:artworkClipShape:artworkContentSpacing:contentMargins:displaySeparator:sectionDensity:titleLineLimit:subtitleLineLimit:captionLineLimit:artworkHeight:showChevron:interItemSpacing:artworkVerticalPadding:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, char a16)
{
  v16 = *a5;
  v17 = a5[1];
  v18 = a5[2];
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2 & 1;
  *(a9 + 32) = a12;
  result = *a3;
  v20 = *(a3 + 16);
  *(a9 + 40) = *a3;
  *(a9 + 56) = v20;
  *(a9 + 72) = v16;
  *(a9 + 80) = v17;
  *(a9 + 88) = v18;
  *(a9 + 96) = a4;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7;
  *(a9 + 120) = a8;
  *(a9 + 128) = a13;
  *(a9 + 136) = a16;
  *(a9 + 144) = a14;
  *(a9 + 152) = a15;
  return result;
}

unint64_t sub_1E67FE3DC(char a1)
{
  result = 0x4D746E65746E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      return result;
    case 4:
      result = 0x446E6F6974636573;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6E694C656C746974;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x486B726F77747261;
      break;
    case 10:
      result = 0x76656843776F6873;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1E67FE594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E680572C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E67FE5C8(uint64_t a1)
{
  v2 = sub_1E68041C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67FE604(uint64_t a1)
{
  v2 = sub_1E68041C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E67FE640()
{
  v0 = 8.0;
  if (sub_1E68B2DF0())
  {
    sub_1E68B1A40();
    v0 = v1;
  }

  xmmword_1ED0989A0 = xmmword_1E68BE010;
  qword_1ED0989B0 = *&v0;
  byte_1ED0989B8 = 0;
  result = 10.0;
  xmmword_1ED0989C0 = xmmword_1E68BE020;
  unk_1ED0989D0 = xmmword_1E68BE030;
  *&xmmword_1ED0989E0 = 0x4034000000000000;
  *(&xmmword_1ED0989E0 + 1) = 2;
  qword_1ED0989F0 = 0x4024000000000000;
  unk_1ED0989F8 = 1;
  LOBYTE(xmmword_1ED098A00) = 0;
  *(&xmmword_1ED098A00 + 8) = vdupq_n_s64(2uLL);
  qword_1ED098A18 = 2;
  *&xmmword_1ED098A20 = 0x405E000000000000;
  BYTE8(xmmword_1ED098A20) = 1;
  xmmword_1ED098A30 = xmmword_1E68BE020;
  return result;
}

uint64_t StandardHorizontalStackViewLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098A40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - v6;
  v8 = *v1;
  v9 = v1[1];
  v32 = v1[2];
  v31 = *(v1 + 24);
  v10 = v1[4];
  v11 = *(v1 + 5);
  v26 = *(v1 + 7);
  v27 = v11;
  v12 = v1[9];
  v13 = v1[10];
  v29 = v1[11];
  v30 = v12;
  v28 = *(v1 + 96);
  v14 = v1[14];
  v25 = v1[13];
  v24 = v14;
  v23 = v1[15];
  v15 = v1[16];
  v16 = *(v1 + 136);
  v18 = v1[18];
  v17 = v1[19];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68041C8();
  sub_1E68B3BD0();
  *&v33 = v8;
  *(&v33 + 1) = v9;
  v35 = 0;
  type metadata accessor for CGSize(0);
  sub_1E68050F0(&qword_1EE2EA448, type metadata accessor for CGSize);
  sub_1E68B3AB0();
  if (!v2)
  {
    v19 = v29;
    v20 = v30;
    v22[1] = v16;
    *&v33 = v32;
    BYTE8(v33) = v31;
    v35 = 1;
    sub_1E680421C();
    sub_1E68B3AB0();
    *&v33 = v10;
    v35 = 2;
    sub_1E67621E8();
    sub_1E68B3AB0();
    v32 = v5;
    v33 = v27;
    v34 = v26;
    v35 = 3;
    sub_1E67F4B08();
    sub_1E68B3AB0();
    *&v33 = v20;
    *(&v33 + 1) = v13;
    *&v34 = v19;
    v35 = 4;
    sub_1E6804270();
    sub_1E68B3AB0();
    LOBYTE(v33) = 5;
    sub_1E68B3A80();
    LOBYTE(v33) = 6;
    sub_1E68B3AA0();
    LOBYTE(v33) = 7;
    sub_1E68B3AA0();
    LOBYTE(v33) = 8;
    sub_1E68B3AA0();
    *&v33 = v15;
    v35 = 9;
    sub_1E68B3AB0();
    LOBYTE(v33) = 10;
    sub_1E68B3A80();
    *&v33 = v18;
    v35 = 11;
    sub_1E68B3AB0();
    *&v33 = v17;
    v35 = 12;
    sub_1E68B3AB0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t StandardHorizontalStackViewLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098A50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68041C8();
  sub_1E68B3BC0();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    v36 = 0;
    sub_1E68050F0(&qword_1ED096DC0, type metadata accessor for CGSize);
    sub_1E68B3A00();
    v9 = v33;
    v36 = 1;
    sub_1E68042C4();
    sub_1E68B3A00();
    v10 = v33;
    v35 = BYTE8(v33);
    v36 = 2;
    sub_1E6762A60();
    sub_1E68B3A00();
    v11 = v33;
    v36 = 3;
    sub_1E67F4BB0();
    sub_1E68B3A00();
    v31 = v33;
    v32 = v34;
    v36 = 4;
    sub_1E6804318();
    sub_1E68B3A00();
    v12 = *(&v33 + 1);
    v29 = v34;
    v30 = v33;
    LOBYTE(v33) = 5;
    v28 = sub_1E68B39D0();
    LOBYTE(v33) = 6;
    v27 = sub_1E68B39F0();
    LOBYTE(v33) = 7;
    v26 = sub_1E68B39F0();
    LOBYTE(v33) = 8;
    v25 = sub_1E68B39F0();
    v36 = 9;
    sub_1E68B3A00();
    v13 = v33;
    LOBYTE(v33) = 10;
    v24 = sub_1E68B39D0();
    v36 = 11;
    sub_1E68B3A00();
    v15 = v33;
    v36 = 12;
    sub_1E68B3A00();
    (*(v6 + 8))(v8, v5);
    v16 = v28 & 1;
    v17 = v33;
    v18 = v24 & 1;
    v19 = v35;
    *a2 = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v19;
    *(a2 + 32) = v11;
    v20 = v32;
    *(a2 + 40) = v31;
    *(a2 + 56) = v20;
    v21 = v29;
    *(a2 + 72) = v30;
    *(a2 + 80) = v12;
    *(a2 + 88) = v21;
    *(a2 + 96) = v16;
    v22 = v26;
    *(a2 + 104) = v27;
    *(a2 + 112) = v22;
    *(a2 + 120) = v25;
    *(a2 + 128) = v13;
    *(a2 + 136) = v18;
    *(a2 + 144) = v15;
    *(a2 + 152) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t StandardHorizontalStackViewLayout.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v12 = *(v0 + 104);
  v11 = *(v0 + 112);
  v13 = *(v0 + 120);
  v14 = *(v0 + 128);
  v26 = *(v0 + 144);
  v27 = *(v0 + 152);
  sub_1E673E7F4(*v0, *(v0 + 8));
  if (v2)
  {
    MEMORY[0x1E69523D0](1);
  }

  else
  {
    MEMORY[0x1E69523D0](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v1;
    }

    else
    {
      v15 = 0;
    }

    MEMORY[0x1E69523F0](v15);
  }

  if (v4 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v4;
  }

  MEMORY[0x1E69523F0](*&v16);
  if (v3 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v3;
  }

  MEMORY[0x1E69523F0](*&v17);
  if (v6 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v6;
  }

  MEMORY[0x1E69523F0](*&v18);
  if (v5 == 0.0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v5;
  }

  MEMORY[0x1E69523F0](*&v19);
  if (v7 == 0.0)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v7;
  }

  MEMORY[0x1E69523F0](*&v20);
  MEMORY[0x1E69523D0](v8);
  if (v9 == 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v9;
  }

  MEMORY[0x1E69523F0](*&v21);
  MEMORY[0x1E69523D0](v10);
  sub_1E68B3B90();
  MEMORY[0x1E69523D0](v12);
  MEMORY[0x1E69523D0](v11);
  MEMORY[0x1E69523D0](v13);
  if (v14 == 0.0)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v14;
  }

  MEMORY[0x1E69523F0](*&v22);
  sub_1E68B3B90();
  v23 = v26;
  if (v26 == 0.0)
  {
    v23 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v23);
  v24 = v27;
  if (v27 == 0.0)
  {
    v24 = 0.0;
  }

  return MEMORY[0x1E69523F0](*&v24);
}

uint64_t StandardHorizontalStackViewLayout.hashValue.getter()
{
  sub_1E68B3B70();
  StandardHorizontalStackViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E67FF2D4()
{
  sub_1E68B3B70();
  StandardHorizontalStackViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E67FF318()
{
  sub_1E68B3B70();
  StandardHorizontalStackViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E67FF358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098A88);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v61 - v3;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098A90);
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v62 = &v61 - v4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098A98);
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v61 - v7;
  v73 = sub_1E68B2400();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = (a1 + 40);
  v69 = *(a1 + 16);
  v9 = a1;
  sub_1E68B1E40();
  v10 = sub_1E68B1E40();
  v68 = *(v9 + 32);
  v67 = v9;
  v99 = v68;
  v100 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1E67979F0();
  v97 = WitnessTable;
  v98 = v12;
  v13 = swift_getWitnessTable();
  v87 = v10;
  v88 = v13;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098AA0);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  v87 = v10;
  v88 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v96 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E68B2C50();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B2220();
  v14 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v93 = v14;
  v94 = v15;
  swift_getWitnessTable();
  sub_1E68B2CC0();
  swift_getWitnessTable();
  sub_1E68B2C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E08);
  v16 = sub_1E68B1E40();
  v17 = sub_1E68B1EB0();
  v18 = swift_getWitnessTable();
  v19 = sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08);
  v91 = v18;
  v92 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_1E68050F0(&qword_1EE2EA680, MEMORY[0x1E697C248]);
  v87 = v16;
  v88 = v17;
  v89 = v20;
  v90 = v21;
  swift_getOpaqueTypeMetadata2();
  v22 = *(v9 + 24);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  v66 = swift_getWitnessTable();
  v23 = sub_1E68B2C50();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v61 - v25;
  v27 = swift_getWitnessTable();
  v87 = v23;
  v88 = v27;
  v65 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v29 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v31 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v61 - v33;
  *&v35 = v68;
  *(&v35 + 1) = *v70;
  *&v36 = v69;
  *(&v36 + 1) = v22;
  v81 = v36;
  v82 = v35;
  v37 = v75;
  v83 = v75;
  sub_1E68B2140();
  sub_1E68B2C40();
  v38 = v71;
  sub_1E68B23F0();
  sub_1E68B2920();
  (*(v72 + 8))(v38, v73);
  (*(v24 + 8))(v26, v23);
  v39 = v74;
  v87 = v23;
  v88 = v27;
  v40 = swift_getOpaqueTypeConformance2();
  v73 = v34;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v31, OpaqueTypeMetadata2, v40);
  v72 = v29;
  v41 = *(v29 + 8);
  v41(v31, OpaqueTypeMetadata2);
  v42 = 1;
  if (*(v37 + *(v67 + 52) + 96) == 1)
  {
    v43 = v63;
    sub_1E68B2D00();
    v44 = sub_1E68B2550();
    sub_1E68B1B30();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098AC8) + 36);
    *v53 = v44;
    *(v53 + 8) = v46;
    *(v53 + 16) = v48;
    *(v53 + 24) = v50;
    *(v53 + 32) = v52;
    *(v53 + 40) = 0;
    v54 = sub_1E68B1E70();
    v55 = sub_1E68B2500();
    v56 = v43 + *(v64 + 36);
    *v56 = v54;
    *(v56 + 8) = v55;
    sub_1E6804FA8();
    v57 = v62;
    sub_1E68B2900();
    sub_1E6744A10(v43, &qword_1ED098A88);
    sub_1E6761420(v57, v39, &qword_1ED098A90);
    v42 = 0;
  }

  (*(v76 + 56))(v39, v42, 1, v78);
  v58 = v73;
  (*(v72 + 16))(v31, v73, OpaqueTypeMetadata2);
  v87 = v31;
  v59 = v79;
  sub_1E67612FC(v39, v79, &qword_1ED098A98);
  v88 = v59;
  v86[0] = OpaqueTypeMetadata2;
  v86[1] = v77;
  v84 = v40;
  v85 = sub_1E6804E68();
  sub_1E6848F14(&v87, 2uLL, v86);
  sub_1E6744A10(v39, &qword_1ED098A98);
  v41(v58, OpaqueTypeMetadata2);
  sub_1E6744A10(v59, &qword_1ED098A98);
  return (v41)(v31, OpaqueTypeMetadata2);
}

uint64_t sub_1E67FFE68@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v116 = a1;
  v123 = a6;
  swift_getTupleTypeMetadata2();
  v10 = sub_1E68B2F00();
  v121 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v91 - v11;
  v119 = sub_1E68B3750();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v91 - v12;
  v127 = a3;
  v115 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v91 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v91 = &v91 - v18;
  v122 = v10;
  v132 = sub_1E68B3750();
  v120 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v130 = &v91 - v21;
  v129 = sub_1E68B1EB0();
  v114 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v113 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = a2;
  v155 = a2;
  v156 = a3;
  v109 = a4;
  v157 = a4;
  v158 = a5;
  v125 = type metadata accessor for StandardHorizontalStackView();
  v110 = *(v125 - 8);
  v112 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v108 = &v91 - v23;
  sub_1E68B1E40();
  v24 = sub_1E68B1E40();
  v153 = a4;
  v154 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v26 = sub_1E67979F0();
  v151 = WitnessTable;
  v152 = v26;
  v27 = swift_getWitnessTable();
  v155 = v24;
  v156 = v27;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098AA0);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  v155 = v24;
  v156 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v150 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E68B2C50();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B2220();
  v28 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v147 = v28;
  v148 = v29;
  swift_getWitnessTable();
  v105 = sub_1E68B2CC0();
  v104 = swift_getWitnessTable();
  v30 = sub_1E68B2C30();
  v107 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v103 = &v91 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E08);
  v101 = v30;
  v32 = sub_1E68B1E40();
  v98 = v32;
  v106 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v102 = &v91 - v33;
  v34 = swift_getWitnessTable();
  v99 = v34;
  v35 = sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08);
  v145 = v34;
  v146 = v35;
  v36 = a5;
  v37 = swift_getWitnessTable();
  v97 = v37;
  v96 = sub_1E68050F0(&qword_1EE2EA680, MEMORY[0x1E697C248]);
  v155 = v32;
  v156 = v129;
  v157 = v37;
  v158 = v96;
  v100 = MEMORY[0x1E697CDB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v124 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2 - 8);
  v95 = &v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v126 = &v91 - v41;
  v42 = v110;
  v43 = v108;
  v44 = v116;
  v45 = v125;
  (*(v110 + 16))(v108, v116, v125, v40);
  v46 = (*(v42 + 80) + 48) & ~*(v42 + 80);
  v47 = swift_allocObject();
  v48 = v111;
  v49 = v127;
  *(v47 + 2) = v111;
  *(v47 + 3) = v49;
  v50 = v109;
  *(v47 + 4) = v109;
  *(v47 + 5) = v36;
  (*(v42 + 32))(&v47[v46], v43, v45);
  v133 = v48;
  v134 = v49;
  v135 = v50;
  v112 = v36;
  v136 = v36;
  v137 = v44;
  v51 = v103;
  sub_1E68B2C20();
  sub_1E673F180();
  v52 = v102;
  v53 = v101;
  sub_1E68B2800();
  (*(v107 + 8))(v51, v53);
  v54 = v113;
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  v55 = v95;
  v56 = v98;
  v57 = v129;
  v58 = v97;
  v59 = v96;
  sub_1E68B2790();
  v114[1](v54, v57);
  v60 = v127;
  (*(v106 + 8))(v52, v56);
  v155 = v56;
  v156 = v57;
  v61 = v117;
  v157 = v58;
  v158 = v59;
  v62 = v118;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = OpaqueTypeMetadata2;
  v113 = v63;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v55, OpaqueTypeMetadata2, v63);
  v65 = *(v124 + 8);
  v66 = v55;
  v129 = v124 + 8;
  v114 = v65;
  (v65)(v55, v64);
  v67 = v44 + *(v125 + 76);
  v68 = v119;
  (*(v62 + 16))(v61, v67, v119);
  v69 = v115;
  if ((*(v115 + 48))(v61, 1, v60) == 1)
  {
    (*(v62 + 8))(v61, v68);
    v70 = v131;
    (*(v121 + 56))(v131, 1, 1, v122);
  }

  else
  {
    v71 = v91;
    (*(v69 + 32))(v91, v61, v60);
    v72 = v92;
    v73 = v112;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v71, v60, v112);
    v138 = 0;
    v139 = 1;
    v155 = &v138;
    v74 = v93;
    (*(v69 + 16))(v93, v72, v60);
    v156 = v74;
    v143 = MEMORY[0x1E6981840];
    v144 = v60;
    v141 = MEMORY[0x1E6981838];
    v142 = v73;
    v75 = v94;
    sub_1E6848F14(&v155, 2uLL, &v143);
    v76 = *(v69 + 8);
    v76(v72, v60);
    v76(v71, v60);
    v76(v74, v60);
    v77 = v121;
    v70 = v131;
    v78 = v122;
    (*(v121 + 32))(v131, v75, v122);
    (*(v77 + 56))(v70, 0, 1, v78);
  }

  swift_getWitnessTable();
  v79 = v120;
  v80 = *(v120 + 16);
  v81 = v132;
  v80(v130, v70, v132);
  v127 = *(v79 + 8);
  v127(v70, v81);
  v82 = v126;
  v83 = OpaqueTypeMetadata2;
  (*(v124 + 16))(v66, v126, OpaqueTypeMetadata2);
  v155 = v66;
  v84 = v131;
  v85 = v130;
  v86 = v132;
  v80(v131, v130, v132);
  v156 = v84;
  v143 = v83;
  v144 = v86;
  v141 = v113;
  v140 = swift_getWitnessTable();
  v142 = swift_getWitnessTable();
  sub_1E6848F14(&v155, 2uLL, &v143);
  v87 = v127;
  v127(v85, v86);
  v88 = v82;
  v89 = v114;
  (v114)(v88, v83);
  v87(v84, v86);
  return (v89)(v66, v83);
}

uint64_t sub_1E6800E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a1;
  v22 = a5;
  v20 = a3;
  v23 = a6;
  sub_1E68B1E40();
  v8 = sub_1E68B1E40();
  v37 = a4;
  v38 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v36 = sub_1E67979F0();
  v9 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098AA0);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  v33 = v8;
  v34 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E68B2C50();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B2220();
  v29 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  swift_getWitnessTable();
  v10 = sub_1E68B2CC0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1E68B21D0();
  v24 = a2;
  v25 = v20;
  v26 = a4;
  v27 = v22;
  v28 = v21;
  sub_1E68B2CB0();
  v17 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v13, v10, v17);
  v18 = *(v11 + 8);
  v18(v13, v10);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v16, v10, v17);
  return (v18)(v16, v10);
}

uint64_t sub_1E6801224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a3;
  v43 = a5;
  v40 = a2;
  v41 = a1;
  v44 = a6;
  v53 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v38 = a4;
  v7 = type metadata accessor for StandardHorizontalStackView();
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v35 - v8;
  sub_1E68B1E40();
  v9 = sub_1E68B1E40();
  v51 = a4;
  v52 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1E67979F0();
  v49 = WitnessTable;
  v50 = v11;
  v12 = swift_getWitnessTable();
  v53 = v9;
  v54 = v12;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098AA0);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  v35[1] = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  v35[2] = sub_1E68B2C50();
  v53 = v9;
  v54 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E68B2C50();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v35[3] = sub_1E68B2CC0();
  v13 = sub_1E68B2220();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v35 - v19;
  v21 = v7;
  v35[0] = *(v7 + 56);
  v22 = v39;
  v23 = v37;
  v24 = v41;
  (*(v39 + 16))(v37, v41, v21, v18);
  v25 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v26 = swift_allocObject();
  v27 = v42;
  *(v26 + 2) = v40;
  *(v26 + 3) = v27;
  v28 = v43;
  *(v26 + 4) = v38;
  *(v26 + 5) = v28;
  (*(v22 + 32))(&v26[v25], v23, v21);
  v29 = sub_1E673F530(&qword_1ED098AD0, &qword_1ED098AA0);
  sub_1E6802458(v24 + v35[0], sub_1E6805180, v26, v21, v36, v29, v16);

  v30 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v45 = v30;
  v46 = v31;
  v32 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v16, v13, v32);
  v33 = *(v14 + 8);
  v33(v16, v13);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v20, v13, v32);
  return (v33)(v20, v13);
}

uint64_t sub_1E6801738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = a5;
  v62 = a1;
  v60 = a6;
  *&v64 = a2;
  *(&v64 + 1) = a3;
  *v65 = a4;
  *&v65[8] = a5;
  v10 = type metadata accessor for StandardHorizontalStackView();
  v47 = *(v10 - 8);
  v45[1] = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v46 = v45 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098AD8);
  v57 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v48 = v45 - v12;
  v13 = sub_1E68B3750();
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v53 = v45 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098AE0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v58 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v52 = v45 - v18;
  v59 = sub_1E68B21D0();
  v77 = 0;
  v49 = a2;
  v50 = a4;
  v19 = v10;
  v51 = v6;
  sub_1E6801FF0(v62, &v64);
  v87 = *&v65[112];
  v88 = *&v65[128];
  v83 = *&v65[48];
  v84 = *&v65[64];
  v85 = *&v65[80];
  v86 = *&v65[96];
  v79 = v64;
  v80 = *v65;
  v81 = *&v65[16];
  v82 = *&v65[32];
  v90[8] = *&v65[112];
  v90[9] = *&v65[128];
  v90[4] = *&v65[48];
  v90[5] = *&v65[64];
  v90[6] = *&v65[80];
  v90[7] = *&v65[96];
  v90[0] = v64;
  v90[1] = *v65;
  v89 = v65[144];
  v91 = v65[144];
  v90[2] = *&v65[16];
  v90[3] = *&v65[32];
  sub_1E67612FC(&v79, v63, &qword_1ED098AE8);
  sub_1E6744A10(v90, &qword_1ED098AE8);
  *&v76[119] = v86;
  *&v76[135] = v87;
  *&v76[151] = v88;
  *&v76[55] = v82;
  *&v76[71] = v83;
  *&v76[87] = v84;
  *&v76[103] = v85;
  *&v76[7] = v79;
  *&v76[23] = v80;
  v76[167] = v89;
  *&v76[39] = v81;
  v56 = v77;
  sub_1E68B2E90();
  v20 = 1;
  sub_1E68B1F30();
  *(&v78[8] + 7) = *&v78[23];
  v21 = v62;
  *(&v78[10] + 7) = *&v78[25];
  *(&v78[12] + 7) = *&v78[27];
  *(&v78[6] + 7) = *&v78[21];
  *(v78 + 7) = *&v78[15];
  *(&v78[2] + 7) = *&v78[17];
  *(&v78[4] + 7) = *&v78[19];
  v22 = a3;
  v24 = v53;
  v23 = v54;
  v25 = v62 + *(v10 + 76);
  v26 = v55;
  (*(v54 + 16))(v53, v25, v55);
  LODWORD(v6) = (*(*(v22 - 8) + 48))(v24, 1, v22);
  (*(v23 + 8))(v24, v26);
  v27 = v52;
  if (v6 == 1 && *(v21 + *(v19 + 52) + 136) == 1)
  {
    v29 = v46;
    v28 = v47;
    (*(v47 + 16))(v46, v21, v19);
    v30 = (*(v28 + 80) + 48) & ~*(v28 + 80);
    v31 = swift_allocObject();
    v32 = v50;
    *(v31 + 2) = v49;
    *(v31 + 3) = v22;
    v33 = v51;
    *(v31 + 4) = v32;
    *(v31 + 5) = v33;
    (*(v28 + 32))(&v31[v30], v29, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED097F88);
    sub_1E68055E8();
    v34 = v48;
    sub_1E68B2C20();
    *(v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098B18) + 36)) = 0;
    v35 = sub_1E68B2B50();
    KeyPath = swift_getKeyPath();
    v37 = (v34 + *(v61 + 36));
    *v37 = KeyPath;
    v37[1] = v35;
    sub_1E6761420(v34, v27, &qword_1ED098AD8);
    v20 = 0;
  }

  (*(v57 + 56))(v27, v20, 1, v61);
  v38 = v58;
  sub_1E67612FC(v27, v58, &qword_1ED098AE0);
  *(&v63[16] + 1) = *&v76[112];
  *(&v63[18] + 1) = *&v76[128];
  *(&v63[20] + 1) = *&v76[144];
  *(&v63[8] + 1) = *&v76[48];
  *(&v63[10] + 1) = *&v76[64];
  *(&v63[12] + 1) = *&v76[80];
  *(&v63[14] + 1) = *&v76[96];
  *(&v63[2] + 1) = *v76;
  *(&v63[4] + 1) = *&v76[16];
  *(&v63[6] + 1) = *&v76[32];
  *(&v63[33] + 1) = *&v78[10];
  *(&v63[35] + 1) = *&v78[12];
  *(&v63[31] + 1) = *&v78[8];
  *(&v63[23] + 1) = *v78;
  *(&v63[25] + 1) = *&v78[2];
  *(&v63[27] + 1) = *&v78[4];
  v39 = v59;
  v63[0] = v59;
  v63[1] = 0;
  v40 = v56;
  LOBYTE(v63[2]) = v56;
  *(&v63[22] + 1) = *&v76[160];
  v63[37] = *(&v78[13] + 7);
  *(&v63[29] + 1) = *&v78[6];
  LOBYTE(v63[38]) = 0;
  v41 = v27;
  v42 = v60;
  memcpy(v60, v63, 0x131uLL);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098AF0);
  sub_1E67612FC(v38, v42 + *(v43 + 48), &qword_1ED098AE0);
  sub_1E67612FC(v63, &v64, &qword_1ED098AF8);
  sub_1E6744A10(v41, &qword_1ED098AE0);
  sub_1E6744A10(v38, &qword_1ED098AE0);
  *&v65[113] = *&v76[112];
  *&v65[129] = *&v76[128];
  v66 = *&v76[144];
  *&v65[49] = *&v76[48];
  *&v65[65] = *&v76[64];
  *&v65[81] = *&v76[80];
  *&v65[97] = *&v76[96];
  *&v65[1] = *v76;
  *&v65[17] = *&v76[16];
  *&v65[33] = *&v76[32];
  v73 = *&v78[10];
  *v74 = *&v78[12];
  v72 = *&v78[8];
  v68 = *v78;
  v69 = *&v78[2];
  v70 = *&v78[4];
  v64 = v39;
  v65[0] = v40;
  v67 = *&v76[160];
  *&v74[15] = *(&v78[13] + 7);
  v71 = *&v78[6];
  v75 = 0;
  return sub_1E6744A10(&v64, &qword_1ED098AF8);
}

uint64_t sub_1E6801FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StandardHorizontalStackView();
  v5 = v4;
  v6 = (a1 + *(v4 + 68));
  v7 = v6[1];
  v8 = v6[2];
  v44 = v6[3];
  v39 = *v6;
  if (v44)
  {
    v47 = *(a1 + *(v4 + 52) + 120);
    v45 = *v6;
    KeyPath = swift_getKeyPath();
    v9 = v8 & 1;
    v10 = v7;
  }

  else
  {
    v45 = 0;
    KeyPath = 0;
    v10 = 0;
    v9 = 0;
    v47 = 0;
  }

  v11 = (a1 + v5[15]);
  v13 = *v11;
  v12 = v11[1];
  v14 = v11[2];
  v42 = v11[3];
  v34 = v12;
  v35 = *v11;
  v33 = v14;
  if (v42)
  {
    v40 = *(a1 + v5[13] + 104);
    v43 = swift_getKeyPath();
    v36 = v14 & 1;
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v36 = 0;
    v43 = 0;
    v40 = 0;
  }

  v37 = v8;
  v38 = v7;
  v15 = (a1 + v5[16]);
  v16 = *v15;
  v17 = v15[2];
  v18 = v15[3];
  v31 = v15[1];
  v32 = v17;
  v30 = *v15;
  if (v18)
  {
    v19 = *(a1 + v5[13] + 112);
    v20 = v15[1];
    v21 = v17;
    v22 = swift_getKeyPath();
    v23 = v21 & 1;
    v24 = v16;
    v25 = v20;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v23 = 0;
    v22 = 0;
    v19 = 0;
  }

  v29 = v24;
  *a2 = v45;
  *(a2 + 8) = v10;
  v41 = v10;
  *(a2 + 16) = v9;
  *(a2 + 24) = v44;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v47;
  *(a2 + 48) = 0;
  *(a2 + 56) = v13;
  *(a2 + 64) = v12;
  *(a2 + 72) = v36;
  *(a2 + 80) = v42;
  *(a2 + 88) = v43;
  *(a2 + 96) = v40;
  *(a2 + 104) = 0;
  *(a2 + 112) = v24;
  *(a2 + 120) = v25;
  *(a2 + 128) = v23;
  *(a2 + 136) = v18;
  *(a2 + 144) = v22;
  *(a2 + 152) = v19;
  *(a2 + 160) = 0;
  v26 = v25;
  v27 = v23;
  sub_1E673F228(v39, v38, v37, v44);
  sub_1E673F228(v35, v34, v33, v42);
  sub_1E673F228(v30, v31, v32, v18);
  sub_1E677EFE4(v45, v41, v9, v44);
  sub_1E677EFE4(v13, v12, v36, v42);
  sub_1E677EFE4(v29, v26, v27, v18);
  sub_1E677F034(v29, v26, v27, v18);
  sub_1E677F034(v13, v12, v36, v42);
  return sub_1E677F034(v45, v41, v9, v44);
}

uint64_t sub_1E68022E4(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for StandardHorizontalStackView() + 80);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  sub_1E677A174(v2);
}

double sub_1E680236C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1E68B2BA0();
  v3 = sub_1E68B2620();
  KeyPath = swift_getKeyPath();
  sub_1E68B2EA0();
  sub_1E68B1F30();
  *(a1 + 72) = v9;
  *(a1 + 88) = v10;
  *(a1 + 104) = v11;
  *(a1 + 120) = v12;
  result = *&v6;
  *(a1 + 24) = v6;
  *(a1 + 40) = v7;
  *a1 = v2;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v3;
  *(a1 + 56) = v8;
  return result;
}

uint64_t sub_1E6802458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v77 = a6;
  v78 = a2;
  v79 = a3;
  v80 = a7;
  v76 = a1;
  v73 = *(a4 + 16);
  sub_1E68B1E40();
  v10 = sub_1E68B1E40();
  v75 = a4;
  v72 = *(a4 + 32);
  v89 = v72;
  v90 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v88 = sub_1E67979F0();
  v11 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  v85 = v10;
  v86 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E68B2C50();
  swift_getTupleTypeMetadata2();
  v65 = sub_1E68B2F00();
  v64 = swift_getWitnessTable();
  v12 = sub_1E68B2CC0();
  v68 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v67 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v66 = v61 - v15;
  v74 = a5;
  swift_getTupleTypeMetadata2();
  v16 = sub_1E68B2F00();
  v17 = swift_getWitnessTable();
  v61[1] = v16;
  v61[0] = v17;
  v18 = sub_1E68B2C50();
  v63 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v62 = v61 - v22;
  v23 = sub_1E68B1DE0();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v61 - v28;
  v30 = sub_1E68B2220();
  v70 = *(v30 - 8);
  v71 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v69 = v61 - v31;
  sub_1E677A200(v29);
  (*(v24 + 104))(v26, *MEMORY[0x1E697E6C0], v23);
  LOBYTE(a5) = sub_1E68B1DD0();
  v32 = *(v24 + 8);
  v32(v26, v23);
  v33 = (v32)(v29, v23);
  if (a5)
  {
    MEMORY[0x1EEE9AC00](v33);
    v35 = *(v34 + 24);
    v61[-10] = v73;
    v61[-9] = v35;
    v36 = v72;
    v61[-8] = v74;
    v61[-7] = v36;
    v37 = v76;
    v38 = v77;
    v61[-6] = *(v34 + 40);
    v61[-5] = v38;
    v61[-4] = v37;
    v61[-3] = v7;
    v39 = v79;
    v61[-2] = v78;
    v61[-1] = v39;
    sub_1E68B2140();
    sub_1E68B2C40();
    v40 = swift_getWitnessTable();
    v41 = v62;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v20, v18, v40);
    v42 = *(v63 + 8);
    v42(v20, v18);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v41, v18, v40);
    swift_getWitnessTable();
    v43 = v69;
    sub_1E6744CC0(v20, v18);
    v42(v20, v18);
    v44 = v41;
    v45 = v18;
  }

  else
  {
    v46 = sub_1E68B21D0();
    MEMORY[0x1EEE9AC00](v46);
    v48 = *(v47 + 24);
    v61[-10] = v73;
    v61[-9] = v48;
    v49 = v72;
    v61[-8] = v74;
    v61[-7] = v49;
    v50 = v76;
    v51 = v77;
    v61[-6] = *(v47 + 40);
    v61[-5] = v51;
    v61[-4] = v7;
    v61[-3] = v50;
    v52 = v79;
    v61[-2] = v78;
    v61[-1] = v52;
    v53 = v67;
    sub_1E68B2CB0();
    v54 = swift_getWitnessTable();
    v55 = v66;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v53, v12, v54);
    v42 = *(v68 + 8);
    v42(v53, v12);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v55, v12, v54);
    swift_getWitnessTable();
    v43 = v69;
    sub_1E6744DB8(v53, v18, v12);
    v42(v53, v12);
    v44 = v55;
    v45 = v12;
  }

  v42(v44, v45);
  v56 = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  v81 = v56;
  v82 = v57;
  v58 = v71;
  v59 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v43, v58, v59);
  return (*(v70 + 8))(v43, v58);
}

uint64_t sub_1E6802CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v55 = a6;
  v64 = a4;
  v65 = a3;
  v56 = a2;
  v57 = a1;
  v69 = a9;
  v70 = a7;
  v66 = *(a7 - 8);
  v53 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v68 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v52 - v15;
  v16 = sub_1E68B1E40();
  v52 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v19 = sub_1E68B1E40();
  v54 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - v20;
  v81 = a8;
  v82 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v23 = sub_1E67979F0();
  v79 = WitnessTable;
  v80 = v23;
  v24 = swift_getWitnessTable();
  v75 = v19;
  v76 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v59 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v27 = &v52 - v26;
  v60 = v28;
  v62 = sub_1E68B1E40();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v58 = &v52 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v71 = &v52 - v33;
  v75 = a5;
  v76 = v55;
  v77 = a8;
  v78 = v53;
  v34 = v56 + *(type metadata accessor for StandardHorizontalStackView() + 52);
  sub_1E68B2780();
  View.artworkClipShape(_:)(*(v34 + 16), *(v34 + 24), v16);
  (*(v52 + 8))(v18, v16);
  sub_1E68B24B0();
  sub_1E68B2E80();
  sub_1E68B2960();
  (*(v54 + 8))(v21, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E68B77B0;
  LOBYTE(v21) = sub_1E68B2510();
  *(inited + 32) = v21;
  v36 = sub_1E68B2520();
  *(inited + 33) = v36;
  sub_1E68B2540();
  sub_1E68B2540();
  if (sub_1E68B2540() != v21)
  {
    sub_1E68B2540();
  }

  v57 = a11;

  sub_1E68B2540();
  if (sub_1E68B2540() != v36)
  {
    sub_1E68B2540();
  }

  v75 = v19;
  v76 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v58;
  v39 = v60;
  sub_1E68B2A70();
  (*(v59 + 8))(v27, v39);
  v74[2] = OpaqueTypeConformance2;
  v74[3] = MEMORY[0x1E697E5D8];
  v40 = v62;
  v59 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v38, v40, v59);
  v41 = v61;
  v60 = *(v61 + 8);
  v42 = v60(v38, v40);
  v43 = v68;
  v65(v42);
  v44 = v67;
  v45 = v70;
  v46 = v57;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v43, v70, v57);
  v47 = v66;
  v65 = *(v66 + 8);
  (v65)(v43, v45);
  v48 = v63;
  (*(v41 + 16))(v63, v71, v40);
  v75 = v48;
  (*(v47 + 16))(v43, v44, v45);
  v76 = v43;
  v74[0] = v40;
  v74[1] = v45;
  v72 = v59;
  v73 = v46;
  sub_1E6848F14(&v75, 2uLL, v74);
  v49 = v65;
  (v65)(v44, v45);
  v50 = v60;
  v60(v71, v40);
  v49(v43, v45);
  return v50(v48, v40);
}

uint64_t sub_1E68034D8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void)@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v45 = a7;
  v51 = a4;
  v52 = a3;
  v47 = a2;
  v46 = a1;
  v53 = a9;
  v50 = *(a7 - 8);
  v54 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v41 - v16;
  sub_1E68B1E40();
  v17 = sub_1E68B1E40();
  v74 = a8;
  v75 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v19 = sub_1E67979F0();
  v72 = WitnessTable;
  v73 = v19;
  v20 = swift_getWitnessTable();
  v66 = v17;
  v67 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  v66 = v17;
  v67 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v21 = sub_1E68B2C50();
  v44 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v43 = &v41 - v25;
  v66 = a5;
  v67 = a6;
  v68 = a8;
  v69 = a10;
  type metadata accessor for StandardHorizontalStackView();
  v55 = a5;
  v56 = a6;
  v26 = v45;
  v57 = v45;
  v58 = a8;
  v27 = v54;
  v59 = a10;
  v60 = v54;
  v61 = v47;
  v62 = v46;
  sub_1E68B2140();
  v42 = v23;
  sub_1E68B2C40();
  v46 = swift_getWitnessTable();
  v28 = v43;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v23, v21, v46);
  v29 = v44;
  v47 = *(v44 + 8);
  v30 = v47(v23, v21);
  v31 = v48;
  v52(v30);
  v32 = v49;
  v33 = v26;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v31, v26, v27);
  v34 = v50;
  v35 = *(v50 + 8);
  v35(v31, v33);
  v36 = *(v29 + 16);
  v37 = v42;
  v36(v42, v28, v21);
  v66 = v37;
  (*(v34 + 16))(v31, v32, v33);
  v67 = v31;
  v65[0] = v21;
  v65[1] = v33;
  v63 = v46;
  v64 = v54;
  sub_1E6848F14(&v66, 2uLL, v65);
  v35(v32, v33);
  v38 = v28;
  v39 = v47;
  v47(v38, v21);
  v35(v31, v33);
  return v39(v37, v21);
}

uint64_t sub_1E68039FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v41 = a6;
  v40 = a4;
  v43 = a1;
  v50 = a7;
  v10 = sub_1E68B1E40();
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = sub_1E68B1E40();
  v44 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v59 = a5;
  v60 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v39 = WitnessTable;
  v17 = sub_1E67979F0();
  v57 = WitnessTable;
  v58 = v17;
  v18 = swift_getWitnessTable();
  v53 = v13;
  v54 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v21 = &v39 - v20;
  v48 = v22;
  v23 = sub_1E68B1E40();
  v49 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v45 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v46 = &v39 - v26;
  v53 = a3;
  v54 = v40;
  v55 = a5;
  v56 = v41;
  v27 = a2 + *(type metadata accessor for StandardHorizontalStackView() + 52);
  v28 = v13;
  sub_1E68B2780();
  View.artworkClipShape(_:)(*(v27 + 16), *(v27 + 24), v10);
  (*(v42 + 8))(v12, v10);
  v29 = v18;
  sub_1E68B24B0();
  sub_1E68B2E80();
  sub_1E68B2960();
  (*(v44 + 8))(v15, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E68B77B0;
  LOBYTE(v18) = sub_1E68B2510();
  *(inited + 32) = v18;
  v31 = sub_1E68B2520();
  *(inited + 33) = v31;
  sub_1E68B2540();
  sub_1E68B2540();
  if (sub_1E68B2540() != v18)
  {
    sub_1E68B2540();
  }

  sub_1E68B2540();
  if (sub_1E68B2540() != v31)
  {
    sub_1E68B2540();
  }

  v53 = v28;
  v54 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v45;
  v34 = v48;
  sub_1E68B2A70();
  (*(v47 + 8))(v21, v34);
  v51 = OpaqueTypeConformance2;
  v52 = MEMORY[0x1E697E5D8];
  v35 = swift_getWitnessTable();
  v36 = v46;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v33, v23, v35);
  v37 = *(v49 + 8);
  v37(v33, v23);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v36, v23, v35);
  return (v37)(v36, v23);
}

uint64_t sub_1E6803FBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E68B2040();
  *a1 = result;
  return result;
}

BOOL _s15FitnessCanvasUI33StandardHorizontalStackViewLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return result;
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 48);
  v6.f64[0] = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);
  v11 = *(a1 + 104);
  v10 = *(a1 + 112);
  v12 = *(a1 + 120);
  v13.f64[0] = *(a1 + 128);
  v14 = *(a1 + 136);
  v16 = *(a1 + 144);
  v15 = *(a1 + 152);
  v17 = *(a2 + 24);
  v19 = *(a2 + 32);
  v18 = *(a2 + 48);
  v20.f64[0] = *(a2 + 64);
  v21 = *(a2 + 72);
  v22 = *(a2 + 88);
  v23 = *(a2 + 96);
  v24 = *(a2 + 104);
  v25 = *(a2 + 112);
  v26 = *(a2 + 120);
  v27.f64[0] = *(a2 + 128);
  if (*(a1 + 24))
  {
    result = 0;
    v28 = vmovn_s64(vceqq_f64(v5, v19));
    v6.f64[1] = *(a1 + 80);
    v20.f64[1] = *(a2 + 80);
    v29 = vmovn_s32(vuzp1q_s32(vceqq_f64(v4, v18), vceqq_f64(v6, v20)));
    v29.i16[0] = vminv_u16(v29);
    v30 = v29.i32[0] & v28.i32[1] & (v13.f64[0] == v27.f64[0]);
    if (v16 != *(a2 + 144))
    {
      v30 = 0;
    }

    v31 = v9 ^ v23 ^ 1;
    if (v7 != v21 || v8 != v22 || v11 != v24)
    {
      v30 = 0;
    }

    v34 = (v12 == v26) & v31;
    if (v10 != v25)
    {
      v30 = 0;
    }

    if ((v30 & v34 & v17) != 1 || (v28.i8[0] & 1) == 0)
    {
      return result;
    }

LABEL_32:
    if (((v14 ^ *(a2 + 136)) & 1) == 0)
    {
      return v15 == *(a2 + 152);
    }

    return result;
  }

  result = 0;
  v35 = *(a1 + 16);
  v6.f64[1] = *(a1 + 80);
  v13.f64[1] = *(a1 + 144);
  v20.f64[1] = *(a2 + 80);
  v27.f64[1] = *(a2 + 144);
  v36 = vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v5, v19), vceqq_f64(v4, v18)), vuzp1q_s32(vceqq_f64(v6, v20), vceqq_f64(v13, v27))))) & (v7 == v21);
  if (v35 != *(a2 + 16))
  {
    v36 = 0;
  }

  if (v8 != v22)
  {
    v36 = 0;
  }

  if (v11 != v24 || v10 != v25)
  {
    v36 = 0;
  }

  v38 = v36 & ~v17;
  if (v12 != v26)
  {
    v38 = 0;
  }

  if (v9 == v23 && v38)
  {
    goto LABEL_32;
  }

  return result;
}

unint64_t sub_1E68041C8()
{
  result = qword_1ED098A48;
  if (!qword_1ED098A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098A48);
  }

  return result;
}

unint64_t sub_1E680421C()
{
  result = qword_1EE2EBC28;
  if (!qword_1EE2EBC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBC28);
  }

  return result;
}

unint64_t sub_1E6804270()
{
  result = qword_1EE2EC870;
  if (!qword_1EE2EC870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC870);
  }

  return result;
}

unint64_t sub_1E68042C4()
{
  result = qword_1ED098A58;
  if (!qword_1ED098A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098A58);
  }

  return result;
}

unint64_t sub_1E6804318()
{
  result = qword_1ED098A60;
  if (!qword_1ED098A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098A60);
  }

  return result;
}

unint64_t sub_1E6804370()
{
  result = qword_1ED098A68;
  if (!qword_1ED098A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098A68);
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

uint64_t sub_1E68043F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 160))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 96);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E6804444(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 96) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StandardHorizontalStackViewLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StandardHorizontalStackViewLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1E6804618()
{
  sub_1E674828C();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1E673ED38();
      if (v2 <= 0x3F)
      {
        sub_1E68B3750();
        if (v3 <= 0x3F)
        {
          sub_1E673ED88();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E68046F8(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1E68B1DE0() - 8) + 64);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  if (v6 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v6;
  }

  v10 = *(v8 + 84);
  v11 = *(*(a3 + 24) - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  v15 = *(v11 + 80);
  v16 = *(v11 + 64);
  if (v12)
  {
    v17 = v12 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v10 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = *(v8 + 84);
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  if (!v12)
  {
    ++v16;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v14 + 7;
  v20 = v15 + 32;
  v21 = v16 + 7;
  if (v18 < a2)
  {
    v22 = ((v21 + ((v20 + ((((((((v19 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v13 + 168) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v23 = v22 & 0xFFFFFFF8;
    if ((v22 & 0xFFFFFFF8) != 0)
    {
      v24 = 2;
    }

    else
    {
      v24 = a2 - v18 + 1;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = *(a1 + v22);
        if (v27)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v27 = *(a1 + v22);
        if (v27)
        {
          goto LABEL_30;
        }
      }
    }

    else if (v26)
    {
      v27 = *(a1 + v22);
      if (v27)
      {
LABEL_30:
        v28 = v27 - 1;
        if (v23)
        {
          v28 = 0;
          v29 = *a1;
        }

        else
        {
          v29 = 0;
        }

        return v18 + (v29 | v28) + 1;
      }
    }
  }

  v30 = (((a1 + v9 + 8) & 0xFFFFFFFFFFFFFFF8) + v13 + 160) & ~v13;
  if (v10 == v18)
  {
    v31 = *(*(*(a3 + 16) - 8) + 48);

    return v31(v30, v10, v7);
  }

  v33 = (v20 + ((((((((v19 + v30) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
  if (v17 == v18)
  {
    if (v12 >= 2)
    {
      v35 = (*(v11 + 48))(v33);
      if (v35 >= 2)
      {
        return v35 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v34 = *((v21 + v33) & 0xFFFFFFFFFFFFFFF8);
  if (v34 >= 0xFFFFFFFF)
  {
    LODWORD(v34) = -1;
  }

  return (v34 + 1);
}

void sub_1E68049CC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(*(sub_1E68B1DE0() - 8) + 64);
  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(*(a4 + 24) - 8);
  v15 = *(v14 + 84);
  v16 = *(v12 + 80);
  v17 = *(v12 + 64);
  v18 = *(v14 + 80);
  v19 = *(v14 + 64);
  if (v15)
  {
    v20 = v15 - 1;
  }

  else
  {
    v20 = 0;
  }

  if (v13 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = *(v12 + 84);
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  v22 = v17 + 7;
  v23 = (v18 + 32 + ((((((((v17 + 7 + (((v10 & 0xFFFFFFFFFFFFFFF8) + v16 + 168) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v18;
  if (!v15)
  {
    ++v19;
  }

  v24 = v19 + 7;
  v25 = ((v24 + v23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v21 < a3)
  {
    if (((v24 + v23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v26 = a3 - v21 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v8 = v27;
    }

    else
    {
      v8 = 0;
    }
  }

  if (a2 > v21)
  {
    if (v25)
    {
      v28 = 1;
    }

    else
    {
      v28 = a2 - v21;
    }

    if (v25)
    {
      v29 = ~v21 + a2;
      bzero(a1, v25);
      *a1 = v29;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(a1 + v25) = v28;
      }

      else
      {
        *(a1 + v25) = v28;
      }
    }

    else if (v8)
    {
      *(a1 + v25) = v28;
    }

    return;
  }

  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *(a1 + v25) = 0;
  }

  else if (v8)
  {
    *(a1 + v25) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!a2)
  {
    return;
  }

LABEL_44:
  v30 = (((a1 + v10 + 8) & 0xFFFFFFFFFFFFFFF8) + v16 + 160) & ~v16;
  if (v13 == v21)
  {
    v31 = *(v12 + 56);

    v31(v30, a2, v13, v11);
  }

  else
  {
    v32 = (v18 + 32 + ((((((((v22 + v30) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v18;
    if (v20 == v21)
    {
      v33 = *(v14 + 56);

      v33(v32, (a2 + 1));
    }

    else
    {
      v34 = ((v24 + v32) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v34 = a2 & 0x7FFFFFFF;
        v34[1] = 0;
      }

      else
      {
        *v34 = (a2 - 1);
      }
    }
  }
}

unint64_t sub_1E6804D08()
{
  result = qword_1ED098A70;
  if (!qword_1ED098A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098A70);
  }

  return result;
}

unint64_t sub_1E6804D60()
{
  result = qword_1ED098A78;
  if (!qword_1ED098A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098A78);
  }

  return result;
}

unint64_t sub_1E6804DB8()
{
  result = qword_1ED098A80;
  if (!qword_1ED098A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098A80);
  }

  return result;
}

unint64_t sub_1E6804E68()
{
  result = qword_1ED098AA8;
  if (!qword_1ED098AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098A98);
    sub_1E6804EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098AA8);
  }

  return result;
}

unint64_t sub_1E6804EEC()
{
  result = qword_1ED098AB0;
  if (!qword_1ED098AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098A90);
    sub_1E6804FA8();
    sub_1E68050F0(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098AB0);
  }

  return result;
}

unint64_t sub_1E6804FA8()
{
  result = qword_1ED098AB8;
  if (!qword_1ED098AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098A88);
    sub_1E6805034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098AB8);
  }

  return result;
}

unint64_t sub_1E6805034()
{
  result = qword_1ED098AC0;
  if (!qword_1ED098AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098AC8);
    sub_1E68050F0(&qword_1EE2EA4E8, MEMORY[0x1E697D6D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098AC0);
  }

  return result;
}

uint64_t sub_1E68050F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6805180@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for StandardHorizontalStackView() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1E6801738(v8, v3, v4, v5, v6, a1);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 16);
  v13 = *(v0 + 24);
  v2 = type metadata accessor for StandardHorizontalStackView();
  v3 = (*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E68B1DE0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v4 + v2[14], v1);
  v6 = v4 + v2[15];
  if (*(v6 + 24))
  {
    sub_1E673F0D4(*v6, *(v6 + 8), *(v6 + 16));
  }

  v7 = v4 + v2[16];
  if (*(v7 + 24))
  {
    sub_1E673F0D4(*v7, *(v7 + 8), *(v7 + 16));
  }

  v8 = v4 + v2[17];
  if (*(v8 + 24))
  {
    sub_1E673F0D4(*v8, *(v8 + 8), *(v8 + 16));
  }

  v9 = v4 + v2[18];
  if (*(v9 + 24))
  {
    sub_1E673F0D4(*v9, *(v9 + 8), *(v9 + 16));
  }

  v10 = v2[19];
  v11 = *(v13 - 8);
  if (!(*(v11 + 48))(v4 + v10, 1, v13))
  {
    (*(v11 + 8))(v4 + v10, v13);
  }

  return swift_deallocObject();
}

unint64_t sub_1E68055E8()
{
  result = qword_1ED098B00;
  if (!qword_1ED098B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ED097F88);
    sub_1E6805674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098B00);
  }

  return result;
}

unint64_t sub_1E6805674()
{
  result = qword_1ED098B08;
  if (!qword_1ED098B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098B10);
    sub_1E673F530(&qword_1EE2EA5B0, &qword_1ED0981D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098B08);
  }

  return result;
}

uint64_t sub_1E680572C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001E68E2580 == a2;
  if (v3 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2CC0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E68E2CE0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEE00797469736E65 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2D00 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E694C656C746974 && a2 == 0xEE0074696D694C65 || (sub_1E68B3B00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E68E2BA0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2BC0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x486B726F77747261 && a2 == 0xED00007468676965 || (sub_1E68B3B00() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x76656843776F6873 && a2 == 0xEB000000006E6F72 || (sub_1E68B3B00() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2D20 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E68E2D40 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

__n128 CanvasItemPlaceholder.content.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 52);
  v4 = *(v3 + 208);
  *(a2 + 192) = *(v3 + 192);
  *(a2 + 208) = v4;
  *(a2 + 224) = *(v3 + 224);
  *(a2 + 233) = *(v3 + 233);
  v5 = *(v3 + 144);
  *(a2 + 128) = *(v3 + 128);
  *(a2 + 144) = v5;
  v6 = *(v3 + 176);
  *(a2 + 160) = *(v3 + 160);
  *(a2 + 176) = v6;
  v7 = *(v3 + 80);
  *(a2 + 64) = *(v3 + 64);
  *(a2 + 80) = v7;
  v8 = *(v3 + 112);
  *(a2 + 96) = *(v3 + 96);
  *(a2 + 112) = v8;
  v9 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v9;
  result = *(v3 + 32);
  v11 = *(v3 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v11;
  return result;
}

__n128 CanvasItemPlaceholder.init(identifier:content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for CanvasItemPlaceholder() + 52);
  v7 = *(a2 + 208);
  *(v6 + 192) = *(a2 + 192);
  *(v6 + 208) = v7;
  *(v6 + 224) = *(a2 + 224);
  *(v6 + 233) = *(a2 + 233);
  v8 = *(a2 + 144);
  *(v6 + 128) = *(a2 + 128);
  *(v6 + 144) = v8;
  v9 = *(a2 + 176);
  *(v6 + 160) = *(a2 + 160);
  *(v6 + 176) = v9;
  v10 = *(a2 + 80);
  *(v6 + 64) = *(a2 + 64);
  *(v6 + 80) = v10;
  v11 = *(a2 + 112);
  *(v6 + 96) = *(a2 + 96);
  *(v6 + 112) = v11;
  v12 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v12;
  result = *(a2 + 32);
  v14 = *(a2 + 48);
  *(v6 + 32) = result;
  *(v6 + 48) = v14;
  return result;
}

uint64_t sub_1E6805CE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E6805DBC(char a1)
{
  if (a1)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1E6805E38()
{
  sub_1E68B3B70();
  sub_1E672A420(v2, *v0);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6805E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6805CE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6805ECC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E67634C8();
  *a1 = result;
  return result;
}

uint64_t sub_1E6805F00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6805F54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasItemPlaceholder.encode(to:)(void *a1, uint64_t a2)
{
  v20[0] = a2;
  v3 = *(a2 + 16);
  v21 = *(a2 + 32);
  v22 = v3;
  v24 = v3;
  v25 = v21;
  type metadata accessor for CanvasItemPlaceholder.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1E68B3AC0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = v4;
  v9 = v20[1];
  sub_1E68B3BD0();
  v39 = 0;
  v10 = v40;
  sub_1E68B3AB0();
  if (!v10)
  {
    v11 = (v9 + *(v20[0] + 52));
    v12 = v11[13];
    v36 = v11[12];
    v37 = v12;
    *v38 = v11[14];
    *&v38[9] = *(v11 + 233);
    v13 = v11[9];
    v32 = v11[8];
    v33 = v13;
    v14 = v11[11];
    v34 = v11[10];
    v35 = v14;
    v15 = v11[5];
    v28 = v11[4];
    v29 = v15;
    v16 = v11[7];
    v30 = v11[6];
    v31 = v16;
    v17 = v11[1];
    v24 = *v11;
    v25 = v17;
    v18 = v11[3];
    v26 = v11[2];
    v27 = v18;
    v23 = 1;
    sub_1E68061E0();
    sub_1E68B3AB0();
  }

  return (*(v5 + 8))(v7, v8);
}

unint64_t sub_1E68061E0()
{
  result = qword_1ED098B20;
  if (!qword_1ED098B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098B20);
  }

  return result;
}

uint64_t CanvasItemPlaceholder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a6;
  v41 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49 = v12;
  *(&v49 + 1) = v13;
  *&v50 = v14;
  *(&v50 + 1) = v15;
  type metadata accessor for CanvasItemPlaceholder.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v43 = sub_1E68B3A20();
  v40 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v17 = &v38 - v16;
  v45 = a2;
  *&v49 = a2;
  *(&v49 + 1) = a3;
  v42 = a3;
  *&v50 = a4;
  *(&v50 + 1) = a5;
  v18 = type metadata accessor for CanvasItemPlaceholder();
  v38 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v46 = v17;
  v21 = v64;
  sub_1E68B3BC0();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v40;
  v23 = v20;
  v64 = v18;
  v24 = v41;
  v25 = a1;
  LOBYTE(v49) = 0;
  v26 = v43;
  sub_1E68B3A00();
  (*(v24 + 32))(v23, v44, v45);
  v48 = 1;
  sub_1E680664C();
  sub_1E68B3A00();
  (*(v22 + 8))(v46, v26);
  v27 = v64;
  v28 = &v23[*(v64 + 52)];
  v29 = v62;
  *(v28 + 12) = v61;
  *(v28 + 13) = v29;
  *(v28 + 14) = v63[0];
  *(v28 + 233) = *(v63 + 9);
  v30 = v58;
  *(v28 + 8) = v57;
  *(v28 + 9) = v30;
  v31 = v60;
  *(v28 + 10) = v59;
  *(v28 + 11) = v31;
  v32 = v54;
  *(v28 + 4) = v53;
  *(v28 + 5) = v32;
  v33 = v56;
  *(v28 + 6) = v55;
  *(v28 + 7) = v33;
  v34 = v50;
  *v28 = v49;
  *(v28 + 1) = v34;
  v35 = v52;
  *(v28 + 2) = v51;
  *(v28 + 3) = v35;
  v36 = v38;
  (*(v38 + 16))(v39, v23, v27);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return (*(v36 + 8))(v23, v27);
}

unint64_t sub_1E680664C()
{
  result = qword_1ED098B28[0];
  if (!qword_1ED098B28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED098B28);
  }

  return result;
}

uint64_t static CanvasItemPlaceholder.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1E68B3190())
  {
    *&v33 = a3;
    *(&v33 + 1) = a4;
    *&v34 = a5;
    *(&v34 + 1) = a6;
    v12 = type metadata accessor for CanvasItemPlaceholder();
    v13 = (a1 + *(v12 + 52));
    v14 = v13[13];
    v45 = v13[12];
    v46 = v14;
    v47[0] = v13[14];
    *(v47 + 9) = *(v13 + 233);
    v15 = v13[9];
    v41 = v13[8];
    v42 = v15;
    v16 = v13[11];
    v43 = v13[10];
    v44 = v16;
    v17 = v13[5];
    v37 = v13[4];
    v38 = v17;
    v18 = v13[7];
    v39 = v13[6];
    v40 = v18;
    v19 = v13[1];
    v33 = *v13;
    v34 = v19;
    v20 = v13[3];
    v35 = v13[2];
    v36 = v20;
    v21 = (a2 + *(v12 + 52));
    v22 = v21[13];
    v31[12] = v21[12];
    v31[13] = v22;
    *v32 = v21[14];
    *&v32[9] = *(v21 + 233);
    v23 = v21[9];
    v31[8] = v21[8];
    v31[9] = v23;
    v24 = v21[11];
    v31[10] = v21[10];
    v31[11] = v24;
    v25 = v21[5];
    v31[4] = v21[4];
    v31[5] = v25;
    v26 = v21[7];
    v31[6] = v21[6];
    v31[7] = v26;
    v27 = v21[1];
    v31[0] = *v21;
    v31[1] = v27;
    v28 = v21[3];
    v31[2] = v21[2];
    v31[3] = v28;
    v29 = _s15FitnessCanvasUI04LazyB11ItemContentO2eeoiySbAC_ACtFZ_0(&v33, v31);
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t CanvasItemPlaceholder.hashValue.getter()
{
  sub_1E68B3B70();
  sub_1E68B3140();
  LazyCanvasItemContent.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E6806964()
{
  sub_1E68B3B70();
  CanvasItemPlaceholder.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E68069D4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E6806A4C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xF3)
  {
    v7 = 243;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 249;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xF3)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 248);
    if (v17 >= 0xD)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * (((v6 + 7) & 0xF8) - 7));
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double sub_1E6806B98(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xF3)
  {
    v8 = 243;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 249;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0xF3)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xF3)
        {
          result = 0.0;
          *(v19 + 233) = 0u;
          *(v19 + 208) = 0u;
          *(v19 + 224) = 0u;
          *(v19 + 176) = 0u;
          *(v19 + 192) = 0u;
          *(v19 + 144) = 0u;
          *(v19 + 160) = 0u;
          *(v19 + 112) = 0u;
          *(v19 + 128) = 0u;
          *(v19 + 80) = 0u;
          *(v19 + 96) = 0u;
          *(v19 + 48) = 0u;
          *(v19 + 64) = 0u;
          *(v19 + 16) = 0u;
          *(v19 + 32) = 0u;
          *v19 = 0u;
          *v19 = a2 - 244;
        }

        else
        {
          *(v19 + 248) = -a2;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 249);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

uint64_t sub_1E6806E08(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E6806E44(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t CanvasSectionViewDescriptor.header.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 164);
  type metadata accessor for CanvasSectionHeader();
  v5 = sub_1E68B3750();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t CanvasSectionViewDescriptor.identifier.getter(uint64_t a1)
{
  v1 = sub_1E6730FE0(a1);

  return v1;
}

uint64_t CanvasSectionViewDescriptor.items.getter(uint64_t a1)
{
  sub_1E674B098(a1);
}

uint64_t CanvasSectionViewDescriptor.items.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 172);

  *(v2 + v4) = a1;
  return result;
}

uint64_t CanvasSectionViewDescriptor.metrics.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 176);
  v5 = sub_1E68B3750();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CanvasSectionViewDescriptor.init(identifier:header:footer:items:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v10 = *a4;
  v11 = type metadata accessor for CanvasSectionViewDescriptor();
  v12 = &a7[v11[42]];
  *v12 = a1;
  v12[1] = a2;
  v13 = v11[41];
  type metadata accessor for CanvasSectionHeader();
  v14 = sub_1E68B3750();
  (*(*(v14 - 8) + 32))(&a7[v13], a3, v14);
  *a7 = v10;
  *&a7[v11[43]] = a5;
  v15 = v11[44];
  v16 = sub_1E68B3750();
  return (*(*(v16 - 8) + 32))(&a7[v15], a6, v16);
}

uint64_t sub_1E68071F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746F6F66 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E680739C(unsigned __int8 a1)
{
  v1 = 0x7265746F6F66;
  v2 = 0x696669746E656469;
  v3 = 0x736D657469;
  if (a1 != 3)
  {
    v3 = 0x7363697274656DLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x726564616568;
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

uint64_t sub_1E680748C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E68071F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E68074EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6807540(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E6807594@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1E6730FE0(a1);
  a2[1] = v3;
}

uint64_t sub_1E68075D8(uint64_t a1)
{
  v1 = sub_1E6730FE0(a1);

  return v1;
}

uint64_t CanvasSectionViewDescriptor.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  v13 = *(a2 + 88);
  v14 = *(a2 + 96);
  v15 = *(a2 + 104);
  v16 = *(a2 + 112);
  v17 = *(a2 + 120);
  v18 = *(a2 + 128);
  v19 = *(a2 + 136);
  v21 = *(a2 + 144);
  v20 = *(a2 + 152);
  v46 = v4;
  v52 = v4;
  v53 = v5;
  v43 = v5;
  v42 = v6;
  v54 = v6;
  v55 = v7;
  v41 = v7;
  v40 = v8;
  v56 = v8;
  v57 = v9;
  v31[2] = v9;
  v45 = v10;
  v58 = v10;
  v59 = v11;
  v39 = v11;
  v47 = v12;
  v60 = v12;
  v61 = v13;
  v38 = v13;
  v37 = v14;
  v62 = v14;
  v63 = v15;
  v36 = v15;
  v35 = v16;
  v64 = v16;
  v65 = v17;
  v34 = v17;
  v33 = v18;
  v66 = v18;
  v67 = v19;
  v31[1] = v19;
  v44 = v21;
  v68 = v21;
  v69 = v20;
  v32 = v20;
  type metadata accessor for CanvasSectionViewDescriptor.CodingKeys();
  swift_getWitnessTable();
  v22 = sub_1E68B3AC0();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v31 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = v48;
  sub_1E68B3BD0();
  LOBYTE(v52) = *v26;
  LOBYTE(v70) = 0;
  sub_1E674B0D4();
  v27 = v49;
  sub_1E68B3AB0();
  if (!v27)
  {
    v49 = v23;
    LOBYTE(v70) = 1;
    v29 = v46;
    v52 = v46;
    v53 = v45;
    v54 = v47;
    v55 = v44;
    type metadata accessor for CanvasSectionHeader();
    swift_getWitnessTable();
    sub_1E68B3A60();
    v30 = v29;
    LOBYTE(v52) = 2;
    sub_1E68B3A70();
    v23 = v49;
    v70 = *&v26[*(a2 + 172)];
    v51 = 3;
    v52 = v30;
    v53 = v43;
    v54 = v42;
    v55 = v41;
    v56 = v40;
    v57 = v39;
    v58 = v47;
    v59 = v38;
    v60 = v37;
    v61 = v36;
    v62 = v35;
    v63 = v34;
    v64 = v33;
    v65 = v32;
    type metadata accessor for CanvasItemDescriptor();
    sub_1E68B33B0();
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1E68B3AB0();
    LOBYTE(v52) = 4;
    sub_1E68B3A60();
  }

  return (*(v23 + 8))(v25, v22);
}

uint64_t CanvasSectionViewDescriptor.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20)
{
  v70 = a6;
  v75 = a5;
  v73 = a4;
  v72 = a1;
  v51 = a9;
  v77 = a17;
  v78 = a20;
  v71 = a16;
  v76 = a15;
  v74 = a14;
  v69 = a13;
  v68 = a12;
  v67 = a10;
  v66 = a18;
  v65 = a7;
  v50 = sub_1E68B3750();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v47 - v24;
  v80 = a2;
  v81 = a8;
  v61 = a8;
  v82 = a11;
  v83 = a19;
  v62 = a19;
  v58 = type metadata accessor for CanvasSectionHeader();
  v55 = sub_1E68B3750();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v47 - v25;
  v80 = a2;
  v81 = a3;
  v82 = v73;
  v83 = v75;
  v26 = v70;
  v84 = v70;
  v85 = a7;
  v86 = a8;
  v87 = a10;
  v88 = a11;
  v89 = a12;
  v27 = v69;
  v90 = v69;
  v91 = v74;
  v28 = v71;
  v92 = v76;
  v93 = v71;
  v29 = v66;
  v94 = v77;
  v95 = v66;
  v96 = a19;
  v97 = v78;
  type metadata accessor for CanvasSectionViewDescriptor.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v60 = sub_1E68B3A20();
  v56 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v31 = &v47 - v30;
  v59 = a2;
  v80 = a2;
  v81 = a3;
  v53 = a3;
  v82 = v73;
  v83 = v75;
  v84 = v26;
  v85 = v65;
  v86 = v61;
  v87 = v67;
  v61 = a11;
  v88 = a11;
  v89 = v68;
  v90 = v27;
  v91 = v74;
  v92 = v76;
  v93 = v28;
  v32 = v72;
  v94 = v77;
  v95 = v29;
  v96 = v62;
  v97 = v78;
  v33 = type metadata accessor for CanvasSectionViewDescriptor();
  v48 = *(v33 - 1);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v47 - v34;
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  v62 = v31;
  v36 = v64;
  sub_1E68B3BC0();
  if (v36)
  {
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v37 = v57;
  v38 = v59;
  v39 = v56;
  v64 = v35;
  LOBYTE(v98) = 0;
  sub_1E674B128();
  sub_1E68B3A00();
  v40 = v64;
  *v64 = v80;
  LOBYTE(v80) = 1;
  swift_getWitnessTable();
  sub_1E68B39B0();
  (*(v54 + 32))(&v40[v33[41]], v37, v55);
  LOBYTE(v80) = 2;
  v41 = sub_1E68B39C0();
  v42 = &v40[v33[42]];
  *v42 = v41;
  v42[1] = v43;
  v80 = v38;
  v81 = v53;
  v82 = v73;
  v83 = v75;
  v84 = v70;
  v85 = v67;
  v86 = v61;
  v87 = v68;
  v88 = v69;
  v89 = v74;
  v90 = v76;
  v91 = v71;
  v92 = v77;
  v93 = v78;
  type metadata accessor for CanvasItemDescriptor();
  sub_1E68B33B0();
  LOBYTE(v80) = 3;
  v79 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B3A00();
  *&v40[v33[43]] = v98;
  LOBYTE(v80) = 4;
  v44 = v52;
  sub_1E68B39B0();
  (*(v39 + 8))(v62, v60);
  (*(v49 + 32))(&v40[v33[44]], v44, v50);
  v45 = v48;
  (*(v48 + 16))(v51, v40, v33);
  __swift_destroy_boxed_opaque_existential_1(v72);
  return (*(v45 + 8))(v40, v33);
}

BOOL static CanvasSectionViewDescriptor.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v102 = a7;
  v101 = a6;
  v100 = a5;
  v99 = a4;
  v92 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v87 = v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E68B3750();
  v91 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v89 = v71 - v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v88 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v90 = v71 - v27;
  v103 = a3;
  v105 = a3;
  v106 = a9;
  v97 = a9;
  v104 = a11;
  v107 = a11;
  v108 = a19;
  v98 = a19;
  v28 = type metadata accessor for CanvasSectionHeader();
  v95 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v94 = v71 - v29;
  v30 = sub_1E68B3750();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v96 = v71 - v32;
  v33 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v33);
  v36 = v71 - v35;
  if (*a1 != *a2)
  {
    return 0;
  }

  v37 = a1;
  v38 = a2;
  v85 = v34;
  v72 = v25;
  v105 = v103;
  v106 = v99;
  v107 = v100;
  v108 = v101;
  v109 = v102;
  v110 = a8;
  v73 = a8;
  v111 = v97;
  v112 = a10;
  v74 = a10;
  v113 = v104;
  v114 = a12;
  v75 = a12;
  v76 = a13;
  v115 = a13;
  v116 = a14;
  v77 = a14;
  v78 = a15;
  v117 = a15;
  v118 = a16;
  v79 = a16;
  v80 = a17;
  v119 = a17;
  v120 = a18;
  v71[1] = a18;
  v121 = v98;
  v122 = a20;
  v81 = a20;
  v82 = type metadata accessor for CanvasSectionViewDescriptor();
  v39 = *(v82 + 164);
  v40 = *(v33 + 48);
  v86 = v31;
  v41 = *(v31 + 16);
  v83 = v37;
  v41(v36, &v37[v39], v30);
  v84 = v38;
  v41(&v36[v40], &v38[v39], v30);
  v42 = v95;
  v43 = *(v95 + 48);
  if (v43(v36, 1, v28) != 1)
  {
    v41(v96, v36, v30);
    if (v43(&v36[v40], 1, v28) != 1)
    {
      v47 = v94;
      (*(v42 + 32))(v94, &v36[v40], v28);
      v48 = v96;
      v45 = v103;
      v44 = v104;
      v49 = static CanvasSectionHeader.== infix(_:_:)(v96, v47, v103, v97, v104, v98);
      v50 = *(v42 + 8);
      v50(v47, v28);
      v50(v48, v28);
      (*(v86 + 8))(v36, v30);
      if (!v49)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v42 + 8))(v96, v28);
LABEL_7:
    (*(v85 + 8))(v36, v33);
    return 0;
  }

  if (v43(&v36[v40], 1, v28) != 1)
  {
    goto LABEL_7;
  }

  (*(v86 + 8))(v36, v30);
  v45 = v103;
  v44 = v104;
LABEL_11:
  v51 = v82;
  v52 = *(v82 + 168);
  v53 = v83;
  v54 = *&v83[v52];
  v55 = *&v83[v52 + 8];
  v56 = v84;
  v57 = &v84[v52];
  if ((v54 != *v57 || v55 != *(v57 + 1)) && (sub_1E68B3B00() & 1) == 0)
  {
    return 0;
  }

  v105 = v45;
  v106 = v99;
  v107 = v100;
  v108 = v101;
  v109 = v102;
  v110 = v74;
  v111 = v44;
  v112 = v75;
  v113 = v76;
  v114 = v77;
  v115 = v78;
  v116 = v79;
  v117 = v80;
  v118 = v81;
  type metadata accessor for CanvasItemDescriptor();
  swift_getWitnessTable();
  if ((sub_1E68B33D0() & 1) == 0)
  {
    return 0;
  }

  v58 = *(v51 + 176);
  v59 = *(TupleTypeMetadata2 + 48);
  v60 = v91;
  v61 = *(v91 + 16);
  v62 = v90;
  v63 = v72;
  v61(v90, &v53[v58], v72);
  v61(&v62[v59], &v56[v58], v63);
  v64 = v92;
  v65 = *(v92 + 48);
  v66 = v73;
  if (v65(v62, 1, v73) == 1)
  {
    if (v65(&v62[v59], 1, v66) == 1)
    {
      (*(v60 + 8))(v62, v63);
      return 1;
    }

    goto LABEL_20;
  }

  v61(v89, v62, v63);
  if (v65(&v62[v59], 1, v66) == 1)
  {
    (*(v64 + 8))(v89, v66);
LABEL_20:
    (*(v88 + 8))(v62, TupleTypeMetadata2);
    return 0;
  }

  v67 = v87;
  (*(v64 + 32))(v87, &v62[v59], v66);
  v68 = v89;
  v69 = sub_1E68B3190();
  v70 = *(v64 + 8);
  v70(v67, v66);
  v70(v68, v66);
  (*(v60 + 8))(v62, v63);
  return (v69 & 1) != 0;
}

uint64_t CanvasSectionViewDescriptor.hash(into:)()
{
  MEMORY[0x1E69523D0](*v0);
  type metadata accessor for CanvasSectionHeader();
  sub_1E68B3750();
  swift_getWitnessTable();
  sub_1E68B3760();
  sub_1E68B31F0();
  type metadata accessor for CanvasItemDescriptor();
  swift_getWitnessTable();
  sub_1E68B33C0();
  sub_1E68B3750();
  return sub_1E68B3760();
}

uint64_t CanvasSectionViewDescriptor.hashValue.getter()
{
  sub_1E68B3B70();
  CanvasSectionViewDescriptor.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E6808FE4()
{
  sub_1E68B3B70();
  CanvasSectionViewDescriptor.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E68090AC(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

uint64_t sub_1E68091CC(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(sub_1E68B1820() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v54 = a3[8];
  v8 = *(v54 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v53 = a3[2];
  v11 = *(v53 - 8);
  if (v10 <= v7)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = v10;
  }

  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  if (v15)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a3[7] - 8);
  v18 = v17;
  v19 = *(v17 + 84);
  v20 = v19 - 1;
  if (!v19)
  {
    v20 = 0;
  }

  if (v16 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v16;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  if (v9)
  {
    v23 = *(v8 + 64);
  }

  else
  {
    v23 = *(v8 + 64) + 1;
  }

  if (v13)
  {
    v24 = v15 == 0;
  }

  else
  {
    v24 = (v15 == 0) + 1;
  }

  v25 = *(v8 + 80);
  v26 = *(v11 + 80);
  v27 = *(v5 + 64);
  v28 = *(v11 + 64);
  v29 = *(v17 + 80);
  if (v19)
  {
    v30 = *(v17 + 64);
  }

  else
  {
    v30 = *(v17 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v31 = *(v11 + 80);
  v32 = (v25 | *(v5 + 80) | v26);
  v33 = v27 + v25;
  v34 = v23 + v26;
  v35 = v24 + v28 + ((v34 + (v33 & ~v25)) & ~v26);
  v36 = v29 + 8;
  v37 = a2 - v22;
  if (a2 <= v22)
  {
    goto LABEL_55;
  }

  v38 = (v36 + ((((v35 + ((v32 + 1) & ~v32) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v29;
  v39 = v30 + v38;
  v40 = 8 * (v30 + v38);
  if (v39 > 3)
  {
    goto LABEL_35;
  }

  v42 = ((v37 + ~(-1 << v40)) >> v40) + 1;
  if (HIWORD(v42))
  {
    v41 = *(a1 + v39);
    if (v41)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (v42 <= 0xFF)
    {
      if (v42 < 2)
      {
        goto LABEL_55;
      }

LABEL_35:
      v41 = *(a1 + v39);
      if (!*(a1 + v39))
      {
        goto LABEL_55;
      }

LABEL_42:
      v43 = (v41 - 1) << v40;
      if (v39 > 3)
      {
        v43 = 0;
      }

      if (v39)
      {
        if (v39 <= 3)
        {
          v44 = v39;
        }

        else
        {
          v44 = 4;
        }

        if (v44 > 2)
        {
          if (v44 == 3)
          {
            v45 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v45 = *a1;
          }
        }

        else if (v44 == 1)
        {
          v45 = *a1;
        }

        else
        {
          v45 = *a1;
        }
      }

      else
      {
        v45 = 0;
      }

      return v22 + (v45 | v43) + 1;
    }

    v41 = *(a1 + v39);
    if (*(a1 + v39))
    {
      goto LABEL_42;
    }
  }

LABEL_55:
  v46 = (a1 + v32 + 1) & ~v32;
  if (v16 == v22)
  {
    if (v15 < 2)
    {
      return 0;
    }

    if (v7 == v15)
    {
      v50 = (*(v6 + 48))(v46);
    }

    else
    {
      v51 = (v33 + v46) & ~v25;
      if (v10 == v15)
      {
        v52 = (*(*(v54 - 8) + 48))(v51, v9, v54);
      }

      else
      {
        v52 = (*(*(v53 - 8) + 48))((v34 + v51) & ~v31, v13, v53);
      }

      if (v52 >= 2)
      {
        v50 = v52 - 1;
      }

      else
      {
        v50 = 0;
      }
    }

    goto LABEL_74;
  }

  v48 = (v46 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v21 & 0x80000000) != 0)
  {
    v50 = (*(v18 + 48))((v36 + ((v48 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v29, v19);
LABEL_74:
    if (v50 >= 2)
    {
      return v50 - 1;
    }

    else
    {
      return 0;
    }
  }

  v49 = *(v48 + 8);
  if (v49 >= 0xFFFFFFFF)
  {
    LODWORD(v49) = -1;
  }

  return (v49 + 1);
}

void sub_1E6809614(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = sub_1E68B1820();
  v7 = 0;
  v8 = *(v6 - 8);
  v63 = a4[8];
  v9 = *(v8 + 84);
  v10 = *(v63 - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = v12;
  }

  v61 = a4[2];
  v14 = *(v61 - 8);
  v15 = *(v14 + 84);
  if (v15)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16 <= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a4[7] - 8);
  v20 = *(v19 + 84);
  v62 = *(v63 - 8);
  v60 = *(v61 - 8);
  v64 = *(v6 - 8);
  v21 = *(v8 + 80);
  v22 = *(v19 + 80);
  v23 = v20 - 1;
  if (!v20)
  {
    v23 = 0;
  }

  if (v18 <= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v18;
  }

  if (v24 <= 0x7FFFFFFF)
  {
    v25 = 0x7FFFFFFF;
  }

  else
  {
    v25 = v24;
  }

  if (v11)
  {
    v26 = *(*(v63 - 8) + 64);
  }

  else
  {
    v26 = *(*(v63 - 8) + 64) + 1;
  }

  if (v15)
  {
    v27 = *(*(v61 - 8) + 64);
  }

  else
  {
    v27 = *(*(v61 - 8) + 64) + 1;
  }

  v28 = *(v10 + 80);
  v29 = *(v14 + 80);
  v30 = *(*(v6 - 8) + 64) + v28;
  v31 = v26 + v29;
  v32 = (v26 + v29 + (v30 & ~v28)) & ~v29;
  v33 = v32 + v27;
  v34 = *(v10 + 80) | v21;
  if (v17)
  {
    v35 = v32 + v27;
  }

  else
  {
    v35 = v33 + 1;
  }

  v36 = (v34 | *(v14 + 80));
  if (v20)
  {
    v37 = *(v19 + 64);
  }

  else
  {
    v37 = *(v19 + 64) + 1;
  }

  v38 = ((v22 + 8 + ((((v35 + ((v36 + 1) & ~v36) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v22) + v37;
  v39 = a3 >= v25;
  v40 = a3 - v25;
  if (v40 != 0 && v39)
  {
    if (v38 <= 3)
    {
      v41 = ((v40 + ~(-1 << (8 * v38))) >> (8 * v38)) + 1;
      if (HIWORD(v41))
      {
        v7 = 4;
      }

      else
      {
        if (v41 < 0x100)
        {
          v42 = 1;
        }

        else
        {
          v42 = 2;
        }

        if (v41 >= 2)
        {
          v7 = v42;
        }

        else
        {
          v7 = 0;
        }
      }
    }

    else
    {
      v7 = 1;
    }
  }

  if (v25 < a2)
  {
    v43 = ~v25 + a2;
    if (v38 < 4)
    {
      v44 = (v43 >> (8 * v38)) + 1;
      if (v38)
      {
        v45 = v43 & ~(-1 << (8 * v38));
        bzero(a1, v38);
        if (v38 != 3)
        {
          if (v38 == 2)
          {
            *a1 = v45;
            if (v7 > 1)
            {
LABEL_82:
              if (v7 == 2)
              {
                *&a1[v38] = v44;
              }

              else
              {
                *&a1[v38] = v44;
              }

              return;
            }
          }

          else
          {
            *a1 = v43;
            if (v7 > 1)
            {
              goto LABEL_82;
            }
          }

          goto LABEL_79;
        }

        *a1 = v45;
        a1[2] = BYTE2(v45);
      }

      if (v7 > 1)
      {
        goto LABEL_82;
      }
    }

    else
    {
      bzero(a1, v38);
      *a1 = v43;
      v44 = 1;
      if (v7 > 1)
      {
        goto LABEL_82;
      }
    }

LABEL_79:
    if (v7)
    {
      a1[v38] = v44;
    }

    return;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      *&a1[v38] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_64;
    }

    *&a1[v38] = 0;
  }

  else if (v7)
  {
    a1[v38] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_64;
  }

  if (!a2)
  {
    return;
  }

LABEL_64:
  v46 = (&a1[v36 + 1] & ~v36);
  if (v18 == v25)
  {
    if (v17 < 2)
    {
      return;
    }

    if (a2 >= v17)
    {
      if (v33 <= 3)
      {
        v53 = ~(-1 << (8 * v33));
      }

      else
      {
        v53 = -1;
      }

      if (v33)
      {
        v54 = v53 & (a2 - v17);
        if (v33 <= 3)
        {
          v55 = v33;
        }

        else
        {
          v55 = 4;
        }

        bzero(v46, v33);
        if (v55 > 2)
        {
          if (v55 == 3)
          {
            *v46 = v54;
            v46[2] = BYTE2(v54);
          }

          else
          {
            *v46 = v54;
          }
        }

        else if (v55 == 1)
        {
          *v46 = v54;
        }

        else
        {
          *v46 = v54;
        }
      }
    }

    else
    {
      if (v9 == v17)
      {
        v47 = *(v64 + 56);
        v48 = a2 + 1;
        v49 = v6;
        v50 = &a1[v36 + 1] & ~v36;
        v11 = v9;
LABEL_103:

        v47(v50, v48, v11, v49);
        return;
      }

      v50 = &v46[v30] & ~v28;
      if (v12 == v17)
      {
        v49 = v63;
        v47 = *(v62 + 56);
        v48 = a2 + 2;
        goto LABEL_103;
      }

      v56 = (v31 + v50) & ~v29;
      if (a2 < v16)
      {
        v49 = v61;
        v47 = *(v60 + 56);
        v48 = a2 + 2;
        v50 = (v31 + v50) & ~v29;
        v11 = v15;
        goto LABEL_103;
      }

      if (v27 <= 3)
      {
        v57 = ~(-1 << (8 * v27));
      }

      else
      {
        v57 = -1;
      }

      if (v27)
      {
        v58 = v57 & (a2 - v16);
        if (v27 <= 3)
        {
          v59 = v27;
        }

        else
        {
          v59 = 4;
        }

        bzero(((v31 + v50) & ~v29), v27);
        if (v59 > 2)
        {
          if (v59 == 3)
          {
            *v56 = v58;
            *(v56 + 2) = BYTE2(v58);
          }

          else
          {
            *v56 = v58;
          }
        }

        else if (v59 == 1)
        {
          *v56 = v58;
        }

        else
        {
          *v56 = v58;
        }
      }
    }
  }

  else
  {
    v51 = (&v46[v35 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((v24 & 0x80000000) != 0)
    {
      v52 = *(v19 + 56);

      v52((v22 + 8 + ((v51 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v22, a2 + 1, v20);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *v51 = a2 & 0x7FFFFFFF;
      v51[1] = 0;
    }

    else
    {
      v51[1] = a2 - 1;
    }
  }
}