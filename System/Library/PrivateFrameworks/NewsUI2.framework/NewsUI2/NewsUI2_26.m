id sub_2189B5618(void **a1)
{
  v1 = *a1;
  if (qword_280EE5FC8 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62670);
  v3 = v1;
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = *&v3[OBJC_IVAR___TSNotificationSettings_authorizationStatus];

    if (v8)
    {
      if (v8 == 2)
      {
        v9 = 0xEA00000000006465;
        v10 = 0x7A69726F68747561;
      }

      else
      {
        if (v8 != 1)
        {
          goto LABEL_17;
        }

        v9 = 0xE600000000000000;
        v10 = 0x6465696E6564;
      }
    }

    else
    {
      v9 = 0xED000064656E696DLL;
      v10 = 0x7265746544746F6ELL;
    }

    v11 = sub_2186D1058(v10, v9, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2186C1000, v4, v5, "handleSystemNotifications: authorizationStatus = %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  else
  {
  }

  v12 = *&v3[OBJC_IVAR___TSNotificationSettings_authorizationStatus];
  if ((v12 - 1) < 2)
  {
    return [objc_opt_self() openNewsSystemNotificationSettings];
  }

  if (!v12)
  {
    return sub_2189B5890();
  }

  v14 = *&v3[OBJC_IVAR___TSNotificationSettings_authorizationStatus];
LABEL_17:
  result = sub_219BF7974();
  __break(1u);
  return result;
}

id sub_2189B5890()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2186C709C(0, &unk_280EC4290);
  sub_219BE1E34();
  if (v5)
  {
    v1 = sub_2186CB1F0(&v4, v6);
    MEMORY[0x28223BE20](v1);
    sub_219BE3204();
    v2 = sub_219BE2E54();
    sub_219BE3024();

    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_2189B5AB0(&v4);
    return [objc_opt_self() openNewsSystemNotificationSettings];
  }
}

void sub_2189B59C8()
{
  if (qword_280EE5FC8 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F62670);
  oslog = sub_219BE5414();
  v1 = sub_219BF6214();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2186C1000, oslog, v1, "handleSystemNotifications: authorization requested.", v2, 2u);
    MEMORY[0x21CECF960](v2, -1, -1);
  }
}

uint64_t sub_2189B5AB0(uint64_t a1)
{
  sub_2189B5B0C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2189B5B0C()
{
  if (!qword_27CC0C038)
  {
    sub_2186C709C(255, &unk_280EC4290);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C038);
    }
  }
}

uint64_t sub_2189B5B78()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 24))(v2, v3);
}

uint64_t sub_2189B5BD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2189B5C1C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 32))(1, v2, v3);
}

uint64_t sub_2189B5C7C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a3;
  v7 = sub_219BF0BD4();
  *(v5 + 64) = v7;
  *(v5 + 72) = *(v7 - 8);
  *(v5 + 80) = swift_task_alloc();
  sub_2186EDBB4(0, &qword_280E912E0, MEMORY[0x277D32720]);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = type metadata accessor for FoodTagRecipesClusteringRequest();
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = type metadata accessor for TopicRecipesTagFeedGroupKnobs();
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = type metadata accessor for ChannelRecipesTagFeedGroupKnobs();
  *(v5 + 136) = swift_task_alloc();
  v8 = a2[1];
  *(v5 + 144) = *a2;
  *(v5 + 160) = v8;

  return MEMORY[0x2822009F8](sub_2189B5E24, 0, 0);
}

uint64_t sub_2189B5E24()
{
  v50 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  v3 = *(*(*(v0 + 40) + 24) + 24);
  sub_2189B672C(*(v3 + 16) + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_channelRecipesKnobs, *(v0 + 136), type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
  sub_2189B672C(*(v3 + 16) + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_topicRecipesKnobs, v2, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
  if (v1 < 0)
  {
    v21 = *(v0 + 168);
    v22 = *(v0 + 136);
    v23 = *(v0 + 120);
    swift_willThrow();
    v24 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
    sub_2189B6794(v23, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
    sub_2189B6794(v22, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v4 = *(v0 + 144);
    sub_2189B67F4(v4, *(v0 + 152), *(v0 + 160), *(v0 + 168));

    if (qword_280EE5F50 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 128);
    v5 = *(v0 + 136);
    v7 = *(v0 + 104);
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = sub_219BE5434();
    v11 = __swift_project_value_buffer(v10, qword_280F62598);
    (*(*(v10 - 8) + 16))(v7, v11, v10);
    v48 = *(v9 + 64);
    swift_unknownObjectRetain();
    v12 = sub_219BEEDF4();
    v13 = sub_219BEEDF4();
    v14 = sub_2194796A0(v13, v12);
    v15 = *(v5 + *(v6 + 40));
    v16 = swift_task_alloc();
    *(v16 + 16) = v8;
    v17 = sub_2189B68B8(sub_2189B7844, v16, v15);

    v18 = swift_task_alloc();
    *(v18 + 16) = v8;
    v19 = sub_2189B68B8(sub_2189B7120, v18, v15);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v17;
    sub_2189B71FC(v19, sub_2189B713C, 0, isUniquelyReferenced_nonNull_native, &v49);

    v45 = v4;
    v27 = *(v0 + 96);
    v28 = *(v0 + 104);
    v30 = *(v0 + 80);
    v29 = *(v0 + 88);
    v31 = *(v0 + 64);
    v32 = *(v0 + 72);
    v41 = *(v0 + 120);
    v33 = *(v0 + 48);
    v46 = *(v0 + 56);
    v47 = *(v0 + 112);
    v44 = v49;
    sub_2189B7614(*(v0 + 136) + *(*(v0 + 128) + 20), v29);
    v34 = *(v32 + 16);
    v34(v30, v33, v31);
    sub_219BEED74();
    sub_219BEF524();
    v35 = *(v0 + 16);
    sub_219BEF524();
    v43 = *(v0 + 192);
    sub_219BEF524();
    v42 = *(v0 + 193);
    sub_2189B7614(v41 + *(v47 + 20), v29);
    v34(v30, v33, v31);
    sub_219BEED74();
    sub_2189B7614(v41 + *(v47 + 24), v29);
    v34(v30, v33, v31);
    sub_219BEED74();
    sub_219BEF524();
    sub_219BEF524();
    v36 = *(v0 + 24);
    sub_219BEF524();
    v37 = *(v0 + 194);
    *(v28 + v27[5]) = v45;
    *(v28 + v27[6]) = v48;
    *(v28 + v27[7]) = v14;
    *(v28 + v27[8]) = v44;
    *(v28 + v27[10]) = v35;
    *(v28 + v27[11]) = v43;
    *(v28 + v27[12]) = v42;
    *(v28 + v27[16]) = v36;
    *(v28 + v27[17]) = v37;
    __swift_project_boxed_opaque_existential_1((v46 + 496), *(v46 + 520));
    v38 = swift_task_alloc();
    *(v0 + 176) = v38;
    *v38 = v0;
    v38[1] = sub_2189B6424;
    v39 = *(v0 + 104);
    v40 = *(v0 + 32);

    return sub_219500BB4(v40, v39);
  }
}

uint64_t sub_2189B6424()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_2189B6630;
  }

  else
  {
    v2 = sub_2189B6538;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2189B6538()
{
  v1 = v0[17];
  v2 = v0[15];
  sub_2189B6794(v0[13], type metadata accessor for FoodTagRecipesClusteringRequest);
  sub_2189B6794(v2, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
  sub_2189B6794(v1, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2189B6630()
{
  v1 = v0[17];
  v2 = v0[15];
  sub_2189B6794(v0[13], type metadata accessor for FoodTagRecipesClusteringRequest);
  sub_2189B6794(v2, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
  sub_2189B6794(v1, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2189B672C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2189B6794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_2189B67F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {

    return (a4 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {

    return sub_2189B6874();
  }
}

uint64_t sub_2189B6874()
{
}

uint64_t sub_2189B68B8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v74 = a1;
  v75 = a2;
  sub_2186EDBB4(0, &unk_280E91800, MEMORY[0x277D32348]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v62 - v7;
  v76 = sub_219BEED84();
  v9 = *(v76 - 8);
  v10 = MEMORY[0x28223BE20](v76);
  v66 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v62 - v12;
  sub_2189B76FC(0, &qword_280E8F8D8, MEMORY[0x277D32720]);
  v77 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v67 = (&v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v79 = &v62 - v17;
  MEMORY[0x28223BE20](v16);
  v73 = &v62 - v18;
  v68 = MEMORY[0x277D84F98];
  v80 = MEMORY[0x277D84F98];
  v19 = a3 + 64;
  v20 = 1 << *(a3 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(a3 + 64);
  v23 = (v20 + 63) >> 6;
  v72 = (v9 + 48);
  v63 = v9;
  v65 = (v9 + 32);
  v78 = a3;

  v25 = 0;
  for (i = v23; ; v23 = i)
  {
    v26 = v25;
    if (!v22)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v27 = v8;
      v28 = v4;
      v25 = v26;
LABEL_11:
      v29 = __clz(__rbit64(v22)) | (v25 << 6);
      v30 = *(v78 + 56);
      v31 = (*(v78 + 48) + 16 * v29);
      v33 = *v31;
      v32 = v31[1];
      v34 = sub_219BEF814();
      v35 = v30 + *(*(v34 - 8) + 72) * v29;
      v36 = v77;
      v37 = *(v77 + 48);
      v69 = *(v34 - 8);
      v70 = v34;
      v38 = v73;
      (*(v69 + 16))(&v73[v37], v35);
      *v38 = v33;
      v38[1] = v32;
      v39 = v79;
      sub_2189B7764(v38, v79);
      v40 = *(v36 + 48);

      v8 = v27;
      v74(v39 + v40);
      v4 = v28;
      if (v28)
      {
        sub_2189B77E4(v79, &qword_280E8F8D8, MEMORY[0x277D32720], sub_2189B76FC);
        v61 = v68;

        return v61;
      }

      v22 &= v22 - 1;
      if ((*v72)(v27, 1, v76) != 1)
      {
        break;
      }

      sub_2189B77E4(v79, &qword_280E8F8D8, MEMORY[0x277D32720], sub_2189B76FC);
      result = sub_2189B77E4(v27, &unk_280E91800, MEMORY[0x277D32348], sub_2186EDBB4);
      v26 = v25;
      v23 = i;
      if (!v22)
      {
LABEL_7:
        while (1)
        {
          v25 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v25 >= v23)
          {

            return v68;
          }

          v22 = *(v19 + 8 * v25);
          ++v26;
          if (v22)
          {
            v27 = v8;
            v28 = v4;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_31;
      }
    }

    v41 = *v65;
    v42 = v64;
    v43 = v76;
    (*v65)(v64, v8, v76);
    sub_2189B7764(v79, v67);
    v41(v66, v42, v43);
    v44 = v68[2];
    if (v68[3] <= v44)
    {
      sub_21947E20C(v44 + 1, 1);
    }

    v45 = v80;
    v47 = *v67;
    v46 = v67[1];
    sub_219BF7AA4();
    v62 = v46;
    sub_219BF5524();
    result = sub_219BF7AE4();
    v48 = v45 + 64;
    v68 = v45;
    v49 = -1 << *(v45 + 32);
    v50 = result & ~v49;
    v51 = v50 >> 6;
    if (((-1 << v50) & ~*(v45 + 64 + 8 * (v50 >> 6))) == 0)
    {
      break;
    }

    v52 = __clz(__rbit64((-1 << v50) & ~*(v45 + 64 + 8 * (v50 >> 6)))) | v50 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    v57 = *(v77 + 48);
    *(v48 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
    v58 = v68;
    v59 = (v68[6] + 16 * v52);
    v60 = v62;
    *v59 = v47;
    v59[1] = v60;
    v41((v58[7] + *(v63 + 72) * v52), v66, v76);
    ++v58[2];
    result = (*(v69 + 8))(v67 + v57, v70);
  }

  v53 = 0;
  v54 = (63 - v49) >> 6;
  while (++v51 != v54 || (v53 & 1) == 0)
  {
    v55 = v51 == v54;
    if (v51 == v54)
    {
      v51 = 0;
    }

    v53 |= v55;
    v56 = *(v48 + 8 * v51);
    if (v56 != -1)
    {
      v52 = __clz(__rbit64(~v56)) + (v51 << 6);
      goto LABEL_27;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2189B6F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF0BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDBB4(0, &qword_280E912E0, MEMORY[0x277D32720]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_219BEF814();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  (*(v5 + 16))(v7, a2, v4);
  return sub_219BEED74();
}

uint64_t sub_2189B713C@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  sub_2189B76FC(0, &qword_280E8F8E8, MEMORY[0x277D32348]);
  v5 = *(v4 + 48);
  sub_2189B7694();
  v7 = *(v6 + 48);
  v9 = *a1;
  v8 = *(a1 + 1);
  v10 = sub_219BEED84();
  (*(*(v10 - 8) + 16))(&a2[v7], &a1[v5], v10);
  *a2 = v9;
  *(a2 + 1) = v8;
}

uint64_t sub_2189B71FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v60 = a5;
  v9 = sub_219BEED84();
  v49 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v46 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v52 = v45 - v12;
  sub_2186EDBB4(0, &qword_280E8F7A8, sub_2189B7694);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (v45 - v14);
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v53 = a1;
  v54 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v55 = v17;
  v56 = 0;
  v57 = v20 & v18;
  v58 = a2;
  v59 = a3;

  v45[1] = a3;

  sub_218CC71F8(v15);
  sub_2189B7694();
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = *(v23 + 48);
  v47 = v23 + 48;
  v48 = v24;
  if (v24(v15, 1, v21) == 1)
  {
LABEL_5:
    sub_21892DE98();
  }

  else
  {
    v50 = *(v49 + 32);
    v51 = v49 + 32;
    v45[4] = v49 + 8;
    v45[5] = v49 + 16;
    v45[3] = v49 + 40;
    while (1)
    {
      v30 = *v15;
      v29 = v15[1];
      v50(v52, v15 + *(v22 + 48), v9);
      v31 = *v60;
      v33 = sub_21870F700(v30, v29);
      v34 = v31[2];
      v35 = (v32 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        break;
      }

      v37 = v32;
      if (v31[3] >= v36)
      {
        if ((a4 & 1) == 0)
        {
          sub_21949059C();
        }
      }

      else
      {
        sub_21947E20C(v36, a4 & 1);
        v38 = sub_21870F700(v30, v29);
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_20;
        }

        v33 = v38;
      }

      v40 = *v60;
      if (v37)
      {
        v26 = v49;
        v27 = *(v49 + 72) * v33;
        v28 = v46;
        (*(v49 + 16))(v46, v40[7] + v27, v9);
        (*(v26 + 8))(v52, v9);

        (*(v26 + 40))(v40[7] + v27, v28, v9);
      }

      else
      {
        v40[(v33 >> 6) + 8] |= 1 << v33;
        v41 = (v40[6] + 16 * v33);
        *v41 = v30;
        v41[1] = v29;
        v50((v40[7] + *(v49 + 72) * v33), v52, v9);
        v42 = v40[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_19;
        }

        v40[2] = v44;
      }

      sub_218CC71F8(v15);
      a4 = 1;
      if (v48(v15, 1, v22) == 1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_219BF79A4();
    __break(1u);
  }

  return result;
}

uint64_t sub_2189B7614(uint64_t a1, uint64_t a2)
{
  sub_2186EDBB4(0, &qword_280E912E0, MEMORY[0x277D32720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2189B7694()
{
  if (!qword_280E8F7B0)
  {
    sub_219BEED84();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F7B0);
    }
  }
}

void sub_2189B76FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2189B7764(uint64_t a1, uint64_t a2)
{
  sub_2189B76FC(0, &qword_280E8F8D8, MEMORY[0x277D32720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189B77E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI226SearchMoreFeedContentChunkO(uint64_t a1)
{
  v1 = *(a1 + 32) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2189B788C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
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

uint64_t sub_2189B78DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      *(result + 32) = 0;
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2189B793C(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 32) & 1 | (a2 << 6);
    *(result + 16) &= 1uLL;
    *(result + 32) = v2;
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = -64;
  }

  return result;
}

uint64_t sub_2189B7988()
{
  v36 = sub_219BF2CB4();
  v1 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_219BF2634();
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[5];
  v37 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v8 = off_282A93348;
  type metadata accessor for EditorialService();
  v9 = v8();
  v10 = v9;
  if (v9 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v12 = MEMORY[0x277D84F90];
    if (!i)
    {

      v10 = MEMORY[0x277D84F90];
      goto LABEL_12;
    }

    v38 = MEMORY[0x277D84F90];
    result = sub_219BF73F4();
    if (i < 0)
    {
      break;
    }

    v14 = 0;
    v15 = v37[7];
    v31 = v37[8];
    v32 = v15;
    v30 = v10 & 0xC000000000000001;
    v29 = *MEMORY[0x277D33B80];
    v27 = (v1 + 8);
    v28 = (v1 + 104);
    v16 = (v4 + 8);
    v33 = i;
    v34 = v10;
    do
    {
      if (v30)
      {
        v17 = MEMORY[0x21CECE0F0](v14, v10);
      }

      else
      {
        v17 = *(v10 + 8 * v14 + 32);
      }

      v18 = v17;
      ++v14;
      __swift_project_boxed_opaque_existential_1(v37 + 9, v37[12]);
      v19 = &v18[OBJC_IVAR___TSEditorialItem_identifier];
      swift_beginAccess();
      v20 = *v19;
      v4 = *(v19 + 1);
      *v3 = v20;
      *(v3 + 8) = v4;
      v21 = v36;
      (*v28)(v3, v29, v36);

      sub_219BF4794();
      (*v27)(v3, v21);
      v22 = sub_219BF2614();
      (*v16)(v6, v35);
      sub_2189B8010(v18, v32, v31, v22 & 1);

      sub_219BF73D4();
      v1 = *(v38 + 16);
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v10 = v34;
    }

    while (v33 != v14);

    v10 = v38;
    v12 = MEMORY[0x277D84F90];
LABEL_12:
    v3 = 0;
    v38 = v12;
    v23 = *(v10 + 16);
    while (1)
    {
      if (v23 == v3)
      {

        return v12;
      }

      if (v3 >= *(v10 + 16))
      {
        break;
      }

      if (*(v10 + 8 * v3++ + 32))
      {

        MEMORY[0x21CECC690](v25);
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v1 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v12 = v38;
      }
    }

    __break(1u);
LABEL_21:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_2189B7D84()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

void sub_2189B7DF0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:a2 green:a3 blue:a4 alpha:a5];
  swift_beginAccess();
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
}

uint64_t sub_2189B7E84(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *(a1 + 32);

  v9(v10, a2, a3, a4, a5);
}

uint64_t sub_2189B7EF8(uint64_t a1)
{
  sub_2197EBBA8(v11);

  sub_218967CDC(v11);
  v2 = sub_219BF5494();
  v4 = v3;

  v5 = (a1 + OBJC_IVAR___TSEditorialItem_subtitle);
  swift_beginAccess();
  if (v5[1])
  {
    if (v2 == sub_219BF5494() && v4 == v6)
    {

      return 0;
    }

    v8 = sub_219BF78F4();

    if (v8)
    {
      return 0;
    }
  }

  else
  {
  }

  v9 = *v5;

  return v9;
}

uint64_t sub_2189B8010(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v85 = a4;
  v76 = a2;
  v5 = sub_219BDB954();
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x28223BE20](v5);
  v69 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EditorialModelRoute(0);
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x28223BE20](v7);
  v73 = (&v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR___TSEditorialItem_thumbnailImage;
  swift_beginAccess();
  v13 = *(a1 + v12);
  v77 = v11;
  if (v13)
  {
    v14 = (a1 + OBJC_IVAR___TSEditorialItem_identifier);
    swift_beginAccess();
    v15 = *v14;
    v79 = v14[1];
    v80 = v15;

    v78 = 0;
  }

  else
  {
    v16 = OBJC_IVAR___TSEditorialItem_backingTag;
    swift_beginAccess();
    if (*(a1 + v16))
    {
      v80 = *(a1 + v16);
      swift_unknownObjectRetain();
      v79 = 0;
      v17 = 1;
    }

    else
    {
      v79 = 0;
      v80 = 0;
      v17 = 255;
    }

    v78 = v17;
  }

  v18 = OBJC_IVAR___TSEditorialItem_attributes;
  swift_beginAccess();
  v19 = *(a1 + v18);
  v20 = *(v19 + 16);
  v81 = v13;
  if (v20)
  {
    v21 = v13;

    v22 = MEMORY[0x277D84F90];
    v23 = 32;
    do
    {
      if (!*(v19 + v23))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_2191F6CE4(0, *(v22 + 2) + 1, 1, v22);
        }

        v25 = *(v22 + 2);
        v24 = *(v22 + 3);
        v26 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          v22 = sub_2191F6CE4((v24 > 1), v25 + 1, 1, v22);
        }

        *(v22 + 2) = v26;
      }

      v23 += 8;
      --v20;
    }

    while (v20);
  }

  else
  {
    v27 = v13;
    v22 = MEMORY[0x277D84F90];
  }

  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = (v28 + 16);
  v30 = a1 + OBJC_IVAR___TSEditorialItem_subtitleColor;
  swift_beginAccess();
  if (*(v30 + 8))
  {

    v31 = sub_219BF53D4();

    v86[4] = sub_2189B88D4;
    v86[5] = v28;
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 1107296256;
    v86[2] = sub_2189B7E84;
    v86[3] = &block_descriptor_3;
    v32 = _Block_copy(v86);

    FCDeconstructHexStringWithBlock();
    _Block_release(v32);
  }

  v82 = v28;
  v33 = OBJC_IVAR___TSEditorialItem_backingTag;
  swift_beginAccess();
  if (*(a1 + v33))
  {
    swift_getObjectType();
    v34 = swift_unknownObjectRetain();
    v35 = sub_218E97A64(v34, v76);
    swift_unknownObjectRelease();
    type metadata accessor for FollowingTagModel();
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = v35;
    *(v36 + 32) = v85 & 1;
  }

  else
  {
    v36 = 0;
  }

  v37 = sub_2189B7EF8(a1);
  v75 = v38;
  v76 = v37;
  v39 = (a1 + OBJC_IVAR___TSEditorialItem_identifier);
  swift_beginAccess();
  v40 = *v39;
  v41 = v39[1];
  v42 = (a1 + OBJC_IVAR___TSEditorialItem_title);
  swift_beginAccess();
  v43 = v42[1];
  v74 = *v42;
  swift_beginAccess();
  v44 = *v29;
  v45 = OBJC_IVAR___TSEditorialItem_actionURL;
  swift_beginAccess();
  v46 = v77;
  sub_2188383F8(a1 + v45, v77);
  v47 = OBJC_IVAR___TSEditorialItem_headline;
  swift_beginAccess();
  v72 = *(a1 + v47);
  v48 = v41;
  v49 = v40;
  type metadata accessor for EditorialModel(0);
  v50 = swift_allocObject();
  *(v50 + 16) = v40;
  *(v50 + 24) = v48;
  *(v50 + 32) = v74;
  *(v50 + 40) = v43;
  v51 = v75;
  *(v50 + 48) = v76;
  *(v50 + 56) = v51;
  *(v50 + 64) = v44;
  *(v50 + 72) = v22;
  v52 = v79;
  *(v50 + 80) = v80;
  *(v50 + 88) = v52;
  *(v50 + 96) = v81;
  *(v50 + 104) = v78;
  if (!v36)
  {
    v57 = v72;
    if (v72)
    {
      v58 = v44;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v59 = [v57 routeURL];
      if (v59)
      {
        v60 = v59;
        swift_unknownObjectRelease();
        v61 = v69;
        sub_219BDB8B4();

        swift_unknownObjectRelease();
        sub_2187BC32C(v46, sub_21873F65C);
        v62 = OBJC_IVAR____TtC7NewsUI214EditorialModel_route;
        (*(v70 + 32))(v50 + OBJC_IVAR____TtC7NewsUI214EditorialModel_route, v61, v71);
        v63 = v84;
        swift_storeEnumTagMultiPayload();
LABEL_32:
        (*(v83 + 56))(v50 + v62, 0, 1, v63);
        goto LABEL_33;
      }

      v62 = OBJC_IVAR____TtC7NewsUI214EditorialModel_route;
      v66 = v73;
      *v73 = v57;
      v63 = v84;
      swift_storeEnumTagMultiPayload();
      sub_218DCFF48(v66, v46, v50 + v62);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_219BF5304();
      v64 = v44;
      swift_bridgeObjectRetain_n();

      v65 = sub_219BF5624();

      if ((v65 & 1) == 0)
      {

        sub_2187BC32C(v46, sub_21873F65C);
        (*(v83 + 56))(v50 + OBJC_IVAR____TtC7NewsUI214EditorialModel_route, 1, 1, v84);
        goto LABEL_33;
      }

      v62 = OBJC_IVAR____TtC7NewsUI214EditorialModel_route;
      v66 = v73;
      *v73 = v49;
      *(v66 + 8) = v48;
      v63 = v84;
      swift_storeEnumTagMultiPayload();
      sub_218DCFF48(v66, v46, v50 + v62);
    }

    sub_2187BC32C(v66, type metadata accessor for EditorialModelRoute);
    sub_2187BC32C(v46, sub_21873F65C);
    goto LABEL_32;
  }

  v53 = OBJC_IVAR____TtC7NewsUI214EditorialModel_route;
  v54 = v73;
  *v73 = v36;
  v55 = v84;
  swift_storeEnumTagMultiPayload();
  v56 = v44;

  sub_218DCFF48(v54, v46, v50 + v53);
  sub_2187BC32C(v54, type metadata accessor for EditorialModelRoute);
  sub_2187BC32C(v46, sub_21873F65C);
  (*(v83 + 56))(v50 + v53, 0, 1, v55);
LABEL_33:

  type metadata accessor for FollowingEditorialModel();
  result = swift_allocObject();
  *(result + 16) = v50;
  *(result + 24) = v85 & 1;
  return result;
}

uint64_t type metadata accessor for SavedFeedExpandRequest()
{
  result = qword_280EC6E28;
  if (!qword_280EC6E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2189B8950()
{
  result = type metadata accessor for SavedFeedGapLocation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2189B89CC(uint64_t a1, uint64_t a2)
{
  sub_21896993C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2189B8A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21896993C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for PuzzleContinuePlayingModel()
{
  result = qword_280EBAB08;
  if (!qword_280EBAB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2189B8B00(uint64_t a1)
{
  sub_21896993C();
  if (v3 <= 0x3F)
  {
    v4 = v2;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
  }
}

uint64_t sub_2189B8BA4()
{
  sub_21896993C();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189B9890(v0, v8);
  (*(v3 + 32))(v6, v8, v2);
  v9 = sub_219BF07B4();
  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_2189B8CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2189B9030(&qword_280EBAB60);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2189B8D54(uint64_t a1, uint64_t a2)
{
  sub_21896993C();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  sub_2189B98F4();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 56);
  sub_2189B9890(a1, v15);
  sub_2189B9890(a2, &v15[v16]);
  v17 = *(v6 + 32);
  v17(v11, v15, v5);
  v17(v9, &v15[v16], v5);
  sub_2189699BC();
  sub_218969A10();
  LOBYTE(a2) = sub_219BF07C4();
  v18 = *(v6 + 8);
  v18(v9, v5);
  v18(v11, v5);
  return a2 & 1;
}

uint64_t sub_2189B9030(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PuzzleContinuePlayingModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2189B9074@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BDB954();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27[-1] - v8;
  sub_21896993C();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v27[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PuzzleContinuePlayingModel();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189B9890(v1, v17);
  (*(v12 + 32))(v14, v17, v11);
  sub_219BF07D4();
  v18 = v27[0];
  swift_unknownObjectRetain();
  sub_218969A64(v27);
  v19 = [v18 identifier];
  swift_unknownObjectRelease();
  if (!v19)
  {
    sub_219BF5414();
    v19 = sub_219BF53D4();
  }

  v20 = [objc_opt_self() nss:v19 NewsURLForPuzzleID:?];

  if (v20)
  {
    v26 = a1;
    sub_219BDB8B4();

    (*(v4 + 32))(v9, v7, v3);
    sub_219BDB854();
    sub_219BF07D4();
    v21 = v27[0];
    swift_unknownObjectRetain();
    sub_218969A64(v27);
    v22 = [v21 title];
    swift_unknownObjectRelease();
    if (v22)
    {
      sub_219BF5414();
    }

    a1 = v26;
    sub_219BEAF74();
    (*(v4 + 8))(v9, v3);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(v12 + 8))(v14, v11);
  v24 = sub_219BEAF84();
  return (*(*(v24 - 8) + 56))(a1, v23, 1, v24);
}

uint64_t sub_2189B9418@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_21896993C();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189B9890(v2, v14);
  (*(v6 + 32))(v12, v14, v5);
  (*(v6 + 16))(v9, v12, v5);
  sub_2189696BC(v9, a1);
  (*(v6 + 8))(v12, v5);
  v15 = *MEMORY[0x277D32DE8];
  v16 = sub_219BF0614();
  return (*(*(v16 - 8) + 104))(a1, v15, v16);
}

uint64_t sub_2189B95E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v29[0] = a2;
  v29[1] = a3;
  v29[2] = a4;
  v29[3] = a5;
  v29[4] = a6;
  v29[5] = a7;
  v29[6] = a8;
  v29[7] = a9;
  v12 = sub_219BE57D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v29 - v14;
  sub_21896993C();
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v29 - v22;
  v24 = type metadata accessor for PuzzleContinuePlayingModel();
  MEMORY[0x28223BE20](v24 - 8);
  v26 = v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189B9890(v10, v26);
  (*(v18 + 32))(v23, v26, v17);
  (*(v18 + 16))(v21, v23, v17);
  (*(v13 + 16))(v15, a1, v12);
  swift_getWitnessTable();
  v27 = sub_219879E90(v21, v15, v12);
  (*(v18 + 8))(v23, v17);
  return v27;
}

uint64_t sub_2189B9890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleContinuePlayingModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2189B98F4()
{
  if (!qword_27CC0C040)
  {
    type metadata accessor for PuzzleContinuePlayingModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0C040);
    }
  }
}

uint64_t sub_2189B9958()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2189B99C4@<X0>(void **a1@<X3>, _BYTE *a2@<X8>)
{
  result = sub_2189B9DD4(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_2189B99F8(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v5 = *a4;
  v6 = *(*v4 + 32);
  v7 = *(*v4 + 16);
  swift_getObjectType();
  LODWORD(v7) = [*(v6 + OBJC_IVAR____TtC7NewsUI219SubscriptionService_subscriptionController) hasSubscriptionToTag_];

  return v7 ^ 1;
}

uint64_t sub_2189B9A74(void *a1)
{
  v3 = *(v1 + 16);
  swift_getObjectType();
  v4 = sub_218E97A64(a1, v3);
  v5 = *(v1 + 32);
  v6 = OBJC_IVAR____TtC7NewsUI219SubscriptionService_subscriptionController;
  v7 = *(v5 + OBJC_IVAR____TtC7NewsUI219SubscriptionService_subscriptionController);
  v8 = [v4[2] identifier];
  if (!v8)
  {
    sub_219BF5414();
    v8 = sub_219BF53D4();
  }

  v9 = [v7 hasIgnoredSubscriptionForTagID_];

  if (v9)
  {
    sub_219ADDD2C(v4, 0, v5);
  }

  else
  {
    sub_2186F20D4();
    v11 = swift_allocObject();
    v27 = xmmword_219C09BA0;
    *(v11 + 16) = xmmword_219C09BA0;
    v12 = TagModel.description.getter();
    v14 = v13;
    v15 = MEMORY[0x277D837D0];
    *(v11 + 56) = MEMORY[0x277D837D0];
    v16 = sub_2186FC3BC();
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    sub_2186C6148(0, &qword_280E8D790);
    v17 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();

    if ([objc_opt_self() isMainThread])
    {
      v18 = *(v5 + v6);
      v19 = [v4[2] identifier];
      if (!v19)
      {
        sub_219BF5414();
        v19 = sub_219BF53D4();
      }

      [v18 addIgnoredSubscriptionForTagID_];
    }

    else
    {
      sub_2186C6148(0, &qword_280E8E3B0);
      v20 = sub_219BF66A4();
      MEMORY[0x28223BE20](v20);
      sub_219BF66B4();
    }

    v21 = swift_allocObject();
    *(v21 + 16) = v27;
    v22 = TagModel.description.getter();
    *(v21 + 56) = v15;
    *(v21 + 64) = v16;
    *(v21 + 32) = v22;
    *(v21 + 40) = v23;
    v24 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();

    v25 = *(v5 + OBJC_IVAR____TtC7NewsUI219SubscriptionService_tagService);
    v26 = v4[2];
    swift_getObjectType();
    sub_218E97A64(v26, v25);
  }
}

uint64_t sub_2189B9DD4(void *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  swift_getObjectType();
  v5 = sub_218E97A64(a1, v4);
  v6 = *(v3 + OBJC_IVAR____TtC7NewsUI219SubscriptionService_subscriptionController);
  v7 = [v5[2] identifier];
  if (!v7)
  {
    sub_219BF5414();
    v7 = sub_219BF53D4();
  }

  v8 = [v6 hasIgnoredSubscriptionForTagID_];

  return v8 ^ 1;
}

uint64_t sub_2189B9ECC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v39 = type metadata accessor for HistoryFeedConfig();
  MEMORY[0x28223BE20](v39);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_2186DD058(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v38 - v6;
  sub_2186DD058(0, &qword_280EE7D20, sub_2189BAA90, v4);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  sub_2186DD058(0, &qword_280EE9C40, MEMORY[0x277CC9578], v4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  sub_2189BAC14(0, &qword_280EE72C8, MEMORY[0x277D6CE98]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189BAB5C();
  v18 = v43;
  sub_219BF7B04();
  if (v18)
  {
    v31 = a1;
  }

  else
  {
    v19 = v15;
    v43 = a1;
    v20 = v42;
    sub_219BDBD34();
    v46 = 0;
    sub_2189BAD50(&unk_280EE9C70, MEMORY[0x277CC9578]);
    v21 = v17;
    sub_219BE2C94();
    v38 = v12;
    sub_2189BAA90();
    v23 = v22;
    v45 = 1;
    sub_2189BAD50(&qword_280EE7D30, sub_2189BAA90);
    v24 = v9;
    sub_219BE2C94();
    v25 = v19;
    v26 = *(v23 - 8);
    if ((*(v26 + 48))(v24, 1, v23) == 1)
    {
      sub_2187101B0(v24, &qword_280EE7D20, sub_2189BAA90);
      v27 = 0;
    }

    else
    {
      v28 = sub_219BE1E44();
      v29 = v24;
      v27 = v28;
      (*(v26 + 8))(v29, v23);
    }

    v30 = v40;
    sub_219BEE5B4();
    v44 = 2;
    sub_2189BAD50(&qword_280E91B88, MEMORY[0x277D32028]);
    sub_219BE2C94();
    v33 = MEMORY[0x277CC9578];
    v34 = v27;
    v35 = v38;
    sub_21872A908(v38, v30, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (!v34)
    {
      v34 = MEMORY[0x277D84F90];
    }

    sub_2187101B0(v35, &qword_280EE9C40, v33);
    (*(v25 + 8))(v21, v14);
    v36 = v20;
    v37 = v39;
    *(v30 + *(v39 + 20)) = v34;
    sub_2189A1E30(v41, v30 + *(v37 + 24));
    sub_2189BABB0(v30, v36);
    v31 = v43;
  }

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_2189BA4C0(void *a1)
{
  v3 = v1;
  sub_2189BAC14(0, &qword_27CC0C048, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189BAB5C();
  sub_219BF7B44();
  v13 = 0;
  sub_219BDBD34();
  sub_2189BAD50(&qword_280EE9CA0, MEMORY[0x277CC9578]);
  sub_219BF77E4();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for HistoryFeedConfig() + 20));
    v11[15] = 1;
    sub_2186DD058(0, &qword_280E8F148, type metadata accessor for HistoryFeedGroupConfig, MEMORY[0x277D83940]);
    sub_2189BAC78();
    sub_219BF7834();
    v11[14] = 2;
    sub_219BEE5B4();
    sub_2189BAD50(&unk_280E91B90, MEMORY[0x277D32028]);
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2189BA750()
{
  v1 = 0x7370756F7267;
  if (*v0 != 1)
  {
    v1 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x446873696C627570;
  }
}

uint64_t sub_2189BA7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2189BAEB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2189BA7D8(uint64_t a1)
{
  v2 = sub_2189BAB5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189BA814(uint64_t a1)
{
  v2 = sub_2189BAB5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2189BA8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = MEMORY[0x277CC9578];
  sub_2186DD058(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - v10;
  sub_21872A908(v5, &v13 - v10, &qword_280EE9C40, v8);
  sub_21872A908(v5 + *(a2 + 24), a3 + *(a2 + 24), &qword_280E91B80, MEMORY[0x277D32028]);
  sub_21872A908(v11, a3, &qword_280EE9C40, v8);

  result = sub_2187101B0(v11, &qword_280EE9C40, v8);
  *(a3 + *(a2 + 20)) = a1;
  return result;
}

void sub_2189BAA90()
{
  if (!qword_280EE7D28)
  {
    type metadata accessor for HistoryFeedGroupConfig();
    sub_2189BAD50(&qword_280EC82C8, type metadata accessor for HistoryFeedGroupConfig);
    sub_2189BAD50(&qword_280EC82D8, type metadata accessor for HistoryFeedGroupConfig);
    v0 = sub_219BE1E54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7D28);
    }
  }
}

unint64_t sub_2189BAB5C()
{
  result = qword_280ED64C0;
  if (!qword_280ED64C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED64C0);
  }

  return result;
}

uint64_t sub_2189BABB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryFeedConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2189BAC14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2189BAB5C();
    v7 = a3(a1, &type metadata for HistoryFeedConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2189BAC78()
{
  result = qword_27CC0C050;
  if (!qword_27CC0C050)
  {
    sub_2186DD058(255, &qword_280E8F148, type metadata accessor for HistoryFeedGroupConfig, MEMORY[0x277D83940]);
    sub_2189BAD50(&qword_280EC82D8, type metadata accessor for HistoryFeedGroupConfig);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C050);
  }

  return result;
}

uint64_t sub_2189BAD50(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2189BADAC()
{
  result = qword_27CC0C058;
  if (!qword_27CC0C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C058);
  }

  return result;
}

unint64_t sub_2189BAE04()
{
  result = qword_280ED64B0;
  if (!qword_280ED64B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED64B0);
  }

  return result;
}

unint64_t sub_2189BAE5C()
{
  result = qword_280ED64B8;
  if (!qword_280ED64B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED64B8);
  }

  return result;
}

uint64_t sub_2189BAEB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x446873696C627570 && a2 == 0xEB00000000657461;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7370756F7267 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_2189BAFC8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2189BB078()
{
  result = qword_27CC0F330;
  if (!qword_27CC0F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F330);
  }

  return result;
}

uint64_t sub_2189BB15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v5[25] = type metadata accessor for AudioHistoryFeedLayoutModel();
  v5[26] = swift_task_alloc();
  v6 = sub_219BEF974();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  sub_2189BD2D0();
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  v8 = sub_219BE9FA4();
  v5[33] = v8;
  v5[34] = *(v8 - 8);
  v5[35] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280EE9048, MEMORY[0x277D6D1A0]);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v9 = sub_219BDCB14();
  v5[40] = v9;
  v5[41] = *(v9 - 8);
  v5[42] = swift_task_alloc();
  v10 = sub_219BEE074();
  v5[43] = v10;
  v5[44] = *(v10 - 8);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91990, MEMORY[0x277D32218]);
  v5[47] = swift_task_alloc();
  v11 = sub_219BED8D4();
  v5[48] = v11;
  v5[49] = *(v11 - 8);
  v5[50] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91548, MEMORY[0x277D325F8]);
  v5[51] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E924F8, MEMORY[0x277D31DD0]);
  v5[52] = swift_task_alloc();
  v12 = sub_219BF1904();
  v5[53] = v12;
  v5[54] = *(v12 - 8);
  v5[55] = swift_task_alloc();
  v5[56] = type metadata accessor for ArticleListAudioHistoryFeedGroup();
  v5[57] = swift_task_alloc();
  type metadata accessor for AudioHistoryFeedSectionDescriptor();
  v5[58] = swift_task_alloc();
  sub_2189BD364();
  v5[59] = v13;
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  sub_2189BD3EC();
  v5[62] = v14;
  v5[63] = *(v14 - 8);
  v5[64] = swift_task_alloc();
  sub_2189BD4A4();
  v5[65] = swift_task_alloc();
  v15 = sub_219BE8944();
  v5[66] = v15;
  v5[67] = *(v15 - 8);
  v5[68] = swift_task_alloc();
  v16 = sub_219BE8164();
  v5[69] = v16;
  v5[70] = *(v16 - 8);
  v5[71] = swift_task_alloc();
  sub_219BEF6B4();
  v5[72] = swift_task_alloc();
  v17 = sub_219BEF594();
  v5[73] = v17;
  v5[74] = *(v17 - 8);
  v5[75] = swift_task_alloc();
  sub_219BEF5B4();
  v5[76] = swift_task_alloc();
  sub_219BEF604();
  v5[77] = swift_task_alloc();
  sub_219BEF644();
  v5[78] = swift_task_alloc();
  sub_219BEF664();
  v5[79] = swift_task_alloc();
  v18 = sub_219BEF694();
  v5[80] = v18;
  v5[81] = *(v18 - 8);
  v5[82] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91358, MEMORY[0x277D326A8]);
  v5[83] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91368, MEMORY[0x277D32698]);
  v5[84] = swift_task_alloc();
  v19 = sub_219BEF6C4();
  v5[85] = v19;
  v5[86] = *(v19 - 8);
  v5[87] = swift_task_alloc();
  sub_219BDCAF4();
  v5[88] = swift_task_alloc();
  v20 = sub_219BDCAE4();
  v5[89] = v20;
  v5[90] = *(v20 - 8);
  v5[91] = swift_task_alloc();
  v21 = sub_219BDCAB4();
  v5[92] = v21;
  v5[93] = *(v21 - 8);
  v5[94] = swift_task_alloc();
  sub_2189BD6B0(0, &unk_280E90C60, MEMORY[0x277D32FE0]);
  v5[95] = swift_task_alloc();
  v22 = sub_219BF0634();
  v5[96] = v22;
  v5[97] = *(v22 - 8);
  v5[98] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2189BBBAC, 0, 0);
}

uint64_t sub_2189BBBAC()
{
  v96 = v0[96];
  v98 = v0[97];
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[93];
  v89 = v0[98];
  v4 = v0[92];
  v121 = v0[91];
  v104 = v0[90];
  v110 = v0[89];
  v94 = v0[87];
  v100 = v0[86];
  v102 = v0[85];
  v74 = v0[84];
  v76 = v0[83];
  v5 = v0[81];
  v77 = v0[82];
  v78 = v0[80];
  v6 = v0[74];
  v83 = v0[75];
  v85 = v0[73];
  v103 = v0[70];
  v106 = v0[69];
  v108 = v0[71];
  v111 = v0[67];
  v113 = v0[66];
  v114 = v0[68];
  v7 = v0[22];
  v115 = v0[21];
  v118 = v0[65];
  (*(v98 + 104))();
  v8 = sub_219BF0BD4();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  (*(v3 + 104))(v2, *MEMORY[0x277D6D178], v4);
  sub_219BE8004();
  sub_219BF6B74();
  sub_219BE8004();
  sub_219BE8044();
  sub_219BE7FD4();
  sub_219BE8064();
  sub_219BE8034();
  sub_219BE7FF4();
  sub_219BE8024();
  sub_219BE8084();
  sub_219BE8014();
  sub_219BEE674();
  sub_219BEE664();
  sub_219BEE654();

  sub_219BDCAC4();
  v9 = sub_219BEF624();
  (*(*(v9 - 8) + 56))(v74, 1, 1, v9);
  v10 = sub_219BEF684();
  (*(*(v10 - 8) + 56))(v76, 1, 1, v10);
  (*(v5 + 104))(v77, *MEMORY[0x277D326B0], v78);
  sub_219BEF654();
  sub_219BEF5F4();
  sub_219BEF5F4();
  (*(v6 + 104))(v83, *MEMORY[0x277D32680], v85);
  sub_219BEF5A4();
  sub_219BEF6A4();

  sub_219BEF5C4();
  sub_219BEE0E4();
  (*(v100 + 8))(v94, v102);
  (*(v104 + 8))(v121, v110);
  (*(v3 + 8))(v2, v4);
  sub_218864B10(v1, &unk_280E90C60, MEMORY[0x277D32FE0]);
  (*(v98 + 8))(v89, v96);
  (*(v103 + 16))(v108, v7, v106);
  (*(v111 + 104))(v114, *MEMORY[0x277D6E080], v113);
  sub_2189BD538(0);
  (*(*(v11 - 8) + 16))(v118, v115, v11);
  sub_21872F5A0(&qword_27CC0C098, sub_2189BD538);
  v12 = sub_219BF5E44();
  if (v12)
  {
    v13 = v12;
    v123 = MEMORY[0x277D84F90];
    sub_218C34458(0, v12 & ~(v12 >> 63), 0);
    v14 = v123;
    result = sub_219BF5DF4();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v16 = v0;
      v17 = 0;
      v18 = v0[14];
      v82 = v0 + 7;
      v109 = v0[59];
      v81 = v0[56];
      v19 = v0[44];
      v79 = (v0[54] + 8);
      v80 = (v0[49] + 16);
      v84 = (v0[41] + 8);
      v71 = (v0[34] + 104);
      v72 = (v19 + 16);
      v67 = v0[28];
      v112 = v0[31];
      v70 = (v19 + 8);
      v69 = *MEMORY[0x277D6E980];
      v73 = v0[63];
      v75 = v13;
      v68 = *MEMORY[0x277D6E988];
      while (1)
      {
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v116 = v17;
        v21 = v16[61];
        v22 = *(v109 + 48);
        v16[15] = v18;
        result = sub_219BF5DF4();
        if (v18 < v16[16])
        {
          goto LABEL_21;
        }

        result = sub_219BF5E84();
        if (v18 >= v16[17])
        {
          goto LABEL_22;
        }

        v86 = v20;
        v87 = v18;
        v107 = v14;
        v23 = v16[58];
        v119 = v16[60];
        v122 = v16[57];
        v88 = v16[55];
        v105 = v16[53];
        v24 = v16[50];
        v90 = v16[52];
        v91 = v16[48];
        v92 = v16[51];
        v93 = v16[47];
        v95 = v16[39];
        v97 = v16[38];
        v99 = v16[37];
        v101 = v16[36];
        v25 = sub_219BF5EC4();
        v27 = v26;
        sub_2189BD558(0, &qword_27CC0C070, MEMORY[0x277D6D710]);
        v29 = v28;
        v30 = *(v28 - 8);
        (*(v30 + 16))(v21 + v22, v27, v28);
        v25(v82, 0);
        *v119 = v116;
        (*(v30 + 32))(&v119[*(v109 + 48)], v21 + v22, v29);
        sub_219BE6934();
        sub_2189BD64C(v23, v122);
        v31 = *(v81 + 20);
        sub_219BED874();
        v32 = sub_219BEDB64();
        (*(*(v32 - 8) + 56))(v90, 1, 1, v32);
        (*v80)(v24, v122 + v31, v91);
        sub_219BEF4D4();
        v33 = sub_219BEF4E4();
        (*(*(v33 - 8) + 56))(v92, 0, 1, v33);
        v34 = sub_219BEEA64();
        (*(*(v34 - 8) + 56))(v93, 1, 1, v34);
        sub_21872F5A0(&qword_27CC0C0A0, type metadata accessor for AudioHistoryFeedSectionDescriptor);
        sub_21872F5A0(&qword_27CC0C0A8, type metadata accessor for AudioHistoryFeedModel);
        sub_219BE69F4();
        sub_218864B10(v93, &qword_280E91990, MEMORY[0x277D32218]);
        sub_218864B10(v92, &qword_280E91548, MEMORY[0x277D325F8]);
        sub_218864B10(v90, &qword_280E924F8, MEMORY[0x277D31DD0]);
        v35 = *v79;
        (*v79)(v88, v105);
        sub_219BED874();
        v36 = sub_219BF44B4();
        v35(v88, v105);
        v16[5] = sub_219BF3594();
        v16[6] = MEMORY[0x277D33EB8];
        v16[2] = v36;
        v37 = sub_219BDCB24();
        v38 = *(*(v37 - 8) + 56);
        v38(v95, 1, 1, v37);
        v38(v97, 1, 1, v37);
        v38(v99, 1, 1, v37);
        v38(v101, 1, 1, v37);

        sub_219BDCB04();
        sub_219BEE0B4();
        v40 = v16[45];
        v39 = v16[46];
        v41 = v16[43];
        v42 = v16[35];
        v43 = v16[33];
        (*v84)(v16[42], v16[40]);

        sub_218864B10((v16 + 2), &qword_280E91020, sub_2189BD704);
        (*v72)(v40, v39, v41);
        v16[11] = sub_219B58BA4(v40);
        v16[12] = v44;
        v16[13] = v45;
        v46 = sub_219BE9F84();
        (*(*(v46 - 8) + 104))(v42, v69, v46);
        (*v71)(v42, v68, v43);
        v47 = sub_219BEE004();
        v48 = *(v47 + 16);
        v49 = v16;
        if (v48)
        {
          v124 = MEMORY[0x277D84F90];
          sub_218C34598(0, v48, 0);
          v50 = v47 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
          v117 = *(v67 + 16);
          v120 = *(v67 + 72);
          do
          {
            v51 = v49[29];
            v53 = v49[26];
            v52 = v49[27];
            v117(v51, v50, v52);
            v117(v53, v51, v52);
            sub_21872F5A0(&qword_27CC0F300, type metadata accessor for AudioHistoryFeedLayoutModel);
            sub_219BE75D4();
            (*(v67 + 8))(v51, v52);
            v55 = *(v124 + 16);
            v54 = *(v124 + 24);
            if (v55 >= v54 >> 1)
            {
              sub_218C34598(v54 > 1, v55 + 1, 1);
            }

            v56 = v49[32];
            v57 = v49[30];
            *(v124 + 16) = v55 + 1;
            (*(v112 + 32))(v124 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v55, v56, v57);
            v50 += v120;
            --v48;
          }

          while (v48);
        }

        v58 = v49[60];
        v59 = v49[57];
        v60 = v49[46];
        v61 = v49[43];
        v16 = v49;
        sub_2189BD7C8();
        sub_21872F5A0(&qword_27CC0C0B8, type metadata accessor for AudioHistoryFeedLayoutModel);
        sub_219BE81A4();

        (*v70)(v60, v61);
        sub_2189BD768(v59, type metadata accessor for ArticleListAudioHistoryFeedGroup);
        sub_2189BD768(v58, sub_2189BD364);
        v14 = v107;
        v63 = *(v107 + 16);
        v62 = *(v107 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_218C34458(v62 > 1, v63 + 1, 1);
          v14 = v107;
        }

        v64 = v49[64];
        v65 = v49[62];
        *(v14 + 16) = v63 + 1;
        (*(v73 + 32))(v14 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v63, v64, v65);
        v49[19] = v87;
        result = sub_219BF5E54();
        v18 = v49[18];
        v17 = v86;
        if (v86 == v75)
        {
          sub_2189BD768(v49[65], sub_2189BD4A4);
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_2189BD768(v0[65], sub_2189BD4A4);
    v16 = v0;
LABEL_17:
    sub_2189BD7C8();
    sub_21872F5A0(&qword_27CC0C0B8, type metadata accessor for AudioHistoryFeedLayoutModel);
    sub_219BE6564();
    sub_219BEE0C4();

    v66 = v16[1];

    return v66();
  }

  return result;
}

uint64_t sub_2189BD20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_2189BB15C(a1, a2, a3, a4);
}

void sub_2189BD2D0()
{
  if (!qword_27CC0C060)
  {
    type metadata accessor for AudioHistoryFeedLayoutModel();
    sub_21872F5A0(&qword_27CC0F300, type metadata accessor for AudioHistoryFeedLayoutModel);
    v0 = sub_219BE75F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C060);
    }
  }
}

void sub_2189BD364()
{
  if (!qword_27CC0C068)
  {
    sub_2189BD558(255, &qword_27CC0C070, MEMORY[0x277D6D710]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0C068);
    }
  }
}

void sub_2189BD3EC()
{
  if (!qword_27CC0C078)
  {
    type metadata accessor for AudioHistoryFeedLayoutModel();
    sub_2189BB078();
    sub_21872F5A0(&qword_27CC0F300, type metadata accessor for AudioHistoryFeedLayoutModel);
    v0 = sub_219BE81B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C078);
    }
  }
}

void sub_2189BD4A4()
{
  if (!qword_27CC0C080)
  {
    sub_2189BD538(255);
    sub_21872F5A0(&qword_27CC0C090, sub_2189BD538);
    v0 = sub_219BF7544();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C080);
    }
  }
}

void sub_2189BD558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioHistoryFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioHistoryFeedModel();
    v8[2] = sub_21872F5A0(&unk_27CC0DC20, type metadata accessor for AudioHistoryFeedSectionDescriptor);
    v8[3] = sub_21872F5A0(&unk_27CC0B8B0, type metadata accessor for AudioHistoryFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2189BD64C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListAudioHistoryFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2189BD6B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2189BD704()
{
  result = qword_280E91028;
  if (!qword_280E91028)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E91028);
  }

  return result;
}

uint64_t sub_2189BD768(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2189BD7C8()
{
  result = qword_27CC0C0B0;
  if (!qword_27CC0C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C0B0);
  }

  return result;
}

uint64_t sub_2189BD83C(void *a1)
{
  v2 = sub_219BED9B4();
  v19 = *(v2 - 8);
  v20 = v2;
  MEMORY[0x28223BE20](v2);
  v18 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC274();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDC7F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  if (qword_280EE9180 != -1)
  {
    swift_once();
  }

  (*(v9 + 104))(v11, *MEMORY[0x277D6D048], v8);
  sub_2189BE05C(&qword_280EE90F8, MEMORY[0x277D6D060]);
  sub_219BDC924();
  (*(v9 + 8))(v11, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC284();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D208], v4);
  sub_2189BE05C(&qword_27CC0C0E8, MEMORY[0x277D6D218]);
  sub_219BDC924();

  (*(v5 + 8))(v7, v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC07E08 != -1)
  {
    swift_once();
  }

  v21 = 0xD000000000000018;
  v22 = 0x8000000219CDD090;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC594();
  v14 = v18;
  v13 = v19;
  v15 = v20;
  (*(v19 + 104))(v18, *MEMORY[0x277D31CA8], v20);
  sub_2189BE05C(&unk_27CC0C0F0, MEMORY[0x277D31CD8]);
  sub_219BDC924();

  (*(v13 + 8))(v14, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08808 != -1)
  {
    swift_once();
  }

  LOBYTE(v21) = 1;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08810 != -1)
  {
    swift_once();
  }

  LOBYTE(v21) = 1;
  return sub_219BDC924();
}

uint64_t sub_2189BDE8C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC404();
  sub_219BDC924();
}

uint64_t sub_2189BDF4C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_219BDC984();
  swift_allocObject();
  result = sub_219BDC974();
  *a3 = result;
  return result;
}

uint64_t sub_2189BDFA4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC744();
  sub_219BDC924();
}

