uint64_t sub_1D5F631C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1D5BD0BA0(0, v1, 0);
    v2 = v28;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[7];
      v26 = v4[6];
      v27[0] = v5;
      *(v27 + 9) = *(v4 + 121);
      v6 = v4[3];
      v22 = v4[2];
      v23 = v6;
      v7 = v4[5];
      v24 = v4[4];
      v25 = v7;
      v8 = v4[1];
      v20 = *v4;
      v21 = v8;
      sub_1D5ECF2C4(&v20, &v17);
      v28 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D5BD0BA0((v9 > 1), v10 + 1, 1);
        v2 = v28;
      }

      v18 = &type metadata for FeedIssue;
      v19 = sub_1D5EE5AA4();
      v11 = swift_allocObject();
      *&v17 = v11;
      v12 = v27[0];
      v11[7] = v26;
      v11[8] = v12;
      *(v11 + 137) = *(v27 + 9);
      v13 = v23;
      v11[3] = v22;
      v11[4] = v13;
      v14 = v25;
      v11[5] = v24;
      v11[6] = v14;
      v15 = v21;
      v11[1] = v20;
      v11[2] = v15;
      *(v2 + 16) = v10 + 1;
      sub_1D5B63F14(&v17, v2 + 40 * v10 + 32);
      v4 += 9;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D5F633B0(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), void (*a3)(void), void (*a4)(void))
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v18 = MEMORY[0x1E69E7CC0];
    a2(0, v4, 0);
    v5 = v18;
    a3(0);
    a4(0);
    v10 = a1 + 48;
    do
    {

      swift_dynamicCast();
      v11 = v17;
      v13 = *(v18 + 16);
      v12 = *(v18 + 24);
      if (v13 >= v12 >> 1)
      {
        a2(v12 > 1, v13 + 1, 1);
        v11 = v17;
      }

      *(v18 + 16) = v13 + 1;
      v14 = v18 + 24 * v13;
      *(v14 + 32) = v16;
      *(v14 + 40) = v11;
      v10 += 24;
      --v4;
    }

    while (v4);
  }

  return v5;
}

