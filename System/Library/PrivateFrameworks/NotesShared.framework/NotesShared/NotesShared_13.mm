uint64_t _s11NotesShared21NoteEditActivityEventV7ParentsO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v48 = &v45 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v49 = &v45 - v11;
  MEMORY[0x28223BE20](v10);
  v50 = &v45 - v12;
  v13 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = (&v45 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43138);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v45 - v21;
  v23 = (&v45 + *(v20 + 56) - v21);
  sub_214FB6440(a1, &v45 - v21, type metadata accessor for NoteEditActivityEvent.Parents);
  sub_214FB6440(a2, v23, type metadata accessor for NoteEditActivityEvent.Parents);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_214FB6440(v22, v18, type metadata accessor for NoteEditActivityEvent.Parents);
    v39 = *v18;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v41 = *v23;
      sub_214D55670(0, &qword_280C24220);
      v37 = sub_2150A5780();

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_214FB6440(v22, v16, type metadata accessor for NoteEditActivityEvent.Parents);
  v24 = *v16;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 64);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v40 = *(v5 + 8);
    v40(v16 + v27, v4);
    v40(v16 + v26, v4);
LABEL_9:
    sub_214F302D4(v22, &qword_27CA43138);
LABEL_15:
    v37 = 0;
    return v37 & 1;
  }

  v46 = *v23;
  v28 = *(v5 + 32);
  v28(v50, v16 + v26, v4);
  v28(v49, v16 + v27, v4);
  v29 = v23 + v26;
  v30 = v48;
  v28(v48, v29, v4);
  v31 = v23 + v27;
  v32 = v47;
  v28(v47, v31, v4);
  sub_214D55670(0, &qword_280C24220);
  v33 = v46;
  v34 = sub_2150A5780();

  if ((v34 & 1) == 0)
  {
    v42 = *(v5 + 8);
    v42(v32, v4);
    v42(v30, v4);
    v42(v49, v4);
    v43 = v50;
LABEL_14:
    v42(v43, v4);
    sub_214FB64A8(v22, type metadata accessor for NoteEditActivityEvent.Parents);
    goto LABEL_15;
  }

  v35 = v50;
  if ((sub_2150A39B0() & 1) == 0)
  {
    v42 = *(v5 + 8);
    v42(v32, v4);
    v42(v30, v4);
    v42(v49, v4);
    v43 = v35;
    goto LABEL_14;
  }

  v36 = v49;
  v37 = sub_2150A39B0();
  v38 = *(v5 + 8);
  v38(v32, v4);
  v38(v30, v4);
  v38(v36, v4);
  v38(v35, v4);
LABEL_11:
  sub_214FB64A8(v22, type metadata accessor for NoteEditActivityEvent.Parents);
  return v37 & 1;
}

uint64_t _s11NotesShared21NoteEditActivityEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2150A3920() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for NoteEditActivityEvent(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v8 = *(a1 + v5 + 8);
  v7 = *(a1 + v5 + 16);
  v9 = a2 + v5;
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  if (v6)
  {
    v12 = 1702129518;
  }

  else
  {
    v12 = 0x7265646C6F66;
  }

  if (v6)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  if (*v9)
  {
    v14 = 1702129518;
  }

  else
  {
    v14 = 0x7265646C6F66;
  }

  if (*v9)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE600000000000000;
  }

  if (v12 == v14 && v13 == v15)
  {
  }

  else
  {
    v17 = sub_2150A6270();

    if ((v17 & 1) == 0)
    {

      return 0;
    }
  }

  if (v8 == v11 && v7 == v10)
  {
  }

  else
  {
    v19 = sub_2150A6270();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v20 = v4[6];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  v24 = v4[9];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);

  return sub_214FAECF4(v25, v26);
}

id sub_214FB49F8(unint64_t isUniquelyReferenced_nonNull_bridgeObject, void *a2, void *a3)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
LABEL_49:
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_2150A59D0();
    isUniquelyReferenced_nonNull_bridgeObject = v30;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
      v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
      v31 = isUniquelyReferenced_nonNull_bridgeObject;
      v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
      v5 = MEMORY[0x277D84F90];
      v32 = v3;
      while (1)
      {
        if (v35)
        {
          isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x216062780](v4, v31);
        }

        else
        {
          if (v4 >= *(v34 + 16))
          {
            goto LABEL_44;
          }

          isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v4);
        }

        v7 = isUniquelyReferenced_nonNull_bridgeObject;
        v8 = __OFADD__(v4++, 1);
        if (v8)
        {
          goto LABEL_43;
        }

        result = [a3 attributedString];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v10 = result;
        v11 = [a2 editsByAddingCheckmarkEditsToEdit:v7 inAttributedString:result];

        sub_214D55670(0, &qword_27CA42488);
        v12 = sub_2150A4ED0();

        v13 = v12 >> 62;
        if (v12 >> 62)
        {
          v14 = sub_2150A59D0();
        }

        else
        {
          v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v15 = v5 >> 62;
        if (v5 >> 62)
        {
          isUniquelyReferenced_nonNull_bridgeObject = sub_2150A59D0();
          v16 = isUniquelyReferenced_nonNull_bridgeObject + v14;
          if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
          {
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }
        }

        else
        {
          isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v16 = isUniquelyReferenced_nonNull_bridgeObject + v14;
          if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
          {
            goto LABEL_42;
          }
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          if (v15)
          {
            goto LABEL_23;
          }

          v40 = v5;
          v17 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v16 <= *(v17 + 24) >> 1)
          {
            v18 = v3;
            v19 = v14;
            goto LABEL_25;
          }
        }

        else
        {
          if (v15)
          {
LABEL_23:
            v18 = v3;
            sub_2150A59D0();
            goto LABEL_24;
          }

          v40 = v5;
        }

        v18 = v3;
LABEL_24:
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_2150A5BD0();
        v40 = isUniquelyReferenced_nonNull_bridgeObject;
        v17 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_25:
        v20 = *(v17 + 16);
        v21 = *(v17 + 24);
        if (v13)
        {
          isUniquelyReferenced_nonNull_bridgeObject = sub_2150A59D0();
          v22 = isUniquelyReferenced_nonNull_bridgeObject;
          if (!isUniquelyReferenced_nonNull_bridgeObject)
          {
LABEL_4:

            v6 = v19 <= 0;
            v3 = v18;
            if (!v6)
            {
              goto LABEL_45;
            }

            goto LABEL_6;
          }
        }

        else
        {
          v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v22)
          {
            goto LABEL_4;
          }
        }

        if (((v21 >> 1) - v20) < v19)
        {
          goto LABEL_46;
        }

        v38 = v19;
        v23 = v17 + 8 * v20 + 32;
        if (v13)
        {
          if (v22 < 1)
          {
            goto LABEL_48;
          }

          sub_214F43BCC(&qword_27CA43178, &qword_27CA43170);
          for (i = 0; i != v22; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43170);
            v25 = sub_214F47F8C(v39, i, v12);
            v27 = *v26;
            (v25)(v39, 0);
            *(v23 + 8 * i) = v27;
          }
        }

        else
        {
          swift_arrayInitWithCopy();
        }

        v3 = v32;
        if (v38 >= 1)
        {
          v28 = *(v17 + 16);
          v8 = __OFADD__(v28, v38);
          v29 = v28 + v38;
          if (v8)
          {
            goto LABEL_47;
          }

          *(v17 + 16) = v29;
        }

LABEL_6:
        v5 = v40;
        if (v4 == v3)
        {
          return v5;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_214FB4DDC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43160);
    v5 = sub_2150A5EA0();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v7 = v5;

  sub_214FB2E44(a1, a2, 1, &v7);
  return v7;
}

size_t _s11NotesShared21NoteEditActivityEventV6events3for2in14afterTimestamp06recentK0SayACGSo29ICTTMergeableAttributedStringC_AC7ParentsO10Foundation4DateVSgAQtFZ_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v169 = a3;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42730);
  v171 = *(v186 - 8);
  v7 = MEMORY[0x28223BE20](v186);
  v181 = (&v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v180 = (&v159 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v179 = &v159 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v172 = &v159 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v176 = &v159 - v16;
  MEMORY[0x28223BE20](v15);
  v188 = &v159 - v17;
  v18 = sub_2150A3A00();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v178 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v185 = &v159 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v175 = &v159 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v168 = &v159 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v174 = &v159 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v189 = &v159 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v159 - v32;
  v34 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  MEMORY[0x28223BE20](v34);
  v36 = (&v159 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_214FB6440(a2, v36, type metadata accessor for NoteEditActivityEvent.Parents);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v38 = *v36;
  v187 = v18;
  v191 = v19;
  if (EnumCaseMultiPayload == 1)
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B0);
    v40 = *(v39 + 48);
    v41 = *(v39 + 64);
    v42 = [v38 note];

    v43 = *&v19->super._cd_rc;
    v44 = v36 + v41;
    v18 = v187;
    v43(v44, v187);
    v43(v36 + v40, v18);
    v38 = v42;
    if (!v42)
    {
      return MEMORY[0x277D84F90];
    }
  }

  v45 = v38;
  ActivityEventObject.init(cloudSyncingObject:)(v45);
  if (!v193)
  {

    return MEMORY[0x277D84F90];
  }

  v165 = v193;
  v166 = a2;
  v167 = a4;
  v47 = v192[0];
  p_cd_objectID = v192[1];
  v48 = objc_allocWithZone(ICTTTextEditGrouper);
  v170 = v45;
  v49 = [v48 initWithNote_];
  v50 = [a1 edits];
  sub_214D55670(0, &qword_27CA42488);
  v51 = sub_2150A4ED0();

  v52 = v49;
  v53 = a1;
  v54 = sub_214FB49F8(v51, v52, v53);
  v161 = 0;

  v162 = v52;

  v160 = v53;
  if (v54 >> 62)
  {
    goto LABEL_84;
  }

  for (i = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2150A59D0())
  {
    v56 = v191;
    v57 = MEMORY[0x277D84F90];
    v182 = v54;
    v164 = p_cd_objectID;
    v163 = v47;
    if (i)
    {
      break;
    }

LABEL_16:
    v192[0] = v57;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43140);
    sub_214F43BCC(&qword_27CA43148, &qword_27CA43140);
    sub_214FB63F8(&qword_280C241B0, MEMORY[0x277CC95F0]);
    v54 = v192;
    v66 = sub_2150A4D50();

    v67 = *(v66 + 16);
    v68 = MEMORY[0x277D84F90];
    p_cd_managedObjectContext = v66;
    if (!v67)
    {
      goto LABEL_23;
    }

    v192[0] = MEMORY[0x277D84F90];
    v184 = v170;
    sub_214F86A20(0, v67, 0);
    v47 = 0;
    v69 = v192[0];
    v183 = v66 + ((LOBYTE(v56->_cryptoStrategy) + 32) & ~LOBYTE(v56->_cryptoStrategy));
    p_cd_stateFlags = &v56->super._cd_stateFlags;
    do
    {
      if (v47 >= *(v66 + 16))
      {
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v70 = v191;
      v71 = v189;
      v72 = v69;
      (*&v191->super._cd_stateFlags)(v189, v183 + v191->_decryptedValues * v47, v18);
      v73 = sub_2150A39A0();
      v54 = [(ICCloudSyncingObject *)v184 userIDForReplicaID:v73];

      p_cd_objectID = sub_2150A4AD0();
      v75 = v74;

      v70[1](v71, v18);
      v69 = v72;
      v192[0] = v72;
      v77 = *&v72->super._cd_stateFlags;
      cd_rawData = v72->super._cd_rawData;
      v33 = v77 + 1;
      if (v77 >= cd_rawData >> 1)
      {
        v54 = v192;
        sub_214F86A20((cd_rawData > 1), v77 + 1, 1);
        v69 = v192[0];
      }

      ++v47;
      *&v69->super._cd_stateFlags = v33;
      v78 = &v69->super.super.isa + 2 * v77;
      v78[4] = p_cd_objectID;
      v78[5] = v75;
      v18 = v187;
      v66 = p_cd_managedObjectContext;
    }

    while (v67 != v47);
    v79 = v69;

    v68 = v79;
    v56 = v191;
LABEL_23:
    v54 = v186;
    v80 = *&v68->super._cd_stateFlags;
    v81 = v175;
    v183 = v80;
    v184 = v68;
    if (v80)
    {
      v33 = 0;
      v189 = &v56->super._cd_stateFlags;
      p_cd_stateFlags = &v56->super._cd_rc;
      p_cd_objectID = &v68->super._cd_objectID;
      v173 = MEMORY[0x277D84F90];
      v82 = &qword_27CA42730;
      v47 = &unk_2150C5F00;
      while (1)
      {
        if (v33 >= *&v68->super._cd_stateFlags)
        {
          goto LABEL_82;
        }

        v83 = *(v66 + 16);
        if (v33 == v83)
        {
          goto LABEL_42;
        }

        if (v33 >= v83)
        {
          goto LABEL_83;
        }

        v84 = *p_cd_objectID;
        v85 = v191;
        v86 = v66 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + v191->_decryptedValues * v33;
        v87 = *(v54 + 48);
        v88 = v176;
        *v176 = *(p_cd_objectID - 1);
        *(v88 + 1) = v84;
        v85[2](&v88[v87], v86, v18);
        v89 = v88;
        v90 = v188;
        v91 = v82;
        sub_214FB6CE4(v89, v188, v82);
        v92 = *v90;
        v93 = v90[1];
        v94 = objc_opt_self();

        v95 = [v94 CR_unknown];
        v96 = v174;
        sub_2150A39C0();

        v97 = sub_2150A3990();
        v99 = v98;
        (v85[1])(v96, v18);
        if (v92 == v97 && v93 == v99)
        {
        }

        else
        {
          v100 = sub_2150A6270();

          if ((v100 & 1) == 0)
          {
            v82 = v91;
            v47 = &unk_2150C5F00;
            sub_214FB6CE4(v188, v172, v91);
            v101 = v173;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v103 = v101;
            v192[0] = v101;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_214F86E68(0, *(v101 + 16) + 1, 1);
              v103 = v192[0];
            }

            v81 = v175;
            v105 = *(v103 + 16);
            v104 = *(v103 + 24);
            v54 = v186;
            if (v105 >= v104 >> 1)
            {
              sub_214F86E68(v104 > 1, v105 + 1, 1);
              v54 = v186;
              v103 = v192[0];
            }

            *(v103 + 16) = v105 + 1;
            v106 = (*(v171 + 80) + 32) & ~*(v171 + 80);
            v173 = v103;
            sub_214FB6CE4(v172, v103 + v106 + *(v171 + 72) * v105, v82);
            v80 = v183;
            v66 = p_cd_managedObjectContext;
            goto LABEL_27;
          }
        }

        v82 = v91;
        v47 = &unk_2150C5F00;
        sub_214F302D4(v188, v91);
        v54 = v186;
        v80 = v183;
        v66 = p_cd_managedObjectContext;
        v81 = v175;
LABEL_27:
        ++v33;
        p_cd_objectID += 2;
        v68 = v184;
        if (v80 == v33)
        {
          goto LABEL_42;
        }
      }
    }

    v173 = MEMORY[0x277D84F90];
LABEL_42:

    v107 = *(v173 + 16);
    if (v107)
    {
      v192[0] = MEMORY[0x277D84F90];
      v108 = v173;
      sub_214F86E24(0, v107, 0);
      v109 = v192[0];
      v110 = v108 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
      v111 = *(v171 + 72);
      v176 = &v191->super._cd_stateFlags;
      p_cd_stateFlags = v111;
      v112 = v168;
      p_cd_managedObjectContext = &v191->super._cd_managedObjectContext;
      do
      {
        v189 = v107;
        v113 = v179;
        sub_214F43C14(v110, v179, &qword_27CA42730);
        v114 = v180;
        sub_214F43C14(v113, v180, &qword_27CA42730);
        v115 = v114[1];
        v116 = *(v186 + 48);
        v117 = v181;
        *v181 = *v114;
        *(v117 + 8) = v115;
        v188 = *p_cd_managedObjectContext;
        (v188)(v117 + v116, v114 + v116, v18);
        (*v176)(v112, v117 + v116, v18);
        sub_214F302D4(v117, &qword_27CA42730);
        sub_214F302D4(v113, &qword_27CA42730);
        v192[0] = v109;
        v119 = *(v109 + 2);
        v118 = *(v109 + 3);
        if (v119 >= v118 >> 1)
        {
          sub_214F86E24(v118 > 1, v119 + 1, 1);
          v112 = v168;
          v109 = v192[0];
        }

        *(v109 + 2) = v119 + 1;
        (v188)(&v109[((LOBYTE(v191->_cryptoStrategy) + 32) & ~LOBYTE(v191->_cryptoStrategy)) + v191->_decryptedValues * v119], v112, v18);
        v110 += p_cd_stateFlags;
        v107 = (v189 - 1);
      }

      while (v189 != 1);
      p_cd_managedObjectContext = v109;

      v47 = v191;
      v81 = v175;
      v80 = v183;
      v120 = v184;
      v33 = v185;
      if (v183)
      {
LABEL_48:
        v121 = 0;
        p_cd_objectID = (v47 + 8);
        v122 = &v120->super._cd_objectID;
        v188 = (v80 - 1);
        v54 = MEMORY[0x277D84F90];
        v189 = &v120->super._cd_objectID;
LABEL_49:
        v191 = v54;
        v123 = &v122[16 * v121];
        v124 = v121;
        while (v124 < *&v120->super._cd_stateFlags)
        {
          v126 = *(v123 - 1);
          v125 = *v123;
          v127 = objc_opt_self();

          v128 = [v127 CR_unknown];
          sub_2150A39C0();

          v129 = sub_2150A3990();
          v54 = v130;
          (*p_cd_objectID)(v81, v18);
          if (v126 == v129 && v125 == v54)
          {
          }

          else
          {
            v131 = sub_2150A6270();

            if ((v131 & 1) == 0)
            {
              v54 = v191;
              v132 = swift_isUniquelyReferenced_nonNull_native();
              v192[0] = v54;
              if ((v132 & 1) == 0)
              {
                sub_214F86A20(0, *(v54 + 16) + 1, 1);
                v54 = v192[0];
              }

              v134 = *(v54 + 16);
              v133 = *(v54 + 24);
              if (v134 >= v133 >> 1)
              {
                sub_214F86A20((v133 > 1), v134 + 1, 1);
                v54 = v192[0];
              }

              v121 = v124 + 1;
              *(v54 + 16) = v134 + 1;
              v135 = v54 + 16 * v134;
              *(v135 + 32) = v126;
              *(v135 + 40) = v125;
              v122 = v189;
              v120 = v184;
              v33 = v185;
              if (v188 != v124)
              {
                goto LABEL_49;
              }

              goto LABEL_66;
            }

            v54 = v125;
          }

          ++v124;

          v123 += 2;
          v120 = v184;
          v33 = v185;
          if (v183 == v124)
          {
            v54 = v191;
            goto LABEL_66;
          }
        }

        goto LABEL_80;
      }
    }

    else
    {

      p_cd_managedObjectContext = MEMORY[0x277D84F90];
      v47 = v191;
      v120 = v184;
      v33 = v185;
      if (v80)
      {
        goto LABEL_48;
      }
    }

    v54 = MEMORY[0x277D84F90];
LABEL_66:

    v136 = p_cd_managedObjectContext;

    v184 = sub_214FB4DDC(v137, v54);

    v138 = *(v136 + 2);
    v191 = v170;
    v189 = v138;
    if (!v138)
    {
      v140 = MEMORY[0x277D84F90];
LABEL_78:
      v151 = v191;

      v152 = sub_214F842F0(v140);

      MEMORY[0x28223BE20](v153);
      v154 = v162;
      *(&v159 - 10) = v152;
      *(&v159 - 9) = v154;
      v155 = v169;
      *(&v159 - 8) = v184;
      *(&v159 - 7) = v155;
      *(&v159 - 6) = v160;
      *(&v159 - 40) = v163 & 1;
      v156 = v165;
      *(&v159 - 4) = v164;
      *(&v159 - 3) = v156;
      v157 = v166;
      *(&v159 - 2) = v167;
      *(&v159 - 1) = v157;
      v158 = sub_214FD2090(sub_214FB6D4C, (&v159 - 12), v182);

      return v158;
    }

    v139 = 0;
    v188 = (v47 + 16);
    v186 = v47 + 8;
    p_cd_objectID = (v47 + 32);
    v140 = MEMORY[0x277D84F90];
    v141 = p_cd_managedObjectContext;
    while (v139 < *(v141 + 2))
    {
      v142 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v143 = *(v47 + 72);
      (*(v47 + 16))(v33, &v141[v142 + v143 * v139], v18);
      v54 = sub_2150A39A0();
      v144 = [(ICCloudSyncingObject *)v191 trustsTimestampsFromReplicaID:v54];

      if (v144)
      {
        v145 = v33;
        v146 = *p_cd_objectID;
        (*p_cd_objectID)(v178, v145, v18);
        v147 = swift_isUniquelyReferenced_nonNull_native();
        v192[0] = v140;
        if ((v147 & 1) == 0)
        {
          v54 = v192;
          sub_214F86E24(0, *(v140 + 16) + 1, 1);
          v140 = v192[0];
        }

        v149 = *(v140 + 16);
        v148 = *(v140 + 24);
        if (v149 >= v148 >> 1)
        {
          v54 = v192;
          sub_214F86E24(v148 > 1, v149 + 1, 1);
          v140 = v192[0];
        }

        *(v140 + 16) = v149 + 1;
        v150 = v140 + v142 + v149 * v143;
        v18 = v187;
        (v146)(v150, v178, v187);
        v33 = v185;
      }

      else
      {
        (*v186)(v33, v18);
      }

      ++v139;
      v141 = p_cd_managedObjectContext;
      if (v189 == v139)
      {
        goto LABEL_78;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    ;
  }

  v192[0] = MEMORY[0x277D84F90];
  result = sub_214F86E24(0, i & ~(i >> 63), 0);
  if ((i & 0x8000000000000000) == 0)
  {
    v59 = 0;
    v57 = v192[0];
    v60 = v54;
    p_cd_objectID = (v54 & 0xC000000000000001);
    do
    {
      if (p_cd_objectID)
      {
        v61 = MEMORY[0x216062780](v59, v60);
      }

      else
      {
        v61 = *(v60 + 8 * v59 + 32);
      }

      v62 = v61;
      v63 = [v62 replicaID];
      sub_2150A39C0();

      v192[0] = v57;
      v65 = *(v57 + 16);
      v64 = *(v57 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_214F86E24(v64 > 1, v65 + 1, 1);
        v57 = v192[0];
      }

      ++v59;
      *(v57 + 16) = v65 + 1;
      (v191->super._cd_managedObjectContext)(v57 + ((LOBYTE(v191->_cryptoStrategy) + 32) & ~LOBYTE(v191->_cryptoStrategy)) + v191->_decryptedValues * v65, v33, v18);
      v60 = v182;
    }

    while (i != v59);
    v56 = v191;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t _s11NotesShared21NoteEditActivityEventV6events3for14afterTimestamp06recentJ0SayACGSo12ICAttachmentC_10Foundation4DateVSgANtFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v13 = [a1 attachmentModel];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {

    return MEMORY[0x277D84F90];
  }

  v34 = MEMORY[0x277D84F90];
  v15 = v14;
  v16 = [v14 table];
  v31 = v13;
  v32 = v16;
  sub_214F43C14(a2, v12, &qword_27CA41DD0);
  sub_214F43C14(a3, v10, &qword_27CA41DD0);
  v17 = *(v7 + 80);
  v18 = (v17 + 40) & ~v17;
  v19 = a1;
  v20 = (v8 + v17 + v18) & ~v17;
  v21 = swift_allocObject();
  v21[2] = v15;
  v21[3] = v19;
  v22 = v19;
  v21[4] = &v34;
  sub_214FB6CE4(v12, v21 + v18, &qword_27CA41DD0);
  sub_214FB6CE4(v10, v21 + v20, &qword_27CA41DD0);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_214FB6C1C;
  *(v23 + 24) = v21;
  aBlock[4] = sub_214FB6D9C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21506A584;
  aBlock[3] = &block_descriptor_28;
  v24 = _Block_copy(aBlock);
  v25 = v31;
  v26 = v22;

  v27 = v32;
  [v32 enumerateColumnsWithBlock_];

  _Block_release(v24);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if ((v27 & 1) == 0)
  {
    v29 = v34;

    return v29;
  }

  __break(1u);
  return result;
}

unint64_t sub_214FB6390()
{
  result = qword_27CA430A8;
  if (!qword_27CA430A8)
  {
    sub_214D55670(255, &qword_27CA42488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA430A8);
  }

  return result;
}

uint64_t sub_214FB63F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_214FB6440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214FB64A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_214FB650C()
{
  result = qword_27CA430C0;
  if (!qword_27CA430C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA430C0);
  }

  return result;
}

void sub_214FB6618()
{
  sub_2150A3960();
  if (v0 <= 0x3F)
  {
    sub_214FB66D0();
    if (v1 <= 0x3F)
    {
      sub_214FB678C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214FB66D0()
{
  if (!qword_27CA430D8)
  {
    type metadata accessor for NoteEditActivityEvent.Parents(255);
    sub_214D55670(255, &qword_27CA430E0);
    sub_214FB63F8(&qword_27CA430E8, type metadata accessor for NoteEditActivityEvent.Parents);
    v0 = sub_2150A4960();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA430D8);
    }
  }
}

void sub_214FB678C()
{
  if (!qword_27CA430F0)
  {
    type metadata accessor for NoteEditActivityEvent.Parents(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA430F8);
    sub_214FB63F8(&qword_27CA430E8, type metadata accessor for NoteEditActivityEvent.Parents);
    v0 = sub_2150A4960();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA430F0);
    }
  }
}

