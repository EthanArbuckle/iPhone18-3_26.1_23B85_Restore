id sub_24E257534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_24E024710(&v8, v10);
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
    sub_24DF88A8C(0, &qword_27F1E0060);
    v3 = sub_24E347F08();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  sub_24DF8C95C(v10, &qword_27F1E0370);

  return v6;
}

id GKMultiplayerAddSlotCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E257764(char *a1, double a2)
{
  v5[3] = MEMORY[0x277D839F8];
  v5[4] = MEMORY[0x277D22A30];
  *v5 = a2;
  v3 = OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_imageSpacing;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&a1[v3], v5);
  swift_endAccess();
  [a1 setNeedsLayout];
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

double sub_24E2577F0(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v4 = sub_24E3446A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    if (qword_27F1DDB48 != -1)
    {
      swift_once();
    }

    sub_24E257DC0(&qword_27F1E8C70, v20);
    v8 = *(a2 + OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotImageView);
    v9 = sub_24DF88A8C(0, &qword_27F1DFF00);
    v10 = MEMORY[0x277D22A58];
    v22 = v9;
    v23 = MEMORY[0x277D22A58];
    v21 = v8;
    v11 = *(a2 + OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotLabel);
    *(&v25 + 1) = type metadata accessor for DynamicTypeLabel();
    v26 = v10;
    *&v24 = v11;
    v12 = v8;
  }

  else
  {
    if (qword_27F1DDB48 != -1)
    {
      swift_once();
    }

    sub_24E257DC0(&qword_27F1E8C70, v20);
    v11 = *(a2 + OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_vibrancyHost);
    v22 = type metadata accessor for VibrancyHostView();
    v23 = MEMORY[0x277D22A58];
    v21 = v11;
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
  }

  v13 = v11;
  sub_24E0B7F88(a1, v20[0], v20[1], v20[2], v20[3]);
  sub_24DF8968C(&v24, v19);
  v14 = v19[3];
  sub_24DF8C95C(v19, &qword_27F1DEE30);
  if (v14)
  {
    sub_24E0A6924(a1, v7);
    sub_24E3445F8();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(&v21, v22);
    sub_24E3440D8();
    v16 = v17;
  }

  sub_24E257E1C(v20);
  return v16;
}

double sub_24E257AD4(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v4 = sub_24E3446A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    if (qword_27F1DDB48 != -1)
    {
      swift_once();
    }

    sub_24E257DC0(&qword_27F1E8C70, v20);
    v8 = *(a2 + OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotImageView);
    v9 = sub_24DF88A8C(0, &qword_27F1DFF00);
    v10 = MEMORY[0x277D22A58];
    v22 = v9;
    v23 = MEMORY[0x277D22A58];
    v21 = v8;
    v11 = *(a2 + OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotLabel);
    *(&v25 + 1) = type metadata accessor for DynamicTypeLabel();
    v26 = v10;
    *&v24 = v11;
    v12 = v8;
  }

  else
  {
    if (qword_27F1DDB48 != -1)
    {
      swift_once();
    }

    sub_24E257DC0(&qword_27F1E8C70, v20);
    v11 = *(a2 + OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_vibrancyHost);
    v22 = type metadata accessor for VibrancyHostView();
    v23 = MEMORY[0x277D22A58];
    v21 = v11;
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
  }

  v13 = v11;
  sub_24E0B7968();
  sub_24DF8968C(&v24, v19);
  v14 = v19[3];
  sub_24DF8C95C(v19, &qword_27F1DEE30);
  if (v14)
  {
    sub_24E0A6924(a1, v7);
    sub_24E3445F8();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(&v21, v22);
    sub_24E3440D8();
    v16 = v17;
  }

  sub_24E257E1C(v20);
  return v16;
}

uint64_t block_copy_helper_84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;

        *v3 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v13, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v13, v4);
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_160()
{

  return swift_once();
}

id OUTLINED_FUNCTION_2_105()
{

  return [v0 (v1 + 2424)];
}

id OUTLINED_FUNCTION_3_104()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_8_70()
{

  return sub_24E347CB8();
}

unint64_t sub_24E25817C()
{
  result = qword_27F1E2E48;
  if (!qword_27F1E2E48)
  {
    type metadata accessor for PlayerProfileAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2E48);
  }

  return result;
}

uint64_t sub_24E2581D4(uint64_t a1)
{
  v2 = sub_24E347218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    type metadata accessor for PlayerProfileViewController();
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    LOBYTE(v17) = 0;

    sub_24E0CA66C();
    v9 = v8;
    *(v8 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_isDeeplinked) = *(a1 + *(type metadata accessor for PlayerProfileAction() + 28));
    sub_24E0CBB90();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EACB0);
    sub_24E347328();
    if (v18)
    {
      sub_24DE56CE8(&v17, &v19);
      v10 = *(&v20 + 1);
      v11 = v21;
      __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
      (*(v11 + 8))(v9, 1, v10, v11);
      __swift_destroy_boxed_opaque_existential_1(&v19);
    }

    else
    {
      sub_24E0B9DD0(&v17);
      v13 = [v7 navigationController];
      if (v13)
      {
        v14 = v13;
        [v13 pushViewController:v9 animated:1];
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
    (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
    v12 = sub_24E347AA8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
    (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
    return sub_24E347AA8();
  }

  return v12;
}

_BYTE *sub_24E2584D8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E2585B0(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t sub_24E2585C8(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_24E2585E8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24E2585B0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_24E258614@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E2585C0(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_24E258644()
{
  result = qword_27F1E8D48;
  if (!qword_27F1E8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8D48);
  }

  return result;
}

uint64_t sub_24E2586BC@<X0>(uint64_t a1@<X8>)
{
  sub_24DF8968C(v1, &v4);
  if (!v5)
  {
    result = sub_24DF8C95C(&v4, &qword_27F1DEE30);
    goto LABEL_5;
  }

  sub_24DE56CE8(&v4, v6);
  OUTLINED_FUNCTION_10_12(v6, v6[3]);
  if (sub_24E344098())
  {
    result = __swift_destroy_boxed_opaque_existential_1(v6);
LABEL_5:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  sub_24DF89628(v6, a1);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

double sub_24E258774(void *a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v10 = v9;
  v17 = sub_24E348BC8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v9 + 184);
  v22 = *(v10 + 192);
  __swift_project_boxed_opaque_existential_1((v10 + 160), v21);
  sub_24E2548A0(v21, v22);
  sub_24E344198();
  (*(v18 + 8))(v20, v17);
  if (*(v10 + 218) == 1 && (v23 = [a1 traitCollection], v24 = sub_24E3483C8(), v23, (v24 & 1) != 0))
  {
    v28.origin.x = a6;
    v28.origin.y = a7;
    v28.size.width = a8;
    v28.size.height = a9;
    MinX = CGRectGetMinX(v28);
    v29.origin.x = a6;
    v29.origin.y = a7;
    v29.size.width = a8;
    v29.size.height = a9;
    CGRectGetMinY(v29);
    *&v27[1] = a3;
    v30.origin.x = a6;
    v30.origin.y = a7;
    v30.size.width = a8;
    v30.size.height = a9;
    CGRectGetWidth(v30);
    v31.origin.x = a6;
    v31.origin.y = a7;
    v31.size.width = a8;
    v31.size.height = a9;
    CGRectGetHeight(v31);
  }

  else
  {
    v32.origin.x = a6;
    v32.origin.y = a7;
    v32.size.width = a8;
    v32.size.height = a9;
    MinX = CGRectGetMinX(v32);
    v33.origin.x = a6;
    v33.origin.y = a7;
    v33.size.width = a8;
    v33.size.height = a9;
    CGRectGetMinY(v33);
    v34.origin.x = a6;
    v34.origin.y = a7;
    v34.size.width = a8;
    v34.size.height = a9;
    CGRectGetWidth(v34);
    v35.origin.x = a6;
    v35.origin.y = a7;
    v35.size.width = a8;
    v35.size.height = a9;
    CGRectGetHeight(v35);
  }

  return MinX;
}

uint64_t sub_24E2589DC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v57 = sub_24E348BC8();
  v9 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1;
  v75.origin.x = a1;
  v59 = a2;
  v75.origin.y = a2;
  v60 = a3;
  v75.size.width = a3;
  v61 = a4;
  v75.size.height = a4;
  MinY = CGRectGetMinY(v75);
  v56 = v4;
  v13 = *(v4 + 208);
  v14 = *(v13 + 16);
  v55 = v13;
  if (v14)
  {
    v15 = MinY;
    v16 = v13 + 32;
    v17 = (v9 + 8);
    v18 = MEMORY[0x277D84F90];
    do
    {
      sub_24E05F5E4(v16, v68);
      __swift_project_boxed_opaque_existential_1(v68, v69);
      v19 = v60;
      v20 = v61;
      sub_24E3440D8();
      v62 = v21;
      v63 = v22;
      v24 = v23;
      v26 = v25;
      __swift_project_boxed_opaque_existential_1(v70, v70[3]);
      v65 = v24;
      v64 = v26;
      sub_24E3441B8();
      v28 = v27;
      __swift_project_boxed_opaque_existential_1(v74, v74[3]);
      sub_24E344168();
      v30 = v29;
      v76.origin.x = v58;
      v76.origin.y = v59;
      v76.size.width = v19;
      v76.size.height = v20;
      v31 = v30 + CGRectGetMinX(v76);
      v32 = v15 + v28;
      __swift_project_boxed_opaque_existential_1(v68, v69);
      v33 = v62;
      v34 = v63;
      sub_24E348508();
      sub_24E344088();
      v35 = v72;
      v36 = v73;
      __swift_project_boxed_opaque_existential_1(&v71, v72);
      sub_24E2548A0(v35, v36);
      sub_24E344198();
      v38 = v37;
      sub_24E25AA9C(v68);
      (*v17)(v11, v57);
      v77.origin.x = v31;
      v77.origin.y = v32;
      v77.size.width = v33;
      v77.size.height = v34;
      v39 = v34;
      MaxY = CGRectGetMaxY(v77);
      v78.origin.x = v31;
      v78.origin.y = v32;
      v78.size.width = v33;
      v78.size.height = v39;
      v41 = CGRectGetMinY(v78);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E076D34(0, *(v18 + 16) + 1, 1, v18);
        v18 = v45;
      }

      v43 = *(v18 + 16);
      v42 = *(v18 + 24);
      v4 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        sub_24E076D34(v42 > 1, v43 + 1, 1, v18);
        v18 = v46;
      }

      v15 = v38 + MaxY - v64;
      v44 = v65 + v41;
      *(v18 + 16) = v4;
      *(v18 + 8 * v43 + 32) = v44;
      v16 += 160;
      --v14;
    }

    while (v14);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v47 = *(v56 + 200);
  if (v47 > 1.0)
  {
    sub_24E12E6A0(v55, v68);
    if (!v69)
    {
      sub_24DF8C95C(v68, &qword_27F1E8D50);
      return v18;
    }

    sub_24DF89628(v68, v66);
    sub_24E25AA9C(v68);
    sub_24DE56CE8(v66, v67);
    if (!*(v18 + 16))
    {
      goto LABEL_18;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_24E259F98(v18);
      v18 = v53;
    }

    v48 = *(v18 + 16);
    if (v48)
    {
      v49 = v48 - 1;
      v50 = *(v18 + 8 * v49 + 32);
      *(v18 + 16) = v49;
      __swift_project_boxed_opaque_existential_1(v67, v67[3]);
      sub_24E344308();
      v47 = v50 + v47 * v51;
      v14 = *(v18 + 16);
      v48 = *(v18 + 24);
      v4 = v14 + 1;
      if (v14 < v48 >> 1)
      {
LABEL_17:
        *(v18 + 16) = v4;
        *(v18 + 8 * v14 + 32) = v47;
LABEL_18:
        __swift_destroy_boxed_opaque_existential_1(v67);
        return v18;
      }
    }

    else
    {
      __break(1u);
    }

    sub_24E076D34(v48 > 1, v4, 1, v18);
    v18 = v54;
    goto LABEL_17;
  }

  return v18;
}

uint64_t sub_24E258F14(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_24E348BC8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DF8968C(v5, v37);
  if (!*(&v37[1] + 1))
  {
    return sub_24DF8C95C(v37, &qword_27F1DEE30);
  }

  sub_24DE56CE8(v37, v38);
  if (*(v5 + 218) == 1 && (v16 = [a1 traitCollection], v17 = sub_24E3483C8(), v16, (v17 & 1) != 0))
  {
    v18 = *(v6 + 184);
    v19 = *(v6 + 192);
    __swift_project_boxed_opaque_existential_1((v6 + 160), v18);
    sub_24E2548A0(v18, v19);
    sub_24E344198();
    (*(v13 + 8))(v15, v12);
    v39.origin.x = a2;
    v39.origin.y = a3;
    v39.size.width = a4;
    v39.size.height = a5;
    CGRectGetMinX(v39);
    v40.origin.x = a2;
    v40.origin.y = a3;
    v40.size.width = a4;
    v40.size.height = a5;
    CGRectGetMaxY(v40);
    sub_24E348508();
  }

  else
  {
    if ((*(v6 + 217) & 1) != 0 || (v20 = *(v6 + 208), !*(v20 + 16)))
    {
      v30 = [a1 traitCollection];
      v31 = sub_24E3483B8();

      v32 = a2;
      v33 = a3;
      v34 = a4;
      v35 = a5;
      if (v31)
      {
        CGRectGetMinX(*&v32);
      }

      else
      {
        CGRectGetMaxX(*&v32);
      }
    }

    else
    {
      sub_24DF89628(v20 + 32, v37);
      v21 = *(v6 + 184);
      v22 = *(v6 + 192);
      __swift_project_boxed_opaque_existential_1((v6 + 160), v21);
      sub_24E2548A0(v21, v22);
      sub_24E344198();
      (*(v13 + 8))(v15, v12);
      v23 = [a1 traitCollection];
      v24 = sub_24E3483B8();

      __swift_project_boxed_opaque_existential_1(v37, *(&v37[1] + 1));
      sub_24E344078();
      if (v24)
      {
        CGRectGetMinX(*&v25);
      }

      else
      {
        CGRectGetMaxX(*&v25);
      }

      __swift_destroy_boxed_opaque_existential_1(v37);
    }

    if (*(v6 + 216) == 2)
    {
      sub_24E12E6A0(*(v6 + 208), v36);
      if (v36[3])
      {
        memcpy(v37, v36, sizeof(v37));
        __swift_project_boxed_opaque_existential_1(v37, *(&v37[1] + 1));
        sub_24E344078();
        CGRectGetMidY(v41);
        sub_24E25AA9C(v37);
      }

      else
      {
        sub_24DF8C95C(v36, &qword_27F1E8D50);
      }
    }
  }

  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  sub_24E344088();
  return __swift_destroy_boxed_opaque_existential_1(v38);
}

void sub_24E259350(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_24E348BC8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DF8968C(v5 + 40, v28);
  if (!*(&v28[1] + 1))
  {
    sub_24DF8C95C(v28, &qword_27F1DEE30);
    return;
  }

  sub_24DE56CE8(v28, v30);
  if (*(v5 + 218) == 1)
  {
    v16 = [a1 traitCollection];
    v17 = sub_24E3483C8();

    if (v17)
    {
      v18 = v6[23];
      v19 = v6[24];
      __swift_project_boxed_opaque_existential_1(v6 + 20, v18);
      sub_24E2548A0(v18, v19);
      sub_24E344198();
      (*(v13 + 8))(v15, v12);
      v31.origin.x = a2;
      v31.origin.y = a3;
      v31.size.width = a4;
      v31.size.height = a5;
      CGRectGetMinX(v31);
      v32.origin.x = a2;
      v32.origin.y = a3;
      v32.size.width = a4;
      v32.size.height = a5;
      CGRectGetMaxY(v32);
      sub_24E348508();
LABEL_14:
      __swift_project_boxed_opaque_existential_1(v30, v30[3]);
      sub_24E344088();
      __swift_destroy_boxed_opaque_existential_1(v30);
      return;
    }
  }

  v20 = v6[26];
  if (*(v20 + 16))
  {
    sub_24DF89628(v20 + 32, v29);
    v21 = [a1 traitCollection];
    v22 = sub_24E3483B8();

    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_24E344078();
    if (v22)
    {
      CGRectGetMinX(*&v23);
    }

    else
    {
      CGRectGetMaxX(*&v23);
    }

    sub_24E12E6A0(v20, v27);
    if (v27[3])
    {
      memcpy(v28, v27, sizeof(v28));
      __swift_project_boxed_opaque_existential_1(v28, *(&v28[1] + 1));
      sub_24E344078();
      CGRectGetMidY(v33);
      sub_24E25AA9C(v28);
    }

    else
    {
      sub_24DF8C95C(v27, &qword_27F1E8D50);
    }

    __swift_destroy_boxed_opaque_existential_1(v29);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_24E2596DC(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_24E348BC8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DF8968C(v5 + 80, v30);
  if (!*(&v30[1] + 1))
  {
    return sub_24DF8C95C(v30, &qword_27F1DEE30);
  }

  sub_24DE56CE8(v30, v31);
  if (*(v5 + 218) == 1 && (v16 = [a1 traitCollection], v17 = sub_24E3483C8(), v16, (v17 & 1) != 0))
  {
    v18 = v6[23];
    v19 = v6[24];
    __swift_project_boxed_opaque_existential_1(v6 + 20, v18);
    sub_24E2548A0(v18, v19);
    sub_24E344198();
    (*(v13 + 8))(v15, v12);
    v32.origin.x = a2;
    v32.origin.y = a3;
    v32.size.width = a4;
    v32.size.height = a5;
    CGRectGetMinX(v32);
    v33.origin.x = a2;
    v33.origin.y = a3;
    v33.size.width = a4;
    v33.size.height = a5;
    CGRectGetMaxY(v33);
    sub_24E348508();
  }

  else
  {
    v20 = v6[18];
    v21 = v6[19];
    __swift_project_boxed_opaque_existential_1(v6 + 15, v20);
    sub_24E2548A0(v20, v21);
    sub_24E344198();
    (*(v13 + 8))(v15, v12);
    v22 = [a1 traitCollection];
    v23 = sub_24E3483B8();

    v24 = a2;
    v25 = a3;
    v26 = a4;
    v27 = a5;
    if (v23)
    {
      CGRectGetMaxX(*&v24);
    }

    else
    {
      CGRectGetMinX(*&v24);
    }

    sub_24E12E6A0(v6[26], v29);
    if (v29[3])
    {
      memcpy(v30, v29, sizeof(v30));
      __swift_project_boxed_opaque_existential_1(v30, *(&v30[1] + 1));
      sub_24E344078();
      CGRectGetMidY(v34);
      sub_24E25AA9C(v30);
    }

    else
    {
      sub_24DF8C95C(v29, &qword_27F1E8D50);
    }
  }

  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_24E344088();
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_24E259A88(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = v5;
  v16 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_1();
  v22 = v21 - v20;
  sub_24E2586BC(&v45);
  v23 = MEMORY[0x277D22A78];
  if (v46)
  {
    sub_24DE56CE8(&v45, v47);
    OUTLINED_FUNCTION_10_12(v47, v48);
    OUTLINED_FUNCTION_6_81();
    sub_24E3440D8();
    v43 = v25;
    v44 = v24;
    v41 = v26;
    v42 = v27;
    OUTLINED_FUNCTION_8_71(v24, v25, v26, v27);
    OUTLINED_FUNCTION_32_1();
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    sub_24DF8C95C(&v45, &qword_27F1DEE30);
    v43 = v23[1];
    v44 = *v23;
    v6 = a2;
    v7 = a3;
    v8 = a4;
    v9 = a5;
    v41 = v23[2];
    v42 = v23[3];
  }

  sub_24DF8968C(v5 + 40, &v45);
  if (v46)
  {
    sub_24DE56CE8(&v45, v47);
    OUTLINED_FUNCTION_10_12(v47, v48);
    OUTLINED_FUNCTION_6_81();
    sub_24E3440D8();
    OUTLINED_FUNCTION_8_71(v44, v43, v41, v42);
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    sub_24DF8C95C(&v45, &qword_27F1DEE30);
  }

  OUTLINED_FUNCTION_10_55();
  sub_24E348508();
  OUTLINED_FUNCTION_32_1();
  sub_24DF8968C(v5 + 80, v47);
  v28 = v48;
  sub_24DF8C95C(v47, &qword_27F1DEE30);
  if (v28)
  {
    v29 = *(v10 + 144);
    v30 = *(v10 + 152);
    __swift_project_boxed_opaque_existential_1((v10 + 120), v29);
    sub_24E2548A0(v29, v30);
    sub_24E344198();
    (*(v18 + 8))(v22, v16);
    OUTLINED_FUNCTION_10_55();
    sub_24E3484F8();
    OUTLINED_FUNCTION_32_1();
  }

  v31 = sub_24E2589DC(v6, v7, v8, v9);
  if (*(v10 + 216) == 1 && *(v10 + 217))
  {
    sub_24E12E6C8(v31);
  }

  else
  {
  }

  sub_24E258F14(a1, a2, a3, a4, a5);
  v32 = OUTLINED_FUNCTION_3_105();
  sub_24E259350(a1, v32, v33, v34, v35);
  sub_24DF8968C(v10 + 80, &v45);
  if (v46)
  {
    sub_24DE56CE8(&v45, v47);
    OUTLINED_FUNCTION_10_12(v47, v48);
    OUTLINED_FUNCTION_6_81();
    sub_24E3440D8();
    v36 = OUTLINED_FUNCTION_3_105();
    sub_24E2596DC(a1, v36, v37, v38, v39);
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    sub_24DF8C95C(&v45, &qword_27F1DEE30);
  }

  OUTLINED_FUNCTION_3_105();
  return sub_24E343FD8();
}

void sub_24E259F2C(uint64_t a1, double a2)
{
  swift_getObjectType();

  sub_24E25A04C(a1, v2, a2);
}

uint64_t sub_24E259FE8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_24E348878();
  }

  return sub_24E348A18();
}

void sub_24E25A04C(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v70 = v11 - v10;
  sub_24E344478();
  OUTLINED_FUNCTION_0_14();
  v72 = v13;
  v73 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v71 = v15 - v14;
  v16 = sub_24E3444A8();
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_1();
  v22 = v21 - v20;
  v77 = sub_24E344888();
  MEMORY[0x28223BE20](v77);
  v79 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 <= 0.0)
  {
    OUTLINED_FUNCTION_1_16();
    sub_24E25A7F4(a1, a2);
    OUTLINED_FUNCTION_7_59();
  }

  else
  {
    v63 = v8;
    v64 = v6;
    v65 = v18;
    v66 = a1;
    v68 = v22;
    v69 = v16;
    v25 = 0;
    v67 = a2;
    v26 = *(a2 + 208);
    v27 = *(v26 + 16);
    v78 = v26;
    v76 = (v23 + 16);
    v74 = v26 + 32;
    v75 = (v23 + 8);
    v28 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v25 == v27)
      {
        v29 = 0;
        v30 = 0uLL;
        v31 = 0uLL;
        v25 = v27;
        v32 = 0uLL;
        v33 = 0uLL;
        v34 = 0uLL;
        v35 = 0uLL;
        v36 = 0uLL;
        v37 = 0uLL;
        v38 = 0uLL;
        v39 = 0uLL;
      }

      else
      {
        if (v25 >= *(v78 + 16))
        {
          goto LABEL_30;
        }

        v16 = v25 + 1;
        *&v82 = v25;
        sub_24E05F5E4(v74 + 160 * v25, &v82 + 8);
        v30 = v82;
        v31 = v83;
        v29 = v84;
        v32 = v85;
        v33 = v86;
        v34 = v87;
        v35 = v88;
        v36 = v89;
        v37 = v90;
        v38 = v91;
        ++v25;
        v39 = v92;
      }

      v93 = v30;
      v94 = v31;
      v95 = v29;
      v96[0] = v32;
      v96[1] = v33;
      v96[2] = v34;
      v97[0] = v35;
      v97[1] = v36;
      v97[2] = v37;
      v97[3] = v38;
      v97[4] = v39;
      if (!v29)
      {
        (*(v72 + 104))(v71, *MEMORY[0x277D22788], v73);

        sub_24E344488();
        v47 = v67;
        sub_24E2586BC(&v82);
        if (*(&v83 + 1))
        {
          sub_24DE56CE8(&v82, &v93);
          OUTLINED_FUNCTION_10_12(&v93, *(&v94 + 1));
          OUTLINED_FUNCTION_1_16();
          v48 = v66;
          sub_24E3440D8();
          v49 = *(v47 + 184);
          v50 = *(v47 + 192);
          __swift_project_boxed_opaque_existential_1((v47 + 160), v49);
          v51 = v70;
          sub_24E2548A0(v49, v50);
          sub_24E344198();
          (*(v63 + 8))(v51, v64);
          if (*(v47 + 218) & 1) != 0 && (v52 = [v48 traitCollection], v53 = sub_24E3483C8(), v52, (v53))
          {
            OUTLINED_FUNCTION_1_16();
            sub_24E344468();
          }

          else
          {
            sub_24E344468();
            OUTLINED_FUNCTION_7_59();
          }

          __swift_destroy_boxed_opaque_existential_1(&v93);
        }

        else
        {
          sub_24DF8C95C(&v82, &qword_27F1DEE30);
          OUTLINED_FUNCTION_1_16();
          sub_24E344468();
          OUTLINED_FUNCTION_7_59();
        }

        if (*(v47 + 200) <= 1.0)
        {
          v58 = OUTLINED_FUNCTION_4_87();
          v59(v58);
        }

        else
        {
          sub_24E12E6A0(v78, &v93);
          if (*(&v94 + 1))
          {
            sub_24DF89628(&v93, v81);
            sub_24E25AA9C(&v93);
            sub_24DE56CE8(v81, &v82);
            OUTLINED_FUNCTION_10_12(&v82, *(&v83 + 1));
            v54 = sub_24E344318();
            if (v54)
            {
              v55 = v54;

              [v55 lineHeight];

              v56 = OUTLINED_FUNCTION_4_87();
              v57(v56);
              __swift_destroy_boxed_opaque_existential_1(&v82);
              return;
            }

            goto LABEL_31;
          }

          v60 = OUTLINED_FUNCTION_4_87();
          v61(v60);
          sub_24DF8C95C(&v93, &qword_27F1E8D50);
        }

        return;
      }

      if (__OFADD__(v30, 1))
      {
        break;
      }

      v40 = v32;
      OUTLINED_FUNCTION_10_12(&v93 + 1, v29);
      *(&v83 + 1) = v29;
      v84 = *(*(v40 + 8) + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v82);
      (*(*(v29 - 8) + 16))(boxed_opaque_existential_1, v16, v29);
      sub_24DF89628(v96 + 8, v81);
      sub_24DF89628(v97, &v80);
      sub_24E25AA9C(&v93 + 8);
      sub_24E344878();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E076C74();
        v28 = v45;
      }

      v16 = *(v28 + 16);
      if (v16 >= *(v28 + 24) >> 1)
      {
        sub_24E076C74();
        v28 = v46;
      }

      v42 = v77;
      *(&v83 + 1) = v77;
      v84 = MEMORY[0x277D22900];
      v43 = __swift_allocate_boxed_opaque_existential_1(&v82);
      v44 = v79;
      (*v76)(v43, v79, v42);
      *(v28 + 16) = v16 + 1;
      sub_24DE56CE8(&v82, v28 + 40 * v16 + 32);
      (*v75)(v44, v42);
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }
}

double sub_24E25A7F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_24E344478();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E3444A8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 104))(v6, *MEMORY[0x277D22788], v3, v9);
  sub_24E344488();
  v12 = *(a2 + 208);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v12 + 32;
    v15 = MEMORY[0x277D228E0];
    do
    {
      sub_24E05F5E4(v14, v24);
      sub_24DF89628(&v25, v20);
      v16 = sub_24E344838();
      v22 = v16;
      v23 = v15;
      __swift_allocate_boxed_opaque_existential_1(v21);
      sub_24E344848();
      sub_24E344498();
      __swift_destroy_boxed_opaque_existential_1(v21);
      sub_24DF89628(&v26, v20);
      sub_24E25AA9C(v24);
      v22 = v16;
      v23 = v15;
      __swift_allocate_boxed_opaque_existential_1(v21);
      sub_24E344848();
      sub_24E344498();
      __swift_destroy_boxed_opaque_existential_1(v21);
      v14 += 160;
      --v13;
    }

    while (v13);
  }

  sub_24E344468();
  v18 = v17;
  (*(v8 + 8))(v11, v7);
  return v18;
}