uint64_t sub_1D5F634FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1D69981B4(0, v1, 0);
    v2 = v23;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v18[0] = *v4;
      v18[1] = v5;
      v6 = v4[3];
      v8 = *v4;
      v7 = v4[1];
      v18[2] = v4[2];
      v18[3] = v6;
      v19 = v8;
      v20 = v7;
      v9 = v4[3];
      v21 = v4[2];
      v22 = v9;
      sub_1D5C10B78(v18, v17, sub_1D5F76F44);
      sub_1D5F76F44();
      sub_1D5F76FA8();
      swift_dynamicCast();
      v21 = v17[2];
      v22 = v17[3];
      v19 = v17[0];
      v20 = v17[1];
      v23 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D69981B4((v10 > 1), v11 + 1, 1);
        v2 = v23;
      }

      *(v2 + 16) = v11 + 1;
      v12 = (v2 + (v11 << 6));
      v13 = v19;
      v14 = v20;
      v15 = v22;
      v12[4] = v21;
      v12[5] = v15;
      v12[2] = v13;
      v12[3] = v14;
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D5F63640(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1D6997338(0, v1, 0);
    v2 = v12;
    sub_1D5BFB8A8(0, &unk_1EC880480, &qword_1EC880AD0);
    v4 = a1 + 64;
    do
    {

      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D6997338((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = v12 + 40 * v6;
      *(v7 + 64) = v11;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D5F63784(uint64_t a1)
{
  v2 = type metadata accessor for FeedItemSupplementaryAttributes();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D6998EB8(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1D5C10B78(v9, v6, type metadata accessor for FeedItemSupplementaryAttributes);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D6998EB8((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_1D5C10CB0(&qword_1EDF13408, 255, type metadata accessor for FeedItemSupplementaryAttributes);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_1D5C10B78(v6, boxed_opaque_existential_1, type metadata accessor for FeedItemSupplementaryAttributes);
      *(v8 + 16) = v12 + 1;
      sub_1D5B63F14(&v15, v8 + 40 * v12 + 32);
      sub_1D5C10CF8(v6, type metadata accessor for FeedItemSupplementaryAttributes);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

char *sub_1D5F6398C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1D5B8C520(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1DA6FB460](i, a1);
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1D5B8C520((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1D5B7C390(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1D5B8C520((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1D5B7C390(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F63B58(uint64_t a1)
{
  v2 = sub_1D72585BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D5B8C520(0, v7, 0);
    v8 = v19;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      swift_dynamicCast();
      v19 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D5B8C520((v14 > 1), v15 + 1, 1);
        v8 = v19;
      }

      *(v8 + 16) = v15 + 1;
      sub_1D5B7C390(&v18, (v8 + 32 * v15 + 32));
      v12 += v13;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void *sub_1D5F63CF0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1D5BD0BA0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1DA6FB460](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1D5BD0BA0((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = sub_1D725CC1C();
        v15 = sub_1D5C10CB0(&qword_1EDF17308, 255, MEMORY[0x1E69D7608]);
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1D5B63F14(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_1D5BD0BA0((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = sub_1D725CC1C();
        v15 = sub_1D5C10CB0(&qword_1EDF17308, 255, MEMORY[0x1E69D7608]);
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_1D5B63F14(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F63F18(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1D5BD0BA0(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_1D5F76E40(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D5BD0BA0((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for FeedCatalogItem;
      v10 = sub_1D5F76E9C();
      *&v8 = swift_allocObject();
      sub_1D5F76E40(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_1D5B63F14(&v8, v2 + 40 * v6 + 32);
      sub_1D5F76EF0(v11);
      v4 += 288;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D5F64044(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1D5BD0BA0(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_1D5F76D3C(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D5BD0BA0((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for FeedCategory;
      v10 = sub_1D5F76D98();
      *&v8 = swift_allocObject();
      sub_1D5F76D3C(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_1D5B63F14(&v8, v2 + 40 * v6 + 32);
      sub_1D5F76DEC(v11);
      v4 += 152;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D5F64170(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D6997EC0(0, v1, 0);
    v2 = v17;
    v4 = (a1 + 64);
    do
    {
      v6 = *(v4 - 4);
      v5 = *(v4 - 3);
      v7 = *(v4 - 1);
      v13 = *(v4 - 2);
      v8 = *v4;
      v17 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v10 >= v9 >> 1)
      {
        sub_1D6997EC0((v9 > 1), v10 + 1, 1);
        v2 = v17;
      }

      v15 = &type metadata for FormatInspectionGroup;
      v16 = &off_1F518B2C0;
      v11 = swift_allocObject();
      *&v14 = v11;
      v11[2] = v6;
      v11[3] = v5;
      v11[4] = v13;
      v11[5] = v7;
      v11[6] = v8;
      *(v2 + 16) = v10 + 1;
      sub_1D5B63F14(&v14, v2 + 40 * v10 + 32);
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D5F642B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D6999478(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D5ECF0E0(v5);
      sub_1D5B5D3A4(0, &qword_1EDF0F198, &type metadata for FormatColorProcessor, MEMORY[0x1E69E6720]);
      swift_dynamicCast();
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D6999478((v6 > 1), v7 + 1, 1);
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 8 * v7 + 32) = v9;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1D5F643CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1D69995F8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1DA6FB460](i, a1);
        type metadata accessor for DebugFormatUploadHiddenViewController();
        sub_1D5F77290();
        swift_dynamicCast();
        v6 = v14;
        v8 = *(v15 + 16);
        v7 = *(v15 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1D69995F8((v7 > 1), v8 + 1, 1);
          v6 = v14;
        }

        *(v15 + 16) = v8 + 1;
        *(v15 + 16 * v8 + 32) = v6;
      }
    }

    else
    {
      v9 = (a1 + 32);
      type metadata accessor for DebugFormatUploadHiddenViewController();
      sub_1D5F77290();
      do
      {
        v10 = *v9;
        swift_dynamicCast();
        v11 = v14;
        v13 = *(v15 + 16);
        v12 = *(v15 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1D69995F8((v12 > 1), v13 + 1, 1);
          v11 = v14;
        }

        *(v15 + 16) = v13 + 1;
        *(v15 + 16 * v13 + 32) = v11;
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1D5F645A8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1D6999A38(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1DA6FB460](v5, a1);
        sub_1D725D3DC();
        sub_1D5BFB8A8(0, &qword_1EDF3B530, &qword_1EDF3B540);
        swift_dynamicCast();
        v7 = *(v16 + 16);
        v6 = *(v16 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1D6999A38((v6 > 1), v7 + 1, 1);
        }

        ++v5;
        *(v16 + 16) = v7 + 1;
        v8 = v16 + 40 * v7;
        *(v8 + 64) = v15;
        *(v8 + 32) = v13;
        *(v8 + 48) = v14;
      }

      while (v2 != v5);
    }

    else
    {
      v9 = a1 + 32;
      sub_1D725D3DC();
      sub_1D5BFB8A8(0, &qword_1EDF3B530, &qword_1EDF3B540);
      do
      {

        swift_dynamicCast();
        v11 = *(v16 + 16);
        v10 = *(v16 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1D6999A38((v10 > 1), v11 + 1, 1);
        }

        *(v16 + 16) = v11 + 1;
        v12 = v16 + 40 * v11;
        *(v12 + 64) = v15;
        *(v12 + 32) = v13;
        *(v12 + 48) = v14;
        v9 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_1D5F647D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1D5B8C520(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1DA6FB460](i, a1);
        sub_1D5B5A498(0, &qword_1EDF1A650);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1D5B8C520((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1D5B7C390(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1D5B5A498(0, &qword_1EDF1A650);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1D5B8C520((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1D5B7C390(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F649CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1D6999A38(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    sub_1D5B5446C(0, &unk_1EDF3B670, MEMORY[0x1E69D7898], MEMORY[0x1E69E6720]);
    sub_1D5BFB8A8(0, &qword_1EDF3B530, &qword_1EDF3B540);
    do
    {
      v4 += 8;

      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D6999A38((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = v12 + 40 * v6;
      *(v7 + 64) = v11;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D5F64B20(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D699A03C(0, v1, 0);
    v2 = v10;
    sub_1D5B5D3A4(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D699A03C((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id PuzzleResourceSource.identifier.getter()
{
  sub_1D5B5446C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v30 - v7;
  v9 = sub_1D72585BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PuzzleResourceSource();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C10B78(v0, v17, type metadata accessor for PuzzleResourceSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *v17;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v19 = [*v17 identifier];
    v20 = sub_1D726207C();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = *v17;
    v22 = *(v17 + 1);
    sub_1D5B4D334();
    v24 = *(v23 + 64);
    (*(v10 + 32))(v13, &v17[*(v23 + 48)], v9);
    v25 = MEMORY[0x1E6968FB0];
    sub_1D5F77210(&v17[v24], v8, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1D7263D4C();

    v32 = 0x752D656C7A7A7570;
    v33 = 0xEB000000002D6C72;
    MEMORY[0x1DA6F9910](v21, v22);

    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    v31 = sub_1D72585AC();
    v26 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v26);

    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    sub_1D5C00C88(v8, v4, &qword_1EDF45B40, v25);
    if ((*(v10 + 48))(v4, 1, v9) == 1)
    {
      sub_1D5B6EE98(v4, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v27 = 0;
    }

    else
    {
      v27 = sub_1D72585AC();
      (*(v10 + 8))(v4, v9);
    }

    v31 = v27;
    v28 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v28);

    v20 = v32;
    sub_1D5B6EE98(v8, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    (*(v10 + 8))(v13, v9);
  }

  return v20;
}

uint64_t PuzzleServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t PuzzleService.puzzle(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F65128, 0, 0);
}

uint64_t sub_1D5F65128()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_1D5B5D3A4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_1D7273AE0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  FCCurrentQoSOrUtilityIfMain();
  v4 = FCDispatchQueueForQualityOfService();
  v0[6] = v4;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1D5F65240;

  return PuzzleService.puzzles(for:excludeDrafts:callbackQueue:)(v3, 0, v4);
}

uint64_t sub_1D5F65240(uint64_t a1)
{
  v3 = *(*v2 + 48);
  v4 = *v2;
  *(v4 + 64) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5F653B8, 0, 0);
  }
}

uint64_t sub_1D5F653B8()
{
  v1 = *(v0 + 64);
  if (v1 >> 62)
  {
    result = sub_1D7263BFC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_1D5F75098();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA6FB460](0, *(v0 + 64));
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 64) + 32);
    swift_unknownObjectRetain();
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t PuzzleService.puzzles(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F6551C, 0, 0);
}

uint64_t sub_1D5F6551C()
{
  FCCurrentQoSOrUtilityIfMain();
  v1 = FCDispatchQueueForQualityOfService();
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1D5F655D0;
  v3 = v0[2];

  return PuzzleService.puzzles(for:excludeDrafts:callbackQueue:)(v3, 0, v1);
}

uint64_t sub_1D5F655D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5F77B64, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

int *PuzzleService.puzzle(for:puzzleType:puzzleMetadata:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v124 = a2;
  v7 = type metadata accessor for PuzzleMetadata();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D725891C();
  v125 = *(v11 - 1);
  v126 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5446C(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v119 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x1EEE9AC00](v18, v19).n128_u64[0];
  v22 = &v97 - v21;
  v120 = a3;
  v23 = [a3 identifier];
  v24 = sub_1D726207C();
  v26 = v25;

  v27 = (a4 + v7[18]);
  if (v24 == *v27 && v26 == v27[1])
  {

    goto LABEL_11;
  }

  v29 = sub_1D72646CC();

  if (v29)
  {
LABEL_11:
    v45 = *(a4 + v7[20]);
    if (v45 && *(v45 + 16) && (v46 = sub_1D5B69D90(0x7463617265746E69, 0xEF65756C43657669), (v47 & 1) != 0))
    {
      v48 = *(*(v45 + 56) + 8 * v46);
    }

    else
    {
      v48 = sub_1D605A4CC(MEMORY[0x1E69E7CC0]);
    }

    v49 = v125;
    v50 = [objc_msgSend(*(v4 + 160) appConfiguration)];
    swift_unknownObjectRelease();
    v115 = *(v4 + 64);
    v116 = sub_1D726203C();
    if (*(a4 + v7[22] + 8))
    {
      v114 = sub_1D726203C();
    }

    else
    {
      v114 = 0;
    }

    v51 = v126;
    if (*(a4 + v7[19] + 8))
    {
      v113 = sub_1D726203C();
      if (*(a4 + 56))
      {
        goto LABEL_21;
      }
    }

    else
    {
      v113 = 0;
      if (*(a4 + 56))
      {
LABEL_21:
        v112 = sub_1D726203C();
        if (*(a4 + 40))
        {
          goto LABEL_22;
        }

        goto LABEL_26;
      }
    }

    v112 = 0;
    if (*(a4 + 40))
    {
LABEL_22:
      v111 = sub_1D726203C();
      if (*(a4 + 8))
      {
LABEL_23:
        v110 = sub_1D726265C();
        goto LABEL_28;
      }

LABEL_27:
      v110 = 0;
LABEL_28:
      v108 = *(a4 + 16);
      sub_1D5C00C88(a4 + v7[17], v22, &qword_1EDF45B00, MEMORY[0x1E6969530]);
      v52 = v49[6];
      v105 = (v49 + 6);
      v104 = v52;
      if (v52(v22, 1, v51) == 1)
      {
        v109 = 0;
      }

      else
      {
        v109 = sub_1D725881C();
        (v49[1])(v22, v51);
      }

      v107 = *(a4 + 81);
      v53 = *(a4 + 64);
      v117 = v50;
      v54 = [v50 difficultyDescriptions];
      sub_1D5B5A498(0, &qword_1EDF1A660);
      sub_1D5F750EC();
      v55 = sub_1D7261D3C();

      v106 = v53;
      v56 = sub_1D72649CC();
      v57 = v56;
      v58 = *(v55 + 16);
      v118 = v7;
      if (v58 && (sub_1D6D62E90(v56), (v59 & 1) != 0))
      {

        v49 = v125;
        v7 = v118;
      }

      else
      {
      }

      v103 = sub_1D726203C();

      if (*(a4 + 72))
      {
        v102 = sub_1D726265C();
      }

      else
      {
        v102 = 0;
      }

      if (*(a4 + v7[21] + 8))
      {
        v101 = sub_1D726203C();
      }

      else
      {
        v101 = 0;
      }

      sub_1D725890C();
      v125 = sub_1D725881C();
      v98 = v49[1];
      v98(v14, v51);
      if (!*(v48 + 16))
      {
        v121 = 0;
        v122 = 0;
        v123 = 0;
        goto LABEL_56;
      }

      sub_1D5B69D90(1702194275, 0xE400000000000000);
      if (v60)
      {

        v123 = sub_1D726203C();

        if (*(v48 + 16))
        {
LABEL_44:
          sub_1D5B69D90(0x726577736E61, 0xE600000000000000);
          if (v61)
          {

            v121 = sub_1D726203C();

            if (*(v48 + 16))
            {
              goto LABEL_46;
            }
          }

          else
          {
            v121 = 0;
            if (*(v48 + 16))
            {
LABEL_46:
              sub_1D5B69D90(1953393000, 0xE400000000000000);
              if (v62)
              {

                v124 = sub_1D726203C();

                if (*(v48 + 16))
                {
                  goto LABEL_48;
                }
              }

              else
              {
                v124 = 0;
                if (*(v48 + 16))
                {
LABEL_48:
                  sub_1D5B69D90(0x6F69746365726964, 0xE90000000000006ELL);
                  if (v63)
                  {

                    v122 = sub_1D726203C();

                    if (!*(v48 + 16))
                    {
                      goto LABEL_57;
                    }
                  }

                  else
                  {
                    v122 = 0;
                    if (!*(v48 + 16))
                    {
                      goto LABEL_57;
                    }
                  }

                  sub_1D5B69D90(0x7265626D756ELL, 0xE600000000000000);
                  if (v67)
                  {

                    v64 = sub_1D726203C();

                    if (*(a4 + 96))
                    {
                      goto LABEL_58;
                    }

                    goto LABEL_66;
                  }

LABEL_57:

                  v64 = 0;
                  if (*(a4 + 96))
                  {
LABEL_58:
                    v65 = sub_1D726203C();
                    goto LABEL_67;
                  }

LABEL_66:
                  v65 = 0;
LABEL_67:
                  v68 = *(a4 + 24);
                  if (v68)
                  {
                    sub_1D5B7E810(v68);
                    v69 = sub_1D726265C();

                    v70 = *a4;
                    if (*a4)
                    {
LABEL_69:
                      sub_1D5B7E810(v70);
                      v71 = sub_1D726265C();

LABEL_72:
                      v72 = sub_1D726203C();
                      v73 = *(a4 + 80);
                      v74 = v119;
                      sub_1D5C00C88(a4 + v118[16], v119, &qword_1EDF45B00, MEMORY[0x1E6969530]);
                      v75 = v126;
                      if (v104(v74, 1, v126) == 1)
                      {
                        v76 = 0;
                      }

                      else
                      {
                        v76 = sub_1D725881C();
                        v98(v74, v75);
                      }

                      v77 = v120;
                      v126 = v76;
                      v96 = v76;
                      BYTE1(v95) = v73;
                      LOBYTE(v95) = 0;
                      v100 = v72;
                      v93 = v71;
                      v94 = v72;
                      v92 = v69;
                      v99 = v65;
                      v90 = v64;
                      v91 = v65;
                      v78 = v101;
                      v79 = v102;
                      v120 = v71;
                      v80 = v103;
                      LOBYTE(v89) = v107;
                      v81 = v109;
                      v119 = v69;
                      v82 = v110;
                      v83 = v115;
                      v84 = v116;
                      v86 = v113;
                      v85 = v114;
                      v115 = v64;
                      v88 = v111;
                      v87 = v112;
                      v118 = [v83 createPuzzleForPuzzleType:v77 identifier:v116 title:v114 subtitle:v113 puzzleDescription:v112 dataResourceID:v111 authors:v110 behaviorFlags:v108 publishDate:v109 isPaid:v89 difficulty:v106 difficultyDescription:v103 relatedPuzzleIDs:v102 thumbnailLargeURL:v101 loadDate:v125 teaserClue:v123 teaserAnswer:v121 teaserInfo:v124 teaserDirection:v122 teaserNumber:v90 language:v91 blockedStorefrontIDs:v92 allowedStorefrontIDs:v93 minimumNewsVersion:v94 isDeprecated:v95 isDraft:v96 lastModifiedDate:?];

                      return v118;
                    }
                  }

                  else
                  {
                    v69 = 0;
                    v70 = *a4;
                    if (*a4)
                    {
                      goto LABEL_69;
                    }
                  }

                  v71 = 0;
                  goto LABEL_72;
                }
              }

              v122 = 0;
              goto LABEL_57;
            }
          }

          v122 = 0;
LABEL_56:
          v124 = 0;
          goto LABEL_57;
        }
      }

      else
      {
        v123 = 0;
        if (*(v48 + 16))
        {
          goto LABEL_44;
        }
      }

      v121 = 0;
      v122 = 0;
      goto LABEL_56;
    }

LABEL_26:
    v111 = 0;
    if (*(a4 + 8))
    {
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725C42C();
  __swift_project_value_buffer(v30, qword_1EDFFCFA8);
  sub_1D5C10B78(a4, v10, type metadata accessor for PuzzleMetadata);
  v31 = v120;
  swift_unknownObjectRetain();
  v32 = sub_1D725C3FC();
  v33 = sub_1D7262EBC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v127[0] = v35;
    *v34 = 136315394;
    v36 = [v31 identifier];
    v37 = sub_1D726207C();
    v39 = v38;

    v40 = sub_1D5BC5100(v37, v39, v127);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2080;
    v41 = &v10[v7[18]];
    v42 = *v41;
    v43 = v41[1];

    sub_1D5C10CF8(v10, type metadata accessor for PuzzleMetadata);
    v44 = sub_1D5BC5100(v42, v43, v127);

    *(v34 + 14) = v44;
    _os_log_impl(&dword_1D5B42000, v32, v33, "Puzzle Service mismatch between provided puzzleTypeID %s and puzzle metadata type ID: %s!  Puzzle will not be created", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v35, -1, -1);
    MEMORY[0x1DA6FD500](v34, -1, -1);
  }

  else
  {

    sub_1D5C10CF8(v10, type metadata accessor for PuzzleMetadata);
  }

  return 0;
}

uint64_t PuzzleService.puzzles(for:excludeDrafts:callbackQueue:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 1624) = v3;
  *(v4 + 1576) = a3;
  *(v4 + 1784) = a2;
  *(v4 + 1528) = a1;
  *(v4 + 1672) = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1D5F663D0, 0, 0);
}

uint64_t sub_1D5F663D0()
{
  if (qword_1EDF182C8 != -1)
  {
    swift_once();
  }

  if (sub_1D72596AC())
  {
    if (qword_1EC87DCD0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 1624);
    v3 = *(v0 + 1576);
    v4 = *(v0 + 1784);
    v5 = *(v0 + 1528);
    sub_1D5C10CB0(&qword_1EC8816D8, v1, type metadata accessor for PuzzleService);
    sub_1D725964C();
    v6 = [objc_opt_self() cachePolicyWithSoftMaxAge_];
    *(v0 + 1680) = v6;
    v7 = swift_task_alloc();
    *(v0 + 1688) = v7;
    *(v7 + 16) = v2;
    *(v7 + 24) = v5;
    *(v7 + 32) = v6;
    *(v7 + 40) = v3;
    *(v7 + 48) = v4;
    v8 = swift_task_alloc();
    *(v0 + 1696) = v8;
    sub_1D5BAB70C(0, &qword_1EDF04A18, &qword_1EDF3C750);
    *v8 = v0;
    v8[1] = sub_1D5F66810;

    return MEMORY[0x1EEE6DE38](v0 + 1480, 0, 0, 0xD000000000000035, 0x80000001D73C4060, sub_1D5F752E4, v7, v9);
  }

  else
  {
    v10 = *(v0 + 1624);
    v11 = *(v0 + 1576);
    v12 = *(v0 + 1784);
    v13 = *(v0 + 1528);
    v14 = [objc_msgSend(*(v10 + 160) appConfiguration)];
    *(v0 + 1712) = v14;
    swift_unknownObjectRelease();
    [v14 recentPuzzlesCacheLifetime];
    v16 = v15;
    v17 = objc_opt_self();
    v18 = [v17 cachePolicyWithSoftMaxAge_];
    *(v0 + 1720) = v18;
    [v14 puzzlesCacheLifetime];
    v19 = [v17 cachePolicyWithSoftMaxAge_];
    *(v0 + 1728) = v19;
    v20 = sub_1D5F678F8(v13);
    v22 = v21;
    v23 = swift_allocObject();
    *(v0 + 1736) = v23;
    *(v23 + 16) = v10;
    *(v23 + 24) = v20;
    *(v23 + 32) = v12;
    *(v23 + 40) = v18;
    *(v23 + 48) = v11;

    v24 = v18;
    v25 = v11;
    sub_1D5BAB70C(0, &qword_1EDF04A18, &qword_1EDF3C750);
    swift_asyncLet_begin();
    v26 = swift_allocObject();
    *(v0 + 1744) = v26;
    *(v26 + 16) = v10;
    *(v26 + 24) = v22;
    *(v26 + 32) = v12;
    *(v26 + 40) = v19;
    *(v26 + 48) = v25;

    v27 = v25;
    v28 = v19;
    swift_asyncLet_begin();

    return MEMORY[0x1EEE6DEC0](v0 + 16, v0 + 1336, sub_1D5F66A04, v0 + 1296);
  }
}

uint64_t sub_1D5F66810()
{
  *(*v1 + 1704) = v0;

  if (v0)
  {
    v2 = sub_1D5F66998;
  }

  else
  {

    v2 = sub_1D5F6692C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6692C()
{
  v1 = *(v0 + 1480);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D5F66998()
{
  v1 = *(v0 + 1680);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D5F66A04()
{
  v1[219] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 173, sub_1D5F66C60, v1 + 168);
  }

  else
  {
    v1[220] = v1[167];

    return MEMORY[0x1EEE6DEC0](v1 + 82, v1 + 173, sub_1D5F66AB8, v1 + 180);
  }
}

uint64_t sub_1D5F66AB8()
{
  *(v1 + 1768) = v0;
  if (v0)
  {
    v2 = sub_1D5F66D4C;
  }

  else
  {
    v2 = sub_1D5F66AEC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F66AEC()
{
  v3 = *(v0 + 1760);

  sub_1D6985708(v1);
  *(v0 + 1776) = v3;

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1384, sub_1D5F66B70, v0 + 1584);
}

uint64_t sub_1D5F66BC8()
{
  v1 = *(v0 + 1728);
  v2 = *(v0 + 1712);

  v3 = *(v0 + 1776);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1D5F66CB8()
{
  v1 = *(v0 + 1728);
  v2 = *(v0 + 1712);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D5F66D4C()
{

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1384, sub_1D5F66DB8, v0 + 1488);
}

uint64_t sub_1D5F66E10()
{
  v1 = *(v0 + 1728);
  v2 = *(v0 + 1712);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t PuzzleService.puzzles(for:excludeDrafts:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D5F66EC8, 0, 0);
}

uint64_t sub_1D5F66EC8()
{
  FCCurrentQoSOrUtilityIfMain();
  v1 = FCDispatchQueueForQualityOfService();
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1D5F66F7C;
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);

  return PuzzleService.puzzles(for:excludeDrafts:callbackQueue:)(v4, v3, v1);
}

uint64_t sub_1D5F66F7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5F670D4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1D5F670D4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PuzzleService.puzzles(for:cachePolicy:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F6715C, 0, 0);
}

uint64_t sub_1D5F6715C()
{
  v1 = *(v0 + 40);
  v7 = *(v0 + 24);
  FCCurrentQoSOrUtilityIfMain();
  v2 = FCDispatchQueueForQualityOfService();
  *(v0 + 48) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v7;
  *(v3 + 40) = v2;
  *(v3 + 48) = 0;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  sub_1D5BAB70C(0, &qword_1EDF04A18, &qword_1EDF3C750);
  *v4 = v0;
  v4[1] = sub_1D5F672A8;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000035, 0x80000001D73C4060, sub_1D5F77AEC, v3, v5);
}

uint64_t sub_1D5F672A8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D5F77AD8;
  }

  else
  {

    v2 = sub_1D5F77ACC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t PuzzleService.puzzles(for:excludeDrafts:cachePolicy:callbackQueue:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 80) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D5F673EC, 0, 0);
}

uint64_t sub_1D5F673EC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 80);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  sub_1D5BAB70C(0, &qword_1EDF04A18, &qword_1EDF3C750);
  *v6 = v0;
  v6[1] = sub_1D5F6751C;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000035, 0x80000001D73C4060, sub_1D5F77AEC, v4, v7);
}

uint64_t sub_1D5F6751C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D5F77ABC;
  }

  else
  {

    v2 = sub_1D5F77B74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t PuzzleService.puzzles(for:excludeDrafts:cachePolicy:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = v3;
  *(v4 + 80) = a2;
  *(v4 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F67660, 0, 0);
}

uint64_t sub_1D5F67660()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 80);
  v8 = *(v0 + 24);
  FCCurrentQoSOrUtilityIfMain();
  v3 = FCDispatchQueueForQualityOfService();
  *(v0 + 48) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  sub_1D5BAB70C(0, &qword_1EDF04A18, &qword_1EDF3C750);
  *v5 = v0;
  v5[1] = sub_1D5F672A8;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000035, 0x80000001D73C4060, sub_1D5F77AEC, v4, v6);
}

uint64_t PuzzleService.puzzles(for:cachePolicy:callbackQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5F677D4, 0, 0);
}

uint64_t sub_1D5F677D4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  *(v3 + 48) = 0;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  sub_1D5BAB70C(0, &qword_1EDF04A18, &qword_1EDF3C750);
  *v5 = v0;
  v5[1] = sub_1D5F6751C;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000035, 0x80000001D73C4060, sub_1D5F77AEC, v3, v6);
}

char *sub_1D5F678F8(uint64_t a1)
{
  v3 = sub_1D725891C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5446C(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v43 - v16;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = *(v1 + 64);
    v49 = (v4 + 56);
    v50 = v19;
    v48 = (v4 + 48);
    v45 = (v4 + 32);
    v46 = v15;
    v44 = (v4 + 8);
    v20 = (a1 + 40);
    v21 = MEMORY[0x1E69E7CC0];
    v47 = MEMORY[0x1E69E7CC0];
    v53 = v3;
    while (1)
    {
      v26 = *(v20 - 1);
      v25 = *v20;

      v54 = v25;
      v27 = sub_1D726203C();
      v28 = [v50 slowCachedPuzzleForID_];

      if (v28)
      {
        v52 = v18;
        v29 = v26;
        v30 = v21;
        v31 = v10;
        v32 = [v28 publishDate];
        if (v32)
        {
          v33 = v46;
          v34 = v32;
          sub_1D72588BC();

          v35 = 0;
        }

        else
        {
          v35 = 1;
          v33 = v46;
        }

        (*v49)(v33, v35, 1, v3);
        sub_1D5F77210(v33, v17, &qword_1EDF45B00, MEMORY[0x1E6969530]);
        v10 = v31;
        v21 = v30;
        v26 = v29;
        v18 = v52;
      }

      else
      {
        (*v49)(v17, 1, 1, v3);
      }

      sub_1D5C00C88(v17, v10, &qword_1EDF45B00, MEMORY[0x1E6969530]);
      if ((*v48)(v10, 1, v3) == 1)
      {
        sub_1D5B6EE98(v10, &qword_1EDF45B00, MEMORY[0x1E6969530]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1D5B858EC(0, *(v21 + 2) + 1, 1, v21);
        }

        v37 = *(v21 + 2);
        v36 = *(v21 + 3);
        v38 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v21 = sub_1D5B858EC((v36 > 1), v37 + 1, 1, v21);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        (*v45)(v51, v10, v3);
        sub_1D725887C();
        if (fabs(v39) >= 86400.0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_1D5B858EC(0, *(v47 + 2) + 1, 1, v47);
          }

          v37 = *(v47 + 2);
          v41 = *(v47 + 3);
          v38 = v37 + 1;
          if (v37 >= v41 >> 1)
          {
            v47 = sub_1D5B858EC((v41 > 1), v37 + 1, 1, v47);
          }

          swift_unknownObjectRelease();
          (*v44)(v51, v53);
          v22 = v47;
          goto LABEL_5;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1D5B858EC(0, *(v21 + 2) + 1, 1, v21);
        }

        v37 = *(v21 + 2);
        v40 = *(v21 + 3);
        v38 = v37 + 1;
        if (v37 >= v40 >> 1)
        {
          v21 = sub_1D5B858EC((v40 > 1), v37 + 1, 1, v21);
        }

        swift_unknownObjectRelease();
        (*v44)(v51, v53);
      }

      v22 = v21;
LABEL_5:
      sub_1D5B6EE98(v17, &qword_1EDF45B00, MEMORY[0x1E6969530]);
      *(v22 + 2) = v38;
      v23 = &v22[16 * v37];
      v3 = v53;
      v24 = v54;
      *(v23 + 4) = v26;
      *(v23 + 5) = v24;
      v20 += 2;
      if (!--v18)
      {
        return v21;
      }
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
  v47 = MEMORY[0x1E69E7CC0];
  return v21;
}

uint64_t sub_1D5F67E44(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 88) = a4;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F67E70, 0, 0);
}

uint64_t sub_1D5F67E70()
{
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  sub_1D5BAB70C(0, &qword_1EDF04A18, &qword_1EDF3C750);
  *v4 = v0;
  v4[1] = sub_1D5F67F8C;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000035, 0x80000001D73C4060, sub_1D5F77AEC, v2, v5);
}

uint64_t sub_1D5F67F8C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D5F77AC0;
  }

  else
  {

    v2 = sub_1D5F77B78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F680A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 88) = a4;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F680D4, 0, 0);
}

uint64_t sub_1D5F680D4()
{
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  sub_1D5BAB70C(0, &qword_1EDF04A18, &qword_1EDF3C750);
  *v4 = v0;
  v4[1] = sub_1D5F681F0;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000035, 0x80000001D73C4060, sub_1D5F77AEC, v2, v5);
}

uint64_t sub_1D5F681F0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D5F6832C;
  }

  else
  {

    v2 = sub_1D5F6830C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6832C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D5F68390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v23 = a4;
  v24 = a5;
  sub_1D5BAB764(0, qword_1EDF048E0, &qword_1EDF04A18, &qword_1EDF3C750);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10, v14);
  v16 = &v23 - v15;
  v17 = *(a2 + 64);
  sub_1D5B7E810(a3);
  v18 = sub_1D726265C();

  (*(v12 + 16))(v16, a1, v11);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  (*(v12 + 32))(v20 + v19, v16, v11);
  v21 = v20 + ((v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v21 = a3;
  *(v21 + 8) = a6;
  aBlock[4] = sub_1D5F779C4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5F68BA8;
  aBlock[3] = &block_descriptor_204;
  v22 = _Block_copy(aBlock);

  [v17 fetchPuzzlesForPuzzleIDs:v18 cachePolicy:v23 qualityOfService:25 callbackQueue:v24 completionHandler:v22];
  _Block_release(v22);
}

void sub_1D5F685C8(uint64_t a1, id a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {
    v53 = a2;
    v5 = a2;
LABEL_3:
    sub_1D5BAB764(0, qword_1EDF048E0, &qword_1EDF04A18, &qword_1EDF3C750);
    sub_1D726286C();
    return;
  }

  v53 = MEMORY[0x1E69E7CC0];
  v6 = *(a4 + 16);
  if (!v6)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_40;
  }

  v44 = 0;
  v8 = 0;
  v9 = a4 + 40;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = &qword_1EDF3B000;
  v42 = a4 + 40;
  do
  {
    v43 = v10;
    v12 = (v9 + 16 * v8);
    v13 = v8;
    while (1)
    {
      if (v13 >= v6)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }

      v8 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_42;
      }

      if (!a1 || !*(a1 + 16))
      {
        goto LABEL_8;
      }

      v14 = *(v12 - 1);
      v15 = *v12;

      v16 = sub_1D5B69D90(v14, v15);
      if (v17)
      {
        break;
      }

LABEL_8:
      ++v13;
      v12 += 2;
      if (v8 == v6)
      {
        v10 = v43;
        goto LABEL_36;
      }
    }

    v18 = *(*(a1 + 56) + 8 * v16);
    if ([swift_unknownObjectRetain() isDeprecated])
    {
      if (qword_1EC87DC80 != -1)
      {
        swift_once();
      }

      if ((sub_1D72596AC() & 1) == 0)
      {
        if (v11[263] != -1)
        {
          swift_once();
        }

        v29 = sub_1D725C42C();
        __swift_project_value_buffer(v29, qword_1EDFFCFA8);
        swift_unknownObjectRetain();
        v30 = sub_1D725C3FC();
        v31 = sub_1D7262EDC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v52 = v50;
          *v32 = 136315138;
          v48 = v31;
          v33 = [v18 identifier];
          v34 = sub_1D726207C();
          bufa = v30;
          v36 = v35;

          v37 = sub_1D5BC5100(v34, v36, &v52);

          *(v32 + 4) = v37;
          _os_log_impl(&dword_1D5B42000, bufa, v48, "PuzzleService encountered deprecated puzzle %s during a batched fetch. This puzzle will be excluded from the fetch result.", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v50);
          MEMORY[0x1DA6FD500](v50, -1, -1);
          v38 = v32;
          v11 = &qword_1EDF3B000;
          MEMORY[0x1DA6FD500](v38, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v44 = 1;
        goto LABEL_8;
      }
    }

    if ((a5 & 1) != 0 && [v18 isDraft])
    {
      if (v11[263] != -1)
      {
        swift_once();
      }

      v19 = sub_1D725C42C();
      __swift_project_value_buffer(v19, qword_1EDFFCFA8);
      swift_unknownObjectRetain();
      v20 = sub_1D725C3FC();
      v21 = sub_1D7262EDC();
      swift_unknownObjectRelease();
      v49 = v21;
      if (os_log_type_enabled(v20, v21))
      {
        buf = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v52 = v47;
        *buf = 136315138;
        v22 = [v18 identifier];
        v23 = v20;
        v24 = v22;
        v25 = sub_1D726207C();
        v27 = v26;

        v28 = sub_1D5BC5100(v25, v27, &v52);

        *(buf + 4) = v28;
        v11 = &qword_1EDF3B000;
        _os_log_impl(&dword_1D5B42000, v23, v49, "PuzzleService encountered draft puzzle %s during a batched fetch. This puzzle will be excluded from the fetch result.", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x1DA6FD500](v47, -1, -1);
        MEMORY[0x1DA6FD500](buf, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      goto LABEL_8;
    }

    MEMORY[0x1DA6F9CE0](v39);
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    v10 = v53;
    v9 = v42;
  }

  while (v8 != v6);
LABEL_36:
  if (v6 == 1 && (v44 & 1) != 0)
  {

    sub_1D5F75098();
    v40 = swift_allocError();
    *v41 = 5;
    v53 = v40;
    goto LABEL_3;
  }

LABEL_40:
  v53 = v10;
  sub_1D5BAB764(0, qword_1EDF048E0, &qword_1EDF04A18, &qword_1EDF3C750);
  sub_1D726287C();
}

uint64_t sub_1D5F68BBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PuzzleService.puzzleTypes(for:cachePolicy:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F68C4C, 0, 0);
}

uint64_t sub_1D5F68C4C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  sub_1D5BAB70C(0, &unk_1EDF1AE60, &qword_1EDF3C700);
  *v5 = v0;
  v5[1] = sub_1D5F68D70;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001DLL, 0x80000001D73C40A0, sub_1D5F77ADC, v4, v6);
}

uint64_t sub_1D5F68D70()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D5F68E8C;
  }

  else
  {

    v2 = sub_1D5F77B74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F68E8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PuzzleService.puzzleTypes(for:qos:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F68F14, 0, 0);
}

uint64_t sub_1D5F68F14()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = [objc_opt_self() defaultCachePolicy];
  v0[6] = v4;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v4;
  v5[5] = v2;
  v6 = swift_task_alloc();
  v0[8] = v6;
  sub_1D5BAB70C(0, &unk_1EDF1AE60, &qword_1EDF3C700);
  *v6 = v0;
  v6[1] = sub_1D5F69060;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000021, 0x80000001D73C40C0, sub_1D5F752E8, v5, v7);
}

uint64_t sub_1D5F69060()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D5F691E4;
  }

  else
  {

    v2 = sub_1D5F6917C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6917C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D5F691E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PuzzleService.puzzleTypes(for:cachePolicy:qos:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5F69274, 0, 0);
}

uint64_t sub_1D5F69274()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v7 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v7;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  sub_1D5BAB70C(0, &unk_1EDF1AE60, &qword_1EDF3C700);
  *v4 = v0;
  v4[1] = sub_1D5F693A4;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000021, 0x80000001D73C40C0, sub_1D5F77AB4, v3, v5);
}

uint64_t sub_1D5F693A4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D5F694C0;
  }

  else
  {

    v2 = sub_1D5E6E754;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F694C0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D5F69524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  sub_1D5BAB764(0, &qword_1EDF1ADB8, &unk_1EDF1AE60, &qword_1EDF3C700);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v21 - v13;
  v15 = *(a2 + 72);
  sub_1D5B7E810(a3);
  v16 = sub_1D726265C();

  v17 = FCDispatchQueueForQualityOfService();
  (*(v11 + 16))(v14, a1, v10);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v18, v14, v10);
  aBlock[4] = sub_1D5BAF690;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5BAF50C;
  aBlock[3] = &block_descriptor_192;
  v20 = _Block_copy(aBlock);

  [v15 fetchPuzzleTypesForPuzzleTypeIDs:v16 cachePolicy:v22 qualityOfService:a5 callbackQueue:v17 completionHandler:v20];
  _Block_release(v20);
}

uint64_t PuzzleService.puzzleResource(from:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1D5B5446C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v3[5] = swift_task_alloc();
  v4 = sub_1D72585BC();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for PuzzleResourceSource();
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5F698A4, 0, 0);
}

uint64_t sub_1D5F698A4()
{
  sub_1D5C10B78(v0[3], v0[10], type metadata accessor for PuzzleResourceSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[10];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v3 = *v2;
      v0[17] = *v2;
      v4 = swift_task_alloc();
      v0[18] = v4;
      *v4 = v0;
      v4[1] = sub_1D5F69F50;
      v5 = v0[2];

      return PuzzleService.puzzleResource(puzzle:)(v5, v3);
    }

    else
    {
      v11 = v0[7];
      v10 = v0[8];
      v13 = v0[5];
      v12 = v0[6];
      v15 = *v2;
      v14 = v2[1];
      v0[20] = v14;
      sub_1D5B4D334();
      v17 = *(v16 + 64);
      (*(v11 + 32))(v10, v2 + *(v16 + 48), v12);
      sub_1D5F77210(v2 + v17, v13, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v18 = swift_task_alloc();
      v0[21] = v18;
      *v18 = v0;
      v18[1] = sub_1D5F6A0E8;
      v19 = v0[8];
      v20 = v0[5];
      v21 = v0[2];

      return PuzzleService.puzzleResource(puzzleID:indexFileURL:puzzleDataStoreURL:)(v21, v15, v14, v19, v20);
    }
  }

  else
  {
    v8 = *v2;
    v7 = v2[1];
    v0[11] = v7;
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_1D5F69B10;

    return PuzzleService.puzzle(for:)(v8, v7);
  }
}

uint64_t sub_1D5F69B10(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {
    v4[16] = v1;

    return MEMORY[0x1EEE6DFA0](sub_1D5F69ECC, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[14] = v6;
    *v6 = v5;
    v6[1] = sub_1D5F69CC4;
    v7 = v4[2];

    return PuzzleService.puzzleResource(puzzle:)(v7, a1);
  }
}

uint64_t sub_1D5F69CC4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D5F69E5C;
  }

  else
  {
    v2 = sub_1D5F69DD8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F69DD8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5F69E5C()
{
  swift_unknownObjectRelease();
  *(v0 + 128) = *(v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D5F69ECC, 0, 0);
}

uint64_t sub_1D5F69ECC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5F69F50()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1D5F6A2DC;
  }

  else
  {
    v2 = sub_1D5F6A064;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6A064()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5F6A0E8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1D5F6A368;
  }

  else
  {
    v2 = sub_1D5F6A218;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6A218()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1D5B6EE98(v0[5], &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D5F6A2DC()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5F6A368()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1D5B6EE98(v0[5], &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t PuzzleService.puzzleResource(puzzleID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = v3;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_1D5F6A4D4;

  return PuzzleService.puzzle(for:)(a2, a3);
}

uint64_t sub_1D5F6A4D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 40) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    *(v4 + 48) = v8;
    *v8 = v5;
    v8[1] = sub_1D5F6A650;
    v9 = *(v4 + 16);

    return PuzzleService.puzzleResource(puzzle:)(v9, a1);
  }
}

uint64_t sub_1D5F6A650()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D5F6A7C8;
  }

  else
  {
    v2 = sub_1D5F6A764;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6A764()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5F6A7C8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PuzzleService.puzzleResource(puzzle:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for PuzzleResource();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v4 = sub_1D72585BC();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = type metadata accessor for WebArchive();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5F6A95C, 0, 0);
}

uint64_t sub_1D5F6A95C()
{
  v29 = v0;
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v1 = sub_1D725C42C();
  *(v0 + 112) = __swift_project_value_buffer(v1, qword_1EDFFCFA8);
  swift_unknownObjectRetain();
  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EDC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v5 = 136315138;
    v7 = [v4 identifier];
    v8 = sub_1D726207C();
    v10 = v9;

    v11 = sub_1D5BC5100(v8, v10, &v28);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1D5B42000, v2, v3, "PuzzleService start fetching puzzle resources for puzzle=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA6FD500](v6, -1, -1);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  v12 = [*(v0 + 32) dataResourceID];
  if (!v12)
  {
    sub_1D5F75098();
    swift_allocError();
    v24 = 2;
    goto LABEL_11;
  }

  v13 = *(v0 + 32);
  v14 = v12;
  v15 = sub_1D726207C();
  v17 = v16;

  v18 = [objc_msgSend(v13 puzzleType)];
  swift_unknownObjectRelease();
  if (!v18)
  {

    sub_1D5F75098();
    swift_allocError();
    v24 = 1;
    goto LABEL_11;
  }

  v19 = *(v0 + 32);
  v20 = sub_1D726207C();
  v22 = v21;

  *(v0 + 120) = v20;
  *(v0 + 128) = v22;
  if ([v19 isDeprecated])
  {

    sub_1D5F75098();
    swift_allocError();
    v24 = 5;
LABEL_11:
    *v23 = v24;
    swift_willThrow();

    v25 = *(v0 + 8);

    return v25();
  }

  __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 80), *(*(v0 + 40) + 104));
  *(v0 + 136) = ResourceServiceType.fetchResource(identifier:)(v15, v17);

  v27 = swift_task_alloc();
  *(v0 + 144) = v27;
  *v27 = v0;
  v27[1] = sub_1D5F6AD3C;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1D5F6AD3C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {

    v2 = sub_1D5F6B590;
  }

  else
  {
    v2 = sub_1D5F6AE80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6AE80()
{
  v10 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[5];
  v0[20] = v0[2];
  v4 = v3[18];
  v5 = v3[19];
  __swift_project_boxed_opaque_existential_1(v3 + 15, v4);
  v9[0] = v2;
  v9[1] = v1;
  v9[2] = 0;
  v9[3] = 0;
  v0[21] = WebArchiveServiceType.resolve(webArchive:)(v9, v4, v5);

  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1D5F6AF80;
  v7 = v0[13];

  return MEMORY[0x1EEE44EE0](v7);
}

uint64_t sub_1D5F6AF80()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1D5F6B61C;
  }

  else
  {
    v2 = sub_1D5F6B0B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6B0B4()
{
  v53 = v0;
  v1 = [*(v0 + 160) fileURL];
  v2 = *(v0 + 160);
  if (v1)
  {
    v3 = *(v0 + 104);
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    v46 = *(v0 + 160);
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v47 = *(v0 + 64);
    log = *(v0 + 56);
    v8 = *(v0 + 48);
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    v11 = v1;
    sub_1D72584EC();

    v12 = *(v5 + 28);
    v13 = *(v7 + 16);
    v13(&v10[v8[5]], v3 + v12, v6);
    v13(&v10[v8[6]], v4, v6);
    *v10 = v9;
    *&v10[v8[7]] = v46;
    sub_1D5C10B78(v10, v47, type metadata accessor for PuzzleResource);
    sub_1D5C10B78(v10, log, type metadata accessor for PuzzleResource);
    swift_unknownObjectRetain();
    v14 = sub_1D725C3FC();
    v15 = sub_1D7262EDC();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 104);
    v19 = *(v0 + 80);
    v18 = *(v0 + 88);
    v20 = *(v0 + 64);
    v21 = *(v0 + 72);
    v22 = *(v0 + 56);
    if (v16)
    {
      loga = v14;
      v23 = *(v0 + 32);
      v45 = *(v0 + 72);
      v24 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v52[0] = v48;
      *v24 = 136315650;
      v25 = [v23 identifier];
      v51 = v17;
      v26 = sub_1D726207C();
      v44 = v22;
      v28 = v27;

      v29 = sub_1D5BC5100(v26, v28, v52);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      sub_1D5C10CB0(&qword_1EDF18AC0, 255, MEMORY[0x1E6968FB0]);
      v30 = sub_1D72644BC();
      v43 = v15;
      v32 = v31;
      sub_1D5C10CF8(v20, type metadata accessor for PuzzleResource);
      v33 = sub_1D5BC5100(v30, v32, v52);

      *(v24 + 14) = v33;
      *(v24 + 22) = 2080;
      v34 = sub_1D72644BC();
      v36 = v35;
      sub_1D5C10CF8(v44, type metadata accessor for PuzzleResource);
      v37 = sub_1D5BC5100(v34, v36, v52);

      *(v24 + 24) = v37;
      _os_log_impl(&dword_1D5B42000, loga, v43, "PuzzleService finished fetching puzzle resources for puzzle=%s with indexFileURL=%s \n dataFileURL=%s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA6FD500](v48, -1, -1);
      MEMORY[0x1DA6FD500](v24, -1, -1);

      (*(v19 + 8))(v18, v45);
      v38 = v51;
    }

    else
    {

      sub_1D5C10CF8(v22, type metadata accessor for PuzzleResource);
      sub_1D5C10CF8(v20, type metadata accessor for PuzzleResource);
      (*(v19 + 8))(v18, v21);
      v38 = v17;
    }

    sub_1D5C10CF8(v38, type metadata accessor for WebArchive);

    v41 = *(v0 + 8);
  }

  else
  {
    v39 = *(v0 + 104);
    sub_1D5F75098();
    swift_allocError();
    *v40 = 4;
    swift_willThrow();

    sub_1D5C10CF8(v39, type metadata accessor for WebArchive);

    v41 = *(v0 + 8);
  }

  return v41();
}

uint64_t sub_1D5F6B590()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5F6B61C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PuzzleService.puzzleResource(puzzleID:indexFileURL:puzzleDataStoreURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[229] = v5;
  v6[223] = a5;
  v6[217] = a4;
  v6[211] = a1;
  v9 = sub_1D72583CC();
  v6[235] = v9;
  v6[241] = *(v9 - 8);
  v6[247] = swift_task_alloc();
  sub_1D5B5446C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v6[253] = swift_task_alloc();
  v6[259] = swift_task_alloc();
  v6[265] = swift_task_alloc();
  v6[271] = swift_task_alloc();
  v10 = sub_1D72585BC();
  v6[277] = v10;
  v11 = *(v10 - 8);
  v6[278] = v11;
  v6[279] = *(v11 + 64);
  v6[280] = swift_task_alloc();
  v6[281] = swift_task_alloc();
  v6[282] = swift_task_alloc();
  v6[283] = swift_task_alloc();
  v6[284] = swift_task_alloc();
  v6[285] = swift_task_alloc();
  v6[286] = swift_task_alloc();
  v6[287] = swift_task_alloc();
  v6[288] = swift_task_alloc();
  v6[289] = swift_task_alloc();
  v6[290] = swift_task_alloc();
  v6[291] = swift_task_alloc();
  v6[292] = swift_task_alloc();
  sub_1D5F752F4();
  v6[293] = v12;
  v6[294] = swift_task_alloc();
  v6[295] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[296] = v13;
  *v13 = v6;
  v13[1] = sub_1D5F6B9A4;

  return PuzzleService.puzzle(for:)(a2, a3);
}

uint64_t sub_1D5F6B9A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2376) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5F6BC54, 0, 0);
  }
}

uint64_t sub_1D5F6BC54()
{
  v1 = *(v0 + 2336);
  v2 = *(v0 + 2224);
  v3 = *(v0 + 2216);
  v4 = *(v0 + 1736);
  v5 = [objc_opt_self() sharedSession];
  *(v0 + 2384) = v5;
  v6 = *(v2 + 16);
  *(v0 + 2392) = v6;
  *(v0 + 2400) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = *(v2 + 80);
  *(v0 + 2640) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 2408) = v9;
  *(v9 + 16) = v5;
  v10 = *(v2 + 32);
  *(v0 + 2416) = v10;
  *(v0 + 2424) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v1, v3);
  v11 = v5;
  swift_asyncLet_begin();
  v12 = *(v0 + 2360);

  return MEMORY[0x1EEE6DEC0](v0 + 16, v12, sub_1D5F6BE08, v0 + 1936);
}

uint64_t sub_1D5F6BE08()
{
  *(v1 + 2432) = v0;
  if (v0)
  {
    v2 = sub_1D5F6FA40;
  }

  else
  {
    v2 = sub_1D5F6BEAC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6BEAC()
{
  v190 = v0;
  v189[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 2224);
  v2 = *(v0 + 2216);
  v3 = *(v0 + 2168);
  v4 = *(v0 + 2120);
  v5 = *(v0 + 1784);
  (*(v0 + 2392))(*(v0 + 2328), *(v0 + 2360), v2);
  v6 = *(v1 + 56);
  *(v0 + 2440) = v6;
  *(v0 + 2448) = (v1 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v3, 1, 1, v2);
  sub_1D5C00C88(v5, v4, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v7 = *(v1 + 48);
  *(v0 + 2456) = v7;
  *(v0 + 2464) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v7(v4, 1, v2) == 1)
  {
    sub_1D5B6EE98(*(v0 + 2120), &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    *(v0 + 2488) = 0u;
    v8 = objc_opt_self();
    v9 = [v8 defaultManager];
    *(v0 + 2504) = v9;
    sub_1D725851C();
    v10 = sub_1D726203C();

    v11 = [v9 contentsAtPath_];

    if (v11)
    {
      v12 = sub_1D725867C();
      v14 = v13;

      *(v0 + 2512) = v12;
      *(v0 + 2520) = v14;
      v187 = v12;
      v188 = v14;
      if (sub_1D5F7183C(&unk_1F50F7A78, v12, v14))
      {
        v186 = v9;
        v15 = *(v0 + 2288);
        v173 = v8;
        v16 = *(v0 + 2224);
        v17 = *(v0 + 2216);
        v18 = *(v0 + 1976);
        v19 = *(v0 + 1928);
        v20 = *(v0 + 1880);
        sub_1D72584BC();
        *(v0 + 1336) = 0xD000000000000010;
        *(v0 + 1344) = 0x80000001D73C40F0;
        (*(v19 + 104))(v18, *MEMORY[0x1E6968F58], v20);
        sub_1D5BF4D9C();
        sub_1D725858C();
        (*(v19 + 8))(v18, v20);
        v183 = *(v16 + 8);
        v183(v15, v17);
        sub_1D725849C();
        if (qword_1EDF3B838 != -1)
        {
          swift_once();
        }

        v21 = *(v0 + 2392);
        v22 = *(v0 + 2296);
        v23 = *(v0 + 2272);
        v24 = *(v0 + 2216);
        v25 = sub_1D725C42C();
        __swift_project_value_buffer(v25, qword_1EDFFCFA8);
        v21(v23, v22, v24);
        v26 = sub_1D725C3FC();
        v27 = sub_1D7262EDC();
        v28 = os_log_type_enabled(v26, v27);
        v29 = *(v0 + 2272);
        v30 = *(v0 + 2216);
        if (v28)
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v189[0] = v32;
          *v31 = 136315138;
          sub_1D5C10CB0(&qword_1EDF18AC0, 255, MEMORY[0x1E6968FB0]);
          v33 = sub_1D72644BC();
          v35 = v34;
          v183(v29, v30);
          v36 = sub_1D5BC5100(v33, v35, v189);

          *(v31 + 4) = v36;
          _os_log_impl(&dword_1D5B42000, v26, v27, "Unarchiving puzzle [%s]", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v32);
          MEMORY[0x1DA6FD500](v32, -1, -1);
          MEMORY[0x1DA6FD500](v31, -1, -1);

          v37 = v183;
        }

        else
        {

          v37 = v183;
          v183(v29, v30);
        }

        v9 = v186;
        v82 = *(v0 + 2288);
        v83 = *(v0 + 2216);
        sub_1D725846C();
        sub_1D72584AC();
        v37(v82, v83);
        sub_1D725851C();
        v84 = sub_1D726203C();

        v85 = [v186 fileExistsAtPath_];

        if (v85)
        {
          v86 = sub_1D725844C();
          *(v0 + 1400) = 0;
          v87 = [v186 removeItemAtURL:v86 error:v0 + 1400];

          v88 = *(v0 + 1400);
          if (!v87)
          {
            v134 = *(v0 + 2296);
            v135 = *(v0 + 2280);
            v136 = *(v0 + 2264);
            v137 = *(v0 + 2216);
            v175 = *(v0 + 2168);
            v179 = *(v0 + 2328);
            v138 = v88;
            *(v0 + 2592) = sub_1D725829C();

            swift_willThrow();
            sub_1D5B952F8(v187, v188);

            v37(v136, v137);
            v37(v135, v137);
            v37(v134, v137);
            sub_1D5B6EE98(v175, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            v37(v179, v137);
            v52 = sub_1D5F701B0;
            v53 = *(v0 + 2360);
            v54 = v0 + 16;
            v55 = v0 + 2032;
            goto LABEL_45;
          }

          v89 = v88;
        }

        v90 = sub_1D725844C();
        *(v0 + 1496) = 0;
        v91 = [v186 createDirectoryAtURL:v90 withIntermediateDirectories:0 attributes:0 error:v0 + 1496];

        v92 = *(v0 + 1496);
        if (v91)
        {
          v93 = v92;
          sub_1D725851C();
          v94 = sub_1D726203C();

          v95 = [v186 fileExistsAtPath_];

          if (v95)
          {
            v96 = sub_1D725844C();
            *(v0 + 1352) = 0;
            v97 = [v186 removeItemAtURL:v96 error:v0 + 1352];

            v98 = *(v0 + 1352);
            if (!v97)
            {
              v152 = *(v0 + 2296);
              v153 = *(v0 + 2280);
              v154 = *(v0 + 2264);
              v155 = *(v0 + 2216);
              v177 = *(v0 + 2168);
              v182 = *(v0 + 2328);
              v156 = v98;
              *(v0 + 2608) = sub_1D725829C();

              swift_willThrow();
              sub_1D5B952F8(v187, v188);

              v37(v154, v155);
              v37(v153, v155);
              v37(v152, v155);
              sub_1D5B6EE98(v177, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
              v37(v182, v155);
              v52 = sub_1D5F70690;
              v53 = *(v0 + 2360);
              v54 = v0 + 16;
              v55 = v0 + 1360;
              goto LABEL_45;
            }

            v99 = v98;
          }

          v100 = sub_1D725844C();
          v101 = sub_1D725844C();
          *(v0 + 1448) = 0;
          v102 = [v186 moveItemAtURL:v100 toURL:v101 error:v0 + 1448];

          v103 = *(v0 + 1448);
          if (v102)
          {
            v104 = objc_allocWithZone(MEMORY[0x1E69B68D0]);
            v105 = v103;
            v106 = [v104 init];
            v107 = sub_1D725844C();
            v108 = sub_1D725844C();
            v109 = [v106 unarchive:v107 toLocation:v108];

            v110 = [v173 defaultManager];
            sub_1D72583BC();
            v111 = sub_1D726203C();

            v112 = [v110 fileExistsAtPath_];

            if (v109 && v112)
            {
              v113 = *(v0 + 2416);
              v114 = *(v0 + 2304);
              v115 = *(v0 + 2296);
              v116 = *(v0 + 2280);
              v117 = *(v0 + 2264);
              v118 = *(v0 + 2216);

              v183(v117, v118);
              v183(v115, v118);
              v113(v114, v116, v118);
              v59 = v183;
LABEL_17:
              *(v0 + 2536) = v59;
              v71 = *(v0 + 2456);
              v72 = *(v0 + 2216);
              v73 = *(v0 + 2024);
              sub_1D5C00C88(*(v0 + 2168), v73, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
              if (v71(v73, 1, v72) == 1)
              {
                v74 = *(v0 + 2376);
                sub_1D5B6EE98(*(v0 + 2024), &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
                v75 = [v74 dataResourceID];
                if (v75)
                {
                  v76 = *(v0 + 1832);
                  v77 = v75;
                  v78 = sub_1D726207C();
                  v80 = v79;

                  __swift_project_boxed_opaque_existential_1((v76 + 80), *(v76 + 104));
                  *(v0 + 2544) = ResourceServiceType.fetchResource(identifier:)(v78, v80);

                  v81 = swift_task_alloc();
                  *(v0 + 2552) = v81;
                  *v81 = v0;
                  v81[1] = sub_1D5F6EE58;

                  return MEMORY[0x1EEE44EE0](v0 + 1592);
                }

                v157 = *(v0 + 2328);
                v158 = *(v0 + 2304);
                v159 = *(v0 + 2216);
                v160 = *(v0 + 2168);
                sub_1D5F75098();
                *(v0 + 2576) = swift_allocError();
                *v161 = 2;
                swift_willThrow();
                sub_1D5B952F8(v187, v188);

                v59(v158, v159);
                sub_1D5B6EE98(v160, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
                v59(v157, v159);
                v52 = sub_1D5F6F560;
                v53 = *(v0 + 2360);
                v54 = v0 + 16;
                v55 = v0 + 1504;
              }

              else
              {
                v139 = *(v0 + 2416);
                v140 = *(v0 + 2328);
                v180 = *(v0 + 2304);
                v185 = *(v0 + 2376);
                v141 = *(v0 + 2248);
                v142 = *(v0 + 2216);
                v143 = *(v0 + 2168);
                v176 = *(v0 + 2024);
                v144 = *(v0 + 1688);
                sub_1D5B952F8(v187, v188);

                sub_1D5B6EE98(v143, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
                v59(v140, v142);
                v139(v141, v176, v142);
                v145 = type metadata accessor for PuzzleResource();
                v139(&v144[v145[5]], v180, v142);
                v139(&v144[v145[6]], v141, v142);
                *v144 = v185;
                *&v144[v145[7]] = 0;
                swift_unknownObjectRetain();
                v52 = sub_1D5F6EBE0;
                v53 = *(v0 + 2360);
                v54 = v0 + 16;
                v55 = v0 + 1744;
              }

              goto LABEL_45;
            }

            v162 = sub_1D725C3FC();
            v163 = sub_1D7262EBC();
            if (os_log_type_enabled(v162, v163))
            {
              v164 = swift_slowAlloc();
              *v164 = 0;
              _os_log_impl(&dword_1D5B42000, v162, v163, "Failed to decompress archive file", v164, 2u);
              MEMORY[0x1DA6FD500](v164, -1, -1);
            }

            v165 = *(v0 + 2328);
            v166 = *(v0 + 2296);
            v167 = *(v0 + 2280);
            v168 = *(v0 + 2264);
            v169 = *(v0 + 2216);
            v170 = *(v0 + 2168);

            sub_1D5F75098();
            *(v0 + 2528) = swift_allocError();
            *v171 = 3;
            swift_willThrow();

            sub_1D5B952F8(v187, v188);
            v183(v168, v169);
            v183(v167, v169);
            v183(v166, v169);
            sub_1D5B6EE98(v170, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            v183(v165, v169);
            v52 = sub_1D5F6E970;
            v53 = *(v0 + 2360);
            v54 = v0 + 16;
            v55 = v0 + 2128;
          }

          else
          {
            v181 = *(v0 + 2328);
            v146 = *(v0 + 2296);
            v147 = *(v0 + 2280);
            v148 = *(v0 + 2264);
            v149 = *(v0 + 2216);
            v150 = *(v0 + 2168);
            v151 = v103;
            *(v0 + 2616) = sub_1D725829C();

            swift_willThrow();
            sub_1D5B952F8(v187, v188);

            v183(v148, v149);
            v183(v147, v149);
            v183(v146, v149);
            sub_1D5B6EE98(v150, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            v183(v181, v149);
            v52 = sub_1D5F70900;
            v53 = *(v0 + 2360);
            v54 = v0 + 16;
            v55 = v0 + 2080;
          }
        }

        else
        {
          v124 = *(v0 + 2296);
          v125 = *(v0 + 2280);
          v126 = *(v0 + 2264);
          v127 = *(v0 + 2216);
          v174 = *(v0 + 2168);
          v178 = *(v0 + 2328);
          v128 = v92;
          *(v0 + 2600) = sub_1D725829C();

          swift_willThrow();
          sub_1D5B952F8(v187, v188);

          v37(v126, v127);
          v37(v125, v127);
          v37(v124, v127);
          sub_1D5B6EE98(v174, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          v37(v178, v127);
          v52 = sub_1D5F70420;
          v53 = *(v0 + 2360);
          v54 = v0 + 16;
          v55 = v0 + 1984;
        }
      }

      else
      {
        v56 = *(v0 + 2288);
        v57 = *(v0 + 2224);
        v58 = *(v0 + 2216);
        sub_1D725846C();
        sub_1D72584AC();
        v59 = *(v57 + 8);
        v59(v56, v58);
        sub_1D725851C();
        v60 = sub_1D726203C();

        v61 = [v9 fileExistsAtPath_];

        if (v61)
        {
          v62 = sub_1D725844C();
          *(v0 + 1544) = 0;
          v63 = [v9 removeItemAtURL:v62 error:v0 + 1544];

          v64 = *(v0 + 1544);
          if (!v63)
          {
            v129 = *(v0 + 2328);
            v130 = *(v0 + 2256);
            v131 = *(v0 + 2216);
            v132 = *(v0 + 2168);
            v133 = v64;
            *(v0 + 2624) = sub_1D725829C();

            swift_willThrow();
            sub_1D5B952F8(v187, v188);

            v59(v130, v131);
            sub_1D5B6EE98(v132, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            v59(v129, v131);
            v52 = sub_1D5F70B70;
            v53 = *(v0 + 2360);
            v54 = v0 + 16;
            v55 = v0 + 1840;
            goto LABEL_45;
          }

          v65 = v64;
        }

        v66 = sub_1D725844C();
        v67 = sub_1D725844C();
        *(v0 + 1640) = 0;
        v68 = [v9 moveItemAtURL:v66 toURL:v67 error:v0 + 1640];

        v69 = *(v0 + 1640);
        if (v68)
        {
          (*(v0 + 2416))(*(v0 + 2304), *(v0 + 2256), *(v0 + 2216));
          v70 = v69;
          goto LABEL_17;
        }

        v119 = *(v0 + 2328);
        v120 = *(v0 + 2256);
        v121 = *(v0 + 2216);
        v122 = *(v0 + 2168);
        v123 = v69;
        *(v0 + 2632) = sub_1D725829C();

        swift_willThrow();
        sub_1D5B952F8(v187, v188);

        v59(v120, v121);
        sub_1D5B6EE98(v122, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        v59(v119, v121);
        v52 = sub_1D5F70DE0;
        v53 = *(v0 + 2360);
        v54 = v0 + 16;
        v55 = v0 + 1456;
      }
    }

    else
    {
      v47 = *(v0 + 2328);
      v48 = *(v0 + 2224);
      v49 = *(v0 + 2216);
      v50 = *(v0 + 2168);
      sub_1D5F75098();
      *(v0 + 2584) = swift_allocError();
      *v51 = 3;
      swift_willThrow();

      sub_1D5B6EE98(v50, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      (*(v48 + 8))(v47, v49);
      v52 = sub_1D5F6F7D0;
      v53 = *(v0 + 2360);
      v54 = v0 + 16;
      v55 = v0 + 2176;
    }

LABEL_45:

    return MEMORY[0x1EEE6DEB0](v54, v53, v52, v55);
  }

  v38 = *(v0 + 2416);
  v184 = *(v0 + 2392);
  v39 = *(v0 + 2384);
  v40 = *(v0 + 2320);
  v41 = *(v0 + 2312);
  v42 = *(v0 + 2216);
  v43 = (*(v0 + 2640) + 24) & ~*(v0 + 2640);
  v38(v40, *(v0 + 2120), v42);
  v184(v41, v40, v42);
  v44 = swift_allocObject();
  *(v0 + 2472) = v44;
  *(v44 + 16) = v39;
  v38(v44 + v43, v41, v42);
  v45 = v39;
  swift_asyncLet_begin();
  v46 = *(v0 + 2352);

  return MEMORY[0x1EEE6DEC0](v0 + 656, v46, sub_1D5F6D3C8, v0 + 1792);
}

uint64_t sub_1D5F6D3C8()
{
  *(v1 + 2480) = v0;
  if (v0)
  {
    v2 = sub_1D5F6FD2C;
  }

  else
  {
    v2 = sub_1D5F6D46C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6D46C()
{
  v1 = v0[305];
  v2 = v0[299];
  v3 = v0[294];
  v4 = v0[277];
  v5 = v0[271];
  v6 = v0[259];
  v7 = MEMORY[0x1E6968FB0];
  sub_1D5B6EE98(v5, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v2(v6, v3, v4);
  v1(v6, 0, 1, v4);
  sub_1D5F77210(v6, v5, &qword_1EDF45B40, v7);
  v8 = v0[294];

  return MEMORY[0x1EEE6DEB0](v0 + 82, v8, sub_1D5F6D5A0, v0 + 162);
}

uint64_t sub_1D5F6D5A0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F6D62C, 0, 0);
}

uint64_t sub_1D5F6D62C()
{
  v173 = v0;
  v172[1] = *MEMORY[0x1E69E9840];
  (*(v0[278] + 8))(v0[290], v0[277]);
  v0[312] = v0[309];
  v0[311] = &unk_1D7285908;
  v1 = objc_opt_self();
  v2 = [v1 defaultManager];
  v0[313] = v2;
  sub_1D725851C();
  v3 = sub_1D726203C();

  v4 = [v2 contentsAtPath_];

  if (v4)
  {
    v5 = sub_1D725867C();
    v7 = v6;

    v0[314] = v5;
    v0[315] = v7;
    v170 = v5;
    v171 = v7;
    if (sub_1D5F7183C(&unk_1F50F7A78, v5, v7))
    {
      v169 = v2;
      v8 = v0[286];
      v157 = v1;
      v9 = v0[278];
      v10 = v0[277];
      v11 = v0[247];
      v12 = v0[241];
      v13 = v0[235];
      sub_1D72584BC();
      v0[167] = 0xD000000000000010;
      v0[168] = 0x80000001D73C40F0;
      (*(v12 + 104))(v11, *MEMORY[0x1E6968F58], v13);
      sub_1D5BF4D9C();
      sub_1D725858C();
      (*(v12 + 8))(v11, v13);
      v167 = *(v9 + 8);
      v167(v8, v10);
      sub_1D725849C();
      if (qword_1EDF3B838 != -1)
      {
        swift_once();
      }

      v14 = v0[299];
      v15 = v0[287];
      v16 = v0[284];
      v17 = v0[277];
      v18 = sub_1D725C42C();
      __swift_project_value_buffer(v18, qword_1EDFFCFA8);
      v14(v16, v15, v17);
      v19 = sub_1D725C3FC();
      v20 = sub_1D7262EDC();
      v21 = os_log_type_enabled(v19, v20);
      v22 = v0[284];
      v23 = v0[277];
      if (v21)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v172[0] = v25;
        *v24 = 136315138;
        sub_1D5C10CB0(&qword_1EDF18AC0, 255, MEMORY[0x1E6968FB0]);
        v26 = sub_1D72644BC();
        v28 = v27;
        v167(v22, v23);
        v29 = sub_1D5BC5100(v26, v28, v172);

        *(v24 + 4) = v29;
        _os_log_impl(&dword_1D5B42000, v19, v20, "Unarchiving puzzle [%s]", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x1DA6FD500](v25, -1, -1);
        MEMORY[0x1DA6FD500](v24, -1, -1);

        v30 = v167;
      }

      else
      {

        v30 = v167;
        v167(v22, v23);
      }

      v2 = v169;
      v66 = v0[286];
      v67 = v0[277];
      sub_1D725846C();
      sub_1D72584AC();
      v30(v66, v67);
      sub_1D725851C();
      v68 = sub_1D726203C();

      v69 = [v169 fileExistsAtPath_];

      if (v69)
      {
        v70 = sub_1D725844C();
        v0[175] = 0;
        v71 = [v169 removeItemAtURL:v70 error:v0 + 175];

        v72 = v0[175];
        if (!v71)
        {
          v118 = v0[287];
          v119 = v0[285];
          v120 = v0[283];
          v121 = v0[277];
          v159 = v0[271];
          v163 = v0[291];
          v122 = v72;
          v0[324] = sub_1D725829C();

          swift_willThrow();
          sub_1D5B952F8(v170, v7);

          v30(v120, v121);
          v30(v119, v121);
          v30(v118, v121);
          sub_1D5B6EE98(v159, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          v30(v163, v121);
          v36 = sub_1D5F701B0;
          v37 = v0[295];
          v38 = v0 + 2;
          v39 = v0 + 254;
          goto LABEL_41;
        }

        v73 = v72;
      }

      v74 = sub_1D725844C();
      v0[187] = 0;
      v75 = [v169 createDirectoryAtURL:v74 withIntermediateDirectories:0 attributes:0 error:v0 + 187];

      v76 = v0[187];
      if (!v75)
      {
        v108 = v0[287];
        v109 = v0[285];
        v110 = v0[283];
        v111 = v0[277];
        v158 = v0[271];
        v162 = v0[291];
        v112 = v76;
        v0[325] = sub_1D725829C();

        swift_willThrow();
        sub_1D5B952F8(v170, v7);

        v30(v110, v111);
        v30(v109, v111);
        v30(v108, v111);
        sub_1D5B6EE98(v158, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        v30(v162, v111);
        v36 = sub_1D5F70420;
        v37 = v0[295];
        v38 = v0 + 2;
        v39 = v0 + 248;
        goto LABEL_41;
      }

      v77 = v76;
      sub_1D725851C();
      v78 = sub_1D726203C();

      v79 = [v169 fileExistsAtPath_];

      if (v79)
      {
        v80 = sub_1D725844C();
        v0[169] = 0;
        v81 = [v169 removeItemAtURL:v80 error:v0 + 169];

        v82 = v0[169];
        if (!v81)
        {
          v136 = v0[287];
          v137 = v0[285];
          v138 = v0[283];
          v139 = v0[277];
          v161 = v0[271];
          v166 = v0[291];
          v140 = v82;
          v0[326] = sub_1D725829C();

          swift_willThrow();
          sub_1D5B952F8(v170, v7);

          v30(v138, v139);
          v30(v137, v139);
          v30(v136, v139);
          sub_1D5B6EE98(v161, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          v30(v166, v139);
          v36 = sub_1D5F70690;
          v37 = v0[295];
          v38 = v0 + 2;
          v39 = v0 + 170;
          goto LABEL_41;
        }

        v83 = v82;
      }

      v84 = sub_1D725844C();
      v85 = sub_1D725844C();
      v0[181] = 0;
      v86 = [v169 moveItemAtURL:v84 toURL:v85 error:v0 + 181];

      v87 = v0[181];
      if (!v86)
      {
        v165 = v0[291];
        v130 = v0[287];
        v131 = v0[285];
        v132 = v0[283];
        v133 = v0[277];
        v134 = v0[271];
        v135 = v87;
        v0[327] = sub_1D725829C();

        swift_willThrow();
        sub_1D5B952F8(v170, v7);

        v167(v132, v133);
        v167(v131, v133);
        v167(v130, v133);
        sub_1D5B6EE98(v134, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        v167(v165, v133);
        v36 = sub_1D5F70900;
        v37 = v0[295];
        v38 = v0 + 2;
        v39 = v0 + 260;
        goto LABEL_41;
      }

      v88 = objc_allocWithZone(MEMORY[0x1E69B68D0]);
      v89 = v87;
      v90 = [v88 init];
      v91 = sub_1D725844C();
      v92 = sub_1D725844C();
      v93 = [v90 unarchive:v91 toLocation:v92];

      v94 = [v157 defaultManager];
      sub_1D72583BC();
      v95 = sub_1D726203C();

      v96 = [v94 fileExistsAtPath_];

      if (!v93 || !v96)
      {
        v146 = sub_1D725C3FC();
        v147 = sub_1D7262EBC();
        if (os_log_type_enabled(v146, v147))
        {
          v148 = swift_slowAlloc();
          *v148 = 0;
          _os_log_impl(&dword_1D5B42000, v146, v147, "Failed to decompress archive file", v148, 2u);
          MEMORY[0x1DA6FD500](v148, -1, -1);
        }

        v149 = v0[291];
        v150 = v0[287];
        v151 = v0[285];
        v152 = v0[283];
        v153 = v0[277];
        v154 = v0[271];

        sub_1D5F75098();
        v0[316] = swift_allocError();
        *v155 = 3;
        swift_willThrow();

        sub_1D5B952F8(v170, v7);
        v167(v152, v153);
        v167(v151, v153);
        v167(v150, v153);
        sub_1D5B6EE98(v154, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        v167(v149, v153);
        v36 = sub_1D5F6E970;
        v37 = v0[295];
        v38 = v0 + 2;
        v39 = v0 + 266;
        goto LABEL_41;
      }

      v97 = v0[302];
      v98 = v0[288];
      v99 = v0[287];
      v100 = v0[285];
      v101 = v0[283];
      v102 = v0[277];

      v167(v101, v102);
      v167(v99, v102);
      v97(v98, v100, v102);
      v43 = v167;
    }

    else
    {
      v40 = v0[286];
      v41 = v0[278];
      v42 = v0[277];
      sub_1D725846C();
      sub_1D72584AC();
      v43 = *(v41 + 8);
      v43(v40, v42);
      sub_1D725851C();
      v44 = sub_1D726203C();

      v45 = [v2 fileExistsAtPath_];

      if (v45)
      {
        v46 = sub_1D725844C();
        v0[193] = 0;
        v47 = [v2 removeItemAtURL:v46 error:v0 + 193];

        v48 = v0[193];
        if (!v47)
        {
          v113 = v0[291];
          v114 = v0[282];
          v115 = v0[277];
          v116 = v0[271];
          v117 = v48;
          v0[328] = sub_1D725829C();

          swift_willThrow();
          sub_1D5B952F8(v170, v171);

          v43(v114, v115);
          sub_1D5B6EE98(v116, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          v43(v113, v115);
          v36 = sub_1D5F70B70;
          v37 = v0[295];
          v38 = v0 + 2;
          v39 = v0 + 230;
          goto LABEL_41;
        }

        v49 = v48;
      }

      v50 = sub_1D725844C();
      v51 = sub_1D725844C();
      v0[205] = 0;
      v52 = [v2 moveItemAtURL:v50 toURL:v51 error:v0 + 205];

      v53 = v0[205];
      if (!v52)
      {
        v103 = v0[291];
        v104 = v0[282];
        v105 = v0[277];
        v106 = v0[271];
        v107 = v53;
        v0[329] = sub_1D725829C();

        swift_willThrow();
        sub_1D5B952F8(v170, v171);

        v43(v104, v105);
        sub_1D5B6EE98(v106, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        v43(v103, v105);
        v36 = sub_1D5F70DE0;
        v37 = v0[295];
        v38 = v0 + 2;
        v39 = v0 + 182;
        goto LABEL_41;
      }

      (v0[302])(v0[288], v0[282], v0[277]);
      v54 = v53;
    }

    v0[317] = v43;
    v55 = v0[307];
    v56 = v0[277];
    v57 = v0[253];
    sub_1D5C00C88(v0[271], v57, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    if (v55(v57, 1, v56) == 1)
    {
      v58 = v0[297];
      sub_1D5B6EE98(v0[253], &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v59 = [v58 dataResourceID];
      if (v59)
      {
        v60 = v0[229];
        v61 = v59;
        v62 = sub_1D726207C();
        v64 = v63;

        __swift_project_boxed_opaque_existential_1((v60 + 80), *(v60 + 104));
        v0[318] = ResourceServiceType.fetchResource(identifier:)(v62, v64);

        v65 = swift_task_alloc();
        v0[319] = v65;
        *v65 = v0;
        v65[1] = sub_1D5F6EE58;

        return MEMORY[0x1EEE44EE0](v0 + 199);
      }

      v141 = v0[291];
      v142 = v0[288];
      v143 = v0[277];
      v144 = v0[271];
      sub_1D5F75098();
      v0[322] = swift_allocError();
      *v145 = 2;
      swift_willThrow();
      sub_1D5B952F8(v170, v171);

      v43(v142, v143);
      sub_1D5B6EE98(v144, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v43(v141, v143);
      v36 = sub_1D5F6F560;
      v37 = v0[295];
      v38 = v0 + 2;
      v39 = v0 + 188;
    }

    else
    {
      v123 = v0[302];
      v124 = v0[291];
      v164 = v0[288];
      v168 = v0[297];
      v125 = v0[281];
      v126 = v0[277];
      v127 = v0[271];
      v160 = v0[253];
      v128 = v0[211];
      sub_1D5B952F8(v170, v171);

      sub_1D5B6EE98(v127, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v43(v124, v126);
      v123(v125, v160, v126);
      v129 = type metadata accessor for PuzzleResource();
      v123(&v128[v129[5]], v164, v126);
      v123(&v128[v129[6]], v125, v126);
      *v128 = v168;
      *&v128[v129[7]] = 0;
      swift_unknownObjectRetain();
      v36 = sub_1D5F6EBE0;
      v37 = v0[295];
      v38 = v0 + 2;
      v39 = v0 + 218;
    }
  }

  else
  {
    v31 = v0[291];
    v32 = v0[278];
    v33 = v0[277];
    v34 = v0[271];
    sub_1D5F75098();
    v0[323] = swift_allocError();
    *v35 = 3;
    swift_willThrow();

    sub_1D5B6EE98(v34, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    (*(v32 + 8))(v31, v33);
    v36 = sub_1D5F6F7D0;
    v37 = v0[295];
    v38 = v0 + 2;
    v39 = v0 + 272;
  }

LABEL_41:

  return MEMORY[0x1EEE6DEB0](v38, v37, v36, v39);
}

uint64_t sub_1D5F6E970()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F6E9FC, 0, 0);
}

uint64_t sub_1D5F6E9FC()
{
  v1 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D5F6EBE0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F6EC6C, 0, 0);
}

uint64_t sub_1D5F6EC6C()
{
  v1 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D5F6EE58()
{
  *(*v1 + 2560) = v0;

  if (v0)
  {
    v2 = sub_1D5F71050;
  }

  else
  {
    v2 = sub_1D5F6EFB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F6EFB8()
{
  v26 = v0[199];
  v1 = [v26 fileURL];
  v25 = v0[317];
  v2 = v0[315];
  v3 = v0[314];
  v4 = v0[313];
  if (v1)
  {
    v23 = v0[302];
    v24 = v0[297];
    v21 = v0[291];
    v22 = v0[288];
    v5 = v0[280];
    v6 = v0[277];
    v7 = v0[271];
    v8 = v0[211];
    v9 = v1;
    sub_1D72584EC();
    sub_1D5B952F8(v3, v2);

    sub_1D5B6EE98(v7, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v25(v21, v6);
    v10 = type metadata accessor for PuzzleResource();
    v23(&v8[v10[5]], v22, v6);
    v23(&v8[v10[6]], v5, v6);
    *v8 = v24;
    *&v8[v10[7]] = v26;
    swift_unknownObjectRetain();
    v11 = sub_1D5F6F264;
    v12 = v0[295];
    v13 = v0 + 2;
    v14 = v0 + 212;
  }

  else
  {
    v15 = v0[291];
    v16 = v0[288];
    v17 = v0[277];
    v18 = v0[271];
    sub_1D5F75098();
    v0[321] = swift_allocError();
    *v19 = 4;
    swift_willThrow();
    sub_1D5B952F8(v3, v2);

    v25(v16, v17);
    sub_1D5B6EE98(v18, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v25(v15, v17);
    v11 = sub_1D5F6F2F0;
    v12 = v0[295];
    v13 = v0 + 2;
    v14 = v0 + 206;
  }

  return MEMORY[0x1EEE6DEB0](v13, v12, v11, v14);
}

uint64_t sub_1D5F6F264()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F77AF0, 0, 0);
}

uint64_t sub_1D5F6F2F0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F6F37C, 0, 0);
}

uint64_t sub_1D5F6F37C()
{
  v1 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D5F6F560()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F6F5EC, 0, 0);
}

uint64_t sub_1D5F6F5EC()
{
  v1 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D5F6F7D0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F6F85C, 0, 0);
}

uint64_t sub_1D5F6F85C()
{
  v1 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D5F6FA40()
{
  v1 = *(v0 + 2360);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v1, sub_1D5F6FAD0, v0 + 1888);
}

uint64_t sub_1D5F6FAD0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F6FB5C, 0, 0);
}

uint64_t sub_1D5F6FB5C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5F6FD2C()
{
  v1 = *(v0 + 2352);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v1, sub_1D5F6FDBC, v0 + 1552);
}

uint64_t sub_1D5F6FDBC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F6FE48, 0, 0);
}

uint64_t sub_1D5F6FE48()
{
  v1 = v0[291];
  v2 = v0[277];
  v3 = v0[271];
  v4 = *(v0[278] + 8);
  v4(v0[290], v2);
  sub_1D5B6EE98(v3, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v4(v1, v2);
  v5 = v0[295];

  return MEMORY[0x1EEE6DEB0](v0 + 2, v5, sub_1D5F6FF48, v0 + 176);
}

uint64_t sub_1D5F6FF48()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F6FFD4, 0, 0);
}

uint64_t sub_1D5F6FFD4()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5F701B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F7023C, 0, 0);
}

uint64_t sub_1D5F7023C()
{
  v1 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D5F70420()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F704AC, 0, 0);
}

uint64_t sub_1D5F704AC()
{
  v1 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D5F70690()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F7071C, 0, 0);
}

uint64_t sub_1D5F7071C()
{
  v1 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D5F70900()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F7098C, 0, 0);
}

uint64_t sub_1D5F7098C()
{
  v1 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D5F70B70()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F70BFC, 0, 0);
}

uint64_t sub_1D5F70BFC()
{
  v1 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D5F70DE0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F70E6C, 0, 0);
}

uint64_t sub_1D5F70E6C()
{
  v1 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D5F71050()
{
  v1 = v0[317];
  v2 = v0[313];
  v3 = v0[291];
  v4 = v0[288];
  v5 = v0[277];
  v6 = v0[271];
  sub_1D5B952F8(v0[314], v0[315]);

  v1(v4, v5);
  sub_1D5B6EE98(v6, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v1(v3, v5);
  v7 = v0[295];

  return MEMORY[0x1EEE6DEB0](v0 + 2, v7, sub_1D5F71174, v0 + 200);
}

uint64_t sub_1D5F71174()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5F71200, 0, 0);
}

uint64_t sub_1D5F71200()
{
  v1 = *(v0 + 2488);

  swift_unknownObjectRelease();

  sub_1D5B74328(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D5F713E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D5F714A0;

  return MEMORY[0x1EEDC6280](a1, a3, 0);
}

uint64_t sub_1D5F714A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;
    sub_1D5F752F4();
    *(v4 + 40) = *(v8 + 48);

    return MEMORY[0x1EEE6DFA0](sub_1D5F77AB8, 0, 0);
  }
}

uint64_t sub_1D5F715FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D5F716B8;

  return MEMORY[0x1EEDC6280](a1, a3, 0);
}

uint64_t sub_1D5F716B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;
    sub_1D5F752F4();
    *(v4 + 40) = *(v8 + 48);

    return MEMORY[0x1EEE6DFA0](sub_1D5F71814, 0, 0);
  }
}

uint64_t sub_1D5F7183C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1D72586BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5E3E824(a2, a3);
  sub_1D72586CC();
  sub_1D5C10CB0(&qword_1EC8817C0, 255, MEMORY[0x1E6969050]);
  v11 = 0;
  while (1)
  {
    result = sub_1D72639DC();
    if (v16[15])
    {
      result = (*(v7 + 8))(v10, v6);
      v15 = *(a1 + 16);
      if (v15 != v11)
      {
        if (v11 < v15)
        {
          return 0;
        }

        goto LABEL_13;
      }

      return 1;
    }

    v13 = *(a1 + 16);
    if (v11 == v13)
    {
      (*(v7 + 8))(v10, v6);
      return 1;
    }

    if (v11 >= v13)
    {
      break;
    }

    v14 = *(a1 + 32 + v11++);
    if (v16[14] != v14)
    {
      (*(v7 + 8))(v10, v6);
      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t PuzzleService.prewarmPuzzleTypeResource(for:cachePolicy:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F71A60, 0, 0);
}

uint64_t sub_1D5F71A60()
{
  v1 = v0[3];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[3];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_1D7263BFC();
  v4 = v0[3];
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v1 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1DA6FB460](v1, v0[3]);
        v5 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v1 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v9 = *(v7 + 8 * v1);
        swift_unknownObjectRetain();
        v5 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v10 = [v9 engineResourceID];
      if (v10)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v1;
      if (v5 == v3)
      {
        goto LABEL_24;
      }
    }

    v26 = v0;
    v11 = v8;
    v12 = v10;
    v13 = sub_1D726207C();
    v25 = v14;
    swift_unknownObjectRelease();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1D5B858EC(0, *(v11 + 2) + 1, 1, v11);
    }

    v16 = *(v11 + 2);
    v15 = *(v11 + 3);
    v17 = v11;
    if (v16 >= v15 >> 1)
    {
      v17 = sub_1D5B858EC((v15 > 1), v16 + 1, 1, v11);
    }

    *(v17 + 2) = v16 + 1;
    v18 = &v17[16 * v16];
    v8 = v17;
    *(v18 + 4) = v13;
    *(v18 + 5) = v25;
    v0 = v26;
  }

  while (v5 != v3);
LABEL_24:
  v20 = v0[4];
  v19 = v0[5];
  v21 = v19[13];
  v22 = v19[14];
  __swift_project_boxed_opaque_existential_1(v19 + 10, v21);
  v0[6] = ResourceServiceType.fetchResources(identifiers:cachePolicy:)(v8, v20, v21, v22);

  v23 = swift_task_alloc();
  v0[7] = v23;
  *v23 = v0;
  v23[1] = sub_1D5F71CCC;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1D5F71CCC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D5E792F8;
  }

  else
  {

    v2 = sub_1D5F71DF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t PuzzleService.thumbnailSmallUrl(for:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F71E2C, 0, 0);
}

uint64_t sub_1D5F71E2C()
{
  v1 = swift_task_alloc();
  v0[3].i64[0] = v1;
  v1[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2 = swift_task_alloc();
  v0[3].i64[1] = v2;
  sub_1D5B5D3A4(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  *v2 = v0;
  v2[1] = sub_1D5F71F50;

  return MEMORY[0x1EEE6DE38](&v0[1], 0, 0, 0xD000000000000017, 0x80000001D73C4110, sub_1D5F75600, v1, v3);
}

uint64_t sub_1D5F71F50()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D5F68E8C;
  }

  else
  {

    v2 = sub_1D5F7206C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D5F72088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5F77808();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6, v10);
  v12 = *(a2 + 72);
  (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v11);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  aBlock[4] = sub_1D5F7793C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6837FA4;
  aBlock[3] = &block_descriptor_182;
  v15 = _Block_copy(aBlock);

  [v12 fetchThumbnailUrlForPuzzle:a3 completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_1D5F72238(int a1, uint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
LABEL_3:
    sub_1D5F77808();
    return sub_1D726286C();
  }

  if (!a2)
  {
    sub_1D5F75098();
    swift_allocError();
    *v5 = 2;
    goto LABEL_3;
  }

  sub_1D5F77808();

  return sub_1D726287C();
}

uint64_t PuzzleService.thumbnailSmallJSON(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F72308, 0, 0);
}

uint64_t sub_1D5F72308()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_1D5B5A498(0, &qword_1EDF04648);
  *v2 = v0;
  v2[1] = sub_1D5F72418;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000018, 0x80000001D73C4130, sub_1D5F75608, v1, v3);
}

uint64_t sub_1D5F72418()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D5F72534;
  }

  else
  {

    v2 = sub_1D5F77B74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F72534()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D5F72598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5F776F8();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6, v10);
  v12 = *(a2 + 72);
  (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v11);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  aBlock[4] = sub_1D5F77788;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5F72800;
  aBlock[3] = &block_descriptor_11;
  v15 = _Block_copy(aBlock);

  [v12 fetchThumbnailJSONForPuzzleType:a3 completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_1D5F72748(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    sub_1D5F776F8();
    return sub_1D726286C();
  }

  if (!a1)
  {
    sub_1D5F75098();
    swift_allocError();
    *v4 = 2;
    goto LABEL_3;
  }

  sub_1D7261D2C();
  sub_1D5F776F8();
  return sub_1D726287C();
}

uint64_t sub_1D5F72800(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1D7261D3C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t PuzzleService.prewarmPuzzleResource(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D5F728CC, 0, 0);
}

uint64_t sub_1D5F728CC()
{
  v1 = v0[3];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[3];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_1D7263BFC();
  v4 = v0[3];
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v1 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1DA6FB460](v1, v0[3]);
        v5 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v1 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v9 = *(v7 + 8 * v1);
        swift_unknownObjectRetain();
        v5 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v10 = [v9 dataResourceID];
      if (v10)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v1;
      if (v5 == v3)
      {
        goto LABEL_24;
      }
    }

    v25 = v0;
    v11 = v8;
    v12 = v10;
    v13 = sub_1D726207C();
    v24 = v14;
    swift_unknownObjectRelease();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1D5B858EC(0, *(v11 + 2) + 1, 1, v11);
    }

    v16 = *(v11 + 2);
    v15 = *(v11 + 3);
    v17 = v11;
    if (v16 >= v15 >> 1)
    {
      v17 = sub_1D5B858EC((v15 > 1), v16 + 1, 1, v11);
    }

    *(v17 + 2) = v16 + 1;
    v18 = &v17[16 * v16];
    v8 = v17;
    *(v18 + 4) = v13;
    *(v18 + 5) = v24;
    v0 = v25;
  }

  while (v5 != v3);
LABEL_24:
  v19 = v0[4];
  v20 = v19[13];
  v21 = v19[14];
  __swift_project_boxed_opaque_existential_1(v19 + 10, v20);
  v0[5] = ResourceServiceType.fetchResources(identifiers:)(v8, v20, v21);

  v22 = swift_task_alloc();
  v0[6] = v22;
  *v22 = v0;
  v22[1] = sub_1D5F72B34;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1D5F72B34()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D5E6E770;
  }

  else
  {

    v2 = sub_1D5F77B68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t PuzzleService.latestPublishedPuzzleIDs(for:)(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_1D7258C2C();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  sub_1D5B5446C(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v4 = sub_1D725891C();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5F72E4C, 0, 0);
}

uint64_t sub_1D5F72E4C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = [objc_msgSend(*(v2 + 160) appConfiguration)];
  *(v0 + 264) = v3;
  swift_unknownObjectRelease();
  [v3 recentPuzzlesCacheLifetime];
  v4 = [v1 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  *(v0 + 272) = v5;
  *(v0 + 280) = v7;
  *(v0 + 288) = *(v2 + 168);
  sub_1D725A76C();
  swift_beginAccess();
  v8 = *(v2 + 176);
  if (*(v8 + 16) && (v9 = sub_1D5B69D90(v5, v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v0 + 120);
  swift_endAccess();
  swift_beginAccess();
  v13 = *(v12 + 184);
  if (*(v13 + 16) && (v14 = sub_1D5B69D90(v5, v7), (v15 & 1) != 0))
  {
    (*(*(v0 + 208) + 16))(*(v0 + 192), *(v13 + 56) + *(*(v0 + 208) + 72) * v14, *(v0 + 200));
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v18 = *(v0 + 200);
  v17 = *(v0 + 208);
  v19 = *(v0 + 192);
  v20 = *(v17 + 56);
  *(v0 + 296) = v20;
  v20(v19, v16, 1, v18);
  swift_endAccess();
  v21 = *(v17 + 48);
  *(v0 + 304) = v21;
  *(v0 + 312) = (v17 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v21(v19, 1, v18) == 1)
  {
    v23 = *(v0 + 192);
    v22 = *(v0 + 200);
    sub_1D72587BC();
    if (v21(v23, 1, v22) != 1)
    {
      sub_1D5B6EE98(*(v0 + 192), &qword_1EDF45B00, MEMORY[0x1E6969530]);
    }
  }

  else
  {
    (*(*(v0 + 208) + 32))(*(v0 + 256), *(v0 + 192), *(v0 + 200));
  }

  sub_1D725A77C();
  if (v11)
  {
    v62 = v11;
    v24 = *(v0 + 248);
    v25 = *(v0 + 240);
    v27 = *(v0 + 200);
    v26 = *(v0 + 208);
    sub_1D725880C();
    sub_1D72588CC();
    v28 = sub_1D725882C();
    v29 = *(v26 + 8);
    v29(v25, v27);
    v29(v24, v27);
    if (v28)
    {
      v29(*(v0 + 256), *(v0 + 200));

LABEL_24:

      v54 = *(v0 + 8);

      return v54(v62);
    }
  }

  v30 = [*(v0 + 112) latestPuzzleIDs];
  if (!v30)
  {
    v43 = *(v0 + 256);
    v44 = *(v0 + 200);
    v45 = *(v0 + 208);

    (*(v45 + 8))(v43, v44);
    v62 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v31 = *(v0 + 200);
  v32 = *(v0 + 208);
  v33 = *(v0 + 184);
  v34 = v30;
  v35 = sub_1D726267C();

  *(v0 + 320) = (v32 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v20(v33, 1, 1, v31);
  sub_1D7258BCC();
  if (!v35[2])
  {

    v56 = *(v0 + 296);
    v46 = *(v0 + 272);
    v47 = *(v0 + 280);
    v61 = *(v0 + 256);
    v48 = *(v0 + 208);
    v55 = *(v0 + 200);
    v59 = *(v0 + 264);
    v60 = *(v0 + 184);
    v49 = *(v0 + 152);
    v50 = *(v0 + 136);
    v57 = *(v0 + 128);
    v58 = *(v0 + 144);
    v51 = *(v0 + 120);
    sub_1D725A76C();
    swift_beginAccess();

    v52 = MEMORY[0x1E69E7CC0];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v52;
    v63 = *(v51 + 176);
    *(v51 + 176) = 0x8000000000000000;
    sub_1D6D77254(v52, v46, v47, isUniquelyReferenced_nonNull_native);

    *(v51 + 176) = v63;
    swift_endAccess();
    sub_1D72588CC();
    v56(v49, 0, 1, v55);
    swift_beginAccess();
    sub_1D6D60620(v49, v46, v47);
    swift_endAccess();
    sub_1D725A77C();

    (*(v50 + 8))(v58, v57);
    sub_1D5B6EE98(v60, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    (*(v48 + 8))(v61, v55);
    goto LABEL_24;
  }

  v36 = MEMORY[0x1E69E7CC0];
  *(v0 + 336) = v35;
  *(v0 + 344) = v36;
  *(v0 + 328) = v35 + 2;
  v38 = v35[4];
  v37 = v35[5];
  sub_1D5B5D3A4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v39 = swift_allocObject();
  *(v0 + 352) = v39;
  *(v39 + 16) = xmmword_1D7273AE0;
  *(v39 + 32) = v38;
  *(v39 + 40) = v37;

  FCCurrentQoSOrUtilityIfMain();
  v40 = FCDispatchQueueForQualityOfService();
  *(v0 + 360) = v40;
  v41 = swift_task_alloc();
  *(v0 + 368) = v41;
  *v41 = v0;
  v41[1] = sub_1D5F73558;

  return PuzzleService.puzzles(for:excludeDrafts:callbackQueue:)(v39, 0, v40);
}

uint64_t sub_1D5F73558(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 376) = a1;
  *(v4 + 384) = v1;

  if (v1)
  {

    v5 = sub_1D5F73EA8;
  }

  else
  {
    v5 = sub_1D5F736C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5F736C8()
{
  v3 = *(v1 + 376);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_29:

    goto LABEL_30;
  }

  if (!sub_1D7263BFC())
  {
    goto LABEL_29;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA6FB460](0, *(v1 + 376));
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_36:
      result = sub_1D5B858EC(0, *(v2 + 16) + 1, 1, v2);
      v2 = result;
      goto LABEL_16;
    }

    v4 = *(*(v1 + 376) + 32);
    swift_unknownObjectRetain();
  }

  v5 = [v4 publishDate];
  if (!v5)
  {
    swift_unknownObjectRelease();
LABEL_30:

    v51 = *(v1 + 344);
    goto LABEL_31;
  }

  v6 = *(v1 + 304);
  v8 = *(v1 + 224);
  v7 = *(v1 + 232);
  v9 = *(v1 + 200);
  v10 = *(v1 + 208);
  v11 = *(v1 + 184);
  v12 = *(v1 + 168);
  v13 = v5;
  sub_1D72588BC();

  v14 = *(v10 + 32);
  v14(v7, v8, v9);
  sub_1D5F77210(v11, v12, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  v66 = v14;
  if (v6(v12, 1, v9) == 1)
  {
    v15 = *(v1 + 304);
    v16 = *(v1 + 200);
    v17 = *(v1 + 168);
    (*(*(v1 + 208) + 16))(*(v1 + 176), *(v1 + 232), v16);
    if (v15(v17, 1, v16) != 1)
    {
      sub_1D5B6EE98(*(v1 + 168), &qword_1EDF45B00, MEMORY[0x1E6969530]);
    }
  }

  else
  {
    v14(*(v1 + 176), *(v1 + 168), *(v1 + 200));
  }

  v18 = *(v1 + 304);
  v19 = *(v1 + 200);
  v21 = *(v1 + 176);
  v20 = *(v1 + 184);
  v22 = *(v1 + 160);
  (*(v1 + 296))(v21, 0, 1, v19);
  v23 = MEMORY[0x1E6969530];
  sub_1D5F77210(v21, v20, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  sub_1D5C00C88(v20, v22, &qword_1EDF45B00, v23);
  if (v18(v22, 1, v19) == 1)
  {
    v24 = *(v1 + 160);
    (*(*(v1 + 208) + 8))(*(v1 + 232), *(v1 + 200));
    swift_unknownObjectRelease();
    sub_1D5B6EE98(v24, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    goto LABEL_30;
  }

  v66(*(v1 + 216), *(v1 + 160), *(v1 + 200));
  if ((sub_1D7258BBC() & 1) == 0)
  {
    v46 = *(v1 + 232);
    v47 = *(v1 + 208);
    v48 = *(v1 + 216);
    v49 = *(v1 + 200);
    swift_unknownObjectRelease();
    v50 = *(v47 + 8);
    v50(v48, v49);
    v50(v46, v49);
    goto LABEL_30;
  }

  v25 = [v4 identifier];
  v3 = sub_1D726207C();
  v0 = v26;

  result = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v1 + 344);
  if ((result & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_16:
  v29 = *(v2 + 16);
  v28 = *(v2 + 24);
  if (v29 >= v28 >> 1)
  {
    result = sub_1D5B858EC((v28 > 1), v29 + 1, 1, v2);
    v2 = result;
  }

  v30 = *(v1 + 328);
  *(v2 + 16) = v29 + 1;
  v31 = v2 + 16 * v29;
  *(v31 + 32) = v3;
  *(v31 + 40) = v0;
  v32 = *v30;
  if (!*v30)
  {
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v1 + 336);
  if (!isUniquelyReferenced_nonNull_native || (v32 - 1) > *(v34 + 3) >> 1)
  {
    v34 = sub_1D5B858EC(isUniquelyReferenced_nonNull_native, v32, 1, *(v1 + 336));
  }

  v35 = *(v1 + 232);
  v36 = *(v1 + 208);
  v37 = *(v1 + 216);
  v38 = *(v1 + 200);
  sub_1D5BFB68C((v34 + 32));
  v39 = *(v34 + 2);
  memmove(v34 + 32, v34 + 48, 16 * v39 - 16);
  *(v34 + 2) = v39 - 1;
  swift_unknownObjectRelease();
  v40 = *(v36 + 8);
  v40(v37, v38);
  v40(v35, v38);
  if (!*(v34 + 2))
  {

    v51 = v2;
LABEL_31:
    v61 = *(v1 + 296);
    v52 = *(v1 + 272);
    v53 = *(v1 + 280);
    v67 = *(v1 + 256);
    v54 = *(v1 + 208);
    v60 = *(v1 + 200);
    v64 = *(v1 + 264);
    v65 = *(v1 + 184);
    v55 = *(v1 + 152);
    v56 = *(v1 + 136);
    v62 = *(v1 + 128);
    v63 = *(v1 + 144);
    v57 = *(v1 + 120);
    sub_1D725A76C();
    swift_beginAccess();

    v58 = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(v57 + 176);
    *(v57 + 176) = 0x8000000000000000;
    sub_1D6D77254(v51, v52, v53, v58);

    *(v57 + 176) = v68;
    swift_endAccess();
    sub_1D72588CC();
    v61(v55, 0, 1, v60);
    swift_beginAccess();
    sub_1D6D60620(v55, v52, v53);
    swift_endAccess();
    sub_1D725A77C();

    (*(v56 + 8))(v63, v62);
    sub_1D5B6EE98(v65, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    (*(v54 + 8))(v67, v60);

    v59 = *(v1 + 8);

    return v59(v51);
  }

  *(v1 + 336) = v34;
  *(v1 + 344) = v2;
  *(v1 + 328) = v34 + 16;
  v42 = *(v34 + 4);
  v41 = *(v34 + 5);
  sub_1D5B5D3A4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v43 = swift_allocObject();
  *(v1 + 352) = v43;
  *(v43 + 16) = xmmword_1D7273AE0;
  *(v43 + 32) = v42;
  *(v43 + 40) = v41;

  FCCurrentQoSOrUtilityIfMain();
  v44 = FCDispatchQueueForQualityOfService();
  *(v1 + 360) = v44;
  v45 = swift_task_alloc();
  *(v1 + 368) = v45;
  *v45 = v1;
  v45[1] = sub_1D5F73558;

  return PuzzleService.puzzles(for:excludeDrafts:callbackQueue:)(v43, 0, v44);
}

uint64_t sub_1D5F73EA8()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[26];
  v4 = v0[25];
  v5 = v0[23];
  v6 = v0[18];
  v8 = v0[16];
  v7 = v0[17];

  (*(v7 + 8))(v6, v8);
  sub_1D5B6EE98(v5, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t PuzzleService.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t PuzzleService.__deallocating_deinit()
{
  PuzzleService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F740D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return PuzzleService.prewarmPuzzleTypeResource(for:cachePolicy:)(a1, a2);
}

uint64_t sub_1D5F74178(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5B64684;

  return PuzzleService.prewarmPuzzleResource(for:)(a1);
}

uint64_t sub_1D5F74210(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return PuzzleService.puzzleResource(from:)(a1, a2);
}

uint64_t sub_1D5F742BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5BAFDD0;

  return PuzzleService.puzzle(for:)(a1, a2);
}

uint64_t sub_1D5F74388(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D5F6551C, 0, 0);
}

uint64_t sub_1D5F743AC(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  v4 = *v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1D5F743D4, 0, 0);
}

uint64_t sub_1D5F743D4()
{
  FCCurrentQoSOrUtilityIfMain();
  v1 = FCDispatchQueueForQualityOfService();
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1D5F655D0;
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);

  return PuzzleService.puzzles(for:excludeDrafts:callbackQueue:)(v4, v3, v1);
}

uint64_t sub_1D5F74488(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5BAFDD0;

  return PuzzleService.puzzles(for:cachePolicy:)(a1, a2);
}

uint64_t sub_1D5F74530(uint64_t a1, char a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5BAFDD0;

  return PuzzleService.puzzles(for:excludeDrafts:cachePolicy:)(a1, a2, a3);
}

uint64_t sub_1D5F745E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = a2;
  v5 = *v3;
  v4[5] = a3;
  v4[6] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1D5F677D4, 0, 0);
}

uint64_t sub_1D5F74608(uint64_t a1, char a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5BAFDD0;

  return PuzzleService.puzzles(for:excludeDrafts:callbackQueue:)(a1, a2, a3);
}

uint64_t sub_1D5F746B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  v6 = *v4;
  *(v5 + 40) = a4;
  *(v5 + 48) = v6;
  return MEMORY[0x1EEE6DFA0](sub_1D5F673EC, 0, 0);
}

uint64_t sub_1D5F746E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5BAFDD0;

  return PuzzleService.puzzleTypes(for:qos:)(a1, a2);
}

uint64_t sub_1D5F7478C(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D5F747B4, 0, 0);
}

uint64_t sub_1D5F747B4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  sub_1D5BAB70C(0, &unk_1EDF1AE60, &qword_1EDF3C700);
  *v5 = v0;
  v5[1] = sub_1D5F748D8;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001DLL, 0x80000001D73C40A0, sub_1D5F77ADC, v4, v6);
}