void sub_214FB68A4()
{
  sub_214D55670(319, &qword_27CA43100);
  if (v0 <= 0x3F)
  {
    sub_214FB6928();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_214FB6928()
{
  if (!qword_27CA43108)
  {
    sub_214D55670(255, &qword_27CA44A30);
    sub_2150A3A00();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CA43108);
    }
  }
}

void sub_214FB6A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_2150A3A00() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0) - 8);
  v11 = *(v10 + 80);
  sub_214FAFD6C(a1, a2, a3, *(v3 + 16), v3 + v8, *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), v3 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11), v3 + ((*(v10 + 64) + v11 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11)) & ~v11));
}

uint64_t sub_214FB6BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_214FB6C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 40) & ~v8;
  v10 = v3[2];
  v11 = v3[3];
  v12 = v3[4];
  v13 = v3 + ((*(v7 + 64) + v8 + v9) & ~v8);

  return sub_214FAF9B8(a1, a2, a3, v10, v11, v12, v3 + v9, v13);
}

uint64_t sub_214FB6CE4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_214FB6DA0(uint64_t a1, uint64_t a2)
{
  *&v46 = (*(a2 + 16))();
  v40 = a1;
  v41 = a2;
  v5 = sub_2150A4FD0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42650);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_214F86288(sub_214FBB4E4, v39, v5, v6, v7, WitnessTable, MEMORY[0x277D84950], &v42);

  if (!v2)
  {
    v11 = MEMORY[0x277D84F90];
    v37 = *(v9 + 16);
    if (v37)
    {
      v12 = 0;
      v13 = v9 + 32;
      while (v12 < *(v9 + 16))
      {
        sub_214F43C14(v13, &v46, &unk_27CA42650);
        v14 = *(&v48 + 1);
        v15 = v49;
        __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
        if ((*(v15 + 16))(v14, v15))
        {
          result = sub_214F302D4(&v46, &unk_27CA42650);
        }

        else
        {
          v42 = v46;
          v43 = v47;
          v44 = v48;
          v45 = v49;
          result = swift_isUniquelyReferenced_nonNull_native();
          v50 = v11;
          if ((result & 1) == 0)
          {
            result = sub_214F86D80(0, *(v11 + 16) + 1, 1);
            v11 = v50;
          }

          v17 = *(v11 + 16);
          v16 = *(v11 + 24);
          if (v17 >= v16 >> 1)
          {
            result = sub_214F86D80((v16 > 1), v17 + 1, 1);
            v11 = v50;
          }

          *(v11 + 16) = v17 + 1;
          v18 = v11 + 56 * v17;
          v19 = v42;
          v20 = v43;
          v21 = v44;
          *(v18 + 80) = v45;
          *(v18 + 48) = v20;
          *(v18 + 64) = v21;
          *(v18 + 32) = v19;
        }

        ++v12;
        v13 += 56;
        if (v37 == v12)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:

      v22 = *(v11 + 16);
      if (!v22)
      {

        return 0;
      }

      *&v42 = MEMORY[0x277D84F90];
      v38 = v22;
      result = sub_214F86BFC(0, v22, 0);
      v23 = v38;
      v24 = 0;
      v25 = v42;
      v26 = v11 + 32;
      while (v24 < *(v11 + 16))
      {
        sub_214F43C14(v26, &v46, &unk_27CA42650);
        v27 = sub_214FBA6D0(v46, *(&v46 + 1), &v47);
        result = sub_214F302D4(&v46, &unk_27CA42650);
        *&v42 = v25;
        v29 = *(v25 + 16);
        v28 = *(v25 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_214F86BFC((v28 > 1), v29 + 1, 1);
          v23 = v38;
          v25 = v42;
        }

        ++v24;
        *(v25 + 16) = v29 + 1;
        *(v25 + 8 * v29 + 32) = v27;
        v26 += 56;
        if (v23 == v24)
        {

          *&v42 = 0;
          *(&v42 + 1) = 0xE000000000000000;
          *&v46 = 0;
          *(&v46 + 1) = 0xE000000000000000;
          sub_2150A49F0();
          MEMORY[0x2160617E0](91, 0xE100000000000000);
          v50 = 1;
          v30 = sub_2150A6100();
          MEMORY[0x2160617E0](v30);

          sub_2150A49F0();
          v42 = v46;
          MEMORY[0x2160617E0](0x73646E616D6D6F43, 0xE800000000000000);
          *&v46 = 0;
          *(&v46 + 1) = 0xE000000000000000;
          sub_2150A49F0();
          MEMORY[0x2160617E0](91, 0xE100000000000000);
          v50 = 0;
          v31 = sub_2150A6100();
          MEMORY[0x2160617E0](v31);

          sub_2150A49F0();
          MEMORY[0x2160617E0](v46, *(&v46 + 1));

          MEMORY[0x2160617E0](10, 0xE100000000000000);
          v32 = sub_215067CAC(v25);

          v33 = *(v32 + 16);
          if (v33)
          {
            v34 = *(*(v32 + 32) + 16);
          }

          else
          {
            v34 = 0;
          }

          v35 = 32;
          while (v33)
          {
            v36 = *(*(v32 + v35) + 16);
            v35 += 8;
            --v33;
            if (v36 != v34)
            {
              __break(1u);
              break;
            }
          }

          v46 = v34;
          *&v47 = v32;
          BYTE8(v47) = 0;
          *&v48 = 64;
          BYTE8(v48) = 0;
          sub_214F963BC();
          MEMORY[0x2160617E0]();

          return v42;
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_214FB7320(uint64_t a1, uint64_t a2)
{
  Commands.defaultCommand()(a1, a2, v42);
  if (!v3)
  {
    v6 = v43;
    v7 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v8 = (*(v7 + 32))(v6, v7);
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = v43;
      v13 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v14 = (*(v13 + 32))(v12, v13);
      MEMORY[0x2160617E0](v14);

      MEMORY[0x2160617E0](10, 0xE100000000000000);
      v15 = 0xE100000000000000;
      v40 = 10;
    }

    else
    {
      v40 = 0;
      v15 = 0xE000000000000000;
    }

    v41 = v15;
    v16 = v43;
    v17 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v18 = sub_214FB9D10(v16, v17);
    v20 = v19;
    v21 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v21 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v39 = v18;
      sub_2150A5B20();
      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v45 = 0;
      v22 = sub_2150A6100();
      MEMORY[0x2160617E0](v22);

      sub_2150A49F0();

      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v45 = 1;
      v23 = sub_2150A6100();
      MEMORY[0x2160617E0](v23);

      sub_2150A49F0();
      MEMORY[0x2160617E0](0, 0xE000000000000000);

      v24 = (*(*(a2 + 8) + 32))(a1);
      MEMORY[0x2160617E0](v24);

      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v45 = 0;
      v25 = sub_2150A6100();
      MEMORY[0x2160617E0](v25);

      sub_2150A49F0();
      MEMORY[0x2160617E0](0, 0xE000000000000000);

      MEMORY[0x2160617E0](10, 0xE100000000000000);
      v26 = v43;
      v27 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v28 = (*(v27 + 24))(v26, v27);
      MEMORY[0x2160617E0](v28);

      MEMORY[0x2160617E0](10, 0xE100000000000000);
      MEMORY[0x2160617E0](v40, v41);

      MEMORY[0x2160617E0](10, 0xE100000000000000);
      MEMORY[0x2160617E0](v39, v20);
    }

    else
    {

      sub_2150A5B20();
      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v45 = 0;
      v29 = sub_2150A6100();
      MEMORY[0x2160617E0](v29);

      sub_2150A49F0();
      MEMORY[0x2160617E0](0, 0xE000000000000000);

      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v45 = 1;
      v30 = sub_2150A6100();
      MEMORY[0x2160617E0](v30);

      sub_2150A49F0();
      MEMORY[0x2160617E0](0, 0xE000000000000000);

      v31 = (*(*(a2 + 8) + 32))(a1);
      MEMORY[0x2160617E0](v31);

      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v45 = 0;
      v32 = sub_2150A6100();
      MEMORY[0x2160617E0](v32);

      sub_2150A49F0();
      MEMORY[0x2160617E0](0, 0xE000000000000000);

      MEMORY[0x2160617E0](10, 0xE100000000000000);
      v33 = v43;
      v34 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v35 = (*(v34 + 24))(v33, v34);
      MEMORY[0x2160617E0](v35);

      MEMORY[0x2160617E0](10, 0xE100000000000000);
      MEMORY[0x2160617E0](v40, v41);

      MEMORY[0x2160617E0](10, 0xE100000000000000);
      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v45 = 2;
      v36 = sub_2150A6100();
      MEMORY[0x2160617E0](v36);

      sub_2150A49F0();
      MEMORY[0x2160617E0](0, 0xE000000000000000);

      MEMORY[0x2160617E0](0xD00000000000002CLL, 0x80000002150E5890);
      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v45 = 0;
      v37 = sub_2150A6100();
      MEMORY[0x2160617E0](v37);

      sub_2150A49F0();
      MEMORY[0x2160617E0](0, 0xE000000000000000);
    }

    v2 = 0;
    __swift_destroy_boxed_opaque_existential_0(v42);
  }

  return v2;
}

uint64_t sub_214FB7B38(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(v3 + 16);
  v5 = v4(a1, v3);
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v9 = sub_2150A6100();
    MEMORY[0x2160617E0](v9);

    sub_2150A49F0();
    v10 = (*(v3 + 8))(a1, v3);
    MEMORY[0x2160617E0](v10);

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v11 = sub_2150A6100();
    MEMORY[0x2160617E0](v11);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    MEMORY[0x2160617E0](10, 0xE100000000000000);
    v12 = v4(a1, v3);
  }

  else
  {
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v14 = sub_2150A6100();
    MEMORY[0x2160617E0](v14);

    sub_2150A49F0();
    v15 = (*(v3 + 8))(a1, v3);
    MEMORY[0x2160617E0](v15);

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v16 = sub_2150A6100();
    MEMORY[0x2160617E0](v16);

    sub_2150A49F0();
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  MEMORY[0x2160617E0](v12, v13);

  return 0;
}

uint64_t sub_214FB7EB8()
{
  sub_2150A5B20();
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v0 = sub_2150A6100();
  MEMORY[0x2160617E0](v0);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0x7861746E7953, 0xE600000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v1 = sub_2150A6100();
  MEMORY[0x2160617E0](v1);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0x202020200ALL, 0xE500000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v2 = sub_2150A6100();
  MEMORY[0x2160617E0](v2);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0x6F6F747365746F6ELL, 0xEA0000000000206CLL);
  v3 = _sSS11NotesSharedE11typeSummary7forNameS2S_tFZ_0(0x646E616D6D6F63, 0xE700000000000000);
  MEMORY[0x2160617E0](v3);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v4 = sub_2150A6100();
  MEMORY[0x2160617E0](v4);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](547782882, 0xA400000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v5 = sub_2150A6100();
  MEMORY[0x2160617E0](v5);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v6 = sub_2150A6100();
  MEMORY[0x2160617E0](v6);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](2960680, 0xE300000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v7 = sub_2150A6100();
  MEMORY[0x2160617E0](v7);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  v8 = _sSS11NotesSharedE11typeSummary7forNameS2S_tFZ_0(0x6E6F6974706FLL, 0xE600000000000000);
  MEMORY[0x2160617E0](v8);

  MEMORY[0x2160617E0](32, 0xE100000000000000);
  v9 = sub_214FBA4AC(0x65756C6176, 0xE500000000000000);
  MEMORY[0x2160617E0](v9);

  MEMORY[0x2160617E0](41, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v10 = sub_2150A6100();
  MEMORY[0x2160617E0](v10);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](10911970, 0xA300000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v11 = sub_2150A6100();
  MEMORY[0x2160617E0](v11);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0x202D202020200ALL, 0xE700000000000000);
  v12 = _sSS11NotesSharedE11typeSummary7forNameS2S_tFZ_0(97, 0xE100000000000000);
  MEMORY[0x2160617E0](v12);

  MEMORY[0x2160617E0](0xD000000000000033, 0x80000002150E56A0);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v13 = sub_2150A6100();
  MEMORY[0x2160617E0](v13);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v14 = sub_2150A6100();
  MEMORY[0x2160617E0](v14);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](40, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v15 = sub_2150A6100();
  MEMORY[0x2160617E0](v15);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v16 = sub_2150A6100();
  MEMORY[0x2160617E0](v16);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](97, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v17 = sub_2150A6100();
  MEMORY[0x2160617E0](v17);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v18 = sub_2150A6100();
  MEMORY[0x2160617E0](v18);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](124, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v19 = sub_2150A6100();
  MEMORY[0x2160617E0](v19);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v20 = sub_2150A6100();
  MEMORY[0x2160617E0](v20);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](98, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v21 = sub_2150A6100();
  MEMORY[0x2160617E0](v21);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v22 = sub_2150A6100();
  MEMORY[0x2160617E0](v22);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](41, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v23 = sub_2150A6100();
  MEMORY[0x2160617E0](v23);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0x6520736E61656D20, 0xEE00207265687469);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v24 = sub_2150A6100();
  MEMORY[0x2160617E0](v24);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](97, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v25 = sub_2150A6100();
  MEMORY[0x2160617E0](v25);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](544370464, 0xE400000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v26 = sub_2150A6100();
  MEMORY[0x2160617E0](v26);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](98, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v27 = sub_2150A6100();
  MEMORY[0x2160617E0](v27);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0x202D202020200ALL, 0xE700000000000000);
  v28 = sub_214FBA4AC(97, 0xE100000000000000);
  MEMORY[0x2160617E0](v28);

  MEMORY[0x2160617E0](0xD00000000000005ALL, 0x80000002150E56E0);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v29 = sub_2150A6100();
  MEMORY[0x2160617E0](v29);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](5457241, 0xE300000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v30 = sub_2150A6100();
  MEMORY[0x2160617E0](v30);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](8236, 0xE200000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v31 = sub_2150A6100();
  MEMORY[0x2160617E0](v31);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](20302, 0xE200000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v32 = sub_2150A6100();
  MEMORY[0x2160617E0](v32);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](8236, 0xE200000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v33 = sub_2150A6100();
  MEMORY[0x2160617E0](v33);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](1702195828, 0xE400000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v34 = sub_2150A6100();
  MEMORY[0x2160617E0](v34);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](8236, 0xE200000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v35 = sub_2150A6100();
  MEMORY[0x2160617E0](v35);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0x65736C6166, 0xE500000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v36 = sub_2150A6100();
  MEMORY[0x2160617E0](v36);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](8236, 0xE200000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v37 = sub_2150A6100();
  MEMORY[0x2160617E0](v37);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](49, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v38 = sub_2150A6100();
  MEMORY[0x2160617E0](v38);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0x20726F202CLL, 0xE500000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v39 = sub_2150A6100();
  MEMORY[0x2160617E0](v39);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](48, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v40 = sub_2150A6100();
  MEMORY[0x2160617E0](v40);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0xD000000000000054, 0x80000002150E5740);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v41 = sub_2150A6100();
  MEMORY[0x2160617E0](v41);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](5457241, 0xE300000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v42 = sub_2150A6100();
  MEMORY[0x2160617E0](v42);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0xD0000000000000E2, 0x80000002150E57A0);
  return 0;
}

