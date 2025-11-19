void sub_21536CA40()
{
  v1 = v0;
  v2 = [v0 textAttachment];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
      goto LABEL_19;
    }

    v5 = v4;
    v6 = [v0 textLayoutManager];
    v7 = [v6 textContainer];

    if (v7)
    {
      goto LABEL_4;
    }

    v18 = [v1 layoutManager];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 textContainers];

      sub_21536D064();
      v21 = sub_2154A1F4C();

      if (v21 >> 62)
      {
        v22 = sub_2154A2C8C();
        if (v22)
        {
LABEL_13:
          v23 = __OFSUB__(v22, 1);
          v24 = v22 - 1;
          if (v23)
          {
            __break(1u);
          }

          else if ((v21 & 0xC000000000000001) == 0)
          {
            if ((v24 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v24 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v25 = *(v21 + 8 * v24 + 32);
LABEL_18:
              v7 = v25;

LABEL_4:
              v8 = [v5 attachmentIdentifier];
              if (!v8)
              {
                goto LABEL_8;
              }

              v9 = v8;
              v10 = sub_2154A1D6C();
              v12 = v11;

              if (qword_2811997B0 != -1)
              {
                swift_once();
              }

              swift_beginAccess();
              v13 = sub_21536D0B0(v10, v12);
              swift_endAccess();

              if (!v13)
              {
LABEL_8:
                memset(v34, 0, sizeof(v34));
                v14 = objc_allocWithZone(type metadata accessor for PaperDocumentTextAttachmentView());
                v15 = v3;
                sub_2152F1F98(v5, v7, v34);
                v13 = v16;
              }

              v17 = v13;
              [v1 setView_];

              swift_unknownObjectWeakAssign();
              return;
            }

            __break(1u);
            return;
          }

          v25 = MEMORY[0x216069960](v24, v21);
          goto LABEL_18;
        }
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_19:
    }
  }

  if (qword_27CA59838 != -1)
  {
    swift_once();
  }

  v26 = sub_21549F11C();
  __swift_project_value_buffer(v26, qword_27CA5B0E0);
  v27 = sub_2154A227C();
  log = sub_21549F0FC();
  if (os_log_type_enabled(log, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v34[0] = v29;
    *v28 = 136315650;
    v30 = sub_2154A2DAC();
    v32 = sub_215348D98(v30, v31, v34);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2048;
    *(v28 + 14) = 67;
    *(v28 + 22) = 2080;
    *(v28 + 24) = sub_215348D98(0xD000000000000058, 0x80000002154D7200, v34);
    _os_log_impl(&dword_2151A1000, log, v27, "Failed assertion at %s:%lu: %s", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21606B520](v29, -1, -1);
    MEMORY[0x21606B520](v28, -1, -1);
  }

  else
  {
  }
}

id PaperDocumentTextAttachmentViewProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaperDocumentTextAttachmentViewProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21536D064()
{
  result = qword_27CA5B108;
  if (!qword_27CA5B108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA5B108);
  }

  return result;
}

uint64_t sub_21536D0B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_2153B0D68(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2153DC054();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_21536D3BC(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_21536D148@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_2153B1B20(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2153DD21C();
      v9 = v11;
    }

    sub_21531E8D0((*(v9 + 56) + 32 * v7), a2);
    sub_21536D868(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21536D1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2153B11FC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2153DD38C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_21549E70C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for TextElementAnimationConfiguration();
    v20 = *(v13 - 8);
    sub_215328E68(v12 + *(v20 + 72) * v7, a2);
    sub_21536DA30(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for TextElementAnimationConfiguration();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_21536D3BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2154A2C0C() + 1) & ~v5;
    do
    {
      sub_2154A30DC();

      sub_2154A1DFC();
      v9 = sub_2154A312C();

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

unint64_t sub_21536D5B4(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v13 = a2 + 64;
  v14 = -1 << *(a2 + 32);
  v15 = (a1 + 1) & ~v14;
  if ((*(a2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = sub_2154A2C0C();
    v18 = v16;
    v40 = (v17 + 1) & v16;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v44 = *(v19 + 56);
    v38 = (v19 - 8);
    v39 = v20;
    do
    {
      v21 = v44 * v15;
      v22 = v18;
      v23 = v19;
      v39(v12, *(a2 + 48) + v44 * v15, v8);
      sub_21536E0F4(v41, v42);
      v24 = sub_2154A1C9C();
      result = (*v38)(v12, v8);
      v18 = v22;
      v25 = v24 & v22;
      if (a1 >= v40)
      {
        if (v25 >= v40 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          result = v28 + v44 * a1;
          v29 = v28 + v21 + v44;
          v30 = v44 * a1 < v21 || result >= v29;
          v19 = v23;
          if (!v30)
          {
            if (v44 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v18 = v22;
            }

            v31 = *(a2 + 56);
            v32 = (v31 + 8 * a1);
            v33 = (v31 + 8 * v15);
            if (a1 != v15 || v32 >= v33 + 1)
            {
              *v32 = *v33;
              a1 = v15;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v25 >= v40 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v19 = v23;
LABEL_4:
      v15 = (v15 + 1) & v18;
    }

    while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

void sub_21536D868(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2154A2C0C() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_2154A1D6C();
      sub_2154A30DC();
      v11 = v10;
      sub_2154A1DFC();
      v12 = sub_2154A312C();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
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

void sub_21536DA30(int64_t a1, uint64_t a2)
{
  v4 = sub_21549E70C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_2154A2C0C();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_21536E0F4(&qword_281199D00, MEMORY[0x277CC95F0]);
      v21 = sub_2154A1C9C();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(type metadata accessor for TextElementAnimationConfiguration() - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

void sub_21536DD74(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (a1)
  {
    v7 = a1;
    v8 = [v5 textLayoutManager];
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v10 = [v7 layoutManager];
      if (!v10)
      {
        v9 = 0;
LABEL_9:
        if (![objc_opt_self() isMainThread] || (v9 & 1) != 0)
        {
          v16 = [v5 textAttachment];
          if (v16)
          {
            v17 = v16;
            objc_opt_self();
            v18 = [swift_dynamicCastObjCClassUnconditional() attachment];

            [v18 bounds];
            v20 = v19;
            v22 = v21;
            v24 = v23;
            v26 = v25;

            v30.origin.x = v20;
            v30.origin.y = v22;
            v30.size.width = v24;
            v30.size.height = v26;
            CGRectGetWidth(v30);
            v31.origin.x = v20;
            v31.origin.y = v22;
            v31.size.width = v24;
            v31.size.height = v26;
            CGRectGetHeight(v31);
            v32.origin.x = a2;
            v32.origin.y = a3;
            v32.size.width = a4;
            v32.size.height = a5;
            CGRectGetWidth(v32);
            v33.origin.x = a2;
            v33.origin.y = a3;
            v33.size.width = a4;
            v33.size.height = a5;
            CGRectGetHeight(v33);

            return;
          }

          __break(1u);
        }

        else
        {
          v14 = [v5 view];
          if (v14)
          {
            v15 = v14;
            type metadata accessor for PaperDocumentTextAttachmentView();
            swift_dynamicCastClassUnconditional();
            sub_21531EC54(v7);

            return;
          }
        }

        __break(1u);
        goto LABEL_18;
      }

      v11 = v10;
      v12 = sub_2154A1D2C();
      v13 = NSClassFromString(v12);

      if (!v13)
      {
LABEL_18:
        __break(1u);
        return;
      }

      v9 = [v11 isKindOfClass_];
      v8 = v11;
    }

    goto LABEL_9;
  }
}

uint64_t sub_21536E0F4(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall LinkAcceleratorController.acceleratorOriginNeedsUpdate()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong acceleratorOriginNeedsUpdate];
    swift_unknownObjectRelease();
  }
}

void LinkAcceleratorController.didSelectNoteLink(_:)()
{
  if (sub_21549E8CC())
  {

    sub_21536FCCC();
  }

  else
  {

    sub_2153704B0();
  }
}

Swift::Void __swiftcall LinkAcceleratorController.hideAccelerator()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B140);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = OBJC_IVAR___ICLinkAcceleratorController_isShowing;
  swift_beginAccess();
  if (*(v0 + v4) == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = [Strong eventReporter];
      swift_unknownObjectRelease();
      if (v6)
      {
        v7 = swift_unknownObjectWeakLoadStrong();
        if (v7)
        {
          v8 = [v7 note];
          swift_unknownObjectRelease();
        }

        else
        {
          v8 = 0;
        }

        v9 = *(v0 + OBJC_IVAR___ICLinkAcceleratorController_maxCharactersTyped);
        v10 = *(v0 + OBJC_IVAR___ICLinkAcceleratorController_viewController);
        v11 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSuggestionContainer;
        swift_beginAccess();
        sub_215324EEC(v10 + v11, v3, &qword_27CA5B140);
        v12 = sub_21549F8CC();
        v13 = *(v12 - 8);
        if ((*(v13 + 48))(v3, 1, v12) == 1)
        {
          sub_2151ADCD8(v3, &qword_27CA5B140);
          v14 = 0;
        }

        else
        {
          v15 = sub_21549F86C();
          (*(v13 + 8))(v3, v12);
          v14 = *(v15 + 16);
        }

        [v6 submitLinkedNoteAcceleratorEndEvent:v8 maxCharactersTyped:v9 endResultCount:v14];
      }
    }

    v16 = [objc_opt_self() defaultCenter];
    if (qword_27CA59860 != -1)
    {
      swift_once();
    }

    [v16 postNotificationName:qword_27CA64978 object:v0];
  }

  *(v0 + v4) = 0;
  (*((*MEMORY[0x277D85000] & **(v0 + OBJC_IVAR___ICLinkAcceleratorController_viewController)) + 0x100))();
}

uint64_t sub_21536E600()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_21536E720, v3, v2);
}

uint64_t sub_21536E720()
{

  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 144);
    sub_2151BCCE4(*(v0 + 120));
    if (v2 == 1 && (v3 = LinkAcceleratorController.acceleratorDetectionResult.getter(), v4 = *&v3[OBJC_IVAR___ICAcceleratorDetectionResult_fullAcceleratorRange], v5 = *&v3[OBJC_IVAR___ICAcceleratorDetectionResult_fullAcceleratorRange + 8], v6 = v3[OBJC_IVAR___ICAcceleratorDetectionResult_fullAcceleratorRange + 16], v3, v6 != 1))
    {
      v7 = *(v0 + 88);
      v8 = *MEMORY[0x277D35FE8];
      v9 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v10 = v8;
      v11 = [v9 initWithBool_];
      [v1 addAttribute:v10 value:v11 range:{v4, v5}];

      v12 = v7 + OBJC_IVAR___ICLinkAcceleratorController_currentSuggestionRange;
      *v12 = v4;
      *(v12 + 8) = v5;
      *(v12 + 16) = 0;
    }

    else
    {
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_21536E860()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_215371B74, v3, v2);
}

uint64_t sub_21536E9C4()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5B120);
  __swift_project_value_buffer(v0, qword_27CA5B120);
  return sub_21549F0CC();
}

id AcceleratorDetectionResult.__allocating_init(extractedAcceleratorText:isValidAcceleratorScenario:fullAcceleratorRange:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR___ICAcceleratorDetectionResult_extractedAcceleratorText];
  *v14 = a1;
  v14[1] = a2;
  v13[OBJC_IVAR___ICAcceleratorDetectionResult_isValidAcceleratorScenario] = a3;
  v15 = &v13[OBJC_IVAR___ICAcceleratorDetectionResult_fullAcceleratorRange];
  *v15 = a4;
  *(v15 + 1) = a5;
  v15[16] = a6 & 1;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, sel_init);
}

id AcceleratorDetectionResult.init(extractedAcceleratorText:isValidAcceleratorScenario:fullAcceleratorRange:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = &v6[OBJC_IVAR___ICAcceleratorDetectionResult_extractedAcceleratorText];
  *v7 = a1;
  v7[1] = a2;
  v6[OBJC_IVAR___ICAcceleratorDetectionResult_isValidAcceleratorScenario] = a3;
  v8 = &v6[OBJC_IVAR___ICAcceleratorDetectionResult_fullAcceleratorRange];
  *v8 = a4;
  *(v8 + 1) = a5;
  v8[16] = a6 & 1;
  v10.receiver = v6;
  v10.super_class = type metadata accessor for AcceleratorDetectionResult();
  return objc_msgSendSuper2(&v10, sel_init);
}

id AcceleratorDetectionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AcceleratorDetectionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t LinkAcceleratorMode.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_21536EBD8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t static LinkAcceleratorController.defaultMaxNumSuggestions.getter()
{
  if (_UISolariumEnabled())
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

void sub_21536EC18()
{
  if (sub_21549E8CC())
  {
    sub_21536FCCC();
  }

  else
  {
    sub_2153704B0();
  }
}

uint64_t LinkAcceleratorController.needToWaitUntilUpdateBoundsToAppear.getter()
{
  v1 = OBJC_IVAR___ICLinkAcceleratorController_needToWaitUntilUpdateBoundsToAppear;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LinkAcceleratorController.needToWaitUntilUpdateBoundsToAppear.setter(char a1)
{
  v3 = OBJC_IVAR___ICLinkAcceleratorController_needToWaitUntilUpdateBoundsToAppear;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t LinkAcceleratorController.suggestionCount.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B140);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + OBJC_IVAR___ICLinkAcceleratorController_viewController);
  v5 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSuggestionContainer;
  swift_beginAccess();
  sub_215324EEC(v4 + v5, v3, &qword_27CA5B140);
  v6 = sub_21549F8CC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    sub_2151ADCD8(v3, &qword_27CA5B140);
    return 0;
  }

  else
  {
    v9 = sub_21549F86C();
    (*(v7 + 8))(v3, v6);
    v8 = *(v9 + 16);
  }

  return v8;
}

uint64_t (*LinkAcceleratorController.delegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___ICLinkAcceleratorController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_215371B7C;
}

id sub_21536EFA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_21536F058()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*LinkAcceleratorController.linkDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___ICLinkAcceleratorController_linkDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21536F14C;
}

void sub_21536F150(void **a1, char a2)
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

uint64_t LinkAcceleratorController.isShowing.getter()
{
  v1 = OBJC_IVAR___ICLinkAcceleratorController_isShowing;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_21536F280(SEL *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = [Strong *a1];
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_21536F304()
{
  v1[12] = v0;
  v2 = sub_2154A10EC();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v3 = sub_2154A110C();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B140);
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21536F458, 0, 0);
}

uint64_t sub_21536F458()
{
  v1 = v0[12];
  v2 = OBJC_IVAR___ICLinkAcceleratorController_isShowing;
  swift_beginAccess();
  *(v1 + v2) = 1;
  v0[20] = *(v1 + OBJC_IVAR___ICLinkAcceleratorController_viewController);
  v0[21] = sub_2154A1FFC();
  sub_2154A1FEC();

  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_21536F548;
  v4 = v0[19];

  return sub_215494D60(v4);
}

uint64_t sub_21536F548()
{
  v1 = *(*v0 + 152);

  sub_2151ADCD8(v1, &qword_27CA5B140);

  return MEMORY[0x2822009F8](sub_21536F670, 0, 0);
}

uint64_t sub_21536F670()
{
  v1 = v0[20];
  v2 = (*MEMORY[0x277D85000] & *v1) + 216;
  v0[23] = *((*MEMORY[0x277D85000] & *v1) + 0xD8);
  v0[24] = v2 & 0xFFFFFFFFFFFFLL | 0x8D9D000000000000;
  v0[25] = sub_2154A1FEC();
  v4 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_21536F728, v4, v3);
}

uint64_t sub_21536F728()
{
  v1 = *(v0 + 184);

  v1(v2);

  return MEMORY[0x2822009F8](sub_21536F7A4, 0, 0);
}

uint64_t sub_21536F7A4()
{
  v1 = v0[18];
  v2 = v0[17];
  v13 = v0[16];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  sub_2151A6C9C(0, &unk_2811995C0);
  v12 = sub_2154A245C();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v0[6] = sub_215371B6C;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2151BD7E4;
  v0[5] = &block_descriptor_8;
  v8 = _Block_copy(v0 + 2);
  v9 = v5;
  sub_2154A10FC();
  v0[11] = MEMORY[0x277D84F90];
  sub_2151B5F20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
  sub_2151B5F78();
  sub_2154A2BEC();
  MEMORY[0x216069000](0, v1, v3, v8);
  _Block_release(v8);

  (*(v4 + 8))(v3, v6);
  (*(v2 + 8))(v1, v13);

  v10 = v0[1];

  return v10();
}

uint64_t LinkAcceleratorController.didSelectAutocompleteItem(_:)(void *a1)
{
  v2 = sub_21549E93C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  sub_21549E8AC();
  if (sub_21549E8CC())
  {
    sub_21536FCCC();
  }

  else
  {
    sub_2153704B0();
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_21536FCCC()
{
  v55[7] = *MEMORY[0x277D85DE8];
  sub_21549E91C();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2 && (v3 = [v2 note], swift_unknownObjectRelease(), v3))
    {
      v4 = [v3 folder];
      if (v4)
      {
        v5 = v4;
        v6 = LinkAcceleratorController.acceleratorDetectionResult.getter();
        v7 = (v6 + OBJC_IVAR___ICAcceleratorDetectionResult_fullAcceleratorRange);
        if (*(&v6[2].isa + OBJC_IVAR___ICAcceleratorDetectionResult_fullAcceleratorRange))
        {

          if (qword_27CA59848 != -1)
          {
            swift_once();
          }

          v8 = sub_21549F11C();
          __swift_project_value_buffer(v8, qword_27CA5B120);
          v9 = sub_21549F0FC();
          v10 = sub_2154A226C();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            *v11 = 0;
            _os_log_impl(&dword_2151A1000, v9, v10, "Couldn't get accelerator range, bailing out.", v11, 2u);
            MEMORY[0x21606B520](v11, -1, -1);
          }

          swift_unknownObjectRelease();
          v6 = v5;
        }

        else
        {
          v22 = v3;
          v24 = *v7;
          v23 = v7[1];
          v53 = v22;
          v25 = [v22 mergeableString];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A340);
          v54 = v5;
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_2154BDB50;
          type metadata accessor for _NSRange(0);
          *(v26 + 56) = v27;
          v51 = v23;
          v52 = v24;
          *(v26 + 32) = v24;
          *(v26 + 40) = v23;
          v28 = sub_2154A1F3C();

          v29 = [v25 selectionForCharacterRanges:v28 selectionAffinity:1];

          v30 = v54;
          v31 = objc_opt_self();
          v32 = sub_2154A1D2C();

          v55[0] = 0;
          v33 = [v31 newNoteWithString:v32 inFolder:v54 error:v55];

          if (v33)
          {
            v34 = v55[0];
            v35 = [v33 identifier];
            [v1 createNoteLinkAttachment:v35 textSelection:v29 range:v52 addApproach:{v51, 2}];

            v36 = [v33 managedObjectContext];
            [v36 ic_save];

            v37 = swift_unknownObjectWeakLoadStrong();
            v38 = v29;
            if (v37)
            {
              v39 = [v37 eventReporter];
              swift_unknownObjectRelease();
              v40 = v53;
              if (v39)
              {
                [v39 submitNoteCreateEventForModernNote:v33 createApproach:21];
              }

              else
              {
              }
            }

            else
            {

              v40 = v53;
            }
          }

          else
          {
            v41 = v55[0];
            v42 = sub_21549E3DC();

            swift_willThrow();
            if (qword_27CA59848 != -1)
            {
              swift_once();
            }

            v43 = sub_21549F11C();
            __swift_project_value_buffer(v43, qword_27CA5B120);
            v44 = v42;
            v45 = sub_21549F0FC();
            v46 = sub_2154A226C();

            v40 = v53;
            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v48 = swift_slowAlloc();
              *v47 = 138412290;
              v49 = v42;
              v50 = _swift_stdlib_bridgeErrorToNSError();
              *(v47 + 4) = v50;
              *v48 = v50;
              _os_log_impl(&dword_2151A1000, v45, v46, "Encountered error trying to create a new note in the link accelerator: %@", v47, 0xCu);
              sub_2151ADCD8(v48, &unk_27CA59E90);
              MEMORY[0x21606B520](v48, -1, -1);
              v30 = v54;
              MEMORY[0x21606B520](v47, -1, -1);
            }

            else
            {
            }
          }

          LinkAcceleratorController.hideAccelerator()();
          swift_unknownObjectRelease();
        }
      }

      else
      {

        if (qword_27CA59848 != -1)
        {
          swift_once();
        }

        v18 = sub_21549F11C();
        __swift_project_value_buffer(v18, qword_27CA5B120);
        v19 = sub_21549F0FC();
        v20 = sub_2154A227C();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_2151A1000, v19, v20, "Current note didn't have a folder.", v21, 2u);
          MEMORY[0x21606B520](v21, -1, -1);
        }

        swift_unknownObjectRelease();

        v6 = v3;
      }
    }

    else
    {

      if (qword_27CA59848 != -1)
      {
        swift_once();
      }

      v12 = sub_21549F11C();
      __swift_project_value_buffer(v12, qword_27CA5B120);
      v6 = sub_21549F0FC();
      v13 = sub_2154A227C();
      if (os_log_type_enabled(v6, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2151A1000, v6, v13, "No delegate did not provide the current note.", v14, 2u);
        MEMORY[0x21606B520](v14, -1, -1);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {

    if (qword_27CA59848 != -1)
    {
      swift_once();
    }

    v15 = sub_21549F11C();
    __swift_project_value_buffer(v15, qword_27CA5B120);
    v6 = sub_21549F0FC();
    v16 = sub_2154A227C();
    if (os_log_type_enabled(v6, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2151A1000, v6, v16, "No linkDelegate was available.", v17, 2u);
      MEMORY[0x21606B520](v17, -1, -1);
    }
  }
}

void sub_2153704B0()
{
  v1 = v0;
  sub_21549E8EC();
  if (!v2)
  {
    sub_2154A2EDC();
    __break(1u);
LABEL_34:
    sub_2154A2FDC();
    __break(1u);
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = LinkAcceleratorController.acceleratorDetectionResult.getter();
    v6 = *&v5[OBJC_IVAR___ICAcceleratorDetectionResult_fullAcceleratorRange];
    v7 = *&v5[OBJC_IVAR___ICAcceleratorDetectionResult_fullAcceleratorRange + 8];
    v8 = v5[OBJC_IVAR___ICAcceleratorDetectionResult_fullAcceleratorRange + 16];

    if (v8)
    {

      if (qword_27CA59848 != -1)
      {
        swift_once();
      }

      v9 = sub_21549F11C();
      __swift_project_value_buffer(v9, qword_27CA5B120);
      v10 = sub_21549F0FC();
      v11 = sub_2154A226C();
      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_30;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Couldn't get extracted range for accelerator.";
LABEL_29:
      _os_log_impl(&dword_2151A1000, v10, v11, v13, v12, 2u);
      MEMORY[0x21606B520](v12, -1, -1);
LABEL_30:
      swift_unknownObjectRelease();

      return;
    }

    v18 = *(v1 + OBJC_IVAR___ICLinkAcceleratorController_mode);
    if (v18 == 1)
    {

      sub_21549E8EC();
      if (!v19)
      {
        if (qword_27CA59848 != -1)
        {
          swift_once();
        }

        v33 = sub_21549F11C();
        __swift_project_value_buffer(v33, qword_27CA5B120);
        v10 = sub_21549F0FC();
        v11 = sub_2154A227C();
        if (!os_log_type_enabled(v10, v11))
        {
          goto LABEL_30;
        }

        v12 = swift_slowAlloc();
        *v12 = 0;
        v13 = "Suggestion didn't have a note identifier.";
        goto LABEL_29;
      }

      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        v22 = sub_2154A1D2C();

        sub_21549E91C();
        v23 = sub_2154A1D2C();

        [v21 didSelectNoteSuggestionWithIdentifier:v22 title:v23];

        swift_unknownObjectRelease();
      }

      else
      {
      }

LABEL_32:
      LinkAcceleratorController.hideAccelerator()();
      swift_unknownObjectRelease();
      return;
    }

    if (!v18)
    {
      swift_beginAccess();
      v24 = swift_unknownObjectWeakLoadStrong();
      if (!v24 || (v25 = [v24 note], swift_unknownObjectRelease(), !v25))
      {

        if (qword_27CA59848 != -1)
        {
          swift_once();
        }

        v32 = sub_21549F11C();
        __swift_project_value_buffer(v32, qword_27CA5B120);
        v10 = sub_21549F0FC();
        v11 = sub_2154A227C();
        if (!os_log_type_enabled(v10, v11))
        {
          goto LABEL_30;
        }

        v12 = swift_slowAlloc();
        *v12 = 0;
        v13 = "No delegate did not provide the current note.";
        goto LABEL_29;
      }

      v26 = [v25 mergeableString];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A340);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_2154BDB50;
      type metadata accessor for _NSRange(0);
      *(v27 + 56) = v28;
      *(v27 + 32) = v6;
      *(v27 + 40) = v7;
      v29 = sub_2154A1F3C();

      v30 = [v26 selectionForCharacterRanges:v29 selectionAffinity:1];

      v31 = sub_2154A1D2C();

      [v4 createNoteLinkAttachment:v31 textSelection:v30 range:v6 addApproach:{v7, 2}];

      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if (qword_27CA59848 != -1)
  {
    swift_once();
  }

  v14 = sub_21549F11C();
  __swift_project_value_buffer(v14, qword_27CA5B120);
  v15 = sub_21549F0FC();
  v16 = sub_2154A227C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2151A1000, v15, v16, "No linkDelegate was available.", v17, 2u);
    MEMORY[0x21606B520](v17, -1, -1);
  }
}

