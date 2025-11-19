id sub_2153E9AA8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v82 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B5A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - v9;
  v11 = sub_21549EEFC();
  v78 = *(v11 - 8);
  v79 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C740);
  MEMORY[0x28223BE20](v14 - 8);
  v76 = &v59 - v15;
  v84 = sub_21549EF4C();
  v75 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v17 = (&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_21549EF3C();
  v80 = *(v18 - 8);
  v81 = v18;
  MEMORY[0x28223BE20](v18);
  v77 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v85 = &v59 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA60);
  *&v23 = MEMORY[0x28223BE20](v22 - 8).n128_u64[0];
  v25 = &v59 - v24;
  result = [a1 audioDocument];
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v27 = result;
  v28 = [a2 creationDate];
  v74 = v13;
  if (v28)
  {
    v29 = v28;
    sub_21549E66C();

    v30 = sub_21549E6AC();
    (*(*(v30 - 8) + 56))(v25, 0, 1, v30);
  }

  else
  {
    v31 = sub_21549E6AC();
    (*(*(v31 - 8) + 56))(v25, 1, 1, v31);
  }

  ICTTAudioDocument.reportAConcernAttachmentDescription(forToplineSummary:createdDate:)(1, v25, &v86);
  v69 = v86;
  v68 = v88;
  v73 = v89;
  v72 = v90;
  v71 = v91;
  v70 = v92;

  sub_2151ADCD8(v25, &unk_27CA5EA60);
  result = [a1 audioDocument];
  if (!result)
  {
    goto LABEL_12;
  }

  v32 = result;
  v33 = [result transcriptAsPlainText];
  v34 = sub_2154A1D6C();
  v36 = v35;

  v37 = [v32 topLineSummaryAsPlainText];
  v63 = sub_2154A1D6C();
  v83 = v38;

  v39 = sub_2154A23AC();
  v67 = v7;
  v66 = v10;
  if (v39 && (v86 = 0, v87 = 0, v40 = v39, sub_2154A1D5C(), v40, v87))
  {
    v64 = v87;
    v65 = v86;
  }

  else
  {

    v65 = 0;
    v64 = 0xE000000000000000;
  }

  *v17 = v34;
  v17[1] = v36;
  v62 = *MEMORY[0x277D08638];
  v61 = *(v75 + 104);
  v61(v17);
  swift_bridgeObjectRetain_n();

  v41 = *MEMORY[0x277D08610];
  v42 = sub_21549EF2C();
  v43 = *(v42 - 8);
  v60 = *(v43 + 104);
  v75 = v36;
  v44 = v76;
  v60(v76, v41, v42);
  v59 = *(v43 + 56);
  v59(v44, 0, 1, v42);
  sub_21549EF1C();

  v45 = v83;

  *v17 = v63;
  v17[1] = v45;
  (v61)(v17, v62, v84);

  v60(v44, *MEMORY[0x277D085F8], v42);
  v59(v44, 0, 1, v42);
  v46 = v77;
  sub_21549EF1C();
  (*(v78 + 104))(v74, *MEMORY[0x277D08598], v79);
  v48 = v80;
  v47 = v81;
  v49 = *(v80 + 16);
  v50 = v66;
  v49(v66, v85, v81);
  v51 = *(v48 + 56);
  v51(v50, 0, 1, v47);
  v52 = v67;
  v49(v67, v46, v47);
  v51(v52, 0, 1, v47);

  v53 = objc_allocWithZone(sub_21549EF6C());
  v54 = sub_21549EF0C();
  v55 = *(v48 + 8);
  v55(v46, v47);
  v55(v85, v47);
  v56 = v82;
  *v82 = v54;
  v57 = *MEMORY[0x277D08530];
  v58 = sub_21549EEEC();
  return (*(*(v58 - 8) + 104))(v56, v57, v58);
}

void sub_2153EA400(void *a1, char a2)
{
  if (a2)
  {
    if (qword_27CA598C8 != -1)
    {
      swift_once();
    }

    v3 = sub_21549F11C();
    __swift_project_value_buffer(v3, qword_27CA5C670);
    v4 = a1;
    oslog = sub_21549F0FC();
    v5 = sub_2154A224C();
    sub_215392448(a1);
    if (!os_log_type_enabled(oslog, v5))
    {
      goto LABEL_16;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2151A1000, oslog, v5, "Failed to fetch existing response: %@", v6, 0xCu);
    sub_2151ADCD8(v7, &unk_27CA59E90);
    MEMORY[0x21606B520](v7, -1, -1);
    v10 = v6;
    goto LABEL_15;
  }

  if (!a1)
  {
    if (qword_27CA598C8 != -1)
    {
      swift_once();
    }

    v19 = sub_21549F11C();
    __swift_project_value_buffer(v19, qword_27CA5C670);
    oslog = sub_21549F0FC();
    v20 = sub_2154A224C();
    if (!os_log_type_enabled(oslog, v20))
    {
      goto LABEL_16;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2151A1000, oslog, v20, "No existing Feedback response", v21, 2u);
    v10 = v21;
LABEL_15:
    MEMORY[0x21606B520](v10, -1, -1);
    goto LABEL_16;
  }

  v11 = qword_27CA598C8;
  v12 = a1;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = sub_21549F11C();
  __swift_project_value_buffer(v13, qword_27CA5C670);
  v14 = v12;
  oslog = sub_21549F0FC();
  v15 = sub_2154A224C();
  sub_215392448(a1);
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v14;
    *v17 = a1;
    v18 = v14;
    _os_log_impl(&dword_2151A1000, oslog, v15, "Found existing Feedback response %@", v16, 0xCu);
    sub_2151ADCD8(v17, &unk_27CA59E90);
    MEMORY[0x21606B520](v17, -1, -1);
    MEMORY[0x21606B520](v16, -1, -1);
    sub_215392448(a1);
LABEL_16:

    return;
  }

  sub_215392448(a1);
}

void AudioAttachmentEditorCoordinator.delete(_:)(uint64_t a1)
{
  v2 = [v1 makeDeleteAlertControllerFor_];
  v3 = *&v1[OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController];
  v4 = [v3 presentedViewController];
  if (!v4)
  {
    v4 = v3;
  }

  v5 = v4;
  [v4 presentViewController:v2 animated:1 completion:0];
}

id sub_2153EA94C(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v6 = sub_2154A1D2C();
  v7 = [v5 localizedStringForKey:v6 value:0 table:0];

  sub_2154A1D6C();
  sub_21549F93C();
  sub_21549F90C();
  v8 = sub_21549F91C();

  if (v8)
  {
    sub_2151A6C9C(0, &qword_281199690);
    v9 = a1;
    sub_2154A291C();
  }

  v10 = [v4 mainBundle];
  v11 = sub_2154A1D2C();
  v12 = [v10 localizedStringForKey:v11 value:0 table:0];

  sub_2154A1D6C();
  v13 = sub_2154A1D2C();

  v14 = sub_2154A1D2C();

  v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

  v16 = [v2 makeDeleteActionFor_];
  [v15 addAction_];

  v17 = [v2 makeCancelAction];
  [v15 addAction_];

  return v15;
}

id sub_2153EAC50(int a1, id a2)
{
  result = [a2 audioModel];
  if (result)
  {
    v3 = result;
    sub_21549ECCC();
    swift_allocObject();
    v4 = v3;
    v5 = sub_21549EC4C();
    type metadata accessor for SummaryViewModel();
    swift_allocObject();
    v6 = v4;

    v7 = sub_21535EFE4(v6);

    type metadata accessor for RecordingViewModel();
    swift_allocObject();
    v8 = v6;

    sub_215466468(v8, v5, v7);

    sub_21546367C();
  }

  return result;
}

uint64_t sub_2153EAEC0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2153EAFCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v7 = sub_2154A2D6C();
    v20 = v7;
    sub_2154A2C3C();
    if (sub_2154A2CDC())
    {
      sub_2151A6C9C(0, a5);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_2153EC280(v14 + 1, a3);
        }

        v7 = v20;
        result = sub_2154A290C();
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_2154A2CDC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v7;
}