uint64_t sub_214FB96A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2150A6540();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v34 + 1) = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  sub_2150A64F0();
  v11 = sub_2150A6530();
  (*(v7 + 8))(v9, v6);
  v24 = v3;
  v23 = a1;
  v25 = a2;
  v12 = sub_214FB99C4(v3, a1, a2);
  v22 = v11;
  sub_2150A5D70();
  sub_2150A5EC0();
  if (*(&v32 + 1))
  {
    v13 = MEMORY[0x277D84F90];
    do
    {
      v28 = v30;
      v29[0] = v31;
      v29[1] = v32;
      (v12)(v33, v30, *(&v30 + 1), v29);
      v17 = v33[0];
      v16 = v33[1];
      v26 = v35;
      v27 = v34;
      sub_214F302D4(&v28, &qword_27CA43188);
      if (v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_21505F74C(0, v13[2] + 1, 1, v13);
        }

        v19 = v13[2];
        v18 = v13[3];
        if (v19 >= v18 >> 1)
        {
          v13 = sub_21505F74C((v18 > 1), v19 + 1, 1, v13);
        }

        v13[2] = v19 + 1;
        v14 = &v13[6 * v19];
        v14[4] = v17;
        v14[5] = v16;
        v15 = v26;
        *(v14 + 3) = v27;
        *(v14 + 4) = v15;
      }

      sub_2150A5EC0();
    }

    while (*(&v32 + 1));
  }

  (*(v25 + 40))(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43180);
  v20 = sub_2150A4F20();

  return v20;
}

double (*sub_214FB99C4(uint64_t a1, uint64_t a2, uint64_t a3))@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_214FBB504;
}

double sub_214FB9AE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v11[0] = a1;
  v11[1] = a2;
  sub_214F50074(a3, &v12);
  sub_214F43C14(v11, v9, &qword_27CA43188);
  v5 = v9[0];
  v6 = v9[1];

  sub_214FBB540(v5, v6, v10, v13);

  sub_214F302D4(v11, &qword_27CA43188);
  __swift_destroy_boxed_opaque_existential_0(v10);
  v7 = v13[1];
  *a4 = v13[0];
  a4[1] = v7;
  result = *&v14;
  a4[2] = v14;
  return result;
}

uint64_t sub_214FB9BCC(uint64_t a1, uint64_t a2)
{
  v2 = sub_214FB96A4(a1, a2);
  v3 = *(v2 + 16);
  if (v3)
  {
    v12 = MEMORY[0x277D84F90];
    sub_214F86A20(0, v3, 0);
    v4 = (v2 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v12 + 16);
      v7 = *(v12 + 24);

      if (v8 >= v7 >> 1)
      {
        sub_214F86A20((v7 > 1), v8 + 1, 1);
      }

      *(v12 + 16) = v8 + 1;
      v9 = v12 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 6;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
  sub_214F86A40();
  v10 = sub_2150A4A20();

  return v10;
}

uint64_t sub_214FB9D10(uint64_t a1, uint64_t a2)
{
  v2 = sub_214FB96A4(a1, a2);
  v3 = *(v2 + 16);
  if (v3)
  {
    v27 = MEMORY[0x277D84F90];
    v4 = v2;
    sub_214F86BFC(0, v3, 0);
    result = v4;
    v6 = 0;
    v7 = v27;
    v8 = (result + 72);
    v26 = result;
    while (v6 < *(result + 16))
    {
      v9 = *(v8 - 5);
      v10 = *(v8 - 4);
      v11 = *(v8 - 3);
      v12 = *(v8 - 2);
      v13 = *(v8 - 1);
      v14 = *v8;

      sub_214FBA078(v9, v10, v11, v12, v13, v14);
      v16 = v15;

      v18 = *(v27 + 16);
      v17 = *(v27 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_214F86BFC((v17 > 1), v18 + 1, 1);
      }

      ++v6;
      *(v27 + 16) = v18 + 1;
      *(v27 + 8 * v18 + 32) = v16;
      v8 += 6;
      result = v26;
      if (v3 == v6)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_9:
    sub_2150A5B20();
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v19 = sub_2150A6100();
    MEMORY[0x2160617E0](v19);

    sub_2150A49F0();

    MEMORY[0x2160617E0](0x746E656D75677241, 0xE900000000000073);
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v20 = sub_2150A6100();
    MEMORY[0x2160617E0](v20);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    MEMORY[0x2160617E0](10, 0xE100000000000000);
    v21 = sub_215067CAC(v7);

    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = *(*(v21 + 32) + 16);
    }

    else
    {
      v23 = 0;
    }

    v24 = 32;
    while (v22)
    {
      v25 = *(*(v21 + v24) + 16);
      v24 += 8;
      --v22;
      if (v25 != v23)
      {
        __break(1u);
        break;
      }
    }

    sub_214F963BC();
    MEMORY[0x2160617E0]();

    return 0;
  }

  return result;
}

double sub_214FBA078(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x2160617E0]();
  if (a6)
  {
    sub_214D6E6C4();
    v9 = sub_2150A5870();
    v10 = *(v9 + 16);
    if (v10)
    {
      v28 = a4;
      v29 = MEMORY[0x277D84F90];
      sub_214F86A20(0, v10, 0);
      v11 = (v9 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;

        MEMORY[0x2160617E0](v12, v13);

        v15 = *(v29 + 16);
        v14 = *(v29 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_214F86A20((v14 > 1), v15 + 1, 1);
        }

        *(v29 + 16) = v15 + 1;
        v16 = v29 + 16 * v15;
        *(v16 + 32) = 0x2020202020202020;
        *(v16 + 40) = 0xE800000000000000;
        v11 += 2;
        --v10;
      }

      while (v10);

      a4 = v28;
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
    sub_214F86A40();
    v21 = sub_2150A4A20();
    v23 = v22;

    if (a4)
    {
      v24 = a4;
    }

    else
    {
      a3 = 0;
      v24 = 0xE000000000000000;
    }

    MEMORY[0x2160617E0](a3, v24);

    MEMORY[0x2160617E0](10, 0xE100000000000000);
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v25 = sub_2150A6100();
    MEMORY[0x2160617E0](v25);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    MEMORY[0x2160617E0](v21, v23);

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v26 = sub_2150A6100();
    MEMORY[0x2160617E0](v26);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0);
    v27 = swift_allocObject();
    *&result = 2;
    *(v27 + 16) = xmmword_2150C29C0;
    *(v27 + 32) = 538976288;
    *(v27 + 40) = 0xE400000000000000;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0xE000000000000000;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2150C29C0;
    *(v17 + 32) = 538976288;
    *(v17 + 40) = 0xE400000000000000;
    if (a4)
    {
      v18 = a3;
    }

    else
    {
      v18 = 0;
    }

    v19 = 0xE000000000000000;
    if (a4)
    {
      v19 = a4;
    }

    *(v17 + 48) = v18;
    *(v17 + 56) = v19;
  }

  return result;
}

double AnyCommand.argumentSummary(for:name:includingType:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _OWORD *a5@<X8>)
{
  sub_214FBB0F8(a1, a2, a3, a4, v8);
  v6 = v8[1];
  *a5 = v8[0];
  a5[1] = v6;
  result = *&v9;
  a5[2] = v9;
  return result;
}

uint64_t sub_214FBA4AC(uint64_t a1, uint64_t a2)
{
  v5 = _sSS11NotesSharedE11typeSummary7forNameS2S_tFZ_0(a1, a2);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v2 = sub_2150A6100();
  MEMORY[0x2160617E0](v2);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](63, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v3 = sub_2150A6100();
  MEMORY[0x2160617E0](v3);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  return v5;
}

uint64_t sub_214FBA634@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  *a4 = (*(*(a2 + 8) + 32))(a1);
  a4[1] = v9;
  result = Commands.defaultCommand()(a1, a2, a4 + 2);
  if (v4)
  {

    *a3 = v4;
  }

  return result;
}

uint64_t sub_214FBA6D0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v4 = sub_2150A6100();
  MEMORY[0x2160617E0](v4);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  v5 = sub_2150A4B40();
  MEMORY[0x2160617E0](v5);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v6 = sub_2150A6100();
  MEMORY[0x2160617E0](v6);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](32, 0xE100000000000000);
  v7 = a3[3];
  v8 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v7);
  v9 = sub_214FB9BCC(v7, v8);
  MEMORY[0x2160617E0](v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2150C29C0;
  *(v10 + 32) = 538976288;
  *(v10 + 40) = 0xE400000000000000;
  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v11);
  *(v10 + 48) = (*(v12 + 24))(v11, v12);
  *(v10 + 56) = v13;
  return v10;
}

unint64_t sub_214FBA930(unint64_t result, uint64_t a2, unint64_t a3)
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
  result = sub_2150A4BF0();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_2150A4D40();
}

uint64_t sub_214FBA9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 24);
  v7 = *(v6() + 16);

  if (v7)
  {
    (v6)(a1, a2);
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v8 = sub_2150A6100();
    MEMORY[0x2160617E0](v8);

    sub_2150A49F0();
    MEMORY[0x2160617E0](124, 0xE100000000000000);
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v9 = sub_2150A6100();
    MEMORY[0x2160617E0](v9);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v10 = sub_2150A6100();
    MEMORY[0x2160617E0](v10);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
    sub_214F86A40();
    v11 = sub_2150A4A20();
    v22 = v12;
    v23 = v11;

    sub_2150A5B20();
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v13 = sub_2150A6100();
    MEMORY[0x2160617E0](v13);

    sub_2150A49F0();

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v14 = sub_2150A6100();
    MEMORY[0x2160617E0](v14);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    MEMORY[0x2160617E0](40, 0xE100000000000000);
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v15 = sub_2150A6100();
    MEMORY[0x2160617E0](v15);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v16 = sub_2150A6100();
    MEMORY[0x2160617E0](v16);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    MEMORY[0x2160617E0](v23, v22);

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v17 = sub_2150A6100();
    MEMORY[0x2160617E0](v17);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v18 = sub_2150A6100();
    MEMORY[0x2160617E0](v18);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    MEMORY[0x2160617E0](41, 0xE100000000000000);
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v19 = sub_2150A6100();
    MEMORY[0x2160617E0](v19);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    result = (*(a2 + 8))(a1);
  }

  else
  {
    result = (*(a2 + 8))(a1, a2);
  }

  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = result;
  a3[3] = v21;
  a3[4] = 0;
  a3[5] = 0;
  return result;
}

uint64_t sub_214FBB0F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  if ((*(v11 + 16))(v10, v11))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    result = 0;
    v16 = 0;
  }

  else
  {
    if (a4)
    {
      v17 = a1[3];
      v18 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v17);
      v29 = (*(v18 + 72))(a2, a3, v17, v18);
      v30 = v19;
    }

    else
    {
      v29 = 0;
      v30 = 0xE000000000000000;
    }

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v20 = sub_2150A6100();
    MEMORY[0x2160617E0](v20);

    sub_2150A49F0();
    MEMORY[0x2160617E0](11565, 0xE200000000000000);
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v21 = sub_2150A6100();
    MEMORY[0x2160617E0](v21);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v22 = sub_2150A6100();
    MEMORY[0x2160617E0](v22);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    MEMORY[0x2160617E0](a2, a3);
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v23 = sub_2150A6100();
    MEMORY[0x2160617E0](v23);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    MEMORY[0x2160617E0](32, 0xE100000000000000);
    MEMORY[0x2160617E0](v29, v30);

    v12 = 0xE000000000000000;
    v24 = a1[3];
    v25 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v24);
    v13 = (*(v25 + 32))(v24, v25);
    v14 = v26;
    v27 = a1[3];
    v28 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v27);
    result = (*(v28 + 40))(v27, v28);
  }

  *a5 = 0;
  a5[1] = v12;
  a5[2] = v13;
  a5[3] = v14;
  a5[4] = result;
  a5[5] = v16;
  return result;
}

__n128 sub_214FBB540@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1;
  v39[0] = a1;
  v39[1] = a2;
  sub_214F50074(a3, v40);
  sub_214F50074(v40, v38);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43190);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43198);
    if (swift_dynamicCast())
    {
      sub_214D7A458(&v37, v34);
      if (a2)
      {
        v41.n128_u64[0] = v5;
        v41.n128_u64[1] = a2;
        swift_bridgeObjectRetain_n();
        v9 = sub_2150A4D30();
        v11 = sub_214FBDA8C(v9, v10);
        v13 = v12;

        v14 = sub_214FBA930(1uLL, v11, v13);
        v16 = v15;
        v18 = v17;
        v20 = v19;

        v5 = MEMORY[0x216061730](v14, v16, v18, v20);
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v23 = v35;
      v24 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v25 = (*(v24 + 8))(v23, v24);
      if (v26)
      {
        v27 = v25;
        v28 = v26;

        v5 = v27;
        v22 = v28;
LABEL_10:
        v41.n128_u64[0] = v5;
        v41.n128_u64[1] = v22;
        v29 = sub_2150A4D30();
        sub_214FBB0F8(v34, v29, v30, 1, &v41);
        v32 = v42;
        v33 = v41;
        v7 = v43;
        v8 = v44;

        __swift_destroy_boxed_opaque_existential_0(v34);
        goto LABEL_13;
      }

      if (v22)
      {
        goto LABEL_10;
      }

      __swift_destroy_boxed_opaque_existential_0(v34);
    }

    v7 = 0;
    v8 = 0;
    v32 = 0u;
    v33 = 0u;
    goto LABEL_13;
  }

  sub_214FBA9E0(v37, *(&v37 + 1), &v41);
  v32 = v42;
  v33 = v41;
  v7 = v43;
  v8 = v44;
LABEL_13:
  __swift_destroy_boxed_opaque_existential_0(v38);
  sub_214F302D4(v39, &qword_27CA43188);
  result = v33;
  *a4 = v33;
  *(a4 + 16) = v32;
  *(a4 + 32) = v7;
  *(a4 + 40) = v8;
  return result;
}

uint64_t sub_214FBB814@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2150A30D0();
  if (!v4)
  {
    v17 = sub_2150A30E0();
    (*(*(v17 - 8) + 8))(a1, v17);
LABEL_15:
    v22 = 0u;
    v23 = 0u;
    goto LABEL_16;
  }

  v5 = v4;
  sub_2150A4AD0();
  sub_2150A5A70();
  if (!*(v5 + 16) || (v6 = sub_214FB1AC4(v21), (v7 & 1) == 0))
  {

    sub_214FB6A0C(v21);
    v22 = 0u;
    v23 = 0u;
    goto LABEL_13;
  }

  sub_214F50074(*(v5 + 56) + 32 * v6, &v22);
  sub_214FB6A0C(v21);

  if (!*(&v23 + 1))
  {
LABEL_13:
    v16 = sub_2150A30E0();
    (*(*(v16 - 8) + 8))(a1, v16);
LABEL_16:
    result = sub_214FBC238(&v22);
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA431B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = sub_2150A30E0();
    result = (*(*(v18 - 8) + 8))(a1, v18);
    goto LABEL_17;
  }

  v8 = v21[0];
  v9 = sub_2150A30D0();
  if (!v9)
  {
    v20 = sub_2150A30E0();
    (*(*(v20 - 8) + 8))(a1, v20);

    goto LABEL_15;
  }

  v10 = v9;
  sub_2150A4AD0();
  sub_2150A5A70();
  if (!*(v10 + 16) || (v11 = sub_214FB1AC4(v21), (v12 & 1) == 0))
  {

    v19 = sub_2150A30E0();
    (*(*(v19 - 8) + 8))(a1, v19);
    sub_214FB6A0C(v21);
    v22 = 0u;
    v23 = 0u;
    goto LABEL_21;
  }

  sub_214F50074(*(v10 + 56) + 32 * v11, &v22);
  v13 = sub_2150A30E0();
  (*(*(v13 - 8) + 8))(a1, v13);
  sub_214FB6A0C(v21);

  if (!*(&v23 + 1))
  {
LABEL_21:

    goto LABEL_16;
  }

  sub_214FBC2A0();
  result = swift_dynamicCast();
  if (result)
  {
    v15 = v21[0];
    *a2 = v8;
    a2[1] = v15;
    return result;
  }