Swift::Bool __swiftcall LinkAcceleratorController.handleUseCurrentSuggestion()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B1A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_21549E93C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR___ICLinkAcceleratorController_mode) != 1)
  {
LABEL_12:
    v16 = (*((*MEMORY[0x277D85000] & **(v1 + OBJC_IVAR___ICLinkAcceleratorController_viewController)) + 0x130))(v7);
    return v16 & 1;
  }

  v10 = *(v1 + OBJC_IVAR___ICLinkAcceleratorController_viewController);
  v11 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSelection;
  swift_beginAccess();
  sub_215324EEC(v10 + v11, v4, &qword_27CA5B1A8);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v9, v4, v5);
    if (sub_21549E8CC())
    {
      sub_21536FCCC();
    }

    else
    {
      sub_2153704B0();
    }

    v7 = (*(v6 + 8))(v9, v5);
    goto LABEL_12;
  }

  sub_2151ADCD8(v4, &qword_27CA5B1A8);
  if (qword_27CA59848 != -1)
  {
    swift_once();
  }

  v12 = sub_21549F11C();
  __swift_project_value_buffer(v12, qword_27CA5B120);
  v13 = sub_21549F0FC();
  v14 = sub_2154A226C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2151A1000, v13, v14, "No currentSelectionSuggestion, can't add link.", v15, 2u);
    MEMORY[0x21606B520](v15, -1, -1);
  }

  v16 = 0;
  return v16 & 1;
}

void sub_215370ED4(uint64_t a1)
{
  (*((*MEMORY[0x277D85000] & **(a1 + OBJC_IVAR___ICLinkAcceleratorController_viewController)) + 0xF8))();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong acceleratorOriginNeedsUpdate];
    swift_unknownObjectRelease();
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = [v3 eventReporter];
    swift_unknownObjectRelease();
    if (v4)
    {
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = [v5 note];
        swift_unknownObjectRelease();
      }

      else
      {
        v6 = 0;
      }

      [v4 submitLinkedNoteAcceleratorInitiateEvent_];
    }
  }

  *(a1 + OBJC_IVAR___ICLinkAcceleratorController_maxCharactersTyped) = 0;
  v7 = [objc_opt_self() defaultCenter];
  if (qword_27CA59858 != -1)
  {
    swift_once();
  }

  [v7 postNotificationName:qword_27CA64970 object:a1];
}

uint64_t LinkAcceleratorController.acceleratorText.getter()
{
  v0 = LinkAcceleratorController.acceleratorDetectionResult.getter();
  v1 = *&v0[OBJC_IVAR___ICAcceleratorDetectionResult_extractedAcceleratorText];

  return v1;
}

void *LinkAcceleratorController.currentNoteIdentifier.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = [result note];
    swift_unknownObjectRelease();
    if (v1 && (v2 = [v1 identifier], v1, v2))
    {
      v3 = sub_2154A1D6C();

      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id LinkAcceleratorController.writingDirection.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = [Strong writingDirection];
  swift_unknownObjectRelease();
  return v1;
}

id LinkAcceleratorController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LinkAcceleratorController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21537139C()
{
  v0 = LinkAcceleratorController.acceleratorDetectionResult.getter();
  v1 = *&v0[OBJC_IVAR___ICAcceleratorDetectionResult_extractedAcceleratorText];

  return v1;
}

void *sub_215371414()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result acceleratorOriginNeedsUpdate];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21537147C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = [Strong acceleratorHostingView];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_2153714FC()
{
  result = sub_2154A1D2C();
  qword_27CA64970 = result;
  return result;
}

uint64_t sub_215371558()
{
  result = sub_2154A1D2C();
  qword_27CA64978 = result;
  return result;
}

id sub_2153715BC(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

unint64_t sub_215371624()
{
  result = qword_27CA5B1B0;
  if (!qword_27CA5B1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B1B0);
  }

  return result;
}

uint64_t keypath_getTm_0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_2153717B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_215324EEC(a3, v23 - v10, &unk_27CA5ACE0);
  v12 = sub_2154A202C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2151ADCD8(v11, &unk_27CA5ACE0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2154A201C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_2154A1FCC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2154A1DEC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_2151ADCD8(a3, &unk_27CA5ACE0);

    return v21;
  }

LABEL_8:
  sub_2151ADCD8(a3, &unk_27CA5ACE0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_215371AB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2151BD278;

  return sub_2151B55E0(a1, v4);
}

uint64_t type metadata accessor for WaveformScrollView()
{
  result = qword_27CA5B1C0;
  if (!qword_27CA5B1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_215371BF4()
{
  sub_215371DD0();
  if (v0 <= 0x3F)
  {
    sub_21549F80C();
    if (v1 <= 0x3F)
    {
      sub_215371E74(319, &qword_27CA5B1D0, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_215371E74(319, &qword_27CA5B1D8, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_215371E74(319, &qword_27CA5B1E0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
          if (v4 <= 0x3F)
          {
            sub_215371E74(319, &qword_27CA5B1E8, &type metadata for RecordingViewModel.AccessibilityScrubMode, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_215371E1C();
              if (v6 <= 0x3F)
              {
                sub_215371E74(319, &qword_27CA5B1F8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
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

unint64_t sub_215371DD0()
{
  result = qword_281199690;
  if (!qword_281199690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281199690);
  }

  return result;
}

void sub_215371E1C()
{
  if (!qword_27CA5B1F0)
  {
    sub_21549FCAC();
    v0 = sub_2154A0E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA5B1F0);
    }
  }
}

void sub_215371E74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_215371EE0@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v2 = sub_2154A021C();
  v77 = *(v2 - 8);
  v78 = v2;
  MEMORY[0x28223BE20](v2);
  v76 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2154A059C();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WaveformScrollView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B200);
  v68 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v10 = &v66 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B208);
  v72 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v66 = &v66 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B210);
  v12 = MEMORY[0x28223BE20](v75);
  v80 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v73 = &v66 - v15;
  MEMORY[0x28223BE20](v14);
  v74 = &v66 - v16;
  sub_215374398(v1, &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_2153743FC(&v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v84 = sub_215374460;
  v85 = v18;
  LOBYTE(v83[0]) = *(v1 + 16);
  sub_215374398(v1, &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = swift_allocObject();
  sub_2153743FC(&v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B218);
  v21 = sub_2151ACC5C(&qword_27CA5B220, &qword_27CA5B218);
  v22 = MEMORY[0x277D839B0];
  v23 = MEMORY[0x277D839C8];
  sub_2154A0C0C();
  v24 = v1;

  sub_2154A058C();
  v84 = v20;
  v85 = v22;
  v86 = v21;
  v87 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v66;
  v27 = *&v67;
  sub_2154A0B0C();
  (*(v69 + 8))(v5, v70);
  v28 = v27;
  (*(v68 + 8))(v10, COERCE_DOUBLE(*&v27));
  v29 = [objc_opt_self() mainBundle];
  v30 = sub_2154A1D2C();
  v31 = [v29 localizedStringForKey:v30 value:0 table:0];

  v32 = sub_2154A1D6C();
  v34 = v33;

  v84 = v32;
  v85 = v34;
  v83[0] = v28;
  *&v83[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v35 = sub_215324954();
  v36 = v71;
  v70 = v35;
  sub_2154A0AAC();

  (*(v72 + 8))(v26, v36);
  v37 = *(v24 + 56);
  v38 = *(v24 + 64);
  v84 = *(v24 + 48);
  v85 = v37;
  v86 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B228);
  MEMORY[0x216067A50](v83, v39);
  v40 = [objc_allocWithZone(MEMORY[0x277D36850]) initWithSeconds:0 ignoreFractionalSeconds:v83[0]];
  if (v40 && (v41 = v40, v42 = [v40 durationDescription], v41, v42))
  {
    v43 = sub_2154A1D6C();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0xE000000000000000;
  }

  v81 = v43;
  v82[0] = v45;
  if (*(v24 + 144) == 3)
  {
    v46 = 0;
    v47 = 0;
  }

  else
  {
    v46 = sub_2154525D8();
  }

  v48 = 0;
  v82[1] = v46;
  v82[2] = v47;
  v49 = MEMORY[0x277D84F90];
LABEL_9:
  v50 = &v82[2 * v48];
  while (++v48 != 3)
  {
    v51 = v50 + 2;
    v52 = *v50;
    v50 += 2;
    if (v52)
    {
      v53 = *(v51 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_215317E44(0, *(v49 + 2) + 1, 1, v49);
      }

      v55 = *(v49 + 2);
      v54 = *(v49 + 3);
      if (v55 >= v54 >> 1)
      {
        v49 = sub_215317E44((v54 > 1), v55 + 1, 1, v49);
      }

      *(v49 + 2) = v55 + 1;
      v56 = &v49[16 * v55];
      *(v56 + 4) = v53;
      *(v56 + 5) = v52;
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ADE0);
  swift_arrayDestroy();
  v84 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E9F0);
  sub_2151ACC5C(&qword_2811996E8, &qword_27CA5E9F0);
  v57 = sub_2154A1CBC();
  v59 = v58;

  v84 = v57;
  v85 = v59;
  v60 = v73;
  v61 = v80;
  sub_21549FD7C();

  sub_2151ADCD8(v61, &qword_27CA5B210);
  v62 = v76;
  sub_2154A01EC();
  v63 = v74;
  sub_21549FD8C();
  (*(v77 + 8))(v62, v78);
  sub_2151ADCD8(v60, &qword_27CA5B210);
  v84 = sub_2153742A4();
  v85 = v64;
  sub_21549FD6C();

  return sub_2151ADCD8(v63, &qword_27CA5B210);
}

uint64_t sub_215372850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_2154A0F9C();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B238);
  return sub_2153728B0(a1, a2, a3 + *(v7 + 44));
}

uint64_t sub_2153728B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v166 = a3;
  v155 = sub_2154A057C();
  *&v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B240);
  MEMORY[0x28223BE20](v6 - 8);
  v146 = v127 - v7;
  v143 = type metadata accessor for WaveformScrollView();
  v129 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v137 = v8;
  v128 = v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B248);
  v130 = *(v9 - 8);
  v131 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v127 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B250);
  v132 = *(v12 - 8);
  v133 = v12;
  MEMORY[0x28223BE20](v12);
  *&v156 = v127 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B258);
  v135 = *(v14 - 8);
  v136 = v14;
  MEMORY[0x28223BE20](v14);
  v134 = v127 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B260);
  v139 = *(v16 - 8);
  v140 = v16;
  MEMORY[0x28223BE20](v16);
  v138 = v127 - v17;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B268);
  MEMORY[0x28223BE20](v141);
  v142 = v127 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B270);
  v144 = *(v19 - 8);
  v145 = v19;
  MEMORY[0x28223BE20](v19);
  v157 = v127 - v20;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B278);
  MEMORY[0x28223BE20](v158);
  v147 = v127 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B280);
  v151 = *(v22 - 8);
  v152 = v22;
  MEMORY[0x28223BE20](v22);
  v150 = v127 - v23;
  *&v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B288);
  v164 = *(v168 - 8);
  v24 = MEMORY[0x28223BE20](v168);
  v149 = v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v148 = v127 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B290);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v165 = v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = v127 - v30;
  v167 = a1;
  sub_21549FB7C();
  v33 = v32 + -44.0 + -14.0;
  sub_2154A0FAC();
  v34 = 1;
  sub_21549FE4C();
  v35 = objc_allocWithZone(MEMORY[0x277D75348]);
  *&v207 = sub_2153764B0;
  *(&v207 + 1) = 0;
  *&v205 = MEMORY[0x277D85DD0];
  *(&v205 + 1) = 1107296256;
  *&v206 = sub_2153765A4;
  *(&v206 + 1) = &block_descriptor_9;
  v36 = _Block_copy(&v205);
  [v35 initWithDynamicProvider_];
  _Block_release(v36);

  v174 = sub_2154A0C8C();
  v38 = *(a2 + 128);
  v39 = *(a2 + 136);
  *&v205 = *(a2 + 120);
  v37 = v205;
  *(&v205 + 1) = v38;
  *&v206 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B228);
  MEMORY[0x216067A50](&v175);
  v40 = *(a2 + 8);
  v41 = *(a2 + 56);
  v42 = *(a2 + 64);
  *&v205 = *(a2 + 48);
  *(&v205 + 1) = v41;
  *&v206 = v42;
  v163 = v40;

  sub_2154A0EDC();
  v161 = *(&v175 + 1);
  v162 = v175;
  v43 = v176;
  *&v205 = v37;
  *(&v205 + 1) = v38;
  *&v206 = v39;
  sub_2154A0EDC();
  v173 = *(&v175 + 1);
  v160 = v175;
  v44 = v176;
  v45 = *(a2 + 104);
  v46 = *(a2 + 112);
  *&v205 = *(a2 + 96);
  *(&v205 + 1) = v45;
  LOBYTE(v206) = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B230);
  sub_2154A0EDC();
  v172 = *(&v175 + 1);
  v159 = v175;
  v171 = v176;
  KeyPath = swift_getKeyPath();
  v169 = v31;
  v170 = KeyPath;
  v214 = 0;
  if ((*(a2 + 16) & 1) == 0)
  {
    *&v127[1] = v33;
    v49 = sub_2154A069C();
    MEMORY[0x28223BE20](v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D1E0);
    sub_215376614();
    sub_21549F9FC();
    v50 = v128;
    sub_215374398(a2, v128);
    v51 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v127[0] = a2;
    v52 = swift_allocObject();
    sub_2153743FC(v50, v52 + v51);
    v53 = sub_2151ACC5C(&qword_27CA5B298, &qword_27CA5B248);
    v129 = v47;
    v54 = v131;
    sub_2154A0AEC();

    (*(v130 + 8))(v11, v54);
    sub_215374398(a2, v50);
    v55 = swift_allocObject();
    sub_2153743FC(v50, v55 + v51);
    *&v205 = v54;
    *(&v205 + 1) = v53;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v57 = v133;
    v58 = v134;
    v59 = v156;
    sub_2154A0B2C();

    (*(v132 + 8))(v59, v57);
    v60 = v127[0];
    v61 = *(v127[0] + 80);
    v62 = *(v127[0] + 88);
    *&v205 = *(v127[0] + 72);
    *(&v205 + 1) = v61;
    LOBYTE(v206) = v62;
    MEMORY[0x216067A50](&v175, v129);
    sub_215374398(v60, v50);
    v63 = swift_allocObject();
    sub_2153743FC(v50, v63 + v51);
    *&v205 = v57;
    *(&v205 + 1) = MEMORY[0x277D839F8];
    *&v206 = OpaqueTypeConformance2;
    *(&v206 + 1) = MEMORY[0x277D83A28];
    swift_getOpaqueTypeConformance2();
    v64 = v138;
    v65 = v136;
    sub_2154A0C0C();

    (*(v135 + 8))(v58, v65);
    sub_2154A0FAC();
    sub_21549FE4C();
    v66 = v142;
    (*(v139 + 32))(v142, v64, v140);
    v67 = (v66 + *(v141 + 36));
    v68 = v228;
    v67[4] = v227;
    v67[5] = v68;
    v67[6] = v229;
    v69 = v224;
    *v67 = v223;
    v67[1] = v69;
    v70 = v226;
    v67[2] = v225;
    v67[3] = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B1B8);
    v71 = v146;
    sub_2154A0E0C();
    sub_2153769D8();
    sub_2154A0A3C();
    sub_2151ADCD8(v71, &qword_27CA5B240);
    sub_2151ADCD8(v66, &qword_27CA5B268);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B2A8);
    v72 = swift_allocObject();
    v156 = xmmword_2154BDB40;
    *(v72 + 16) = xmmword_2154BDB40;
    LOBYTE(v64) = sub_2154A06EC();
    *(v72 + 32) = v64;
    v73 = sub_2154A06FC();
    *(v72 + 33) = v73;
    v74 = sub_2154A071C();
    sub_2154A071C();
    v75 = sub_2154A071C();
    v76 = v153;
    if (v75 != v64)
    {
      v74 = sub_2154A071C();
    }

    sub_2154A071C();
    v77 = sub_2154A071C();
    v31 = v169;
    v78 = v147;
    if (v77 != v73)
    {
      v74 = sub_2154A071C();
    }

    sub_21549F99C();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v86 = v85;
    (*(v144 + 32))(v78, v157, v145);
    v87 = v78 + *(v158 + 36);
    *v87 = v74;
    *(v87 + 8) = v80;
    *(v87 + 16) = v82;
    *(v87 + 24) = v84;
    *(v87 + 32) = v86;
    *(v87 + 40) = 0;
    sub_2154A056C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B2B0);
    v88 = swift_allocObject();
    *(v88 + 16) = v156;
    v89 = sub_2154A06BC();
    *(v88 + 32) = v89;
    v90 = sub_2154A069C();
    *(v88 + 33) = v90;
    sub_2154A06AC();
    sub_2154A06AC();
    if (sub_2154A06AC() != v89)
    {
      sub_2154A06AC();
    }

    sub_2154A06AC();
    if (sub_2154A06AC() != v90)
    {
      sub_2154A06AC();
    }

    v91 = v150;
    sub_215376B7C();
    sub_2154A0A8C();
    (*(v154 + 8))(v76, v155);
    sub_2151ADCD8(v78, &qword_27CA5B278);
    v92 = swift_allocObject();
    *(v92 + 16) = v156;
    v93 = sub_2154A070C();
    *(v92 + 32) = v93;
    v94 = sub_2154A072C();
    *(v92 + 33) = v94;
    sub_2154A071C();
    sub_2154A071C();
    if (sub_2154A071C() != v93)
    {
      sub_2154A071C();
    }

    sub_2154A071C();
    if (sub_2154A071C() != v94)
    {
      sub_2154A071C();
    }

    sub_21549FB7C();
    sub_21549F99C();
    v236 = v95;
    v237 = v96;
    v238 = v97;
    v239 = v98;
    v240 = 0;
    v99 = v149;
    sub_2154A04FC();
    (*(v151 + 32))(v99, v91, v152);
    v100 = v99;
    v101 = v148;
    sub_2151C6120(v100, v148);
    sub_2151C6120(v101, v31);
    v34 = 0;
  }

  (*(v164 + 56))(v31, v34, 1, v168);
  sub_21549FB7C();
  sub_2154A0FAC();
  sub_21549FAFC();
  v167 = v230;
  LODWORD(v164) = v231;
  v158 = v232;
  LODWORD(v157) = v233;
  v155 = v235;
  *&v156 = v234;
  v102 = v214;
  v103 = v165;
  sub_2151C6190(v31, v165);
  v104 = v221;
  v105 = v220;
  v180 = v221;
  v181 = v222;
  v106 = v219;
  v107 = v217;
  v178 = v219;
  v179 = v220;
  v176 = v217;
  v177 = v218;
  *&v182[0] = v174;
  v168 = xmmword_2154BF9D0;
  *(v182 + 8) = xmmword_2154BF9D0;
  v108 = v182[0];
  v109 = v218;
  v110 = v166;
  *(v166 + 96) = v222;
  *(v110 + 112) = v108;
  v111 = v216;
  v175 = v216;
  *(v110 + 128) = *&v182[1];
  *(v110 + 64) = v105;
  *(v110 + 80) = v104;
  *v110 = v111;
  *(v110 + 16) = v107;
  *(v110 + 32) = v109;
  *(v110 + 48) = v106;
  v154 = xmmword_2154BF9E0;
  *(v183 + 8) = xmmword_2154BF9E0;
  v112 = v162;
  v113 = v163;
  *&v183[0] = v163;
  *(&v183[1] + 1) = 0x4059000000000000;
  *&v184 = v162;
  v114 = v160;
  v115 = v161;
  *(&v184 + 1) = v161;
  *&v185 = v43;
  *(&v185 + 1) = v160;
  *&v186 = v173;
  *(&v186 + 1) = v44;
  v116 = v159;
  *&v187 = v159;
  *(&v187 + 1) = v172;
  LOBYTE(v188) = v171;
  *(&v188 + 1) = *v215;
  DWORD1(v188) = *&v215[3];
  *(&v188 + 1) = v170;
  LODWORD(v153) = v102;
  v189 = v102;
  v117 = v183[0];
  v118 = v183[1];
  v119 = v184;
  *(v110 + 184) = v185;
  *(v110 + 168) = v119;
  *(v110 + 152) = v118;
  *(v110 + 136) = v117;
  v120 = v186;
  v121 = v187;
  v122 = v188;
  *(v110 + 248) = v102;
  *(v110 + 232) = v122;
  *(v110 + 216) = v121;
  *(v110 + 200) = v120;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B2C0);
  sub_2151C6190(v103, v110 + *(v123 + 64));
  v124 = v110 + *(v123 + 80);
  *v124 = v167;
  *(v124 + 8) = v164;
  *(v124 + 16) = v158;
  *(v124 + 24) = v157;
  v125 = v155;
  *(v124 + 32) = v156;
  *(v124 + 40) = v125;
  sub_215376C44(&v175, &v205);
  sub_215376CB4(v183, &v205);
  sub_2151ADCD8(v169, &qword_27CA5B290);
  sub_2151ADCD8(v103, &qword_27CA5B290);
  v191 = v154;
  v190 = v113;
  v192 = 0x4059000000000000;
  v193 = v112;
  v194 = v115;
  v195 = v43;
  v196 = v114;
  v197 = v173;
  v198 = v44;
  v199 = v116;
  v200 = v172;
  v201 = v171;
  *v202 = *v215;
  *&v202[3] = *&v215[3];
  v203 = v170;
  v204 = v153;
  sub_215376CEC(&v190);
  v209 = v220;
  v210 = v221;
  v211 = v222;
  v205 = v216;
  v206 = v217;
  v207 = v218;
  v208 = v219;
  v212 = v174;
  v213 = v168;
  return sub_2151ADCD8(&v205, &qword_27CA5B2C8);
}

double sub_215373CE0@<D0>(uint64_t a1@<X8>)
{
  sub_2154A0FAC();
  sub_21549FAFC();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  result = *&v7;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_215373D78()
{
  result = sub_21549FA2C();
  if (result)
  {
    type metadata accessor for WaveformScrollView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
    return sub_2154A0DFC();
  }

  return result;
}

void sub_215373DF8(double *a1@<X8>)
{
  sub_21549FC4C();
  v2 = 1.0;
  if (v3 != 0.0)
  {
    sub_21549FC5C();
    v5 = v4;
    sub_21549FC6C();
    v7 = v5 + v6;
    sub_21549FC4C();
    v9 = v8;
    sub_21549FC7C();
    v10 = v7 / (v9 - CGRectGetWidth(v11));
    v2 = 0.0;
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v2 = v10;
    }
  }

  *a1 = v2;
}