uint64_t sub_1D5F748D8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D5F77AC4;
  }

  else
  {

    v2 = sub_1D5F77B74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F749F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = a2;
  v5 = *v3;
  v4[5] = a3;
  v4[6] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1D5F74A1C, 0, 0);
}

uint64_t sub_1D5F74A1C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v7 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v7;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  sub_1D5BAB70C(0, &unk_1EDF1AE60, &qword_1EDF3C700);
  *v4 = v0;
  v4[1] = sub_1D5F6751C;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000021, 0x80000001D73C40C0, sub_1D5F77AB4, v3, v5);
}

uint64_t sub_1D5F74B4C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D5F74B70, 0, 0);
}

uint64_t sub_1D5F74B70()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_1D5B5A498(0, &qword_1EDF04648);
  *v2 = v0;
  v2[1] = sub_1D5F74C80;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000018, 0x80000001D73C4130, sub_1D5F77B70, v1, v3);
}

uint64_t sub_1D5F74C80()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D5F77AC8;
  }

  else
  {

    v2 = sub_1D5F77B74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F74D9C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 32) = a1;
  *(v2 + 40) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D5F74DC0, 0, 0);
}

uint64_t sub_1D5F74DC0()
{
  v1 = swift_task_alloc();
  v0[3].i64[0] = v1;
  v1[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2 = swift_task_alloc();
  v0[3].i64[1] = v2;
  sub_1D5B5D3A4(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  *v2 = v0;
  v2[1] = sub_1D5F74EE4;

  return MEMORY[0x1EEE6DE38](&v0[1], 0, 0, 0xD000000000000017, 0x80000001D73C4110, sub_1D5F77B6C, v1, v3);
}

uint64_t sub_1D5F74EE4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D5F77AC4;
  }

  else
  {

    v2 = sub_1D5F77AD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F75000(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5BAF844;

  return PuzzleService.latestPublishedPuzzleIDs(for:)(a1);
}

unint64_t sub_1D5F75098()
{
  result = qword_1EC8816C8;
  if (!qword_1EC8816C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8816C8);
  }

  return result;
}

unint64_t sub_1D5F750EC()
{
  result = qword_1EC8816D0;
  if (!qword_1EC8816D0)
  {
    sub_1D5B5A498(255, &qword_1EDF1A660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8816D0);
  }

  return result;
}

uint64_t sub_1D5F75154(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D5B64680;

  return sub_1D5F67E44(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_1D5F7521C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D5B64680;

  return sub_1D5F680A8(a1, v4, v5, v6, v8, v7);
}

void sub_1D5F752F4()
{
  if (!qword_1EC881748)
  {
    sub_1D72585BC();
    sub_1D5B5A498(255, &unk_1EC881750);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC881748);
    }
  }
}