LABEL_17:
  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t ICCloudConfiguration.waitForConfigurationChange(where:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_2150A30E0();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA431A0);
  v3[13] = swift_task_alloc();
  v5 = sub_2150A5640();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214FBBD20, 0, 0);
}

uint64_t sub_214FBBD20()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_2150A5660();

  sub_2150A5630();
  v2 = sub_214FBC190();
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_214FBBE24;
  v4 = v0[13];
  v5 = v0[14];

  return MEMORY[0x282200308](v4, v5, v2);
}

uint64_t sub_214FBBE24()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_214FBC104;
  }

  else
  {
    v2 = sub_214FBBF38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_214FBBF54()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  if (*(v3 + 48))(v1, 1, v2) == 1 || (v4 = v0[12], (*(v3 + 32))(v4, v1, v2), sub_214FBB814(v4, v0 + 2), (v5 = v0[2]) != 0) && (v6 = v0[7], v7 = v0[3], v0[4] = v5, v0[5] = v7, v8 = v6(v0 + 4), sub_214FBC1E8(v5, v7), (v8))
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = sub_214FBC190();
    v12 = swift_task_alloc();
    v0[17] = v12;
    *v12 = v0;
    v12[1] = sub_214FBBE24;
    v13 = v0[13];
    v14 = v0[14];

    return MEMORY[0x282200308](v13, v14, v11);
  }
}

uint64_t sub_214FBC104()
{
  *(v0 + 48) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

unint64_t sub_214FBC190()
{
  result = qword_27CA431A8;
  if (!qword_27CA431A8)
  {
    sub_2150A5640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA431A8);
  }

  return result;
}

void sub_214FBC1E8(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_214FBC238(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_214FBC2A0()
{
  result = qword_27CA431B8;
  if (!qword_27CA431B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA431B8);
  }

  return result;
}

id ICTTTextEditGroup.init(edits:latestTimestamp:userID:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v8 = sub_2150A3A00();
  v23 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  sub_214FBC57C();
  v14 = sub_2150A4EB0();

  sub_214F5D4A4(a2, v13);
  v15 = sub_2150A3960();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v13, 1, v15) != 1)
  {
    v17 = sub_2150A38F0();
    (*(v16 + 8))(v13, v15);
  }

  if (!a4)
  {
    v18 = [objc_opt_self() CR_unknown];
    sub_2150A39C0();

    sub_2150A3990();
    (*(v23 + 8))(v10, v8);
  }

  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20 = sub_2150A4A90();

  v21 = [v19 initWithEdits:v14 latestTimestamp:v17 userID:v20 range:{v24, v25}];

  sub_214F5D43C(a2);
  return v21;
}

unint64_t sub_214FBC57C()
{
  result = qword_27CA42488;
  if (!qword_27CA42488)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA42488);
  }

  return result;
}

uint64_t sub_214FBC5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocError();
  (*(*(a4 - 8) + 32))(v8, a1, a4);

  return MEMORY[0x282200958](a2, v7);
}

uint64_t sub_214FBC65C@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2150A6560();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  a1(v5);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a2, v9, v6);
}

uint64_t ICLegacyContext.fetch<A>(_:)()
{
  v1 = [v0 managedObjectContext];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2150A56E0();
  }

  else
  {
    type metadata accessor for ICError(0);
    v3 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F48);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2150C25D0;
    *(inited + 32) = sub_2150A4AD0();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v6;
    *(inited + 48) = 0xD00000000000002ALL;
    *(inited + 56) = 0x80000002150E58C0;
    sub_214FA4BBC(inited);
    swift_setDeallocating();
    sub_214F88894(inited + 32);
    sub_214F888FC();
    sub_2150A35B0();
    swift_willThrow();
  }

  return v3;
}

uint64_t ICLegacyContext.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_214FBC988, 0, 0);
}

uint64_t sub_214FBC988()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = swift_allocObject();
  v0[8] = v6;
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v5;
  v6[6] = v3;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v2;
  swift_unknownObjectRetain();

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_214FBCAC0;
  v9 = v0[6];
  v10 = v0[2];

  return withUnsafeRethrowingContinuation<A>(_:rethrow:)(v10, sub_214FBD448, v6, sub_214FBD504, v7, v9);
}

uint64_t sub_214FBCAC0()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214FBCC08, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_214FBCC08()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_214FBCC74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a1;
  v14[4] = sub_214FBD4D0;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_214F44018;
  v14[3] = &block_descriptor_14;
  v13 = _Block_copy(v14);

  [a2 performBlock_];
  _Block_release(v13);
}

uint64_t sub_214FBCD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v15 - v12;
  v11();
  (*(v7 + 16))(v10, v13, a5);
  (*(v7 + 32))(*(*(a3 + 64) + 40), v10, a5);
  swift_continuation_throwingResume();
  return (*(v7 + 8))(v13, a5);
}

uint64_t ICLegacyContext.performAndWait<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = a2;
  v6[2] = a3;
  v6[3] = a4;
  return sub_214FBCF6C(sub_214FBD458, v7, sub_214F81934, v6, a3, a4, a5);
}

uint64_t sub_214FBCF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a3;
  v29 = a5;
  v30 = a2;
  v25 = a4;
  v28 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA41DD8);
  v9 = sub_2150A6560();
  v10 = sub_2150A57E0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v17 = *(v9 - 8);
  (*(v17 + 56))(&v25 - v15, 1, 1, v9);
  v18 = swift_allocObject();
  v19 = v30;
  v18[2] = v29;
  v18[3] = a6;
  v18[4] = v16;
  v18[5] = a1;
  v18[6] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_214FBD480;
  *(v20 + 24) = v18;
  aBlock[4] = sub_214F5D418;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214F34100;
  aBlock[3] = &block_descriptor_9;
  v21 = _Block_copy(aBlock);

  [aBlock[7] performBlockAndWait_];
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
    goto LABEL_7;
  }

  (*(v11 + 16))(v14, v16, v10);
  result = (*(v17 + 48))(v14, 1, v9);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v23 = v27;
  sub_214FAAA08(v9, aBlock, v28);
  if (v23)
  {
    v24 = aBlock[0];
    v26(aBlock[0]);
  }

  (*(v11 + 8))(v16, v10);
}

uint64_t sub_214FBD2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA41DD8);
  v9 = sub_2150A6560();
  v10 = sub_2150A57E0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  v17 = a4;
  v18 = a5;
  v19 = a2;
  v20 = a3;
  sub_214FBC65C(sub_214FBD498, &v15 - v12);
  (*(*(v9 - 8) + 56))(v13, 0, 1, v9);
  return (*(v11 + 40))(v16, v13, v10);
}

uint64_t sub_214FBD498(void *a1)
{
  result = (*(v1 + 32))();
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t StringProtocol.converting(from:to:)(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v3) = *v2;
  v14[15] = *v5;
  v14[14] = v3;
  (*(v6 + 16))(v4, v1);
  v7 = sub_2150A4D30();
  v9 = sub_214FBD648(v7, v8);
  v11 = v10;

  v12 = sub_214FBDA8C(v9, v11);

  return v12;
}

uint64_t sub_214FBD648(uint64_t a1, unint64_t a2)
{
  if (*v2)
  {
    if (*v2 == 1)
    {

      sub_2150238C4(1);

      v5 = sub_2150A57F0();

      sub_214FBA930(1uLL, a1, a2);

      sub_214F99030();
      sub_2150A4C00();

      return v5;
    }

    else
    {
      v6 = objc_allocWithZone(type metadata accessor for CustomReplacementRegularExpression());
      v7 = sub_21506780C(0xD000000000000012, 0x80000002150E59B0, sub_214FBD930, 0, 0);
      v8 = sub_2150A4BC0();

      sub_2150A4D30();
      v9 = sub_2150A4A90();

      v10 = sub_2150A4A90();
      v11 = [v7 stringByReplacingMatchesInString:v9 options:0 range:0 withTemplate:{v8, v10}];

      a1 = sub_2150A4AD0();
    }
  }

  else
  {
  }

  return a1;
}

uint64_t sub_214FBD930(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[4];
  if (*(v2 + 16) != 2)
  {

    return v1;
  }

  result = sub_2150A4D40();
  if (*(v2 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    sub_2150A4D40();
    sub_2150A5800();

    v4 = sub_2150A4BC0();
    v5 = sub_2150A5830();
    v6 = __OFADD__(v4, v5);
    result = v4 + v5;
    if (!v6)
    {
      MEMORY[0x216061750](result);
      sub_214F99030();
      sub_2150A4C00();
      sub_2150A4C00();

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_214FBDA8C(uint64_t a1, unint64_t a2)
{
  if (*v2)
  {
    if (*v2 == 1)
    {

      sub_2150238C4(1);

      v5 = sub_2150A5800();

      sub_214FBA930(1uLL, a1, a2);

      sub_214F99030();
      sub_2150A4C00();

      return v5;
    }

    else
    {
      v6 = objc_allocWithZone(MEMORY[0x277CCAC68]);
      v7 = sub_215067730(0xD000000000000011, 0x80000002150E58F0, 0);
      v8 = sub_2150A4BC0();

      sub_2150A4D30();
      v9 = sub_2150A4A90();

      v10 = sub_2150A4A90();
      v11 = [v7 stringByReplacingMatchesInString:v9 options:0 range:0 withTemplate:{v8, v10}];

      sub_2150A4AD0();
      v12 = objc_allocWithZone(MEMORY[0x277CCAC68]);
      v13 = sub_215067730(0xD000000000000017, 0x80000002150E5990, 0);
      v14 = sub_2150A4BC0();

      sub_2150A4D30();
      v15 = sub_2150A4A90();

      v16 = sub_2150A4A90();
      v17 = [v13 stringByReplacingMatchesInString:v15 options:0 range:0 withTemplate:{v14, v16}];

      sub_2150A4AD0();

      a1 = sub_2150A4B40();
    }
  }

  else
  {
  }

  return a1;
}

uint64_t String.Cases.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_2150A5EE0();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t String.Cases.rawValue.getter()
{
  v1 = 0x6D61437265707075;
  if (*v0 != 1)
  {
    v1 = 0x736143626162656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D61437265776F6CLL;
  }
}

uint64_t sub_214FBDF48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6D61437265707075;
  if (v2 == 1)
  {
    v4 = 0xEE00657361436C65;
  }

  else
  {
    v3 = 0x736143626162656BLL;
    v4 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6D61437265776F6CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEE00657361436C65;
  }

  v7 = 0x6D61437265707075;
  if (*a2 == 1)
  {
    v8 = 0xEE00657361436C65;
  }

  else
  {
    v7 = 0x736143626162656BLL;
    v8 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6D61437265776F6CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEE00657361436C65;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2150A6270();
  }

  return v11 & 1;
}

unint64_t sub_214FBE058()
{
  result = qword_27CA431C0;
  if (!qword_27CA431C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA431C0);
  }

  return result;
}

uint64_t sub_214FBE0AC()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FBE15C()
{
  sub_2150A4BB0();
}

uint64_t sub_214FBE1F8()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

void sub_214FBE2B0(uint64_t *a1@<X8>)
{
  v2 = 0xEE00657361436C65;
  v3 = *v1;
  v4 = 0x6D61437265707075;
  v5 = 0xE900000000000065;
  if (v3 == 1)
  {
    v5 = 0xEE00657361436C65;
  }

  else
  {
    v4 = 0x736143626162656BLL;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6D61437265776F6CLL;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

unint64_t sub_214FBE320()
{
  result = qword_27CA431C8;
  if (!qword_27CA431C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA431D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA431C8);
  }

  return result;
}

uint64_t NotificationSource.Iterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_214FBE408, 0, 0);
}

uint64_t sub_214FBE408()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_214F4C734;
  v2 = *(v0 + 16);

  return sub_214FBE4A4(v2);
}

uint64_t sub_214FBE4A4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *MEMORY[0x277D85000] & *v1;
  return MEMORY[0x2822009F8](sub_214FBE4FC, 0, 0);
}

uint64_t sub_214FBE4FC()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_2150A57E0();
  *v4 = v0;
  v4[1] = sub_214FBE610;
  v6 = v0[2];

  return MEMORY[0x282200830](v6, &unk_2150C6358, v2, sub_214FC0FA0, v3, 0, 0, v5);
}

void sub_214FBE610()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 8);

    v3();
  }
}

uint64_t sub_214FBE74C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_214FBE7E4;

  return NotificationSource.Iterator.next()(a1);
}

uint64_t sub_214FBE7E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_214FBE8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_214FBE9A8;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v12);
}

uint64_t sub_214FBE9A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id NotificationSource.makeAsyncIterator()@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

void sub_214FBEAB0(void **a1@<X8>)
{
  NotificationSource.makeAsyncIterator()(a1);
  v2 = *v1;
}

uint64_t sub_214FBEADC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_2150A57E0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v7);
  v13 = *v2;
  if (*(v2 + 8))
  {
    if (*(v2 + 8) == 1)
    {
      *v2 = 0;
      *(v2 + 8) = 2;
      v14 = result;
      (*(v10 + 16))(v9, a1, v4);
      (*(v10 + 56))(v9, 0, 1, v4);
      (*(v6 + 32))(*(*(v13 + 64) + 40), v9, v14);
      return swift_continuation_resume();
    }

    else if (!v13)
    {
      sub_214F5B154(v4, v4);
      swift_allocObject();
      v15 = sub_2150A4EF0();
      (*(v10 + 16))(v16, a1, v4);
      result = v15;
      sub_214F59104();
      *v2 = v15;
      *(v2 + 8) = 0;
    }
  }

  else
  {
    v18 = *v2;
    (*(v10 + 16))(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    sub_2150A4FD0();
    result = sub_2150A4F90();
    *v2 = v18;
    *(v2 + 8) = 0;
  }

  return result;
}

uint64_t sub_214FBED60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = sub_2150A57E0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  if (*(v3 + 8))
  {
    if (*(v3 + 8) == 2)
    {
      if (v15)
      {
        (*(v11 + 56))(v10, 1, 1, v5);
        (*(v7 + 32))(*(*(a1 + 64) + 40), v10, v6);
        return swift_continuation_resume();
      }

      else
      {
        *v3 = a1;
        *(v3 + 8) = 1;
      }
    }

    else
    {
      result = sub_2150A5E10();
      __break(1u);
    }
  }

  else
  {
    v20 = a1;
    v22 = v15;
    sub_2150A4FD0();
    swift_getWitnessTable();
    sub_2150A54A0();
    v16 = v22;
    v21 = v22;
    swift_getWitnessTable();
    if (sub_2150A5450())
    {

      v16 = 0;
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    v18 = v20;
    *v3 = v16;
    *(v3 + 8) = v17;
    (*(v11 + 16))(v10, v14, v5);
    (*(v11 + 56))(v10, 0, 1, v5);
    (*(v7 + 32))(*(*(v18 + 64) + 40), v10, v6);
    swift_continuation_resume();
    return (*(v11 + 8))(v14, v5);
  }

  return result;
}

uint64_t sub_214FBF094(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2150A57E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  if (v8 == 1)
  {
    (*(*(v2 - 8) + 56))(v6, v8, 1, v2);
    (*(v4 + 32))(*(*(v7 + 64) + 40), v6, v3);
    result = swift_continuation_resume();
  }

  else
  {
    result = sub_214D5B0F0(*v1, v8);
  }

  *v1 = 1;
  *(v1 + 8) = 2;
  return result;
}

void sub_214FBF1D8()
{
  ObjectType = swift_getObjectType();
  v1 = qword_27CA431E8;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 48) + ((v8 << 9) | (8 * v9)));
    v11 = [objc_opt_self() defaultCenter];
    [v11 _removeObserver_];
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      v13.receiver = v0;
      v13.super_class = ObjectType;
      objc_msgSendSuper2(&v13, sel_dealloc);
      return;
    }

    v5 = *(v2 + 56 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_214FBF35C()
{
}

uint64_t sub_214FBF3BC(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *MEMORY[0x277D85000] & *a2;
  return MEMORY[0x2822009F8](sub_214FBF414, 0, 0);
}

uint64_t sub_214FBF414()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  sub_2150A57E0();
  *v3 = v0;
  v3[1] = sub_214FBF50C;
  v4 = v0[2];

  return sub_214FBF6EC(v4, 0, 0, sub_214FC0FEC, v2);
}

uint64_t sub_214FBF50C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_214FBF620(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + qword_27CA431F8);
  type metadata accessor for NotificationSource.Observer.State();
  v3 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v3));
  sub_214FC0FF4();
  os_unfair_lock_unlock((v2 + v3));
}

uint64_t sub_214FBF6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_2150A5010();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x2822009F8](sub_214FBF780, v6, v8);
}

uint64_t sub_214FBF780()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_214FBF828;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_214FBF828()
{
  v1 = *(*v0 + 8);

  return v1();
}

void sub_214FBF900(uint64_t a1)
{
  v1 = *(a1 + qword_27CA431F8);
  type metadata accessor for NotificationSource.Observer.State();
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  sub_214FC0FA8();
  os_unfair_lock_unlock((v1 + v2));
}

