int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100001E90();
  v4 = sub_100001D04(v3);
  v59 = v5;
  v60 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001C0C(&qword_100008000, &qword_100001F98);
  v11 = sub_100001D04(v10);
  v53 = v12;
  v54 = v11;
  v14 = *(v13 + 64);
  sub_100001D44();
  __chkstk_darwin();
  v52 = &v42 - v15;
  v16 = sub_100001C0C(&qword_100008008, &qword_100001FA0);
  sub_100001D04(v16);
  v55 = v17;
  v19 = *(v18 + 64);
  sub_100001D44();
  __chkstk_darwin();
  v21 = &v42 - v20;
  v22 = sub_100001C0C(&qword_100008010, &qword_100001FA8);
  v56 = sub_100001D04(v22);
  v57 = v23;
  v25 = *(v24 + 64);
  sub_100001D44();
  __chkstk_darwin();
  v58 = &v42 - v26;
  v27 = sub_100001C0C(&qword_100008018, &qword_100001FB0);
  sub_100001D04(v27);
  v29 = *(v28 + 64);
  sub_100001D44();
  __chkstk_darwin();
  v31 = &v42 - v30;
  v32 = sub_100001E60();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_100001E50();
  sub_100001E00();
  v62 = v32;
  v63 = sub_100001CBC(&qword_100008020, &type metadata accessor for EchoServiceImp);
  v61 = v35;

  sub_100001E10();
  sub_100001E30();
  v46 = v35;
  v47 = v31;
  v44 = v21;
  v48 = v27;
  v45 = v16;
  v49 = v9;
  sub_100001DD0();
  v51 = v36;
  v50 = sub_100001E70();
  sub_100001CBC(&qword_100008030, &type metadata accessor for PersonalSearchServiceImp);
  sub_100001DE0();
  sub_100001DF0();
  sub_100001CBC(&qword_100008038, &type metadata accessor for PersonalSearchRequest);
  sub_100001CBC(&qword_100008040, &type metadata accessor for PersonalSearchRequest);
  sub_100001CBC(&qword_100008048, &type metadata accessor for PersonalSearchResponse);
  sub_100001CBC(&qword_100008050, &type metadata accessor for PersonalSearchResponse);
  sub_100001E20();
  sub_100001E30();
  v37 = sub_100001D80();
  v50 = v38;
  v51 = v37;
  v43 = sub_100001D50();
  sub_100001CBC(&qword_100008058, &type metadata accessor for OmniSearchServiceImp);
  sub_100001D60();
  sub_100001D70();
  sub_100001CBC(&qword_100008060, &type metadata accessor for OmniSearchXPCRequest);
  sub_100001CBC(&qword_100008068, &type metadata accessor for OmniSearchXPCRequest);
  sub_100001CBC(&qword_100008070, &type metadata accessor for OmniSearchXPCResponse);
  sub_100001CBC(&qword_100008078, &type metadata accessor for OmniSearchXPCResponse);
  sub_100001D18();
  sub_100001E30();
  v39 = sub_100001DC0();
  v50 = v40;
  v51 = v39;
  v43 = sub_100001D90();
  sub_100001CBC(&qword_100008080, &type metadata accessor for AnswerSynthesisServiceImp);
  sub_100001DA0();
  sub_100001DB0();
  sub_100001CBC(&qword_100008088, &type metadata accessor for AnswerSynthesisXPCRequest);
  sub_100001CBC(&qword_100008090, &type metadata accessor for AnswerSynthesisXPCRequest);
  sub_100001CBC(&qword_100008098, &type metadata accessor for AnswerSynthesisXPCResponse);
  sub_100001CBC(&qword_1000080A0, &type metadata accessor for AnswerSynthesisXPCResponse);
  sub_100001D18();
  sub_100001E30();
  dispatch_main();
}

uint64_t sub_100001C0C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001C54(uint64_t a1)
{
  v2 = sub_100001C0C(&qword_100008028, &unk_100001FB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001CBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100001D18()
{
  v2 = *(v0 - 280);

  return sub_100001E20();
}