uint64_t sub_1D5F75374(uint64_t a1)
{
  v4 = *(sub_1D72585BC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D5F713E4(a1, v6, v1 + v5);
}

uint64_t objectdestroy_57Tm()
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D5F7551C(uint64_t a1)
{
  v4 = *(sub_1D72585BC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64684;

  return sub_1D5F715FC(a1, v6, v1 + v5);
}

unint64_t sub_1D5F75614()
{
  result = qword_1EC881760;
  if (!qword_1EC881760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881760);
  }

  return result;
}

uint64_t dispatch thunk of PuzzleServiceType.prewarmPuzzleTypeResource(for:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64680;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PuzzleServiceType.prewarmPuzzleResource(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5B64680;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzleResource(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64680;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzle(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5F77AD4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzles(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5F77AD4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzles(for:excludeDrafts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5F77AD4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzles(for:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5F77AD4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzles(for:excludeDrafts:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 72) + **(a5 + 72));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5F77AD4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzles(for:cachePolicy:callbackQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 80) + **(a5 + 80));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5F77AD4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzles(for:excludeDrafts:callbackQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 88) + **(a5 + 88));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5F77AD4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzles(for:excludeDrafts:cachePolicy:callbackQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 96) + **(a6 + 96));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D5F77AD4;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzleTypes(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 104) + **(a3 + 104));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5F77AD4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzleTypes(for:qos:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 112) + **(a4 + 112));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5F77AD4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzleTypes(for:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 120) + **(a4 + 120));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5F77AD4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PuzzleServiceType.puzzleTypes(for:cachePolicy:qos:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 128) + **(a5 + 128));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5F77AD4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PuzzleServiceType.thumbnailSmallJSON(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 136) + **(a3 + 136));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5F77AD4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PuzzleServiceType.thumbnailSmallUrl(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 144) + **(a3 + 144));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5F76AE0;

  return v9(a1, a2, a3);
}