uint64_t sub_214FBF9F4(void *a1, void *a2)
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

    v9 = sub_2150A59E0();

    if (v9)
    {

      sub_214D55670(0, &qword_280C24528);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2150A59D0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_214FC0830(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_214FC3A2C(v20 + 1);
    }

    v18 = v8;
    sub_214FC0E00(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_214D55670(0, &qword_280C24528);
  v11 = sub_2150A5770();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2150783EC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2150A5780();

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

uint64_t sub_214FBFC2C(void *a1, void *a2)
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

    v9 = sub_2150A59E0();

    if (v9)
    {

      sub_214D55670(0, &qword_280C24888);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2150A59D0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_214FC0A20(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_214FC3A40(v20 + 1);
    }

    v18 = v8;
    sub_214FC0E00(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_214D55670(0, &qword_280C24888);
  v11 = sub_2150A5770();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_21507857C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2150A5780();

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

uint64_t sub_214FBFE64(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2150A3A00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_214FA94F4(&qword_280C241B0);
  v33 = a2;
  v11 = sub_2150A49A0();
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
      sub_214FA94F4(&qword_280C241A8);
      v21 = sub_2150A4A80();
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
    sub_21507870C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_214FC011C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2150A64B0();
  sub_2150A4BB0();
  v8 = sub_2150A64E0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2150A6270() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2150789B0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_214FC02AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_214FC02F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_214FC0338(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_214FC0350(void *a1, void *a2)
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

    v9 = sub_2150A59E0();

    if (v9)
    {

      sub_214D55670(0, &qword_27CA44A80);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2150A59D0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_214FC0C10(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_214FC3FE0(v20 + 1);
    }

    v18 = v8;
    sub_214FC0E00(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_214D55670(0, &qword_27CA44A80);
  v11 = sub_2150A5770();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_215078B30(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2150A5780();

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

uint64_t sub_214FC0588(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_2150A64B0();
  sub_2150A4BB0();

  v5 = sub_2150A64E0();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v29 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v28 = ~v6;
    v8 = 0x6C6F686563616C70;
    v30 = v4;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      v10 = v9 == 2 ? 0x726F707075736E75 : v8;
      v11 = v9 == 2 ? 0xEB00000000646574 : 0xEB00000000726564;
      v12 = *(*(v4 + 48) + v7) ? 0x6C61636F6CLL : 0xD000000000000011;
      v13 = *(*(v4 + 48) + v7) ? 0xE500000000000000 : 0x80000002150E1960;
      v14 = *(*(v4 + 48) + v7) <= 1u ? v12 : v10;
      v15 = *(*(v4 + 48) + v7) <= 1u ? v13 : v11;
      v16 = a2 == 2 ? 0x726F707075736E75 : v8;
      v17 = a2 == 2 ? 0xEB00000000646574 : 0xEB00000000726564;
      v18 = a2 ? 0x6C61636F6CLL : 0xD000000000000011;
      v19 = a2 ? 0xE500000000000000 : 0x80000002150E1960;
      v20 = a2 <= 1u ? v18 : v16;
      v21 = a2 <= 1u ? v19 : v17;
      v31 = v7;
      if (v14 == v20 && v15 == v21)
      {
        break;
      }

      v22 = v8;
      v23 = sub_2150A6270();

      if (v23)
      {
        goto LABEL_45;
      }

      v4 = v30;
      v7 = (v31 + 1) & v28;
      v8 = v22;
      if (((*(v29 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_45:
    result = 0;
    LOBYTE(a2) = *(*(v30 + 48) + v31);
  }

  else
  {
LABEL_43:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v26;
    sub_215078CC0(a2, v7, isUniquelyReferenced_nonNull_native);
    *v26 = v32;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_214FC0830(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43208);
    v2 = sub_2150A5AB0();
    v15 = v2;
    sub_2150A5980();
    if (sub_2150A5A10())
    {
      sub_214D55670(0, &qword_280C24528);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_214FC3A2C(v9 + 1);
        }

        v2 = v15;
        result = sub_2150A5770();
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

      while (sub_2150A5A10());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_214FC0A20(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43200);
    v2 = sub_2150A5AB0();
    v15 = v2;
    sub_2150A5980();
    if (sub_2150A5A10())
    {
      sub_214D55670(0, &qword_280C24888);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_214FC3A40(v9 + 1);
        }

        v2 = v15;
        result = sub_2150A5770();
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

      while (sub_2150A5A10());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_214FC0C10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42458);
    v2 = sub_2150A5AB0();
    v15 = v2;
    sub_2150A5980();
    if (sub_2150A5A10())
    {
      sub_214D55670(0, &qword_27CA44A80);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_214FC3FE0(v9 + 1);
        }

        v2 = v15;
        result = sub_2150A5770();
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

      while (sub_2150A5A10());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t sub_214FC0E00(uint64_t a1, uint64_t a2)
{
  sub_2150A5770();
  result = sub_2150A5960();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_214FC0EB4()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for NotificationSource.Observer.State();
  return sub_214FBEADC(v1, v2);
}

uint64_t sub_214FC0F00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214F53FB0;

  return sub_214FBF3BC(a1, v4);
}

uint64_t sub_214FC0FF4()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for NotificationSource.Observer.State();
  return sub_214FBED60(v1, v2);
}

void sub_214FC1048(uint64_t a1, char a2)
{
  v2 = a1;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2150A59D0();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  if (v3)
  {
    v38 = MEMORY[0x277D84F90];
    sub_214F86FAC(0, v3 & ~(v3 >> 63), 0);
    v4 = v38;
    if (v32)
    {
      v5 = sub_2150A5970();
    }

    else
    {
      v5 = sub_2150A5940();
      v6 = *(v2 + 36);
    }

    v35 = v5;
    v36 = v6;
    v37 = v32 != 0;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v29 = v2 + 56;
      v28 = v2 + 64;
      v30 = v3;
      while (v7 < v3)
      {
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_36;
        }

        v10 = v35;
        v11 = v36;
        v12 = v37;
        v13 = v2;
        sub_214FB4088(v35, v36, v37, v2);
        ICObjectReferences<>.init(attachment:recursivelyIncludeChildren:)(v14, a2 & 1, v34);
        v15 = v34[0];
        v38 = v4;
        v17 = *(v4 + 16);
        v16 = *(v4 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_214F86FAC((v16 > 1), v17 + 1, 1);
          v4 = v38;
        }

        *(v4 + 16) = v17 + 1;
        *(v4 + 8 * v17 + 32) = v15;
        v33 = v4;
        if (v32)
        {
          if (!v12)
          {
            goto LABEL_41;
          }

          v2 = v13;
          if (sub_2150A5990())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v3 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43248);
          v8 = sub_2150A5310();
          sub_2150A5A40();
          v8(v34, 0);
        }

        else
        {
          if (v12)
          {
            goto LABEL_42;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v2 = v13;
          v18 = 1 << *(v13 + 32);
          if (v10 >= v18)
          {
            goto LABEL_37;
          }

          v19 = v10 >> 6;
          v20 = *(v29 + 8 * (v10 >> 6));
          if (((v20 >> v10) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(v13 + 36) != v11)
          {
            goto LABEL_39;
          }

          v21 = v20 & (-2 << (v10 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v10 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_214D5A7C8(v10, v11, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_32;
              }
            }

            sub_214D5A7C8(v10, v11, 0);
          }

LABEL_32:
          v27 = *(v13 + 36);
          v35 = v18;
          v36 = v27;
          v37 = 0;
          v3 = v30;
        }

        v4 = v33;
        if (v7 == v3)
        {
          sub_214D5A7C8(v35, v36, v37);
          return;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }
}

uint64_t sub_214FC138C()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA43210);
  v1 = __swift_project_value_buffer(v0, qword_27CA43210);
  if (qword_27CA414B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CA42840);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t ICModernObjectProvider.__allocating_init(context:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

double ICModernObjectProvider.object(for:)@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(v2 + 16);
  v6 = v4 >> 62;
  v7 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  if (!(v4 >> 62))
  {
    v7 = v4;
  }

  if (v6 > 1)
  {
    v7 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  }

  v8 = *(v7 + 16);
  v24[0] = 0;
  v9 = [v5 existingObjectWithID:v8 error:v24];
  v23 = v24[0];
  if (v9)
  {
    *(a2 + 24) = sub_214D55670(0, &qword_27CA43228);
    *a2 = v9;

    v10 = v23;
  }

  else
  {
    v12 = v24[0];
    v13 = sub_2150A35D0();

    swift_willThrow();
    if (qword_27CA41658 != -1)
    {
      swift_once();
    }

    v14 = sub_2150A3F30();
    __swift_project_value_buffer(v14, qword_27CA43210);

    v15 = sub_2150A3F10();
    v16 = sub_2150A5560();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v17 = 138412290;
      if (v6)
      {
        v20 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v4;
      }

      v21 = *(v20 + 16);
      *(v17 + 4) = v21;
      *v18 = v21;
      v22 = v21;
      _os_log_impl(&dword_214D51000, v15, v16, "Modern Notes object does not exist in context {identifier: %@}", v17, 0xCu);
      sub_214F302D4(v19, &qword_27CA41DF0);
      MEMORY[0x216064AF0](v19, -1, -1);
      MEMORY[0x216064AF0](v17, -1, -1);
    }

    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t ICModernObjectProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void ICObjectReferences<>.init(object:recursivelyIncludeChildren:forPagesHandoff:)(void *a1@<X0>, char a2@<W1>, char a3@<W2>, char **a4@<X8>)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    ICObjectReferences<>.init(account:recursivelyIncludeChildren:)(v8, a2 & 1, &v25);
    v9 = v25;
  }

  else
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      ICObjectReferences<>.init(folder:recursivelyIncludeChildren:)(v10, a2 & 1, &v25);
      v9 = v25;
    }

    else
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        ICObjectReferences<>.init(note:recursivelyIncludeChildren:forPagesHandoff:)(v11, a2 & 1, a3 & 1, &v25);
        v9 = v25;
      }

      else
      {
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          ICObjectReferences<>.init(attachment:recursivelyIncludeChildren:)(v12, a2 & 1, &v25);
          v9 = v25;
        }

        else
        {
          if (qword_27CA41658 != -1)
          {
            swift_once();
          }

          v13 = sub_2150A3F30();
          __swift_project_value_buffer(v13, qword_27CA43210);
          v14 = a1;
          v15 = sub_2150A3F10();
          v16 = sub_2150A5570();

          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            v25 = v18;
            *v17 = 136315138;
            v19 = [v14 identifier];
            if (v19)
            {
              v20 = v19;
              v21 = sub_2150A4AD0();
              v23 = v22;
            }

            else
            {
              v23 = 0xA300000000000000;
              v21 = 9732322;
            }

            v24 = sub_214F7723C(v21, v23, &v25);

            *(v17 + 4) = v24;
            _os_log_impl(&dword_214D51000, v15, v16, "Cannot create reference for object {identifier: %s}", v17, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v18);
            MEMORY[0x216064AF0](v18, -1, -1);
            MEMORY[0x216064AF0](v17, -1, -1);
          }

          v9 = 0xF000000000000007;
        }
      }
    }
  }

  *a4 = v9;
}

void ICObjectReferences<>.init(account:recursivelyIncludeChildren:)(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    v15 = swift_allocObject();
    v15[2] = [a1 objectID];
    v16 = [a1 name];
    v17 = sub_2150A4AD0();
    v19 = v18;

    v15[3] = v17;
    v15[4] = v19;

    v15[5] = MEMORY[0x277D84F90];
LABEL_17:
    *a3 = v15;
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C26E0;
  *(inited + 32) = [a1 defaultFolder];
  v6 = [a1 visibleSubFolders];
  sub_214D55670(0, &qword_27CA44B90);
  v7 = sub_2150A4ED0();

  v26 = inited;
  sub_2150689F8(v7);
  if (!(inited >> 62))
  {
    v8 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_15:

    v10 = MEMORY[0x277D84F90];
LABEL_16:
    v15 = swift_allocObject();
    v15[2] = [a1 objectID];
    v20 = [a1 name];
    v21 = sub_2150A4AD0();
    v23 = v22;

    v15[3] = v21;
    v15[4] = v23;
    v15[5] = v10;
    goto LABEL_17;
  }

  v8 = sub_2150A59D0();
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  v26 = MEMORY[0x277D84F90];
  sub_214F86FAC(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v24 = a3;
    v9 = 0;
    v10 = v26;
    do
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x216062780](v9, inited);
      }

      else
      {
        v11 = *(inited + 8 * v9 + 32);
      }

      ICObjectReferences<>.init(folder:recursivelyIncludeChildren:)(v11, 1, &v25);
      v12 = v25;
      v26 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_214F86FAC((v13 > 1), v14 + 1, 1);
        v10 = v26;
      }

      ++v9;
      *(v10 + 16) = v14 + 1;
      *(v10 + 8 * v14 + 32) = v12;
    }

    while (v8 != v9);

    a3 = v24;
    goto LABEL_16;
  }

  __break(1u);
}

void ICObjectReferences<>.init(folder:recursivelyIncludeChildren:)(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v103[1] = *MEMORY[0x277D85DE8];
  v90 = a3;
  if ((a2 & 1) == 0)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = [a1 objectID];
    v14 = [a1 title];
    v15 = sub_2150A4AD0();
    v17 = v16;

    *(v13 + 24) = v15;
    *(v13 + 32) = v17;

    v18 = MEMORY[0x277D84F90];
LABEL_95:
    *(v13 + 40) = v18;
    *v90 = v13 | 0x4000000000000000;
    return;
  }

  v89 = a1;
  v4 = [v89 visibleSubFolders];
  sub_214D55670(0, &qword_27CA44B90);
  v5 = sub_2150A4ED0();

  if (v5 >> 62)
  {
    v6 = sub_2150A59D0();
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_4:
      v102 = MEMORY[0x277D84F90];
      sub_214F86FAC(0, v6 & ~(v6 >> 63), 0);
      if (v6 < 0)
      {
        __break(1u);
LABEL_102:
        __break(1u);
      }

      v7 = 0;
      v8 = v102;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x216062780](v7, v5);
        }

        else
        {
          v9 = *(v5 + 8 * v7 + 32);
        }

        ICObjectReferences<>.init(folder:recursivelyIncludeChildren:)(v103, v9, 1);
        v10 = v103[0];
        v102 = v8;
        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_214F86FAC((v11 > 1), v12 + 1, 1);
          v8 = v102;
        }

        ++v7;
        *(v8 + 16) = v12 + 1;
        *(v8 + 8 * v12 + 32) = v10;
      }

      while (v6 != v7);
      v87 = v8;

      goto LABEL_16;
    }
  }

  v87 = MEMORY[0x277D84F90];