void *sub_215373E78(double *a1, double *a2, void *a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = type metadata accessor for WaveformScrollView();
  v7 = a3 + *(v6 + 60);
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v20) = *v7;
  v21 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  result = sub_2154A0DEC();
  if ((LOBYTE(v19) & 1) != 0 || (v11 = a3[16], v12 = a3[17], v20 = a3[15], v21 = v11, v22 = v12, v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B228), result = MEMORY[0x216067A50](&v19, v13), v19 <= 0.0))
  {
    if (v4 != v5)
    {
      v14 = a3 + *(v6 + 56);
      v15 = *v14;
      v16 = *(v14 + 1);
      LOBYTE(v20) = v15;
      v21 = v16;
      result = sub_2154A0DEC();
      if (LOBYTE(v19) == 1)
      {
        v17 = a3[4];
        v18 = a3[5];
        v20 = a3[3];
        v21 = v17;
        v22 = v18;
        v19 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B2D0);
        return sub_2154A0ECC();
      }
    }
  }

  else
  {
    LOBYTE(v20) = v8;
    v21 = v9;
    LOBYTE(v19) = 1;
    sub_2154A0DFC();
    return sub_215373FEC();
  }

  return result;
}

uint64_t sub_215373FEC()
{
  v1 = sub_21549FCAC();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v11 = *(v0 + 48);
  v2 = v11;
  v12 = v3;
  v13 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B228);
  MEMORY[0x216067A50](&v10);
  v11 = v2;
  v12 = v3;
  v13 = v4;
  sub_2154A0EDC();
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v11 = *(v0 + 120);
  v12 = v5;
  v13 = v6;
  sub_2154A0EDC();
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v11 = *(v0 + 96);
  v12 = v7;
  LOBYTE(v13) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B230);
  sub_2154A0EDC();

  type metadata accessor for WaveformScrollView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B1B8);
  sub_2154A0DEC();
  sub_21549FC9C();
  return sub_2154A0DFC();
}

_BYTE *sub_21537419C(_BYTE *result, _BYTE *a2)
{
  if (*a2 == 1 && (*result & 1) == 0)
  {
    sub_215373FEC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B230);
    return sub_2154A0ECC();
  }

  return result;
}

_BYTE *sub_215374218(_BYTE *result, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    if (*result)
    {
      type metadata accessor for WaveformScrollView();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
      sub_2154A0DFC();
      return sub_215373FEC();
    }
  }

  return result;
}

uint64_t sub_2153742A4()
{
  if ((*(v0 + 16) & 1) != 0 || *(v0 + 144) > 2u)
  {
    return 0;
  }

  v2 = [objc_opt_self() mainBundle];
  v3 = sub_2154A1D2C();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  v5 = sub_2154A1D6C();
  return v5;
}

uint64_t sub_215374398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaveformScrollView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2153743FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaveformScrollView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_215374460@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for WaveformScrollView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_215372850(a1, v6, a2);
}

uint64_t sub_2153744F8@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B2F0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  sub_215376FD8();
  sub_2154A095C();
  sub_2154A0FAC();
  sub_21549FAFC();
  v15 = v28;
  v27 = v29;
  v26 = v30;
  v25 = v31;
  v23 = v33;
  v24 = v32;
  sub_2154A095C();
  v16 = *(v3 + 16);
  v16(v9, v14, v2);
  v16(v6, v12, v2);
  v16(a1, v9, v2);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B300);
  v18 = &a1[*(v17 + 48)];
  *v18 = v15;
  v18[8] = v27;
  *(v18 + 2) = v26;
  v18[24] = v25;
  v19 = v23;
  *(v18 + 4) = v24;
  *(v18 + 5) = v19;
  v16(&a1[*(v17 + 64)], v6, v2);
  v20 = *(v3 + 8);
  v20(v12, v2);
  v20(v14, v2);
  v20(v6, v2);
  return (v20)(v9, v2);
}

uint64_t sub_2153747AC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2154A025C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B2E0);
  sub_2153744F8((a1 + *(v2 + 44)));
  v3 = sub_2154A0CDC();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B2E8);
  v6 = (a1 + *(result + 36));
  *v6 = KeyPath;
  v6[1] = v3;
  return result;
}

double sub_215374838()
{
  v1 = sub_2154A00DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 112);
  v5 = *(v0 + 104);
  v9 = v5;
  if (v10 == 1)
  {
    return v5;
  }

  sub_2154A227C();
  v7 = sub_2154A068C();
  sub_21549F07C();

  sub_2154A00CC();
  swift_getAtKeyPath();
  sub_2151ADCD8(&v9, &qword_27CA5B318);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

void *sub_21537499C(uint64_t *a1, uint64_t a2, CGFloat a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B310);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v53 - v9;
  v60 = sub_2154A00DC();
  v10 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21549FD4C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v65 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *(a2 + 32);
  v74 = *(a2 + 48);
  v69 = *(a2 + 32);
  v70 = *(a2 + 48);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B228);
  MEMORY[0x216067A50](&v67);
  v16 = *&v67;
  v69 = *(a2 + 56);
  v70 = *(a2 + 72);
  MEMORY[0x216067A50](&v67, v15);
  v17 = *&v67;
  v18 = *a1;
  v69 = *(a2 + 80);
  LOBYTE(v70) = *(a2 + 96);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B230);
  MEMORY[0x216067A50](&v67, v19);
  v20 = 0.0;
  sub_215375214(v18, v67, 0.0, 7.0, a3, a4 + -44.0 + -14.0, v16, v17);
  v21 = *(a2 + 24);
  v69 = v73;
  v70 = v74;
  v64 = v15;
  result = MEMORY[0x216067A50](&v67, v15);
  v23 = *&v67 + a3 / v21 * -0.5;
  v24 = a3 / v21 + v23;
  v25 = floor(v23);
  v26 = ceil(v24);
  if (v26 < 0.0)
  {
    v26 = 0.0;
  }

  if (v25 >= 0.0)
  {
    v20 = v25;
  }

  v27 = v26 - v20;
  if (COERCE__INT64(fabs(v26 - v20)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((v27 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v28 = 4 * v27;
  v29 = [objc_opt_self() secondarySystemFillColor];
  sub_2154A0C8C();
  sub_21549FD3C();

  if (v28 < 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v53 = v13;
  v54 = v12;
  if (v28)
  {
    v30 = 0;
    v72 = *(a2 + 112);
    v71 = *(a2 + 104);
    v63 = v72;
    v57 = (v10 + 8);
    v58 = v71;
    v55 = a4 + -44.0 + -7.0 + 12.0;
    v62 = v18;
    v61 = v28;
    do
    {
      v67 = v73;
      v68 = v74;
      MEMORY[0x216067A50](&v66, v64);
      if ((v63 & 1) == 0)
      {

        sub_2154A227C();
        v31 = sub_2154A068C();
        sub_21549F07C();

        v32 = v59;
        sub_2154A00CC();
        swift_getAtKeyPath();
        sub_2151ADCD8(&v71, &qword_27CA5B318);
        v33 = *v57;
        v34 = v60;
        (*v57)(v32, v60);

        sub_2154A227C();
        v35 = sub_2154A068C();
        sub_21549F07C();

        sub_2154A00CC();
        swift_getAtKeyPath();
        sub_2151ADCD8(&v71, &qword_27CA5B318);
        v36 = v32;
        v28 = v61;
        v33(v36, v34);
      }

      sub_2154A088C();
      sub_21549FD1C();
      if ((v30 & 3) != 0)
      {
        sub_215377148(&v69);
      }

      else
      {
        sub_2154A317C();
        sub_2154A316C();
        v37 = sub_2154A078C();
        v38 = v56;
        (*(*(v37 - 8) + 56))(v56, 1, 1, v37);
        sub_2154A07DC();
        sub_2151ADCD8(v38, &qword_27CA5B310);
        v39 = sub_2154A08FC();
        v41 = v40;
        LOBYTE(v38) = v42;

        v43 = sub_2154A08EC();
        v45 = v44;
        v47 = v46;
        sub_215354880(v39, v41, v38 & 1);

        LODWORD(v67) = sub_2154A04BC();
        v48 = sub_2154A08DC();
        v50 = v49;
        v52 = v51;
        sub_215354880(v43, v45, v47 & 1);
        v28 = v61;

        sub_2154A104C();
        sub_21549FD0C();
        sub_215377148(&v69);
        sub_215354880(v48, v50, v52 & 1);
      }

      ++v30;
    }

    while (v28 != v30);
  }

  return (*(v53 + 8))(v65, v54);
}

uint64_t sub_215375214(uint64_t a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8)
{
  v82 = a2;
  v90 = a1;
  v74 = a8;
  v75 = a7;
  v72 = sub_2154A00DC();
  v13 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21549F7EC();
  v73 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_21549FD4C();
  v18 = *(v93 - 8);
  v19 = (MEMORY[0x28223BE20])(v93);
  v87 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (MEMORY[0x28223BE20])(v19);
  v92 = &v66 - v22;
  v23 = (MEMORY[0x28223BE20])(v21);
  v91 = &v66 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v66 - v25;
  result = TSDRectIsFinite();
  if (result && (*&a7 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v28 = *(v96 + 24);
    *&v95 = a5 / v28;
    v89 = v75 + a5 / v28 * -0.5;
    round(sub_215374838() * (v28 * (0.0 - v89)));
    sub_215374838();
    v101.origin.x = a3;
    v101.origin.y = a4;
    v101.size.width = a5;
    v101.size.height = a6;
    CGRectGetMinX(v101);
    v29 = a3;
    v30 = a4;
    v31 = a5;
    v32 = a6;
    if (v82)
    {
      CGRectGetMinX(*&v29);
      v102.origin.x = a3;
      v102.origin.y = a4;
      v102.size.width = a5;
      v102.size.height = a6;
      CGRectGetMinY(v102);
      v103.origin.x = a3;
      v103.origin.y = a4;
      v103.size.width = a5;
      v103.size.height = a6;
      CGRectGetWidth(v103);
    }

    else
    {
      CGRectGetMinY(*&v29);
      round(v28 * v74 * sub_215374838());
      sub_215374838();
    }

    v33 = a4;
    v86 = a3;
    v104.origin.x = a3;
    v104.origin.y = a4;
    v104.size.width = a5;
    v104.size.height = a6;
    CGRectGetHeight(v104);
    sub_2154A088C();
    v34 = objc_allocWithZone(MEMORY[0x277D75348]);
    aBlock[4] = sub_2153764B0;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2153765A4;
    aBlock[3] = &block_descriptor_38;
    v35 = _Block_copy(aBlock);
    [v34 initWithDynamicProvider_];
    _Block_release(v35);

    sub_2154A0C8C();
    sub_21549FD3C();

    sub_21549FD1C();
    sub_215377148(v98);
    v36 = *(v18 + 8);
    v85 = v18 + 8;
    v84 = v36;
    v36(v26, v93);
    sub_2154A0CFC();
    sub_21549FD3C();

    result = sub_21549FD2C();
    v37 = *(v96 + 8);
    v83 = *(v96 + 16);
    v88 = (v83 + v37) / v28;
    v38 = v89 / v88;
    if (COERCE_UNSIGNED_INT64(fabs(v89 / v88)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v38 <= -9.22337204e18)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v38 >= 9.22337204e18)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v39 = (*&v95 + v89) / v88;
      if (COERCE__INT64(fabs(v39)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (v39 <= -9.22337204e18)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      if (v39 >= 9.22337204e18)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v95 = v39;
      v40 = v39 & ~(v39 >> 63);
      if (v40 < v38)
      {
LABEL_45:
        __break(1u);
        return result;
      }

      v41 = v13;
      v42 = v38 & ~(v38 >> 63);
      v43 = v82;
      v44 = v86;
      if (v42 == v40)
      {
LABEL_14:
        v45 = v93;
        v46 = v84;
        v84(v92, v93);
        return v46(v91, v45);
      }

      v66 = v73 + 16;
      v78 = a6 + -20.0;
      v77 = fmax(a6 + -20.0, 1.0);
      v67 = (v41 + 8);
      v47 = (v18 + 16);
      v76 = (v73 + 8);
      v81 = a5;
      v80 = v33;
      v70 = v15;
      v79 = v28;
      v69 = v47;
      v68 = v17;
      while (v42 < v95)
      {
        v61 = v42;
        if (v43)
        {
          if (v88 * v61 >= v75)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v62 = *(sub_21549F7FC() + 16);

          v63 = v88 * v61;
          if (v42 >= v62 || v63 >= v74)
          {
            goto LABEL_14;
          }
        }

        v65 = *(sub_21549F7FC() + 16);

        if (v42 >= v65)
        {
          sub_21549F7CC();
        }

        else
        {
          result = sub_21549F7FC();
          if (v42 >= *(result + 16))
          {
            goto LABEL_38;
          }

          (*(v73 + 16))(v17, result + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v42, v15);
        }

        sub_21549F7DC();
        v106.origin.x = v44;
        v106.origin.y = v33;
        v106.size.width = a5;
        v106.size.height = a6;
        MinX = CGRectGetMinX(v106);
        v99 = *(v96 + 104);
        v100 = *(v96 + 112);
        if (v100 == 1)
        {
          v107.origin.x = v44;
          v107.origin.y = v33;
          v107.size.width = a5;
          v107.size.height = a6;
          CGRectGetMinY(v107);
        }

        else
        {

          sub_2154A227C();
          v48 = sub_2154A068C();
          sub_21549F07C();

          v49 = v71;
          sub_2154A00CC();
          swift_getAtKeyPath();
          sub_2151ADCD8(&v99, &qword_27CA5B318);
          v50 = *v67;
          v51 = v72;
          (*v67)(v49, v72);

          sub_2154A227C();
          v52 = sub_2154A068C();
          sub_21549F07C();

          sub_2154A00CC();
          swift_getAtKeyPath();
          sub_2151ADCD8(&v99, &qword_27CA5B318);
          v50(v49, v51);
          v105.origin.x = v44;
          v105.origin.y = v33;
          v105.size.width = a5;
          v105.size.height = a6;
          CGRectGetMinY(v105);

          sub_2154A227C();
          v53 = sub_2154A068C();
          sub_21549F07C();

          sub_2154A00CC();
          swift_getAtKeyPath();
          sub_2151ADCD8(&v99, &qword_27CA5B318);
          v50(v49, v51);

          sub_2154A227C();
          v54 = sub_2154A068C();
          sub_21549F07C();

          sub_2154A00CC();
          swift_getAtKeyPath();
          sub_2151ADCD8(&v99, &qword_27CA5B318);
          v50(v49, v51);

          sub_2154A227C();
          v55 = sub_2154A068C();
          sub_21549F07C();

          sub_2154A00CC();
          swift_getAtKeyPath();
          sub_2151ADCD8(&v99, &qword_27CA5B318);
          v50(v49, v51);

          sub_2154A227C();
          v56 = sub_2154A068C();
          v17 = v68;
          sub_21549F07C();

          v47 = v69;
          sub_2154A00CC();
          swift_getAtKeyPath();
          sub_2151ADCD8(&v99, &qword_27CA5B318);
          v57 = v51;
          v15 = v70;
          v50(v49, v57);
          v43 = v82;
        }

        ++v42;
        sub_2154A088C();
        if (sub_21549F7BC())
        {
          v58 = v91;
        }

        else
        {
          v58 = v92;
        }

        v59 = v87;
        v60 = v93;
        (*v47)(v87, v58, v93);
        sub_21549FD1C();
        sub_215377148(aBlock);
        v84(v59, v60);
        result = (*v76)(v17, v15);
        a5 = v81;
        v33 = v80;
        v44 = v86;
        if (v95 == v42)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
    goto LABEL_40;
  }

  return result;
}

uint64_t sub_215376010(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_21549F11C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_2154A1FFC();
  v1[6] = sub_2154A1FEC();
  v4 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_215376104, v4, v3);
}

uint64_t sub_215376104()
{

  sub_21549F79C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2153762A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2154A012C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = v1[4];
  v8 = v1[6];
  v31 = v1[5];
  v32 = v8;
  v9 = v1[1];
  v26 = *v1;
  v10 = v1[2];
  v11 = v1[3];
  v27 = v9;
  v28 = v10;
  v33 = *(v1 + 112);
  v29 = v11;
  v30 = v7;
  v12 = swift_allocObject();
  v13 = v1[5];
  *(v12 + 80) = v1[4];
  *(v12 + 96) = v13;
  *(v12 + 112) = v1[6];
  *(v12 + 128) = *(v1 + 112);
  v14 = v1[1];
  *(v12 + 16) = *v1;
  *(v12 + 32) = v14;
  v15 = v1[3];
  *(v12 + 48) = v1[2];
  *(v12 + 64) = v15;
  (*(v4 + 104))(v6, *MEMORY[0x277CE00F0], v3);
  sub_215376CB4(&v26, v25);
  sub_2154A0E7C();
  v16 = swift_allocObject();
  v17 = v31;
  v18 = v32;
  v19 = v29;
  *(v16 + 80) = v30;
  *(v16 + 96) = v17;
  *(v16 + 112) = v18;
  v20 = v27;
  v21 = v28;
  *(v16 + 16) = v26;
  *(v16 + 32) = v20;
  *(v16 + 128) = v33;
  *(v16 + 48) = v21;
  *(v16 + 64) = v19;
  v22 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B308) + 36));
  sub_21549FBCC();
  sub_215376CB4(&v26, v25);
  result = sub_2154A200C();
  *v22 = &unk_2154BFD20;
  v22[1] = v16;
  return result;
}

id sub_2153764B0(void *a1)
{
  v1 = [a1 ic_isDark];
  v2 = objc_opt_self();
  v3 = v2;
  if (v1)
  {
    v4 = &selRef_tertiarySystemFillColor;
    v5 = [v2 tertiarySystemFillColor];
    sub_2154A28FC();
    v7 = v6;

    v8 = v7 + v7;
  }

  else
  {
    v4 = &selRef_quaternarySystemFillColor;
    v9 = [v2 quaternarySystemFillColor];
    sub_2154A28FC();
    v8 = v10;
  }

  v11 = [v3 *v4];
  v12 = [v11 colorWithAlphaComponent_];

  return v12;
}

id sub_2153765A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

unint64_t sub_215376614()
{
  result = qword_27CA5D280;
  if (!qword_27CA5D280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D280);
  }

  return result;
}

uint64_t sub_215376698()
{
  type metadata accessor for WaveformScrollView();

  return sub_215373D78();
}

void *sub_215376720(double *a1, double *a2)
{
  v5 = *(type metadata accessor for WaveformScrollView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_215373E78(a1, a2, v6);
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for WaveformScrollView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[15];
  v6 = sub_21549FCAC();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B1B8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_215376944(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for WaveformScrollView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_2153769D8()
{
  result = qword_27CA5B2A0;
  if (!qword_27CA5B2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B258);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B248);
    sub_2151ACC5C(&qword_27CA5B298, &qword_27CA5B248);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B2A0);
  }

  return result;
}

unint64_t sub_215376B7C()
{
  result = qword_27CA5B2B8;
  if (!qword_27CA5B2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B278);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B268);
    sub_2153769D8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B2B8);
  }

  return result;
}

uint64_t sub_215376C44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B2C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_215376D64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_215376DAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_215376E1C()
{
  result = qword_27CA5B2D8;
  if (!qword_27CA5B2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B200);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B218);
    sub_2151ACC5C(&qword_27CA5B220, &qword_27CA5B218);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_215377368(&qword_27CA5CD20, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B2D8);
  }

  return result;
}

unint64_t sub_215376FD8()
{
  result = qword_27CA5B2F8;
  if (!qword_27CA5B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B2F8);
  }

  return result;
}

uint64_t sub_21537702C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroy_30Tm()
{

  sub_21537702C(*(v0 + 120), *(v0 + 128));

  return MEMORY[0x2821FE8E8](v0, 129, 7);
}

uint64_t sub_2153770B4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2151BD278;

  return sub_215376010(v0 + 16);
}

unint64_t sub_21537719C()
{
  result = qword_27CA5B320;
  if (!qword_27CA5B320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B2E8);
    sub_2151ACC5C(&qword_27CA5B328, &qword_27CA5B330);
    sub_2151ACC5C(&qword_27CA5B338, &qword_27CA5D030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B320);
  }

  return result;
}

unint64_t sub_215377280()
{
  result = qword_27CA5B340;
  if (!qword_27CA5B340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B308);
    sub_2151ACC5C(&qword_27CA5B348, &qword_27CA5B350);
    sub_215377368(&unk_27CA5C970, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B340);
  }

  return result;
}

uint64_t sub_215377368(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t (*sub_215377474(uint64_t *a1))()
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
  v5 = OBJC_IVAR___ICMediaActionMenu_presentingSourceView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21537750C;
}

uint64_t sub_215377544()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    inserted = SidecarInsertMenuController.menu()();

    if (inserted)
    {
      v3 = [inserted children];

      sub_2151A6C9C(0, &qword_281199650);
      v4 = sub_2154A1F4C();

      if (v4 >> 62)
      {
        v5 = sub_2154A2C8C();
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return v5 != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id MediaActionMenu.__allocating_init(isPasswordProtected:isInSecureScreen:presentingViewController:presentingBarButtonItem:presentingSourceView:sidecarMenuController:completion:)(char a1, char a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v16 = objc_allocWithZone(v9);
  v17 = [objc_opt_self() isCameraAvailable];
  v18 = [objc_opt_self() ic_isLiveTextAvailable];
  if (a7)
  {
    aBlock[4] = a7;
    aBlock[5] = a8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2153777F0;
    aBlock[3] = &block_descriptor_10;
    v22 = v18;
    v19 = _Block_copy(aBlock);

    v17 = v17;

    v18 = v22;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v16 initWithIsCameraAvailable:v17 isLiveTextAvailable:v18 isPasswordProtected:a1 & 1 isInSecureScreen:a2 & 1 presentingViewController:a3 presentingBarButtonItem:a4 presentingSourceView:a5 sidecarMenuController:a6 completion:v19];
  sub_2151AF750(a7);

  _Block_release(v19);
  return v20;
}

uint64_t sub_2153777F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = sub_2154A1D6C();
  v6 = v5;

  v3(a2, v4, v6);
}

id MediaActionMenu.__allocating_init(isCameraAvailable:isLiveTextAvailable:isPasswordProtected:isInSecureScreen:presentingViewController:presentingBarButtonItem:presentingSourceView:sidecarMenuController:completion:)(char a1, char a2, char a3, char a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v16 = objc_allocWithZone(v11);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v17 = &v16[OBJC_IVAR___ICMediaActionMenu_completion];
  *v17 = 0;
  v17[1] = 0;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR___ICMediaActionMenu_presentingBarButtonItem;
  *&v16[OBJC_IVAR___ICMediaActionMenu_presentingBarButtonItem] = 0;
  v16[OBJC_IVAR___ICMediaActionMenu_isCameraAvailable] = a1;
  v16[OBJC_IVAR___ICMediaActionMenu_isLiveTextAvailable] = a2;
  v16[OBJC_IVAR___ICMediaActionMenu_isPasswordProtected] = a3;
  v16[OBJC_IVAR___ICMediaActionMenu_isInSecureScreen] = a4;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v19 = *&v16[v18];
  *&v16[v18] = a6;
  v20 = a6;

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v21 = *v17;
  *v17 = a9;
  v17[1] = a10;
  sub_2151BD748(a9);
  sub_2151AF750(v21);
  v29.receiver = v16;
  v29.super_class = v28;
  v22 = objc_msgSendSuper2(&v29, sel_init);
  sub_2151AF750(a9);

  return v22;
}

id MediaActionMenu.init(isCameraAvailable:isLiveTextAvailable:isPasswordProtected:isInSecureScreen:presentingViewController:presentingBarButtonItem:presentingSourceView:sidecarMenuController:completion:)(char a1, char a2, char a3, char a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v14 = sub_2151BD580(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  sub_2151AF750(a9);

  return v14;
}

uint64_t sub_215377E34()
{
  v1 = (v0 + OBJC_IVAR___ICMediaActionMenu_completion);
  swift_beginAccess();
  v2 = *v1;
  sub_2151BD748(*v1);
  return v2;
}

uint64_t sub_215377F50(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___ICMediaActionMenu_completion);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_2151AF750(v6);
}

uint64_t sub_215377FB0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___ICMediaActionMenu_completion);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21537A5AC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_2151BD748(v4);
}