_BYTE *sub_24E25AACC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24E25ABAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 240))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 144);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E25ABEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E25AC84()
{
  result = qword_27F1E8D58;
  if (!qword_27F1E8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8D58);
  }

  return result;
}

double OUTLINED_FUNCTION_8_71(double a1, double a2, double a3, double a4)
{

  return sub_24E258774(v4, a1, a2, a3, a4, v9, v8, v7, v6);
}

void __swiftcall GKMatchmakerViewController.registerSharingControllerItemProvider(itemProvider:)(UIViewController *__return_ptr retstr, NSItemProvider itemProvider)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = objc_allocWithZone(sub_24E343D18());
  v9 = itemProvider.super.isa;
  v10 = sub_24E343D08();
  sub_24E343CF8();
  v11 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);
  sub_24E348068();
  v12 = v10;
  v13 = v3;
  v14 = sub_24E348058();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v12;
  v15[5] = v13;
  sub_24DFC8700(0, 0, v7, &unk_24E3881E0, v15);
}

uint64_t sub_24E25AEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v6 = sub_24E343CE8();
  v5[3] = v6;
  v5[4] = *(v6 - 8);
  v5[5] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[6] = v7;
  v5[7] = sub_24E348068();
  v5[8] = sub_24E348058();
  v10 = (*MEMORY[0x277CE41C0] + MEMORY[0x277CE41C0]);
  v8 = swift_task_alloc();
  v5[9] = v8;
  *v8 = v5;
  v8[1] = sub_24E25AFE4;

  return v10(v7);
}

uint64_t sub_24E25AFE4()
{

  v1 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E25B120, v1, v0);
}

uint64_t sub_24E25B120()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  (*(v4 + 104))(v1, *MEMORY[0x277CE41B8], v3);
  v6 = sub_24E343CD8();
  v7 = *(v4 + 8);
  v7(v1, v3);
  [v5 sharePlaySharingControllerResultSucceeded_];
  v7(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24E25B22C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24DF8CD84;

  return sub_24E25AEA4(a1, v4, v5, v7, v6);
}

void sub_24E25B34C(void *a1, void *a2, void (**a3)(void, void))
{
  v6 = sub_24E343F88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = aBlock - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  if (a1)
  {
    _Block_copy(a3);
    v14 = a1;
    v15 = [a2 matchmakerDelegate];
    if (v15)
    {
      v16 = v15;
      v17 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
      v18 = swift_allocObject();
      v18[2] = v16;
      v18[3] = a2;
      v18[4] = v17;
      v18[5] = sub_24E25C0E8;
      v18[6] = v13;
      aBlock[4] = sub_24E25C164;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24E00B24C;
      aBlock[3] = &block_descriptor_14_0;
      v19 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v20 = a2;
      v21 = v17;

      [v21 updateScopedIDs_];
      _Block_release(v19);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_24E343CB8();
      v25 = sub_24E343F78();
      v26 = sub_24E348258();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_24DE53000, v25, v26, "<Warning>: Not resolving recipient properties because no GKMatchmakerViewControllerDelegate has been configured", v27, 2u);
        MEMORY[0x253040EE0](v27, -1, -1);
      }

      (*(v7 + 8))(v9, v6);
      sub_24E347C28();
      v21 = sub_24E347BE8();
      (a3)[2](a3, v21);
    }
  }

  else
  {
    _Block_copy(a3);
    sub_24E343C78();
    v22 = sub_24E343F78();
    v23 = sub_24E348248();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_24DE53000, v22, v23, "No player passed to handleRecipientsPropertiesNeeded", v24, 2u);
      MEMORY[0x253040EE0](v24, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    a3[2](a3, 0);
  }

  _Block_release(a3);
}

void GKMatchmakerViewController.handleRecipientPropertiesNeeded(player:completionHandler:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v7 = sub_24E343F88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = aBlock - v12;
  if (a1)
  {
    v14 = a1;
    v15 = [v3 matchmakerDelegate];
    if (v15)
    {
      v16 = v15;
      v17 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
      v18 = swift_allocObject();
      v18[2] = v16;
      v18[3] = v3;
      v18[4] = v17;
      v18[5] = a2;
      v18[6] = a3;
      aBlock[4] = sub_24E25C0CC;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24E00B24C;
      aBlock[3] = &block_descriptor_85;
      v19 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v20 = v3;
      v21 = v17;

      [v21 updateScopedIDs_];
      _Block_release(v19);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_24E343CB8();
      v25 = sub_24E343F78();
      v26 = sub_24E348258();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_24DE53000, v25, v26, "<Warning>: Not resolving recipient properties because no GKMatchmakerViewControllerDelegate has been configured", v27, 2u);
        MEMORY[0x253040EE0](v27, -1, -1);
      }

      (*(v8 + 8))(v13, v7);
      sub_24E347C28();
      a2();
    }
  }

  else
  {
    sub_24E343C78();
    v22 = sub_24E343F78();
    v23 = sub_24E348248();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_24DE53000, v22, v23, "No player passed to handleRecipientsPropertiesNeeded", v24, 2u);
      MEMORY[0x253040EE0](v24, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    (a2)(0);
  }
}

uint64_t sub_24E25BADC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = sub_24E343F88();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8D68);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  if ([a1 respondsToSelector_])
  {
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a4;
    v15[4] = a5;
    aBlock[4] = sub_24E25C150;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E25BD78;
    aBlock[3] = &block_descriptor_20_2;
    v16 = _Block_copy(aBlock);

    [a1 matchmakerViewController:a2 getMatchPropertiesForRecipient:a3 withCompletionHandler:v16];
    _Block_release(v16);
  }

  else
  {
    sub_24E343CB8();
    v17 = sub_24E343F78();
    v18 = sub_24E348258();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24DE53000, v17, v18, "<Warning>: matchmakerViewController:getMatchPropertiesForRecipient:withCompletionHandler: delegate method not implemented for GKMatchmakerViewControllerDelegate", v19, 2u);
      MEMORY[0x253040EE0](v19, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    sub_24E347C28();
    a4();
  }
}

uint64_t sub_24E25BD78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_24E347C08();

  v1(v2);
}

uint64_t sub_24E25BDFC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_24E343F88();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(*a2 + 136))(v7);
  v11 = 0;
  atomic_compare_exchange_strong_explicit(v10, &v11, 1u, memory_order_relaxed, memory_order_relaxed);
  if (v11)
  {
    sub_24E343CB8();
    v14 = sub_24E343F78();
    v15 = sub_24E348258();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24DE53000, v14, v15, "<Warning>: The completion handler of matchmakerViewController:getMatchPropertiesForRecipient:withCompletionHandler: must only be called once", v16, 2u);
      MEMORY[0x253040EE0](v16, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }

  else
  {

    a3(v12);
  }
}

void sub_24E25C04C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_24E347BE8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

BOOL sub_24E25C174(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_24E348878();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t sub_24E25C1B4(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = sub_24DFD8654(a2);
  v5 = sub_24E2A436C(0, a1, v4, a2);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_18;
  }

  sub_24E05F66C(v7, a2);
  result = sub_24E05F66C(v4, a2);
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {
  }

  else
  {
    if (v7 >= v4)
    {
      goto LABEL_21;
    }

    sub_24DF88A8C(0, &qword_27F1E3560);

    result = v7;
    do
    {
      v9 = result + 1;
      sub_24E3489E8();
      result = v9;
    }

    while (v4 != v9);
  }

  if (a2 >> 62)
  {
LABEL_19:

    v10 = sub_24E348B38();

    return v10;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {

    return a2 & 0xFFFFFFFFFFFFFF8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_24E25C344(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      result = v5;
    }

    if (v5 >= result)
    {
      a4();
      OUTLINED_FUNCTION_4_88();

      return OUTLINED_FUNCTION_2_106();
    }
  }

  __break(1u);
  return result;
}

id sub_24E25C3D4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CEC2A0]);
  result = sub_24E25DD10(0xD00000000000001ELL, 0x800000024E3AF2C0);
  qword_27F20B218 = result;
  return result;
}

uint64_t sub_24E25C424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0x80;
  v9 = MEMORY[0x277D84F90];
  *(v4 + 48) = MEMORY[0x277D84F90];
  *(v4 + 56) = 0;
  v10 = MEMORY[0x277D84FA0];
  *(v4 + 96) = v9;
  *(v4 + 104) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0EB8);
  swift_allocObject();
  *(v4 + 112) = sub_24E346F88();
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 88) = a4;
  return v4;
}

uint64_t sub_24E25C4C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  sub_24E25E394(v2, v3, v4, v5);
  sub_24E346F78();
  return sub_24E25E308(v2, v3, v4, v5);
}

BOOL sub_24E25C548()
{
  OUTLINED_FUNCTION_5_16();
  v1 = v0[12];
  if (v1 >> 62)
  {
    if (OUTLINED_FUNCTION_1_125())
    {
      return 0;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  v3 = v0[7];
  return v3 < sub_24DFD8654(v0[8]);
}

uint64_t sub_24E25C5B0()
{
  v4 = v0[7];
  v3 = v0[8];

  v5 = sub_24E25C1B4(v4, v3);
  v6 = v0[9];
  v10 = sub_24E2A1880(v6, v5, v7, v8, v9);
  v14 = v0[7];
  v15 = __OFADD__(v14, v6);
  v16 = v14 + v6;
  if (v15)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = v10;
  v1 = v11;
  v2 = v12;
  v4 = v13;
  v0[7] = v16;
  if ((v13 & 1) == 0)
  {
LABEL_3:
    sub_24E09C724(v3, v1, v2, v4);
    v18 = v17;
    goto LABEL_10;
  }

  sub_24E348C28();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x277D84F90];
  }

  v20 = *(v19 + 16);

  if (__OFSUB__(v4 >> 1, v2))
  {
    goto LABEL_14;
  }

  if (v20 != (v4 >> 1) - v2)
  {
LABEL_15:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
    v18 = MEMORY[0x277D84F90];
  }

LABEL_10:
  sub_24E25C710(v18);
  swift_unknownObjectRelease();
}