uint64_t sub_2189BE05C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2189BE0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v35 = a1;
  sub_2189539F0();
  v34 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEF584();
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x28223BE20](v8);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEF2A4();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BEF974();
  v32 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SearchLayoutModel();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189BE8AC();
  sub_219BE75E4();
  (*(v14 + 32))(v16, v19, v13);
  v31 = *(v4 + 40);
  ObjectType = swift_getObjectType();
  sub_219BEF574();
  v20 = swift_allocObject();
  swift_weakInit();
  v22 = v33;
  v21 = v34;
  (*(v6 + 16))(v33, v35, v34);
  v23 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  (*(v6 + 32))(v24 + v23, v22, v21);

  v25 = v29;
  sub_219BEECD4();

  (*(v38 + 8))(v25, v39);

  v26 = sub_219BEF294();
  (*(v36 + 8))(v12, v37);
  (*(v14 + 8))(v16, v32);
  return v26;
}

uint64_t sub_2189BE4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BF0894();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEDF44();
  if ((*(v5 + 88))(v7, v4) != *MEMORY[0x277D32F88])
  {
    return (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 96))(v7, v4);
  v8 = sub_219BF13B4();
  v9 = *(v8 - 8);
  if ((*(v9 + 88))(v7, v8) != *MEMORY[0x277D33338])
  {
    return (*(v9 + 8))(v7, v8);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_218DA3954(v15);
      v11[1] = v15[0];
      v11[2] = v15[1];
      v12 = v16;
      v13 = v17;
      v14 = v18;
      sub_219532400(a3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2189BE6F8()
{
  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2189BE7EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2189BE87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_2189BE0AC(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

void sub_2189BE8AC()
{
  if (!qword_27CC0F5C0)
  {
    type metadata accessor for SearchLayoutModel();
    sub_2189BE7EC(&qword_280ED5450, type metadata accessor for SearchLayoutModel);
    v0 = sub_219BE75F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0F5C0);
    }
  }
}

uint64_t sub_2189BE940(uint64_t a1)
{
  sub_2189539F0();
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  return sub_2189BE4A8(a1, v4, v5);
}

uint64_t sub_2189BE9B4()
{
  result = swift_checkMetadataState();
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

uint64_t sub_2189BEA84(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_2186E330C();
  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0);
  v4 = sub_219BF66A4();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_2188202A8(a1);
  sub_219BE2F94();
}

uint64_t sub_2189BEBA4(void *a1)
{
  v1 = *(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x78));
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  return sub_219BF1E44();
}

uint64_t sub_2189BEC48(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = (*(a2 + *((*MEMORY[0x277D85000] & *a2) + 0x90)) + OBJC_IVAR___TSChannelIssuesGroupConfig_title);
  v7 = *v6;
  v8 = v6[1];
  v9 = *((*MEMORY[0x277D85000] & *a2) + 0x58);
  v10 = *(v9 + 40);
  v11 = *((*MEMORY[0x277D85000] & *a2) + 0x50);

  v10(v5, v7, v8, v11, v9);

  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  sub_2188202A8(a3);
  sub_2189C018C(0);
  sub_2186E43C8(&qword_27CC0C200, sub_2189C018C);
  sub_219BE6EF4();
}

uint64_t sub_2189BEE20(uint64_t a1, uint64_t (*a2)(void))
{
  if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t sub_2189BEE50(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return sub_219BE6F24();
  }

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_2188202A8(a1);

  sub_219BE6F24();

  return sub_2187FABEC(a1);
}

uint64_t sub_2189BEF54(uint64_t a1)
{
  v26 = a1;
  sub_2189C01AC(0, &qword_27CC0C208, MEMORY[0x277D6DA48]);
  v27 = v2;
  v3 = *(v2 - 8);
  v29 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v28 = &v24 - v4;
  v5 = type metadata accessor for ChannelIssuesModel();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953748();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v10 + 8))(v12, v9);
  v13 = *v7;
  v24 = *(v7 + 2);
  sub_2189C026C();
  v25 = *(v14 + 48);
  v15 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x98));
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v16 = [v13 identifier];
  sub_219BF5414();

  LOBYTE(v16) = sub_219BF4774();

  v17 = sub_219BF0744();
  (*(*(v17 - 8) + 8))(&v7[v25], v17);
  v18 = v27;
  v19 = v28;
  (*(v3 + 16))(v28, v26, v27);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = v20 + v29;
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v20, v19, v18);
  *(v22 + v21) = v16 & 1;
  sub_219BDD154();
}

uint64_t sub_2189BF2D8(uint64_t a1, uint64_t a2, int a3)
{
  v71 = a3;
  v89 = a2;
  v91 = a1;
  v77 = sub_219BDBD34();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v60[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = sub_219BDF8A4();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v60[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = sub_219BDF1A4();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v60[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = sub_219BDFCE4();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v60[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = sub_219BDBD64();
  v82 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v81 = &v60[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_219BDFFB4();
  v9 = *(v8 - 8);
  v83 = v8;
  v84 = v9;
  MEMORY[0x28223BE20](v8);
  v80 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_219BE1714();
  v12 = *(v11 - 8);
  v78 = v11;
  v79 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v60[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for ChannelIssuesModel();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v60[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218953748();
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v60[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2189C01AC(0, &qword_27CC0C208, MEMORY[0x277D6DA48]);
  v90 = v23;
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v20 + 8))(v22, v19);
  v24 = *v17;
  v70 = v17;
  v88 = *(v17 + 2);
  sub_2189C026C();
  v66 = *(v25 + 48);
  v65 = v24;
  sub_21934C4BC();
  sub_2187F3258();
  v92 = v26;
  v27 = sub_219BDCD44();
  v94 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 80);
  v30 = (v29 + 32) & ~v29;
  v31 = v30 + *(v28 + 72);
  v32 = swift_allocObject();
  v95 = xmmword_219C09BA0;
  *(v32 + 16) = xmmword_219C09BA0;
  v33 = *MEMORY[0x277CEAD18];
  v34 = *(v28 + 104);
  v34(v32 + v30, v33, v27);
  v93 = "model issueTraits ";
  sub_2186E43C8(&unk_280EE7F60, MEMORY[0x277D2F890]);
  v35 = v78;
  sub_219BDCCC4();

  (*(v79 + 8))(v14, v35);
  v36 = v81;
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v82 + 8))(v36, v85);
  v37 = v80;
  sub_219BDFFA4();
  v82 = v29;
  v86 = v31;
  v38 = swift_allocObject();
  *(v38 + 16) = v95;
  v87 = v30;
  v39 = v33;
  v40 = v33;
  v85 = v28 + 104;
  v41 = v34;
  v34(v38 + v30, v40, v94);
  sub_2186E43C8(&unk_280EE84F0, MEMORY[0x277D2E290]);
  v42 = v83;
  sub_219BDCCC4();

  (*(v84 + 8))(v37, v42);
  sub_2186E43C8(&qword_27CC0C228, type metadata accessor for ChannelIssuesModel);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v44 = v62;
    sub_219BDFCD4();
    v45 = swift_allocObject();
    *(v45 + 16) = v95;
    v46 = v87;
    v61 = v39;
    v41(v45 + v87, v39, v94);
    sub_2186E43C8(&unk_280EE8590, MEMORY[0x277D2E058]);
    v47 = v64;
    sub_219BDCCC4();

    (*(v63 + 8))(v44, v47);
    v48 = v67;
    sub_219BF6AC4();
    v49 = swift_allocObject();
    *(v49 + 16) = v95;
    v50 = v61;
    v51 = v94;
    v41(v49 + v46, v61, v94);
    sub_2186E43C8(&unk_280EE8850, MEMORY[0x277D2D950]);
    v52 = v69;
    sub_219BDCCC4();

    (*(v68 + 8))(v48, v52);
    v53 = v72;
    sub_219BDF894();
    v54 = swift_allocObject();
    *(v54 + 16) = v95;
    v41(v54 + v87, v50, v51);
    sub_2186E43C8(&qword_280EE8640, MEMORY[0x277D2DE40]);
    v55 = v74;
    sub_219BDCCC4();

    (*(v73 + 8))(v53, v55);
    sub_219BE0274();
    v56 = v75;
    sub_219BE75A4();
    sub_2186E43C8(&unk_280EE8460, MEMORY[0x277D2E418]);
    sub_219BDCC64();
    v57 = *(v76 + 8);
    v58 = v77;
    v57(v56, v77);
    sub_219BE7574();
    sub_219BDCC74();

    v57(v56, v58);
    v59 = sub_219BF0744();
    return (*(*(v59 - 8) + 8))(&v70[v66], v59);
  }

  __break(1u);
  return result;
}

void sub_2189BFECC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2189C0384();
}

uint64_t sub_2189BFF6C(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  sub_218774F78(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);

  (*(*(*((v4 & v2) + 0x50) - 8) + 8))(&a1[*((*v3 & *a1) + 0x70)]);
  swift_unknownObjectRelease();

  v5 = &a1[*((*v3 & *a1) + 0x98)];

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_2189C015C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_2189C01AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ChannelIssuesSectionDescriptor;
    v8[1] = type metadata accessor for ChannelIssuesModel();
    v8[2] = sub_218953004();
    v8[3] = sub_2186E43C8(&qword_27CC0B0A0, type metadata accessor for ChannelIssuesModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2189C026C()
{
  if (!qword_27CC0C218)
  {
    sub_219BF0744();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0C218);
    }
  }
}

uint64_t sub_2189C02D8(uint64_t a1)
{
  sub_2189C01AC(0, &qword_27CC0C208, MEMORY[0x277D6DA48]);
  v4 = *(v3 - 8);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v6 = *(v5 + *(v4 + 64));

  return sub_2189BF2D8(a1, v5, v6);
}

uint64_t sub_2189C0384()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v2 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      (*(v2 + 32))(0, 0, ObjectType, v2);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2189C0470()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_2189C04C8()
{
  sub_2189C0470();

  return swift_deallocClassInstance();
}

uint64_t sub_2189C05D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FollowingSectionLayoutDescriptor();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v13[-v10];
  sub_218950928();
  sub_219BE6934();
  v23[2] = v19;
  v23[3] = v20;
  v23[4] = v21;
  v24 = v22;
  v23[0] = v17;
  v23[1] = v18;
  sub_2189C0814(v23, a3, v11);
  sub_2189C3F04(v23);
  v14 = a2;
  v15 = a1;
  v16 = a3;
  sub_218944748(sub_2189C3F58, v13);
  sub_2189C3FDC(v11, v9, type metadata accessor for FollowingSectionLayoutDescriptor);
  type metadata accessor for FollowingLayoutModel();
  sub_218748C68(&unk_280EA6930, type metadata accessor for FollowingSectionLayoutDescriptor);
  sub_218748C68(&qword_280ECEC20, type metadata accessor for FollowingLayoutModel);
  sub_219BE8174();
  return sub_2189C3F7C(v11, type metadata accessor for FollowingSectionLayoutDescriptor);
}