uint64_t sub_215378050(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21537A5A4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___ICMediaActionMenu_completion);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_2151BD748(v3);
  return sub_2151AF750(v8);
}

void sub_2153781A8(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t (*sub_215378200(uint64_t *a1))()
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
  v5 = OBJC_IVAR___ICMediaActionMenu_presentingViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21537A5F8;
}

void sub_215378298(id **a1, char a2)
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

void *sub_215378360()
{
  v1 = OBJC_IVAR___ICMediaActionMenu_presentingBarButtonItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21537840C(uint64_t a1)
{
  v3 = OBJC_IVAR___ICMediaActionMenu_presentingBarButtonItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_215378464(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ICMediaActionMenu_presentingBarButtonItem;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_215378524()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2154BDB20;
  *(v0 + 32) = sub_21537876C();
  return v0;
}

void sub_21537862C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      [v2 addNewNoteIfNeeded];
    }
  }
}

uint64_t sub_215378728()
{
  type metadata accessor for MediaActionMenu();
  sub_2151BD978();

  return sub_21549F4FC();
}

id sub_21537876C()
{
  v0 = MEMORY[0x277D84F90];
  v1 = sub_215378A24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DBF0);
  sub_2154A1F5C();

  v2 = sub_215378F38();
  sub_2154A1F5C();

  v3 = sub_215378C08();
  sub_2154A1F5C();

  v4 = sub_215379140();
  sub_2154A1F5C();

  v5 = sub_215379930();
  sub_2154A1F5C();

  v6 = sub_215379684();
  sub_2154A1F5C();

  v14 = sub_21537949C();
  sub_2154A1F5C();

  if (v0 >> 62)
  {
    if (sub_2154A2C8C())
    {
      goto LABEL_3;
    }
  }

  else if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_2151A6C9C(0, &qword_2811994E0);
    v15 = sub_2154A28AC();
    sub_2154A1F5C();

    goto LABEL_6;
  }

LABEL_6:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    inserted = SidecarInsertMenuController.menu()();
  }

  else
  {
    inserted = 0;
  }

  sub_2154A1F5C();

  v10 = objc_opt_self();
  sub_2151A6C9C(0, &qword_281199650);
  v11 = sub_2154A1F3C();

  v12 = [v10 ic:v11 inlineMenuWithChildren:?];

  return v12;
}

id sub_215378A24()
{
  if (v0[OBJC_IVAR___ICMediaActionMenu_isLiveTextAvailable] != 1)
  {
    return 0;
  }

  v1 = [objc_opt_self() mainBundle];
  v2 = sub_2154A1D2C();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  if (!v3)
  {
    sub_2154A1D6C();
    v3 = sub_2154A1D2C();
  }

  v4 = objc_opt_self();
  v5 = sub_2154A1D2C();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v11[4] = sub_21537A57C;
  v11[5] = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2151B5B78;
  v11[3] = &block_descriptor_56;
  v7 = _Block_copy(v11);
  v8 = v0;

  v9 = [v4 ic:v3 actionWithTitle:v5 imageName:v7 handler:?];
  _Block_release(v7);

  return v9;
}

id sub_215378C08()
{
  v1 = sub_21549F03C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  if (v0[OBJC_IVAR___ICMediaActionMenu_isCameraAvailable] == 1)
  {
    if (v0[OBJC_IVAR___ICMediaActionMenu_isPasswordProtected] == 1)
    {
      v7 = v3;
      v8 = objc_opt_self();
      sub_21549F00C();
      sub_21549EF7C();
      (*(v2 + 8))(v5, v7);
      v9 = sub_2154A1D2C();

      [v8 isTypeUTISupportedForPasswordProtectedNotes_];
    }

    v10 = [objc_opt_self() mainBundle];
    v11 = sub_2154A1D2C();
    v12 = [v10 localizedStringForKey:v11 value:0 table:0];

    sub_2154A1D6C();
    v13 = objc_opt_self();
    v14 = sub_2154A1D2C();

    v15 = sub_2154A1D2C();
    v16 = swift_allocObject();
    *(v16 + 16) = v0;
    aBlock[4] = sub_21537A55C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2151B5B78;
    aBlock[3] = &block_descriptor_50;
    v17 = _Block_copy(aBlock);
    v18 = v0;

    v6 = [v13 ic:v14 actionWithTitle:v15 imageName:v17 handler:?];
    _Block_release(v17);
  }

  return v6;
}

id sub_215378F38()
{
  if (([objc_opt_self() ic_isExtension] & 1) != 0 || v0[OBJC_IVAR___ICMediaActionMenu_isCameraAvailable] != 1)
  {
    return 0;
  }

  v1 = [objc_opt_self() mainBundle];
  v2 = sub_2154A1D2C();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  if (!v3)
  {
    sub_2154A1D6C();
    v3 = sub_2154A1D2C();
  }

  v4 = objc_opt_self();
  v5 = sub_2154A1D2C();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v11[4] = sub_21537A53C;
  v11[5] = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2151B5B78;
  v11[3] = &block_descriptor_44;
  v7 = _Block_copy(v11);
  v8 = v0;

  v9 = [v4 ic:v3 actionWithTitle:v5 imageName:v7 handler:?];
  _Block_release(v7);

  return v9;
}

id sub_215379140()
{
  v1 = sub_21549F03C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![objc_opt_self() isSourceTypeAvailable_] || (v0[OBJC_IVAR___ICMediaActionMenu_isInSecureScreen] & 1) != 0)
  {
    return 0;
  }

  if (v0[OBJC_IVAR___ICMediaActionMenu_isPasswordProtected] == 1)
  {
    v6 = objc_opt_self();
    sub_21549F00C();
    sub_21549EF7C();
    (*(v2 + 8))(v4, v1);
    v7 = sub_2154A1D2C();

    [v6 isTypeUTISupportedForPasswordProtectedNotes_];
  }

  v8 = [objc_opt_self() mainBundle];
  v9 = sub_2154A1D2C();
  v10 = [v8 localizedStringForKey:v9 value:0 table:0];

  sub_2154A1D6C();
  v11 = objc_opt_self();
  v12 = sub_2154A1D2C();

  v13 = sub_2154A1D2C();
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  aBlock[4] = sub_21537A51C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151B5B78;
  aBlock[3] = &block_descriptor_38_0;
  v15 = _Block_copy(aBlock);
  v16 = v0;

  v17 = [v11 ic:v12 actionWithTitle:v13 imageName:v15 handler:?];
  _Block_release(v15);

  return v17;
}

id sub_21537949C()
{
  if (v0[OBJC_IVAR___ICMediaActionMenu_isPasswordProtected] & 1) != 0 || (v0[OBJC_IVAR___ICMediaActionMenu_isInSecureScreen])
  {
    return 0;
  }

  v2 = [objc_opt_self() mainBundle];
  v3 = sub_2154A1D2C();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  if (!v4)
  {
    sub_2154A1D6C();
    v4 = sub_2154A1D2C();
  }

  v5 = objc_opt_self();
  v6 = sub_2154A1D2C();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  v11[4] = sub_21537A4FC;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2151B5B78;
  v11[3] = &block_descriptor_32;
  v8 = _Block_copy(v11);
  v9 = v0;

  v10 = [v5 ic:v4 actionWithTitle:v6 imageName:v8 handler:?];
  _Block_release(v8);

  return v10;
}

id sub_215379684()
{
  if (!ICInternalSettingsIsAudioTranscriptionEnabled() || (v0[OBJC_IVAR___ICMediaActionMenu_isPasswordProtected] & 1) != 0 || (v0[OBJC_IVAR___ICMediaActionMenu_isInSecureScreen] & 1) != 0)
  {
    return 0;
  }

  v2 = [objc_opt_self() mainBundle];
  v3 = sub_2154A1D2C();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  if (!v4)
  {
    sub_2154A1D6C();
    v4 = sub_2154A1D2C();
  }

  v5 = objc_opt_self();
  v6 = sub_2154A1D2C();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  v11[4] = sub_21537A4DC;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2151B5B78;
  v11[3] = &block_descriptor_26;
  v8 = _Block_copy(v11);
  v9 = v0;

  v10 = [v5 ic:v4 actionWithTitle:v6 imageName:v8 handler:?];
  _Block_release(v8);

  return v10;
}

uint64_t sub_215379874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + OBJC_IVAR___ICMediaActionMenu_completion);
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {

    v7 = NSStringFromICMediaSourceType(a3);
    v8 = sub_2154A1D6C();
    v10 = v9;

    v6(1, v8, v10);
    sub_2151AF750(v6);
  }

  return result;
}

id sub_215379930()
{
  if (ICInternalSettingsShouldShowImageGenerationUI() & 1) == 0 && ![objc_opt_self() isRunningUnitTests] || (v0[OBJC_IVAR___ICMediaActionMenu_isInSecureScreen])
  {
    return 0;
  }

  v2 = [objc_opt_self() mainBundle];
  v3 = sub_2154A1D2C();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  if (!v4)
  {
    sub_2154A1D6C();
    v4 = sub_2154A1D2C();
  }

  v5 = objc_opt_self();
  v6 = sub_2154A1D2C();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  v11[4] = sub_21537A4D4;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2151B5B78;
  v11[3] = &block_descriptor_20;
  v8 = _Block_copy(v11);
  v9 = v0;

  v10 = [v5 ic:v4 actionWithTitle:v6 imageName:v8 handler:?];
  _Block_release(v8);

  return v10;
}

void sub_215379B30(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      [v4 createImage_];
    }
  }
}

id MediaActionMenu.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MediaActionMenu.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaActionMenu();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_215379CD4(char a1, char a2, char a3, char a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = type metadata accessor for MediaActionMenu();
  v15 = objc_allocWithZone(v25);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v16 = &v15[OBJC_IVAR___ICMediaActionMenu_completion];
  *v16 = 0;
  v16[1] = 0;
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR___ICMediaActionMenu_presentingBarButtonItem;
  *&v15[OBJC_IVAR___ICMediaActionMenu_presentingBarButtonItem] = 0;
  v15[OBJC_IVAR___ICMediaActionMenu_isCameraAvailable] = a1;
  v15[OBJC_IVAR___ICMediaActionMenu_isLiveTextAvailable] = a2;
  v15[OBJC_IVAR___ICMediaActionMenu_isPasswordProtected] = a3;
  v15[OBJC_IVAR___ICMediaActionMenu_isInSecureScreen] = a4;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v18 = *&v15[v17];
  *&v15[v17] = a6;
  v19 = a6;

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v20 = *v16;
  *v16 = a10;
  v16[1] = a11;
  sub_2151BD748(a10);
  sub_2151AF750(v20);
  v26.receiver = v15;
  v26.super_class = v25;
  v21 = objc_msgSendSuper2(&v26, sel_init);
  sub_2151BD978();
  v22 = sub_21549F4FC();

  return v22;
}

uint64_t _s11NotesEditor15MediaActionMenuC4menu19isPasswordProtected0G14InSecureScreen24presentingViewController0M13BarButtonItem0m6SourceN007sidecareO010completionSo6UIMenuCSb_SbSo06UIViewO0CSo05UIBarqR0CSgSo0W0CSgAA013SidecarInserteO0CSgySb_SStcSgtFZ_0(char a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = [objc_opt_self() isCameraAvailable];
  v10 = [objc_opt_self() ic_isLiveTextAvailable];
  v11 = type metadata accessor for MediaActionMenu();
  v12 = objc_allocWithZone(v11);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v13 = &v12[OBJC_IVAR___ICMediaActionMenu_completion];
  *v13 = 0;
  v13[1] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR___ICMediaActionMenu_presentingBarButtonItem;
  *&v12[OBJC_IVAR___ICMediaActionMenu_presentingBarButtonItem] = 0;
  v12[OBJC_IVAR___ICMediaActionMenu_isCameraAvailable] = v9;
  v12[OBJC_IVAR___ICMediaActionMenu_isLiveTextAvailable] = v10;
  v12[OBJC_IVAR___ICMediaActionMenu_isPasswordProtected] = a1;
  v12[OBJC_IVAR___ICMediaActionMenu_isInSecureScreen] = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v15 = *&v12[v14];
  *&v12[v14] = a4;
  v16 = a4;

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v17 = *v13;
  *v13 = a7;
  v13[1] = a8;
  sub_2151BD748(a7);
  sub_2151AF750(v17);
  v25.receiver = v12;
  v25.super_class = v11;
  v18 = objc_msgSendSuper2(&v25, sel_init);
  sub_2151BD978();
  v19 = sub_21549F4FC();

  return v19;
}

void sub_21537A5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v13 = sub_21549E56C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215324EEC(a1, aBlock, &qword_27CA5ABC0);
  if (!v46)
  {
LABEL_6:
    sub_2151ADCD8(aBlock, &qword_27CA5ABC0);
    return;
  }

  sub_2151A6C9C(0, &qword_27CA5B3A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v17 = v49;
  v43 = [v49 attachment];
  v18 = [v43 managedObjectContext];
  if (v18)
  {
    v19 = *(v14 + 16);
    v42 = v18;
    v19(&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v13);
    v20 = *(v14 + 80);
    v40 = a3;
    v41 = a4;
    v21 = (v20 + 24) & ~v20;
    v22 = (v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = a7;
    v39 = v17;
    v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = a2;
    v26 = swift_allocObject();
    *(v26 + 16) = v43;
    (*(v14 + 32))(v26 + v21, v16, v13);
    *(v26 + v22) = v44;
    v27 = v38;
    v28 = v39;
    *(v26 + v23) = v39;
    *(v26 + v24) = v27;
    v29 = (v26 + v25);
    v30 = v40;
    *v29 = v37;
    v29[1] = v30;
    *(v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) = v41;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_21537AE44;
    *(v31 + 24) = v26;
    v47 = sub_2153252BC;
    v48 = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2152F1C04;
    v46 = &block_descriptor_11;
    v32 = _Block_copy(aBlock);
    v33 = v43;
    v34 = v28;

    v35 = v42;
    [v42 performBlockAndWait_];

    _Block_release(v32);
    LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

    if ((v32 & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_6;
  }
}

void sub_21537A984(void *a1, uint64_t a2, void **a3, void *a4, void *a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v44 = a6;
  v45 = a8;
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v10 = sub_21549E56C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v40 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3A8);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v16 - 8);
  v46 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v24 = &v39 - v23;
  v25 = [a1 systemPaperModel];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 paperBundleURL];

    sub_21549E51C();
    v28 = *(v11 + 56);
    v28(v24, 0, 1, v10);
  }

  else
  {
    v28 = *(v11 + 56);
    v28(v24, 1, 1, v10);
  }

  (*(v11 + 16))(v20, a2, v10);
  v28(v20, 0, 1, v10);
  v29 = *(v13 + 48);
  sub_215324EEC(v24, v15, &unk_27CA5B090);
  sub_215324EEC(v20, &v15[v29], &unk_27CA5B090);
  v30 = *(v11 + 48);
  if (v30(v15, 1, v10) != 1)
  {
    v31 = v46;
    sub_215324EEC(v15, v46, &unk_27CA5B090);
    if (v30(&v15[v29], 1, v10) != 1)
    {
      v32 = v40;
      (*(v11 + 32))(v40, &v15[v29], v10);
      sub_21537AF08();
      v33 = v31;
      v34 = sub_2154A1D1C();
      v35 = *(v11 + 8);
      v35(v32, v10);
      sub_2151ADCD8(v20, &unk_27CA5B090);
      sub_2151ADCD8(v24, &unk_27CA5B090);
      v35(v33, v10);
      sub_2151ADCD8(v15, &unk_27CA5B090);
      if ((v34 & 1) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    sub_2151ADCD8(v20, &unk_27CA5B090);
    sub_2151ADCD8(v24, &unk_27CA5B090);
    (*(v11 + 8))(v31, v10);
LABEL_9:
    sub_2151ADCD8(v15, &qword_27CA5B3A8);
    return;
  }

  sub_2151ADCD8(v20, &unk_27CA5B090);
  sub_2151ADCD8(v24, &unk_27CA5B090);
  if (v30(&v15[v29], 1, v10) != 1)
  {
    goto LABEL_9;
  }

  sub_2151ADCD8(v15, &unk_27CA5B090);
LABEL_11:
  v36 = v42;
  v37 = *v41;
  *v41 = v42;
  v38 = v36;

  *v43 = v44;
  *v45 = 1;
}

void sub_21537AE44()
{
  v1 = *(sub_21549E56C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v3);
  v8 = *(v0 + 16);
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + v6);
  v12 = *(v0 + v6 + 8);
  v13 = *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_21537A984(v8, v0 + v2, v7, v9, v10, v11, v12, v13);
}

unint64_t sub_21537AF08()
{
  result = qword_27CA5B3B0;
  if (!qword_27CA5B3B0)
  {
    sub_21549E56C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B3B0);
  }

  return result;
}