void sub_24E25C710(uint64_t a1)
{
  v2 = v1;
  v32 = sub_24DFD8654(a1);
  if (v32)
  {
    v3 = *(v1 + 40);
    if ((v3 & 0xC0) == 0x80 && (v3 == 128 ? (v4 = (*(v1 + 24) | *(v1 + 32) | *(v1 + 16)) == 0) : (v4 = 0), v4))
    {
      v35 = MEMORY[0x277D84F90];
      if (sub_24DFD8654(MEMORY[0x277D84F90]))
      {
        sub_24E1AD92C(MEMORY[0x277D84F90]);
        v12 = v11;
      }

      else
      {
        v12 = MEMORY[0x277D84FA0];
      }

      OUTLINED_FUNCTION_21_2();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      sub_24DF88A8C(0, &qword_27F1DEFE0);
      if (v32 < 1)
      {
        __break(1u);
      }

      else
      {
        v31 = v13;
        v14 = 0;
        v15 = *MEMORY[0x277CEC230];
        v16 = *(v2 + 88);
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x25303F560](v14, a1);
          }

          else
          {
            v17 = *(a1 + 8 * v14 + 32);
          }

          v18 = v17;
          sub_24E1C69D4(v18, v15, v16);
          MEMORY[0x25303EA30]();
          if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24E347F48();
          }

          ++v14;
          sub_24E347F88();
          sub_24E1C3704(aBlock, v18);
        }

        while (v32 != v14);
        v19 = *(v2 + 56);
        v20 = v19 < sub_24DFD8654(*(v2 + 64));
        v21 = sub_24E25C548();
        v22 = *(v2 + 16);
        v23 = *(v2 + 24);
        v24 = *(v2 + 32);
        *(v2 + 16) = a1;
        *(v2 + 24) = v21;
        *(v2 + 32) = 0;
        v25 = *(v2 + 40);
        *(v2 + 40) = 0;

        sub_24E25E308(v22, v23, v24, v25);
        sub_24E25C4C4();
        v26 = *(v2 + 80);
        v27 = sub_24E347EE8();

        OUTLINED_FUNCTION_21_2();
        v28 = swift_allocObject();
        swift_weakInit();
        v29 = swift_allocObject();
        *(v29 + 16) = v28;
        *(v29 + 24) = v31;
        *(v29 + 32) = v20;
        aBlock[4] = sub_24E25E370;
        aBlock[5] = v29;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_24E25D070;
        aBlock[3] = &block_descriptor_86;
        v30 = _Block_copy(aBlock);

        [v26 _cacheLockupsWithRequests_withCompletionBlock_];
        _Block_release(v30);
      }
    }

    else
    {
      swift_beginAccess();

      sub_24E011218();
      v5 = *(*(v1 + 48) + 16);
      sub_24E124300(v5);
      v6 = *(v1 + 48);
      *(v6 + 16) = v5 + 1;
      *(v6 + 8 * v5 + 32) = a1;
      *(v1 + 48) = v6;
      swift_endAccess();
    }
  }

  else
  {
    v7 = *(v1 + 16);
    v8 = *(v1 + 24);
    v9 = *(v1 + 32);
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    v10 = *(v1 + 40);
    *(v1 + 40) = 0x80;
    sub_24E25E308(v7, v8, v9, v10);
    sub_24E25C4C4();

    sub_24E25D314();
  }
}

uint64_t sub_24E25CB04(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = sub_24E347358();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v12 = result;
  v46 = v8;
  v47 = v7;
  v48 = a4;
  result = sub_24DFD8654(a1);
  if (result)
  {
    v13 = result;
    if (result < 1)
    {
      __break(1u);
      goto LABEL_24;
    }

    v14 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x25303F560](v14, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      v17 = [v15 id];
      swift_beginAccess();
      v18 = sub_24E082910(v17);
      swift_endAccess();
    }

    while (v13 != v14);
  }

  swift_beginAccess();

  v20 = sub_24E25C174(v19);

  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
    sub_24E347018();
    *(swift_allocObject() + 16) = xmmword_24E36A270;
    sub_24E346FB8();
    swift_beginAccess();
    v21 = *(a3 + 16);
    v49[3] = &type metadata for ASCLockupBatchPresenter.ASCLockupBatchPresenterError;
    v49[0] = v21;

    sub_24E346FE8();
    sub_24DF8C95C(v49, &qword_27F1E0370);
    v22 = v46;
    v23 = v47;
    (*(v46 + 104))(v10, *MEMORY[0x277D21DE8], v47);
    sub_24E0EF428();

    (*(v22 + 8))(v10, v23);
  }

  v24 = sub_24DFD8654(a1);
  v25 = MEMORY[0x277D84F90];
  if (!v24)
  {
    goto LABEL_19;
  }

  v26 = v24;
  v49[0] = MEMORY[0x277D84F90];
  result = sub_24E348A68();
  if (v26 < 0)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v27 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x25303F560](v27, a1);
    }

    else
    {
      v28 = *(a1 + 8 * v27 + 32);
    }

    v29 = v28;
    ++v27;
    v30 = [v28 id];

    sub_24E348A48();
    sub_24E348A78();
    sub_24E348A88();
    sub_24E348A58();
  }

  while (v26 != v27);
  v25 = v49[0];
LABEL_19:
  swift_beginAccess();

  sub_24E26C8B8(v31);
  swift_endAccess();
  sub_24E25D314();
  v32 = *(v12 + 96);
  swift_beginAccess();
  v33 = *(a3 + 16);
  v34 = v48;
  v35 = *(v12 + 16);
  v36 = *(v12 + 24);
  v37 = *(v12 + 32);
  *(v12 + 16) = v32;
  *(v12 + 24) = v25;
  *(v12 + 32) = v33;
  v38 = *(v12 + 40);
  *(v12 + 40) = v34 & 1 | 0x40;

  sub_24E25E308(v35, v36, v37, v38);
  sub_24E25C4C4();
  v39 = *(v12 + 16);
  v40 = *(v12 + 24);
  v41 = *(v12 + 32);
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = 0;
  v42 = *(v12 + 40);
  *(v12 + 40) = 0x80;
  sub_24E25E308(v39, v40, v41, v42);
  sub_24E25C4C4();
  swift_beginAccess();
  v43 = *(v12 + 48);
  if (*(v43 + 16))
  {
    v44 = *(v43 + 32);
    swift_beginAccess();

    sub_24E25D024();
    swift_endAccess();

    sub_24E25C710(v44);
  }
}