uint64_t sub_2189C0814@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v109 = a3;
  v5 = a1[3];
  v124 = a1[2];
  v125 = v5;
  v126 = a1[4];
  v127 = *(a1 + 80);
  v6 = a1[1];
  v122 = *a1;
  v123 = v6;
  v7 = type metadata accessor for TitleViewLayoutOptions(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TitleViewLayoutAttributes(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v106 = &v101 - v15;
  MEMORY[0x28223BE20](v14);
  v107 = &v101 - v16;
  v17 = 12.0;
  if ((sub_219BED0C4() & 1) == 0)
  {
    v18 = sub_219BE8074();
    v19 = [v18 userInterfaceIdiom];

    if (v19 == 5)
    {
      v17 = 9.0;
    }

    else
    {
      v17 = 12.0;
    }
  }

  v20 = 11.0;
  if ((sub_219BED0C4() & 1) == 0)
  {
    v21 = sub_219BE8074();
    v22 = [v21 userInterfaceIdiom];

    if (v22 == 5)
    {
      v20 = 7.0;
    }

    else
    {
      v20 = 11.0;
    }
  }

  v24 = *a1;
  v23 = *(a1 + 1);
  v25 = *(a1 + 2);
  v26 = *(a1 + 3);
  v28 = *(a1 + 4);
  v27 = *(a1 + 5);
  v30 = *(a1 + 6);
  v29 = *(a1 + 7);
  v31 = *(a1 + 8);
  v32 = *(a1 + 80);
  if (v32 <= 4)
  {
    if (*(a1 + 80) > 1u)
    {
      if (v32 == 2)
      {
        *&v117 = *a1;
        *(&v117 + 1) = v23;
        *&v118 = v25;
        *(&v118 + 1) = v26;
        *&v119 = v28;
        *(&v119 + 1) = v27;
        *&v120 = v30;
        *(&v120 + 1) = v29;
        v121 = v31;
        __swift_project_boxed_opaque_existential_1((v108 + 16), *(v108 + 40));
        v54 = sub_219BE8164();
        (*(*(v54 - 8) + 16))(v9, a2, v54);
        *&v9[v7[5]] = v17;
        *&v9[v7[6]] = v20;
        v9[v7[7]] = 5;
        v111 = v122;
        v112 = v123;
        v116 = v127;
        v115 = v126;
        v113 = v124;
        v114 = v125;
        sub_2189C3FDC(&v111, v110, sub_218799404);
        v55 = v107;
        sub_219459814(&v117, *&v9, v107);
        sub_2189C3F7C(v9, type metadata accessor for TitleViewLayoutOptions);
        sub_218749C1C();
        v57 = *(v56 + 48);
        v58 = v120;
        v59 = v109;
        *(v109 + 32) = v119;
        *(v59 + 48) = v58;
        *(v59 + 64) = v121;
        v60 = v118;
        *v59 = v117;
        *(v59 + 16) = v60;
        sub_2189D2D74(v55, v59 + v57, type metadata accessor for TitleViewLayoutAttributes);
        type metadata accessor for FollowingSectionLayoutDescriptor();
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_11;
    }

    if (!*(a1 + 80))
    {
      *&v117 = *a1;
      *(&v117 + 1) = v23;
      *&v118 = v25;
      *(&v118 + 1) = v26;
      *&v119 = v28;
      *(&v119 + 1) = v27;
      *&v120 = v30;
      *(&v120 + 1) = v29;
      v121 = v31;
      __swift_project_boxed_opaque_existential_1((v108 + 16), *(v108 + 40));
      v47 = sub_219BE8164();
      (*(*(v47 - 8) + 16))(v9, a2, v47);
      *&v9[v7[5]] = 0x4010000000000000;
      *&v9[v7[6]] = 0x4010000000000000;
      v9[v7[7]] = 5;
      v111 = v122;
      v112 = v123;
      v116 = v127;
      v115 = v126;
      v113 = v124;
      v114 = v125;
      sub_2189C3FDC(&v111, v110, sub_218799404);
      v48 = v107;
      sub_219459814(&v117, *&v9, v107);
      sub_2189C3F7C(v9, type metadata accessor for TitleViewLayoutOptions);
      sub_218749C1C();
      v50 = *(v49 + 48);
      v51 = v120;
      v52 = v109;
      *(v109 + 32) = v119;
      *(v52 + 48) = v51;
      *(v52 + 64) = v121;
      v53 = v118;
      *v52 = v117;
      *(v52 + 16) = v53;
      sub_2189D2D74(v48, v52 + v50, type metadata accessor for TitleViewLayoutAttributes);
      type metadata accessor for FollowingSectionLayoutDescriptor();
      return swift_storeEnumTagMultiPayload();
    }

    v101 = *a1;
    v102 = v30;
    *&v117 = v24;
    *(&v117 + 1) = v23;
    v107 = v23;
    v103 = v25;
    v104 = v28;
    *&v118 = v25;
    *(&v118 + 1) = v26;
    v63 = v26;
    *&v119 = v28;
    *(&v119 + 1) = v27;
    v105 = v27;
    *&v120 = v30;
    *(&v120 + 1) = v29;
    v64 = v29;
    v65 = v31;
    v121 = v31;
    if (sub_219BED0C4())
    {
      v66 = sub_219BE8074();
      v67 = [v66 horizontalSizeClass];

      if (v67 && v67 != 2)
      {
        if (v67 != 1)
        {
          v68 = sub_219BE8164();
          (*(*(v68 - 8) + 16))(v9, a2, v68);
          *&v9[v7[5]] = 0x4035000000000000;
          *&v9[v7[6]] = 0x4026000000000000;
          v9[v7[7]] = 5;
          __swift_project_boxed_opaque_existential_1((v108 + 16), *(v108 + 40));
          v111 = v122;
          v112 = v123;
          v116 = v127;
          v69 = v125;
          v115 = v126;
          v70 = v124;
LABEL_38:
          v113 = v70;
          v114 = v69;
          sub_2189C3FDC(&v111, v110, sub_218799404);
          v80 = v106;
          sub_219459814(&v117, *&v9, v106);
          sub_2189C3F7C(v9, type metadata accessor for TitleViewLayoutOptions);
LABEL_39:
          sub_218749C1C();
          v82 = *(v81 + 48);
          v83 = v109;
          v84 = v107;
          *v109 = v101;
          v83[1] = v84;
          v85 = v104;
          v83[2] = v103;
          v83[3] = v63;
          v86 = v105;
          v83[4] = v85;
          v83[5] = v86;
          v83[6] = v102;
          v83[7] = v64;
          v83[8] = v65;
          sub_2189D2D74(v80, v83 + v82, type metadata accessor for TitleViewLayoutAttributes);
          type metadata accessor for FollowingSectionLayoutDescriptor();
          return swift_storeEnumTagMultiPayload();
        }

LABEL_40:
        v87 = sub_219BE8164();
        (*(*(v87 - 8) + 16))(v9, a2, v87);
        *&v9[v7[5]] = 0;
        *&v9[v7[6]] = 0;
        v9[v7[7]] = 5;
        __swift_project_boxed_opaque_existential_1((v108 + 16), *(v108 + 40));

        v80 = v106;
        sub_219459814(&v117, *&v9, v106);
        sub_2189C3F7C(v9, type metadata accessor for TitleViewLayoutOptions);
        v103 = 0;
        v104 = 0;
        v105 = 0;
        v102 = 0;
        v64 = 0;
        v65 = 0;
        v63 = 0xE000000000000000;
        goto LABEL_39;
      }
    }

    else
    {
      if ((sub_219BED0C4() & 1) == 0)
      {
        v72 = sub_219BE8074();
        v73 = [v72 userInterfaceIdiom];

        if (v73 == 5)
        {
          v74 = sub_219BE8164();
          (*(*(v74 - 8) + 16))(v9, a2, v74);
          *&v9[v7[5]] = v17;
          *&v9[v7[6]] = v20;
LABEL_37:
          v9[v7[7]] = 5;
          __swift_project_boxed_opaque_existential_1((v108 + 16), *(v108 + 40));
          v111 = v122;
          v112 = v123;
          v116 = v127;
          v69 = v125;
          v115 = v126;
          v70 = v124;
          goto LABEL_38;
        }
      }

      v75 = sub_219BE8074();
      v76 = [v75 horizontalSizeClass];

      if (v76 == 1)
      {
        v77 = sub_219BE8074();
        v78 = [v77 userInterfaceIdiom];

        if (v78 != 5)
        {
          goto LABEL_40;
        }
      }
    }

    v79 = sub_219BE8164();
    (*(*(v79 - 8) + 16))(v9, a2, v79);
    *&v9[v7[5]] = 0x4035000000000000;
    *&v9[v7[6]] = 0x4026000000000000;
    goto LABEL_37;
  }

  if (*(a1 + 80) <= 7u)
  {
LABEL_11:
    *&v117 = *a1;
    *(&v117 + 1) = v23;
    *&v118 = v25;
    *(&v118 + 1) = v26;
    *&v119 = v28;
    *(&v119 + 1) = v27;
    *&v120 = v30;
    *(&v120 + 1) = v29;
    v121 = v31;
    __swift_project_boxed_opaque_existential_1((v108 + 16), *(v108 + 40));
    v33 = sub_219BE8164();
    (*(*(v33 - 8) + 16))(v9, a2, v33);
    *&v9[v7[5]] = v17;
    *&v9[v7[6]] = v20;
    v9[v7[7]] = 5;
    v111 = v122;
    v112 = v123;
    v116 = v127;
    v115 = v126;
    v113 = v124;
    v114 = v125;
    sub_2189C3FDC(&v111, v110, sub_218799404);
    v34 = v107;
    sub_219459814(&v117, *&v9, v107);
    sub_2189C3F7C(v9, type metadata accessor for TitleViewLayoutOptions);
    sub_218749C1C();
    v36 = *(v35 + 48);
    v37 = v120;
    v38 = v109;
    *(v109 + 32) = v119;
    *(v38 + 48) = v37;
    *(v38 + 64) = v121;
    v39 = v118;
    *v38 = v117;
    *(v38 + 16) = v39;
    sub_2189D2D74(v34, v38 + v36, type metadata accessor for TitleViewLayoutAttributes);
    type metadata accessor for FollowingSectionLayoutDescriptor();
    return swift_storeEnumTagMultiPayload();
  }

  if (v32 == 8)
  {
    v61 = *(a1 + 9);
    *&v111 = *a1;
    *(&v111 + 1) = v23;
    *&v112 = v25;
    *(&v112 + 1) = v26;
    *&v113 = v28;
    *(&v113 + 1) = v27;
    *&v114 = v30;
    *(&v114 + 1) = v29;
    *&v115 = v31;
    *(&v115 + 1) = v61;
    v121 = v31;
    v119 = v113;
    v120 = v114;
    v117 = v111;
    v118 = v112;
    if (v61 >> 62)
    {
      if (sub_219BF7214())
      {
        goto LABEL_24;
      }
    }

    else if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_24:
      __swift_project_boxed_opaque_existential_1((v108 + 16), *(v108 + 40));
      v62 = sub_219BE8164();
      (*(*(v62 - 8) + 16))(v9, a2, v62);
      *&v9[v7[5]] = v17;
      *&v9[v7[6]] = v20;
      v9[v7[7]] = 5;
      sub_218967C1C(&v111, v110);
      sub_219459814(&v117, *&v9, v13);
      sub_2189C3F7C(v9, type metadata accessor for TitleViewLayoutOptions);
LABEL_43:
      sub_218749C1C();
      v96 = *(v95 + 48);
      v97 = v120;
      v98 = v109;
      *(v109 + 32) = v119;
      *(v98 + 48) = v97;
      *(v98 + 64) = v121;
      v99 = v118;
      *v98 = v117;
      *(v98 + 16) = v99;
      sub_2189D2D74(v13, v98 + v96, type metadata accessor for TitleViewLayoutAttributes);
      type metadata accessor for FollowingSectionLayoutDescriptor();
      return swift_storeEnumTagMultiPayload();
    }

    v88 = *MEMORY[0x277D6E758];
    v89 = sub_219BE9834();
    (*(*(v89 - 8) + 104))(v13, v88, v89);
    v90 = &v13[v10[5]];
    *v90 = 0;
    *(v90 + 1) = 0;
    *(v90 + 2) = 0;
    *(v90 + 3) = 0x10000000000000;
    v91 = &v13[v10[6]];
    *v91 = 0u;
    *(v91 + 1) = 0u;
    v92 = &v13[v10[7]];
    *v92 = 0u;
    *(v92 + 1) = 0u;
    v93 = &v13[v10[8]];
    v93[32] = 0;
    *v93 = 0u;
    *(v93 + 1) = 0u;
    v94 = &v13[v10[9]];
    *v94 = 0u;
    *(v94 + 1) = 0u;
    v94[32] = 1;
    v13[v10[10]] = 0;
    v13[v10[11]] = 5;
    sub_218967C1C(&v111, v110);
    goto LABEL_43;
  }

  *&v117 = *a1;
  *(&v117 + 1) = v23;
  *&v118 = v25;
  *(&v118 + 1) = v26;
  *&v119 = v28;
  *(&v119 + 1) = v27;
  *&v120 = v30;
  *(&v120 + 1) = v29;
  v121 = v31;
  if (v32 == 9)
  {
    __swift_project_boxed_opaque_existential_1((v108 + 16), *(v108 + 40));
    v40 = sub_219BE8164();
    (*(*(v40 - 8) + 16))(v9, a2, v40);
    *&v9[v7[5]] = v17;
    *&v9[v7[6]] = v20;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v108 + 16), *(v108 + 40));
    v71 = sub_219BE8164();
    (*(*(v71 - 8) + 16))(v9, a2, v71);
    *&v9[v7[5]] = 0;
    *&v9[v7[6]] = 0;
  }

  v9[v7[7]] = 5;
  v111 = v122;
  v112 = v123;
  v116 = v127;
  v115 = v126;
  v113 = v124;
  v114 = v125;
  sub_2189C3FDC(&v111, v110, sub_218799404);
  v41 = v107;
  sub_219459814(&v117, *&v9, v107);
  sub_2189C3F7C(v9, type metadata accessor for TitleViewLayoutOptions);
  sub_218749C1C();
  v43 = *(v42 + 48);
  v44 = v120;
  v45 = v109;
  *(v109 + 32) = v119;
  *(v45 + 48) = v44;
  *(v45 + 64) = v121;
  v46 = v118;
  *v45 = v117;
  *(v45 + 16) = v46;
  sub_2189D2D74(v41, v45 + v43, type metadata accessor for TitleViewLayoutAttributes);
  type metadata accessor for FollowingSectionLayoutDescriptor();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2189C1C44@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v13 = a2;
  v3 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FollowingLayoutModel();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v13 - v10);
  sub_218950928();
  sub_219BE6934();
  v20[3] = v17;
  v20[4] = v18;
  v21 = v19;
  v20[0] = v14;
  v20[1] = v15;
  v20[2] = v16;
  sub_218950B84();
  sub_219BE5FC4();
  sub_2189C1E74(v20, v5, a1, v11);
  sub_2189C3F04(v20);
  sub_2189C3F7C(v5, type metadata accessor for FollowingModel);
  sub_2189C3FDC(v11, v9, type metadata accessor for FollowingLayoutModel);
  sub_218748C68(&qword_280ECEC20, type metadata accessor for FollowingLayoutModel);
  sub_219BE75D4();
  return sub_2189C3F7C(v11, type metadata accessor for FollowingLayoutModel);
}

void sub_2189C1E74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v225 = a3;
  v226 = a4;
  sub_218748D40();
  *&v223 = v6;
  *&v222 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v222 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FollowingAudioModel();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v222 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FollowingPuzzleHubModel();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v222 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FollowingMySportsModel();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v222 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189C4044();
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v222 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &v21[*(v19 + 56)];
  v23 = *(a1 + 48);
  *(v21 + 2) = *(a1 + 32);
  *(v21 + 3) = v23;
  *(v21 + 4) = *(a1 + 64);
  v21[80] = *(a1 + 80);
  v24 = *(a1 + 16);
  v25 = a1;
  *v21 = *a1;
  *(v21 + 1) = v24;
  sub_2189C3FDC(a2, v22, type metadata accessor for FollowingModel);
  v26 = *(v21 + 3);
  v233[2] = *(v21 + 2);
  v233[3] = v26;
  v233[4] = *(v21 + 4);
  v234 = v21[80];
  v27 = *(v21 + 1);
  v233[0] = *v21;
  v233[1] = v27;
  type metadata accessor for FollowingModel();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v108 = v224;
      sub_2189C40AC(v25, v230);
      sub_2189C3F04(v233);
      v109 = *(v22 + 16);
      v228[0] = *v22;
      v228[1] = v109;
      v110 = *(v22 + 32);
      LOBYTE(v229) = v110;
      v222 = *(v22 + 16);
      v223 = v228[0];
      v111 = v225;
      v112 = sub_219BE8074();
      v113 = [v112 horizontalSizeClass];

      if (v113 != 1)
      {
        v178 = sub_2189CEAE4(v25, v111, &unk_282A21D80, 1);
        v179 = __swift_project_boxed_opaque_existential_1(v108 + 10, v108[13]);
        v232 = *(v228 + 8);
        v231 = *(&v228[1] + 1);
        v180 = *v179;
        sub_2189D2C04(&v232, v230);
        sub_2189C3FDC(&v231, v230, sub_2186E352C);
        sub_2189C4108(v228, v178, v180, v227);

        sub_2189D2CDC(&v232);
        sub_2189C3F7C(&v231, sub_2186E352C);
        memcpy(v230 + 7, v227, 0x1EAuLL);
        v181 = v226;
        v182 = v222;
        *v226 = v223;
        *(v181 + 1) = v182;
        *(v181 + 32) = v110;
        memcpy(v181 + 33, v230, 0x1F1uLL);
        type metadata accessor for FollowingLayoutModel();
        goto LABEL_94;
      }

      type metadata accessor for FollowingLayoutModel();
      swift_storeEnumTagMultiPayload();
      v230[0] = *(v228 + 8);
      sub_2189D2CDC(v230);
      *&v227[0] = *(&v228[1] + 1);
      sub_2189C3F7C(v227, sub_2186E352C);
      return;
    case 2u:
      v69 = v224;
      sub_2189C40AC(a1, v230);
      sub_2189C3F04(v233);
      v70 = v22;
      v71 = v11;
      sub_2189D2D74(v70, v11, type metadata accessor for FollowingAudioModel);
      v72 = v225;
      v73 = sub_219BE8074();
      v74 = [v73 horizontalSizeClass];

      if (v74 == 1)
      {
        v40 = type metadata accessor for FollowingAudioModel;
        v41 = v71;
        goto LABEL_11;
      }

      v165 = sub_2189CEAE4(a1, v72, MEMORY[0x277D84F90], 0);
      v166 = __swift_project_boxed_opaque_existential_1(v69 + 10, v69[13]);
      sub_2189CB7CC(v71, *&v165, *v166, type metadata accessor for FollowingAudioModel, type metadata accessor for FollowingAudioModel, 0x6565466F69647541, -5.98008217e197, type metadata accessor for FollowingAudioModel, v230, type metadata accessor for FollowingAudioModel, &off_282A41AE0);

      sub_21874A2A4(0, qword_280ED1550, type metadata accessor for FollowingAudioModel);
      v168 = *(v167 + 48);
      v169 = v226;
      sub_2189D2D74(v71, v226, type metadata accessor for FollowingAudioModel);
      memcpy(v169 + v168, v230, 0x1EAuLL);
      type metadata accessor for FollowingLayoutModel();
      goto LABEL_94;
    case 3u:
      sub_2189C40AC(a1, v230);
      sub_2189C3F04(v233);
      v85 = *v22;
      v86 = sub_2189CEAE4(a1, v225, MEMORY[0x277D84F90], 1);
      v87 = *__swift_project_boxed_opaque_existential_1(v224 + 10, v224[13]);

      sub_2189C5580(v88, v86, v87, v230);

      v89 = v226;
      *v226 = v85;
      memcpy(v89 + 1, v230, 0x1EAuLL);
      type metadata accessor for FollowingLayoutModel();
      goto LABEL_94;
    case 4u:
      sub_2189C40AC(a1, v230);
      sub_2189C3F04(v233);
      v62 = *(v22 + 16);
      v228[0] = *v22;
      v228[1] = v62;
      LOBYTE(v229) = *(v22 + 32);
      v63 = v229;
      v222 = *(v22 + 16);
      v223 = v228[0];
      v64 = sub_2189CEAE4(a1, v225, MEMORY[0x277D84F90], 0);
      v65 = __swift_project_boxed_opaque_existential_1(v224 + 10, v224[13]);
      v232 = *(v228 + 8);
      v231 = *(&v228[1] + 1);
      v66 = *v65;
      sub_2189D2C04(&v232, v227);
      sub_2189C3FDC(&v231, v227, sub_2186E352C);
      sub_2189C68B0(v228, v64, v66, v227);

      sub_2189D2CDC(&v232);
      sub_2189C3F7C(&v231, sub_2186E352C);
      memcpy(v230 + 7, v227, 0x1EAuLL);
      v67 = v226;
      v68 = v222;
      *v226 = v223;
      *(v67 + 1) = v68;
      *(v67 + 32) = v63;
      memcpy(v67 + 33, v230, 0x1F1uLL);
      type metadata accessor for FollowingLayoutModel();
      goto LABEL_94;
    case 5u:
      sub_2189C40AC(a1, v230);
      sub_2189C3F04(v233);
      v120 = *v22;
      v121 = *(v22 + 8);
      v122 = *(v22 + 16);
      v123 = *(v22 + 24);
      v124 = sub_2189CEAE4(v25, v225, MEMORY[0x277D84F90], 0);
      v125 = *__swift_project_boxed_opaque_existential_1(v224 + 10, v224[13]);
      v126 = v122;

      sub_2189D039C(v120, v121, v124, v125, v227);

      memcpy(v230 + 7, v227, 0x1EAuLL);
      v127 = v226;
      *v226 = v120;
      *(v127 + 1) = v121;
      *(v127 + 2) = v122;
      *(v127 + 24) = v123;
      memcpy(v127 + 25, v230, 0x1F1uLL);
      type metadata accessor for FollowingLayoutModel();
      goto LABEL_94;
    case 6u:
      v90 = *v22;
      if (v234 == 8)
      {
        sub_2189C40AC(a1, v230);
        v128 = sub_2191F6E58(0, 1, 1, MEMORY[0x277D84F90]);
        v130 = *(v128 + 2);
        v129 = *(v128 + 3);
        v131 = v224;
        if (v130 >= v129 >> 1)
        {
          v128 = sub_2191F6E58((v129 > 1), v130 + 1, 1, v128);
        }

        *(v128 + 2) = v130 + 1;
        v128[v130 + 32] = 6;
        v132 = v131[16];
        v133 = [v132 useFeedDifferentiationMode];
        v134 = v225;
        if (!v133 || [v132 useFeedDifferentiationMode] && (v135 = objc_msgSend(v131[17], sel_cachedSubscription), v136 = objc_msgSend(v135, sel_isSubscribed), v135, v136))
        {
          v138 = *(v128 + 2);
          v137 = *(v128 + 3);
          if (v138 >= v137 >> 1)
          {
            v128 = sub_2191F6E58((v137 > 1), v138 + 1, 1, v128);
          }

          *(v128 + 2) = v138 + 1;
          v128[v138 + 32] = 2;
        }

        v140 = *(v128 + 2);
        v139 = *(v128 + 3);
        if (v140 >= v139 >> 1)
        {
          v128 = sub_2191F6E58((v139 > 1), v140 + 1, 1, v128);
        }

        *(v128 + 2) = v140 + 1;
        v128[v140 + 32] = 0;
        v141 = sub_2189CEAE4(a1, v134, v128, 0);

        v142 = *__swift_project_boxed_opaque_existential_1(v131 + 10, v131[13]);

        sub_2189CCB7C(v143, v141, v142, v230);

        sub_2189C3F04(v233);
      }

      else
      {
        sub_2189C40AC(a1, v230);
        sub_2189C3F04(v233);
        v183 = sub_219BED0C4();
        v184 = v224;
        if (v183)
        {
          sub_2189D2C8C(0, &qword_280E8BB08, &type metadata for TagViewLayoutOptions.AccessoryOptions.Item, MEMORY[0x277D84560]);
          v185 = swift_allocObject();
          *(v185 + 16) = xmmword_219C09BA0;
          *(v185 + 32) = 5;
          v186 = v225;
          if (*(v90 + 16) <= 1u || *(v90 + 16) == 2)
          {
            v210 = sub_219BF78F4();

            if ((v210 & 1) == 0)
            {
              v212 = *(v185 + 16);
              v211 = *(v185 + 24);
              if (v212 >= v211 >> 1)
              {
                v185 = sub_2191F6E58((v211 > 1), v212 + 1, 1, v185);
              }

              *(v185 + 16) = v212 + 1;
              *(v185 + v212 + 32) = 6;
            }
          }

          else
          {
          }

          v213 = v184[16];
          if (![v213 useFeedDifferentiationMode] || objc_msgSend(v213, sel_useFeedDifferentiationMode) && (v214 = objc_msgSend(v184[17], sel_cachedSubscription), v215 = objc_msgSend(v214, sel_isSubscribed), v214, v215))
          {
            v217 = *(v185 + 16);
            v216 = *(v185 + 24);
            if (v217 >= v216 >> 1)
            {
              v185 = sub_2191F6E58((v216 > 1), v217 + 1, 1, v185);
            }

            *(v185 + 16) = v217 + 1;
            *(v185 + v217 + 32) = 2;
          }

          v218 = sub_2189CEAE4(a1, v186, v185, 1);

          v219 = *__swift_project_boxed_opaque_existential_1(v184 + 10, v184[13]);

          sub_2189CCB7C(v220, v218, v219, v230);
        }

        else
        {
          v193 = v225;
          v194 = sub_2189C3A84(v225, v90, v224);
          v195 = sub_2189CEAE4(a1, v193, v194, 1);

          v196 = *__swift_project_boxed_opaque_existential_1(v184 + 10, v184[13]);

          sub_2189CCB7C(v197, v195, v196, v230);
        }
      }

      goto LABEL_93;
    case 7u:
      v90 = *v22;
      if (v234 == 8)
      {
        sub_2189C40AC(a1, v230);
        v91 = sub_2191F6E58(0, 1, 1, MEMORY[0x277D84F90]);
        v93 = *(v91 + 2);
        v92 = *(v91 + 3);
        v94 = v224;
        if (v93 >= v92 >> 1)
        {
          v91 = sub_2191F6E58((v92 > 1), v93 + 1, 1, v91);
        }

        *(v91 + 2) = v93 + 1;
        v91[v93 + 32] = 6;
        v95 = v94[16];
        v96 = [v95 useFeedDifferentiationMode];
        v97 = v225;
        if (!v96 || [v95 useFeedDifferentiationMode] && (v98 = objc_msgSend(v94[17], sel_cachedSubscription), v99 = objc_msgSend(v98, sel_isSubscribed), v98, v99))
        {
          v101 = *(v91 + 2);
          v100 = *(v91 + 3);
          if (v101 >= v100 >> 1)
          {
            v91 = sub_2191F6E58((v100 > 1), v101 + 1, 1, v91);
          }

          *(v91 + 2) = v101 + 1;
          v91[v101 + 32] = 2;
        }

        v103 = *(v91 + 2);
        v102 = *(v91 + 3);
        if (v103 >= v102 >> 1)
        {
          v91 = sub_2191F6E58((v102 > 1), v103 + 1, 1, v91);
        }

        *(v91 + 2) = v103 + 1;
        v91[v103 + 32] = 0;
        v104 = [*(*(v90 + 24) + 16) asSports];
        if (v104)
        {
          swift_unknownObjectRelease();
        }

        v105 = sub_2189CEAE4(a1, v97, v91, v104 != 0);

        v106 = *__swift_project_boxed_opaque_existential_1(v94 + 10, v94[13]);

        sub_2189CCB7C(v107, v105, v106, v230);

        sub_2189C3F04(v233);
      }

      else
      {
        sub_2189C40AC(a1, v230);
        sub_2189C3F04(v233);
        v170 = sub_219BED0C4();
        v171 = v224;
        if (v170)
        {
          sub_2189D2C8C(0, &qword_280E8BB08, &type metadata for TagViewLayoutOptions.AccessoryOptions.Item, MEMORY[0x277D84560]);
          v172 = swift_allocObject();
          *(v172 + 16) = xmmword_219C09BA0;
          *(v172 + 32) = 5;
          v173 = v225;
          if (*(v90 + 16) <= 1u || *(v90 + 16) == 2)
          {
            v198 = sub_219BF78F4();

            if ((v198 & 1) == 0)
            {
              v200 = *(v172 + 16);
              v199 = *(v172 + 24);
              if (v200 >= v199 >> 1)
              {
                v172 = sub_2191F6E58((v199 > 1), v200 + 1, 1, v172);
              }

              *(v172 + 16) = v200 + 1;
              *(v172 + v200 + 32) = 6;
            }
          }

          else
          {
          }

          v201 = v171[16];
          if (![v201 useFeedDifferentiationMode] || objc_msgSend(v201, sel_useFeedDifferentiationMode) && (v202 = objc_msgSend(v171[17], sel_cachedSubscription), v203 = objc_msgSend(v202, sel_isSubscribed), v202, v203))
          {
            v205 = *(v172 + 16);
            v204 = *(v172 + 24);
            if (v205 >= v204 >> 1)
            {
              v172 = sub_2191F6E58((v204 > 1), v205 + 1, 1, v172);
            }

            *(v172 + 16) = v205 + 1;
            *(v172 + v205 + 32) = 2;
          }

          v206 = [*(*(v90 + 24) + 16) asSports];
          if (v206)
          {
            swift_unknownObjectRelease();
          }

          v207 = sub_2189CEAE4(a1, v173, v172, v206 != 0);

          v208 = *__swift_project_boxed_opaque_existential_1(v171 + 10, v171[13]);

          sub_2189CCB7C(v209, v207, v208, v230);
        }

        else
        {
          v187 = v225;
          v188 = sub_2189C3A84(v225, v90, v224);
          v189 = [*(*(v90 + 24) + 16) asSports];
          if (v189)
          {
            swift_unknownObjectRelease();
          }

          v190 = sub_2189CEAE4(a1, v187, v188, v189 != 0);

          v191 = *__swift_project_boxed_opaque_existential_1(v171 + 10, v171[13]);

          sub_2189CCB7C(v192, v190, v191, v230);
        }
      }

LABEL_93:

      v221 = v226;
      *v226 = v90;
      memcpy(v221 + 1, v230, 0x1EAuLL);
      type metadata accessor for FollowingLayoutModel();
      goto LABEL_94;
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
      sub_2189C40AC(a1, v230);
      sub_2189C3F04(v233);
      v148 = *v22;
      sub_219B7AF68(*v22, v230);
      v149 = v226;
      *v226 = v148;
      v150 = v230[0];
      *(v149 + 3) = v230[1];
      v151 = v230[3];
      *(v149 + 5) = v230[2];
      *(v149 + 7) = v151;
      *(v149 + 9) = v230[4];
      *(v149 + 1) = v150;
      type metadata accessor for FollowingLayoutModel();
      goto LABEL_94;
    case 0xBu:
      sub_2189C40AC(a1, v230);
      sub_2189C3F04(v233);
      v51 = *v22;
      sub_218748BF4();
      v53 = *(v222 + 32);
      v54 = v22 + *(v52 + 48);
      v55 = v223;
      v53(v8, v54, v223);
      sub_219B7AF68(v51, v230);
      sub_21874A384();
      v57 = *(v56 + 48);
      v58 = v226;
      v59 = v226 + *(v56 + 64);
      *v226 = v51;
      v53(v58 + v57, v8, v55);
      v60 = v230[3];
      *(v59 + 2) = v230[2];
      *(v59 + 3) = v60;
      *(v59 + 4) = v230[4];
      v61 = v230[1];
      *v59 = v230[0];
      *(v59 + 1) = v61;
      type metadata accessor for FollowingLayoutModel();
      goto LABEL_94;
    case 0xEu:
      v42 = a1;
      sub_2189C40AC(a1, v230);
      sub_2189C3F04(v233);
      v43 = *(v22 + 16);
      v228[0] = *v22;
      v228[1] = v43;
      v229 = *(v22 + 32);
      v44 = *(v22 + 32);
      v45 = *(v22 + 34);
      v46 = *(v22 + 35);
      v222 = *(v22 + 16);
      v223 = v228[0];
      v47 = sub_2189CEAE4(v42, v225, MEMORY[0x277D84F90], 0);
      v48 = *__swift_project_boxed_opaque_existential_1(v224 + 10, v224[13]);
      sub_2189CEED0(v228, v227);
      sub_2189C7D64(v228, v47, v48, v227);

      sub_2189CEF2C(v228);
      memcpy(v230 + 4, v227, 0x1EAuLL);
      v49 = v226;
      v50 = v222;
      *v226 = v223;
      *(v49 + 1) = v50;
      *(v49 + 34) = v45;
      *(v49 + 16) = v44;
      *(v49 + 35) = v46;
      memcpy(v49 + 36, v230, 0x1EEuLL);
      type metadata accessor for FollowingLayoutModel();
      goto LABEL_94;
    case 0xFu:
      sub_2189C40AC(a1, v230);
      sub_2189C3F04(v233);
      v75 = *v22;
      v76 = v224[15];
      sub_219BE8004();
      v78 = v77;
      sub_219099BF8(v75, v76);
      v80 = v79;
      sub_219099BF8(v75, v76);
      v81 = 0.0;
      if (v82 > 0.0)
      {
        sub_219099BF8(v75, v76);
        v81 = v83 + 16.0;
      }

      v84 = v226;
      *v226 = v75;
      v84[1] = v81;
      *(v84 + 1) = xmmword_219C10440;
      *(v84 + 4) = v78;
      *(v84 + 5) = v80;
      v84[6] = 0.0;
      v84[7] = 0.0;
      *(v84 + 8) = v78;
      v84[9] = v81;
      type metadata accessor for FollowingLayoutModel();
      goto LABEL_94;
    case 0x10u:
      v36 = v224;
      sub_2189C40AC(a1, v230);
      sub_2189C3F04(v233);
      sub_2189D2D74(v22, v17, type metadata accessor for FollowingMySportsModel);
      v37 = v225;
      v38 = sub_219BE8074();
      v39 = [v38 horizontalSizeClass];

      if (v39 == 1)
      {
        v40 = type metadata accessor for FollowingMySportsModel;
        v41 = v17;
LABEL_11:
        sub_2189C3F7C(v41, v40);
        type metadata accessor for FollowingLayoutModel();
      }

      else
      {
        v160 = sub_2189CEAE4(a1, v37, MEMORY[0x277D84F90], 0);
        v161 = __swift_project_boxed_opaque_existential_1(v36 + 10, v36[13]);
        sub_2189CB7CC(v17, *&v160, *v161, type metadata accessor for FollowingMySportsModel, type metadata accessor for FollowingMySportsModel, 0x7374726F7053796DLL, -9.12488124e192, type metadata accessor for FollowingMySportsModel, v230, type metadata accessor for FollowingMySportsModel, &off_282A53EA8);

        sub_21874A2A4(0, &qword_280EC85E0, type metadata accessor for FollowingMySportsModel);
        v163 = *(v162 + 48);
        v164 = v226;
        sub_2189D2D74(v17, v226, type metadata accessor for FollowingMySportsModel);
        memcpy(v164 + v163, v230, 0x1EAuLL);
        type metadata accessor for FollowingLayoutModel();
      }

      goto LABEL_94;
    case 0x11u:
      sub_2189C40AC(a1, v230);
      sub_2189C3F04(v233);
      sub_2189D2D74(v22, v14, type metadata accessor for FollowingPuzzleHubModel);
      v114 = sub_2189CEAE4(a1, v225, MEMORY[0x277D84F90], 0);
      v115 = __swift_project_boxed_opaque_existential_1(v224 + 10, v224[13]);
      sub_2189C9108(v14, *&v114, *v115, v230);

      sub_21874A2A4(0, &qword_280EC5118, type metadata accessor for FollowingPuzzleHubModel);
      v117 = *(v116 + 48);
      v118 = v14;
      v119 = v226;
      sub_2189D2D74(v118, v226, type metadata accessor for FollowingPuzzleHubModel);
      memcpy(v119 + v117, v230, 0x1EAuLL);
      type metadata accessor for FollowingLayoutModel();
      goto LABEL_94;
    case 0x12u:
      sub_2189C40AC(a1, v230);
      sub_2189C3F04(v233);
      v144 = *(v22 + 16);
      v227[0] = *v22;
      v227[1] = v144;
      v227[2] = *(v22 + 32);
      v145 = v227[2];
      *(&v227[2] + 14) = *(v22 + 46);
      v230[0] = v227[0];
      v230[1] = v144;
      v230[2] = v145;
      *(&v230[2] + 14) = *(&v227[2] + 14);
      v146 = sub_2189CEAE4(a1, v225, MEMORY[0x277D84F90], 0);
      v147 = *__swift_project_boxed_opaque_existential_1(v224 + 10, v224[13]);
      sub_2189CEE20(v227, v228);
      sub_2189CA498(v227, v146, v147, &v230[4]);

      sub_2189CEE7C(v227);
      memcpy(v226, v230, 0x22AuLL);
      type metadata accessor for FollowingLayoutModel();
      goto LABEL_94;
    case 0x13u:
      sub_2189C40AC(a1, v230);
      sub_2189C3F04(v233);
      v152 = *v22;
      v153 = *(v22 + 8);
      v154 = *(v22 + 16);
      v155 = *(v22 + 24);
      v156 = sub_2189CEAE4(v25, v225, MEMORY[0x277D84F90], 0);
      v157 = *__swift_project_boxed_opaque_existential_1(v224 + 10, v224[13]);
      v158 = v154;

      sub_2189D17C4(v152, v153, v156, v157, v227);

      memcpy(v230 + 7, v227, 0x1EAuLL);
      v159 = v226;
      *v226 = v152;
      *(v159 + 1) = v153;
      *(v159 + 2) = v154;
      *(v159 + 24) = v155;
      memcpy(v159 + 25, v230, 0x1F1uLL);
      type metadata accessor for FollowingLayoutModel();
      goto LABEL_94;
    default:
      v28 = v224;
      v29 = v25;
      sub_2189C40AC(v25, v230);
      sub_2189C3F04(v233);
      v31 = *v22;
      v30 = *(v22 + 8);
      v32 = *(v22 + 16);
      v33 = v225;
      v34 = sub_219BE8074();
      v35 = [v34 horizontalSizeClass];

      if (v35 == 1)
      {
        type metadata accessor for FollowingLayoutModel();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v174 = sub_2189CEAE4(v29, v33, MEMORY[0x277D84F90], 0);
        v175 = *__swift_project_boxed_opaque_existential_1(v28 + 10, v28[13]);
        v176 = v32;

        sub_2189CEF80(v31, v30, v174, v175, v230);

        v177 = v226;
        *v226 = v31;
        *(v177 + 1) = v30;
        *(v177 + 2) = v32;
        memcpy(v177 + 3, v230, 0x1EAuLL);
        type metadata accessor for FollowingLayoutModel();
LABEL_94:
        swift_storeEnumTagMultiPayload();
      }

      return;
  }
}