void sub_21537AF60(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, void **a7, void *a8)
{
  sub_215324EEC(a1, v30, &qword_27CA5ABC0);
  if (!v31)
  {
    sub_2151ADCD8(v30, &qword_27CA5ABC0);
    return;
  }

  sub_2151A6C9C(0, &qword_27CA5B3B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v14 = v29;
  v15 = swift_dynamicCastObjCProtocolConditional();
  if (v15)
  {
    v16 = v15;
    v14 = v29;
    v17 = [v16 _paperIdentifier];
    v18 = sub_2154A1D6C();
    v20 = v19;

    if (v18 == a5 && v20 == a6)
    {
    }

    else
    {
      v21 = sub_2154A2FAC();

      if ((v21 & 1) == 0)
      {

        goto LABEL_21;
      }
    }

    if (ICInternalSettingsIsTextKit2Enabled())
    {
      v22 = [a8 _pk_viewProviderForAttachment_atCharacterIndex_createIfNeeded_];

      if (!v22)
      {
        goto LABEL_18;
      }

      v23 = [v22 view];

      if (!v23)
      {
        goto LABEL_18;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3C0);
      v24 = swift_dynamicCastClass();
      if (!v24)
      {

LABEL_18:
        v24 = 0;
      }
    }

    else
    {
      v25 = [a8 layoutManager];
      v26 = [v14 viewProviderForParentView:a8 characterIndex:a2 layoutManager:v25];

      if (!v26)
      {
        goto LABEL_18;
      }

      v27 = [v26 view];

      if (!v27)
      {
        goto LABEL_18;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3C0);
      v24 = swift_dynamicCastClass();
      if (!v24)
      {

        goto LABEL_18;
      }
    }

    v28 = *a7;
    *a7 = v24;

    *a4 = 1;
  }

LABEL_21:
}

uint64_t sub_21537B21C(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    while (1)
    {
      v8 = *v7++;
      v12 = v8;
      v9 = a1(&v11, &v12);
      if (v3)
      {
        break;
      }

      if (v11)
      {
        MEMORY[0x216068AC0](v9);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2154A1F8C();
        }

        sub_2154A1FAC();
        v4 = v13;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

void *sub_21537B31C(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B408);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_2154A22EC();
  MEMORY[0x28223BE20](v9);
  v33 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v30 = &v26 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(v12 + 72);
  v27 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = a3 + v27;
  v31 = (v12 + 32);
  v32 = (v12 + 48);
  v18 = MEMORY[0x277D84F90];
  v28 = v9;
  v29 = a1;
  v26 = v16;
  while (1)
  {
    a1(v17, v13);
    if (v3)
    {
      break;
    }

    if ((*v32)(v8, 1, v9) == 1)
    {
      sub_2151ADCD8(v8, &qword_27CA5B408);
    }

    else
    {
      v19 = v30;
      v20 = *v31;
      (*v31)(v30, v8, v9);
      v20(v33, v19, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_215317988(0, v18[2] + 1, 1, v18);
      }

      v22 = v18[2];
      v21 = v18[3];
      if (v22 >= v21 >> 1)
      {
        v18 = sub_215317988(v21 > 1, v22 + 1, 1, v18);
      }

      v18[2] = v22 + 1;
      v23 = v26;
      v24 = v18 + v27 + v22 * v26;
      v9 = v28;
      v20(v24, v33, v28);
      v16 = v23;
      a1 = v29;
    }

    v17 += v16;
    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t static CollaboratorStatusView.fetchAvatarImage(for:size:)(uint64_t a1, double a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_215305EC8;

  return sub_2153844E4(a1, a2, a3);
}

uint64_t sub_21537B6B0(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

void sub_21537B8C0()
{
  v1 = [v0 window];
  if (v1)
  {

    if ((*(v0 + OBJC_IVAR___ICCollaboratorStatusView_hasDisplayedInWindow) & 1) == 0)
    {
      *(v0 + OBJC_IVAR___ICCollaboratorStatusView_hasDisplayedInWindow) = 1;
      sub_2153829AC();
    }

    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v6[4] = sub_215324D54;
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_2151BD7E4;
    v6[3] = &block_descriptor_12;
    v4 = _Block_copy(v6);
    v5 = v0;

    [v2 animateWithDuration:0 delay:v4 usingSpringWithDamping:0 initialSpringVelocity:0.375 options:0.0 animations:0.85 completion:0.0];
    _Block_release(v4);
  }
}

uint64_t sub_21537BA48(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR___ICCollaboratorStatusView_isRemovingFromSuperview] = 1;
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v41 = sub_215384D7C;
  v42 = v7;
  v37 = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_2151BD7E4;
  v40 = &block_descriptor_85;
  v8 = _Block_copy(&v37);
  v9 = v2;
  sub_2151BD748(a1);

  v10 = swift_allocObject();
  *(v10 + 16) = sub_215384D28;
  *(v10 + 24) = v5;
  v41 = sub_21532425C;
  v42 = v10;
  v37 = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_2153DF054;
  v40 = &block_descriptor_91;
  v11 = _Block_copy(&v37);

  [v6 animateWithDuration:0 delay:v8 usingSpringWithDamping:v11 initialSpringVelocity:0.375 options:0.0 animations:0.85 completion:0.0];
  _Block_release(v11);
  _Block_release(v8);
  v12 = *&v9[OBJC_IVAR___ICCollaboratorStatusView_avatarView];
  if (v12)
  {
    v12[OBJC_IVAR___ICCollaboratorAvatarView_isRemovingFromSuperview] = 1;
    v13 = v12;
    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    sub_21532DAF0();
    v23 = v22;
    sub_21532DAF0();
    v25 = v24;
    v43.origin.x = v15;
    v43.origin.y = v17;
    v43.size.width = v19;
    v43.size.height = v21;
    v44 = CGRectOffset(v43, v23, v25);
    x = v44.origin.x;
    y = v44.origin.y;
    width = v44.size.width;
    height = v44.size.height;
    v30 = swift_allocObject();
    v30[3] = 0;
    v30[4] = 0;
    v30[2] = v13;
    v31 = swift_allocObject();
    *(v31 + 2) = v13;
    v31[3] = x;
    v31[4] = y;
    v31[5] = width;
    v31[6] = height;
    v41 = sub_21532FA68;
    v42 = v31;
    v37 = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_2151BD7E4;
    v40 = &block_descriptor_100;
    v32 = _Block_copy(&v37);
    v33 = v13;

    v34 = swift_allocObject();
    *(v34 + 16) = sub_215384D90;
    *(v34 + 24) = v30;
    v41 = sub_215384D9C;
    v42 = v34;
    v37 = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_2153DF054;
    v40 = &block_descriptor_106_0;
    v35 = _Block_copy(&v37);

    [v6 animateWithDuration:0 delay:v32 usingSpringWithDamping:v35 initialSpringVelocity:0.375 options:0.0 animations:0.85 completion:0.0];

    _Block_release(v35);
    _Block_release(v32);
  }
}

void sub_21537BE70(uint64_t a1@<X8>)
{
  *&v2 = COERCE_DOUBLE(sub_21537BF6C());
  v5 = v4;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  if (v4 == 2)
  {
LABEL_6:
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v8;
    *(a1 + 32) = v5 == 2;
    return;
  }

  v9 = *&v2;
  v10 = v3;
  v11 = [objc_opt_self() ic:*MEMORY[0x277D769D0] preferredFontForStyle:*MEMORY[0x277D74410] withFontWeight:?];
  if (v11)
  {
    v12 = v11;
    [v11 lineHeight];
    v14 = v13;

    v8 = v14 + 6.0;
    if (v14 + 6.0 <= 30.0)
    {
      v8 = 30.0;
    }

    v6 = v9 + v8 * -0.5;
    v7 = v10 - v8;
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_21537BF6C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_21549E70C();
  v161 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v160 = &v142 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v162 = &v142 - v4;
  v163 = sub_2154A22AC();
  v5 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v7 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v142 - v9;
  v11 = sub_2154A22EC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v156 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v158 = &v142 - v15;
  MEMORY[0x28223BE20](v16);
  v159 = &v142 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = (&v142 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v142 - v22;
  v24 = &v0[OBJC_IVAR___ICCollaboratorStatusView_collaboratorStatus];
  swift_beginAccess();
  v25 = *&v24[*(type metadata accessor for ResolvedCollaboratorStatus(0) + 28)];
  if (!*(v25 + 16))
  {
    return 0;
  }

  v157 = v10;
  v154 = v1;
  v26 = *(v12 + 16);
  v150 = ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v26(v23, &v150[v25], v11);
  v152 = v26;
  v26(v20, v23, v11);
  v148 = *(v12 + 88);
  if (v148(v20, v11) != *MEMORY[0x277D36410])
  {
    (*(v12 + 8))(v20, v11);
LABEL_15:
    v76 = sub_21537DF28(*&v0[OBJC_IVAR___ICCollaboratorStatusView_textView], v23, 1);
    (*(v12 + 8))(v23, v11);
    return v76;
  }

  v149 = v23;
  v151 = v12;
  v27 = *(v12 + 96);
  v153 = v11;
  v147 = v12 + 96;
  v146 = v27;
  v27(v20, v11);
  v28 = *v20;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3E8);
  v30 = v157;
  v31 = v163;
  (*(v5 + 32))(v157, v20 + *(v29 + 48), v163);
  (*(v5 + 16))(v7, v30, v31);
  if ((*(v5 + 88))(v7, v31) != *MEMORY[0x277D363F8])
  {
    v72 = *(v5 + 8);
    v72(v30, v31);
    v72(v7, v31);
    v11 = v153;
    v23 = v149;
    v12 = v151;
    goto LABEL_15;
  }

  v144 = v28;
  (*(v5 + 96))(v7, v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3F0);
  v145 = *(v32 + 48);
  v33 = *&v7[*(v32 + 64)];
  v34 = v161;
  v35 = v5;
  v36 = *(v161 + 32);
  v37 = v154;
  v36(v162, v7, v154);
  v38 = &v7[v145];
  v39 = v160;
  v36(v160, v38, v37);
  if (!*(v33 + 16))
  {

    v77 = *(v34 + 8);
    v77(v39, v37);
    v77(v162, v37);
    (*(v35 + 8))(v157, v163);
    (*(v151 + 8))(v149, v153);
    return 0;
  }

  v145 = v35;
  v40 = v158;
  v41 = v153;
  v152(v158, &v150[v33], v153);

  v42 = v159;
  (*(v151 + 32))(v159, v40, v41);
  v158 = v0;
  v43 = sub_2153821F4(v144);
  v44 = v162;
  if (!v43 || (v45 = v43, v46 = [v43 textViewManager], v45, !v46) || (v47 = sub_21549E6CC(), v48 = objc_msgSend(v46, sel_textViewForColumn_, v47), v46, v47, (v150 = v48) == 0))
  {
    v12 = v151;
    v73 = v42;
    v11 = v153;
    (*(v151 + 8))(v73, v153);
    v74 = *(v161 + 8);
    v75 = v154;
    v74(v39, v154);
    v74(v44, v75);
    (*(v145 + 8))(v157, v163);
    v0 = v158;
    v23 = v149;
    goto LABEL_15;
  }

  v49 = (v151 + 8);
  v50 = v149;
  v51 = v153;
  v143 = *(v151 + 8);
  v143(v149, v153);
  v52 = v152;
  v152(v50, v42, v51);
  v53 = v156;
  v52(v156, v50, v51);
  v54 = v53;
  v55 = (v148)(v53, v51);
  v56 = v55;
  v57 = v145;
  if (v55 == *MEMORY[0x277D36418])
  {
    v146(v54, v51);
    v58 = *v54;
    v59 = sub_2153821F4(v144);
    if (!v59)
    {

      v94 = v143;
      v143(v149, v51);
      v70 = v51;
      v68 = v94;
      v71 = v162;
      goto LABEL_24;
    }

    v156 = v49;
    v60 = v59;
    v61 = [v59 table];
    v62 = sub_21549E6CC();
    v63 = [v61 textStorageForColumn_];

    v64 = sub_21549E6CC();
    v65 = [v63 characterRangeForRowID_];

    v66 = sub_21549E0EC();
    v67 = v51;
    v68 = v143;
    result = (v143)(v149, v67);
    if (v65 == v66)
    {

      v70 = v153;
      v71 = v162;
      v39 = v160;
      v42 = v159;
LABEL_24:
      v68(v42, v70);
      v95 = *(v161 + 8);
      v96 = v154;
      v95(v39, v154);
      v97 = v71;
LABEL_29:
      v95(v97, v96);
      (*(v57 + 8))(v157, v163);
      return 0;
    }

    if (__OFADD__(v58, v65))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v92 = v149;
    *v149 = &v65[v58];
    goto LABEL_32;
  }

  if (v55 == *MEMORY[0x277D36408])
  {
    v78 = v153;
    v146(v54, v153);
    v79 = v54;
    v80 = *v54;
    v81 = v79[1];
    v82 = sub_2153821F4(v144);
    v83 = v162;
    if (v82)
    {
      v152 = v81;
      v156 = v49;
      v84 = v82;
      v85 = [v82 table];
      v86 = sub_21549E6CC();
      v87 = [v85 textStorageForColumn_];

      v88 = sub_21549E6CC();
      v89 = [v87 characterRangeForRowID_];

      v90 = sub_21549E0EC();
      v68 = v143;
      result = (v143)(v149, v78);
      if (v89 != v90)
      {
        if (__OFADD__(v80, v89))
        {
LABEL_45:
          __break(1u);
          return result;
        }

        v92 = v149;
        *v149 = &v89[v80];
        *(v92 + 8) = v152;
LABEL_32:
        (*(v151 + 104))(v92, v56, v153);
        v93 = v162;
        v39 = v160;
        goto LABEL_33;
      }

      v91 = v153;
      v83 = v162;
      v39 = v160;
    }

    else
    {

      v68 = v143;
      v143(v149, v78);
      v91 = v78;
    }

    v68(v159, v91);
    v95 = *(v161 + 8);
    v96 = v154;
    v95(v39, v154);
    v97 = v83;
    goto LABEL_29;
  }

  v156 = v49;
  v68 = v143;
  v143(v54, v153);
  v92 = v149;
  v93 = v162;
LABEL_33:
  v98 = v150;
  *&v99 = COERCE_DOUBLE(sub_21537DF28(v150, v92, 0));
  v102 = v159;
  if (v101 == 2)
  {
    goto LABEL_37;
  }

  v103 = *&v99;
  v152 = v100;
  LODWORD(v151) = v101;
  v104 = v158;
  v105 = *&v158[OBJC_IVAR___ICCollaboratorStatusView_textView];
  v165 = 0;
  v166 = 0;
  v167 = 1;
  v106 = [v105 TTTextStorage];
  if (!v106)
  {
    goto LABEL_37;
  }

  v107 = v106;
  v148 = *MEMORY[0x277D74060];
  v108 = swift_allocObject();
  v109 = v144;
  v108[2] = v105;
  v108[3] = v109;
  v108[4] = 1;
  v108[5] = &v165;
  v110 = ObjectType;
  v108[6] = v104;
  v108[7] = v110;
  v111 = swift_allocObject();
  *(v111 + 16) = sub_215384F24;
  *(v111 + 24) = v108;
  aBlock[4] = sub_215384F20;
  aBlock[5] = v111;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21532C43C;
  aBlock[3] = &block_descriptor_76;
  v112 = _Block_copy(aBlock);
  v113 = v105;
  v104;

  v114 = v107;

  [v114 enumerateAttribute:v148 inRange:v109 options:1 usingBlock:{0, v112}];

  _Block_release(v112);
  LOBYTE(v114) = swift_isEscapingClosureAtFileLocation();

  if (v114)
  {
    goto LABEL_44;
  }

  v115 = v165;
  v116 = v166;
  v117 = v167;

  v57 = v145;
  v93 = v162;
  v39 = v160;
  v68 = v143;
  v98 = v150;
  if (v117)
  {
LABEL_37:

    v118 = v153;
    v68(v102, v153);
    v119 = *(v161 + 8);
    v120 = v154;
    v119(v39, v154);
    v119(v93, v120);
    (*(v57 + 8))(v157, v163);
    v68(v149, v118);
    return 0;
  }

  v121 = sub_2153821F4(v144);
  v122 = 0.0;
  if (v121)
  {
    v123 = v121;
    v124 = [v121 scrollView];

    v125 = v163;
    v126 = v153;
    if (v124)
    {
      [v124 contentOffset];
      v122 = v127;
    }
  }

  else
  {
    v125 = v163;
    v126 = v153;
  }

  v168.origin = v115;
  v168.size = v116;
  v128 = CGRectGetMinX(v168) + v103;
  v129 = v98;
  [v129 frame];
  v130 = v128 + CGRectGetMinX(v169) - v122;
  v170.origin = v115;
  v170.size = v116;
  CGRectGetMinY(v170);
  [v129 frame];
  v132 = v131;
  v134 = v133;
  v136 = v135;
  v138 = v137;

  v171.origin.x = v132;
  v171.origin.y = v134;
  v171.size.width = v136;
  v171.size.height = v138;
  CGRectGetMinY(v171);

  v139 = v143;
  v143(v159, v126);
  v140 = *(v161 + 8);
  v141 = v154;
  v140(v39, v154);
  v140(v93, v141);
  (*(v57 + 8))(v157, v125);
  v139(v149, v126);
  return *&v130;
}

char *sub_21537D148()
{
  v1 = *(v0 + OBJC_IVAR___ICCollaboratorStatusView_textView);
  v2 = v0 + OBJC_IVAR___ICCollaboratorStatusView_collaboratorStatus;
  swift_beginAccess();
  v3 = *(v2 + *(type metadata accessor for ResolvedCollaboratorStatus(0) + 28));

  v4 = sub_21537F3A8(v1, v3);

  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (v7)
  {
LABEL_10:
    v13 = *(*(v4 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
    v14 = *(v13 + 16);
    v15 = *(v11 + 2);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      goto LABEL_24;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v16 > *(v11 + 3) >> 1)
    {
      if (v15 <= v16)
      {
        v17 = v15 + v14;
      }

      else
      {
        v17 = v15;
      }

      result = sub_2153181A8(result, v17, 1, v11);
      v11 = result;
    }

    v7 &= v7 - 1;
    if (*(v13 + 16))
    {
      v18 = *(v11 + 2);
      if ((*(v11 + 3) >> 1) - v18 < v14)
      {
        goto LABEL_26;
      }

      memcpy(&v11[32 * v18 + 32], (v13 + 32), 32 * v14);

      if (v14)
      {
        v19 = *(v11 + 2);
        v20 = __OFADD__(v19, v14);
        v21 = v19 + v14;
        if (v20)
        {
          goto LABEL_27;
        }

        *(v11 + 2) = v21;
      }
    }

    else
    {

      if (v14)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return v11;
    }

    v7 = *(v4 + 64 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21537D340()
{
  v1 = v0;
  v115 = sub_2154A22EC();
  v104 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v111 = &v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v102 = &v95 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v106 = &v95 - v9;
  v10 = MEMORY[0x277D84F90];
  v129[0] = MEMORY[0x277D84F90];
  sub_21531B62C(0, 3, 0);
  v11 = v129[0];
  v13 = *(v129[0] + 16);
  v12 = *(v129[0] + 24);
  v14 = v12 >> 1;
  v15 = v13 + 1;
  if (v12 >> 1 <= v13)
  {
LABEL_69:
    sub_21531B62C((v12 > 1), v15, 1);
    v11 = v129[0];
    v12 = *(v129[0] + 24);
    v14 = v12 >> 1;
  }

  *(v11 + 16) = v15;
  v16 = v11 + 16 * v13;
  *(v16 + 32) = 0;
  *(v16 + 40) = v10;
  if (v14 <= v15)
  {
    sub_21531B62C((v12 > 1), v13 + 2, 1);
    v11 = v129[0];
  }

  *(v11 + 16) = v13 + 2;
  v17 = v11 + 16 * v15;
  *(v17 + 32) = 1;
  *(v17 + 40) = v10;
  v19 = *(v11 + 16);
  v18 = *(v11 + 24);
  if (v19 >= v18 >> 1)
  {
    sub_21531B62C((v18 > 1), v19 + 1, 1);
  }

  v20 = v129[0];
  *(v129[0] + 16) = v19 + 1;
  v21 = v20 + 16 * v19;
  *(v21 + 32) = 2;
  *(v21 + 40) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B410);
  v129[0] = sub_2154A2F3C();
  sub_215383A94(v20, 1, v129);
  v99 = v129[0];
  v22 = *(v1 + OBJC_IVAR___ICCollaboratorStatusView_textView);
  v23 = v1 + OBJC_IVAR___ICCollaboratorStatusView_collaboratorStatus;
  swift_beginAccess();
  v24 = *(v23 + *(type metadata accessor for ResolvedCollaboratorStatus(0) + 28));

  v25 = sub_21537F3A8(v22, v24);

  v26 = 0;
  v27 = *(v25 + 64);
  v100 = v25 + 64;
  v103 = v25;
  v28 = 1 << *(v25 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v10 = (v28 + 63) >> 6;
  v101 = v104 + 16;
  v114 = (v104 + 32);
  v110 = (v104 + 88);
  v109 = *MEMORY[0x277D36418];
  v107 = *MEMORY[0x277D36408];
  v98 = *MEMORY[0x277D36400];
  v97 = *MEMORY[0x277D36410];
  v96 = (v104 + 96);
  v31 = *(MEMORY[0x277CBF398] + 8);
  v112 = *MEMORY[0x277CBF398];
  v33 = *(MEMORY[0x277CBF398] + 16);
  v32 = *(MEMORY[0x277CBF398] + 24);
  v105 = v7;
  v15 = v106;
  v108 = v1;
  while (1)
  {
    while (1)
    {
      if (!v30)
      {
        if (v10 <= (v26 + 1))
        {
          v35 = v26 + 1;
        }

        else
        {
          v35 = v10;
        }

        v13 = v35 - 1;
        v12 = v100;
        while (1)
        {
          v34 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v34 >= v10)
          {
            v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3F8);
            (*(*(v48 - 8) + 56))(v7, 1, 1, v48);
            v30 = 0;
            goto LABEL_19;
          }

          v30 = *(v100 + 8 * v34);
          ++v26;
          if (v30)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v34 = v26;
LABEL_18:
      v36 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v37 = v36 | (v34 << 6);
      v38 = v103;
      v39 = v104;
      (*(v104 + 16))(v102, *(v103 + 48) + *(v104 + 72) * v37, v115);
      v40 = *(*(v38 + 56) + 8 * v37);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3F8);
      v42 = *(v41 + 48);
      v7 = v105;
      (*(v39 + 32))();
      *&v7[v42] = v40;
      (*(*(v41 - 8) + 56))(v7, 0, 1, v41);

      v13 = v34;
      v15 = v106;
LABEL_19:
      sub_215384C88(v7, v15);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3F8);
      if ((*(*(v43 - 8) + 48))(v15, 1, v43) == 1)
      {

        return v99;
      }

      v44 = *(v15 + *(v43 + 48));
      v45 = v111;
      v46 = v115;
      (*v114)(v111, v15, v115);
      v47 = (*v110)(v45, v46);
      if (v47 == v109)
      {
        v49 = 0;
        goto LABEL_29;
      }

      v1 = v108;
      if (v47 != v107)
      {
        break;
      }

      v26 = v13;
    }

    if (v47 == v98)
    {
      v49 = 1;
    }

    else
    {
      if (v47 != v97)
      {
        goto LABEL_71;
      }

      v15 = v111;
      (*v96)(v111, v115);
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3E8) + 48);
      v51 = sub_2154A22AC();
      (*(*(v51 - 8) + 8))(v15 + v50, v51);
      v49 = 2;
    }

LABEL_29:
    v113 = v49;
    v52 = *(v44 + 16);
    if (v52)
    {
      v53 = (v44 + 56);
      v54 = MEMORY[0x277D84F90];
      do
      {
        v55 = *(v53 - 3);
        v56 = *(v53 - 2);
        v57 = *(v53 - 1);
        v58 = *v53;
        v119 = sub_21537D148();
        sub_21537BE70(v120);
        v116 = v120[0];
        v117 = v120[1];
        v118 = v121;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B400);
        sub_2154A1F5C();
        sub_2154A286C();
        if (v126)
        {
          v59 = v112;
          v60 = v31;
          v61 = v33;
          v62 = v32;
        }

        else
        {
          v59 = v122;
          v60 = v123;
          v61 = v124;
          v62 = v125;
        }

        MinX = CGRectGetMinX(*&v59);
        v119 = sub_21537D148();
        sub_21537BE70(v127);
        v116 = v127[0];
        v117 = v127[1];
        v118 = v128;
        sub_2154A1F5C();
        sub_2154A286C();
        if (v130)
        {
          v64 = v112;
          v65 = v31;
          v66 = v33;
          v67 = v32;
        }

        else
        {
          v64 = v129[0];
          v65 = v129[1];
          v66 = v129[2];
          v67 = v129[3];
        }

        v68 = v113;
        v69 = -CGRectGetMinY(*&v64);
        v131.origin.x = v55;
        v131.origin.y = v56;
        v131.size.width = v57;
        v131.size.height = v58;
        v132 = CGRectOffset(v131, -MinX, v69);
        if (v68)
        {
          if (v68 == 1)
          {
            v70 = -6.0;
            v71 = -6.0;
          }

          else
          {
            v70 = -4.0;
            v71 = -4.0;
          }

          v133 = CGRectInset(v132, v70, v71);
          x = v133.origin.x;
          y = v133.origin.y;
          width = v133.size.width;
          height = v133.size.height;
        }

        else
        {
          x = v132.origin.x + v132.size.width * 0.5 + -7.0;
          y = v132.origin.y + v132.size.height + -4.0;
          height = 7.0;
          width = 14.0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_2153181A8(0, *(v54 + 2) + 1, 1, v54);
        }

        v15 = *(v54 + 2);
        v76 = *(v54 + 3);
        if (v15 >= v76 >> 1)
        {
          v54 = sub_2153181A8((v76 > 1), v15 + 1, 1, v54);
        }

        *(v54 + 2) = v15 + 1;
        v77 = &v54[32 * v15];
        v77[4] = x;
        v77[5] = y;
        v77[6] = width;
        v77[7] = height;
        v53 += 4;
        --v52;
      }

      while (v52);
    }

    else
    {
      v54 = MEMORY[0x277D84F90];
    }

    if (*(v99 + 16))
    {
      v1 = v113;
      sub_2153B1B24(v113);
      v7 = v105;
      if (v78)
      {
      }

      else
      {
        v79 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v79 = MEMORY[0x277D84F90];
      v7 = v105;
      v1 = v113;
    }

    *&v116 = v79;
    sub_21547EC84(v54);
    v80 = v116;
    v81 = v99;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v116 = v81;
    v83 = sub_2153B1B24(v1);
    v85 = *(v81 + 16);
    v12 = (v84 & 1) == 0;
    v86 = __OFADD__(v85, v12);
    v87 = v85 + v12;
    if (v86)
    {
      goto LABEL_68;
    }

    v88 = v84;
    if (*(v81 + 24) >= v87)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v93 = v83;
        sub_2153DCB4C();
        v83 = v93;
      }
    }

    else
    {
      sub_2153DA598(v87, isUniquelyReferenced_nonNull_native);
      v83 = sub_2153B1B24(v113);
      if ((v88 & 1) != (v89 & 1))
      {
        goto LABEL_72;
      }
    }

    v90 = v116;
    v99 = v116;
    if (v88)
    {
      *(*(v116 + 56) + 8 * v83) = v80;

      goto LABEL_65;
    }

    *(v116 + 8 * (v83 >> 6) + 64) |= 1 << v83;
    *(v90[6] + v83) = v113;
    *(v90[7] + 8 * v83) = v80;
    v91 = v90[2];
    v86 = __OFADD__(v91, 1);
    v92 = v91 + 1;
    if (v86)
    {
      break;
    }

    v90[2] = v92;
LABEL_65:
    v26 = v13;
    v15 = v106;
  }

  __break(1u);
LABEL_71:
  sub_2154A2F9C();
  __break(1u);
LABEL_72:
  sub_2154A300C();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21537DF28(uint64_t a1, uint64_t a2, int a3)
{
  v167 = a3;
  *&v174 = a1;
  v173 = sub_2154A22AC();
  v175 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v168 = (&v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v163 - v6;
  v8 = sub_2154A22EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v172 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v163 - v12);
  MEMORY[0x28223BE20](v14);
  v164 = &v163 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v163 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v163 - v20;
  MEMORY[0x28223BE20](v22);
  v178 = &v163 - v23;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v163 - v26;
  v182.n128_u64[0] = *(v9 + 16);
  v181 = v9 + 16;
  (v182.n128_u64[0])(&v163 - v26, a2, v8, v25);
  v28 = *(v9 + 88);
  v176 = (v9 + 88);
  v180 = v28;
  v29 = v28(v27, v8);
  v30 = MEMORY[0x277D36408];
  v171 = *MEMORY[0x277D36418];
  v165 = v18;
  if (v29 == v171)
  {
    v170 = *(v9 + 96);
    v170(v27, v8);
    v179.origin.x = 0.0;
    v179.size.width = *v27;
    v31 = *v30;
LABEL_8:
    v33 = v175;
    goto LABEL_9;
  }

  v31 = *MEMORY[0x277D36408];
  if (v29 == *MEMORY[0x277D36408])
  {
    v31 = v29;
    v170 = *(v9 + 96);
    v170(v27, v8);
    v32 = *(v27 + 1);
    v179.size.width = *v27;
LABEL_7:
    *&v179.origin.x = v32;
    goto LABEL_8;
  }

  if (v29 == *MEMORY[0x277D36400])
  {
    v170 = *(v9 + 96);
    v170(v27, v8);
    v179.size.width = *v27;
    v32 = 1;
    goto LABEL_7;
  }

  v108 = v175;
  if (v29 != *MEMORY[0x277D36410])
  {
    goto LABEL_103;
  }

  v170 = *(v9 + 96);
  v170(v27, v8);
  v179.size.width = *v27;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3E8);
  v33 = v108;
  (*(v108 + 8))(&v27[*(v109 + 48)], v173);
  *&v179.origin.x = 1;
LABEL_9:
  v34 = v182.n128_u64[0];
  (v182.n128_u64[0])(v178, a2, v8);
  v34(v21, a2, v8);
  v35 = v180(v21, v8);
  v166 = v31;
  v177 = v9;
  if (v35 != v31)
  {
    (*(v9 + 8))(v21, v8);
    v36 = v174;
    v38 = v33;
    v39 = v7;
    goto LABEL_29;
  }

  v36 = v174;
  v37 = [v174 TTTextStorage];
  v38 = v33;
  v39 = v7;
  if (!v37)
  {
    goto LABEL_29;
  }

  v40 = v37;
  v41 = [v37 string];

  v42 = v41;
  v43 = v41;
  if (!v41)
  {
    sub_2154A1D6C();
    v43 = sub_2154A1D2C();

    sub_2154A1D6C();
    v42 = sub_2154A1D2C();
  }

  v44 = v41;
  width = v179.size.width;
  x = v179.origin.x;
  v47 = [v43 ic:*&v179.size.width rangeIsValid:*&v179.origin.x];

  if (!v47)
  {

    v9 = v177;
    v38 = v175;
    v36 = v174;
LABEL_29:
    (v182.n128_u64[0])(v13, a2, v8);
    if (v180(v13, v8) != *MEMORY[0x277D36410])
    {
      (*(v9 + 8))(v13, v8);
      sub_215384398(v36, *&v179.size.width, *&v179.origin.x, &v190);
      v80 = v191;
      v179 = v190;
      v183 = v191;
      v63 = v173;
LABEL_37:
      v81 = v172;
      v82 = v171;
LABEL_38:
      v79 = v178;
      goto LABEL_39;
    }

    v170(v13, v8);
    v83 = *v13;
    v84 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3E8) + 48);
    v63 = v173;
    (*(v38 + 32))(v39, v84, v173);
    v85 = v168;
    (*(v38 + 16))(v168, v39, v63);
    v86 = (*(v38 + 88))(v85, v63);
    if (v86 == *MEMORY[0x277D363F0])
    {
      (*(v38 + 96))(v85, v63);
      v87 = MEMORY[0x277D84FA0];
      v88 = *v85;
LABEL_35:
      sub_215381D24(v88, v87, v83, &v190);
      v80 = v191;
LABEL_36:

      (*(v38 + 8))(v39, v63);
      v179 = v190;
      v183 = v191;
      goto LABEL_37;
    }

    if (v86 == *MEMORY[0x277D363E0])
    {
      (*(v38 + 96))(v85, v63);
      v88 = MEMORY[0x277D84FA0];
      v87 = *v85;
      goto LABEL_35;
    }

    if (v86 == *MEMORY[0x277D363E8])
    {
      (*(v38 + 96))(v85, v63);
      sub_215381D24(*v85, v85[1], v83, &v190);
      v80 = v191;

      v38 = v175;
      goto LABEL_36;
    }

    v176 = v39;
    sub_215384398(v36, *&v179.size.width, *&v179.origin.x, &v190);
    v179 = v190;
    v80 = v191;
    v126 = sub_2153821F4(v83);
    if (v126)
    {
      v127 = v126;
      v128 = [v126 scrollView];

      v82 = v171;
      if (!v128)
      {
        v134 = 0uLL;
        v179.origin = 0u;
        v80 = 1;
        v135 = &v192;
        goto LABEL_85;
      }

      [v128 contentOffset];
      v130 = v129;

      if ((v191 & 1) == 0)
      {
        *&v134 = CGRectOffset(v179, -v130, 0.0);
        v80 = 0;
        v132.height = v131;
        v179.size = v132;
        *(&v134 + 1) = v133;
        v135 = &v191;
LABEL_85:
        *(v135 - 16) = v134;
      }
    }

    else
    {
      memset(&v179, 0, sizeof(v179));
      v80 = 1;
      v82 = v171;
    }

    v144 = *(v38 + 8);
    v144(v176, v63);
    v183 = v80;
    v144(v168, v63);
    v81 = v172;
    goto LABEL_38;
  }

  v48 = [v42 substringWithRange_];

  v49 = v48;
  if (!v48)
  {
    sub_2154A1D6C();
    v49 = sub_2154A1D2C();
  }

  sub_2154A1D6C();
  v50 = [v49 ic_leadingTrimmedString];

  v51 = v50;
  if (!v50)
  {
    sub_2154A1D6C();
    v51 = sub_2154A1D2C();
  }

  sub_2154A1D6C();
  v52 = sub_2154A1E0C();

  v53 = sub_2154A1E0C();
  v54 = __OFSUB__(v52, v53);
  v55 = v52 - v53;
  if (v54)
  {
    __break(1u);
    goto LABEL_95;
  }

  v56 = [v51 ic_trailingTrimmedString];

  v57 = sub_2154A1D6C();
  v59 = v58;

  v60 = sub_2154A1E0C();
  v168 = v57;
  v61 = sub_2154A1E0C();
  v62 = v60 - v61;
  v63 = v173;
  if (__OFSUB__(v60, v61))
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v64 = *&width + v55;
  if (__OFADD__(*&width, v55))
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v65 = sub_2154A1E0C();

  v66 = v65 - v62;
  if (__OFSUB__(v65, v62))
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v67 = v169 + OBJC_IVAR___ICCollaboratorStatusView_collaboratorStatus;
  swift_beginAccess();
  v68 = type metadata accessor for ResolvedCollaboratorStatus(0);
  v69 = *(v67 + *(v68 + 28));
  if (*(v69 + 16) >= 2uLL)
  {
    v70 = v68;
    v71 = v177;
    v72 = (*(v177 + 80) + 32) & ~*(v177 + 80);
    v73 = *(v177 + 72);
    v74 = v165;
    (v182.n128_u64[0])(v165, v69 + v73 + v72, v8);
    if (v180(v74, v8) == *MEMORY[0x277D36400])
    {
      v170(v74, v8);
      v63 = v173;
      if (*v74 == v64)
      {

        v75 = *(v67 + *(v70 + 28));
        if (*(v75 + 16) >= 2uLL)
        {
          v76 = v75 + v72 + v73;
          v77 = v164;
          (v182.n128_u64[0])(v164, v76, v8);
          v78 = v177;
          v79 = v178;
          (*(v177 + 8))(v178, v8);
          (*(v78 + 32))(v79, v77, v8);
          sub_215384398(v174, v64, 1, &v190);
          v80 = v191;
          v179 = v190;
          v183 = v191;
          v38 = v175;
          v81 = v172;
          v82 = v171;
          goto LABEL_39;
        }

LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }
    }

    else
    {
      (*(v71 + 8))(v74, v8);
      v63 = v173;
    }
  }

  if (!v66)
  {
    (*(v177 + 8))(v178, v8);

    return 0;
  }

  v136 = v174;
  sub_215384398(v174, v64, v66, &v184);
  v80 = v185;
  v183 = v185;
  v137 = v64 + v66;
  v79 = v178;
  if (__OFADD__(v64, v66))
  {
    goto LABEL_98;
  }

  v179 = v184;
  v138 = v137 - 1;
  if (__OFSUB__(v137, 1))
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  sub_215384398(v136, v64, 0, v186);
  if (v187 & 1) != 0 || (v139 = *v186, v140 = *&v186[1], v141 = *&v186[2], v142 = *&v186[3], sub_215384398(v136, v138, 0, &v188), (v189) || (MinY = CGRectGetMinY(v188), v197.origin.x = v139, v197.origin.y = v140, v197.size.width = v141, v197.size.height = v142, CGRectGetMinY(v197) >= MinY) || (v80)
  {

    v81 = v172;
    v82 = v171;
    v38 = v175;
    goto LABEL_39;
  }

  MaxX = CGRectGetMaxX(v179);
  v198.origin.x = v139;
  v198.origin.y = v140;
  v198.size.width = v141;
  v198.size.height = v142;
  v146.width = MaxX - CGRectGetMinX(v198);
  v179.size = v146;
  sub_215495814(10, 0xE100000000000000, v168, v59);
  if (v147)
  {
  }

  else
  {
    v148 = sub_2154A1EAC();

    sub_215384398(v136, v64, v148, &v190);
    if ((v191 & 1) == 0)
    {
      size = v190.size;
      origin = v190.origin;
      v161 = CGRectGetWidth(v190);
      v81 = v172;
      v82 = v171;
      v38 = v175;
      if (v161 < v179.size.width)
      {
        v200.origin = origin;
        v200.size = size;
        v162.width = CGRectGetWidth(v200);
        v179.size = v162;
      }

      goto LABEL_91;
    }
  }

  v81 = v172;
  v82 = v171;
  v38 = v175;
LABEL_91:
  v199.origin.x = v139;
  v199.origin.y = v140;
  v199.size.width = v141;
  v199.size.height = v142;
  v149.x = CGRectGetMinX(v199);
  v179.origin = v149;
  v149.x = v139;
  v150 = v140;
  v151 = v141;
  v152 = v142;
  *&v153 = CGRectGetMinY(*&v149.x);
  v174 = v153;
  *&v153 = v139;
  v154 = v140;
  v155 = v141;
  v156 = v142;
  Height = CGRectGetHeight(*&v153);
  v80 = 0;
  v158.width = v179.origin.x;
  *&v158.height = v174;
  v179.origin = v158;
  v158.width = v179.size.width;
  v158.height = Height;
  v179.size = v158;
  v183 = 0;
LABEL_39:
  (v182.n128_u64[0])(v81, v79, v8);
  v89 = v180(v81, v8);
  v90 = v179.origin;
  v91.n128_u64[0] = *&v179.origin.y;
  if (v89 == v82)
  {
    v92 = v179.size;
    goto LABEL_50;
  }

  if (v89 == v166)
  {
    v92 = v179.size;
    if (v80)
    {
      goto LABEL_50;
    }

    v93 = -5.0;
    goto LABEL_49;
  }

  v92 = v179.size;
  if (v89 != *MEMORY[0x277D36400])
  {
    v182 = v91;
    if (v89 == *MEMORY[0x277D36410])
    {
      v170(v81, v8);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3E8);
      (*(v38 + 8))(&v81[*(v94 + 48)], v63);
      v92 = v179.size;
      v90 = v179.origin;
      v91 = v182;
      goto LABEL_47;
    }

LABEL_103:
    result = sub_2154A2F9C();
    __break(1u);
    return result;
  }

LABEL_47:
  if (v80)
  {
    goto LABEL_50;
  }

  v93 = -11.0;
LABEL_49:
  v91.n128_f64[0] = v91.n128_f64[0] + v93;
LABEL_50:
  v95 = v177;
  if (v183)
  {
    (*(v177 + 8))(v79, v8, v90, v91, v92);
    return 0;
  }

  v97 = v92.n128_f64[1];
  v179.origin = v90;
  v182 = v91;
  v179.size = v92;
  if ((v167 & 1) == 0)
  {
    goto LABEL_66;
  }

  v98 = v92.n128_u64[1];
  v99 = CGRectGetMinY(*v90.n128_u64);
  v100 = objc_opt_self();
  v101 = *MEMORY[0x277D769D0];
  v102 = *MEMORY[0x277D74410];
  v103 = [v100 ic:*MEMORY[0x277D769D0] preferredFontForStyle:*MEMORY[0x277D74410] withFontWeight:?];
  if (!v103)
  {
    goto LABEL_101;
  }

  v104 = v103;
  [v103 lineHeight];
  v106 = v105;

  if (v106 + 6.0 <= 30.0)
  {
    v107 = v99 + -30.0;
  }

  else
  {
    v107 = v99 - (v106 + 6.0);
  }

  v110 = v107 < 5.0;
  v92.n128_u64[0] = *&v179.size.width;
  v90.n128_u64[0] = *&v179.origin.x;
  v91.n128_u64[0] = v182.n128_u64[0];
  if (!v110)
  {
LABEL_66:
    v124 = v97;
    MidX = CGRectGetMidX(*v90.n128_u64);
    v196.origin.x = v179.origin.x;
    *&v196.origin.y = v182.n128_u64[0];
    v196.size.width = v179.size.width;
    v196.size.height = v97;
    CGRectGetMinY(v196);
    (*(v95 + 8))(v79, v8);
    return *&MidX;
  }

  v111 = v97;
  v112 = CGRectGetHeight(*v90.n128_u64);
  v113 = [v100 ic:v101 preferredFontForStyle:v102 withFontWeight:?];
  if (!v113)
  {
    goto LABEL_102;
  }

  v114 = v113;
  [v113 lineHeight];
  v116 = v115;

  v117 = v116 + 6.0;
  if (v116 + 6.0 <= 30.0)
  {
    v117 = 30.0;
  }

  v118 = v112 + v117 + 7.0;
  v193.origin.x = v179.origin.x;
  *&v193.origin.y = v182.n128_u64[0];
  v193.size.width = v179.size.width;
  v193.size.height = v97;
  v194 = CGRectOffset(v193, 0.0, v118);
  v119 = v194.origin.x;
  y = v194.origin.y;
  v121 = v194.size.width;
  v122 = v194.size.height;
  v123 = CGRectGetMidX(v194);
  v195.origin.x = v119;
  v195.origin.y = y;
  v195.size.width = v121;
  v195.size.height = v122;
  CGRectGetMinY(v195);
  (*(v95 + 8))(v79, v8);
  return *&v123;
}

uint64_t sub_21537F3A8(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v300 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v316 = &v300 - v8;
  v9 = sub_21549E70C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v333 = &v300 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v300 - v13;
  v369 = sub_2154A22AC();
  v15 = *(v369 - 8);
  MEMORY[0x28223BE20](v369);
  v360 = (&v300 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v359 = &v300 - v18;
  v357 = sub_2154A22EC();
  v19 = *(v357 - 8);
  MEMORY[0x28223BE20](v357);
  v327 = &v300 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v326 = &v300 - v22;
  MEMORY[0x28223BE20](v23);
  v312 = &v300 - v24;
  MEMORY[0x28223BE20](v25);
  v308 = &v300 - v26;
  MEMORY[0x28223BE20](v27);
  v307 = &v300 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = (&v300 - v30);
  MEMORY[0x28223BE20](v32);
  v349 = &v300 - v33;
  MEMORY[0x28223BE20](v34);
  v351 = &v300 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v300 - v37;
  v348 = sub_215328190(MEMORY[0x277D84F90]);
  v350 = a2;
  v39 = *(a2 + 16);
  if (!v39)
  {
    return v348;
  }

  v40 = 0;
  v320 = 0;
  v318 = a1;
  v368 = v19 + 16;
  v343 = v14;
  v364 = v19 + 88;
  v309 = OBJC_IVAR___ICCollaboratorStatusView_textView;
  v362 = (v19 + 96);
  v352 = (v15 + 8);
  v365 = (v19 + 8);
  v340 = (v15 + 32);
  v339 = (v15 + 16);
  v338 = (v15 + 88);
  v347 = *MEMORY[0x277D36418];
  v337 = (v15 + 96);
  v332 = (v10 + 32);
  v321 = *MEMORY[0x277D36408];
  v311 = &v371;
  v354 = *MEMORY[0x277D36400];
  v353 = *MEMORY[0x277D36410];
  v336 = *MEMORY[0x277D363F0];
  v335 = *MEMORY[0x277D363E0];
  v306 = xmmword_2154BDB50;
  v41 = 1107296256;
  v330 = (v10 + 8);
  v334 = *MEMORY[0x277D363E8];
  v331 = *MEMORY[0x277D363F8];
  v342 = *MEMORY[0x277D74060];
  v319 = (v19 + 32);
  v314 = v6;
  v344 = v9;
  v42 = v357;
  v346 = v19;
  v43 = v351;
  v366 = v38;
  v44 = v38;
  v341 = v31;
  v345 = v39;
  while (2)
  {
    v45 = v40;
    while (1)
    {
      if (v45 >= v39)
      {
        goto LABEL_172;
      }

      if (__OFADD__(v45, 1))
      {
        goto LABEL_173;
      }

      v361 = v45 + 1;
      v46 = v350 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v355 = *(v19 + 72);
      *&v358 = v45;
      v47 = *(v19 + 16);
      v47(v44, v46 + v355 * v45, v42);
      v367 = v47;
      v47(v43, v44, v42);
      v48 = *(v19 + 88);
      v49 = v48(v43, v42);
      if (v49 == v347)
      {
        v50 = *v362;
        (*v362)(v43, v42);
        v51 = v42;
        v52 = 0;
        v53 = *v43;
        v54 = v349;
      }

      else
      {
        v54 = v349;
        if (v49 == v321)
        {
          v50 = *v362;
          (*v362)(v43, v42);
          v53 = *v43;
          v52 = *(v43 + 1);
          v51 = v42;
        }

        else
        {
          if (v49 == v354)
          {
            v50 = *v362;
            (*v362)(v43, v42);
            v53 = *v43;
          }

          else
          {
            if (v49 != v353)
            {
              goto LABEL_187;
            }

            v50 = *v362;
            (*v362)(v43, v42);
            v53 = *v43;
            v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3E8);
            (*v352)(&v43[*(v55 + 48)], v369);
          }

          v51 = v42;
          v52 = 1;
        }
      }

      v378 = MEMORY[0x277D84F90];
      v56 = v366;
      v57 = v367;
      v367(v54, v366, v51);
      v58 = v48(v54, v51);
      if (v58 == v354)
      {
        v50(v54, v51);
        v108 = *v54;
        v376 = 0u;
        v375 = 0u;
        v377 = 1;
        v109 = v318;
        v110 = [v318 TTTextStorage];
        if (v110)
        {
          v111 = v110;
          v112 = swift_allocObject();
          v112[2] = v109;
          v112[3] = v108;
          v112[4] = 1;
          v112[5] = &v375;
          v113 = v356;
          v114 = ObjectType;
          v112[6] = v356;
          v112[7] = v114;
          v115 = swift_allocObject();
          *(v115 + 16) = sub_215384F24;
          *(v115 + 24) = v112;
          v372 = sub_215384F20;
          v373 = v115;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = v41;
          *&v371 = sub_21532C43C;
          *(&v371 + 1) = &block_descriptor_65;
          v116 = _Block_copy(&aBlock);
          v117 = v109;
          v118 = v113;

          v119 = v111;

          [v119 enumerateAttribute:v342 inRange:v108 options:1 usingBlock:{0, v116}];

          _Block_release(v116);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          v44 = v366;
          if (isEscapingClosureAtFileLocation)
          {
            goto LABEL_185;
          }

          v358 = v376;
          v363 = v375;
          v121 = v377;

          if (v121)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v44 = v366;
          if (v377)
          {
            goto LABEL_48;
          }

          v358 = v376;
          v363 = v375;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A310);
        v146 = swift_allocObject();
        v147 = v358;
        v146[1] = v306;
        v146[2] = v363;
        v146[3] = v147;
        v378 = v146;
        goto LABEL_48;
      }

      *&v363 = *v365;
      (v363)(v54, v51);
      v59 = v341;
      v57(v341, v56, v51);
      v60 = v48(v59, v51);
      if (v60 != v353)
      {
        (v363)(v59, v51);
        v122 = v318;
        [v318 ic:v53 rectForRange:v52];
        x = v385.origin.x;
        y = v385.origin.y;
        width = v385.size.width;
        height = v385.size.height;
        v398.origin.x = 0.0;
        v398.origin.y = 0.0;
        v398.size.width = 0.0;
        v398.size.height = 0.0;
        if (!CGRectEqualToRect(v385, v398))
        {
          [v122 textContainerInset];
          v128 = v127;
          [v122 textContainerInset];
          v130 = v129;
          v386.origin.x = x;
          v386.origin.y = y;
          v386.size.width = width;
          v386.size.height = height;
          v387 = CGRectOffset(v386, v128, v130);
          v131 = v387.origin.x;
          v132 = v387.origin.y;
          v133 = v387.size.width;
          v134 = v387.size.height;
          v135 = ceil(CGRectGetMinX(v387));
          v388.origin.x = v131;
          v388.origin.y = v132;
          v388.size.width = v133;
          v388.size.height = v134;
          v136 = ceil(CGRectGetMinY(v388));
          v389.origin.x = v131;
          v389.origin.y = v132;
          v389.size.width = v133;
          v389.size.height = v134;
          v137 = ceil(CGRectGetWidth(v389));
          v390.origin.x = v131;
          v390.origin.y = v132;
          v390.size.width = v133;
          v390.size.height = v134;
          v138 = ceil(CGRectGetHeight(v390));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A310);
          v139 = swift_allocObject();
          *(v139 + 16) = v306;
          *(v139 + 32) = v135;
          *(v139 + 40) = v136;
          *(v139 + 48) = v137;
          *(v139 + 56) = v138;
          v378 = v139;
        }

        goto LABEL_42;
      }

      v50(v59, v51);
      v61 = *v59;
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3E8);
      v63 = v359;
      v64 = v369;
      (*v340)(v359, v59 + *(v62 + 48), v369);
      v65 = v360;
      (*v339)(v360, v63, v64);
      v66 = (*v338)(v65, v64);
      if (v66 == v336)
      {
        v140 = v360;
        v141 = v369;
        (*v337)(v360, v369);
        sub_215381D24(*v140, MEMORY[0x277D84FA0], v61, v379);

        aBlock = v379[0];
        v371 = v379[1];
        LOBYTE(v372) = v380;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B400);
        sub_2154A1F5C();
        (*v352)(v359, v141);
LABEL_42:
        v42 = v357;
        v44 = v366;
LABEL_49:
        v148 = v348;
        goto LABEL_50;
      }

      v44 = v366;
      if (v66 == v335)
      {
        v142 = v360;
        v143 = v369;
        (*v337)(v360, v369);
        sub_215381D24(MEMORY[0x277D84FA0], *v142, v61, v381);

        aBlock = v381[0];
        v371 = v381[1];
        LOBYTE(v372) = v382;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B400);
        sub_2154A1F5C();
        (*v352)(v359, v143);
LABEL_48:
        v42 = v357;
        goto LABEL_49;
      }

      if (v66 == v334)
      {
        v144 = v360;
        v145 = v369;
        (*v337)(v360, v369);
        sub_215381D24(*v144, v144[1], v61, v383);

        aBlock = v383[0];
        v371 = v383[1];
        LOBYTE(v372) = v384;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B400);
        sub_2154A1F5C();
        (*v352)(v359, v145);
        goto LABEL_48;
      }

      if (v66 != v331)
      {
        goto LABEL_186;
      }

      v67 = v360;
      (*v337)(v360, v369);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3F0);
      v69 = *(v68 + 48);
      v70 = *(v67 + *(v68 + 64));
      v71 = *v332;
      v72 = v343;
      v73 = v344;
      (*v332)(v343, v67, v344);
      v74 = v67 + v69;
      v75 = v333;
      v71(v333, v74, v73);
      v76 = sub_2153821F4(v61);
      if (v76)
      {
        v77 = v76;
        v78 = [v76 textViewManager];

        if (v78)
        {
          v79 = sub_21549E6CC();
          v80 = [v78 textViewForColumn_];

          if (v80)
          {
            break;
          }
        }
      }

      (*v352)(v359, v369);
      v42 = v357;
      (v363)(v44, v357);
      v106 = *v330;
      (*v330)(v75, v73);
      v106(v72, v73);