uint64_t sub_2153EB1CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7C0);
    v2 = sub_2154A2D6C();
    v15 = v2;
    sub_2154A2C3C();
    if (sub_2154A2CDC())
    {
      type metadata accessor for CollaboratorSelectionView();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2153EC280(v9 + 1, &qword_27CA5A7C0);
        }

        v2 = v15;
        result = sub_2154A290C();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_2154A2CDC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2153EB414(void *a1, unint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = a1;
    v13 = sub_2154A2CEC();

    if (v13)
    {
      v14 = sub_2153EC67C(v11, v12, a4, a5, a2);

      return v14;
    }

    return 0;
  }

  v25 = v5;
  sub_2151A6C9C(0, a2);
  v16 = sub_2154A290C();
  v17 = -1 << *(v9 + 32);
  v18 = v16 & ~v17;
  if (((*(v9 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
    return 0;
  }

  v19 = ~v17;
  while (1)
  {
    v20 = *(*(v9 + 48) + 8 * v18);
    v21 = sub_2154A291C();

    if (v21)
    {
      break;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v9 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v25;
  v26 = *v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2153ECCD8(a4);
    v23 = v26;
  }

  v24 = *(*(v23 + 48) + 8 * v18);
  sub_2153EE004(v18);
  result = v24;
  *v25 = v26;
  return result;
}

uint64_t sub_2153EB5DC()
{
  v1 = v0;
  v35 = sub_21549E70C();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A570);
  result = sub_2154A2D5C();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_2151C2DCC(&qword_281199D00, MEMORY[0x277CC95F0]);
      result = sub_2154A1C9C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_2153EB938()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C818);
  result = sub_2154A2D5C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 4 * (v13 | (v5 << 6)));
      result = MEMORY[0x216069C50](*(v4 + 40), v16, 4);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 4 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2153EBB60()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C810);
  result = sub_2154A2D5C();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_2154A30DC();
      sub_2154A30FC();
      if (v16)
      {
        v17 = v16;
        sub_2154A292C();
      }

      result = sub_2154A312C();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2153EBDD4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_2154A2D5C();
  v6 = result;
  if (*(v4 + 16))
  {
    v28 = v2;
    v29 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_2154A1D6C();
      sub_2154A30DC();
      sub_2154A1DFC();
      v19 = sub_2154A312C();

      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v4 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v3 = v28;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_2153EC048()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C7E8);
  result = sub_2154A2D5C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_2154A30CC();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2153EC280(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_2154A2D5C();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_2154A290C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

unint64_t sub_2153EC4A0(uint64_t a1, uint64_t a2)
{
  sub_2154A290C();
  result = sub_2154A2C1C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2153EC524()
{
  v1 = v0;

  v2 = sub_2154A2C8C();
  v3 = swift_unknownObjectRetain();
  v4 = sub_2153EB1CC(v3, v2);
  v13 = v4;

  v5 = sub_2154A290C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    type metadata accessor for CollaboratorSelectionView();
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = sub_2154A291C();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v4 + 48) + 8 * v7);
  sub_2153EE004(v7);
  result = sub_2154A291C();
  if (result)
  {
    *v1 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2153EC67C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v9 = v5;

  v10 = sub_2154A2C8C();
  v11 = swift_unknownObjectRetain();
  v12 = sub_2153EAFCC(v11, v10, a3, a4, a5);
  v21 = v12;

  v13 = sub_2154A290C();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    sub_2151A6C9C(0, a5);
    while (1)
    {
      v17 = *(*(v12 + 48) + 8 * v15);
      v18 = sub_2154A291C();

      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v19 = *(*(v12 + 48) + 8 * v15);
  sub_2153EE004(v15);
  result = sub_2154A291C();
  if (result)
  {
    *v9 = v21;
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2153EC810()
{
  v1 = v0;
  v2 = sub_21549E70C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A570);
  v6 = *v0;
  v7 = sub_2154A2D4C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_2153ECA48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C818);
  v2 = *v0;
  v3 = sub_2154A2D4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_2153ECB88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C810);
  v2 = *v0;
  v3 = sub_2154A2D4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_2153ECCD8(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_2154A2D4C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_2153ECE18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C7E8);
  v2 = *v0;
  v3 = sub_2154A2D4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2153ECF58()
{
  v1 = v0;
  v32 = sub_21549E70C();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A570);
  v6 = sub_2154A2D5C();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_2151C2DCC(&qword_281199D00, MEMORY[0x277CC95F0]);
      result = sub_2154A1C9C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_2153ED274()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C818);
  result = sub_2154A2D5C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 4 * (v12 | (v5 << 6)));
      result = MEMORY[0x216069C50](*(v4 + 40), v15, 4);
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 4 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2153ED468()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C810);
  result = sub_2154A2D5C();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_2154A30DC();
      sub_2154A30FC();
      if (v15)
      {
        v16 = v15;
        sub_2154A292C();
      }

      result = sub_2154A312C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_30;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_28;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2153ED6B0(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_2154A2D5C();
  v6 = result;
  if (*(v4 + 16))
  {
    v28 = v2;
    v29 = v4;
    v7 = 0;
    v8 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_2154A1D6C();
      sub_2154A30DC();
      v19 = v18;
      sub_2154A1DFC();
      v20 = sub_2154A312C();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v19;
      ++*(v6 + 16);
      v4 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v3 = v28;
        goto LABEL_26;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_2153ED8FC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C7E8);
  result = sub_2154A2D5C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_2154A30CC();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2153EDAEC(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_2154A2D5C();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_2154A290C();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_2153EDCFC(int64_t a1)
{
  v3 = sub_21549E70C();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_2154A2C0C();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_2151C2DCC(&qword_281199D00, MEMORY[0x277CC95F0]);
        v24 = sub_2154A1C9C();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_2153EE004(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2154A2C0C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_2154A290C();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2153EE258(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2154A2CAC();

    if (v9)
    {

      type metadata accessor for CollaboratorSelectionView();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2154A2C8C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2153EB1CC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2153EC280(v20 + 1, &qword_27CA5A7C0);
    }

    v18 = v8;
    sub_2153EC4A0(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for CollaboratorSelectionView();
  v11 = sub_2154A290C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2153EF104(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2154A291C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_2153EE480(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_21549E70C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2151C2DCC(&qword_281199D00, MEMORY[0x277CC95F0]);
  v33 = a2;
  v11 = sub_2154A1C9C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2151C2DCC(&qword_27CA5DB90, MEMORY[0x277CC95F0]);
      v21 = sub_2154A1D1C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_2153EF294(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2153EE760(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x216069C50](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2153EF538(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2153EE870(void *a1, void *a2)
{
  v4 = *v2;
  sub_2154A30DC();
  sub_2154A30FC();
  if (a2)
  {
    v5 = a2;
    sub_2154A292C();
  }

  v6 = sub_2154A312C();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v16 = a2;
    sub_2153EF65C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    *a1 = a2;
    return 1;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = *(*(v4 + 48) + 8 * v8);
    if (!v10)
    {
      break;
    }

    if (a2)
    {
      sub_2151A6C9C(0, &unk_27CA5C800);
      v11 = a2;
      v12 = v10;
      v13 = sub_2154A291C();

      if (v13)
      {

        v14 = *(*(v4 + 48) + 8 * v8);
        goto LABEL_13;
      }
    }

LABEL_6:
    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (a2)
  {
    goto LABEL_6;
  }

  v14 = 0;
LABEL_13:
  *a1 = v14;
  v18 = v14;
  return 0;
}

uint64_t sub_2153EEA40(void *a1, void *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  v6 = v5;
  v9 = *v5;
  sub_2154A1D6C();
  sub_2154A30DC();
  sub_2154A1DFC();
  v10 = sub_2154A312C();

  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = sub_2154A1D6C();
      v16 = v15;
      if (v14 == sub_2154A1D6C() && v16 == v17)
      {

        goto LABEL_12;
      }

      v19 = sub_2154A2FAC();

      if (v19)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v9 + 48) + 8 * v12);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v6;
    v21 = a2;
    sub_2153EF83C(v21, v12, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v6 = v28;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_2153EEBFC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_2154A30CC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2153EFA48(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2153EED00(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = v6;
  v13 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *v6;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = a2;

    v16 = sub_2154A2CAC();

    if (v16)
    {

      sub_2151A6C9C(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v34;
    }

    else
    {
      result = sub_2154A2C8C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_2153EAFCC(v14, result + 1, a5, a6, a3);
        v27 = *(v26 + 16);
        if (*(v26 + 24) <= v27)
        {
          sub_2153EC280(v27 + 1, a5);
        }

        v28 = v15;
        sub_2153EC4A0(v28, v26);

        *v10 = v26;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_2151A6C9C(0, a3);
    v18 = sub_2154A290C();
    v19 = -1 << *(v13 + 32);
    v20 = v18 & ~v19;
    if ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = *(*(v13 + 48) + 8 * v20);
        v23 = sub_2154A291C();

        if (v23)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v29 = *(*(v13 + 48) + 8 * v20);
      *a1 = v29;
      v30 = v29;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v10;
      v25 = a2;
      sub_2153EEF74(v25, v20, isUniquelyReferenced_nonNull_native, a5, a6, a3);
      *v10 = v35;
      *a1 = v25;
      return 1;
    }
  }

  return result;
}

void sub_2153EEF74(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_2153EC280(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_2153ECCD8(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_2153EDAEC(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = sub_2154A290C();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    sub_2151A6C9C(0, v11);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_2154A291C();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2154A2FFC();
  __break(1u);
}

void sub_2153EF104(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2153EC280(v6 + 1, &qword_27CA5A7C0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2153ECCD8(&qword_27CA5A7C0);
      goto LABEL_12;
    }

    sub_2153EDAEC(v6 + 1, &qword_27CA5A7C0);
  }

  v8 = *v3;
  v9 = sub_2154A290C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for CollaboratorSelectionView();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_2154A291C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2154A2FFC();
  __break(1u);
}

uint64_t sub_2153EF294(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_21549E70C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2153EB5DC();
  }

  else
  {
    if (v11 > v10)
    {
      sub_2153EC810();
      goto LABEL_12;
    }

    sub_2153ECF58();
  }

  v12 = *v3;
  sub_2151C2DCC(&qword_281199D00, MEMORY[0x277CC95F0]);
  v13 = sub_2154A1C9C();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_2151C2DCC(&qword_27CA5DB90, MEMORY[0x277CC95F0]);
      v21 = sub_2154A1D1C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2154A2FFC();
  __break(1u);
  return result;
}

uint64_t sub_2153EF538(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2153EB938();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2153ECA48();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2153ED274();
  }

  v8 = *v3;
  result = MEMORY[0x216069C50](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2154A2FFC();
  __break(1u);
  return result;
}

void sub_2153EF65C(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_2153EBB60();
  }

  else
  {
    if (v8 > v7)
    {
      sub_2153ECB88();
      goto LABEL_18;
    }

    sub_2153ED468();
  }

  v9 = *v3;
  sub_2154A30DC();
  sub_2154A30FC();
  if (a1)
  {
    v10 = a1;
    sub_2154A292C();
  }

  v11 = sub_2154A312C();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      if (v14)
      {
        if (a1)
        {
          sub_2151A6C9C(0, &unk_27CA5C800);
          v15 = a1;
          v16 = v14;
          v17 = sub_2154A291C();

          if (v17)
          {
LABEL_17:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AF80);
            sub_2154A2FFC();
            __break(1u);
            break;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_17;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_18:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }
}

uint64_t sub_2153EF83C(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v7 = v6;
  v9 = result;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v12 = a6;
    sub_2153EBDD4(v10 + 1, a4);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_2153ECCD8(a4);
      goto LABEL_16;
    }

    v12 = a6;
    sub_2153ED6B0(v10 + 1, a4);
  }

  v13 = *v6;
  sub_2154A1D6C();
  sub_2154A30DC();
  sub_2154A1DFC();
  v14 = sub_2154A312C();

  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v12(0);
    do
    {
      v17 = sub_2154A1D6C();
      v19 = v18;
      if (v17 == sub_2154A1D6C() && v19 == v20)
      {
        goto LABEL_19;
      }

      v22 = sub_2154A2FAC();

      if (v22)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v23 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + 8 * a2) = v9;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_2154A2FFC();
  __break(1u);
  return result;
}

uint64_t sub_2153EFA48(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2153EC048();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2153ECE18();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2153ED8FC();
  }

  v8 = *v3;
  result = sub_2154A30CC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2154A2FFC();
  __break(1u);
  return result;
}

void sub_2153EFB68(void *a1, char *a2)
{
  *&a2[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_view] = 0;
  v4 = &a2[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_delegate];
  *&a2[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_tapGestureRecognizer] = 0;
  *&a2[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_panGestureRecognizer] = 0;
  swift_beginAccess();
  *(v4 + 1) = &protocol witness table for AudioAttachmentEditorCoordinator;
  swift_unknownObjectWeakAssign();
  v15.receiver = a2;
  v15.super_class = type metadata accessor for TranscriptDetailPresentationInteraction();
  v5 = objc_msgSendSuper2(&v15, sel_init);
  v6 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v7 = v5;
  v8 = [v6 initWithTarget:v7 action:sel_tap_];
  v9 = *&v7[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_tapGestureRecognizer];
  *&v7[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_tapGestureRecognizer] = v8;

  v10 = [objc_allocWithZone(MEMORY[0x277D757F8]) initWithTarget:v7 action:sel_pan_];
  v11 = OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_panGestureRecognizer;
  v12 = *&v7[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_panGestureRecognizer];
  *&v7[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_panGestureRecognizer] = v10;
  v13 = v10;

  if (v13)
  {
    [v13 setDelegate_];

    v14 = *&v7[v11];
    if (v14)
    {
      [v14 _setHysteresis_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id _s11NotesEditor015AudioAttachmentB11CoordinatorC057transcriptDetailPresentationInteractionViewControllersForH0ySo16UIViewControllerC010presentingjN0_AF04viewN9ToPresenttSgAA010TranscriptghI0CF_0()
{
  v1 = sub_21549F11C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_miniPlayer);
  if (v6 && (*(v6 + OBJC_IVAR___ICMiniPlayerViewController_showCloseButton) & 1) == 0)
  {
    v7 = v3;
    v8 = v6;
    result = [v8 view];
    if (result)
    {
      v10 = result;
      v11 = [result ic_isInSecureWindow];

      if (v11)
      {
        sub_21549F0DC();
        v12 = sub_21549F0FC();
        v13 = sub_2154A225C();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_2151A1000, v12, v13, "Not presenting audio detail view in secure window", v14, 2u);
          MEMORY[0x21606B520](v14, -1, -1);
        }

        else
        {
        }

        (*(v2 + 8))(v5, v7);
        return 0;
      }

      v15 = *(v0 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_recordingViewController);
      if (!v15)
      {
        v21 = OBJC_IVAR___ICMiniPlayerViewController_attachment;
        swift_beginAccess();
        v22 = *&v8[v21];
        if (v22)
        {
          v23 = v22;
          v24 = [v23 audioModel];
          if (v24)
          {
            v25 = v24;
            [objc_opt_self() getHostingViewForAttachmentModel:v24 delegate:0];

            v26 = *(v0 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController);
            v27 = v26;
            return v26;
          }
        }

        return 0;
      }

      v16 = *(v0 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController);
      v17 = v15;
      v18 = v16;
      result = [v16 view];
      if (result)
      {
        v19 = result;
        [result endEditing_];

        v20 = v18;
        return v18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  return 0;
}

void *_s11NotesEditor015AudioAttachmentB11CoordinatorC49transcriptDetailPresentationInteractionSourceViewySo6UIViewCSgAA010TranscriptghI0CF_0()
{
  v1 = *(v0 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_miniPlayer);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR___ICMiniPlayerViewController_playerView);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v3 window];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  if (v4)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_2153F0060()
{
  v0 = sub_21549E56C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = aBlock - v5;
  result = [objc_opt_self() faceTimeShowInCallUIURL];
  if (result)
  {
    v8 = result;
    sub_21549E51C();

    (*(v1 + 32))(v6, v3, v0);
    v9 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
    [v9 setSensitive_];
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v10 = result;
      v11 = sub_21549E49C();
      aBlock[4] = sub_2153E18B8;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2153E1B0C;
      aBlock[3] = &block_descriptor_113;
      v12 = _Block_copy(aBlock);
      v13 = v9;
      [v10 openURL:v11 configuration:v13 completionHandler:v12];
      _Block_release(v12);

      return (*(v1 + 8))(v6, v0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2153F02A0(void *a1)
{
  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = [a1 audioModel];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [v2 composedAudioAssetURLs];

  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_21549E56C();
  sub_2154A1F4C();
}

void sub_2153F0354(void *a1)
{
  v2 = [a1 sheetPresentationController];
  if (v2)
  {
    v3 = v2;
    [v2 _setShouldDismissWhenTappedOutside_];
  }

  v4 = [a1 sheetPresentationController];
  if (v4)
  {
    v5 = v4;
    [v4 _setCornerRadiusForPresentationAndDismissal_];
  }

  v6 = [a1 sheetPresentationController];
  if (v6)
  {
    v7 = v6;
    [v6 setPrefersGrabberVisible_];
  }

  v8 = [a1 sheetPresentationController];
  if (v8)
  {
    v9 = v8;
    [v8 _grabberPreferredSize];
    [v9 _setGrabberPreferredSize_];
  }

  if ([objc_opt_self() ic_isiPad])
  {
    v10 = [a1 sheetPresentationController];
    if (v10)
    {
      v11 = v10;
      [v10 _setWantsFullScreen_];
    }

    v12 = [a1 sheetPresentationController];
    if (v12)
    {
      v13 = v12;
      [v12 _setAllowsInteractiveDismissWhenFullScreen_];
    }
  }
}

uint64_t sub_2153F04F8()
{
  v1 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator__eventReporter;
  if (!*&v0[OBJC_IVAR___ICAudioAttachmentEditorCoordinator__eventReporter])
  {
    sub_2151A6C9C(0, &qword_27CA5C7D8);
    if ([swift_getObjCClassFromMetadata() isOptedInForAnalytics])
    {
      v2 = [v0 textView];
      type metadata accessor for AudioAttachmentEditorCoordinator();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C7E0);
      sub_2154A1D9C();
      if (v2)
      {
        v3 = objc_allocWithZone(MEMORY[0x277D35978]);
        v4 = sub_2154A1D2C();

        v5 = [v3 initWithSubTrackerName:v4 view:v2];
      }

      else
      {
        v6 = objc_allocWithZone(MEMORY[0x277D35978]);
        v2 = sub_2154A1D2C();

        v5 = [v6 initWithSubTrackerName_];
      }

      v7 = *&v0[v1];
      *&v0[v1] = v5;

      if (*&v0[v1])
      {
        v8 = [objc_opt_self() defaultCenter];
        [v8 addObserver:v0 selector:sel_eventReporterLostSession_ name:*MEMORY[0x277D35958] object:*&v0[v1]];
      }
    }
  }

  return *&v0[v1];
}

uint64_t sub_2153F06E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2151BD36C;

  return sub_2153E3DA0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2153F07B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2151BD36C;

  return sub_2153E7614(a1, v4, v5, v7, v6);
}

void _s11NotesEditor015AudioAttachmentB11CoordinatorC17playFromBeginningyySo12ICAttachmentCF_0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = [objc_opt_self() sharedAudioController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 currentAttachment];

    if (v7)
    {
      sub_2151A6C9C(0, &qword_281199690);
      v8 = a1;
      v9 = sub_2154A291C();

      if (v9)
      {
        v10 = sub_2154A202C();
        (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
        sub_2154A1FFC();
        v11 = sub_2154A1FEC();
        v12 = swift_allocObject();
        v13 = MEMORY[0x277D85700];
        *(v12 + 16) = v11;
        *(v12 + 24) = v13;
        sub_2152F4D50(0, 0, v4, &unk_2154C2F00, v12);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2153F0A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2153F0A84(uint64_t a1)
{
  v2 = type metadata accessor for SummaryView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _s11NotesEditor015AudioAttachmentB11CoordinatorC6append2toySo12ICAttachmentC_tF_0(void *a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v33 - v3;
  sub_21549F93C();
  sub_21549F90C();
  v32 = sub_21549F8EC();

  v5 = v32;
  if (v32)
  {
LABEL_2:

    return;
  }

  v6 = [a1 audioModel];
  if (!v6)
  {
    return;
  }

  v32 = v6;
  v7 = [v6 audioDocument];
  if (!v7)
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = v7;
  v9 = [v7 isCallRecording];

  if (v9)
  {
    v5 = v32;
    goto LABEL_2;
  }

  v10 = [objc_opt_self() sharedAudioController];
  if (!v10)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 stop];

  v33[0] = 0;
  if ([v32 deleteSummaryAndReturnError_])
  {
    v12 = v33[0];
  }

  else
  {
    v13 = v33[0];
    v14 = sub_21549E3DC();

    swift_willThrow();
    if (qword_27CA598C8 != -1)
    {
      swift_once();
    }

    v15 = sub_21549F11C();
    __swift_project_value_buffer(v15, qword_27CA5C670);
    v16 = v14;
    v17 = sub_21549F0FC();
    v18 = sub_2154A226C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v14;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_2151A1000, v17, v18, "could not delete summary: %@", v19, 0xCu);
      sub_2151ADCD8(v20, &unk_27CA59E90);
      MEMORY[0x21606B520](v20, -1, -1);
      MEMORY[0x21606B520](v19, -1, -1);
    }

    else
    {
    }
  }

  sub_21549ECCC();
  swift_allocObject();
  v23 = v32;
  sub_21549EC4C();
  v24 = objc_allocWithZone(sub_21549F77C());
  v25 = v23;

  v26 = sub_21549F75C();
  v27 = sub_2154A202C();
  (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
  sub_2154A1FFC();
  v28 = v26;
  v29 = sub_2154A1FEC();
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v28;
  sub_215354B4C(0, 0, v4, &unk_2154C2ED8, v30);
}

id sub_2153F11BC(void *a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = sub_2154A1D2C();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  sub_2154A1D6C();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = a1;
  v7 = sub_2154A1D2C();

  v11[4] = sub_2153F1B78;
  v11[5] = v5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2151B5B78;
  v11[3] = &block_descriptor_58_1;
  v8 = _Block_copy(v11);

  v9 = [objc_opt_self() actionWithTitle:v7 style:2 handler:v8];
  _Block_release(v8);

  return v9;
}

id sub_2153F1350()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  sub_2154A1D6C();
  v3 = sub_2154A1D2C();

  v7[4] = nullsub_1;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2151B5B78;
  v7[3] = &block_descriptor_25;
  v4 = _Block_copy(v7);

  v5 = [objc_opt_self() actionWithTitle:v3 style:1 handler:v4];
  _Block_release(v4);

  return v5;
}

void sub_2153F14C0()
{
  v0 = sub_21549EECC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C6E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  sub_21549EEBC();
  v7 = sub_21549EEAC();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  sub_2151ADCD8(v6, &unk_27CA5C6E0);
  if (qword_27CA598C8 != -1)
  {
    swift_once();
  }

  v9 = sub_21549F11C();
  __swift_project_value_buffer(v9, qword_27CA5C670);
  v10 = sub_21549F0FC();
  v11 = sub_2154A224C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v8 != 1;
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v12;
    _os_log_impl(&dword_2151A1000, v10, v11, "Has answered form response: %{BOOL}d", v13, 8u);
    MEMORY[0x21606B520](v13, -1, -1);
  }

  sub_21549EEDC();
  v14 = (*(v1 + 88))(v3, v0);
  if (v14 == *MEMORY[0x277D08510])
  {
    v15 = sub_21549F0FC();
    v16 = sub_2154A224C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Successful Thumbs Up feedback";
LABEL_20:
      _os_log_impl(&dword_2151A1000, v15, v16, v18, v17, 2u);
      MEMORY[0x21606B520](v17, -1, -1);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (v14 == *MEMORY[0x277D084E8])
  {
    v15 = sub_21549F0FC();
    v16 = sub_2154A224C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Successful Thumbs Down feedback";
      goto LABEL_20;
    }

LABEL_21:

    return;
  }

  if (v14 == *MEMORY[0x277D084F8])
  {
    v15 = sub_21549F0FC();
    v16 = sub_2154A224C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Successful Report a Concern feedback";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v14 == *MEMORY[0x277D08508])
  {
    v15 = sub_21549F0FC();
    v16 = sub_2154A224C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Completed feedback call, user skipped";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v14 == *MEMORY[0x277D084F0])
  {
    v15 = sub_21549F0FC();
    v16 = sub_2154A224C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Completed feedback call, invalid data";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v19 = *MEMORY[0x277D08500];
  v20 = v14;
  v21 = sub_21549F0FC();
  v22 = sub_2154A224C();
  v23 = os_log_type_enabled(v21, v22);
  if (v20 == v19)
  {
    if (v23)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2151A1000, v21, v22, "Completed feedback call, user deleted content", v24, 2u);
      MEMORY[0x21606B520](v24, -1, -1);
    }
  }

  else
  {
    if (v23)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2151A1000, v21, v22, "Completed feedback call, unknown action", v25, 2u);
      MEMORY[0x21606B520](v25, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }
}

void sub_2153F1A1C(void *a1)
{
  if (qword_27CA598C8 != -1)
  {
    swift_once();
  }

  v2 = sub_21549F11C();
  __swift_project_value_buffer(v2, qword_27CA5C670);
  v3 = a1;
  oslog = sub_21549F0FC();
  v4 = sub_2154A226C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2151A1000, oslog, v4, "Failed feedback with error: %@", v5, 0xCu);
    sub_2151ADCD8(v6, &unk_27CA59E90);
    MEMORY[0x21606B520](v6, -1, -1);
    MEMORY[0x21606B520](v5, -1, -1);
  }
}

uint64_t objectdestroy_3Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroyTm_3()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2153F1C18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2151BD278;

  return sub_2153E9114();
}

id sub_2153F1CCC()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 16) + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_hideMiniPlayerConstraint);
  if (v2)
  {
    [v2 setActive_];
  }

  return [v1 layoutIfNeeded];
}

uint64_t sub_2153F1D4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2151BD278;

  return sub_2153E860C();
}

uint64_t sub_2153F1E10(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_215324170(a1, a2);
  }

  return a1;
}

uint64_t sub_2153F1E24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ICMediaSourceType.init(_:)()
{
  v0 = sub_2154A1D2C();

  v1 = ICMediaSourceTypeFromString(v0);

  return v1;
}

uint64_t ICMediaSourceType.description.getter(uint64_t a1)
{
  v1 = NSStringFromICMediaSourceType(a1);
  v2 = sub_2154A1D6C();

  return v2;
}

unint64_t sub_2153F1F78()
{
  result = qword_27CA5C840;
  if (!qword_27CA5C840)
  {
    type metadata accessor for MediaSourceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C840);
  }

  return result;
}

void sub_2153F1FD0(uint64_t a1@<X8>)
{
  v2 = sub_2154A1D2C();

  v3 = ICMediaSourceTypeFromString(v2);

  *a1 = v3;
  *(a1 + 8) = 0;
}

uint64_t sub_2153F2024()
{
  v1 = NSStringFromICMediaSourceType(*v0);
  v2 = sub_2154A1D6C();

  return v2;
}

uint64_t type metadata accessor for RecordingView()
{
  result = qword_27CA5C878;
  if (!qword_27CA5C878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2153F20E8()
{
  type metadata accessor for RecordingViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ICRecordButtonViewModel();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ICRecordButtonRepository();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ICRecordButtonPresenter();
        if (v3 <= 0x3F)
        {
          sub_2153F24F4(319, &qword_27CA5C888, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_2153BB10C();
            if (v5 <= 0x3F)
            {
              sub_2153F24F4(319, &unk_27CA5C8A0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_2153F25C0(319, &qword_27CA5BEF0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_2153F25C0(319, &unk_27CA5C8B0, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
                  if (v8 <= 0x3F)
                  {
                    sub_2153F25C0(319, &qword_27CA5B1F8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                    if (v9 <= 0x3F)
                    {
                      sub_2153F25C0(319, &qword_27CA5C8C0, &type metadata for RecordingView.FooterState, MEMORY[0x277CE10B8]);
                      if (v10 <= 0x3F)
                      {
                        sub_2151A6C9C(319, &qword_27CA5C8C8);
                        if (v11 <= 0x3F)
                        {
                          sub_21549E6AC();
                          if (v12 <= 0x3F)
                          {
                            sub_2153F25C0(319, &unk_27CA5C8D0, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
                            if (v13 <= 0x3F)
                            {
                              sub_2153ADA48();
                              if (v14 <= 0x3F)
                              {
                                sub_2153F2558();
                                if (v15 <= 0x3F)
                                {
                                  sub_2153F24F4(319, &qword_27CA5C8F0, type metadata accessor for TranscriptViewController, MEMORY[0x277D36090]);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_2153F25C0(319, &unk_27CA5C8F8, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
                                    if (v17 <= 0x3F)
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

void sub_2153F24F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2153F2558()
{
  if (!qword_27CA5C8E0)
  {
    sub_2151A6C9C(255, &qword_2811994D0);
    v0 = sub_2154A0E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA5C8E0);
    }
  }
}

void sub_2153F25C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2153F2624()
{
  result = qword_27CA5C908;
  if (!qword_27CA5C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C908);
  }

  return result;
}

uint64_t sub_2153F2678(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + 8 * v7 + 32);
      v14 = v11;
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_21531B60C(0, *(v8 + 16) + 1, 1);
          v8 = v15;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_21531B60C((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + 8 * v10 + 32) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_2153F27D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + v7 + 32);
      v14 = v11;
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_21531B774(0, *(v8 + 16) + 1, 1);
          v8 = v15;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_21531B774((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + v10 + 32) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_15:

    return v8;
  }

  return result;
}

id sub_2153F2928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v56 = a3;
  v5 = type metadata accessor for RecordingView();
  MEMORY[0x28223BE20](v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 32);
  *&v7[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA00);
  swift_storeEnumTagMultiPayload();
  v10 = v5[9];
  *&v7[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0);
  swift_storeEnumTagMultiPayload();
  v11 = v5[10];
  *&v7[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA10);
  swift_storeEnumTagMultiPayload();
  v12 = &v7[v5[11]];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = &v7[v5[12]];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = &v7[v5[13]];
  v57 = 0;
  sub_2154A0DDC();
  v15 = *(&v59 + 1);
  *v14 = v59;
  *(v14 + 1) = v15;
  v16 = &v7[v5[15]];
  LOBYTE(v57) = 0;
  sub_2154A0DDC();
  v17 = *(&v59 + 1);
  *v16 = v59;
  *(v16 + 1) = v17;
  v18 = &v7[v5[16]];
  LOBYTE(v57) = 0;
  sub_2154A0DDC();
  v19 = *(&v59 + 1);
  *v18 = v59;
  *(v18 + 1) = v19;
  v20 = &v7[v5[17]];
  LOBYTE(v57) = 0;
  sub_2154A0DDC();
  v21 = *(&v59 + 1);
  *v20 = v59;
  *(v20 + 1) = v21;
  result = [objc_opt_self() sharedAudioController];
  if (result)
  {
    *&v7[v5[18]] = result;
    swift_unknownObjectWeakInit();
    *&v7[v5[21]] = 0x4056800000000000;
    *&v7[v5[22]] = 0x4042000000000000;
    *&v7[v5[23]] = 0;
    *&v7[v5[24]] = 0;
    *&v7[v5[25]] = 0x403A000000000000;
    *&v7[v5[26]] = 0x4040000000000000;
    *&v7[v5[27]] = 0x4014000000000000;
    *&v7[v5[28]] = 0x4020000000000000;
    *&v7[v5[29]] = 0x4028000000000000;
    *&v7[v5[30]] = 0x4032000000000000;
    *&v7[v5[31]] = 0x4020000000000000;
    *&v7[v5[32]] = 0x4038000000000000;
    *&v7[v5[33]] = 0x4040000000000000;
    *&v7[v5[34]] = 0x4043000000000000;
    *&v7[v5[35]] = 0x4043400000000000;
    *&v7[v5[36]] = 0x4041000000000000;
    *&v7[v5[37]] = 0x403C000000000000;
    *&v7[v5[38]] = 0x4041000000000000;
    *&v7[v5[39]] = 0x4034000000000000;
    *&v7[v5[40]] = 0x404E000000000000;
    *&v7[v5[41]] = 0x4044000000000000;
    *&v7[v5[42]] = 0x4046000000000000;
    *&v7[v5[43]] = 0x4046000000000000;
    *&v7[v5[44]] = 0x4038000000000000;
    *&v7[v5[45]] = 0x4041800000000000;
    *&v7[v5[46]] = 0x4042000000000000;
    *&v7[v5[47]] = 0x401C000000000000;
    *&v7[v5[48]] = 0xC000000000000000;
    *&v7[v5[49]] = 0x4049000000000000;
    *&v7[v5[50]] = 0x4040000000000000;
    *&v7[v5[51]] = 0x4028000000000000;
    *&v7[v5[52]] = 0x4038000000000000;
    v23 = &v7[v5[53]];
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_2154A0DDC();
    v24 = v60;
    *v23 = v59;
    *(v23 + 2) = v24;
    v25 = &v7[v5[54]];
    LOBYTE(v57) = 0;
    sub_2154A0DDC();
    v26 = *(&v59 + 1);
    *v25 = v59;
    *(v25 + 1) = v26;
    v27 = &v7[v5[55]];
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_2154A0DDC();
    v28 = v60;
    *v27 = v59;
    *(v27 + 2) = v28;
    v29 = &v7[v5[56]];
    *v29 = sub_21549F9DC() & 1;
    *(v29 + 1) = v30;
    v29[16] = v31 & 1;
    v32 = &v7[v5[57]];
    v57 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    sub_2151A6C9C(0, &qword_2811994D0);
    sub_2154A0DDC();
    v33 = *(&v59 + 1);
    *v32 = v59;
    *(v32 + 1) = v33;
    v34 = &v7[v5[58]];
    LOBYTE(v57) = 0;
    sub_2154A0DDC();
    v35 = *(&v59 + 1);
    *v34 = v59;
    *(v34 + 1) = v35;
    v36 = &v7[v5[59]];
    LOBYTE(v57) = 0;
    sub_2154A0DDC();
    v37 = *(&v59 + 1);
    *v36 = v59;
    *(v36 + 1) = v37;
    v38 = &v7[v5[60]];
    LOBYTE(v57) = 1;
    sub_2154A0DDC();
    v39 = *(&v59 + 1);
    *v38 = v59;
    *(v38 + 1) = v39;
    v40 = &v7[v5[61]];
    LOBYTE(v57) = 0;
    sub_2154A0DDC();
    v41 = *(&v59 + 1);
    *v40 = v59;
    *(v40 + 1) = v41;
    v42 = v5[62];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D898);
    swift_allocObject();
    *&v7[v42] = sub_21549EE8C();
    v43 = &v7[v5[63]];
    v57 = 0;
    sub_2154A0DDC();
    v44 = *(&v59 + 1);
    *v43 = v59;
    *(v43 + 1) = v44;
    v45 = &v7[v5[64]];
    LOBYTE(v57) = 0;
    sub_2154A0DDC();
    v46 = *(&v59 + 1);
    *v45 = v59;
    *(v45 + 1) = v46;
    v47 = &v7[v5[65]];
    LOBYTE(v57) = 0;
    sub_2154A0DDC();
    v48 = *(&v59 + 1);
    *v47 = v59;
    *(v47 + 1) = v48;
    *v7 = a1;
    swift_unknownObjectWeakAssign();
    v49 = v5[20];
    v50 = sub_21549E6AC();
    v51 = *(v50 - 8);
    (*(v51 + 16))(&v7[v49], a2, v50);
    swift_getKeyPath();
    *&v59 = a1;
    sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);

    sub_21549ED9C();

    LOBYTE(v49) = *(a1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__shouldShowTextViewOnFreshLaunch);

    v52 = &v7[v5[14]];
    *v52 = v49;
    *(v52 + 1) = 0;
    v53 = [objc_allocWithZone(type metadata accessor for ICRecordButtonRepository()) init];
    *(v7 + 2) = v53;
    type metadata accessor for ICRecordButtonPresenter();
    swift_allocObject();
    v54 = v53;
    v55 = sub_21539DE30(v54);
    swift_unknownObjectRelease();

    (*(v51 + 8))(a2, v50);
    *(v7 + 3) = v55;
    *(v7 + 1) = *(v55 + 16);
    sub_21541C94C(v7, v56, type metadata accessor for RecordingView);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2153F3130()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5C850);
  __swift_project_value_buffer(v0, qword_27CA5C850);
  return sub_21549F0BC();
}

uint64_t sub_2153F317C@<X0>(char a1@<W0>, void (*a2)(void *__return_ptr, _OWORD *)@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 112);
  v23[6] = *(v3 + 96);
  v23[7] = v5;
  v23[8] = *(v3 + 128);
  v6 = *(v3 + 48);
  v23[2] = *(v3 + 32);
  v23[3] = v6;
  v7 = *(v3 + 80);
  v23[4] = *(v3 + 64);
  v23[5] = v7;
  v8 = *(v3 + 16);
  v23[0] = *v3;
  v24 = *(v3 + 144);
  v23[1] = v8;
  if (a1)
  {
    a2(__src, v23);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v19, __src, 0x138uLL);
    sub_215324EEC(__dst, v21, &qword_27CA5D668);
    sub_2151ADCD8(v19, &qword_27CA5D668);
    memcpy(v21, __dst, 0x138uLL);
    sub_21541C944(v21);
    memcpy(v20, v21, 0x139uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D668);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D638);
    sub_21541C70C();
    sub_21541C824();
  }

  else
  {
    v9 = *(v3 + 112);
    v10 = *(v3 + 80);
    v19[6] = *(v3 + 96);
    v19[7] = v9;
    v11 = *(v3 + 112);
    v19[8] = *(v3 + 128);
    v12 = *(v3 + 48);
    v13 = *(v3 + 16);
    v19[2] = *(v3 + 32);
    v19[3] = v12;
    v14 = *(v3 + 48);
    v15 = *(v3 + 80);
    v19[4] = *(v3 + 64);
    v19[5] = v15;
    v16 = *(v3 + 16);
    v19[0] = *v3;
    v19[1] = v16;
    v21[6] = v19[6];
    v21[7] = v11;
    v21[8] = *(v3 + 128);
    v21[2] = v19[2];
    v21[3] = v14;
    v21[4] = v19[4];
    v21[5] = v10;
    LOBYTE(v19[9]) = *(v3 + 144);
    LOBYTE(v21[9]) = *(v3 + 144);
    v21[0] = v19[0];
    v21[1] = v13;
    sub_21541C938(v21);
    memcpy(v20, v21, 0x139uLL);
    sub_215324EEC(v19, __src, &qword_27CA5D638);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D668);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D638);
    sub_21541C70C();
    sub_21541C824();
  }

  sub_2154A039C();
  memcpy(v20, __src, 0x139uLL);
  memcpy(a3, __src, 0x139uLL);
  memcpy(v21, __src, 0x139uLL);
  sub_215324EEC(v20, v19, &qword_27CA5D640);
  return sub_2151ADCD8(v21, &qword_27CA5D640);
}

uint64_t sub_2153F342C@<X0>(char a1@<W0>, void (*a2)(void *__return_ptr, _BYTE *)@<X1>, void *a3@<X8>)
{
  memcpy(__dst, v3, 0x139uLL);
  if (a1)
  {
    a2(__src, __dst);
    memcpy(v8, __src, sizeof(v8));
    memcpy(v9, __src, 0x170uLL);
    sub_215324EEC(v8, v11, &qword_27CA5D648);
    sub_2151ADCD8(v9, &qword_27CA5D648);
    memcpy(v11, v8, 0x170uLL);
    sub_21541C930(v11);
    memcpy(v10, v11, 0x171uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D648);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D640);
    sub_21541C5F4();
    sub_21541C680();
  }

  else
  {
    memcpy(v9, v3, 0x139uLL);
    memcpy(v11, v3, 0x139uLL);
    sub_21541C5E8(v11);
    memcpy(v10, v11, 0x171uLL);
    sub_215324EEC(v9, __src, &qword_27CA5D640);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D648);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D640);
    sub_21541C5F4();
    sub_21541C680();
  }

  sub_2154A039C();
  memcpy(v10, __src, 0x171uLL);
  memcpy(a3, __src, 0x171uLL);
  memcpy(v11, __src, 0x171uLL);
  sub_215324EEC(v10, v9, &qword_27CA5D550);
  return sub_2151ADCD8(v11, &qword_27CA5D550);
}

id sub_2153F3674()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75FC0]) init];
  [v0 setUserInteractionEnabled_];
  return v0;
}

uint64_t sub_2153F36C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21541E240();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2153F3724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21541E240();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2153F3788()
{
  sub_21541E240();
  sub_2154A036C();
  __break(1u);
}

uint64_t sub_2153F37B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2154A00DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA00);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for RecordingView();
  sub_215324EEC(v1 + *(v10 + 32), v9, &unk_27CA5CA00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21549FB6C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2154A227C();
    v13 = sub_2154A068C();
    sub_21549F07C();

    sub_2154A00CC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2153F39B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2154A00DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for RecordingView();
  sub_215324EEC(v1 + *(v10 + 36), v9, &qword_27CA5B7C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21533FB7C(v9, a1, &qword_27CA5BDE8);
  }

  sub_2154A227C();
  v12 = sub_2154A068C();
  sub_21549F07C();

  sub_2154A00CC();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2153F3BA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2154A00DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA10);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for RecordingView();
  sub_215324EEC(v1 + *(v10 + 40), v9, &unk_27CA5CA10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21549FCFC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2154A227C();
    v13 = sub_2154A068C();
    sub_21549F07C();

    sub_2154A00CC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2153F3DA8()
{
  v1 = sub_2154A00DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for RecordingView() + 44);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2154A227C();
    v7 = sub_2154A068C();
    sub_21549F07C();

    sub_2154A00CC();
    swift_getAtKeyPath();
    sub_21537702C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_2153F3F00()
{
  v1 = sub_2154A00DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for RecordingView() + 48);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2154A227C();
    v7 = sub_2154A068C();
    sub_21549F07C();

    sub_2154A00CC();
    swift_getAtKeyPath();
    sub_21537702C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

unint64_t sub_2153F4068()
{
  result = qword_27CA5C910;
  if (!qword_27CA5C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C910);
  }

  return result;
}

uint64_t sub_2153F40D8()
{
  v0 = sub_2154A04CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE40);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BDE8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  sub_2153F39B8(&v23 - v14);
  (*(v1 + 104))(v12, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_215324EEC(v15, v6, &qword_27CA5BDE8);
  sub_215324EEC(v12, &v6[v16], &qword_27CA5BDE8);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_215324EEC(v6, v9, &qword_27CA5BDE8);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = &v6[v16];
      v20 = v24;
      (*(v1 + 32))(v24, v19, v0);
      sub_21541DC34(&qword_27CA5CF70, MEMORY[0x277CE0570]);
      v18 = sub_2154A1D1C();
      v21 = *(v1 + 8);
      v21(v20, v0);
      sub_2151ADCD8(v12, &qword_27CA5BDE8);
      sub_2151ADCD8(v15, &qword_27CA5BDE8);
      v21(v9, v0);
      sub_2151ADCD8(v6, &qword_27CA5BDE8);
      return v18 & 1;
    }

    sub_2151ADCD8(v12, &qword_27CA5BDE8);
    sub_2151ADCD8(v15, &qword_27CA5BDE8);
    (*(v1 + 8))(v9, v0);
    goto LABEL_6;
  }

  sub_2151ADCD8(v12, &qword_27CA5BDE8);
  sub_2151ADCD8(v15, &qword_27CA5BDE8);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_2151ADCD8(v6, &qword_27CA5BE40);
    v18 = 0;
    return v18 & 1;
  }

  sub_2151ADCD8(v6, &qword_27CA5BDE8);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_2153F4520()
{
  v1 = sub_21549E95C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  swift_getKeyPath();
  v11[3] = v5;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v6 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  v7 = (*(v2 + 88))(v4, v1);
  if (v7 == *MEMORY[0x277D359E8])
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  if (v7 == *MEMORY[0x277D359D8])
  {
    (*(v2 + 8))(v4, v1);
  }

  else if (v7 != *MEMORY[0x277D359D0] && v7 != *MEMORY[0x277D359E0])
  {
    (*(v2 + 8))(v4, v1);
    return 1;
  }

  swift_getKeyPath();
  v11[0] = v5;
  sub_21549ED9C();

  v10 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__canBePlayedBack;
  swift_beginAccess();
  return *(v5 + v10);
}

uint64_t sub_2153F4798@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for RecordingView();
  v61 = *(v3 - 8);
  v65 = *(v61 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_21549E95C();
  v54 = *(v60 - 8);
  v6 = v54;
  MEMORY[0x28223BE20](v60);
  v59 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C9A0);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C9A8);
  v12 = *(v11 - 8);
  v62 = v11;
  v63 = v12;
  MEMORY[0x28223BE20](v11);
  v58 = &v54 - v13;
  *v10 = sub_2154A025C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C9B0);
  sub_2153F5030(&v10[*(v14 + 44)]);
  v66 = a1;
  v15 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C9B8);
  v55 = sub_2151ACC5C(&qword_27CA5C9C0, &qword_27CA5C9A0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5C9C8);
  v17 = sub_215416848();
  v67 = v16;
  v68 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v8;
  sub_2154A0BEC();
  sub_2151ADCD8(v10, &qword_27CA5C9A0);
  v20 = *a1;
  v21 = v15;
  v57 = v15;
  swift_getKeyPath();
  v67 = v20;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v22 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  v24 = v59;
  v23 = v60;
  (*(v6 + 16))(v59, v20 + v22, v60);
  sub_21539B7B8(v21, v5);
  v25 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v26 = swift_allocObject();
  sub_21541C94C(v5, v26 + v25, type metadata accessor for RecordingView);
  v67 = v19;
  v68 = v56;
  v69 = v55;
  v70 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21541DC34(&qword_27CA5AE28, MEMORY[0x277D359F0]);
  v27 = v64;
  v28 = v62;
  v29 = v58;
  sub_2154A0C0C();

  (*(v54 + 8))(v24, v23);
  (v63)[1](v29, v28);
  v63 = objc_opt_self();
  v30 = [v63 defaultCenter];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA20);
  sub_2154A251C();

  v32 = v57;
  sub_21539B7B8(v57, v5);
  v33 = swift_allocObject();
  sub_21541C94C(v5, v33 + v25, type metadata accessor for RecordingView);
  v34 = (v27 + *(v31 + 56));
  *v34 = sub_2154169A8;
  v34[1] = v33;
  sub_21539B7B8(v32, v5);
  v35 = swift_allocObject();
  sub_21541C94C(v5, v35 + v25, type metadata accessor for RecordingView);
  v36 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA28) + 36));
  v37 = v27;
  *v36 = sub_2154169C0;
  v36[1] = v35;
  v36[2] = 0;
  v36[3] = 0;
  sub_21539B7B8(v32, v5);
  v38 = swift_allocObject();
  sub_21541C94C(v5, v38 + v25, type metadata accessor for RecordingView);
  v39 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA30) + 36));
  *v39 = 0;
  v39[1] = 0;
  v39[2] = sub_2154169D8;
  v39[3] = v38;
  v40 = [v63 defaultCenter];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C968);
  sub_2154A251C();

  sub_21539B7B8(v32, v5);
  v42 = swift_allocObject();
  sub_21541C94C(v5, v42 + v25, type metadata accessor for RecordingView);
  v43 = (v37 + *(v41 + 56));
  *v43 = sub_2154169F0;
  v43[1] = v42;
  sub_21539B7B8(v32, v5);
  v44 = swift_allocObject();
  sub_21541C94C(v5, v44 + v25, type metadata accessor for RecordingView);
  v45 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C958) + 36));
  sub_21549FBCC();
  sub_2154A200C();
  *v45 = &unk_2154C3208;
  v45[1] = v44;
  *(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C948) + 36)) = 0;
  v46 = sub_2154A0FAC();
  v48 = v47;
  v49 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C938) + 36);
  sub_2153FBFE4(v32, v49);
  v50 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C990) + 36));
  *v50 = v46;
  v50[1] = v48;
  v51 = sub_21549FDDC();
  LOBYTE(v25) = sub_2154A06DC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C920);
  v53 = v37 + *(result + 36);
  *v53 = v51;
  *(v53 + 8) = v25;
  return result;
}

