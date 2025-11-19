uint64_t sub_25BE7F49C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25BEB4B24() + 1) & ~v5;
    do
    {
      sub_25BE7B0AC(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_25BEB4B34();
      result = sub_25BE7B108(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
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
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25BE7F640(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25BEB4B24() + 1) & ~v5;
    do
    {
      sub_25BEB4F04();
      sub_25BEB48C4();

      result = sub_25BEB4F24();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25BE7FC74(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25BEB4B24() + 1) & ~v5;
    do
    {
      sub_25BEB4F04();
      sub_25BEB48C4();

      result = sub_25BEB4F24();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 40 * v3;
        v17 = (v15 + 40 * v6);
        if (40 * v3 < (40 * v6) || v16 >= v17 + 40 || v3 != v6)
        {
          v9 = *v17;
          v10 = v17[1];
          *(v16 + 32) = *(v17 + 4);
          *v16 = v9;
          *(v16 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25BE802C8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25BEB4B24() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_25BEB4EF4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      result = v15 + 16 * v3;
      if (v3 < v6 || result >= v15 + 16 * v6 + 16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25BE80458(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25BE804B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_25BE80500()
{
  result = qword_280E766F0;
  if (!qword_280E766F0)
  {
    sub_25BE80A9C(255, &qword_280E76700, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E766F0);
  }

  return result;
}

void sub_25BE80588()
{
  if (!qword_280E76628)
  {
    sub_25BE805F4();
    sub_25BE5CD58();
    v0 = sub_25BEB4CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E76628);
    }
  }
}

void sub_25BE805F4()
{
  if (!qword_280E766C0)
  {
    sub_25BE80458(255, &qword_280E766D0);
    v0 = sub_25BEB4AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E766C0);
    }
  }
}

void sub_25BE8065C(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_25BE80670(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1;
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v48 = (a2 + OBJC_IVAR____TtC14NewsEngagement29EngagementUpsellEventProvider_requestFactory);
  v9 = (v6 + 63) >> 6;
  v10 = 0;

  v47 = v9;
  while (v8)
  {
LABEL_11:
    v16 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v17 = *(*(v4 + 48) + (v16 | (v10 << 6)));
    v18 = v48[3];
    v19 = v48[4];
    __swift_project_boxed_opaque_existential_1(v48, v18);
    v53 = v17;
    EngagementRequestFactoryType.createRequest(for:)(&v53, v18, *(v19 + 8));
    v49 = v50;
    if (v51 == 255)
    {
      v35 = sub_25BE65758(v17);
      if (v36)
      {
        v37 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *a3;
        v50 = *a3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25BEAC144();
          v39 = v50;
        }

        v40 = *(*(v39 + 56) + 16 * v37);
        sub_25BE7EE5C(v37, v39);
        *a3 = v39;

        sub_25BE8065C(v49, 255);
        sub_25BE5FDE0(v52);
      }

      else
      {
        sub_25BE8065C(v50, 255);
        sub_25BE5FDE0(v52);
      }
    }

    else
    {
      v20 = v5;
      v21 = v50;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v23 = a3;
      v24 = v22;
      v25 = *v23;
      v50 = *v23;
      v26 = v23;
      *v23 = 0x8000000000000000;
      v28 = sub_25BE65758(v17);
      v29 = v25[2];
      v30 = (v27 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        goto LABEL_28;
      }

      v32 = v27;
      if (v25[3] >= v31)
      {
        if ((v24 & 1) == 0)
        {
          sub_25BEAC144();
        }
      }

      else
      {
        sub_25BEAAF34(v31, v24);
        v33 = sub_25BE65758(v17);
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_30;
        }

        v28 = v33;
      }

      a3 = v26;
      v5 = v20;
      if (v32)
      {
        v11 = v50[7] + 16 * v28;
        v12 = *v11;
        *v11 = v49;
        v13 = v51;
        *(v11 + 8) = v51 & 1;

        v14 = v49;
        v9 = v47;
      }

      else
      {
        v50[(v28 >> 6) + 8] |= 1 << v28;
        *(v50[6] + v28) = v17;
        v41 = v50[7] + 16 * v28;
        v14 = v49;
        *v41 = v49;
        v13 = v51;
        *(v41 + 8) = v51 & 1;
        v42 = v50[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        v9 = v47;
        if (v43)
        {
          goto LABEL_29;
        }

        v50[2] = v44;
      }

      *a3 = v50;
      sub_25BE8065C(v14, v13);
      sub_25BE5FDE0(v52);

      v4 = v46;
    }
  }

  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
    }

    v8 = *(v5 + 8 * v15);
    ++v10;
    if (v8)
    {
      v10 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_25BEB4E94();
  __break(1u);
  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_25BE80A2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_25BE80A38()
{
  if (!qword_280E76610)
  {
    v0 = sub_25BEB4CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E76610);
    }
  }
}

void sub_25BE80A9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25BE80B00(uint64_t a1)
{
  sub_25BE80A9C(0, &qword_280E76E58, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25BE80B8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t EngagementUpsellBannerProperties.init(title:body:footer:iconUrl:style:appearanceInfo:actionUrl:footerActionUrl:showCloseButton:offer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char *a14)
{
  v18 = *a8;
  v19 = *a14;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v20 = type metadata accessor for EngagementUpsellBannerProperties(0);
  sub_25BE80CFC(a7, a9 + v20[6]);
  v21 = (a9 + v20[9]);
  *v21 = a5;
  v21[1] = a6;
  *(a9 + v20[7]) = a10;
  sub_25BE80CFC(a11, a9 + v20[8]);
  result = sub_25BE80CFC(a12, a9 + v20[10]);
  *(a9 + v20[11]) = a13;
  *(a9 + v20[12]) = v18;
  *(a9 + v20[13]) = v19;
  return result;
}

uint64_t sub_25BE80CFC(uint64_t a1, uint64_t a2)
{
  sub_25BE81160(0, &qword_280E77530, MEMORY[0x277CC9260]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t EngagementUpsellBannerProperties.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EngagementUpsellBannerProperties.body.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EngagementUpsellBannerProperties.iconUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EngagementUpsellBannerProperties(0) + 24);

  return sub_25BE80E20(v3, a1);
}

uint64_t sub_25BE80E20(uint64_t a1, uint64_t a2)
{
  sub_25BE81160(0, &qword_280E77530, MEMORY[0x277CC9260]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EngagementUpsellBannerProperties.appearanceInfo.getter()
{
  type metadata accessor for EngagementUpsellBannerProperties(0);
}

uint64_t EngagementUpsellBannerProperties.actionUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EngagementUpsellBannerProperties(0) + 32);

  return sub_25BE80E20(v3, a1);
}

uint64_t EngagementUpsellBannerProperties.footer.getter()
{
  v1 = *(v0 + *(type metadata accessor for EngagementUpsellBannerProperties(0) + 36));

  return v1;
}

uint64_t EngagementUpsellBannerProperties.footerActionUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EngagementUpsellBannerProperties(0) + 40);

  return sub_25BE80E20(v3, a1);
}

uint64_t EngagementUpsellBannerProperties.style.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EngagementUpsellBannerProperties(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t EngagementUpsellBannerProperties.offer.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EngagementUpsellBannerProperties(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

void sub_25BE81028()
{
  sub_25BE5E7A0(319, &qword_280E76EF0);
  if (v0 <= 0x3F)
  {
    sub_25BE81160(319, &qword_280E77530, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      sub_25BE81160(319, &qword_280E76F10, sub_25BE61C64);
      if (v2 <= 0x3F)
      {
        sub_25BE5E7A0(319, &qword_280E76F30);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25BE81160(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25BEB4AE4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25BE811B4@<X0>(char *a1@<X8>)
{
  sub_25BE81904();
  v67 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v70 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BE81160(0, &qword_280E77530, MEMORY[0x277CC9260]);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v61 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v61 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v61 - v19;
  v21 = sub_25BEB4334();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v61 - v28;
  v30 = v1 + *(type metadata accessor for EngagementUpsellBannerProperties(0) + 24);
  sub_25BE80E20(v30, v20);
  v31 = *(v22 + 48);
  if (v31(v20, 1, v21) == 1)
  {
    sub_25BE81984(v20);
    v32 = type metadata accessor for EngagementUpsellBannerIconKind(0);
    return (*(*(v32 - 8) + 56))(a1, 1, 1, v32);
  }

  v63 = v26;
  v65 = a1;
  v69 = v22;
  v64 = *(v22 + 32);
  v64(v29, v20, v21);
  v68 = v29;
  v34 = sub_25BEB4314();
  v36 = v70;
  if (!v35)
  {
LABEL_9:
    v39 = v69;
    v62 = *(v69 + 16);
    v62(v17, v68, v21);
    (*(v39 + 56))(v17, 0, 1, v21);
    sub_25BEB4324();
    v40 = *(v67 + 48);
    sub_25BE80E20(v17, v36);
    sub_25BE80E20(v13, v36 + v40);
    if (v31(v36, 1, v21) == 1)
    {
      sub_25BE81984(v13);
      sub_25BE81984(v17);
      if (v31((v36 + v40), 1, v21) == 1)
      {
        sub_25BE81984(v36);
        v41 = v65;
LABEL_23:
        type metadata accessor for Images();
        sub_25BE9432C();
        *v41 = v59;
        v60 = type metadata accessor for EngagementUpsellBannerIconKind(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v60 - 8) + 56))(v41, 0, 1, v60);
        return (*(v69 + 8))(v68, v21);
      }
    }

    else
    {
      v51 = v66;
      sub_25BE80E20(v36, v66);
      if (v31((v36 + v40), 1, v21) != 1)
      {
        v54 = (v36 + v40);
        v55 = v51;
        v56 = v63;
        v64(v63, v54, v21);
        sub_25BE81A78();
        v57 = v55;
        LOBYTE(v55) = sub_25BEB4864();
        v58 = *(v69 + 8);
        v58(v56, v21);
        sub_25BE81984(v13);
        sub_25BE81984(v17);
        v58(v57, v21);
        sub_25BE81984(v36);
        v41 = v65;
        if (v55)
        {
          goto LABEL_23;
        }

LABEL_21:
        v52 = v68;
        v62(v41, v68, v21);
        v53 = type metadata accessor for EngagementUpsellBannerIconKind(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v53 - 8) + 56))(v41, 0, 1, v53);
        return (*(v69 + 8))(v52, v21);
      }

      sub_25BE81984(v13);
      sub_25BE81984(v17);
      (*(v69 + 8))(v51, v21);
    }

    sub_25BE81A1C(v36);
    v41 = v65;
    goto LABEL_21;
  }

  if (v34 == 0xD000000000000011 && 0x800000025BEBA3B0 == v35)
  {
  }

  else
  {
    v38 = sub_25BEB4E64();

    if ((v38 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v42 = v68;
  sub_25BEB4304();
  if (v43 && (type metadata accessor for Images(), ObjCClassFromMetadata = swift_getObjCClassFromMetadata(), v45 = [objc_opt_self() bundleForClass_], v46 = sub_25BEB4874(), , v47 = objc_msgSend(objc_opt_self(), sel_imageNamed_inBundle_compatibleWithTraitCollection_, v46, v45, 0), v46, v45, v47))
  {
    v48 = v65;
    *v65 = v47;
    v49 = type metadata accessor for EngagementUpsellBannerIconKind(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  }

  else
  {
    v50 = type metadata accessor for EngagementUpsellBannerIconKind(0);
    (*(*(v50 - 8) + 56))(v65, 1, 1, v50);
  }

  return (*(v69 + 8))(v42, v21);
}

void sub_25BE81904()
{
  if (!qword_27FBE3F70)
  {
    sub_25BE81160(255, &qword_280E77530, MEMORY[0x277CC9260]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FBE3F70);
    }
  }
}

uint64_t sub_25BE81984(uint64_t a1)
{
  sub_25BE81160(0, &qword_280E77530, MEMORY[0x277CC9260]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BE81A1C(uint64_t a1)
{
  sub_25BE81904();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25BE81A78()
{
  result = qword_27FBE3F78;
  if (!qword_27FBE3F78)
  {
    sub_25BEB4334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE3F78);
  }

  return result;
}

unint64_t sub_25BE81B20()
{
  result = sub_25BEB4334();
  if (v1 <= 0x3F)
  {
    result = sub_25BE81B94();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_25BE81B94()
{
  result = qword_27FBE3F90;
  if (!qword_27FBE3F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBE3F90);
  }

  return result;
}

void sub_25BE81C08(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v3 = MEMORY[0x277CC9260];
  sub_25BE5EA14(0, &qword_280E77530, MEMORY[0x277CC9260]);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v36 - v9;
  v11 = sub_25BEB4334();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25BE8217C(a1);
  v17 = type metadata accessor for EngagementUpsellBannerProperties(0);
  [v16 setStyle_];
  sub_25BE5E86C(a1 + v17[8], v10, &qword_280E77530, v3);
  v37 = *(v12 + 48);
  if (v37(v10, 1, v11) == 1)
  {
    v18 = v16;
    sub_25BE5EB54(v10, &qword_280E77530, MEMORY[0x277CC9260]);
    v19 = &off_27997D000;
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v20 = [objc_opt_self() actionWithTitle:0 style:0];
    v21 = sub_25BEB42F4();
    v19 = &off_27997D000;
    [v20 setDeepLink_];

    v18 = v16;
    [v16 setDefaultAction_];

    (*(v12 + 8))(v15, v11);
  }

  if (*(a1 + v17[9] + 8))
  {
    v22 = sub_25BEB4874();
    v23 = [objc_opt_self() actionWithTitle:v22 style:0];

    v24 = v38;
    sub_25BE5E86C(a1 + v17[10], v38, &qword_280E77530, MEMORY[0x277CC9260]);
    v25 = 0;
    if (v37(v24, 1, v11) != 1)
    {
      v25 = sub_25BEB42F4();
      (*(v12 + 8))(v24, v11);
    }

    [v23 v19[105]];

    [v18 addButtonAction_];
  }

  if (*(a1 + v17[11]) == 1)
  {
    v26 = [objc_opt_self() actionWithTitle:0 style:2];
    [v18 addButtonAction_];
  }

  v27 = *(a1 + v17[13]);
  if (v27 != 4)
  {
    *&v42 = 0x656D656761676E65;
    *(&v42 + 1) = 0xEF726566664F746ELL;
    v28 = MEMORY[0x277D837D0];
    sub_25BEB4B54();
    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v29 = 0x800000025BEB9A10;
        v30 = 0xD000000000000012;
      }

      else
      {
        v30 = 0xD000000000000011;
        v29 = 0x800000025BEB9A30;
      }
    }

    else
    {
      v29 = 0xE800000000000000;
      if (v27)
      {
        v30 = 0x656E4F656C707061;
      }

      else
      {
        v30 = 0x73756C507377656ELL;
      }
    }

    v43 = v28;
    *&v42 = v30;
    *(&v42 + 1) = v29;
    v31 = [v18 userInfo];
    v32 = sub_25BEB4834();

    sub_25BE5F500(&v42, v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v32;
    sub_25BE85804(v41, v44, isUniquelyReferenced_nonNull_native);
    sub_25BE7B108(v44);
    v34 = sub_25BEB4824();

    [v18 setUserInfo_];
  }

  v35 = v39;
  *v39 = v18;
  *(v35 + 8) = 0;
}

id sub_25BE8217C(uint64_t *a1)
{
  sub_25BE5EA14(0, &qword_280E77530, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v29 - v4;
  sub_25BE5EA14(0, &qword_27FBE3F98, type metadata accessor for EngagementUpsellBannerIconKind);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = (&v29 - v8);
  sub_25BE811B4(&v29 - v8);
  v10 = type metadata accessor for EngagementUpsellBannerIconKind(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = *v9;
      v12 = *a1;
      v13 = a1[1];
      v14 = a1[2];
      v15 = a1[3];
      v16 = *(a1 + *(type metadata accessor for EngagementUpsellBannerProperties(0) + 28));

      if (v16)
      {
        v16 = sub_25BE7C1B0(v16);
      }

      v27 = objc_allocWithZone(MEMORY[0x277CEE8F8]);
      v24 = sub_25BE825E0(v12, v13, v14, v15, v16);
      [v24 setIconImage_];
      goto LABEL_12;
    }

    sub_25BE5EBB0(v9, type metadata accessor for EngagementUpsellBannerIconKind);
  }

  v17 = *a1;
  v18 = a1[1];
  v19 = a1[2];
  v20 = a1[3];
  v21 = type metadata accessor for EngagementUpsellBannerProperties(0);
  v22 = *(a1 + *(v21 + 28));

  if (v22)
  {
    v22 = sub_25BE7C1B0(v22);
  }

  v23 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v24 = sub_25BE825E0(v17, v18, v19, v20, v22);
  sub_25BE5E86C(a1 + *(v21 + 24), v5, &qword_280E77530, MEMORY[0x277CC9260]);
  v25 = sub_25BEB4334();
  v26 = *(v25 - 8);
  v11 = 0;
  if ((*(v26 + 48))(v5, 1, v25) != 1)
  {
    v11 = sub_25BEB42F4();
    (*(v26 + 8))(v5, v25);
  }

  [v24 setIconURL_];
LABEL_12:

  return v24;
}

uint64_t sub_25BE824CC()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_25BE82504(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(v6 + 24))(a1, a2, v5, v6);
}

uint64_t sub_25BE8257C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementUpsellBannerProperties(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_25BE825E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v8 = sub_25BEB4874();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = sub_25BEB4874();

  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = sub_25BEB4824();

LABEL_8:
  v11 = [v5 initWithTitle:v8 message:v9 appearanceInfo:v10];

  return v11;
}

uint64_t EngagementRequestResult.init(request:error:source:trigger:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(result + 8);
  v7 = *a2;
  v8 = *a3;
  *a6 = *result;
  *(a6 + 8) = v6;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  return result;
}

id EngagementRequestResult.request.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_25BE82788(v2, v3);
}

id sub_25BE82788(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t EngagementRequestResult.error.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return sub_25BE5EC10(v2);
}

uint64_t EngagementRequestResult.trigger.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_25BE8283C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_25BE82884(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14NewsEngagement0B15InlineViewErrorO(uint64_t *a1)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25BE8291C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_25BE82978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t EngagementOffer.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x73756C507377656ELL;
  if (v1 == 2)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0x656E4F656C707061;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

NewsEngagement::EngagementOffer_optional __swiftcall EngagementOffer.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25BEB4CD4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_25BE82AEC()
{
  result = qword_27FBE3FA0;
  if (!qword_27FBE3FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE3FA0);
  }

  return result;
}

uint64_t sub_25BE82B40()
{
  sub_25BEB4F04();
  sub_25BEB48C4();

  return sub_25BEB4F24();
}

uint64_t sub_25BE82C0C()
{
  sub_25BEB48C4();
}

uint64_t sub_25BE82CC4()
{
  sub_25BEB4F04();
  sub_25BEB48C4();

  return sub_25BEB4F24();
}

void sub_25BE82D98(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x73756C507377656ELL;
  v5 = 0x800000025BEB9A10;
  if (v2 == 2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v2 != 2)
  {
    v5 = 0x800000025BEB9A30;
  }

  if (*v1)
  {
    v4 = 0x656E4F656C707061;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for EngagementPlacementSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EngagementPlacementSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static EngagementViewControllerOption.placement(for:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = (result + 48);
  v3 = *(result + 16) + 1;
  while (--v3)
  {
    v4 = v2 + 24;
    v5 = *v2;
    v2 += 24;
    if (!v5)
    {
      *a2 = *(v4 - 40);
      return result;
    }
  }

  *a2 = 32;
  return result;
}

uint64_t static EngagementViewControllerOption.identifier(for:)(uint64_t a1)
{
  v1 = (a1 + 48);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 24;
    v4 = *v1;
    v1 += 24;
    if (v4 == 1)
    {
      v5 = *(v3 - 5);

      return v5;
    }
  }

  return 0;
}

uint64_t static EngagementViewControllerOption.source(for:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = (result + 48);
  v3 = *(result + 16) + 1;
  while (--v3)
  {
    v4 = v2 + 24;
    v5 = *v2;
    v2 += 24;
    if (v5 == 2)
    {
      *a2 = *(v4 - 40);
      return result;
    }
  }

  *a2 = 4;
  return result;
}

uint64_t static EngagementViewControllerOption.messageID(for:)(uint64_t a1)
{
  v1 = (a1 + 48);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 24;
    v4 = *v1;
    v1 += 24;
    if (v4 == 3)
    {
      v5 = *(v3 - 5);

      return v5;
    }
  }

  return 0;
}

uint64_t static EngagementViewControllerOption.offer(for:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = (result + 48);
  v3 = *(result + 16) + 1;
  while (--v3)
  {
    v4 = v2 + 24;
    v5 = *v2;
    v2 += 24;
    if (v5 == 4)
    {
      *a2 = *(v4 - 40);
      return result;
    }
  }

  *a2 = 4;
  return result;
}

id EngagementViewControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EngagementViewControllerFactory.createViewController(request:configuration:options:delegate:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(a2 + 16);
  if (!v11)
  {
    v11 = [a1 style];
  }

  if (a3)
  {
    v22 = MEMORY[0x277D84F98];
    v12 = v6;
    sub_25BE847B4(a3, &v22, v12);

    v13 = sub_25BEB4824();

    [a1 setUserInfo_];
  }

  if (v11 > 8 || ((1 << v11) & 0x1CF) != 0)
  {
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v14 = sub_25BEB4764();
    __swift_project_value_buffer(v14, qword_280E77F40);
    v15 = sub_25BEB4744();
    v16 = sub_25BEB4A54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v11;
      _os_log_impl(&dword_25BE5A000, v15, v16, "Error initializing EngagementViewController with unsupported style [%ld]", v17, 0xCu);
      MEMORY[0x25F87FD60](v17, -1, -1);
    }

    v18 = 0;
  }

  else if (v11 == 4)
  {
    v18 = [objc_allocWithZone(type metadata accessor for EngagementBubbleTipViewController()) initWithRequest_];
    [v18 setDelegate_];
    sub_25BE8B36C(a2);
    v20 = [v18 popoverPresentationController];
    if (v20)
    {
      v21 = v20;
      [v20 setDelegate_];
    }
  }

  else
  {
    v18 = sub_25BE833A0(a1, a2);
  }

  *&v6[OBJC_IVAR____TtC14NewsEngagement31EngagementViewControllerFactory_delegate + 8] = a5;
  swift_unknownObjectWeakAssign();
  return v18;
}

id sub_25BE833A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = [objc_allocWithZone(MEMORY[0x277CEE930]) initWithRequest_];
  [v5 setDelegate_];
  if ((*(a2 + 104) & 1) == 0)
  {
    v6 = *(a2 + 96);
    v7 = [v5 presentationController];
    if (v7)
    {
      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        [v9 setDismissDelayTimeInterval_];
      }
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [v5 presentationController];
    if (v12)
    {
      v13 = v12;
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        [v14 setRelativeTabBarController_];
        v15 = v13;
      }

      else
      {
        v15 = v11;
        v11 = v13;
      }
    }
  }

  return v5;
}

char *EngagementViewControllerFactory.options(for:)(uint64_t a1)
{
  v2 = v1;
  v44 = *(v2 + OBJC_IVAR____TtC14NewsEngagement31EngagementViewControllerFactory_placementKey);

  sub_25BEB4B54();
  if (!*(a1 + 16) || (v4 = sub_25BE7A95C(v49), (v5 & 1) == 0))
  {
    sub_25BE7B108(v49);
LABEL_9:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  sub_25BE60ED4(*(a1 + 56) + 32 * v4, v50);
  sub_25BE7B108(v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  EngagementUIPlacement.init(rawValue:)(v44);
  v6 = v49[0];
  if (v49[0] == 32)
  {
    goto LABEL_9;
  }

  v7 = sub_25BE84548(0, 1, 1, MEMORY[0x277D84F90], &unk_280E765E0);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_25BE84548((v8 > 1), v9 + 1, 1, v7, &unk_280E765E0);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[24 * v9];
  *(v10 + 4) = v6;
  *(v10 + 5) = 0;
  v10[48] = 0;
LABEL_10:
  v45 = *(v2 + OBJC_IVAR____TtC14NewsEngagement31EngagementViewControllerFactory_identifierKey);
  v47 = *(v2 + OBJC_IVAR____TtC14NewsEngagement31EngagementViewControllerFactory_identifierKey + 8);

  sub_25BEB4B54();
  if (*(a1 + 16) && (v11 = sub_25BE7A95C(v49), (v12 & 1) != 0))
  {
    sub_25BE60ED4(*(a1 + 56) + 32 * v11, v50);
    sub_25BE7B108(v49);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_25BE84548(0, *(v7 + 2) + 1, 1, v7, &unk_280E765E0);
      }

      v13 = *(v7 + 2);
      v14 = *(v7 + 3);
      v15 = v13 + 1;
      if (v13 >= v14 >> 1)
      {
        v37 = v7;
        v38 = *(v7 + 2);
        v39 = sub_25BE84548((v14 > 1), v13 + 1, 1, v37, &unk_280E765E0);
        v13 = v38;
        v7 = v39;
      }

      *(v7 + 2) = v15;
      v16 = &v7[24 * v13];
      *(v16 + 4) = v45;
      *(v16 + 5) = v47;
      v16[48] = 1;
    }
  }

  else
  {
    sub_25BE7B108(v49);
  }

  sub_25BEB4B54();
  if (!*(a1 + 16) || (v17 = sub_25BE7A95C(v49), (v18 & 1) == 0))
  {
    sub_25BE7B108(v49);
    goto LABEL_26;
  }

  sub_25BE60ED4(*(a1 + 56) + 32 * v17, v50);
  sub_25BE7B108(v49);
  if (swift_dynamicCast())
  {
    v19 = sub_25BEB4CD4();

    if (v19 > 1)
    {
      if (v19 != 2 && v19 != 3)
      {
        goto LABEL_26;
      }
    }

    else if (v19 >= 2)
    {
      goto LABEL_26;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_25BE84548(0, *(v7 + 2) + 1, 1, v7, &unk_280E765E0);
    }

    v31 = *(v7 + 2);
    v30 = *(v7 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v43 = sub_25BE84548((v30 > 1), v31 + 1, 1, v7, &unk_280E765E0);
      v32 = v31 + 1;
      v7 = v43;
    }

    *(v7 + 2) = v32;
    v33 = &v7[24 * v31];
    *(v33 + 4) = v19;
    *(v33 + 5) = 0;
    v33[48] = 2;
  }

LABEL_26:
  v46 = *(v2 + OBJC_IVAR____TtC14NewsEngagement31EngagementViewControllerFactory_messageIDKey);
  v48 = *(v2 + OBJC_IVAR____TtC14NewsEngagement31EngagementViewControllerFactory_messageIDKey + 8);

  sub_25BEB4B54();
  if (*(a1 + 16) && (v20 = sub_25BE7A95C(v49), (v21 & 1) != 0))
  {
    sub_25BE60ED4(*(a1 + 56) + 32 * v20, v50);
    sub_25BE7B108(v49);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_25BE84548(0, *(v7 + 2) + 1, 1, v7, &unk_280E765E0);
      }

      v22 = *(v7 + 2);
      v23 = *(v7 + 3);
      v24 = v22 + 1;
      if (v22 >= v23 >> 1)
      {
        v40 = v7;
        v41 = *(v7 + 2);
        v42 = sub_25BE84548((v23 > 1), v22 + 1, 1, v40, &unk_280E765E0);
        v22 = v41;
        v7 = v42;
      }

      *(v7 + 2) = v24;
      v25 = &v7[24 * v22];
      *(v25 + 4) = v46;
      *(v25 + 5) = v48;
      v25[48] = 3;
    }
  }

  else
  {
    sub_25BE7B108(v49);
  }

  sub_25BEB4B54();
  if (!*(a1 + 16) || (v26 = sub_25BE7A95C(v49), (v27 & 1) == 0))
  {
    sub_25BE7B108(v49);
    return v7;
  }

  sub_25BE60ED4(*(a1 + 56) + 32 * v26, v50);
  sub_25BE7B108(v49);
  if (swift_dynamicCast())
  {
    v28 = sub_25BEB4CD4();

    if (v28 > 1)
    {
      if (v28 != 2 && v28 != 3)
      {
        return v7;
      }
    }

    else if (v28 >= 2)
    {
      return v7;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_25BE84548(0, *(v7 + 2) + 1, 1, v7, &unk_280E765E0);
    }

    v35 = *(v7 + 2);
    v34 = *(v7 + 3);
    if (v35 >= v34 >> 1)
    {
      v7 = sub_25BE84548((v34 > 1), v35 + 1, 1, v7, &unk_280E765E0);
    }

    *(v7 + 2) = v35 + 1;
    v36 = &v7[24 * v35];
    *(v36 + 4) = v28;
    *(v36 + 5) = 0;
    v36[48] = 4;
  }

  return v7;
}

uint64_t sub_25BE83BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 <= 1)
  {
    if (*(a1 + 16))
    {
      sub_25BE84D08(v3, v4, 1u);

      v22 = MEMORY[0x277D837D0];
      sub_25BEB4B54();
      v27 = v22;
      v24 = v3;
      v25 = v4;
    }

    else
    {

      v8 = MEMORY[0x277D837D0];
      sub_25BEB4B54();
      v28[55] = v3;
      v27 = v8;
      v24 = EngagementUIPlacement.rawValue.getter();
      v25 = v9;
    }

    return sub_25BE7B604(&v24, v28);
  }

  if (v5 == 2)
  {
    v10 = *(a3 + OBJC_IVAR____TtC14NewsEngagement31EngagementViewControllerFactory_sourceKey + 8);
    v24 = *(a3 + OBJC_IVAR____TtC14NewsEngagement31EngagementViewControllerFactory_sourceKey);
    v25 = v10;

    v11 = MEMORY[0x277D837D0];
    sub_25BEB4B54();
    v12 = v3;
    v13 = 0xE700000000000000;
    v14 = 0x6E776F6E6B6E75;
    v15 = 0xE700000000000000;
    v16 = 0x7972756372656DLL;
    if (v3 != 2)
    {
      v16 = 0x6D6F6F727377656ELL;
      v15 = 0xE800000000000000;
    }

    v17 = 0xE500000000000000;
    v18 = 0x6775626564;
  }

  else
  {
    if (v5 == 3)
    {
      v6 = *(a3 + OBJC_IVAR____TtC14NewsEngagement31EngagementViewControllerFactory_messageIDKey + 8);
      v24 = *(a3 + OBJC_IVAR____TtC14NewsEngagement31EngagementViewControllerFactory_messageIDKey);
      v25 = v6;
      sub_25BE84D08(v3, v4, 3u);

      sub_25BEB4B54();
      if (v4)
      {
        v7 = MEMORY[0x277D837D0];
      }

      else
      {
        v3 = 0;
        v7 = 0;
        v26 = 0;
      }

      v24 = v3;
      v25 = v4;
      v27 = v7;
      return sub_25BE7B604(&v24, v28);
    }

    v19 = *(a3 + OBJC_IVAR____TtC14NewsEngagement31EngagementViewControllerFactory_offerKey + 8);
    v24 = *(a3 + OBJC_IVAR____TtC14NewsEngagement31EngagementViewControllerFactory_offerKey);
    v25 = v19;

    v11 = MEMORY[0x277D837D0];
    sub_25BEB4B54();
    v12 = v3;
    v13 = 0xE800000000000000;
    v14 = 0x73756C507377656ELL;
    v15 = 0x800000025BEB9A10;
    if (v3 == 2)
    {
      v16 = 0xD000000000000012;
    }

    else
    {
      v16 = 0xD000000000000011;
    }

    if (v3 != 2)
    {
      v15 = 0x800000025BEB9A30;
    }

    v17 = 0xE800000000000000;
    v18 = 0x656E4F656C707061;
  }

  if (v12)
  {
    v14 = v18;
    v13 = v17;
  }

  v20 = v12 <= 1;
  if (v12 <= 1)
  {
    v21 = v14;
  }

  else
  {
    v21 = v16;
  }

  if (!v20)
  {
    v13 = v15;
  }

  v27 = v11;
  v24 = v21;
  v25 = v13;
  return sub_25BE7B604(&v24, v28);
}

id EngagementViewControllerFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void EngagementViewControllerFactory.messageViewController(_:didSelectActionWith:)(uint64_t a1, id a2)
{
  v5 = [a2 originalRequest];
  v6 = [a2 selectedActionIdentifier];
  if (!v6)
  {
    sub_25BEB4884();
    v6 = sub_25BEB4874();
  }

  v13 = [v5 locateActionWithIdentifier_];

  v7 = v2 + OBJC_IVAR____TtC14NewsEngagement31EngagementViewControllerFactory_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v10 = [v5 userInfo];
    v11 = sub_25BEB4834();

    v12 = EngagementViewControllerFactory.options(for:)(v11);

    (*(v8 + 8))(a1, v13, v12, ObjectType, v8);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t EngagementViewControllerFactory.messageViewControllerDidEnqueueImpression(_:)(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = qword_280E76F20;
    v7 = a1;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_25BEB4764();
    __swift_project_value_buffer(v8, qword_280E77F40);
    v9 = v7;
    v10 = sub_25BEB4744();
    v11 = sub_25BEB4A64();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = [v5 dialogRequest];
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&dword_25BE5A000, v10, v11, "messageViewController didEnqueueImpression %@", v12, 0xCu);
      sub_25BE84A0C(v13);
      MEMORY[0x25F87FD60](v13, -1, -1);
      MEMORY[0x25F87FD60](v12, -1, -1);
    }

    v15 = [v5 dialogRequest];
    v16 = [v15 userInfo];

    v17 = sub_25BEB4834();
    v18 = EngagementViewControllerFactory.options(for:)(v17);

    v19 = v2 + OBJC_IVAR____TtC14NewsEngagement31EngagementViewControllerFactory_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      (*(v20 + 16))(v9, v18, ObjectType, v20);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return 1;
}

char *sub_25BE84548(char *result, int64_t a2, char a3, char *a4, unint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_25BE84CBC(0, a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_25BE84668(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_25BE84BF8(0, &qword_280E765F0, sub_25BE84C5C, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_25BE84C5C();
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25BE847B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    v7 = v4 - 1;
    v8 = (result + 48);
    do
    {
      v9 = v7;
      v10 = *(v8 - 1);
      v11 = *v8;
      v12 = *(v8 - 2);
      v13 = v10;
      v14 = v11;
      sub_25BE84D08(v12, v10, v11);
      sub_25BE83BB8(&v12, a2, a3);
      result = sub_25BE84D24(v12, v13, v14);
      if (v3)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 24;
    }

    while (v9);
  }

  return result;
}

void sub_25BE84854(void *a1)
{
  if (qword_280E76F20 != -1)
  {
    swift_once();
  }

  v2 = sub_25BEB4764();
  __swift_project_value_buffer(v2, qword_280E77F40);
  v3 = a1;
  oslog = sub_25BEB4744();
  v4 = sub_25BEB4A54();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    if (a1)
    {
      swift_getErrorValue();
      v7 = sub_25BEB4EA4();
      v9 = v8;
    }

    else
    {
      v9 = 0xE700000000000000;
      v7 = 0x6E776F6E6B6E75;
    }

    v10 = sub_25BE60F30(v7, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_25BE5A000, oslog, v4, "messageViewController: failed with error: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x25F87FD60](v6, -1, -1);
    MEMORY[0x25F87FD60](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_25BE84A0C(uint64_t a1)
{
  sub_25BE84BF8(0, &qword_280E76EE0, sub_25BE84A98, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25BE84A98()
{
  result = qword_280E76EE8;
  if (!qword_280E76EE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E76EE8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25BE84B2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25BE84B74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

void sub_25BE84BF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25BE84C5C()
{
  result = qword_280E768A8[0];
  if (!qword_280E768A8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280E768A8);
  }

  return result;
}

void sub_25BE84CBC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25BEB4E54();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_25BE84D08(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 | 2) == 3)
  {
  }

  return result;
}

uint64_t sub_25BE84D24(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 | 2) == 3)
  {
  }

  return result;
}

uint64_t sub_25BE84D48()
{
  sub_25BEB4F04();
  sub_25BEB48C4();
  return sub_25BEB4F24();
}

uint64_t sub_25BE84DB4()
{
  sub_25BEB4F04();
  sub_25BEB48C4();
  return sub_25BEB4F24();
}

uint64_t sub_25BE84E04@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_25BEB4CD4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_25BE84E8C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_25BEB4CD4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_25BE84EF0(uint64_t a1)
{
  v2 = sub_25BE850F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE84F2C(uint64_t a1)
{
  v2 = sub_25BE850F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EngagementUpsellConfig.encode(to:)(void *a1)
{
  sub_25BE853E8(0, &qword_27FBE4110, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE850F0();

  sub_25BEB4F44();
  v11[1] = v9;
  sub_25BE85144();
  sub_25BE851AC();
  sub_25BEB4E34();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_25BE850F0()
{
  result = qword_27FBE4118;
  if (!qword_27FBE4118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4118);
  }

  return result;
}

void sub_25BE85144()
{
  if (!qword_27FBE4120)
  {
    type metadata accessor for EngagementUpsellTrigger();
    v0 = sub_25BEB4854();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBE4120);
    }
  }
}

unint64_t sub_25BE851AC()
{
  result = qword_27FBE4128;
  if (!qword_27FBE4128)
  {
    sub_25BE85144();
    sub_25BE854E8(&qword_27FBE4130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4128);
  }

  return result;
}

uint64_t EngagementUpsellConfig.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_25BE853E8(0, &qword_27FBE4138, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE850F0();
  sub_25BEB4F34();
  if (!v2)
  {
    sub_25BE85144();
    sub_25BE8544C();
    sub_25BEB4D84();
    (*(v7 + 8))(v10, v6);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void sub_25BE853E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_25BE850F0();
    v7 = a3(a1, &type metadata for EngagementUpsellConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_25BE8544C()
{
  result = qword_27FBE4140;
  if (!qword_27FBE4140)
  {
    sub_25BE85144();
    sub_25BE854E8(&qword_27FBE4148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4140);
  }

  return result;
}

uint64_t sub_25BE854E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EngagementUpsellTrigger();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BE8555C(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_25BE65758(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_25BEABEE8();
      goto LABEL_7;
    }

    sub_25BEAABB4(v13, a3 & 1);
    v24 = sub_25BE65758(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_25BEB4E94();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_25BEB43C4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_25BEABCD4(v10, a2, a1, v16);
}

void sub_25BE856C4(uint64_t a1, char a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25BE65758(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25BEAC144();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25BEAAF34(v16, a4 & 1);
    v11 = sub_25BE65758(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_25BEB4E94();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * v11;
    v23 = *v22;
    *v22 = a1;
    *(v22 + 8) = a2 & 1;
  }

  else
  {

    sub_25BEABD80(v11, a3, a1, a2 & 1, v21);
  }
}

_OWORD *sub_25BE85804(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_25BE7A95C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_25BEAC2CC();
      goto LABEL_7;
    }

    sub_25BEAB20C(v13, a3 & 1);
    v19 = sub_25BE7A95C(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_25BE7B0AC(a2, v21);
      return sub_25BEABDD0(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_25BEB4E94();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);

  return sub_25BE5F500(a1, v17);
}

unint64_t sub_25BE85950(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_25BE65758(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_25BEAC488();
      v9 = v17;
      goto LABEL_8;
    }

    sub_25BEAB4DC(v14, a3 & 1);
    v9 = sub_25BE65758(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_25BEB4E94();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_25BEABE4C(v9, a2, a1, v19);
  }
}

uint64_t sub_25BE85A80(uint64_t *a1, int a2)
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

uint64_t sub_25BE85AC8(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for EngagementUpsellConfig.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for EngagementUpsellConfig.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_25BE85BF0()
{
  result = qword_27FBE4150;
  if (!qword_27FBE4150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4150);
  }

  return result;
}

unint64_t sub_25BE85C48()
{
  result = qword_27FBE4158;
  if (!qword_27FBE4158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4158);
  }

  return result;
}

unint64_t sub_25BE85CA0()
{
  result = qword_27FBE4160;
  if (!qword_27FBE4160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4160);
  }

  return result;
}

unint64_t sub_25BE85CF4(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_25BE65758(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_25BEACEF4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_25BEAB780(v14, a3 & 1);
    v9 = sub_25BE65758(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_25BEB4E94();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 40 * v9;

    return sub_25BE85E74(a1, v20);
  }

  else
  {

    return sub_25BEABE90(v9, a2, a1, v19);
  }
}

uint64_t sub_25BE85F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementUpsellTrigger();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BE85F90()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25BE85FC8(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = sub_25BEB47F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a3;
  sub_25BE7697C();
  *v12 = sub_25BEB4AA4();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  LOBYTE(a3) = sub_25BEB4814();
  result = (*(v9 + 8))(v12, v8);
  if (a3)
  {
    v15 = *(v4 + 16);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;

      do
      {
        sub_25BE5D428(v17, v21);
        v18 = v22;
        v19 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        HIBYTE(v20) = v13;
        (*(v19 + 24))(a1, a2, &v20 + 7, v18, v19);
        __swift_destroy_boxed_opaque_existential_0Tm(v21);
        v17 += 40;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BE86180(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = sub_25BEB47F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a3;
  sub_25BE7697C();
  *v12 = sub_25BEB4AA4();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  LOBYTE(a3) = sub_25BEB4814();
  result = (*(v9 + 8))(v12, v8);
  if (a3)
  {
    v15 = *(v4 + 16);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;

      do
      {
        sub_25BE5D428(v17, v21);
        v18 = v22;
        v19 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        HIBYTE(v20) = v13;
        (*(v19 + 32))(a1, a2, &v20 + 7, v18, v19);
        __swift_destroy_boxed_opaque_existential_0Tm(v21);
        v17 += 40;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BE86338(uint64_t *a1, char *a2)
{
  v3 = v2;
  v6 = sub_25BEB47F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *a2;
  sub_25BE7697C();
  *v10 = sub_25BEB4AA4();
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  LOBYTE(a2) = sub_25BEB4814();
  result = (*(v7 + 8))(v10, v6);
  if (a2)
  {
    v15 = *(v3 + 16);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;

      do
      {
        sub_25BE5D428(v17, v23);
        v18 = v24;
        v19 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        v21 = v11;
        v22 = v12;
        HIBYTE(v20) = v13;
        (*(v19 + 40))(&v21, &v20 + 7, v18, v19);
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
        v17 += 40;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL static EngagementInlineBannerState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      return v6 == 1;
    }

    if (*&v3 <= 1uLL)
    {
      if (*&v3 | *&v2)
      {
        return v6 == 2 && *&v5 == 1 && v4 == 0.0;
      }

      else
      {
        return v6 == 2 && !(*&v4 | *&v5);
      }
    }

    else if (*&v3 ^ 2 | *&v2)
    {
      if (!(*&v3 ^ 3 | *&v2))
      {
        return v6 == 2 && *&v5 == 3 && v4 == 0.0;
      }

      return v6 == 2 && *&v5 == 4 && v4 == 0.0;
    }

    else
    {
      return v6 == 2 && *&v5 == 2 && v4 == 0.0;
    }
  }

  else
  {
    if (*(a2 + 16) || v3 != v5)
    {
      return 0;
    }

    return v2 == v4;
  }
}

BOOL sub_25BE86604(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      return v6 == 1;
    }

    if (*&v3 <= 1uLL)
    {
      if (*&v3 | *&v2)
      {
        return v6 == 2 && *&v5 == 1 && v4 == 0.0;
      }

      else
      {
        return v6 == 2 && !(*&v4 | *&v5);
      }
    }

    else if (*&v3 ^ 2 | *&v2)
    {
      if (!(*&v3 ^ 3 | *&v2))
      {
        return v6 == 2 && *&v5 == 3 && v4 == 0.0;
      }

      return v6 == 2 && *&v5 == 4 && v4 == 0.0;
    }

    else
    {
      return v6 == 2 && *&v5 == 2 && v4 == 0.0;
    }
  }

  else
  {
    if (*(a2 + 16) || v3 != v5)
    {
      return 0;
    }

    return v2 == v4;
  }
}

uint64_t EngagementInlineBannerState.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (!*(v0 + 16))
  {
    v8 = 0x2864657A6973;
    v3 = sub_25BEB49F4();
    MEMORY[0x25F87F0E0](v3);

    MEMORY[0x25F87F0E0](2127904, 0xE300000000000000);
    v4 = sub_25BEB49F4();
    MEMORY[0x25F87F0E0](v4);

    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    v8 = 0;
    MEMORY[0x25F87F0E0](0x28726F727265, 0xE600000000000000);
    sub_25BE868D0();
    sub_25BEB4C64();
LABEL_5:
    MEMORY[0x25F87F0E0](41, 0xE100000000000000);
    return v8;
  }

  v6 = 0x656C6C69666C7566;
  if (v2 ^ 3 | v1)
  {
    v6 = 0x657373696D736964;
  }

  if (!(v2 ^ 2 | v1))
  {
    v6 = 0x646564616F6CLL;
  }

  if (v2 | v1)
  {
    v7 = 0x676E69646E6570;
  }

  else
  {
    v7 = 0x6C616974696E69;
  }

  if (v2 <= 1)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_25BE868D0()
{
  result = qword_280E765A0;
  if (!qword_280E765A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E765A0);
  }

  return result;
}

uint64_t EngagementInlineBanner.identifier.getter()
{
  v1 = *v0;

  return v1;
}

id EngagementInlineBanner.state.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return sub_25BE86988(v2, v3, v4);
}

id sub_25BE86988(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  return result;
}

uint64_t EngagementInlineBanner.messageID.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t EngagementInlineBanner.appearanceInfo.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

__n128 EngagementInlineBanner.init(identifier:placement:state:source:messageID:offer:appearanceInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, __n128 *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v11 = *a3;
  v12 = a4[1].n128_u8[0];
  v13 = *a5;
  v14 = *a8;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v11;
  result = *a4;
  *(a9 + 24) = *a4;
  *(a9 + 40) = v12;
  *(a9 + 41) = v13;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = v14;
  *(a9 + 72) = a10;
  *(a9 + 80) = a11;
  return result;
}

BOOL _s14NewsEngagement0B12InlineBannerV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v26 = *(a1 + 41);
  v24 = *(a1 + 56);
  v22 = *(a1 + 64);
  v19 = *(a1 + 80);
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 41);
  v20 = *(a2 + 48);
  v21 = *(a1 + 48);
  v23 = *(a2 + 56);
  v25 = *(a2 + 64);
  v16 = *(a1 + 72);
  v17 = *(a2 + 72);
  v18 = *(a2 + 80);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_25BEB4E64() & 1) == 0)
  {
    return 0;
  }

  v9 = EngagementUIPlacement.rawValue.getter();
  v11 = v10;
  if (v9 == EngagementUIPlacement.rawValue.getter() && v11 == v12)
  {
  }

  else
  {
    v13 = sub_25BEB4E64();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (v4 == 1)
    {
      if (v7 != 1)
      {
        return 0;
      }

LABEL_35:
      if (sub_25BEAED34(v26, v8))
      {
        if (v24)
        {
          v15 = v25;
          if (!v23 || (v21 != v20 || v24 != v23) && (sub_25BEB4E64() & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v15 = v25;
          if (v23)
          {
            return 0;
          }
        }

        if (v22 == 4)
        {
          if (v15 != 4)
          {
            return 0;
          }
        }

        else if (v15 == 4 || (sub_25BEAEE70(v22, v15) & 1) == 0)
        {
          return 0;
        }

        if (v19)
        {
          return v18 && (v16 == v17 && v19 == v18 || (sub_25BEB4E64() & 1) != 0);
        }

        if (!v18)
        {
          return 1;
        }
      }

      return 0;
    }

    if (*&v3 > 1uLL)
    {
      if (*&v3 ^ 2 | *&v2)
      {
        if (*&v3 ^ 3 | *&v2)
        {
          if (v7 != 2)
          {
            return 0;
          }

          result = 0;
          if (*&v6 != 4)
          {
            return result;
          }
        }

        else
        {
          if (v7 != 2)
          {
            return 0;
          }

          result = 0;
          if (*&v6 != 3)
          {
            return result;
          }
        }
      }

      else
      {
        if (v7 != 2)
        {
          return 0;
        }

        result = 0;
        if (*&v6 != 2)
        {
          return result;
        }
      }

LABEL_34:
      if (v5 != 0.0)
      {
        return result;
      }

      goto LABEL_35;
    }

    if (*&v3 | *&v2)
    {
      if (v7 != 2)
      {
        return 0;
      }

      result = 0;
      if (*&v6 != 1)
      {
        return result;
      }

      goto LABEL_34;
    }

    result = 0;
    if (v7 == 2 && !(*&v5 | *&v6))
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v7)
    {
      return 0;
    }

    result = 0;
    if (v3 == v6 && v2 == v5)
    {
      goto LABEL_35;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_25BE86D80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_25BE86DC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_25BE86E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v59 = a3;
  v56 = sub_25BEB47A4();
  v60 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25BEB47C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25BEB47E4();
  v61 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v57 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v19 = &v48 - v18;
  if (qword_280E76E48 != -1)
  {
    swift_once();
  }

  sub_25BE8A7C0(qword_280E76958, v17, type metadata accessor for EngagementDebugEventProvider);
  sub_25BEB4424();
  if (LOBYTE(aBlock[0]) == 1)
  {
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v55 = v7;
    v20 = sub_25BEB4764();
    v21 = __swift_project_value_buffer(v20, qword_280E77F40);

    v50 = v21;
    v22 = sub_25BEB4744();
    v23 = sub_25BEB4A64();

    v24 = os_log_type_enabled(v22, v23);
    v53 = v8;
    v54 = v6;
    v51 = v12;
    v52 = v11;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      aBlock[0] = v49;
      *v25 = 136315138;
      v26 = a1;
      sub_25BE7B15C(a1);
      v27 = MEMORY[0x25F87F1C0]();
      v28 = v19;
      v30 = v29;

      v31 = sub_25BE60F30(v27, v30, aBlock);
      v19 = v28;

      *(v25 + 4) = v31;
      _os_log_impl(&dword_25BE5A000, v22, v23, "Fetching debug response(s) for: %s", v25, 0xCu);
      v32 = v49;
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x25F87FD60](v32, -1, -1);
      MEMORY[0x25F87FD60](v25, -1, -1);
    }

    else
    {

      v26 = a1;
    }

    if (*(sub_25BE875D4(v26) + 16))
    {
      sub_25BE80458(0, &qword_280E766D0);
      sub_25BE5CD58();
      v33 = sub_25BEB4844();
      sub_25BE80458(0, &unk_280E766A0);
      v34 = sub_25BEB4844();

      v35 = sub_25BE7BF30(v33);

      sub_25BE80458(0, &qword_280E766B0);
      v36 = sub_25BEB4AA4();
      v37 = v57;
      sub_25BEB47D4();
      sub_25BEB4804();
      v61 = *(v61 + 8);
      v38 = v51;
      (v61)(v37, v51);
      v39 = swift_allocObject();
      v40 = v59;
      *(v39 + 16) = v58;
      *(v39 + 24) = v40;
      *(v39 + 32) = v35;
      *(v39 + 40) = v34;
      *(v39 + 48) = 1;
      aBlock[4] = sub_25BE8AA80;
      aBlock[5] = v39;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25BEAE488;
      aBlock[3] = &block_descriptor_7_0;
      v41 = _Block_copy(aBlock);

      v42 = v52;
      sub_25BEB47B4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_25BE8A7C0(&qword_280E76720, 255, MEMORY[0x277D85198]);
      sub_25BE8A808(0, &qword_280E76700, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_25BE80500();
      v43 = v54;
      v44 = v56;
      sub_25BEB4B04();
      MEMORY[0x25F87F2A0](v19, v42, v43, v41);
      _Block_release(v41);

      (*(v60 + 8))(v43, v44);
      (*(v53 + 8))(v42, v55);
      (v61)(v19, v38);
    }

    else
    {

      v45 = sub_25BEB4744();
      v46 = sub_25BEB4A64();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_25BE5A000, v45, v46, "Fetch returned empty response", v47, 2u);
        MEMORY[0x25F87FD60](v47, -1, -1);
      }
    }
  }
}

uint64_t sub_25BE875D4(uint64_t a1)
{
  v2 = v1;
  v17 = MEMORY[0x277D84F98];

  v5 = sub_25BE8B034(v4);

  if (!*(v5 + 16))
  {
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v6 = sub_25BEB4764();
    __swift_project_value_buffer(v6, qword_280E77F40);

    v7 = sub_25BEB4744();
    v8 = sub_25BEB4A64();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      sub_25BE7B15C(a1);
      v11 = MEMORY[0x25F87F1C0]();
      v13 = v12;

      v14 = sub_25BE60F30(v11, v13, &v16);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_25BE5A000, v7, v8, "No enabled placements in %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x25F87FD60](v10, -1, -1);
      MEMORY[0x25F87FD60](v9, -1, -1);
    }
  }

  sub_25BE8ABB8(v5, v2, &v17);

  return v17;
}

uint64_t sub_25BE877C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a2;
  v68 = a3;
  v71 = a1;
  v3 = sub_25BEB47A4();
  v70 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_25BEB47C4();
  v7 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25BEB47E4();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v66 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v19 = &v56 - v18;
  if (qword_280E76E48 != -1)
  {
    swift_once();
  }

  sub_25BE8A7C0(qword_280E76958, v17, type metadata accessor for EngagementDebugEventProvider);
  result = sub_25BEB4424();
  if (LOBYTE(aBlock[0]) == 1)
  {
    v63 = v7;
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v21 = sub_25BEB4764();
    __swift_project_value_buffer(v21, qword_280E77F40);
    v22 = v71;

    v23 = sub_25BEB4744();
    v24 = sub_25BEB4A64();

    v25 = os_log_type_enabled(v23, v24);
    v64 = v3;
    v65 = v19;
    v62 = v10;
    if (v25)
    {
      v58 = v24;
      v59 = v12;
      v60 = v11;
      v61 = v6;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      aBlock[0] = v27;
      *v26 = 136315138;
      v29 = *(v22 + 16);
      v30 = MEMORY[0x277D84F90];
      if (v29)
      {
        v56 = v27;
        v57 = v26;
        v73 = MEMORY[0x277D84F90];
        sub_25BE75A98(0, v29, 0);
        v30 = v73;
        v31 = (v22 + 32);
        do
        {
          v32 = *v31;
          v31 += 16;
          v72 = v32;
          v33 = EngagementUIPlacement.rawValue.getter();
          v35 = v34;
          v73 = v30;
          v37 = *(v30 + 16);
          v36 = *(v30 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_25BE75A98((v36 > 1), v37 + 1, 1);
            v30 = v73;
          }

          *(v30 + 16) = v37 + 1;
          v38 = v30 + 16 * v37;
          *(v38 + 32) = v33;
          *(v38 + 40) = v35;
          --v29;
        }

        while (v29);
        v22 = v71;
        v26 = v57;
        v28 = v56;
      }

      v39 = MEMORY[0x25F87F1C0](v30, MEMORY[0x277D837D0]);
      v41 = v40;

      v42 = sub_25BE60F30(v39, v41, aBlock);

      *(v26 + 4) = v42;
      _os_log_impl(&dword_25BE5A000, v23, v58, "Fetching debug response(s) for: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x25F87FD60](v28, -1, -1);
      MEMORY[0x25F87FD60](v26, -1, -1);

      v11 = v60;
      v6 = v61;
      v12 = v59;
    }

    else
    {
    }

    if (sub_25BE87FC8(v22)[2])
    {
      sub_25BE80458(0, &qword_280E766D0);
      sub_25BE5CD58();
      v43 = sub_25BEB4844();
      sub_25BE80458(0, &unk_280E766A0);
      v44 = sub_25BEB4844();

      v45 = sub_25BE7BF30(v43);

      sub_25BE80458(0, &qword_280E766B0);
      v46 = sub_25BEB4AA4();
      v47 = v66;
      sub_25BEB47D4();
      sub_25BEB4804();
      v48 = *(v12 + 8);
      v49 = v11;
      v48(v47, v11);
      v50 = swift_allocObject();
      v51 = v68;
      *(v50 + 16) = v67;
      *(v50 + 24) = v51;
      *(v50 + 32) = v45;
      *(v50 + 40) = v44;
      *(v50 + 48) = 1;
      aBlock[4] = sub_25BE8B364;
      aBlock[5] = v50;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25BEAE488;
      aBlock[3] = &block_descriptor_1;
      v52 = _Block_copy(aBlock);

      v53 = v62;
      sub_25BEB47B4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_25BE8A7C0(&qword_280E76720, 255, MEMORY[0x277D85198]);
      sub_25BE8A808(0, &qword_280E76700, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_25BE80500();
      v54 = v64;
      sub_25BEB4B04();
      v55 = v65;
      MEMORY[0x25F87F2A0](v65, v53, v6, v52);
      _Block_release(v52);

      (*(v70 + 8))(v6, v54);
      (*(v63 + 8))(v53, v69);
      return (v48)(v55, v49);
    }

    else
    {
    }
  }

  return result;
}

void *sub_25BE87FC8(uint64_t a1)
{
  v70 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  v62 = v2;
  if (v2)
  {
    v67 = MEMORY[0x277D84F90];
    sub_25BE75A78(0, v2, 0);
    v4 = v67;
    v5 = (a1 + 32);
    v6 = v67[2];
    do
    {
      v8 = *v5;
      v5 += 16;
      v7 = v8;
      v67 = v4;
      v9 = v4[3];
      v10 = v6 + 1;
      if (v6 >= v9 >> 1)
      {
        sub_25BE75A78((v9 > 1), v6 + 1, 1);
        v4 = v67;
      }

      v4[2] = v10;
      *(v4 + v6++ + 32) = v7;
      --v2;
    }

    while (v2);
  }

  else
  {
    v10 = *(MEMORY[0x277D84F90] + 16);
    v4 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  v11 = MEMORY[0x277D84F90];
  v12 = 32;
  do
  {
    v15 = *(v4 + v12);
    LOBYTE(v66) = v15;
    if (sub_25BE88E44(&v66))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BE75A78(0, v11[2] + 1, 1);
        v11 = v67;
      }

      v14 = v11[2];
      v13 = v11[3];
      if (v14 >= v13 >> 1)
      {
        sub_25BE75A78((v13 > 1), v14 + 1, 1);
        v11 = v67;
      }

      v11[2] = v14 + 1;
      *(v11 + v14 + 32) = v15;
    }

    ++v12;
    --v10;
  }

  while (v10);
LABEL_16:
  v61 = v11[2];
  if (v61)
  {

    v17 = 0;
    v60 = (a1 + 40);
    v3 = v62;
    while (v17 < v11[2])
    {
      v4 = *(v11 + v17 + 32);
      if (!v3)
      {
LABEL_123:
        v22 = 0;
        goto LABEL_125;
      }

      v21 = v60;
      while (2)
      {
        v22 = *v21;
        v23 = *(v21 - 8);
        v21 += 2;
        v24 = 0xED00007465656853;
        v25 = 0x6C6576654C707061;
        switch(v23)
        {
          case 1:
            v25 = 0x6C6576654C707061;
            v24 = 0xED00007473616F54;
            break;
          case 2:
            v25 = 0x73756C507377656ELL;
            v24 = 0xEF6D657449626154;
            break;
          case 3:
            v25 = 0xD000000000000010;
            v24 = 0x800000025BEB9A70;
            break;
          case 4:
            v25 = 0x6261546F69647561;
            v24 = 0xEC0000006D657449;
            break;
          case 5:
            v25 = 0xD000000000000010;
            v24 = 0x800000025BEB9A90;
            break;
          case 6:
            v26 = 0x686372616573;
            goto LABEL_45;
          case 7:
            v26 = 0x7374726F7073;
LABEL_45:
            v25 = v26 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
            v24 = 0xED00006D65744962;
            break;
          case 8:
            v25 = 0x5473656C7A7A7570;
            v24 = 0xEE006D6574496261;
            break;
          case 9:
            v25 = 0x6C6F46664F706F74;
            v24 = 0xEE00676E69776F6CLL;
            break;
          case 10:
            v25 = 0xD000000000000012;
            v24 = 0x800000025BEB9AE0;
            break;
          case 11:
            v25 = 0xD00000000000001ALL;
            v24 = 0x800000025BEB9B00;
            break;
          case 12:
            v25 = 0xD00000000000001BLL;
            v24 = 0x800000025BEB9B20;
            break;
          case 13:
            v25 = 0x766153664F706F74;
            v24 = 0xEA00000000006465;
            break;
          case 14:
            v25 = 0xD000000000000011;
            v24 = 0x800000025BEB9B50;
            break;
          case 15:
            v25 = 0xD000000000000010;
            v24 = 0x800000025BEB9B70;
            break;
          case 16:
            v25 = 0xD000000000000010;
            v24 = 0x800000025BEB9B90;
            break;
          case 17:
            v25 = 0xD000000000000010;
            v24 = 0x800000025BEB9BB0;
            break;
          case 18:
            v25 = 0xD000000000000017;
            v24 = 0x800000025BEB9BD0;
            break;
          case 19:
            v25 = 0xD000000000000017;
            v24 = 0x800000025BEB9BF0;
            break;
          case 20:
            v25 = 0xD00000000000001CLL;
            v24 = 0x800000025BEB9C10;
            break;
          case 21:
            v25 = 0xD000000000000020;
            v24 = 0x800000025BEB9C30;
            break;
          case 22:
            v25 = 0xD000000000000019;
            v24 = 0x800000025BEB9C60;
            break;
          case 23:
            v25 = 0xD000000000000022;
            v24 = 0x800000025BEB9C80;
            break;
          case 24:
            v25 = 0xD000000000000017;
            v24 = 0x800000025BEB9CB0;
            break;
          case 25:
            v25 = 0xD00000000000001CLL;
            v24 = 0x800000025BEB9CD0;
            break;
          case 26:
            v25 = 0xD000000000000020;
            v24 = 0x800000025BEB9CF0;
            break;
          case 27:
            v25 = 0xD00000000000001BLL;
            v24 = 0x800000025BEB9D20;
            break;
          case 28:
            v25 = 0xD000000000000024;
            v24 = 0x800000025BEB9D40;
            break;
          case 29:
            v25 = 0xD00000000000001ALL;
            v24 = 0x800000025BEB9D70;
            break;
          case 30:
            v25 = 0xD00000000000001FLL;
            v24 = 0x800000025BEB9D90;
            break;
          case 31:
            v25 = 0xD000000000000023;
            v24 = 0x800000025BEB9DB0;
            break;
          default:
            break;
        }

        v27 = 0x6C6576654C707061;
        v28 = 0xED00007465656853;
        switch(v4)
        {
          case 1uLL:
            v29 = 0x6C6576654C707061;
            v30 = 0x7473616F54;
            goto LABEL_96;
          case 2uLL:
            v28 = 0xEF6D657449626154;
            if (v25 != 0x73756C507377656ELL)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 3uLL:
            v28 = 0x800000025BEB9A70;
            if (v25 != 0xD000000000000010)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 4uLL:
            v28 = 0xEC0000006D657449;
            if (v25 != 0x6261546F69647561)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 5uLL:
            v28 = 0x800000025BEB9A90;
            if (v25 != 0xD000000000000010)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 6uLL:
            v33 = 0x686372616573;
            goto LABEL_95;
          case 7uLL:
            v33 = 0x7374726F7073;
LABEL_95:
            v29 = v33 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
            v30 = 0x6D65744962;
LABEL_96:
            v28 = v30 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v25 != v29)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 8uLL:
            v31 = 0x5473656C7A7A7570;
            v32 = 0x6D6574496261;
            goto LABEL_103;
          case 9uLL:
            v31 = 0x6C6F46664F706F74;
            v32 = 0x676E69776F6CLL;
LABEL_103:
            v28 = v32 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v25 != v31)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0xAuLL:
            v28 = 0x800000025BEB9AE0;
            if (v25 != 0xD000000000000012)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0xBuLL:
            v28 = 0x800000025BEB9B00;
            if (v25 != 0xD00000000000001ALL)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0xCuLL:
            v28 = 0x800000025BEB9B20;
            if (v25 != 0xD00000000000001BLL)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0xDuLL:
            v28 = 0xEA00000000006465;
            if (v25 != 0x766153664F706F74)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0xEuLL:
            v28 = 0x800000025BEB9B50;
            if (v25 != 0xD000000000000011)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0xFuLL:
            v28 = 0x800000025BEB9B70;
            if (v25 != 0xD000000000000010)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0x10uLL:
            v28 = 0x800000025BEB9B90;
            if (v25 != 0xD000000000000010)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0x11uLL:
            v28 = 0x800000025BEB9BB0;
            if (v25 != 0xD000000000000010)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0x12uLL:
            v28 = 0x800000025BEB9BD0;
            if (v25 != 0xD000000000000017)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0x13uLL:
            v28 = 0x800000025BEB9BF0;
            if (v25 != 0xD000000000000017)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0x14uLL:
            v28 = 0x800000025BEB9C10;
            if (v25 != 0xD00000000000001CLL)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0x15uLL:
            v28 = 0x800000025BEB9C30;
            if (v25 != 0xD000000000000020)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0x16uLL:
            v28 = 0x800000025BEB9C60;
            if (v25 != 0xD000000000000019)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0x17uLL:
            v28 = 0x800000025BEB9C80;
            if (v25 != 0xD000000000000022)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0x18uLL:
            v28 = 0x800000025BEB9CB0;
            if (v25 != 0xD000000000000017)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0x19uLL:
            v28 = 0x800000025BEB9CD0;
            if (v25 != 0xD00000000000001CLL)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0x1AuLL:
            v28 = 0x800000025BEB9CF0;
            if (v25 != 0xD000000000000020)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0x1BuLL:
            v28 = 0x800000025BEB9D20;
            if (v25 != 0xD00000000000001BLL)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0x1CuLL:
            v28 = 0x800000025BEB9D40;
            if (v25 != 0xD000000000000024)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0x1DuLL:
            v27 = 0xD00000000000001ALL;
            v28 = 0x800000025BEB9D70;
            goto LABEL_116;
          case 0x1EuLL:
            v28 = 0x800000025BEB9D90;
            if (v25 != 0xD00000000000001FLL)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          case 0x1FuLL:
            v28 = 0x800000025BEB9DB0;
            if (v25 != 0xD000000000000023)
            {
              goto LABEL_118;
            }

            goto LABEL_117;
          default:
LABEL_116:
            if (v25 != v27)
            {
              goto LABEL_118;
            }

LABEL_117:
            if (v24 != v28)
            {
LABEL_118:
              v34 = sub_25BEB4E64();

              if (v34)
              {
                goto LABEL_125;
              }

              if (!--v3)
              {
                goto LABEL_123;
              }

              continue;
            }

LABEL_125:
            v36 = v64[5];
            v35 = v64[6];
            __swift_project_boxed_opaque_existential_1(v64 + 2, v36);
            LOBYTE(v66) = v4;
            EngagementRequestFactoryType.createRequest(for:context:)(&v66, v22, v36, *(v35 + 8));

            v37 = v67;
            v38 = v68;
            v39 = v69;
            if (v68 == 255)
            {
              sub_25BE7E6A8(v4, &v67);
              sub_25BE8065C(v37, 255);
              sub_25BE5FDE0(v39);

              sub_25BE8065C(v67, v68);
            }

            else
            {
              v18 = v67;
              v19 = v70;
              v20 = swift_isUniquelyReferenced_nonNull_native();
              v67 = v19;
              sub_25BE856C4(v37, v38 & 1, v4, v20);
              sub_25BE8065C(v37, v38);
              sub_25BE5FDE0(v39);

              v70 = v67;
            }

            ++v17;
            v3 = v62;
            if (v17 == v61)
            {

              return v70;
            }

            break;
        }

        break;
      }
    }

    __break(1u);
    goto LABEL_142;
  }

  if (qword_280E76F20 != -1)
  {
LABEL_142:
    swift_once();
  }

  v40 = sub_25BEB4764();
  __swift_project_value_buffer(v40, qword_280E77F40);

  v41 = sub_25BEB4744();
  v42 = sub_25BEB4A64();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = v44;
    v67 = v44;
    *v43 = 136315138;
    v46 = v4[2];
    if (v46)
    {
      v65 = v44;
      v66 = v3;
      sub_25BE75A98(0, v46, 0);
      v47 = 32;
      v48 = v66;
      do
      {
        v49 = EngagementUIPlacement.rawValue.getter();
        v66 = v48;
        v52 = *(v48 + 16);
        v51 = *(v48 + 24);
        if (v52 >= v51 >> 1)
        {
          v63 = v49;
          v54 = v50;
          sub_25BE75A98((v51 > 1), v52 + 1, 1);
          v50 = v54;
          v49 = v63;
          v48 = v66;
        }

        *(v48 + 16) = v52 + 1;
        v53 = v48 + 16 * v52;
        *(v53 + 32) = v49;
        *(v53 + 40) = v50;
        ++v47;
        --v46;
      }

      while (v46);

      v45 = v65;
    }

    else
    {

      v48 = MEMORY[0x277D84F90];
    }

    v55 = MEMORY[0x25F87F1C0](v48, MEMORY[0x277D837D0]);
    v57 = v56;

    v58 = sub_25BE60F30(v55, v57, &v67);

    *(v43 + 4) = v58;
    _os_log_impl(&dword_25BE5A000, v41, v42, "No enabled placements in %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    MEMORY[0x25F87FD60](v45, -1, -1);
    MEMORY[0x25F87FD60](v43, -1, -1);
  }

  else
  {
  }

  return v70;
}

uint64_t sub_25BE88D90(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_25BE84CBC(0, &qword_280E76600);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BEB60E0;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;

  a1(v9, 0);
}

uint64_t sub_25BE88E44(char *a1)
{
  v1 = *a1;
  sub_25BE8A808(0, &qword_27FBE4168, sub_25BE8A86C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BEB6B20;
  *(inited + 32) = 0;
  if (qword_27FBE3D38 != -1)
  {
    swift_once();
  }

  *(inited + 40) = qword_27FBE41F8;
  *(inited + 48) = 1;
  v3 = qword_27FBE3D40;

  if (v3 != -1)
  {
    swift_once();
  }

  *(inited + 56) = qword_27FBE4200;
  *(inited + 64) = 3;
  v4 = qword_27FBE3D50;

  if (v4 != -1)
  {
    swift_once();
  }

  *(inited + 72) = qword_27FBE4210;
  *(inited + 80) = 2;
  v5 = qword_27FBE3D48;

  if (v5 != -1)
  {
    swift_once();
  }

  *(inited + 88) = qword_27FBE4208;
  *(inited + 96) = 4;
  v6 = qword_27FBE3D58;

  if (v6 != -1)
  {
    swift_once();
  }

  *(inited + 104) = qword_27FBE4218;
  *(inited + 112) = 5;
  v7 = qword_27FBE3D60;

  if (v7 != -1)
  {
    swift_once();
  }

  *(inited + 120) = qword_27FBE4220;
  *(inited + 128) = 6;
  v8 = qword_27FBE3D68;

  if (v8 != -1)
  {
    swift_once();
  }

  *(inited + 136) = qword_27FBE4228;
  *(inited + 144) = 7;
  v9 = qword_27FBE3D70;

  if (v9 != -1)
  {
    swift_once();
  }

  *(inited + 152) = qword_27FBE4230;
  *(inited + 160) = 8;
  v10 = qword_27FBE3D78;

  if (v10 != -1)
  {
    swift_once();
  }

  *(inited + 168) = qword_27FBE4238;
  *(inited + 176) = 15;
  v11 = qword_27FBE3D88;

  if (v11 != -1)
  {
    swift_once();
  }

  *(inited + 184) = qword_27FBE4248;
  *(inited + 192) = 16;
  v12 = qword_27FBE3D90;

  if (v12 != -1)
  {
    swift_once();
  }

  *(inited + 200) = qword_27FBE4250;
  *(inited + 208) = 17;
  v13 = qword_27FBE3D98;

  if (v13 != -1)
  {
    swift_once();
  }

  *(inited + 216) = qword_27FBE4258;
  *(inited + 224) = 19;
  v14 = qword_27FBE3DA0;

  if (v14 != -1)
  {
    swift_once();
  }

  *(inited + 232) = qword_27FBE4260;
  *(inited + 240) = 20;
  v15 = qword_27FBE3DA8;

  if (v15 != -1)
  {
    swift_once();
  }

  *(inited + 248) = qword_27FBE4268;
  *(inited + 256) = 21;
  v16 = qword_27FBE3DB0;

  if (v16 != -1)
  {
    swift_once();
  }

  *(inited + 264) = qword_27FBE4270;
  *(inited + 272) = 24;
  v17 = qword_27FBE3DB8;

  if (v17 != -1)
  {
    swift_once();
  }

  *(inited + 280) = qword_27FBE4278;
  *(inited + 288) = 25;
  v18 = qword_27FBE3DC0;

  if (v18 != -1)
  {
    swift_once();
  }

  *(inited + 296) = qword_27FBE4280;
  *(inited + 304) = 26;
  v19 = qword_27FBE3DC8;

  if (v19 != -1)
  {
    swift_once();
  }

  *(inited + 312) = qword_27FBE4288;
  *(inited + 320) = 22;
  v20 = qword_27FBE3DD0;

  if (v20 != -1)
  {
    swift_once();
  }

  *(inited + 328) = qword_27FBE4290;
  *(inited + 336) = 23;
  v21 = qword_27FBE3DE0;

  if (v21 != -1)
  {
    swift_once();
  }

  *(inited + 344) = qword_27FBE42A0;
  *(inited + 352) = 27;
  v22 = qword_27FBE3DE8;

  if (v22 != -1)
  {
    swift_once();
  }

  *(inited + 360) = qword_27FBE42A8;
  *(inited + 368) = 28;
  v23 = qword_27FBE3DF0;

  if (v23 != -1)
  {
    swift_once();
  }

  *(inited + 376) = qword_27FBE42B0;
  *(inited + 384) = 29;
  v24 = qword_27FBE3DF8;

  if (v24 != -1)
  {
    swift_once();
  }

  *(inited + 392) = qword_27FBE42B8;
  *(inited + 400) = 30;
  v25 = qword_27FBE3E00;

  if (v25 != -1)
  {
    swift_once();
  }

  *(inited + 408) = qword_27FBE42C0;
  *(inited + 416) = 31;
  v26 = qword_27FBE3E08;

  if (v26 != -1)
  {
    swift_once();
  }

  *(inited + 424) = qword_27FBE42C8;
  *(inited + 432) = 9;
  v27 = qword_27FBE3E10;

  if (v27 != -1)
  {
    swift_once();
  }

  *(inited + 440) = qword_27FBE42D0;

  v28 = sub_25BE8A92C(inited);
  swift_setDeallocating();
  sub_25BE8A86C();
  swift_arrayDestroy();
  if (*(v28 + 16) && (sub_25BE65758(v1), (v29 & 1) != 0))
  {

    sub_25BE8A7C0(qword_280E76958, v30, type metadata accessor for EngagementDebugEventProvider);
    sub_25BEB4424();

    return v40;
  }

  else
  {

    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v32 = sub_25BEB4764();
    __swift_project_value_buffer(v32, qword_280E77F40);
    v33 = sub_25BEB4744();
    v34 = sub_25BEB4A54();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v40 = v36;
      *v35 = 136315138;
      v37 = EngagementUIPlacement.rawValue.getter();
      v39 = sub_25BE60F30(v37, v38, &v40);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_25BE5A000, v33, v34, "Could not find debug enabled setting for %s. Please update placements mapping", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x25F87FD60](v36, -1, -1);
      MEMORY[0x25F87FD60](v35, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_25BE89824(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = sub_25BEB47F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a3;
  sub_25BE80458(0, &qword_280E766B0);
  *v12 = sub_25BEB4AA4();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = sub_25BEB4814();
  (*(v9 + 8))(v12, v8);
  if (v14)
  {
    swift_beginAccess();
    v15 = *(v4 + 56);
    if (!*(v15 + 16) || (v16 = sub_25BE65758(v13), (v17 & 1) == 0))
    {
LABEL_18:
      swift_endAccess();
LABEL_19:
      sub_25BE84CBC(0, &qword_280E765B0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_25BEB60F0;
      type metadata accessor for WeakEngagementUIEventObserver();
      v23 = swift_allocObject();
      *(v23 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v23 + 24) = a2;
      swift_unknownObjectWeakAssign();
      *(v22 + 32) = v23;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(v4 + 56);
      *(v4 + 56) = 0x8000000000000000;
      sub_25BE85950(v22, v13, isUniquelyReferenced_nonNull_native);
      v25 = v35;
      goto LABEL_20;
    }

    v14 = *(*(v15 + 56) + 8 * v16);
    v35 = v14;
    swift_endAccess();
    if (!(v14 >> 62))
    {
      v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        v32 = a2;
        v33 = v13;

LABEL_7:
        v19 = 0;
        v13 = v14 & 0xFFFFFFF8;
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            a2 = MEMORY[0x25F87F3D0](v19, v14);
            v20 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
LABEL_17:
              __break(1u);
              goto LABEL_18;
            }
          }

          else
          {
            if (v19 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_22;
            }

            a2 = *(v14 + 8 * v19 + 32);

            v20 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_17;
            }
          }

          Strong = swift_unknownObjectWeakLoadStrong();

          if (Strong)
          {
            swift_unknownObjectRelease();
            if (Strong == a1)
            {
            }
          }

          ++v19;
          if (v20 == v18)
          {
            goto LABEL_25;
          }
        }
      }

      goto LABEL_19;
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  if (!sub_25BEB4C84())
  {
    goto LABEL_19;
  }

  v32 = a2;
  v33 = v13;
  v18 = sub_25BEB4C84();

  if (v18)
  {
    goto LABEL_7;
  }

LABEL_25:
  type metadata accessor for WeakEngagementUIEventObserver();
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v27 + 24) = v32;
  v28 = swift_unknownObjectWeakAssign();
  MEMORY[0x25F87F190](v28);
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_25BEB49C4();
  }

  sub_25BEB49D4();
  v29 = v35;
  swift_beginAccess();
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v4 + 56);
  *(v4 + 56) = 0x8000000000000000;
  sub_25BE85950(v29, v33, v30);
  v25 = v34;
LABEL_20:
  *(v4 + 56) = v25;
  return swift_endAccess();
}

void sub_25BE89C40(unint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v7 = sub_25BEB47F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a3;
  sub_25BE80458(0, &qword_280E766B0);
  *v11 = sub_25BEB4AA4();
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = sub_25BEB4814();
  (*(v8 + 8))(v11, v7);
  if ((v13 & 1) == 0)
  {
    goto LABEL_40;
  }

  swift_beginAccess();
  v14 = *(v4 + 56);
  if (!*(v14 + 16) || (v15 = sub_25BE65758(v12), (v16 & 1) == 0))
  {
LABEL_18:
    swift_endAccess();
    goto LABEL_20;
  }

  v17 = *(*(v14 + 56) + 8 * v15);
  swift_endAccess();
  v41 = v12;
  v40 = v4;
  if (v17 >> 62)
  {
LABEL_43:
    v18 = sub_25BEB4C84();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v18)
  {
LABEL_19:

    LOBYTE(v12) = v41;
LABEL_20:
    if (qword_280E76F20 != -1)
    {
      goto LABEL_41;
    }

    goto LABEL_21;
  }

  v19 = 0;
  v20 = v17 & 0xC000000000000001;
  LOBYTE(v12) = v17 & 0xF8;
  while (v20)
  {
    v21 = MEMORY[0x25F87F3D0](v19, v17);
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_12:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v24 = Strong;
      swift_unknownObjectRelease();
      if (v24 == a1)
      {
        a1 = 0;
        v43[0] = MEMORY[0x277D84F90];
        do
        {
          if (v20)
          {
            v33 = MEMORY[0x25F87F3D0](a1, v17);
            v34 = a1 + 1;
            if (__OFADD__(a1, 1))
            {
              goto LABEL_39;
            }
          }

          else
          {
            if (a1 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_43;
            }

            v33 = *(v17 + 8 * a1 + 32);

            v34 = a1 + 1;
            if (__OFADD__(a1, 1))
            {
              goto LABEL_39;
            }
          }

          if (v33 == v21)
          {
          }

          else
          {
            sub_25BEB4C14();
            sub_25BEB4C44();
            sub_25BEB4C54();
            sub_25BEB4C24();
          }

          ++a1;
        }

        while (v34 != v18);

        v35 = v43[0];
        if (v43[0] < 0 || (v43[0] & 0x4000000000000000) != 0)
        {
          v39 = sub_25BEB4C84();
          v36 = v41;
          v37 = v40;
          if (!v39)
          {
            goto LABEL_45;
          }

LABEL_37:
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = *(v37 + 56);
          *(v37 + 56) = 0x8000000000000000;
          sub_25BE85950(v35, v36, isUniquelyReferenced_nonNull_native);
          *(v37 + 56) = v42;
        }

        else
        {
          v36 = v41;
          v37 = v40;
          if (*(v43[0] + 16))
          {
            goto LABEL_37;
          }

LABEL_45:

          swift_beginAccess();
          sub_25BE7B6C0(0, v36);
        }

        swift_endAccess();

        return;
      }
    }

    ++v19;
    if (v22 == v18)
    {
      goto LABEL_19;
    }
  }

  if (v19 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v17 + 8 * v19 + 32);

    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  swift_once();
LABEL_21:
  v25 = sub_25BEB4764();
  __swift_project_value_buffer(v25, qword_280E77F40);
  v26 = sub_25BEB4744();
  v27 = sub_25BEB4A54();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v43[0] = v29;
    *v28 = 136315138;
    LOBYTE(v42) = v12;
    v30 = EngagementUIPlacement.rawValue.getter();
    v32 = sub_25BE60F30(v30, v31, v43);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_25BE5A000, v26, v27, "Cannot remove observer for placement: [%s]", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x25F87FD60](v29, -1, -1);
    MEMORY[0x25F87FD60](v28, -1, -1);
  }
}

uint64_t sub_25BE8A11C(uint64_t *a1, char *a2)
{
  v3 = *(a1 + 8);
  v18 = *a2;
  v17 = *a1;
  if (v3 >> 6)
  {
    v4 = v3 & 0x3F;
  }

  else
  {
    v4 = *a1;
  }

  if (v4 <= 1u && v4)
  {
  }

  else
  {
    v5 = sub_25BEB4E64();

    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  swift_beginAccess();
  v7 = *(v2 + 56);
  if (!*(v7 + 16))
  {
    return swift_endAccess();
  }

  v8 = sub_25BE65758(v18);
  if ((v9 & 1) == 0)
  {
    return swift_endAccess();
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  swift_endAccess();
  if (v10 >> 62)
  {
    goto LABEL_27;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:

  if (v11)
  {
    v12 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x25F87F3D0](v12, v10);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_23:
          __break(1u);
          return swift_endAccess();
        }
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_27:
          v11 = sub_25BEB4C84();
          goto LABEL_13;
        }

        v13 = *(v10 + 8 * v12 + 32);

        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_23;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v13 + 24);
        ObjectType = swift_getObjectType();
        v20 = v17;
        v21 = v3;
        v19 = v18;
        (*(v15 + 8))(&v20, &v19, ObjectType, v15);
        swift_unknownObjectRelease();
      }

      ++v12;
    }

    while (v14 != v11);
  }
}