LABEL_33:
      v45 = v358 + 1;
      v39 = v345;
      v19 = v346;
      v43 = v351;
      if (v361 == v345)
      {
        return v348;
      }
    }

    MEMORY[0x28223BE20](v81);
    v82 = v61;
    v83 = v356;
    *(&v300 - 4) = v356;
    *(&v300 - 3) = v82;
    v328 = v82;
    *(&v300 - 2) = v72;
    *(&v300 - 1) = v75;
    v84 = v320;
    v85 = v75;
    v86 = sub_21537B31C(sub_215384C68, (&v300 - 6), v70);
    v320 = v84;

    v87 = sub_21537F3A8(v80, v86);

    v376 = 0u;
    v375 = 0u;
    v377 = 1;
    v88 = v318;
    v89 = [v318 TTTextStorage];
    if (v89)
    {
      v90 = v89;
      v317 = v87;
      v329 = v80;
      v91 = swift_allocObject();
      v92 = v328;
      v91[2] = v88;
      v91[3] = v92;
      v91[4] = 1;
      v91[5] = &v375;
      v93 = ObjectType;
      v91[6] = v83;
      v91[7] = v93;
      v94 = swift_allocObject();
      *(v94 + 16) = sub_215384F24;
      *(v94 + 24) = v91;
      v372 = sub_215384F20;
      v373 = v94;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = v41;
      *&v371 = sub_21532C43C;
      *(&v371 + 1) = &block_descriptor_54;
      v95 = _Block_copy(&aBlock);
      v96 = v88;
      v97 = v83;

      v98 = v90;

      [v98 enumerateAttribute:v342 inRange:v92 options:1 usingBlock:{0, v95}];

      _Block_release(v95);
      LOBYTE(v98) = swift_isEscapingClosureAtFileLocation();

      if (v98)
      {
        goto LABEL_178;
      }

      v100 = *(&v375 + 1);
      v99 = *&v375;
      v102 = *(&v376 + 1);
      v101 = *&v376;
      v103 = v377;

      v104 = v344;
      v105 = v85;
      v72 = v343;
      v80 = v329;
      v87 = v317;
      if ((v103 & 1) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_32;
    }

    v104 = v73;
    v105 = v85;
    if (v377)
    {
LABEL_32:

      (*v352)(v359, v369);
      v44 = v366;
      v42 = v357;
      (v363)(v366, v357);
      v107 = *v330;
      (*v330)(v105, v104);
      v107(v72, v104);
      goto LABEL_33;
    }

    v100 = *(&v375 + 1);
    v99 = *&v375;
    v102 = *(&v376 + 1);
    v101 = *&v376;
LABEL_69:
    v329 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6C0);
    v170 = sub_2154A2F1C();
    v171 = v170;
    v172 = 0;
    v173 = v87 + 64;
    v174 = 1 << *(v87 + 32);
    if (v174 < 64)
    {
      v175 = ~(-1 << v174);
    }

    else
    {
      v175 = -1;
    }

    v176 = v175 & *(v87 + 64);
    v177 = (v174 + 63) >> 6;
    v315 = v170 + 64;
    v178 = v367;
    v310 = v170;
    v301 = v41;
    v317 = v87;
    v325 = v99;
    v324 = v100;
    v323 = v101;
    v322 = v102;
    while (1)
    {
      v179 = v357;
      if (!v176)
      {
        break;
      }

      v180 = __clz(__rbit64(v176));
      v303 = (v176 - 1) & v176;
LABEL_80:
      v183 = v180 | (v172 << 6);
      v184 = *(v87 + 48);
      v305 = v183 * v355;
      v185 = v87;
      v186 = v307;
      v178(v307, v184 + v183 * v355, v357);
      v187 = v186;
      v188 = *(*(v185 + 56) + 8 * v183);
      v304 = *v319;
      v304(v308, v187, v179);
      v189 = *(v188 + 16);
      if (v189)
      {
        *&aBlock = MEMORY[0x277D84F90];

        sub_21531B54C(0, v189, 0);
        v190 = aBlock;
        v302 = v188;
        v191 = (v188 + 56);
        do
        {
          v192 = *(v191 - 2);
          *&v358 = *(v191 - 3);
          v193 = *(v191 - 1);
          v194 = *v191;
          v195 = v325;
          v391.origin.x = v325;
          v196 = v324;
          v391.origin.y = v324;
          v197 = v323;
          v391.size.width = v323;
          v198 = v322;
          v391.size.height = v322;
          MinX = CGRectGetMinX(v391);
          [v329 frame];
          v200 = MinX + CGRectGetMinX(v392);
          v393.origin.x = v195;
          v393.origin.y = v196;
          v393.size.width = v197;
          v393.size.height = v198;
          MinY = CGRectGetMinY(v393);
          *&v394.origin.x = v358;
          v394.origin.y = v192;
          v394.size.width = v193;
          v394.size.height = v194;
          v395 = CGRectOffset(v394, v200, MinY);
          *&aBlock = v190;
          v203 = *(v190 + 16);
          v202 = *(v190 + 24);
          if (v203 >= v202 >> 1)
          {
            v204 = v395.origin.x;
            v205 = v395.origin.y;
            v206 = v395.size.width;
            v207 = v395.size.height;
            sub_21531B54C((v202 > 1), v203 + 1, 1);
            v395.size.height = v207;
            v395.size.width = v206;
            v395.origin.y = v205;
            v395.origin.x = v204;
            v190 = aBlock;
          }

          *(v190 + 16) = v203 + 1;
          *(v190 + 32 * v203 + 32) = v395;
          v191 += 4;
          --v189;
        }

        while (v189);

        v41 = v301;
        v171 = v310;
      }

      else
      {
        v190 = MEMORY[0x277D84F90];
      }

      *(v315 + ((v183 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v183;
      v304((*(v171 + 48) + v305), v308, v357);
      *(*(v171 + 56) + 8 * v183) = v190;
      v208 = *(v171 + 16);
      v160 = __OFADD__(v208, 1);
      v209 = v208 + 1;
      v87 = v317;
      if (v160)
      {
        goto LABEL_184;
      }

      *(v171 + 16) = v209;
      v176 = v303;
    }

    v181 = v172;
    while (1)
    {
      v172 = v181 + 1;
      if (__OFADD__(v181, 1))
      {
        goto LABEL_174;
      }

      if (v172 >= v177)
      {
        break;
      }

      v182 = *(v173 + 8 * v172);
      ++v181;
      if (v182)
      {
        v180 = __clz(__rbit64(v182));
        v303 = (v182 - 1) & v182;
        goto LABEL_80;
      }
    }

    v210 = 0;
    v211 = 1 << *(v171 + 32);
    if (v211 < 64)
    {
      v212 = ~(-1 << v211);
    }

    else
    {
      v212 = -1;
    }

    v213 = v212 & *(v171 + 64);
    v214 = (v211 + 63) >> 6;
    v215 = v366;
    v324 = *&v214;
LABEL_95:
    if (v213)
    {
      v217 = v210;
      goto LABEL_105;
    }

    if (v214 <= v210 + 1)
    {
      v218 = v210 + 1;
    }

    else
    {
      v218 = v214;
    }

    v219 = v218 - 1;
    while (2)
    {
      v217 = v210 + 1;
      if (__OFADD__(v210, 1))
      {
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      if (v217 >= v214)
      {
        v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3F8);
        v229 = v314;
        (*(*(v294 - 8) + 56))(v314, 1, 1, v294);
        v213 = 0;
        v210 = v219;
        goto LABEL_106;
      }

      v213 = *(v315 + 8 * v217);
      ++v210;
      if (!v213)
      {
        continue;
      }

      break;
    }

    v210 = v217;
LABEL_105:
    v220 = __clz(__rbit64(v213));
    v213 &= v213 - 1;
    v221 = v220 | (v217 << 6);
    v222 = v310;
    v223 = v312;
    v178(v312, *(v310 + 48) + v221 * v355, v179);
    v224 = *(*(v222 + 56) + 8 * v221);
    v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3F8);
    v226 = v179;
    v227 = v225;
    v228 = *(v225 + 48);
    v229 = v314;
    (*v319)(v314, v223, v226);
    *(v229 + v228) = v224;
    (*(*(v227 - 8) + 56))(v229, 0, 1, v227);

LABEL_106:
    v230 = v316;
    sub_215384C88(v229, v316);
    v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3F8);
    if ((*(*(v231 - 8) + 48))(v230, 1, v231) == 1)
    {
      (*v352)(v359, v369);

      v296 = *v330;
      v297 = v344;
      (*v330)(v333, v344);
      v296(v343, v297);
      v42 = v357;
      v148 = v348;
      v44 = v215;
LABEL_50:
      v149 = v378;
      if (!*(v378 + 2))
      {
        v348 = v148;
        (*v365)(v44, v42);

LABEL_4:
        v19 = v346;
        v43 = v351;
        v39 = v345;
        v40 = v361;
        if (v361 == v345)
        {
          return v348;
        }

        continue;
      }

      if (*(v148 + 16))
      {
        sub_2153B1054(v44);
        if (v150)
        {
          v151 = v148;

LABEL_57:
          *&aBlock = v152;
          sub_21547EC84(v149);
          v153 = aBlock;
          v154 = v151;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v375 = v154;
          v156 = sub_2153B1054(v44);
          v158 = *(v154 + 16);
          v159 = (v157 & 1) == 0;
          v160 = __OFADD__(v158, v159);
          v161 = v158 + v159;
          if (v160)
          {
            goto LABEL_180;
          }

          v162 = v157;
          if (*(v154 + 24) >= v161)
          {
            v42 = v357;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v298 = v156;
              sub_2153DC8CC();
              v42 = v357;
              v156 = v298;
            }
          }

          else
          {
            sub_2153DA1BC(v161, isUniquelyReferenced_nonNull_native);
            v156 = sub_2153B1054(v44);
            if ((v162 & 1) != (v163 & 1))
            {
              goto LABEL_188;
            }

            v42 = v357;
          }

          v164 = v367;
          v165 = v375;
          v348 = v375;
          if (v162)
          {
            *(*(v375 + 56) + 8 * v156) = v153;
          }

          else
          {
            *(v375 + 8 * (v156 >> 6) + 64) |= 1 << v156;
            v166 = v156;
            v164(*(v165 + 48) + v156 * v355, v44, v42);
            v167 = v348;
            *(*(v348 + 56) + 8 * v166) = v153;
            v168 = *(v167 + 16);
            v160 = __OFADD__(v168, 1);
            v169 = v168 + 1;
            if (v160)
            {
              goto LABEL_183;
            }

            *(v167 + 16) = v169;
          }

          (*v365)(v44, v42);
          goto LABEL_4;
        }

        v151 = v148;
      }

      else
      {
        v151 = v148;
      }

      v152 = MEMORY[0x277D84F90];
      goto LABEL_57;
    }

    break;
  }

  v232 = *(v230 + *(v231 + 48));
  v233 = v326;
  (*v319)(v326, v230, v357);
  v234 = v348;
  if (*(v348 + 16))
  {
    v235 = sub_2153B1054(v233);
    v236 = &selRef__dataOwnerForCopy;
    v237 = v328;
    v238 = v342;
    if (v239)
    {
      v240 = *(*(v234 + 56) + 8 * v235);
    }

    else
    {
      *&v240 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    *&v240 = MEMORY[0x277D84F90];
    v236 = &selRef__dataOwnerForCopy;
    v237 = v328;
    v238 = v342;
  }

  v241 = *(v232 + 16);
  v242 = *(v240 + 2);
  v243 = v242 + v241;
  if (__OFADD__(v242, v241))
  {
    goto LABEL_175;
  }

  v244 = swift_isUniquelyReferenced_nonNull_native();
  if (!v244 || v243 > *(v240 + 3) >> 1)
  {
    if (v242 <= v243)
    {
      v245 = v242 + v241;
    }

    else
    {
      v245 = v242;
    }

    *&v240 = COERCE_DOUBLE(sub_2153181A8(v244, v245, 1, v240));
  }

  v246 = v367;
  if (!*(v232 + 16))
  {

    v248 = v326;
    if (v241)
    {
      goto LABEL_176;
    }

LABEL_125:
    v246(v327, v248, v357);
    v251 = *(v240 + 2);
    v325 = *&v240;
    if (!v251)
    {
      *&v358 = MEMORY[0x277D84F90];
LABEL_159:

      v280 = v348;
      v281 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v280;
      v282 = sub_2153B1054(v327);
      v284 = *(v280 + 16);
      v285 = (v283 & 1) == 0;
      v160 = __OFADD__(v284, v285);
      v286 = v284 + v285;
      if (v160)
      {
        goto LABEL_177;
      }

      v287 = v283;
      if (*(v280 + 24) >= v286)
      {
        v179 = v357;
        v215 = v366;
        if ((v281 & 1) == 0)
        {
          v295 = v282;
          sub_2153DC8CC();
          v179 = v357;
          v282 = v295;
        }
      }

      else
      {
        sub_2153DA1BC(v286, v281);
        v282 = sub_2153B1054(v327);
        v215 = v366;
        if ((v287 & 1) != (v288 & 1))
        {
          goto LABEL_188;
        }

        v179 = v357;
      }

      v178 = v367;
      v289 = aBlock;
      v348 = aBlock;
      if (v287)
      {
        *(*(aBlock + 56) + 8 * v282) = v358;
      }

      else
      {
        *(aBlock + 8 * (v282 >> 6) + 64) |= 1 << v282;
        v290 = v282;
        v178((*(v289 + 48) + v282 * v355), v327, v179);
        v291 = v348;
        *(*(v348 + 56) + 8 * v290) = v358;
        v292 = *(v291 + 16);
        v160 = __OFADD__(v292, 1);
        v293 = v292 + 1;
        if (v160)
        {
          goto LABEL_181;
        }

        *(v291 + 16) = v293;
      }

      v216 = v363;
      (v363)(v327, v179);
      v216(v326, v179);
      *&v214 = v324;
      goto LABEL_95;
    }

    v252 = *&v356[v309];
    v253 = (v240 + 56);
    *&v358 = MEMORY[0x277D84F90];
    while (1)
    {
      v254 = *(v253 - 3);
      v255 = *(v253 - 2);
      v256 = *(v253 - 1);
      v257 = *v253;
      v258 = [v252 TTTextStorage];
      if (v258)
      {
        v259 = v258;
        if ([v258 v236[422]])
        {
          sub_2154A2BCC();
          swift_unknownObjectRelease();
        }

        else
        {
          v376 = 0u;
          v375 = 0u;
        }

        v371 = v376;
        aBlock = v375;
        if (*(&v376 + 1))
        {
          sub_2151A6C9C(0, &qword_27CA5B3D8);
          if (swift_dynamicCast())
          {
            v260 = v374;
            if (ICInternalSettingsIsTextKit2Enabled())
            {
              v261 = [v252 textLayoutManager];
              if (v261)
              {
                v262 = v261;
                objc_opt_self();
                v263 = swift_dynamicCastObjCClass();
                if (v263)
                {
                  v264 = [v263 tableViewControllerForAttachment:v260 createIfNeeded:0];

                  if (v264)
                  {
                    v238 = v342;
LABEL_145:
                    v268 = [v264 scrollView];

                    if (v268)
                    {
                      [v268 contentOffset];
                      v270 = v269;

                      v396.origin.x = v254;
                      v396.origin.y = v255;
                      v396.size.width = v256;
                      v396.size.height = v257;
                      v397 = CGRectOffset(v396, -v270, 0.0);
                      v271 = v397.origin.x;
                      v272 = v397.origin.y;
                      v273 = v397.size.width;
                      v274 = v397.size.height;
                      v275 = swift_isUniquelyReferenced_nonNull_native();
                      v237 = v328;
                      if ((v275 & 1) == 0)
                      {
                        *&v358 = sub_2153181A8(0, *(v358 + 16) + 1, 1, v358);
                      }

                      v277 = *(v358 + 16);
                      v276 = *(v358 + 24);
                      if (v277 >= v276 >> 1)
                      {
                        *&v358 = sub_2153181A8((v276 > 1), v277 + 1, 1, v358);
                      }

                      v278 = v358;
                      *(v358 + 16) = v277 + 1;
                      v279 = (v278 + 32 * v277);
                      v279[4] = v271;
                      v279[5] = v272;
                      v279[6] = v273;
                      v279[7] = v274;
                      goto LABEL_128;
                    }
                  }

                  else
                  {
                    v238 = v342;
                  }

                  goto LABEL_157;
                }

LABEL_151:
              }

              else
              {
              }

              v238 = v342;
              goto LABEL_128;
            }

            v262 = [v252 layoutManager];
            objc_opt_self();
            v265 = swift_dynamicCastObjCClass();
            if (!v265)
            {
              goto LABEL_151;
            }

            v266 = [v265 viewControllerForTextAttachmentNoCreate_];

            if (v266)
            {
              objc_opt_self();
              v267 = swift_dynamicCastObjCClass();
              v238 = v342;
              if (v267)
              {
                v264 = v267;
                v236 = &selRef__dataOwnerForCopy;
                goto LABEL_145;
              }

              v236 = &selRef__dataOwnerForCopy;
LABEL_157:
              v237 = v328;
              goto LABEL_128;
            }

            v238 = v342;
            v236 = &selRef__dataOwnerForCopy;
          }

          else
          {
          }
        }

        else
        {

          sub_2151ADCD8(&aBlock, &qword_27CA5ABC0);
        }
      }

LABEL_128:
      v253 += 4;
      if (!--v251)
      {
        goto LABEL_159;
      }
    }
  }

  v247 = *(v240 + 2);
  if ((*(v240 + 3) >> 1) - v247 < v241)
  {
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  memcpy(&v240[32 * v247 + 32], (v232 + 32), 32 * v241);

  v248 = v326;
  if (!v241)
  {
    goto LABEL_125;
  }

  v249 = *(v240 + 2);
  v160 = __OFADD__(v249, v241);
  v250 = v249 + v241;
  if (!v160)
  {
    *(v240 + 2) = v250;
    goto LABEL_125;
  }

LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  sub_2154A2F9C();
  __break(1u);
LABEL_187:
  sub_2154A2F9C();
  __break(1u);
LABEL_188:
  result = sub_2154A300C();
  __break(1u);
  return result;
}

void sub_215381994(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char **a5@<X8>)
{
  v38[1] = a3;
  v38[2] = a4;
  v39 = a5;
  v7 = sub_2154A22EC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v8 + 16);
  v12(v11, a1, v7, v9);
  v13 = (*(v8 + 88))(v11, v7);
  v14 = v13;
  if (v13 != *MEMORY[0x277D36418])
  {
    if (v13 != *MEMORY[0x277D36408])
    {
      v36 = v39;
      (v12)(v39, a1, v7);
      (*(v8 + 56))(v36, 0, 1, v7);
      (*(v8 + 8))(v11, v7);
      return;
    }

    (*(v8 + 96))(v11, v7);
    v26 = *v11;
    v27 = v11[1];
    v28 = sub_2153821F4(a2);
    if (v28)
    {
      v29 = v28;
      v30 = [v28 table];
      v31 = sub_21549E6CC();
      v32 = [v30 textStorageForColumn_];

      v33 = sub_21549E6CC();
      v34 = [v32 characterRangeForRowID_];

      v35 = sub_21549E0EC();
      if (v34 != v35)
      {
        v37 = &v34[v26];
        if (!__OFADD__(v26, v34))
        {
          v25 = v39;
          *v39 = v37;
          v25[1] = v27;
          goto LABEL_13;
        }

LABEL_16:
        __break(1u);
        return;
      }
    }

LABEL_9:
    (*(v8 + 56))(v39, 1, 1, v7);
    return;
  }

  (*(v8 + 96))(v11, v7);
  v15 = *v11;
  v16 = sub_2153821F4(a2);
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = v16;
  v18 = [v16 table];
  v19 = sub_21549E6CC();
  v20 = [v18 textStorageForColumn_];

  v21 = sub_21549E6CC();
  v22 = [v20 characterRangeForRowID_];

  v23 = sub_21549E0EC();
  if (v22 == v23)
  {
    goto LABEL_9;
  }

  v24 = &v22[v15];
  if (__OFADD__(v15, v22))
  {
    __break(1u);
    goto LABEL_16;
  }

  v25 = v39;
  *v39 = v24;
LABEL_13:
  (*(v8 + 104))(v25, v14, v7);
  (*(v8 + 56))(v25, 0, 1, v7);
}