uint64_t sub_2153F5030@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF78);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF88);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  *v18 = sub_2154A011C();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF90);
  sub_2153FC724(&v18[*(v19 + 44)]);
  v25 = v12;
  sub_2153F53BC(v12);
  sub_2153F65A4(v6);
  sub_21549FB1C();
  sub_21549FB2C();
  sub_21549FB3C();

  sub_2154A0FFC();
  v20 = sub_21549FB4C();

  *&v6[*(v2 + 44)] = v20;
  v26 = v15;
  sub_215324EEC(v18, v15, &qword_27CA5CF88);
  sub_215324EEC(v12, v9, &qword_27CA5CF80);
  v21 = v27;
  sub_215324EEC(v6, v27, &qword_27CA5CF78);
  v22 = v28;
  sub_215324EEC(v15, v28, &qword_27CA5CF88);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF98);
  sub_215324EEC(v9, v22 + *(v23 + 48), &qword_27CA5CF80);
  sub_215324EEC(v21, v22 + *(v23 + 64), &qword_27CA5CF78);
  sub_2151ADCD8(v6, &qword_27CA5CF78);
  sub_2151ADCD8(v25, &qword_27CA5CF80);
  sub_2151ADCD8(v18, &qword_27CA5CF88);
  sub_2151ADCD8(v21, &qword_27CA5CF78);
  sub_2151ADCD8(v9, &qword_27CA5CF80);
  return sub_2151ADCD8(v26, &qword_27CA5CF88);
}

uint64_t sub_2153F53BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v108 = a1;
  v3 = type metadata accessor for RecordingView();
  v4 = v3 - 8;
  v86 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v87 = v5;
  v88 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2154A053C();
  v91 = *(v6 - 8);
  v92 = v6;
  MEMORY[0x28223BE20](v6);
  v89 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v90 = &v82 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D3D0);
  MEMORY[0x28223BE20](v107);
  v93 = &v82 - v10;
  v85 = sub_21549E95C();
  v11 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D3D8);
  MEMORY[0x28223BE20](v102);
  v83 = &v82 - v13;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D3E0);
  MEMORY[0x28223BE20](v105);
  v106 = &v82 - v14;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D3E8);
  MEMORY[0x28223BE20](v99);
  v100 = &v82 - v15;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D3F0);
  MEMORY[0x28223BE20](v104);
  v101 = &v82 - v16;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D3F8);
  MEMORY[0x28223BE20](v94);
  v97 = &v82 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D400);
  MEMORY[0x28223BE20](v18);
  v20 = &v82 - v19;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D408);
  MEMORY[0x28223BE20](v95);
  v82 = &v82 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D410);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v82 - v23;
  v25 = sub_21549EB6C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D418);
  MEMORY[0x28223BE20](v98);
  v96 = &v82 - v29;
  v30 = v2 + *(v4 + 64);
  v31 = *v30;
  v32 = *(v30 + 1);
  LOBYTE(v114[0]) = v31;
  *(&v114[0] + 1) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0DEC();
  v103 = v2;
  v33 = *v2;
  if (LOBYTE(v113[0]) == 1)
  {
    swift_getKeyPath();
    *&v114[0] = v33;
    sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED9C();

    v34 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptionModelState;
    swift_beginAccess();
    sub_215324EEC(v33 + v34, v24, &qword_27CA5D410);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      sub_2151ADCD8(v24, &qword_27CA5D410);
    }

    else
    {
      (*(v26 + 32))(v28, v24, v25);
      if (!sub_215457AE8())
      {
        *v20 = sub_2154A025C();
        *(v20 + 1) = 0;
        v20[16] = 1;
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D558);
        sub_21541479C(v28, v103, &v20[*(v71 + 44)]);
        v72 = sub_2154A06DC();
        v73 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D440) + 36)];
        *v73 = v72;
        *(v73 + 8) = 0u;
        *(v73 + 24) = 0u;
        v73[40] = 1;
        KeyPath = swift_getKeyPath();
        v75 = &v20[*(v18 + 36)];
        *v75 = KeyPath;
        v75[8] = 1;
        sub_2154A0FAC();
        sub_21549FE4C();
        v76 = v82;
        sub_21533FB7C(v20, v82, &qword_27CA5D400);
        v77 = (v76 + *(v95 + 36));
        v78 = v114[5];
        v77[4] = v114[4];
        v77[5] = v78;
        v77[6] = v114[6];
        v79 = v114[1];
        *v77 = v114[0];
        v77[1] = v79;
        v80 = v114[3];
        v77[2] = v114[2];
        v77[3] = v80;
        sub_215324EEC(v76, v97, &qword_27CA5D408);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D470);
        sub_21541B3D0();
        sub_21541B5CC();
        v40 = v96;
        sub_2154A039C();
        sub_2151ADCD8(v76, &qword_27CA5D408);
        (*(v26 + 8))(v28, v25);
