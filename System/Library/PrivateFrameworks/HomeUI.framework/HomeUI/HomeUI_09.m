id HomeEnergyAnalyticsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeEnergyAnalyticsHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CF90BFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D090);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_20D563BA8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563AE8();
  (*(v4 + 104))(v6, *MEMORY[0x277D16FD8], v3);
  sub_20D5663C8();
  sub_20D563B78();
  v7 = sub_20D563B98();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  sub_20D563B48();
  swift_allocObject();
  sub_20D563B38();
  MEMORY[0x20F318F80]();
}

uint64_t sub_20CF90E58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D090);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_20D563BA8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563AE8();
  (*(v4 + 104))(v6, *MEMORY[0x277D16FF8], v3);
  sub_20D5663C8();
  sub_20D563B78();
  v7 = sub_20D563B98();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  sub_20D563B48();
  swift_allocObject();
  sub_20D563B38();
  MEMORY[0x20F318F80]();
}

uint64_t sub_20CF910B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D090);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_20D563BA8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 && (a3 != 1280065859 || a4 != 0xE400000000000000) && (sub_20D568BF8() & 1) == 0 && (a3 != 0x4C49414D45 || a4 != 0xE500000000000000) && (sub_20D568BF8() & 1) == 0 && (a3 != 5459283 || a4 != 0xE300000000000000) && (sub_20D568BF8() & 1) == 0 && (a3 != 0xD000000000000010 || 0x800000020D5D17E0 != a4))
  {
    sub_20D568BF8();
  }

  sub_20D563C08();
  sub_20D563AE8();
  (*(v10 + 104))(v12, *MEMORY[0x277D16FB0], v9);
  sub_20D5663C8();
  sub_20D563B78();
  v13 = sub_20D563B98();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  sub_20D563B48();
  swift_allocObject();
  sub_20D563B38();
  MEMORY[0x20F318F80]();
}

uint64_t sub_20CF91444()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D090);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_20D563BA8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563AE8();
  (*(v4 + 104))(v6, *MEMORY[0x277D16FC8], v3);
  sub_20D5663C8();
  sub_20D563B78();
  v7 = sub_20D563B98();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  sub_20D563B48();
  swift_allocObject();
  sub_20D563B38();
  MEMORY[0x20F318F80]();
}

uint64_t sub_20CF916A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D090);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_20D563BA8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563AE8();
  (*(v4 + 104))(v6, *MEMORY[0x277D16FE0], v3);
  sub_20D5663C8();
  sub_20D563B88();
  v7 = sub_20D563B98();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  sub_20D563B48();
  swift_allocObject();
  sub_20D563B38();
  MEMORY[0x20F318F80]();
}

uint64_t sub_20CF91A08(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_20D567DC8();
  if (!v19)
  {
    return sub_20D567AD8();
  }

  v41 = v19;
  v45 = sub_20D568938();
  v32 = sub_20D568948();
  sub_20D5688E8();
  result = sub_20D567D98();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_20D567E18();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_20D568928();
      result = sub_20D567DD8();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double AdaptiveTileLayout.init(maxColumns:strategy:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = *(a2 + 8);
  swift_getTupleTypeMetadata2();
  v11 = sub_20D567AD8();
  v12 = sub_20CF9EAC4(v11, a3, &type metadata for GridFrame, a4);

  *a5 = v12;
  *(a5 + 64) = sub_20D567728();
  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v9;
  }

  sub_20CF93028(a1, v13, v10, v16);
  result = *v16;
  v15 = v16[1];
  *(a5 + 8) = v16[0];
  *(a5 + 24) = v15;
  *(a5 + 40) = v17;
  *(a5 + 48) = v9;
  *(a5 + 56) = v10;
  return result;
}