uint64_t sub_24E25D024()
{
  result = *v0;
  if (*(*v0 + 16))
  {
    result = sub_24E002D68(result);
    if (result)
    {
      v2 = result;
      sub_24E25E03C(0, 1);
      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24E25D070(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_24DF88A8C(0, &qword_27F1DEFE0);
  v2 = sub_24E347F08();

  v1(v2);
}

uint64_t sub_24E25D0F4(uint64_t a1)
{
  v3 = type metadata accessor for LockupCacheRequest();
  MEMORY[0x28223BE20](v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAAA0);
  v9 = sub_24E347AD8();
  OUTLINED_FUNCTION_5_16();
  if (sub_24DFD8654(*(v1 + 96)) > a1)
  {
    v10 = *(v1 + 96);

    sub_24E2A16EC(a1, v10);
    OUTLINED_FUNCTION_4_88();
    if (v5)
    {
      sub_24E348C28();
      swift_unknownObjectRetain_n();
      v17 = swift_dynamicCastClass();
      if (!v17)
      {
        swift_unknownObjectRelease();
        v17 = MEMORY[0x277D84F90];
      }

      v18 = *(v17 + 16);

      if (__OFSUB__(v5 >> 1, a1))
      {
        __break(1u);
      }

      else if (v18 == (v5 >> 1) - a1)
      {
        v16 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v16)
        {
LABEL_12:
          v20[0] = v16;
          sub_24E347AC8();

          return v9;
        }

        v16 = MEMORY[0x277D84F90];
LABEL_11:
        swift_unknownObjectRelease();
        goto LABEL_12;
      }

      swift_unknownObjectRelease();
    }

    v11 = OUTLINED_FUNCTION_2_106();
    sub_24E09C724(v11, v12, v13, v14);
    v16 = v15;
    goto LABEL_11;
  }

  sub_24E343398();
  *(v5 + *(v3 + 20)) = v9;
  *(v5 + *(v3 + 24)) = a1;
  swift_beginAccess();
  sub_24E1C350C();
  sub_24E1C64D8(v8);
  swift_endAccess();
  sub_24E25C5B0();
  return v9;
}

uint64_t sub_24E25D314()
{
  v1 = v0;
  v2 = type metadata accessor for LockupCacheRequest();
  v54 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v51 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = &v47 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - v7;
  MEMORY[0x28223BE20](v9);
  v53 = &v47 - v10;
  result = OUTLINED_FUNCTION_5_16();
  v12 = *(v0 + 104);
  if (!*(v12 + 16))
  {
    return result;
  }

  v56 = MEMORY[0x277D84FA0];
  v13 = v12 + 56;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 56);

  result = OUTLINED_FUNCTION_5_16();
  v17 = 0;
  v18 = (v14 + 63) >> 6;
  v49 = v2;
  v52 = v12;
  while (v16)
  {
LABEL_9:
    v20 = v53;
    sub_24E1C6474(*(v12 + 48) + *(v54 + 72) * (__clz(__rbit64(v16)) | (v17 << 6)), v53);
    sub_24E1C6534(v20, v8);
    v21 = *&v8[*(v2 + 24)];
    v22 = *(v1 + 96);
    if (v22 >> 62)
    {
      v23 = OUTLINED_FUNCTION_1_125();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = *(v1 + 56);
    v24 = *(v1 + 64);
    if (v24 >> 62)
    {
      result = OUTLINED_FUNCTION_1_125();
    }

    else
    {
      result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v25 >= result)
    {
      if (v23 >= v21 || (v26 = *(v1 + 40), (v26 & 0xC0) == 0x80) && !(*(v1 + 24) | *(v1 + 16) | *(v1 + 32)) && v26 == 128)
      {
LABEL_20:
        if (v21 < 0)
        {
          goto LABEL_52;
        }

        v27 = *(v1 + 96);
        v28 = sub_24DFD8654(v27);
        result = sub_24E2A436C(0, v21, v28, v27);
        if (v29)
        {
          v30 = v28;
        }

        else
        {
          v30 = result;
        }

        if (v30 < 0)
        {
          goto LABEL_53;
        }

        sub_24E05F66C(0, v27);
        sub_24E05F66C(v30, v27);
        if ((v27 & 0xC000000000000001) != 0 && v30)
        {
          sub_24DF88A8C(0, &qword_27F1E3560);
          swift_bridgeObjectRetain_n();
          v31 = 0;
          do
          {
            v32 = v31 + 1;
            sub_24E3489E8();
            v31 = v32;
          }

          while (v30 != v32);
        }

        else
        {
          swift_bridgeObjectRetain_n();
        }

        if (v27 >> 62)
        {
          v34 = sub_24E348B38();
          v47 = v39;
          v41 = v40;
          v36 = v42;

          v35 = v47;
          v33 = v41;
          if (v36)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v33 = 0;
          v34 = v27 & 0xFFFFFFFFFFFFFF8;
          v35 = (v27 & 0xFFFFFFFFFFFFFF8) + 32;
          v36 = (2 * v30) | 1;
          if ((v36 & 1) == 0)
          {
            goto LABEL_34;
          }

LABEL_38:
          v47 = v35;
          v48 = v33;
          sub_24E348C28();
          swift_unknownObjectRetain_n();
          v43 = swift_dynamicCastClass();
          if (!v43)
          {
            swift_unknownObjectRelease();
            v43 = MEMORY[0x277D84F90];
          }

          v44 = *(v43 + 16);

          if (__OFSUB__(v36 >> 1, v48))
          {
            goto LABEL_54;
          }

          if (v44 == (v36 >> 1) - v48)
          {
            v38 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            v2 = v49;
            if (!v38)
            {
              v38 = MEMORY[0x277D84F90];
LABEL_44:
              swift_unknownObjectRelease();
            }

            v55 = v38;
            sub_24E347AC8();

            sub_24E1C6474(v8, v51);
            v45 = v50;
            sub_24E1C350C();
            sub_24E1C64D8(v45);
            goto LABEL_46;
          }

          swift_unknownObjectRelease_n();
          v35 = v47;
          v33 = v48;
        }

LABEL_34:
        sub_24E09C724(v34, v35, v33, v36);
        v38 = v37;
        v2 = v49;
        goto LABEL_44;
      }
    }

    else if (v23 >= v21)
    {
      goto LABEL_20;
    }

    sub_24E25C5B0();
LABEL_46:
    v12 = v52;
    v16 &= v16 - 1;
    result = sub_24E1C64D8(v8);
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      v46 = v56;
      swift_beginAccess();
      sub_24E25E128(v46);
      swift_endAccess();
    }

    v16 = *(v13 + 8 * v19);
    ++v17;
    if (v16)
    {
      v17 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_24E25D818()
{
  sub_24E25E308(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return v0;
}

uint64_t sub_24E25D878()
{
  sub_24E25D818();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t type metadata accessor for LockupCacheRequest()
{
  result = qword_27F1E8D70;
  if (!qword_27F1E8D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E25D944()
{
  sub_24E3433A8();
  if (v0 <= 0x3F)
  {
    sub_24E25D9D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E25D9D0()
{
  if (!qword_27F1E8D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E21E8);
    v0 = sub_24E347AE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E8D80);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI23ASCLockupBatchPresenterC0E5StateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_24E25DA54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 25))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_24E25DAA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_24E25DB0C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 24) & 1 | (a2 << 6);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    v2 = 0x80;
  }

  *(result + 24) = v2;
  return result;
}

uint64_t sub_24E25DB4C()
{
  sub_24E3433A8();
  OUTLINED_FUNCTION_0_161();
  sub_24E25DD74(v0, v1);

  return sub_24E347C58();
}

uint64_t sub_24E25DBC0()
{
  sub_24E348D18();
  sub_24E3433A8();
  sub_24E25DD74(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  sub_24E347C58();
  return sub_24E348D68();
}

uint64_t sub_24E25DC50()
{
  sub_24E348D18();
  sub_24E3433A8();
  OUTLINED_FUNCTION_0_161();
  sub_24E25DD74(v0, v1);
  sub_24E347C58();
  return sub_24E348D68();
}

id sub_24E25DD10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_24E347CB8();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithName_];

  return v4;
}

uint64_t sub_24E25DD74(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24E25DE64(uint64_t a1, uint64_t a2, char *a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (sub_24DFD8654() < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = 1 - v6;
  if (__OFSUB__(1, v6))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_24DFD8654();
  v9 = __OFADD__(v8, v7);
  v10 = v8 + v7;
  if (v9)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_24E05F670(v10, 1);

  sub_24E05EF84(a1, a2, 1, a3);
}

uint64_t sub_24E25DF68(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = result;
  v11 = *v6;
  result = a3(*v6);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v10))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v10 - a2;
  if (__OFSUB__(0, a2 - v10))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = a4(v11);
  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  a5(result, 1);

  return a6(v10, a2, 0);
}

uint64_t sub_24E25E03C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_24E05E930(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 8 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E21E8);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_24E130EB0((v9 + 8 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_24E25E128(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8D90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for LockupCacheRequest();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_24E1C6474(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9);
      sub_24E082608();
      sub_24E1C64D8(v9);
      sub_24DF8C95C(v5, &qword_27F1E8D90);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24E25E308(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 >> 6)
  {
    if (a4 >> 6 != 1)
    {
      return result;
    }
  }
}

uint64_t block_copy_helper_86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E25E394(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 >> 6)
  {
    if (a4 >> 6 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_24E25E3FC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E25E43C(uint64_t result, int a2, int a3)
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

uint64_t sub_24E25E488(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E25E4C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_125()
{

  return sub_24E348878();
}

uint64_t type metadata accessor for DetailData()
{
  result = qword_280BE0B68;
  if (!qword_280BE0B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E25E5E8()
{
  sub_24DF9E030(319, &qword_280BE0128);
  if (v0 <= 0x3F)
  {
    sub_24E025CD0(319, &qword_280BE0108, sub_24DFC2C38);
    if (v1 <= 0x3F)
    {
      sub_24DF9E030(319, &unk_280BE0138);
      if (v2 <= 0x3F)
      {
        sub_24DFC2AD4(319, &qword_280BE0100, &qword_27F1DF2F8);
        if (v3 <= 0x3F)
        {
          sub_24DFC2AD4(319, &qword_280BE0130, &qword_27F1DF158);
          if (v4 <= 0x3F)
          {
            sub_24E025CD0(319, &qword_280BE0650, MEMORY[0x277D21F70]);
            if (v5 <= 0x3F)
            {
              sub_24DF9E030(319, &qword_280BE02B8);
              if (v6 <= 0x3F)
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

_BYTE *storeEnumTagSinglePayload for DetailData.AttachmentStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetailData.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DetailData.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E25E9F8()
{
  result = qword_27F1E8D98;
  if (!qword_27F1E8D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8D98);
  }

  return result;
}

unint64_t sub_24E25EA54()
{
  result = qword_27F1E8DA0;
  if (!qword_27F1E8DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8DA0);
  }

  return result;
}

unint64_t sub_24E25EADC()
{
  result = qword_27F1E8DA8;
  if (!qword_27F1E8DA8)
  {
    type metadata accessor for DetailData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8DA8);
  }

  return result;
}

uint64_t sub_24E25EB48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return v5;
}

uint64_t sub_24E25EBB4(unint64_t a1)
{
  v2 = v1;
  v4 = sub_24E343F88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v21[-v9];
  sub_24E2AD940(a1, 0);
  if (a1 > 9)
  {
    type metadata accessor for GKOnboardingFlowAction(0);
    v22 = a1;
    result = sub_24E348C58();
    __break(1u);
    return result;
  }

  if (a1 == 4)
  {
    sub_24E343C58();
    v11 = sub_24E343F78();
    v20 = sub_24E348238();
    if (!os_log_type_enabled(v11, v20))
    {
      goto LABEL_7;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24DE53000, v11, v20, "SettingsContainerViewController.onboardingFlowFinished: The user signed out during onboarding.", v13, 2u);
  }

  else
  {
    sub_24E343C58();
    v11 = sub_24E343F78();
    v12 = sub_24E348238();
    if (!os_log_type_enabled(v11, v12))
    {
      v7 = v10;
      goto LABEL_7;
    }

    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = a1;
    _os_log_impl(&dword_24DE53000, v11, v12, "SettingsContainerViewController.onboardingFlowFinished: Onboarding flow finished with action %lu", v13, 0xCu);
    v7 = v10;
  }

  MEMORY[0x253040EE0](v13, -1, -1);
LABEL_7:

  (*(v5 + 8))(v7, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = [Strong navigationController];

    if (v16)
    {
      [v16 dismissViewControllerAnimated:1 completion:0];
    }
  }

  v17 = *(v2 + 40);
  v18 = *(v2 + 48);
  v22 = *(v2 + 32);
  v23 = v17;
  v24 = v18;
  v21[7] = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8DB0);
  return sub_24E346C68();
}

uint64_t sub_24E25EEB0()
{
  MEMORY[0x253040FB0](v0 + 16);

  return v0;
}

uint64_t sub_24E25EEF0()
{
  sub_24E25EEB0();

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

uint64_t sub_24E25EF48()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24E344E58();

  return v1;
}

uint64_t sub_24E25EFBC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24E344E68();
}

uint64_t sub_24E25F02C()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI43FriendsSuggestionsOnboardingInvitedContacts__contactIdentifiers;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8DD8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for FriendsSuggestionsOnboardingInvitedContacts()
{
  result = qword_27F1E8DC0;
  if (!qword_27F1E8DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E25F128()
{
  sub_24E25F1B8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24E25F1B8()
{
  if (!qword_27F1E8DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3CA8);
    v0 = sub_24E344E78();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E8DD0);
    }
  }
}

uint64_t sub_24E25F21C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8DD8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - v3;
  v5 = OBJC_IVAR____TtC12GameCenterUI43FriendsSuggestionsOnboardingInvitedContacts__contactIdentifiers;
  v7[1] = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3CA8);
  sub_24E344E28();
  (*(v2 + 32))(v0 + v5, v4, v1);
  return v0;
}

uint64_t sub_24E25F328@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E344DD8();
  *a1 = result;
  return result;
}

uint64_t sub_24E25F378(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E25F3B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E25F408()
{
  v0 = sub_24E347458();
  v1 = OUTLINED_FUNCTION_4_5(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7_1();
  v57 = v3 - v2;
  v4 = sub_24E347478();
  v5 = OUTLINED_FUNCTION_4_5(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v55 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  v9 = OUTLINED_FUNCTION_4_5(v8);
  MEMORY[0x28223BE20](v9);
  v56 = &v52[-v10];
  v11 = sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v54 = &v52[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v52[-v17];
  v19 = sub_24E347208();
  v20 = OUTLINED_FUNCTION_4_5(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_1();
  v59 = sub_24E347238();
  OUTLINED_FUNCTION_0_14();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_1();
  v26 = v25 - v24;
  v27 = sub_24E347CF8();
  v29 = v28;
  v30 = sub_24E347CF8();
  ActionMetrics.init(domain:eventType:)(v27, v29, v30, v31);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v58 = v26;
  sub_24E347228();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_24E367D20;
  v33 = sub_24E347CB8();
  v34 = GKGameCenterUIFrameworkBundle();
  v35 = GKGetLocalizedStringFromTableInBundle();

  v36 = sub_24E347CF8();
  v38 = v37;

  memset(v62, 0, sizeof(v62));
  v63 = -1;
  if (qword_27F1DDE48 != -1)
  {
    swift_once();
  }

  v53 = byte_27F20B8B0;
  v39 = v59;
  v61[3] = v59;
  v61[4] = MEMORY[0x277D21CB8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  (*(v22 + 16))(boxed_opaque_existential_1, v58, v39);
  sub_24E343398();
  (*(v13 + 16))(v54, v18, v11);
  sub_24DF9D4DC(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  sub_24E348918();
  (*(v13 + 8))(v18, v11);
  v41 = type metadata accessor for DetailData();
  *(v32 + 56) = v41;
  *(v32 + 64) = sub_24DF9D4DC(&qword_27F1DEE80, type metadata accessor for DetailData);
  v42 = __swift_allocate_boxed_opaque_existential_1((v32 + 32));
  *(v42 + 25) = 0u;
  v42[27] = 0;
  *(v42 + 23) = 0u;
  v43 = *(v41 + 56);
  v54 = v43;
  v44 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(&v43[v42], 1, 1, v44);
  v45 = v42 + *(v41 + 60);
  sub_24DF8BD34(v60, v42);
  *(v42 + 40) = 5;
  v42[6] = v36;
  v42[7] = v38;
  v42[9] = 0;
  v42[10] = 0;
  v42[8] = 0;
  sub_24DF8C8EC(v62, (v42 + 11));
  v42[20] = 0;
  v42[21] = 0;
  *(v42 + 176) = 0;
  *(v42 + 177) = v53;
  *v45 = 0;
  v45[8] = 0;

  sub_24DF8BDF0(v61, (v42 + 23));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369E30;
  strcpy((inited + 32), "impressionType");
  *(inited + 47) = -18;
  v47 = MEMORY[0x277D837D0];
  *(inited + 48) = 0x74656C63696863;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 72) = v47;
  *(inited + 80) = 0x6973736572706D69;
  v48 = MEMORY[0x277D83B88];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  *(inited + 120) = v48;
  *(inited + 128) = 0x657079546469;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = 0x636974617473;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v47;
  *(inited + 176) = 1701667182;
  *(inited + 216) = v47;
  *(inited + 184) = 0xE400000000000000;
  *(inited + 192) = v36;
  *(inited + 200) = v38;

  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v49 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v49);
  v50 = v56;
  sub_24E347488();
  sub_24DF8BE60(v60);
  sub_24DF8C95C(v62, &qword_27F1DEE88);
  sub_24DF8C95C(v61, &qword_27F1DEE90);
  __swift_storeEnumTagSinglePayload(v50, 0, 1, v44);
  sub_24DF8BEB4(v50, &v54[v42]);
  (*(v22 + 8))(v58, v59);
  return v32;
}

uint64_t sub_24E25FB4C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_authenticationPresenter);

    v3 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    sub_24E20E028(sub_24E25FCD4, v3);
  }

  return result;
}

void sub_24E25FC40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24E24F074();
  }
}

uint64_t sub_24E25FCDC(id *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
  v2 = sub_24E347AD8();
  v3 = [objc_opt_self() proxyForLocalPlayer];
  v4 = [v3 utilityServicePrivate];

  v5 = [*a1 identifier];
  if (!v5)
  {
    sub_24E347CF8();
    v5 = sub_24E347CB8();
  }

  v8[4] = sub_24E2600C4;
  v8[5] = v2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24E052CF0;
  v8[3] = &block_descriptor_87;
  v6 = _Block_copy(v8);

  [v4 denyContact:v5 handler:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();

  return v2;
}

void sub_24E25FE54(uint64_t a1)
{
  v2 = sub_24E347218();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_24E2600E4();
    v7 = swift_allocError();
    sub_24E347AB8();
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D21CA8], v2, v4);
    sub_24E347AC8();
    (*(v3 + 8))(v6, v2);
  }
}

id sub_24E25FFA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlackListCoreRecencyContactActionImplementation();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_24E25FFF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlackListCoreRecencyContactActionImplementation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24E260054()
{
  result = qword_27F1DFA70;
  if (!qword_27F1DFA70)
  {
    type metadata accessor for BlackListCoreRecencyContactAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DFA70);
  }

  return result;
}

uint64_t block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E2600E4()
{
  result = qword_27F1E8DE0;
  if (!qword_27F1E8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8DE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlackListCoreRecencyContactActionImplementation.BlackListCoreRecencyContactActionImplementationError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_24E2601E8()
{
  result = qword_27F1E8DE8;
  if (!qword_27F1E8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8DE8);
  }

  return result;
}

uint64_t type metadata accessor for ChallengeListAction()
{
  result = qword_27F1E8DF0;
  if (!qword_27F1E8DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_24E2602B0()
{
  OUTLINED_FUNCTION_34_13();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGameRecord:v1 leaderboard:v0];

  return v2;
}

id sub_24E260304()
{
  OUTLINED_FUNCTION_34_13();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGameRecord:v1 leaderboardSet:v0];

  return v2;
}

uint64_t sub_24E260358(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_24E347F08();
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = a4;
  v6(v7, a3, a4);
}

void sub_24E260410()
{
  v9 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v0 = sub_24E347CF8();
  v2 = v1;
  v3 = sub_24E347CF8();
  v5 = v4;
  v6 = sub_24E12BF48();
  sub_24E3357D8(v6);
  v8 = v7;

  sub_24E32BF38(v0, v2, v3, v5, v8, v9);
}

uint64_t sub_24E2604EC(char a1)
{
  v2 = v1;
  v4 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  if ((a1 & 1) != 0 || !*(v2 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_requiredDataPresenter))
  {
    sub_24E343C88();
    v18 = sub_24E343F78();
    v19 = sub_24E348238();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_41_2();
      *v20 = 0;
      _os_log_impl(&dword_24DE53000, v18, v19, "Dashboard: Fetching the feed data...", v20, 2u);
      OUTLINED_FUNCTION_22_4();
    }

    (*(v6 + 8))(v13, v4);
    sub_24E287BD0();
    if (!*(v2 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_playerId + 8))
    {
      v21 = sub_24E287BD0();
      v22 = [v21 internal];

      v23 = [v22 playerID];
      sub_24E347CF8();
    }

    v24 = *(v2 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_game);
    type metadata accessor for DashboardRequiredDataPresenter(0);
    OUTLINED_FUNCTION_1_30();
    v25 = v24;

    sub_24E1C74F8();
    result = sub_24E264B60(v26);
    if (*(v2 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_requiredDataPresenter))
    {

      sub_24E1C6D2C(3);
    }
  }

  else
  {
    sub_24E343C88();
    v14 = sub_24E343F78();
    v15 = sub_24E348238();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_41_2();
      *v16 = 0;
      _os_log_impl(&dword_24DE53000, v14, v15, "Dashboard: The feed data has already been fetched.", v16, 2u);
      OUTLINED_FUNCTION_22_4();
    }

    return (*(v6 + 8))(v10, v4);
  }

  return result;
}

void sub_24E2607D4()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  sub_24E287BD0();
  if (!*(v0 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_playerId + 8))
  {
    v2 = sub_24E287BD0();
    v3 = [v2 internal];

    v4 = [v3 playerID];
    sub_24E347CF8();
  }

  v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_game);
  type metadata accessor for DashboardRequiredDataPresenter(0);
  OUTLINED_FUNCTION_1_30();
  v6 = v5;

  sub_24E1C74F8();
  sub_24E264B60(v7);
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_requiredDataPresenter))
  {

    v8 = OUTLINED_FUNCTION_2_34();
    sub_24E1C6BA4(v8, v9);
    OUTLINED_FUNCTION_18();
  }

  else
  {
    OUTLINED_FUNCTION_18();
  }
}

void sub_24E260928()
{
  OUTLINED_FUNCTION_0_8();
  v0 = [objc_allocWithZone(MEMORY[0x277D0C060]) init];
  v1 = sub_24E347CB8();
  [v0 setBundleIdentifier_];

  v2 = [objc_allocWithZone(MEMORY[0x277D0C048]) initWithInternalRepresentation_];
  v3 = [objc_opt_self() local];
  v4 = [objc_opt_self() gameRecordForPlayer:v3 game:v2];

  OUTLINED_FUNCTION_1_19();
  sub_24E267464();
}

void sub_24E260A60(void *a1, void *a2, void *a3)
{
  if (a2)
  {
    OUTLINED_FUNCTION_21_2();
    v19 = v3;
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    OUTLINED_FUNCTION_21_2();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    sub_24DF88A8C(0, &qword_27F1E8E60);
    v9 = a2;
    v10 = sub_24E348298();
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v8;
    v11[4] = v7;
    v24 = sub_24E268EE0;
    v25 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_24E26731C;
    v23 = &block_descriptor_82_1;
    v12 = _Block_copy(&aBlock);
    v13 = v9;

    [v10 perform_];
    _Block_release(v12);
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = v13;
    v14[4] = a3;
    v14[5] = v7;
    v14[6] = v8;
    v14[7] = v19;
    v24 = sub_24E268EEC;
    v25 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_24E00B24C;
    v23 = &block_descriptor_88_0;
    v15 = _Block_copy(&aBlock);
    v16 = v13;

    v17 = a1;
    v18 = a3;

    [v10 notifyOnMainQueueWithBlock_];
    _Block_release(v15);
  }

  else
  {
    sub_24E267464();
  }
}

void sub_24E260D0C()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_27_5();
  v4 = sub_24E343EE8();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  if (qword_27F1DD988 != -1)
  {
    OUTLINED_FUNCTION_5_32();
  }

  v11 = sub_24E343F18();
  __swift_project_value_buffer(v11, qword_27F20B110);
  sub_24E343ED8();
  v12 = sub_24E343EF8();
  v13 = sub_24E348408();
  if (sub_24E348688())
  {
    v14 = OUTLINED_FUNCTION_41_2();
    *v14 = 0;
    v15 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v12, v13, v15, "presentAchievements", "", v14, 2u);
    OUTLINED_FUNCTION_22_4();
  }

  (*(v6 + 8))(v10, v4);
  if (!v3)
  {
    v28 = v1;
LABEL_22:
    v34 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v16 = v3;
  sub_24E268DE0(v16, &selRef_gameBundleID);
  if (!v17 || (, sub_24E268DE0(v16, &selRef_playerID), !v18))
  {

    v27 = v1;
    goto LABEL_16;
  }

  v19 = [objc_allocWithZone(MEMORY[0x277D0C060]) init];
  sub_24E268DE0(v16, &selRef_gameBundleID);
  if (!v20)
  {
    __break(1u);
    goto LABEL_28;
  }

  v21 = sub_24E347CB8();

  [v19 setBundleIdentifier_];

  v22 = [objc_allocWithZone(MEMORY[0x277D0C1C8]) init];
  sub_24E268DE0(v16, &selRef_playerID);
  if (!v23)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v24 = sub_24E347CB8();

  [v22 setPlayerID_];

  sub_24E268DE0(v16, &selRef_playerAlias);
  if (v25)
  {
    v26 = sub_24E347CB8();
  }

  else
  {
    v26 = 0;
  }

  [v22 setAlias_];

  v29 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
  v30 = [objc_allocWithZone(MEMORY[0x277D0C048]) initWithInternalRepresentation_];
  v27 = [objc_opt_self() gameRecordForPlayer:v29 game:v30];

LABEL_16:
  v28 = v27;
  v31 = sub_24E268DE0(v16, &selRef_achievementID);
  if (!v32)
  {
    goto LABEL_22;
  }

  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {

    goto LABEL_22;
  }

  v40[0] = v31;
  v40[1] = v32;
  sub_24DF90C4C();
  v34 = sub_24E3486D8();

LABEL_23:
  LOBYTE(v40[0]) = 3;
  if (v34[2] == 1)
  {
    v35 = v34[4];
    v36 = v34[5];
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  type metadata accessor for GameLayerAchievementsPresenter();
  swift_allocObject();
  GameLayerAchievementsPresenter.init(gameRecord:entryPoint:achievementIdsToHighlight:achievementIdToPresent:)(v28, v40, v34, v35, v36);
  LOBYTE(v40[0]) = 3;
  v37 = objc_allocWithZone(type metadata accessor for GameLayerAchievementsViewController());

  GameLayerAchievementsViewController.init(presenter:theme:objectGraph:)();
  v39 = v38;
  *(v38 + OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_isDeeplinked) = 1;
  sub_24E0119C8(v38, 0, 0);

  OUTLINED_FUNCTION_18();
}

void sub_24E2611A8()
{
  OUTLINED_FUNCTION_32();
  v26 = v0;
  v2 = v1;
  sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v4 = sub_24E343EE8();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  if (qword_27F1DD988 != -1)
  {
    OUTLINED_FUNCTION_5_32();
  }

  v11 = sub_24E343F18();
  __swift_project_value_buffer(v11, qword_27F20B110);
  sub_24E343ED8();
  v12 = sub_24E343EF8();
  v13 = sub_24E348408();
  if (sub_24E348688())
  {
    v14 = OUTLINED_FUNCTION_41_2();
    *v14 = 0;
    v15 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v12, v13, v15, "presentChallenges", "", v14, 2u);
    OUTLINED_FUNCTION_22_4();
  }

  (*(v6 + 8))(v10, v4);
  v16 = [objc_allocWithZone(GKChallengeListViewController) initWithGameRecord_];
  if (v16)
  {
    v17 = v16;
    [v16 setIsDeeplinked_];
    [v17 setShouldShowPlayForChallenge_];
    sub_24E0119C8(v17, 0, 0);
  }

  else
  {
    sub_24E343C98();
    v18 = v2;
    v19 = sub_24E343F78();
    v20 = sub_24E348258();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v2;
      v23 = v18;
      _os_log_impl(&dword_24DE53000, v19, v20, "error encountered while initiating GKChallengeListViewController with game record: %@", v21, 0xCu);
      sub_24DF8BFF4(v22, &unk_27F1DF730);
      OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_22_4();
    }

    v24 = OUTLINED_FUNCTION_2_34();
    v25(v24);
  }

  OUTLINED_FUNCTION_18();
}