LABEL_18:
        v65 = &qword_27CA5D418;
        sub_215324EEC(v40, v100, &qword_27CA5D418);
        swift_storeEnumTagMultiPayload();
        sub_21541B344();
        sub_21541B6B0();
        v81 = v101;
        sub_2154A039C();
        sub_215324EEC(v81, v106, &qword_27CA5D3F0);
        swift_storeEnumTagMultiPayload();
        sub_21541B8AC();
        sub_21541B938();
        sub_2154A039C();
        sub_2151ADCD8(v81, &qword_27CA5D3F0);
        v66 = v40;
        return sub_2151ADCD8(v66, v65);
      }

      (*(v26 + 8))(v28, v25);
    }

    v38 = v103;
    v39 = sub_2153F40D8();
    v40 = v96;
    if (v39)
    {
      v41 = sub_2154A0FAC();
      v43 = v42;
      sub_215411E94(v38, v114);
      memcpy(v111, v114, 0x171uLL);
      memcpy(v112, v114, 0x171uLL);
      sub_215324EEC(v111, v113, &qword_27CA5D550);
      sub_2151ADCD8(v112, &qword_27CA5D550);
      memcpy(&v113[2], v111, 0x171uLL);
      v113[0] = v41;
      v113[1] = v43;
      sub_21541BF50(v113);
    }

    else
    {
      v67 = sub_2154A011C();
      LOBYTE(v109[0]) = 1;
      sub_2154126C8(v38, v114);
      memcpy(v111, v114, 0x1A1uLL);
      memcpy(v112, v114, 0x1A1uLL);
      sub_215324EEC(v111, v113, &qword_27CA5D548);
      sub_2151ADCD8(v112, &qword_27CA5D548);
      memcpy(&v110[7], v111, 0x1A1uLL);
      v113[0] = v67;
      v113[1] = 0;
      LOBYTE(v113[2]) = v109[0];
      memcpy(&v113[2] + 1, v110, 0x1A8uLL);
      sub_21541BF44(v113);
    }

    memcpy(v109, v113, 0x1BAuLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D490);
    sub_2151ACC5C(&qword_27CA5D478, &qword_27CA5D480);
    sub_2151ACC5C(&qword_27CA5D488, &qword_27CA5D490);
    sub_2154A039C();
    memcpy(v97, v114, 0x1BAuLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D470);
    sub_21541B3D0();
    sub_21541B5CC();
    sub_2154A039C();
    goto LABEL_18;
  }

  swift_getKeyPath();
  *&v114[0] = v33;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v35 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__microphoneState;
  if (*(v33 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__microphoneState) == 1)
  {
    swift_getKeyPath();
    *&v114[0] = v33;
    sub_21549ED9C();

    v36 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__canBePlayedBack;
    swift_beginAccess();
    if ((*(v33 + v36) & 1) == 0)
    {
      swift_getKeyPath();
      v113[0] = v33;
      sub_21549ED9C();

      LOBYTE(v113[0]) = *(v33 + v35);
      v68 = v83;
      sub_215412828(v113, v83);
      sub_215324EEC(v68, v100, &qword_27CA5D3D8);
      swift_storeEnumTagMultiPayload();
      sub_21541B344();
      sub_21541B6B0();
      v69 = v101;
      sub_2154A039C();
      sub_215324EEC(v69, v106, &qword_27CA5D3F0);
      swift_storeEnumTagMultiPayload();
      sub_21541B8AC();
      sub_21541B938();
      sub_2154A039C();
      sub_2151ADCD8(v69, &qword_27CA5D3F0);
      return sub_2151ADCD8(v68, &qword_27CA5D3D8);
    }
  }

  swift_getKeyPath();
  v113[0] = v33;
  sub_21549ED9C();

  v37 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isPlaying;
  swift_beginAccess();
  if ((*(v33 + v37) & 1) == 0)
  {
    swift_getKeyPath();
    v109[0] = v33;
    sub_21549ED9C();

    v44 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
    swift_beginAccess();
    v45 = v33 + v44;
    v47 = v84;
    v46 = v85;
    (*(v11 + 16))(v84, v45, v85);
    (*(v11 + 88))(v47, v46);
    (*(v11 + 8))(v47, v46);
  }

  v48 = v103;
  sub_2153FAC34();
  v50 = v49;
  v51 = v90;
  sub_2154A052C();
  v52 = v88;
  sub_21539B7B8(v48, v88);
  v53 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v54 = (v87 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  sub_21541C94C(v52, v55 + v53, type metadata accessor for RecordingView);
  *(v55 + v54) = v50;
  v57 = v91;
  v56 = v92;
  (*(v91 + 16))(v89, v51, v92);
  v58 = swift_allocObject();
  *(v58 + 16) = sub_21541BE6C;
  *(v58 + 24) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D4F8);
  sub_21541DC34(&qword_27CA5D3A0, MEMORY[0x277CDE300]);
  sub_21541BA74();
  v59 = v93;
  sub_21549FABC();
  (*(v57 + 8))(v51, v56);
  v60 = swift_getKeyPath();
  v61 = (v59 + *(v107 + 36));
  v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D0E0) + 28);
  v63 = *MEMORY[0x277CDFA88];
  v64 = sub_21549FD5C();
  (*(*(v64 - 8) + 104))(v61 + v62, v63, v64);
  *v61 = v60;
  v65 = &qword_27CA5D3D0;
  sub_215324EEC(v59, v106, &qword_27CA5D3D0);
  swift_storeEnumTagMultiPayload();
  sub_21541B8AC();
  sub_21541B938();
  sub_2154A039C();
  v66 = v59;
  return sub_2151ADCD8(v66, v65);
}

uint64_t sub_2153F65A4@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = sub_2154A05DC();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecordingView();
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFA0);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFA8);
  MEMORY[0x28223BE20](v46);
  v11 = &v42 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFB0);
  MEMORY[0x28223BE20](v47);
  v50 = &v42 - v12;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFB8);
  MEMORY[0x28223BE20](v55);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v52 = &v42 - v16;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFC0);
  MEMORY[0x28223BE20](v53);
  v18 = &v42 - v17;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFC8);
  MEMORY[0x28223BE20](v54);
  v20 = &v42 - v19;
  v51 = v5;
  v21 = v1 + *(v5 + 64);
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v58) = v22;
  *(&v58 + 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFD0);
  sub_2154A0DEC();
  if (v57)
  {
    sub_21539B7B8(v1, &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v25 = swift_allocObject();
    sub_21541C94C(&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for RecordingView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFD8);
    sub_2151ACC5C(&qword_27CA5CFE0, &qword_27CA5CFD8);
    sub_2154A0E3C();
    sub_2154A05CC();
    sub_2151ACC5C(&qword_27CA5CFE8, &qword_27CA5CFA0);
    sub_21541DC34(&qword_27CA5CFF0, MEMORY[0x277CDE400]);
    v26 = v45;
    v27 = v49;
    sub_2154A09DC();
    (*(v48 + 8))(v4, v27);
    (*(v44 + 8))(v9, v26);
    v28 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFF8) + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B8E8);
    sub_21549FE7C();
    *v28 = swift_getKeyPath();
    v29 = sub_2154A0CAC();
    KeyPath = swift_getKeyPath();
    v31 = &v11[*(v46 + 36)];
    *v31 = KeyPath;
    v31[1] = v29;
    v32 = v1 + *(v51 + 244);
    v33 = *v32;
    v34 = *(v32 + 1);
    LOBYTE(v58) = v33;
    *(&v58 + 1) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
    sub_2154A0DEC();
    if (v57)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = 1.0;
    }

    v36 = v50;
    sub_21533FB7C(v11, v50, &qword_27CA5CFA8);
    *(v36 + *(v47 + 36)) = v35;
    sub_2154A06FC();
    v58 = 0u;
    v59 = 0u;
    v60 = 1;
    sub_2154A04FC();
    sub_21533FB7C(v36, v14, &qword_27CA5CFB0);
    v37 = &qword_27CA5CFB8;
    v38 = v52;
    sub_21533FB7C(v14, v52, &qword_27CA5CFB8);
    sub_215324EEC(v38, v18, &qword_27CA5CFB8);
    swift_storeEnumTagMultiPayload();
    sub_2151ACC5C(&qword_27CA5D000, &qword_27CA5CFC8);
    sub_21541960C();
    sub_2154A039C();
    v39 = v38;
  }

  else
  {
    *v20 = sub_2154A025C();
    *(v20 + 1) = 0;
    v20[16] = 0;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D040);
    sub_2154006F0(v1, &v20[*(v40 + 44)]);
    v37 = &qword_27CA5CFC8;
    sub_215324EEC(v20, v18, &qword_27CA5CFC8);
    swift_storeEnumTagMultiPayload();
    sub_2151ACC5C(&qword_27CA5D000, &qword_27CA5CFC8);
    sub_21541960C();
    sub_2154A039C();
    v39 = v20;
  }

  return sub_2151ADCD8(v39, v37);
}

uint64_t sub_2153F6DBC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA80);
  MEMORY[0x28223BE20](v75);
  v73 = &v59 - v3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C9F0);
  v4 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v76 = &v59 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA88);
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v64 = &v59 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA90);
  v62 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v8 = &v59 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA98);
  MEMORY[0x28223BE20](v69);
  v10 = &v59 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C9E0);
  v72 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v70 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CAA0);
  v67 = *(v12 - 8);
  v68 = v12;
  MEMORY[0x28223BE20](v12);
  v65 = &v59 - v13;
  v14 = sub_21549FAAC();
  MEMORY[0x28223BE20](v14 - 8);
  v78 = sub_21549FBAC();
  v63 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2154A040C();
  MEMORY[0x28223BE20](v17 - 8);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CAA8);
  v61 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v19 = &v59 - v18;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C9C8);
  MEMORY[0x28223BE20](v80);
  v79 = &v59 - v20;
  if (sub_2153F40D8())
  {
    v21 = sub_2154A03BC();
    MEMORY[0x28223BE20](v21);
    v78 = v4;
    *(&v59 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CC30);
    sub_215417D84();
    sub_21549FA4C();
    v22 = sub_2154A03CC();
    MEMORY[0x28223BE20](v22);
    *(&v59 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CC50);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CC58);
    v24 = sub_215417F7C();
    v84 = v23;
    v85 = v24;
    swift_getOpaqueTypeConformance2();
    v25 = v64;
    sub_21549FA4C();
    v26 = *(v75 + 48);
    v27 = v62;
    v28 = v73;
    v29 = v66;
    (*(v62 + 16))(v73, v8, v66);
    v30 = v71;
    v31 = v74;
    (*(v71 + 16))(&v28[v26], v25, v74);
    v32 = v76;
    sub_2154A029C();
    v33 = sub_2151ACC5C(&qword_27CA5C9D8, &qword_27CA5C9E0);
    v34 = sub_2151ACC5C(&qword_27CA5C9E8, &qword_27CA5C9F0);
    v35 = v79;
    v36 = v82;
    MEMORY[0x216067010](v32, v81, v82, v33, v34);
    (*(v78 + 8))(v32, v36);
    (*(v30 + 8))(v25, v31);
    (*(v27 + 8))(v8, v29);
  }

  else
  {
    v37 = sub_2154A03CC();
    MEMORY[0x28223BE20](v37);
    *(&v59 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CAB0);
    sub_2154171F4();
    v38 = v19;
    v59 = v19;
    sub_21549FA4C();
    sub_21549FA9C();
    sub_2154A03CC();
    v60 = v16;
    sub_21549FBBC();
    v39 = sub_2154A03CC();
    v76 = &v59;
    MEMORY[0x28223BE20](v39);
    *(&v59 - 2) = a1;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CB58);
    v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CB60);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CB68);
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BE90);
    v43 = sub_21541776C();
    v44 = sub_2151ACC5C(&qword_27CA5CB50, &qword_27CA5BE90);
    v84 = v41;
    v85 = v42;
    v86 = v43;
    v87 = v44;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v84 = v40;
    v85 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v46 = v65;
    sub_21549FA4C();
    v47 = *(v69 + 48);
    v48 = *(v69 + 64);
    v49 = v61;
    (*(v61 + 16))(v10, v38, v77);
    v50 = v63;
    (*(v63 + 16))(&v10[v47], v60, v78);
    v52 = v67;
    v51 = v68;
    (*(v67 + 16))(&v10[v48], v46, v68);
    v53 = v70;
    sub_2154A029C();
    v54 = sub_2151ACC5C(&qword_27CA5C9D8, &qword_27CA5C9E0);
    v55 = sub_2151ACC5C(&qword_27CA5C9E8, &qword_27CA5C9F0);
    v35 = v79;
    v56 = v81;
    MEMORY[0x216067000](v53, v81, v82, v54, v55);
    (*(v72 + 8))(v53, v56);
    (*(v52 + 8))(v46, v51);
    (*(v50 + 8))(v60, v78);
    (*(v49 + 8))(v59, v77);
  }

  v57 = sub_215416848();
  MEMORY[0x216066FF0](v35, v80, v57);
  return sub_2151ADCD8(v35, &qword_27CA5C9C8);
}

uint64_t sub_2153F7970@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE88);
  MEMORY[0x28223BE20](v42);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = sub_21549FCFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE90);
  MEMORY[0x28223BE20](v41);
  v40 = &v38 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CAC0);
  MEMORY[0x28223BE20](v44);
  v45 = &v38 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF40);
  v46 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v39 = &v38 - v17;
  v18 = *a1;
  swift_getKeyPath();
  *&v48 = v18;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v19 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__showTranscriptToggle;
  swift_beginAccess();
  if (*(v18 + v19) != 1)
  {
    v37 = 1;
    v36 = v46;
    v35 = v47;
    return (*(v36 + 56))(v35, v37, 1, v16);
  }

  v20 = v45;
  sub_2153F7F6C(v45);
  type metadata accessor for RecordingView();
  sub_2154A0FAC();
  sub_21549FAFC();
  v21 = (v20 + *(v44 + 36));
  v22 = v49;
  *v21 = v48;
  v21[1] = v22;
  v21[2] = v50;
  v23 = v9[13];
  v23(v13, *MEMORY[0x277CDF9E8], v8);
  v24 = v43;
  v23(v43, *MEMORY[0x277CDFA10], v8);
  sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28]);
  result = sub_2154A1CDC();
  if (result)
  {
    v26 = v9[4];
    v27 = v8;
    v26(v7, v13, v8);
    v38 = v16;
    v28 = v42;
    v26(&v7[*(v42 + 48)], v24, v8);
    sub_215324EEC(v7, v4, &qword_27CA5BE88);
    v29 = *(v28 + 48);
    v30 = v40;
    v26(v40, v4, v27);
    v31 = v9[1];
    v31(&v4[v29], v27);
    sub_21533FB7C(v7, v4, &qword_27CA5BE88);
    v32 = *(v28 + 48);
    v16 = v38;
    v26((v30 + *(v41 + 36)), &v4[v32], v27);
    v31(v4, v27);
    sub_215417314();
    sub_2151ACC5C(&qword_27CA5CB50, &qword_27CA5BE90);
    v33 = v39;
    v34 = v45;
    sub_2154A0A5C();
    sub_2151ADCD8(v30, &qword_27CA5BE90);
    sub_2151ADCD8(v34, &unk_27CA5CAC0);
    v36 = v46;
    v35 = v47;
    (*(v46 + 32))(v47, v33, v16);
    v37 = 0;
    return (*(v36 + 56))(v35, v37, 1, v16);
  }

  __break(1u);
  return result;
}

uint64_t sub_2153F7F6C@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = sub_2154A055C();
  v3 = *(v2 - 8);
  v58 = v2;
  v59 = v3;
  MEMORY[0x28223BE20](v2);
  v57 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecordingView();
  v55 = *(v5 - 8);
  v54 = *(v55 + 64);
  v6 = v5 - 8;
  v56 = v5 - 8;
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2154A014C();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CB18);
  v10 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v12 = &v47 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CAF8);
  MEMORY[0x28223BE20](v52);
  v14 = &v47 - v13;
  v15 = *(v6 + 64);
  v48 = v1;
  v16 = (v1 + v15);
  v17 = *v16;
  v18 = *(v16 + 1);
  v62 = v17;
  v63 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0E0C();
  v61 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF48);
  sub_2151ACC5C(&qword_27CA5CF50, &qword_27CA5CF48);
  sub_2154A0E8C();
  sub_2154A013C();
  sub_2151ACC5C(&unk_27CA5CB20, &qword_27CA5CB18);
  sub_21541DC34(&qword_27CA5B608, MEMORY[0x277CDDE78]);
  v19 = v49;
  v20 = v50;
  sub_2154A09CC();
  (*(v51 + 8))(v9, v20);
  (*(v10 + 8))(v12, v19);
  v21 = v53;
  sub_21539B7B8(v48, v53);
  v22 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v23 = swift_allocObject();
  sub_21541C94C(v21, v23 + v22, type metadata accessor for RecordingView);
  v24 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CB10) + 36)];
  *v24 = sub_21541E304;
  *(v24 + 1) = v23;
  v14[*(v52 + 36)] = 0;
  v25 = v57;
  sub_2154A054C();
  sub_215417544();
  sub_21541DC34(&qword_27CA5B8E0, MEMORY[0x277CDE340]);
  v26 = v60;
  v27 = v58;
  sub_2154A09DC();
  (*(v59 + 8))(v25, v27);
  sub_2151ADCD8(v14, &qword_27CA5CAF8);
  LOBYTE(v23) = sub_2154A06CC();
  sub_21549F99C();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CAF0) + 36);
  *v36 = v23;
  *(v36 + 8) = v29;
  *(v36 + 16) = v31;
  *(v36 + 24) = v33;
  *(v36 + 32) = v35;
  *(v36 + 40) = 0;
  LOBYTE(v23) = sub_2154A073C();
  sub_21549F99C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CAE0);
  v46 = v26 + *(result + 36);
  *v46 = v23;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  return result;
}

uint64_t sub_2153F85B0@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE88);
  MEMORY[0x28223BE20](v80);
  v79 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v77 = &v72 - v4;
  v93 = sub_21549FCFC();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v94 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v91 = &v72 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE90);
  MEMORY[0x28223BE20](v78);
  v76 = &v72 - v8;
  v89 = sub_21549FDFC();
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2154A014C();
  v86 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CBB8);
  v84 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v13 = &v72 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CBA8);
  MEMORY[0x28223BE20](v82);
  v15 = &v72 - v14;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CB78);
  MEMORY[0x28223BE20](v99);
  v97 = &v72 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CB68);
  MEMORY[0x28223BE20](v96);
  v95 = &v72 - v17;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CB60);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v72 - v18;
  v98 = v1;
  v103 = v1;
  v102 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CDE8);
  sub_2151ACC5C(&qword_27CA5CDF0, &qword_27CA5CDE0);
  v88 = MEMORY[0x277CE14C0];
  sub_2151ACC5C(&qword_27CA5CDF8, &qword_27CA5CDE8);
  sub_2154A087C();
  sub_2154A013C();
  sub_2151ACC5C(&qword_27CA5CBC0, &qword_27CA5CBB8);
  sub_21541DC34(&qword_27CA5B608, MEMORY[0x277CDDE78]);
  v19 = v83;
  v20 = v85;
  sub_2154A09CC();
  (*(v86 + 8))(v11, v20);
  (*(v84 + 8))(v13, v19);
  *&v15[*(v82 + 36)] = sub_2154A049C();
  v21 = v87;
  sub_21549FDEC();
  sub_215417AFC();
  sub_21541DC34(&qword_27CA5CBD8, MEMORY[0x277CDDA98]);
  v22 = v97;
  v23 = v89;
  sub_2154A09DC();
  (*(v90 + 8))(v21, v23);
  sub_2151ADCD8(v15, &qword_27CA5CBA8);
  v24 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CBA0) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B8E8);
  sub_21549FE6C();
  *v24 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v26 = &v22[*(v99 + 36)];
  *v26 = KeyPath;
  v26[8] = 2;
  v27 = [objc_opt_self() mainBundle];
  v28 = sub_2154A1D2C();
  v29 = [v27 localizedStringForKey:v28 value:0 table:0];

  v30 = sub_2154A1D6C();
  v32 = v31;

  v110 = v30;
  v111 = v32;
  v90 = type metadata accessor for RecordingView();
  v33 = v98;
  v34 = (v98 + *(v90 + 68));
  v35 = *v34;
  v36 = *(v34 + 1);
  v108 = v35;
  v109 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0E0C();
  v101 = v33;
  v100 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CB80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CB88);
  sub_215417900();
  sub_215324954();
  sub_2151ACC5C(&qword_27CA5CC00, &qword_27CA5CB80);
  sub_215417C74();
  v37 = v92;
  v38 = v93;
  v39 = v91;
  v40 = v95;
  v41 = v97;
  sub_2154A0BBC();

  sub_2151ADCD8(v41, &qword_27CA5CB78);
  v42 = (v98 + *(v90 + 228));
  v44 = *v42;
  v43 = v42[1];
  v104 = v44;
  v105 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE00);
  sub_2154A0DEC();
  v45 = &v40[*(v96 + 36)];
  sub_21549F49C();
  v46 = sub_2154A0FAC();
  v48 = v47;
  v49 = &v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC90) + 36)];
  *v49 = v46;
  v49[1] = v48;
  v50 = v37;
  v51 = v37;
  v52 = v94;
  v53 = *(v51 + 104);
  v53(v39, *MEMORY[0x277CDF9E8], v38);
  v53(v52, *MEMORY[0x277CDF9A8], v38);
  sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28]);
  v54 = v38;
  result = sub_2154A1CDC();
  if (result)
  {
    v56 = *(v50 + 32);
    v57 = v77;
    v58 = v38;
    v56(v77, v39, v38);
    v59 = v80;
    v56((v57 + *(v80 + 48)), v52, v54);
    v60 = v79;
    sub_215324EEC(v57, v79, &qword_27CA5BE88);
    v61 = *(v59 + 48);
    v62 = v76;
    v56(v76, v60, v58);
    v63 = *(v50 + 8);
    v63(v60 + v61, v58);
    sub_21533FB7C(v57, v60, &qword_27CA5BE88);
    v64 = *(v59 + 48);
    v65 = v78;
    v56((v62 + *(v78 + 36)), (v60 + v64), v58);
    v63(v60, v58);
    v66 = sub_21541776C();
    v67 = sub_2151ACC5C(&qword_27CA5CB50, &qword_27CA5BE90);
    v68 = v73;
    v69 = v96;
    v70 = v95;
    sub_2154A0A5C();
    sub_2151ADCD8(v62, &qword_27CA5BE90);
    sub_2151ADCD8(v70, &qword_27CA5CB68);
    v104 = v69;
    v105 = v65;
    v106 = v66;
    v107 = v67;
    swift_getOpaqueTypeConformance2();
    v71 = v75;
    sub_2154A0B7C();
    return (*(v74 + 8))(v68, v71);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2153F934C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CC48);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-v6];
  v8 = sub_21549FCFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v20[-v13];
  if ((sub_2153F40D8() & 1) != 0 && (sub_2153F3BA0(v14), (*(v9 + 104))(v11, *MEMORY[0x277CDF988], v8), sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28]), v21 = sub_2154A1CCC(), v15 = *(v9 + 8), v15(v11, v8), v15(v14, v8), (v21 & 1) == 0))
  {
    v18 = 1;
  }

  else
  {
    sub_2153F85B0(v7);
    v16 = *(a1 + *(type metadata accessor for RecordingView() + 92));
    v17 = &v7[*(v4 + 36)];
    *v17 = 0;
    v17[1] = v16;
    sub_21533FB7C(v7, a2, &qword_27CA5CC48);
    v18 = 0;
  }

  return (*(v5 + 56))(a2, v18, 1, v4);
}