Swift::Void __swiftcall AdaptiveTileLayout.fitSizesIntoGrid(_:allowingShrinkingToSize:)(Swift::OpaquePointer _, __C::HUGridSize_optional allowingShrinkingToSize)
{
  v19 = *&allowingShrinkingToSize.is_nil;
  rowsDown = allowingShrinkingToSize.value.rowsDown;
  columnsAcross = allowingShrinkingToSize.value.columnsAcross;
  v20 = v2;
  v4 = *(v2 + 16);
  type metadata accessor for HUGridSize(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v15 = *(v6 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v8 = &v14 - v7;
  if (sub_20D567B18())
  {
    v9 = 0;
    v10 = &v8[*(TupleTypeMetadata2 + 48)];
    v16 = (v6 + 16);
    do
    {
      v11 = sub_20D567AF8();
      sub_20D567AA8();
      if (v11)
      {
        (*(v6 + 16))(v8, _._rawValue + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, TupleTypeMetadata2);
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v13 = sub_20D568868();
        if (v15 != 8)
        {
          __break(1u);
          return;
        }

        v21[0] = v13;
        (*v16)(v8, v21, TupleTypeMetadata2);
        swift_unknownObjectRelease();
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_10:
          __break(1u);
          return;
        }
      }

      AdaptiveTileLayout.fitIntoGrid(key:size:allowingShrinkingToSize:)(v8, *v10, v10[1], rowsDown, columnsAcross, v19 & 1, v20, v21);
      (*(*(v4 - 8) + 8))(v8, v4);
      ++v9;
    }

    while (v12 != sub_20D567B18());
  }
}

uint64_t AdaptiveTileLayout.layout(cuttingOffAfterRows:removedFrames:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a2;
  v8 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v71 = &v66 - v10;
  v76 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v89 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v75 = &v66 - v13;
  v14 = swift_getTupleTypeMetadata2();
  v83 = sub_20D568538();
  *&v87 = *(v83 - 8);
  v15 = MEMORY[0x28223BE20](v83);
  v84 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v82 = &v66 - v17;
  v18 = v4[1];
  v100 = *v4;
  v101 = v18;
  v19 = v4[3];
  v102 = v4[2];
  v103 = v19;
  v104 = *(v4 + 8);
  v20 = *(&v100 + 1);
  v96 = *(&v100 + 1);
  v97 = v101;
  v98 = v102;
  v99 = *(&v102 + 1);
  v21 = *(a3 + 24);
  type metadata accessor for AdaptiveTileLayout.BoxGrid();
  if (sub_20CF92A70() <= a1)
  {
    v61 = v103;
    *(a4 + 32) = v102;
    *(a4 + 48) = v61;
    *(a4 + 64) = v104;
    v62 = v101;
    *a4 = v100;
    *(a4 + 16) = v62;
    return (*(*(a3 - 8) + 16))(&v92, &v100, a3);
  }

  else
  {
    v70 = a3;
    v66 = a4;
    v92 = v103;
    LOBYTE(v93) = BYTE8(v103);
    AdaptiveTileLayout.init(maxColumns:strategy:)(v20, &v92, v8, v21, v90);
    v22 = *(v100 + 64);
    v68 = v100 + 64;
    v23 = 1 << *(v100 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v22;
    v67 = (v23 + 63) >> 6;
    v85 = (v76 + 16);
    v88 = (v76 + 32);
    v80 = (v87 + 32);
    v81 = v14 - 8;
    v26 = __OFSUB__(a1, 1);
    v79 = v26;
    v77 = (v76 + 8);
    v78 = a1 - 1;
    v74 = v100;
    result = sub_20D5663C8();
    v28 = 0;
    v29 = v8;
    v30 = v14;
    v69 = v14;
    v31 = v84;
    if (!v25)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v33 = v28;
LABEL_18:
      v36 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v37 = v36 | (v33 << 6);
      v38 = v74;
      v39 = v75;
      v40 = v76;
      (*(v76 + 16))(v75, *(v74 + 48) + *(v76 + 72) * v37, v29);
      v41 = (*(v38 + 56) + 32 * v37);
      v42 = &v31[*(v30 + 48)];
      v43 = *(v40 + 32);
      v44 = *v41;
      v86 = v41[1];
      v87 = v44;
      v43(v31, v39, v29);
      v45 = 0;
      v46 = v86;
      *v42 = v87;
      *(v42 + 1) = v46;
      v35 = v33;
LABEL_19:
      v47 = *(v30 - 8);
      (*(v47 + 56))(v31, v45, 1, v30);
      v48 = v82;
      (*v80)(v82, v31, v83);
      if ((*(v47 + 48))(v48, 1, v30) == 1)
      {

        v63 = v90[3];
        v64 = v66;
        *(v66 + 32) = v90[2];
        *(v64 + 48) = v63;
        *(v64 + 64) = v91;
        v65 = v90[1];
        *v64 = v90[0];
        *(v64 + 16) = v65;
        return result;
      }

      v49 = &v48[*(v30 + 48)];
      v50 = *v49;
      v51 = v49[1];
      v52 = v48;
      v54 = v49[2];
      v53 = v49[3];
      result = (*v88)(v89, v52, v29);
      v55 = v54 - 1;
      if (__OFSUB__(v54, 1))
      {
        break;
      }

      v56 = __OFADD__(v50, v55);
      v57 = v50 + v55;
      if (v56)
      {
        goto LABEL_31;
      }

      if (v79)
      {
        goto LABEL_32;
      }

      if (v78 >= v57)
      {
        v92 = v50;
        v93 = v51;
        v94 = v54;
        v95 = v53;
        v32 = v89;
        sub_20CF93AFC(v89, &v92, v70);
        result = (*v77)(v32, v29);
        v28 = v35;
        v31 = v84;
        if (!v25)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v58 = *(TupleTypeMetadata2 + 48);
        *&v87 = v35;
        v59 = v29;
        v60 = &v71[v58];
        (*v85)(v71, v89, v59);
        *v60 = v50;
        v60[1] = v51;
        v60[2] = v54;
        v60[3] = v53;
        v29 = v59;
        v30 = v69;
        sub_20D567B58();
        sub_20D567B28();
        result = (*v77)(v89, v59);
        v28 = v87;
        v31 = v84;
        if (!v25)
        {
LABEL_11:
          if (v67 <= v28 + 1)
          {
            v34 = v28 + 1;
          }

          else
          {
            v34 = v67;
          }

          v35 = v34 - 1;
          while (1)
          {
            v33 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v33 >= v67)
            {
              v25 = 0;
              v45 = 1;
              goto LABEL_19;
            }

            v25 = *(v68 + 8 * v33);
            ++v28;
            if (v25)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
          break;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  return result;
}

uint64_t AdaptiveTileLayout.fitIntoGrid(key:size:allowingShrinkingToSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v14 = *(v8 + 16);
  v15 = *(v8 + 48);
  v62 = *(v8 + 32);
  v63 = v15;
  v16 = *(v8 + 16);
  v61[0] = *v8;
  v61[1] = v16;
  v17 = *(v8 + 48);
  v55 = v62;
  v56 = v17;
  v64 = *(v8 + 64);
  v57 = *(v8 + 64);
  v53 = v61[0];
  v54 = v14;
  v18 = *(a7 - 8);
  v34 = *(v18 + 16);
  v34(v65, v61, a7);
  v19 = a3;
  sub_20CF937C8(a2, a3, &v58);
  v65[2] = v55;
  v65[3] = v56;
  v66 = v57;
  v65[0] = v53;
  v65[1] = v54;
  v20 = *(v18 + 8);
  result = v20(v65, a7);
  if ((a6 & 1) == 0 && (a2 != a4 || v19 != a5))
  {
    v22 = *(v8 + 16);
    v23 = *(v8 + 48);
    v50 = *(v8 + 32);
    v51 = v23;
    v24 = *(v8 + 16);
    v49[0] = *v8;
    v49[1] = v24;
    v25 = *(v8 + 48);
    v46 = v50;
    v47 = v25;
    v52 = *(v8 + 64);
    v48 = *(v8 + 64);
    v44 = v49[0];
    v45 = v22;
    v34(&v39, v49, a7);
    sub_20CF937C8(a4, a5, &v39);
    v55 = v46;
    v56 = v47;
    v57 = v48;
    v53 = v44;
    v54 = v45;
    result = v20(&v53, a7);
    if (v43 != 1)
    {
      v27 = v39;
      v26 = v40;
      v29 = v41;
      v28 = v42;
      if (v60 & 1) != 0 || (v30 = *(v9 + 56), *&v44 = *(v9 + 48), BYTE8(v44) = v30, result = sub_20CF93A0C(v39, v40, v58, *(&v58 + 1), &v44), (result))
      {
        *&v58 = v27;
        *(&v58 + 1) = v26;
        *&v59 = v29;
        *(&v59 + 1) = v28;
        v60 = 0;
      }
    }
  }

  v31 = v58;
  v32 = v59;
  v33 = v60;
  if ((v60 & 1) == 0)
  {
    v53 = v58;
    v54 = v59;
    result = sub_20CF93AFC(a1, &v53, a7);
  }

  *a8 = v31;
  *(a8 + 16) = v32;
  *(a8 + 32) = v33;
  return result;
}

uint64_t sub_20CF92A70()
{
  sub_20D568538();
  sub_20D567B58();

  return sub_20D567B18();
}

uint64_t sub_20CF92AF0(uint64_t a1)
{
  v63 = 1;
  v2 = *(v1 + 32);
  v56 = a1;
  v55 = *(a1 + 16);
  sub_20D568538();
  v3 = sub_20D567B58();
  result = sub_20D567B18();
  v5 = MEMORY[0x277D84F90];
  if (result)
  {
    v6 = 4;
    v54 = v2;
    do
    {
      v7 = v6 - 4;
      v8 = sub_20D567AF8();
      sub_20D567AA8();
      if (v8)
      {
        v9 = *(v2 + 8 * v6);
        result = sub_20D5663C8();
        v10 = v6 - 3;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        result = sub_20D568868();
        v9 = result;
        v10 = v6 - 3;
        if (__OFADD__(v7, 1))
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }
      }

      v61 = v9;
      MEMORY[0x28223BE20](result);
      v11 = *(v56 + 24);
      v48[2] = v55;
      v48[3] = v11;
      v48[4] = &v63;
      v12 = v5;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C260);
      WitnessTable = swift_getWitnessTable();
      v15 = v13;
      v5 = v12;
      v17 = sub_20CF91A08(sub_20CF9F3DC, v48, v3, v15, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_20CEE8078(0, v12[2] + 1, 1, v12);
      }

      v19 = v5[2];
      v18 = v5[3];
      if (v19 >= v18 >> 1)
      {
        v5 = sub_20CEE8078((v18 > 1), v19 + 1, 1, v5);
      }

      v5[2] = v19 + 1;
      v5[v19 + 4] = v17;
      v2 = v54;
      result = sub_20D567B18();
      ++v6;
    }

    while (v10 != result);
  }

  v53 = v5[2];
  if (v53)
  {
    v20 = 0;
    v21 = *(v52 + 16);
    v48[7] = 0;
    v49 = v21;
    LODWORD(v52) = *(v52 + 24);
    v51 = v5 + 4;
    v22 = MEMORY[0x277D84F90];
    v50 = v5;
    while (v20 < v5[2])
    {
      v23 = v51[v20];
      v24 = 0xE000000000000000;
      v61 = 0;
      v62 = 0xE000000000000000;
      v25 = *(v23 + 16);
      if (v25)
      {
        v55 = v20;
        v56 = v22;
        v26 = v23;
        sub_20D5663C8();
        sub_20CEF44D8();
        v54 = v26;
        v27 = (v26 + 40);
        v28 = (v26 + 40);
        do
        {
          v35 = *v28;
          v28 += 2;
          v34 = v35;
          if (v35)
          {
            v29 = *(v27 - 1);
            v30 = v34;
          }

          else
          {
            v30 = 0xE100000000000000;
            v29 = 32;
          }

          v59 = v29;
          v60 = v30;
          v57 = 32;
          v58 = 0xE100000000000000;
          sub_20D5663C8();
          v31 = sub_20D568608();
          v33 = v32;

          v59 = 32;
          v60 = 0xE100000000000000;
          MEMORY[0x20F31CDB0](v31, v33);

          MEMORY[0x20F31CDB0](32, 0xE100000000000000);
          MEMORY[0x20F31CDB0](v59, v60);

          v27 = v28;
          --v25;
        }

        while (v25);

        v25 = v61;
        v24 = v62;
        v5 = v50;
        v20 = v55;
        v22 = v56;
      }

      sub_20D5663C8();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20CEE7F6C(0, *(v22 + 16) + 1, 1, v22);
        v22 = result;
      }

      v37 = *(v22 + 16);
      v36 = *(v22 + 24);
      if (v37 >= v36 >> 1)
      {
        result = sub_20CEE7F6C((v36 > 1), v37 + 1, 1, v22);
        v22 = result;
      }

      ++v20;
      *(v22 + 16) = v37 + 1;
      v38 = v22 + 16 * v37;
      *(v38 + 32) = v25;
      *(v38 + 40) = v24;
      if (v52)
      {
        goto LABEL_16;
      }

      if (!v49)
      {
        goto LABEL_40;
      }

      if (v20 % v49)
      {
LABEL_16:
      }

      else
      {
        sub_20D5678D8();

        result = sub_20D567978();
        v41 = *(v22 + 16);
        v40 = *(v22 + 24);
        if (v41 >= v40 >> 1)
        {
          v43 = v20;
          v44 = result;
          v45 = v39;
          v46 = sub_20CEE7F6C((v40 > 1), v41 + 1, 1, v22);
          v39 = v45;
          v22 = v46;
          result = v44;
          v20 = v43;
        }

        *(v22 + 16) = v41 + 1;
        v42 = v22 + 16 * v41;
        *(v42 + 32) = result;
        *(v42 + 40) = v39;
      }

      if (v20 == v53)
      {
        goto LABEL_37;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
LABEL_37:
    v61 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EC30);
    sub_20CF76364();
    v47 = sub_20D5677D8();

    return v47;
  }

  return result;
}

uint64_t sub_20CF93028@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (result)
    {
      v8 = sub_20D567AE8();
      *(v8 + 16) = v6;
      bzero((v8 + 32), 8 * v6);
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    sub_20D568538();
    sub_20D567B58();
    result = sub_20D567AD8();
    *a4 = v6;
    *(a4 + 8) = v8;
    *(a4 + 16) = a2;
    *(a4 + 24) = a3 & 1;
    *(a4 + 32) = result;
  }

  return result;
}

uint64_t sub_20CF930DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 8);
  if (v4 < a2)
  {
LABEL_2:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1;
    return result;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v6 + 32);
    v9 = v7 - 1;
    if (v7 != 1)
    {
      if (v7 < 5)
      {
        v10 = 1;
        goto LABEL_11;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v11 = vdupq_n_s64(v8);
      v12 = (v6 + 56);
      v13 = v9 & 0xFFFFFFFFFFFFFFFCLL;
      v14 = v11;
      do
      {
        v11 = vbslq_s8(vcgtq_s64(v11, v12[-1]), v12[-1], v11);
        v14 = vbslq_s8(vcgtq_s64(v14, *v12), *v12, v14);
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      v15 = vbslq_s8(vcgtq_s64(v14, v11), v11, v14);
      v16 = vextq_s8(v15, v15, 8uLL).u64[0];
      v8 = vbsl_s8(vcgtd_s64(v16, v15.i64[0]), *v15.i8, v16);
      if (v9 != (v9 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_11:
        v17 = v7 - v10;
        v18 = (v6 + 8 * v10 + 32);
        do
        {
          v20 = *v18++;
          v19 = v20;
          if (v20 < v8)
          {
            v8 = v19;
          }

          --v17;
        }

        while (v17);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v21 = *(v5 + 16);
  if (__OFADD__(v21, 5))
  {
    goto LABEL_88;
  }

  v22 = 0;
  v23 = *(v3 + 24);
  v24 = v5 + 32;
LABEL_17:
  v25 = v22 + a2;
  v26 = __OFADD__(v22, a2);
  while ((*(v3 + 32) & 1) == 0)
  {
    if (!v23)
    {
      goto LABEL_79;
    }

    if (v23 == -1 && v8 == 0x8000000000000000)
    {
      goto LABEL_84;
    }

    v27 = v8 % v23 + result;
    if (__OFADD__(v8 % v23, result))
    {
      goto LABEL_80;
    }

    v28 = __OFSUB__(v27, 1);
    v29 = v27 - 1;
    if (v28)
    {
      goto LABEL_82;
    }

    if (v29 < v23)
    {
      break;
    }

LABEL_48:
    if (v8 >= v21 + 5)
    {
      goto LABEL_2;
    }

    if (*(v3 + 56))
    {
      v28 = __OFADD__(v22++, 1);
      if (v28)
      {
        goto LABEL_89;
      }

      if (v22 >= v4)
      {
        v22 = 0;
        ++v8;
      }

      goto LABEL_17;
    }

    v36 = *(v3 + 48);
    if (!v36)
    {
      goto LABEL_77;
    }

    if (v8 == 0x8000000000000000 && v36 == -1)
    {
      goto LABEL_83;
    }

    if (__OFSUB__(v36, 1))
    {
      goto LABEL_78;
    }

    v37 = v8 % v36;
    if (v8 % v36 >= v36 - 1)
    {
      v28 = __OFADD__(v22++, 1);
      if (v28)
      {
        goto LABEL_90;
      }

      v28 = __OFSUB__(v8, v37);
      v8 -= v37;
      v38 = v28;
      if (v22 >= v4)
      {
        if (v38)
        {
          goto LABEL_91;
        }

        v28 = __OFADD__(v8, v36);
        v8 += v36;
        if (v28)
        {
          goto LABEL_93;
        }

        v22 = 0;
      }

      else if (v38)
      {
        goto LABEL_92;
      }

      goto LABEL_17;
    }

    ++v8;
  }

  if (v8 < 0 || v22 < 0)
  {
    goto LABEL_48;
  }

  if (v26)
  {
    goto LABEL_81;
  }

  if (v4 < v25)
  {
    goto LABEL_48;
  }

  v30 = v8 + result;
  if (__OFADD__(v8, result))
  {
    goto LABEL_85;
  }

  if (v30 < v8)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v8 == v30)
  {
LABEL_71:
    *a3 = v8;
    *(a3 + 8) = v22;
    *(a3 + 16) = result;
    *(a3 + 24) = a2;
    *(a3 + 32) = 0;
  }

  else
  {
    if (v25 >= v22)
    {
      v31 = v8;
      while (1)
      {
        v32 = v31 + 1;
        v33 = a2;
        v34 = v22;
        if (v22 != v25)
        {
          break;
        }

LABEL_37:
        if (v32 == v30)
        {
          goto LABEL_71;
        }

        if (v32 >= v8)
        {
          ++v31;
          if (v32 < v30)
          {
            continue;
          }
        }

        goto LABEL_76;
      }

      while (v34 < v25)
      {
        if (v31 < v21)
        {
          if (v31 < 0)
          {
            goto LABEL_73;
          }

          if ((v34 & 0x8000000000000000) != 0)
          {
            goto LABEL_74;
          }

          v35 = *(v24 + 8 * v31);
          if (v34 >= *(v35 + 16))
          {
            goto LABEL_75;
          }

          if (*(v35 + 8 * v34 + 32))
          {
            goto LABEL_48;
          }
        }

        ++v34;
        if (!--v33)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
  }

  return result;
}

uint64_t sub_20CF933C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 8);
  if (v4 < a2)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1;
    return result;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 16);
  v7 = *(v6 + 16);
  if (!v7)
  {
    v8 = 0;
    goto LABEL_15;
  }

  v8 = *(v6 + 32);
  v9 = v7 - 1;
  if (v7 == 1)
  {
    goto LABEL_15;
  }

  if (v7 >= 5)
  {
    v10 = v9 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v11 = vdupq_n_s64(v8);
    v12 = (v6 + 56);
    v13 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = v11;
    do
    {
      v11 = vbslq_s8(vcgtq_s64(v11, v12[-1]), v12[-1], v11);
      v14 = vbslq_s8(vcgtq_s64(v14, *v12), *v12, v14);
      v12 += 2;
      v13 -= 4;
    }

    while (v13);
    v15 = vbslq_s8(vcgtq_s64(v14, v11), v11, v14);
    v16 = vextq_s8(v15, v15, 8uLL).u64[0];
    v8 = vbsl_s8(vcgtd_s64(v16, v15.i64[0]), *v15.i8, v16);
    if (v9 == (v9 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = 1;
  }

  v17 = v7 - v10;
  v18 = (v6 + 8 * v10 + 32);
  do
  {
    v20 = *v18++;
    v19 = v20;
    if (v20 < v8)
    {
      v8 = v19;
    }

    --v17;
  }

  while (v17);
LABEL_15:
  v21 = *(v5 + 16);
  v22 = v21 + 5;
  if (!__OFADD__(v21, 5))
  {
    v23 = 0;
    v24 = *(v3 + 24);
    v25 = *(v3 + 32);
    v53 = v5 + 32;
    v46 = v3;
    v47 = result;
    v45 = *(v3 + 8);
    v44 = v24;
    v43 = v25;
    while (1)
    {
LABEL_17:
      v26 = v23 + a2;
      v27 = __OFADD__(v23, a2);
      v50 = 40 * v23 + 32;
      v52 = v23;
      v48 = v27;
      if ((v25 & 1) == 0)
      {
LABEL_21:
        if (!v24)
        {
          goto LABEL_85;
        }

        if (v24 == -1 && v8 == 0x8000000000000000)
        {
          goto LABEL_90;
        }

        v28 = v8 % v24 + result;
        if (__OFADD__(v8 % v24, result))
        {
          goto LABEL_86;
        }

        v29 = __OFSUB__(v28, 1);
        v30 = v28 - 1;
        if (v29)
        {
          goto LABEL_88;
        }

        if (v30 >= v24)
        {
          goto LABEL_50;
        }

        goto LABEL_27;
      }

      while (1)
      {
LABEL_27:
        if ((v8 & 0x8000000000000000) == 0 && (v23 & 0x8000000000000000) == 0)
        {
          if (v27)
          {
            goto LABEL_87;
          }

          if (v4 >= v26)
          {
            v31 = v8 + result;
            if (__OFADD__(v8, result))
            {
              goto LABEL_91;
            }

            if (v31 < v8)
            {
LABEL_92:
              __break(1u);
            }

            else
            {
              if (v8 == v31)
              {
LABEL_76:
                *a3 = v8;
                *(a3 + 8) = v52;
                *(a3 + 16) = v47;
                *(a3 + 24) = a2;
                *(a3 + 32) = 0;
                return result;
              }

              if (v26 >= v52)
              {
                v32 = v8;
                v49 = v8 + result;
                while (1)
                {
                  v33 = v32 + 1;
                  v35 = v50;
                  v34 = a2;
                  v36 = v52;
                  if (v52 != v26)
                  {
                    break;
                  }

LABEL_37:
                  if (v33 == v49)
                  {
                    goto LABEL_76;
                  }

                  if (v33 >= v8)
                  {
                    ++v32;
                    if (v33 < v49)
                    {
                      continue;
                    }
                  }

                  goto LABEL_82;
                }

                while (v36 < v26)
                {
                  if (v32 >= v21)
                  {
                    v56 = 0;
                    v54 = 0u;
                    v55 = 0u;
                  }

                  else
                  {
                    if (v32 < 0)
                    {
                      goto LABEL_79;
                    }

                    if ((v36 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_80;
                    }

                    v37 = *(v53 + 8 * v32);
                    if (v36 >= *(v37 + 16))
                    {
                      goto LABEL_81;
                    }

                    sub_20CEF9178(v37 + v35, &v54, &unk_27C81C7A0);
                    if (*(&v55 + 1))
                    {
                      sub_20CEF928C(&v54, &unk_27C81C7A0);
                      v3 = v46;
                      result = v47;
                      v22 = v21 + 5;
                      v4 = v45;
                      v24 = v44;
                      v25 = v43;
                      v23 = v52;
                      v27 = v48;
                      goto LABEL_50;
                    }
                  }

                  result = sub_20CEF928C(&v54, &unk_27C81C7A0);
                  v35 += 40;
                  ++v36;
                  if (!--v34)
                  {
                    goto LABEL_37;
                  }
                }

                __break(1u);
LABEL_79:
                __break(1u);
LABEL_80:
                __break(1u);
LABEL_81:
                __break(1u);
LABEL_82:
                __break(1u);
LABEL_83:
                __break(1u);
LABEL_84:
                __break(1u);
LABEL_85:
                __break(1u);
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
LABEL_91:
                __break(1u);
                goto LABEL_92;
              }
            }

            __break(1u);
            goto LABEL_94;
          }
        }

LABEL_50:
        if (v8 >= v22)
        {
          *a3 = 0u;
          *(a3 + 16) = 0u;
          *(a3 + 32) = 1;
          return result;
        }

        if (*(v3 + 56))
        {
          break;
        }

        v38 = *(v3 + 48);
        if (!v38)
        {
          goto LABEL_83;
        }

        if (v8 == 0x8000000000000000 && v38 == -1)
        {
          goto LABEL_89;
        }

        if (__OFSUB__(v38, 1))
        {
          goto LABEL_84;
        }

        v39 = v8 % v38;
        if (v8 % v38 >= v38 - 1)
        {
          v29 = __OFADD__(v23++, 1);
          if (v29)
          {
            goto LABEL_96;
          }

          v29 = __OFSUB__(v8, v39);
          v8 -= v39;
          v41 = v29;
          if (v23 >= v4)
          {
            if (v41)
            {
              goto LABEL_98;
            }

            v29 = __OFADD__(v8, v38);
            v8 += v38;
            if (v29)
            {
              goto LABEL_99;
            }

            v23 = 0;
          }

          else if (v41)
          {
            goto LABEL_97;
          }

          goto LABEL_17;
        }

        ++v8;
        if ((v25 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v40 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_95;
      }

      if (v40 < v4)
      {
        ++v23;
      }

      else
      {
        v23 = 0;
      }

      if (v40 >= v4)
      {
        ++v8;
      }
    }
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
  return result;
}

uint64_t sub_20CF937C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = *v3;
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v47 = *(v3 + 8);
  v48 = v6;
  v30 = v5;
  v31 = v47;
  v49 = v5;
  v29 = v7;
  v50 = v7 & 1;
  v28 = v8;
  v51 = v8;
  if (v47 < a2)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1;
    return result;
  }

  v9 = a2;
  v10 = result;
  v11 = *(v6 + 16);
  if (!v11)
  {
    v12 = 0;
    goto LABEL_15;
  }

  v12 = *(v6 + 32);
  v13 = v11 - 1;
  if (v11 == 1)
  {
    goto LABEL_15;
  }

  if (v11 >= 5)
  {
    v14 = v13 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v15 = vdupq_n_s64(v12);
    v16 = (v6 + 56);
    v17 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = v15;
    do
    {
      v15 = vbslq_s8(vcgtq_s64(v15, v16[-1]), v16[-1], v15);
      v18 = vbslq_s8(vcgtq_s64(v18, *v16), *v16, v18);
      v16 += 2;
      v17 -= 4;
    }

    while (v17);
    v19 = vbslq_s8(vcgtq_s64(v18, v15), v15, v18);
    v20 = vextq_s8(v19, v19, 8uLL).u64[0];
    v12 = vbsl_s8(vcgtd_s64(v20, v19.i64[0]), *v19.i8, v20);
    if (v13 == (v13 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = 1;
  }

  v21 = v11 - v14;
  v22 = (v6 + 8 * v14 + 32);
  do
  {
    v24 = *v22++;
    v23 = v24;
    if (v24 < v12)
    {
      v12 = v23;
    }

    --v21;
  }

  while (v21);
LABEL_15:
  v25 = type metadata accessor for AdaptiveTileLayout.BoxGrid();
  result = sub_20CF92A70();
  v26 = result + 5;
  if (__OFADD__(result, 5))
  {
    __break(1u);
  }

  else
  {
    v34 = v12;
    v35 = 0;
    v36 = v10;
    v37 = v9;
    result = sub_20CF97708(&v34, v25);
    v27 = 0;
    if (result)
    {
      while (v12 < v26)
      {
        v34 = v32;
        v35 = v31;
        v36 = v6;
        v37 = v30;
        v38 = v29;
        *v39 = *(v3 + 33);
        *&v39[3] = *(v3 + 36);
        v40 = v28;
        v41 = *(v3 + 48);
        v42 = *(v3 + 64);
        v33[0] = v12;
        v33[1] = v27;
        v33[2] = v10;
        v33[3] = v9;
        sub_20CF97960(v33, &v43);
        v12 = v43;
        v27 = v44;
        v10 = v45;
        v9 = v46;
        v34 = v43;
        v35 = v44;
        v36 = v45;
        v37 = v46;
        result = sub_20CF97708(&v34, v25);
        if ((result & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 1;
    }

    else
    {
LABEL_19:
      *a3 = v12;
      *(a3 + 8) = v27;
      *(a3 + 16) = v10;
      *(a3 + 24) = v9;
      *(a3 + 32) = 0;
    }
  }

  return result;
}

uint64_t sub_20CF93A0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 8) == 1)
  {
    if (result == a3)
    {
      return a2 < a4;
    }

    else
    {
      return result < a3;
    }
  }

  v5 = *a5;
  v6 = floor(result / v5);
  if (v6 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = floor(a3 / v5);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v8 = v6 < v7;
  if (*&v6 == *&v7)
  {
    v8 = a2 < a4;
    if (a2 == a4)
    {
      return result < a3;
    }
  }

  return v8;
}

uint64_t sub_20CF93AFC(uint64_t a1, int64_t *a2, uint64_t a3)
{
  v23 = a3;
  v24 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20D568538();
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = &v19 - v8;
  v11 = a2[1];
  v13 = a2[2];
  v12 = a2[3];
  v14 = *(v5 + 16);
  v19 = *a2;
  v10 = v19;
  v20 = v14;
  v14(v9, v24, v4);
  (*(v5 + 56))(v9, 0, 1, v4);
  v25 = v10;
  v26 = v11;
  v27 = v13;
  v28 = v12;
  type metadata accessor for AdaptiveTileLayout.BoxGrid();
  sub_20CF94EA0(v9, &v25);
  (*(v7 + 8))(v9, v22);
  v16 = v20;
  v15 = v21;
  v17 = v24;
  v20(v21, v24, v4);
  v25 = v19;
  v26 = v11;
  v27 = v13;
  v28 = v12;
  v29 = 0;
  sub_20D567788();
  sub_20D5677A8();
  v16(v15, v17, v4);
  sub_20D567B58();
  return sub_20D567B28();
}

Swift::Bool __swiftcall AdaptiveTileLayout.isValid(position:)(__C::HUGridPosition position)
{
  v2 = position;
  v3 = 0;
  v4 = 0;
  return sub_20CF93DA4(&v2.row) & 1;
}

uint64_t *sub_20CF93DA4(uint64_t *result)
{
  v3 = *result;
  v2 = result[1];
  v4 = result[3];
  if (*(v1 + 24))
  {
    result = 0;
    if (v3 < 0 || v2 < 0)
    {
      return result;
    }

LABEL_15:
    v8 = __OFADD__(v2, v4);
    v11 = v2 + v4;
    if (!v8)
    {
      return (*v1 >= v11);
    }

    goto LABEL_19;
  }

  v5 = *(v1 + 16);
  if (!v5)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v3 == 0x8000000000000000 && v5 == -1)
  {
    goto LABEL_21;
  }

  v7 = result[2];
  v8 = __OFADD__(v3 % v5, v7);
  v9 = v3 % v5 + v7;
  if (v8)
  {
    goto LABEL_18;
  }

  v8 = __OFSUB__(v9, 1);
  v10 = v9 - 1;
  if (v8)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  result = 0;
  if (v10 < v5 && (v3 & 0x8000000000000000) == 0 && (v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t AdaptiveTileLayout.layout(moving:to:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v76 = a5;
  v15 = *(a7 + 16);
  v79 = *(v15 - 8);
  v80 = a1;
  MEMORY[0x28223BE20](a1);
  v75 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_20D568538();
  v78 = *(v74 - 8);
  result = MEMORY[0x28223BE20](v74);
  v19 = &v61 - v18;
  v20 = v8[3];
  v102 = v8[2];
  v103 = v20;
  v104 = *(v8 + 8);
  v21 = v8[1];
  v100 = *v8;
  v101 = v21;
  if (a6)
  {
    result = sub_20D567798();
    if (v97)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v76 = *(&v96 + 1);
    a4 = v96;
  }

  v22 = floor(vcvtd_n_f64_s64(a3, 1uLL));
  v23 = v22 + v22;
  if (COERCE__INT64(fabs(v22 + v22)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = a8;
  v25 = *(&v100 + 1);
  v106 = v101;
  v107 = v102;
  v105 = *(&v100 + 1);
  v26 = *(a7 + 24);
  v77 = type metadata accessor for AdaptiveTileLayout.BoxGrid();
  result = sub_20CF92A70();
  if (__OFSUB__(result, a4))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v27 = a4;
  v73 = v19;
  if (result - a4 >= a2)
  {
    v28 = a2;
  }

  else
  {
    v28 = result - a4;
  }

  sub_20D567798();
  if ((v97 & 1) == 0 && v95 == v28 && (*(&v95 + 1) == v23 ? (v29 = v96 == v27) : (v29 = 0), v29 ? (v30 = *(&v96 + 1) == v76) : (v30 = 0), v30))
  {
    v59 = v103;
    *(v24 + 32) = v102;
    *(v24 + 48) = v59;
    *(v24 + 64) = v104;
    v60 = v101;
    *v24 = v100;
    *(v24 + 16) = v60;
    return (*(*(a7 - 8) + 16))(&v95, &v100, a7);
  }

  else
  {
    v69 = v28;
    v70 = a7;
    v71 = v24;
    *&v95 = 0;
    BYTE8(v95) = 1;
    v31 = AdaptiveTileLayout.init(maxColumns:strategy:)(v25, &v95, v15, v26, &v88);
    v32 = v79;
    v33 = *(v79 + 16);
    v62 = v26;
    v72 = v79 + 16;
    v34 = v15;
    v35 = v73;
    v33(v31);
    v65 = v33;
    v36 = *(v32 + 56);
    v79 = v32 + 56;
    v68 = v36;
    v36(v35, 0, 1, v34);
    v37 = v69;
    *&v95 = v69;
    *(&v95 + 1) = v23;
    v63 = v23;
    v64 = v27;
    v38 = v76;
    *&v96 = v27;
    *(&v96 + 1) = v76;
    sub_20CF94EA0(v35, &v95);
    v39 = *(v78 + 8);
    v78 += 8;
    v67 = v39;
    v39(v35, v74);
    v40 = v80;
    (v33)(v75, v80, v34);
    *&v95 = v37;
    *(&v95 + 1) = v23;
    *&v96 = v27;
    *(&v96 + 1) = v38;
    LOBYTE(v97) = 0;
    v41 = v62;
    v66 = sub_20D567788();
    v42 = sub_20D5677A8();
    v108[0] = v104;
    *&v95 = v104;
    MEMORY[0x28223BE20](v42);
    *(&v61 - 4) = v34;
    *(&v61 - 3) = v41;
    *(&v61 - 2) = v40;
    *(&v61 - 1) = &v100;
    v43 = v34;
    v44 = sub_20D567B58();
    type metadata accessor for HUGridSize(255);
    swift_bridgeObjectRetain_n();
    swift_getTupleTypeMetadata2();
    swift_getWitnessTable();
    v45 = sub_20D5679D8();
    (*(*(v44 - 8) + 8))(v108, v44);
    v109.value.rowsDown = 0;
    v109.value.columnsAcross = 0;
    v109.is_nil = 1;
    v46 = v70;
    AdaptiveTileLayout.fitSizesIntoGrid(_:allowingShrinkingToSize:)(v45, v109);

    sub_20CF9510C(v40, v77);
    v93[2] = v90;
    v93[3] = v91;
    v62 = v92;
    v94 = v92;
    v93[0] = v88;
    v93[1] = v89;
    v84 = v90;
    v85 = v91;
    v86 = v92;
    v82 = v88;
    v83 = v89;
    v81[0] = v37;
    v81[1] = v63;
    v81[2] = v64;
    v81[3] = v38;
    v47 = *(v46 - 8);
    (*(v47 + 16))(&v95, v93, v46);
    sub_20CF957F4(v81, v87);
    v97 = v84;
    v98 = v85;
    v99 = v86;
    v95 = v82;
    v96 = v83;
    (*(v47 + 8))(&v95, v46);
    v48 = v87[0];
    v49 = v87[1];
    v50 = v87[2];
    v51 = v87[3];
    v52 = v73;
    v53 = v40;
    v54 = v65;
    (v65)(v73, v53, v43);
    v68(v52, 0, 1, v43);
    *&v82 = v48;
    *(&v82 + 1) = v49;
    *&v83 = v50;
    *(&v83 + 1) = v51;
    sub_20CF94EA0(v52, &v82);
    v67(v52, v74);
    (v54)(v75, v80, v43);
    *&v82 = v48;
    *(&v82 + 1) = v49;
    *&v83 = v50;
    *(&v83 + 1) = v51;
    LOBYTE(v84) = 0;
    sub_20D5677A8();

    v55 = v108[0];
    v92 = v108[0];
    v56 = v91;
    v57 = v71;
    *(v71 + 32) = v90;
    *(v57 + 48) = v56;
    *(v57 + 64) = v55;
    v58 = v89;
    *v57 = v88;
    *(v57 + 16) = v58;
  }

  return result;
}

void sub_20CF94564(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = (a2 + a4);
  if (__OFADD__(a2, a4))
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v7 = a2;
  if (v8 < a2)
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v8 == a2)
  {
    return;
  }

  v5 = a3;
  if (__OFADD__(a3, a5))
  {
    goto LABEL_83;
  }

  v32 = (a3 + a5);
  if ((a3 + a5) >= a3)
  {
    v30 = v6[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_7;
    }

    goto LABEL_85;
  }

LABEL_84:
  __break(1u);
LABEL_85:
  v30 = sub_20CF3B7D4(v30);
LABEL_7:
  v6[1] = v30;
  v33 = v30 + 32;
  v28 = v7 + 1;
  v29 = v6;
  v26 = v8;
  v27 = v5;
  do
  {
    if (v7 >= v8)
    {
      goto LABEL_80;
    }

    v31 = (v7 + 1);
    v8 = v32;
    if (v32 != v5)
    {
      v9 = *v6;
      v10 = 8 * *v6;
      v11 = v27;
      while (v11 < v8)
      {
        if (v11 < v9)
        {
          v13 = v6[4];
          v14 = v13[2];
          if (a1)
          {
            if (__OFSUB__(v31, v14))
            {
              goto LABEL_68;
            }

            if (v31 - v14 >= 1)
            {
              v6 = MEMORY[0x277D84F90];
              if (v9 < 0)
              {
                goto LABEL_75;
              }

              v8 = (v28 - v14);
              do
              {
                if (v9)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C81C3E8);
                  v5 = sub_20D567AE8();
                  v5[2] = v9;
                  bzero(v5 + 4, v10);
                }

                else
                {
                  v5 = v6;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v13 = sub_20CEE7E00(0, v13[2] + 1, 1, v13);
                }

                v16 = v13[2];
                v15 = v13[3];
                if (v16 >= v15 >> 1)
                {
                  v13 = sub_20CEE7E00((v15 > 1), v16 + 1, 1, v13);
                }

                v13[2] = v16 + 1;
                v13[v16 + 4] = v5;
                v8 = (v8 - 1);
              }

              while (v8);
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              if (v7 < 0)
              {
                goto LABEL_69;
              }
            }

            else
            {
              v13 = sub_20CF3B7FC(v13);
              if (v7 < 0)
              {
                goto LABEL_69;
              }
            }

            if (v7 >= v13[2])
            {
              goto LABEL_70;
            }

            v8 = v13 + 4;
            v5 = v13[v7 + 4];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v13[v7 + 4] = v5;
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v11 & 0x8000000000000000) != 0)
              {
                goto LABEL_71;
              }
            }

            else
            {
              v5 = sub_20CF3B7E8();
              v8[v7] = v5;
              if ((v11 & 0x8000000000000000) != 0)
              {
                goto LABEL_71;
              }
            }

            if (v11 >= v5[2])
            {
              goto LABEL_72;
            }

            v18 = &v5[v11];
            v5 = v18[4];
            v18[4] = a1;
            v19 = a1;

            v6 = v29;
            v29[4] = v13;
            if (v11 >= *(v30 + 2))
            {
              goto LABEL_73;
            }

            v12 = *&v33[8 * v11];
            v20 = v13[2];
            if (v20 < v12)
            {
              goto LABEL_74;
            }

            if (v12 < v20)
            {
              v21 = *&v33[8 * v11];
              while ((v12 & 0x8000000000000000) == 0)
              {
                v22 = v8[v21];
                if (v11 >= *(v22 + 16))
                {
                  goto LABEL_66;
                }

                if (!*(v22 + 8 * v11 + 32))
                {
                  v12 = v21;
                  goto LABEL_13;
                }

                if (v20 == ++v21)
                {
                  v12 = v13[2];
                  goto LABEL_13;
                }
              }

              __break(1u);
LABEL_66:
              __break(1u);
              break;
            }

LABEL_13:
            v8 = v32;
            *&v33[8 * v11] = v12;
          }

          else if (v7 < v14)
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              if (v7 < 0)
              {
                goto LABEL_76;
              }
            }

            else
            {
              v13 = sub_20CF3B7FC(v13);
              if (v7 < 0)
              {
                goto LABEL_76;
              }
            }

            if (v7 >= v13[2])
            {
              goto LABEL_77;
            }

            v5 = v13[v7 + 4];
            v23 = swift_isUniquelyReferenced_nonNull_native();
            v13[v7 + 4] = v5;
            if (v23)
            {
              v8 = v32;
              if ((v11 & 0x8000000000000000) != 0)
              {
                goto LABEL_62;
              }
            }

            else
            {
              v5 = sub_20CF3B7E8();
              v13[v7 + 4] = v5;
              v8 = v32;
              if ((v11 & 0x8000000000000000) != 0)
              {
LABEL_62:
                __break(1u);
                goto LABEL_63;
              }
            }

            if (v11 >= v5[2])
            {
              goto LABEL_78;
            }

            v24 = &v5[v11];
            v25 = v24[4];
            v24[4] = 0;

            v6 = v29;
            v29[4] = v13;
            if (v11 >= *(v30 + 2))
            {
              goto LABEL_79;
            }

            if (v7 < *&v33[8 * v11])
            {
              *&v33[8 * v11] = v7;
            }
          }
        }

        if (++v11 == v8)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

LABEL_8:
    v5 = v27;
    ++v28;
    ++v7;
    v8 = v26;
  }

  while (v31 != v26);
LABEL_63:
  v6[1] = v30;
}

uint64_t sub_20CF94984(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = result;
  v9 = a2 + a4;
  if (__OFADD__(a2, a4))
  {
    goto LABEL_87;
  }

  if (v9 < a2)
  {
    goto LABEL_88;
  }

  if (v9 != a2)
  {
    v5 = a3;
    v8 = a3 + a5;
    if (__OFADD__(a3, a5))
    {
      goto LABEL_89;
    }

    if (v8 < a3)
    {
      goto LABEL_90;
    }

    v7 = a2;
    v28 = *(v6 + 8);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_91;
    }

    while (1)
    {
      *(v6 + 8) = v28;
      v30 = v28 + 32;
      v26 = v6;
      v23 = v5;
      v24 = v8;
      v22 = v9;
      while (1)
      {
        if (v7 >= v9)
        {
          goto LABEL_86;
        }

        v25 = v7 + 1;
        if (v8 != v5)
        {
          break;
        }

LABEL_9:
        v7 = v25;
        v9 = v22;
        v5 = v23;
        if (v25 == v22)
        {
          return result;
        }
      }

      v9 = v7;
      v10 = *v6;
      *(v6 + 8) = v28;
      v11 = v23;
      v29 = v7;
      while (v11 < v8)
      {
        if (v11 < v10)
        {
          sub_20CEF9178(v27, &v31, &unk_27C81C7A0);
          if (*(&v32 + 1))
          {
            v34[0] = v31;
            v34[1] = v32;
            v35 = v33;
            v12 = *(v6 + 32);
            v13 = v12[2];
            v6 = v25 - v13;
            if (__OFSUB__(v25, v13))
            {
              goto LABEL_73;
            }

            if (v6 >= 1)
            {
              if (v10 < 0)
              {
                goto LABEL_81;
              }

              for (i = 0; i != v6; ++i)
              {
                v33 = 0;
                v31 = 0u;
                v32 = 0u;
                if (v10)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C7A0);
                  v8 = sub_20D567AE8();
                  *(v8 + 16) = v10;
                  v15 = v8 + 32;
                  v16 = v10;
                  do
                  {
                    sub_20CEF9178(&v31, v15, &unk_27C81C7A0);
                    v15 += 40;
                    --v16;
                  }

                  while (v16);
                }

                else
                {
                  v8 = MEMORY[0x277D84F90];
                }

                sub_20CEF928C(&v31, &unk_27C81C7A0);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v12 = sub_20CEE8618(0, v12[2] + 1, 1, v12);
                }

                v7 = v12[2];
                v17 = v12[3];
                if (v7 >= v17 >> 1)
                {
                  v12 = sub_20CEE8618((v17 > 1), v7 + 1, 1, v12);
                }

                v12[2] = v7 + 1;
                v12[v7 + 4] = v8;
              }
            }

            sub_20CEF9064(v34, &v31);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_20CF3B838(v12);
            }

            v5 = v29;
            v9 = 40;
            if ((v29 & 0x8000000000000000) != 0)
            {
              goto LABEL_74;
            }

            if (v29 >= v12[2])
            {
              goto LABEL_75;
            }

            v7 = (v12 + 4);
            v8 = v12[v29 + 4];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v6 = (v12 + 4);
            v12[v29 + 4] = v8;
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v11 < 0)
              {
                goto LABEL_76;
              }
            }

            else
            {
              v8 = sub_20CF3B824(v8);
              *(v7 + 8 * v29) = v8;
              if (v11 < 0)
              {
                goto LABEL_76;
              }
            }

            if (v11 >= *(v8 + 16))
            {
              goto LABEL_77;
            }

            sub_20CF9F268(&v31, v8 + 40 * v11 + 32);
            *(v26 + 32) = v12;
            v7 = v28;
            if (v11 >= *(v28 + 16))
            {
              goto LABEL_78;
            }

            v5 = *(v30 + 8 * v11);
            v9 = v12[2];
            if (v9 < v5)
            {
              goto LABEL_79;
            }

            if (v5 < v9)
            {
              v8 = *(v30 + 8 * v11);
              while (1)
              {
                if (v5 < 0)
                {
                  goto LABEL_69;
                }

                if (v8 >= v12[2])
                {
                  goto LABEL_70;
                }

                v19 = *(v6 + 8 * v8);
                if (v11 >= *(v19 + 16))
                {
                  goto LABEL_71;
                }

                sub_20CEF9178(v19 + 40 * v11 + 32, &v31, &unk_27C81C7A0);
                v7 = *(&v32 + 1);
                sub_20CEF928C(&v31, &unk_27C81C7A0);
                if (!v7)
                {
                  break;
                }

                if (v9 == ++v8)
                {
                  v5 = v9;
LABEL_60:
                  v6 = v26;
                  v7 = v28;
                  goto LABEL_61;
                }
              }

              v5 = v8;
              goto LABEL_60;
            }

            v6 = v26;
LABEL_61:
            result = sub_20CEF90C0(v34);
            v9 = v29;
            v8 = v24;
            if (v11 >= *(v7 + 16))
            {
              goto LABEL_80;
            }

            *(v30 + 8 * v11) = v5;
            *(v6 + 8) = v7;
          }

          else
          {
            result = sub_20CEF928C(&v31, &unk_27C81C7A0);
            v20 = *(v6 + 32);
            if (v9 < v20[2])
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v6 = 40;
                if (v9 < 0)
                {
                  goto LABEL_82;
                }
              }

              else
              {
                v20 = sub_20CF3B838(v20);
                v6 = 40;
                if (v9 < 0)
                {
                  goto LABEL_82;
                }
              }

              if (v9 >= v20[2])
              {
                goto LABEL_83;
              }

              v5 = (v20 + 4);
              v8 = v20[v9 + 4];
              v21 = swift_isUniquelyReferenced_nonNull_native();
              v20[v9 + 4] = v8;
              if (v21)
              {
                if (v11 < 0)
                {
                  goto LABEL_68;
                }
              }

              else
              {
                v8 = sub_20CF3B824(v8);
                *(v5 + 8 * v9) = v8;
                if (v11 < 0)
                {
LABEL_68:
                  __break(1u);
LABEL_69:
                  __break(1u);
LABEL_70:
                  __break(1u);
LABEL_71:
                  __break(1u);
                  break;
                }
              }

              if (v11 >= *(v8 + 16))
              {
                goto LABEL_84;
              }

              result = sub_20CF9F1F8(v27, v8 + 40 * v11 + 32);
              v6 = v26;
              *(v26 + 32) = v20;
              if (v11 >= *(v28 + 16))
              {
                goto LABEL_85;
              }

              v8 = v24;
              if (v9 < *(v30 + 8 * v11))
              {
                *(v30 + 8 * v11) = v9;
                *(v26 + 8) = v28;
              }
            }
          }
        }

        if (++v11 == v8)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
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
LABEL_91:
      result = sub_20CF3B7D4(v28);
      v28 = result;
    }
  }

  return result;
}