uint64_t sub_25BE8A36C()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_25BE8A4F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_25BE77A9C();
  result = sub_25BEB4B84();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_25BEB4F04();
    EngagementUIPlacement.rawValue.getter();
    sub_25BEB48C4();

    result = sub_25BEB4F24();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_25BE8A70C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_25BE8AEFC(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25BE8A7C0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_25BE8A808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25BE8A86C()
{
  if (!qword_27FBE4170)
  {
    sub_25BE8A8D4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FBE4170);
    }
  }
}

void sub_25BE8A8D4()
{
  if (!qword_280E77500)
  {
    v0 = sub_25BEB44C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E77500);
    }
  }
}

unint64_t sub_25BE8A92C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_25BE8AA14();
    v3 = sub_25BEB4CB4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_25BE65758(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_25BE8AA14()
{
  if (!qword_27FBE4178)
  {
    sub_25BE8A8D4();
    sub_25BE5CD58();
    v0 = sub_25BEB4CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBE4178);
    }
  }
}

unint64_t sub_25BE8AAA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_25BE80A38();
    v3 = sub_25BEB4CB4();
    v4 = a1 + 32;

    while (1)
    {
      sub_25BE8B298(v4, v13);
      result = sub_25BE7A95C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_25BE5F500(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25BE8ABB8(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a1;
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = 0;

  v47 = v9;
  while (v8)
  {
LABEL_11:
    v16 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v17 = *(*(v4 + 48) + (v16 | (v10 << 6)));
    v18 = a2[5];
    v19 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v18);
    v53 = v17;
    EngagementRequestFactoryType.createRequest(for:)(&v53, v18, *(v19 + 8));
    v49 = v50;
    if (v51 == 255)
    {
      v35 = sub_25BE65758(v17);
      if (v36)
      {
        v37 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *a3;
        v50 = *a3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25BEAC144();
          v39 = v50;
        }

        v40 = *(*(v39 + 56) + 16 * v37);
        sub_25BE7EE5C(v37, v39);
        *a3 = v39;

        sub_25BE8065C(v49, 255);
        sub_25BE5FDE0(v52);
      }

      else
      {
        sub_25BE8065C(v50, 255);
        sub_25BE5FDE0(v52);
      }
    }

    else
    {
      v20 = v5;
      v21 = v50;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v23 = a3;
      v24 = v22;
      v25 = *v23;
      v50 = *v23;
      v26 = v23;
      *v23 = 0x8000000000000000;
      v28 = sub_25BE65758(v17);
      v29 = v25[2];
      v30 = (v27 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        goto LABEL_28;
      }

      v32 = v27;
      if (v25[3] >= v31)
      {
        if ((v24 & 1) == 0)
        {
          sub_25BEAC144();
        }
      }

      else
      {
        sub_25BEAAF34(v31, v24);
        v33 = sub_25BE65758(v17);
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_30;
        }

        v28 = v33;
      }

      a3 = v26;
      v5 = v20;
      if (v32)
      {
        v11 = v50[7] + 16 * v28;
        v12 = *v11;
        *v11 = v49;
        v13 = v51;
        *(v11 + 8) = v51 & 1;

        v14 = v49;
        v9 = v47;
      }

      else
      {
        v50[(v28 >> 6) + 8] |= 1 << v28;
        *(v50[6] + v28) = v17;
        v41 = v50[7] + 16 * v28;
        v14 = v49;
        *v41 = v49;
        v13 = v51;
        *(v41 + 8) = v51 & 1;
        v42 = v50[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        v9 = v47;
        if (v43)
        {
          goto LABEL_29;
        }

        v50[2] = v44;
      }

      *a3 = v50;
      sub_25BE8065C(v14, v13);
      sub_25BE5FDE0(v52);

      v4 = v46;
    }
  }

  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
    }

    v8 = *(v5 + 8 * v15);
    ++v10;
    if (v8)
    {
      v10 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_25BEB4E94();
  __break(1u);
  return result;
}