void sub_24E2614D4()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v162 = v2;
  v184 = v3;
  v163 = v4;
  v5 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v10 - v9);
  v174 = type metadata accessor for PlayerProfileAction();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_23(v13 - v12);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  OUTLINED_FUNCTION_0_14();
  v170 = v14;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  v18 = OUTLINED_FUNCTION_4_5(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_1();
  v175 = (v19 - v20);
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_11(&v157 - v22);
  v166 = type metadata accessor for AllFriendsListFlowAction();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_23(v25 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  OUTLINED_FUNCTION_4_5(v26);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_15_3();
  v29 = OUTLINED_FUNCTION_5_11(v28);
  v165 = type metadata accessor for DashboardRequiredDataPresenter.Data(v29);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v32 - v31);
  v33 = sub_24E347458();
  v34 = OUTLINED_FUNCTION_4_5(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v36 - v35);
  v178 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v177 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v40 - v39);
  v185 = sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v183 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_12_1();
  *&v180 = v43 - v44;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_23(&v157 - v46);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8E70);
  OUTLINED_FUNCTION_0_14();
  v159 = v47;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C60);
  OUTLINED_FUNCTION_4_5(v50);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_5_11(v52);
  v182 = sub_24E347638();
  OUTLINED_FUNCTION_0_14();
  v179 = v53;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_7_1();
  v57 = (v56 - v55);
  v58 = sub_24E343EE8();
  OUTLINED_FUNCTION_0_14();
  v60 = v59;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_7_1();
  v64 = v63 - v62;
  if (qword_27F1DD988 != -1)
  {
    OUTLINED_FUNCTION_5_32();
  }

  v65 = sub_24E343F18();
  __swift_project_value_buffer(v65, qword_27F20B110);
  sub_24E343ED8();
  v66 = sub_24E343EF8();
  v67 = sub_24E348408();
  if (sub_24E348688())
  {
    v68 = OUTLINED_FUNCTION_41_2();
    v158 = v7;
    v69 = v57;
    v70 = v68;
    *v68 = 0;
    v71 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v66, v67, v71, "presentPlayerProfile", "", v70, 2u);
    v57 = v69;
    v1 = v0;
    v7 = v158;
    OUTLINED_FUNCTION_22_4();
  }

  (*(v60 + 8))(v64, v58);
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph))
  {

    sub_24E05F70C();
    sub_24E3476A8();
    sub_24E347328();
    v157 = v1;
    if (v187)
    {
      OUTLINED_FUNCTION_39_6();
      sub_24E347688();
      sub_24E347118();
      v72 = OUTLINED_FUNCTION_49_6();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72, v73, v74);
      v76 = v185;
      if (EnumTagSinglePayload)
      {

        sub_24DF8BFF4(v5, &qword_27F1E6C60);
      }

      else
      {
        v81 = sub_24E347098();
        sub_24DF8BFF4(v5, &qword_27F1E6C60);
        if (v81)
        {
          *&v187 = v81;
          OUTLINED_FUNCTION_39_6();
          sub_24E3475F8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E24C8);
          sub_24E347618();

          (*(v159 + 8))(v5, v160);
        }

        else
        {
        }
      }
    }

    else
    {
      v76 = v185;
    }

    v82 = v183;
    if (v184)
    {
      v83 = v184;
      if ([v83 state] == 5)
      {
        v184 = v57;
        v181 = v83;
        sub_24E268DE0(v83, &selRef_playerID);
        if (v84)
        {
          OUTLINED_FUNCTION_38_9();
        }

        else
        {
          v115 = [objc_opt_self() local];
          v116 = [v115 internal];

          v117 = [v116 playerID];
          sub_24E347CF8();
          OUTLINED_FUNCTION_38_9();
        }

        v118 = [v181 gameRecord];
        type metadata accessor for PlayerProfileViewController();
        v189 = 0;
        v187 = 0u;
        v188 = 0u;
        v186 = 0;
        OUTLINED_FUNCTION_19_1();
        sub_24E0CA66C();
        v175 = v119;
        sub_24E0119C8(v119, v162 & 1, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
        inited = swift_initStackObject();
        v180 = xmmword_24E367D20;
        *(inited + 16) = xmmword_24E367D20;
        *(inited + 32) = 0x79546E6F69746361;
        *(inited + 40) = 0xEA00000000006570;
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 48) = 0x657461676976616ELL;
        *(inited + 56) = 0xE800000000000000;
        v121 = sub_24E347C28();
        if (qword_27F1DD808 != -1)
        {
          OUTLINED_FUNCTION_1_43();
        }

        v122 = sub_24E347058();
        __swift_project_value_buffer(v122, qword_27F20AE00);
        v123 = OUTLINED_FUNCTION_6_82();
        v124 = v176;
        MEMORY[0x25303DB90](v123, 0xE700000000000000, 0x6E6F74747562, 0xE600000000000000, v121);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
        OUTLINED_FUNCTION_37_8();
        v127 = v126 & ~v125;
        v128 = swift_allocObject();
        v129 = OUTLINED_FUNCTION_45_6(v128, &v190);
        v131 = v178;
        v132(v130 + v127, v124, v178, v129);
        sub_24E347448();
        v133 = v173;
        sub_24E3471D8();
        MEMORY[0x6574616769766176](v124, v131);
        OUTLINED_FUNCTION_5_16();
        v134 = v164;
        sub_24DFA9240();
        v135 = v165;
        v136 = __swift_getEnumTagSinglePayload(v134, 1, v165);
        v137 = v167;
        v138 = v168;
        if (v136 == 1)
        {
          sub_24DF8BFF4(v134, &qword_27F1DF018);
          type metadata accessor for AllFriendsDataSource();
          OUTLINED_FUNCTION_1_30();
          sub_24E0E1134();
          OUTLINED_FUNCTION_27_5();
          type metadata accessor for FriendRequestsDataSource();
          OUTLINED_FUNCTION_1_30();
          OUTLINED_FUNCTION_1_2();

          v139 = sub_24E0E0748();
          type metadata accessor for FriendSuggestionsDataSource();
          OUTLINED_FUNCTION_1_30();
          OUTLINED_FUNCTION_72();

          v140 = sub_24E0DC5F0();
          type metadata accessor for FriendSuggestionInvitationStateManager();
          OUTLINED_FUNCTION_1_30();

          v141 = sub_24E155B14(1);

          *&v180 = v134;
          sub_24E0E1220(v142);
          v178 = v139;
          sub_24E0DE5D0();
          sub_24E0DCC54();
        }

        else
        {
          v143 = v161;
          sub_24E26900C();
          v144 = *(v143 + v135[15]);
          v140 = *(v143 + v135[16]);
          v141 = *(v143 + v135[17]);
          *&v180 = *(v143 + v135[14]);
          swift_retain_n();
          v178 = v144;
          swift_retain_n();
          swift_retain_n();

          sub_24E268FB8();
        }

        v145 = v166;
        v146 = [v181 deepLinkDestination];
        v147 = v183;
        v148 = v185;
        (*(v183 + 16))(v138 + *(v145 + 36), v133, v185);
        *v138 = v146;
        *(v138 + 8) = 0;
        v149 = v178;
        *(v138 + 16) = v180;
        *(v138 + 24) = v149;
        *(v138 + 32) = v140;
        *(v138 + 40) = v141;
        v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
        sub_24E347328();
        if (__swift_getEnumTagSinglePayload(v137, 1, v150) != 1)
        {
          *(&v188 + 1) = v145;
          v189 = sub_24E268F18(&qword_27F1E3240, type metadata accessor for AllFriendsListFlowAction);
          __swift_allocate_boxed_opaque_existential_1(&v187);
          sub_24E268F60();
          OUTLINED_FUNCTION_39_6();
          v152 = *(v151 + 16);
          v177 = v140;
          v153 = v137;
          v154 = v169;
          v152(v169, v184, v182);
          v155 = v170;
          v156 = v171;
          (*(v170 + 104))(v154, *MEMORY[0x277D21E10], v171);
          sub_24E3473B8();

          (*(v155 + 8))(v154, v156);
          OUTLINED_FUNCTION_10_56();
          sub_24E268FB8();
          (*(v147 + 8))(v173, v185);
          (*(v138 + 8))(v184, v182);
          __swift_destroy_boxed_opaque_existential_1(&v187);
          (*(*(v150 - 8) + 8))(v153, v150);
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_10_56();
        sub_24E268FB8();
        (*(v147 + 8))(v173, v148);
        (*(v179 + 8))(v184, v182);
        v108 = v137;
        goto LABEL_38;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
    v85 = swift_initStackObject();
    v173 = xmmword_24E367D20;
    *(v85 + 16) = xmmword_24E367D20;
    *(v85 + 32) = 0x79546E6F69746361;
    *(v85 + 40) = 0xEA00000000006570;
    *(v85 + 72) = MEMORY[0x277D837D0];
    *(v85 + 48) = 0x657461676976616ELL;
    *(v85 + 56) = 0xE800000000000000;
    v86 = sub_24E347C28();
    if (qword_27F1DD808 != -1)
    {
      OUTLINED_FUNCTION_1_43();
    }

    v87 = sub_24E347058();
    v88 = __swift_project_value_buffer(v87, qword_27F20AE00);
    v89 = v176;
    MEMORY[0x25303DB90](0x656C69666F7270, 0xE700000000000000, 0x6E6F74747562, 0xE600000000000000, v86, v88);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
    OUTLINED_FUNCTION_37_8();
    v92 = v91 & ~v90;
    v93 = swift_allocObject();
    v94 = OUTLINED_FUNCTION_45_6(v93, &v188);
    v96 = v95 + v92;
    v97 = v178;
    v98(v96, v89, v178, v94);
    sub_24E347448();
    v99 = v180;
    sub_24E3471D8();
    v100 = 0x6574616769766176;
    MEMORY[0x6574616769766176](v89, v97);
    v101 = v181;
    v102 = v174;
    if (v184 && (sub_24E268DE0(v184, &selRef_playerID), v103))
    {
      OUTLINED_FUNCTION_38_9();
    }

    else
    {
      v93 = [objc_opt_self() localPlayer];
      v97 = [(__n128 *)v93 internal];

      v100 = v57;
      v104 = [v97 playerID];

      sub_24E347CF8();
      OUTLINED_FUNCTION_38_9();

      v57 = v100;
    }

    (*(v82 + 16))(&v101[*(v102 + 24)], v99, v76);
    *v101 = v93;
    *(v101 + 1) = v97;
    v101[16] = 0;
    v101[*(v102 + 28)] = 1;
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
    OUTLINED_FUNCTION_39_6();
    sub_24E347328();
    v106 = OUTLINED_FUNCTION_49_6();
    if (__swift_getEnumTagSinglePayload(v106, v107, v105) == 1)
    {

      OUTLINED_FUNCTION_12_43();
      sub_24E268FB8();
      (*(v82 + 8))(v99, v76);
      (*(v179 + 8))(v57, v182);
      v108 = v100;
LABEL_38:
      sub_24DF8BFF4(v108, &unk_27F1EAC90);
      goto LABEL_40;
    }

    *(&v188 + 1) = v102;
    v189 = sub_24E268F18(&qword_27F1E2E48, type metadata accessor for PlayerProfileAction);
    __swift_allocate_boxed_opaque_existential_1(&v187);
    sub_24E268F60();
    v109 = v179;
    v110 = v169;
    v111 = v182;
    (*(v179 + 16))(v169, v57, v182);
    OUTLINED_FUNCTION_39_6();
    v113 = *(v112 + 104);
    v184 = v57;
    v114 = v171;
    v113(v110);
    sub_24E3473B8();

    (*(v100 + 8))(v110, v114);
    OUTLINED_FUNCTION_12_43();
    sub_24E268FB8();
    (*(v82 + 8))(v180, v185);
    (*(v109 + 8))(v184, v111);
    __swift_destroy_boxed_opaque_existential_1(&v187);
    (*(*(v105 - 8) + 8))(v100, v105);
  }

  else
  {
    v77 = v172;
    sub_24E343C98();
    v78 = sub_24E343F78();
    v79 = sub_24E348238();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = OUTLINED_FUNCTION_41_2();
      *v80 = 0;
      _os_log_impl(&dword_24DE53000, v78, v79, "object graph was nil couldn't perform the navigate action to player profile/friends list.", v80, 2u);
      OUTLINED_FUNCTION_22_4();
    }

    (*(v7 + 8))(v77, v5);
  }

LABEL_40:
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E262988()
{
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_requiredDataPresenter))
  {
    OUTLINED_FUNCTION_34_13();

    OUTLINED_FUNCTION_2_34();
    sub_24E1C6FE0();
  }

  return result;
}

uint64_t sub_24E2629F0(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI18BaseSplitPresenter_displayInSplitView) == 1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_primarySections);
    v4 = sub_24DFD8654(v3);

    v6 = 0;
    while (v4 != v6)
    {
      v7 = v6;
      if ((v3 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x25303F560](v6, v3);
        v8 = result;
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_87;
        }

        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = 0x6979616C50776F6ELL;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_86;
      }

      v10 = 0xEA0000000000676ELL;
      v11 = 0x6979616C50776F6ELL;
      switch(*(v8 + 16))
      {
        case 1:
          v11 = OUTLINED_FUNCTION_19_28();
          v10 = 0xEF676E6979616C50;
          break;
        case 2:
          v11 = OUTLINED_FUNCTION_6_18();
          v10 = 0xEC00000064656546;
          break;
        case 3:
          v11 = 0xD000000000000011;
          v10 = 0x800000024E39CC10;
          break;
        case 4:
          v10 = 0xE700000000000000;
          v11 = OUTLINED_FUNCTION_18_37();
          break;
        case 5:
          v10 = 0xE700000000000000;
          v11 = OUTLINED_FUNCTION_6_82();
          break;
        default:
          break;
      }

      v12 = 0xEA0000000000676ELL;
      switch(a1)
      {
        case 1:
          OUTLINED_FUNCTION_16_37();
          v12 = 0xEF676E6979616C50;
          break;
        case 2:
          OUTLINED_FUNCTION_5_19();
          v12 = 0xEC00000064656546;
          break;
        case 3:
          v9 = 0xD000000000000011;
          v12 = 0x800000024E39CC10;
          break;
        case 4:
          v12 = 0xE700000000000000;
          OUTLINED_FUNCTION_15_34();
          break;
        case 5:
          v12 = 0xE700000000000000;
          OUTLINED_FUNCTION_13_48();
          break;
        default:
          break;
      }

      if (v11 == v9 && v10 == v12)
      {

        goto LABEL_83;
      }

      v14 = sub_24E348C08();

      v6 = v7 + 1;
      if (v14)
      {
        goto LABEL_83;
      }
    }

    v30 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_secondarySections;
    OUTLINED_FUNCTION_5_16();
    v31 = *(v1 + v30);
    v32 = sub_24DFD8654(v31);

    v33 = 0;
    v34 = a1;
    while (v32 != v33)
    {
      v7 = v33;
      if ((v31 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x25303F560](v33, v31);
        v35 = result;
      }

      else
      {
        if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_90;
        }

        v35 = *(v31 + 8 * v33 + 32);
      }

      v36 = 0x6979616C50776F6ELL;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_89;
      }

      v37 = 0xEA0000000000676ELL;
      v38 = 0x6979616C50776F6ELL;
      switch(*(v35 + 16))
      {
        case 1:
          OUTLINED_FUNCTION_19_28();
          OUTLINED_FUNCTION_44_7();
          break;
        case 2:
          v38 = OUTLINED_FUNCTION_6_18();
          v37 = 0xEC00000064656546;
          break;
        case 3:
          v38 = 0xD000000000000011;
          v37 = 0x800000024E39CC10;
          break;
        case 4:
          v37 = 0xE700000000000000;
          v38 = OUTLINED_FUNCTION_18_37();
          break;
        case 5:
          v37 = 0xE700000000000000;
          v38 = OUTLINED_FUNCTION_6_82();
          break;
        default:
          break;
      }

      v39 = 0xEA0000000000676ELL;
      switch(v34)
      {
        case 1:
          OUTLINED_FUNCTION_16_37();
          OUTLINED_FUNCTION_56_4();
          break;
        case 2:
          OUTLINED_FUNCTION_5_19();
          v39 = 0xEC00000064656546;
          break;
        case 3:
          v36 = 0xD000000000000011;
          v39 = 0x800000024E39CC10;
          break;
        case 4:
          v39 = 0xE700000000000000;
          OUTLINED_FUNCTION_15_34();
          break;
        case 5:
          v39 = 0xE700000000000000;
          OUTLINED_FUNCTION_13_48();
          break;
        default:
          break;
      }

      if (v38 == v36 && v37 == v39)
      {
        goto LABEL_82;
      }

      v41 = sub_24E348C08();

      v33 = v7 + 1;
      if (v41)
      {
        goto LABEL_83;
      }
    }
  }

  else
  {
    v15 = 0x6979616C50776F6ELL;
    v16 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_sections;
    OUTLINED_FUNCTION_5_16();
    v17 = *(v1 + v16);
    v18 = sub_24DFD8654(v17);

    v19 = 0;
    v20 = a1;
    while (v18 != v19)
    {
      v7 = v19;
      if ((v17 & 0xC000000000000001) != 0)
      {
        v29 = OUTLINED_FUNCTION_19_1();
        result = MEMORY[0x25303F560](v29);
        v21 = result;
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_88;
        }

        v21 = *(v17 + 8 * v19 + 32);
      }

      if (__OFADD__(v7, 1))
      {
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        return result;
      }

      v22 = 0xEA0000000000676ELL;
      v23 = v15;
      switch(*(v21 + 16))
      {
        case 1:
          OUTLINED_FUNCTION_19_28();
          OUTLINED_FUNCTION_44_7();
          break;
        case 2:
          v23 = OUTLINED_FUNCTION_6_18();
          v22 = 0xEC00000064656546;
          break;
        case 3:
          v23 = 0xD000000000000011;
          v22 = 0x800000024E39CC10;
          break;
        case 4:
          v22 = 0xE700000000000000;
          v23 = OUTLINED_FUNCTION_18_37();
          break;
        case 5:
          v22 = 0xE700000000000000;
          v23 = OUTLINED_FUNCTION_6_82();
          break;
        default:
          break;
      }

      v24 = v15;
      v25 = v15;
      v26 = 0xEA0000000000676ELL;
      switch(v20)
      {
        case 1:
          OUTLINED_FUNCTION_16_37();
          OUTLINED_FUNCTION_56_4();
          break;
        case 2:
          OUTLINED_FUNCTION_5_19();
          v26 = 0xEC00000064656546;
          break;
        case 3:
          v25 = 0xD000000000000011;
          v26 = 0x800000024E39CC10;
          break;
        case 4:
          v26 = 0xE700000000000000;
          OUTLINED_FUNCTION_15_34();
          break;
        case 5:
          v26 = 0xE700000000000000;
          OUTLINED_FUNCTION_13_48();
          break;
        default:
          break;
      }

      if (v23 == v25 && v22 == v26)
      {
LABEL_82:

LABEL_83:

        return v7;
      }

      v28 = sub_24E348C08();

      v19 = v7 + 1;
      v15 = v24;
      if (v28)
      {
        goto LABEL_83;
      }
    }
  }

  return -1;
}

void *sub_24E263168()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_gameRecord);
  v2 = v1;
  return v1;
}

void sub_24E263294()
{
  OUTLINED_FUNCTION_32();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1720);
  v2 = OUTLINED_FUNCTION_4_5(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_1();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = v53 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v53 - v10;
  v57 = type metadata accessor for Shelf(0);
  OUTLINED_FUNCTION_0_14();
  v55 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  v56 = v14 - v15;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v53[2] = v53 - v18;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v54 = v53 - v21;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v22);
  if (v0[OBJC_IVAR____TtC12GameCenterUI18BaseSplitPresenter_displayInSplitView] == 1)
  {
    v53[0] = v24;
    v53[1] = v53 - v23;
    v26 = *&v0[OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_primarySections];
    v27 = sub_24DFD8654(v26);
    v28 = v0;

    v29 = 0;
    v56 = MEMORY[0x277D84F90];
    while (v27 != v29)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25303F560](v29, v26);
      }

      else
      {
        if (v29 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }
      }

      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      sub_24E266B80(v11);

      if (__swift_getEnumTagSinglePayload(v11, 1, v57) == 1)
      {
        sub_24DF8BFF4(v11, &qword_27F1E1720);
        ++v29;
      }

      else
      {
        sub_24E26900C();
        sub_24E26900C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_5_10();
          sub_24E076D5C();
          v56 = v31;
        }

        v30 = *(v56 + 16);
        if (v30 >= *(v56 + 24) >> 1)
        {
          sub_24E076D5C();
          v56 = v32;
        }

        *(v56 + 16) = v30 + 1;
        OUTLINED_FUNCTION_23_18();
        OUTLINED_FUNCTION_3_106();
        sub_24E26900C();
        ++v29;
      }
    }

    v41 = OUTLINED_FUNCTION_1_19();
    sub_24E19A4A0(v41);

    v42 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_secondarySections;
    OUTLINED_FUNCTION_5_16();
    v43 = *&v28[v42];
    v44 = sub_24DFD8654(v43);
    v45 = v28;
    OUTLINED_FUNCTION_72();

    v46 = 0;
    while (v44 != v46)
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25303F560](v46, v43);
      }

      else
      {
        if (v46 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }
      }

      if (__OFADD__(v46, 1))
      {
        goto LABEL_51;
      }

      sub_24E266B80(v8);

      v47 = OUTLINED_FUNCTION_49_6();
      if (__swift_getEnumTagSinglePayload(v47, v48, v57) == 1)
      {
        sub_24DF8BFF4(v8, &qword_27F1E1720);
        ++v46;
      }

      else
      {
        OUTLINED_FUNCTION_11_44();
        sub_24E26900C();
        sub_24E26900C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_5_10();
          sub_24E076D5C();
        }

        OUTLINED_FUNCTION_34_12();
        if (v39)
        {
          OUTLINED_FUNCTION_57_4();
          v49 = v50;
        }

        *(v49 + 16) = v46;
        OUTLINED_FUNCTION_23_18();
        OUTLINED_FUNCTION_3_106();
        sub_24E26900C();
        ++v46;
      }
    }

    v52 = OUTLINED_FUNCTION_1_19();
    sub_24E22BF4C(v52);