uint64_t sub_1D5F76AE0(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of PuzzleServiceType.latestPublishedPuzzleIDs(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 152) + **(a3 + 152));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5E97EA8;

  return v9(a1, a2, a3);
}

unint64_t sub_1D5F76D98()
{
  result = qword_1EDF12C40;
  if (!qword_1EDF12C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12C40);
  }

  return result;
}

unint64_t sub_1D5F76E9C()
{
  result = qword_1EC881768;
  if (!qword_1EC881768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881768);
  }

  return result;
}

void sub_1D5F76F44()
{
  if (!qword_1EC88ED20)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88ED20);
    }
  }
}

void sub_1D5F76FA8()
{
  if (!qword_1EC881770)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC881770);
    }
  }
}

void sub_1D5F77008()
{
  if (!qword_1EC881778)
  {
    sub_1D5B5446C(255, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC881778);
    }
  }
}

void sub_1D5F770A4()
{
  if (!qword_1EC881788)
  {
    sub_1D5B5446C(255, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC881788);
    }
  }
}

void sub_1D5F7713C()
{
  if (!qword_1EC881790)
  {
    sub_1D5B81B04();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC881790);
    }
  }
}

void sub_1D5F771A8()
{
  if (!qword_1EC8817A0)
  {
    sub_1D5B81B04();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8817A0);
    }
  }
}