uint64_t sub_2153F9604()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CC58);
  MEMORY[0x28223BE20](v0);
  v2 = &v8 - v1;
  sub_21540999C();
  v3 = sub_2154A0CDC();
  *&v2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CC70) + 36)] = v3;
  v4 = sub_2154A083C();
  KeyPath = swift_getKeyPath();
  v6 = &v2[*(v0 + 36)];
  *v6 = KeyPath;
  v6[1] = v4;
  sub_2154A07CC();
  sub_215417F7C();
  sub_2154A09BC();
  return sub_2151ADCD8(v2, &qword_27CA5CC58);
}

uint64_t sub_2153F9720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RecordingView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA70);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  v15 = sub_21549E95C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a2, v15, v17);
  if ((*(v16 + 88))(v19, v15) != *MEMORY[0x277D359D8])
  {
    return (*(v16 + 8))(v19, v15);
  }

  (*(v16 + 96))(v19, v15);
  v20 = swift_projectBox();
  sub_215324EEC(v20, v14, &unk_27CA5EA70);
  (*(v16 + 8))(v14, v15);

  v21 = sub_2154A202C();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  sub_21539B7B8(a3, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2154A1FFC();
  v22 = sub_2154A1FEC();
  v23 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 16) = v22;
  *(v24 + 24) = v25;
  sub_21541C94C(v8, v24 + v23, type metadata accessor for RecordingView);
  sub_2152F4D50(0, 0, v11, &unk_2154C33A0, v24);
}

uint64_t sub_2153F9A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v4[14] = sub_2154A1FFC();
  v4[15] = sub_2154A1FEC();
  v5 = swift_task_alloc();
  v4[16] = v5;
  *v5 = v4;
  v5[1] = sub_2153F9B40;

  return sub_2153F9EB8();
}

uint64_t sub_2153F9B40()
{

  v1 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_2153F9C7C, v1, v0);
}

uint64_t sub_2153F9C7C()
{
  v1 = *(v0 + 104);

  v2 = type metadata accessor for RecordingView();
  v3 = (v1 + v2[63]);
  v4 = *v3;
  v5 = v3[1];
  *(v0 + 88) = 0x3FF0000000000000;
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA78);
  sub_2154A0DFC();
  v6 = *v1;
  v7 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__needsSeekToTime;
  swift_beginAccess();
  if (*(v6 + v7) == 1)
  {
    *(v6 + v7) = 1;
  }

  else
  {
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = 1;
    *(v0 + 96) = v6;
    sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }

  v9 = *(v0 + 104);
  v10 = (v9 + v2[64]);
  v11 = *v10;
  v12 = *(v10 + 1);
  *(v0 + 56) = v11;
  *(v0 + 64) = v12;
  *(v0 + 136) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0DFC();
  v13 = (v9 + v2[65]);
  v14 = *v13;
  v15 = *(v13 + 1);
  *(v0 + 72) = v14;
  *(v0 + 80) = v15;
  *(v0 + 137) = 0;
  sub_2154A0DFC();
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2153F9EB8()
{
  v1[5] = v0;
  sub_2154A1FFC();
  v1[6] = sub_2154A1FEC();
  v3 = sub_2154A1FCC();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_2153F9F50, v3, v2);
}

uint64_t sub_2153F9F50()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_2153F9FE4;

  return sub_215460864();
}

uint64_t sub_2153F9FE4(double a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = *(v4 + 56);
    v6 = *(v4 + 64);
    v7 = sub_2153FA1C0;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = *(v4 + 56);
    v6 = *(v4 + 64);
    v7 = sub_2153FA108;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2153FA108()
{
  v1 = v0[11];
  v2 = v0[5];

  v3 = (v2 + *(type metadata accessor for RecordingView() + 52));
  v4 = *v3;
  v5 = v3[1];
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA68);
  sub_2154A0DFC();
  v6 = v0[1];

  return v6();
}

uint64_t sub_2153FA1C0()
{

  if (qword_27CA598D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_21549F11C();
  __swift_project_value_buffer(v2, qword_27CA5C850);
  v3 = v1;
  v4 = sub_21549F0FC();
  v5 = sub_2154A226C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2151A1000, v4, v5, "Failed to load asset duration: %@", v8, 0xCu);
    sub_2151ADCD8(v9, &unk_27CA59E90);
    MEMORY[0x21606B520](v9, -1, -1);
    MEMORY[0x21606B520](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

void sub_2153FA36C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for RecordingView();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v5 - 8);
  v27 = &v25 - v6;
  v7 = sub_21549E95C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  swift_getKeyPath();
  v30 = v11;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v12 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v8 + 16))(v10, v11 + v12, v7);
  LODWORD(v12) = (*(v8 + 88))(v10, v7);
  v13 = *MEMORY[0x277D359D0];
  (*(v8 + 8))(v10, v7);
  if (v12 == v13)
  {
    swift_getKeyPath();
    v29 = v11;
    sub_21549ED9C();

    v14 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isPlaying;
    swift_beginAccess();
    if ((*(v11 + v14) & 1) == 0)
    {
      sub_2153FA748();
      v16 = v15;
      sub_2153FAC34();
      if (v16 == v17)
      {
        v18 = sub_2154A202C();
        v19 = v27;
        (*(*(v18 - 8) + 56))(v27, 1, 1, v18);
        v20 = v28;
        sub_21539B7B8(a2, v28);
        sub_2154A1FFC();
        v21 = sub_2154A1FEC();
        v22 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v23 = swift_allocObject();
        v24 = MEMORY[0x277D85700];
        *(v23 + 16) = v21;
        *(v23 + 24) = v24;
        sub_21541C94C(v20, v23 + v22, type metadata accessor for RecordingView);
        sub_2152F4D50(0, 0, v19, &unk_2154C3388, v23);
      }
    }
  }
}

void sub_2153FA748()
{
  v1 = v0;
  v2 = sub_21549E95C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecordingView();
  v7 = v0 + v6[65];
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v30) = v8;
  v31 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0DEC();
  if (v28 == 1)
  {
    sub_2153FAC34();
    return;
  }

  v10 = *v0;
  swift_getKeyPath();
  v30 = v10;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v11 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v3 + 16))(v5, v10 + v11, v2);
  LODWORD(v11) = (*(v3 + 88))(v5, v2);
  v12 = *MEMORY[0x277D359E8];
  (*(v3 + 8))(v5, v2);
  if (v11 == v12)
  {
    v13 = (v1 + v6[13]);
    v14 = *v13;
    v15 = v13[1];
    v28 = v14;
    v29 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA68);
    sub_2154A0DEC();
    swift_getKeyPath();
    v28 = v10;
    sub_21549ED9C();

    swift_beginAccess();
    swift_getKeyPath();
    v26 = v10;
    sub_21549ED9C();

    v16 = *(v10 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager);
    sub_21549F6EC();

    return;
  }

  swift_getKeyPath();
  v28 = v10;
  sub_21549ED9C();

  v17 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__needsSeekToTime;
  swift_beginAccess();
  if (*(v10 + v17) == 1)
  {
    sub_2153FAC34();
    v18 = (v1 + v6[63]);
    v19 = *v18;
    v20 = v18[1];
    v26 = v19;
    v27 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA78);
    sub_2154A0DEC();
    return;
  }

  swift_getKeyPath();
  v26 = v10;
  sub_21549ED9C();

  v21 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isPlaying;
  swift_beginAccess();
  if (*(v10 + v21) != 1)
  {
LABEL_12:
    swift_getKeyPath();
    v25 = v10;
    sub_21549ED9C();

    swift_beginAccess();
    return;
  }

  v22 = [objc_opt_self() sharedAudioController];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 currentPlayer];

    if (v24)
    {
      [v24 currentTime];

      if (sub_2154A288C())
      {
        sub_2154A287C();
        return;
      }
    }

    goto LABEL_12;
  }

  __break(1u);
}

void sub_2153FAC34()
{
  v1 = v0;
  v2 = sub_21549E95C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecordingView();
  v7 = v0 + *(v6 + 260);
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v24) = v8;
  v25 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0DEC();
  if (v21 == 1)
  {
    v10 = (v0 + *(v6 + 52));
    v11 = *v10;
    v12 = v10[1];
    v24 = v11;
    v25 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA68);
    sub_2154A0DEC();
  }

  else
  {
    v13 = *v0;
    swift_getKeyPath();
    v24 = v13;
    sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED9C();

    v14 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
    swift_beginAccess();
    (*(v3 + 16))(v5, v13 + v14, v2);
    LODWORD(v14) = (*(v3 + 88))(v5, v2);
    v15 = *MEMORY[0x277D359E8];
    (*(v3 + 8))(v5, v2);
    v16 = (v1 + *(v6 + 52));
    v17 = *v16;
    v18 = v16[1];
    v21 = v17;
    v22 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA68);
    sub_2154A0DEC();
    if (v14 == v15)
    {
      swift_getKeyPath();
      v21 = v13;
      sub_21549ED9C();

      swift_beginAccess();
      swift_getKeyPath();
      v23 = v13;
      sub_21549ED9C();

      v19 = *(v13 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager);
      sub_21549F71C();
    }
  }
}

uint64_t sub_2153FAF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v4[12] = sub_2154A1FFC();
  v4[13] = sub_2154A1FEC();
  v5 = swift_task_alloc();
  v4[14] = v5;
  *v5 = v4;
  v5[1] = sub_2153FB048;

  return sub_2153F9EB8();
}

uint64_t sub_2153FB048()
{

  v1 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_2153FB184, v1, v0);
}

uint64_t sub_2153FB184()
{
  v1 = *(v0 + 88);

  v2 = type metadata accessor for RecordingView();
  v3 = (v1 + *(v2 + 252));
  v4 = *v3;
  v5 = v3[1];
  *(v0 + 72) = 0x3FF0000000000000;
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA78);
  sub_2154A0DFC();
  v6 = *v1;
  v7 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__needsSeekToTime;
  swift_beginAccess();
  if (*(v6 + v7) == 1)
  {
    *(v6 + v7) = 1;
  }

  else
  {
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = 1;
    *(v0 + 80) = v6;
    sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }

  v9 = (*(v0 + 88) + *(v2 + 256));
  v10 = *v9;
  v11 = *(v9 + 1);
  *(v0 + 56) = v10;
  *(v0 + 64) = v11;
  *(v0 + 120) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0DFC();
  v12 = *(v0 + 8);

  return v12();
}

id sub_2153FB390(uint64_t *a1)
{
  v2 = sub_21549E95C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_getKeyPath();
  v12[1] = v6;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v7 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v3 + 16))(v5, v6 + v7, v2);
  LODWORD(v7) = (*(v3 + 88))(v5, v2);
  v8 = *MEMORY[0x277D359D0];
  (*(v3 + 8))(v5, v2);
  if (v7 != v8)
  {
    return sub_2153FB5C0();
  }

  result = [objc_opt_self() sharedAudioController];
  if (result)
  {
    v10 = result;
    result = [*(v6 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
    if (result)
    {
      v11 = result;
      [v10 prepareToPlayAttachment_];

      return sub_2153FB5C0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2153FB5C0()
{
  v1 = sub_21549E95C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v17[-v6];
  v8 = *v0;
  swift_getKeyPath();
  v20 = v8;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v9 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  v10 = *(v2 + 16);
  v10(v7, v8 + v9, v1);
  v10(v4, v7, v1);
  v11 = (*(v2 + 88))(v4, v1);
  if (v11 == *MEMORY[0x277D359E8])
  {
    (*(v2 + 8))(v4, v1);

    sub_21549F33C();

    v12 = v19;
    v13 = 1;
LABEL_5:
    v18 = v13;
    goto LABEL_12;
  }

  if (v11 == *MEMORY[0x277D359D8])
  {
    (*(v2 + 8))(v4, v1);

    sub_21549F33C();

    v12 = v19;
    v13 = 2;
    goto LABEL_5;
  }

  if (v11 != *MEMORY[0x277D359D0] && v11 != *MEMORY[0x277D359E0])
  {
    result = sub_2154A2EDC();
    __break(1u);
    return result;
  }

  sub_21549F33C();

  v12 = v19;
  v18 = 0;
LABEL_12:
  v19 = v12;

  sub_21549F34C();

  v15 = sub_215410CB4() & 1;

  sub_21549F33C();

  if (v15 != v19)
  {

    sub_21549F33C();

    v19 = v15;

    sub_21549F34C();
  }

  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_2153FB9A8()
{
  type metadata accessor for RecordingView();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v1 viewWasDismissed];
    }

    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  return sub_2154A0DFC();
}

void sub_2153FBA64(uint64_t a1, void *a2)
{
  v3 = sub_21549FB6C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecordingView();
  MEMORY[0x28223BE20](v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E17C();
  if (v22)
  {
    sub_2151A6C9C(0, &qword_281199690);
    if (swift_dynamicCast())
    {
      v10 = v20[1];
      v11 = [*(*a2 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
      if (v11)
      {
        v12 = v11;
        sub_2151A6C9C(0, &qword_281199490);
        v13 = sub_2154A291C();

        if (v13)
        {
          if (qword_27CA598D0 != -1)
          {
            swift_once();
          }

          v14 = sub_21549F11C();
          __swift_project_value_buffer(v14, qword_27CA5C850);
          v15 = sub_21549F0FC();
          v16 = sub_2154A224C();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 0;
            _os_log_impl(&dword_2151A1000, v15, v16, "Attachment was deleted. Dismissing audio inspector.", v17, 2u);
            MEMORY[0x21606B520](v17, -1, -1);
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v19 = Strong;
            if ([Strong respondsToSelector_])
            {
              sub_21539B7B8(a2, v9);
              [v19 recordingDetailViewShouldDismiss_];
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
          }

          sub_2153F37B0(v6);
          sub_21549FB5C();

          (*(v4 + 8))(v6, v3);
        }

        else
        {
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_2151ADCD8(v21, &qword_27CA5ABC0);
  }
}

uint64_t sub_2153FBD9C()
{
  v0[2] = sub_2154A1FFC();
  v0[3] = sub_2154A1FEC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2153FBE48;

  return sub_2153F9EB8();
}

uint64_t sub_2153FBE48()
{

  v1 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_2153FBF84, v1, v0);
}

uint64_t sub_2153FBF84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2153FBFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RecordingView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA38);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19[-v10];
  v12 = a1 + *(v5 + 224);
  v13 = *v12;
  v14 = *(v12 + 8);
  LOBYTE(v20) = v13;
  v21 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0DEC();
  if (v19[15] == 1)
  {
    v20 = sub_2154A0D1C();
    LOBYTE(v21) = 0;
    sub_21539B7B8(a1, &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v16 = swift_allocObject();
    sub_21541C94C(&v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v15, type metadata accessor for RecordingView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA48);
    sub_215416AD4();
    sub_2154A0A1C();

    (*(v9 + 32))(a2, v11, v8);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v9 + 56))(a2, v17, 1, v8);
}

id sub_2153FC26C()
{
  v1 = v0;
  v2 = sub_21549E15C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecordingView();
  v7 = v0 + v6[54];
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v42) = v8;
  *(&v42 + 1) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  result = sub_2154A0DEC();
  if (v41 == 1)
  {
    v11 = v0 + v6[55];
    v12 = *v11;
    v13 = *(v11 + 2);
    v42 = v12;
    v43 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA58);
    sub_2154A0DEC();
    v42 = v41;
    sub_21549E11C();
    sub_215324954();
    v14 = sub_2154A2B8C();
    v16 = v15;
    (*(v3 + 8))(v5, v2);

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {

LABEL_19:
      v39 = MEMORY[0x216067B60](v38, 0.2, 1.0, 0.0);
      MEMORY[0x28223BE20](v39);
      *(&v40 - 2) = v1;
      sub_21549FBDC();
    }

    v18 = *v1;
    v19 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel;
    result = [*(*v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
    if (result)
    {
      v20 = result;
      v21 = sub_2154A1D2C();
      [v20 setTitle_];

      result = [*(v18 + v19) attachment];
      if (result)
      {
        v22 = result;
        v23 = sub_2154A1D2C();

        [v22 setUserTitle_];

        result = [*(v18 + v19) attachment];
        if (result)
        {
          v24 = result;
          v25 = sub_2154A1D2C();
          [v24 updateChangeCountWithReason_];

          result = [*(v18 + v19) attachment];
          if (result)
          {
            v26 = result;
            [result attachmentDidChange];

            result = [*(v18 + v19) attachment];
            if (result)
            {
              v27 = result;
              v28 = [result note];

              if (v28)
              {
                if ([v28 regenerateTitle:1 snippet:0])
                {
                  v29 = sub_2154A1D2C();
                  [v28 markShareDirtyIfNeededWithReason_];

                  v30 = sub_2154A1D2C();
                  [v28 updateChangeCountWithReason_];

                  v28 = v30;
                }
              }

              result = [*(v18 + v19) attachment];
              if (result)
              {
                v31 = result;
                v32 = [result managedObjectContext];

                if (v32)
                {
                  sub_2154A25FC();
                }

                v33 = sub_215455FCC();
                v34 = v1 + v6[53];
                v35 = *v34;
                v36 = *(v34 + 2);
                v42 = v35;
                v43 = v36;
                *&v41 = v33;
                *(&v41 + 1) = v37;
                v38 = sub_2154A0DFC();
                goto LABEL_19;
              }

LABEL_26:
              __break(1u);
              return result;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_2153FC724@<X0>(uint64_t a1@<X8>)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE88);
  MEMORY[0x28223BE20](v64);
  v63 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v62 = &v55 - v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE90);
  MEMORY[0x28223BE20](v69);
  v68 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CB58);
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x28223BE20](v6);
  v70 = &v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D6F8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v65 = &v55 - v10;
  v11 = sub_21549FCFC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D700);
  MEMORY[0x28223BE20](v18 - 8);
  v73 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v72 = &v55 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D708);
  MEMORY[0x28223BE20](v22 - 8);
  v71 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v55 - v25;
  *v26 = sub_2154A025C();
  *(v26 + 1) = 0;
  v26[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D710);
  sub_2153FCF8C(&v26[*(v27 + 44)]);
  if ((sub_2153F40D8() & 1) == 0)
  {
    v31 = 1;
    v32 = v72;
    goto LABEL_7;
  }

  v59 = v9;
  v60 = v8;
  v61 = a1;
  sub_2153F3BA0(v17);
  v28 = *(v12 + 104);
  v28(v14, *MEMORY[0x277CDF988], v11);
  v58 = sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28]);
  v29 = sub_2154A1CCC();
  v57 = v12;
  v30 = *(v12 + 8);
  v30(v14, v11);
  v56 = v30;
  v30(v17, v11);
  if (v29)
  {
    v31 = 1;
    v8 = v60;
    a1 = v61;
    v9 = v59;
    v32 = v72;
LABEL_7:
    (*(v9 + 56))(v32, v31, 1, v8);
    v52 = v71;
    sub_215324EEC(v26, v71, &qword_27CA5D708);
    v53 = v73;
    sub_215324EEC(v32, v73, &qword_27CA5D700);
    sub_215324EEC(v52, a1, &qword_27CA5D708);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D718);
    sub_215324EEC(v53, a1 + *(v54 + 48), &qword_27CA5D700);
    sub_2151ADCD8(v32, &qword_27CA5D700);
    sub_2151ADCD8(v26, &qword_27CA5D708);
    sub_2151ADCD8(v53, &qword_27CA5D700);
    return sub_2151ADCD8(v52, &qword_27CA5D708);
  }

  sub_2153F85B0(v70);
  v28(v17, *MEMORY[0x277CDF9E8], v11);
  v28(v14, *MEMORY[0x277CDFA10], v11);
  result = sub_2154A1CDC();
  if (result)
  {
    v34 = *(v57 + 32);
    v35 = v62;
    v34(v62, v17, v11);
    v36 = v64;
    v34((v35 + *(v64 + 48)), v14, v11);
    v37 = v63;
    sub_215324EEC(v35, v63, &qword_27CA5BE88);
    v38 = *(v36 + 48);
    v39 = v68;
    v34(v68, v37, v11);
    v40 = v37 + v38;
    v41 = v56;
    v56(v40, v11);
    sub_21533FB7C(v35, v37, &qword_27CA5BE88);
    v42 = *(v36 + 48);
    v43 = v69;
    v34((v39 + *(v69 + 36)), (v37 + v42), v11);
    v41(v37, v11);
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CB60);
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CB68);
    v46 = sub_21541776C();
    v47 = sub_2151ACC5C(&qword_27CA5CB50, &qword_27CA5BE90);
    v74 = v45;
    v75 = v43;
    v76 = v46;
    v77 = v47;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v74 = v44;
    v75 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v49 = v65;
    v50 = v67;
    v51 = v70;
    sub_2154A0A5C();
    sub_2151ADCD8(v39, &qword_27CA5BE90);
    (*(v66 + 8))(v51, v50);
    v9 = v59;
    v8 = v60;
    v32 = v72;
    (*(v59 + 32))(v72, v49, v60);
    v31 = 0;
    a1 = v61;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_2153FCF8C@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D720);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v30 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D728);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  if (sub_2153F40D8())
  {
    v30 = 0;
    v40 = 0;
    v14 = 0;
    v39 = 0;
    v15 = 0;
    v38 = 0;
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v16 = 2;
  }

  else
  {
    type metadata accessor for RecordingView();
    sub_2154A0FAC();
    sub_21549FAFC();
    v40 = v43;
    v39 = v45;
    v38 = v47;
    v37 = v48;
    LOBYTE(v55) = 1;
    v42 = v44;
    v41 = v46;
    sub_2154A0FAC();
    sub_21549FAFC();
    v36 = v49;
    v35 = v50;
    v34 = v51;
    v33 = v52;
    v32 = v53;
    v31 = v54;
    v30 = v55;
    v14 = v42;
    v16 = 256;
    v15 = v41;
  }

  *v4 = sub_2154A0FAC();
  v4[1] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D730);
  sub_2153FD408(v4 + *(v18 + 44));
  sub_2154A0FAC();
  sub_21549FE4C();
  sub_21533FB7C(v4, v10, &qword_27CA5D720);
  v19 = &v10[*(v5 + 36)];
  v20 = v60;
  *(v19 + 4) = v59;
  *(v19 + 5) = v20;
  *(v19 + 6) = v61;
  v21 = v56;
  *v19 = v55;
  *(v19 + 1) = v21;
  v22 = v58;
  *(v19 + 2) = v57;
  *(v19 + 3) = v22;
  sub_21533FB7C(v10, v13, &qword_27CA5D728);
  sub_215324EEC(v13, v7, &qword_27CA5D728);
  v23 = v30;
  *a1 = 0;
  a1[1] = v23;
  a1[2] = v40;
  a1[3] = v14;
  a1[4] = v39;
  a1[5] = v15;
  v24 = v37;
  a1[6] = v38;
  a1[7] = v24;
  v25 = v36;
  a1[8] = v16;
  a1[9] = v25;
  v26 = v34;
  a1[10] = v35;
  a1[11] = v26;
  v27 = v32;
  a1[12] = v33;
  a1[13] = v27;
  a1[14] = v31;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D738);
  sub_215324EEC(v7, a1 + *(v28 + 48), &qword_27CA5D728);
  sub_2151ADCD8(v13, &qword_27CA5D728);
  return sub_2151ADCD8(v7, &qword_27CA5D728);
}