void sub_215381D24(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  ObjectType = swift_getObjectType();
  v9 = *&v4[OBJC_IVAR___ICCollaboratorStatusView_textView];
  memset(&v66, 0, sizeof(v66));
  v67 = 1;
  v10 = [v9 TTTextStorage];
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = v10;
  v58 = a1;
  v12 = *MEMORY[0x277D74060];
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = a3;
  v13[4] = 1;
  v13[5] = &v66;
  v13[6] = v4;
  v13[7] = ObjectType;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_215384C64;
  *(v14 + 24) = v13;
  v64 = sub_21532B77C;
  v65 = v14;
  *&aBlock.origin.x = MEMORY[0x277D85DD0];
  *&aBlock.origin.y = 1107296256;
  *&aBlock.size.width = sub_21532C43C;
  *&aBlock.size.height = &block_descriptor_43;
  v15 = _Block_copy(&aBlock);
  v16 = v9;
  v17 = v4;

  v18 = v11;

  [v18 enumerateAttribute:v12 inRange:a3 options:1 usingBlock:{0, v15}];

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    origin = v66.origin;
    size = v66.size;
    v22 = v67;

    v23 = 0uLL;
    if (v22)
    {
      v24 = 1;
      v25 = 0uLL;
LABEL_22:
      *a4 = v23;
      *(a4 + 16) = v25;
      *(a4 + 32) = v24;
      return;
    }

    v26 = sub_2153821F4(a3);
    if (!v26 || (v27 = v26, v28 = [v26 textViewManager], v27, !v28))
    {
LABEL_21:
      v24 = 1;
      v25 = 0uLL;
      v23 = 0uLL;
      goto LABEL_22;
    }

    if (*(a2 + 16) || *(v58 + 16))
    {
      v29 = v28;
      sub_21538405C(a2, v29, &selRef_frameOfRow_);

      v28 = v29;
      sub_21538405C(v58, v28, &selRef_frameOfColumn_);

      sub_2154A286C();
      sub_2154A286C();
      if ((v64 & 1) == 0)
      {
        x = aBlock.origin.x;
        y = aBlock.origin.y;
        width = aBlock.size.width;
        height = aBlock.size.height;
        if (v67)
        {
          v70.origin = origin;
          v70.size = size;
          dxa = CGRectGetMinX(v70);
          v71.origin = origin;
          v71.size = size;
          MinY = CGRectGetMinY(v71);
          v34 = x;
          v35 = y;
          v36 = width;
          v37 = height;
        }

        else
        {
          v72 = CGRectIntersection(v66, aBlock);
          v43 = v72.origin.x;
          v44 = v72.origin.y;
          v45 = v72.size.width;
          v46 = v72.size.height;
          if (CGRectIsNull(v72))
          {
            goto LABEL_20;
          }

          v73.origin = origin;
          v73.size = size;
          dxa = CGRectGetMinX(v73);
          v74.origin = origin;
          v74.size = size;
          MinY = CGRectGetMinY(v74);
          v34 = v43;
          v35 = v44;
          v36 = v45;
          v37 = v46;
        }

        v38 = dxa;
        goto LABEL_17;
      }

      if ((v67 & 1) == 0)
      {
        v30 = v66.size;
        v31 = v66.origin;
        v68.origin = origin;
        v68.size = size;
        MinX = CGRectGetMinX(v68);
        v69.origin = origin;
        v69.size = size;
        MinY = CGRectGetMinY(v69);
        v35 = v31.y;
        v34 = v31.x;
        v37 = v30.height;
        v36 = v30.width;
        v38 = MinX;
LABEL_17:
        v75 = CGRectOffset(*&v34, v38, MinY);
        v47 = v75.origin.x;
        v48 = v75.origin.y;
        v49 = v75.size.width;
        v50 = v75.size.height;
        v51 = sub_2153821F4(a3);
        if (v51)
        {
          v52 = v51;
          v53 = [v51 scrollView];

          if (v53)
          {
            [v53 contentOffset];
            v55 = v54;

            v76.origin.x = v47;
            v76.origin.y = v48;
            v76.size.width = v49;
            v76.size.height = v50;
            v77 = CGRectOffset(v76, -v55, 0.0);
            v57 = v77.origin.x;
            v59 = v77.origin.y;
            v56 = v77.size.width;
            dxb = v77.size.height;

            *&v25 = v56;
            *&v23 = v57;
            v24 = 0;
            *(&v23 + 1) = v59;
            *(&v25 + 1) = dxb;
            goto LABEL_22;
          }
        }
      }
    }

LABEL_20:

    goto LABEL_21;
  }

  __break(1u);
}

id sub_2153821F4(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___ICCollaboratorStatusView_textView);
  result = [v3 TTTextStorage];
  if (result)
  {
    v5 = result;
    if ([result attribute:*MEMORY[0x277D74060] atIndex:a1 effectiveRange:0])
    {
      sub_2154A2BCC();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    if (*(&v14 + 1))
    {
      sub_2151A6C9C(0, &qword_27CA5B3D8);
      if (swift_dynamicCast())
      {
        if (ICInternalSettingsIsTextKit2Enabled())
        {
          v6 = [v3 textLayoutManager];
          if (!v6)
          {

            return 0;
          }

          v7 = v6;
          objc_opt_self();
          v8 = swift_dynamicCastObjCClass();
          if (v8)
          {
            v9 = [v8 tableViewControllerForAttachment:v12 createIfNeeded:0];

            return v9;
          }
        }

        else
        {
          v7 = [v3 layoutManager];
          objc_opt_self();
          v10 = swift_dynamicCastObjCClass();
          if (v10)
          {
            v11 = [v10 viewControllerForTextAttachmentNoCreate_];

            if (v11)
            {
              objc_opt_self();
              result = swift_dynamicCastObjCClass();
              if (result)
              {
                return result;
              }
            }

            return 0;
          }
        }
      }

      else
      {
      }
    }

    else
    {

      sub_2151ADCD8(v15, &qword_27CA5ABC0);
    }

    return 0;
  }

  return result;
}