LABEL_46:

    OUTLINED_FUNCTION_18();
  }

  else
  {
    v54 = v25;
    v33 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_sections;
    OUTLINED_FUNCTION_5_16();
    v34 = *&v0[v33];
    v35 = sub_24DFD8654(v34);
    v36 = v0;
    OUTLINED_FUNCTION_72();

    v37 = 0;
    while (1)
    {
      if (v35 == v37)
      {

        v51 = OUTLINED_FUNCTION_1_19();
        sub_24E19A4A0(v51);
        goto LABEL_46;
      }

      if ((v34 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25303F560](v37, v34);
      }

      else
      {
        if (v37 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }
      }

      if (__OFADD__(v37, 1))
      {
        break;
      }

      sub_24E266B80(v5);

      if (__swift_getEnumTagSinglePayload(v5, 1, v57) == 1)
      {
        sub_24DF8BFF4(v5, &qword_27F1E1720);
        ++v37;
      }

      else
      {
        OUTLINED_FUNCTION_11_44();
        sub_24E26900C();
        sub_24E26900C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_5_10();
          sub_24E076D5C();
        }

        OUTLINED_FUNCTION_34_12();
        if (v39)
        {
          OUTLINED_FUNCTION_57_4();
          v38 = v40;
        }

        *(v38 + 16) = v37;
        OUTLINED_FUNCTION_23_18();
        OUTLINED_FUNCTION_3_106();
        sub_24E26900C();
        ++v37;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }
}

uint64_t sub_24E263B8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_scrollToIndexPath;
  swift_beginAccess();
  sub_24E268C30(a1, v1 + v3);
  return swift_endAccess();
}

void sub_24E263C58()
{
  v1 = v0;
  v2 = [objc_opt_self() shared];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 inboxContactsOnly];

    v5 = v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_requiredData;
    if (v4)
    {
      swift_beginAccess();
      v6 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
      if (!__swift_getEnumTagSinglePayload(v5, 1, v6))
      {
        v7 = *(v5 + *(v6 + 48));
        if (v7)
        {
          v14 = MEMORY[0x277D84F90];
          v8 = sub_24DFD8654(v7);

          for (i = 0; ; ++i)
          {
            if (v8 == i)
            {

              sub_24DFD8654(v14);

              goto LABEL_17;
            }

            if ((v7 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x25303F560](i, v7);
            }

            else
            {
              if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v10 = *(v7 + 8 * i + 32);
            }

            v11 = v10;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if ([v10 isFriendInvitationInContacts])
            {
              sub_24E348A48();
              sub_24E348A78();
              sub_24E348A88();
              sub_24E348A58();
            }

            else
            {
            }
          }

          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }
    }

    else
    {
      swift_beginAccess();
      v12 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
      if (!__swift_getEnumTagSinglePayload(v5, 1, v12))
      {
        v13 = *(v5 + *(v12 + 48));
        if (v13)
        {
          sub_24DFD8654(v13);
        }
      }
    }

LABEL_17:
    sub_24E346F78();
    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_24E263E78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_requiredData;
  swift_beginAccess();
  sub_24E041B5C(a1, v1 + v3);
  swift_endAccess();
  sub_24E263C58();
  return sub_24DF8BFF4(a1, &qword_27F1DF018);
}

uint64_t sub_24E263EF4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1698);
  MEMORY[0x28223BE20](v2 - 8);
  v28 = &v29[-v3 - 8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29[-v5 - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29[-v11 - 8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v29[-v14 - 8];
  v16 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  v17 = 1;
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  sub_24E263E78(v15);
  v18 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_requiredDataPresenter;
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_requiredDataPresenter))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16B8);
    sub_24E041D60(&qword_27F1E16C0, &qword_27F1E16B8);

    sub_24E347198();
    sub_24E3471A8();

    __swift_destroy_boxed_opaque_existential_1(v29);
    v17 = 0;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16C8);
  v20 = 1;
  __swift_storeEnumTagSinglePayload(v12, v17, 1, v19);
  sub_24DF8BFF4(v12, &qword_27F1E16B0);
  if (*(v1 + v18))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16D0);
    sub_24E041D60(&qword_27F1E16D8, &qword_27F1E16D0);

    sub_24E347198();
    sub_24E3471A8();

    __swift_destroy_boxed_opaque_existential_1(v29);
    v20 = 0;
  }

  v21 = v28;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16E0);
  v23 = 1;
  __swift_storeEnumTagSinglePayload(v9, v20, 1, v22);
  sub_24DF8BFF4(v9, &qword_27F1E16A8);
  if (*(v1 + v18))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16E8);
    sub_24E041D60(&qword_27F1E16F0, &qword_27F1E16E8);

    sub_24E347198();
    sub_24E3471A8();

    __swift_destroy_boxed_opaque_existential_1(v29);
    v23 = 0;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16F8);
  v25 = 1;
  __swift_storeEnumTagSinglePayload(v6, v23, 1, v24);
  sub_24DF8BFF4(v6, &qword_27F1E16A0);
  if (*(v1 + v18))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1700);
    sub_24E041D60(&qword_27F1E1708, &qword_27F1E1700);

    sub_24E347198();
    sub_24E3471A8();

    __swift_destroy_boxed_opaque_existential_1(v29);
    v25 = 0;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1710);
  __swift_storeEnumTagSinglePayload(v21, v25, 1, v26);
  return sub_24DF8BFF4(v21, &qword_27F1E1698);
}

uint64_t (*sub_24E2644F4(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E268CC4;
}

uint64_t sub_24E264558()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v5 - v2;
  sub_24DFA9240();
  sub_24E263E78(v3);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) = 0;
  return sub_24E265640(0);
}

uint64_t (*sub_24E264614(void *a1))(uint64_t a1)
{
  v1 = sub_24E2644F4(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E041AC0;
}

uint64_t (*sub_24E26466C(void *a1))(char a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E268CA0;
}

uint64_t sub_24E2646D0(char a1)
{
  *(v1 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) = 0;
  if (a1)
  {
    sub_24E041A6C();
    v3 = swift_allocError();
    *v4 = a1;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7[2] = v5;

    sub_24E346F78();

    sub_24E024148(v3, sub_24E2690C0);
  }

  else
  {
    LOBYTE(v7[0]) = *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_launchContext);
    result = sub_24E287D40(v7);
    if ((result & 1) != 0 && (*(v1 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_hasShownAuthenticationFlow) & 1) == 0)
    {

      return sub_24E265640(1);
    }
  }

  return result;
}

uint64_t (*sub_24E26481C(void *a1))(unsigned __int8 *a1)
{
  v1 = sub_24E26466C(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E041A40;
}

uint64_t (*sub_24E264874(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E268C0C;
}

uint64_t sub_24E2648D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  type metadata accessor for DashboardRequiredDataPresenter.Update(0);
  sub_24E268F60();
  v7 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  sub_24E263E78(v6);
  result = sub_24E2659F8();
  v9 = v0 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_scrollToActivityInfo;
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_scrollToActivityInfo + 8))
  {
    if ((*(v9 + 24) & 1) == 0)
    {
      v10 = *(v9 + 16);
      v11 = sub_24E2629F0(2);
      MEMORY[0x25303A010](v10, v11);
      v12 = sub_24E343518();
      __swift_storeEnumTagSinglePayload(v3, 0, 1, v12);
      v13 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_scrollToIndexPath;
      swift_beginAccess();
      sub_24E268C30(v3, v0 + v13);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t (*sub_24E264A7C(void *a1))(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E268BE8;
}

uint64_t sub_24E264AE0(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_gameRecord);
  *(v2 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_gameRecord) = a1;
  v4 = a1;

  sub_24E346F78();

  return sub_24E264B60(0);
}

uint64_t sub_24E264B60(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_requiredDataPresenter) = a1;

  sub_24E263EF4();
}

uint64_t (*sub_24E264BBC(void *a1))(void *a1)
{
  v1 = sub_24E264A7C(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24DFE9AF8;
}

void sub_24E264C14()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C40);
  OUTLINED_FUNCTION_0_14();
  v42 = v9;
  v43 = v8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_3();
  v41 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1760);
  OUTLINED_FUNCTION_0_14();
  v38 = v13;
  v39 = v12;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  v17 = *v7;
  v18 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_request;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_request) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_shouldUseLargeTitle) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_gameRecord) = 0;
  v19 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_primarySections) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_secondarySections) = v19;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_game) = 0;
  v20 = sub_24E343518();
  OUTLINED_FUNCTION_58_4(v20);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_didScrollToIndexPath) = 0;
  v21 = v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_scrollToActivityInfo;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *v21 = 0;
  *(v21 + 24) = 0;
  v22 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_onFriendRequestsCountChanged;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1C80);
  OUTLINED_FUNCTION_1_30();
  *(v1 + v22) = sub_24E346F88();
  *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_sections) = v19;
  v23 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  OUTLINED_FUNCTION_58_4(v23);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_requiredDataPresenter) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_launchContext) = v17;
  v24 = *(v1 + v18);
  *(v1 + v18) = v5;
  v25 = v5;

  *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_pageMetricsPresenter) = v3;
  if (v5)
  {
    v26 = v25;

    v27 = sub_24E268CE8(v26);
    if (v28)
    {
      *v21 = v27;
      *(v21 + 8) = v28;
      *(v21 + 16) = 0;
      *(v21 + 24) = 1;
    }
  }

  else
  {
  }

  v37 = v25;
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  v29 = *(qword_27F20B960 + OBJC_IVAR____TtC12GameCenterUI9GKMetrics_refAppFieldProvider);
  v44[0] = v17;

  v30 = sub_24E12BD60();
  v31 = (v29 + OBJC_IVAR____TtC12GameCenterUI22GKRefAppFieldsProvider_refApp);
  *v31 = v30;
  v31[1] = v32;

  v33 = sub_24E195BF0(0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1768);
  sub_24E041D60(&qword_27F1E1770, &qword_27F1E1768);
  v34 = v33;

  sub_24E347198();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v44);
  (*(v38 + 8))(v16, v39);
  v35 = OUTLINED_FUNCTION_19_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v35);
  sub_24E041D60(&unk_27F1E1C50, &unk_27F1E6CC0);

  sub_24E347198();
  v36 = v41;
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v44);
  (*(v42 + 8))(v36, v43);
  OUTLINED_FUNCTION_18();
}

void (*sub_24E2650F0(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E269088;
}

void sub_24E265154()
{
  v1 = v0;
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v8 = [v7 _gkIsAnyOverlayUI];

  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_request);
    if (v9)
    {
      v10 = [v9 gameRecord];
      if (v10)
      {
        v11 = v10;
        sub_24E343C98();
        v12 = sub_24E343F78();
        v13 = sub_24E348238();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_24DE53000, v12, v13, "Notifying game authenticated player changed...", v14, 2u);
          MEMORY[0x253040EE0](v14, -1, -1);
        }

        (*(v3 + 8))(v5, v2);
        v15 = [objc_opt_self() proxyForLocalPlayer];
        v16 = [v15 accountServicePrivate];

        v17 = [v11 bundleIdentifier];
        if (!v17)
        {
          sub_24E347CF8();
          v17 = sub_24E347CB8();
        }

        sub_24E0CFF20([v6 mainBundle]);
        if (v18)
        {
          v19 = sub_24E347CB8();
        }

        else
        {
          v19 = 0;
        }

        [v16 notifyClient:v17 playerAuthenticatedFromClient:v19];

        swift_unknownObjectRelease();
      }
    }
  }

  *(v1 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) = 0;
  sub_24E265640(0);
}

uint64_t (*sub_24E265400(void *a1))(void *a1)
{
  v1 = sub_24E2650F0(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E0418F4;
}

uint64_t (*sub_24E265458(void *a1))(__int128 *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E269064;
}

uint64_t sub_24E2654BC(__int128 *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;
  return sub_24E2654FC(&v3);
}

uint64_t sub_24E2654FC(uint64_t result)
{
  v1 = *result;
  if (*result != 1)
  {
    v2 = *(result + 8);
    if (v1 == 2)
    {

      sub_24E346F78();

      return sub_24E264B60(0);
    }

    else
    {
      v3 = v1;
      sub_24DF88BEC(v2);
      sub_24DE73FA0(v2);
      swift_allocObject();
      swift_unknownObjectWeakInit();

      v4 = v1;

      sub_24E346F78();

      sub_24E024148(v1, sub_24E26906C);
    }
  }

  return result;
}

void sub_24E265640(char a1)
{
  v2 = v1;
  v4 = sub_24E343F88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating;
  if ((*(v1 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) & 1) == 0)
  {
    v9 = [objc_opt_self() local];
    v10 = sub_24E287BD0();
    [v9 updateFromLocalPlayer_];

    *(v2 + v8) = 1;
    v27[1] = 0;
    v27[2] = 0;
    v27[0] = 1;

    sub_24E346F78();

    if (sub_24E287CE4())
    {
      sub_24E20EA5C();
      return;
    }

    v11 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_launchContext;
    LOBYTE(v27[0]) = *(v2 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_launchContext);
    if (sub_24E287D40(v27))
    {
      *(v2 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_hasShownAuthenticationFlow) = 1;
      sub_24E264B60(0);
      LOBYTE(v27[0]) = *(v2 + v11);
      v12 = sub_24E12BD60();
      sub_24E20E1BC(5, v12, v13);
LABEL_6:

      return;
    }

    if (sub_24E287C88() & 1) != 0 && (!*(v2 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_requiredDataPresenter) || (a1))
    {
      v14 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_request;
      v15 = *(v2 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_request);
      if (!v15 || ((v16 = [v15 state], v16 != -1) ? (v17 = v16 == 4) : (v17 = 1), v17))
      {
        sub_24E2604EC(0);
      }

      else
      {
        sub_24E343C88();
        v18 = sub_24E343F78();
        v19 = sub_24E348238();
        if (os_log_type_enabled(v18, v19))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_24DE53000, v18, v19, "Dashboard: Not going to fetch the feed data because there is a deeplink request.", v21, 2u);
          MEMORY[0x253040EE0](v21, -1, -1);
        }

        (*(v5 + 8))(v7, v4);
        if (!*(v2 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_gameRecord))
        {
          v22 = *(v2 + v14);
          if (v22)
          {
            v23 = [v22 gameRecord];
            if (v23)
            {
              v24 = v23;
              v25 = [v23 bundleIdentifier];
              sub_24E347CF8();

              sub_24E2607D4();
              goto LABEL_6;
            }
          }
        }
      }
    }

    else
    {
      sub_24E2659F8();
    }
  }
}

void sub_24E2659A8()
{
  OUTLINED_FUNCTION_5_16();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24E265640(1);
  }
}

uint64_t sub_24E2659F8()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_game;
  v4 = *(v0 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_game);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = [v5 bundleIdentifier];
  v7 = sub_24E347CF8();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = [v5 bundleIdentifier];
  v12 = sub_24E347CF8();
  v14 = v13;

  if (v12 == sub_24E347CF8() && v14 == v15)
  {

    goto LABEL_12;
  }

  v17 = sub_24E348C08();

  if (v17)
  {
LABEL_10:

LABEL_12:
    type metadata accessor for ContinuePlayingSection();
    *(swift_allocObject() + 16) = 4353;

    MEMORY[0x25303EA30](v18);
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24E347F48();
    }

    sub_24E347F88();
    v19 = v36;
    v20 = GKIsXRUIIdiom();

    *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_shouldUseLargeTitle) = v20 ^ 1;
    goto LABEL_15;
  }

  v32 = [objc_opt_self() local];
  v33 = [objc_opt_self() gameRecordForPlayer:v32 game:v5];

  if (([v33 supportsAchievements] & 1) == 0 && (objc_msgSend(v33, sel_supportsLeaderboards) & 1) == 0 && !objc_msgSend(v33, sel_supportsChallenges))
  {

    goto LABEL_10;
  }

  type metadata accessor for NowPlayingSection();
  swift_allocObject();
  sub_24E160C2C(0, 16, v5, 0);
  v34 = v5;

  MEMORY[0x25303EA30](v35);
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24E347F48();
  }

  sub_24E347F88();
  v19 = v36;

  *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_shouldUseLargeTitle) = 1;