uint64_t sub_2153FD408@<X0>(uint64_t a1@<X8>)
{
  v50 = sub_21549FCFC();
  v2 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D740);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D748);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D750);
  MEMORY[0x28223BE20](v52);
  v55 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v51 = &v47 - v15;
  MEMORY[0x28223BE20](v16);
  v54 = &v47 - v17;
  v53 = sub_2154A011C();
  type metadata accessor for RecordingView();
  sub_2154A0FAC();
  sub_21549FE4C();
  *&v56[55] = v61;
  *&v56[71] = v62;
  *&v56[87] = v63;
  *&v56[103] = v64;
  *&v56[7] = v58;
  *&v56[23] = v59;
  v57 = 1;
  *&v56[39] = v60;
  *v9 = sub_2154A025C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D758);
  sub_2153FDA34(&v9[*(v18 + 44)]);
  sub_2154A0FAC();
  sub_21549FE4C();
  sub_21533FB7C(v9, v12, &qword_27CA5D740);
  v19 = &v12[*(v10 + 36)];
  v20 = v70;
  *(v19 + 4) = v69;
  *(v19 + 5) = v20;
  *(v19 + 6) = v71;
  v21 = v66;
  *v19 = v65;
  *(v19 + 1) = v21;
  v22 = v68;
  *(v19 + 2) = v67;
  *(v19 + 3) = v22;
  v23 = sub_2154A06CC();
  v24 = v12;
  if (sub_2153F40D8() & 1) == 0 || (v48 = v12, sub_2153F3BA0(v6), v26 = v49, v25 = v50, (*(v2 + 104))(v49, *MEMORY[0x277CDF988], v50), sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28]), v27 = sub_2154A1CCC(), v28 = *(v2 + 8), v28(v26, v25), v28(v6, v25), v24 = v48, (v27))
  {
    sub_2153F40D8();
  }

  sub_21549F99C();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v51;
  sub_21533FB7C(v24, v51, &qword_27CA5D748);
  v38 = v37 + *(v52 + 36);
  *v38 = v23;
  *(v38 + 8) = v30;
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = v36;
  *(v38 + 40) = 0;
  v39 = v37;
  v40 = v54;
  sub_21533FB7C(v39, v54, &qword_27CA5D750);
  v41 = v55;
  sub_215324EEC(v40, v55, &qword_27CA5D750);
  v42 = *&v56[80];
  *(a1 + 81) = *&v56[64];
  *(a1 + 97) = v42;
  *(a1 + 113) = *&v56[96];
  v43 = *&v56[16];
  *(a1 + 17) = *v56;
  *(a1 + 33) = v43;
  v44 = *&v56[48];
  *(a1 + 49) = *&v56[32];
  *a1 = v53;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 128) = *&v56[111];
  *(a1 + 65) = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D760);
  sub_215324EEC(v41, a1 + *(v45 + 48), &qword_27CA5D750);
  sub_2151ADCD8(v40, &qword_27CA5D750);
  return sub_2151ADCD8(v41, &qword_27CA5D750);
}

uint64_t sub_2153FDA34@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D768);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  sub_2153FDDF4(&v25 - v5);
  type metadata accessor for RecordingView();
  sub_2154A0FAC();
  sub_21549FAFC();
  v27 = v36;
  v28 = v34;
  v25 = v39;
  v26 = v38;
  v42 = 1;
  v41 = v35;
  v40 = v37;
  v29 = sub_2154A011C();
  v33 = 1;
  sub_2153FF99C(&v54);
  v47 = *&v55[48];
  v48 = *&v55[64];
  v49 = *&v55[80];
  v50 = *&v55[96];
  v43 = v54;
  v44 = *v55;
  v45 = *&v55[16];
  v46 = *&v55[32];
  v51[0] = v54;
  v51[1] = *v55;
  v51[2] = *&v55[16];
  v51[3] = *&v55[32];
  v51[4] = *&v55[48];
  v51[5] = *&v55[64];
  v51[6] = *&v55[80];
  v51[7] = *&v55[96];
  sub_215324EEC(&v43, &v52, &qword_27CA5D770);
  sub_2151ADCD8(v51, &qword_27CA5D770);
  *&v32[71] = v47;
  *&v32[87] = v48;
  *&v32[103] = v49;
  *&v32[119] = v50;
  *&v32[7] = v43;
  *&v32[23] = v44;
  *&v32[39] = v45;
  *&v32[55] = v46;
  v7 = v33;
  v30 = v3;
  sub_215324EEC(v6, v3, &qword_27CA5D768);
  v8 = v42;
  v9 = v41;
  v10 = v40;
  v11 = v3;
  v12 = v31;
  sub_215324EEC(v11, v31, &qword_27CA5D768);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D778);
  v14 = v12 + *(v13 + 48);
  *v14 = 0;
  *(v14 + 8) = v8;
  v15 = v27;
  *(v14 + 16) = v28;
  *(v14 + 24) = v9;
  *(v14 + 32) = v15;
  *(v14 + 40) = v10;
  v16 = v25;
  *(v14 + 48) = v26;
  *(v14 + 56) = v16;
  v17 = *(v13 + 64);
  *&v53[17] = *&v32[16];
  *&v53[1] = *v32;
  *&v53[81] = *&v32[80];
  *&v53[97] = *&v32[96];
  *&v53[113] = *&v32[112];
  *&v53[33] = *&v32[32];
  v18 = v12 + v17;
  v19 = v29;
  v52 = v29;
  v53[0] = v7;
  *&v53[128] = *&v32[127];
  *&v53[49] = *&v32[48];
  *&v53[65] = *&v32[64];
  v20 = *&v53[96];
  *(v18 + 96) = *&v53[80];
  *(v18 + 112) = v20;
  *(v18 + 128) = *&v53[112];
  *(v18 + 144) = *&v53[128];
  v21 = *&v53[32];
  *(v18 + 32) = *&v53[16];
  *(v18 + 48) = v21;
  v22 = *&v53[64];
  *(v18 + 64) = *&v53[48];
  *(v18 + 80) = v22;
  v23 = *v53;
  *v18 = v52;
  *(v18 + 16) = v23;
  sub_215324EEC(&v52, &v54, &qword_27CA5D780);
  sub_2151ADCD8(v6, &qword_27CA5D768);
  *&v55[81] = *&v32[80];
  *&v55[97] = *&v32[96];
  *v56 = *&v32[112];
  *&v55[17] = *&v32[16];
  *&v55[33] = *&v32[32];
  *&v55[49] = *&v32[48];
  *&v55[65] = *&v32[64];
  v54 = v19;
  v55[0] = v7;
  *&v56[15] = *&v32[127];
  *&v55[1] = *v32;
  sub_2151ADCD8(&v54, &qword_27CA5D780);
  return sub_2151ADCD8(v30, &qword_27CA5D768);
}

void sub_2153FDDF4(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = type metadata accessor for RecordingView();
  v4 = v3 - 8;
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v38 = v5;
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D7B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D7C0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D7C8);
  MEMORY[0x28223BE20](v36);
  v15 = &v36 - v14;
  *v13 = sub_2154A011C();
  *(v13 + 1) = 0;
  v16 = 1;
  v13[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D7D0);
  sub_2153FE23C(v2, &v13[*(v17 + 44)]);
  v41 = sub_2154A0FAC();
  v42 = v2;
  v19 = v18;
  v20 = &v13[*(v11 + 44)];
  v21 = v2 + *(v4 + 224);
  v22 = *v21;
  v23 = *(v21 + 8);
  v44 = v22;
  v45 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0DEC();
  if (v43 == 1)
  {
    sub_2153FEF20(v9);
    (*(v7 + 32))(v20, v9, v6);
    v16 = 0;
  }

  (*(v7 + 56))(v20, v16, 1, v6);
  v24 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D7D8) + 36)];
  *v24 = v41;
  v24[1] = v19;
  v25 = [objc_opt_self() ic:*MEMORY[0x277D76A20] preferredFontForStyle:*MEMORY[0x277D743F8] withFontWeight:?];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 ic_fontWithSingleLineA];

    if (v27)
    {
      v28 = sub_2154A085C();
      KeyPath = swift_getKeyPath();
      sub_21533FB7C(v13, v15, &qword_27CA5D7C0);
      v30 = &v15[*(v36 + 36)];
      *v30 = KeyPath;
      v30[1] = v28;
      v31 = v39;
      sub_21539B7B8(v42, v39);
      v32 = (*(v37 + 80) + 16) & ~*(v37 + 80);
      v33 = swift_allocObject();
      sub_21541C94C(v31, v33 + v32, type metadata accessor for RecordingView);
      v34 = v40;
      sub_21533FB7C(v15, v40, &qword_27CA5D7C8);
      v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D768) + 36));
      *v35 = sub_21541D308;
      v35[1] = v33;
      v35[2] = 0;
      v35[3] = 0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2153FE23C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v91 = a2;
  v93 = sub_2154A03AC();
  v102 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v101 = &v75[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_2154A021C();
  v95 = *(v4 - 8);
  v96 = v4;
  MEMORY[0x28223BE20](v4);
  v94 = &v75[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for RecordingView();
  v77 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v78 = v7;
  v79 = &v75[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D828);
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v80 = &v75[-v8];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D830);
  MEMORY[0x28223BE20](v82);
  v83 = &v75[-v9];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D838);
  MEMORY[0x28223BE20](v89);
  v90 = &v75[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D840);
  v99 = *(v11 - 8);
  v100 = v11;
  MEMORY[0x28223BE20](v11);
  v98 = &v75[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v75[-v14];
  v16 = sub_21549FCFC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v75[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v75[-v21];
  v103 = a1;
  v23 = sub_2153F40D8();
  v24 = MEMORY[0x277CDF988];
  v92 = v17;
  v87 = v22;
  v88 = v19;
  v97 = v15;
  if (v23)
  {
    sub_2153F3BA0(v22);
    (*(v17 + 104))(v19, *v24, v16);
    sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28]);
    v25 = sub_2154A1CCC();
    v26 = *(v17 + 8);
    v26(v19, v16);
    v26(v22, v16);
    LODWORD(v81) = v25 & 1;
    HIDWORD(v81) = v25 ^ 1;
  }

  else
  {
    v81 = 1;
  }

  v85 = v6;
  v27 = (v103 + *(v6 + 212));
  v28 = *v27;
  v29 = *(v27 + 2);
  v115 = v28;
  *&v116 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA58);
  sub_2154A0DEC();
  v115 = v105;
  sub_215324954();
  v30 = sub_2154A092C();
  v32 = v31;
  LODWORD(v6) = v33;
  v35 = v34;
  if ((sub_2153F40D8() & 1) != 0 && (v36 = v87, sub_2153F3BA0(v87), v37 = *MEMORY[0x277CDF988], v76 = v6, v6 = v35, v38 = v92, v39 = v88, (*(v92 + 104))(v88, v37, v16), sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28]), v40 = sub_2154A1CCC(), v41 = v38, v35 = v6, v42 = *(v41 + 8), v42(v39, v16), v42(v36, v16), LOBYTE(v6) = v76, (v40 & 1) == 0))
  {
    sub_2154A0FBC();
  }

  else
  {
    sub_2154A0FAC();
  }

  sub_21549FAFC();
  v122 = v6 & 1;
  KeyPath = swift_getKeyPath();
  v123 = 0;
  *&v105 = v30;
  *(&v105 + 1) = v32;
  LOBYTE(v106) = v6 & 1;
  *(&v106 + 1) = v35;
  v107 = v112;
  v108 = v113;
  v109 = v114;
  *&v110 = KeyPath;
  *(&v110 + 1) = 1;
  v111 = 0;
  v44 = v103;
  v45 = v79;
  sub_21539B7B8(v103, v79);
  v46 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v47 = swift_allocObject();
  sub_21541C94C(v45, v47 + v46, type metadata accessor for RecordingView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D848);
  sub_21541DA30();
  v48 = v80;
  sub_2154A0A1C();

  v119 = v109;
  v120 = v110;
  v121 = v111;
  v115 = v105;
  v116 = v106;
  v117 = v107;
  v118 = v108;
  sub_2151ADCD8(&v115, &qword_27CA5D848);
  v49 = v44 + *(v85 + 216);
  v50 = *v49;
  v51 = *(v49 + 8);
  LOBYTE(v105) = v50;
  *(&v105 + 1) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0DEC();
  if (v104)
  {
    v52 = 0.0;
  }

  else
  {
    v52 = 1.0;
  }

  v53 = v83;
  (*(v84 + 32))(v83, v48, v86);
  *(v53 + *(v82 + 36)) = v52;
  v54 = v94;
  sub_2154A020C();
  sub_21541DB6C();
  v55 = v90;
  sub_2154A0B1C();
  (*(v95 + 8))(v54, v96);
  sub_2151ADCD8(v53, &qword_27CA5D830);
  v56 = v101;
  sub_21549FEAC();
  sub_21541B290(&qword_27CA5D880, &qword_27CA5D838, &unk_2154C3FA0, sub_21541DB6C);
  sub_21541DC34(&qword_27CA5D888, MEMORY[0x277CDDFB0]);
  v57 = v97;
  v58 = v93;
  sub_2154A09FC();
  (*(v102 + 8))(v56, v58);
  sub_2151ADCD8(v55, &qword_27CA5D838);
  if (sub_2153F40D8())
  {
    v59 = v87;
    sub_2153F3BA0(v87);
    v60 = v92;
    v61 = v88;
    (*(v92 + 104))(v88, *MEMORY[0x277CDF988], v16);
    sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28]);
    v62 = sub_2154A1CCC();
    v63 = *(v60 + 8);
    v63(v61, v16);
    v63(v59, v16);
    v103 = v62 & 1;
    v64 = v62 ^ 1;
  }

  else
  {
    v64 = 0;
    v103 = 1;
  }

  v66 = v98;
  v65 = v99;
  v67 = *(v99 + 16);
  v68 = v100;
  v67(v98, v57, v100);
  v69 = v91;
  *v91 = 0;
  v70 = BYTE4(v81);
  *(v69 + 8) = v81;
  *(v69 + 9) = v70 & 1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D890);
  v67(v69 + *(v71 + 48), v66, v68);
  v72 = v69 + *(v71 + 64);
  *v72 = 0;
  v72[8] = v103;
  v72[9] = v64 & 1;
  v73 = *(v65 + 8);
  v73(v57, v68);
  return (v73)(v66, v68);
}

void sub_2153FED80()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel;
  v3 = [*(*v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v3 supportsRenaming];

  if (!v5)
  {
    return;
  }

  v6 = [*(v1 + v2) attachment];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = [v6 note];

  if (v8)
  {
    v9 = [v8 isEditable];

    if (v9)
    {
      type metadata accessor for RecordingView();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
      v10 = sub_2154A0DEC();
      if ((v12 & 1) == 0)
      {
        v11 = MEMORY[0x216067B60](v10, 0.2, 1.0, 0.0);
        MEMORY[0x28223BE20](v11);
        sub_21549FBDC();
      }
    }
  }
}

uint64_t sub_2153FEF20@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v2 = sub_21549FCCC();
  v83 = *(v2 - 8);
  v84 = v2;
  MEMORY[0x28223BE20](v2);
  v81 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RecordingView();
  v5 = (v4 - 8);
  v80 = *(v4 - 8);
  v79 = *(v80 + 64);
  MEMORY[0x28223BE20](v4);
  v78 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5D7E0);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = &v61 - v8;
  v9 = sub_2154A028C();
  v10 = *(v9 - 8);
  v73 = v9;
  v74 = v10;
  MEMORY[0x28223BE20](v9);
  v66 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC30);
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v13 = &v61 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D7F0);
  v69 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v62 = &v61 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D7F8);
  v72 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v63 = &v61 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D800);
  MEMORY[0x28223BE20](v70);
  v17 = &v61 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D808);
  v19 = *(v18 - 8);
  v76 = v18;
  v77 = v19;
  MEMORY[0x28223BE20](v18);
  v68 = &v61 - v20;
  v21 = [objc_opt_self() mainBundle];
  v22 = sub_2154A1D2C();
  v23 = [v21 localizedStringForKey:v22 value:0 table:0];

  v24 = sub_2154A1D6C();
  v26 = v25;

  v90 = v24;
  v91 = v26;
  v27 = v1 + v5[57];
  v28 = *v27;
  v29 = *(v27 + 16);
  v88 = v28;
  v89 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA58);
  sub_2154A0E0C();
  v30 = v1 + v5[55];
  v61 = v1;
  v31 = *v30;
  v32 = *(v30 + 16);
  v85 = v31;
  v86 = v32;
  sub_2154A0DEC();
  v85 = v88;
  sub_215324954();
  sub_2154A092C();
  sub_2154A102C();
  v33 = v1 + v5[58];
  v34 = *v33;
  v35 = *(v33 + 8);
  LOBYTE(v33) = *(v33 + 16);
  LOBYTE(v85) = v34;
  *(&v85 + 1) = v35;
  LOBYTE(v86) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD90);
  sub_21549F9CC();
  v36 = sub_2151ACC5C(&qword_27CA5D810, &qword_27CA5BC30);
  v37 = v62;
  v38 = v64;
  sub_2154A0BDC();

  (*(v65 + 8))(v13, v38);
  v39 = v66;
  sub_2154A027C();
  *&v85 = v38;
  *(&v85 + 1) = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_21541DC34(&qword_27CA5D818, MEMORY[0x277CDDF20]);
  v42 = v63;
  v43 = v67;
  v44 = v73;
  sub_2154A0A4C();
  v45 = v44;
  (*(v74 + 8))(v39, v44);
  (*(v69 + 8))(v37, v43);
  v46 = v75;
  sub_2154A05AC();
  v47 = sub_2154A05BC();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  *&v85 = v43;
  *(&v85 + 1) = v45;
  v86 = OpaqueTypeConformance2;
  v87 = v41;
  swift_getOpaqueTypeConformance2();
  v48 = v71;
  sub_2154A0B5C();
  sub_2151ADCD8(v46, &unk_27CA5D7E0);
  (*(v72 + 8))(v42, v48);
  KeyPath = swift_getKeyPath();
  v50 = v70;
  v51 = &v17[*(v70 + 36)];
  *v51 = KeyPath;
  v51[8] = 1;
  v52 = sub_21541D394();
  v53 = v68;
  v54 = v50;
  sub_2154A094C();
  sub_2151ADCD8(v17, &qword_27CA5D800);
  v55 = v78;
  sub_21539B7B8(v61, v78);
  v56 = (*(v80 + 80) + 16) & ~*(v80 + 80);
  v57 = swift_allocObject();
  sub_21541C94C(v55, v57 + v56, type metadata accessor for RecordingView);
  v58 = v81;
  sub_21549FCBC();
  *&v85 = v54;
  *(&v85 + 1) = v52;
  swift_getOpaqueTypeConformance2();
  v59 = v76;
  sub_2154A0C2C();

  (*(v83 + 8))(v58, v84);
  return (*(v77 + 8))(v53, v59);
}