void sub_215382430(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  if (!ICInternalSettingsIsTextKit2Enabled())
  {
    sub_21532C8D8(a1, &v65);
    if (!*(&v66 + 1))
    {
      sub_2151ADCD8(&v65, &qword_27CA5ABC0);
      return;
    }

    sub_2151A6C9C(0, &qword_281199590);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v19 = v64;
    v34 = [a5 layoutManager];
    objc_opt_self();
    v43 = swift_dynamicCastObjCClass();
    if (!v43 || (v44 = v43, (v45 = [v43 viewForBaseTextAttachmentNoCreate_]) == 0))
    {

      return;
    }

    v21 = v45;
    [v44 ensureLayoutForCharacterRange_];
    [a5 ic_visibleRange];
    sub_2154A2B0C();
    if ((v46 & 1) == 0)
    {
      [v21 frame];
      v36 = v48;
      v38 = v49;
      v40 = v50;
      v42 = v51;
      goto LABEL_27;
    }

    sub_215384398(a5, a6, a7, &v65);
    v38 = *(&v65 + 1);
    v36 = *&v65;
    v42 = *(&v66 + 1);
    v40 = *&v66;
    v47 = v67;

LABEL_31:
    v52 = v66;
    *a8 = v65;
    *(a8 + 1) = v52;
    *(a8 + 32) = v67;
    if (v47)
    {
LABEL_38:
      *a4 = 1;
      return;
    }

LABEL_32:
    v69.origin.x = v36;
    v69.origin.y = v38;
    v69.size.width = v40;
    v69.size.height = v42;
    MinX = CGRectGetMinX(v69);
    if ((a8[4] & 1) == 0)
    {
      v54 = MinX;
      Width = CGRectGetWidth(*a8);
      if (v54 <= 0.0)
      {
        v56 = Width;
        [a5 frame];
        if (CGRectGetWidth(v70) <= v56)
        {
          v57 = *a8;
          v58 = a8[1];
          v59 = a8[2];
          v60 = a8[3];
          v61 = *(a8 + 32);
          if ((v61 & 1) == 0)
          {
            *&v57 = CGRectInset(*&v57, 20.0, 0.0);
          }

          *a8 = v57;
          a8[1] = v58;
          a8[2] = v59;
          a8[3] = v60;
          *(a8 + 32) = v61;
        }
      }
    }

    goto LABEL_38;
  }

  v63 = [a5 textLayoutManager];
  if (!v63)
  {
    return;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v63 = v63;
    v16 = [v15 ic:a6 textRangeForRange:a7];
    if (v16)
    {
      v17 = v16;
      [v15 ensureLayoutForRange_];
      v18 = [v15 textViewportLayoutController];

      v19 = [v18 viewportRange];
      if (v19)
      {
        [v15 ic:v19 rangeForTextRange:?];
        sub_2154A2B0C();
        if ((v20 & 1) == 0)
        {
          sub_21532C8D8(a1, &v65);
          if (!*(&v66 + 1))
          {

            sub_2151ADCD8(&v65, &qword_27CA5ABC0);
            goto LABEL_30;
          }

          sub_2151A6C9C(0, &qword_281199590);
          if (swift_dynamicCast())
          {
            v21 = v64;
            v22 = [v64 viewIdentifier];
            if (!v22)
            {
              sub_2154A1D6C();
              v62 = v23;
              v22 = sub_2154A1D2C();
            }

            v24 = [v15 existingAttachmentViewForIdentifier_];

            if (v24)
            {
              v25 = [a5 containerViewForAttachments];
              [v24 bounds];
              v27 = v26;
              v29 = v28;
              v31 = v30;
              v33 = v32;
              v34 = v24;
              [v25 convertRect:v34 fromCoordinateSpace:{v27, v29, v31, v33}];
              v36 = v35;
              v38 = v37;
              v40 = v39;
              v42 = v41;

LABEL_27:
              *a8 = v36;
              *(a8 + 1) = v38;
              *(a8 + 2) = v40;
              *(a8 + 3) = v42;
              *(a8 + 32) = 0;
              goto LABEL_32;
            }

            goto LABEL_30;
          }
        }
      }

LABEL_30:
      sub_215384398(a5, a6, a7, &v65);
      v38 = *(&v65 + 1);
      v36 = *&v65;
      v42 = *(&v66 + 1);
      v40 = *&v66;
      v47 = v67;

      goto LABEL_31;
    }
  }
}

void sub_2153829AC()
{
  v1 = [v0 superview];
  if (!v1)
  {
    return;
  }

  if (v0[OBJC_IVAR___ICCollaboratorStatusView_isRemovingFromSuperview])
  {
    goto LABEL_6;
  }

  v10 = v1;
  v2 = [*&v0[OBJC_IVAR___ICCollaboratorStatusView_textView] TTTextStorage];
  if (!v2 || (v3 = v2, v4 = [v2 isEditing], v3, v4))
  {
    v1 = v10;
LABEL_6:

    return;
  }

  sub_21537D148();
  v5 = v0;
  sub_21537BE70(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B400);
  sub_2154A1F5C();
  v6 = v11;
  sub_2154A286C();
  if (v15)
  {
    v6 = MEMORY[0x277CBF398];
    v7 = *(MEMORY[0x277CBF398] + 8);
    v8 = *(MEMORY[0x277CBF398] + 16);
    v9 = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    v7 = v12;
    v8 = v13;
    v9 = v14;
  }

  [v5 setFrame_];
  sub_215382B30();
  sub_215383214();
  if (([v10 ic:v5 isFrontSubview:?] & 1) == 0)
  {
    [v10 bringSubviewToFront_];
  }
}

void sub_215382B30()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if ((v0[OBJC_IVAR___ICCollaboratorStatusView_isRemovingFromSuperview] & 1) == 0)
  {
    v3 = ObjectType;
    v4 = COERCE_DOUBLE(sub_21537BF6C());
    if (v8 == 2 || ((v6 = v4, v7 = v5, v4 != INFINITY) ? (v9 = v5 == INFINITY) : (v9 = 1), v9))
    {
      v10 = OBJC_IVAR___ICCollaboratorStatusView_avatarView;
      v11 = *&v1[OBJC_IVAR___ICCollaboratorStatusView_avatarView];
      if (v11)
      {
        [v11 removeFromSuperview];
        v11 = *&v1[v10];
      }

      *&v1[v10] = 0;
    }

    else
    {
      v12 = *&v0[OBJC_IVAR___ICCollaboratorStatusView_textView];
      [v12 convertPoint:v0 toCoordinateSpace:{v4, v5}];
      v14 = v13;
      v16 = v15;
      v17 = &v0[OBJC_IVAR___ICCollaboratorStatusView_collaboratorStatus];
      swift_beginAccess();
      v18 = type metadata accessor for ResolvedCollaboratorStatus(0);
      v19 = [*&v17[*(v18 + 20)] ic_participantName];
      if (v19)
      {
        v20 = v19;
        v21 = sub_2154A1D6C();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0xE000000000000000;
      }

      v24 = OBJC_IVAR___ICCollaboratorStatusView_avatarView;
      v25 = *&v1[OBJC_IVAR___ICCollaboratorStatusView_avatarView];
      if (!v25)
      {
        goto LABEL_29;
      }

      if ((*(v25 + OBJC_IVAR___ICCollaboratorAvatarView_name) != v21 || *(v25 + OBJC_IVAR___ICCollaboratorAvatarView_name + 8) != v23) && (sub_2154A2FAC() & 1) == 0)
      {
        v45 = v12;
        v27 = *(v25 + OBJC_IVAR___ICCollaboratorAvatarView_color);
        v28 = *&v17[*(v18 + 24)];
        sub_2151A6C9C(0, &qword_2811994C0);
        v29 = v27;
        v30 = v28;
        v31 = sub_2154A291C();

        v12 = v45;
        if ((v31 & 1) == 0)
        {
          v32 = *&v1[v24];
          if (v32)
          {
            [v32 removeFromSuperview];
            v33 = *&v1[v24];
          }

          else
          {
            v33 = 0;
          }

          *&v1[v24] = 0;
        }
      }

      v34 = *&v1[v24];
      if (v34)
      {
        v35 = v34;
      }

      else
      {
LABEL_29:
        v36 = *&v17[*(v18 + 24)];
        v37 = [v12 containerViewForAttachments];
        v38 = swift_allocObject();
        *(v38 + 16) = v1;
        *(v38 + 24) = v3;
        objc_allocWithZone(type metadata accessor for CollaboratorAvatarView());
        v39 = v1;
        v35 = sub_21532D024(v21, v23, v36, v37, &unk_2154BFE70, v38);
      }

      sub_21537BF6C();
      v35[OBJC_IVAR___ICCollaboratorAvatarView_frameAnchorIsInverted] = v40 & 1;
      v41 = &v35[OBJC_IVAR___ICCollaboratorAvatarView_frameAnchorPoint];
      *v41 = v14;
      v41[1] = v16;
      sub_21532CAEC(0);
      sub_21532CEBC();
      v42 = v35;
      v43 = [v42 superview];
      if (v43)
      {
      }

      else
      {
        [v42 setClipsToBounds_];

        [v1 addSubview_];
      }

      v44 = *&v1[v24];
      *&v1[v24] = v42;
    }
  }
}

uint64_t sub_215382EE0(uint64_t a1, double a2, double a3)
{
  *(v3 + 56) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  sub_2154A1FFC();
  *(v3 + 64) = sub_2154A1FEC();
  v5 = sub_2154A1FCC();
  *(v3 + 72) = v5;
  *(v3 + 80) = v4;

  return MEMORY[0x2822009F8](sub_215382F7C, v5, v4);
}

uint64_t sub_215382F7C()
{
  v1 = v0[7] + OBJC_IVAR___ICCollaboratorStatusView_collaboratorStatus;
  swift_beginAccess();
  v2 = *(v1 + *(type metadata accessor for ResolvedCollaboratorStatus(0) + 20));
  v0[11] = v2;
  v3 = v2;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_215383068;
  v5.n128_u64[0] = v0[5];
  v6.n128_u64[0] = v0[6];

  return (sub_2153844E4)(v2, v5, v6);
}

uint64_t sub_215383068(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  *(*v1 + 104) = a1;

  v4 = *(v2 + 80);
  v5 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_2153831B0, v5, v4);
}

uint64_t sub_2153831B0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

void sub_215383214()
{
  if (v0[OBJC_IVAR___ICCollaboratorStatusView_isRemovingFromSuperview])
  {
    return;
  }

  v1 = v0;
  v2 = sub_21537D340();
  v3 = v2 + 64;
  v71 = v2;
  v4 = 1 << *(v2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v7 = OBJC_IVAR___ICCollaboratorStatusView_selectionViews;
  v75 = &v1[OBJC_IVAR___ICCollaboratorStatusView_collaboratorStatus];
  swift_beginAccess();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v10 = (v4 + 63) >> 6;
  v72 = MEMORY[0x277D84F90] >> 62;
  v73 = v1;
  v69 = v7;
  v70 = v3;
  v68 = v10;
  if (v6)
  {
    goto LABEL_10;
  }

  do
  {
LABEL_6:
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_65;
    }

    if (v11 >= v10)
    {

      return;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
  }

  while (!v6);
  v8 = v11;
LABEL_10:
  v12 = __clz(__rbit64(v6)) | (v8 << 6);
  v13 = *(*(v71 + 48) + v12);
  v14 = *(*(v71 + 56) + 8 * v12);
  if (v72 && sub_2154A2C8C())
  {
    v15 = v14;

    sub_21532A084(v9);
  }

  else
  {
    v15 = v14;

    v16 = MEMORY[0x277D84FA0];
  }

  v80 = v16;
  v17 = *&v1[v7];
  if (*(v17 + 16) && (v18 = sub_2153B1B24(v13), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);

    v21 = v15;
  }

  else if (v72)
  {
    v21 = v15;
    if (sub_2154A2C8C())
    {
      sub_21532A084(v9);
      v20 = v22;
    }

    else
    {
      v20 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v20 = MEMORY[0x277D84FA0];
    v21 = v15;
  }

  v74 = v13;
  v79 = v20;
  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = v21 + 32;
    swift_beginAccess();
    v25 = 0;
    while (1)
    {
      v29 = (v24 + 32 * v25);
      v30 = *v29;
      v31 = v29[1];
      v32 = v29[2];
      v33 = v29[3];
      v34 = v79 & 0xC000000000000001;
      if ((v79 & 0xC000000000000001) != 0)
      {
        if (sub_2154A2C8C())
        {
          if (!sub_2154A2C8C())
          {
            goto LABEL_64;
          }

          v35 = sub_2154A2C2C();
          v37 = v36;
LABEL_36:
          v48 = v34 != 0;
          sub_215383E08(v35, v37, v48);
          v45 = v49;
          sub_215384B50(v35, v37, v48);
          goto LABEL_37;
        }
      }

      else if (*(v79 + 16))
      {
        v38 = 0;
        v39 = (v79 + 56);
        v35 = 1 << *(v79 + 32);
        v40 = (v35 + 63) >> 6;
        while (1)
        {
          v42 = *v39++;
          v41 = v42;
          if (v42)
          {
            break;
          }

          v38 -= 64;
          if (!--v40)
          {
            goto LABEL_35;
          }
        }

        v35 = __clz(__rbit64(v41)) - v38;
LABEL_35:
        v37 = *(v79 + 36);
        goto LABEL_36;
      }

      v43 = type metadata accessor for CollaboratorSelectionView();
      v44 = objc_allocWithZone(v43);
      *&v44[OBJC_IVAR___ICCollaboratorSelectionView_color] = 0;
      v44[OBJC_IVAR___ICCollaboratorSelectionView_kind] = v74;
      v76.receiver = v44;
      v76.super_class = v43;
      v45 = objc_msgSendSuper2(&v76, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      v46 = sub_2154A1D2C();

      v47 = [objc_opt_self() imageNamed_];

      [v45 setImage_];
      [v45 setUserInteractionEnabled_];

LABEL_37:
      v50 = v45;
      v51 = [v50 superview];
      if (v51)
      {
      }

      else
      {
        [v73 addSubview_];
      }

      ++v25;
      v26 = *&v75[*(type metadata accessor for ResolvedCollaboratorStatus(0) + 24)];
      v27 = *&v50[OBJC_IVAR___ICCollaboratorSelectionView_color];
      *&v50[OBJC_IVAR___ICCollaboratorSelectionView_color] = v26;
      v28 = v26;

      [v50 setTintColor_];
      [v50 setFrame_];

      sub_2153EE258(v78, v50);
      if (v25 == v23)
      {

        v20 = v79;
        if ((v79 & 0xC000000000000001) != 0)
        {
          goto LABEL_40;
        }

LABEL_42:
        v54 = 0;
        v56 = -1 << *(v20 + 32);
        v52 = v20 + 56;
        v53 = ~v56;
        v57 = -v56;
        if (v57 < 64)
        {
          v58 = ~(-1 << v57);
        }

        else
        {
          v58 = -1;
        }

        v55 = v58 & *(v20 + 56);
        goto LABEL_46;
      }
    }
  }

  if ((v20 & 0xC000000000000001) == 0)
  {
    goto LABEL_42;
  }

LABEL_40:
  sub_2154A2C3C();
  type metadata accessor for CollaboratorSelectionView();
  sub_215384B5C();
  sub_2154A20FC();
  v20 = v81;
  v52 = v82;
  v53 = v83;
  v54 = v84;
  v55 = v85;
LABEL_46:
  v6 &= v6 - 1;
  v59 = (v53 + 64) >> 6;
  if (v20 < 0)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v60 = v54;
    v61 = v55;
    v62 = v54;
    if (!v55)
    {
      break;
    }

LABEL_51:
    v63 = (v61 - 1) & v61;
    v64 = *(*(v20 + 48) + ((v62 << 9) | (8 * __clz(__rbit64(v61)))));
    if (!v64)
    {
LABEL_57:
      sub_2151A66EC();
      v66 = v80;
      v1 = v73;
      v7 = v69;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = *&v73[v69];
      *&v73[v69] = 0x8000000000000000;
      sub_2154726A8(v66, v74, isUniquelyReferenced_nonNull_native);
      *&v73[v69] = v77;
      swift_endAccess();
      v3 = v70;
      v9 = MEMORY[0x277D84F90];
      v10 = v68;
      if (!v6)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }

    while (1)
    {
      [v64 removeFromSuperview];

      v54 = v62;
      v55 = v63;
      if ((v20 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_53:
      v65 = sub_2154A2CDC();
      if (v65)
      {
        v77 = v65;
        type metadata accessor for CollaboratorSelectionView();
        swift_dynamicCast();
        v64 = v78[0];
        v62 = v54;
        v63 = v55;
        if (v78[0])
        {
          continue;
        }
      }

      goto LABEL_57;
    }
  }

  while (1)
  {
    v62 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v62 >= v59)
    {
      goto LABEL_57;
    }

    v61 = *(v52 + 8 * v62);
    ++v60;
    if (v61)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

id CollaboratorStatusView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CollaboratorStatusView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollaboratorStatusView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_215383A94(uint64_t a1, char a2, void *a3)
{
  v43 = *(a1 + 16);
  if (!v43)
  {
    goto LABEL_23;
  }

  v7 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = *a3;
  v9 = sub_2153B1B24(v6);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_2153DCB4C();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E88);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_2153DA598(v13, a2 & 1);
  v17 = sub_2153B1B24(v6);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_2154A300C();
    __break(1u);
LABEL_29:
    sub_2154A2D9C();
    MEMORY[0x2160689F0](0xD00000000000001BLL, 0x80000002154D6090);
    sub_2154A2E9C();
    MEMORY[0x2160689F0](39, 0xE100000000000000);
    sub_2154A2EDC();
    __break(1u);
    return;
  }

  v14 = v17;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v21[6] + v14) = v6;
  *(v21[7] + 8 * v14) = v7;
  v22 = v21[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v24;
  if (v43 != 1)
  {
    v25 = (a1 + 56);
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      v28 = *v25;
      v27 = *(v25 - 8);
      v29 = *a3;
      v30 = sub_2153B1B24(v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_25;
      }

      v35 = v30;
      v36 = v31;
      v37 = v29[3];

      if (v37 < v34)
      {
        sub_2153DA598(v34, 1);
        v38 = sub_2153B1B24(v27);
        if ((v36 & 1) != (v39 & 1))
        {
          goto LABEL_28;
        }

        v35 = v38;
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v40 = *a3;
      *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      *(v40[6] + v35) = v27;
      *(v40[7] + 8 * v35) = v28;
      v41 = v40[2];
      v23 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      ++v26;
      v40[2] = v42;
      v25 += 2;
      if (v43 == v26)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

void sub_215383E08(unint64_t a1, void *a2, char a3)
{
  v4 = a1;
  v5 = *v3;
  if ((*v3 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (v5 < 0)
      {
        v6 = *v3;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x216069830](a1, a2, v6);
      type metadata accessor for CollaboratorSelectionView();

      swift_dynamicCast();
      sub_2153EC524();

      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  v7 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if (a3)
  {
    v11 = v3;
    type metadata accessor for CollaboratorSelectionView();
    if (sub_2154A2C6C() != *(v10 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2154A2C7C();
    swift_dynamicCast();
    v7 = v16;
    v3 = v16;
    v12 = sub_2154A290C();
    v13 = -1 << *(v10 + 32);
    v4 = v12 & ~v13;
    if ((*(v10 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(v10 + 48) + 8 * v4);
        v3 = sub_2154A291C();

        if (v3)
        {
          goto LABEL_19;
        }

        v4 = (v4 + 1) & v14;
      }

      while (((*(v10 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
    }

    __break(1u);
  }

  if ((v4 & 0x8000000000000000) != 0 || 1 << *(v10 + 32) <= v4)
  {
    goto LABEL_24;
  }

  if (((*(v10 + 8 * (v4 >> 6) + 56) >> v4) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v3;
  if (*(v10 + 36) != v7)
  {
    __break(1u);
LABEL_19:
  }

  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2153EC7FC();
  }

  sub_2153EDCF8(v4);
  *v11 = v10;
}

uint64_t sub_21538405C(uint64_t a1, void *a2, SEL *a3)
{
  v44 = a2;
  v45 = a3;
  v43 = sub_21549E70C();
  v5 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v36[1] = v3;
    v49 = MEMORY[0x277D84F90];
    sub_21531B54C(0, v7, 0);
    v47 = a1 + 56;
    v48 = v49;
    result = sub_2154A2BFC();
    v9 = result;
    v10 = 0;
    v40 = v5 + 8;
    v41 = v5 + 16;
    v37 = a1 + 64;
    v38 = v7;
    v39 = v5;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v47 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v46 = *(a1 + 36);
      v14 = v42;
      v15 = v43;
      (*(v5 + 16))(v42, *(a1 + 48) + *(v5 + 72) * v9, v43);
      v16 = sub_21549E6CC();
      [v44 *v45];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      result = (*(v5 + 8))(v14, v15);
      v25 = v48;
      v49 = v48;
      v27 = *(v48 + 16);
      v26 = *(v48 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_21531B54C((v26 > 1), v27 + 1, 1);
        v25 = v49;
      }

      *(v25 + 16) = v27 + 1;
      v28 = (v25 + 32 * v27);
      v28[4] = v18;
      v28[5] = v20;
      v28[6] = v22;
      v28[7] = v24;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v29 = *(v47 + 8 * v13);
      if ((v29 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v48 = v25;
      if (v46 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v30 = v29 & (-2 << (v9 & 0x3F));
      if (v30)
      {
        v11 = __clz(__rbit64(v30)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v38;
        v5 = v39;
      }

      else
      {
        v31 = v13 << 6;
        v32 = v13 + 1;
        v12 = v38;
        v33 = (v37 + 8 * v13);
        v5 = v39;
        while (v32 < (v11 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_215384B50(v9, v46, 0);
            v11 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        result = sub_215384B50(v9, v46, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v12)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_215384398(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  [a1 ic:a2 rectForRange:a3];
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = 0.0;
  v33.size.height = 0.0;
  v10 = CGRectEqualToRect(v27, v33);
  v11 = 0uLL;
  v12 = 0uLL;
  if (!v10)
  {
    [a1 textContainerInset];
    v14 = v13;
    [a1 textContainerInset];
    v16 = v15;
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v29 = CGRectOffset(v28, v14, v16);
    v17 = v29.origin.x;
    v18 = v29.origin.y;
    v19 = v29.size.width;
    v20 = v29.size.height;
    MinX = CGRectGetMinX(v29);
    v30.origin.x = v17;
    v30.origin.y = v18;
    v30.size.width = v19;
    v30.size.height = v20;
    MinY = CGRectGetMinY(v30);
    v31.origin.x = v17;
    v31.origin.y = v18;
    v31.size.width = v19;
    v31.size.height = v20;
    v24 = CGRectGetWidth(v31);
    v32.origin.x = v17;
    v32.origin.y = v18;
    v32.size.width = v19;
    v32.size.height = v20;
    v21 = CGRectGetHeight(v32);
    v22.f64[0] = v24;
    v22.f64[1] = v21;
    v23.f64[0] = MinX;
    v23.f64[1] = MinY;
    v11 = vrndpq_f64(v23);
    v12 = vrndpq_f64(v22);
  }

  *a4 = v11;
  *(a4 + 16) = v12;
  *(a4 + 32) = v10;
}

uint64_t sub_2153844E4(uint64_t a1, double a2, double a3)
{
  *(v3 + 176) = a2;
  *(v3 + 184) = a3;
  *(v3 + 168) = a1;
  sub_2154A1FFC();
  *(v3 + 192) = sub_2154A1FEC();
  v5 = sub_2154A1FCC();
  *(v3 + 200) = v5;
  *(v3 + 208) = v4;

  return MEMORY[0x2822009F8](sub_215384580, v5, v4);
}

uint64_t sub_215384580()
{
  v1 = *(v0 + 21);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2154BDB20;
    *(v2 + 32) = v1;
  }

  v4 = v0[22];
  v3 = v0[23];
  v5 = objc_allocWithZone(MEMORY[0x277D36980]);
  sub_2151A6C9C(0, &qword_2811995B0);
  v6 = v1;
  v7 = sub_2154A1F3C();

  v0[18] = v4;
  v0[19] = v3;
  v8 = [v5 initForAvatarWithParticipants:v7 preferredSize:1 hasBorder:{v4, v3}];
  *(v0 + 27) = v8;

  v9 = [objc_opt_self() sharedThumbnailService];
  *(v0 + 28) = v9;
  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 20;
  *(v0 + 3) = sub_21538479C;
  v10 = swift_continuation_init();
  *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B418);
  *(v0 + 10) = MEMORY[0x277D85DD0];
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = sub_21537B6B0;
  *(v0 + 13) = &block_descriptor_109;
  *(v0 + 14) = v10;
  [v9 thumbnailWithConfiguration:v8 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}