uint64_t sub_25BE8AEFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v18 = *(*(a3 + 48) + v15);
    result = sub_25BE88E44(&v18);
    if (result)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_25BE8A4F0(v4, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BE8B034(uint64_t a1)
{
  v2 = v1;
  v26 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v23 = v6;
    v24 = v2;
    v22[1] = v22;
    MEMORY[0x28223BE20](v8, v9);
    v10 = v22 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v7);
    v7 = 0;
    v11 = 0;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v2 = (v12 + 63) >> 6;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v6 = v15 | (v11 << 6);
      v25 = *(*(a1 + 48) + v6);
      if (sub_25BE88E44(&v25))
      {
        *&v10[(v6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v6;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
LABEL_16:
          v19 = sub_25BE8A4F0(v10, v23, v7, a1);

          return v19;
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v2)
      {
        goto LABEL_16;
      }

      v17 = *(a1 + 56 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v21 = swift_slowAlloc();

  v19 = sub_25BE8A70C(v21, v6, a1);

  MEMORY[0x25F87FD60](v21, -1, -1);

  return v19;
}

uint64_t sub_25BE8B298(uint64_t a1, uint64_t a2)
{
  sub_25BE8B2FC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25BE8B2FC()
{
  if (!qword_27FBE4180)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FBE4180);
    }
  }
}

uint64_t sub_25BE8B36C(uint64_t a1)
{
  v2 = v1;
  objc_opt_self();
  if (swift_dynamicCastObjCClass() && *(a1 + 24) == 1)
  {
    [v1 setModalPresentationStyle_];
    v4 = [v1 popoverPresentationController];
    if (v4)
    {
      v5 = v4;
      swift_beginAccess();
      [v5 setSourceItem_];
      swift_unknownObjectRelease();
    }

    v6 = [v2 popoverPresentationController];
    if (v6)
    {
      v7 = v6;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      [v7 setSourceView_];
    }

    v9 = [v2 popoverPresentationController];
    if (v9)
    {
      v10 = v9;
      [v9 setSourceRect_];
    }

    v11 = [v2 popoverPresentationController];
    if (v11)
    {
      v12 = v11;
      [v11 setPermittedArrowDirections_];
    }

    v13 = [v2 popoverPresentationController];
    if (v13)
    {
      v14 = v13;
      swift_beginAccess();
      v15 = *(a1 + 80);
      if (v15)
      {
        v25 = v14;
        v26 = MEMORY[0x277D84F90];
        if (v15 >> 62)
        {
LABEL_35:
          v16 = sub_25BEB4C84();
        }

        else
        {
          v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v17 = 0;
        while (v16 != v17)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            MEMORY[0x25F87F3D0](v17, v15);
            v18 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_33;
            }
          }

          else
          {
            if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_34;
            }

            v18 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }
          }

          v19 = sub_25BEB4654();

          ++v17;
          if (v19)
          {
            MEMORY[0x25F87F190](v20);
            if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_25BEB49C4();
            }

            sub_25BEB49D4();
            v17 = v18;
          }
        }

        sub_25BE80458(0, &qword_280E76660);
        v21 = sub_25BEB4994();

        v14 = v25;
      }

      else
      {
        v21 = 0;
      }

      [v14 setPassthroughViews_];
    }
  }

  type metadata accessor for EngagementBubbleTipViewController();
  result = swift_dynamicCastClass();
  if (result)
  {
    v23 = *(a1 + 128);
    v24 = result + OBJC_IVAR____TtC14NewsEngagement33EngagementBubbleTipViewController_bubbleTipSizing;
    *v24 = *(a1 + 120);
    *(v24 + 8) = v23;
  }

  return result;
}