uint64_t sub_1D5F77210(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B5446C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D5F77290()
{
  result = qword_1EC8817B0;
  if (!qword_1EC8817B0)
  {
    sub_1D5B5A498(255, &qword_1EDF1AA80);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC8817B0);
  }

  return result;
}

unint64_t sub_1D5F7730C()
{
  result = qword_1EDF33830;
  if (!qword_1EDF33830)
  {
    sub_1D5C2C40C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33830);
  }

  return result;
}

uint64_t sub_1D5F7737C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(void))
{
  sub_1D5F77604(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D5F773EC()
{
  result = qword_1EDF338C8;
  if (!qword_1EDF338C8)
  {
    sub_1D5F77604(255, &qword_1EDF338C0, sub_1D5B4BADC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF338C8);
  }

  return result;
}

uint64_t sub_1D5F77480(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  sub_1D5F77604(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D5F774DC()
{
  result = qword_1EDF338B0;
  if (!qword_1EDF338B0)
  {
    sub_1D5F77604(255, &qword_1EDF338A0, sub_1D5B4AD74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF338B0);
  }

  return result;
}

unint64_t sub_1D5F77570()
{
  result = qword_1EDF33888;
  if (!qword_1EDF33888)
  {
    sub_1D5F77604(255, &qword_1EDF33880, sub_1D5B4A54C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33888);
  }

  return result;
}

void sub_1D5F77604(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for FormatObject();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D5F77664()
{
  result = qword_1EDF33870;
  if (!qword_1EDF33870)
  {
    sub_1D5F77604(255, &qword_1EDF33860, sub_1D5B4CBD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33870);
  }

  return result;
}

void sub_1D5F776F8()
{
  if (!qword_1EDF048C8)
  {
    sub_1D5B5A498(255, &qword_1EDF04648);
    sub_1D5B49474(255, &qword_1EDF3C5D0);
    v0 = sub_1D726288C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF048C8);
    }
  }
}

uint64_t sub_1D5F77788(uint64_t a1, void *a2)
{
  sub_1D5F776F8();

  return sub_1D5F72748(a1, a2);
}

void sub_1D5F77808()
{
  if (!qword_1EDF048F8)
  {
    sub_1D5B5D3A4(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1D5B49474(255, &qword_1EDF3C5D0);
    v0 = sub_1D726288C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF048F8);
    }
  }
}

uint64_t objectdestroy_175Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_1D5F7793C(int a1, uint64_t a2, void *a3)
{
  sub_1D5F77808();

  return sub_1D5F72238(a1, a2, a3);
}

void sub_1D5F779C4(uint64_t a1, void *a2)
{
  sub_1D5BAB764(0, qword_1EDF048E0, &qword_1EDF04A18, &qword_1EDF3C750);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  sub_1D5F685C8(a1, a2, v2 + v7, v9, v10);
}

uint64_t sub_1D5F77AF0()
{

  return sub_1D5F6EC6C();
}

unint64_t sub_1D5F77BE0()
{
  result = qword_1EC8817C8;
  if (!qword_1EC8817C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8817C8);
  }

  return result;
}

uint64_t FeedCursorManifest.publishDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDFFC6A0;
  v4 = sub_1D725891C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedCursorManifest.consumedGroupIdentifiers(excludingCursorIdentifier:)()
{
  type metadata accessor for FeedCursorManifestGroupEntry();
  sub_1D72627FC();

  swift_getWitnessTable();
  v0 = sub_1D726242C();

  v1 = sub_1D5B86020(v0);

  return v1;
}

uint64_t sub_1D5F77DF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *a1;
  type metadata accessor for FeedCursorManifestGroupEntry();
  sub_1D72627FC();

  sub_1D7261E3C();

  if (!v13)
  {
    goto LABEL_6;
  }

  MEMORY[0x1EEE9AC00](result, v9);
  swift_getWitnessTable();
  v10 = sub_1D72624AC();

  swift_getWitnessTable();
  sub_1D7262C9C();

  if (*(v13 + 32) == a2 && *(v13 + 40) == a3 || (sub_1D72646CC() & 1) != 0)
  {

LABEL_6:
    *a4 = 0;
    a4[1] = 0;
    return result;
  }

  sub_1D725C58C();
  if (v4)
  {
  }

  else
  {

    if ((v10 & 0xFE) != 2)
    {
      goto LABEL_6;
    }
  }

  v11 = *(v7 + 24);
  *a4 = *(v7 + 16);
  a4[1] = v11;
}

uint64_t FeedCursorManifest.deinit()
{
  v1 = qword_1EDFFC6A0;
  v2 = sub_1D725891C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t FeedCursorManifestGroupEntry.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FeedCursorManifestGroupEntry.cursorIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FeedCursorManifestGroupEntry.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a1, v1 + v3, AssociatedTypeWitness);
}

uint64_t FeedCursorManifestGroupEntry.createdDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 120);
  v4 = sub_1D725891C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedCursorManifestGroupEntry.deinit()
{

  v1 = *(*v0 + 112);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  v3 = *(*v0 + 120);
  v4 = sub_1D725891C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_1D5F78568(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

BOOL _s8NewsFeed21FormatImageAdjustmentO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[5];
  v3 = a1[7];
  v76 = a1[6];
  v77 = v3;
  v4 = a1[1];
  v5 = a1[3];
  v72 = a1[2];
  v73 = v5;
  v6 = a1[3];
  v7 = a1[5];
  v74 = a1[4];
  v75 = v7;
  v8 = a1[1];
  v70 = *a1;
  v71 = v8;
  v9 = a2[5];
  v10 = a2[7];
  v85 = a2[6];
  v86 = v10;
  v11 = a2[1];
  v12 = a2[3];
  v81 = a2[2];
  v82 = v12;
  v14 = a2[3];
  v13 = a2[4];
  v15 = v13;
  v84 = a2[5];
  v83 = v13;
  v16 = a2[1];
  v79 = *a2;
  v80 = v16;
  v17 = a1[5];
  v18 = a1[7];
  v88[6] = a1[6];
  v88[7] = v18;
  v19 = a1[1];
  v20 = a1[3];
  v88[2] = a1[2];
  v88[3] = v20;
  v21 = a1[4];
  v88[5] = v17;
  v88[4] = v21;
  v22 = *a1;
  v88[1] = v19;
  v88[0] = v22;
  v95 = v9;
  v96 = v85;
  v97 = a2[7];
  v91 = v11;
  v92 = v81;
  v93 = v14;
  v94 = v15;
  v90 = v79;
  v23 = a1[7];
  v99[6] = v76;
  v99[7] = v23;
  v99[2] = v72;
  v99[3] = v6;
  v99[4] = v74;
  v99[5] = v2;
  v78 = *(a1 + 128);
  v87 = *(a2 + 128);
  v89 = *(a1 + 128);
  v98 = *(a2 + 128);
  v100 = *(a1 + 128);
  v99[0] = v70;
  v99[1] = v4;
  v24 = sub_1D5F78DC4(v99);
  if (!v24)
  {
    v28 = sub_1D5DEA32C(v99);
    v67 = v85;
    v68 = v86;
    v69 = v87;
    v63 = v81;
    v64 = v82;
    v65 = v83;
    v66 = v84;
    v61 = v79;
    v62 = v80;
    if (!sub_1D5F78DC4(&v61))
    {
      v38 = sub_1D5DEA32C(&v61);
      sub_1D5F78F40(v28, v42);
      sub_1D5F78F40(v38, &v43);
      v41[4] = v42[4];
      v41[5] = v42[5];
      v41[6] = v42[6];
      v41[7] = v42[7];
      v41[0] = v42[0];
      v41[1] = v42[1];
      v41[2] = v42[2];
      v41[3] = v42[3];
      v40[4] = v47;
      v40[5] = v48;
      v40[6] = v49;
      v40[7] = v50;
      v40[0] = v43;
      v40[1] = v44;
      v40[2] = v45;
      v40[3] = v46;
      sub_1D5ECEF80(&v79, &v52);
      sub_1D5ECEF80(&v70, &v52);
      sub_1D5ECEF80(&v70, &v52);
      sub_1D5ECEF80(&v79, &v52);
      v27 = _s8NewsFeed25FormatDirectionalGradientO2eeoiySbAC_ACtFZ_0(v41, v40);
      goto LABEL_12;
    }

    v58 = v76;
    v59 = v77;
    v60 = v78;
    v54 = v72;
    v55 = v73;
    v56 = v74;
    v57 = v75;
    v52 = v70;
    v53 = v71;
    v29 = sub_1D5DEA32C(&v52);
    sub_1D5F78EE4(v29, &v43);
    goto LABEL_10;
  }

  if (v24 == 1)
  {
    v25 = sub_1D5DEA32C(v99);
    v67 = v85;
    v68 = v86;
    v69 = v87;
    v63 = v81;
    v64 = v82;
    v65 = v83;
    v66 = v84;
    v61 = v79;
    v62 = v80;
    if (sub_1D5F78DC4(&v61) == 1)
    {
      v26 = sub_1D5DEA32C(&v61);
      v57 = *(v25 + 80);
      v58 = *(v25 + 96);
      v59 = *(v25 + 112);
      v60 = *(v25 + 128);
      v53 = *(v25 + 16);
      v54 = *(v25 + 32);
      v55 = *(v25 + 48);
      v56 = *(v25 + 64);
      v52 = *v25;
      v48 = *(v26 + 80);
      v49 = *(v26 + 96);
      v50 = *(v26 + 112);
      v51 = *(v26 + 128);
      v44 = *(v26 + 16);
      v45 = *(v26 + 32);
      v46 = *(v26 + 48);
      v47 = *(v26 + 64);
      v43 = *v26;
      sub_1D5ECEF80(&v79, v42);
      sub_1D5ECEF80(&v70, v42);
      sub_1D5ECEF80(&v70, v42);
      sub_1D5ECEF80(&v79, v42);
      v27 = _s8NewsFeed26FormatImageAdjustmentBlendO2eeoiySbAC_ACtFZ_0(&v52, &v43);
LABEL_12:
      v36 = v27;
      sub_1D5F78DD0(v88);
      sub_1D5ECEFDC(&v79);
      sub_1D5ECEFDC(&v70);
      return v36;
    }

    v58 = v76;
    v59 = v77;
    v60 = v78;
    v54 = v72;
    v55 = v73;
    v56 = v74;
    v57 = v75;
    v52 = v70;
    v53 = v71;
    v37 = sub_1D5DEA32C(&v52);
    sub_1D5F78E88(v37, &v43);
    goto LABEL_10;
  }

  v30 = sub_1D5DEA32C(v99);
  v31 = *v30;
  v32 = *(v30 + 8);
  v67 = v85;
  v68 = v86;
  v69 = v87;
  v63 = v81;
  v64 = v82;
  v65 = v83;
  v66 = v84;
  v61 = v79;
  v62 = v80;
  if (sub_1D5F78DC4(&v61) != 2)
  {
LABEL_10:
    sub_1D5ECEF80(&v79, &v61);
    sub_1D5F78DD0(v88);
    return 0;
  }

  v33 = sub_1D5DEA32C(&v61);
  v34 = *v33;
  v35 = *(v33 + 8);
  sub_1D5F78DD0(v88);
  *&v52 = v31;
  BYTE8(v52) = v32;
  *&v43 = v34;
  BYTE8(v43) = v35;
  return _s8NewsFeed27FormatImageAdjustmentFilterO2eeoiySbAC_ACtFZ_0(&v52, &v43);
}

unint64_t sub_1D5F78B28(uint64_t a1)
{
  result = sub_1D5F78B50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F78B50()
{
  result = qword_1EC8817D0;
  if (!qword_1EC8817D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8817D0);
  }

  return result;
}

unint64_t sub_1D5F78BA4(void *a1)
{
  a1[1] = sub_1D5C85028();
  a1[2] = sub_1D5F78BDC();
  result = sub_1D5F78C30();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F78BDC()
{
  result = qword_1EDF296C8;
  if (!qword_1EDF296C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF296C8);
  }

  return result;
}

unint64_t sub_1D5F78C30()
{
  result = qword_1EC8817D8;
  if (!qword_1EC8817D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8817D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed19FormatPointEquationVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D5F78CC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D5F78D10(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 120) = 0;
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 128) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 129) = 1;
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
      result = 0.0;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = 0;
      *(a1 + 104) = 2 * -a2;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      return result;
    }

    *(a1 + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5F78D90(uint64_t result, char a2)
{
  v2 = *(result + 128) & 0x8F | (32 * (a2 & 3));
  *(result + 104) &= 0x8000000000000001;
  *(result + 128) = v2;
  return result;
}

uint64_t sub_1D5F78DD0(uint64_t a1)
{
  sub_1D5F78E2C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5F78E2C()
{
  if (!qword_1EC8817E0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8817E0);
    }
  }
}

uint64_t sub_1D5F78F9C()
{
  v1 = v0[8];
  v7[6] = v0[7];
  v7[7] = v1;
  v7[8] = v0[9];
  v2 = v0[4];
  v7[2] = v0[3];
  v7[3] = v2;
  v3 = v0[6];
  v7[4] = v0[5];
  v7[5] = v3;
  v4 = v0[2];
  v7[0] = v0[1];
  v7[1] = v4;
  sub_1D5D68304(v7);
  sub_1D5F792C8(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_workspaceGroup, type metadata accessor for DebugFormatEditorWorkspaceGroup);

  v5 = *(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes + 72);

  sub_1D5F792C8(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_groupLayoutContext, type metadata accessor for GroupLayoutContext);
  sub_1D5F792C8(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_groupLayoutBindings, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5F792C8(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_boundLayoutFactory, type metadata accessor for FormatGroupLayoutFactory.Bound);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatCanvasLayoutResult()
{
  result = qword_1EC8817E8;
  if (!qword_1EC8817E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5F79164()
{
  result = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GroupLayoutContext();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for GroupLayoutBindingContext();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for FormatGroupLayoutFactory.Bound();
        if (v4 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D5F792C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

NewsFeed::GapFontBook __swiftcall GapFontBook.init(titleFont:descriptionFont:)(UIFont titleFont, UIFont descriptionFont)
{
  v2->super.isa = titleFont.super.isa;
  v2[1].super.isa = descriptionFont.super.isa;
  result.descriptionFont = descriptionFont;
  result.titleFont = titleFont;
  return result;
}

char *sub_1D5F793AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = sub_1D726207C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_1D5F796C4(v4, v5);
}

void sub_1D5F79410()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v1 = *&v0[qword_1EC8817F8];
  v2 = [v1 layer];
  v3 = [*&v0[qword_1EC881808] CGColor];
  [v2 setBorderColor_];

  v4 = [v1 layer];
  v5 = 0.0;
  if (v0[qword_1EC881800] == 1)
  {
    v6 = [v0 traitCollection];
    [v6 displayScale];
    v8 = v7;

    v5 = 1.0 / v8;
  }

  [v4 setBorderWidth_];
}

void sub_1D5F7954C(void *a1)
{
  v1 = a1;
  sub_1D5F79410();
}

void sub_1D5F79594()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_prepareForReuse);
  v0[qword_1EC881800] = 1;
  v1 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v2 = *&v0[qword_1EC881810];
  *&v0[qword_1EC881810] = v1;
}

void sub_1D5F79608(void *a1)
{
  v1 = a1;
  sub_1D5F79594();
}

void sub_1D5F79650(uint64_t a1)
{
  v2 = *(a1 + qword_1EC881810);
}

char *sub_1D5F796C4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = qword_1EC8817F8;
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v2[qword_1EC881800] = 1;
  v6 = qword_1EC881808;
  *&v2[v6] = [objc_opt_self() lightGrayColor];
  v7 = qword_1EC881810;
  *&v2[v7] = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  if (a2)
  {
    v8 = sub_1D726203C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_, 3, v8);

  [v9 setAccessoryView_];
  return v9;
}

void sub_1D5F79824()
{
  v1 = qword_1EC8817F8;
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  *(v0 + qword_1EC881800) = 1;
  v2 = qword_1EC881808;
  *(v0 + v2) = [objc_opt_self() lightGrayColor];
  v3 = qword_1EC881810;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  sub_1D726402C();
  __break(1u);
}

uint64_t FormatIssueCoverNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatIssueCoverNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

unint64_t FormatIssueCoverNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

uint64_t FormatIssueCoverNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t FormatIssueCoverNode.zIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

unint64_t FormatIssueCoverNode.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

unint64_t sub_1D5F79C3C(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 88);
  sub_1D5EB1500(v2);
  *(v3 + 88) = v2;
  return sub_1D5EB15C4(v4);
}

unint64_t FormatIssueCoverNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = v2;
  return sub_1D5EB15C4(v3);
}

uint64_t FormatIssueCoverNode.isUserInteractionEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

void FormatIssueCoverNode.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 104);
  *(a1 + 8) = v2;
}

uint64_t sub_1D5F79E44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 120) = v2;
}

uint64_t FormatIssueCoverNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t FormatIssueCoverNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[17];
  v3 = v1[18];
  v4 = v1[19];
  v5 = v1[20];
  v6 = v1[21];
  v7 = v1[22];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t FormatIssueCoverNode.__allocating_init(identifier:size:resize:adjustments:style:animation:content:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:selectors:sizeConstraint:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t *a10, char a11, uint64_t *a12, uint64_t a13, char *a14, __int128 *a15)
{
  v20 = swift_allocObject();
  v21 = *a3;
  v22 = *a4;
  v23 = *a8;
  v24 = *a10;
  v30 = *a12;
  v25 = *(a12 + 8);
  v26 = *a14;
  v33 = *(a15 + 5);
  v34 = *(a15 + 4);
  swift_beginAccess();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  swift_beginAccess();
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  *(v20 + 64) = a7;
  *(v20 + 72) = v23;
  swift_beginAccess();
  *(v20 + 80) = a9;
  swift_beginAccess();
  *(v20 + 88) = v24;
  swift_beginAccess();
  *(v20 + 96) = a11;
  *(v20 + 104) = v30;
  *(v20 + 112) = v25;
  swift_beginAccess();
  *(v20 + 120) = a13;
  *(v20 + 128) = v26;
  v27 = *a15;
  *(v20 + 152) = a15[1];
  *(v20 + 136) = v27;
  *(v20 + 168) = v34;
  *(v20 + 176) = v33;
  return v20;
}