int64_t sub_20CF94EA0(int64_t result, int64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v4 = *a2 + v3;
  if (__OFADD__(*a2, v3))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < v2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 != v4)
  {
    v5 = a2[1];
    v12 = a2[3];
    v6 = v5 + v12;
    if (__OFADD__(v5, v12))
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v6 < v5)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v7 = result;
    while (v2 < v4)
    {
      if (v5 != v6)
      {
        v8 = type metadata accessor for AdaptiveTileLayout.BoxGrid();
        v9 = v12;
        v10 = v5;
        do
        {
          v11 = v10 + 1;
          result = sub_20CF97088(v7, v2, v10, v8);
          v10 = v11;
          --v9;
        }

        while (v9);
      }

      if (++v2 == v4)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_20CF94F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (sub_20D5677E8())
  {
    type metadata accessor for HUGridSize(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a3, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    (*(*(a2 - 8) + 16))(a3, a1, a2);
    result = sub_20D567798();
    if (v12)
    {
      __break(1u);
    }

    else
    {
      type metadata accessor for HUGridSize(255);
      v8 = swift_getTupleTypeMetadata2();
      v9 = (a3 + *(v8 + 48));
      *v9 = v10;
      v9[1] = v11;
      return (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
    }
  }

  return result;
}

uint64_t sub_20CF9510C(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v49 = a2;
  v3 = *(*(a2 + 16) - 8);
  MEMORY[0x28223BE20](a1);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v5;
  v6 = sub_20D568538();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v45 - v9;
  v52 = *(v6 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v51 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v70 = &v45 - v17;
  MEMORY[0x28223BE20](v16);
  v71 = &v45 - v18;
  v67 = v2 + 4;
  v66 = sub_20D567B58();
  result = sub_20D567B18();
  if (result < 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v56 = v15;
  v20 = v70;
  if (result)
  {
    v62 = *v2;
    if ((v62 & 0x8000000000000000) == 0)
    {
      v68 = 0;
      v60 = (v3 + 16);
      v65 = (v3 + 56);
      v21 = (v52 + 16);
      v22 = (v3 + 48);
      v47 = (v3 + 32);
      v63 = (v52 + 8);
      v54 = (v7 + 8);
      v55 = (v3 + 8);
      v50 = v52 + 40;
      v58 = (v3 + 48);
      v59 = (v52 + 16);
      v57 = v6;
      v46 = result;
      while (!v62)
      {
LABEL_5:
        result = v46;
        if (++v68 == v46)
        {
          return result;
        }
      }

      v23 = 0;
      while (1)
      {
        sub_20D567B88();
        v25 = v71;
        sub_20D567B88();

        v26 = v72;
        (*v60)(v20, v61, v72);
        v64 = *v65;
        v64(v20, 0, 1, v26);
        v27 = *(TupleTypeMetadata2 + 48);
        v28 = *v21;
        (*v21)(v10, v25, v6);
        v28(&v10[v27], v20, v6);
        v29 = v6;
        v30 = v10;
        v31 = *v22;
        if ((*v22)(v30, 1, v26) == 1)
        {
          break;
        }

        v34 = v72;
        v35 = v56;
        v28(v56, v30, v29);
        if (v31(&v30[v27], 1, v34) == 1)
        {
          v24 = *v63;
          (*v63)(v70, v29);
          v24(v71, v29);
          (*v55)(v35, v34);
          v22 = v58;
          v21 = v59;
LABEL_9:
          (*v54)(v30, TupleTypeMetadata2);
          v10 = v30;
          v6 = v57;
          goto LABEL_10;
        }

        v36 = v48;
        (*v47)(v48, &v30[v27], v34);
        v53 = sub_20D5677E8();
        v37 = *v55;
        (*v55)(v36, v34);
        v38 = *v63;
        (*v63)(v70, v29);
        v38(v71, v29);
        v37(v35, v34);
        v38(v30, v29);
        v22 = v58;
        v21 = v59;
        v10 = v30;
        v6 = v29;
        if (v53)
        {
          goto LABEL_16;
        }

LABEL_10:
        ++v23;
        v20 = v70;
        if (v62 == v23)
        {
          goto LABEL_5;
        }
      }

      v32 = *v63;
      (*v63)(v20, v29);
      v32(v71, v29);
      if (v31(&v30[v27], 1, v72) == 1)
      {
        v33 = v57;
        v32(v30, v57);
        v10 = v30;
        v6 = v33;
LABEL_16:
        v39 = v51;
        v64(v51, 1, 1, v72);
        sub_20D567B58();
        v40 = v67;
        sub_20D567AC8();
        v41 = *v40;
        v42 = v68;
        sub_20CF9EA70(v68, v41);
        v43 = v41 + 8 * v42;
        v21 = v59;
        sub_20D567AC8();
        sub_20CF9EA70(v23, *(v43 + 32));
        v44 = *(v43 + 32);
        v22 = v58;
        (*(v52 + 40))(v44 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v23, v39, v6);
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_19;
  }

  return result;
}

uint64_t sub_20CF957F4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v5 = *result;
  v4 = *(result + 8);
  v6 = *(result + 16);
  v7 = *(result + 24);
  v8 = *(v2 + 48);
  v15[2] = *(v2 + 32);
  v15[3] = v8;
  v16 = *(v2 + 64);
  v9 = *(v2 + 16);
  v15[0] = *v2;
  v15[1] = v9;
  do
  {
    v10 = __OFSUB__(v5--, 1);
    if (v10)
    {
      __break(1u);
      goto LABEL_8;
    }

    v11 = v5;
    v12 = v4;
    v13 = v6;
    v14 = v7;
    result = sub_20CF97A28(&v11, v15);
  }

  while ((result & 1) != 0);
  while (1)
  {
    v10 = __OFSUB__(v4--, 1);
    if (v10)
    {
      break;
    }

    v11 = v5 + 1;
    v12 = v4;
    v13 = v6;
    v14 = v7;
    result = sub_20CF97A28(&v11, v15);
    if ((result & 1) == 0)
    {
      *a2 = v5 + 1;
      a2[1] = v4 + 1;
      a2[2] = v6;
      a2[3] = v7;
      return result;
    }
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t AdaptiveTileLayout.getReorderedKeys()(uint64_t a1)
{
  v112 = a1;
  v2 = *(a1 + 16);
  v96 = sub_20D568538();
  v110 = *(v96 - 8);
  v3 = MEMORY[0x28223BE20](v96);
  v97 = &v82 - v4;
  v109 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v93 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v99 = &v82 - v7;
  v8 = v1[1];
  v108 = *v1;
  v10 = v1[2];
  v9 = v1[3];
  v11 = *(v1 + 32);
  v144[0] = *(v1 + 33);
  *(v144 + 3) = *(v1 + 9);
  v13 = v1[5];
  v12 = v1[6];
  v14 = *(v1 + 56);
  v143[0] = *(v1 + 57);
  *(v143 + 7) = v1[8];
  v15 = swift_allocObject();
  v16 = sub_20D567728();
  v85 = v13;
  v86 = v15;
  *(v15 + 16) = v16;
  v107 = (v15 + 16);
  v133 = v8;
  v134 = v10;
  *&v83 = v10;
  *(&v83 + 1) = v9;
  v135 = v9;
  v84 = v11;
  v136 = v11 & 1;
  v137 = v13;
  v17 = MEMORY[0x277D84F90];
  *&v128 = sub_20CEF4B04(MEMORY[0x277D84F90]);
  v132 = v17;
  v88 = v14;
  v87 = v12;
  if (v14)
  {
    v12 = 0;
  }

  if (v8 < 0)
  {
    goto LABEL_52;
  }

  v19 = v8;
  v20 = MEMORY[0x277D84F90];
  v90 = v19;
  if (v19)
  {
    v21 = sub_20D567AE8();
    *(v21 + 16) = v90;
    bzero((v21 + 32), 8 * v90);
    v19 = v90;
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v22 = v97;
  v23 = v112;
  v24 = 0;
  v25 = 0;
  v111 = 0;
  v112 = 0;
  *(&v128 + 1) = v19;
  *&v129 = v21;
  *(&v129 + 1) = v12;
  v100 = (v109 + 48);
  LOBYTE(v130) = v88 & 1;
  v92 = (v109 + 16);
  v91 = (v109 + 8);
  v94 = (v110 + 8);
  v95 = (v109 + 32);
  *(&v130 + 1) = v20;
  *&v131 = v87;
  BYTE8(v131) = v88 & 1;
  *&v18 = 134218240;
  v89 = v18;
  v26 = 1;
  v98 = v2;
  while (1)
  {
    v101 = v111;
    v102 = v112;
    v106 = v24;
    v27 = *v107;
    v28 = sub_20D567B18();
    if (v28 >= sub_20D567778())
    {
      v125 = v130;
      v126 = v131;
      v127 = v132;
      v123 = v128;
      v124 = v129;
      sub_20CEF928C(&v123, &unk_27C81DDA0);
      sub_20D5663C8();
LABEL_49:

      return v27;
    }

    v140 = v130;
    v141 = v131;
    v142 = v132;
    v138 = v128;
    v139 = v129;
    sub_20CF933C4(1, 1, &v120);
    if (v122)
    {
      v125 = v130;
      v126 = v131;
      v127 = v132;
      v123 = v128;
      v124 = v129;
      sub_20CEF928C(&v123, &unk_27C81DDA0);
      sub_20CF96440(v86, v2);
      *&v113 = v108;
      *(&v113 + 1) = v90;
      v114 = v83;
      LOBYTE(v115) = v84;
      *(&v115 + 1) = v144[0];
      HIDWORD(v115) = *(v144 + 3);
      v116 = v85;
      v117 = v87;
      v118 = v88;
      *v119 = v143[0];
      *&v119[7] = *(v143 + 7);
      v80 = v27;
      goto LABEL_48;
    }

    v103 = v25;
    LODWORD(v110) = v26;
    v29 = *(&v120 + 1);
    v24 = v120;
    v111 = *(&v121 + 1);
    v112 = v121;
    v30 = v142;
    v109 = type metadata accessor for AdaptiveTileLayout.BoxGrid();
    sub_20CF96D0C(v24, v29, v109, v22);
    if ((*v100)(v22, 1, v2) == 1)
    {
      v31 = v29;
      (*v94)(v22, v96);
      if (qword_27C81A2C8 != -1)
      {
        swift_once();
      }

      v32 = qword_27C838270;
      sub_20D567EA8();
      sub_20D565858();
      v33 = sub_20D567EC8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = v23;
        v35 = swift_slowAlloc();
        *v35 = v89;
        *(v35 + 4) = v24;
        *(v35 + 12) = 2048;
        *(v35 + 14) = v31;
        _os_log_impl(&dword_20CEB6000, v32, v33, "AdaptiveTileLayout: position %ld,%ld", v35, 0x16u);
        v36 = v35;
        v23 = v34;
        MEMORY[0x20F31FC70](v36, -1, -1);
      }

      v37 = sub_20D567EC8();
      if (os_log_type_enabled(v32, v37))
      {
        v38 = v23;
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_20CEB6000, v32, v37, "AdaptiveTileLayout: filling space and continuing", v39, 2u);
        v40 = v39;
        v23 = v38;
        MEMORY[0x20F31FC70](v40, -1, -1);
      }

      *&v113 = 1;
      sub_20D5687F8();
      sub_20CEF9064(&v123, &v113);
      v25 = v31;
      v41 = v31;
      v43 = v111;
      v42 = v112;
      sub_20CF94984(&v113, v24, v41, v112, v111);
      sub_20CEF928C(&v113, &unk_27C81C7A0);
      v44 = v128;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v113 = v44;
      sub_20CEEF8F0(v24, v25, v42, v43, &v123, isUniquelyReferenced_nonNull_native);
      *&v128 = v113;
      sub_20CEF9064(&v123, &v113);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_20CEE83B0(0, *(v30 + 2) + 1, 1, v30);
      }

      v2 = v98;
      v47 = *(v30 + 2);
      v46 = *(v30 + 3);
      if (v47 >= v46 >> 1)
      {
        v30 = sub_20CEE83B0((v46 > 1), v47 + 1, 1, v30);
      }

      sub_20CEF90C0(&v123);
      *(v30 + 2) = v47 + 1;
      v48 = &v30[40 * v47];
      v49 = v115;
      v50 = v114;
      *(v48 + 2) = v113;
      *(v48 + 3) = v50;
      *(v48 + 8) = v49;
      v132 = v30;
      if (v110)
      {
        goto LABEL_8;
      }

      goto LABEL_41;
    }

    v51 = v2;
    v52 = v29;
    v53 = v22;
    v54 = v23;
    (*v95)(v99, v53, v51);
    sub_20D568B08();
    sub_20D567798();
    if (v122)
    {
      goto LABEL_53;
    }

    v104 = v120;
    v105 = v121;
    sub_20CEF9064(&v123, &v113);
    sub_20CF94984(&v113, v104, *(&v104 + 1), v105, *(&v105 + 1));
    sub_20CEF928C(&v113, &unk_27C81C7A0);
    v55 = v128;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    *&v113 = v55;
    v58 = sub_20CEED894(&v123);
    v59 = *(v55 + 16);
    v60 = (v57 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      break;
    }

    v62 = v57;
    if (*(v55 + 24) >= v61)
    {
      if (v56)
      {
        v65 = v113;
        if (v57)
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_20CF9CD1C();
        v65 = v113;
        if (v62)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      sub_20CF98A04(v61, v56);
      v63 = sub_20CEED894(&v123);
      if ((v62 & 1) != (v64 & 1))
      {
        goto LABEL_54;
      }

      v58 = v63;
      v65 = v113;
      if (v62)
      {
LABEL_32:
        v66 = (v65[7] + 32 * v58);
        v67 = v105;
        *v66 = v104;
        v66[1] = v67;
        goto LABEL_36;
      }
    }

    v65[(v58 >> 6) + 8] |= 1 << v58;
    sub_20CEF9064(&v123, v65[6] + 40 * v58);
    v68 = (v65[7] + 32 * v58);
    v69 = v105;
    *v68 = v104;
    v68[1] = v69;
    v70 = v65[2];
    v71 = __OFADD__(v70, 1);
    v72 = v70 + 1;
    if (v71)
    {
      goto LABEL_51;
    }

    v65[2] = v72;
LABEL_36:
    *&v128 = v65;
    sub_20CEF9064(&v123, &v113);
    v23 = v54;
    v25 = v52;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_20CEE83B0(0, *(v30 + 2) + 1, 1, v30);
    }

    v22 = v97;
    v2 = v98;
    v74 = *(v30 + 2);
    v73 = *(v30 + 3);
    if (v74 >= v73 >> 1)
    {
      v30 = sub_20CEE83B0((v73 > 1), v74 + 1, 1, v30);
    }

    sub_20CEF90C0(&v123);
    *(v30 + 2) = v74 + 1;
    v75 = &v30[40 * v74];
    v76 = v115;
    v77 = v114;
    *(v75 + 2) = v113;
    *(v75 + 3) = v77;
    *(v75 + 8) = v76;
    v132 = v30;
    v78 = v99;
    (*v92)(v93, v99, v2);
    sub_20D567B58();
    sub_20D567B28();
    (*v91)(v78, v2);
    if (v110)
    {
      goto LABEL_8;
    }

LABEL_41:
    if (v106 == v24 && v103 == v25 && v102 == v112 && v101 == v111)
    {
LABEL_45:
      v125 = v130;
      v126 = v131;
      v127 = v132;
      v123 = v128;
      v124 = v129;
      sub_20CEF928C(&v123, &unk_27C81DDA0);
      v79 = v86;
      sub_20CF96440(v86, v2);
      *&v113 = v108;
      *(&v113 + 1) = v90;
      v114 = v83;
      LOBYTE(v115) = v84;
      *(&v115 + 1) = v144[0];
      HIDWORD(v115) = *(v144 + 3);
      v116 = v85;
      v117 = v87;
      v118 = v88;
      *v119 = v143[0];
      *&v119[7] = *(v143 + 7);
      swift_beginAccess();
      v80 = *(v79 + 16);
LABEL_48:
      v27 = sub_20CF968A0(v80, v23);
      goto LABEL_49;
    }

LABEL_8:
    v26 = 0;
    if (sub_20CF92A70() < v24)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = sub_20D568C68();
  __break(1u);
  return result;
}

uint64_t sub_20CF96440(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  if (qword_27C81A2C8 != -1)
  {
    swift_once();
  }

  sub_20D567EA8();
  sub_20D565858();
  sub_20D567EA8();
  sub_20D565858();
  swift_beginAccess();
  v10 = *(a1 + 16);
  sub_20D5663C8();
  if (!sub_20D567B18())
  {
LABEL_19:

    sub_20D567EA8();
    return sub_20D565858();
  }

  v11 = 0;
  v24 = (v4 + 32);
  v25 = (v4 + 16);
  v23 = xmmword_20D5BC410;
  v22 = v10;
  while (1)
  {
    v17 = sub_20D567AF8();
    sub_20D567AA8();
    if (v17)
    {
      (*(v4 + 16))(v9, v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, a2);
      v18 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    result = sub_20D568868();
    if (v21 != 8)
    {
      break;
    }

    *&v28 = result;
    (*v25)(v9, &v28, a2);
    swift_unknownObjectRelease();
    v18 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_13:
    v27 = v18;
    v26 = sub_20D567EA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C620);
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    (*v24)(v7, v9, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DED0);
    if (swift_dynamicCast())
    {
      __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
      v10 = v22;
      v12 = sub_20D568BB8();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_1(&v28);
    }

    else
    {
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
      sub_20CEF928C(&v28, &unk_27C81DED8);
      v12 = 0;
      v14 = 0;
    }

    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_20CED4498();
    v15 = 0x6972637365646E69;
    if (v14)
    {
      v15 = v12;
    }

    v16 = 0xED0000656C626162;
    if (v14)
    {
      v16 = v14;
    }

    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
    sub_20D565858();

    ++v11;
    if (v27 == sub_20D567B18())
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20CF968A0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v42 = sub_20D568538();
  v6 = *(v42 - 8);
  v7 = MEMORY[0x28223BE20](v42);
  v9 = &v31 - v8;
  v10 = *(v5 - 8);
  v11 = MEMORY[0x28223BE20](v7);
  v39 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v38 = &v31 - v14;
  MEMORY[0x28223BE20](v13);
  v43 = &v31 - v15;
  v16 = *v2;
  v17 = *(v2 + 3);
  v49 = *(v2 + 1);
  v50 = v17;
  v51 = v2[5];
  v48 = a1;
  v18 = sub_20D567B58();
  v19 = *(a2 + 24);
  sub_20D5663C8();
  swift_getWitnessTable();
  v37 = v18;
  v20 = v19;
  result = sub_20D567D88();
  v47 = a1;
  v48 = result;
  if ((v49 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
  }

  else
  {
    if (v49)
    {
      v32 = v49;
      v22 = (v10 + 48);
      v35 = (v10 + 16);
      v40 = (v10 + 8);
      v41 = (v10 + 32);
      v23 = (v6 + 8);
      v46 = v20;
      v44 = type metadata accessor for AdaptiveTileLayout.BoxGrid();
      sub_20D5663C8();
      v45 = 0;
      v24 = v43;
      v36 = v16;
      v33 = (v6 + 8);
      v34 = v9;
      while (1)
      {
        result = sub_20CF92A70();
        if (result < 0)
        {
          __break(1u);
          goto LABEL_20;
        }

        v25 = result;
        if (result)
        {
          break;
        }

LABEL_4:
        if (++v45 == v32)
        {
          goto LABEL_18;
        }
      }

      v26 = 0;
      while (1)
      {
        sub_20CF96D0C(v26, v45, v44, v9);
        if ((*v22)(v9, 1, v5) == 1)
        {
          (*v23)(v9, v42);
        }

        else
        {
          (*v41)(v24, v9, v5);
          if (sub_20D567D68())
          {
            (*v40)(v24, v5);
          }

          else
          {
            v27 = *v35;
            (*v35)(v39, v24, v5);
            sub_20D567D78();
            v28 = v38;
            sub_20D567D48();
            v29 = *v40;
            (*v40)(v28, v5);
            v27(v28, v43, v5);
            v23 = v33;
            v24 = v43;
            sub_20D567B28();
            v29(v24, v5);
            v9 = v34;
          }
        }

        a1 = v47;
        v30 = sub_20D567B18();
        if (v30 >= sub_20D567778())
        {
          break;
        }

        if (v25 == ++v26)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_20D5663C8();
    }

LABEL_18:

    return a1;
  }

  return result;
}

uint64_t sub_20CF96D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 16);
  sub_20D568538();
  sub_20D567B58();
  if (sub_20D567B18() <= a1 || *v4 <= a2)
  {
    v10 = *(*(v8 - 8) + 56);

    return v10(a4, 1, 1, v8);
  }

  else
  {
    sub_20D567B88();
    sub_20D567B88();
  }
}

uint64_t sub_20CF96E30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = a2;
  v7 = sub_20D568538();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = *(a3 - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  (*(v8 + 16))(v11, a1, v7);
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    result = (*(v8 + 8))(v11, v7);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    (*(v12 + 32))(v17, v11, a3);
    (*(v12 + 16))(v15, v17, a3);
    v19 = sub_20D567858();
    v20 = v21;
    v22 = v27;
    v23 = *v27;
    v24 = sub_20D5678D8();
    result = (*(v12 + 8))(v17, a3);
    if (v24 <= v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = v24;
    }

    *v22 = v25;
  }

  *a4 = v19;
  a4[1] = v20;
  return result;
}

int64_t sub_20CF97088(uint64_t a1, int64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v58 = a4;
  v9 = *(a4 + 16);
  v10 = sub_20D568538();
  v11 = MEMORY[0x28223BE20](v10);
  v63 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v53 - v17;
  v19 = *(v9 - 1);
  result = MEMORY[0x28223BE20](v16);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v5;
  if (*v5 > a3)
  {
    v59 = v5;
    v60 = a2;
    v57 = v23;
    v25 = v21;
    (*(v21 + 16))(v18, a1, v10);
    v61 = *(v19 + 48);
    v62 = v19 + 48;
    if (v61(v18, 1, v9) == 1)
    {
      (*(v25 + 8))(v18, v10);
      v26 = v59;
      v18 = sub_20D567B58();
      result = sub_20D567B18();
      v27 = v60;
      if (result <= v60)
      {
        return result;
      }

      sub_20D567B58();
      sub_20D567AC8();
      v28 = v26[4];
      sub_20CF9EA70(v27, v28);
      v29 = v28 + 8 * v27;
      sub_20D567AC8();
      sub_20CF9EA70(a3, *(v29 + 32));
      result = (*(v25 + 24))(*(v29 + 32) + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * a3, a1, v10);
      if ((a3 & 0x8000000000000000) == 0)
      {
        v18 = v26[1];
        if (*(v18 + 2) > a3)
        {
          if (*&v18[8 * a3 + 32] <= v27)
          {
            return result;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            goto LABEL_8;
          }

          goto LABEL_37;
        }

LABEL_36:
        __break(1u);
LABEL_37:
        result = sub_20CF3B7D4(v18);
        v18 = result;
LABEL_8:
        v30 = v59;
        if (*(v18 + 2) <= a3)
        {
          __break(1u);
        }

        else
        {
          *&v18[8 * a3 + 32] = v60;
          v30[1] = v18;
        }

        return result;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v56 = v19;
    (*(v19 + 32))(v57, v18, v9);
    v31 = (v60 + 1);
    if (__OFADD__(v60, 1))
    {
      __break(1u);
    }

    else
    {
      v55 = v25;
      v18 = v59[4];
      v64 = sub_20D567B58();
      v32 = sub_20D567B18();
      v33 = &v31[-v32];
      if (!__OFSUB__(v31, v32))
      {
        v54 = a3;
        if (v33 >= 1)
        {
          v34 = *(v56 + 56);
          v35 = (v55 + 8);
          do
          {
            v34(v15, 1, 1, v9);
            v36 = sub_20CF9F2D8(v15, v24, v10);
            (*v35)(v15, v10);
            v65 = v36;
            sub_20D567B58();
            sub_20D567B28();
            --v33;
          }

          while (v33);
        }

        v37 = v56;
        v31 = v9;
        (*(v56 + 16))(v15, v57, v9);
        (*(v37 + 56))(v15, 0, 1, v9);
        v38 = v64;
        sub_20D567B58();
        sub_20D567AC8();
        v40 = v59;
        v39 = v60;
        v41 = v59[4];
        sub_20CF9EA70(v60, v41);
        v18 = (v41 + 8 * v39);
        sub_20D567AC8();
        a3 = v54;
        sub_20CF9EA70(v54, *(v18 + 4));
        v42 = v10;
        (*(v55 + 40))(*(v18 + 4) + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * a3, v15, v10);
        v60 = v31;
        if ((a3 & 0x8000000000000000) == 0)
        {
          v43 = v40[1];
          if (*(v43 + 16) > a3)
          {
            v31 = v38;
            v18 = *(v43 + 8 * a3 + 32);
            v44 = v40[2];
            v45 = *(v40 + 24);
            v46 = v40[4];
            v65 = v24;
            v66 = v43;
            v67 = v44;
            v68 = v45;
            v69 = v46;
            v47 = sub_20CF92A70();
            if (v47 >= v18)
            {
              v48 = v47;
              v53 = v43;
              if (v18 < sub_20CF92A70())
              {
                v49 = (v55 + 8);
                do
                {
                  sub_20D567B88();
                  v50 = v63;
                  sub_20D567B88();

                  v51 = v61(v50, 1, v60);
                  (*v49)(v50, v42);
                  if (v51 == 1)
                  {
                    break;
                  }

                  if (v48 == v18)
                  {
                    return (*(v56 + 8))(v57, v60);
                  }

                  ++v18;
                }

                while (v18 < sub_20CF92A70());
              }

              v31 = v53;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_24;
              }

              goto LABEL_33;
            }

LABEL_32:
            __break(1u);
LABEL_33:
            v31 = sub_20CF3B7D4(v31);
LABEL_24:
            v52 = v59;
            result = (*(v56 + 8))(v57, v60);
            if (*(v31 + 2) > a3)
            {
              *&v31[8 * a3 + 32] = v18;
              v52[1] = v31;
              return result;
            }

            __break(1u);
            goto LABEL_35;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_20CF97708(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v15[0] = *a1;
  v15[1] = v5;
  v15[2] = v7;
  v15[3] = v6;
  result = sub_20CF93DA4(v15);
  if (result)
  {
    LOBYTE(v15[0]) = 0;
    v9 = __OFADD__(v4, v7);
    v10 = v4 + v7;
    if (v9)
    {
      __break(1u);
    }

    else if (v10 >= v4)
    {
      if (v4 == v10)
      {
        return LOBYTE(v15[0]);
      }

      if (__OFADD__(v5, v6))
      {
        goto LABEL_20;
      }

      if (v5 + v6 < v5)
      {
LABEL_21:
        __break(1u);
        return result;
      }

      while (v4 < v10)
      {
        v11 = v4 + 1;
        v12 = v6;
        v13 = v5;
        while (v12)
        {
          v14 = v13 + 1;
          result = sub_20CF97808(v4, v13, v15, v2, *(a2 + 16));
          --v12;
          v13 = v14;
          if (result)
          {
            return LOBYTE(v15[0]);
          }
        }

        ++v4;
        if (v11 == v10)
        {
          return LOBYTE(v15[0]);
        }
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_19;
  }

  return 1;
}

BOOL sub_20CF97808(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_20D568538();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = type metadata accessor for AdaptiveTileLayout.BoxGrid();
  sub_20CF96D0C(a1, a2, v13, v12);
  v14 = (*(*(a5 - 8) + 48))(v12, 1, a5) != 1;
  (*(v10 + 8))(v12, v9);
  *a3 = v14;
  return v14;
}

uint64_t sub_20CF97960@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(v2 + 8);
  if (*(v2 + 56) == 1)
  {
    v7 = __OFADD__(v4++, 1);
    if (v7)
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v4 < v6)
    {
      goto LABEL_27;
    }

    v7 = __OFADD__(v3++, 1);
    if (!v7)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  v8 = *(v2 + 48);
  if (!v8)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v3 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_31;
  }

  if (__OFSUB__(v8, 1))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v10 = v3 % v8;
  if (v3 % v8 < v8 - 1)
  {
    v7 = __OFADD__(v3++, 1);
    if (!v7)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  v7 = __OFADD__(v4++, 1);
  if (v7)
  {
    goto LABEL_32;
  }

  v7 = __OFSUB__(v3, v10);
  v3 -= v10;
  v11 = v7;
  if (v4 < v6)
  {
    if (v11)
    {
      __break(1u);
      goto LABEL_24;
    }

LABEL_27:
    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
    return result;
  }

LABEL_24:
  if (v11)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v7 = __OFADD__(v3, v8);
  v3 += v8;
  if (!v7)
  {
LABEL_26:
    v4 = 0;
    goto LABEL_27;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_20CF97A28(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a2 + 24);
  v14 = *(a2 + 8);
  v15 = v6;
  v16 = *(a2 + 40);
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  if (sub_20CF93DA4(&v10))
  {
    v7 = type metadata accessor for AdaptiveTileLayout.BoxGrid();
    v10 = v2;
    v11 = v3;
    v12 = v4;
    v13 = v5;
    v8 = sub_20CF97708(&v10, v7) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL static AdaptiveTileLayoutStrategy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t AdaptiveTileLayoutStrategy.hash(into:)()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x20F31E200](1);
  }

  return MEMORY[0x20F31E200](v1);
}

uint64_t AdaptiveTileLayoutStrategy.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_20D568D48();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x20F31E200](1);
    v3 = v1;
  }

  MEMORY[0x20F31E200](v3);
  return sub_20D568D98();
}

uint64_t sub_20CF97BC0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_20D568D48();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x20F31E200](1);
    v3 = v1;
  }

  MEMORY[0x20F31E200](v3);
  return sub_20D568D98();
}

uint64_t sub_20CF97C20()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x20F31E200](1);
  }

  return MEMORY[0x20F31E200](v1);
}

uint64_t sub_20CF97C68()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_20D568D48();
  if (v2)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x20F31E200](1);
  }

  MEMORY[0x20F31E200](v1);
  return sub_20D568D98();
}

BOOL sub_20CF97CC8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

unint64_t sub_20CF97D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D5677B8();

  return sub_20CF97D60(a1, v6, a2, a3);
}

unint64_t sub_20CF97D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_20D5677E8();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_20CF97EE8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C2B0);
  result = sub_20D568AB8();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      v33 = v22[1];
      v34 = *v22;
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = sub_20D5683E8();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 32 * v15);
      *v16 = v34;
      v16[1] = v33;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_20CF98158(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C308);
  v37 = a2;
  result = sub_20D568AB8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
        sub_20D5663C8();
        sub_20D5663C8();
      }

      sub_20D568D48();
      sub_20D5678C8();
      result = sub_20D568D98();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_20CF98440(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DEE8);
  v36 = a2;
  result = sub_20D568AB8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      sub_20D567838();
      sub_20D568D48();
      sub_20D5678C8();
      v25 = sub_20D568D98();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_20CF9872C(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_20D568AB8();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 32 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        sub_20CED43FC(v27, v38);
        sub_20D5663C8();
      }

      sub_20D568D48();
      sub_20D5678C8();
      result = sub_20D568D98();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 32 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