Swift::Void __swiftcall UIViewController.applyModifier(bubbleTipSourceView:bubbleTipSourceRect:)(UIView *bubbleTipSourceView, __C::CGRect bubbleTipSourceRect)
{
  height = bubbleTipSourceRect.size.height;
  width = bubbleTipSourceRect.size.width;
  y = bubbleTipSourceRect.origin.y;
  x = bubbleTipSourceRect.origin.x;
  v8 = [v2 popoverPresentationController];
  if (v8)
  {
    v9 = v8;
    [v8 setSourceItem_];
  }

  v10 = [v2 popoverPresentationController];
  if (v10)
  {
    v11 = v10;
    [v10 setSourceView_];
  }

  v12 = [v2 popoverPresentationController];
  [v12 setSourceRect_];
}

void UIViewController.applyModifier(bubbleTipSourceItem:)(uint64_t a1)
{
  v3 = [v1 popoverPresentationController];
  if (v3)
  {
    v4 = v3;
    [v3 setSourceItem_];
  }

  v5 = [v1 popoverPresentationController];
  if (v5)
  {
    v6 = v5;
    [v5 setSourceView_];
  }

  v7 = [v1 popoverPresentationController];
  if (v7)
  {
    v8 = v7;
    [v7 setSourceRect_];
  }
}