uint64_t FormatIssueCoverNode.init(identifier:size:resize:adjustments:style:animation:content:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:selectors:sizeConstraint:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t *a10, char a11, uint64_t *a12, uint64_t a13, char *a14, __int128 *a15)
{
  v20 = *a3;
  v21 = *a4;
  v22 = *a8;
  v25 = *a10;
  v28 = *a12;
  v27 = *(a12 + 8);
  v29 = *a14;
  v30 = *(a15 + 5);
  v31 = *(a15 + 4);
  swift_beginAccess();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = v20;
  *(v15 + 40) = v21;
  swift_beginAccess();
  *(v15 + 48) = a5;
  *(v15 + 56) = a6;
  *(v15 + 64) = a7;
  *(v15 + 72) = v22;
  swift_beginAccess();
  *(v15 + 80) = a9;
  swift_beginAccess();
  *(v15 + 88) = v25;
  swift_beginAccess();
  *(v15 + 96) = a11;
  *(v15 + 104) = v28;
  *(v15 + 112) = v27;
  swift_beginAccess();
  *(v15 + 120) = a13;
  *(v15 + 128) = v29;
  v23 = *a15;
  *(v15 + 152) = a15[1];
  *(v15 + 136) = v23;
  *(v15 + 168) = v31;
  *(v15 + 176) = v30;
  return v15;
}

uint64_t FormatIssueCoverNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 32));

  sub_1D5EB15C4(*(v0 + 88));

  sub_1D5EB2398(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));
  return v0;
}

uint64_t FormatIssueCoverNode.__deallocating_deinit()
{
  FormatIssueCoverNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F7A324(uint64_t a1)
{
  result = sub_1D5F7A4B8(&qword_1EC881898);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5F7A38C(void *a1)
{
  a1[1] = sub_1D5F7A4B8(&qword_1EDF0EF90);
  a1[2] = sub_1D5F7A4B8(&qword_1EDF0EF98);
  result = sub_1D5F7A4B8(&qword_1EC8818A0);
  a1[3] = result;
  return result;
}

uint64_t sub_1D5F7A418@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D665C624(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D5F7A474(uint64_t a1)
{
  result = sub_1D5F7A4B8(&qword_1EC8818A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5F7A4B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatIssueCoverNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5F7A4F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v15 = *(a4 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_beginAccess();
  v16 = *(a5 + 16);
  v17 = *(a5 + 24);
  v18 = *(v15 + 40);
  if (v18)
  {
    v38 = *(v15 + 32);
    v39 = v18;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v16, v17);

    v31 = v18;
    v32 = v38;
    v16 = *(a5 + 16);
    v17 = *(a5 + 24);
  }

  else
  {

    v31 = v17;
    v32 = v16;
  }

  v19 = *(a5 + 40);
  v33 = v16;
  if (v19 && (v20 = *(v19 + 16), swift_beginAccess(), *(*(v20 + 16) + 16)))
  {
  }

  else
  {
    v20 = 0;
  }

  swift_beginAccess();
  v21 = *(a5 + 80);
  swift_beginAccess();
  v22 = *(a5 + 88);

  sub_1D5EB1500(v22);
  sub_1D615B4A8(a4, &v37);
  sub_1D5EB15C4(v22);
  v23 = v37;
  swift_beginAccess();
  v24 = *(a5 + 96);
  v25 = *(a5 + 104);
  v26 = *(a5 + 112);
  type metadata accessor for FormatIssueCoverNodeLayoutAttributes();
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  *(v27 + 24) = a3;
  *(v27 + 32) = v32;
  *(v27 + 40) = v31;
  *(v27 + 48) = v33;
  *(v27 + 56) = v17;
  *(v27 + 64) = v11;
  *(v27 + 72) = v12;
  *(v27 + 80) = v13;
  *(v27 + 88) = v14;
  *(v27 + 96) = v20;
  *(v27 + 104) = v21;
  *(v27 + 112) = v23;
  *(v27 + 120) = v24;
  *(v27 + 128) = v25;
  *(v27 + 136) = v26;
  *(v27 + 144) = a6;
  *(v27 + 152) = v11;
  *(v27 + 160) = v12;
  *(v27 + 168) = v13;
  *(v27 + 176) = v14;
  v28 = *(a1 + 3);
  *(v27 + 184) = *(a1 + 2);
  *(v27 + 200) = v28;
  v29 = swift_allocObject();
  *(v27 + 216) = MEMORY[0x1E69E7CD0];
  *(v29 + 16) = v27;
  *a7 = v29 | 0x7000000000000004;
}

uint64_t sub_1D5F7A7C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5F7A820@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, __int16 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a4;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 17) = v6;
  *(a6 + 24) = a5;
  return result;
}

uint64_t sub_1D5F7A868@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D5F7A8E8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D5F7A95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  sub_1D5F7BAC0();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v40 = &v35 - v10;
  sub_1D5F7B618();
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F7B52C();
  v36 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v39 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v35 - v20;
  if (qword_1EC87D818 != -1)
  {
    swift_once();
  }

  v45 = qword_1EC9BA910;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  sub_1D5F7B710();
  sub_1D5F7B760(0, &qword_1EC8818E8, sub_1D5F7B7C4, MEMORY[0x1E69E6720]);
  sub_1D5F7BA78(&qword_1EC881900, sub_1D5F7B710);
  sub_1D5F7B910();
  sub_1D5F7BC2C();

  sub_1D72619EC();
  sub_1D7260EDC();
  sub_1D5F7B898();
  v23 = v38;
  sub_1D72617DC();
  (*(v37 + 8))(v14, v23);
  v24 = &v21[*(v36 + 36)];
  *v24 = xmmword_1D7286690;
  *(v24 + 1) = xmmword_1D72866A0;
  v24[32] = 0;
  v45 = 0;
  v46 = 1;
  sub_1D7260EDC();
  v25 = v40;
  sub_1D72617DC();
  v26 = v39;
  sub_1D5D72BF8(v21, v39);
  v28 = v43;
  v27 = v44;
  v29 = *(v43 + 16);
  v30 = v41;
  v29(v41, v25, v44);
  v31 = v42;
  sub_1D5D72BF8(v26, v42);
  sub_1D5F7B4BC();
  v29((v31 + *(v32 + 48)), v30, v27);
  v33 = *(v28 + 8);
  v33(v25, v27);
  sub_1D5D72C5C(v21);
  v33(v30, v27);
  return sub_1D5D72C5C(v26);
}

uint64_t sub_1D5F7ADB4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a2;
  sub_1D5F7B7C4();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if (v14)
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1D6185778(v15 | v13, v28);

  if (v16)
  {
    v25 = v8;
    v26 = a4;
    sub_1D67F6F20(v15 | v13);
    v24 = sub_1D72618CC();
    v17 = sub_1D6E236D4(v13);
    v19 = v18;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D72600CC();

    if ((v28 & 0xFF00) == 0x200)
    {
      v20 = 0;
    }

    else
    {
      v20 = sub_1D67F7A4C(v28 & 0x1FF, v15 | v13);
    }

    v8 = v25;
    v28 = v24;
    v29 = v17;
    v31 = 0;
    v32 = 0;
    v30 = v19;
    v33 = v20 & 1;
    v22 = swift_allocObject();
    *(v22 + 16) = v27;
    *(v22 + 24) = a3;
    *(v22 + 32) = v13;
    *(v22 + 33) = v14;
    sub_1D5F7B844();

    sub_1D726177C();

    a4 = v26;
    (*(v9 + 32))(v26, v12, v8);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  return (*(v9 + 56))(a4, v21, 1, v8);
}

uint64_t sub_1D5F7B06C(uint64_t a1, uint64_t a2, __int16 a3)
{

  sub_1D725B31C();

  v4 = a3 & 0x1FF;
  if ((v6 & 0xFF00) == 0x200 || (result = sub_1D67F7A4C(v6 & 0x1FF, v4), (result & 1) == 0))
  {

    sub_1D725B32C();
  }

  return result;
}

double sub_1D5F7B13C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x73656369766544;
  *(a1 + 8) = 0xE700000000000000;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 256;
  return result;
}

uint64_t sub_1D5F7B170@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  sub_1D5F7B404();
  v13 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v7 = v1[1];
  type metadata accessor for DebugFormatWorkspaceTree();
  sub_1D5F7BA78(&qword_1EC8850C0, type metadata accessor for DebugFormatWorkspaceTree);
  sub_1D7260F9C();
  swift_getKeyPath();
  sub_1D7260FAC();

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  sub_1D5F7B760(0, &qword_1EC8818B8, sub_1D5F7B4BC, MEMORY[0x1E6981F40]);
  sub_1D5F7BB40();
  sub_1D5F7BB94();

  sub_1D7260FFC();
  sub_1D7260EDC();
  sub_1D5F7BA78(&qword_1EC881940, sub_1D5F7B404);
  v10 = v13;
  sub_1D72617DC();
  return (*(v3 + 8))(v6, v10);
}

void sub_1D5F7B404()
{
  if (!qword_1EC8818B0)
  {
    sub_1D5F7B760(255, &qword_1EC8818B8, sub_1D5F7B4BC, MEMORY[0x1E6981F40]);
    sub_1D5F7BB40();
    sub_1D5F7BB94();
    v0 = sub_1D726100C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8818B0);
    }
  }
}

void sub_1D5F7B4BC()
{
  if (!qword_1EC8818C0)
  {
    sub_1D5F7B52C();
    sub_1D5F7BAC0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8818C0);
    }
  }
}

void sub_1D5F7B52C()
{
  if (!qword_1EC8818C8)
  {
    sub_1D5F7B594();
    sub_1D5F7B9E4();
    v0 = sub_1D726101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8818C8);
    }
  }
}

void sub_1D5F7B594()
{
  if (!qword_1EC8818D0)
  {
    sub_1D5F7B618();
    sub_1D5F7B898();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC8818D0);
    }
  }
}

void sub_1D5F7B618()
{
  if (!qword_1EC8818D8)
  {
    sub_1D5F7B710();
    sub_1D5F7B760(255, &qword_1EC8818E8, sub_1D5F7B7C4, MEMORY[0x1E69E6720]);
    sub_1D5F7BA78(&qword_1EC881900, sub_1D5F7B710);
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8818D8);
    }
  }
}

void sub_1D5F7B710()
{
  if (!qword_1EC8818E0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8818E0);
    }
  }
}

void sub_1D5F7B760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5F7B7C4()
{
  if (!qword_1EC8818F0)
  {
    sub_1D5F7B844();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC8818F0);
    }
  }
}

unint64_t sub_1D5F7B844()
{
  result = qword_1EC8818F8;
  if (!qword_1EC8818F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8818F8);
  }

  return result;
}

unint64_t sub_1D5F7B898()
{
  result = qword_1EC881908;
  if (!qword_1EC881908)
  {
    sub_1D5F7B618();
    sub_1D5F7B910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881908);
  }

  return result;
}

unint64_t sub_1D5F7B910()
{
  result = qword_1EC881910;
  if (!qword_1EC881910)
  {
    sub_1D5F7B760(255, &qword_1EC8818E8, sub_1D5F7B7C4, MEMORY[0x1E69E6720]);
    sub_1D5F7B844();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881910);
  }

  return result;
}

void sub_1D5F7B9E4()
{
  if (!qword_1EC881918)
  {
    sub_1D72613BC();
    sub_1D5F7BA78(&qword_1EC881920, MEMORY[0x1E697C768]);
    v0 = sub_1D726141C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC881918);
    }
  }
}

uint64_t sub_1D5F7BA78(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5F7BAC0()
{
  if (!qword_1EC881928)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC881928);
    }
  }
}

unint64_t sub_1D5F7BB40()
{
  result = qword_1EC881930;
  if (!qword_1EC881930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881930);
  }

  return result;
}

unint64_t sub_1D5F7BB94()
{
  result = qword_1EC881938;
  if (!qword_1EC881938)
  {
    sub_1D5F7B760(255, &qword_1EC8818B8, sub_1D5F7B4BC, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881938);
  }

  return result;
}

unint64_t sub_1D5F7BC2C()
{
  result = qword_1EC881948;
  if (!qword_1EC881948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881948);
  }

  return result;
}

uint64_t sub_1D5F7BC80()
{
  if (*(v0 + 33))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1D5F7B06C(*(v0 + 16), *(v0 + 24), v1 | *(v0 + 32));
}

unint64_t sub_1D5F7BCC4()
{
  result = qword_1EC881950;
  if (!qword_1EC881950)
  {
    sub_1D5F7BD1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881950);
  }

  return result;
}

void sub_1D5F7BD1C()
{
  if (!qword_1EC881958)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC881958);
    }
  }
}

unint64_t sub_1D5F7BD70()
{
  result = qword_1EC881960;
  if (!qword_1EC881960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881960);
  }

  return result;
}

uint64_t FormatDerivedDataFileKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D5F7C000();
    v15 = 0;
    v16 = 0;
    sub_1D726431C();
    v11 = v14;
    sub_1D5C947A8();
    v14 = xmmword_1D7279980;
    sub_1D5C75D80(&qword_1EDF419A8);
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v13 = v16;
    *a2 = v15;
    *(a2 + 8) = v13;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5F7C000()
{
  result = qword_1EC881968;
  if (!qword_1EC881968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881968);
  }

  return result;
}

uint64_t FormatDerivedDataFileKey.encode(to:)(void *a1)
{
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15 - v7;
  v9 = *(v1 + 8);
  v16 = *v1;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  if (v10 > 3)
  {
    if (v10 > 5)
    {
      if (v10 == 6)
      {
        LOBYTE(v17) = 6;
        v18 = 0;
        v19 = 0;
        sub_1D5F7C5D4();

        sub_1D726443C();
        if (v2)
        {
          (*(v20 + 8))(v8, v5);
          v11 = v16;
          v12 = v9;
          v13 = 6;
          return sub_1D5F7C628(v11, v12, v13);
        }
      }

      else
      {
        LOBYTE(v17) = 7;
        v18 = 0;
        v19 = 0;
        sub_1D5F7C5D4();

        sub_1D726443C();
        if (v2)
        {
          (*(v20 + 8))(v8, v5);
          v11 = v16;
          v12 = v9;
          v13 = 7;
          return sub_1D5F7C628(v11, v12, v13);
        }
      }
    }

    else if (v10 == 4)
    {
      LOBYTE(v17) = 4;
      v18 = 0;
      v19 = 0;
      sub_1D5F7C5D4();

      sub_1D726443C();
      if (v2)
      {
        (*(v20 + 8))(v8, v5);
        v11 = v16;
        v12 = v9;
        v13 = 4;
        return sub_1D5F7C628(v11, v12, v13);
      }
    }

    else
    {
      LOBYTE(v17) = 5;
      v18 = 0;
      v19 = 0;
      sub_1D5F7C5D4();

      sub_1D726443C();
      if (v2)
      {
        (*(v20 + 8))(v8, v5);
        v11 = v16;
        v12 = v9;
        v13 = 5;
        return sub_1D5F7C628(v11, v12, v13);
      }
    }
  }

  else if (v10 > 1)
  {
    if (v10 == 2)
    {
      LOBYTE(v17) = 2;
      v18 = 0;
      v19 = 0;
      sub_1D5F7C5D4();

      sub_1D726443C();
      if (v2)
      {
        (*(v20 + 8))(v8, v5);
        v11 = v16;
        v12 = v9;
        v13 = 2;
        return sub_1D5F7C628(v11, v12, v13);
      }
    }

    else
    {
      LOBYTE(v17) = 3;
      v18 = 0;
      v19 = 0;
      sub_1D5F7C5D4();

      sub_1D726443C();
      if (v2)
      {
        (*(v20 + 8))(v8, v5);
        v11 = v16;
        v12 = v9;
        v13 = 3;
        return sub_1D5F7C628(v11, v12, v13);
      }
    }
  }

  else if (v10)
  {
    LOBYTE(v17) = 1;
    v18 = 0;
    v19 = 0;
    sub_1D5F7C5D4();

    sub_1D726443C();
    if (v2)
    {
      (*(v20 + 8))(v8, v5);
      v11 = v16;
      v12 = v9;
      v13 = 1;
      return sub_1D5F7C628(v11, v12, v13);
    }
  }

  else
  {
    LOBYTE(v17) = 0;
    v18 = 0;
    v19 = 0;
    sub_1D5F7C5D4();

    sub_1D726443C();
    if (v2)
    {
      (*(v20 + 8))(v8, v5);
      v11 = v16;
      v12 = v9;
      v13 = 0;
      return sub_1D5F7C628(v11, v12, v13);
    }
  }

  v18 = v16;
  v19 = v9;
  v17 = xmmword_1D7279980;
  sub_1D5C947A8();
  sub_1D5C75D80(&qword_1EDF12710);
  sub_1D726443C();

  return (*(v20 + 8))(v8, v5);
}

unint64_t sub_1D5F7C5D4()
{
  result = qword_1EC881970;
  if (!qword_1EC881970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881970);
  }

  return result;
}

uint64_t sub_1D5F7C628(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 7u)
  {
  }

  return result;
}

uint64_t sub_1D5F7C668@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5F7D1E4();
  *a1 = result;
  return result;
}

void sub_1D5F7C698(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x70756F7267;
  v5 = 0xEA00000000006E6FLL;
  v6 = 0x697461726F636564;
  if (v2 != 6)
  {
    v6 = 0x6567616B636170;
    v5 = 0xE700000000000000;
  }

  v7 = 0xED0000797261746ELL;
  v8 = 0x656D656C70707573;
  if (v2 != 4)
  {
    v8 = 1701869940;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x74657070696E73;
  if (v2 != 2)
  {
    v10 = 0x656C797473;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 1835365481;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t FormatDerivedDataFileKey.hash(into:)()
{
  MEMORY[0x1DA6FC0B0](*(v0 + 16));

  return sub_1D72621EC();
}

uint64_t FormatDerivedDataFileKey.hashValue.getter()
{
  sub_1D7264A0C();
  FormatDerivedDataFileKey.hash(into:)();
  return sub_1D7264A5C();
}

uint64_t sub_1D5F7C91C()
{
  sub_1D7264A0C();
  FormatDerivedDataFileKey.hash(into:)();
  return sub_1D7264A5C();
}

uint64_t sub_1D5F7C974()
{
  sub_1D7264A0C();
  FormatDerivedDataFileKey.hash(into:)();
  return sub_1D7264A5C();
}

uint64_t _s8NewsFeed24FormatDerivedDataFileKeyO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 3)
  {
    if (*(a1 + 16) > 5u)
    {
      if (v4 == 6)
      {
        if (v7 != 6)
        {
          goto LABEL_41;
        }

        if (v3 == v6 && v2 == v5)
        {
          sub_1D5F7D230(*a1, v2, 6u);
          sub_1D5F7D230(v3, v2, 6u);
          sub_1D5F7C628(v3, v2, 6u);
          v8 = v3;
          v9 = v2;
          v10 = 6;
          goto LABEL_40;
        }

        v12 = sub_1D72646CC();
        sub_1D5F7D230(v6, v5, 6u);
        sub_1D5F7D230(v3, v2, 6u);
        sub_1D5F7C628(v3, v2, 6u);
        v13 = v6;
        v14 = v5;
        v15 = 6;
      }

      else
      {
        if (v7 != 7)
        {
          goto LABEL_41;
        }

        if (v3 == v6 && v2 == v5)
        {
          sub_1D5F7D230(*a1, v2, 7u);
          sub_1D5F7D230(v3, v2, 7u);
          sub_1D5F7C628(v3, v2, 7u);
          v8 = v3;
          v9 = v2;
          v10 = 7;
          goto LABEL_40;
        }

        v12 = sub_1D72646CC();
        sub_1D5F7D230(v6, v5, 7u);
        sub_1D5F7D230(v3, v2, 7u);
        sub_1D5F7C628(v3, v2, 7u);
        v13 = v6;
        v14 = v5;
        v15 = 7;
      }
    }

    else
    {
      if (v4 == 4)
      {
        if (v7 == 4)
        {
          if (v3 == v6 && v2 == v5)
          {
            sub_1D5F7D230(*a1, v2, 4u);
            sub_1D5F7D230(v3, v2, 4u);
            sub_1D5F7C628(v3, v2, 4u);
            v8 = v3;
            v9 = v2;
            v10 = 4;
            goto LABEL_40;
          }

          v12 = sub_1D72646CC();
          sub_1D5F7D230(v6, v5, 4u);
          sub_1D5F7D230(v3, v2, 4u);
          sub_1D5F7C628(v3, v2, 4u);
          v13 = v6;
          v14 = v5;
          v15 = 4;
          goto LABEL_50;
        }

        goto LABEL_41;
      }

      if (v7 != 5)
      {
        goto LABEL_41;
      }

      if (v3 == v6 && v2 == v5)
      {
        sub_1D5F7D230(*a1, v2, 5u);
        sub_1D5F7D230(v3, v2, 5u);
        sub_1D5F7C628(v3, v2, 5u);
        v8 = v3;
        v9 = v2;
        v10 = 5;
        goto LABEL_40;
      }

      v12 = sub_1D72646CC();
      sub_1D5F7D230(v6, v5, 5u);
      sub_1D5F7D230(v3, v2, 5u);
      sub_1D5F7C628(v3, v2, 5u);
      v13 = v6;
      v14 = v5;
      v15 = 5;
    }
  }

  else if (*(a1 + 16) > 1u)
  {
    if (v4 == 2)
    {
      if (v7 != 2)
      {
        goto LABEL_41;
      }

      if (v3 == v6 && v2 == v5)
      {
        sub_1D5F7D230(*a1, v2, 2u);
        sub_1D5F7D230(v3, v2, 2u);
        sub_1D5F7C628(v3, v2, 2u);
        v8 = v3;
        v9 = v2;
        v10 = 2;
        goto LABEL_40;
      }

      v12 = sub_1D72646CC();
      sub_1D5F7D230(v6, v5, 2u);
      sub_1D5F7D230(v3, v2, 2u);
      sub_1D5F7C628(v3, v2, 2u);
      v13 = v6;
      v14 = v5;
      v15 = 2;
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_41;
      }

      if (v3 == v6 && v2 == v5)
      {
        sub_1D5F7D230(*a1, v2, 3u);
        sub_1D5F7D230(v3, v2, 3u);
        sub_1D5F7C628(v3, v2, 3u);
        v8 = v3;
        v9 = v2;
        v10 = 3;
        goto LABEL_40;
      }

      v12 = sub_1D72646CC();
      sub_1D5F7D230(v6, v5, 3u);
      sub_1D5F7D230(v3, v2, 3u);
      sub_1D5F7C628(v3, v2, 3u);
      v13 = v6;
      v14 = v5;
      v15 = 3;
    }
  }

  else
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_1D5F7D230(*a1, v2, 0);
          sub_1D5F7D230(v3, v2, 0);
          sub_1D5F7C628(v3, v2, 0);
          v8 = v3;
          v9 = v2;
          v10 = 0;
LABEL_40:
          sub_1D5F7C628(v8, v9, v10);
          return 1;
        }

        v12 = sub_1D72646CC();
        sub_1D5F7D230(v6, v5, 0);
        sub_1D5F7D230(v3, v2, 0);
        sub_1D5F7C628(v3, v2, 0);
        v13 = v6;
        v14 = v5;
        v15 = 0;
        goto LABEL_50;
      }