uint64_t sub_20CF98A04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C210);
  result = sub_20D568AB8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v41 = *(v24 + 32);
        v39 = v25;
        v40 = v26;
      }

      else
      {
        sub_20CEF9064(v24, &v39);
      }

      v27 = (*(v5 + 56) + 32 * v23);
      v37 = v27[1];
      v38 = *v27;
      result = sub_20D5687D8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v39;
      v18 = v40;
      *(v16 + 32) = v41;
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = (*(v7 + 56) + 32 * v15);
      *v19 = v38;
      v19[1] = v37;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_20CF98CAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DE50);
  v35 = a2;
  result = sub_20D568AB8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
        swift_unknownObjectRetain();
      }

      sub_20D567838();
      sub_20D568D48();
      sub_20D5678C8();
      v24 = sub_20D568D98();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v34;
      v12 = v36;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_20CF98F74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DEC8);
  v35 = a2;
  result = sub_20D568AB8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        sub_20D5663C8();
        v25 = v24;
      }

      sub_20D568D48();
      sub_20D5678C8();
      result = sub_20D568D98();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_20CF99218(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DE48);
  v39 = a2;
  result = sub_20D568AB8();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 24 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(*(v5 + 56) + 8 * v20);
      if ((v39 & 1) == 0)
      {
        v26 = v24;
        sub_20D5663C8();
      }

      sub_20D568D48();
      if (v22 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v22;
      }

      MEMORY[0x20F31E230](*&v27);
      if (v23 == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v23;
      }

      MEMORY[0x20F31E230](*&v28);
      sub_20D568D68();
      if (v24)
      {
        v29 = v24;
        sub_20D568408();
      }

      result = sub_20D568D98();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_41;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_41:
  *v3 = v7;
  return result;
}