LABEL_16:
  v19 = [v89 visibleNotes];

  sub_214D55670(0, &qword_27CA43100);
  v20 = sub_2150A4ED0();

  if (v20 >> 62)
  {
    goto LABEL_100;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v88 = v20;
    v22 = MEMORY[0x277D84F90];
    if (!v21)
    {
LABEL_94:

      v13 = swift_allocObject();
      v82 = v89;
      *(v13 + 16) = [v89 objectID];
      v83 = [v82 title];
      v84 = sub_2150A4AD0();
      v86 = v85;

      *(v13 + 24) = v84;
      *(v13 + 32) = v86;
      v102 = v87;
      sub_215068B08(v22);

      v18 = v102;
      goto LABEL_95;
    }

    v23 = 0;
    v99 = v88 & 0xFFFFFFFFFFFFFF8;
    v100 = v88 & 0xC000000000000001;
    v97 = 0;
    v98 = v88 + 32;
    v24 = &selRef_mergeUnappliedEncryptedRecordsQueue;
    v95 = v21;
    while (1)
    {
      if (v100)
      {
        v25 = MEMORY[0x216062780](v23, v88);
      }

      else
      {
        if (v23 >= *(v99 + 16))
        {
          goto LABEL_99;
        }

        v25 = *(v98 + 8 * v23);
      }

      v26 = v25;
      v27 = __OFADD__(v23++, 1);
      if (v27)
      {
        goto LABEL_98;
      }

      if (([v25 isPasswordProtected] & 1) == 0)
      {
        break;
      }

      v28 = swift_allocObject();
      *(v28 + 16) = [v26 objectID];
      v29 = [v26 title];
      if (v29)
      {
        v30 = v29;
        v31 = sub_2150A4AD0();
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 0;
      }

      *(v28 + 24) = v31;
      *(v28 + 32) = v33;

      *(v28 + 40) = MEMORY[0x277D84F90];
LABEL_83:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_215060214(0, v22[2] + 1, 1, v22);
      }

      v78 = v22[2];
      v77 = v22[3];
      v20 = v78 + 1;
      if (v78 >= v77 >> 1)
      {
        v22 = sub_215060214((v77 > 1), v78 + 1, 1, v22);
      }

      v22[2] = v20;
      v22[v78 + 4] = v28 | 0x8000000000000000;
      if (v23 == v21)
      {
        goto LABEL_94;
      }
    }

    v34 = [v26 attachments];
    if (!v34)
    {
      v54 = 0;
LABEL_77:
      v28 = swift_allocObject();
      *(v28 + 16) = [v26 objectID];
      v71 = [v26 title];
      if (v71)
      {
        v72 = v71;
        v73 = sub_2150A4AD0();
        v75 = v74;
      }

      else
      {
        v73 = 0;
        v75 = 0;
      }

      *(v28 + 24) = v73;
      *(v28 + 32) = v75;

      v76 = MEMORY[0x277D84F90];
      if (v54)
      {
        v76 = v54;
      }

      *(v28 + 40) = v76;
      v24 = &selRef_mergeUnappliedEncryptedRecordsQueue;
      goto LABEL_83;
    }

    v35 = v34;
    sub_214D55670(0, &qword_27CA44A30);
    sub_214FC4C18(&qword_27CA41E30, &qword_27CA44A30);
    v36 = sub_2150A52E0();

    v96 = v22;
    if ((v36 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x277D84FA0];
      v102 = MEMORY[0x277D84FA0];
      sub_2150A5980();
      v39 = sub_2150A5A10();
      if (v39)
      {
        v21 = v95;
        while (1)
        {
          v101 = v39;
          swift_dynamicCast();
          v40 = v103[0];
          if (([v103[0] v24[98]] & 1) == 0 && (objc_msgSend(v40, sel_markedForDeletion) & 1) == 0)
          {
            v41 = [v40 parentAttachment];
            if (!v41)
            {
              v42 = v103[0];
              v43 = *(v38 + 16);
              if (*(v38 + 24) <= v43)
              {
                sub_214FC3FF4(v43 + 1, &qword_27CA42470);
              }

              v38 = v102;
              v20 = v42;
              v44 = sub_2150A5770();
              v45 = v38 + 56;
              v46 = -1 << *(v38 + 32);
              v47 = v44 & ~v46;
              v48 = v47 >> 6;
              if (((-1 << v47) & ~*(v38 + 56 + 8 * (v47 >> 6))) != 0)
              {
                v49 = __clz(__rbit64((-1 << v47) & ~*(v38 + 56 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v50 = 0;
                v51 = (63 - v46) >> 6;
                do
                {
                  if (++v48 == v51 && (v50 & 1) != 0)
                  {
                    goto LABEL_97;
                  }

                  v52 = v48 == v51;
                  if (v48 == v51)
                  {
                    v48 = 0;
                  }

                  v50 |= v52;
                  v53 = *(v45 + 8 * v48);
                }

                while (v53 == -1);
                v49 = __clz(__rbit64(~v53)) + (v48 << 6);
              }

              *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
              *(*(v38 + 48) + 8 * v49) = v42;
              ++*(v38 + 16);
              v24 = &selRef_mergeUnappliedEncryptedRecordsQueue;
              goto LABEL_36;
            }
          }

LABEL_36:
          v39 = sub_2150A5A10();
          if (!v39)
          {
            goto LABEL_75;
          }
        }
      }

      v21 = v95;
LABEL_75:

      goto LABEL_76;
    }

    v55 = *(v36 + 32);
    v56 = ((1 << v55) + 63) >> 6;
    if ((v55 & 0x3Fu) <= 0xD)
    {
      goto LABEL_55;
    }

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_55:
      v91 = &v87;
      v92 = v56;
      MEMORY[0x28223BE20](v37);
      v93 = &v87 - ((v57 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v93, v57);
      v94 = 0;
      v58 = 0;
      v20 = v36 + 56;
      v59 = 1 << *(v36 + 32);
      if (v59 < 64)
      {
        v60 = ~(-1 << v59);
      }

      else
      {
        v60 = -1;
      }

      v61 = v60 & *(v36 + 56);
      v62 = (v59 + 63) >> 6;
      while (v61)
      {
        v63 = __clz(__rbit64(v61));
        v61 &= v61 - 1;
LABEL_67:
        v66 = v63 | (v58 << 6);
        v67 = *(*(v36 + 48) + 8 * v66);
        if (([v67 needsInitialFetchFromCloud] & 1) != 0 || objc_msgSend(v67, sel_markedForDeletion) || (v68 = objc_msgSend(v67, sel_parentAttachment), v67, (v67 = v68) != 0))
        {
        }

        else
        {
          *&v93[(v66 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v66;
          v27 = __OFADD__(v94++, 1);
          if (v27)
          {
            goto LABEL_102;
          }
        }
      }

      v64 = v58;
      while (1)
      {
        v58 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          break;
        }

        if (v58 >= v62)
        {
          v38 = sub_214FC46E8(v93, v92, v94, v36);
          v21 = v95;
          goto LABEL_76;
        }

        v65 = *(v20 + 8 * v58);
        ++v64;
        if (v65)
        {
          v63 = __clz(__rbit64(v65));
          v61 = (v65 - 1) & v65;
          goto LABEL_67;
        }
      }

      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      v21 = sub_2150A59D0();
      continue;
    }

    break;
  }

  v79 = swift_slowAlloc();

  v80 = v97;
  v81 = sub_214FC4658(v79, v56, v36, sub_214FC3490);
  v97 = v80;
  if (!v80)
  {
    v38 = v81;
    swift_bridgeObjectRelease_n();
    MEMORY[0x216064AF0](v79, -1, -1);
    v21 = v95;
LABEL_76:
    v69 = v97;
    sub_214FC1048(v38, 1);
    v54 = v70;
    v97 = v69;

    v22 = v96;
    goto LABEL_77;
  }

  swift_bridgeObjectRelease_n();
  MEMORY[0x216064AF0](v79, -1, -1);
  __break(1u);
}

void ICObjectReferences<>.init(note:recursivelyIncludeChildren:forPagesHandoff:)(id a1@<X0>, char a2@<W1>, char a3@<W2>, char **a4@<X8>)
{
  v62 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0 || [a1 isPasswordProtected] && (a3 & 1) == 0)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = [a1 objectID];
    v8 = [a1 title];
    if (v8)
    {
      v9 = v8;
      v10 = sub_2150A4AD0();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    *(v7 + 24) = v10;
    *(v7 + 32) = v12;

    v13 = MEMORY[0x277D84F90];
    goto LABEL_59;
  }

  v14 = [a1 attachments];
  if (!v14)
  {
    v33 = 0;
    goto LABEL_54;
  }

  v15 = v14;
  sub_214D55670(0, &qword_27CA44A30);
  sub_214FC4C18(&qword_27CA41E30, &qword_27CA44A30);
  v16 = sub_2150A52E0();

  if ((v16 & 0xC000000000000001) == 0)
  {
    v34 = *(v16 + 32);
    v56 = ((1 << v34) + 63) >> 6;
    if ((v34 & 0x3Fu) <= 0xD)
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

  v58 = a4;
  v18 = MEMORY[0x277D84FA0];
  v61 = MEMORY[0x277D84FA0];
  sub_2150A5980();
  v19 = sub_2150A5A10();
  if (!v19)
  {
LABEL_32:

    a4 = v58;
    goto LABEL_53;
  }

  a4 = &selRef_initWithUserQueryString_userQueryContext_;
  while (1)
  {
    v59 = v19;
    swift_dynamicCast();
    if ([v60 needsInitialFetchFromCloud] & 1) != 0 || (objc_msgSend(v60, sel_markedForDeletion))
    {
      goto LABEL_16;
    }

    v20 = [v60 parentAttachment];
    if (!v20)
    {
      break;
    }

LABEL_16:
LABEL_17:
    v19 = sub_2150A5A10();
    if (!v19)
    {
      goto LABEL_32;
    }
  }

  v21 = v60;
  v22 = v18[2];
  if (v18[3] <= v22)
  {
    sub_214FC3FF4(v22 + 1, &qword_27CA42470);
  }

  v18 = v61;
  v16 = v60;
  v23 = sub_2150A5770();
  v24 = v61 + 56;
  v25 = -1 << *(v61 + 32);
  v26 = v23 & ~v25;
  v27 = v26 >> 6;
  if (((-1 << v26) & ~*(v61 + 56 + 8 * (v26 >> 6))) != 0)
  {
    v28 = __clz(__rbit64((-1 << v26) & ~*(v61 + 56 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
    *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(v18[6] + 8 * v28) = v21;
    ++v18[2];
    goto LABEL_17;
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v24 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_31;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_62:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_35:
    v55[1] = v55;
    MEMORY[0x28223BE20](v17);
    v57 = v55 - ((v35 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v57, v35);
    v58 = 0;
    v36 = 0;
    v37 = 1 << *(v16 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v16 + 56);
    v40 = (v37 + 63) >> 6;
    while (v39)
    {
      v41 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
LABEL_46:
      v44 = v41 | (v36 << 6);
      v45 = *(*(v16 + 48) + 8 * v44);
      if ([v45 needsInitialFetchFromCloud] || (objc_msgSend(v45, sel_markedForDeletion) & 1) != 0 || (v46 = objc_msgSend(v45, sel_parentAttachment), v45, (v45 = v46) != 0))
      {
      }

      else
      {
        *&v57[(v44 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v44;
        v47 = __OFADD__(v58, 1);
        v58 = (v58 + 1);
        if (v47)
        {
          __break(1u);
LABEL_52:
          v18 = sub_214FC46E8(v57, v56, v58, v16);
          goto LABEL_53;
        }
      }
    }

    v42 = v36;
    while (1)
    {
      v36 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v36 >= v40)
      {
        goto LABEL_52;
      }

      v43 = *(v16 + 56 + 8 * v36);
      ++v42;
      if (v43)
      {
        v41 = __clz(__rbit64(v43));
        v39 = (v43 - 1) & v43;
        goto LABEL_46;
      }
    }

    __break(1u);
  }

  v54 = swift_slowAlloc();
  v18 = sub_214FC4658(v54, v56, v16, sub_214FC3490);

  MEMORY[0x216064AF0](v54, -1, -1);
LABEL_53:
  sub_214FC1048(v18, 1);
  v33 = v48;

LABEL_54:
  v7 = swift_allocObject();
  *(v7 + 16) = [a1 objectID];
  v49 = [a1 title];
  if (v49)
  {
    v50 = v49;
    v51 = sub_2150A4AD0();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  *(v7 + 24) = v51;
  *(v7 + 32) = v53;

  v13 = MEMORY[0x277D84F90];
  if (v33)
  {
    v13 = v33;
  }

LABEL_59:
  *(v7 + 40) = v13;
  *a4 = (v7 | 0x8000000000000000);
}

void ICObjectReferences<>.init(attachment:recursivelyIncludeChildren:)(id a1@<X0>, char a2@<W1>, unint64_t *a3@<X8>)
{
  v59 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = [a1 objectID];
    v24 = [a1 title];
    if (v24)
    {
      v25 = v24;
      v26 = sub_2150A4AD0();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    *(v23 + 24) = v26;
    *(v23 + 32) = v28;
    *(v23 + 40) = 0;

    *(v23 + 48) = MEMORY[0x277D84F90];
    goto LABEL_54;
  }

  v5 = [a1 subAttachments];
  if (!v5)
  {
    v29 = 0;
    goto LABEL_48;
  }

  v6 = v5;
  sub_214D55670(0, &qword_27CA44A30);
  sub_214FC4C18(&qword_27CA41E30, &qword_27CA44A30);
  v7 = sub_2150A52E0();

  v55 = a3;
  if ((v7 & 0xC000000000000001) == 0)
  {
    v30 = *(v7 + 32);
    v52 = ((1 << v30) + 63) >> 6;
    if ((v30 & 0x3Fu) <= 0xD)
    {
      goto LABEL_30;
    }

    goto LABEL_56;
  }

  v9 = MEMORY[0x277D84FA0];
  v58 = MEMORY[0x277D84FA0];
  sub_2150A5980();
  v10 = sub_2150A5A10();
  if (!v10)
  {
LABEL_25:

    goto LABEL_47;
  }

  while (1)
  {
    v56 = v10;
    swift_dynamicCast();
    if (([v57 needsInitialFetchFromCloud] & 1) == 0 && (objc_msgSend(v57, sel_markedForDeletion) & 1) == 0)
    {
      break;
    }

LABEL_7:
    v10 = sub_2150A5A10();
    if (!v10)
    {
      goto LABEL_25;
    }
  }

  v11 = v57;
  v12 = v9[2];
  if (v9[3] <= v12)
  {
    sub_214FC3FF4(v12 + 1, &qword_27CA42470);
  }

  v9 = v58;
  v7 = v57;
  v13 = sub_2150A5770();
  v14 = v58 + 56;
  v15 = -1 << *(v58 + 32);
  v16 = v13 & ~v15;
  v17 = v16 >> 6;
  if (((-1 << v16) & ~*(v58 + 56 + 8 * (v16 >> 6))) != 0)
  {
    v18 = __clz(__rbit64((-1 << v16) & ~*(v58 + 56 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
    *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(v9[6] + 8 * v18) = v11;
    ++v9[2];
    goto LABEL_7;
  }

  v19 = 0;
  v20 = (63 - v15) >> 6;
  while (++v17 != v20 || (v19 & 1) == 0)
  {
    v21 = v17 == v20;
    if (v17 == v20)
    {
      v17 = 0;
    }

    v19 |= v21;
    v22 = *(v14 + 8 * v17);
    if (v22 != -1)
    {
      v18 = __clz(__rbit64(~v22)) + (v17 << 6);
      goto LABEL_22;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_56:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_30:
    v51 = &v51;
    MEMORY[0x28223BE20](v8);
    v53 = &v51 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v53, v31);
    v54 = 0;
    v32 = 0;
    v33 = 1 << *(v7 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v7 + 56);
    v36 = (v33 + 63) >> 6;
    while (v35)
    {
      v37 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
LABEL_41:
      v40 = v37 | (v32 << 6);
      v41 = *(*(v7 + 48) + 8 * v40);
      if ([v41 needsInitialFetchFromCloud])
      {
      }

      else
      {
        v42 = [v41 markedForDeletion];

        if ((v42 & 1) == 0)
        {
          *&v53[(v40 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v40;
          if (__OFADD__(v54++, 1))
          {
            __break(1u);
LABEL_46:
            v9 = sub_214FC46E8(v53, v52, v54, v7);
            goto LABEL_47;
          }
        }
      }
    }

    v38 = v32;
    while (1)
    {
      v32 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v32 >= v36)
      {
        goto LABEL_46;
      }

      v39 = *(v7 + 56 + 8 * v32);
      ++v38;
      if (v39)
      {
        v37 = __clz(__rbit64(v39));
        v35 = (v39 - 1) & v39;
        goto LABEL_41;
      }
    }
  }

  v50 = swift_slowAlloc();
  v9 = sub_214FC4658(v50, v52, v7, sub_214FC350C);

  MEMORY[0x216064AF0](v50, -1, -1);
LABEL_47:
  v29 = sub_214FC1048(v9, 1);

  a3 = v55;
LABEL_48:
  v23 = swift_allocObject();
  *(v23 + 16) = [a1 objectID];
  v44 = [a1 title];
  if (v44)
  {
    v45 = v44;
    v46 = sub_2150A4AD0();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  *(v23 + 24) = v46;
  *(v23 + 32) = v48;

  v49 = MEMORY[0x277D84F90];
  if (v29)
  {
    v49 = v29;
  }

  *(v23 + 48) = v49;
  *(v23 + 40) = 0;
LABEL_54:
  *a3 = v23 | 0xC000000000000000;
}

uint64_t sub_214FC3490(id *a1)
{
  v1 = *a1;
  if ([*a1 needsInitialFetchFromCloud] & 1) != 0 || (objc_msgSend(v1, sel_markedForDeletion))
  {
    return 0;
  }

  v2 = [v1 parentAttachment];
  if (v2)
  {

    return 0;
  }

  return 1;
}

uint64_t sub_214FC350C(id *a1)
{
  v1 = *a1;
  if ([*a1 needsInitialFetchFromCloud])
  {
    return 0;
  }

  else
  {
    return [v1 markedForDeletion] ^ 1;
  }
}

void sub_214FC35E0(unint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v32 = a1;
  ICModernObjectProvider.object(for:)(&v32, v31);
  if (!v31[3])
  {
    sub_214F302D4(v31, &qword_27CA42178);
    goto LABEL_6;
  }

  sub_214D55670(0, &qword_27CA43240);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    if (qword_27CA41658 != -1)
    {
      swift_once();
    }

    v6 = sub_2150A3F30();
    __swift_project_value_buffer(v6, qword_27CA43210);

    v7 = sub_2150A3F10();
    v8 = sub_2150A5560();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 138412290;
      if (a1 >> 62)
      {
        v12 = a1 & 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = a1;
      }

      v13 = *(v12 + 16);
      *(v9 + 4) = v13;
      *v10 = v13;
      v14 = v13;
      _os_log_impl(&dword_214D51000, v7, v8, "Cannot get object {identifier: %@}", v9, 0xCu);
      sub_214F302D4(v11, &qword_27CA41DF0);
      MEMORY[0x216064AF0](v11, -1, -1);
      MEMORY[0x216064AF0](v9, -1, -1);
    }

    *a2 = a1;
    goto LABEL_14;
  }

  v4 = v32;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      ICObjectReferences<>.init(folder:recursivelyIncludeChildren:)(v15, 1, v31);
      goto LABEL_21;
    }

    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      ICObjectReferences<>.init(note:recursivelyIncludeChildren:forPagesHandoff:)(v16, 1, 0, v31);
      goto LABEL_21;
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      ICObjectReferences<>.init(attachment:recursivelyIncludeChildren:)(v17, 1, v31);
      goto LABEL_21;
    }

    if (qword_27CA41658 != -1)
    {
      swift_once();
    }

    v18 = sub_2150A3F30();
    __swift_project_value_buffer(v18, qword_27CA43210);
    v19 = v4;
    v20 = sub_2150A3F10();
    v21 = sub_2150A5570();

    if (os_log_type_enabled(v20, v21))
    {
      v30 = v21;
      v22 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31[0] = v29;
      *v22 = 136315138;
      v23 = [v19 identifier];
      if (v23)
      {
        v24 = v23;
        v25 = sub_2150A4AD0();
        v27 = v26;
      }

      else
      {
        v27 = 0xA300000000000000;
        v25 = 9732322;
      }

      v28 = sub_214F7723C(v25, v27, v31);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_214D51000, v20, v30, "Cannot create reference for object {identifier: %s}", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x216064AF0](v29, -1, -1);
      MEMORY[0x216064AF0](v22, -1, -1);
    }

    *a2 = a1;
LABEL_14:

    return;
  }

  ICObjectReferences<>.init(account:recursivelyIncludeChildren:)(v5, 1, v31);
LABEL_21:
  *a2 = v31[0];
}

uint64_t sub_214FC3A54()
{
  v1 = v0;
  v35 = sub_2150A3A00();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43238);
  result = sub_2150A5AA0();
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
      sub_214FC4CF0();
      result = sub_2150A49A0();
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

uint64_t sub_214FC3D80()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42468);
  result = sub_2150A5AA0();
  v4 = result;
  if (*(v2 + 16))
  {
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2150A64B0();
      sub_2150A4BB0();
      result = sub_2150A64E0();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_214FC3FF4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_2150A5AA0();
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
      result = sub_2150A5770();
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

uint64_t sub_214FC4214()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42420);
  result = sub_2150A5AA0();
  v4 = result;
  if (*(v2 + 16))
  {
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
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_2150A64B0();
      sub_2150A4BB0();

      result = sub_2150A64E0();
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
      *(*(v4 + 48) + v12) = v16;
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

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void sub_214FC44EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_214FC46E8(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_214FC4658(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_214FC44EC(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_214FC46E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42470);
  result = sub_2150A5AC0();
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
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_2150A5770();
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
    *(*(v9 + 48) + 8 * v20) = v16;
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

uint64_t sub_214FC48DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42420);
  result = sub_2150A5AC0();
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
    sub_2150A64B0();
    sub_2150A4BB0();

    result = sub_2150A64E0();
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

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_214FC4C18(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_214D55670(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214FC4CF0()
{
  result = qword_280C241B0;
  if (!qword_280C241B0)
  {
    sub_2150A3A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C241B0);
  }

  return result;
}

uint64_t sub_214FC4D60()
{
  v1 = *(v0 + 48);
  (*(v0 + 24))(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t withCheckedRethrowingContinuation<A>(_:rethrow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a4;
  v6[4] = a5;
  v6[2] = a1;
  v11 = swift_task_alloc();
  v6[5] = v11;
  *v11 = v6;
  v11[1] = sub_214FC4EF0;

  return sub_214FC5024(a1, 0, 0, 0xD00000000000002DLL, 0x80000002150E5AB0, a2, a3, a6);
}

uint64_t sub_214FC4EF0()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214FC6E7C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_214FC5024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_214F557A8;

  return MEMORY[0x2822008A0](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_214FC5110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214F53FB0;

  return _TaskGroupProtocol.waitForResults()(a1, a2, a3);
}

uint64_t _TaskGroupProtocol.waitForResults()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = swift_getAssociatedTypeWitness();
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214FC5270, 0, 0);
}

uint64_t sub_214FC5270()
{
  v2 = v0[3];
  v1 = v0[4];
  swift_getAssociatedConformanceWitness();
  sub_2150A54B0();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = *(v1 + 16);
  *v4 = v0;
  v4[1] = sub_214FC5380;
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[2];
  v9 = v0[3];

  return MEMORY[0x282200540](v8, v6, &unk_2150C6430, v3, v9, v7, v5);
}

uint64_t sub_214FC5380()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214FC54C8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_214FC54C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214FC5534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[6] = AssociatedTypeWitness;
  v4[7] = *(AssociatedTypeWitness - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214FC560C, 0, 0);
}

uint64_t sub_214FC560C()
{
  (*(v0[7] + 16))(v0[8], v0[3], v0[6]);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_2150A5490();

  v1 = v0[1];

  return v1();
}

uint64_t sub_214FC56F8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_214F557A8;

  return sub_214FC5534(a1, a2, v7, v6);
}

uint64_t sub_214FC57BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214F557A8;

  return _TaskGroupProtocol.waitForResults()(a1, a2, a3);
}

uint64_t sub_214FC586C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214FBE7E4;

  return MEMORY[0x2822002D8](a1, a2);
}

uint64_t sub_214FC5918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_214FC6E80;

  return MEMORY[0x2822002D0](a1, a2, a3, a5);
}

uint64_t ThrowingTaskGroup.waitForAll(cancelOnFirstError:)(char a1, void *a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 168) = a1;
  *(v3 + 32) = a2[2];
  v5 = sub_2150A57E0();
  *(v3 + 40) = v5;
  *(v3 + 48) = *(v5 - 8);
  *(v3 + 56) = swift_task_alloc();
  v6 = a2[3];
  *(v3 + 64) = v6;
  *(v3 + 72) = a2[4];
  v7 = sub_2150A5200();
  *(v3 + 80) = v7;
  *(v3 + 88) = *(v7 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = *(v6 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214FC5BA0, 0, 0);
}

uint64_t sub_214FC5BA0()
{
  if (*(v0 + 168) == 1)
  {
    *(v0 + 144) = **(v0 + 24);
    sub_2150A51B0();
    v1 = swift_task_alloc();
    *(v0 + 152) = v1;
    *v1 = v0;
    v1[1] = sub_214FC5CF4;
    v2 = *(v0 + 128);
    v3 = *(v0 + 80);
    v4 = *(v0 + 56);

    return MEMORY[0x2822004E8](v4, 0, 0, v3, v2);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 160) = v5;
    *v5 = v0;
    v5[1] = sub_214FC5FA8;
    v6 = *(v0 + 16);

    return sub_214FC634C(0, 0, v6);
  }
}

uint64_t sub_214FC5CF4()
{

  if (v0)
  {
    v1 = sub_214FC615C;
  }

  else
  {
    v1 = sub_214FC5E04;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_214FC5E04()
{
  v1 = v0[7];
  if ((*(*(v0[4] - 8) + 48))(v1, 1) == 1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    (*(v0[6] + 8))(v1, v0[5]);
    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_214FC5CF4;
    v5 = v0[16];
    v6 = v0[10];
    v7 = v0[7];

    return MEMORY[0x2822004E8](v7, 0, 0, v6, v5);
  }
}

uint64_t sub_214FC5FA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_214FC615C()
{
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[8];
  (*(v0[11] + 8))(v0[12], v0[10]);
  v7 = *(v5 + 32);
  v7(v1, v2, v6);
  v7(v3, v1, v6);
  sub_2150A5210();
  (*(v5 + 16))(v4, v3, v6);
  v8 = sub_2150A6230();
  v9 = v0[14];
  if (v8)
  {
    (*(v0[13] + 8))(v0[14], v0[8]);
  }

  else
  {
    v10 = v0[8];
    swift_allocError();
    v7(v11, v9, v10);
  }

  v12 = v0[15];
  v13 = v0[13];
  v14 = v0[8];
  swift_willThrow();
  (*(v13 + 8))(v12, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_214FC634C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(a3 + 16);
  v6 = sub_2150A57E0();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = sub_2150A5010();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[10] = v7;
  v4[11] = v9;

  return MEMORY[0x2822009F8](sub_214FC6454, v7, v9);
}

uint64_t sub_214FC6454()
{
  v1 = *(v0 + 32);
  *(v0 + 96) = **(v0 + 40);
  *(v0 + 104) = *(v1 + 24);
  *(v0 + 112) = *(v1 + 32);
  if (sub_2150A51E0())
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 120) = 0;
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_214FC656C;
    v5 = *(v0 + 72);
    v6 = *(v0 + 32);
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);

    return sub_214FC6DB8(v5, v7, v8, v6);
  }
}

uint64_t sub_214FC656C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_214FC66A8;
  }

  else
  {
    v5 = sub_214FC67DC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_214FC66A8()
{
  v1 = v0[17];
  if (v0[15])
  {

    v1 = v0[15];
  }

  if (sub_2150A51E0())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[15] = v1;
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_214FC656C;
    v5 = v0[9];
    v6 = v0[4];
    v7 = v0[2];
    v8 = v0[3];

    return sub_214FC6DB8(v5, v7, v8, v6);
  }
}

uint64_t sub_214FC67DC()
{
  v1 = v0[9];
  v2 = (*(*(v0[6] - 8) + 48))(v1, 1);
  (*(v0[8] + 8))(v1, v0[7]);
  if (v2 == 1)
  {
    v3 = v0[15];
    if (sub_2150A51E0())
    {
      if (v3)
      {
        swift_willThrow();
      }

      v4 = v0[1];

      return v4();
    }

    v0[15] = v3;
  }

  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_214FC656C;
  v7 = v0[9];
  v8 = v0[4];
  v9 = v0[2];
  v10 = v0[3];

  return sub_214FC6DB8(v7, v9, v10, v8);
}

uint64_t sub_214FC69AC(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214FC69F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214F557A8;

  return MEMORY[0x2822004D8](a1, a2);
}

uint64_t sub_214FC6AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_214FC6B6C;

  return MEMORY[0x2822004D0](a1, a2, a3, a5);
}

uint64_t sub_214FC6B6C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t dispatch thunk of _TaskGroupProtocol.waitForResults()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214F53FB0;

  return v9(a1, a2, a3);
}