uint64_t sub_2189C3A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_219BED0C4() & 1) == 0)
  {
    v5 = sub_219BE8074();
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 5)
    {
      return MEMORY[0x277D84F90];
    }
  }

  sub_2189D2C8C(0, &qword_280E8BB08, &type metadata for TagViewLayoutOptions.AccessoryOptions.Item, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  *(v7 + 32) = 5;
  if (*(a2 + 16) > 2u)
  {
  }

  else
  {
    v8 = sub_219BF78F4();

    if ((v8 & 1) == 0)
    {
      v7 = sub_2191F6E58(1, 2, 1, v7);
      *(v7 + 16) = 2;
      *(v7 + 33) = 6;
    }
  }

  v9 = *(a3 + 128);
  if (![v9 useFeedDifferentiationMode] || objc_msgSend(v9, sel_useFeedDifferentiationMode) && (v10 = objc_msgSend(*(a3 + 136), sel_cachedSubscription), v11 = objc_msgSend(v10, sel_isSubscribed), v10, v11))
  {
    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    if (v13 >= v12 >> 1)
    {
      v7 = sub_2191F6E58((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 16) = v13 + 1;
    *(v7 + v13 + 32) = 2;
  }

  return v7;
}

uint64_t sub_2189C3C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_219BE8164();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x2822009F8](sub_2189C3D60, 0, 0);
}

uint64_t sub_2189C3D60()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[6] + 16))(v0[7], v2, v0[5]);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_2189443B0(sub_2189C3EE4, v3);

  type metadata accessor for FollowingSectionLayoutDescriptor();
  type metadata accessor for FollowingLayoutModel();
  sub_218748C68(&unk_280EA6930, type metadata accessor for FollowingSectionLayoutDescriptor);
  sub_218748C68(&qword_280ECEC20, type metadata accessor for FollowingLayoutModel);
  sub_219BE6514();

  v4 = v0[1];

  return v4();
}

uint64_t sub_2189C3F7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2189C3FDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2189C4044()
{
  if (!qword_280ED1470)
  {
    type metadata accessor for FollowingModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280ED1470);
    }
  }
}

double sub_2189C4108@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  v8 = *(a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_context);
  v9 = sub_219534AD0(v8);
  v10 = *(*__swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40)) + 24);
  v11 = [objc_opt_self() systemFontOfSize:13.0 weight:*MEMORY[0x277D74418]];
  v12 = [v10 scaledFontForFont_];

  v13 = sub_219BE8034();
  v14 = [v13 preferredContentSizeCategory];

  rect_16 = sub_219BF6924();
  *&__dst[0] = 0;
  *(&__dst[0] + 1) = 0xE000000000000000;
  sub_219BF7314();
  *(&__dst[31] + 8) = __dst[0];
  v15 = *(a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_width);
  v16 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v16);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  [v9 pointSize];
  v17 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v17);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v18 = v12;
  [v12 pointSize];
  v19 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v19);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  MEMORY[0x21CECC330](0xD000000000000010, 0x8000000219CDD430);
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v20 = a1[2];
  v242 = a1[1];
  if (v20)
  {
    v21 = 0x65736C6166;
  }

  else
  {
    v21 = 1702195828;
  }

  if (v20)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x21CECC330](v21, v22);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_219BF7484();

  sub_219BE2DD4();

  memcpy(__dst, __src, 0x1EAuLL);
  if (sub_2189D2D5C(__dst) != 1)
  {

    v27 = __dst[0];
    v28 = *(&__dst[1] + 1);
    rect_24 = *&__dst[1];
    v30 = *(&__dst[2] + 1);
    v29 = *&__dst[2];
    v32 = *(&__dst[3] + 1);
    v31 = *&__dst[3];
    v34 = *(&__dst[4] + 1);
    v33 = *&__dst[4];
    v36 = *(&__dst[5] + 1);
    v35 = *&__dst[5];
    v37 = *(&__dst[6] + 1);
    v38 = *&__dst[6];
    v39 = *(&__dst[7] + 1);
    v40 = *&__dst[7];
    v41 = *(&__dst[7] + 1);
    v43 = *(&__dst[8] + 1);
    v42 = *&__dst[8];
    v45 = *(&__dst[9] + 1);
    v44 = *&__dst[9];
    v46 = *(&__dst[10] + 1);
    v47 = *&__dst[10];
    v49 = *(&__dst[11] + 1);
    v48 = *&__dst[11];
    v51 = *(&__dst[12] + 1);
    v50 = *&__dst[12];
    v53 = *(&__dst[13] + 1);
    v52 = *&__dst[13];
    v54 = *(&__dst[14] + 1);
    rect_8 = *&__dst[14];
    v250 = __dst[15];
    v245 = *&__dst[16];
    v55 = *(&__dst[29] + 1);
    v56 = BYTE8(__dst[30]);
    v57 = BYTE9(__dst[30]);
    v237 = *(&__dst[16] + 1);
    v240 = *(&__dst[17] + 1);
    v232 = *&__dst[17];
    v228 = *(&__dst[18] + 1);
    v248 = *&__dst[18];
    v218 = *(&__dst[19] + 1);
    v243 = *&__dst[19];
    v234 = *(&__dst[20] + 1);
    v224 = *&__dst[20];
    v230 = *(&__dst[21] + 1);
    v214 = *&__dst[21];
    v226 = *(&__dst[22] + 1);
    v211 = *&__dst[22];
    v220 = *(&__dst[23] + 1);
    v209 = *&__dst[23];
    v216 = *(&__dst[24] + 1);
    v207 = *&__dst[24];
    rect_16a = *(&__dst[25] + 1);
    v205 = *&__dst[25];
    v203 = *(&__dst[26] + 1);
    v58 = *&__dst[26];
    v201 = *(&__dst[27] + 1);
    v59 = *&__dst[27];
    v197 = *(&__dst[28] + 1);
    v199 = *&__dst[28];
    v195 = *&__dst[29];
    v60 = *&__dst[30];
    goto LABEL_65;
  }

  v204 = v9;
  if (v8)
  {
    v239 = *(a2 + 56);
    v23 = 16.0;
    v24 = 6.0;
    v25 = 4.0;
    v26 = v9;
    if (rect_16)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v26 = v9;
  if ((rect_16 & 1) == 0)
  {
    v239 = *(a2 + 56);
    v23 = *(a2 + 48) - (v239 + v239);
    v24 = 10.0;
LABEL_15:
    v25 = 1.0;
    goto LABEL_16;
  }

  v23 = *(a2 + 48) + -24.0;
  v239 = 12.0;
  v25 = 4.0;
  v24 = 12.0;
LABEL_16:
  v235 = v25;
  v61 = 8.0;
  v62 = *(a2 + 40) + 8.0;
  rect = *(a2 + 24) + 8.0;
  v63 = sub_2189CE85C(a1, v26, &type metadata for FollowingMagazineModel, &off_282A81B18);
  v249 = v64;
  v65 = 0.0;
  if (v63 == 0.0)
  {
    v61 = 0.0;
  }

  v246 = sub_218C26730(a2);
  v55 = *(a2 + 72);
  sub_218E0FF40();
  v219 = v63;
  v231 = v66;
  v67 = v15 - (rect + v62) - v23 - v24 - v61 - v63 - v66;
  v68 = sub_218E1008C();
  v69 = *(v55 + 16);
  v70 = *(v69 + 16);
  if (v70)
  {
    v71 = (v69 + 32);
    do
    {
      v72 = *v71++;
      if (v72 == 8)
      {
        v65 = v65 + 35.0;
      }

      --v70;
    }

    while (v70);
  }

  v225 = v8;
  v229 = v67 - v68 - v65 - v246;
  rect_8a = v24 + v23 + rect;
  rect_24 = v15;
  v175 = v18;
  v251 = v67;
  if (!v20)
  {
    goto LABEL_39;
  }

  v73 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v73 = v242 & 0xFFFFFFFFFFFFLL;
  }

  if (v73 && (*(a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_allowSuggestedDescription) & 1) != 0)
  {
    [v18 lineHeight];
    v75 = v74;
    sub_21899E550();
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_219C09BA0;
    v77 = *MEMORY[0x277D740A8];
    *(v76 + 32) = *MEMORY[0x277D740A8];
    v78 = sub_2186C6148(0, &qword_280E8DB00);
    *(v76 + 64) = v78;
    *(v76 + 40) = v18;
    v221 = v77;
    v79 = v18;
    sub_2188195F4(v76);
    swift_setDeallocating();
    sub_2189C3F7C(v76 + 32, sub_218819588);
    swift_deallocClassInstance();
    v80 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v81 = sub_219BF53D4();
    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v82 = sub_219BF5204();

    v83 = [v80 initWithString:v81 attributes:v82];

    v84 = 0.1;
    v85 = 3;
    if ((rect_16 & 1) == 0)
    {
      v85 = 1;
    }

    v212 = v85;
    if ((rect_16 & 1) == 0)
    {
      v84 = 0.0;
    }

    v194 = v84;
    if (rect_16)
    {
      v86 = 3;
    }

    else
    {
      v86 = 2;
    }

    [v83 boundingRectWithSize:v86 options:0 context:{v67, v75 * v85}];
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v94 = v93;

    v261.origin.x = v88;
    v261.origin.y = v90;
    v261.size.width = v92;
    v261.size.height = v94;
    v227 = ceil(CGRectGetHeight(v261));
    [v9 lineHeight];
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v96 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_219C09BA0;
    *(v97 + 32) = v221;
    *(v97 + 64) = v78;
    *(v97 + 40) = v9;
    v98 = v9;
    sub_2188195F4(v97);
    swift_setDeallocating();
    v37 = v212;
    sub_2189C3F7C(v97 + 32, sub_218819588);
    swift_deallocClassInstance();
    v99 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v100 = sub_219BF53D4();

    v101 = sub_219BF5204();

    v102 = [v99 initWithString:v100 attributes:{v101, 0x8000000219CDD450}];

    sub_219BF6784();
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v110 = v109;

    v262.origin.x = v104;
    v262.origin.y = v106;
    v262.size.width = v108;
    v262.size.height = v110;
    v111 = ceil(CGRectGetHeight(v262));
    v112 = v227 + v235 + v111;
    if (*(a2 + 48) > v239 + v239 + v112)
    {
      v113 = *(a2 + 48);
    }

    else
    {
      v113 = v239 + v239 + v112;
    }

    v114 = v62;
    v263.origin.x = rect_8a;
    v263.origin.y = v113 * 0.5 - v112 * 0.5;
    y = v263.origin.y;
    v263.size.width = v67;
    v263.size.height = v111;
    v238 = v235 + CGRectGetMaxY(v263);
    v264.origin.x = rect_8a;
    v241 = y;
    v264.origin.y = y;
    v62 = v114;
    v15 = rect_24;
    v264.size.width = v67;
    v264.size.height = v111;
    MaxY = CGRectGetMaxY(v264);
    v244 = rect_8a;
    v117 = v113;
    v215 = v235 + MaxY;
    v202 = v229;
    v193 = v194;
    v222 = v212;
    v233 = v67;
  }

  else
  {
LABEL_39:
    v118 = 0.1;
    v194 = 0.0;
    if ((rect_16 & 1) == 0)
    {
      v118 = 0.0;
    }

    v193 = v118;
    v119 = 2;
    if (rect_16)
    {
      v119 = 3;
    }

    v222 = v119;
    type metadata accessor for Localized();
    v120 = swift_getObjCClassFromMetadata();
    v121 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_21899E550();
    v122 = swift_allocObject();
    *(v122 + 16) = xmmword_219C09BA0;
    v123 = *MEMORY[0x277D740A8];
    *(v122 + 32) = *MEMORY[0x277D740A8];
    *(v122 + 64) = sub_2186C6148(0, &qword_280E8DB00);
    *(v122 + 40) = v9;
    v124 = v123;
    v125 = v9;
    sub_2188195F4(v122);
    swift_setDeallocating();
    sub_2189C3F7C(v122 + 32, sub_218819588);
    swift_deallocClassInstance();
    v126 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v127 = sub_219BF53D4();

    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v128 = sub_219BF5204();

    v129 = [v126 initWithString:v127 attributes:{v128, 0x8000000219CDD450}];

    sub_219BF67A4();
    v131 = v130;

    v37 = 0;
    v111 = ceil(v131);
    if (*(a2 + 48) > v239 + v239 + v111)
    {
      v117 = *(a2 + 48);
    }

    else
    {
      v117 = v239 + v239 + v111;
    }

    v241 = (v117 - v111) * 0.5;
    v244 = 0.0;
    v215 = 0.0;
    v202 = 0.0;
    v227 = 0.0;
    v238 = 0.0;
    v233 = 0.0;
  }

  v236 = v117;
  v132 = ceil((v117 - v23) * 0.5);
  v265.origin.x = rect;
  v265.origin.y = v132;
  v265.size.width = v23;
  v265.size.height = v23;
  MinX = CGRectGetMinX(v265);
  v133 = v15 - v62;
  v134 = v15 - v62 - v231;
  v135 = -sub_218E1008C() - v246;
  v136 = 0.0;
  v266.origin.y = 0.0;
  v217 = v134;
  v266.origin.x = v134;
  v266.size.width = v231;
  v266.size.height = v236;
  v267 = CGRectOffset(v266, v135, 0.0);
  v210 = v267.origin.y;
  x = v267.origin.x;
  height = v267.size.height;
  width = v267.size.width;
  v137 = *(v55 + 16);
  v138 = *(v137 + 16);
  if (v138)
  {
    v139 = (v137 + 32);
    v140 = 0.0;
    v57 = v225;
    v38 = v222;
    do
    {
      v141 = *v139++;
      if (v141 == 8)
      {
        v136 = v140 + 35.0;
        v140 = v140 + 35.0;
      }

      --v138;
    }

    while (v138);
  }

  else
  {
    v57 = v225;
    v38 = v222;
  }

  v268.size.width = v67;
  v142 = 0.0;
  v268.origin.x = rect_8a;
  v268.origin.y = v241;
  v268.size.height = v111;
  v269 = CGRectOffset(v268, v136, 0.0);
  v223 = v269.origin.x;
  v198 = v269.size.width;
  v200 = v269.origin.y;
  v196 = v269.size.height;
  v143 = *(v55 + 16);
  v144 = *(v143 + 16);
  v145 = 0.0;
  if (v144)
  {
    v146 = (v143 + 32);
    v147 = 0.0;
    do
    {
      v148 = *v146++;
      if (v148 == 8)
      {
        v145 = v147 + 35.0;
        v147 = v147 + 35.0;
      }

      --v144;
    }

    while (v144);
  }

  v247 = MinX + -12.0;
  v270.origin.y = v238;
  v174 = ceil(v236);
  v270.origin.x = v244;
  v270.size.width = v233;
  v270.size.height = v227;
  v271 = CGRectOffset(v270, v145, 0.0);
  v168 = v271.origin.x;
  v169 = v271.size.height;
  v170 = v271.size.width;
  v172 = v271.origin.y;
  v149 = *(v55 + 16);
  v150 = *(v149 + 16);
  if (v150)
  {
    v151 = (v149 + 32);
    v142 = 0.0;
    v152 = 0.0;
    do
    {
      v153 = *v151++;
      if (v153 == 8)
      {
        v142 = v152 + 35.0;
        v152 = v152 + 35.0;
      }

      --v150;
    }

    while (v150);
  }

  v272.origin.x = rect;
  v272.origin.y = v132;
  v272.size.width = v23;
  v272.size.height = v23;
  v273 = CGRectOffset(v272, v142, 0.0);
  v166 = v273.origin.y;
  v167 = v273.origin.x;
  v164 = v273.size.height;
  v165 = v273.size.width;
  v273.origin.x = rect_8a;
  v273.origin.y = v241;
  v273.size.width = v251;
  v273.size.height = v111;
  v274 = CGRectIntegral(v273);
  v188 = v274.origin.x;
  v189 = v274.size.height;
  v190 = v274.size.width;
  v192 = v274.origin.y;
  v274.origin.x = rect_8a;
  v274.origin.y = v241;
  v274.size.width = v229;
  v274.size.height = v111;
  v275 = CGRectIntegral(v274);
  v181 = v275.origin.x;
  v154 = v275.origin.y;
  v160 = v275.origin.y;
  v186 = v275.size.height;
  v187 = v275.size.width;
  v275.origin.x = v244;
  v275.origin.y = v238;
  v275.size.width = v233;
  v275.size.height = v227;
  v276 = CGRectIntegral(v275);
  v183 = v276.origin.x;
  v184 = v276.size.width;
  v185 = v276.origin.y;
  v179 = v276.size.height;
  v276.origin.x = v244;
  v276.origin.y = v215;
  v276.size.width = v202;
  v276.size.height = v227;
  v277 = CGRectIntegral(v276);
  v182 = v277.origin.x;
  v178 = v277.origin.y;
  v155 = v277.size.width;
  v156 = v277.size.height;
  v277.origin.x = rect;
  v277.origin.y = v132;
  v277.size.width = v23;
  v277.size.height = v23;
  v278 = CGRectIntegral(v277);
  v162 = v278.origin.y;
  v163 = v278.origin.x;
  v161 = v278.size.width;
  v180 = v278.size.height;
  v278.origin.x = rect;
  v278.origin.y = v132;
  v278.size.width = v23;
  v278.size.height = v23;
  v177 = CGRectGetMinX(v278) + -1.0;
  v279.origin.x = rect;
  v279.origin.y = v132;
  v279.size.width = v23;
  v279.size.height = v23;
  rect_8 = CGRectGetMinY(v279) + -1.0;
  v280.origin.x = rect;
  v280.origin.y = v132;
  v280.size.width = v23;
  v280.size.height = v23;
  v176 = CGRectGetWidth(v280) + 2.0;
  v281.origin.x = rect;
  v281.origin.y = v132;
  v281.size.width = v23;
  v281.size.height = v23;
  *&v250 = CGRectGetHeight(v281) + 2.0;
  v282.size.width = 8.0;
  v282.size.height = 8.0;
  v282.origin.x = v247;
  v282.origin.y = (v23 + -8.0) * 0.5 + v132;
  v283 = CGRectIntegral(v282);
  *(&v250 + 1) = *&v283.origin.x;
  v245 = v283.origin.y;
  v237 = v283.size.width;
  v232 = v283.size.height;
  v283.origin.x = v133 - v219;
  v283.origin.y = (v236 - v249) * 0.5;
  v283.size.width = v219;
  v283.size.height = v249;
  v284 = CGRectIntegral(v283);
  v240 = v284.origin.x;
  v243 = v284.size.height;
  v248 = v284.origin.y;
  v228 = v284.size.width;
  v284.origin.y = 0.0;
  v284.origin.x = v217;
  v284.size.width = v231;
  v284.size.height = v236;
  v285 = CGRectIntegral(v284);
  v218 = v285.origin.x;
  v224 = v285.origin.y;
  v234 = v285.size.width;
  v214 = v285.size.height;
  v285.origin.y = v210;
  v285.origin.x = x;
  v285.size.height = height;
  v285.size.width = width;
  v286 = CGRectIntegral(v285);
  v230 = v286.origin.x;
  v209 = v286.size.height;
  v211 = v286.origin.y;
  v226 = v286.size.width;
  v286.origin.x = v223;
  v286.size.width = v198;
  v286.origin.y = v200;
  v286.size.height = v196;
  v287 = CGRectIntegral(v286);
  v220 = v287.origin.x;
  v205 = v287.size.height;
  v207 = v287.origin.y;
  v216 = v287.size.width;
  v287.origin.x = v168;
  v287.size.height = v169;
  v287.size.width = v170;
  v287.origin.y = v172;
  v288 = CGRectIntegral(v287);
  v157 = v288.origin.x;
  v171 = v288.size.height;
  v173 = v288.origin.y;
  v158 = v288.size.width;
  v288.origin.y = v166;
  v288.origin.x = v167;
  v288.size.height = v164;
  v288.size.width = v165;
  v289 = CGRectIntegral(v288);
  v56 = rect_16 & 1;
  __src[0] = 0uLL;
  *&__src[1] = rect_24;
  *(&__src[1] + 1) = v174;
  *&__src[2] = v188;
  *(&__src[2] + 1) = v192;
  *&__src[3] = v190;
  *(&__src[3] + 1) = v189;
  *&__src[4] = v181;
  *(&__src[4] + 1) = v154;
  *&__src[5] = v187;
  *(&__src[5] + 1) = v186;
  *&__src[6] = v38;
  *(&__src[6] + 1) = v37;
  *&__src[7] = __PAIR64__(LODWORD(v194), LODWORD(v193));
  *(&__src[7] + 1) = v183;
  *&__src[8] = v185;
  *(&__src[8] + 1) = v184;
  *&__src[9] = v179;
  *(&__src[9] + 1) = v182;
  *&__src[10] = v178;
  v46 = v155;
  *(&__src[10] + 1) = v155;
  v48 = v156;
  *&__src[11] = v156;
  v49 = v163;
  *(&__src[11] + 1) = v163;
  *&__src[12] = v162;
  *(&__src[12] + 1) = v161;
  *&__src[13] = v180;
  *(&__src[13] + 1) = v177;
  *&__src[14] = rect_8;
  *(&__src[14] + 1) = v176;
  __src[15] = v250;
  *&__src[16] = v245;
  *(&__src[16] + 1) = v237;
  *&__src[17] = v232;
  *(&__src[17] + 1) = v240;
  *&__src[18] = v248;
  *(&__src[18] + 1) = v228;
  *&__src[19] = v243;
  *(&__src[19] + 1) = v218;
  *&__src[20] = v224;
  *(&__src[20] + 1) = v234;
  *&__src[21] = v214;
  *(&__src[21] + 1) = v230;
  *&__src[22] = v211;
  *(&__src[22] + 1) = v226;
  *&__src[23] = v209;
  *(&__src[23] + 1) = v220;
  *&__src[24] = v207;
  *(&__src[24] + 1) = v216;
  *&__src[25] = v205;
  rect_16a = v157;
  *(&__src[25] + 1) = v157;
  v58 = v173;
  *&__src[26] = v173;
  v201 = v289.origin.x;
  v203 = v158;
  *(&__src[26] + 1) = v158;
  v59 = v171;
  *&__src[27] = v171;
  *(&__src[27] + 1) = *&v289.origin.x;
  v197 = v289.size.width;
  v199 = v289.origin.y;
  *&__src[28] = v289.origin.y;
  *(&__src[28] + 1) = *&v289.size.width;
  v195 = v289.size.height;
  *&__src[29] = v289.size.height;
  *(&__src[29] + 1) = v55;
  *&__src[30] = v174;
  BYTE8(__src[30]) = v56;
  BYTE9(__src[30]) = v57;
  nullsub_1(__src);
  memcpy(v258, __src, sizeof(v258));
  swift_retain_n();

  sub_219BE2DE4();

  v51 = v161;
  v50 = v162;
  v47 = v178;
  v44 = v179;
  v45 = v182;
  v41 = v183;
  v43 = v184;
  v42 = v185;
  v36 = v186;
  v35 = v187;
  v34 = v160;
  v32 = v189;
  v31 = v190;
  v30 = v192;
  v29 = v188;
  v28 = v174;
  v52 = v180;
  v33 = v181;
  v40 = v193;
  v54 = v176;
  v53 = v177;
  v39 = v194;
  v27 = 0uLL;
  v60 = v174;
LABEL_65:
  *a4 = v27;
  *(a4 + 16) = rect_24;
  *(a4 + 24) = v28;
  *(a4 + 32) = v29;
  *(a4 + 40) = v30;
  *(a4 + 48) = v31;
  *(a4 + 56) = v32;
  *(a4 + 64) = v33;
  *(a4 + 72) = v34;
  *(a4 + 80) = v35;
  *(a4 + 88) = v36;
  *(a4 + 112) = v40;
  *(a4 + 116) = v39;
  *(a4 + 120) = v41;
  *(a4 + 128) = v42;
  *(a4 + 136) = v43;
  *(a4 + 144) = v44;
  *(a4 + 152) = v45;
  *(a4 + 160) = v47;
  *(a4 + 168) = v46;
  *(a4 + 176) = v48;
  *(a4 + 184) = v49;
  *(a4 + 192) = v50;
  *(a4 + 200) = v51;
  *(a4 + 208) = v52;
  *(a4 + 216) = v53;
  *(a4 + 224) = rect_8;
  *(a4 + 96) = v38;
  *(a4 + 104) = v37;
  *(a4 + 232) = v54;
  *(a4 + 240) = v250;
  *(a4 + 256) = v245;
  *(a4 + 264) = v237;
  *(a4 + 272) = v232;
  *(a4 + 280) = v240;
  *(a4 + 288) = v248;
  *(a4 + 296) = v228;
  *(a4 + 304) = v243;
  *(a4 + 312) = v218;
  *(a4 + 320) = v224;
  *(a4 + 328) = v234;
  *(a4 + 336) = v214;
  *(a4 + 344) = v230;
  *(a4 + 352) = v211;
  *(a4 + 360) = v226;
  *(a4 + 368) = v209;
  *(a4 + 376) = v220;
  *(a4 + 384) = v207;
  *(a4 + 392) = v216;
  *(a4 + 400) = v205;
  *(a4 + 408) = rect_16a;
  *(a4 + 416) = v58;
  *(a4 + 424) = v203;
  *(a4 + 432) = v59;
  *(a4 + 440) = v201;
  *(a4 + 448) = v199;
  result = v195;
  *(a4 + 456) = v197;
  *(a4 + 464) = v195;
  *(a4 + 472) = v55;
  *(a4 + 480) = v60;
  *(a4 + 488) = v56;
  *(a4 + 489) = v57;
  return result;
}