uint64_t sub_20CF99524(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BFB0);
  result = sub_20D568AB8();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_20D5683E8();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_20CF9978C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DEC0);
  v34 = a2;
  result = sub_20D568AB8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        sub_20D5663C8();
        swift_unknownObjectRetain();
      }

      sub_20D568D48();
      sub_20D5678C8();
      result = sub_20D568D98();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_20CF99A34(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_20D563818();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v49 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v39 - v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C190);
  v45 = a2;
  result = sub_20D568AB8();
  v50 = result;
  if (*(v10 + 16))
  {
    v40 = v2;
    v12 = 0;
    v13 = (v10 + 64);
    v14 = 1 << *(v10 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v10 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v10;
    v43 = v6;
    v46 = (v6 + 32);
    v18 = v50 + 64;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_15:
      v26 = *(v10 + 48);
      v47 = *(v43 + 72);
      v27 = v47 * (v23 | (v12 << 6));
      if (v45)
      {
        v28 = *v46;
        v29 = v44;
        (*v46)(v44, v26 + v27, v5);
      }

      else
      {
        v28 = *v41;
        v29 = v44;
        (*v41)(v44, v26 + v27, v5);
      }

      v28(v49, *(v10 + 56) + v27, v5);
      v30 = v50;
      sub_20CF9F0E0(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
      result = sub_20D5677B8();
      v31 = -1 << *(v30 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = v50;
      v21 = v47 * v19;
      v22 = *v46;
      (*v46)((*(v50 + 48) + v47 * v19), v29, v5);
      result = (v22)(*(v20 + 56) + v21, v49, v5);
      ++*(v20 + 16);
      v10 = v42;
      v16 = v48;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v50;
  return result;
}

uint64_t sub_20CF99E80(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID(0);
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81DEB0);
  v38 = a2;
  result = sub_20D568AB8();
  v10 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v35 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v36 + 72);
      v24 = *(v8 + 48) + v23 * v22;
      if (v38)
      {
        sub_20CF9F190(v24, v7, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
      }

      else
      {
        sub_20CF9F128(v24, v7, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
      }

      v25 = *(*(v8 + 56) + 8 * v22);
      sub_20D568D48();
      ControlCenterModuleConfiguration.ElementID.hash(into:)();
      MEMORY[0x20F31E200](*&v7[*(v37 + 20)]);
      result = sub_20D568D98();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_20CF9F190(v7, *(v10 + 48) + v23 * v18, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
      v8 = v35;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_20CF9A1F8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DEA8);
  v40 = a2;
  result = sub_20D568AB8();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v3;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    v41 = v8;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v39 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v40)
      {
        sub_20CF9F190(v25, v7, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
      }

      else
      {
        sub_20CF9F128(v25, v7, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
      }

      v26 = v7;
      v27 = *(*(v41 + 56) + 8 * v23);
      sub_20D568D48();
      v28 = v26;
      ControlCenterModuleConfiguration.ElementID.hash(into:)();
      result = sub_20D568D98();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_20CF9F190(v28, *(v11 + 48) + v24 * v19, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
      *(*(v11 + 56) + 8 * v19) = v27;
      v7 = v28;
      ++*(v11 + 16);
      v10 = v41;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v10 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_20CF9A570(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_20D563818();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C1B0);
  v39 = a2;
  result = sub_20D568AB8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
        swift_unknownObjectRetain();
      }

      sub_20CF9F0E0(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
      result = sub_20D5677B8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_20CF9A960(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_20D568AB8();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v3;
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(v6 + 56);
      v22 = *(*(v6 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v36)
      {
        sub_20CEC80B0(v23, v37);
      }

      else
      {
        sub_20CED43FC(v23, v37);
        v24 = v22;
      }

      sub_20D567838();
      sub_20D568D48();
      sub_20D5678C8();
      v25 = sub_20D568D98();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_20CEC80B0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v6 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_34:
  *v4 = v8;
  return result;
}

uint64_t sub_20CF9AC28(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DEA0);
  result = sub_20D568AB8();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_20CEC80B0(v21, v32);
      }

      else
      {
        sub_20CED43FC(v21, v32);
        v22 = v20;
      }

      result = sub_20D5683E8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_20CEC80B0(v32, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_20CF9AEA0(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = sub_20D564518();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D563818();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81DE90);
  v47 = a2;
  result = sub_20D568AB8();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_20CF9F0E0(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
      result = sub_20D5677B8();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_20CF9B348(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = sub_20D563CF8();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D564868();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81DE80);
  v47 = a2;
  result = sub_20D568AB8();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_20CF9F0E0(&qword_27C81C060, MEMORY[0x277D16B10]);
      result = sub_20D5677B8();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_20CF9B7F0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_20D563FC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81DE70);
  v39 = a2;
  result = sub_20D568AB8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
        sub_20D5663C8();
      }

      sub_20CF9F0E0(&qword_27C81C070, MEMORY[0x277D15558]);
      result = sub_20D5677B8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_20CF9BBCC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DE58);
  v35 = a2;
  result = sub_20D568AB8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        v25 = v23;
        sub_20D5663C8();
      }

      sub_20D568D48();
      MEMORY[0x20F31E200](v22);
      sub_20D567838();
      sub_20D5678C8();

      result = sub_20D568D98();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_20CF9BE94(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81DE60);
  v39 = a2;
  result = sub_20D568AB8();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      if (v39)
      {
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v5 + 56) + 72 * v20;
        v42 = *v22;
        v44 = *(v22 + 24);
        v43 = *(v22 + 32);
        v40 = *(v22 + 40);
        v41 = *(v22 + 48);
        v45 = *(v22 + 56);
        v46 = *(v22 + 16);
        v47 = *(v22 + 64);
      }

      else
      {
        v23 = *(*(v5 + 48) + 8 * v20);
        v24 = *(v5 + 56) + 72 * v20;
        v25 = *(v24 + 64);
        v27 = *(v24 + 16);
        v26 = *(v24 + 32);
        v50 = *(v24 + 48);
        v49[0] = *v24;
        v49[1] = v27;
        v49[2] = v26;
        v51 = v25;
        v45 = BYTE8(v50);
        v46 = v27;
        v47 = v25;
        v44 = *(&v27 + 1);
        v43 = v26;
        v40 = *(&v26 + 1);
        v41 = v50;
        v42 = v49[0];
        v21 = v23;
        sub_20CEF9178(v49, v48, &qword_27C81C370);
      }

      sub_20D567838();
      sub_20D568D48();
      sub_20D5678C8();
      v28 = sub_20D568D98();

      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v49[0]) = v43;
      v48[0] = v45;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 72 * v15;
      *v16 = v42;
      *(v16 + 16) = v46;
      *(v16 + 24) = v44;
      *(v16 + 32) = v43;
      *(v16 + 40) = v40;
      *(v16 + 48) = v41;
      *(v16 + 56) = v45;
      *(v16 + 64) = v47;
      ++*(v7 + 16);
      v5 = v38;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_20CF9C238(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  *(a7[6] + 8 * result) = a2;
  v7 = (a7[7] + 32 * result);
  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t sub_20CF9C284(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_20CF9C2D4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_20CF9C318(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_20CEC80B0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_20CF9C384(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = a7[6] + 40 * result;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  v9 = (a7[7] + 32 * result);
  *v9 = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  v10 = a7[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v12;
  }

  return result;
}

unint64_t sub_20CF9C3E4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_20CF9C42C(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5, double a6)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v6 = a4[6] + 24 * result;
  *v6 = a5;
  *(v6 + 8) = a6;
  *(v6 + 16) = a2;
  *(a4[7] + 8 * result) = a3;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

uint64_t sub_20CF9C47C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_20D563818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_20CF9C558(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_20D563818();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_20CF9C610(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_20CEC80B0(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_20CF9C678(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 72 * result;
  *(v4 + 64) = *(a3 + 64);
  v5 = *(a3 + 48);
  *(v4 + 32) = *(a3 + 32);
  *(v4 + 48) = v5;
  v6 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v6;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

id sub_20CF9C6D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C2B0);
  v2 = *v0;
  v3 = sub_20D568AA8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = (*(v2 + 56) + 32 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 32 * v17);
        *v22 = v20;
        v22[1] = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_20CF9C840()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C308);
  v2 = *v0;
  v3 = sub_20D568AA8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
        sub_20D5663C8();
        result = sub_20D5663C8();
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_20CF9C9E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DEE8);
  v2 = *v0;
  v3 = sub_20D568AA8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_20CF9CB68(uint64_t *a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v5 = *v3;
  v6 = sub_20D568AA8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_20CED43FC(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
        result = sub_20D5663C8();
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_20CF9CD1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C210);
  v2 = *v0;
  v3 = sub_20D568AA8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        result = sub_20CEF9064(*(v2 + 48) + 40 * v17, v25);
        v18 = (*(v2 + 56) + 32 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = *v18;
        v21 = v18[1];
        v22 = v26;
        v23 = v25[1];
        *v19 = v25[0];
        *(v19 + 16) = v23;
        *(v19 + 32) = v22;
        v24 = (*(v4 + 56) + 32 * v17);
        *v24 = v20;
        v24[1] = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_20CF9CEB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DE50);
  v2 = *v0;
  v3 = sub_20D568AA8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_20CF9D01C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DEC8);
  v2 = *v0;
  v3 = sub_20D568AA8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_20D5663C8();
        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_20CF9D188()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DE48);
  v2 = *v0;
  v3 = sub_20D568AA8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 24 * v17;
        *v21 = *v18;
        *(v21 + 16) = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        v22 = v19;
        result = sub_20D5663C8();
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_20CF9D304()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BFB0);
  v2 = *v0;
  v3 = sub_20D568AA8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_20CF9D464()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DEC0);
  v2 = *v0;
  v3 = sub_20D568AA8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_20D5663C8();
        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_20CF9D5D4()
{
  v1 = v0;
  v34 = sub_20D563818();
  v38 = *(v34 - 8);
  v2 = MEMORY[0x28223BE20](v34);
  v36 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v35 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C190);
  v5 = *v0;
  v6 = sub_20D568AA8();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v37 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v20 = v38;
        v21 = *(v38 + 72) * (v17 | (v11 << 6));
        v22 = *(v38 + 16);
        v24 = v34;
        v23 = v35;
        v22(v35, *(v5 + 48) + v21, v34);
        v25 = v36;
        v22(v36, *(v5 + 56) + v21, v24);
        v26 = v5;
        v27 = v37;
        v28 = *(v20 + 32);
        v28(*(v37 + 48) + v21, v23, v24);
        v29 = *(v27 + 56);
        v5 = v26;
        result = (v28)(v29 + v21, v25, v24);
        v15 = v39;
      }

      while (v39);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v37;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_20CF9D914(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v36 = a4;
  v6 = v4;
  v7 = a1(0);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v34 = &v32 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = *v4;
  v10 = sub_20D568AA8();
  v11 = v10;
  if (*(v9 + 16))
  {
    v32 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v37 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = *(v9 + 64);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    v33 = v9;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v16 << 6);
        v27 = v34;
        v28 = *(v35 + 72) * v26;
        v29 = v36;
        sub_20CF9F128(*(v9 + 48) + v28, v34, v36);
        v30 = *(*(v9 + 56) + 8 * v26);
        v31 = v37;
        result = sub_20CF9F190(v27, *(v37 + 48) + v28, v29);
        *(*(v31 + 56) + 8 * v26) = v30;
        v9 = v33;
      }

      while (v21);
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v22)
      {

        v6 = v32;
        v11 = v37;
        goto LABEL_21;
      }

      v25 = *(v13 + 8 * v16);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

char *sub_20CF9DB4C()
{
  v1 = v0;
  v33 = sub_20D563818();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C1B0);
  v3 = *v0;
  v4 = sub_20D568AA8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;
        result = swift_unknownObjectRetain();
        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_20CF9DDE0(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_20D568AA8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
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
        sub_20CED43FC(*(v3 + 56) + 32 * v18, v20);
        *(*(v5 + 48) + 8 * v18) = v19;
        sub_20CEC80B0(v20, (*(v5 + 56) + 32 * v18));
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

      v17 = *(v3 + 64 + 8 * v9);
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

id sub_20CF9DF50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DEA0);
  v2 = *v0;
  v3 = sub_20D568AA8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        sub_20CED43FC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_20CEC80B0(v19, (*(v4 + 56) + 32 * v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_20CF9E148(uint64_t (*a1)(void), uint64_t (*a2)(void, __n128), uint64_t *a3)
{
  v6 = v3;
  v47 = a1(0);
  v50 = *(v47 - 8);
  v7 = MEMORY[0x28223BE20](v47);
  v46 = &v36 - v8;
  v45 = a2(0, v7);
  v49 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v36 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v10 = *v3;
  v11 = sub_20D568AA8();
  v12 = v11;
  if (*(v10 + 16))
  {
    result = (v11 + 64);
    v14 = (v10 + 64);
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    v36 = v6;
    v37 = v10 + 64;
    if (v12 != v10 || result >= &v14[8 * v15])
    {
      result = memmove(result, v14, 8 * v15);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v48 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = v49 + 16;
    v42 = v21;
    v39 = v49 + 32;
    v40 = v50 + 16;
    v38 = v50 + 32;
    v43 = v10;
    v23 = v44;
    v22 = v45;
    if (v20)
    {
      do
      {
        v24 = __clz(__rbit64(v20));
        v51 = (v20 - 1) & v20;
LABEL_14:
        v27 = v24 | (v16 << 6);
        v28 = v49;
        v29 = *(v49 + 72) * v27;
        (*(v49 + 16))(v23, *(v10 + 48) + v29, v22);
        v30 = v50;
        v31 = *(v50 + 72) * v27;
        v32 = v46;
        v33 = v47;
        (*(v50 + 16))(v46, *(v10 + 56) + v31, v47);
        v34 = v48;
        (*(v28 + 32))(*(v48 + 48) + v29, v23, v22);
        v35 = *(v34 + 56);
        v10 = v43;
        result = (*(v30 + 32))(v35 + v31, v32, v33);
        v21 = v42;
        v20 = v51;
      }

      while (v51);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v36;
        v12 = v48;
        goto LABEL_18;
      }

      v26 = *(v37 + 8 * v16);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v51 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v12;
  }

  return result;
}

char *sub_20CF9E4A4()
{
  v1 = v0;
  v33 = sub_20D563FC8();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81DE70);
  v3 = *v0;
  v4 = sub_20D568AA8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;
        result = sub_20D5663C8();
        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_20CF9E724()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DE58);
  v2 = *v0;
  v3 = sub_20D568AA8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
        v23 = v19;
        result = sub_20D5663C8();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_20CF9E894()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81DE60);
  v2 = *v0;
  v3 = sub_20D568AA8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 8 * v17;
        v19 = *(*(v2 + 48) + 8 * v17);
        v17 *= 72;
        v20 = *(v2 + 56) + v17;
        v22 = *(v20 + 16);
        v21 = *(v20 + 32);
        v23 = *(v20 + 48);
        v34 = *(v20 + 64);
        v33 = v23;
        v30 = *v20;
        v31 = v22;
        v32 = v21;
        *(*(v4 + 48) + v18) = v19;
        v24 = *(v4 + 56) + v17;
        *v24 = v30;
        v25 = v31;
        v26 = v32;
        v27 = v33;
        *(v24 + 64) = v34;
        *(v24 + 32) = v26;
        *(v24 + 48) = v27;
        *(v24 + 16) = v25;
        v28 = v19;
        result = sub_20CEF9178(&v30, v29, &qword_27C81C370);
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_20CF9EA70(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_20CF9EAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_20D567B18())
  {
    sub_20D568AE8();
    v13 = sub_20D568AD8();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_20D567B18();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_20D567AF8())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_20D568868();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_20CF97D04(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}