uint64_t sub_214FC6DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_214F557A8;

  return MEMORY[0x2822004D0](a1, a2, a3, a4);
}

uint64_t sub_214FC6E88()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA43258);
  v1 = __swift_project_value_buffer(v0, qword_27CA43258);
  if (qword_27CA415E8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CA42B58);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id ICQueryResultsController.query.getter()
{
  v1 = OBJC_IVAR___ICQueryResultsControllerObjC_query;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ICQueryResultsController.query.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___ICQueryResultsControllerObjC_query;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ICQueryResultsController.fetchRequest.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_2150A4A90();
  v2 = [v0 initWithEntityName_];

  [v2 setResultType_];
  swift_beginAccess();
  swift_beginAccess();
  v3 = ICQueryType.predicate.getter();
  [v2 setPredicate_];

  return v2;
}

id ICQueryResultsController.__allocating_init(managedObjectContext:query:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___ICQueryResultsControllerObjC_managedObjectContext] = a1;
  *&v5[OBJC_IVAR___ICQueryResultsControllerObjC_query] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ICQueryResultsController.init(managedObjectContext:query:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___ICQueryResultsControllerObjC_managedObjectContext] = a1;
  *&v2[OBJC_IVAR___ICQueryResultsControllerObjC_query] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t ICQueryResultsController.performFetch()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_2150A4A90();
  v2 = [v0 initWithEntityName_];

  [v2 setResultType_];
  swift_beginAccess();
  swift_beginAccess();
  v3 = ICQueryType.predicate.getter();
  [v2 setPredicate_];

  sub_214D55670(0, &qword_27CA44A80);
  v4 = sub_2150A56E0();

  v5 = sub_214F84524(v4);

  return v5;
}

id ICQueryResultsController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICQueryResultsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_214FC7854()
{
  result = qword_27CA42510[0];
  if (!qword_27CA42510[0])
  {
    sub_214D55670(255, &qword_27CA44A80);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CA42510);
  }

  return result;
}

NotesShared::FolderID __swiftcall FolderID.init(contextType:managedIdentifier:)(NotesShared::ManagedEntityContextType_optional contextType, Swift::String managedIdentifier)
{
  *v2 = *contextType.value;
  *(v2 + 8) = managedIdentifier;
  result.managedIdentifier = managedIdentifier;
  result.contextType = contextType;
  return result;
}

uint64_t FolderID.managedIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FolderID.managedIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t FolderID.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2150A3750();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = objc_opt_self();
  v12 = sub_2150A36B0();
  v13 = [v11 objectIDURIRepresentationForFolderMentionedInLegacyShowFolderURL_];

  if (v13)
  {
    sub_2150A36F0();

    (*(v5 + 32))(v10, v8, v4);
    v13 = sub_2150A3650();
    v15 = v14;
    v16 = *(v5 + 8);
    v16(a1, v4);
    result = (v16)(v10, v4);
    v18 = 2;
  }

  else
  {
    result = (*(v5 + 8))(a1, v4);
    v18 = 0;
    v15 = 0;
  }

  *a2 = v18;
  a2[1] = v13;
  a2[2] = v15;
  return result;
}

uint64_t FolderID.hash(into:)()
{
  if (*v0 == 2)
  {
    sub_2150A64D0();
  }

  else
  {
    sub_2150A64D0();
    sub_2150A4BB0();
  }

  return sub_2150A4BB0();
}

uint64_t FolderID.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  sub_2150A64D0();
  if (v1 != 2)
  {
    sub_2150A4BB0();
  }

  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_214FC7CD8()
{
  v1 = *(v0 + 8);

  return v1;
}

_BYTE *sub_214FC7D08@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_214FC7D3C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  sub_214F3005C(*v0, *(v0 + 1), *(v0 + 2), &v8 - v2);
  v4 = sub_2150A3750();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_214F5C454(v3);
    return 0;
  }

  else
  {
    v7 = sub_2150A3650();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_214FC7E70()
{
  if (*v0 == 2)
  {
    sub_2150A64D0();
  }

  else
  {
    sub_2150A64D0();
    sub_2150A4BB0();
  }

  return sub_2150A4BB0();
}

uint64_t sub_214FC7F24()
{
  v1 = *v0;
  sub_2150A64B0();
  sub_2150A64D0();
  if (v1 != 2)
  {
    sub_2150A4BB0();
  }

  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t _s11NotesShared8FolderIDV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  if (v2 == 2)
  {
    if (v5 == 2)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (v5 == 2)
  {
    return 0;
  }

  if (v2)
  {
    v9 = 1819112552;
  }

  else
  {
    v9 = 0x6E7265646F6DLL;
  }

  if (v2)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5)
  {
    v11 = 1819112552;
  }

  else
  {
    v11 = 0x6E7265646F6DLL;
  }

  if (v5)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  if (v9 != v11 || v10 != v12)
  {
    v14 = sub_2150A6270();

    if (v14)
    {
      goto LABEL_25;
    }

    return 0;
  }

LABEL_25:
  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_2150A6270();
}

unint64_t sub_214FC8108(uint64_t a1)
{
  *(a1 + 8) = sub_214FC8138();
  result = sub_214FC818C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214FC8138()
{
  result = qword_27CA43280;
  if (!qword_27CA43280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43280);
  }

  return result;
}

unint64_t sub_214FC818C()
{
  result = qword_27CA43288;
  if (!qword_27CA43288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43288);
  }

  return result;
}

unint64_t sub_214FC81E0(void *a1)
{
  a1[1] = sub_214FC8218();
  a1[2] = sub_214FC826C();
  result = sub_214FC82C0();
  a1[3] = result;
  return result;
}

unint64_t sub_214FC8218()
{
  result = qword_27CA43290;
  if (!qword_27CA43290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43290);
  }

  return result;
}

unint64_t sub_214FC826C()
{
  result = qword_27CA43298;
  if (!qword_27CA43298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43298);
  }

  return result;
}

unint64_t sub_214FC82C0()
{
  result = qword_27CA432A0;
  if (!qword_27CA432A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA432A0);
  }

  return result;
}

unint64_t sub_214FC8318()
{
  result = qword_280C23348[0];
  if (!qword_280C23348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C23348);
  }

  return result;
}

uint64_t sub_214FC836C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214FC83B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t NotesServiceAPIAsyncClient.__allocating_init(codeService:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t NotesServiceAPI.PingOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = objc_allocWithZone(v1);
  sub_214F43C14(a1, v5, &qword_27CA432A8);
  v7 = sub_2150A3BB0();
  sub_214F302D4(a1, &qword_27CA432A8);
  return v7;
}

uint64_t NotesServiceAPI.PingOperation.init(request:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432A8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_214F43C14(a1, &v6 - v3, &qword_27CA432A8);
  v4 = sub_2150A3BB0();
  sub_214F302D4(a1, &qword_27CA432A8);
  return v4;
}

uint64_t NotesServiceAPI.SendMentionNotificationV2Operation.__allocating_init(request:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = objc_allocWithZone(v1);
  sub_214F43C14(a1, v5, &qword_27CA432B0);
  v7 = sub_2150A3BB0();
  sub_214F302D4(a1, &qword_27CA432B0);
  return v7;
}

uint64_t NotesServiceAPI.SendMentionNotificationV2Operation.init(request:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432B0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_214F43C14(a1, &v6 - v3, &qword_27CA432B0);
  v4 = sub_2150A3BB0();
  sub_214F302D4(a1, &qword_27CA432B0);
  return v4;
}

uint64_t NotesServiceAPI.DidCompleteInstallOrUpdateOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = objc_allocWithZone(v1);
  sub_214F43C14(a1, v5, &qword_27CA432B8);
  v7 = sub_2150A3BB0();
  sub_214F302D4(a1, &qword_27CA432B8);
  return v7;
}

uint64_t NotesServiceAPI.DidCompleteInstallOrUpdateOperation.init(request:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432B8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_214F43C14(a1, &v6 - v3, &qword_27CA432B8);
  v4 = sub_2150A3BB0();
  sub_214F302D4(a1, &qword_27CA432B8);
  return v4;
}

uint64_t NotesServiceAPI.RunGarbageCollectorOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = objc_allocWithZone(v1);
  sub_214F43C14(a1, v5, &qword_27CA432C0);
  v7 = sub_2150A3BB0();
  sub_214F302D4(a1, &qword_27CA432C0);
  return v7;
}

uint64_t NotesServiceAPI.RunGarbageCollectorOperation.init(request:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432C0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_214F43C14(a1, &v6 - v3, &qword_27CA432C0);
  v4 = sub_2150A3BB0();
  sub_214F302D4(a1, &qword_27CA432C0);
  return v4;
}

uint64_t NotesServiceAPIAsync.ping(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PingRequest(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11NotesShared11PingRequestVACycfC_0();
  (*(a4 + 8))(v10, a1, a2, a3, a4);
  return sub_214FC9588(v10, type metadata accessor for PingRequest);
}

uint64_t NotesServiceAPIAsync.sendMentionNotificationV2(recipientUserID:senderName:noteTitle:mentionSnippet:shareRecordName:shareOwnerUserID:noteRecordName:inlineAttachmentRecordName:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v29 = a8;
  v28 = a7;
  v32 = a14;
  v31 = a15;
  v33 = a16;
  v30 = a17;
  v27[2] = a11;
  v27[1] = a10;
  v27[0] = a9;
  v23 = type metadata accessor for MentionNotificationRequestV2(0);
  MEMORY[0x28223BE20](v23);
  v25 = v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v40 = v28;
  v41 = v29;
  v42 = a9;
  v43 = a10;
  v44 = a11;
  v45 = a12;
  v46 = a13;
  sub_214FC9540(&qword_27CA432C8, type metadata accessor for MentionNotificationRequestV2);
  sub_2150A3DB0();
  (*(v30 + 16))(v25, v32, v31, v33);
  return sub_214FC9588(v25, type metadata accessor for MentionNotificationRequestV2);
}

uint64_t sub_214FC8E78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = result;
  if (a3)
  {

    *v22 = a2;
    v22[1] = a3;
  }

  if (a5)
  {

    v22[2] = a4;
    v22[3] = a5;
  }

  if (a7)
  {

    v22[4] = a6;
    v22[5] = a7;
  }

  if (a9)
  {

    v22[6] = a8;
    v22[7] = a9;
  }

  if (a11)
  {

    v22[8] = a10;
    v22[9] = a11;
  }

  if (a13)
  {

    v22[10] = a12;
    v22[11] = a13;
  }

  if (a15)
  {

    v22[12] = a14;
    v22[13] = a15;
  }

  if (a17)
  {

    v22[14] = a16;
    v22[15] = a17;
  }

  return result;
}

uint64_t NotesServiceAPIAsync.didCompleteInstallOrUpdate(previousBuildNumber:previousVersion:currentBuildNumber:currentVersion:platformName:continuationToken:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v27 = a8;
  v26 = a7;
  v29 = a13;
  v30 = a12;
  v31 = a14;
  v28 = a15;
  v25 = a9;
  updated = type metadata accessor for DidCompleteInstallOrUpdateRequest(0);
  MEMORY[0x28223BE20](updated);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = v26;
  v39 = v27;
  v40 = a9;
  v41 = a10;
  v42 = a11;
  sub_214FC9540(qword_280C23720, type metadata accessor for DidCompleteInstallOrUpdateRequest);
  sub_2150A3DB0();
  (*(v28 + 24))(v23, v30, v29, v31);
  return sub_214FC9588(v23, type metadata accessor for DidCompleteInstallOrUpdateRequest);
}

uint64_t sub_214FC9188(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v18 = result;
  if (a3)
  {

    *v18 = a2;
    v18[1] = a3;
  }

  if (a5)
  {

    v18[2] = a4;
    v18[3] = a5;
  }

  if (a7)
  {

    v18[4] = a6;
    v18[5] = a7;
  }

  if (a9)
  {

    v18[6] = a8;
    v18[7] = a9;
  }

  if (a11)
  {

    v18[8] = a10;
    v18[9] = a11;
  }

  if (a13 >> 60 != 15)
  {
    v21 = v18[10];
    v22 = v18[11];
    sub_214FCA120(a12, a13);
    result = sub_214F7EDE4(v21, v22);
    v18[10] = a12;
    v18[11] = a13;
  }

  return result;
}

uint64_t NotesServiceAPIAsync.runGarbageCollector(continuationToken:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for RunGarbageCollectorRequest(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1;
  v18 = a2;
  sub_214FC9540(&qword_27CA432D0, type metadata accessor for RunGarbageCollectorRequest);
  sub_2150A3DB0();
  (*(a6 + 32))(v14, a3, a4, a5, a6);
  return sub_214FC9588(v14, type metadata accessor for RunGarbageCollectorRequest);
}

uint64_t *sub_214FC9414(uint64_t *result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result;
    sub_214FCA120(a2, a3);
    result = sub_214F7EDE4(v3, v4);
    *v5 = a2;
    v5[1] = a3;
  }

  return result;
}