double sub_2189C5580@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  v8 = *(a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_context);
  v9 = sub_219534AD0(v8);
  v10 = *(*__swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40)) + 24);
  v11 = [objc_opt_self() systemFontOfSize:13.0 weight:*MEMORY[0x277D74418]];
  v12 = [v10 scaledFontForFont_];

  v13 = sub_219BE8034();
  v14 = [v13 preferredContentSizeCategory];

  v251 = sub_219BF6924();
  *&__dst[0] = 0;
  *(&__dst[0] + 1) = 0xE000000000000000;
  sub_219BF7314();
  *(&__dst[31] + 8) = __dst[0];
  v15 = *(a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_width);
  v16 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v16);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  [v9 pointSize];
  v17 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v17);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v18 = v12;
  [v12 pointSize];
  v19 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v19);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v20 = *(a1 + 16);
  v21 = v20[2];
  v22 = v20[3];

  MEMORY[0x21CECC330](v21, v22);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  if (v20[7])
  {
    v23 = 0x65736C6166;
  }

  else
  {
    v23 = 1702195828;
  }

  if (v20[7])
  {
    v24 = 0xE500000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  MEMORY[0x21CECC330](v23, v24);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_219BF7484();

  sub_219BE2DD4();

  memcpy(__dst, __src, 0x1EAuLL);
  if (sub_2189D2D5C(__dst) != 1)
  {

    v29 = __dst[0];
    v30 = *(&__dst[1] + 1);
    v253 = *&__dst[1];
    v32 = *(&__dst[2] + 1);
    v31 = *&__dst[2];
    v34 = *(&__dst[3] + 1);
    v33 = *&__dst[3];
    v36 = *(&__dst[4] + 1);
    v35 = *&__dst[4];
    v38 = *(&__dst[5] + 1);
    v37 = *&__dst[5];
    v40 = *(&__dst[6] + 1);
    v39 = *&__dst[6];
    v41 = DWORD1(__dst[7]);
    v42 = __dst[7];
    v43 = *(&__dst[7] + 1);
    v45 = *(&__dst[8] + 1);
    v44 = *&__dst[8];
    v47 = *(&__dst[9] + 1);
    v46 = *&__dst[9];
    v49 = *(&__dst[10] + 1);
    v48 = *&__dst[10];
    v50 = *(&__dst[11] + 1);
    v51 = *&__dst[11];
    v53 = *(&__dst[12] + 1);
    v52 = *&__dst[12];
    v55 = *(&__dst[13] + 1);
    v54 = *&__dst[13];
    v56 = *(&__dst[14] + 1);
    rect_24 = *&__dst[14];
    rect_16 = *(&__dst[15] + 1);
    rect = *&__dst[15];
    v237 = *&__dst[16];
    v57 = *(&__dst[29] + 1);
    v58 = BYTE8(__dst[30]);
    v59 = BYTE9(__dst[30]);
    v233 = *(&__dst[16] + 1);
    rect_8 = *(&__dst[17] + 1);
    v229 = *&__dst[17];
    v240 = *(&__dst[18] + 1);
    v225 = *&__dst[18];
    v235 = *(&__dst[19] + 1);
    v219 = *&__dst[19];
    v231 = *(&__dst[20] + 1);
    v213 = *&__dst[20];
    v227 = *(&__dst[21] + 1);
    v209 = *&__dst[21];
    v222 = *(&__dst[22] + 1);
    v206 = *&__dst[22];
    v216 = *(&__dst[23] + 1);
    v203 = *&__dst[23];
    v211 = *(&__dst[24] + 1);
    v201 = *&__dst[24];
    v252 = *(&__dst[25] + 1);
    v199 = *&__dst[25];
    v197 = *(&__dst[26] + 1);
    v60 = *&__dst[26];
    v195 = *(&__dst[27] + 1);
    v61 = *&__dst[27];
    v190 = *(&__dst[28] + 1);
    v193 = *&__dst[28];
    v188 = *&__dst[29];
    v62 = *&__dst[30];
    goto LABEL_65;
  }

  if (v8)
  {
    v25 = *(a2 + 56);
    v26 = 16.0;
    v27 = 6.0;
    v28 = 4.0;
    if (v251)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((v251 & 1) == 0)
  {
    v25 = *(a2 + 56);
    v26 = *(a2 + 48) - (v25 + v25);
    v27 = 10.0;
LABEL_15:
    v28 = 1.0;
    goto LABEL_16;
  }

  v26 = *(a2 + 48) + -24.0;
  v25 = 12.0;
  v28 = 4.0;
  v27 = 12.0;
LABEL_16:
  v63 = *(a2 + 24) + 8.0;
  v223 = *(a2 + 40) + 8.0;
  v64 = sub_218C26730(a2);
  v57 = *(a2 + 72);
  sub_218E0FF40();
  v236 = v65;
  v66 = v15 - (v63 + v223) - v26 - v27 - v65;
  v67 = sub_218E1008C();
  v68 = *(v57 + 16);
  v69 = *(v68 + 16);
  rect_16a = v9;
  if (v69)
  {
    v70 = (v68 + 32);
    v71 = 0.0;
    do
    {
      v72 = *v70++;
      if (v72 == 8)
      {
        v71 = v71 + 35.0;
      }

      --v69;
    }

    while (v69);
  }

  else
  {
    v71 = 0.0;
  }

  v253 = v15;
  v228 = v8;
  v232 = v66 - v67 - v71 - v64;
  rect_24a = v27 + v26 + v63;
  v73 = v20[7];
  v170 = v18;
  rect_8a = v66;
  if (!v73)
  {
    goto LABEL_39;
  }

  v74 = HIBYTE(v73) & 0xF;
  if ((v73 & 0x2000000000000000) == 0)
  {
    v74 = v20[6] & 0xFFFFFFFFFFFFLL;
  }

  if (v74 && (*(a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_allowSuggestedDescription) & 1) != 0)
  {

    [v18 lineHeight];
    v76 = v75;
    sub_21899E550();
    v77 = v18;
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_219C09BA0;
    v79 = *MEMORY[0x277D740A8];
    *(v78 + 32) = *MEMORY[0x277D740A8];
    v238 = sub_2186C6148(0, &qword_280E8DB00);
    *(v78 + 64) = v238;
    *(v78 + 40) = v77;
    v220 = v79;
    v80 = v77;
    sub_2188195F4(v78);
    swift_setDeallocating();
    sub_2189C3F7C(v78 + 32, sub_218819588);
    swift_deallocClassInstance();
    v81 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v82 = sub_219BF53D4();

    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v83 = sub_219BF5204();

    v84 = [v81 initWithString:v82 attributes:v83];

    v85 = 0.1;
    v86 = 3;
    if ((v251 & 1) == 0)
    {
      v86 = 1;
    }

    v204 = v86;
    v214 = v28;
    if ((v251 & 1) == 0)
    {
      v85 = 0.0;
    }

    *(&v186 + 1) = v85;
    if (v251)
    {
      v87 = 3;
    }

    else
    {
      v87 = 2;
    }

    [v84 boundingRectWithSize:v87 options:0 context:{v66, v76 * v86}];
    v89 = v88;
    v217 = v64;
    v90 = v66;
    v92 = v91;
    v94 = v93;
    v207 = v25;
    v96 = v95;

    v257.origin.x = v89;
    v257.origin.y = v92;
    v257.size.width = v94;
    v257.size.height = v96;
    v230 = ceil(CGRectGetHeight(v257));
    [rect_16a lineHeight];
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_219C09BA0;
    *(v97 + 32) = v220;
    *(v97 + 64) = v238;
    *(v97 + 40) = rect_16a;
    v98 = rect_16a;

    sub_2188195F4(v97);
    swift_setDeallocating();
    v40 = v204;
    sub_2189C3F7C(v97 + 32, sub_218819588);
    swift_deallocClassInstance();
    v99 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v100 = sub_219BF53D4();

    v101 = sub_219BF5204();

    v102 = [v99 initWithString:v100 attributes:v101];

    sub_219BF6784();
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v110 = v109;

    v258.origin.x = v104;
    v258.origin.y = v106;
    v258.size.width = v108;
    v258.size.height = v110;
    v111 = ceil(CGRectGetHeight(v258));
    v112 = v230 + v28 + v111;
    if (*(a2 + 48) > v207 + v207 + v112)
    {
      v113 = *(a2 + 48);
    }

    else
    {
      v113 = v207 + v207 + v112;
    }

    v221 = v113 * 0.5;
    v259.origin.x = rect_24a;
    v259.origin.y = v113 * 0.5 - v112 * 0.5;
    y = v259.origin.y;
    v259.size.width = v90;
    v259.size.height = v111;
    v239 = v214 + CGRectGetMaxY(v259);
    v241 = y;
    v260.origin.x = rect_24a;
    v260.origin.y = y;
    v260.size.width = v90;
    v260.size.height = v111;
    recta = rect_24a;
    v210 = v214 + CGRectGetMaxY(v260);
    v202 = v232;
    LODWORD(v186) = HIDWORD(v186);
    v169 = v204;
    v234 = v90;
    v64 = v217;
  }

  else
  {
LABEL_39:
    v115 = 0.1;
    if ((v251 & 1) == 0)
    {
      v115 = 0.0;
    }

    v186 = LODWORD(v115);
    v116 = 2;
    if (v251)
    {
      v116 = 3;
    }

    v169 = v116;
    sub_21899E550();
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_219C09BA0;
    v118 = *MEMORY[0x277D740A8];
    *(v117 + 32) = *MEMORY[0x277D740A8];
    *(v117 + 64) = sub_2186C6148(0, &qword_280E8DB00);
    *(v117 + 40) = v9;

    v119 = v118;
    v120 = v9;
    sub_2188195F4(v117);
    swift_setDeallocating();
    sub_2189C3F7C(v117 + 32, sub_218819588);
    swift_deallocClassInstance();
    v121 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v122 = sub_219BF53D4();

    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v123 = sub_219BF5204();

    v124 = [v121 initWithString:v122 attributes:v123];

    sub_219BF67A4();
    v126 = v125;

    v40 = 0;
    v111 = ceil(v126);
    if (*(a2 + 48) > v25 + v25 + v111)
    {
      v113 = *(a2 + 48);
    }

    else
    {
      v113 = v25 + v25 + v111;
    }

    v221 = v113 * 0.5;
    recta = 0.0;
    v210 = 0.0;
    v202 = 0.0;
    v230 = 0.0;
    v239 = 0.0;
    v241 = (v113 - v111) * 0.5;
    v234 = 0.0;
  }

  v127 = ceil((v113 - v26) * 0.5);
  v226 = v63;
  v261.origin.x = v63;
  v261.origin.y = v127;
  v261.size.width = v26;
  v261.size.height = v26;
  MinX = CGRectGetMinX(v261);
  v215 = v253 - v223;
  v128 = -sub_218E1008C() - v64;
  v129 = 0.0;
  v262.origin.y = 0.0;
  v224 = v253 - v223 - v236;
  v262.origin.x = v224;
  v262.size.width = v236;
  v262.size.height = v113;
  v263 = CGRectOffset(v262, v128, 0.0);
  x = v263.origin.x;
  v212 = v263.origin.y;
  height = v263.size.height;
  width = v263.size.width;
  v130 = *(v57 + 16);
  v131 = *(v130 + 16);
  if (v131)
  {
    v132 = (v130 + 32);
    v133 = 0.0;
    v59 = v228;
    v134 = rect_16a;
    do
    {
      v135 = *v132++;
      if (v135 == 8)
      {
        v129 = v133 + 35.0;
        v133 = v133 + 35.0;
      }

      --v131;
    }

    while (v131);
  }

  else
  {
    v59 = v228;
    v134 = rect_16a;
  }

  v136 = 0.0;
  v264.origin.x = rect_24a;
  v264.origin.y = v241;
  v264.size.width = rect_8a;
  v264.size.height = v111;
  v265 = CGRectOffset(v264, v129, 0.0);
  v198 = v265.origin.y;
  v200 = v265.origin.x;
  v194 = v265.size.height;
  v196 = v265.size.width;
  v137 = *(v57 + 16);
  v138 = *(v137 + 16);
  v139 = 0.0;
  if (v138)
  {
    v140 = (v137 + 32);
    v141 = 0.0;
    do
    {
      v142 = *v140++;
      if (v142 == 8)
      {
        v139 = v141 + 35.0;
        v141 = v141 + 35.0;
      }

      --v138;
    }

    while (v138);
  }

  rect_16b = MinX + -12.0;
  v187 = ceil(v113);
  v266.origin.x = recta;
  v266.origin.y = v239;
  v266.size.width = v234;
  v266.size.height = v230;
  v267 = CGRectOffset(v266, v139, 0.0);
  v189 = v267.origin.y;
  v192 = v267.origin.x;
  v165 = v267.size.height;
  v167 = v267.size.width;
  v143 = *(v57 + 16);
  v144 = *(v143 + 16);
  if (v144)
  {
    v145 = (v143 + 32);
    v136 = 0.0;
    v146 = 0.0;
    do
    {
      v147 = *v145++;
      if (v147 == 8)
      {
        v136 = v146 + 35.0;
        v146 = v146 + 35.0;
      }

      --v144;
    }

    while (v144);
  }

  v268.origin.x = v63;
  v268.origin.y = v127;
  v268.size.width = v26;
  v268.size.height = v26;
  v269 = CGRectOffset(v268, v136, 0.0);
  v163 = v269.origin.y;
  v164 = v269.origin.x;
  v161 = v269.size.height;
  v162 = v269.size.width;
  v269.origin.x = rect_24a;
  v269.origin.y = v241;
  v269.size.width = rect_8a;
  v269.size.height = v111;
  v270 = CGRectIntegral(v269);
  v184 = v270.origin.y;
  v185 = v270.origin.x;
  v182 = v270.size.height;
  v183 = v270.size.width;
  v270.origin.x = rect_24a;
  v270.origin.y = v241;
  v270.size.width = v232;
  v270.size.height = v111;
  v271 = CGRectIntegral(v270);
  v148 = v271.origin.x;
  v156 = v271.origin.x;
  v180 = v271.size.width;
  v181 = v271.origin.y;
  v179 = v271.size.height;
  v271.origin.x = recta;
  v271.origin.y = v239;
  v271.size.width = v234;
  v271.size.height = v230;
  v272 = CGRectIntegral(v271);
  v176 = v272.origin.x;
  v177 = v272.size.width;
  v178 = v272.origin.y;
  v173 = v272.size.height;
  v272.origin.x = recta;
  v272.origin.y = v210;
  v272.size.width = v202;
  v272.size.height = v230;
  v273 = CGRectIntegral(v272);
  v175 = v273.origin.x;
  v149 = v273.origin.y;
  v150 = v273.size.width;
  v160 = v273.size.height;
  v273.origin.x = v226;
  v273.origin.y = v127;
  v273.size.width = v26;
  v273.size.height = v26;
  v274 = CGRectIntegral(v273);
  v158 = v274.origin.y;
  v159 = v274.origin.x;
  v157 = v274.size.width;
  v174 = v274.size.height;
  v274.origin.x = v226;
  v274.origin.y = v127;
  v274.size.width = v26;
  v274.size.height = v26;
  v172 = CGRectGetMinX(v274) + -1.0;
  v275.origin.x = v226;
  v275.origin.y = v127;
  v275.size.width = v26;
  v275.size.height = v26;
  rect_24 = CGRectGetMinY(v275) + -1.0;
  v276.origin.x = v226;
  v276.origin.y = v127;
  v276.size.width = v26;
  v276.size.height = v26;
  v171 = CGRectGetWidth(v276) + 2.0;
  v277.origin.x = v226;
  v277.origin.y = v127;
  v277.size.width = v26;
  v277.size.height = v26;
  rect = CGRectGetHeight(v277) + 2.0;
  v278.size.width = 8.0;
  v278.size.height = 8.0;
  v278.origin.x = rect_16b;
  v278.origin.y = (v26 + -8.0) * 0.5 + v127;
  v279 = CGRectIntegral(v278);
  rect_16 = v279.origin.x;
  v237 = v279.origin.y;
  v233 = v279.size.width;
  v229 = v279.size.height;
  v279.size.width = 0.0;
  v279.size.height = 0.0;
  v279.origin.x = v215;
  v279.origin.y = v221;
  v280 = CGRectIntegral(v279);
  rect_8 = v280.origin.x;
  v225 = v280.origin.y;
  v240 = v280.size.width;
  v219 = v280.size.height;
  v280.origin.y = 0.0;
  v280.origin.x = v224;
  v280.size.width = v236;
  v280.size.height = v113;
  v281 = CGRectIntegral(v280);
  v235 = v281.origin.x;
  v213 = v281.origin.y;
  v231 = v281.size.width;
  v209 = v281.size.height;
  v281.origin.x = x;
  v281.origin.y = v212;
  v281.size.height = height;
  v281.size.width = width;
  v282 = CGRectIntegral(v281);
  v227 = v282.origin.x;
  v203 = v282.size.height;
  v206 = v282.origin.y;
  v222 = v282.size.width;
  v282.origin.y = v198;
  v282.origin.x = v200;
  v282.size.height = v194;
  v282.size.width = v196;
  v283 = CGRectIntegral(v282);
  v216 = v283.origin.x;
  v199 = v283.size.height;
  v201 = v283.origin.y;
  v211 = v283.size.width;
  v283.origin.y = v189;
  v283.origin.x = v192;
  v283.size.height = v165;
  v283.size.width = v167;
  v284 = CGRectIntegral(v283);
  v151 = v284.origin.x;
  v166 = v284.size.height;
  v168 = v284.origin.y;
  v152 = v284.size.width;
  v284.origin.y = v163;
  v284.origin.x = v164;
  v284.size.height = v161;
  v284.size.width = v162;
  v285 = CGRectIntegral(v284);
  v58 = v251 & 1;
  __src[1] = 0;
  __src[0] = 0;
  *&__src[2] = v253;
  *&__src[3] = v187;
  *&__src[4] = v185;
  *&__src[5] = v184;
  *&__src[6] = v183;
  *&__src[7] = v182;
  *&__src[8] = v148;
  *&__src[9] = v181;
  *&__src[10] = v180;
  *&__src[11] = v179;
  v39 = v169;
  __src[12] = v169;
  __src[13] = v40;
  __src[14] = v186;
  *&__src[15] = v176;
  *&__src[16] = v178;
  *&__src[17] = v177;
  *&__src[18] = v173;
  *&__src[19] = v175;
  v153 = v149;
  *&__src[20] = v149;
  v154 = v150;
  *&__src[21] = v150;
  v50 = v159;
  *&__src[22] = v160;
  *&__src[23] = v159;
  v53 = v157;
  v52 = v158;
  *&__src[24] = v158;
  *&__src[25] = v157;
  *&__src[26] = v174;
  *&__src[27] = v172;
  *&__src[28] = rect_24;
  *&__src[29] = v171;
  *&__src[30] = rect;
  *&__src[31] = rect_16;
  *&__src[32] = v237;
  *&__src[33] = v233;
  *&__src[34] = v229;
  *&__src[35] = rect_8;
  *&__src[36] = v225;
  *&__src[37] = v240;
  *&__src[38] = v219;
  *&__src[39] = v235;
  *&__src[40] = v213;
  *&__src[41] = v231;
  *&__src[42] = v209;
  *&__src[43] = v227;
  *&__src[44] = v206;
  *&__src[45] = v222;
  *&__src[46] = v203;
  *&__src[47] = v216;
  *&__src[48] = v201;
  *&__src[49] = v211;
  *&__src[50] = v199;
  v252 = v151;
  *&__src[51] = v151;
  v60 = v168;
  *&__src[52] = v168;
  v195 = v285.origin.x;
  v197 = v152;
  *&__src[53] = v152;
  v61 = v166;
  *&__src[54] = v166;
  *&__src[55] = v285;
  v190 = v285.size.width;
  v193 = v285.origin.y;
  v188 = v285.size.height;
  __src[59] = v57;
  *&__src[60] = v187;
  LOBYTE(__src[61]) = v58;
  BYTE1(__src[61]) = v59;
  nullsub_1(__src);
  memcpy(v254, __src, sizeof(v254));
  swift_retain_n();

  sub_219BE2DE4();

  v51 = v160;
  v49 = v154;
  v48 = v153;
  v47 = v175;
  v43 = v176;
  v46 = v173;
  v54 = v174;
  v45 = v177;
  v44 = v178;
  v38 = v179;
  v37 = v180;
  v36 = v181;
  v34 = v182;
  v35 = v156;
  v33 = v183;
  v32 = v184;
  v31 = v185;
  v41 = HIDWORD(v186);
  v42 = v186;
  v56 = v171;
  v55 = v172;
  v30 = v187;
  v29 = 0uLL;
  v62 = v187;
LABEL_65:
  *a4 = v29;
  *(a4 + 16) = v253;
  *(a4 + 24) = v30;
  *(a4 + 32) = v31;
  *(a4 + 40) = v32;
  *(a4 + 48) = v33;
  *(a4 + 56) = v34;
  *(a4 + 64) = v35;
  *(a4 + 72) = v36;
  *(a4 + 80) = v37;
  *(a4 + 88) = v38;
  *(a4 + 112) = v42;
  *(a4 + 116) = v41;
  *(a4 + 120) = v43;
  *(a4 + 128) = v44;
  *(a4 + 136) = v45;
  *(a4 + 144) = v46;
  *(a4 + 152) = v47;
  *(a4 + 160) = v48;
  *(a4 + 168) = v49;
  *(a4 + 176) = v51;
  *(a4 + 184) = v50;
  *(a4 + 192) = v52;
  *(a4 + 200) = v53;
  *(a4 + 208) = v54;
  *(a4 + 216) = v55;
  *(a4 + 224) = rect_24;
  *(a4 + 96) = v39;
  *(a4 + 104) = v40;
  *(a4 + 232) = v56;
  *(a4 + 240) = rect;
  *(a4 + 248) = rect_16;
  *(a4 + 256) = v237;
  *(a4 + 264) = v233;
  *(a4 + 272) = v229;
  *(a4 + 280) = rect_8;
  *(a4 + 288) = v225;
  *(a4 + 296) = v240;
  *(a4 + 304) = v219;
  *(a4 + 312) = v235;
  *(a4 + 320) = v213;
  *(a4 + 328) = v231;
  *(a4 + 336) = v209;
  *(a4 + 344) = v227;
  *(a4 + 352) = v206;
  *(a4 + 360) = v222;
  *(a4 + 368) = v203;
  *(a4 + 376) = v216;
  *(a4 + 384) = v201;
  *(a4 + 392) = v211;
  *(a4 + 400) = v199;
  *(a4 + 408) = v252;
  *(a4 + 416) = v60;
  *(a4 + 424) = v197;
  *(a4 + 432) = v61;
  *(a4 + 440) = v195;
  *(a4 + 448) = v193;
  result = v188;
  *(a4 + 456) = v190;
  *(a4 + 464) = v188;
  *(a4 + 472) = v57;
  *(a4 + 480) = v62;
  *(a4 + 488) = v58;
  *(a4 + 489) = v59;
  return result;
}

double sub_2189C68B0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  v8 = *(a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_context);
  v9 = sub_219534AD0(v8);
  v10 = *(*__swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40)) + 24);
  v11 = [objc_opt_self() systemFontOfSize:13.0 weight:*MEMORY[0x277D74418]];
  v12 = [v10 scaledFontForFont_];

  v13 = sub_219BE8034();
  v14 = [v13 preferredContentSizeCategory];

  rect_16 = sub_219BF6924();
  *&__dst[0] = 0;
  *(&__dst[0] + 1) = 0xE000000000000000;
  sub_219BF7314();
  *(&__dst[31] + 8) = __dst[0];
  v15 = a2;
  v16 = *(a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_width);
  v17 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v17);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  [v9 pointSize];
  v18 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v18);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v19 = v12;
  [v12 pointSize];
  v20 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v20);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  MEMORY[0x21CECC330](0x6565466465766153, 0xE900000000000064);
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v21 = a1[2];
  v246 = a1[1];
  if (v21)
  {
    v22 = 0x65736C6166;
  }

  else
  {
    v22 = 1702195828;
  }

  if (v21)
  {
    v23 = 0xE500000000000000;
  }

  else
  {
    v23 = 0xE400000000000000;
  }

  MEMORY[0x21CECC330](v22, v23);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_219BF7484();

  sub_219BE2DD4();

  memcpy(__dst, __src, 0x1EAuLL);
  if (sub_2189D2D5C(__dst) != 1)
  {

    v29 = __dst[0];
    v30 = *(&__dst[1] + 1);
    rect_24 = *&__dst[1];
    v32 = *(&__dst[2] + 1);
    v31 = *&__dst[2];
    v34 = *(&__dst[3] + 1);
    v33 = *&__dst[3];
    v36 = *(&__dst[4] + 1);
    v35 = *&__dst[4];
    v38 = *(&__dst[5] + 1);
    v37 = *&__dst[5];
    v40 = *(&__dst[6] + 1);
    v39 = *&__dst[6];
    v41 = DWORD1(__dst[7]);
    v42 = __dst[7];
    v43 = *(&__dst[7] + 1);
    v45 = *(&__dst[8] + 1);
    v44 = *&__dst[8];
    v47 = *(&__dst[9] + 1);
    v46 = *&__dst[9];
    v48 = *(&__dst[10] + 1);
    v49 = *&__dst[10];
    v51 = *(&__dst[11] + 1);
    v50 = *&__dst[11];
    v53 = *(&__dst[12] + 1);
    v52 = *&__dst[12];
    v55 = *(&__dst[13] + 1);
    v54 = *&__dst[13];
    v56 = *(&__dst[14] + 1);
    rect_8 = *&__dst[14];
    v254 = __dst[15];
    v249 = *&__dst[16];
    v57 = *(&__dst[29] + 1);
    v58 = BYTE8(__dst[30]);
    v59 = BYTE9(__dst[30]);
    v240 = *(&__dst[16] + 1);
    v244 = *(&__dst[17] + 1);
    v235 = *&__dst[17];
    v231 = *(&__dst[18] + 1);
    v252 = *&__dst[18];
    v223 = *(&__dst[19] + 1);
    v247 = *&__dst[19];
    v237 = *(&__dst[20] + 1);
    v227 = *&__dst[20];
    v233 = *(&__dst[21] + 1);
    v217 = *&__dst[21];
    v229 = *(&__dst[22] + 1);
    v215 = *&__dst[22];
    v225 = *(&__dst[23] + 1);
    v213 = *&__dst[23];
    v220 = *(&__dst[24] + 1);
    v210 = *&__dst[24];
    rect_16a = *(&__dst[25] + 1);
    v208 = *&__dst[25];
    v205 = *(&__dst[26] + 1);
    v60 = *&__dst[26];
    v203 = *(&__dst[27] + 1);
    v61 = *&__dst[27];
    v199 = *(&__dst[28] + 1);
    v201 = *&__dst[28];
    v196 = *&__dst[29];
    v62 = *&__dst[30];
    goto LABEL_65;
  }

  v207 = v9;
  if (v8)
  {
    v24 = v15;
    v243 = *(v15 + 56);
    v25 = 16.0;
    v26 = 6.0;
    v27 = 4.0;
    v28 = v207;
    if (rect_16)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v28 = v9;
  v24 = v15;
  if ((rect_16 & 1) == 0)
  {
    v243 = *(v15 + 56);
    v25 = *(v15 + 48) - (v243 + v243);
    v26 = 10.0;
LABEL_15:
    v27 = 1.0;
    goto LABEL_16;
  }

  v25 = *(v15 + 48) + -24.0;
  v243 = 12.0;
  v27 = 4.0;
  v26 = 12.0;
LABEL_16:
  v238 = v27;
  v63 = 8.0;
  v64 = *(v24 + 40) + 8.0;
  rect = *(v24 + 24) + 8.0;
  v65 = sub_2189CE85C(a1, v28, &type metadata for FollowingSavedModel, &off_282A95760);
  v253 = v66;
  v67 = 0.0;
  if (v65 == 0.0)
  {
    v63 = 0.0;
  }

  v250 = sub_218C26730(v24);
  v57 = *(v24 + 72);
  sub_218E0FF40();
  v226 = v65;
  v234 = v68;
  v69 = v16 - (rect + v64) - v25 - v26 - v63 - v65 - v68;
  v70 = sub_218E1008C();
  v71 = *(v57 + 16);
  v72 = *(v71 + 16);
  if (v72)
  {
    v73 = (v71 + 32);
    do
    {
      v74 = *v73++;
      if (v74 == 8)
      {
        v67 = v67 + 35.0;
      }

      --v72;
    }

    while (v72);
  }

  v228 = v8;
  v232 = v69 - v70 - v67 - v250;
  rect_8a = v26 + v25 + rect;
  rect_24 = v16;
  v178 = v19;
  v255 = v69;
  if (!v21)
  {
    goto LABEL_39;
  }

  v75 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v75 = v246 & 0xFFFFFFFFFFFFLL;
  }

  if (v75 && (*(v24 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_allowSuggestedDescription) & 1) != 0)
  {
    [v19 lineHeight];
    v77 = v76;
    sub_21899E550();
    v241 = v24;
    v78 = v19;
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_219C09BA0;
    v80 = *MEMORY[0x277D740A8];
    *(v79 + 32) = *MEMORY[0x277D740A8];
    v221 = sub_2186C6148(0, &qword_280E8DB00);
    *(v79 + 64) = v221;
    *(v79 + 40) = v78;
    v218 = v80;
    v81 = v78;
    sub_2188195F4(v79);
    swift_setDeallocating();
    sub_2189C3F7C(v79 + 32, sub_218819588);
    swift_deallocClassInstance();
    v82 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v83 = sub_219BF53D4();
    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v84 = sub_219BF5204();

    v85 = [v82 initWithString:v83 attributes:v84];

    v86 = 0.1;
    v87 = 3;
    if ((rect_16 & 1) == 0)
    {
      v87 = 1;
    }

    v211 = v87;
    if ((rect_16 & 1) == 0)
    {
      v86 = 0.0;
    }

    *(&v195 + 1) = v86;
    if (rect_16)
    {
      v88 = 3;
    }

    else
    {
      v88 = 2;
    }

    [v85 boundingRectWithSize:v88 options:0 context:{v69, v77 * v87}];
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v96 = v95;

    v265.origin.x = v90;
    v265.origin.y = v92;
    v265.size.width = v94;
    v265.size.height = v96;
    v230 = ceil(CGRectGetHeight(v265));
    [v207 lineHeight];
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v98 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_219C09BA0;
    *(v99 + 32) = v218;
    *(v99 + 64) = v221;
    *(v99 + 40) = v207;
    v100 = v207;
    sub_2188195F4(v99);
    swift_setDeallocating();
    v40 = v211;
    sub_2189C3F7C(v99 + 32, sub_218819588);
    swift_deallocClassInstance();
    v101 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v102 = sub_219BF53D4();

    v103 = sub_219BF5204();

    v104 = [v101 initWithString:v102 attributes:{v103, 0x8000000219CDD480}];

    sub_219BF6784();
    v106 = v105;
    v108 = v107;
    v110 = v109;
    v112 = v111;

    v266.origin.x = v106;
    v266.origin.y = v108;
    v266.size.width = v110;
    v266.size.height = v112;
    v113 = ceil(CGRectGetHeight(v266));
    v114 = v230 + v238 + v113;
    if (*(v241 + 48) > v243 + v243 + v114)
    {
      v115 = *(v241 + 48);
    }

    else
    {
      v115 = v243 + v243 + v114;
    }

    v116 = v64;
    v267.origin.x = rect_8a;
    v267.origin.y = v115 * 0.5 - v114 * 0.5;
    y = v267.origin.y;
    v267.size.width = v69;
    v267.size.height = v113;
    v242 = v238 + CGRectGetMaxY(v267);
    v245 = y;
    v268.origin.x = rect_8a;
    v268.origin.y = y;
    v64 = v116;
    v16 = rect_24;
    v268.size.width = v69;
    v268.size.height = v113;
    MaxY = CGRectGetMaxY(v268);
    v248 = rect_8a;
    v119 = v115;
    v219 = v238 + MaxY;
    v209 = v232;
    LODWORD(v195) = HIDWORD(v195);
    v177 = v211;
    v236 = v69;
  }

  else
  {
LABEL_39:
    v120 = 0.1;
    HIDWORD(v195) = 0;
    if ((rect_16 & 1) == 0)
    {
      v120 = 0.0;
    }

    *&v195 = v120;
    v121 = 2;
    if (rect_16)
    {
      v121 = 3;
    }

    v177 = v121;
    type metadata accessor for Localized();
    v122 = swift_getObjCClassFromMetadata();
    v123 = v24;
    v124 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_21899E550();
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_219C09BA0;
    v126 = *MEMORY[0x277D740A8];
    *(v125 + 32) = *MEMORY[0x277D740A8];
    *(v125 + 64) = sub_2186C6148(0, &qword_280E8DB00);
    *(v125 + 40) = v207;
    v127 = v126;
    v128 = v207;
    sub_2188195F4(v125);
    swift_setDeallocating();
    sub_2189C3F7C(v125 + 32, sub_218819588);
    swift_deallocClassInstance();
    v129 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v130 = sub_219BF53D4();

    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v131 = sub_219BF5204();

    v132 = [v129 initWithString:v130 attributes:{v131, 0x8000000219CDD480}];

    sub_219BF67A4();
    v134 = v133;

    v40 = 0;
    v113 = ceil(v134);
    if (*(v123 + 48) > v243 + v243 + v113)
    {
      v119 = *(v123 + 48);
    }

    else
    {
      v119 = v243 + v243 + v113;
    }

    v245 = (v119 - v113) * 0.5;
    v248 = 0.0;
    v219 = 0.0;
    v209 = 0.0;
    v230 = 0.0;
    v242 = 0.0;
    v236 = 0.0;
  }

  v239 = v119;
  v135 = ceil((v119 - v25) * 0.5);
  v269.origin.x = rect;
  v269.origin.y = v135;
  v269.size.width = v25;
  v269.size.height = v25;
  MinX = CGRectGetMinX(v269);
  v136 = v16 - v64;
  v137 = v16 - v64 - v234;
  v138 = -sub_218E1008C() - v250;
  v139 = 0.0;
  v270.origin.y = 0.0;
  v224 = v137;
  v270.origin.x = v137;
  v270.size.width = v234;
  v270.size.height = v239;
  v271 = CGRectOffset(v270, v138, 0.0);
  x = v271.origin.x;
  width = v271.size.width;
  v216 = v271.origin.y;
  height = v271.size.height;
  v140 = *(v57 + 16);
  v141 = *(v140 + 16);
  if (v141)
  {
    v142 = (v140 + 32);
    v143 = 0.0;
    v59 = v228;
    do
    {
      v144 = *v142++;
      if (v144 == 8)
      {
        v139 = v143 + 35.0;
        v143 = v143 + 35.0;
      }

      --v141;
    }

    while (v141);
  }

  else
  {
    v59 = v228;
  }

  v272.size.width = v69;
  v145 = 0.0;
  v272.origin.x = rect_8a;
  v272.origin.y = v245;
  v272.size.height = v113;
  v273 = CGRectOffset(v272, v139, 0.0);
  v204 = v273.origin.y;
  v206 = v273.origin.x;
  v200 = v273.size.height;
  v202 = v273.size.width;
  v146 = *(v57 + 16);
  v147 = *(v146 + 16);
  v148 = 0.0;
  if (v147)
  {
    v149 = (v146 + 32);
    v150 = 0.0;
    do
    {
      v151 = *v149++;
      if (v151 == 8)
      {
        v148 = v150 + 35.0;
        v150 = v150 + 35.0;
      }

      --v147;
    }

    while (v147);
  }

  v251 = MinX + -12.0;
  v274.origin.y = v242;
  v176 = ceil(v239);
  v274.origin.x = v248;
  v274.size.width = v236;
  v274.size.height = v230;
  v275 = CGRectOffset(v274, v148, 0.0);
  v171 = v275.origin.x;
  v172 = v275.size.height;
  v198 = v275.origin.y;
  v174 = v275.size.width;
  v152 = *(v57 + 16);
  v153 = *(v152 + 16);
  if (v153)
  {
    v154 = (v152 + 32);
    v145 = 0.0;
    v155 = 0.0;
    do
    {
      v156 = *v154++;
      if (v156 == 8)
      {
        v145 = v155 + 35.0;
        v155 = v155 + 35.0;
      }

      --v153;
    }

    while (v153);
  }

  v276.origin.x = rect;
  v276.origin.y = v135;
  v276.size.width = v25;
  v276.size.height = v25;
  v277 = CGRectOffset(v276, v145, 0.0);
  v169 = v277.origin.y;
  v170 = v277.origin.x;
  v167 = v277.size.height;
  v168 = v277.size.width;
  v277.origin.x = rect_8a;
  v277.origin.y = v245;
  v277.size.width = v255;
  v277.size.height = v113;
  v278 = CGRectIntegral(v277);
  v191 = v278.origin.x;
  v192 = v278.size.height;
  v193 = v278.size.width;
  v194 = v278.origin.y;
  v278.origin.x = rect_8a;
  v278.origin.y = v245;
  v278.size.width = v232;
  v278.size.height = v113;
  v279 = CGRectIntegral(v278);
  v184 = v279.origin.x;
  v157 = v279.origin.y;
  v163 = v279.origin.y;
  v189 = v279.size.height;
  v190 = v279.size.width;
  v279.origin.x = v248;
  v279.origin.y = v242;
  v279.size.width = v236;
  v279.size.height = v230;
  v280 = CGRectIntegral(v279);
  v186 = v280.origin.x;
  v187 = v280.size.width;
  v188 = v280.origin.y;
  v182 = v280.size.height;
  v280.origin.x = v248;
  v280.origin.y = v219;
  v280.size.width = v209;
  v280.size.height = v230;
  v281 = CGRectIntegral(v280);
  v185 = v281.origin.x;
  v181 = v281.origin.y;
  v158 = v281.size.width;
  v159 = v281.size.height;
  v281.origin.x = rect;
  v281.origin.y = v135;
  v281.size.width = v25;
  v281.size.height = v25;
  v282 = CGRectIntegral(v281);
  v165 = v282.origin.y;
  v166 = v282.origin.x;
  v164 = v282.size.width;
  v183 = v282.size.height;
  v282.origin.x = rect;
  v282.origin.y = v135;
  v282.size.width = v25;
  v282.size.height = v25;
  v180 = CGRectGetMinX(v282) + -1.0;
  v283.origin.x = rect;
  v283.origin.y = v135;
  v283.size.width = v25;
  v283.size.height = v25;
  rect_8 = CGRectGetMinY(v283) + -1.0;
  v284.origin.x = rect;
  v284.origin.y = v135;
  v284.size.width = v25;
  v284.size.height = v25;
  v179 = CGRectGetWidth(v284) + 2.0;
  v285.origin.x = rect;
  v285.origin.y = v135;
  v285.size.width = v25;
  v285.size.height = v25;
  *&v254 = CGRectGetHeight(v285) + 2.0;
  v286.size.width = 8.0;
  v286.size.height = 8.0;
  v286.origin.x = v251;
  v286.origin.y = (v25 + -8.0) * 0.5 + v135;
  v287 = CGRectIntegral(v286);
  *(&v254 + 1) = *&v287.origin.x;
  v249 = v287.origin.y;
  v240 = v287.size.width;
  v235 = v287.size.height;
  v287.origin.x = v136 - v226;
  v287.origin.y = (v239 - v253) * 0.5;
  v287.size.width = v226;
  v287.size.height = v253;
  v288 = CGRectIntegral(v287);
  v244 = v288.origin.x;
  v247 = v288.size.height;
  v252 = v288.origin.y;
  v231 = v288.size.width;
  v288.origin.y = 0.0;
  v288.origin.x = v224;
  v288.size.width = v234;
  v288.size.height = v239;
  v289 = CGRectIntegral(v288);
  v223 = v289.origin.x;
  v227 = v289.origin.y;
  v237 = v289.size.width;
  v217 = v289.size.height;
  v289.origin.x = x;
  v289.size.width = width;
  v289.origin.y = v216;
  v289.size.height = height;
  v290 = CGRectIntegral(v289);
  v233 = v290.origin.x;
  v213 = v290.size.height;
  v215 = v290.origin.y;
  v229 = v290.size.width;
  v290.origin.y = v204;
  v290.origin.x = v206;
  v290.size.height = v200;
  v290.size.width = v202;
  v291 = CGRectIntegral(v290);
  v225 = v291.origin.x;
  v208 = v291.size.height;
  v210 = v291.origin.y;
  v220 = v291.size.width;
  v291.origin.x = v171;
  v291.size.height = v172;
  v291.origin.y = v198;
  v291.size.width = v174;
  v292 = CGRectIntegral(v291);
  v160 = v292.origin.x;
  v173 = v292.size.height;
  v175 = v292.origin.y;
  v161 = v292.size.width;
  v292.origin.y = v169;
  v292.origin.x = v170;
  v292.size.height = v167;
  v292.size.width = v168;
  v293 = CGRectIntegral(v292);
  v58 = rect_16 & 1;
  __src[0] = 0uLL;
  *&__src[1] = rect_24;
  *(&__src[1] + 1) = v176;
  *&__src[2] = v191;
  *(&__src[2] + 1) = v194;
  *&__src[3] = v193;
  *(&__src[3] + 1) = v192;
  *&__src[4] = v184;
  *(&__src[4] + 1) = v157;
  *&__src[5] = v190;
  *(&__src[5] + 1) = v189;
  v39 = v177;
  *&__src[6] = v177;
  *(&__src[6] + 1) = v40;
  *&__src[7] = v195;
  *(&__src[7] + 1) = v186;
  *&__src[8] = v188;
  *(&__src[8] + 1) = v187;
  *&__src[9] = v182;
  *(&__src[9] + 1) = v185;
  *&__src[10] = v181;
  v48 = v158;
  *(&__src[10] + 1) = v158;
  v50 = v159;
  *&__src[11] = v159;
  v51 = v166;
  *(&__src[11] + 1) = v166;
  *&__src[12] = v165;
  *(&__src[12] + 1) = v164;
  *&__src[13] = v183;
  *(&__src[13] + 1) = v180;
  *&__src[14] = rect_8;
  *(&__src[14] + 1) = v179;
  __src[15] = v254;
  *&__src[16] = v249;
  *(&__src[16] + 1) = v240;
  *&__src[17] = v235;
  *(&__src[17] + 1) = v244;
  *&__src[18] = v252;
  *(&__src[18] + 1) = v231;
  *&__src[19] = v247;
  *(&__src[19] + 1) = v223;
  *&__src[20] = v227;
  *(&__src[20] + 1) = v237;
  *&__src[21] = v217;
  *(&__src[21] + 1) = v233;
  *&__src[22] = v215;
  *(&__src[22] + 1) = v229;
  *&__src[23] = v213;
  *(&__src[23] + 1) = v225;
  *&__src[24] = v210;
  *(&__src[24] + 1) = v220;
  *&__src[25] = v208;
  rect_16a = v160;
  *(&__src[25] + 1) = v160;
  v60 = v175;
  *&__src[26] = v175;
  v203 = v293.origin.x;
  v205 = v161;
  *(&__src[26] + 1) = v161;
  v61 = v173;
  *&__src[27] = v173;
  *(&__src[27] + 1) = *&v293.origin.x;
  v199 = v293.size.width;
  v201 = v293.origin.y;
  *&__src[28] = v293.origin.y;
  *(&__src[28] + 1) = *&v293.size.width;
  v196 = v293.size.height;
  *&__src[29] = v293.size.height;
  *(&__src[29] + 1) = v57;
  *&__src[30] = v176;
  BYTE8(__src[30]) = v58;
  BYTE9(__src[30]) = v59;
  nullsub_1(__src);
  memcpy(v262, __src, sizeof(v262));
  swift_retain_n();

  sub_219BE2DE4();

  v53 = v164;
  v52 = v165;
  v49 = v181;
  v46 = v182;
  v47 = v185;
  v43 = v186;
  v45 = v187;
  v44 = v188;
  v38 = v189;
  v37 = v190;
  v36 = v163;
  v34 = v192;
  v33 = v193;
  v32 = v194;
  v31 = v191;
  v30 = v176;
  v54 = v183;
  v35 = v184;
  v42 = v195;
  v56 = v179;
  v55 = v180;
  v41 = HIDWORD(v195);
  v29 = 0uLL;
  v62 = v176;