LABEL_15:
  v21 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_sections;
  swift_beginAccess();
  *(v1 + v21) = v19;

  *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_primarySections) = *(v1 + v21);

  v22 = *(v1 + v3);
  type metadata accessor for ActivityFeedDashboardSection();
  swift_allocObject();
  sub_24E0EE5FC(2, 18, v22);
  swift_beginAccess();
  v23 = v22;
  v24 = swift_retain_n();
  MEMORY[0x25303EA30](v24);
  sub_24E12448C(*((*(v1 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_24E347F88();
  swift_endAccess();
  v25 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_secondarySections;
  swift_beginAccess();
  *(v1 + v25) = v2;

  MEMORY[0x25303EA30](v26);
  sub_24E12448C(*((*(v1 + v25) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_24E347F88();
  swift_endAccess();
  v27 = *(v1 + v3);
  type metadata accessor for ActivityFeedErrorDashboardSection();
  swift_allocObject();
  sub_24E0EE5FC(3, 18, v27);
  swift_beginAccess();
  v28 = v27;
  v29 = swift_retain_n();
  MEMORY[0x25303EA30](v29);
  sub_24E12448C(*((*(v1 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_24E347F88();
  swift_endAccess();
  v30 = swift_beginAccess();
  MEMORY[0x25303EA30](v30);
  sub_24E12448C(*((*(v1 + v25) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_24E347F88();
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) = 0;
  sub_24E263294();

  sub_24E346F78();
}

uint64_t sub_24E265FCC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v21[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C60);
  OUTLINED_FUNCTION_4_5(v8);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v21[-v10];
  sub_24E287A3C(a1);
  v12 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_request;
  v13 = *&v2[OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_request];
  if (v13)
  {
    if ([v13 state] == 4)
    {
      LOBYTE(v13) = 1;
    }

    else
    {
      v13 = *&v2[v12];
      if (v13)
      {
        LOBYTE(v13) = [v13 state] == -1;
      }
    }
  }

  v21[15] = v2[OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_launchContext];
  sub_24E12C030(v13, v11);
  v14 = sub_24E347118();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
  sub_24E347698();
  sub_24E348098();
  v15 = OUTLINED_FUNCTION_49_6();
  __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v2;
  v18[5] = a1;
  v19 = v2;

  sub_24DFC8700(0, 0, v7, &unk_24E388A68, v18);
}

uint64_t sub_24E26619C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  v5 = sub_24DF88A8C(0, &unk_27F1DFCF0);
  v6 = swift_task_alloc();
  *(v4 + 32) = v6;
  *v6 = v4;
  v6[1] = sub_24E266260;

  return MEMORY[0x28217F210](v4 + 16, v5, v5);
}

uint64_t sub_24E266260()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v2 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24E266364()
{
  OUTLINED_FUNCTION_9_7();
  v1 = v0[2];
  v2 = v0[3];
  v3 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_game;
  v0[5] = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_game;
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;

  if (*(v2 + v3))
  {
    sub_24E265640(0);
    OUTLINED_FUNCTION_12_5();

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_8_72(v7);

    return sub_24E26665C();
  }
}

uint64_t sub_24E26642C()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  *(v1 + 56) = v0;

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24E266520()
{
  OUTLINED_FUNCTION_9_7();
  v1 = v0[5];
  v2 = v0[3];
  v3 = *(v2 + v1);
  *(v2 + v1) = v0[7];

  sub_24E265640(0);
  OUTLINED_FUNCTION_12_5();

  return v4();
}

uint64_t sub_24E266594()
{
  OUTLINED_FUNCTION_9_7();
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_game;
  v0[5] = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_game;
  v3 = *(v1 + v2);
  *(v1 + v2) = 0;

  if (*(v1 + v2))
  {
    sub_24E265640(0);
    OUTLINED_FUNCTION_12_5();

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_8_72(v6);

    return sub_24E26665C();
  }
}

uint64_t sub_24E26667C()
{
  OUTLINED_FUNCTION_9_7();
  v1 = v0[3];
  v2 = 1 << *(v1 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_launchContext);
  if ((v2 & 0x187) != 0)
  {
    v3 = [objc_opt_self() currentGame];
  }

  else
  {
    v3 = 0;
    if ((v2 & 0x1A60) != 0)
    {
      v4 = swift_task_alloc();
      v0[4] = v4;
      *(v4 + 16) = v1;
      v5 = swift_task_alloc();
      v0[5] = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1728);
      *v5 = v0;
      v5[1] = sub_24E2667FC;
      OUTLINED_FUNCTION_35_3();

      return MEMORY[0x2822007B8](v6, v7, v8, v9, v10, v11, v4, v12);
    }
  }

  v13 = v0[1];

  return v13(v3);
}

uint64_t sub_24E2667FC()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24E26696C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1730);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = objc_opt_self();
  v7 = sub_24E287BD0();
  v8 = [v6 proxyForPlayer_];

  v9 = [v8 utilityServicePrivate];
  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v5, v2);
  aBlock[4] = sub_24E268E40;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E0D5E98;
  aBlock[3] = &block_descriptor_88;
  v12 = _Block_copy(aBlock);

  [v9 currentNonGameCenterForegroundGameHandler_];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

uint64_t sub_24E266B80@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  swift_beginAccess();
  sub_24DFA9240();
  sub_24E316520(v5, v1, a1);
  return sub_24DF8BFF4(v5, &qword_27F1DF018);
}

void sub_24E266CB4(void (*a1)(void), uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24E268DE0(a3, &selRef_leaderboardSetID);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    v15[2] = a4;
    v15[3] = v12;
    v15[4] = v13;
    v15[5] = a1;
    v15[6] = a2;
    v34 = sub_24E268F08;
    v35 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_24E267110;
    v33 = &block_descriptor_103_0;
    v16 = _Block_copy(&aBlock);

    [v14 loadLeaderboardSetsWithCompletionHandler_];
LABEL_5:
    _Block_release(v16);
    return;
  }

  v17 = sub_24E268DE0(a3, &selRef_leaderboardID);
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    v21 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCD8);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_24E367D20;
    *(v22 + 32) = v19;
    *(v22 + 40) = v20;
    v23 = swift_allocObject();
    v23[2] = a5;
    v23[3] = a3;
    v23[4] = a1;
    v23[5] = a2;
    v34 = sub_24E268EFC;
    v35 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_24E267270;
    v33 = &block_descriptor_97_0;
    v16 = _Block_copy(&aBlock);

    v24 = a3;

    sub_24E268D64(v22, v16, v21);
    goto LABEL_5;
  }

  v25 = [a3 leaderboard];
  if (v25)
  {

    v26 = [a3 leaderboard];
    swift_beginAccess();
    v27 = *(a5 + 16);
    *(a5 + 16) = v26;

    swift_beginAccess();
    v28 = *(a5 + 16);
    if (v28)
    {
      v29 = v28;
      [v29 setPlayerScope_];
    }
  }

  a1();
}

void sub_24E266FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v6 = a6;
  v7 = a3;
  if (!a1)
  {
    v14 = 0;
LABEL_20:
    swift_beginAccess();
    v19 = *(v7 + 16);
    *(v7 + 16) = v14;

    v6();
    return;
  }

  v11 = sub_24DFD8654(a1);
  for (i = 0; ; ++i)
  {
    if (v11 == i)
    {
      v14 = 0;
LABEL_19:
      v6 = a6;
      v7 = a3;
      goto LABEL_20;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x25303F560](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v13 = *(a1 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v15 = sub_24E268DE0(v13, &selRef_identifier);
    if (!v16)
    {
      goto LABEL_14;
    }

    if (v15 == a4 && v16 == a5)
    {

      goto LABEL_19;
    }

    v18 = sub_24E348C08();

    if (v18)
    {
      goto LABEL_19;
    }

LABEL_14:
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_24E267124(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  if (a1 && sub_24DFD8654(a1) >= 1)
  {
    sub_24DFFA844(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x25303F560](0, a1);
    }

    else
    {
      v9 = *(a1 + 32);
    }

    v10 = v9;
    swift_beginAccess();
    v11 = *(a3 + 16);
    *(a3 + 16) = v10;

    swift_beginAccess();
    v12 = *(a3 + 16);
    if (v12)
    {
      v13 = v12;
      [v13 setTimeScope_];
    }

    swift_beginAccess();
    v14 = *(a3 + 16);
    if (v14)
    {
      v15 = v14;
      [v15 setPlayerScope_];
    }
  }

  return a5();
}

uint64_t sub_24E267284(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24DF88A8C(0, a4);
    sub_24E347F08();
  }

  v6 = a3;
  v7 = OUTLINED_FUNCTION_2_34();
  v5(v7);
}

uint64_t sub_24E26731C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_24DFA0D08, v4);
}

void sub_24E2673B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v7 = *(a4 + 16);
  swift_beginAccess();
  v8 = *(a5 + 16);
  v9 = v7;
  sub_24E267464();
}

void sub_24E267464()
{
  OUTLINED_FUNCTION_32();
  v92 = v1;
  v3 = v2;
  v84 = v4;
  v86 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_27_5();
  sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v88 = v9;
  v90 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v12 = v11 - v10;
  v13 = sub_24E343EE8();
  OUTLINED_FUNCTION_0_14();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_1();
  v19 = v18 - v17;
  if (qword_27F1DD988 != -1)
  {
    OUTLINED_FUNCTION_5_32();
  }

  v20 = sub_24E343F18();
  __swift_project_value_buffer(v20, qword_27F20B110);
  sub_24E343ED8();
  v21 = sub_24E343EF8();
  v22 = sub_24E348408();
  if (sub_24E348688())
  {
    v83 = v0;
    v23 = v3;
    v24 = v12;
    v25 = v7;
    v26 = OUTLINED_FUNCTION_41_2();
    *v26 = 0;
    v27 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v21, v22, v27, "presentLeaderboards", "", v26, 2u);
    v7 = v25;
    v12 = v24;
    v3 = v23;
    v0 = v83;
    OUTLINED_FUNCTION_22_4();
  }

  (*(v15 + 8))(v19, v13);
  v28 = [v0 navigationController];
  OUTLINED_FUNCTION_21_2();
  v29 = swift_allocObject();
  if (!v28)
  {
    OUTLINED_FUNCTION_21_2();
    swift_deallocUninitializedObject();
    sub_24E343C98();
    v39 = v0;
    v40 = sub_24E343F78();
    v41 = sub_24E348258();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412546;
      *(v42 + 4) = v39;
      *(v42 + 12) = 2112;
      *(v42 + 14) = 0;
      *v43 = v39;
      v43[1] = 0;
      v44 = v39;
      _os_log_impl(&dword_24DE53000, v40, v41, "presentLeaderboards: Unable to find view controller stack for navigation controller:\nviewController: %@\nnavigationController: %@", v42, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DF730);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_22_4();
    }

    (*(v88 + 8))(v12, v90);
    goto LABEL_19;
  }

  v30 = [v28 viewControllers];
  sub_24DF88A8C(0, &qword_27F1E05B0);
  v31 = sub_24E347F08();

  *(v29 + 16) = v31;
  v32 = sub_24DF88A8C(0, &qword_27F1E1748);
  v33 = v3;
  v34 = v7;
  v35 = sub_24E260304();
  [v35 setIsDeeplinked_];
  if (v3)
  {
    v36 = v35;
    MEMORY[0x25303EA30]();
    sub_24E12448C(*((*(v29 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_24E347F88();
    v37 = v28;

    v38 = sub_24E347EE8();

    [v37 setViewControllers:v38 animated:v92 & 1];

LABEL_19:
    OUTLINED_FUNCTION_18();
    return;
  }

  v45 = v86;
  if (v86)
  {
    goto LABEL_12;
  }

  if ([v34 numberOfLeaderboards] == 1)
  {
    v53 = objc_opt_self();
    v54 = swift_allocObject();
    *(v54 + 16) = v34;
    *(v54 + 24) = v84;
    *(v54 + 32) = v29;
    *(v54 + 40) = v28;
    *(v54 + 48) = v92 & 1;
    v93[4] = sub_24E268ED0;
    v93[5] = v54;
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 1107296256;
    v93[2] = sub_24E260358;
    v93[3] = &block_descriptor_70;
    v55 = _Block_copy(v93);
    v56 = v84;

    v57 = v34;
    v58 = v28;

    [v53 loadLeaderboardsForGame:v57 withCompletionHandler:v55];

    _Block_release(v55);

    goto LABEL_19;
  }

  if (!v84)
  {
LABEL_12:
    if ([v34 numberOfLeaderboards] >= 2)
    {
      v46 = v35;
      MEMORY[0x25303EA30]();
      sub_24E12448C(*((*(v29 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      v32 = (v29 + 16);
      v45 = v86;
      sub_24E347F88();
    }

    if (v45)
    {
      sub_24DF88A8C(0, &qword_27F1E1750);
      v47 = v34;
      v48 = v45;
      v49 = sub_24E2602B0();
      if (v84)
      {
        [v49 setInitialTimeScope_];
        [v49 setInitialPlayerScope_];
      }

      [v49 setIsDeeplinked_];
      MEMORY[0x25303EA30]([v49 setInitialPlayerScope_]);
      sub_24E12448C(*((*(v29 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      v32 = (v29 + 16);
      sub_24E347F88();
    }

    v50 = v28;
    OUTLINED_FUNCTION_1_2();

    v51 = sub_24E347EE8();

    OUTLINED_FUNCTION_59_2(v52, sel_setViewControllers_animated_);

    goto LABEL_19;
  }

  v59 = v84;
  sub_24E268DE0(v59, &selRef_gameBundleID);
  if (!v60 || (, sub_24E268DE0(v59, &selRef_playerID), !v61) || (, sub_24E268DE0(v59, &selRef_leaderboardID), !v62))
  {

LABEL_33:
    v45 = 0;
    goto LABEL_12;
  }

  v32 = v62;
  if (sub_24E347DD8() <= 0)
  {

    goto LABEL_33;
  }

  v63 = [objc_allocWithZone(MEMORY[0x277D0C060]) init];
  sub_24E268DE0(v59, &selRef_gameBundleID);
  if (!v64)
  {
    __break(1u);
    goto LABEL_38;
  }

  v65 = sub_24E347CB8();

  [v63 setBundleIdentifier_];
  v89 = v63;

  v66 = [objc_allocWithZone(MEMORY[0x277D0C1C8]) init];
  sub_24E268DE0(v59, &selRef_playerID);
  if (!v67)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v68 = sub_24E347CB8();

  v87 = v66;
  [v66 setPlayerID_];

  v69 = [objc_allocWithZone(MEMORY[0x277D0C118]) init];
  v70 = sub_24E347CB8();
  [v69 setBaseLeaderboardID_];

  v71 = sub_24E347CB8();
  v85 = v69;
  [v69 setIdentifier_];

  sub_24E268DE0(v59, &selRef_leaderboardTitle);
  if (v72)
  {

    sub_24E347CB8();
    OUTLINED_FUNCTION_1_2();

    [v69 setTitle_];

    v73 = [objc_allocWithZone(MEMORY[0x277D0C0A0]) initWithInternalRepresentation_];
    v74 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
    v75 = [objc_allocWithZone(MEMORY[0x277D0C048]) initWithInternalRepresentation_];
    v91 = [objc_opt_self() gameRecordForPlayer:v74 game:v75];

    if (v73)
    {
      sub_24DF88A8C(0, &qword_27F1E1750);
      v76 = v34;
      v77 = v73;
      v78 = sub_24E2602B0();
      [v78 setInitialTimeScope_];
      [v78 setInitialPlayerScope_];
      [v78 setIsDeeplinked_];
      v79 = v78;
      MEMORY[0x25303EA30]();
      sub_24E12448C(*((*(v29 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_24E347F88();
      v80 = v28;
      OUTLINED_FUNCTION_1_2();

      v81 = sub_24E347EE8();

      OUTLINED_FUNCTION_59_2(v82, sel_setViewControllers_animated_);
    }

    else
    {
    }

    goto LABEL_19;
  }

LABEL_39:
  __break(1u);
}

void sub_24E268028(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, char a8)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      sub_24DFB4104(a1 + 32, v19);
      sub_24DF88A8C(0, &qword_27F1E1758);
      if (swift_dynamicCast())
      {
        sub_24DF88A8C(0, &qword_27F1E1750);
        v13 = a4;
        v14 = v18;
        v15 = sub_24E2602B0();
        if (a5)
        {
          [v15 setInitialTimeScope_];
          [v15 setInitialPlayerScope_];
        }

        [v15 setIsDeeplinked_];
        swift_beginAccess();
        v16 = v15;
        MEMORY[0x25303EA30]();
        sub_24E12448C(*((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_24E347F88();
        swift_endAccess();
        if (a7)
        {
          sub_24DF88A8C(0, &qword_27F1E05B0);

          v17 = sub_24E347EE8();

          [a7 setViewControllers:v17 animated:a8 & 1];
        }
      }
    }
  }
}

uint64_t sub_24E268524(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  sub_24E347CF8();
  v7 = v6;
  v8 = a1;
  v9 = OUTLINED_FUNCTION_72();
  a4(v9, v7);
}

uint64_t sub_24E2685D8()
{

  sub_24DF8BFF4(v0 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_scrollToIndexPath, &unk_27F1E6C80);

  sub_24DF8BFF4(v0 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_requiredData, &qword_27F1DF018);
}

uint64_t type metadata accessor for DashboardPresenter()
{
  result = qword_27F1E8E40;
  if (!qword_27F1E8E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E268840()
{
  sub_24E2689A0(319, &qword_27F1E8E50, MEMORY[0x277CC9AF8]);
  if (v0 <= 0x3F)
  {
    sub_24E2689A0(319, &qword_27F1DF008, type metadata accessor for DashboardRequiredDataPresenter.Data);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24E2689A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24E348698();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for DashboardPresenter.UpdateType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E268AD4()
{
  result = qword_27F1E8E58;
  if (!qword_27F1E8E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8E58);
  }

  return result;
}

uint64_t sub_24E268B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24DFB3184;

  return sub_24E26619C(a1, v4, v5, v6);
}

uint64_t sub_24E268C30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E268CE8(void *a1)
{
  v2 = [a1 activityIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_24E347CF8();

  return v3;
}

void sub_24E268D64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_24E347EE8();

  [a3 loadLeaderboardsWithIDs:v5 completionHandler:a2];
}

uint64_t sub_24E268DE0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_24E347CF8();
    OUTLINED_FUNCTION_38_9();
  }

  return OUTLINED_FUNCTION_19_1();
}

void sub_24E268E40(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1730);
  OUTLINED_FUNCTION_4_5(v2);

  sub_24E127AC0(a1);
}

uint64_t block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E268F18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E268F60()
{
  OUTLINED_FUNCTION_0_8();
  v1(0);
  OUTLINED_FUNCTION_5_2();
  v2 = OUTLINED_FUNCTION_19_1();
  v3(v2);
  return v0;
}

uint64_t sub_24E268FB8()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2(v1);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_24E26900C()
{
  OUTLINED_FUNCTION_0_8();
  v1(0);
  OUTLINED_FUNCTION_5_2();
  v2 = OUTLINED_FUNCTION_19_1();
  v3(v2);
  return v0;
}

__n128 OUTLINED_FUNCTION_45_6@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a2 - 256);
  a1[1] = result;
  return result;
}

void OUTLINED_FUNCTION_57_4()
{

  sub_24E076D5C();
}

uint64_t OUTLINED_FUNCTION_58_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

id OUTLINED_FUNCTION_59_2(uint64_t a1, const char *a2)
{
  v6 = *(v4 - 132) & 1;

  return [v2 a2];
}

uint64_t sub_24E2692BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24E347218();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &aBlock[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
  v12 = sub_24E347AD8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = [objc_opt_self() challengeForGame:a1 andPlayer:a2 withAchievement:a3];
    objc_allocWithZone(GKChallengePlayerPickerViewController);
    v16 = v15;
    v17 = sub_24E26A47C(v15, 0);
    if (v17)
    {
      v18 = v17;
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = a4;
      v33 = sub_24E26A550;
      v34 = v19;
      OUTLINED_FUNCTION_0_162();
      v30 = 1107296256;
      v31 = sub_24E0D5E98;
      v32 = &block_descriptor_89;
      v20 = _Block_copy(aBlock);
      v21 = v18;

      [v21 setInviteFriendHandler_];
      _Block_release(v20);
      if (GKIsXRUIIdiom())
      {
        v22 = 1;
      }

      else
      {
        v25 = [v14 traitCollection];
        v26 = [v25 userInterfaceIdiom];

        if (v26 == 1)
        {
LABEL_10:
          v33 = sub_24E26A570;
          v34 = v12;
          OUTLINED_FUNCTION_0_162();
          v30 = 1107296256;
          v31 = sub_24E00B24C;
          v32 = &block_descriptor_7_2;
          v27 = _Block_copy(aBlock);

          [v14 presentViewController:v21 animated:1 completion:v27];
          _Block_release(v27);

          return v12;
        }

        v22 = 5;
      }

      [v21 setModalPresentationStyle_];
      goto LABEL_10;
    }

    sub_24E26A4FC();
    v23 = swift_allocError();
    *v24 = 1;
    sub_24E347AB8();
  }

  else
  {
    (*(v9 + 104))(v11, *MEMORY[0x277D21CA8], v8);
    sub_24E347AC8();
    (*(v9 + 8))(v11, v8);
  }

  return v12;
}

uint64_t sub_24E26963C(void *a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  *&v64 = a2;
  v4 = sub_24E347458();
  MEMORY[0x28223BE20](v4 - 8);
  v59[1] = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24E347088();
  v59[0] = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFA60);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v59 - v17;
  v60 = type metadata accessor for AddFriendsAction();
  MEMORY[0x28223BE20](v60);
  v20 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v59 - v22;
  v24 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v24);
  sub_24E348068();
  v25 = a1;
  v26 = sub_24E348058();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = a1;
  sub_24DFC8700(0, 0, v23, &unk_24E388B28, v27);

  if (a1)
  {
    v29 = objc_opt_self();
    v30 = v25;
    v31 = [v29 localPlayer];
    sub_24E283414(v30, v69);
    v32 = sub_24E347208();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v32);
    v33 = v64;
    v34 = v64;
    sub_24E2835B0(v31, v69, v18, v33, v20);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
    sub_24E347328();
    if (__swift_getEnumTagSinglePayload(v15, 1, v35) == 1)
    {
      sub_24E26A674(v20);

      return sub_24E0AA504(v15);
    }

    v67 = v60;
    v68 = sub_24E26A62C(&qword_27F1DFA68, type metadata accessor for AddFriendsAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
    sub_24E26A6D0(v20, boxed_opaque_existential_1);
    v48 = v62;
    v49 = v61;
    v50 = v63;
    (*(v62 + 104))(v61, *MEMORY[0x277D21E18], v63);
    sub_24E3473B8();

    (*(v48 + 8))(v49, v50);
    sub_24E26A674(v20);
  }

  else
  {
    v36 = v64;
    v37 = v59[0];
    v38 = v6;
    v67 = &type metadata for GKFeatureFlags;
    v68 = sub_24DFA0CB4();
    LOBYTE(v66[0]) = 15;
    v39 = sub_24E3435A8();
    __swift_destroy_boxed_opaque_existential_1(v66);
    if (v39)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
      inited = swift_initStackObject();
      v64 = xmmword_24E367D20;
      *(inited + 16) = xmmword_24E367D20;
      v41 = MEMORY[0x277D837D0];
      *(inited + 32) = 0x79546E6F69746361;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 72) = v41;
      *(inited + 48) = 0x657461676976616ELL;
      *(inited + 56) = 0xE800000000000000;
      v42 = sub_24E347C28();
      if (qword_27F1DD808 != -1)
      {
        swift_once();
      }

      v43 = sub_24E347058();
      v44 = __swift_project_value_buffer(v43, qword_27F20AE00);
      MEMORY[0x25303DB90](0x7246657469766E49, 0xED000073646E6569, 0x6E6F74747562, 0xE600000000000000, v42, v44);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
      v45 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = v64;
      (*(v37 + 16))(v46 + v45, v8, v38);
      sub_24E347448();
      v67 = type metadata accessor for InviteFriendsFlowAction();
      v68 = sub_24E26A62C(&qword_27F1E0E30, type metadata accessor for InviteFriendsFlowAction);
      __swift_allocate_boxed_opaque_existential_1(v66);
      sub_24E3471D8();
      (*(v37 + 8))(v8, v38);
    }

    else
    {
      v51 = [objc_opt_self() localPlayer];
      memset(v69, 0, sizeof(v69));
      v70 = 1;
      v52 = sub_24E347208();
      __swift_storeEnumTagSinglePayload(v18, 1, 1, v52);
      v67 = v60;
      v68 = sub_24E26A62C(&qword_27F1DFA68, type metadata accessor for AddFriendsAction);
      v53 = __swift_allocate_boxed_opaque_existential_1(v66);
      v54 = v36;
      sub_24E2835B0(v51, v69, v18, v36, v53);
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
    v15 = v12;
    sub_24E347328();
    if (__swift_getEnumTagSinglePayload(v12, 1, v35) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v66);
      return sub_24E0AA504(v15);
    }

    v56 = v62;
    v57 = v61;
    v58 = v63;
    (*(v62 + 104))(v61, *MEMORY[0x277D21E18], v63);
    sub_24E3473B8();

    (*(v56 + 8))(v57, v58);
  }

  __swift_destroy_boxed_opaque_existential_1(v66);
  return (*(*(v35 - 8) + 8))(v15, v35);
}

uint64_t sub_24E269F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFCC0);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_24E347638();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  sub_24E348068();
  v4[17] = sub_24E348058();
  v8 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E26A0F8, v8, v7);
}

uint64_t sub_24E26A0F8()
{

  sub_24E347628();
  sub_24E3477D8();
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v16 = *(v0 + 104);
  sub_24E32EA08();
  v7 = sub_24E3477C8();
  v8 = MEMORY[0x277D221C0];
  *(v0 + 56) = v7;
  *(v0 + 64) = v8;
  sub_24E3475D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0);
  sub_24E3475B8();
  (*(v3 + 8))(v4, v6);

  v9 = *(v2 + 8);
  v9(v1, v16);
  if (v5)
  {
    v10 = *(v0 + 72);
    sub_24E283414(v10, v0 + 16);

    if (*(v0 + 48))
    {

      v11 = 1;
    }

    else
    {

      v11 = 0;
    }
  }

  else
  {
    v11 = 2;
  }

  v12 = *(v0 + 128);
  v13 = *(v0 + 104);
  sub_24E32F4E0(v11, 0x676E656C6C616863, 0xE900000000000065, 0x6553646E65697266, 0xEC0000007463656CLL, v12);
  v9(v12, v13);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_24E26A334()
{
  v0 = sub_24E347218();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D21CA8], v0, v2);
  sub_24E347AC8();
  return (*(v1 + 8))(v4, v0);
}

id sub_24E26A47C(void *a1, uint64_t a2)
{
  if (a2)
  {
    sub_24DF95978();
    v4 = sub_24E347EE8();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithChallenge:a1 initiallySelectedPlayers:v4];

  return v5;
}

unint64_t sub_24E26A4FC()
{
  result = qword_27F1E8E78;
  if (!qword_27F1E8E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8E78);
  }

  return result;
}

uint64_t block_copy_helper_89(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E26A578(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24DF8CD84;

  return sub_24E269F90(a1, v4, v5, v6);
}

uint64_t sub_24E26A62C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E26A674(uint64_t a1)
{
  v2 = type metadata accessor for AddFriendsAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E26A6D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddFriendsAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ChallengePlayersActionImplementation.ChallengePlayersActionImplementationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E26A814()
{
  result = qword_27F1E8E80;
  if (!qword_27F1E8E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8E80);
  }

  return result;
}

uint64_t ScalarDictionary.init(with:)(uint64_t a1)
{
  sub_24E347448();
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v5)
    {
      break;
    }

    v4 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      do
      {
LABEL_8:
        v9 = *(*(a1 + 48) + (__clz(__rbit64(v4)) | (v7 << 6)));
        if (*(a1 + 16))
        {
          sub_24E26ACEC(v9);
          if (v10)
          {
          }
        }

        v4 &= v4 - 1;
        result = sub_24E347438();
      }

      while (v4);
    }
  }
}