Swift::Void __swiftcall UIViewController.applyModifier(toastCustomTabBarController:)(UITabBarController *toastCustomTabBarController)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v3 = [v1 presentationController];
    if (v3)
    {
      v5 = v3;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        [v4 setRelativeTabBarController_];
      }
    }
  }
}

Swift::Void __swiftcall UIViewController.applyModifier(passthroughViews:)(Swift::OpaquePointer_optional passthroughViews)
{
  rawValue = passthroughViews.value._rawValue;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v3 = [v1 popoverPresentationController];
    if (v3)
    {
      v4 = v3;
      if (rawValue)
      {
        sub_25BE80458(0, &qword_280E76660);
        v5 = sub_25BEB4994();
      }

      else
      {
        v5 = 0;
      }

      v6 = v5;
      [v4 setPassthroughViews_];
    }
  }
}

Swift::Void __swiftcall UIViewController.applyModifier(isModalInPresentation:)(Swift::Bool isModalInPresentation)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    [v1 setModalInPresentation_];
  }
}

void UIViewController.loadAssets(completion:)(void (*a1)(void *, uint64_t), uint64_t a2)
{
  sub_25BE80458(0, &qword_280E766B8);
  sub_25BE8BDE8();
  v5 = v2;
  if (swift_dynamicCast())
  {
    sub_25BE5D044(&v20, v24);
    v6 = v25;
    v7 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v8 = (*(v7 + 8))(v6, v7);
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    v22 = sub_25BE8C1F4;
    v23 = v9;
    *&v20 = MEMORY[0x277D85DD0];
    *(&v20 + 1) = 1107296256;
    *&v21 = sub_25BE8C050;
    *(&v21 + 1) = &block_descriptor_2;
    v10 = _Block_copy(&v20);

    [v8 addFinishBlock_];
    _Block_release(v10);

    __swift_destroy_boxed_opaque_existential_0Tm(v24);
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_25BE8C12C(&v20, sub_25BE8BE4C);
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v11 = sub_25BEB4764();
    __swift_project_value_buffer(v11, qword_280E77F40);
    v12 = v5;
    v13 = sub_25BEB4744();
    v14 = sub_25BEB4A54();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_25BE5A000, v13, v14, "Invalid type for loadAssets: %@", v15, 0xCu);
      sub_25BE8C12C(v16, sub_25BE8C18C);
      MEMORY[0x25F87FD60](v16, -1, -1);
      MEMORY[0x25F87FD60](v15, -1, -1);
    }

    sub_25BE8C0D8();
    v18 = swift_allocError();
    *v19 = 0;
    a1(v18, 1);
  }
}