uint64_t sub_2153FF914()
{
  sub_215455FCC();
  type metadata accessor for RecordingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA58);
  return sub_2154A0DFC();
}

uint64_t sub_2153FF99C@<X0>(uint64_t a1@<X8>)
{
  sub_2153FFAF4(&v14);
  type metadata accessor for RecordingView();
  sub_2154A0FAC();
  sub_21549FAFC();
  v2 = v18;
  v3 = v20;
  v4 = v22;
  v5 = v23;
  v26 = 1;
  v25 = v19;
  v24 = v21;
  sub_2153FFD94(v29);
  v6 = v26;
  v7 = v25;
  v8 = v24;
  v9 = v14;
  v27[0] = v14;
  v27[1] = v15;
  v10 = v16;
  v27[2] = v16;
  v28 = v17;
  LOWORD(v30) = v17;
  v29[1] = v15;
  v29[2] = v16;
  v11 = *&v29[0];
  v12 = v30;
  v29[0] = v14;
  *(a1 + 16) = v15;
  *(a1 + 32) = v10;
  *a1 = v9;
  *(a1 + 48) = v12;
  *(a1 + 56) = 0;
  *(a1 + 64) = v6;
  *(a1 + 72) = v2;
  *(a1 + 80) = v7;
  *(a1 + 88) = v3;
  *(a1 + 96) = v8;
  *(a1 + 104) = v4;
  *(a1 + 112) = v5;
  *(a1 + 120) = v11;
  sub_215324EEC(v27, v31, &qword_27CA5D788);
  v31[0] = v14;
  v31[1] = v15;
  v31[2] = v16;
  v32 = v17;
  return sub_2151ADCD8(v31, &qword_27CA5D788);
}

uint64_t sub_2153FFAF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21549FCFC();
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  type metadata accessor for RecordingView();
  v33 = sub_21549E62C();
  v34 = v8;
  sub_215324954();
  v9 = sub_2154A092C();
  v11 = v10;
  v13 = v12;
  sub_2154A07CC();
  v14 = sub_2154A08AC();
  v30 = v15;
  v31 = v14;
  v29 = v16;
  v32 = v17;
  sub_215354880(v9, v11, v13 & 1);

  if (sub_2153F3DA8() & 1) != 0 || (sub_2153F3F00())
  {
    v18 = sub_21549E63C();
  }

  else
  {
    v18 = sub_21549E62C();
  }

  v20 = v18;
  v21 = v19;
  if (sub_2153F40D8())
  {
    sub_2153F3BA0(v7);
    v22 = v28;
    (*(v28 + 104))(v4, *MEMORY[0x277CDF988], v2);
    sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28]);
    v23 = sub_2154A1CCC();
    v24 = *(v22 + 8);
    v24(v4, v2);
    v24(v7, v2);
    v25 = v23 ^ 1;
  }

  else
  {
    v25 = 0;
  }

  result = sub_2153F40D8();
  v27 = v30;
  *a1 = v31;
  *(a1 + 8) = v27;
  *(a1 + 16) = v29 & 1;
  *(a1 + 24) = v32;
  *(a1 + 32) = v20;
  *(a1 + 40) = v21;
  *(a1 + 48) = v25 & 1;
  *(a1 + 49) = result & 1;
  return result;
}

uint64_t sub_2153FFD94@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = sub_21549FCFC();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v57 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v56 - v6;
  v7 = type metadata accessor for RecordingView();
  v60 = *(v7 - 8);
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2154A053C();
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x28223BE20](v9);
  v62 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D790);
  MEMORY[0x28223BE20](v63);
  v61 = &v56 - v14;
  v15 = sub_21549E95C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  swift_getKeyPath();
  v67 = v19;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v20 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v16 + 16))(v18, v19 + v20, v15);
  LODWORD(v20) = (*(v16 + 88))(v18, v15);
  LODWORD(v19) = *MEMORY[0x277D359E8];
  (*(v16 + 8))(v18, v15);
  if (v20 == v19)
  {
    sub_2154A052C();
    sub_21539B7B8(v2, &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = (*(v60 + 80) + 16) & ~*(v60 + 80);
    v22 = swift_allocObject();
    sub_21541C94C(&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for RecordingView);
    *(v22 + v21 + v8) = 0;
    v24 = v64;
    v23 = v65;
    (*(v64 + 16))(v62, v13, v65);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_21541D1DC;
    *(v25 + 24) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D788);
    sub_21541DC34(&qword_27CA5D3A0, MEMORY[0x277CDE300]);
    sub_21541CCD0();
    sub_21549FABC();
    (*(v24 + 8))(v13, v23);
    sub_21541D284();
  }

  else
  {
    sub_2153FAC34();
    sub_2154A317C();
    v67 = sub_2154A316C();
    v68 = v26;
    sub_215324954();
    v27 = sub_2154A092C();
    v29 = v28;
    v31 = v30;
    sub_2154A07BC();
    v32 = sub_2154A08AC();
    v34 = v33;
    LODWORD(v36) = v35;
    v38 = v37;
    sub_215354880(v27, v29, v31 & 1);

    sub_2153FAC34();
    v40 = sub_21540FF20(0, v39);
    v42 = v41;
    v43 = 0;
    if (sub_2153F40D8())
    {
      v64 = v38;
      v44 = v56;
      sub_2153F3BA0(v56);
      v45 = *MEMORY[0x277CDF988];
      v65 = v32;
      v46 = v58;
      v47 = v59;
      v48 = *(v58 + 104);
      LODWORD(v63) = v36;
      v36 = v34;
      v49 = v57;
      v48(v57, v45, v59);
      sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28]);
      v50 = sub_2154A1CCC();
      v51 = *(v46 + 8);
      v52 = v49;
      v34 = v36;
      LOBYTE(v36) = v63;
      v51(v52, v47);
      v53 = v44;
      v38 = v64;
      v51(v53, v47);
      v32 = v65;
      v43 = v50 ^ 1;
    }

    v54 = sub_2153F40D8();
    v75 = v36 & 1;
    v67 = v32;
    v68 = v34;
    v69 = v36 & 1;
    v70 = v38;
    v71 = v40;
    v72 = v42;
    v73 = v43 & 1;
    v74 = v54 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D788);
    sub_21541CCD0();
  }

  result = sub_2154A0EAC();
  *v66 = result;
  return result;
}

uint64_t sub_2154004E0()
{
  type metadata accessor for RecordingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA58);
  sub_2154A0DEC();
  sub_2154A0DFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0DFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD90);
  return sub_21549F9BC();
}

uint64_t sub_215400624()
{
  type metadata accessor for RecordingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0DFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD90);
  return sub_21549F9BC();
}

uint64_t sub_2154006F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v192 = a2;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D048);
  MEMORY[0x28223BE20](v191);
  v179 = (v163 - v3);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D050);
  MEMORY[0x28223BE20](v175);
  v197 = (v163 - v4);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D058);
  v178 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v177 = v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v194 = v163 - v7;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D060);
  MEMORY[0x28223BE20](v188);
  v190 = v163 - v8;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D068);
  MEMORY[0x28223BE20](v189);
  v174 = (v163 - v9);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D070);
  MEMORY[0x28223BE20](v172);
  v187 = v163 - v10;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D078);
  v207 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v173 = v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v198 = v163 - v13;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE88);
  MEMORY[0x28223BE20](v204);
  v15 = v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v203 = v163 - v17;
  v18 = sub_21549FCFC();
  v210 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v205 = v163 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v163 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE90);
  MEMORY[0x28223BE20](v23);
  v209 = v163 - v24;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D080);
  MEMORY[0x28223BE20](v180);
  v26 = v163 - v25;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D088);
  MEMORY[0x28223BE20](v181);
  v184 = v163 - v27;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D090);
  MEMORY[0x28223BE20](v182);
  v183 = v163 - v28;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D098);
  MEMORY[0x28223BE20](v195);
  v196 = v163 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D0A0);
  v206 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v186 = v163 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v200 = v163 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D0A8);
  v35 = *(v34 - 8);
  v212 = v34;
  v213 = v35;
  MEMORY[0x28223BE20](v34);
  v193 = v163 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = v163 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = (v163 - v41);
  v211 = a1;
  v43 = sub_2153F40D8();
  v208 = v39;
  v201 = v23;
  if (v43)
  {
    v176 = v22;
    v185 = v30;
    v194 = v18;
    v171 = v15;
    v44 = type metadata accessor for RecordingView();
    v45 = v211;
    sub_2154A0FAC();
    sub_21549FAFC();
    v178 = v229;
    v179 = v227;
    v177 = v231;
    v175 = v232;
    v223 = 1;
    v222 = v228;
    v221 = v230;
    v197 = v42;
    sub_2154021C8(v42);
    sub_2154A0FAC();
    sub_21549FAFC();
    v169 = v235;
    v170 = v233;
    v167 = v238;
    v168 = v237;
    v226 = 1;
    v225 = v234;
    v224 = v236;
    v46 = *v45;
    swift_getKeyPath();
    *&v239 = v46;
    sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED9C();

    v47 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isPlaying;
    swift_beginAccess();
    v48 = 136;
    if (*(v46 + v47))
    {
      v48 = 140;
    }

    v49 = *(v45 + *(v44 + v48));
    *v26 = sub_2154A011C();
    *(v26 + 1) = 0;
    v26[16] = 1;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D0D8);
    sub_21540B02C(v45, &v26[*(v50 + 44)], v49);
    KeyPath = swift_getKeyPath();
    v52 = &v26[*(v180 + 36)];
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D0E0) + 28);
    v54 = *MEMORY[0x277CDFA88];
    v55 = sub_21549FD5C();
    (*(*(v55 - 8) + 104))(v52 + v53, v54, v55);
    *v52 = KeyPath;
    LOBYTE(KeyPath) = sub_2153F4520();
    v56 = swift_getKeyPath();
    v57 = swift_allocObject();
    *(v57 + 16) = (KeyPath & 1) == 0;
    v58 = v184;
    sub_21533FB7C(v26, v184, &qword_27CA5D080);
    v59 = (v58 + *(v181 + 36));
    *v59 = v56;
    v59[1] = sub_21541E308;
    v59[2] = v57;
    v60 = sub_2154A0D4C();
    v61 = swift_getKeyPath();
    v62 = v58;
    v63 = v183;
    sub_21533FB7C(v62, v183, &qword_27CA5D088);
    v64 = (v63 + *(v182 + 36));
    *v64 = v61;
    v64[1] = v60;
    v202 = v44;
    sub_2154A0FAC();
    v39 = v63;
    while (1)
    {
      sub_21549FE4C();
      v65 = v196;
      sub_21533FB7C(v39, v196, &qword_27CA5D090);
      v66 = (v65 + *(v195 + 36));
      v67 = v244;
      v66[4] = v243;
      v66[5] = v67;
      v66[6] = v245;
      v68 = v240;
      *v66 = v239;
      v66[1] = v68;
      v69 = v242;
      v66[2] = v241;
      v66[3] = v69;
      v70 = v210;
      v72 = (v210 + 104);
      v71 = *(v210 + 13);
      v73 = v176;
      LODWORD(v182) = *MEMORY[0x277CDF9E8];
      v74 = v194;
      (v71)(v176);
      v75 = v205;
      LODWORD(v184) = *MEMORY[0x277CDFA10];
      v193 = v71;
      (v71)(v205);
      v183 = sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28]);
      v76 = sub_2154A1CDC();
      v39 = v209;
      v78 = v203;
      v77 = v204;
      if (v76)
      {
        v181 = v72;
        v79 = *(v70 + 4);
        v79(v203, v73, v74);
        v79((v78 + *(v77 + 48)), v75, v74);
        v80 = v171;
        sub_215324EEC(v78, v171, &qword_27CA5BE88);
        v180 = *(v77 + 48);
        v79(v39, v80, v74);
        v81 = *(v70 + 1);
        v81(v80 + v180, v74);
        sub_21533FB7C(v78, v80, &qword_27CA5BE88);
        v82 = v209;
        v83 = &v209[*(v201 + 36)];
        v84 = v80 + *(v77 + 48);
        v163[1] = v70 + 32;
        v164 = v79;
        v79(v83, v84, v74);
        v210 = v70 + 8;
        v165 = v81;
        v81(v80, v74);
        v85 = v205;
        sub_215419984();
        v86 = v82;
        v87 = sub_2151ACC5C(&qword_27CA5CB50, &qword_27CA5BE90);
        v88 = v196;
        sub_2154A0A5C();
        v89 = v86;
        v90 = v176;
        sub_2151ADCD8(v89, &qword_27CA5BE90);
        sub_2151ADCD8(v88, &qword_27CA5D098);
        v91 = v211;
        sub_2154A0FAC();
        sub_21549FAFC();
        v195 = v248;
        v196 = v246;
        v180 = v250;
        v166 = v251;
        v216 = 1;
        v215 = v247;
        v214 = v249;
        v92 = sub_2154A0FAC();
        v39 = v187;
        *v187 = v92;
        *(v39 + 1) = v93;
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D120);
        sub_21540F060(v91, &v39[*(v94 + 44)]);
        v95 = v193;
        (v193)(v90, v182, v74);
        v95(v85, v184, v74);
        if (sub_2154A1CDC())
        {
          v193 = v87;
          v96 = v203;
          v97 = v164;
          v164(v203, v90, v74);
          v98 = v204;
          v97(v96 + *(v204 + 48), v85, v74);
          v99 = v171;
          sub_215324EEC(v96, v171, &qword_27CA5BE88);
          v100 = *(v98 + 48);
          v101 = v209;
          v97(v209, v99, v74);
          v102 = v165;
          v165(v99 + v100, v74);
          sub_21533FB7C(v96, v99, &qword_27CA5BE88);
          v97(v101 + *(v201 + 36), (v99 + *(v98 + 48)), v74);
          v102(v99, v74);
          v103 = v187;
          sub_2151ACC5C(&qword_27CA5D128, &qword_27CA5D070);
          sub_2154A0A5C();
          sub_2151ADCD8(v101, &qword_27CA5BE90);
          sub_2151ADCD8(v103, &qword_27CA5D070);
          sub_2154A0FAC();
          sub_21549FAFC();
          v210 = v254;
          v211 = v252;
          v209 = v256;
          v205 = v257;
          v219 = 1;
          v218 = v253;
          v217 = v255;
          LOBYTE(v103) = v223;
          LODWORD(v176) = v222;
          LODWORD(v181) = v221;
          v104 = *(v213 + 16);
          v105 = v208;
          v104(v208, v197, v212);
          LODWORD(v182) = v226;
          LODWORD(v183) = v225;
          LODWORD(v184) = v224;
          v106 = *(v206 + 16);
          v106(v186, v200, v185);
          LODWORD(v187) = v216;
          LODWORD(v193) = v215;
          LODWORD(v194) = v214;
          v201 = *(v207 + 16);
          v107 = v173;
          (v201)(v173, v198, v199);
          LODWORD(v202) = v219;
          LODWORD(v203) = v218;
          LODWORD(v204) = v217;
          v108 = v174;
          *v174 = 0;
          *(v108 + 8) = v103;
          *(v108 + 16) = v179;
          *(v108 + 24) = v176;
          *(v108 + 32) = v178;
          *(v108 + 40) = v181;
          v109 = v175;
          *(v108 + 48) = v177;
          *(v108 + 56) = v109;
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D130);
          v111 = v105;
          v112 = v212;
          v104((v108 + v110[12]), v111, v212);
          v113 = v108 + v110[16];
          *v113 = 0;
          *(v113 + 8) = v182;
          *(v113 + 16) = v170;
          *(v113 + 24) = v183;
          *(v113 + 32) = v169;
          *(v113 + 40) = v184;
          v114 = v167;
          *(v113 + 48) = v168;
          *(v113 + 56) = v114;
          v116 = v185;
          v115 = v186;
          v106((v108 + v110[20]), v186, v185);
          v117 = v108 + v110[24];
          *v117 = 0;
          *(v117 + 8) = v187;
          *(v117 + 16) = v196;
          *(v117 + 24) = v193;
          *(v117 + 32) = v195;
          *(v117 + 40) = v194;
          v118 = v166;
          *(v117 + 48) = v180;
          *(v117 + 56) = v118;
          v119 = v199;
          (v201)(v108 + v110[28], v107, v199);
          v120 = v108 + v110[32];
          *v120 = 0;
          *(v120 + 8) = v202;
          *(v120 + 16) = v211;
          *(v120 + 24) = v203;
          *(v120 + 32) = v210;
          *(v120 + 40) = v204;
          v121 = v205;
          *(v120 + 48) = v209;
          *(v120 + 56) = v121;
          v122 = *(v207 + 8);
          v207 += 8;
          v211 = v122;
          (v122)(v107, v119);
          v123 = *(v206 + 8);
          v206 += 8;
          v123(v115, v116);
          v124 = *(v213 + 8);
          v124(v208, v112);
          sub_215324EEC(v108, v190, &qword_27CA5D068);
          swift_storeEnumTagMultiPayload();
          sub_2151ACC5C(&qword_27CA5D0C8, &qword_27CA5D068);
          sub_2151ACC5C(&qword_27CA5D0D0, &qword_27CA5D048);
          sub_2154A039C();
          sub_2151ADCD8(v108, &qword_27CA5D068);
          (v211)(v198, v199);
          v123(v200, v185);
          return (v124)(v197, v212);
        }
      }

      else
      {
        __break(1u);
LABEL_11:
        __break(1u);
      }

      __break(1u);
      sub_2154A227C();
      v162 = sub_2154A068C();
      sub_21549F07C();
    }
  }

  v126 = v15;
  v127 = type metadata accessor for RecordingView();
  v128 = v211;
  sub_2154A0FAC();
  sub_21549FAFC();
  v129 = v246;
  v206 = v250;
  v207 = v248;
  v200 = v251;
  LOBYTE(v233) = 1;
  LOBYTE(v227) = v247;
  v220 = v249;
  sub_2154021C8(v39);
  v187 = v127;
  sub_2154A0FAC();
  sub_21549FAFC();
  v198 = v254;
  v199 = v252;
  v195 = v257;
  v196 = v256;
  v223 = 1;
  v222 = v253;
  v221 = v255;
  v130 = sub_2154A0FAC();
  v131 = v197;
  *v197 = v130;
  v131[1] = v132;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D0B0);
  sub_21540BE7C(v128, v131 + *(v133 + 44));
  v134 = v210;
  v135 = *(v210 + 13);
  v135(v22, *MEMORY[0x277CDF9E8], v18);
  v136 = v205;
  v135(v205, *MEMORY[0x277CDFA10], v18);
  sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28]);
  if ((sub_2154A1CDC() & 1) == 0)
  {
    goto LABEL_11;
  }

  v137 = *(v134 + 4);
  v186 = v129;
  v138 = v203;
  v137(v203, v22, v18);
  v139 = v204;
  v137((v138 + *(v204 + 48)), v136, v18);
  v140 = v126;
  sub_215324EEC(v138, v126, &qword_27CA5BE88);
  v205 = *(v139 + 48);
  v141 = v209;
  v137(v209, v140, v18);
  v142 = *(v134 + 1);
  v142(&v205[v140], v18);
  sub_21533FB7C(v138, v140, &qword_27CA5BE88);
  v137((v141 + *(v201 + 36)), (v140 + *(v139 + 48)), v18);
  v142(v140, v18);
  sub_2151ACC5C(&qword_27CA5D0B8, &qword_27CA5D050);
  sub_2151ACC5C(&qword_27CA5CB50, &qword_27CA5BE90);
  v143 = v194;
  v144 = v197;
  sub_2154A0A5C();
  sub_2151ADCD8(v141, &qword_27CA5BE90);
  sub_2151ADCD8(v144, &qword_27CA5D050);
  sub_2154A0FAC();
  sub_21549FAFC();
  v210 = v240;
  v211 = v239;
  v205 = *(&v241 + 1);
  v209 = v241;
  v226 = 1;
  v225 = BYTE8(v239);
  v224 = BYTE8(v240);
  LOBYTE(v144) = v233;
  LODWORD(v183) = v227;
  LODWORD(v184) = v220;
  v145 = *(v213 + 16);
  v146 = v193;
  v145(v193, v208, v212);
  LODWORD(v185) = v223;
  LODWORD(v187) = v222;
  LODWORD(v197) = v221;
  v147 = v177;
  v148 = v178;
  v149 = *(v178 + 16);
  v149(v177, v143, v202);
  LODWORD(v201) = v226;
  LODWORD(v203) = v225;
  LODWORD(v204) = v224;
  v150 = v179;
  *v179 = 0;
  *(v150 + 8) = v144;
  *(v150 + 16) = v186;
  *(v150 + 24) = v183;
  *(v150 + 32) = v207;
  *(v150 + 40) = v184;
  v151 = v200;
  *(v150 + 48) = v206;
  *(v150 + 56) = v151;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D0C0);
  v153 = v146;
  v154 = v212;
  v145((v150 + v152[12]), v153, v212);
  v155 = v150 + v152[16];
  *v155 = 0;
  *(v155 + 8) = v185;
  *(v155 + 16) = v199;
  *(v155 + 24) = v187;
  *(v155 + 32) = v198;
  *(v155 + 40) = v197;
  v156 = v195;
  *(v155 + 48) = v196;
  *(v155 + 56) = v156;
  v157 = v202;
  v149((v150 + v152[20]), v147, v202);
  v158 = v150 + v152[24];
  *v158 = 0;
  *(v158 + 8) = v201;
  *(v158 + 16) = v211;
  *(v158 + 24) = v203;
  *(v158 + 32) = v210;
  *(v158 + 40) = v204;
  v159 = v205;
  *(v158 + 48) = v209;
  *(v158 + 56) = v159;
  v160 = *(v148 + 8);
  v160(v147, v157);
  v161 = *(v213 + 8);
  v213 += 8;
  v161(v193, v154);
  sub_215324EEC(v150, v190, &qword_27CA5D048);
  swift_storeEnumTagMultiPayload();
  sub_2151ACC5C(&qword_27CA5D0C8, &qword_27CA5D068);
  sub_2151ACC5C(&qword_27CA5D0D0, &qword_27CA5D048);
  sub_2154A039C();
  sub_2151ADCD8(v150, &qword_27CA5D048);
  v160(v194, v202);
  return (v161)(v208, v212);
}