LABEL_65:
  *a4 = v29;
  *(a4 + 16) = rect_24;
  *(a4 + 24) = v30;
  *(a4 + 32) = v31;
  *(a4 + 40) = v32;
  *(a4 + 48) = v33;
  *(a4 + 56) = v34;
  *(a4 + 64) = v35;
  *(a4 + 72) = v36;
  *(a4 + 80) = v37;
  *(a4 + 88) = v38;
  *(a4 + 112) = v42;
  *(a4 + 116) = v41;
  *(a4 + 120) = v43;
  *(a4 + 128) = v44;
  *(a4 + 136) = v45;
  *(a4 + 144) = v46;
  *(a4 + 152) = v47;
  *(a4 + 160) = v49;
  *(a4 + 168) = v48;
  *(a4 + 176) = v50;
  *(a4 + 184) = v51;
  *(a4 + 192) = v52;
  *(a4 + 200) = v53;
  *(a4 + 208) = v54;
  *(a4 + 216) = v55;
  *(a4 + 224) = rect_8;
  *(a4 + 96) = v39;
  *(a4 + 104) = v40;
  *(a4 + 232) = v56;
  *(a4 + 240) = v254;
  *(a4 + 256) = v249;
  *(a4 + 264) = v240;
  *(a4 + 272) = v235;
  *(a4 + 280) = v244;
  *(a4 + 288) = v252;
  *(a4 + 296) = v231;
  *(a4 + 304) = v247;
  *(a4 + 312) = v223;
  *(a4 + 320) = v227;
  *(a4 + 328) = v237;
  *(a4 + 336) = v217;
  *(a4 + 344) = v233;
  *(a4 + 352) = v215;
  *(a4 + 360) = v229;
  *(a4 + 368) = v213;
  *(a4 + 376) = v225;
  *(a4 + 384) = v210;
  *(a4 + 392) = v220;
  *(a4 + 400) = v208;
  *(a4 + 408) = rect_16a;
  *(a4 + 416) = v60;
  *(a4 + 424) = v205;
  *(a4 + 432) = v61;
  *(a4 + 440) = v203;
  *(a4 + 448) = v201;
  result = v196;
  *(a4 + 456) = v199;
  *(a4 + 464) = v196;
  *(a4 + 472) = v57;
  *(a4 + 480) = v62;
  *(a4 + 488) = v58;
  *(a4 + 489) = v59;
  return result;
}

double sub_2189C7D64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  v8 = *(a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_context);
  v9 = sub_219534AD0(v8);
  v10 = *(*__swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40)) + 24);
  v11 = [objc_opt_self() systemFontOfSize:13.0 weight:*MEMORY[0x277D74418]];
  v12 = [v10 scaledFontForFont_];

  v13 = sub_219BE8034();
  v14 = [v13 preferredContentSizeCategory];

  v252 = sub_219BF6924();
  *&__dst[0] = 0;
  *(&__dst[0] + 1) = 0xE000000000000000;
  sub_219BF7314();
  *(&__dst[31] + 8) = __dst[0];
  v15 = *(a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_width);
  v16 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v16);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  [v9 pointSize];
  v17 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v17);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v18 = v12;
  [v12 pointSize];
  v19 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v19);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  MEMORY[0x21CECC330](0x6957646572616853, 0xED0000756F596874);
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v20 = *(a1 + 16);
  v237 = *(a1 + 8);
  if (v20)
  {
    v21 = 0x65736C6166;
  }

  else
  {
    v21 = 1702195828;
  }

  if (v20)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x21CECC330](v21, v22);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_219BF7484();

  sub_219BE2DD4();

  memcpy(__dst, __src, 0x1EAuLL);
  if (sub_2189D2D5C(__dst) != 1)
  {

    v27 = __dst[0];
    v28 = *(&__dst[1] + 1);
    v254 = *&__dst[1];
    v30 = *(&__dst[2] + 1);
    v29 = *&__dst[2];
    v32 = *(&__dst[3] + 1);
    v31 = *&__dst[3];
    v34 = *(&__dst[4] + 1);
    v33 = *&__dst[4];
    v36 = *(&__dst[5] + 1);
    v35 = *&__dst[5];
    v38 = *(&__dst[6] + 1);
    v37 = *&__dst[6];
    v39 = *(&__dst[7] + 1);
    v40 = *&__dst[7];
    v41 = *(&__dst[7] + 1);
    v43 = *(&__dst[8] + 1);
    v42 = *&__dst[8];
    v45 = *(&__dst[9] + 1);
    v44 = *&__dst[9];
    v46 = *(&__dst[10] + 1);
    v47 = *&__dst[10];
    v49 = *(&__dst[11] + 1);
    v48 = *&__dst[11];
    v51 = *(&__dst[12] + 1);
    v50 = *&__dst[12];
    v53 = *(&__dst[13] + 1);
    v52 = *&__dst[13];
    v54 = *(&__dst[14] + 1);
    v250 = *&__dst[14];
    rect_16 = __dst[15];
    rect = *&__dst[16];
    v55 = *(&__dst[29] + 1);
    v56 = BYTE8(__dst[30]);
    v57 = BYTE9(__dst[30]);
    v235 = *(&__dst[16] + 1);
    v238 = *(&__dst[17] + 1);
    v229 = *&__dst[17];
    v225 = *(&__dst[18] + 1);
    rect_8 = *&__dst[18];
    v216 = *(&__dst[19] + 1);
    v241 = *&__dst[19];
    v231 = *(&__dst[20] + 1);
    v221 = *&__dst[20];
    v227 = *(&__dst[21] + 1);
    v211 = *&__dst[21];
    v223 = *(&__dst[22] + 1);
    v209 = *&__dst[22];
    v219 = *(&__dst[23] + 1);
    v207 = *&__dst[23];
    v213 = *(&__dst[24] + 1);
    v205 = *&__dst[24];
    v253 = *(&__dst[25] + 1);
    v203 = *&__dst[25];
    v200 = *(&__dst[26] + 1);
    v58 = *&__dst[26];
    v198 = *(&__dst[27] + 1);
    v59 = *&__dst[27];
    v194 = *(&__dst[28] + 1);
    v196 = *&__dst[28];
    v191 = *&__dst[29];
    v60 = *&__dst[30];
    goto LABEL_66;
  }

  v202 = v9;
  if (v8)
  {
    v234 = *(a2 + 56);
    v23 = 16.0;
    v24 = 6.0;
    v25 = 4.0;
    v26 = v9;
    if (v252)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v26 = v9;
  if ((v252 & 1) == 0)
  {
    v234 = *(a2 + 56);
    v23 = *(a2 + 48) - (v234 + v234);
    v24 = 10.0;
LABEL_15:
    v25 = 1.0;
    goto LABEL_16;
  }

  v23 = *(a2 + 48) + -24.0;
  v234 = 12.0;
  v25 = 4.0;
  v24 = 12.0;
LABEL_16:
  v232 = v25;
  v61 = 8.0;
  v62 = *(a2 + 40) + 8.0;
  rect_24 = *(a2 + 24) + 8.0;
  v63 = sub_2189CE614(a1, v26);
  v242 = v64;
  v65 = 0.0;
  if (v63 == 0.0)
  {
    v61 = 0.0;
  }

  recta = sub_218C26730(a2);
  v55 = *(a2 + 72);
  sub_218E0FF40();
  rect_8a = v63;
  v228 = v66;
  v67 = v15 - (rect_24 + v62) - v23 - v24 - v61 - v63 - v66;
  v68 = sub_218E1008C();
  v69 = *(v55 + 16);
  v70 = *(v69 + 16);
  if (v70)
  {
    v71 = (v69 + 32);
    do
    {
      v72 = *v71++;
      if (v72 == 8)
      {
        v65 = v65 + 35.0;
      }

      --v70;
    }

    while (v70);
  }

  v222 = v8;
  v226 = v67 - v68 - v65 - recta;
  v251 = v24 + v23 + rect_24;
  v254 = v15;
  v172 = v18;
  if (!v20)
  {
    goto LABEL_40;
  }

  v73 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v73 = v237 & 0xFFFFFFFFFFFFLL;
  }

  if (v73 && (*(a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_allowSuggestedDescription) & 1) != 0)
  {
    [v18 lineHeight];
    v75 = v74;
    sub_21899E550();
    v76 = v18;
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_219C09BA0;
    v78 = *MEMORY[0x277D740A8];
    *(v77 + 32) = *MEMORY[0x277D740A8];
    v217 = sub_2186C6148(0, &qword_280E8DB00);
    *(v77 + 64) = v217;
    *(v77 + 40) = v76;
    v214 = v78;
    v79 = v76;
    sub_2188195F4(v77);
    swift_setDeallocating();
    sub_2189C3F7C(v77 + 32, sub_218819588);
    swift_deallocClassInstance();
    v80 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v81 = sub_219BF53D4();
    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v82 = sub_219BF5204();

    v83 = [v80 initWithString:v81 attributes:v82];

    v84 = 0.1;
    v239 = a2;
    if (v252)
    {
      v38 = 3;
    }

    else
    {
      v38 = 1;
    }

    if ((v252 & 1) == 0)
    {
      v84 = 0.0;
    }

    v190 = v84;
    if (v252)
    {
      v85 = 3;
    }

    else
    {
      v85 = 2;
    }

    [v83 boundingRectWithSize:v85 options:0 context:{v67, v75 * v38}];
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v93 = v92;

    v258.origin.x = v87;
    v258.origin.y = v89;
    v258.size.width = v91;
    v258.size.height = v93;
    v224 = ceil(CGRectGetHeight(v258));
    [v202 lineHeight];
    sub_219BF2394();
    v94 = sub_219BF2364();
    MEMORY[0x21CEC9110]();

    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_219C09BA0;
    *(v95 + 32) = v214;
    *(v95 + 64) = v217;
    *(v95 + 40) = v202;
    v96 = v202;
    sub_2188195F4(v95);
    swift_setDeallocating();
    sub_2189C3F7C(v95 + 32, sub_218819588);
    swift_deallocClassInstance();
    v97 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v98 = sub_219BF53D4();

    v99 = sub_219BF5204();

    v100 = [v97 initWithString:v98 attributes:v99];

    sub_219BF6784();
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;

    v259.origin.x = v102;
    v259.origin.y = v104;
    v259.size.width = v106;
    v259.size.height = v108;
    v109 = ceil(CGRectGetHeight(v259));
    v110 = v224 + v232 + v109;
    if (*(v239 + 48) > v234 + v234 + v110)
    {
      v111 = *(v239 + 48);
    }

    else
    {
      v111 = v234 + v234 + v110;
    }

    v112 = v62;
    v260.origin.x = v251;
    v260.origin.y = v111 * 0.5 - v110 * 0.5;
    y = v260.origin.y;
    v260.size.width = v67;
    v260.size.height = v109;
    v236 = v232 + CGRectGetMaxY(v260);
    v240 = y;
    v261.origin.x = v251;
    v261.origin.y = y;
    v62 = v112;
    v15 = v254;
    v261.size.width = v67;
    v261.size.height = v109;
    v218 = v251;
    v212 = v232 + CGRectGetMaxY(v261);
    v204 = v226;
    v189 = v190;
    v171 = v38;
    v230 = v67;
    v114 = v111;
  }

  else
  {
LABEL_40:
    v115 = 0.1;
    v190 = 0.0;
    if ((v252 & 1) == 0)
    {
      v115 = 0.0;
    }

    v189 = v115;
    v116 = 2;
    if (v252)
    {
      v116 = 3;
    }

    v171 = v116;
    sub_219BF2394();
    v117 = sub_219BF2364();
    MEMORY[0x21CEC9110]();

    sub_21899E550();
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_219C09BA0;
    v119 = *MEMORY[0x277D740A8];
    *(v118 + 32) = *MEMORY[0x277D740A8];
    *(v118 + 64) = sub_2186C6148(0, &qword_280E8DB00);
    v120 = a2;
    *(v118 + 40) = v202;
    v121 = v119;
    v122 = v202;
    sub_2188195F4(v118);
    swift_setDeallocating();
    sub_2189C3F7C(v118 + 32, sub_218819588);
    swift_deallocClassInstance();
    v123 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v124 = sub_219BF53D4();

    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v125 = sub_219BF5204();

    v126 = [v123 initWithString:v124 attributes:v125];

    sub_219BF67A4();
    v128 = v127;

    v38 = 0;
    v109 = ceil(v128);
    if (*(v120 + 48) > v234 + v234 + v109)
    {
      v114 = *(v120 + 48);
    }

    else
    {
      v114 = v234 + v234 + v109;
    }

    v218 = 0.0;
    v212 = 0.0;
    v204 = 0.0;
    v224 = 0.0;
    v236 = 0.0;
    v240 = (v114 - v109) * 0.5;
    v230 = 0.0;
  }

  v233 = v114;
  v129 = ceil((v114 - v23) * 0.5);
  v262.origin.x = rect_24;
  v262.origin.y = v129;
  v262.size.width = v23;
  v262.size.height = v23;
  MinX = CGRectGetMinX(v262);
  v130 = v15 - v62;
  v131 = v15 - v62 - v228;
  v132 = -sub_218E1008C() - recta;
  v133 = 0.0;
  v263.origin.y = 0.0;
  v220 = v131;
  v263.origin.x = v131;
  v263.size.width = v228;
  v263.size.height = v233;
  v264 = CGRectOffset(v263, v132, 0.0);
  x = v264.origin.x;
  width = v264.size.width;
  v210 = v264.origin.y;
  height = v264.size.height;
  v134 = *(v55 + 16);
  v135 = *(v134 + 16);
  if (v135)
  {
    v136 = (v134 + 32);
    v137 = 0.0;
    v57 = v222;
    do
    {
      v138 = *v136++;
      if (v138 == 8)
      {
        v133 = v137 + 35.0;
        v137 = v137 + 35.0;
      }

      --v135;
    }

    while (v135);
  }

  else
  {
    v57 = v222;
  }

  v265.origin.y = v240;
  v139 = 0.0;
  v265.origin.x = v251;
  v265.size.width = v67;
  v265.size.height = v109;
  v266 = CGRectOffset(v265, v133, 0.0);
  v199 = v266.origin.y;
  v201 = v266.origin.x;
  v195 = v266.size.height;
  v197 = v266.size.width;
  v140 = *(v55 + 16);
  v141 = *(v140 + 16);
  v142 = 0.0;
  if (v141)
  {
    v143 = (v140 + 32);
    v144 = 0.0;
    do
    {
      v145 = *v143++;
      if (v145 == 8)
      {
        v142 = v144 + 35.0;
        v144 = v144 + 35.0;
      }

      --v141;
    }

    while (v141);
  }

  rectb = MinX + -12.0;
  v267.origin.y = v236;
  v170 = ceil(v233);
  v267.origin.x = v218;
  v267.size.width = v230;
  v267.size.height = v224;
  v268 = CGRectOffset(v267, v142, 0.0);
  v193 = v268.origin.x;
  v166 = v268.size.width;
  v168 = v268.origin.y;
  v165 = v268.size.height;
  v146 = *(v55 + 16);
  v147 = *(v146 + 16);
  if (v147)
  {
    v148 = (v146 + 32);
    v139 = 0.0;
    v149 = 0.0;
    do
    {
      v150 = *v148++;
      if (v150 == 8)
      {
        v139 = v149 + 35.0;
        v149 = v149 + 35.0;
      }

      --v147;
    }

    while (v147);
  }

  v269.origin.x = rect_24;
  v269.origin.y = v129;
  v269.size.width = v23;
  v269.size.height = v23;
  v270 = CGRectOffset(v269, v139, 0.0);
  v163 = v270.origin.y;
  v164 = v270.origin.x;
  v161 = v270.size.height;
  v162 = v270.size.width;
  v270.origin.x = v251;
  v270.origin.y = v240;
  v270.size.width = v67;
  v270.size.height = v109;
  v271 = CGRectIntegral(v270);
  v187 = v271.origin.y;
  v188 = v271.origin.x;
  v185 = v271.size.height;
  v186 = v271.size.width;
  v271.origin.x = v251;
  v271.origin.y = v240;
  v271.size.width = v226;
  v271.size.height = v109;
  v272 = CGRectIntegral(v271);
  v151 = v272.origin.x;
  v158 = v272.origin.x;
  v183 = v272.size.width;
  v184 = v272.origin.y;
  v182 = v272.size.height;
  v272.origin.x = v218;
  v272.origin.y = v236;
  v272.size.width = v230;
  v272.size.height = v224;
  v273 = CGRectIntegral(v272);
  v179 = v273.origin.x;
  v180 = v273.size.width;
  v181 = v273.origin.y;
  v176 = v273.size.height;
  v273.origin.x = v218;
  v273.origin.y = v212;
  v273.size.width = v204;
  v273.size.height = v224;
  v274 = CGRectIntegral(v273);
  v178 = v274.origin.x;
  v175 = v274.origin.y;
  v152 = v274.size.width;
  v153 = v274.size.height;
  v274.origin.x = rect_24;
  v274.origin.y = v129;
  v274.size.width = v23;
  v274.size.height = v23;
  v275 = CGRectIntegral(v274);
  v154 = v275.origin.x;
  v159 = v275.size.width;
  v160 = v275.origin.y;
  v177 = v275.size.height;
  v275.origin.x = rect_24;
  v275.origin.y = v129;
  v275.size.width = v23;
  v275.size.height = v23;
  v174 = CGRectGetMinX(v275) + -1.0;
  v276.origin.x = rect_24;
  v276.origin.y = v129;
  v276.size.width = v23;
  v276.size.height = v23;
  v250 = CGRectGetMinY(v276) + -1.0;
  v277.origin.x = rect_24;
  v277.origin.y = v129;
  v277.size.width = v23;
  v277.size.height = v23;
  v173 = CGRectGetWidth(v277) + 2.0;
  v278.origin.x = rect_24;
  v278.origin.y = v129;
  v278.size.width = v23;
  v278.size.height = v23;
  *&rect_16 = CGRectGetHeight(v278) + 2.0;
  v279.size.width = 8.0;
  v279.size.height = 8.0;
  v279.origin.x = rectb;
  v279.origin.y = (v23 + -8.0) * 0.5 + v129;
  v280 = CGRectIntegral(v279);
  *(&rect_16 + 1) = *&v280.origin.x;
  rect = v280.origin.y;
  v235 = v280.size.width;
  v229 = v280.size.height;
  v280.origin.x = v130 - rect_8a;
  v280.origin.y = (v233 - v242) * 0.5;
  v280.size.width = rect_8a;
  v280.size.height = v242;
  v281 = CGRectIntegral(v280);
  v238 = v281.origin.x;
  v241 = v281.size.height;
  rect_8 = v281.origin.y;
  v225 = v281.size.width;
  v281.origin.y = 0.0;
  v281.origin.x = v220;
  v281.size.width = v228;
  v281.size.height = v233;
  v282 = CGRectIntegral(v281);
  v216 = v282.origin.x;
  v221 = v282.origin.y;
  v231 = v282.size.width;
  v211 = v282.size.height;
  v282.origin.x = x;
  v282.size.width = width;
  v282.origin.y = v210;
  v282.size.height = height;
  v283 = CGRectIntegral(v282);
  v227 = v283.origin.x;
  v207 = v283.size.height;
  v209 = v283.origin.y;
  v223 = v283.size.width;
  v283.origin.y = v199;
  v283.origin.x = v201;
  v283.size.height = v195;
  v283.size.width = v197;
  v284 = CGRectIntegral(v283);
  v219 = v284.origin.x;
  v203 = v284.size.height;
  v205 = v284.origin.y;
  v213 = v284.size.width;
  v284.origin.x = v193;
  v284.size.width = v166;
  v284.origin.y = v168;
  v284.size.height = v165;
  v285 = CGRectIntegral(v284);
  v155 = v285.origin.x;
  v167 = v285.size.height;
  v169 = v285.origin.y;
  v156 = v285.size.width;
  v285.origin.y = v163;
  v285.origin.x = v164;
  v285.size.height = v161;
  v285.size.width = v162;
  v286 = CGRectIntegral(v285);
  v56 = v252 & 1;
  __src[0] = 0uLL;
  *&__src[1] = v254;
  *(&__src[1] + 1) = v170;
  *&__src[2] = v188;
  *(&__src[2] + 1) = v187;
  *&__src[3] = v186;
  *(&__src[3] + 1) = v185;
  *&__src[4] = v151;
  *(&__src[4] + 1) = v184;
  *&__src[5] = v183;
  *(&__src[5] + 1) = v182;
  v37 = v171;
  *&__src[6] = v171;
  *(&__src[6] + 1) = v38;
  *&__src[7] = __PAIR64__(LODWORD(v190), LODWORD(v189));
  *(&__src[7] + 1) = v179;
  *&__src[8] = v181;
  *(&__src[8] + 1) = v180;
  *&__src[9] = v176;
  *(&__src[9] + 1) = v178;
  *&__src[10] = v175;
  v46 = v152;
  *(&__src[10] + 1) = v152;
  v48 = v153;
  *&__src[11] = v153;
  v49 = v154;
  *(&__src[11] + 1) = v154;
  *&__src[12] = v160;
  *(&__src[12] + 1) = v159;
  *&__src[13] = v177;
  *(&__src[13] + 1) = v174;
  *&__src[14] = v250;
  *(&__src[14] + 1) = v173;
  __src[15] = rect_16;
  *&__src[16] = rect;
  *(&__src[16] + 1) = v235;
  *&__src[17] = v229;
  *(&__src[17] + 1) = v238;
  *&__src[18] = rect_8;
  *(&__src[18] + 1) = v225;
  *&__src[19] = v241;
  *(&__src[19] + 1) = v216;
  *&__src[20] = v221;
  *(&__src[20] + 1) = v231;
  *&__src[21] = v211;
  *(&__src[21] + 1) = v227;
  *&__src[22] = v209;
  *(&__src[22] + 1) = v223;
  *&__src[23] = v207;
  *(&__src[23] + 1) = v219;
  *&__src[24] = v205;
  *(&__src[24] + 1) = v213;
  *&__src[25] = v203;
  v253 = v155;
  *(&__src[25] + 1) = v155;
  v58 = v169;
  *&__src[26] = v169;
  v198 = v286.origin.x;
  v200 = v156;
  *(&__src[26] + 1) = v156;
  v59 = v167;
  *&__src[27] = v167;
  *(&__src[27] + 1) = *&v286.origin.x;
  v194 = v286.size.width;
  v196 = v286.origin.y;
  *&__src[28] = v286.origin.y;
  *(&__src[28] + 1) = *&v286.size.width;
  v191 = v286.size.height;
  *&__src[29] = v286.size.height;
  *(&__src[29] + 1) = v55;
  *&__src[30] = v170;
  BYTE8(__src[30]) = v56;
  BYTE9(__src[30]) = v57;
  nullsub_1(__src);
  memcpy(v255, __src, sizeof(v255));
  swift_retain_n();

  sub_219BE2DE4();

  v51 = v159;
  v50 = v160;
  v47 = v175;
  v44 = v176;
  v45 = v178;
  v41 = v179;
  v43 = v180;
  v42 = v181;
  v36 = v182;
  v35 = v183;
  v34 = v184;
  v32 = v185;
  v33 = v158;
  v31 = v186;
  v30 = v187;
  v29 = v188;
  v28 = v170;
  v52 = v177;
  v40 = v189;
  v54 = v173;
  v53 = v174;
  v39 = v190;
  v27 = 0uLL;
  v60 = v170;
LABEL_66:
  *a4 = v27;
  *(a4 + 16) = v254;
  *(a4 + 24) = v28;
  *(a4 + 32) = v29;
  *(a4 + 40) = v30;
  *(a4 + 48) = v31;
  *(a4 + 56) = v32;
  *(a4 + 64) = v33;
  *(a4 + 72) = v34;
  *(a4 + 80) = v35;
  *(a4 + 88) = v36;
  *(a4 + 112) = v40;
  *(a4 + 116) = v39;
  *(a4 + 120) = v41;
  *(a4 + 128) = v42;
  *(a4 + 136) = v43;
  *(a4 + 144) = v44;
  *(a4 + 152) = v45;
  *(a4 + 160) = v47;
  *(a4 + 168) = v46;
  *(a4 + 176) = v48;
  *(a4 + 184) = v49;
  *(a4 + 192) = v50;
  *(a4 + 200) = v51;
  *(a4 + 208) = v52;
  *(a4 + 216) = v53;
  *(a4 + 224) = v250;
  *(a4 + 96) = v37;
  *(a4 + 104) = v38;
  *(a4 + 232) = v54;
  *(a4 + 240) = rect_16;
  *(a4 + 256) = rect;
  *(a4 + 264) = v235;
  *(a4 + 272) = v229;
  *(a4 + 280) = v238;
  *(a4 + 288) = rect_8;
  *(a4 + 296) = v225;
  *(a4 + 304) = v241;
  *(a4 + 312) = v216;
  *(a4 + 320) = v221;
  *(a4 + 328) = v231;
  *(a4 + 336) = v211;
  *(a4 + 344) = v227;
  *(a4 + 352) = v209;
  *(a4 + 360) = v223;
  *(a4 + 368) = v207;
  *(a4 + 376) = v219;
  *(a4 + 384) = v205;
  *(a4 + 392) = v213;
  *(a4 + 400) = v203;
  *(a4 + 408) = v253;
  *(a4 + 416) = v58;
  *(a4 + 424) = v200;
  *(a4 + 432) = v59;
  *(a4 + 440) = v198;
  *(a4 + 448) = v196;
  result = v191;
  *(a4 + 456) = v194;
  *(a4 + 464) = v191;
  *(a4 + 472) = v55;
  *(a4 + 480) = v60;
  *(a4 + 488) = v56;
  *(a4 + 489) = v57;
  return result;
}