unint64_t sub_25BE8BDE8()
{
  result = qword_280E76868;
  if (!qword_280E76868)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E76868);
  }

  return result;
}

void sub_25BE8BE4C()
{
  if (!qword_27FBE4188)
  {
    sub_25BE8BDE8();
    v0 = sub_25BEB4AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBE4188);
    }
  }
}

void sub_25BE8BEA4(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = swift_allocObject();
    v7[2] = a3;
    v7[3] = a4;
    v7[4] = a2;
    v8 = a2;

    v9 = a2;
    sub_25BEB4734();
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    *(v11 + 32) = a1 & 1;

    sub_25BEB4734();
  }
}

void sub_25BE8BFB8(void (*a1)(void *, BOOL), uint64_t a2, char a3)
{
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    sub_25BE8C0D8();
    v5 = swift_allocError();
    *v6 = 1;
  }

  a1(v5, (a3 & 1) == 0);

  sub_25BE8C3FC(v5, (a3 & 1) == 0);
}

void sub_25BE8C050(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

unint64_t sub_25BE8C0D8()
{
  result = qword_27FBE4190;
  if (!qword_27FBE4190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4190);
  }

  return result;
}

uint64_t sub_25BE8C12C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25BE8C18C()
{
  if (!qword_280E76EE0)
  {
    sub_25BE80458(255, &qword_280E76EE8);
    v0 = sub_25BEB4AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E76EE0);
    }
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for LoadPromiseError(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LoadPromiseError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25BE8C368()
{
  result = qword_27FBE4198;
  if (!qword_27FBE4198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4198);
  }

  return result;
}