uint64_t sub_2154021C8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = type metadata accessor for RecordingView();
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2154A053C();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = sub_21549E95C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v1;
  v13 = *v1;
  swift_getKeyPath();
  v32 = v13;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v14 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isPlaying;
  swift_beginAccess();
  if ((*(v13 + v14) & 1) == 0)
  {
    swift_getKeyPath();
    v31 = v13;
    sub_21549ED9C();

    v15 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
    swift_beginAccess();
    (*(v10 + 16))(v12, v13 + v15, v9);
    (*(v10 + 88))(v12, v9);
    (*(v10 + 8))(v12, v9);
  }

  sub_2154A052C();
  v16 = v26;
  sub_21539B7B8(v25, v26);
  v17 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v18 = swift_allocObject();
  sub_21541C94C(v16, v18 + v17, type metadata accessor for RecordingView);
  *(v18 + v17 + v3) = 1;
  v19 = v28;
  v20 = v29;
  (*(v28 + 16))(v27, v8, v29);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_21541B10C;
  *(v21 + 24) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D398);
  sub_21541DC34(&qword_27CA5D3A0, MEMORY[0x277CDE300]);
  sub_21541B1D8();
  sub_21549FABC();
  return (*(v19 + 8))(v8, v20);
}

__n128 sub_215402654@<Q0>(__n128 *a1@<X8>)
{
  v2 = sub_2154A011C();
  sub_2154026C0(&v7);
  v3 = v7;
  v4 = v9;
  v5 = v10;
  result = v8;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = 0;
  a1[1].n128_u8[0] = 1;
  a1[1].n128_u64[1] = v3;
  a1[2] = result;
  a1[3].n128_u8[0] = v4;
  a1[3].n128_u64[1] = v5;
  return result;
}

uint64_t sub_2154026C0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2154A0D7C();
  v3 = [objc_opt_self() mainBundle];
  v4 = sub_2154A1D2C();
  v5 = [v3 localizedStringForKey:v4 value:0 table:0];

  sub_2154A1D6C();
  sub_215324954();
  v6 = sub_2154A092C();
  v8 = v7;
  *a1 = v2;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  v10 = v9 & 1;
  *(a1 + 24) = v9 & 1;
  *(a1 + 32) = v11;

  sub_21539227C(v6, v8, v10);

  sub_215354880(v6, v8, v10);
}

id sub_21540281C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v282 = a2;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE90);
  v280 = *(v281 - 8);
  MEMORY[0x28223BE20](v281);
  v254 = &v232 - v3;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE98);
  v252 = *(v253 - 8);
  MEMORY[0x28223BE20](v253);
  v239 = &v232 - v4;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CEA0);
  v237 = *(v238 - 8);
  MEMORY[0x28223BE20](v238);
  v236 = &v232 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v255 = &v232 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CEA8);
  MEMORY[0x28223BE20](v8 - 8);
  v276 = &v232 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v286 = &v232 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE08);
  MEMORY[0x28223BE20](v12 - 8);
  v262 = &v232 - v13;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CEB0);
  v260 = *(v261 - 8);
  MEMORY[0x28223BE20](v261);
  v242 = &v232 - v14;
  v249 = sub_21549E26C();
  v248 = *(v249 - 8);
  MEMORY[0x28223BE20](v249);
  v247 = &v232 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v246 = &v232 - v17;
  v245 = sub_21549E20C();
  v270 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v244 = &v232 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_21549E28C();
  v269 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v243 = &v232 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CEB8);
  MEMORY[0x28223BE20](v20 - 8);
  v258 = &v232 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v267 = &v232 - v23;
  v287 = sub_2154A0F3C();
  v298 = *(v287 - 8);
  MEMORY[0x28223BE20](v287);
  v296 = &v232 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v257 = &v232 - v26;
  MEMORY[0x28223BE20](v27);
  v277 = &v232 - v28;
  MEMORY[0x28223BE20](v29);
  v301 = &v232 - v30;
  MEMORY[0x28223BE20](v31);
  v268 = &v232 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CEC0);
  MEMORY[0x28223BE20](v33 - 8);
  v275 = &v232 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v299 = &v232 - v36;
  v285 = sub_21549E95C();
  v283 = *(v285 - 8);
  MEMORY[0x28223BE20](v285);
  v284 = &v232 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CEC8);
  MEMORY[0x28223BE20](v38 - 8);
  v279 = &v232 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v278 = &v232 - v41;
  v263 = type metadata accessor for RecordingView();
  v42 = *(v263 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v263);
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CED0);
  v44 = *(v303 - 8);
  MEMORY[0x28223BE20](v303);
  v274 = &v232 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v259 = &v232 - v47;
  MEMORY[0x28223BE20](v48);
  v295 = &v232 - v49;
  MEMORY[0x28223BE20](v50);
  v235 = &v232 - v51;
  MEMORY[0x28223BE20](v52);
  v54 = &v232 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CED8);
  v240 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v251 = &v232 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v292 = &v232 - v58;
  MEMORY[0x28223BE20](v59);
  v294 = &v232 - v60;
  MEMORY[0x28223BE20](v61);
  v241 = &v232 - v62;
  MEMORY[0x28223BE20](v63);
  v256 = &v232 - v64;
  MEMORY[0x28223BE20](v65);
  v293 = &v232 - v66;
  MEMORY[0x28223BE20](v67);
  v302 = &v232 - v68;
  MEMORY[0x28223BE20](v69);
  v234 = (&v232 - v70);
  MEMORY[0x28223BE20](v71);
  v233 = (&v232 - v72);
  MEMORY[0x28223BE20](v73);
  v75 = &v232 - v74;
  MEMORY[0x28223BE20](v76);
  v78 = &v232 - v77;
  sub_21539B7B8(a1, &v232 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v291 = *(v42 + 80);
  v271 = v79 + v43;
  v80 = swift_allocObject();
  v272 = v79;
  v273 = &v232 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21541C94C(v273, v80 + v79, type metadata accessor for RecordingView);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CEE0);
  v82 = sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0);
  v290 = v81;
  v289 = v82;
  sub_2154A0E3C();
  v288 = a1;
  v83 = *a1;
  v265 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel;
  result = [*(v83 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
  if (!result)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v85 = result;
  v86 = [result supportsRenaming];

  v87 = v86 ^ 1;
  KeyPath = swift_getKeyPath();
  v89 = swift_allocObject();
  *(v89 + 16) = v87;
  v300 = v44;
  v90 = (v44 + 32);
  v91 = *(v44 + 32);
  v91(v75, v54, v303);
  v297 = v55;
  v92 = &v75[*(v55 + 36)];
  *v92 = KeyPath;
  v92[1] = sub_21541E308;
  v92[2] = v89;
  v93 = v78;
  sub_21533FB7C(v75, v78, &qword_27CA5CED8);
  swift_getKeyPath();
  v94 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  v307 = v83;
  v250 = sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v95 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  v96 = v283;
  v97 = v284;
  v98 = v285;
  (*(v283 + 16))(v284, v83 + v95, v285);
  LODWORD(v95) = (*(v96 + 88))(v97, v98);
  LODWORD(KeyPath) = *MEMORY[0x277D359D0];
  (*(v96 + 8))(v97, v98);
  v99 = v93;
  if (v95 != KeyPath)
  {
    v127 = 1;
    v128 = v278;
    v129 = v302;
LABEL_24:
    (*(v280 + 56))(v128, v127, 1, v281);
    sub_215324EEC(v99, v129, &qword_27CA5CED8);
    v229 = v279;
    sub_215324EEC(v128, v279, &qword_27CA5CEC8);
    v230 = v282;
    sub_215324EEC(v129, v282, &qword_27CA5CED8);
    v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CEF0);
    sub_215324EEC(v229, v230 + *(v231 + 48), &qword_27CA5CEC8);
    sub_2151ADCD8(v128, &qword_27CA5CEC8);
    sub_2151ADCD8(v99, &qword_27CA5CED8);
    sub_2151ADCD8(v229, &qword_27CA5CEC8);
    return sub_2151ADCD8(v129, &qword_27CA5CED8);
  }

  v283 = v94;
  v266 = v83;
  v285 = v91;
  v284 = v90;
  v100 = v288;
  v101 = v288 + *(v263 + 56);
  v102 = *v101;
  v103 = *(v101 + 1);
  LOBYTE(v304) = v102;
  v305 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0DEC();
  v104 = 1;
  v232 = v93;
  if (v306 != 1)
  {
LABEL_16:
    (*(v260 + 56))(v299, v104, 1, v261);
    sub_2154A0F2C();
    v173 = v273;
    sub_21539B7B8(v100, v273);
    v174 = swift_allocObject();
    v175 = v272;
    v270 = type metadata accessor for RecordingView;
    sub_21541C94C(v173, v174 + v272, type metadata accessor for RecordingView);
    sub_2154A0E3C();
    sub_21539B7B8(v100, v173);
    v176 = swift_allocObject();
    sub_21541C94C(v173, v176 + v175, type metadata accessor for RecordingView);
    v177 = v294;
    sub_2154A0E3C();
    swift_getKeyPath();
    v178 = v100;
    v179 = v266;
    v304 = v266;
    sub_21549ED9C();

    v180 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__canBePlayedBack;
    swift_beginAccess();
    v181 = *(v179 + v180);
    v182 = swift_getKeyPath();
    v183 = swift_allocObject();
    *(v183 + 16) = (v181 & 1) == 0;
    v184 = (v177 + *(v297 + 36));
    *v184 = v182;
    v184[1] = sub_21541E308;
    v184[2] = v183;
    v185 = v262;
    sub_21549F95C();
    v186 = sub_21549F98C();
    (*(*(v186 - 8) + 56))(v185, 0, 1, v186);
    sub_21539B7B8(v178, v173);
    v187 = swift_allocObject();
    sub_21541C94C(v173, v187 + v175, v270);
    v188 = v259;
    sub_2154A0E2C();
    result = [*(v179 + v265) attachment];
    if (result)
    {
      v189 = result;
      v190 = [result note];

      v191 = v286;
      v192 = v301;
      v193 = v285;
      if (v190)
      {
        v194 = [v190 isEditable];

        v195 = v194 ^ 1;
      }

      else
      {
        v195 = 1;
      }

      v196 = swift_getKeyPath();
      v197 = swift_allocObject();
      *(v197 + 16) = v195;
      v198 = v251;
      v193(v251, v188, v303);
      v199 = (v198 + *(v297 + 36));
      *v199 = v196;
      v199[1] = sub_21541E308;
      v199[2] = v197;
      sub_21533FB7C(v198, v292, &qword_27CA5CED8);
      if (ICDebugModeEnabled())
      {
        v200 = sub_2154A0F2C();
        MEMORY[0x28223BE20](v200);
        *(&v232 - 2) = v288;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF00);
        v201 = v192;
        sub_2151ACC5C(&qword_27CA5CF08, &qword_27CA5CF00);
        v202 = v255;
        sub_2154A087C();
        v203 = *(v298 + 16);
        v204 = v277;
        v205 = v287;
        v203(v277, v201, v287);
        v206 = v237;
        v207 = *(v237 + 16);
        v208 = v236;
        v209 = v238;
        v207(v236, v202, v238);
        v210 = v239;
        v203(v239, v204, v205);
        v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF10);
        v207((v210 + *(v211 + 48)), v208, v209);
        v212 = v298;
        v213 = *(v206 + 8);
        v192 = v301;
        v213(v255, v209);
        v214 = *(v212 + 8);
        v214(v192, v205);
        v213(v208, v209);
        v191 = v286;
        v214(v277, v205);
        sub_21533FB7C(v210, v191, &qword_27CA5CE98);
        v215 = 0;
      }

      else
      {
        v215 = 1;
        v212 = v298;
        v205 = v287;
      }

      (*(v252 + 56))(v191, v215, 1, v253);
      v216 = v275;
      sub_215324EEC(v299, v275, &qword_27CA5CEC0);
      v297 = *(v212 + 16);
      (v297)(v192, v296, v205);
      v217 = v205;
      v291 = *(v300 + 16);
      v218 = v274;
      v291(v274, v295, v303);
      v219 = v302;
      sub_215324EEC(v294, v302, &qword_27CA5CED8);
      sub_215324EEC(v292, v293, &qword_27CA5CED8);
      sub_215324EEC(v191, v276, &qword_27CA5CEA8);
      v220 = v216;
      v221 = v254;
      sub_215324EEC(v220, v254, &qword_27CA5CEC0);
      v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CEF8);
      (v297)(v221 + v222[12], v192, v217);
      v129 = v219;
      v223 = v303;
      v291((v221 + v222[16]), v218, v303);
      sub_215324EEC(v219, v221 + v222[20], &qword_27CA5CED8);
      v224 = v293;
      sub_215324EEC(v293, v221 + v222[24], &qword_27CA5CED8);
      v225 = v276;
      sub_215324EEC(v276, v221 + v222[28], &qword_27CA5CEA8);
      sub_2151ADCD8(v286, &qword_27CA5CEA8);
      sub_2151ADCD8(v292, &qword_27CA5CED8);
      sub_2151ADCD8(v294, &qword_27CA5CED8);
      v226 = *(v300 + 8);
      v300 += 8;
      v226(v295, v223);
      v227 = *(v298 + 8);
      v228 = v287;
      v227(v296, v287);
      sub_2151ADCD8(v299, &qword_27CA5CEC0);
      sub_2151ADCD8(v225, &qword_27CA5CEA8);
      sub_2151ADCD8(v224, &qword_27CA5CED8);
      sub_2151ADCD8(v129, &qword_27CA5CED8);
      v226(v274, v223);
      v227(v301, v228);
      sub_2151ADCD8(v275, &qword_27CA5CEC0);
      v128 = v278;
      sub_21533FB7C(v221, v278, &qword_27CA5CE90);
      v127 = 0;
      v99 = v232;
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  sub_2154A0F2C();
  Strong = swift_unknownObjectWeakLoadStrong();
  v106 = v285;
  if (!Strong)
  {
    v130 = 1;
    v131 = v297;
    v132 = v267;
    v108 = v270;
LABEL_15:
    (*(v240 + 56))(v132, v130, 1, v131);

    sub_2154A0E3C();
    v263 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_liveTranscriptionCoordinator;

    v139 = v243;
    sub_21549EC0C();

    v140 = v244;
    sub_21549E1AC();
    v240 = sub_21541DC34(&qword_27CA5CF18, MEMORY[0x277CC8B30]);
    v141 = v246;
    v142 = v245;
    sub_2154A210C();
    v143 = v247;
    sub_2154A212C();
    v235 = sub_21541DC34(&qword_27CA5CF20, MEMORY[0x277CC8C20]);
    v144 = v249;
    v145 = sub_2154A1D1C();
    v146 = *(v248 + 1);
    v233 = v146;
    (v146)(v143, v144);
    (v146)(v141, v144);
    v147 = *(v108 + 1);
    v270 = (v108 + 8);
    v248 = v147;
    v147(v140, v142);
    v148 = *(v269 + 8);
    v269 += 8;
    v234 = v148;
    v148(v139, v264);
    v149 = swift_getKeyPath();
    v150 = swift_allocObject();
    *(v150 + 16) = v145 & 1;
    v151 = (v302 + *(v297 + 36));
    *v151 = v149;
    v151[1] = sub_21541E308;
    v151[2] = v150;
    sub_2154A0F2C();
    v152 = v273;
    sub_21539B7B8(v288, v273);
    v153 = swift_allocObject();
    sub_21541C94C(v152, v153 + v272, type metadata accessor for RecordingView);
    v154 = v293;
    sub_2154A0E3C();

    sub_21549EC0C();

    v155 = v139;
    sub_21549E1AC();
    sub_2154A210C();
    sub_2154A212C();
    LOBYTE(v139) = sub_2154A1D1C();
    v156 = v233;
    (v233)(v143, v144);
    v156(v141, v144);
    v248(v140, v142);
    v234(v155, v264);
    v157 = swift_getKeyPath();
    v158 = swift_allocObject();
    *(v158 + 16) = v139 & 1;
    v159 = v298;
    v160 = (v154 + *(v297 + 36));
    *v160 = v157;
    v160[1] = sub_21541E308;
    v160[2] = v158;
    v161 = *(v159 + 16);
    v162 = v277;
    v163 = v287;
    v161(v277, v268, v287);
    v164 = v258;
    sub_215324EEC(v267, v258, &qword_27CA5CEB8);
    sub_215324EEC(v302, v256, &qword_27CA5CED8);
    v161(v257, v301, v163);
    v165 = v241;
    sub_215324EEC(v154, v241, &qword_27CA5CED8);
    v166 = v242;
    v161(v242, v162, v163);
    v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF28);
    sub_215324EEC(v164, v166 + v167[12], &qword_27CA5CEB8);
    v168 = v256;
    sub_215324EEC(v256, v166 + v167[16], &qword_27CA5CED8);
    v169 = v257;
    v161((v166 + v167[20]), v257, v163);
    v170 = v167[24];
    v171 = v163;
    sub_215324EEC(v165, v166 + v170, &qword_27CA5CED8);
    sub_2151ADCD8(v293, &qword_27CA5CED8);
    v172 = *(v298 + 8);
    v172(v301, v171);
    sub_2151ADCD8(v302, &qword_27CA5CED8);
    sub_2151ADCD8(v267, &qword_27CA5CEB8);
    v172(v268, v171);
    sub_2151ADCD8(v165, &qword_27CA5CED8);
    v172(v169, v171);
    sub_2151ADCD8(v168, &qword_27CA5CED8);
    sub_2151ADCD8(v258, &qword_27CA5CEB8);
    v172(v277, v171);
    v100 = v288;
    sub_21533FB7C(v166, v299, &qword_27CA5CEB0);
    v104 = 0;
    goto LABEL_16;
  }

  v107 = [Strong textView];
  swift_unknownObjectRelease();
  v108 = v270;
  if (!v107)
  {
    v130 = 1;
    v131 = v297;
    v132 = v267;
    goto LABEL_15;
  }

  v109 = v273;
  sub_21539B7B8(v100, v273);
  v110 = (v271 + 7) & 0xFFFFFFFFFFFFFFF8;
  v111 = swift_allocObject();
  sub_21541C94C(v109, v111 + v272, type metadata accessor for RecordingView);
  *(v111 + v110) = v107;
  v112 = v107;
  v113 = v235;
  sub_2154A0E3C();
  result = [*(v266 + v265) attachment];
  if (result)
  {
    v114 = result;
    v115 = [result note];

    if (v115 && (v116 = [v115 isEditable], v115, (v116 & 1) != 0))
    {

      v117 = v243;
      sub_21549EC0C();

      v118 = v244;
      sub_21549E1AC();
      sub_21541DC34(&qword_27CA5CF18, MEMORY[0x277CC8B30]);
      v119 = v246;
      v120 = v245;
      sub_2154A210C();
      v121 = v247;
      sub_2154A212C();
      sub_21541DC34(&qword_27CA5CF20, MEMORY[0x277CC8C20]);
      v122 = v249;
      v123 = sub_2154A1D1C();

      v124 = *(v248 + 1);
      v125 = v121;
      v106 = v285;
      v124(v125, v122);
      v124(v119, v122);
      v108 = v270;
      v126 = v118;
      v113 = v235;
      (*(v270 + 1))(v126, v120);
      (*(v269 + 8))(v117, v264);
    }

    else
    {

      v123 = 1;
      v108 = v270;
    }

    v133 = swift_getKeyPath();
    v134 = swift_allocObject();
    *(v134 + 16) = v123 & 1;
    v135 = v234;
    v106(v234, v113, v303);
    v131 = v297;
    v136 = (v135 + *(v297 + 36));
    *v136 = v133;
    v136[1] = sub_21541E308;
    v136[2] = v134;
    v137 = v233;
    sub_21533FB7C(v135, v233, &qword_27CA5CED8);
    v138 = v137;
    v132 = v267;
    sub_21533FB7C(v138, v267, &qword_27CA5CED8);
    v130 = 0;
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
  return result;
}