uint64_t sub_214FC9540(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_214FC9588(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_214FC95E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432A8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_214FC9D14(a1, &v11 - v6, type metadata accessor for PingRequest);
  v8 = type metadata accessor for PingRequest(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  objc_allocWithZone(type metadata accessor for NotesServiceAPI.PingOperation(0));
  sub_214F43C14(v7, v5, &qword_27CA432A8);
  v9 = sub_2150A3BB0();
  sub_214F302D4(v7, &qword_27CA432A8);
  v10 = v9;

  sub_2150A3BA0();

  sub_2150A5510();
}

void sub_214FC97AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432B0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_214FC9D14(a1, &v11 - v6, type metadata accessor for MentionNotificationRequestV2);
  v8 = type metadata accessor for MentionNotificationRequestV2(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  objc_allocWithZone(type metadata accessor for NotesServiceAPI.SendMentionNotificationV2Operation(0));
  sub_214F43C14(v7, v5, &qword_27CA432B0);
  v9 = sub_2150A3BB0();
  sub_214F302D4(v7, &qword_27CA432B0);
  v10 = v9;

  sub_2150A3BA0();

  sub_2150A5510();
}

void sub_214FC9984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432B8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_214FC9D14(a1, &v11 - v6, type metadata accessor for DidCompleteInstallOrUpdateRequest);
  updated = type metadata accessor for DidCompleteInstallOrUpdateRequest(0);
  (*(*(updated - 8) + 56))(v7, 0, 1, updated);
  objc_allocWithZone(type metadata accessor for NotesServiceAPI.DidCompleteInstallOrUpdateOperation(0));
  sub_214F43C14(v7, v5, &qword_27CA432B8);
  v9 = sub_2150A3BB0();
  sub_214F302D4(v7, &qword_27CA432B8);
  v10 = v9;

  sub_2150A3BA0();

  sub_2150A5510();
}

void sub_214FC9B5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432C0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_214FC9D14(a1, &v11 - v6, type metadata accessor for RunGarbageCollectorRequest);
  v8 = type metadata accessor for RunGarbageCollectorRequest(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  objc_allocWithZone(type metadata accessor for NotesServiceAPI.RunGarbageCollectorOperation(0));
  sub_214F43C14(v7, v5, &qword_27CA432C0);
  v9 = sub_2150A3BB0();
  sub_214F302D4(v7, &qword_27CA432C0);
  v10 = v9;

  sub_2150A3BA0();

  sub_2150A5510();
}

uint64_t sub_214FC9D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t NotesServiceAPIAsyncClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_214FCA120(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void __swiftcall ICDeviceManagementRestrictionsManager.init()(ICDeviceManagementRestrictionsManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id static ICDeviceManagementRestrictionsManager.shared.getter()
{
  if (qword_280C24228 != -1)
  {
    swift_once();
  }

  v1 = qword_280C24230;

  return v1;
}

Swift::Void __swiftcall ICDeviceManagementRestrictionsManager.registerObserver()()
{
  v1 = sub_214D6A6C8();
  [v1 registerObserver_];

  [v0 updateRestrictions];
}

id ICDeviceManagementRestrictionsManager.init()()
{
  *(v0 + OBJC_IVAR___ICDeviceManagementRestrictionsManager____lazy_storage___connection) = 0;
  *(v0 + OBJC_IVAR___ICDeviceManagementRestrictionsManager__isMathPaperSolvingAllowed) = 1;
  *(v0 + OBJC_IVAR___ICDeviceManagementRestrictionsManager__isKeyboardMathSolvingAllowed) = 1;
  *(v0 + OBJC_IVAR___ICDeviceManagementRestrictionsManager__isCalculatorModeScientificAllowed) = 1;
  v2.super_class = ICDeviceManagementRestrictionsManager;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t type metadata accessor for ICDeviceManagementRestrictionsManager()
{
  result = qword_27CA43330;
  if (!qword_27CA43330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA43330);
  }

  return result;
}

void String.height(_:_:)(void *a1, double a2)
{
  v4 = sub_2150A4A90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA433A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C25D0;
  v6 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_214FCA5D4();
  *(inited + 40) = a1;
  v7 = v6;
  v8 = a1;
  sub_214FA54FC(inited);
  swift_setDeallocating();
  sub_214FCA620(inited + 32);
  type metadata accessor for Key(0);
  sub_214FCA688();
  v9 = sub_2150A4910();

  [v4 boundingRectWithSize:3 options:v9 attributes:0 context:{a2, 1.79769313e308}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18.origin.x = v11;
  v18.origin.y = v13;
  v18.size.width = v15;
  v18.size.height = v17;
  CGRectGetHeight(v18);
}

unint64_t sub_214FCA5D4()
{
  result = qword_27CA433A8;
  if (!qword_27CA433A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA433A8);
  }

  return result;
}

uint64_t sub_214FCA620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_214FCA688()
{
  result = qword_27CA419F0;
  if (!qword_27CA419F0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA419F0);
  }

  return result;
}

Swift::Bool __swiftcall UnkeyedDecodingContainer.skip(count:)(Swift::Int count)
{
  if (count < 1)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v2 = 1;
    while (1)
    {
      v3 = sub_2150A6150();
      if (v3)
      {
        break;
      }

      sub_214FCA7E4();
      sub_2150A6140();
      if (count == v2)
      {
        break;
      }

      if (__OFADD__(v2++, 1))
      {
        __break(1u);
        return (v3 & 1) == 0;
      }
    }

    return (v3 & 1) == 0;
  }

  return result;
}

unint64_t sub_214FCA7E4()
{
  result = qword_27CA433B0;
  if (!qword_27CA433B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA433B0);
  }

  return result;
}

uint64_t sub_214FCA848(uint64_t a1)
{
  swift_getObjectType();
  sub_214FA9E9C(a1, v5);
  if (!v6)
  {
    sub_214FBC238(v5);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = sub_2150A4A80();

  return v2 & 1;
}

uint64_t sub_214FCA96C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_2150A58F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_214FCA848(v8);

  sub_214FBC238(v8);
  return v6 & 1;
}

uint64_t sub_214FCAA60(_OWORD *a1)
{
  v2 = swift_allocObject();
  sub_214D72488(a1, (v2 + 16));
  return v2;
}

uint64_t sub_214FCAAA4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t Cache.__allocating_init(name:)()
{
  v0 = swift_allocObject();
  Cache.init(name:)();
  return v0;
}

uint64_t sub_214FCAB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = sub_2150A57E0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  (*(v14 + 16))(&v16 - v12, a3, v6);
  (*(v8 + 16))(v11, a1, v7);
  return Cache.subscript.setter(v11, v13);
}

void (*Cache.subscript.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x48uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *v2;
  v9 = sub_2150A57E0();
  v7[1] = v9;
  v10 = *(v9 - 8);
  v7[2] = v10;
  v11 = *(v10 + 64);
  if (v5)
  {
    v7[3] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[3] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v7[4] = v12;
  v14 = *(v8 + 80);
  v7[5] = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  v7[6] = v15;
  v17 = *(v15 + 64);
  if (v5)
  {
    v7[7] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v7[7] = malloc(*(v15 + 64));
    v18 = malloc(v17);
  }

  v7[8] = v18;
  (*(v16 + 16))();
  Cache.subscript.getter(a2, v13);
  return sub_214FCAE9C;
}

void sub_214FCAE9C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if (a2)
  {
    v5 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v7 = v2[4];
    v9 = v2[1];
    v10 = v2[2];
    (*(v10 + 16))(v8, v7, v9);
    (*(v6 + 32))(v3, v4, v5);
    Cache.subscript.setter(v8, v3);
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v8 = v2[3];
    v7 = v2[4];
    Cache.subscript.setter(v7, v4);
  }

  free(v4);
  free(v3);
  free(v7);
  free(v8);

  free(v2);
}

uint64_t Cache.subscript.getter@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v24 = a3;
  v25 = a2;
  v27 = a4;
  v26 = *(*v5 + 80);
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v22 - v7;
  v10 = *(v9 + 88);
  v11 = sub_2150A57E0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  Cache.subscript.getter(a1, &v22 - v16);
  v18 = *(v10 - 8);
  if ((*(v18 + 48))(v17, 1, v10) != 1)
  {
    return (*(v18 + 32))(v27, v17, v10);
  }

  v19 = (*(v12 + 8))(v17, v11);
  v20 = v27;
  v25(v19);
  (*(v23 + 16))(v8, a1, v26);
  (*(v18 + 16))(v15, v20, v10);
  (*(v18 + 56))(v15, 0, 1, v10);
  return Cache.subscript.setter(v15, v8);
}

uint64_t Cache.name.getter()
{
  v1 = [*(v0 + 16) name];
  v2 = sub_2150A4AD0();

  return v2;
}

uint64_t Cache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id ICTTTextEditFilter.init(allowedUserIDs:allowedAttachmentIDs:allowsMissingTimestamps:allowsMissingUsers:fromDate:toDate:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = v18;
  if (a1)
  {
    v20 = sub_2150A52D0();
  }

  else
  {
    v20 = 0;
  }

  [v18 setAllowedUserIDs_];

  if (a2)
  {
    v21 = sub_2150A52D0();
  }

  else
  {
    v21 = 0;
  }

  [v18 setAllowedAttachmentIDs_];

  [v18 setAllowsMissingTimestamps_];
  [v18 setAllowsMissingUsers_];
  sub_214F5D4A4(a5, v17);
  v22 = sub_2150A3960();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = 0;
  if (v24(v17, 1, v22) != 1)
  {
    v25 = sub_2150A38F0();
    (*(v23 + 8))(v17, v22);
  }

  [v18 setFromDate_];

  sub_214F5D4A4(a6, v15);
  if (v24(v15, 1, v22) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_2150A38F0();
    (*(v23 + 8))(v15, v22);
  }

  [v18 setToDate_];

  sub_214F5D43C(a6);
  sub_214F5D43C(a5);
  return v18;
}

void __swiftcall ICTTTextEditFilter.init(mentions:)(ICTTTextEditFilter *__return_ptr retstr, Swift::OpaquePointer mentions)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v51 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v55 = &v51 - v11;
  MEMORY[0x28223BE20](v10);
  v54 = &v51 - v12;
  v56 = MEMORY[0x277D84F90];
  if (mentions._rawValue >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((mentions._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2150A59D0())
  {
    v14 = MEMORY[0x277D84F90];
    v52 = v9;
    v53 = v6;
    if (i)
    {
      v15 = 0;
      while (1)
      {
        if ((mentions._rawValue & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x216062780](v15, mentions._rawValue);
        }

        else
        {
          if (v15 >= *((mentions._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v16 = *(mentions._rawValue + v15 + 4);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if ([v16 isMentionAttachment])
        {
          v9 = &v56;
          sub_2150A5CB0();
          v6 = *(v56 + 16);
          sub_2150A5CF0();
          sub_2150A5D00();
          sub_2150A5CC0();
        }

        else
        {
        }

        ++v15;
        if (v18 == i)
        {
          v19 = v56;
          v14 = MEMORY[0x277D84F90];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v19 = MEMORY[0x277D84F90];
LABEL_16:

    v56 = v14;
    if ((v19 & 0x8000000000000000) == 0 && (v19 & 0x4000000000000000) == 0)
    {
      mentions._rawValue = *(v19 + 16);
      if (!mentions._rawValue)
      {
        break;
      }

      goto LABEL_19;
    }

    mentions._rawValue = sub_2150A59D0();
    if (!mentions._rawValue)
    {
      break;
    }

LABEL_19:
    v20 = 0;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x216062780](v20, v19);
      }

      else
      {
        if (v20 >= *(v19 + 16))
        {
          goto LABEL_33;
        }

        v21 = *(v19 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = (v20 + 1);
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if ([v21 isVisible])
      {
        v9 = &v56;
        sub_2150A5CB0();
        v6 = *(v56 + 16);
        sub_2150A5CF0();
        sub_2150A5D00();
        sub_2150A5CC0();
      }

      else
      {
      }

      ++v20;
      if (v23 == mentions._rawValue)
      {
        v24 = v56;
        goto LABEL_37;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_37:

  if (v24 < 0 || (v24 & 0x4000000000000000) != 0)
  {
LABEL_59:
    v25 = sub_2150A59D0();
    if (v25)
    {
      goto LABEL_40;
    }

    goto LABEL_60;
  }

  v25 = *(v24 + 16);
  if (!v25)
  {
LABEL_60:
    v27 = MEMORY[0x277D84F90];
    goto LABEL_61;
  }

LABEL_40:
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  do
  {
    v28 = v26;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x216062780](v28, v24);
        v26 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v28 >= *(v24 + 16))
        {
          goto LABEL_58;
        }

        v29 = *(v24 + 8 * v28 + 32);
        v26 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }
      }

      v30 = v29;
      v31 = [v30 identifier];
      if (v31)
      {
        break;
      }

      ++v28;
      if (v26 == v25)
      {
        goto LABEL_61;
      }
    }

    v32 = v31;
    v33 = sub_2150A4AD0();
    v35 = v34;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_21505F4D0(0, *(v27 + 2) + 1, 1, v27);
    }

    v37 = *(v27 + 2);
    v36 = *(v27 + 3);
    if (v37 >= v36 >> 1)
    {
      v27 = sub_21505F4D0((v36 > 1), v37 + 1, 1, v27);
    }

    *(v27 + 2) = v37 + 1;
    v38 = &v27[16 * v37];
    *(v38 + 4) = v33;
    *(v38 + 5) = v35;
  }

  while (v26 != v25);
LABEL_61:

  sub_214F8448C(v27);

  v39 = sub_2150A3960();
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v42 = v54;
  v41(v54, 1, 1, v39);
  v41(v55, 1, 1, v39);
  v43 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v43 setAllowedUserIDs_];
  v44 = sub_2150A52D0();

  [v43 setAllowedAttachmentIDs_];

  [v43 setAllowsMissingTimestamps_];
  [v43 setAllowsMissingUsers_];
  v45 = v42;
  v46 = v52;
  sub_214F5D4A4(v45, v52);
  v47 = *(v40 + 48);
  v48 = 0;
  if (v47(v46, 1, v39) != 1)
  {
    v48 = sub_2150A38F0();
    (*(v40 + 8))(v46, v39);
  }

  [v43 setFromDate_];

  v49 = v53;
  sub_214F5D4A4(v55, v53);
  if (v47(v49, 1, v39) == 1)
  {
    v50 = 0;
  }

  else
  {
    v50 = sub_2150A38F0();
    (*(v40 + 8))(v49, v39);
  }

  [v43 setToDate_];

  sub_214F5D43C(v55);
  sub_214F5D43C(v54);
}

id ICTTTextEditFilter.init(editEvent:)(uint64_t a1)
{
  v3 = sub_2150A30A0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v47 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v46 = &v40 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  MEMORY[0x28223BE20](v15);
  v49 = &v40 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C25D0;
  v20 = type metadata accessor for NoteEditActivityEvent(0);
  v21 = (a1 + *(v20 + 24));
  v22 = v21[1];
  *(inited + 32) = *v21;
  *(inited + 40) = v22;

  v43 = sub_214F809F8(inited);
  swift_setDeallocating();
  sub_214F8467C(inited + 32);
  v23 = *(v20 + 28);
  v48 = a1;
  LODWORD(v23) = *(a1 + v23);
  v44 = v17;
  v45 = v1;
  v41 = v7;
  if (v23 > 1)
  {
    v42 = 1;
  }

  else
  {
    v42 = sub_2150A6270();
  }

  NoteEditActivityEvent.timeInterval.getter(v9);
  v24 = v49;
  sub_2150A3090();
  v25 = *(v4 + 8);
  v25(v9, v3);
  v26 = sub_2150A3960();
  v27 = *(v26 - 8);
  v28 = v3;
  v29 = *(v27 + 56);
  v29(v24, 0, 1, v26);
  v30 = v41;
  NoteEditActivityEvent.timeInterval.getter(v41);
  v31 = v44;
  sub_2150A3060();
  v25(v30, v28);
  v29(v31, 0, 1, v26);
  v32 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v33 = sub_2150A52D0();

  [v32 setAllowedUserIDs_];

  [v32 setAllowedAttachmentIDs_];
  [v32 setAllowsMissingTimestamps_];
  [v32 setAllowsMissingUsers_];
  v34 = v46;
  sub_214F5D4A4(v49, v46);
  v35 = *(v27 + 48);
  v36 = 0;
  if (v35(v34, 1, v26) != 1)
  {
    v36 = sub_2150A38F0();
    (*(v27 + 8))(v34, v26);
  }

  [v32 setFromDate_];

  v37 = v47;
  sub_214F5D4A4(v31, v47);
  if (v35(v37, 1, v26) == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = sub_2150A38F0();
    (*(v27 + 8))(v37, v26);
  }

  [v32 setToDate_];

  sub_214FCD694(v48, type metadata accessor for NoteEditActivityEvent);
  sub_214F5D43C(v31);
  sub_214F5D43C(v49);
  return v32;
}

uint64_t ICTTTextEditFilter.init(persistedEvent:resolver:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v6);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PersistedActivityEvent();
  sub_214FCD62C(a1 + *(v9 + 28), v8, type metadata accessor for PersistedActivityEvent.Activities);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 6)
  {
    sub_214FCD694(a1, type metadata accessor for PersistedActivityEvent);
    swift_unknownObjectRelease();
    sub_214FCD694(v8, type metadata accessor for PersistedActivityEvent.Activities);
    return 0;
  }

  if (EnumCaseMultiPayload == 6)
  {
    sub_214FCD694(a1, type metadata accessor for PersistedActivityEvent);
    swift_unknownObjectRelease();
    v25 = sub_2150A3A00();
    (*(*(v25 - 8) + 8))(v8, v25);
    return 0;
  }

  if (EnumCaseMultiPayload != 7)
  {
    sub_214FCD694(a1, type metadata accessor for PersistedActivityEvent);
    swift_unknownObjectRelease();
    return 0;
  }

  v31 = v3;
  v32 = a1;
  v11 = *v8;
  v12 = *v8 + 56;
  v37 = MEMORY[0x277D84F90];
  v35 = v11;
  v13 = *(v11 + 16);
  v33._rawValue = MEMORY[0x277D84F90];
  v34 = a3 + 64;
  result = swift_unknownObjectRetain();
  v15 = 0;
  v30 = v12;
LABEL_5:
  v16 = (v12 + 32 * v15);
  while (1)
  {
    if (v13 == v15)
    {
      swift_unknownObjectRelease();

      ICTTTextEditFilter.init(mentions:)(v26, v33);
      v28 = v27;
      swift_unknownObjectRelease();
      sub_214FCD694(v32, type metadata accessor for PersistedActivityEvent);
      return v28;
    }

    if (v15 >= *(v35 + 16))
    {
      break;
    }

    ++v15;
    v17 = v16 + 4;
    v18 = *(v16 - 1);
    v19 = *v16;
    v20 = *(v16 - 3);
    v21 = *(v16 - 2);
    ObjectType = swift_getObjectType();
    v36[0] = v20;
    v36[1] = v21;
    v36[2] = v18;
    v36[3] = v19;
    v23 = *(a3 + 64);

    v24 = v23(v36, ObjectType, a3);

    v16 = v17;
    if (v24)
    {
      MEMORY[0x216061A60](result);
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2150A4F10();
      }

      result = sub_2150A4F70();
      v33._rawValue = v37;
      v12 = v30;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}