double sub_2189C9108@<D0>(uint64_t a1@<X0>, double a2@<X1>, double a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for FollowingPuzzleHubModel();
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v202 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189C3FDC(a1, v11, type metadata accessor for FollowingPuzzleHubModel);
  __swift_project_boxed_opaque_existential_1((*&a3 + 16), *(*&a3 + 40));
  LODWORD(v262) = *(*&a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_context);
  v12 = sub_219534AD0(SLOBYTE(v262));
  v13 = *(*__swift_project_boxed_opaque_existential_1((*&a3 + 16), *(*&a3 + 40)) + 24);
  v14 = [objc_opt_self() systemFontOfSize:13.0 weight:*MEMORY[0x277D74418]];
  v15 = COERCE_DOUBLE([v13 scaledFontForFont_]);

  v16 = sub_219BE8034();
  v17 = [v16 preferredContentSizeCategory];

  LODWORD(v263) = sub_219BF6924();
  *&v269[0] = 0;
  *(&v269[0] + 1) = 0xE000000000000000;
  sub_219BF7314();
  v270 = v269[0];
  v260 = a2;
  v18 = *(*&a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_width);
  v19 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v19);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v264 = v12;
  [v12 pointSize];
  v20 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v20);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  [*&v15 pointSize];
  v21 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v21);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  MEMORY[0x21CECC330](0x7548656C7A7A7570, 0xE900000000000062);
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v22 = *(v11 + 2);
  v23 = *(v11 + 3);
  if (v23)
  {
    v24 = 0x65736C6166;
  }

  else
  {
    v24 = 1702195828;
  }

  if (v23)
  {
    v25 = 0xE500000000000000;
  }

  else
  {
    v25 = 0xE400000000000000;
  }

  MEMORY[0x21CECC330](v24, v25);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v26 = *&v11[*(v9 + 48)];
  v27 = *&v11[*(v9 + 44)];
  if (!v26)
  {
    v27 = 0;
  }

  *&v269[0] = *&v11[*(v9 + 48)];
  *(&v269[0] + 1) = v27;
  LOBYTE(v269[1]) = 0;
  BYTE1(v269[1]) = v26 == 0;
  sub_219BF7484();
  v28 = v270;
  v243 = a3;
  v269[0] = v270;

  sub_219BE2DD4();

  memcpy(v269, v268, 0x1EAuLL);
  if (sub_2189D2D5C(v269) != 1)
  {
    sub_2189C3F7C(v11, type metadata accessor for FollowingPuzzleHubModel);

    v34 = v269[0];
    v35 = *(&v269[1] + 1);
    v265 = *&v269[1];
    v37 = *(&v269[2] + 1);
    v36 = *&v269[2];
    v39 = *(&v269[3] + 1);
    v38 = *&v269[3];
    v41 = *(&v269[4] + 1);
    v40 = *&v269[4];
    v43 = *(&v269[5] + 1);
    v42 = *&v269[5];
    v44 = *(&v269[6] + 1);
    v45 = *&v269[6];
    v46 = DWORD1(v269[7]);
    v47 = v269[7];
    v48 = *(&v269[7] + 1);
    v50 = *(&v269[8] + 1);
    v49 = *&v269[8];
    v52 = *(&v269[9] + 1);
    v51 = *&v269[9];
    v54 = *(&v269[10] + 1);
    v53 = *&v269[10];
    v55 = *(&v269[11] + 1);
    v56 = *&v269[11];
    v58 = *(&v269[12] + 1);
    v57 = *&v269[12];
    v60 = *(&v269[13] + 1);
    v59 = *&v269[13];
    v61 = *(&v269[14] + 1);
    v262 = *&v269[14];
    v259 = *(&v269[15] + 1);
    v260 = *&v269[15];
    v258 = *&v269[16];
    v62 = *(&v269[29] + 1);
    v63 = BYTE8(v269[30]);
    v64 = BYTE9(v269[30]);
    v257 = *(&v269[16] + 1);
    v254 = *(&v269[17] + 1);
    v261 = *&v269[17];
    v253 = *(&v269[18] + 1);
    v255 = *&v269[18];
    v256 = *(&v269[19] + 1);
    v251 = *&v269[19];
    v250 = *(&v269[20] + 1);
    *&v248 = *&v269[20];
    v252 = *(&v269[21] + 1);
    v247 = *&v269[21];
    v246 = v269[22];
    height = *(&v269[23] + 1);
    v249 = *&v269[23];
    v263 = *(&v269[24] + 1);
    width = *&v269[24];
    v243 = *(&v269[25] + 1);
    v65 = *&v269[25];
    v242 = *(&v269[26] + 1);
    v66 = *&v269[26];
    v241 = *(&v269[27] + 1);
    v67 = *&v269[27];
    x = *(&v269[28] + 1);
    v240 = *&v269[28];
    v238 = *&v269[29];
    v68 = *&v269[30];
    goto LABEL_68;
  }

  v251 = v15;
  v217 = v28;
  if (LOBYTE(v262))
  {
    v29 = *&v260;
    v257 = *(*&v260 + 56);
    v30 = 16.0;
    v31 = 6.0;
    v32 = 4.0;
    v33 = v264;
    if (LOBYTE(v263))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v33 = v264;
  if ((LOBYTE(v263) & 1) == 0)
  {
    v29 = *&v260;
    v69 = *(*&v260 + 48);
    v257 = *(*&v260 + 56);
    v30 = v69 - (v257 + v257);
    v31 = 10.0;
LABEL_17:
    v32 = 1.0;
    goto LABEL_18;
  }

  v29 = *&v260;
  v30 = *(*&v260 + 48) + -24.0;
  v257 = 12.0;
  v32 = 4.0;
  v31 = 12.0;
LABEL_18:
  v256 = v32;
  v70 = 8.0;
  v71 = *(v29 + 40) + 8.0;
  v261 = *(v29 + 24) + 8.0;
  v247 = v71;
  v72 = v261 + v71;
  v73 = sub_2189CE1A4(v11, v33);
  v254 = v74;
  v75 = 0.0;
  if (v73 == 0.0)
  {
    v70 = 0.0;
  }

  v76 = sub_218C26730(v29);
  v62 = *(v29 + 72);
  sub_218E0FF40();
  v255 = v73;
  v252 = v77;
  v78 = v18 - v72 - v30 - v31 - v70 - v73 - v77;
  v79 = sub_218E1008C();
  v80 = *(v62 + 16);
  v81 = *(v80 + 16);
  if (v81)
  {
    v82 = (v80 + 32);
    do
    {
      v83 = *v82++;
      if (v83 == 8)
      {
        v75 = v75 + 35.0;
      }

      --v81;
    }

    while (v81);
  }

  v265 = v18;
  v84 = v78 - v79 - v75;
  v85 = v76;
  v250 = v84 - v76;
  v258 = v78;
  v259 = v31 + v30 + v261;
  v218 = v11;
  if (!v23)
  {
    goto LABEL_42;
  }

  v86 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v86 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v86 && (*(v29 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_allowSuggestedDescription) & 1) != 0)
  {
    v87 = v251;
    [*&v251 lineHeight];
    v89 = v88;
    sub_21899E550();
    v253 = v90;
    v91 = swift_allocObject();
    v248 = xmmword_219C09BA0;
    *(v91 + 16) = xmmword_219C09BA0;
    v92 = *MEMORY[0x277D740A8];
    *(v91 + 32) = *MEMORY[0x277D740A8];
    *(&v246 + 1) = sub_2186C6148(0, &qword_280E8DB00);
    *(v91 + 64) = *(&v246 + 1);
    *(v91 + 40) = v87;
    *&v246 = v92;
    v93 = *&v87;
    sub_2188195F4(v91);
    swift_setDeallocating();
    width = COERCE_DOUBLE(sub_218819588);
    sub_2189C3F7C(v91 + 32, sub_218819588);
    swift_deallocClassInstance();
    v94 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v95 = sub_219BF53D4();
    type metadata accessor for Key(0);
    height = v96;
    *&v242 = COERCE_DOUBLE(sub_218748C68(&qword_280E8E118, type metadata accessor for Key));
    v97 = sub_219BF5204();

    v98 = [v94 initWithString:v95 attributes:v97];

    v99 = 0.1;
    if (LOBYTE(v263))
    {
      v100 = 3;
    }

    else
    {
      v100 = 1;
    }

    if ((LOBYTE(v263) & 1) == 0)
    {
      v99 = 0.0;
    }

    *(&v237 + 1) = v99;
    if (LOBYTE(v263))
    {
      v101 = 3;
    }

    else
    {
      v101 = 2;
    }

    [v98 boundingRectWithSize:v101 options:0 context:{v78, v89 * v100}];
    v103 = v102;
    v105 = v104;
    v107 = v106;
    v109 = v108;

    v271.origin.x = v103;
    v271.origin.y = v105;
    v271.size.width = v107;
    v271.size.height = v109;
    v249 = ceil(CGRectGetHeight(v271));
    v110 = v264;
    [v264 lineHeight];
    v111 = swift_allocObject();
    *(v111 + 16) = v248;
    v112 = *(&v246 + 1);
    *(v111 + 32) = v246;
    *(v111 + 64) = v112;
    *(v111 + 40) = v110;
    v113 = v110;
    sub_2188195F4(v111);
    swift_setDeallocating();
    sub_2189C3F7C(v111 + 32, *&width);
    swift_deallocClassInstance();
    v114 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v115 = sub_219BF53D4();
    v116 = sub_219BF5204();

    v117 = v114;
    v44 = v100;
    v118 = [v117 initWithString:v115 attributes:v116];

    sub_219BF6784();
    v120 = v119;
    v122 = v121;
    v124 = v123;
    v126 = v125;

    v272.origin.x = v120;
    v272.origin.y = v122;
    v85 = v76;
    v272.size.width = v124;
    v272.size.height = v126;
    v127 = ceil(CGRectGetHeight(v272));
    v128 = v256;
    v129 = v249 + v256 + v127;
    if (*(*&v260 + 48) > v257 + v257 + v129)
    {
      v130 = *(*&v260 + 48);
    }

    else
    {
      v130 = v257 + v257 + v129;
    }

    v132 = v259;
    v273.origin.x = v259;
    v273.origin.y = v130 * 0.5 - v129 * 0.5;
    y = v273.origin.y;
    v273.size.width = v78;
    v273.size.height = v127;
    v257 = v128 + CGRectGetMaxY(v273);
    v274.origin.x = v132;
    v260 = y;
    v274.origin.y = y;
    v274.size.width = v78;
    v274.size.height = v127;
    v241 = v128 + CGRectGetMaxY(v274);
    *&v242 = v132;
    v240 = v250;
    LODWORD(v237) = HIDWORD(v237);
    *&v248 = v100;
    v253 = v78;
  }

  else
  {
LABEL_42:
    v133 = 0.1;
    HIDWORD(v237) = 0;
    if ((LOBYTE(v263) & 1) == 0)
    {
      v133 = 0.0;
    }

    *&v237 = v133;
    v134 = 2;
    if (LOBYTE(v263))
    {
      v134 = 3;
    }

    *&v248 = v134;
    sub_21899E550();
    v135 = swift_allocObject();
    *(v135 + 16) = xmmword_219C09BA0;
    v136 = *MEMORY[0x277D740A8];
    *(v135 + 32) = *MEMORY[0x277D740A8];
    *(v135 + 64) = sub_2186C6148(0, &qword_280E8DB00);
    v137 = v264;
    *(v135 + 40) = v264;
    v138 = v136;
    v139 = v137;
    sub_2188195F4(v135);
    swift_setDeallocating();
    sub_2189C3F7C(v135 + 32, sub_218819588);
    swift_deallocClassInstance();
    v140 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v141 = sub_219BF53D4();
    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v142 = sub_219BF5204();

    v143 = [v140 initWithString:v141 attributes:v142];

    sub_219BF67A4();
    v145 = v144;

    v44 = 0;
    v127 = ceil(v145);
    if (*(v29 + 48) > v257 + v257 + v127)
    {
      v130 = *(v29 + 48);
    }

    else
    {
      v130 = v257 + v257 + v127;
    }

    v260 = (v130 - v127) * 0.5;
    v241 = 0.0;
    *&v242 = 0.0;
    v240 = 0.0;
    v249 = 0.0;
    v257 = 0.0;
    v253 = 0.0;
  }

  v256 = v130;
  v146 = ceil((v130 - v30) * 0.5);
  v275.origin.x = v261;
  v275.origin.y = v146;
  v275.size.width = v30;
  v275.size.height = v30;
  MinX = CGRectGetMinX(v275);
  v147 = v265 - v247;
  v148 = v252;
  v149 = v265 - v247 - v252;
  v150 = -sub_218E1008C() - v85;
  v151 = 0.0;
  v276.origin.y = 0.0;
  v247 = v149;
  v276.origin.x = v149;
  v276.size.width = v148;
  v152 = v256;
  v276.size.height = v256;
  v277 = CGRectOffset(v276, v150, 0.0);
  *&v246 = v277.origin.y;
  *(&v246 + 1) = *&v277.origin.x;
  height = v277.size.height;
  width = v277.size.width;
  v153 = *(v62 + 16);
  v154 = *(v153 + 16);
  if (v154)
  {
    v155 = (v153 + 32);
    v156 = 0.0;
    v64 = LOBYTE(v262);
    v157 = v218;
    v158 = v251;
    v45 = v248;
    do
    {
      v159 = *v155++;
      if (v159 == 8)
      {
        v151 = v156 + 35.0;
        v156 = v156 + 35.0;
      }

      --v154;
    }

    while (v154);
  }

  else
  {
    v64 = LOBYTE(v262);
    v157 = v218;
    v158 = v251;
    v45 = v248;
  }

  v160 = v152 - v254;
  v161 = 0.0;
  v278.origin.x = v259;
  v278.origin.y = v260;
  v278.size.width = v258;
  v278.size.height = v127;
  v279 = CGRectOffset(v278, v151, 0.0);
  v238 = v279.origin.y;
  x = v279.origin.x;
  v214 = v279.size.height;
  v215 = v279.size.width;
  v162 = *(v62 + 16);
  v163 = *(v162 + 16);
  v164 = 0.0;
  if (v163)
  {
    v165 = (v162 + 32);
    v166 = 0.0;
    do
    {
      v167 = *v165++;
      if (v167 == 8)
      {
        v164 = v166 + 35.0;
        v166 = v166 + 35.0;
      }

      --v163;
    }

    while (v163);
  }

  v208 = (v30 + -8.0) * 0.5 + v146;
  v209 = MinX + -12.0;
  v251 = v147 - v255;
  *&v248 = v160 * 0.5;
  v280.origin.y = v257;
  v216 = ceil(v256);
  v168 = *&v242;
  *&v280.origin.x = v242;
  v280.size.width = v253;
  v169 = v249;
  v280.size.height = v249;
  v281 = CGRectOffset(v280, v164, 0.0);
  v212 = v281.origin.y;
  v213 = v281.origin.x;
  v210 = v281.size.height;
  v211 = v281.size.width;
  v170 = *(v62 + 16);
  v171 = *(v170 + 16);
  if (v171)
  {
    v172 = (v170 + 32);
    v161 = 0.0;
    v173 = 0.0;
    do
    {
      v174 = *v172++;
      if (v174 == 8)
      {
        v161 = v173 + 35.0;
        v173 = v173 + 35.0;
      }

      --v171;
    }

    while (v171);
  }

  v175 = v261;
  v282.origin.x = v261;
  v282.origin.y = v146;
  v282.size.width = v30;
  v282.size.height = v30;
  v283 = CGRectOffset(v282, v161, 0.0);
  v206 = v283.origin.y;
  v207 = v283.origin.x;
  v204 = v283.size.height;
  v205 = v283.size.width;
  v176 = v259;
  v177 = v260;
  v283.origin.x = v259;
  v283.origin.y = v260;
  v283.size.width = v258;
  v283.size.height = v127;
  v284 = CGRectIntegral(v283);
  v235 = v284.origin.y;
  MinX = v284.origin.x;
  v233 = v284.size.height;
  v234 = v284.size.width;
  v284.origin.x = v176;
  v284.origin.y = v177;
  v284.size.width = v250;
  v284.size.height = v127;
  v285 = CGRectIntegral(v284);
  v231 = v285.origin.y;
  v232 = v285.origin.x;
  v229 = v285.size.height;
  v230 = v285.size.width;
  v285.origin.x = v168;
  v285.origin.y = v257;
  v285.size.width = v253;
  v285.size.height = v169;
  v286 = CGRectIntegral(v285);
  v227 = v286.origin.y;
  v228 = v286.origin.x;
  v225 = v286.size.height;
  v226 = v286.size.width;
  v286.origin.x = v168;
  v286.size.width = v240;
  v286.origin.y = v241;
  v286.size.height = v169;
  v287 = CGRectIntegral(v286);
  v222 = v287.origin.y;
  v223 = v287.origin.x;
  v221 = v287.size.width;
  v178 = v287.size.height;
  v287.origin.x = v175;
  v287.origin.y = v146;
  v287.size.width = v30;
  v287.size.height = v30;
  v288 = CGRectIntegral(v287);
  v179 = v288.origin.x;
  v202 = v288.size.width;
  v203 = v288.origin.y;
  v224 = v288.size.height;
  v288.origin.x = v175;
  v288.origin.y = v146;
  v288.size.width = v30;
  v288.size.height = v30;
  v220 = CGRectGetMinX(v288) + -1.0;
  v289.origin.x = v175;
  v289.origin.y = v146;
  v289.size.width = v30;
  v289.size.height = v30;
  v262 = CGRectGetMinY(v289) + -1.0;
  v290.origin.x = v175;
  v290.origin.y = v146;
  v290.size.width = v30;
  v290.size.height = v30;
  v219 = CGRectGetWidth(v290) + 2.0;
  v291.origin.x = v175;
  v291.origin.y = v146;
  v291.size.width = v30;
  v291.size.height = v30;
  v260 = CGRectGetHeight(v291) + 2.0;
  v292.size.width = 8.0;
  v292.size.height = 8.0;
  v292.origin.y = v208;
  v292.origin.x = v209;
  v293 = CGRectIntegral(v292);
  v258 = v293.origin.y;
  v259 = v293.origin.x;
  v257 = v293.size.width;
  v261 = v293.size.height;
  v293.origin.x = v251;
  *&v293.origin.y = v248;
  v293.size.height = v254;
  v293.size.width = v255;
  v294 = CGRectIntegral(v293);
  v254 = v294.origin.x;
  v255 = v294.origin.y;
  v253 = v294.size.width;
  v251 = v294.size.height;
  v294.origin.y = 0.0;
  v294.origin.x = v247;
  v294.size.width = v252;
  v294.size.height = v256;
  v295 = CGRectIntegral(v294);
  v256 = v295.origin.x;
  v247 = v295.size.height;
  *&v248 = v295.origin.y;
  v250 = v295.size.width;
  v295.origin.x = *(&v246 + 1);
  *&v295.origin.y = v246;
  v295.size.height = height;
  v295.size.width = width;
  v296 = CGRectIntegral(v295);
  v252 = v296.origin.x;
  *&v246 = v296.origin.y;
  *(&v246 + 1) = *&v296.size.width;
  v249 = v296.size.height;
  v296.origin.y = v238;
  v296.origin.x = x;
  v296.size.height = v214;
  v296.size.width = v215;
  v297 = CGRectIntegral(v296);
  height = v297.origin.x;
  width = v297.origin.y;
  v180 = v297.size.width;
  v215 = v297.size.height;
  v297.origin.y = v212;
  v297.origin.x = v213;
  v297.size.height = v210;
  v297.size.width = v211;
  v298 = CGRectIntegral(v297);
  v181 = v298.origin.x;
  v213 = v298.size.height;
  v214 = v298.origin.y;
  v182 = v298.size.width;
  v298.origin.y = v206;
  v298.origin.x = v207;
  v298.size.height = v204;
  v298.size.width = v205;
  v299 = CGRectIntegral(v298);
  v183 = LOBYTE(v263);
  v63 = LOBYTE(v263) & 1;
  v268[0] = 0uLL;
  *&v268[1] = v265;
  v184 = v216;
  *(&v268[1] + 1) = v216;
  *&v268[2] = MinX;
  *(&v268[2] + 1) = v235;
  *&v268[3] = v234;
  *(&v268[3] + 1) = v233;
  *&v268[4] = v232;
  *(&v268[4] + 1) = v231;
  *&v268[5] = v230;
  *(&v268[5] + 1) = v229;
  *&v268[6] = v45;
  *(&v268[6] + 1) = v44;
  *&v268[7] = v237;
  *(&v268[7] + 1) = v228;
  *&v268[8] = v227;
  *(&v268[8] + 1) = v226;
  *&v268[9] = v225;
  *(&v268[9] + 1) = v223;
  *&v268[10] = v222;
  *(&v268[10] + 1) = v221;
  *&v268[11] = v178;
  v55 = v179;
  *(&v268[11] + 1) = v179;
  v185 = v202;
  v57 = v203;
  *&v268[12] = v203;
  *(&v268[12] + 1) = v202;
  *&v268[13] = v224;
  *(&v268[13] + 1) = v220;
  *&v268[14] = v262;
  *(&v268[14] + 1) = v219;
  *&v268[15] = v260;
  *(&v268[15] + 1) = v259;
  *&v268[16] = v258;
  *(&v268[16] + 1) = v257;
  *&v268[17] = v261;
  *(&v268[17] + 1) = v254;
  *&v268[18] = v255;
  *(&v268[18] + 1) = v253;
  *&v268[19] = v251;
  *(&v268[19] + 1) = v256;
  *&v268[20] = v248;
  *(&v268[20] + 1) = v250;
  *&v268[21] = v247;
  *(&v268[21] + 1) = v252;
  v268[22] = v246;
  *&v268[23] = v249;
  *(&v268[23] + 1) = height;
  *&v268[24] = width;
  v263 = v180;
  *(&v268[24] + 1) = v180;
  v65 = v215;
  *&v268[25] = v215;
  *&v242 = v182;
  v243 = v181;
  *(&v268[25] + 1) = v181;
  v66 = v214;
  *&v268[26] = v214;
  *(&v268[26] + 1) = v182;
  v67 = v213;
  *&v268[27] = v213;
  v240 = v299.origin.y;
  v241 = v299.origin.x;
  *(&v268[27] + 1) = *&v299.origin.x;
  *&v268[28] = v299.origin.y;
  v238 = v299.size.height;
  x = v299.size.width;
  *(&v268[28] + 1) = *&v299.size.width;
  *&v268[29] = v299.size.height;
  *(&v268[29] + 1) = v62;
  *&v268[30] = v216;
  BYTE8(v268[30]) = v183 & 1;
  BYTE9(v268[30]) = v64;
  nullsub_1(v268);
  memcpy(v267, v268, sizeof(v267));
  v266 = v217;
  swift_retain_n();

  sub_219BE2DE4();

  sub_2189C3F7C(v157, type metadata accessor for FollowingPuzzleHubModel);
  v58 = v185;
  v56 = v178;
  v54 = v221;
  v53 = v222;
  v52 = v223;
  v59 = v224;
  v51 = v225;
  v50 = v226;
  v49 = v227;
  v48 = v228;
  v43 = v229;
  v42 = v230;
  v41 = v231;
  v40 = v232;
  v39 = v233;
  v38 = v234;
  v37 = v235;
  v36 = MinX;
  v35 = v184;
  v61 = v219;
  v60 = v220;
  v46 = HIDWORD(v237);
  v47 = v237;
  v34 = 0uLL;
  v68 = v35;
LABEL_68:
  *a4 = v34;
  *(a4 + 16) = v265;
  *(a4 + 24) = v35;
  *(a4 + 32) = v36;
  *(a4 + 40) = v37;
  *(a4 + 48) = v38;
  *(a4 + 56) = v39;
  *(a4 + 64) = v40;
  *(a4 + 72) = v41;
  *(a4 + 80) = v42;
  *(a4 + 88) = v43;
  *(a4 + 112) = v47;
  *(a4 + 116) = v46;
  *(a4 + 120) = v48;
  *(a4 + 128) = v49;
  *(a4 + 136) = v50;
  *(a4 + 144) = v51;
  *(a4 + 152) = v52;
  *(a4 + 160) = v53;
  *(a4 + 168) = v54;
  *(a4 + 176) = v56;
  *(a4 + 184) = v55;
  *(a4 + 192) = v57;
  *(a4 + 200) = v58;
  *(a4 + 208) = v59;
  v186 = v262;
  *(a4 + 216) = v60;
  *(a4 + 224) = v186;
  *(a4 + 96) = v45;
  *(a4 + 104) = v44;
  v188 = v259;
  v187 = v260;
  *(a4 + 232) = v61;
  *(a4 + 240) = v187;
  v190 = v257;
  v189 = v258;
  *(a4 + 248) = v188;
  *(a4 + 256) = v189;
  v191 = v261;
  *(a4 + 264) = v190;
  *(a4 + 272) = v191;
  v192 = v255;
  *(a4 + 280) = v254;
  *(a4 + 288) = v192;
  v193 = v251;
  *(a4 + 296) = v253;
  *(a4 + 304) = v193;
  v194 = v248;
  *(a4 + 312) = v256;
  *(a4 + 320) = v194;
  v195 = v247;
  *(a4 + 328) = v250;
  *(a4 + 336) = v195;
  v196 = v246;
  *(a4 + 344) = v252;
  *(a4 + 352) = v196;
  v197 = v249;
  *(a4 + 360) = *(&v196 + 1);
  *(a4 + 368) = v197;
  v198 = width;
  *(a4 + 376) = height;
  *(a4 + 384) = v198;
  *(a4 + 392) = v263;
  *(a4 + 400) = v65;
  v199 = v242;
  *(a4 + 408) = v243;
  *(a4 + 416) = v66;
  *(a4 + 424) = v199;
  *(a4 + 432) = v67;
  v200 = v240;
  *(a4 + 440) = v241;
  *(a4 + 448) = v200;
  result = v238;
  *(a4 + 456) = x;
  *(a4 + 464) = result;
  *(a4 + 472) = v62;
  *(a4 + 480) = v68;
  *(a4 + 488) = v63;
  *(a4 + 489) = v64;
  return result;
}

double sub_2189CA498@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  rect_28 = *(a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_context);
  v8 = sub_219534AD0(rect_28);
  v9 = *(*__swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40)) + 24);
  v10 = [objc_opt_self() systemFontOfSize:13.0 weight:*MEMORY[0x277D74418]];
  v11 = [v9 scaledFontForFont_];

  v12 = sub_219BE8034();
  v13 = [v12 preferredContentSizeCategory];

  v199 = sub_219BF6924();
  *&__dst[0] = 0;
  *(&__dst[0] + 1) = 0xE000000000000000;
  sub_219BF7314();
  *(&__dst[31] + 8) = __dst[0];
  v14 = *(a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_width);
  v15 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v15);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  [v8 pointSize];
  v16 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v16);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  [v11 pointSize];
  v17 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v17);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  MEMORY[0x21CECC330](0x627548646F6F66, 0xE700000000000000);
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v18 = *(a1 + 24);
  v236 = *(a1 + 16);
  if (v18)
  {
    v19 = 0x65736C6166;
  }

  else
  {
    v19 = 1702195828;
  }

  if (v18)
  {
    v20 = 0xE500000000000000;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  MEMORY[0x21CECC330](v19, v20);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_219BF7484();

  sub_219BE2DD4();

  memcpy(__dst, __src, 0x1EAuLL);
  if (sub_2189D2D5C(__dst) != 1)
  {

    v26 = __dst[0];
    v27 = *(&__dst[1] + 1);
    rect_16 = *&__dst[1];
    v29 = *(&__dst[2] + 1);
    v28 = *&__dst[2];
    v31 = *(&__dst[3] + 1);
    v30 = *&__dst[3];
    v33 = *(&__dst[4] + 1);
    v32 = *&__dst[4];
    v35 = *(&__dst[5] + 1);
    v34 = *&__dst[5];
    v37 = *(&__dst[6] + 1);
    v36 = *&__dst[6];
    v38 = DWORD1(__dst[7]);
    v39 = __dst[7];
    v40 = *(&__dst[7] + 1);
    v42 = *(&__dst[8] + 1);
    v41 = *&__dst[8];
    v44 = *(&__dst[9] + 1);
    v43 = *&__dst[9];
    v45 = *(&__dst[10] + 1);
    v46 = *&__dst[10];
    v48 = *(&__dst[11] + 1);
    v47 = *&__dst[11];
    v50 = *(&__dst[12] + 1);
    v49 = *&__dst[12];
    v52 = *(&__dst[13] + 1);
    v51 = *&__dst[13];
    v53 = *(&__dst[14] + 1);
    rect_8 = *&__dst[14];
    v246 = __dst[15];
    v243 = *&__dst[16];
    v54 = *(&__dst[29] + 1);
    v55 = BYTE8(__dst[30]);
    rect_28 = BYTE9(__dst[30]);
    v237 = *(&__dst[16] + 1);
    v239 = *(&__dst[17] + 1);
    v229 = *&__dst[17];
    v224 = *(&__dst[18] + 1);
    v244 = *&__dst[18];
    v215 = *(&__dst[19] + 1);
    v241 = *&__dst[19];
    v233 = *(&__dst[20] + 1);
    v220 = *&__dst[20];
    v227 = *(&__dst[21] + 1);
    v209 = *&__dst[21];
    v222 = *(&__dst[22] + 1);
    v207 = *&__dst[22];
    v217 = *(&__dst[23] + 1);
    v205 = *&__dst[23];
    v212 = *(&__dst[24] + 1);
    v203 = *&__dst[24];
    v200 = *(&__dst[25] + 1);
    v201 = *&__dst[25];
    v198 = *(&__dst[26] + 1);
    v56 = *&__dst[26];
    v196 = *(&__dst[27] + 1);
    v57 = *&__dst[27];
    v192 = *(&__dst[28] + 1);
    v194 = *&__dst[28];
    v190 = *&__dst[29];
    v58 = *&__dst[30];
    goto LABEL_66;
  }

  v21 = v11;
  if (rect_28)
  {
    v232 = *(a2 + 56);
    v22 = 16.0;
    v23 = 6.0;
    v24 = 4.0;
    v25 = v199;
    if (v199)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((v199 & 1) == 0)
  {
    v232 = *(a2 + 56);
    v22 = *(a2 + 48) - (v232 + v232);
    v23 = 10.0;
    v25 = v199;
LABEL_15:
    v24 = 1.0;
    goto LABEL_16;
  }

  v22 = *(a2 + 48) + -24.0;
  v232 = 12.0;
  v24 = 4.0;
  v23 = 12.0;
  v25 = v199;
LABEL_16:
  v225 = v24;
  v59 = 8.0;
  v60 = *(a2 + 40) + 8.0;
  rect = *(a2 + 24) + 8.0;
  v61 = sub_2189CDF50(a1, v8);
  v242 = v62;
  v63 = 0.0;
  if (v61 == 0.0)
  {
    v59 = 0.0;
  }

  v240 = sub_218C26730(a2);
  v54 = *(a2 + 72);
  sub_218E0FF40();
  v245 = v61;
  v228 = v64;
  v65 = v14 - (rect + v60) - v22 - v23 - v59 - v61 - v64;
  v66 = sub_218E1008C();
  v67 = *(v54 + 16);
  v68 = *(v67 + 16);
  if (v68)
  {
    v69 = (v67 + 32);
    do
    {
      v70 = *v69++;
      if (v70 == 8)
      {
        v63 = v63 + 35.0;
      }

      --v68;
    }

    while (v68);
  }

  v247 = v8;
  v223 = v65 - v66 - v63 - v240;
  rect_8a = v23 + v22 + rect;
  rect_16 = v14;
  v230 = a2;
  if (!v18)
  {
    goto LABEL_40;
  }

  v71 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v71 = v236 & 0xFFFFFFFFFFFFLL;
  }

  if (v71 && (*(a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_allowSuggestedDescription) & 1) != 0)
  {
    [v21 lineHeight];
    v73 = v72;
    sub_21899E550();
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_219C09BA0;
    v75 = v21;
    v76 = *MEMORY[0x277D740A8];
    *(v74 + 32) = *MEMORY[0x277D740A8];
    v213 = sub_2186C6148(0, &qword_280E8DB00);
    *(v74 + 64) = v213;
    *(v74 + 40) = v75;
    v210 = v76;
    v77 = v75;
    sub_2188195F4(v74);
    swift_setDeallocating();
    sub_2189C3F7C(v74 + 32, sub_218819588);
    swift_deallocClassInstance();
    v78 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v79 = sub_219BF53D4();
    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v80 = sub_219BF5204();

    v81 = [v78 initWithString:v79 attributes:v80];

    v82 = (v25 & 1) == 0;
    v83 = v75;
    v84 = 0.1;
    if (v82)
    {
      v37 = 1;
    }

    else
    {
      v37 = 3;
    }

    if (v82)
    {
      v84 = 0.0;
    }

    *(&v189 + 1) = v84;
    if (v82)
    {
      v85 = 2;
    }

    else
    {
      v85 = 3;
    }

    [v81 boundingRectWithSize:v85 options:0 context:{v65, v73 * v37}];
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v93 = v92;

    v256.origin.x = v87;
    v256.origin.y = v89;
    v256.size.width = v91;
    v256.size.height = v93;
    v221 = ceil(CGRectGetHeight(v256));
    [v247 lineHeight];
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_219C09BA0;
    *(v94 + 32) = v210;
    *(v94 + 64) = v213;
    *(v94 + 40) = v247;
    v95 = v247;
    sub_2188195F4(v94);
    swift_setDeallocating();
    sub_2189C3F7C(v94 + 32, sub_218819588);
    swift_deallocClassInstance();
    v96 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v97 = sub_219BF53D4();
    v98 = sub_219BF5204();

    v99 = [v96 initWithString:v97 attributes:v98];

    sub_219BF6784();
    v101 = v100;
    v103 = v102;
    v105 = v104;
    v107 = v106;

    v257.origin.x = v101;
    v257.origin.y = v103;
    v257.size.width = v105;
    v257.size.height = v107;
    v108 = ceil(CGRectGetHeight(v257));
    v109 = v221 + v225 + v108;
    v110 = v232 + v232 + v109;
    if (*(v230 + 48) > v110)
    {
      v110 = *(v230 + 48);
    }

    v234 = v110;
    v111 = v60;
    v258.origin.x = rect_8a;
    v258.origin.y = v110 * 0.5 - v109 * 0.5;
    y = v258.origin.y;
    v258.size.width = v65;
    v258.size.height = v108;
    v231 = v225 + CGRectGetMaxY(v258);
    v259.origin.x = rect_8a;
    v238 = y;
    v259.origin.y = y;
    v60 = v111;
    v259.size.width = v65;
    v259.size.height = v108;
    v211 = rect_8a;
    v202 = v225 + CGRectGetMaxY(v259);
    v197 = v223;
    LODWORD(v189) = HIDWORD(v189);
    v218 = v37;
    v226 = v65;
    v113 = v234;
  }

  else
  {
LABEL_40:
    v114 = 0.1;
    HIDWORD(v189) = 0;
    if ((v25 & 1) == 0)
    {
      v114 = 0.0;
    }

    *&v189 = v114;
    v115 = 2;
    if (v25)
    {
      v115 = 3;
    }

    v218 = v115;
    sub_21899E550();
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_219C09BA0;
    v117 = *MEMORY[0x277D740A8];
    *(v116 + 32) = *MEMORY[0x277D740A8];
    *(v116 + 64) = sub_2186C6148(0, &qword_280E8DB00);
    v83 = v21;
    *(v116 + 40) = v247;
    v118 = v117;
    v119 = v247;
    sub_2188195F4(v116);
    swift_setDeallocating();
    sub_2189C3F7C(v116 + 32, sub_218819588);
    swift_deallocClassInstance();
    v120 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v121 = sub_219BF53D4();
    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v122 = sub_219BF5204();

    v123 = [v120 initWithString:v121 attributes:v122];

    sub_219BF67A4();
    v125 = v124;

    v37 = 0;
    v108 = ceil(v125);
    if (*(v230 + 48) > v232 + v232 + v108)
    {
      v113 = *(v230 + 48);
    }

    else
    {
      v113 = v232 + v232 + v108;
    }

    v238 = (v113 - v108) * 0.5;
    v211 = 0.0;
    v202 = 0.0;
    v197 = 0.0;
    v221 = 0.0;
    v231 = 0.0;
    v226 = 0.0;
  }

  v235 = v113;
  v126 = ceil((v113 - v22) * 0.5);
  v260.origin.x = rect;
  v260.origin.y = v126;
  v260.size.width = v22;
  v260.size.height = v22;
  MinX = CGRectGetMinX(v260);
  v127 = v14 - v60;
  v128 = v14 - v60 - v228;
  v129 = -sub_218E1008C() - v240;
  v130 = 0.0;
  v261.origin.y = 0.0;
  v216 = v128;
  v261.origin.x = v128;
  v261.size.width = v228;
  v261.size.height = v235;
  v262 = CGRectOffset(v261, v129, 0.0);
  x = v262.origin.x;
  width = v262.size.width;
  v208 = v262.origin.y;
  height = v262.size.height;
  v131 = *(v54 + 16);
  v132 = *(v131 + 16);
  if (v132)
  {
    v133 = (v131 + 32);
    v134 = 0.0;
    v135 = v247;
    v136 = v199;
    v36 = v218;
    do
    {
      v137 = *v133++;
      if (v137 == 8)
      {
        v130 = v134 + 35.0;
        v134 = v134 + 35.0;
      }

      --v132;
    }

    while (v132);
  }

  else
  {
    v135 = v247;
    v136 = v199;
    v36 = v218;
  }

  v263.size.width = v65;
  v138 = 0.0;
  v263.origin.x = rect_8a;
  v263.origin.y = v238;
  v263.size.height = v108;
  v264 = CGRectOffset(v263, v130, 0.0);
  v219 = v264.origin.x;
  v193 = v264.size.width;
  v195 = v264.origin.y;
  v191 = v264.size.height;
  v139 = *(v54 + 16);
  v140 = *(v139 + 16);
  v141 = 0.0;
  if (v140)
  {
    v142 = (v139 + 32);
    v143 = 0.0;
    do
    {
      v144 = *v142++;
      if (v144 == 8)
      {
        v141 = v143 + 35.0;
        v143 = v143 + 35.0;
      }

      --v140;
    }

    while (v140);
  }

  v164 = MinX + -12.0;
  v265.origin.y = v231;
  v171 = ceil(v235);
  v265.origin.x = v211;
  v265.size.width = v226;
  v265.size.height = v221;
  v266 = CGRectOffset(v265, v141, 0.0);
  v167 = v266.origin.y;
  v169 = v266.origin.x;
  v165 = v266.size.height;
  v166 = v266.size.width;
  v145 = *(v54 + 16);
  v146 = *(v145 + 16);
  if (v146)
  {
    v147 = (v145 + 32);
    v138 = 0.0;
    v148 = 0.0;
    do
    {
      v149 = *v147++;
      if (v149 == 8)
      {
        v138 = v148 + 35.0;
        v148 = v148 + 35.0;
      }

      --v146;
    }

    while (v146);
  }

  v267.origin.x = rect;
  v267.origin.y = v126;
  v267.size.width = v22;
  v267.size.height = v22;
  v268 = CGRectOffset(v267, v138, 0.0);
  v162 = v268.origin.y;
  v163 = v268.origin.x;
  v160 = v268.size.height;
  v161 = v268.size.width;
  v268.origin.x = rect_8a;
  v268.origin.y = v238;
  v268.size.width = v65;
  v268.size.height = v108;
  v269 = CGRectIntegral(v268);
  v186 = v269.origin.y;
  v188 = v269.origin.x;
  v184 = v269.size.height;
  v185 = v269.size.width;
  v269.origin.x = rect_8a;
  v269.origin.y = v238;
  v269.size.width = v223;
  v269.size.height = v108;
  v270 = CGRectIntegral(v269);
  v150 = v270.origin.x;
  v157 = v270.origin.x;
  v182 = v270.size.width;
  v183 = v270.origin.y;
  v181 = v270.size.height;
  v270.origin.x = v211;
  v270.origin.y = v231;
  v270.size.width = v226;
  v270.size.height = v221;
  v271 = CGRectIntegral(v270);
  v178 = v271.origin.x;
  v179 = v271.size.width;
  v180 = v271.origin.y;
  v175 = v271.size.height;
  v271.origin.x = v211;
  v271.origin.y = v202;
  v271.size.width = v197;
  v271.size.height = v221;
  v272 = CGRectIntegral(v271);
  v177 = v272.origin.x;
  v174 = v272.origin.y;
  v151 = v272.size.width;
  v152 = v272.size.height;
  v272.origin.x = rect;
  v272.origin.y = v126;
  v272.size.width = v22;
  v272.size.height = v22;
  v273 = CGRectIntegral(v272);
  v153 = v273.origin.x;
  v158 = v273.size.width;
  v159 = v273.origin.y;
  v176 = v273.size.height;
  v273.origin.x = rect;
  v273.origin.y = v126;
  v273.size.width = v22;
  v273.size.height = v22;
  v173 = CGRectGetMinX(v273) + -1.0;
  v274.origin.x = rect;
  v274.origin.y = v126;
  v274.size.width = v22;
  v274.size.height = v22;
  rect_8 = CGRectGetMinY(v274) + -1.0;
  v275.origin.x = rect;
  v275.origin.y = v126;
  v275.size.width = v22;
  v275.size.height = v22;
  v172 = CGRectGetWidth(v275) + 2.0;
  v276.origin.x = rect;
  v276.origin.y = v126;
  v276.size.width = v22;
  v276.size.height = v22;
  *&v246 = CGRectGetHeight(v276) + 2.0;
  v277.size.width = 8.0;
  v277.size.height = 8.0;
  v277.origin.y = (v22 + -8.0) * 0.5 + v126;
  v277.origin.x = v164;
  v278 = CGRectIntegral(v277);
  *(&v246 + 1) = *&v278.origin.x;
  v243 = v278.origin.y;
  v237 = v278.size.width;
  v229 = v278.size.height;
  v278.origin.x = v127 - v245;
  v278.size.height = v242;
  v278.origin.y = (v235 - v242) * 0.5;
  v278.size.width = v245;
  v279 = CGRectIntegral(v278);
  v239 = v279.origin.x;
  v241 = v279.size.height;
  v244 = v279.origin.y;
  v224 = v279.size.width;
  v279.origin.y = 0.0;
  v279.origin.x = v216;
  v279.size.width = v228;
  v279.size.height = v235;
  v280 = CGRectIntegral(v279);
  v215 = v280.origin.x;
  v220 = v280.origin.y;
  v233 = v280.size.width;
  v209 = v280.size.height;
  v280.origin.x = x;
  v280.size.width = width;
  v280.origin.y = v208;
  v280.size.height = height;
  v281 = CGRectIntegral(v280);
  v227 = v281.origin.x;
  v205 = v281.size.height;
  v207 = v281.origin.y;
  v222 = v281.size.width;
  v281.origin.x = v219;
  v281.size.width = v193;
  v281.origin.y = v195;
  v281.size.height = v191;
  v282 = CGRectIntegral(v281);
  v217 = v282.origin.x;
  v201 = v282.size.height;
  v203 = v282.origin.y;
  v212 = v282.size.width;
  v282.origin.y = v167;
  v282.origin.x = v169;
  v282.size.height = v165;
  v282.size.width = v166;
  v283 = CGRectIntegral(v282);
  v154 = v283.origin.x;
  v168 = v283.size.height;
  v170 = v283.origin.y;
  v155 = v283.size.width;
  v283.origin.y = v162;
  v283.origin.x = v163;
  v283.size.height = v160;
  v283.size.width = v161;
  v284 = CGRectIntegral(v283);
  v55 = v136 & 1;
  __src[0] = 0uLL;
  *&__src[1] = rect_16;
  *(&__src[1] + 1) = v171;
  *&__src[2] = v188;
  *(&__src[2] + 1) = v186;
  *&__src[3] = v185;
  *(&__src[3] + 1) = v184;
  *&__src[4] = v150;
  *(&__src[4] + 1) = v183;
  *&__src[5] = v182;
  *(&__src[5] + 1) = v181;
  *&__src[6] = v36;
  *(&__src[6] + 1) = v37;
  *&__src[7] = v189;
  *(&__src[7] + 1) = v178;
  *&__src[8] = v180;
  *(&__src[8] + 1) = v179;
  *&__src[9] = v175;
  *(&__src[9] + 1) = v177;
  *&__src[10] = v174;
  v45 = v151;
  *(&__src[10] + 1) = v151;
  v47 = v152;
  *&__src[11] = v152;
  v48 = v153;
  *(&__src[11] + 1) = v153;
  *&__src[12] = v159;
  *(&__src[12] + 1) = v158;
  *&__src[13] = v176;
  *(&__src[13] + 1) = v173;
  *&__src[14] = rect_8;
  *(&__src[14] + 1) = v172;
  __src[15] = v246;
  *&__src[16] = v243;
  *(&__src[16] + 1) = v237;
  *&__src[17] = v229;
  *(&__src[17] + 1) = v239;
  *&__src[18] = v244;
  *(&__src[18] + 1) = v224;
  *&__src[19] = v241;
  *(&__src[19] + 1) = v215;
  *&__src[20] = v220;
  *(&__src[20] + 1) = v233;
  *&__src[21] = v209;
  *(&__src[21] + 1) = v227;
  *&__src[22] = v207;
  *(&__src[22] + 1) = v222;
  *&__src[23] = v205;
  *(&__src[23] + 1) = v217;
  *&__src[24] = v203;
  *(&__src[24] + 1) = v212;
  *&__src[25] = v201;
  v198 = v155;
  v200 = v154;
  *(&__src[25] + 1) = v154;
  v56 = v170;
  *&__src[26] = v170;
  *(&__src[26] + 1) = v155;
  v57 = v168;
  *&__src[27] = v168;
  v194 = v284.origin.y;
  v196 = v284.origin.x;
  *(&__src[27] + 1) = *&v284.origin.x;
  *&__src[28] = v284.origin.y;
  v190 = v284.size.height;
  v192 = v284.size.width;
  *(&__src[28] + 1) = *&v284.size.width;
  *&__src[29] = v284.size.height;
  *(&__src[29] + 1) = v54;
  *&__src[30] = v171;
  BYTE8(__src[30]) = v55;
  BYTE9(__src[30]) = rect_28;
  nullsub_1(__src);
  memcpy(v253, __src, sizeof(v253));
  swift_retain_n();

  sub_219BE2DE4();

  v50 = v158;
  v49 = v159;
  v46 = v174;
  v43 = v175;
  v44 = v177;
  v40 = v178;
  v42 = v179;
  v41 = v180;
  v35 = v181;
  v34 = v182;
  v33 = v183;
  v31 = v184;
  v32 = v157;
  v30 = v185;
  v29 = v186;
  v28 = v188;
  v27 = v171;
  v51 = v176;
  v39 = v189;
  v53 = v172;
  v52 = v173;
  v38 = HIDWORD(v189);
  v26 = 0uLL;
  v58 = v171;
LABEL_66:
  *a4 = v26;
  *(a4 + 16) = rect_16;
  *(a4 + 24) = v27;
  *(a4 + 32) = v28;
  *(a4 + 40) = v29;
  *(a4 + 48) = v30;
  *(a4 + 56) = v31;
  *(a4 + 64) = v32;
  *(a4 + 72) = v33;
  *(a4 + 80) = v34;
  *(a4 + 88) = v35;
  *(a4 + 112) = v39;
  *(a4 + 116) = v38;
  *(a4 + 120) = v40;
  *(a4 + 128) = v41;
  *(a4 + 136) = v42;
  *(a4 + 144) = v43;
  *(a4 + 152) = v44;
  *(a4 + 160) = v46;
  *(a4 + 168) = v45;
  *(a4 + 176) = v47;
  *(a4 + 184) = v48;
  *(a4 + 192) = v49;
  *(a4 + 200) = v50;
  *(a4 + 208) = v51;
  *(a4 + 216) = v52;
  *(a4 + 224) = rect_8;
  *(a4 + 96) = v36;
  *(a4 + 104) = v37;
  *(a4 + 232) = v53;
  *(a4 + 240) = v246;
  *(a4 + 256) = v243;
  *(a4 + 264) = v237;
  *(a4 + 272) = v229;
  *(a4 + 280) = v239;
  *(a4 + 288) = v244;
  *(a4 + 296) = v224;
  *(a4 + 304) = v241;
  *(a4 + 312) = v215;
  *(a4 + 320) = v220;
  *(a4 + 328) = v233;
  *(a4 + 336) = v209;
  *(a4 + 344) = v227;
  *(a4 + 352) = v207;
  *(a4 + 360) = v222;
  *(a4 + 368) = v205;
  *(a4 + 376) = v217;
  *(a4 + 384) = v203;
  *(a4 + 392) = v212;
  *(a4 + 400) = v201;
  *(a4 + 408) = v200;
  *(a4 + 416) = v56;
  *(a4 + 424) = v198;
  *(a4 + 432) = v57;
  *(a4 + 440) = v196;
  *(a4 + 448) = v194;
  result = v190;
  *(a4 + 456) = v192;
  *(a4 + 464) = v190;
  *(a4 + 472) = v54;
  *(a4 + 480) = v58;
  *(a4 + 488) = v55;
  *(a4 + 489) = rect_28;
  return result;
}