void sub_25BE8C3FC(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_25BE8C40C()
{
  if (v0[OBJC_IVAR____TtC14NewsEngagement33EngagementBubbleTipViewController_bubbleTipSizing + 8])
  {
    return;
  }

  v1 = *&v0[OBJC_IVAR____TtC14NewsEngagement33EngagementBubbleTipViewController_bubbleTipSizing];
  v2 = [v0 presentingViewController];
  if (!v2)
  {
    return;
  }

  v22 = v2;
  v3 = [v0 popoverPresentationController];
  [v3 setPopoverLayoutMargins_];

  v4 = [v22 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v24.origin.x = v7;
  v24.origin.y = v9;
  v24.size.width = v11;
  v24.size.height = v13;
  Width = CGRectGetWidth(v24);
  v15 = [v0 view];
  if (!v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = v15;
  [v15 setNeedsLayout];

  v17 = [v0 view];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = Width - (v1 + v1);
  [v17 sizeThatFits_];
  v21 = v20;

  [v0 setPreferredContentSize_];
}

id sub_25BE8C6A8(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = [v1 popoverPresentationController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 passthroughViews];

    if (v6)
    {
LABEL_7:

      goto LABEL_8;
    }
  }

  v7 = [v1 presentingViewController];
  if (v7)
  {
    v8 = v7;
    v6 = [v7 view];

    if (v6)
    {
      v9 = [v1 popoverPresentationController];
      if (v9)
      {
        v10 = v9;
        sub_25BE8CF30();
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_25BEB60F0;
        *(v11 + 32) = v6;
        sub_25BE8CF84();
        v6 = v6;
        v12 = sub_25BEB4994();

        [v10 setPassthroughViews_];
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_viewWillAppear_, a1 & 1);
}

void sub_25BE8C8D4(void *a1, double a2, double a3)
{
  v10.receiver = v3;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_25BE8CF10;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_25BE8CBC8;
  v9[3] = &block_descriptor_3;
  v8 = _Block_copy(v9);

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

void sub_25BE8C9EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((Strong[OBJC_IVAR____TtC14NewsEngagement33EngagementBubbleTipViewController_bubbleTipSizing + 8] & 1) != 0 || (v2 = *&Strong[OBJC_IVAR____TtC14NewsEngagement33EngagementBubbleTipViewController_bubbleTipSizing], (v3 = [Strong presentingViewController]) == 0))
    {
      v4 = v1;
      goto LABEL_9;
    }

    v4 = v3;
    v5 = [v1 popoverPresentationController];
    [v5 setPopoverLayoutMargins_];

    v6 = [v4 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v24.origin.x = v9;
      v24.origin.y = v11;
      v24.size.width = v13;
      v24.size.height = v15;
      Width = CGRectGetWidth(v24);
      v17 = [v1 view];
      if (v17)
      {
        v18 = v17;
        [v17 setNeedsLayout];

        v19 = [v1 view];
        if (v19)
        {
          v20 = v19;
          v21 = Width - (v2 + v2);
          [v19 sizeThatFits_];
          v23 = v22;

          [v1 setPreferredContentSize_];
LABEL_9:

          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }
}

uint64_t sub_25BE8CBC8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25BE8CF30()
{
  if (!qword_280E765B0)
  {
    v0 = sub_25BEB4E54();
    if (!v1)
    {
      atomic_store(v0, &qword_280E765B0);
    }
  }
}

unint64_t sub_25BE8CF84()
{
  result = qword_280E76660;
  if (!qword_280E76660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E76660);
  }

  return result;
}

void sub_25BE8CFD0()
{
  if (!qword_280E765D8)
  {
    sub_25BE8D028();
    v0 = sub_25BEB4E54();
    if (!v1)
    {
      atomic_store(v0, &qword_280E765D8);
    }
  }
}

unint64_t sub_25BE8D028()
{
  result = qword_280E76728;
  if (!qword_280E76728)
  {
    sub_25BE8D070();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_280E76728);
  }

  return result;
}

unint64_t sub_25BE8D070()
{
  result = qword_280E76730;
  if (!qword_280E76730)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E76730);
  }

  return result;
}

void sub_25BE8D0D8(_BYTE *a1)
{
  if (a1[OBJC_IVAR____TtC14NewsEngagement33EngagementBubbleTipViewController_bubbleTipSizing + 8])
  {
    return;
  }

  v2 = *&a1[OBJC_IVAR____TtC14NewsEngagement33EngagementBubbleTipViewController_bubbleTipSizing];
  v3 = [a1 presentingViewController];
  if (!v3)
  {
    return;
  }

  v23 = v3;
  v4 = [a1 popoverPresentationController];
  [v4 setPopoverLayoutMargins_];

  v5 = [v23 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v25.origin.x = v8;
  v25.origin.y = v10;
  v25.size.width = v12;
  v25.size.height = v14;
  Width = CGRectGetWidth(v25);
  v16 = [a1 view];
  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = v16;
  [v16 setNeedsLayout];

  v18 = [a1 view];
  if (!v18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = Width - (v2 + v2);
  [v18 sizeThatFits_];
  v22 = v21;

  [a1 setPreferredContentSize_];
}

uint64_t EngagementViewLayoutStyle.hashValue.getter()
{
  v1 = *v0;
  sub_25BEB4F04();
  MEMORY[0x25F87F720](v1);
  return sub_25BEB4F24();
}

uint64_t sub_25BE8D388()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_25BE8D3D8(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_25BE8D468;
}

void sub_25BE8D468(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_25BE8D520(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_25BE8D56C(uint64_t *a1))(id **a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_25BE8D5FC;
}

void sub_25BE8D5FC(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_25BE8D684(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 80) = v2;
}

uint64_t sub_25BE8D71C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

void sub_25BE8D7F0(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_25BE8D83C(uint64_t *a1))(id **a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_25BE8D8CC;
}

void sub_25BE8D8CC(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void EngagementViewConfiguration.bubbleTipSizing.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
}

uint64_t EngagementViewConfiguration.__allocating_init(overriddenStyle:layoutStyle:bubbleTipSourceItem:bubbleTipSourceView:bubbleTipSourceRect:passthroughViews:toastCustomTabBarController:toastDismissDelayTimeInterval:permittedArrowDirections:bubbleTipSizing:)(uint64_t a1, _BYTE *a2, double a3, double a4, double a5, double a6, uint64_t a7, void *a8, unint64_t a9, void *a10, uint64_t a11, char a12, uint64_t a13, uint64_t *a14)
{
  v23 = swift_allocObject();
  LOBYTE(a2) = *a2;
  v24 = *a14;
  v41 = *(a14 + 8);
  v25 = *(a14 + 9);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v23 + 80) = 0;
  swift_unknownObjectWeakInit();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v23 + 48) = a3;
  *(v23 + 56) = a4;
  *(v23 + 64) = a5;
  *(v23 + 72) = a6;
  v40 = v25;
  if (a9)
  {
    if (a9 >> 62)
    {
      v26 = sub_25BEB4C84();
      if (v26)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v26 = *((a9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
LABEL_4:
        v44 = MEMORY[0x277D84F90];
        result = sub_25BEB4C34();
        if (v26 < 0)
        {
          __break(1u);
          return result;
        }

        v39 = a11;
        v28 = a8;
        if ((a9 & 0xC000000000000001) != 0)
        {
          v29 = 0;
          do
          {
            v30 = v29 + 1;
            MEMORY[0x25F87F3D0]();
            sub_25BE8E008();
            swift_allocObject();
            sub_25BEB4674();
            sub_25BEB4C14();
            sub_25BEB4C44();
            sub_25BEB4C54();
            sub_25BEB4C24();
            v29 = v30;
          }

          while (v26 != v30);
        }

        else
        {
          v35 = (a9 + 32);
          sub_25BE8E008();
          do
          {
            v36 = *v35++;
            swift_allocObject();
            v37 = v36;
            sub_25BEB4674();
            sub_25BEB4C14();
            sub_25BEB4C44();
            sub_25BEB4C54();
            sub_25BEB4C24();
            --v26;
          }

          while (v26);
        }

        swift_unknownObjectRelease();
        v31 = v44;
        v34 = a12;
        a11 = v39;
        goto LABEL_15;
      }
    }

    swift_unknownObjectRelease();

    v31 = MEMORY[0x277D84F90];
    v34 = a12;
LABEL_15:
    v32 = a10;
    v33 = v41;
    goto LABEL_16;
  }

  swift_unknownObjectRelease();

  v31 = 0;
  v32 = a10;
  v33 = v41;
  v34 = a12;
LABEL_16:
  swift_beginAccess();
  *(v23 + 80) = v31;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  *(v23 + 96) = a11;
  *(v23 + 104) = v34 & 1;
  v38 = v24;
  if (v40)
  {
    v38 = 0;
  }

  *(v23 + 112) = a13;
  *(v23 + 120) = v38;
  *(v23 + 128) = (v40 | v33) & 1;
  return v23;
}

uint64_t EngagementViewConfiguration.init(overriddenStyle:layoutStyle:bubbleTipSourceItem:bubbleTipSourceView:bubbleTipSourceRect:passthroughViews:toastCustomTabBarController:toastDismissDelayTimeInterval:permittedArrowDirections:bubbleTipSizing:)(uint64_t a1, char *a2, double a3, double a4, double a5, double a6, uint64_t a7, void *a8, unint64_t a9, void *a10, uint64_t a11, char a12, uint64_t a13, uint64_t *a14)
{
  v15 = v14;
  v25 = *a2;
  v26 = *a14;
  v40 = *(a14 + 9);
  v41 = *(a14 + 8);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v15 + 80) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 16) = a1;
  *(v15 + 24) = v25;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v15 + 48) = a3;
  *(v15 + 56) = a4;
  *(v15 + 64) = a5;
  *(v15 + 72) = a6;
  if (!a9)
  {
    swift_unknownObjectRelease();

    v31 = 0;
LABEL_15:
    v35 = a12;
    goto LABEL_16;
  }

  v39 = v26;
  if (a9 >> 62)
  {
    v27 = sub_25BEB4C84();
    if (v27)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v27 = *((a9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
LABEL_14:
    swift_unknownObjectRelease();

    v31 = MEMORY[0x277D84F90];
    v26 = v39;
    goto LABEL_15;
  }

LABEL_4:
  v43 = MEMORY[0x277D84F90];
  result = sub_25BEB4C34();
  if (v27 < 0)
  {
    __break(1u);
    return result;
  }

  v37 = a10;
  v38 = a11;
  if ((a9 & 0xC000000000000001) != 0)
  {
    v29 = 0;
    do
    {
      v30 = v29 + 1;
      MEMORY[0x25F87F3D0]();
      sub_25BE8E008();
      swift_allocObject();
      sub_25BEB4674();
      sub_25BEB4C14();
      sub_25BEB4C44();
      sub_25BEB4C54();
      sub_25BEB4C24();
      v29 = v30;
    }

    while (v27 != v30);
  }

  else
  {
    v32 = (a9 + 32);
    sub_25BE8E008();
    do
    {
      v33 = *v32++;
      swift_allocObject();
      v34 = v33;
      sub_25BEB4674();
      sub_25BEB4C14();
      sub_25BEB4C44();
      sub_25BEB4C54();
      sub_25BEB4C24();
      --v27;
    }

    while (v27);
  }

  swift_unknownObjectRelease();
  v31 = v43;
  v35 = a12;
  a10 = v37;
  a11 = v38;
  v26 = v39;
LABEL_16:
  swift_beginAccess();
  *(v15 + 80) = v31;

  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  *(v15 + 96) = a11;
  *(v15 + 104) = v35 & 1;
  if (v40)
  {
    v36 = 0;
  }

  else
  {
    v36 = v26;
  }

  *(v15 + 112) = a13;
  *(v15 + 120) = v36;
  *(v15 + 128) = (v40 | v41) & 1;
  return v15;
}

void sub_25BE8E008()
{
  if (!qword_27FBE41B0)
  {
    sub_25BE8CF84();
    v0 = sub_25BEB4664();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBE41B0);
    }
  }
}

uint64_t EngagementViewConfiguration.deinit()
{
  sub_25BE77650(v0 + 32);
  MEMORY[0x25F87FDD0](v0 + 40);

  MEMORY[0x25F87FDD0](v0 + 88);
  return v0;
}

uint64_t EngagementViewConfiguration.__deallocating_deinit()
{
  sub_25BE77650(v0 + 32);
  MEMORY[0x25F87FDD0](v0 + 40);

  MEMORY[0x25F87FDD0](v0 + 88);

  return MEMORY[0x2821FE8D8](v0, 129, 7);
}

unint64_t sub_25BE8E0EC()
{
  result = qword_27FBE41C0;
  if (!qword_27FBE41C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE41C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EngagementViewBubbleTipSizing(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EngagementViewBubbleTipSizing(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

uint64_t sub_25BE8E1A0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BE8E1BC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_25BE8E3E8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_25BEB4784();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_25BEB4774();
}

uint64_t sub_25BE8E448@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_25BEB4784();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

NewsEngagement::EngagementUpsellBannerPaidEligibility_optional __swiftcall EngagementUpsellBannerPaidEligibility.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25BEB4CD4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EngagementUpsellBannerPaidEligibility.rawValue.getter()
{
  v1 = 0x646961706E75;
  v2 = 1752461154;
  if (*v0 != 2)
  {
    v2 = 1885956979;
  }

  if (*v0)
  {
    v1 = 1684627824;
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

unint64_t sub_25BE8E5A8()
{
  result = qword_27FBE41C8;
  if (!qword_27FBE41C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE41C8);
  }

  return result;
}

uint64_t sub_25BE8E5FC()
{
  sub_25BEB4F04();
  sub_25BEB48C4();

  return sub_25BEB4F24();
}

uint64_t sub_25BE8E6A0()
{
  sub_25BEB48C4();
}

uint64_t sub_25BE8E730()
{
  sub_25BEB4F04();
  sub_25BEB48C4();

  return sub_25BEB4F24();
}

void sub_25BE8E7DC(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x646961706E75;
  v4 = 1752461154;
  if (*v1 != 2)
  {
    v4 = 1885956979;
  }

  if (*v1)
  {
    v3 = 1684627824;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_25BE8E8EC()
{
  result = qword_27FBE41D0;
  if (!qword_27FBE41D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE41D0);
  }

  return result;
}

uint64_t sub_25BE8E940()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_280E77518 = result;
  return result;
}

uint64_t sub_25BE8EB30()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_280E76E50 = result;
  return result;
}

uint64_t sub_25BE8ED20()
{
  v0 = sub_25BEB4454();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BE5D734(0, &qword_27FBE4330);
  v6[2] = 1056964608;
  v6[3] = 1084227584;
  v6[1] = 1101004800;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D098], v0);
  result = sub_25BEB44B4();
  qword_27FBE41D8 = result;
  return result;
}

uint64_t sub_25BE8EE8C()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE41E0 = result;
  return result;
}

uint64_t sub_25BE8F07C()
{
  v0 = sub_25BEB4454();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BE5D734(0, &qword_27FBE4328);
  v6[2] = 0x3FF0000000000000;
  v6[3] = 0x4014000000000000;
  v6[1] = 0x4034000000000000;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D098], v0);
  result = sub_25BEB44B4();
  qword_27FBE41E8 = result;
  return result;
}