uint64_t ScalarDictionary.subscript.getter()
{
  OUTLINED_FUNCTION_0_163();
  OUTLINED_FUNCTION_1_126();
  v0 = sub_24E347428();

  return v0;
}

uint64_t sub_24E26AA94@<X0>(uint64_t *a1@<X8>)
{
  result = ScalarDictionary.subscript.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ScalarDictionary.subscript.setter()
{
  OUTLINED_FUNCTION_0_163();
  OUTLINED_FUNCTION_1_126();
  return sub_24E347438();
}

uint64_t (*ScalarDictionary.subscript.modify(uint64_t a1, _BYTE *a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = *a2;
  OUTLINED_FUNCTION_0_163();
  OUTLINED_FUNCTION_1_126();
  v4 = sub_24E347428();
  v6 = v5;

  *a1 = v4;
  *(a1 + 8) = v6;
  return sub_24E26ABFC;
}

uint64_t sub_24E26ABFC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_24E347438();
  }

  sub_24E347438();
}

unint64_t sub_24E26ACEC(char a1)
{
  v2 = sub_24E07C0AC();

  return sub_24E26B1E8(a1, v2);
}

unint64_t sub_24E26AD30(double a1)
{
  v2 = sub_24E348D08();

  return sub_24E26B368(v2, a1);
}

unint64_t sub_24E26AD7C(uint64_t a1)
{
  sub_24E3472B8();
  sub_24E26BB74(&qword_27F1DEFB0);
  v2 = sub_24E347C48();

  return sub_24E26B3C4(a1, v2);
}

unint64_t sub_24E26AE00()
{
  OUTLINED_FUNCTION_2_107();
  v1 = sub_24E3488E8();

  return sub_24E26B56C(v0, v1);
}

unint64_t sub_24E26AE3C()
{
  OUTLINED_FUNCTION_3_107();
  sub_24E347DC8();
  v2 = sub_24E348D68();

  return sub_24E024378(v1, v0, v2);
}

unint64_t sub_24E26AEA0()
{
  OUTLINED_FUNCTION_2_107();
  v1 = sub_24E348618();
  return sub_24E26B90C(v0, v1, &qword_27F1DF028);
}

unint64_t sub_24E26AEE8()
{
  OUTLINED_FUNCTION_3_107();
  MEMORY[0x25303F880](v1);
  MEMORY[0x25303F880](v0);
  v2 = sub_24E348D68();

  return sub_24E26B630(v1, v0, v2);
}

unint64_t sub_24E26AF54(char a1)
{
  OUTLINED_FUNCTION_4_89();
  sub_24E2CD7E8(v4, a1);
  v2 = sub_24E348D68();

  return sub_24E26B6A8(a1, v2);
}

unint64_t sub_24E26AFB8(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_4_89();
  MEMORY[0x25303F880](a1);
  v2 = sub_24E348D68();

  return sub_24E26B8AC(a1, v2);
}

unint64_t sub_24E26B01C()
{
  OUTLINED_FUNCTION_2_107();
  v1 = sub_24E348618();
  return sub_24E26B90C(v0, v1, &qword_27F1DEFE0);
}

unint64_t sub_24E26B064(uint64_t a1)
{
  sub_24E347CF8();
  sub_24E348D18();
  sub_24E347DC8();
  v2 = sub_24E348D68();

  return sub_24E26B9DC(a1, v2);
}

unint64_t sub_24E26B0F8(void *a1)
{
  OUTLINED_FUNCTION_4_89();
  MEMORY[0x25303F880]([a1 hash]);
  v2 = sub_24E348D68();

  return sub_24E26BAD4(a1, v2);
}

unint64_t sub_24E26B168(char a1)
{
  OUTLINED_FUNCTION_4_89();
  sub_24E18F278(a1);
  sub_24E347DC8();

  v2 = sub_24E348D68();

  return sub_24E26BBB8(a1, v2);
}

unint64_t sub_24E26B1E8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x707954746E657665;
          v8 = 0xE900000000000065;
        }

        else
        {
          v7 = 0xD000000000000011;
          v8 = 0x800000024E39CB80;
        }
      }

      else
      {
        v8 = 0xE600000000000000;
        v7 = 0x6E69616D6F64;
      }

      if (a1)
      {
        v9 = a1 == 1 ? 0x707954746E657665 : 0xD000000000000011;
        v10 = a1 == 1 ? 0xE900000000000065 : 0x800000024E39CB80;
      }

      else
      {
        v10 = 0xE600000000000000;
        v9 = 0x6E69616D6F64;
      }

      if (v7 == v9 && v8 == v10)
      {
        break;
      }

      v12 = sub_24E348C08();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24E26B368(uint64_t a1, double a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_24E26B3C4(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_24E3472B8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4, v6);
    sub_24E26BB74(&qword_27F1E8E88);
    v10 = sub_24E347CA8();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_24E26B56C(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_24DF8BD34(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x25303F450](v8, a1);
    sub_24DF8BE60(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_24E26B630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24E26B6A8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEE00646579616C50;
      v8 = 0x796C746E65636572;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000011;
          v7 = 0x800000024E39CCA0;
          break;
        case 2:
          v8 = 0x646163724177656ELL;
          v7 = 0xEE0073656D614765;
          break;
        case 3:
          v7 = 0xE600000000000000;
          v8 = 0x756F59726F66;
          break;
        default:
          break;
      }

      v9 = 0x796C746E65636572;
      v10 = 0xEE00646579616C50;
      switch(a1)
      {
        case 1:
          v9 = 0xD000000000000011;
          v10 = 0x800000024E39CCA0;
          break;
        case 2:
          v9 = 0x646163724177656ELL;
          v10 = 0xEE0073656D614765;
          break;
        case 3:
          v10 = 0xE600000000000000;
          v9 = 0x756F59726F66;
          break;
        default:
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_24E348C08();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24E26B8AC(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_24E26B90C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = v3;
  v6 = v3 + 64;
  v7 = ~(-1 << *(v3 + 32));
  for (i = a2 & v7; ((1 << i) & *(v6 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v7)
  {
    sub_24DF88A8C(0, a3);
    v9 = *(*(v5 + 48) + 8 * i);
    v10 = sub_24E348628();

    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_24E26B9DC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_24E347CF8();
    v7 = v6;
    if (v5 == sub_24E347CF8() && v7 == v8)
    {

      return i;
    }

    v10 = sub_24E348C08();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_24E26BAD4(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_24E26BB74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24E3472B8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E26BBB8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE300000000000000;
      v8 = 7562345;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE400000000000000;
          v8 = 1701667182;
          break;
        case 2:
          v7 = 0xE600000000000000;
          v8 = 0x64496D616461;
          break;
        case 3:
          v7 = 0xE800000000000000;
          v9 = 0x656C646E7562;
          goto LABEL_9;
        case 4:
          v7 = 0xE800000000000000;
          v9 = 0x726579616C70;
          goto LABEL_9;
        case 5:
          v8 = 0x7974697669746361;
          v7 = 0xEA00000000006449;
          break;
        case 6:
          v8 = 0x7974697669746361;
          v10 = 1701869908;
          goto LABEL_13;
        case 7:
          v7 = 0xE800000000000000;
          v9 = 0x746567646977;
LABEL_9:
          v8 = v9 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
          break;
        case 8:
          v8 = 0x6146746567646977;
          v10 = 2037148013;
LABEL_13:
          v7 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          break;
      }

      v11 = 0xE300000000000000;
      v12 = 7562345;
      switch(a1)
      {
        case 1:
          v11 = 0xE400000000000000;
          v12 = 1701667182;
          break;
        case 2:
          v11 = 0xE600000000000000;
          v12 = 0x64496D616461;
          break;
        case 3:
          v11 = 0xE800000000000000;
          v13 = 0x656C646E7562;
          goto LABEL_20;
        case 4:
          v11 = 0xE800000000000000;
          v13 = 0x726579616C70;
          goto LABEL_20;
        case 5:
          v12 = 0x7974697669746361;
          v11 = 0xEA00000000006449;
          break;
        case 6:
          v12 = 0x7974697669746361;
          v14 = 1701869908;
          goto LABEL_24;
        case 7:
          v11 = 0xE800000000000000;
          v13 = 0x746567646977;
LABEL_20:
          v12 = v13 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
          break;
        case 8:
          v12 = 0x6146746567646977;
          v14 = 2037148013;
LABEL_24:
          v11 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          break;
      }

      if (v8 == v12 && v7 == v11)
      {
        break;
      }

      v16 = sub_24E348C08();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t OUTLINED_FUNCTION_3_107()
{

  return sub_24E348D18();
}

uint64_t OUTLINED_FUNCTION_4_89()
{

  return sub_24E348D18();
}

uint64_t type metadata accessor for LaunchGameAction()
{
  result = qword_27F1E8E90;
  if (!qword_27F1E8E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E26BF54()
{
  sub_24E26BFF0();
  if (v0 <= 0x3F)
  {
    sub_24E347208();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E26BFF0()
{
  if (!qword_27F1E8EA0)
  {
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E8EA0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LaunchGameAction.ASCDeepLink(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24E26C11C()
{
  v0 = sub_24E348B78();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E26C170(char a1)
{
  if (a1)
  {
    return 0x7974697669746361;
  }

  else
  {
    return 0x65756E69746E6F63;
  }
}

uint64_t sub_24E26C1E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E26C11C();
  *a1 = result;
  return result;
}

uint64_t sub_24E26C210@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E26C170(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_24E26C240()
{
  result = qword_27F1E8EA8;
  if (!qword_27F1E8EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8EA8);
  }

  return result;
}

uint64_t sub_24E26C294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_24E347208();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24E26C308(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 137))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E26C348(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 137) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 137) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_24E26C3C0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v9 = *(a1 + 80);
  v44[0] = *(a1 + 64);
  v44[1] = v9;
  v45 = *(a1 + 96);
  v10 = *(a1 + 104);
  v11 = *(a1 + 120);
  v12 = *(a1 + 48);
  v41 = *(a1 + 136);
  v40[0] = v10;
  v40[1] = v11;
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *(a2 + 56);
  v20 = *(a2 + 80);
  v46[0] = *(a2 + 64);
  v46[1] = v20;
  v47 = *(a2 + 96);
  v21 = *(a2 + 104);
  v22 = *(a2 + 120);
  v23 = *(a2 + 48);
  v43 = *(a2 + 136);
  v42[0] = v21;
  v42[1] = v22;
  v33 = v2;
  v34 = v3;
  v35 = v4;
  v36 = v5;
  v37 = v6;
  v38 = v7;
  v39 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v23;
  sub_24DFD7E3C(v2, v3, v4, v5, v6, v7, v12);
  sub_24DFD7E3C(v13, v14, v15, v16, v17, v18, v23);
  LOBYTE(v13) = static ViewBackgroundStyle.== infix(_:_:)(&v33, &v26);
  sub_24DFEC8B4(v26, v27, v28, v29, v30, v31, v32);
  sub_24DFEC8B4(v33, v34, v35, v36, v37, v38, v39);
  v24 = 0;
  if ((v13 & 1) != 0 && v8 == v19)
  {
    if (sub_24DFB5340(v44, v46))
    {
      v24 = sub_24DFB5340(v40, v42);
    }

    else
    {
      v24 = 0;
    }
  }

  return v24 & 1;
}

double sub_24E26C530()
{
  result = 0.0;
  xmmword_27F20B268 = 0u;
  unk_27F20B278 = 0u;
  xmmword_27F20B258 = 0u;
  byte_27F20B288 = 3;
  unk_27F20B290 = 0u;
  unk_27F20B2A0 = 0u;
  qword_27F20B2B0 = 0;
  byte_27F20B2B8 = 1;
  unk_27F20B2C0 = 0u;
  unk_27F20B2D0 = 0u;
  byte_27F20B2E0 = 1;
  return result;
}

void sub_24E26C5A0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_90(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_24E05E8D0(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_5_97();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_24E26C6A0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_90(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_24E05E8E8(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_5_97();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_24E26C7A0(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(result, 1);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, v5);
  v13 = v11 + v5;
  if (!v12)
  {
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_24E26C8F8(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(v14 + 0x10) + 32, (*(v14 + 0x18) >> 1) - *(v14 + 0x10), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_24E26C9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E26CF90();
  if (v4)
  {
    v5 = v4;
    v6 = *(*(v2 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryContainerViewController) + OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController);
    if (v6)
    {
      v7 = [v6 viewControllers];
      sub_24DF88A8C(0, &qword_27F1E05B0);
      v8 = sub_24E347F08();
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v9 = [v5 viewControllers];
    sub_24DF88A8C(0, &qword_27F1E05B0);
    sub_24E347F08();

    OUTLINED_FUNCTION_1_127();
    sub_24E26C8F8(v8, v10, sub_24E05F670, sub_24E083C94);
    v11 = sub_24E347EE8();

    [v5 setViewControllers:v11 animated:0];

    return 0;
  }

  return a2;
}

uint64_t sub_24E26CB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E26CF90();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 popToRootViewControllerAnimated_];
    if (v6)
    {
      v7 = v6;
      sub_24DF88A8C(0, &qword_27F1E05B0);
      v8 = sub_24E347F08();
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    if (sub_24DFD8654(v8))
    {
      v9 = *(*(v2 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryContainerViewController) + OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController);
      if (v9)
      {
        sub_24DF88A8C(0, &qword_27F1E05B0);
        v10 = v9;
        v11 = sub_24E347EE8();

        [v10 setViewControllers_];
      }

      else
      {
      }

      goto LABEL_11;
    }

    v12 = v2 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_cachedSecondarySource;
    v13 = *(v2 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_cachedSecondarySource + 16);
    if (v13 == 255)
    {
LABEL_11:

      return a2;
    }

    v15 = *v12;
    v14 = *(v12 + 8);
    v16 = OUTLINED_FUNCTION_2_108();
    sub_24E26E7C0(v16, v17, v18);
    sub_24E26E7D8(v15, v14, v13 & 1);
    v19 = OUTLINED_FUNCTION_2_108();
    sub_24E26D058(v19, v20, v21, 0);

    v22 = OUTLINED_FUNCTION_2_108();
    sub_24E26E824(v22, v23, v24);
    v25 = OUTLINED_FUNCTION_2_108();
    sub_24E26E824(v25, v26, v27);
  }

  return a2;
}

uint64_t sub_24E26CCC4()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryOverrideTraitCollection);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_24E26CD1C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryOverrideTraitCollection);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  sub_24E26D460();
}

void (*sub_24E26CD9C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24E26CE00;
}

void sub_24E26CE00(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_24E26D460();
  }
}