LABEL_41:
      sub_1D5F7D230(*a2, *(a2 + 8), v7);
      sub_1D5F7D230(v3, v2, v4);
      sub_1D5F7C628(v3, v2, v4);
      sub_1D5F7C628(v6, v5, v7);
      return 0;
    }

    if (v7 != 1)
    {
      goto LABEL_41;
    }

    if (v3 == v6 && v2 == v5)
    {
      sub_1D5F7D230(*a1, v2, 1u);
      sub_1D5F7D230(v3, v2, 1u);
      sub_1D5F7C628(v3, v2, 1u);
      v8 = v3;
      v9 = v2;
      v10 = 1;
      goto LABEL_40;
    }

    v12 = sub_1D72646CC();
    sub_1D5F7D230(v6, v5, 1u);
    sub_1D5F7D230(v3, v2, 1u);
    sub_1D5F7C628(v3, v2, 1u);
    v13 = v6;
    v14 = v5;
    v15 = 1;
  }

LABEL_50:
  sub_1D5F7C628(v13, v14, v15);
  return v12 & 1;
}

unint64_t sub_1D5F7D02C()
{
  result = qword_1EC881978;
  if (!qword_1EC881978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881978);
  }

  return result;
}

uint64_t sub_1D5F7D08C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D5F7D0D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

unint64_t sub_1D5F7D13C()
{
  result = qword_1EC881980;
  if (!qword_1EC881980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881980);
  }

  return result;
}

unint64_t sub_1D5F7D190()
{
  result = qword_1EC881988;
  if (!qword_1EC881988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881988);
  }

  return result;
}

uint64_t sub_1D5F7D1E4()
{
  v0 = sub_1D72641CC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D5F7D230(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 7u)
  {
  }

  return result;
}

uint64_t sub_1D5F7D248()
{
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  sub_1D7262EDC();
  sub_1D725C30C();
  sub_1D725BDCC();
  v0 = sub_1D725B92C();
  sub_1D5F7DC80();
  sub_1D725BA9C();

  v1 = sub_1D725B92C();
  type metadata accessor for SportsDataConfiguration();
  sub_1D725BA9C();

  v2 = sub_1D725B92C();
  v3 = sub_1D725BACC();

  return v3;
}

uint64_t sub_1D5F7D404(uint64_t a1)
{
  v1 = [*(a1 + 16) appConfiguration];
  if ([v1 respondsToSelector_])
  {
    v2 = [v1 sportsConfigurationResourceId];
    swift_unknownObjectRelease();
    if (v2)
    {
      sub_1D726207C();

      sub_1D5F129A4();
      swift_allocObject();
      return sub_1D725BB1C();
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_1D5F7DE38();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_1D5F7D4FC(uint64_t *a1, uint64_t a2)
{
  sub_1D5B67800(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v15 - v6);
  v9 = *a1;
  v8 = a1[1];
  __swift_project_boxed_opaque_existential_1((a2 + 24), *(a2 + 48));
  *v7 = 0x404E000000000000;
  v10 = *MEMORY[0x1E69D63E0];
  v11 = sub_1D725A82C();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v7, v10, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  v13 = ResourceServiceType.fetchResource(identifier:qualityOfService:cachePolicy:purpose:)(v9, v8);
  sub_1D5C3C4D0(v7);
  return v13;
}

char *sub_1D5F7D694(id *a1, char *a2)
{
  v41 = a2;
  v4 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = type metadata accessor for SportsDataConfiguration();
  MEMORY[0x1EEE9AC00](v6, v7);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v37 - v11;
  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x1EEE9AC00](v18, v19).n128_u64[0];
  v22 = &v37 - v21;
  v23 = [*a1 fileURL];
  if (v23)
  {
    v24 = v23;
    sub_1D72584EC();

    (*(v14 + 32))(v22, v17, v13);
    v25 = sub_1D72585DC();
    if (v2)
    {
      (*(v14 + 8))(v22, v13);
    }

    else
    {
      v39 = v13;
      v27 = v26;
      v28 = v25;
      sub_1D5F7DD20();
      v41 = v12;
      sub_1D725A69C();
      sub_1D72620CC();
      v37 = v28;
      v38 = v27;
      v30 = sub_1D726209C();
      v32 = v41;
      v33 = v39;
      if (v31)
      {
        v34 = v30;
        v35 = v31;
        if (qword_1EDF05878 != -1)
        {
          swift_once();
        }

        sub_1D5B67800(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1D7273AE0;
        *(v36 + 56) = MEMORY[0x1E69E6158];
        *(v36 + 64) = sub_1D5B7E2C0();
        *(v36 + 32) = v34;
        *(v36 + 40) = v35;
        sub_1D7262EDC();
        sub_1D725C30C();
      }

      sub_1D5F7DD78(v32, v40);
      sub_1D5B67800(0, &qword_1EDF17A30, type metadata accessor for SportsDataConfiguration, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v17 = sub_1D725BB1C();
      sub_1D5B952F8(v37, v38);
      sub_1D5F7DDDC(v32);
      (*(v14 + 8))(v22, v33);
    }
  }

  else
  {
    sub_1D5F7DCCC();
    swift_allocError();
    swift_willThrow();
  }

  return v17;
}

uint64_t sub_1D5F7DAE4()
{
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5B67800(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7273AE0;
  swift_getErrorValue();
  v1 = sub_1D726497C();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D5B7E2C0();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  sub_1D725C30C();
}

uint64_t sub_1D5F7DC1C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_1D5F7DC80()
{
  result = qword_1EDF1AC40;
  if (!qword_1EDF1AC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1AC40);
  }

  return result;
}

unint64_t sub_1D5F7DCCC()
{
  result = qword_1EC881990;
  if (!qword_1EC881990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881990);
  }

  return result;
}

unint64_t sub_1D5F7DD20()
{
  result = qword_1EDF0D188;
  if (!qword_1EDF0D188)
  {
    type metadata accessor for SportsDataConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D188);
  }

  return result;
}

uint64_t sub_1D5F7DD78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F7DDDC(uint64_t a1)
{
  v2 = type metadata accessor for SportsDataConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5F7DE38()
{
  result = qword_1EC8819A0;
  if (!qword_1EC8819A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8819A0);
  }

  return result;
}

unint64_t sub_1D5F7DEA0()
{
  result = qword_1EC8819B0;
  if (!qword_1EC8819B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8819B0);
  }

  return result;
}

uint64_t sub_1D5F7DEF4(__int128 *a1)
{
  v3 = v1;
  v5 = sub_1D72585BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v24[-v12 - 8];
  v14 = a1[1];
  v25 = *a1;
  v26 = v14;
  v27 = *(a1 + 32);
  v15 = *__swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_1D68C7584();
  if (!v2)
  {
    v16 = sub_1D5F7E14C(v9);
    MEMORY[0x1EEE9AC00](v16, v18);
    *(&v23 - 4) = v13;
    *(&v23 - 3) = v3;
    *(&v23 - 2) = &v25;
    *(&v23 - 1) = v9;
    type metadata accessor for SportsDataServiceBatchRequest(0);
    sub_1D725BDCC();
    v19 = swift_allocObject();
    v20 = v26;
    *(v19 + 16) = v25;
    *(v19 + 32) = v20;
    *(v19 + 48) = v27;
    sub_1D5F82F38(&v25, v24);
    v21 = sub_1D725B92C();
    v15 = sub_1D725BACC();

    v22 = *(v6 + 8);
    v22(v9, v5);
    v22(v13, v5);
  }

  return v15;
}

uint64_t sub_1D5F7E14C@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1D5C413F4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v22[-v5];
  sub_1D5C413F4(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], v2);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v22[-v9];
  v11 = sub_1D7257C7C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7257BCC();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D5F82D98(v10, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
    sub_1D5F82C30();
    swift_allocError();
    *v16 = 3;
    return swift_willThrow();
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v18 = sub_1D7257BFC();
    MEMORY[0x1DA6F9910](0x656A626F2F31762FLL, 0xEB00000000737463);
    v18(v22, 0);
    sub_1D7257BDC();
    v19 = sub_1D72585BC();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v6, 1, v19) == 1)
    {
      sub_1D5F82D98(v6, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D5F82C30();
      swift_allocError();
      *v21 = 2;
      swift_willThrow();
      return (*(v12 + 8))(v15, v11);
    }

    else
    {
      (*(v12 + 8))(v15, v11);
      return (*(v20 + 32))(a1, v6, v19);
    }
  }
}

uint64_t sub_1D5F7E4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SportsDataServiceBatchRequest(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v27 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = v25 - v19;
  (*(v9 + 16))(v12, a1, v8, v18);
  v21 = *(a3 + 16);
  v25[0] = *a3;
  v25[1] = v21;
  v26 = *(a3 + 32);
  v22 = sub_1D5F82704(v25, a1, a4);
  if (v4)
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v23 = v22;
    (*(v9 + 32))(v20, v12, v8);
    *&v20[*(v13 + 20)] = v23;
    sub_1D5F82CD8(v20, v27);
    sub_1D5C413F4(0, &qword_1EDF179F8, type metadata accessor for SportsDataServiceBatchRequest, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v8 = sub_1D725BB1C();
    sub_1D5F82D3C(v20);
  }

  return v8;
}

uint64_t sub_1D5F7E738()
{
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5C413F4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7270C10;
  sub_1D7263F9C();
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1D5B7E2C0();
  *(v0 + 64) = v2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  swift_getErrorValue();
  v3 = sub_1D726497C();
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 72) = v3;
  *(v0 + 80) = v4;
  sub_1D725C30C();
}

uint64_t sub_1D5F7E8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v30 = a3;
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v26 - v15;
  v17 = *__swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_1D68C7584();
  if (!v4)
  {
    v27 = v8;
    v28 = v9;
    v18 = v30;
    v19 = sub_1D5F7EB1C(v12);
    v29 = 0;
    MEMORY[0x1EEE9AC00](v19, v21);
    *(&v26 - 6) = v16;
    *(&v26 - 5) = v5;
    *(&v26 - 4) = a1;
    *(&v26 - 3) = a2;
    *(&v26 - 2) = v18;
    *(&v26 - 1) = v12;
    type metadata accessor for SportsDataServiceBatchRequest(0);
    sub_1D725BDCC();
    v22 = swift_allocObject();
    v22[2] = a1;
    v22[3] = a2;
    v22[4] = v18;

    v23 = sub_1D725B92C();
    v17 = sub_1D725BACC();

    v24 = *(v28 + 8);
    v25 = v27;
    v24(v12, v27);
    v24(v16, v25);
  }

  return v17;
}

uint64_t sub_1D5F7EB1C@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1D5C413F4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v22[-v5];
  sub_1D5C413F4(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], v2);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v22[-v9];
  v11 = sub_1D7257C7C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7257BCC();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D5F82D98(v10, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
    sub_1D5F82C30();
    swift_allocError();
    *v16 = 3;
    return swift_willThrow();
  }

  else
  {
    v23 = a1;
    (*(v12 + 32))(v15, v10, v11);
    v18 = sub_1D7257BFC();
    MEMORY[0x1DA6F9910](0xD000000000000012, 0x80000001D73C4620);
    v18(v22, 0);
    sub_1D7257BDC();
    v19 = sub_1D72585BC();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v6, 1, v19) == 1)
    {
      sub_1D5F82D98(v6, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D5F82C30();
      swift_allocError();
      *v21 = 2;
      swift_willThrow();
      return (*(v12 + 8))(v15, v11);
    }

    else
    {
      (*(v12 + 8))(v15, v11);
      return (*(v20 + 32))(v23, v6, v19);
    }
  }
}

uint64_t sub_1D5F7EEC4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a4;
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for SportsDataServiceBatchRequest(0);
  MEMORY[0x1EEE9AC00](v35, v15);
  v36 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v34 - v20;
  v22 = *(v11 + 16);
  v39 = a1;
  v22(v14, a1, v10, v19);
  v40 = a3;
  sub_1D5B581F0(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5F82E08(&qword_1EDF3C838);

  v23 = sub_1D72623CC();

  v40 = v23;

  sub_1D5F81CCC(&v40);
  if (v6)
  {

    __break(1u);
  }

  else
  {

    v24 = v40;
    v25 = sub_1D5F828F8(a6, v37, &unk_1F50F7D38);
    sub_1D5BFB68C(&unk_1F50F7D58);
    v26 = sub_1D5F812AC(v38, v25, v24);

    MEMORY[0x1EEE9AC00](v27, v28);
    *(&v34 - 4) = a6;
    *(&v34 - 3) = 7562345;
    v29 = v39;
    *(&v34 - 2) = 0xE300000000000000;
    *(&v34 - 1) = v29;
    v30 = sub_1D5ECAC40(sub_1D5F82CB4, (&v34 - 6), v26);

    (*(v11 + 32))(v21, v14, v10);
    v31 = v36;
    *&v21[*(v35 + 20)] = v30;
    sub_1D5F82CD8(v21, v31);
    sub_1D5C413F4(0, &qword_1EDF179F8, type metadata accessor for SportsDataServiceBatchRequest, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v32 = sub_1D725BB1C();
    sub_1D5F82D3C(v21);
    return v32;
  }

  return result;
}

uint64_t sub_1D5F7F280()
{
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5C413F4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7270C10;
  sub_1D7263F9C();
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1D5B7E2C0();
  *(v0 + 64) = v2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  swift_getErrorValue();
  v3 = sub_1D726497C();
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 72) = v3;
  *(v0 + 80) = v4;
  sub_1D725C30C();
}

uint64_t sub_1D5F7F408(unsigned __int8 a1, uint64_t a2)
{
  v103 = a2;
  v104 = type metadata accessor for SportsDataServiceRequest(0);
  MEMORY[0x1EEE9AC00](v104, v3);
  v100 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1D5C413F4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v99 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v98 = &v92 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v97 = &v92 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v96 = &v92 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v92 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v92 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v92 - v28;
  v30 = sub_1D72585BC();
  v101 = *(v30 - 8);
  v102 = v30;
  MEMORY[0x1EEE9AC00](v30, v31);
  v95 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v94 = &v92 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v93 = &v92 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v92 - v41;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v92 - v45;
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v92 - v49;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v92 - v53;
  sub_1D5C413F4(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], v5);
  MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v59 = &v92 - v58;
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      v60 = v57;
      if (a1 == 5)
      {
        if (qword_1EC87DA10 != -1)
        {
          swift_once();
        }

        v67 = sub_1D72596AC();
        v68 = v96;
        if (v67)
        {
          sub_1D72596FC();
          sub_1D72596DC();
          if (qword_1EC87DA08 != -1)
          {
            swift_once();
          }

          sub_1D72596CC();

          sub_1D725855C();

          v69 = v101;
          v70 = v102;
          if ((*(v101 + 48))(v68, 1, v102) != 1)
          {
            (*(v69 + 32))(v42, v68, v70);
            (*(v69 + 16))(v100, v42, v70);
            swift_storeEnumTagMultiPayload();
            sub_1D5C413F4(0, &unk_1EDF17A20, type metadata accessor for SportsDataServiceRequest, MEMORY[0x1E69D6B18]);
            swift_allocObject();
            v89 = v70;
            v86 = sub_1D725BB1C();
            (*(v69 + 8))(v42, v89);
            return v86;
          }

          sub_1D5F82D98(v68, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        }

        goto LABEL_66;
      }

      if (qword_1EC87DA30 != -1)
      {
        swift_once();
      }

      v82 = sub_1D72596AC();
      v83 = v98;
      if (v82)
      {
        sub_1D72596FC();
        sub_1D72596DC();
        if (qword_1EC87DA28 != -1)
        {
          swift_once();
        }

        sub_1D72596CC();

        sub_1D725855C();

        v61 = v101;
        v62 = v102;
        if ((*(v101 + 48))(v83, 1, v102) != 1)
        {
          v50 = v94;
          (*(v61 + 32))(v94, v83, v62);
          goto LABEL_76;
        }

        sub_1D5F82D98(v83, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      }

      goto LABEL_66;
    }

    if (a1 == 7)
    {
      v60 = v57;
      if (qword_1EDF185D0 != -1)
      {
        swift_once();
      }

      v73 = sub_1D72596AC();
      v74 = v99;
      if ((v73 & 1) == 0)
      {
        goto LABEL_66;
      }

      sub_1D72596FC();
      sub_1D72596DC();
      if (qword_1EC87DA38 != -1)
      {
        swift_once();
      }

      sub_1D72596CC();

      sub_1D725855C();

      v61 = v101;
      v62 = v102;
      if ((*(v101 + 48))(v74, 1, v102) == 1)
      {
        sub_1D5F82D98(v74, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        goto LABEL_66;
      }

      v50 = v95;
      (*(v61 + 32))(v95, v74, v62);
      goto LABEL_76;
    }
  }

  else
  {
    if (a1 > 1u)
    {
      v60 = v57;
      if (a1 == 2)
      {
        if (qword_1EC87DA20 != -1)
        {
          swift_once();
        }

        v71 = sub_1D72596AC();
        v72 = v97;
        if ((v71 & 1) == 0)
        {
          goto LABEL_66;
        }

        sub_1D72596FC();
        sub_1D72596DC();
        if (qword_1EC87DA18 != -1)
        {
          swift_once();
        }

        sub_1D72596CC();

        sub_1D725855C();

        v61 = v101;
        v62 = v102;
        if ((*(v101 + 48))(v72, 1, v102) == 1)
        {
          sub_1D5F82D98(v72, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          goto LABEL_66;
        }

        v50 = v93;
        (*(v61 + 32))(v93, v72, v62);
        goto LABEL_76;
      }

      if (a1 != 3)
      {
        if (qword_1EDF184F0 != -1)
        {
          swift_once();
        }

        if (sub_1D72596AC())
        {
          sub_1D72596FC();
          sub_1D72596DC();
          if (qword_1EC87D9F8 != -1)
          {
            swift_once();
          }

          sub_1D72596CC();

          sub_1D725855C();

          v76 = v101;
          v75 = v102;
          if ((*(v101 + 48))(v21, 1, v102) != 1)
          {
            (*(v76 + 32))(v46, v21, v75);
            (*(v76 + 16))(v100, v46, v75);
            swift_storeEnumTagMultiPayload();
            sub_1D5C413F4(0, &unk_1EDF17A20, type metadata accessor for SportsDataServiceRequest, MEMORY[0x1E69D6B18]);
            swift_allocObject();
            v88 = v75;
            v86 = sub_1D725BB1C();
            (*(v76 + 8))(v46, v88);
            return v86;
          }

          sub_1D5F82D98(v21, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        }

        goto LABEL_66;
      }

      if (qword_1EC87D9F0 != -1)
      {
        swift_once();
      }

      if (sub_1D72596AC())
      {
        sub_1D72596FC();
        sub_1D72596DC();
        if (qword_1EC87D9E8 != -1)
        {
          swift_once();
        }

        sub_1D72596CC();

        sub_1D725855C();

        v61 = v101;
        v62 = v102;
        if ((*(v101 + 48))(v25, 1, v102) == 1)
        {
          sub_1D5F82D98(v25, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          goto LABEL_66;
        }

        (*(v61 + 32))(v50, v25, v62);
LABEL_76:
        (*(v61 + 16))(v100, v50, v62);
        swift_storeEnumTagMultiPayload();
        sub_1D5C413F4(0, &unk_1EDF17A20, type metadata accessor for SportsDataServiceRequest, MEMORY[0x1E69D6B18]);
        swift_allocObject();
        v91 = v62;
        v86 = sub_1D725BB1C();
        (*(v61 + 8))(v50, v91);
        return v86;
      }

LABEL_66:
      sub_1D725BDCC();
      sub_1D5C41360(v103, v59);
      v84 = (*(v60 + 80) + 16) & ~*(v60 + 80);
      v85 = swift_allocObject();
      sub_1D5F82FB8(v59, v85 + v84);
      v66 = sub_1D725B92C();
      goto LABEL_67;
    }

    if (a1)
    {
      v77 = v57;
      if (qword_1EDF18408 != -1)
      {
        swift_once();
      }

      if (sub_1D72596AC())
      {
        sub_1D72596FC();
        sub_1D72596DC();
        if (qword_1EC87D9D0 != -1)
        {
          swift_once();
        }

        sub_1D72596CC();

        sub_1D725855C();

        v78 = v101;
        v79 = v102;
        if ((*(v101 + 48))(v29, 1, v102) != 1)
        {
          (*(v78 + 32))(v54, v29, v79);
          (*(v78 + 16))(v100, v54, v79);
          swift_storeEnumTagMultiPayload();
          sub_1D5C413F4(0, &unk_1EDF17A20, type metadata accessor for SportsDataServiceRequest, MEMORY[0x1E69D6B18]);
          swift_allocObject();
          v90 = v79;
          v86 = sub_1D725BB1C();
          (*(v78 + 8))(v54, v90);
          return v86;
        }

        sub_1D5F82D98(v29, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      }

      sub_1D725BDCC();
      sub_1D5C41360(v103, v59);
      v80 = (*(v77 + 80) + 16) & ~*(v77 + 80);
      v81 = swift_allocObject();
      sub_1D5F82FB8(v59, v81 + v80);
      v66 = sub_1D725B92C();
      goto LABEL_67;
    }
  }

  v63 = v57;
  sub_1D725BDCC();
  sub_1D5C41360(v103, v59);
  v64 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v65 = swift_allocObject();
  sub_1D5F82FB8(v59, v65 + v64);
  v66 = sub_1D725B92C();
LABEL_67:
  v86 = sub_1D725BA8C();

  return v86;
}