uint64_t sub_25BE8F1E8()
{
  v0 = sub_25BEB4464();
  v12 = *(v0 - 8);
  v13 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v11 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25BEB4454();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = v7;
  sub_25BE937C4();
  v10[2] = "ble_overlay_placements";
  v10[3] = v8;
  v16 = 3;
  (*(v4 + 104))(v7, *MEMORY[0x277D6D098], v3);
  sub_25BE93874();
  sub_25BE938CC();
  *(swift_allocObject() + 16) = xmmword_25BEB6FE0;
  LOBYTE(v14) = 3;
  sub_25BEB4474();
  LOBYTE(v14) = 0;
  sub_25BEB4474();
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_25BEB4A04();
  MEMORY[0x25F87F0E0](0x73646E6F63657320, 0xE800000000000000);
  LOBYTE(v14) = 1;
  sub_25BEB4474();
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_25BEB4A04();
  MEMORY[0x25F87F0E0](0x73646E6F63657320, 0xE800000000000000);
  LOBYTE(v14) = 2;
  sub_25BEB4474();
  (*(v12 + 104))(v11, *MEMORY[0x277D6D0A8], v13);
  sub_25BE9391C();
  result = sub_25BEB4494();
  qword_27FBE41F0 = result;
  return result;
}

uint64_t sub_25BE8F594()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_280E76E38 = result;
  return result;
}

uint64_t sub_25BE8F784()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE41F8 = result;
  return result;
}

uint64_t sub_25BE8F974()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE4200 = result;
  return result;
}

uint64_t sub_25BE8FB64()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE4208 = result;
  return result;
}

uint64_t sub_25BE8FD54()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE4210 = result;
  return result;
}

uint64_t sub_25BE8FF44()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE4218 = result;
  return result;
}

uint64_t sub_25BE90134()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE4220 = result;
  return result;
}

uint64_t sub_25BE90324()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE4228 = result;
  return result;
}

uint64_t sub_25BE90514()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE4230 = result;
  return result;
}

uint64_t sub_25BE90704()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE4238 = result;
  return result;
}

uint64_t sub_25BE908F4()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE4240 = result;
  return result;
}

uint64_t sub_25BE90AE4()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE4248 = result;
  return result;
}

uint64_t sub_25BE90CD4()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE4250 = result;
  return result;
}

uint64_t sub_25BE90EC4()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE4258 = result;
  return result;
}

uint64_t sub_25BE910B4()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE4260 = result;
  return result;
}

uint64_t sub_25BE912A4()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE4268 = result;
  return result;
}

uint64_t sub_25BE91494()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE4270 = result;
  return result;
}

uint64_t sub_25BE91684()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE4278 = result;
  return result;
}

uint64_t sub_25BE91874()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE4280 = result;
  return result;
}

uint64_t sub_25BE91A64()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE4288 = result;
  return result;
}

uint64_t sub_25BE91C54()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE4290 = result;
  return result;
}

uint64_t sub_25BE91E44()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE4298 = result;
  return result;
}

uint64_t sub_25BE92034()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE42A0 = result;
  return result;
}

uint64_t sub_25BE92224()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE42A8 = result;
  return result;
}

uint64_t sub_25BE92414()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE42B0 = result;
  return result;
}

uint64_t sub_25BE92604()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE42B8 = result;
  return result;
}

uint64_t sub_25BE927F4()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE42C0 = result;
  return result;
}

uint64_t sub_25BE929E4()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE42C8 = result;
  return result;
}

uint64_t sub_25BE92BD4()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE42D0 = result;
  return result;
}

uint64_t sub_25BE92DC4()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE42D8 = result;
  return result;
}

uint64_t sub_25BE92FB4()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE42E0 = result;
  return result;
}

uint64_t sub_25BE931A4()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE42E8 = result;
  return result;
}

uint64_t sub_25BE93394()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE42F0 = result;
  return result;
}

uint64_t sub_25BE93584()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_27FBE42F8 = result;
  return result;
}

void sub_25BE937C4()
{
  if (!qword_27FBE4300)
  {
    sub_25BE93820();
    v0 = sub_25BEB44C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBE4300);
    }
  }
}

unint64_t sub_25BE93820()
{
  result = qword_27FBE4308;
  if (!qword_27FBE4308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4308);
  }

  return result;
}

void sub_25BE93874()
{
  if (!qword_27FBE4310)
  {
    sub_25BE938CC();
    v0 = sub_25BEB4E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBE4310);
    }
  }
}

void sub_25BE938CC()
{
  if (!qword_27FBE4318)
  {
    v0 = sub_25BEB4484();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBE4318);
    }
  }
}

unint64_t sub_25BE9391C()
{
  result = qword_27FBE4320;
  if (!qword_27FBE4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4320);
  }

  return result;
}

uint64_t EngagementPlacementVisibility.hashValue.getter()
{
  v1 = *v0;
  sub_25BEB4F04();
  MEMORY[0x25F87F720](v1);
  return sub_25BEB4F24();
}

uint64_t EngagementPlacementVisibility.description.getter()
{
  v1 = 0x656C6269736976;
  if (*v0 != 1)
  {
    v1 = 0x6E6564646968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D72657465646E75;
  }
}

unint64_t sub_25BE93A64()
{
  result = qword_27FBE4338;
  if (!qword_27FBE4338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4338);
  }

  return result;
}

uint64_t sub_25BE93AB8()
{
  v1 = 0x656C6269736976;
  if (*v0 != 1)
  {
    v1 = 0x6E6564646968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D72657465646E75;
  }
}

uint64_t getEnumTagSinglePayload for EngagementPlacementVisibility(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EngagementPlacementVisibility(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_25BE93C68@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_25BEB43F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 24);
  v14 = type metadata accessor for EngagementInlineDialogViewController();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_messageID];
  *v16 = 0;
  v16[1] = 0;
  v15[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_offer] = 4;
  v17 = &v15[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_appearanceInfo];
  *v17 = 0;
  v17[1] = 0;
  v15[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_placement] = a2;
  sub_25BEB43E4();
  v18 = sub_25BEB43D4();
  v20 = v19;
  (*(v9 + 8))(v12, v8);
  v21 = &v15[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_identifier];
  *v21 = v18;
  v21[1] = v20;
  v15[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_source] = v13;
  v22 = &v15[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_trigger];
  *v22 = 0;
  v22[1] = 0;
  v24.receiver = v15;
  v24.super_class = v14;
  result = objc_msgSendSuper2(&v24, sel_initWithRequest_, a1);
  *a4 = result;
  return result;
}

void sub_25BE93E1C(char a1@<W1>, void *a2@<X8>)
{
  v20 = a2;
  v3 = sub_25BEB43F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EngagementInlineDialogViewController();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_messageID];
  *v10 = 0;
  v10[1] = 0;
  v9[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_offer] = 4;
  v11 = &v9[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_appearanceInfo];
  *v11 = 0;
  v11[1] = 0;
  v9[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_placement] = a1;
  sub_25BEB43E4();
  v12 = sub_25BEB43D4();
  v14 = v13;
  (*(v4 + 8))(v7, v3);
  v15 = &v9[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_identifier];
  *v15 = v12;
  v15[1] = v14;
  v9[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_source] = 2;
  v16 = &v9[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_trigger];
  *v16 = 0;
  v16[1] = 0;
  v17 = sub_25BEB4874();
  v22 = a1;
  EngagementUIPlacement.rawValue.getter();
  v18 = sub_25BEB4874();

  v21.receiver = v9;
  v21.super_class = v8;
  v19 = objc_msgSendSuper2(&v21, sel_initWithServiceType_placement_, v17, v18);

  *v20 = v19;
}

id sub_25BE94014@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_25BEB43F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a3 + 32);
  v13 = type metadata accessor for EngagementInlineDialogViewController();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_messageID];
  *v15 = 0;
  v15[1] = 0;
  v14[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_offer] = 4;
  v16 = &v14[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_appearanceInfo];
  *v16 = 0;
  v16[1] = 0;
  v14[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_placement] = a2;
  sub_25BE5F018(&v24, v23, &qword_280E76EF0);
  sub_25BEB43E4();
  v17 = sub_25BEB43D4();
  v19 = v18;
  (*(v9 + 8))(v12, v8);
  v20 = &v14[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_identifier];
  *v20 = v17;
  v20[1] = v19;
  v14[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_source] = 3;
  *&v14[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_trigger] = v24;
  v22.receiver = v14;
  v22.super_class = v13;
  result = objc_msgSendSuper2(&v22, sel_initWithRequest_, a1);
  *a4 = result;
  return result;
}

uint64_t sub_25BE941EC()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 130, 7);
}

uint64_t objectdestroy_10Tm()
{
  if (*(v0 + 40) != 255)
  {
  }

  if ((*(v0 + 48) - 1) >= 0xB)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

void sub_25BE9432C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_25BEB4874();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 compatibleWithTraitCollection:0];

  if (!v3)
  {
    __break(1u);
  }
}

void sub_25BE9441C(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25BEB4C84())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x25F87F3D0](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_25BE95458(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_25BE94510(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  v24 = *(a1 + 16);
  sub_25BE75A98(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_25BEB4B14();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v13 = *(v25 + 16);
    v12 = *(v25 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_25BE75A98((v12 > 1), v13 + 1, 1);
      v6 = v24;
      v11 = v22;
      result = v23;
    }

    *(v25 + 16) = v13 + 1;
    v14 = v25 + 16 * v13;
    *(v14 + 32) = 1937204590;
    *(v14 + 40) = 0xE400000000000000;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_25BE80A2C(result, v11, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_25BE80A2C(result, v11, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_25BE94748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_25BEB47F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25BE80458(0, &qword_280E766B0);
  *v12 = sub_25BEB4AA4();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v13 = sub_25BEB4814();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (qword_280E76E48 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  sub_25BE96DEC();
  sub_25BEB4424();
  if ((aBlock[0] & 1) == 0)
  {
    v14 = sub_25BE7B15C(a1);
    v15 = sub_25BE774F8(v14);

    if (*(v15 + 16))
    {
      v16 = sub_25BE94510(a1);
      v17 = sub_25BE774F8(v16);

      sub_25BE94B6C(v17);
      v19 = v18;

      if (v19)
      {
        v20 = objc_allocWithZone(MEMORY[0x277CEE4A8]);
        v21 = sub_25BEB4874();

        v22 = sub_25BEB4A14();

        v23 = [v20 initWithServiceType:v21 placements:v22];

        v24 = [*(v4 + OBJC_IVAR____TtC14NewsEngagement23EngagementEventProvider_engagement) enqueueMessageEvent_];
        v25 = swift_allocObject();
        *(v25 + 16) = a2;
        *(v25 + 24) = a3;
        aBlock[4] = sub_25BE977EC;
        aBlock[5] = v25;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_25BE959E4;
        aBlock[3] = &block_descriptor_17;
        v26 = _Block_copy(aBlock);

        [v24 addFinishBlock_];
        _Block_release(v26);
      }

      else
      {

        if (qword_280E76F20 != -1)
        {
          swift_once();
        }

        v27 = sub_25BEB4764();
        __swift_project_value_buffer(v27, qword_280E77F40);
        v28 = sub_25BEB4744();
        v29 = sub_25BEB4A54();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_25BE5A000, v28, v29, "Could not find service type", v30, 2u);
          MEMORY[0x25F87FD60](v30, -1, -1);
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_25BE94B6C(uint64_t a1)
{
  v2 = sub_25BEB4B14();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_25BE96E6C(v2, *(a1 + 36), 0, a1);

  return v4;
}

void sub_25BE94BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_25BEB47F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25BE80458(0, &qword_280E766B0);
  *v12 = sub_25BEB4AA4();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v13 = sub_25BEB4814();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (qword_280E76E48 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  sub_25BE96DEC();
  sub_25BEB4424();
  if ((aBlock[0] & 1) == 0)
  {
    v14 = *(a1 + 16);
    v15 = MEMORY[0x277D84F90];
    v41 = v4;
    if (v14)
    {
      v39 = a2;
      v40 = a3;
      aBlock[0] = MEMORY[0x277D84F90];
      sub_25BEB4C34();
      v16 = (a1 + 40);
      v17 = v14;
      do
      {
        v19 = *v16;
        v43 = *(v16 - 8);
        EngagementUIPlacement.rawValue.getter();
        swift_bridgeObjectRetain_n();
        v20 = sub_25BEB4874();

        if (v19)
        {
          v18 = sub_25BEB4824();
        }

        else
        {
          v18 = 0;
        }

        v16 += 2;
        [objc_allocWithZone(MEMORY[0x277CEE4C0]) initWithPlacement:v20 context:v18];

        sub_25BEB4C14();
        sub_25BEB4C44();
        sub_25BEB4C54();
        sub_25BEB4C24();
        --v17;
      }

      while (v17);
      aBlock[0] = v15;
      sub_25BE75A98(0, v14, 0);
      v15 = aBlock[0];
      v21 = *(aBlock[0] + 16);
      v22 = 16 * v21;
      a2 = v39;
      a3 = v40;
      do
      {
        aBlock[0] = v15;
        v23 = *(v15 + 24);
        v24 = v21 + 1;
        if (v21 >= v23 >> 1)
        {
          sub_25BE75A98((v23 > 1), v21 + 1, 1);
          v15 = aBlock[0];
        }

        *(v15 + 16) = v24;
        v25 = v15 + v22;
        *(v25 + 32) = 1937204590;
        *(v25 + 40) = 0xE400000000000000;
        v22 += 16;
        v21 = v24;
        --v14;
      }

      while (v14);
    }

    v26 = sub_25BE774F8(v15);

    sub_25BE94B6C(v26);
    v28 = v27;

    if (v28)
    {
      v29 = objc_allocWithZone(MEMORY[0x277CEE4A8]);
      v30 = sub_25BEB4874();

      sub_25BE80458(0, &unk_280E76690);
      v31 = sub_25BEB4994();

      v32 = [v29 initWithServiceType:v30 placementInfo:v31];

      v33 = [*(v41 + OBJC_IVAR____TtC14NewsEngagement23EngagementEventProvider_engagement) enqueueMessageEvent_];
      v34 = swift_allocObject();
      *(v34 + 16) = a2;
      *(v34 + 24) = a3;
      aBlock[4] = sub_25BE96E40;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25BE959E4;
      aBlock[3] = &block_descriptor_4;
      v35 = _Block_copy(aBlock);

      [v33 addFinishBlock:v35];
      _Block_release(v35);
    }

    else
    {

      if (qword_280E76F20 != -1)
      {
        swift_once();
      }

      v36 = sub_25BEB4764();
      __swift_project_value_buffer(v36, qword_280E77F40);
      v33 = sub_25BEB4744();
      v37 = sub_25BEB4A54();
      if (os_log_type_enabled(v33, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_25BE5A000, v33, v37, "Could not find service type", v38, 2u);
        MEMORY[0x25F87FD60](v38, -1, -1);
      }
    }
  }
}