double sub_2189CB7CC@<D0>(uint64_t a1@<X0>, double a2@<X1>, double a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X5>, double a7@<X6>, uint64_t (*a8)(void)@<X7>, uint64_t a9@<X8>, uint64_t (*a10)(void), uint64_t a11)
{
  v255 = a8;
  v274 = a7;
  *&v273 = a6;
  v16 = a4(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v212 - v18;
  v271 = *&a5;
  sub_2189C3FDC(a1, &v212 - v18, a5);
  __swift_project_boxed_opaque_existential_1((*&a3 + 16), *(*&a3 + 40));
  DWORD2(v273) = *(*&a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_context);
  v20 = sub_219534AD0(SBYTE8(v273));
  v21 = *(*__swift_project_boxed_opaque_existential_1((*&a3 + 16), *(*&a3 + 40)) + 24);
  v22 = [objc_opt_self() systemFontOfSize:13.0 weight:*MEMORY[0x277D74418]];
  v23 = COERCE_DOUBLE([v21 scaledFontForFont_]);

  v24 = sub_219BE8034();
  v25 = [v24 preferredContentSizeCategory];

  LODWORD(MinX) = sub_219BF6924();
  *&v281[0] = 0;
  *(&v281[0] + 1) = 0xE000000000000000;
  sub_219BF7314();
  v282 = v281[0];
  v275 = a2;
  v26 = *(*&a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_width);
  v27 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v27);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v276 = v20;
  [v20 pointSize];
  v28 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v28);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v29 = v19;
  [*&v23 pointSize];
  v30 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v30);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  MEMORY[0x21CECC330](v273, *&v274);
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v31 = *(v19 + 2);
  v32 = *(v29 + 24);
  if (v32)
  {
    v33 = 0x65736C6166;
  }

  else
  {
    v33 = 1702195828;
  }

  if (v32)
  {
    v34 = 0xE500000000000000;
  }

  else
  {
    v34 = 0xE400000000000000;
  }

  MEMORY[0x21CECC330](v33, v34);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v35 = v29 + *(v17 + 48);
  v36 = *(v35 + 16);
  v37 = *(v35 + 17);
  v281[0] = *v35;
  LOBYTE(v281[1]) = v36;
  BYTE1(v281[1]) = v37;
  sub_219BF7484();
  v38 = v282;
  v254 = a3;
  v281[0] = v282;

  sub_219BE2DD4();

  memcpy(v281, v280, 0x1EAuLL);
  if (sub_2189D2D5C(v281) != 1)
  {
    sub_2189C3F7C(v29, v255);

    v45 = v281[0];
    v46 = *(&v281[1] + 1);
    v274 = *&v281[1];
    v48 = *(&v281[2] + 1);
    v47 = *&v281[2];
    v50 = *(&v281[3] + 1);
    v49 = *&v281[3];
    v52 = *(&v281[4] + 1);
    v51 = *&v281[4];
    v54 = *(&v281[5] + 1);
    v53 = *&v281[5];
    v55 = *(&v281[6] + 1);
    v56 = *&v281[6];
    v57 = DWORD1(v281[7]);
    v58 = v281[7];
    v59 = *(&v281[7] + 1);
    v61 = *(&v281[8] + 1);
    v60 = *&v281[8];
    v63 = *(&v281[9] + 1);
    v62 = *&v281[9];
    v65 = *(&v281[10] + 1);
    v64 = *&v281[10];
    v67 = *(&v281[11] + 1);
    v66 = *&v281[11];
    v68 = *(&v281[12] + 1);
    v69 = *&v281[12];
    v71 = *(&v281[13] + 1);
    v70 = *&v281[13];
    v72 = *(&v281[14] + 1);
    v275 = *&v281[14];
    v273 = v281[15];
    v271 = *&v281[16];
    v73 = *(&v281[29] + 1);
    v74 = BYTE8(v281[30]);
    v75 = BYTE9(v281[30]);
    v268 = *(&v281[16] + 1);
    v270 = *(&v281[17] + 1);
    v267 = *&v281[17];
    v263 = *(&v281[18] + 1);
    MinX = *&v281[18];
    v269 = *(&v281[19] + 1);
    v265 = *&v281[19];
    v261 = v281[20];
    x = *(&v281[21] + 1);
    v266 = *&v281[21];
    v258 = *(&v281[22] + 1);
    v264 = *&v281[22];
    width = *(&v281[23] + 1);
    v262 = *&v281[23];
    height = *(&v281[24] + 1);
    v254 = *&v281[24];
    v76 = *(&v281[25] + 1);
    *&v260 = *&v281[25];
    v77 = *(&v281[26] + 1);
    v253 = *&v281[26];
    v251 = *(&v281[27] + 1);
    v252 = *&v281[27];
    v249 = *(&v281[28] + 1);
    v250 = *&v281[28];
    v78 = *&v281[29];
    v79 = *&v281[30];
    goto LABEL_65;
  }

  v229 = *(&v38 + 1);
  v262 = v23;
  if (BYTE8(v273))
  {
    v269 = *(*&v275 + 56);
    v39 = 16.0;
    v40 = 6.0;
    v41 = 4.0;
    v42 = v276;
    v43 = LOBYTE(MinX);
    v44 = v271;
    if (LOBYTE(MinX))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v42 = v276;
  v43 = LOBYTE(MinX);
  v44 = v271;
  if ((LOBYTE(MinX) & 1) == 0)
  {
    v80 = *(*&v275 + 48);
    v269 = *(*&v275 + 56);
    v39 = v80 - (v269 + v269);
    v40 = 10.0;
LABEL_15:
    v41 = 1.0;
    goto LABEL_16;
  }

  v39 = *(*&v275 + 48) + -24.0;
  v269 = 12.0;
  v41 = 4.0;
  v40 = 12.0;
LABEL_16:
  v263 = v41;
  v81 = *&v275;
  v82 = 8.0;
  v83 = *(*&v275 + 40) + 8.0;
  *&v273 = *(*&v275 + 24) + 8.0;
  v84 = *&v273 + v83;
  v85 = sub_2189CE3E4(v29, v42, a10, a11, *&v44);
  v266 = v86;
  v87 = 0.0;
  if (v85 == 0.0)
  {
    v82 = 0.0;
  }

  v267 = sub_218C26730(v81);
  v73 = *(v81 + 72);
  sub_218E0FF40();
  v270 = v85;
  v264 = v88;
  v89 = v26 - v84 - v39 - v40 - v82 - v85 - v88;
  v90 = sub_218E1008C();
  v91 = *(v73 + 16);
  v92 = *(v91 + 16);
  if (v92)
  {
    v93 = (v91 + 32);
    do
    {
      v94 = *v93++;
      if (v94 == 8)
      {
        v87 = v87 + 35.0;
      }

      --v92;
    }

    while (v92);
  }

  v228 = v38;
  *(&v261 + 1) = v89 - v90 - v87 - v267;
  v271 = v40 + v39 + *&v273;
  v274 = v26;
  v230 = v29;
  v268 = v89;
  if (!v32)
  {
    goto LABEL_39;
  }

  v95 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v95 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v95 && (*(*&v275 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_allowSuggestedDescription) & 1) != 0)
  {
    v96 = v262;
    [*&v262 lineHeight];
    v98 = v97;
    sub_21899E550();
    v265 = v99;
    v100 = swift_allocObject();
    v260 = xmmword_219C09BA0;
    *(v100 + 16) = xmmword_219C09BA0;
    v101 = *MEMORY[0x277D740A8];
    *(v100 + 32) = *MEMORY[0x277D740A8];
    x = COERCE_DOUBLE(sub_2186C6148(0, &qword_280E8DB00));
    *(v100 + 64) = x;
    *(v100 + 40) = v96;
    v258 = COERCE_DOUBLE(v101);
    v102 = *&v96;
    sub_2188195F4(v100);
    swift_setDeallocating();
    width = COERCE_DOUBLE(sub_218819588);
    sub_2189C3F7C(v100 + 32, sub_218819588);
    swift_deallocClassInstance();
    v103 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v104 = sub_219BF53D4();
    type metadata accessor for Key(0);
    height = v105;
    *&v253 = COERCE_DOUBLE(sub_218748C68(&qword_280E8E118, type metadata accessor for Key));
    v106 = sub_219BF5204();

    v107 = [v103 initWithString:v104 attributes:v106];

    v108 = 0.1;
    if (LOBYTE(MinX))
    {
      v109 = 3;
    }

    else
    {
      v109 = 1;
    }

    if ((LOBYTE(MinX) & 1) == 0)
    {
      v108 = 0.0;
    }

    *(&v248 + 1) = v108;
    if (LOBYTE(MinX))
    {
      v110 = 3;
    }

    else
    {
      v110 = 2;
    }

    [v107 boundingRectWithSize:v110 options:0 context:{v89, v98 * v109}];
    v112 = v111;
    v114 = v113;
    v116 = v115;
    v118 = v117;

    v283.origin.x = v112;
    v283.origin.y = v114;
    v283.size.width = v116;
    v283.size.height = v118;
    *&v261 = ceil(CGRectGetHeight(v283));
    v119 = v276;
    [v276 lineHeight];
    v26 = v274;
    v120 = swift_allocObject();
    *(v120 + 16) = v260;
    v121 = x;
    *(v120 + 32) = v258;
    *(v120 + 64) = v121;
    *(v120 + 40) = v119;
    v122 = v119;
    sub_2188195F4(v120);
    swift_setDeallocating();
    sub_2189C3F7C(v120 + 32, *&width);
    swift_deallocClassInstance();
    v123 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v124 = sub_219BF53D4();
    v125 = sub_219BF5204();

    v126 = [v123 initWithString:v124 attributes:v125];

    sub_219BF6784();
    v128 = v127;
    v130 = v129;
    v132 = v131;
    v134 = v133;

    v284.origin.x = v128;
    v284.origin.y = v130;
    v284.size.width = v132;
    v284.size.height = v134;
    v135 = ceil(CGRectGetHeight(v284));
    v136 = v263;
    v137 = *&v261 + v263 + v135;
    v138 = v269 + v269 + v137;
    if (*(*&v275 + 48) > v138)
    {
      v138 = *(*&v275 + 48);
    }

    v269 = v138;
    v139 = v83;
    v141 = v271;
    v285.origin.x = v271;
    v285.origin.y = v138 * 0.5 - v137 * 0.5;
    y = v285.origin.y;
    v285.size.width = v89;
    v285.size.height = v135;
    v265 = v136 + CGRectGetMaxY(v285);
    v286.origin.x = v141;
    v275 = y;
    v286.origin.y = y;
    v83 = v139;
    v286.size.width = v89;
    v286.size.height = v135;
    v252 = v136 + CGRectGetMaxY(v286);
    *&v253 = v141;
    v251 = *(&v261 + 1);
    LODWORD(v248) = HIDWORD(v248);
    v55 = v109;
    v227 = v109;
    v43 = LOBYTE(MinX);
    v263 = v89;
    v142 = v269;
  }

  else
  {
LABEL_39:
    v143 = 0.1;
    HIDWORD(v248) = 0;
    if ((v43 & 1) == 0)
    {
      v143 = 0.0;
    }

    *&v248 = v143;
    v144 = 2;
    if (v43)
    {
      v144 = 3;
    }

    v227 = v144;
    sub_21899E550();
    v145 = swift_allocObject();
    *(v145 + 16) = xmmword_219C09BA0;
    v146 = *MEMORY[0x277D740A8];
    *(v145 + 32) = *MEMORY[0x277D740A8];
    *(v145 + 64) = sub_2186C6148(0, &qword_280E8DB00);
    v147 = v276;
    *(v145 + 40) = v276;
    v148 = v146;
    v149 = v147;
    sub_2188195F4(v145);
    swift_setDeallocating();
    sub_2189C3F7C(v145 + 32, sub_218819588);
    swift_deallocClassInstance();
    v150 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v151 = sub_219BF53D4();
    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v152 = sub_219BF5204();

    v153 = [v150 initWithString:v151 attributes:v152];

    sub_219BF67A4();
    v155 = v154;

    v55 = 0;
    v135 = ceil(v155);
    if (*(*&v275 + 48) > v269 + v269 + v135)
    {
      v142 = *(*&v275 + 48);
    }

    else
    {
      v142 = v269 + v269 + v135;
    }

    v275 = (v142 - v135) * 0.5;
    v252 = 0.0;
    *&v253 = 0.0;
    v251 = 0.0;
    *&v261 = 0;
    v265 = 0.0;
    v263 = 0.0;
  }

  v269 = v142;
  v156 = ceil((v142 - v39) * 0.5);
  *&v287.origin.x = v273;
  v287.origin.y = v156;
  v287.size.width = v39;
  v287.size.height = v39;
  MinX = CGRectGetMinX(v287);
  v157 = v26 - v83;
  v158 = v264;
  v159 = v26 - v83 - v264;
  v160 = -sub_218E1008C() - v267;
  v161 = 0.0;
  v288.origin.y = 0.0;
  *&v260 = v159;
  v288.origin.x = v159;
  v288.size.width = v158;
  v162 = v269;
  v288.size.height = v269;
  v289 = CGRectOffset(v288, v160, 0.0);
  v258 = v289.origin.y;
  x = v289.origin.x;
  height = v289.size.height;
  width = v289.size.width;
  v163 = *(v73 + 16);
  v164 = *(v163 + 16);
  v165 = v228;
  if (v164)
  {
    v166 = (v163 + 32);
    v167 = 0.0;
    v75 = BYTE8(v273);
    v168 = v262;
    do
    {
      v169 = *v166++;
      if (v169 == 8)
      {
        v161 = v167 + 35.0;
        v167 = v167 + 35.0;
      }

      --v164;
    }

    while (v164);
  }

  else
  {
    v75 = BYTE8(v273);
    v168 = v262;
  }

  v170 = v162 - v266;
  v171 = 0.0;
  v290.origin.x = v271;
  v290.origin.y = v275;
  v290.size.width = v268;
  v290.size.height = v135;
  v291 = CGRectOffset(v290, v161, 0.0);
  v249 = v291.origin.y;
  v250 = v291.origin.x;
  v224 = v291.size.height;
  v225 = v291.size.width;
  v172 = *(v73 + 16);
  v173 = *(v172 + 16);
  v174 = 0.0;
  if (v173)
  {
    v175 = (v172 + 32);
    v176 = 0.0;
    do
    {
      v177 = *v175++;
      if (v177 == 8)
      {
        v174 = v176 + 35.0;
        v176 = v176 + 35.0;
      }

      --v173;
    }

    while (v173);
  }

  *(&v273 + 1) = MinX + -12.0;
  v267 = (v39 + -8.0) * 0.5 + v156;
  MinX = v157 - v270;
  v262 = v170 * 0.5;
  v226 = ceil(v269);
  v178 = *&v253;
  *&v292.origin.x = v253;
  v292.origin.y = v265;
  v292.size.width = v263;
  v179 = *&v261;
  *&v292.size.height = v261;
  v293 = CGRectOffset(v292, v174, 0.0);
  v222 = v293.origin.y;
  v223 = v293.origin.x;
  v220 = v293.size.height;
  v221 = v293.size.width;
  v180 = *(v73 + 16);
  v181 = *(v180 + 16);
  if (v181)
  {
    v182 = (v180 + 32);
    v171 = 0.0;
    v183 = 0.0;
    do
    {
      v184 = *v182++;
      if (v184 == 8)
      {
        v171 = v183 + 35.0;
        v183 = v183 + 35.0;
      }

      --v181;
    }

    while (v181);
  }

  v185 = *&v273;
  *&v294.origin.x = v273;
  v294.origin.y = v156;
  v294.size.width = v39;
  v294.size.height = v39;
  v295 = CGRectOffset(v294, v171, 0.0);
  v218 = v295.origin.y;
  v219 = v295.origin.x;
  v216 = v295.size.height;
  v217 = v295.size.width;
  v186 = v271;
  v295.origin.x = v271;
  v187 = v275;
  v295.origin.y = v275;
  v295.size.width = v268;
  v295.size.height = v135;
  v296 = CGRectIntegral(v295);
  v246 = v296.origin.y;
  v247 = v296.origin.x;
  v244 = v296.size.height;
  v245 = v296.size.width;
  v296.origin.x = v186;
  v296.origin.y = v187;
  v296.size.width = *(&v261 + 1);
  v296.size.height = v135;
  v297 = CGRectIntegral(v296);
  v188 = v297.origin.x;
  v213 = v297.origin.x;
  v242 = v297.size.width;
  v243 = v297.origin.y;
  v241 = v297.size.height;
  v297.origin.x = v178;
  v297.origin.y = v265;
  v297.size.width = v263;
  v297.size.height = v179;
  v298 = CGRectIntegral(v297);
  v239 = v298.origin.y;
  v240 = v298.origin.x;
  v236 = v298.size.width;
  v238 = v298.size.height;
  v298.origin.x = v178;
  v298.size.width = v251;
  v298.origin.y = v252;
  v298.size.height = v179;
  v299 = CGRectIntegral(v298);
  v237 = v299.origin.x;
  v233 = v299.size.width;
  v234 = v299.origin.y;
  v66 = v299.size.height;
  v299.origin.x = v185;
  v299.origin.y = v156;
  v299.size.width = v39;
  v299.size.height = v39;
  v300 = CGRectIntegral(v299);
  v189 = v300.origin.x;
  v214 = v300.size.width;
  v215 = v300.origin.y;
  v235 = v300.size.height;
  v300.origin.x = v185;
  v300.origin.y = v156;
  v300.size.width = v39;
  v300.size.height = v39;
  v232 = CGRectGetMinX(v300) + -1.0;
  v301.origin.x = v185;
  v301.origin.y = v156;
  v301.size.width = v39;
  v301.size.height = v39;
  v275 = CGRectGetMinY(v301) + -1.0;
  v302.origin.x = v185;
  v302.origin.y = v156;
  v302.size.width = v39;
  v302.size.height = v39;
  v231 = CGRectGetWidth(v302) + 2.0;
  v303.origin.x = v185;
  v303.origin.y = v156;
  v303.size.width = v39;
  v303.size.height = v39;
  *&v273 = CGRectGetHeight(v303) + 2.0;
  v304.size.width = 8.0;
  v304.size.height = 8.0;
  v304.origin.x = *(&v273 + 1);
  v304.origin.y = v267;
  v305 = CGRectIntegral(v304);
  *(&v273 + 1) = *&v305.origin.x;
  v271 = v305.origin.y;
  v267 = v305.size.height;
  v268 = v305.size.width;
  v305.origin.x = MinX;
  v305.origin.y = v262;
  v305.size.width = v270;
  v305.size.height = v266;
  v306 = CGRectIntegral(v305);
  v270 = v306.origin.x;
  MinX = v306.origin.y;
  v263 = v306.size.width;
  v265 = v306.size.height;
  v306.origin.y = 0.0;
  *&v306.origin.x = v260;
  v306.size.width = v264;
  v306.size.height = v269;
  v307 = CGRectIntegral(v306);
  v269 = v307.origin.x;
  *&v261 = v307.origin.y;
  *(&v261 + 1) = *&v307.size.width;
  v266 = v307.size.height;
  v307.origin.y = v258;
  v307.origin.x = x;
  v307.size.height = height;
  v307.size.width = width;
  v308 = CGRectIntegral(v307);
  v258 = v308.size.width;
  x = v308.origin.x;
  v264 = v308.origin.y;
  v262 = v308.size.height;
  v308.origin.y = v249;
  v308.origin.x = v250;
  v308.size.height = v224;
  v308.size.width = v225;
  v309 = CGRectIntegral(v308);
  height = v309.size.width;
  width = v309.origin.x;
  v190 = v309.origin.y;
  *&v260 = v309.size.height;
  v309.origin.y = v222;
  v309.origin.x = v223;
  v309.size.height = v220;
  v309.size.width = v221;
  v310 = CGRectIntegral(v309);
  v224 = v310.size.width;
  v225 = v310.origin.x;
  v191 = v310.origin.y;
  v192 = v310.size.height;
  v310.origin.y = v218;
  v310.origin.x = v219;
  v310.size.height = v216;
  v310.size.width = v217;
  v311 = CGRectIntegral(v310);
  v74 = v43 & 1;
  v280[0] = 0uLL;
  *&v280[1] = v274;
  v193 = v226;
  *(&v280[1] + 1) = v226;
  *&v280[2] = v247;
  *(&v280[2] + 1) = v246;
  *&v280[3] = v245;
  *(&v280[3] + 1) = v244;
  *&v280[4] = v188;
  *(&v280[4] + 1) = v243;
  *&v280[5] = v242;
  *(&v280[5] + 1) = v241;
  v56 = v227;
  *&v280[6] = v227;
  *(&v280[6] + 1) = v55;
  *&v280[7] = v248;
  *(&v280[7] + 1) = v240;
  *&v280[8] = v239;
  *(&v280[8] + 1) = v236;
  *&v280[9] = v238;
  *(&v280[9] + 1) = v237;
  *&v280[10] = v234;
  *(&v280[10] + 1) = v233;
  *&v280[11] = v66;
  v194 = v189;
  *(&v280[11] + 1) = v189;
  v68 = v214;
  v195 = v215;
  *&v280[12] = v215;
  *(&v280[12] + 1) = v214;
  *&v280[13] = v235;
  *(&v280[13] + 1) = v232;
  *&v280[14] = v275;
  *(&v280[14] + 1) = v231;
  v280[15] = v273;
  *&v280[16] = v271;
  *(&v280[16] + 1) = v268;
  *&v280[17] = v267;
  *(&v280[17] + 1) = v270;
  *&v280[18] = MinX;
  *(&v280[18] + 1) = v263;
  *&v280[19] = v265;
  *(&v280[19] + 1) = v269;
  v280[20] = v261;
  *&v280[21] = v266;
  *(&v280[21] + 1) = x;
  *&v280[22] = v264;
  *(&v280[22] + 1) = v258;
  *&v280[23] = v262;
  *(&v280[23] + 1) = width;
  *&v253 = v191;
  v254 = v190;
  *&v280[24] = v190;
  *(&v280[24] + 1) = height;
  *&v280[25] = v260;
  v76 = v225;
  *(&v280[25] + 1) = v225;
  *&v280[26] = v191;
  v77 = v224;
  *(&v280[26] + 1) = v224;
  v251 = v311.origin.x;
  v252 = v192;
  *&v280[27] = v192;
  *(&v280[27] + 1) = *&v311.origin.x;
  v249 = v311.size.width;
  v250 = v311.origin.y;
  *&v280[28] = v311.origin.y;
  *(&v280[28] + 1) = *&v311.size.width;
  v78 = v311.size.height;
  *&v280[29] = v311.size.height;
  *(&v280[29] + 1) = v73;
  *&v280[30] = v226;
  BYTE8(v280[30]) = v74;
  BYTE9(v280[30]) = v75;
  nullsub_1(v280);
  memcpy(v279, v280, sizeof(v279));
  v277 = v165;
  v278 = v229;
  swift_retain_n();

  sub_219BE2DE4();

  sub_2189C3F7C(v230, v255);
  v69 = v195;
  v67 = v194;
  v65 = v233;
  v64 = v234;
  v63 = v237;
  v62 = v238;
  v60 = v239;
  v59 = v240;
  v54 = v241;
  v53 = v242;
  v52 = v243;
  v50 = v244;
  v51 = v213;
  v49 = v245;
  v48 = v246;
  v47 = v247;
  v46 = v193;
  v70 = v235;
  v61 = v236;
  v58 = v248;
  v72 = v231;
  v71 = v232;
  v57 = HIDWORD(v248);
  v45 = 0uLL;
  v79 = v46;
LABEL_65:
  *a9 = v45;
  *(a9 + 16) = v274;
  *(a9 + 24) = v46;
  *(a9 + 32) = v47;
  *(a9 + 40) = v48;
  *(a9 + 48) = v49;
  *(a9 + 56) = v50;
  *(a9 + 64) = v51;
  *(a9 + 72) = v52;
  *(a9 + 80) = v53;
  *(a9 + 88) = v54;
  *(a9 + 112) = v58;
  *(a9 + 116) = v57;
  *(a9 + 120) = v59;
  *(a9 + 128) = v60;
  *(a9 + 136) = v61;
  *(a9 + 144) = v62;
  *(a9 + 152) = v63;
  *(a9 + 160) = v64;
  *(a9 + 168) = v65;
  *(a9 + 176) = v66;
  *(a9 + 184) = v67;
  *(a9 + 192) = v69;
  *(a9 + 200) = v68;
  *(a9 + 208) = v70;
  v196 = v275;
  *(a9 + 216) = v71;
  *(a9 + 224) = v196;
  *(a9 + 96) = v56;
  *(a9 + 104) = v55;
  v197 = v273;
  *(a9 + 232) = v72;
  *(a9 + 240) = v197;
  v198 = v271;
  *(a9 + 248) = *(&v197 + 1);
  *(a9 + 256) = v198;
  v199 = v267;
  *(a9 + 264) = v268;
  *(a9 + 272) = v199;
  v200 = MinX;
  *(a9 + 280) = v270;
  *(a9 + 288) = v200;
  v201 = v265;
  *(a9 + 296) = v263;
  *(a9 + 304) = v201;
  v202 = v261;
  *(a9 + 312) = v269;
  *(a9 + 320) = v202;
  v203 = v266;
  *(a9 + 328) = *(&v202 + 1);
  *(a9 + 336) = v203;
  v204 = v264;
  *(a9 + 344) = x;
  *(a9 + 352) = v204;
  v205 = v262;
  *(a9 + 360) = v258;
  *(a9 + 368) = v205;
  v206 = v254;
  *(a9 + 376) = width;
  *(a9 + 384) = v206;
  v207 = v260;
  *(a9 + 392) = height;
  *(a9 + 400) = v207;
  v208 = v252;
  v209 = v253;
  *(a9 + 408) = v76;
  *(a9 + 416) = v209;
  *(a9 + 424) = v77;
  *(a9 + 432) = v208;
  v210 = v250;
  *(a9 + 440) = v251;
  *(a9 + 448) = v210;
  result = v249;
  *(a9 + 456) = v249;
  *(a9 + 464) = v78;
  *(a9 + 472) = v73;
  *(a9 + 480) = v79;
  *(a9 + 488) = v74;
  *(a9 + 489) = v75;
  return result;
}